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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx35_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    divide10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1_lit_string_α
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              eax, 104;                            je    divide10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n13_lit_string_α
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104;                            je    divide10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n15_lit_string_α
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              eax, 104;                            je    divide10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_lit_string_α
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              eax, 104;                            je    divide10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n19_lit_string_α
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              eax, 104;                            je    divide10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n21_lit_string_α
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              eax, 104;                            je    divide10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_lit_string_α
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              eax, 104;                            je    divide10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n25_lit_string_α
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              eax, 104;                            je    divide10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_lit_string_α
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              eax, 104;                            je    n34_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_lit_string_α
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx68_29:               mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    n34_call_builtin_prolog_α
                                                                              jmp   n32_move_label_α
n31_call_proc_staged_β:                                                       jmp   n34_call_builtin_prolog_α
.Lx68_0:                .quad            .Lx68_0_s
.Lx68_0_s:              .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n32_move_label_α:       lea              rax, [rip + n31_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   divide10$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n33_disjunction_α:      mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104;                            je    divide10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   divide10$2F0_ω
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
d$2F3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx353_102
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104];          jmp   .Lx353_101
.Lx353_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx353_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx353_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx353_101
.Lx353_100:             lea              rdi, [rsp + 112]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx353_101:             mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n76_var_ref_α
n75_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 8080], rax
                        mov              qword ptr [rsp + 8088], rdx;         jmp   n77_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:      mov              qword ptr [rsp + 8096], 3            # result
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rsp + 8104], rax;         jmp   n78_lit_string_α
.Lx356_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       mov              qword ptr [rsp + 8112], 2            # result
                        mov              dword ptr [rsp + 8116], 1
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rsp + 8120], rax;         jmp   n79_call_builtin_prolog_α
.Lx357_0:               .quad            .Lx357_0_s
.Lx357_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8016], rax
                        mov              qword ptr [rsp + 8024], rdx
                        cmp              eax, 104;                            je    n106_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n80_var_ref_α
n79_call_builtin_prolog_β:
                                                                              jmp   n106_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 7872], rax
                        mov              qword ptr [rsp + 7880], rdx;         jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       mov              qword ptr [rsp + 8000], 2            # result
                        mov              dword ptr [rsp + 8004], 1
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rsp + 8008], rax;         jmp   n82_var_ref_α
.Lx361_0:               .quad            .Lx361_0_s
.Lx361_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 7888], rax
                        mov              qword ptr [rsp + 7896], rdx;         jmp   n83_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 7904], rax
                        mov              qword ptr [rsp + 7912], rdx;         jmp   n84_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7920], rax
                        mov              qword ptr [rsp + 7928], rdx
                        cmp              eax, 104;                            je    n105_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n85_call_builtin_prolog_α
n84_call_builtin_prolog_β:
                                                                              jmp   n105_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_prolog_α:
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
.Lx367_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx367_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx367_41
                        cmp              esi, 1;                              jne   .Lx367_55
                        mov              r8, rax;                             jmp   .Lx367_40
.Lx367_55:              cmp              esi, 2;                              jne   .Lx367_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx367_41
                        mov              r8, rax;                             jmp   .Lx367_40
.Lx367_56:              cmp              eax, 72;                             jne   .Lx367_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx367_41
                        cmp              rax, r8;                             je    .Lx367_41
                        mov              r8, rax;                             jmp   .Lx367_40
.Lx367_41:              lea              r9, [rsp + 7856]
.Lx367_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx367_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx367_43
                        cmp              esi, 1;                              jne   .Lx367_57
                        mov              r9, rax;                             jmp   .Lx367_42
.Lx367_57:              cmp              esi, 2;                              jne   .Lx367_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx367_43
                        mov              r9, rax;                             jmp   .Lx367_42
.Lx367_58:              cmp              eax, 72;                             jne   .Lx367_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx367_43
                        cmp              rax, r9;                             je    .Lx367_43
                        mov              r9, rax;                             jmp   .Lx367_42
.Lx367_43:              cmp              r8, r9;                              je    .Lx367_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx367_44
                        cmp              eax, 104;                            je    .Lx367_44
                        cmp              eax, 72;                             jne   .Lx367_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx367_44
                                                                              jmp   .Lx367_45
.Lx367_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx367_53
                        cmp              eax, 104;                            je    .Lx367_53
                        cmp              eax, 72;                             jne   .Lx367_46
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
                        cmp              eax, 0;                              je    .Lx367_47
                        cmp              eax, 104;                            je    .Lx367_47
                        cmp              eax, 72;                             jne   .Lx367_48
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
                        cmp              ecx, 80;                             jne   .Lx367_49
                        cmp              edx, 80;                             je    .Lx367_53
                                                                              jmp   .Lx367_52
.Lx367_49:              cmp              edx, 80;                             je    .Lx367_52
                        cmp              ecx, 5;                              je    .Lx367_53
                        cmp              edx, 5;                              je    .Lx367_53
                        cmp              ecx, 3;                              jne   .Lx367_50
                        cmp              edx, 3;                              jne   .Lx367_50
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx367_54:              mov              qword ptr [rsp + 7824], rax
                        mov              qword ptr [rsp + 7832], rdx
                        cmp              eax, 104;                            je    n105_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n86_var_ref_α
n85_call_builtin_prolog_β:
                                                                              jmp   n105_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 7792], rax
                        mov              qword ptr [rsp + 7800], rdx;         jmp   n87_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 7808], rax
                        mov              qword ptr [rsp + 7816], rdx;         jmp   n88_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_prolog_α:
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
.Lx372_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx372_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx372_41
                        cmp              esi, 1;                              jne   .Lx372_55
                        mov              r8, rax;                             jmp   .Lx372_40
.Lx372_55:              cmp              esi, 2;                              jne   .Lx372_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx372_41
                        mov              r8, rax;                             jmp   .Lx372_40
.Lx372_56:              cmp              eax, 72;                             jne   .Lx372_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx372_41
                        cmp              rax, r8;                             je    .Lx372_41
                        mov              r8, rax;                             jmp   .Lx372_40
.Lx372_41:              lea              r9, [rsp + 7776]
.Lx372_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx372_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx372_43
                        cmp              esi, 1;                              jne   .Lx372_57
                        mov              r9, rax;                             jmp   .Lx372_42
.Lx372_57:              cmp              esi, 2;                              jne   .Lx372_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx372_43
                        mov              r9, rax;                             jmp   .Lx372_42
.Lx372_58:              cmp              eax, 72;                             jne   .Lx372_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx372_43
                        cmp              rax, r9;                             je    .Lx372_43
                        mov              r9, rax;                             jmp   .Lx372_42
.Lx372_43:              cmp              r8, r9;                              je    .Lx372_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx372_44
                        cmp              eax, 104;                            je    .Lx372_44
                        cmp              eax, 72;                             jne   .Lx372_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx372_44
                                                                              jmp   .Lx372_45
.Lx372_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx372_53
                        cmp              eax, 104;                            je    .Lx372_53
                        cmp              eax, 72;                             jne   .Lx372_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx372_53
                                                                              jmp   .Lx372_46
.Lx372_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx372_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx372_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx372_51
.Lx372_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx372_47
                        cmp              eax, 104;                            je    .Lx372_47
                        cmp              eax, 72;                             jne   .Lx372_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx372_47
                                                                              jmp   .Lx372_48
.Lx372_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx372_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx372_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx372_51
.Lx372_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx372_49
                        cmp              edx, 80;                             je    .Lx372_53
                                                                              jmp   .Lx372_52
.Lx372_49:              cmp              edx, 80;                             je    .Lx372_52
                        cmp              ecx, 5;                              je    .Lx372_53
                        cmp              edx, 5;                              je    .Lx372_53
                        cmp              ecx, 3;                              jne   .Lx372_50
                        cmp              edx, 3;                              jne   .Lx372_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx372_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx372_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx372_51
                                                                              jmp   .Lx372_52
.Lx372_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx372_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx372_53
.Lx372_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx372_54
.Lx372_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx372_54
.Lx372_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx372_54:              mov              qword ptr [rsp + 7744], rax
                        mov              qword ptr [rsp + 7752], rdx
                        cmp              eax, 104;                            je    n105_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n89_var_ref_α
n88_call_builtin_prolog_β:
                                                                              jmp   n105_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 7600], rax
                        mov              qword ptr [rsp + 7608], rdx;         jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       mov              qword ptr [rsp + 7728], 2            # result
                        mov              dword ptr [rsp + 7732], 1
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rsp + 7736], rax;         jmp   n91_var_ref_α
.Lx375_0:               .quad            .Lx375_0_s
.Lx375_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 7616], rax
                        mov              qword ptr [rsp + 7624], rdx;         jmp   n92_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 7632], rax
                        mov              qword ptr [rsp + 7640], rdx;         jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7648], rax
                        mov              qword ptr [rsp + 7656], rdx
                        cmp              eax, 104;                            je    n105_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n94_call_builtin_prolog_α
n93_call_builtin_prolog_β:
                                                                              jmp   n105_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_prolog_α:
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
.Lx381_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx381_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx381_41
                        cmp              esi, 1;                              jne   .Lx381_55
                        mov              r8, rax;                             jmp   .Lx381_40
.Lx381_55:              cmp              esi, 2;                              jne   .Lx381_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx381_41
                        mov              r8, rax;                             jmp   .Lx381_40
.Lx381_56:              cmp              eax, 72;                             jne   .Lx381_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx381_41
                        cmp              rax, r8;                             je    .Lx381_41
                        mov              r8, rax;                             jmp   .Lx381_40
.Lx381_41:              lea              r9, [rsp + 7584]
.Lx381_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx381_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx381_43
                        cmp              esi, 1;                              jne   .Lx381_57
                        mov              r9, rax;                             jmp   .Lx381_42
.Lx381_57:              cmp              esi, 2;                              jne   .Lx381_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx381_43
                        mov              r9, rax;                             jmp   .Lx381_42
.Lx381_58:              cmp              eax, 72;                             jne   .Lx381_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx381_43
                        cmp              rax, r9;                             je    .Lx381_43
                        mov              r9, rax;                             jmp   .Lx381_42
.Lx381_43:              cmp              r8, r9;                              je    .Lx381_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx381_44
                        cmp              eax, 104;                            je    .Lx381_44
                        cmp              eax, 72;                             jne   .Lx381_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx381_44
                                                                              jmp   .Lx381_45
.Lx381_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx381_53
                        cmp              eax, 104;                            je    .Lx381_53
                        cmp              eax, 72;                             jne   .Lx381_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx381_53
                                                                              jmp   .Lx381_46
.Lx381_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx381_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx381_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx381_51
.Lx381_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx381_47
                        cmp              eax, 104;                            je    .Lx381_47
                        cmp              eax, 72;                             jne   .Lx381_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx381_47
                                                                              jmp   .Lx381_48
.Lx381_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx381_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx381_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx381_51
.Lx381_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx381_49
                        cmp              edx, 80;                             je    .Lx381_53
                                                                              jmp   .Lx381_52
.Lx381_49:              cmp              edx, 80;                             je    .Lx381_52
                        cmp              ecx, 5;                              je    .Lx381_53
                        cmp              edx, 5;                              je    .Lx381_53
                        cmp              ecx, 3;                              jne   .Lx381_50
                        cmp              edx, 3;                              jne   .Lx381_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx381_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx381_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx381_51
                                                                              jmp   .Lx381_52
.Lx381_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx381_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx381_53
.Lx381_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx381_54
.Lx381_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx381_54
.Lx381_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx381_54:              mov              qword ptr [rsp + 7552], rax
                        mov              qword ptr [rsp + 7560], rdx
                        cmp              eax, 104;                            je    n105_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n95_cut_α
n94_call_builtin_prolog_β:
                                                                              jmp   n105_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n95_cut_α:                                                                    jmp   n96_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 7504], rax
                        mov              qword ptr [rsp + 7512], rdx;         jmp   n97_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 7520], rax
                        mov              qword ptr [rsp + 7528], rdx;         jmp   n98_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 7536], rax
                        mov              qword ptr [rsp + 7544], rdx;         jmp   n99_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n99_call_proc_staged_α: lea              rsi, [rsp + 7504]
                        lea              rdx, [rsp + 7520]
                        lea              rcx, [rsp + 7536]
                        call             d$2F3_dcα;                           jmp   .Lx390_2
.Lx390_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx390_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 7424], rax
                        mov              qword ptr [rsp + 7432], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 7424]
                        mov              rdx, qword ptr [rsp + 7432]
.Lx390_29:              mov              qword ptr [rsp + 7424], rax
                        mov              qword ptr [rsp + 7432], rdx
                        cmp              eax, 104;                            je    n352_call_builtin_prolog_α
                                                                              jmp   n100_var_ref_α
n99_call_proc_staged_β:                                                       jmp   n352_call_builtin_prolog_α
.Lx390_0:               .quad            .Lx390_0_s
.Lx390_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 7376], rax
                        mov              qword ptr [rsp + 7384], rdx;         jmp   n101_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 7392], rax
                        mov              qword ptr [rsp + 7400], rdx;         jmp   n102_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 7408], rax
                        mov              qword ptr [rsp + 7416], rdx;         jmp   n103_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n103_call_proc_staged_α:
                        lea              rsi, [rsp + 7376]
                        lea              rdx, [rsp + 7392]
                        lea              rcx, [rsp + 7408]
                        call             d$2F3_dcα;                           jmp   .Lx398_2
.Lx398_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx398_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 7296], rax
                        mov              qword ptr [rsp + 7304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 7296]
                        mov              rdx, qword ptr [rsp + 7304]
.Lx398_29:              mov              qword ptr [rsp + 7296], rax
                        mov              qword ptr [rsp + 7304], rdx
                        cmp              eax, 104;                            je    n99_call_proc_staged_β
                                                                              jmp   n104_move_label_α
n103_call_proc_staged_β:
                                                                              jmp   n99_call_proc_staged_β
.Lx398_0:               .quad            .Lx398_0_s
.Lx398_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n104_move_label_α:      lea              rax, [rip + n103_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 7280], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 7288], rax
                        lea              rdi, [rsp + 7280]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7264], rax
                        mov              qword ptr [rsp + 7272], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n106_var_ref_α
n105_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 7216], rax
                        mov              qword ptr [rsp + 7224], rdx;         jmp   n107_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:     mov              qword ptr [rsp + 7232], 3            # result
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rsp + 7240], rax;         jmp   n108_lit_string_α
.Lx404_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:      mov              qword ptr [rsp + 7248], 2            # result
                        mov              dword ptr [rsp + 7252], 1
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rsp + 7256], rax;         jmp   n109_call_builtin_prolog_α
.Lx405_0:               .quad            .Lx405_0_s
.Lx405_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7152], rax
                        mov              qword ptr [rsp + 7160], rdx
                        cmp              eax, 104;                            je    n136_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n110_var_ref_α
n109_call_builtin_prolog_β:
                                                                              jmp   n136_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 7008], rax
                        mov              qword ptr [rsp + 7016], rdx;         jmp   n111_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:      mov              qword ptr [rsp + 7136], 2            # result
                        mov              dword ptr [rsp + 7140], 1
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rsp + 7144], rax;         jmp   n112_var_ref_α
.Lx409_0:               .quad            .Lx409_0_s
.Lx409_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 7024], rax
                        mov              qword ptr [rsp + 7032], rdx;         jmp   n113_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 7040], rax
                        mov              qword ptr [rsp + 7048], rdx;         jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7056], rax
                        mov              qword ptr [rsp + 7064], rdx
                        cmp              eax, 104;                            je    n135_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n115_call_builtin_prolog_α
n114_call_builtin_prolog_β:
                                                                              jmp   n135_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_prolog_α:
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
.Lx415_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx415_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx415_41
                        cmp              esi, 1;                              jne   .Lx415_55
                        mov              r8, rax;                             jmp   .Lx415_40
.Lx415_55:              cmp              esi, 2;                              jne   .Lx415_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx415_41
                        mov              r8, rax;                             jmp   .Lx415_40
.Lx415_56:              cmp              eax, 72;                             jne   .Lx415_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx415_41
                        cmp              rax, r8;                             je    .Lx415_41
                        mov              r8, rax;                             jmp   .Lx415_40
.Lx415_41:              lea              r9, [rsp + 6992]
.Lx415_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx415_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx415_43
                        cmp              esi, 1;                              jne   .Lx415_57
                        mov              r9, rax;                             jmp   .Lx415_42
.Lx415_57:              cmp              esi, 2;                              jne   .Lx415_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx415_43
                        mov              r9, rax;                             jmp   .Lx415_42
.Lx415_58:              cmp              eax, 72;                             jne   .Lx415_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx415_43
                        cmp              rax, r9;                             je    .Lx415_43
                        mov              r9, rax;                             jmp   .Lx415_42
.Lx415_43:              cmp              r8, r9;                              je    .Lx415_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx415_44
                        cmp              eax, 104;                            je    .Lx415_44
                        cmp              eax, 72;                             jne   .Lx415_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx415_44
                                                                              jmp   .Lx415_45
.Lx415_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx415_53
                        cmp              eax, 104;                            je    .Lx415_53
                        cmp              eax, 72;                             jne   .Lx415_46
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
                        cmp              eax, 0;                              je    .Lx415_47
                        cmp              eax, 104;                            je    .Lx415_47
                        cmp              eax, 72;                             jne   .Lx415_48
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
                        cmp              ecx, 80;                             jne   .Lx415_49
                        cmp              edx, 80;                             je    .Lx415_53
                                                                              jmp   .Lx415_52
.Lx415_49:              cmp              edx, 80;                             je    .Lx415_52
                        cmp              ecx, 5;                              je    .Lx415_53
                        cmp              edx, 5;                              je    .Lx415_53
                        cmp              ecx, 3;                              jne   .Lx415_50
                        cmp              edx, 3;                              jne   .Lx415_50
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx415_54:              mov              qword ptr [rsp + 6960], rax
                        mov              qword ptr [rsp + 6968], rdx
                        cmp              eax, 104;                            je    n135_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n116_var_ref_α
n115_call_builtin_prolog_β:
                                                                              jmp   n135_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 6928], rax
                        mov              qword ptr [rsp + 6936], rdx;         jmp   n117_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6944], rax
                        mov              qword ptr [rsp + 6952], rdx;         jmp   n118_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_prolog_α:
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
.Lx420_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx420_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx420_41
                        cmp              esi, 1;                              jne   .Lx420_55
                        mov              r8, rax;                             jmp   .Lx420_40
.Lx420_55:              cmp              esi, 2;                              jne   .Lx420_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx420_41
                        mov              r8, rax;                             jmp   .Lx420_40
.Lx420_56:              cmp              eax, 72;                             jne   .Lx420_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx420_41
                        cmp              rax, r8;                             je    .Lx420_41
                        mov              r8, rax;                             jmp   .Lx420_40
.Lx420_41:              lea              r9, [rsp + 6912]
.Lx420_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx420_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx420_43
                        cmp              esi, 1;                              jne   .Lx420_57
                        mov              r9, rax;                             jmp   .Lx420_42
.Lx420_57:              cmp              esi, 2;                              jne   .Lx420_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx420_43
                        mov              r9, rax;                             jmp   .Lx420_42
.Lx420_58:              cmp              eax, 72;                             jne   .Lx420_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx420_43
                        cmp              rax, r9;                             je    .Lx420_43
                        mov              r9, rax;                             jmp   .Lx420_42
.Lx420_43:              cmp              r8, r9;                              je    .Lx420_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx420_44
                        cmp              eax, 104;                            je    .Lx420_44
                        cmp              eax, 72;                             jne   .Lx420_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx420_44
                                                                              jmp   .Lx420_45
.Lx420_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx420_53
                        cmp              eax, 104;                            je    .Lx420_53
                        cmp              eax, 72;                             jne   .Lx420_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx420_53
                                                                              jmp   .Lx420_46
.Lx420_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx420_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx420_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx420_51
.Lx420_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx420_47
                        cmp              eax, 104;                            je    .Lx420_47
                        cmp              eax, 72;                             jne   .Lx420_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx420_47
                                                                              jmp   .Lx420_48
.Lx420_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx420_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx420_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx420_51
.Lx420_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx420_49
                        cmp              edx, 80;                             je    .Lx420_53
                                                                              jmp   .Lx420_52
.Lx420_49:              cmp              edx, 80;                             je    .Lx420_52
                        cmp              ecx, 5;                              je    .Lx420_53
                        cmp              edx, 5;                              je    .Lx420_53
                        cmp              ecx, 3;                              jne   .Lx420_50
                        cmp              edx, 3;                              jne   .Lx420_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx420_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx420_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx420_51
                                                                              jmp   .Lx420_52
.Lx420_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx420_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx420_53
.Lx420_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx420_54
.Lx420_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx420_54
.Lx420_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx420_54:              mov              qword ptr [rsp + 6880], rax
                        mov              qword ptr [rsp + 6888], rdx
                        cmp              eax, 104;                            je    n135_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n119_var_ref_α
n118_call_builtin_prolog_β:
                                                                              jmp   n135_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 6736], rax
                        mov              qword ptr [rsp + 6744], rdx;         jmp   n120_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:      mov              qword ptr [rsp + 6864], 2            # result
                        mov              dword ptr [rsp + 6868], 1
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rsp + 6872], rax;         jmp   n121_var_ref_α
.Lx423_0:               .quad            .Lx423_0_s
.Lx423_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 6752], rax
                        mov              qword ptr [rsp + 6760], rdx;         jmp   n122_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 6768], rax
                        mov              qword ptr [rsp + 6776], rdx;         jmp   n123_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n123_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6784], rax
                        mov              qword ptr [rsp + 6792], rdx
                        cmp              eax, 104;                            je    n135_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n124_call_builtin_prolog_α
n123_call_builtin_prolog_β:
                                                                              jmp   n135_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_prolog_α:
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
.Lx429_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx429_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx429_41
                        cmp              esi, 1;                              jne   .Lx429_55
                        mov              r8, rax;                             jmp   .Lx429_40
.Lx429_55:              cmp              esi, 2;                              jne   .Lx429_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx429_41
                        mov              r8, rax;                             jmp   .Lx429_40
.Lx429_56:              cmp              eax, 72;                             jne   .Lx429_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx429_41
                        cmp              rax, r8;                             je    .Lx429_41
                        mov              r8, rax;                             jmp   .Lx429_40
.Lx429_41:              lea              r9, [rsp + 6720]
.Lx429_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx429_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx429_43
                        cmp              esi, 1;                              jne   .Lx429_57
                        mov              r9, rax;                             jmp   .Lx429_42
.Lx429_57:              cmp              esi, 2;                              jne   .Lx429_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx429_43
                        mov              r9, rax;                             jmp   .Lx429_42
.Lx429_58:              cmp              eax, 72;                             jne   .Lx429_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx429_43
                        cmp              rax, r9;                             je    .Lx429_43
                        mov              r9, rax;                             jmp   .Lx429_42
.Lx429_43:              cmp              r8, r9;                              je    .Lx429_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx429_44
                        cmp              eax, 104;                            je    .Lx429_44
                        cmp              eax, 72;                             jne   .Lx429_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx429_44
                                                                              jmp   .Lx429_45
.Lx429_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx429_53
                        cmp              eax, 104;                            je    .Lx429_53
                        cmp              eax, 72;                             jne   .Lx429_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx429_53
                                                                              jmp   .Lx429_46
.Lx429_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx429_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx429_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx429_51
.Lx429_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx429_47
                        cmp              eax, 104;                            je    .Lx429_47
                        cmp              eax, 72;                             jne   .Lx429_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx429_47
                                                                              jmp   .Lx429_48
.Lx429_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx429_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx429_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx429_51
.Lx429_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx429_49
                        cmp              edx, 80;                             je    .Lx429_53
                                                                              jmp   .Lx429_52
.Lx429_49:              cmp              edx, 80;                             je    .Lx429_52
                        cmp              ecx, 5;                              je    .Lx429_53
                        cmp              edx, 5;                              je    .Lx429_53
                        cmp              ecx, 3;                              jne   .Lx429_50
                        cmp              edx, 3;                              jne   .Lx429_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx429_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx429_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx429_51
                                                                              jmp   .Lx429_52
.Lx429_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx429_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx429_53
.Lx429_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx429_54
.Lx429_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx429_54
.Lx429_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx429_54:              mov              qword ptr [rsp + 6688], rax
                        mov              qword ptr [rsp + 6696], rdx
                        cmp              eax, 104;                            je    n135_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n125_cut_α
n124_call_builtin_prolog_β:
                                                                              jmp   n135_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n125_cut_α:                                                                   jmp   n126_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 6640], rax
                        mov              qword ptr [rsp + 6648], rdx;         jmp   n127_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n127_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6656], rax
                        mov              qword ptr [rsp + 6664], rdx;         jmp   n128_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 6672], rax
                        mov              qword ptr [rsp + 6680], rdx;         jmp   n129_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n129_call_proc_staged_α:
                        lea              rsi, [rsp + 6640]
                        lea              rdx, [rsp + 6656]
                        lea              rcx, [rsp + 6672]
                        call             d$2F3_dcα;                           jmp   .Lx438_2
.Lx438_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx438_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6560], rax
                        mov              qword ptr [rsp + 6568], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6560]
                        mov              rdx, qword ptr [rsp + 6568]
.Lx438_29:              mov              qword ptr [rsp + 6560], rax
                        mov              qword ptr [rsp + 6568], rdx
                        cmp              eax, 104;                            je    n352_call_builtin_prolog_α
                                                                              jmp   n130_var_ref_α
n129_call_proc_staged_β:
                                                                              jmp   n352_call_builtin_prolog_α
.Lx438_0:               .quad            .Lx438_0_s
.Lx438_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 6512], rax
                        mov              qword ptr [rsp + 6520], rdx;         jmp   n131_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6528], rax
                        mov              qword ptr [rsp + 6536], rdx;         jmp   n132_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 6544], rax
                        mov              qword ptr [rsp + 6552], rdx;         jmp   n133_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n133_call_proc_staged_α:
                        lea              rsi, [rsp + 6512]
                        lea              rdx, [rsp + 6528]
                        lea              rcx, [rsp + 6544]
                        call             d$2F3_dcα;                           jmp   .Lx446_2
.Lx446_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx446_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6432], rax
                        mov              qword ptr [rsp + 6440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6432]
                        mov              rdx, qword ptr [rsp + 6440]
.Lx446_29:              mov              qword ptr [rsp + 6432], rax
                        mov              qword ptr [rsp + 6440], rdx
                        cmp              eax, 104;                            je    n129_call_proc_staged_β
                                                                              jmp   n134_move_label_α
n133_call_proc_staged_β:
                                                                              jmp   n129_call_proc_staged_β
.Lx446_0:               .quad            .Lx446_0_s
.Lx446_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n134_move_label_α:      lea              rax, [rip + n133_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n135_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 6416], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 6424], rax
                        lea              rdi, [rsp + 6416]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6400], rax
                        mov              qword ptr [rsp + 6408], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n136_var_ref_α
n135_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 6352], rax
                        mov              qword ptr [rsp + 6360], rdx;         jmp   n137_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:     mov              qword ptr [rsp + 6368], 3            # result
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rsp + 6376], rax;         jmp   n138_lit_string_α
.Lx452_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      mov              qword ptr [rsp + 6384], 2            # result
                        mov              dword ptr [rsp + 6388], 1
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rsp + 6392], rax;         jmp   n139_call_builtin_prolog_α
.Lx453_0:               .quad            .Lx453_0_s
.Lx453_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n139_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6288], rax
                        mov              qword ptr [rsp + 6296], rdx
                        cmp              eax, 104;                            je    n172_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n140_var_ref_α
n139_call_builtin_prolog_β:
                                                                              jmp   n172_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 6144], rax
                        mov              qword ptr [rsp + 6152], rdx;         jmp   n141_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:      mov              qword ptr [rsp + 6272], 2            # result
                        mov              dword ptr [rsp + 6276], 1
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rsp + 6280], rax;         jmp   n142_var_ref_α
.Lx457_0:               .quad            .Lx457_0_s
.Lx457_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 6160], rax
                        mov              qword ptr [rsp + 6168], rdx;         jmp   n143_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 6176], rax
                        mov              qword ptr [rsp + 6184], rdx;         jmp   n144_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6192], rax
                        mov              qword ptr [rsp + 6200], rdx
                        cmp              eax, 104;                            je    n171_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n145_call_builtin_prolog_α
n144_call_builtin_prolog_β:
                                                                              jmp   n171_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n145_call_builtin_prolog_α:
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
.Lx463_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx463_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx463_41
                        cmp              esi, 1;                              jne   .Lx463_55
                        mov              r8, rax;                             jmp   .Lx463_40
.Lx463_55:              cmp              esi, 2;                              jne   .Lx463_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx463_41
                        mov              r8, rax;                             jmp   .Lx463_40
.Lx463_56:              cmp              eax, 72;                             jne   .Lx463_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx463_41
                        cmp              rax, r8;                             je    .Lx463_41
                        mov              r8, rax;                             jmp   .Lx463_40
.Lx463_41:              lea              r9, [rsp + 6128]
.Lx463_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx463_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx463_43
                        cmp              esi, 1;                              jne   .Lx463_57
                        mov              r9, rax;                             jmp   .Lx463_42
.Lx463_57:              cmp              esi, 2;                              jne   .Lx463_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx463_43
                        mov              r9, rax;                             jmp   .Lx463_42
.Lx463_58:              cmp              eax, 72;                             jne   .Lx463_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx463_43
                        cmp              rax, r9;                             je    .Lx463_43
                        mov              r9, rax;                             jmp   .Lx463_42
.Lx463_43:              cmp              r8, r9;                              je    .Lx463_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx463_44
                        cmp              eax, 104;                            je    .Lx463_44
                        cmp              eax, 72;                             jne   .Lx463_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx463_44
                                                                              jmp   .Lx463_45
.Lx463_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx463_53
                        cmp              eax, 104;                            je    .Lx463_53
                        cmp              eax, 72;                             jne   .Lx463_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx463_53
                                                                              jmp   .Lx463_46
.Lx463_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx463_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx463_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx463_51
.Lx463_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx463_47
                        cmp              eax, 104;                            je    .Lx463_47
                        cmp              eax, 72;                             jne   .Lx463_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx463_47
                                                                              jmp   .Lx463_48
.Lx463_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx463_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx463_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx463_51
.Lx463_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx463_49
                        cmp              edx, 80;                             je    .Lx463_53
                                                                              jmp   .Lx463_52
.Lx463_49:              cmp              edx, 80;                             je    .Lx463_52
                        cmp              ecx, 5;                              je    .Lx463_53
                        cmp              edx, 5;                              je    .Lx463_53
                        cmp              ecx, 3;                              jne   .Lx463_50
                        cmp              edx, 3;                              jne   .Lx463_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx463_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx463_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx463_51
                                                                              jmp   .Lx463_52
.Lx463_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx463_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx463_53
.Lx463_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx463_54
.Lx463_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx463_54
.Lx463_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx463_54:              mov              qword ptr [rsp + 6096], rax
                        mov              qword ptr [rsp + 6104], rdx
                        cmp              eax, 104;                            je    n171_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n146_var_ref_α
n145_call_builtin_prolog_β:
                                                                              jmp   n171_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 6064], rax
                        mov              qword ptr [rsp + 6072], rdx;         jmp   n147_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6080], rax
                        mov              qword ptr [rsp + 6088], rdx;         jmp   n148_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_builtin_prolog_α:
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
.Lx468_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx468_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx468_41
                        cmp              esi, 1;                              jne   .Lx468_55
                        mov              r8, rax;                             jmp   .Lx468_40
.Lx468_55:              cmp              esi, 2;                              jne   .Lx468_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx468_41
                        mov              r8, rax;                             jmp   .Lx468_40
.Lx468_56:              cmp              eax, 72;                             jne   .Lx468_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx468_41
                        cmp              rax, r8;                             je    .Lx468_41
                        mov              r8, rax;                             jmp   .Lx468_40
.Lx468_41:              lea              r9, [rsp + 6048]
.Lx468_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx468_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx468_43
                        cmp              esi, 1;                              jne   .Lx468_57
                        mov              r9, rax;                             jmp   .Lx468_42
.Lx468_57:              cmp              esi, 2;                              jne   .Lx468_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx468_43
                        mov              r9, rax;                             jmp   .Lx468_42
.Lx468_58:              cmp              eax, 72;                             jne   .Lx468_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx468_43
                        cmp              rax, r9;                             je    .Lx468_43
                        mov              r9, rax;                             jmp   .Lx468_42
.Lx468_43:              cmp              r8, r9;                              je    .Lx468_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx468_44
                        cmp              eax, 104;                            je    .Lx468_44
                        cmp              eax, 72;                             jne   .Lx468_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx468_44
                                                                              jmp   .Lx468_45
.Lx468_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx468_53
                        cmp              eax, 104;                            je    .Lx468_53
                        cmp              eax, 72;                             jne   .Lx468_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx468_53
                                                                              jmp   .Lx468_46
.Lx468_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx468_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx468_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx468_51
.Lx468_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx468_47
                        cmp              eax, 104;                            je    .Lx468_47
                        cmp              eax, 72;                             jne   .Lx468_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx468_47
                                                                              jmp   .Lx468_48
.Lx468_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx468_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx468_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx468_51
.Lx468_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx468_49
                        cmp              edx, 80;                             je    .Lx468_53
                                                                              jmp   .Lx468_52
.Lx468_49:              cmp              edx, 80;                             je    .Lx468_52
                        cmp              ecx, 5;                              je    .Lx468_53
                        cmp              edx, 5;                              je    .Lx468_53
                        cmp              ecx, 3;                              jne   .Lx468_50
                        cmp              edx, 3;                              jne   .Lx468_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx468_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx468_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx468_51
                                                                              jmp   .Lx468_52
.Lx468_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx468_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx468_53
.Lx468_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx468_54
.Lx468_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx468_54
.Lx468_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx468_54:              mov              qword ptr [rsp + 6016], rax
                        mov              qword ptr [rsp + 6024], rdx
                        cmp              eax, 104;                            je    n171_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n149_var_ref_α
n148_call_builtin_prolog_β:
                                                                              jmp   n171_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 5648], rax
                        mov              qword ptr [rsp + 5656], rdx;         jmp   n150_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:      mov              qword ptr [rsp + 6000], 2            # result
                        mov              dword ptr [rsp + 6004], 1
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rsp + 6008], rax;         jmp   n151_lit_string_α
.Lx471_0:               .quad            .Lx471_0_s
.Lx471_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:      mov              qword ptr [rsp + 5776], 2            # result
                        mov              dword ptr [rsp + 5780], 1
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rsp + 5784], rax;         jmp   n152_var_ref_α
.Lx472_0:               .quad            .Lx472_0_s
.Lx472_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 5664], rax
                        mov              qword ptr [rsp + 5672], rdx;         jmp   n153_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 5680], rax
                        mov              qword ptr [rsp + 5688], rdx;         jmp   n154_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n154_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5696], rax
                        mov              qword ptr [rsp + 5704], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n155_lit_string_α
n154_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:      mov              qword ptr [rsp + 5904], 2            # result
                        mov              dword ptr [rsp + 5908], 1
                        mov              rax, qword ptr [rip + .Lx478_0]
                        mov              qword ptr [rsp + 5912], rax;         jmp   n156_var_ref_α
.Lx478_0:               .quad            .Lx478_0_s
.Lx478_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 5792], rax
                        mov              qword ptr [rsp + 5800], rdx;         jmp   n157_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 5808], rax
                        mov              qword ptr [rsp + 5816], rdx;         jmp   n158_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n158_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5824], rax
                        mov              qword ptr [rsp + 5832], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n159_call_builtin_prolog_α
n158_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n159_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5920], rax
                        mov              qword ptr [rsp + 5928], rdx
                        cmp              eax, 104;                            je    n171_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n160_call_builtin_prolog_α
n159_call_builtin_prolog_β:
                                                                              jmp   n171_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_prolog_α:
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
.Lx485_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx485_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx485_41
                        cmp              esi, 1;                              jne   .Lx485_55
                        mov              r8, rax;                             jmp   .Lx485_40
.Lx485_55:              cmp              esi, 2;                              jne   .Lx485_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx485_41
                        mov              r8, rax;                             jmp   .Lx485_40
.Lx485_56:              cmp              eax, 72;                             jne   .Lx485_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx485_41
                        cmp              rax, r8;                             je    .Lx485_41
                        mov              r8, rax;                             jmp   .Lx485_40
.Lx485_41:              lea              r9, [rsp + 5632]
.Lx485_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx485_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx485_43
                        cmp              esi, 1;                              jne   .Lx485_57
                        mov              r9, rax;                             jmp   .Lx485_42
.Lx485_57:              cmp              esi, 2;                              jne   .Lx485_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx485_43
                        mov              r9, rax;                             jmp   .Lx485_42
.Lx485_58:              cmp              eax, 72;                             jne   .Lx485_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx485_43
                        cmp              rax, r9;                             je    .Lx485_43
                        mov              r9, rax;                             jmp   .Lx485_42
.Lx485_43:              cmp              r8, r9;                              je    .Lx485_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx485_44
                        cmp              eax, 104;                            je    .Lx485_44
                        cmp              eax, 72;                             jne   .Lx485_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx485_44
                                                                              jmp   .Lx485_45
.Lx485_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx485_53
                        cmp              eax, 104;                            je    .Lx485_53
                        cmp              eax, 72;                             jne   .Lx485_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx485_53
                                                                              jmp   .Lx485_46
.Lx485_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx485_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx485_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx485_51
.Lx485_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx485_47
                        cmp              eax, 104;                            je    .Lx485_47
                        cmp              eax, 72;                             jne   .Lx485_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx485_47
                                                                              jmp   .Lx485_48
.Lx485_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx485_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx485_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx485_51
.Lx485_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx485_49
                        cmp              edx, 80;                             je    .Lx485_53
                                                                              jmp   .Lx485_52
.Lx485_49:              cmp              edx, 80;                             je    .Lx485_52
                        cmp              ecx, 5;                              je    .Lx485_53
                        cmp              edx, 5;                              je    .Lx485_53
                        cmp              ecx, 3;                              jne   .Lx485_50
                        cmp              edx, 3;                              jne   .Lx485_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx485_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx485_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx485_51
                                                                              jmp   .Lx485_52
.Lx485_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx485_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx485_53
.Lx485_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx485_54
.Lx485_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx485_54
.Lx485_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx485_54:              mov              qword ptr [rsp + 5600], rax
                        mov              qword ptr [rsp + 5608], rdx
                        cmp              eax, 104;                            je    n171_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n161_cut_α
n160_call_builtin_prolog_β:
                                                                              jmp   n171_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n161_cut_α:                                                                   jmp   n162_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 5552], rax
                        mov              qword ptr [rsp + 5560], rdx;         jmp   n163_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n163_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 5568], rax
                        mov              qword ptr [rsp + 5576], rdx;         jmp   n164_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 5584], rax
                        mov              qword ptr [rsp + 5592], rdx;         jmp   n165_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n165_call_proc_staged_α:
                        lea              rsi, [rsp + 5552]
                        lea              rdx, [rsp + 5568]
                        lea              rcx, [rsp + 5584]
                        call             d$2F3_dcα;                           jmp   .Lx494_2
.Lx494_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx494_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5472], rax
                        mov              qword ptr [rsp + 5480], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5472]
                        mov              rdx, qword ptr [rsp + 5480]
.Lx494_29:              mov              qword ptr [rsp + 5472], rax
                        mov              qword ptr [rsp + 5480], rdx
                        cmp              eax, 104;                            je    n352_call_builtin_prolog_α
                                                                              jmp   n166_var_ref_α
n165_call_proc_staged_β:
                                                                              jmp   n352_call_builtin_prolog_α
.Lx494_0:               .quad            .Lx494_0_s
.Lx494_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 5424], rax
                        mov              qword ptr [rsp + 5432], rdx;         jmp   n167_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n167_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 5440], rax
                        mov              qword ptr [rsp + 5448], rdx;         jmp   n168_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 5456], rax
                        mov              qword ptr [rsp + 5464], rdx;         jmp   n169_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n169_call_proc_staged_α:
                        lea              rsi, [rsp + 5424]
                        lea              rdx, [rsp + 5440]
                        lea              rcx, [rsp + 5456]
                        call             d$2F3_dcα;                           jmp   .Lx502_2
.Lx502_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx502_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5344], rax
                        mov              qword ptr [rsp + 5352], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5344]
                        mov              rdx, qword ptr [rsp + 5352]
.Lx502_29:              mov              qword ptr [rsp + 5344], rax
                        mov              qword ptr [rsp + 5352], rdx
                        cmp              eax, 104;                            je    n165_call_proc_staged_β
                                                                              jmp   n170_move_label_α
n169_call_proc_staged_β:
                                                                              jmp   n165_call_proc_staged_β
.Lx502_0:               .quad            .Lx502_0_s
.Lx502_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n170_move_label_α:      lea              rax, [rip + n169_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n171_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 5328], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 5336], rax
                        lea              rdi, [rsp + 5328]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5312], rax
                        mov              qword ptr [rsp + 5320], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n172_var_ref_α
n171_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5264], rax
                        mov              qword ptr [rsp + 5272], rdx;         jmp   n173_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     mov              qword ptr [rsp + 5280], 3            # result
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rsp + 5288], rax;         jmp   n174_lit_string_α
.Lx508_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:      mov              qword ptr [rsp + 5296], 2            # result
                        mov              dword ptr [rsp + 5300], 1
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rsp + 5304], rax;         jmp   n175_call_builtin_prolog_α
.Lx509_0:               .quad            .Lx509_0_s
.Lx509_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n175_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5200], rax
                        mov              qword ptr [rsp + 5208], rdx
                        cmp              eax, 104;                            je    n214_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_var_ref_α
n175_call_builtin_prolog_β:
                                                                              jmp   n214_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5056], rax
                        mov              qword ptr [rsp + 5064], rdx;         jmp   n177_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:      mov              qword ptr [rsp + 5184], 2            # result
                        mov              dword ptr [rsp + 5188], 1
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rsp + 5192], rax;         jmp   n178_var_ref_α
.Lx513_0:               .quad            .Lx513_0_s
.Lx513_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 5072], rax
                        mov              qword ptr [rsp + 5080], rdx;         jmp   n179_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 5088], rax
                        mov              qword ptr [rsp + 5096], rdx;         jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n180_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5104], rax
                        mov              qword ptr [rsp + 5112], rdx
                        cmp              eax, 104;                            je    n213_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n181_call_builtin_prolog_α
n180_call_builtin_prolog_β:
                                                                              jmp   n213_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n181_call_builtin_prolog_α:
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
.Lx519_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx519_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx519_41
                        cmp              esi, 1;                              jne   .Lx519_55
                        mov              r8, rax;                             jmp   .Lx519_40
.Lx519_55:              cmp              esi, 2;                              jne   .Lx519_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx519_41
                        mov              r8, rax;                             jmp   .Lx519_40
.Lx519_56:              cmp              eax, 72;                             jne   .Lx519_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx519_41
                        cmp              rax, r8;                             je    .Lx519_41
                        mov              r8, rax;                             jmp   .Lx519_40
.Lx519_41:              lea              r9, [rsp + 5040]
.Lx519_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx519_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx519_43
                        cmp              esi, 1;                              jne   .Lx519_57
                        mov              r9, rax;                             jmp   .Lx519_42
.Lx519_57:              cmp              esi, 2;                              jne   .Lx519_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx519_43
                        mov              r9, rax;                             jmp   .Lx519_42
.Lx519_58:              cmp              eax, 72;                             jne   .Lx519_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx519_43
                        cmp              rax, r9;                             je    .Lx519_43
                        mov              r9, rax;                             jmp   .Lx519_42
.Lx519_43:              cmp              r8, r9;                              je    .Lx519_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx519_44
                        cmp              eax, 104;                            je    .Lx519_44
                        cmp              eax, 72;                             jne   .Lx519_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx519_44
                                                                              jmp   .Lx519_45
.Lx519_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx519_53
                        cmp              eax, 104;                            je    .Lx519_53
                        cmp              eax, 72;                             jne   .Lx519_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx519_53
                                                                              jmp   .Lx519_46
.Lx519_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx519_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx519_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx519_51
.Lx519_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx519_47
                        cmp              eax, 104;                            je    .Lx519_47
                        cmp              eax, 72;                             jne   .Lx519_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx519_47
                                                                              jmp   .Lx519_48
.Lx519_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx519_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx519_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx519_51
.Lx519_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx519_49
                        cmp              edx, 80;                             je    .Lx519_53
                                                                              jmp   .Lx519_52
.Lx519_49:              cmp              edx, 80;                             je    .Lx519_52
                        cmp              ecx, 5;                              je    .Lx519_53
                        cmp              edx, 5;                              je    .Lx519_53
                        cmp              ecx, 3;                              jne   .Lx519_50
                        cmp              edx, 3;                              jne   .Lx519_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx519_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx519_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx519_51
                                                                              jmp   .Lx519_52
.Lx519_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx519_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx519_53
.Lx519_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx519_54
.Lx519_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx519_54
.Lx519_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx519_54:              mov              qword ptr [rsp + 5008], rax
                        mov              qword ptr [rsp + 5016], rdx
                        cmp              eax, 104;                            je    n213_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n182_var_ref_α
n181_call_builtin_prolog_β:
                                                                              jmp   n213_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4976], rax
                        mov              qword ptr [rsp + 4984], rdx;         jmp   n183_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 4992], rax
                        mov              qword ptr [rsp + 5000], rdx;         jmp   n184_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n184_call_builtin_prolog_α:
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
.Lx524_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx524_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx524_41
                        cmp              esi, 1;                              jne   .Lx524_55
                        mov              r8, rax;                             jmp   .Lx524_40
.Lx524_55:              cmp              esi, 2;                              jne   .Lx524_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx524_41
                        mov              r8, rax;                             jmp   .Lx524_40
.Lx524_56:              cmp              eax, 72;                             jne   .Lx524_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx524_41
                        cmp              rax, r8;                             je    .Lx524_41
                        mov              r8, rax;                             jmp   .Lx524_40
.Lx524_41:              lea              r9, [rsp + 4960]
.Lx524_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx524_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx524_43
                        cmp              esi, 1;                              jne   .Lx524_57
                        mov              r9, rax;                             jmp   .Lx524_42
.Lx524_57:              cmp              esi, 2;                              jne   .Lx524_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx524_43
                        mov              r9, rax;                             jmp   .Lx524_42
.Lx524_58:              cmp              eax, 72;                             jne   .Lx524_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx524_43
                        cmp              rax, r9;                             je    .Lx524_43
                        mov              r9, rax;                             jmp   .Lx524_42
.Lx524_43:              cmp              r8, r9;                              je    .Lx524_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx524_44
                        cmp              eax, 104;                            je    .Lx524_44
                        cmp              eax, 72;                             jne   .Lx524_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx524_44
                                                                              jmp   .Lx524_45
.Lx524_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx524_53
                        cmp              eax, 104;                            je    .Lx524_53
                        cmp              eax, 72;                             jne   .Lx524_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx524_53
                                                                              jmp   .Lx524_46
.Lx524_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx524_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx524_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx524_51
.Lx524_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx524_47
                        cmp              eax, 104;                            je    .Lx524_47
                        cmp              eax, 72;                             jne   .Lx524_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx524_47
                                                                              jmp   .Lx524_48
.Lx524_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx524_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx524_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx524_51
.Lx524_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx524_49
                        cmp              edx, 80;                             je    .Lx524_53
                                                                              jmp   .Lx524_52
.Lx524_49:              cmp              edx, 80;                             je    .Lx524_52
                        cmp              ecx, 5;                              je    .Lx524_53
                        cmp              edx, 5;                              je    .Lx524_53
                        cmp              ecx, 3;                              jne   .Lx524_50
                        cmp              edx, 3;                              jne   .Lx524_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx524_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx524_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx524_51
                                                                              jmp   .Lx524_52
.Lx524_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx524_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx524_53
.Lx524_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx524_54
.Lx524_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx524_54
.Lx524_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx524_54:              mov              qword ptr [rsp + 4928], rax
                        mov              qword ptr [rsp + 4936], rdx
                        cmp              eax, 104;                            je    n213_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n185_var_ref_α
n184_call_builtin_prolog_β:
                                                                              jmp   n213_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 4336], rax
                        mov              qword ptr [rsp + 4344], rdx;         jmp   n186_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:      mov              qword ptr [rsp + 4912], 2            # result
                        mov              dword ptr [rsp + 4916], 1
                        mov              rax, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rsp + 4920], rax;         jmp   n187_lit_string_α
.Lx527_0:               .quad            .Lx527_0_s
.Lx527_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:      mov              qword ptr [rsp + 4688], 2            # result
                        mov              dword ptr [rsp + 4692], 1
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rsp + 4696], rax;         jmp   n188_lit_string_α
.Lx528_0:               .quad            .Lx528_0_s
.Lx528_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_string_α:      mov              qword ptr [rsp + 4464], 2            # result
                        mov              dword ptr [rsp + 4468], 1
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rsp + 4472], rax;         jmp   n189_var_ref_α
.Lx529_0:               .quad            .Lx529_0_s
.Lx529_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n189_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 4352], rax
                        mov              qword ptr [rsp + 4360], rdx;         jmp   n190_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 4368], rax
                        mov              qword ptr [rsp + 4376], rdx;         jmp   n191_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n191_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4384], rax
                        mov              qword ptr [rsp + 4392], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n192_lit_string_α
n191_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:      mov              qword ptr [rsp + 4592], 2            # result
                        mov              dword ptr [rsp + 4596], 1
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rsp + 4600], rax;         jmp   n193_var_ref_α
.Lx535_0:               .quad            .Lx535_0_s
.Lx535_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 4480], rax
                        mov              qword ptr [rsp + 4488], rdx;         jmp   n194_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 4496], rax
                        mov              qword ptr [rsp + 4504], rdx;         jmp   n195_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n195_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4512], rax
                        mov              qword ptr [rsp + 4520], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n196_call_builtin_prolog_α
n195_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n196_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4608], rax
                        mov              qword ptr [rsp + 4616], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n197_lit_string_α
n196_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_string_α:      mov              qword ptr [rsp + 4816], 2            # result
                        mov              dword ptr [rsp + 4820], 1
                        mov              rax, qword ptr [rip + .Lx542_0]
                        mov              qword ptr [rsp + 4824], rax;         jmp   n198_var_ref_α
.Lx542_0:               .quad            .Lx542_0_s
.Lx542_0_s:             .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 4704], rax
                        mov              qword ptr [rsp + 4712], rdx;         jmp   n199_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_integer_α:     mov              qword ptr [rsp + 4720], 3            # result
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rsp + 4728], rax;         jmp   n200_call_builtin_prolog_α
.Lx545_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n200_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4736], rax
                        mov              qword ptr [rsp + 4744], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n201_call_builtin_prolog_α
n200_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n201_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4832], rax
                        mov              qword ptr [rsp + 4840], rdx
                        cmp              eax, 104;                            je    n213_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n202_call_builtin_prolog_α
n201_call_builtin_prolog_β:
                                                                              jmp   n213_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n202_call_builtin_prolog_α:
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
.Lx548_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx548_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx548_41
                        cmp              esi, 1;                              jne   .Lx548_55
                        mov              r8, rax;                             jmp   .Lx548_40
.Lx548_55:              cmp              esi, 2;                              jne   .Lx548_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx548_41
                        mov              r8, rax;                             jmp   .Lx548_40
.Lx548_56:              cmp              eax, 72;                             jne   .Lx548_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx548_41
                        cmp              rax, r8;                             je    .Lx548_41
                        mov              r8, rax;                             jmp   .Lx548_40
.Lx548_41:              lea              r9, [rsp + 4320]
.Lx548_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx548_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx548_43
                        cmp              esi, 1;                              jne   .Lx548_57
                        mov              r9, rax;                             jmp   .Lx548_42
.Lx548_57:              cmp              esi, 2;                              jne   .Lx548_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx548_43
                        mov              r9, rax;                             jmp   .Lx548_42
.Lx548_58:              cmp              eax, 72;                             jne   .Lx548_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx548_43
                        cmp              rax, r9;                             je    .Lx548_43
                        mov              r9, rax;                             jmp   .Lx548_42
.Lx548_43:              cmp              r8, r9;                              je    .Lx548_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx548_44
                        cmp              eax, 104;                            je    .Lx548_44
                        cmp              eax, 72;                             jne   .Lx548_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx548_44
                                                                              jmp   .Lx548_45
.Lx548_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx548_53
                        cmp              eax, 104;                            je    .Lx548_53
                        cmp              eax, 72;                             jne   .Lx548_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx548_53
                                                                              jmp   .Lx548_46
.Lx548_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx548_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx548_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx548_51
.Lx548_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx548_47
                        cmp              eax, 104;                            je    .Lx548_47
                        cmp              eax, 72;                             jne   .Lx548_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx548_47
                                                                              jmp   .Lx548_48
.Lx548_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx548_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx548_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx548_51
.Lx548_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx548_49
                        cmp              edx, 80;                             je    .Lx548_53
                                                                              jmp   .Lx548_52
.Lx548_49:              cmp              edx, 80;                             je    .Lx548_52
                        cmp              ecx, 5;                              je    .Lx548_53
                        cmp              edx, 5;                              je    .Lx548_53
                        cmp              ecx, 3;                              jne   .Lx548_50
                        cmp              edx, 3;                              jne   .Lx548_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx548_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx548_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx548_51
                                                                              jmp   .Lx548_52
.Lx548_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx548_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx548_53
.Lx548_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx548_54
.Lx548_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx548_54
.Lx548_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx548_54:              mov              qword ptr [rsp + 4288], rax
                        mov              qword ptr [rsp + 4296], rdx
                        cmp              eax, 104;                            je    n213_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n203_cut_α
n202_call_builtin_prolog_β:
                                                                              jmp   n213_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n203_cut_α:                                                                   jmp   n204_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 4240], rax
                        mov              qword ptr [rsp + 4248], rdx;         jmp   n205_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n205_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx;         jmp   n206_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 4272], rax
                        mov              qword ptr [rsp + 4280], rdx;         jmp   n207_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n207_call_proc_staged_α:
                        lea              rsi, [rsp + 4240]
                        lea              rdx, [rsp + 4256]
                        lea              rcx, [rsp + 4272]
                        call             d$2F3_dcα;                           jmp   .Lx557_2
.Lx557_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx557_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4160]
                        mov              rdx, qword ptr [rsp + 4168]
.Lx557_29:              mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        cmp              eax, 104;                            je    n352_call_builtin_prolog_α
                                                                              jmp   n208_var_ref_α
n207_call_proc_staged_β:
                                                                              jmp   n352_call_builtin_prolog_α
.Lx557_0:               .quad            .Lx557_0_s
.Lx557_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 4112], rax
                        mov              qword ptr [rsp + 4120], rdx;         jmp   n209_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n210_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 4144], rax
                        mov              qword ptr [rsp + 4152], rdx;         jmp   n211_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n211_call_proc_staged_α:
                        lea              rsi, [rsp + 4112]
                        lea              rdx, [rsp + 4128]
                        lea              rcx, [rsp + 4144]
                        call             d$2F3_dcα;                           jmp   .Lx565_2
.Lx565_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx565_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4032]
                        mov              rdx, qword ptr [rsp + 4040]
.Lx565_29:              mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx
                        cmp              eax, 104;                            je    n207_call_proc_staged_β
                                                                              jmp   n212_move_label_α
n211_call_proc_staged_β:
                                                                              jmp   n207_call_proc_staged_β
.Lx565_0:               .quad            .Lx565_0_s
.Lx565_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n212_move_label_α:      lea              rax, [rip + n211_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n213_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 4016], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 4024], rax
                        lea              rdi, [rsp + 4016]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4000], rax
                        mov              qword ptr [rsp + 4008], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n214_var_ref_α
n213_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3952], rax
                        mov              qword ptr [rsp + 3960], rdx;         jmp   n215_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_integer_α:     mov              qword ptr [rsp + 3968], 3            # result
                        mov              rax, qword ptr [rip + .Lx571_0]
                        mov              qword ptr [rsp + 3976], rax;         jmp   n216_lit_string_α
.Lx571_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:      mov              qword ptr [rsp + 3984], 2            # result
                        mov              dword ptr [rsp + 3988], 1
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rsp + 3992], rax;         jmp   n217_call_builtin_prolog_α
.Lx572_0:               .quad            .Lx572_0_s
.Lx572_0_s:             .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n217_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3888], rax
                        mov              qword ptr [rsp + 3896], rdx
                        cmp              eax, 104;                            je    n253_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n218_var_ref_α
n217_call_builtin_prolog_β:
                                                                              jmp   n253_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx;         jmp   n219_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:      mov              qword ptr [rsp + 3872], 2            # result
                        mov              dword ptr [rsp + 3876], 1
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rsp + 3880], rax;         jmp   n220_var_ref_α
.Lx576_0:               .quad            .Lx576_0_s
.Lx576_0_s:             .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 3760], rax
                        mov              qword ptr [rsp + 3768], rdx;         jmp   n221_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx;         jmp   n222_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n222_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3792], rax
                        mov              qword ptr [rsp + 3800], rdx
                        cmp              eax, 104;                            je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n223_call_builtin_prolog_α
n222_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_builtin_prolog_α:
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
.Lx582_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx582_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx582_41
                        cmp              esi, 1;                              jne   .Lx582_55
                        mov              r8, rax;                             jmp   .Lx582_40
.Lx582_55:              cmp              esi, 2;                              jne   .Lx582_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx582_41
                        mov              r8, rax;                             jmp   .Lx582_40
.Lx582_56:              cmp              eax, 72;                             jne   .Lx582_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx582_41
                        cmp              rax, r8;                             je    .Lx582_41
                        mov              r8, rax;                             jmp   .Lx582_40
.Lx582_41:              lea              r9, [rsp + 3728]
.Lx582_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx582_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx582_43
                        cmp              esi, 1;                              jne   .Lx582_57
                        mov              r9, rax;                             jmp   .Lx582_42
.Lx582_57:              cmp              esi, 2;                              jne   .Lx582_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx582_43
                        mov              r9, rax;                             jmp   .Lx582_42
.Lx582_58:              cmp              eax, 72;                             jne   .Lx582_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx582_43
                        cmp              rax, r9;                             je    .Lx582_43
                        mov              r9, rax;                             jmp   .Lx582_42
.Lx582_43:              cmp              r8, r9;                              je    .Lx582_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx582_44
                        cmp              eax, 104;                            je    .Lx582_44
                        cmp              eax, 72;                             jne   .Lx582_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx582_44
                                                                              jmp   .Lx582_45
.Lx582_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx582_53
                        cmp              eax, 104;                            je    .Lx582_53
                        cmp              eax, 72;                             jne   .Lx582_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx582_53
                                                                              jmp   .Lx582_46
.Lx582_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx582_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx582_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx582_51
.Lx582_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx582_47
                        cmp              eax, 104;                            je    .Lx582_47
                        cmp              eax, 72;                             jne   .Lx582_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx582_47
                                                                              jmp   .Lx582_48
.Lx582_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx582_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx582_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx582_51
.Lx582_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx582_49
                        cmp              edx, 80;                             je    .Lx582_53
                                                                              jmp   .Lx582_52
.Lx582_49:              cmp              edx, 80;                             je    .Lx582_52
                        cmp              ecx, 5;                              je    .Lx582_53
                        cmp              edx, 5;                              je    .Lx582_53
                        cmp              ecx, 3;                              jne   .Lx582_50
                        cmp              edx, 3;                              jne   .Lx582_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx582_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx582_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx582_51
                                                                              jmp   .Lx582_52
.Lx582_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx582_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx582_53
.Lx582_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx582_54
.Lx582_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx582_54
.Lx582_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx582_54:              mov              qword ptr [rsp + 3696], rax
                        mov              qword ptr [rsp + 3704], rdx
                        cmp              eax, 104;                            je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n224_var_ref_α
n223_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n224_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx;         jmp   n225_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx;         jmp   n226_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n226_call_builtin_prolog_α:
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
.Lx587_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx587_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx587_41
                        cmp              esi, 1;                              jne   .Lx587_55
                        mov              r8, rax;                             jmp   .Lx587_40
.Lx587_55:              cmp              esi, 2;                              jne   .Lx587_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx587_41
                        mov              r8, rax;                             jmp   .Lx587_40
.Lx587_56:              cmp              eax, 72;                             jne   .Lx587_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx587_41
                        cmp              rax, r8;                             je    .Lx587_41
                        mov              r8, rax;                             jmp   .Lx587_40
.Lx587_41:              lea              r9, [rsp + 3648]
.Lx587_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx587_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx587_43
                        cmp              esi, 1;                              jne   .Lx587_57
                        mov              r9, rax;                             jmp   .Lx587_42
.Lx587_57:              cmp              esi, 2;                              jne   .Lx587_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx587_43
                        mov              r9, rax;                             jmp   .Lx587_42
.Lx587_58:              cmp              eax, 72;                             jne   .Lx587_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx587_43
                        cmp              rax, r9;                             je    .Lx587_43
                        mov              r9, rax;                             jmp   .Lx587_42
.Lx587_43:              cmp              r8, r9;                              je    .Lx587_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx587_44
                        cmp              eax, 104;                            je    .Lx587_44
                        cmp              eax, 72;                             jne   .Lx587_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx587_44
                                                                              jmp   .Lx587_45
.Lx587_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx587_53
                        cmp              eax, 104;                            je    .Lx587_53
                        cmp              eax, 72;                             jne   .Lx587_46
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
                        cmp              eax, 0;                              je    .Lx587_47
                        cmp              eax, 104;                            je    .Lx587_47
                        cmp              eax, 72;                             jne   .Lx587_48
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
                        cmp              ecx, 80;                             jne   .Lx587_49
                        cmp              edx, 80;                             je    .Lx587_53
                                                                              jmp   .Lx587_52
.Lx587_49:              cmp              edx, 80;                             je    .Lx587_52
                        cmp              ecx, 5;                              je    .Lx587_53
                        cmp              edx, 5;                              je    .Lx587_53
                        cmp              ecx, 3;                              jne   .Lx587_50
                        cmp              edx, 3;                              jne   .Lx587_50
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx587_54:              mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx
                        cmp              eax, 104;                            je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n227_var_ref_α
n226_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n227_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx;         jmp   n228_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_string_α:      mov              qword ptr [rsp + 3600], 2            # result
                        mov              dword ptr [rsp + 3604], 1
                        mov              rax, qword ptr [rip + .Lx590_0]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n229_lit_string_α
.Lx590_0:               .quad            .Lx590_0_s
.Lx590_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_string_α:      mov              qword ptr [rsp + 3376], 2            # result
                        mov              dword ptr [rsp + 3380], 1
                        mov              rax, qword ptr [rip + .Lx591_0]
                        mov              qword ptr [rsp + 3384], rax;         jmp   n230_var_ref_α
.Lx591_0:               .quad            .Lx591_0_s
.Lx591_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 3264], rax
                        mov              qword ptr [rsp + 3272], rdx;         jmp   n231_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n231_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx;         jmp   n232_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n232_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n233_lit_string_α
n232_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_string_α:      mov              qword ptr [rsp + 3504], 2            # result
                        mov              dword ptr [rsp + 3508], 1
                        mov              rax, qword ptr [rip + .Lx597_0]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n234_var_ref_α
.Lx597_0:               .quad            .Lx597_0_s
.Lx597_0_s:             .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n234_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx;         jmp   n235_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx;         jmp   n236_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n236_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3424], rax
                        mov              qword ptr [rsp + 3432], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n237_call_builtin_prolog_α
n236_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n237_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx
                        cmp              eax, 104;                            je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n238_call_builtin_prolog_α
n237_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n238_call_builtin_prolog_α:
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
.Lx604_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx604_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx604_41
                        cmp              esi, 1;                              jne   .Lx604_55
                        mov              r8, rax;                             jmp   .Lx604_40
.Lx604_55:              cmp              esi, 2;                              jne   .Lx604_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx604_41
                        mov              r8, rax;                             jmp   .Lx604_40
.Lx604_56:              cmp              eax, 72;                             jne   .Lx604_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx604_41
                        cmp              rax, r8;                             je    .Lx604_41
                        mov              r8, rax;                             jmp   .Lx604_40
.Lx604_41:              lea              r9, [rsp + 3232]
.Lx604_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx604_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx604_43
                        cmp              esi, 1;                              jne   .Lx604_57
                        mov              r9, rax;                             jmp   .Lx604_42
.Lx604_57:              cmp              esi, 2;                              jne   .Lx604_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx604_43
                        mov              r9, rax;                             jmp   .Lx604_42
.Lx604_58:              cmp              eax, 72;                             jne   .Lx604_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx604_43
                        cmp              rax, r9;                             je    .Lx604_43
                        mov              r9, rax;                             jmp   .Lx604_42
.Lx604_43:              cmp              r8, r9;                              je    .Lx604_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx604_44
                        cmp              eax, 104;                            je    .Lx604_44
                        cmp              eax, 72;                             jne   .Lx604_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx604_44
                                                                              jmp   .Lx604_45
.Lx604_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx604_53
                        cmp              eax, 104;                            je    .Lx604_53
                        cmp              eax, 72;                             jne   .Lx604_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx604_53
                                                                              jmp   .Lx604_46
.Lx604_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx604_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx604_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx604_51
.Lx604_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx604_47
                        cmp              eax, 104;                            je    .Lx604_47
                        cmp              eax, 72;                             jne   .Lx604_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx604_47
                                                                              jmp   .Lx604_48
.Lx604_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx604_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx604_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx604_51
.Lx604_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx604_49
                        cmp              edx, 80;                             je    .Lx604_53
                                                                              jmp   .Lx604_52
.Lx604_49:              cmp              edx, 80;                             je    .Lx604_52
                        cmp              ecx, 5;                              je    .Lx604_53
                        cmp              edx, 5;                              je    .Lx604_53
                        cmp              ecx, 3;                              jne   .Lx604_50
                        cmp              edx, 3;                              jne   .Lx604_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx604_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx604_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx604_51
                                                                              jmp   .Lx604_52
.Lx604_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx604_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx604_53
.Lx604_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx604_54
.Lx604_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx604_54
.Lx604_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx604_54:              mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        cmp              eax, 104;                            je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n239_cut_α
n238_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n239_cut_α:                                                                   jmp   n240_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n240_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 3184], rax
                        mov              qword ptr [rsp + 3192], rdx;         jmp   n241_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n241_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3176], rax
                        .section         .rodata
.Lrkfn609:              .string          "$tt_integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn609]
                        lea              rsi, [rsp + 3168]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx
                        cmp              eax, 104;                            je    n352_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n242_var_ref_α
n241_call_builtin_prolog_β:
                                                                              jmp   n352_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n242_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx;         jmp   n243_var_α
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:             mov              rax, qword ptr [rsp + 8128]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 8136]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n244_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_integer_α:     mov              qword ptr [rsp + 3136], 3            # result
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rsp + 3144], rax;         jmp   n245_call_builtin_prolog_α
.Lx614_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n245_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx
                        cmp              eax, 104;                            je    n352_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n246_call_builtin_prolog_α
n245_call_builtin_prolog_β:
                                                                              jmp   n352_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n246_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        cmp              eax, 104;                            je    n352_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n247_var_ref_α
n246_call_builtin_prolog_β:
                                                                              jmp   n352_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx;         jmp   n248_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n249_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx;         jmp   n250_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n250_call_proc_staged_α:
                        lea              rsi, [rsp + 2944]
                        lea              rdx, [rsp + 2960]
                        lea              rcx, [rsp + 2976]
                        call             d$2F3_dcα;                           jmp   .Lx624_2
.Lx624_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx624_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2864]
                        mov              rdx, qword ptr [rsp + 2872]
.Lx624_29:              mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              eax, 104;                            je    n352_call_builtin_prolog_α
                                                                              jmp   n251_move_label_α
n250_call_proc_staged_β:
                                                                              jmp   n352_call_builtin_prolog_α
.Lx624_0:               .quad            .Lx624_0_s
.Lx624_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n251_move_label_α:      lea              rax, [rip + n250_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n252_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 2848], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 2856], rax
                        lea              rdi, [rsp + 2848]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n253_var_ref_α
n252_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx;         jmp   n254_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_integer_α:     mov              qword ptr [rsp + 2800], 3            # result
                        mov              rax, qword ptr [rip + .Lx630_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n255_lit_string_α
.Lx630_0:               .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:      mov              qword ptr [rsp + 2816], 2            # result
                        mov              dword ptr [rsp + 2820], 1
                        mov              rax, qword ptr [rip + .Lx631_0]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n256_call_builtin_prolog_α
.Lx631_0:               .quad            .Lx631_0_s
.Lx631_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n256_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                        cmp              eax, 104;                            je    n277_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n257_var_ref_α
n256_call_builtin_prolog_β:
                                                                              jmp   n277_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n258_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_string_α:      mov              qword ptr [rsp + 2704], 2            # result
                        mov              dword ptr [rsp + 2708], 1
                        mov              rax, qword ptr [rip + .Lx635_0]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n259_var_ref_α
.Lx635_0:               .quad            .Lx635_0_s
.Lx635_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n260_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n260_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx
                        cmp              eax, 104;                            je    n276_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n261_call_builtin_prolog_α
n260_call_builtin_prolog_β:
                                                                              jmp   n276_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n261_call_builtin_prolog_α:
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
.Lx639_41:              lea              r9, [rsp + 2592]
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx639_54:              mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx
                        cmp              eax, 104;                            je    n276_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n262_var_ref_α
n261_call_builtin_prolog_β:
                                                                              jmp   n276_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n262_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx;         jmp   n263_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n263_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx;         jmp   n264_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n264_call_builtin_prolog_α:
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
.Lx644_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx644_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx644_41
                        cmp              esi, 1;                              jne   .Lx644_55
                        mov              r8, rax;                             jmp   .Lx644_40
.Lx644_55:              cmp              esi, 2;                              jne   .Lx644_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx644_41
                        mov              r8, rax;                             jmp   .Lx644_40
.Lx644_56:              cmp              eax, 72;                             jne   .Lx644_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx644_41
                        cmp              rax, r8;                             je    .Lx644_41
                        mov              r8, rax;                             jmp   .Lx644_40
.Lx644_41:              lea              r9, [rsp + 2512]
.Lx644_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx644_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx644_43
                        cmp              esi, 1;                              jne   .Lx644_57
                        mov              r9, rax;                             jmp   .Lx644_42
.Lx644_57:              cmp              esi, 2;                              jne   .Lx644_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx644_43
                        mov              r9, rax;                             jmp   .Lx644_42
.Lx644_58:              cmp              eax, 72;                             jne   .Lx644_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx644_43
                        cmp              rax, r9;                             je    .Lx644_43
                        mov              r9, rax;                             jmp   .Lx644_42
.Lx644_43:              cmp              r8, r9;                              je    .Lx644_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx644_44
                        cmp              eax, 104;                            je    .Lx644_44
                        cmp              eax, 72;                             jne   .Lx644_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx644_44
                                                                              jmp   .Lx644_45
.Lx644_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx644_53
                        cmp              eax, 104;                            je    .Lx644_53
                        cmp              eax, 72;                             jne   .Lx644_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx644_53
                                                                              jmp   .Lx644_46
.Lx644_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx644_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx644_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx644_51
.Lx644_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx644_47
                        cmp              eax, 104;                            je    .Lx644_47
                        cmp              eax, 72;                             jne   .Lx644_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx644_47
                                                                              jmp   .Lx644_48
.Lx644_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx644_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx644_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx644_51
.Lx644_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx644_49
                        cmp              edx, 80;                             je    .Lx644_53
                                                                              jmp   .Lx644_52
.Lx644_49:              cmp              edx, 80;                             je    .Lx644_52
                        cmp              ecx, 5;                              je    .Lx644_53
                        cmp              edx, 5;                              je    .Lx644_53
                        cmp              ecx, 3;                              jne   .Lx644_50
                        cmp              edx, 3;                              jne   .Lx644_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx644_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx644_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx644_51
                                                                              jmp   .Lx644_52
.Lx644_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx644_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx644_53
.Lx644_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx644_54
.Lx644_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx644_54
.Lx644_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx644_54:              mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        cmp              eax, 104;                            je    n276_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n265_var_ref_α
n264_call_builtin_prolog_β:
                                                                              jmp   n276_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n265_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx;         jmp   n266_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:      mov              qword ptr [rsp + 2464], 2            # result
                        mov              dword ptr [rsp + 2468], 1
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n267_var_ref_α
.Lx647_0:               .quad            .Lx647_0_s
.Lx647_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx;         jmp   n268_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n268_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        cmp              eax, 104;                            je    n276_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n269_call_builtin_prolog_α
n268_call_builtin_prolog_β:
                                                                              jmp   n276_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n269_call_builtin_prolog_α:
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
.Lx651_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx651_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx651_41
                        cmp              esi, 1;                              jne   .Lx651_55
                        mov              r8, rax;                             jmp   .Lx651_40
.Lx651_55:              cmp              esi, 2;                              jne   .Lx651_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx651_41
                        mov              r8, rax;                             jmp   .Lx651_40
.Lx651_56:              cmp              eax, 72;                             jne   .Lx651_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx651_41
                        cmp              rax, r8;                             je    .Lx651_41
                        mov              r8, rax;                             jmp   .Lx651_40
.Lx651_41:              lea              r9, [rsp + 2352]
.Lx651_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx651_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx651_43
                        cmp              esi, 1;                              jne   .Lx651_57
                        mov              r9, rax;                             jmp   .Lx651_42
.Lx651_57:              cmp              esi, 2;                              jne   .Lx651_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx651_43
                        mov              r9, rax;                             jmp   .Lx651_42
.Lx651_58:              cmp              eax, 72;                             jne   .Lx651_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx651_43
                        cmp              rax, r9;                             je    .Lx651_43
                        mov              r9, rax;                             jmp   .Lx651_42
.Lx651_43:              cmp              r8, r9;                              je    .Lx651_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx651_44
                        cmp              eax, 104;                            je    .Lx651_44
                        cmp              eax, 72;                             jne   .Lx651_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx651_44
                                                                              jmp   .Lx651_45
.Lx651_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx651_53
                        cmp              eax, 104;                            je    .Lx651_53
                        cmp              eax, 72;                             jne   .Lx651_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx651_53
                                                                              jmp   .Lx651_46
.Lx651_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx651_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx651_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx651_51
.Lx651_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx651_47
                        cmp              eax, 104;                            je    .Lx651_47
                        cmp              eax, 72;                             jne   .Lx651_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx651_47
                                                                              jmp   .Lx651_48
.Lx651_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx651_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx651_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx651_51
.Lx651_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx651_49
                        cmp              edx, 80;                             je    .Lx651_53
                                                                              jmp   .Lx651_52
.Lx651_49:              cmp              edx, 80;                             je    .Lx651_52
                        cmp              ecx, 5;                              je    .Lx651_53
                        cmp              edx, 5;                              je    .Lx651_53
                        cmp              ecx, 3;                              jne   .Lx651_50
                        cmp              edx, 3;                              jne   .Lx651_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx651_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx651_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx651_51
                                                                              jmp   .Lx651_52
.Lx651_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx651_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx651_53
.Lx651_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx651_54
.Lx651_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx651_54
.Lx651_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx651_54:              mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        cmp              eax, 104;                            je    n276_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n270_cut_α
n269_call_builtin_prolog_β:
                                                                              jmp   n276_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n270_cut_α:                                                                   jmp   n271_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx;         jmp   n272_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n273_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n273_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx;         jmp   n274_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n274_call_proc_staged_α:
                        lea              rsi, [rsp + 2272]
                        lea              rdx, [rsp + 2288]
                        lea              rcx, [rsp + 2304]
                        call             d$2F3_dcα;                           jmp   .Lx660_2
.Lx660_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx660_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2192]
                        mov              rdx, qword ptr [rsp + 2200]
.Lx660_29:              mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        cmp              eax, 104;                            je    n352_call_builtin_prolog_α
                                                                              jmp   n275_move_label_α
n274_call_proc_staged_β:
                                                                              jmp   n352_call_builtin_prolog_α
.Lx660_0:               .quad            .Lx660_0_s
.Lx660_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n275_move_label_α:      lea              rax, [rip + n274_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n276_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 2184], rax
                        lea              rdi, [rsp + 2176]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n277_var_ref_α
n276_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n277_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx;         jmp   n278_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_integer_α:     mov              qword ptr [rsp + 2128], 3            # result
                        mov              rax, qword ptr [rip + .Lx666_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n279_lit_string_α
.Lx666_0:               .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_string_α:      mov              qword ptr [rsp + 2144], 2            # result
                        mov              dword ptr [rsp + 2148], 3
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n280_call_builtin_prolog_α
.Lx667_0:               .quad            .Lx667_0_s
.Lx667_0_s:             .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n280_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        cmp              eax, 104;                            je    n304_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n281_var_ref_α
n280_call_builtin_prolog_β:
                                                                              jmp   n304_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n281_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n282_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:      mov              qword ptr [rsp + 2032], 2            # result
                        mov              dword ptr [rsp + 2036], 3
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n283_var_ref_α
.Lx671_0:               .quad            .Lx671_0_s
.Lx671_0_s:             .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n283_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n284_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n284_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        cmp              eax, 104;                            je    n303_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n285_call_builtin_prolog_α
n284_call_builtin_prolog_β:
                                                                              jmp   n303_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n285_call_builtin_prolog_α:
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
.Lx675_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx675_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx675_41
                        cmp              esi, 1;                              jne   .Lx675_55
                        mov              r8, rax;                             jmp   .Lx675_40
.Lx675_55:              cmp              esi, 2;                              jne   .Lx675_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx675_41
                        mov              r8, rax;                             jmp   .Lx675_40
.Lx675_56:              cmp              eax, 72;                             jne   .Lx675_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx675_41
                        cmp              rax, r8;                             je    .Lx675_41
                        mov              r8, rax;                             jmp   .Lx675_40
.Lx675_41:              lea              r9, [rsp + 1920]
.Lx675_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx675_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx675_43
                        cmp              esi, 1;                              jne   .Lx675_57
                        mov              r9, rax;                             jmp   .Lx675_42
.Lx675_57:              cmp              esi, 2;                              jne   .Lx675_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx675_43
                        mov              r9, rax;                             jmp   .Lx675_42
.Lx675_58:              cmp              eax, 72;                             jne   .Lx675_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx675_43
                        cmp              rax, r9;                             je    .Lx675_43
                        mov              r9, rax;                             jmp   .Lx675_42
.Lx675_43:              cmp              r8, r9;                              je    .Lx675_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx675_44
                        cmp              eax, 104;                            je    .Lx675_44
                        cmp              eax, 72;                             jne   .Lx675_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx675_44
                                                                              jmp   .Lx675_45
.Lx675_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx675_53
                        cmp              eax, 104;                            je    .Lx675_53
                        cmp              eax, 72;                             jne   .Lx675_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx675_53
                                                                              jmp   .Lx675_46
.Lx675_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx675_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx675_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx675_51
.Lx675_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx675_47
                        cmp              eax, 104;                            je    .Lx675_47
                        cmp              eax, 72;                             jne   .Lx675_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx675_47
                                                                              jmp   .Lx675_48
.Lx675_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx675_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx675_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx675_51
.Lx675_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx675_49
                        cmp              edx, 80;                             je    .Lx675_53
                                                                              jmp   .Lx675_52
.Lx675_49:              cmp              edx, 80;                             je    .Lx675_52
                        cmp              ecx, 5;                              je    .Lx675_53
                        cmp              edx, 5;                              je    .Lx675_53
                        cmp              ecx, 3;                              jne   .Lx675_50
                        cmp              edx, 3;                              jne   .Lx675_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx675_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx675_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx675_51
                                                                              jmp   .Lx675_52
.Lx675_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx675_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx675_53
.Lx675_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx675_54
.Lx675_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx675_54
.Lx675_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx675_54:              mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              eax, 104;                            je    n303_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n286_var_ref_α
n285_call_builtin_prolog_β:
                                                                              jmp   n303_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n287_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx;         jmp   n288_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n288_call_builtin_prolog_α:
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
.Lx680_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx680_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx680_41
                        cmp              esi, 1;                              jne   .Lx680_55
                        mov              r8, rax;                             jmp   .Lx680_40
.Lx680_55:              cmp              esi, 2;                              jne   .Lx680_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx680_41
                        mov              r8, rax;                             jmp   .Lx680_40
.Lx680_56:              cmp              eax, 72;                             jne   .Lx680_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx680_41
                        cmp              rax, r8;                             je    .Lx680_41
                        mov              r8, rax;                             jmp   .Lx680_40
.Lx680_41:              lea              r9, [rsp + 1840]
.Lx680_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx680_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx680_43
                        cmp              esi, 1;                              jne   .Lx680_57
                        mov              r9, rax;                             jmp   .Lx680_42
.Lx680_57:              cmp              esi, 2;                              jne   .Lx680_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx680_43
                        mov              r9, rax;                             jmp   .Lx680_42
.Lx680_58:              cmp              eax, 72;                             jne   .Lx680_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx680_43
                        cmp              rax, r9;                             je    .Lx680_43
                        mov              r9, rax;                             jmp   .Lx680_42
.Lx680_43:              cmp              r8, r9;                              je    .Lx680_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx680_44
                        cmp              eax, 104;                            je    .Lx680_44
                        cmp              eax, 72;                             jne   .Lx680_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx680_44
                                                                              jmp   .Lx680_45
.Lx680_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx680_53
                        cmp              eax, 104;                            je    .Lx680_53
                        cmp              eax, 72;                             jne   .Lx680_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx680_53
                                                                              jmp   .Lx680_46
.Lx680_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx680_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx680_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx680_51
.Lx680_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx680_47
                        cmp              eax, 104;                            je    .Lx680_47
                        cmp              eax, 72;                             jne   .Lx680_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx680_47
                                                                              jmp   .Lx680_48
.Lx680_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx680_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx680_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx680_51
.Lx680_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx680_49
                        cmp              edx, 80;                             je    .Lx680_53
                                                                              jmp   .Lx680_52
.Lx680_49:              cmp              edx, 80;                             je    .Lx680_52
                        cmp              ecx, 5;                              je    .Lx680_53
                        cmp              edx, 5;                              je    .Lx680_53
                        cmp              ecx, 3;                              jne   .Lx680_50
                        cmp              edx, 3;                              jne   .Lx680_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx680_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx680_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx680_51
                                                                              jmp   .Lx680_52
.Lx680_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx680_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx680_53
.Lx680_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx680_54
.Lx680_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx680_54
.Lx680_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx680_54:              mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              eax, 104;                            je    n303_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n289_var_ref_α
n288_call_builtin_prolog_β:
                                                                              jmp   n303_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n289_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx;         jmp   n290_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:      mov              qword ptr [rsp + 1792], 2            # result
                        mov              dword ptr [rsp + 1796], 1
                        mov              rax, qword ptr [rip + .Lx683_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n291_lit_string_α
.Lx683_0:               .quad            .Lx683_0_s
.Lx683_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_string_α:      mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], 3
                        mov              rax, qword ptr [rip + .Lx684_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n292_var_ref_α
.Lx684_0:               .quad            .Lx684_0_s
.Lx684_0_s:             .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n293_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n293_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n294_var_ref_α
n293_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n294_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n295_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n295_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        cmp              eax, 104;                            je    n303_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n296_call_builtin_prolog_α
n295_call_builtin_prolog_β:
                                                                              jmp   n303_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n296_call_builtin_prolog_α:
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
.Lx691_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx691_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx691_41
                        cmp              esi, 1;                              jne   .Lx691_55
                        mov              r8, rax;                             jmp   .Lx691_40
.Lx691_55:              cmp              esi, 2;                              jne   .Lx691_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx691_41
                        mov              r8, rax;                             jmp   .Lx691_40
.Lx691_56:              cmp              eax, 72;                             jne   .Lx691_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx691_41
                        cmp              rax, r8;                             je    .Lx691_41
                        mov              r8, rax;                             jmp   .Lx691_40
.Lx691_41:              lea              r9, [rsp + 1568]
.Lx691_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx691_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx691_43
                        cmp              esi, 1;                              jne   .Lx691_57
                        mov              r9, rax;                             jmp   .Lx691_42
.Lx691_57:              cmp              esi, 2;                              jne   .Lx691_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx691_43
                        mov              r9, rax;                             jmp   .Lx691_42
.Lx691_58:              cmp              eax, 72;                             jne   .Lx691_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx691_43
                        cmp              rax, r9;                             je    .Lx691_43
                        mov              r9, rax;                             jmp   .Lx691_42
.Lx691_43:              cmp              r8, r9;                              je    .Lx691_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx691_44
                        cmp              eax, 104;                            je    .Lx691_44
                        cmp              eax, 72;                             jne   .Lx691_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx691_44
                                                                              jmp   .Lx691_45
.Lx691_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx691_53
                        cmp              eax, 104;                            je    .Lx691_53
                        cmp              eax, 72;                             jne   .Lx691_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx691_53
                                                                              jmp   .Lx691_46
.Lx691_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx691_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx691_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx691_51
.Lx691_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx691_47
                        cmp              eax, 104;                            je    .Lx691_47
                        cmp              eax, 72;                             jne   .Lx691_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx691_47
                                                                              jmp   .Lx691_48
.Lx691_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx691_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx691_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx691_51
.Lx691_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx691_49
                        cmp              edx, 80;                             je    .Lx691_53
                                                                              jmp   .Lx691_52
.Lx691_49:              cmp              edx, 80;                             je    .Lx691_52
                        cmp              ecx, 5;                              je    .Lx691_53
                        cmp              edx, 5;                              je    .Lx691_53
                        cmp              ecx, 3;                              jne   .Lx691_50
                        cmp              edx, 3;                              jne   .Lx691_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx691_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx691_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx691_51
                                                                              jmp   .Lx691_52
.Lx691_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx691_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx691_53
.Lx691_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx691_54
.Lx691_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx691_54
.Lx691_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx691_54:              mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              eax, 104;                            je    n303_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n297_cut_α
n296_call_builtin_prolog_β:
                                                                              jmp   n303_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n297_cut_α:                                                                   jmp   n298_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n298_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n299_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n299_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n300_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n301_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n301_call_proc_staged_α:
                        lea              rsi, [rsp + 1488]
                        lea              rdx, [rsp + 1504]
                        lea              rcx, [rsp + 1520]
                        call             d$2F3_dcα;                           jmp   .Lx700_2
.Lx700_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx700_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
.Lx700_29:              mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              eax, 104;                            je    n352_call_builtin_prolog_α
                                                                              jmp   n302_move_label_α
n301_call_proc_staged_β:
                                                                              jmp   n352_call_builtin_prolog_α
.Lx700_0:               .quad            .Lx700_0_s
.Lx700_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n302_move_label_α:      lea              rax, [rip + n301_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n303_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 1400], rax
                        lea              rdi, [rsp + 1392]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n304_var_ref_α
n303_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n305_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_integer_α:     mov              qword ptr [rsp + 1344], 3            # result
                        mov              rax, qword ptr [rip + .Lx706_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n306_lit_string_α
.Lx706_0:               .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_string_α:      mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], 3
                        mov              rax, qword ptr [rip + .Lx707_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n307_call_builtin_prolog_α
.Lx707_0:               .quad            .Lx707_0_s
.Lx707_0_s:             .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n307_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              eax, 104;                            je    n329_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n308_var_ref_α
n307_call_builtin_prolog_β:
                                                                              jmp   n329_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n308_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n309_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n309_lit_string_α:      mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 3
                        mov              rax, qword ptr [rip + .Lx711_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n310_var_ref_α
.Lx711_0:               .quad            .Lx711_0_s
.Lx711_0_s:             .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n311_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n311_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              eax, 104;                            je    n328_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n312_call_builtin_prolog_α
n311_call_builtin_prolog_β:
                                                                              jmp   n328_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n312_call_builtin_prolog_α:
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
.Lx715_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx715_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx715_41
                        cmp              esi, 1;                              jne   .Lx715_55
                        mov              r8, rax;                             jmp   .Lx715_40
.Lx715_55:              cmp              esi, 2;                              jne   .Lx715_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx715_41
                        mov              r8, rax;                             jmp   .Lx715_40
.Lx715_56:              cmp              eax, 72;                             jne   .Lx715_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx715_41
                        cmp              rax, r8;                             je    .Lx715_41
                        mov              r8, rax;                             jmp   .Lx715_40
.Lx715_41:              lea              r9, [rsp + 1136]
.Lx715_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx715_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx715_43
                        cmp              esi, 1;                              jne   .Lx715_57
                        mov              r9, rax;                             jmp   .Lx715_42
.Lx715_57:              cmp              esi, 2;                              jne   .Lx715_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx715_43
                        mov              r9, rax;                             jmp   .Lx715_42
.Lx715_58:              cmp              eax, 72;                             jne   .Lx715_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx715_43
                        cmp              rax, r9;                             je    .Lx715_43
                        mov              r9, rax;                             jmp   .Lx715_42
.Lx715_43:              cmp              r8, r9;                              je    .Lx715_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx715_44
                        cmp              eax, 104;                            je    .Lx715_44
                        cmp              eax, 72;                             jne   .Lx715_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx715_44
                                                                              jmp   .Lx715_45
.Lx715_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx715_53
                        cmp              eax, 104;                            je    .Lx715_53
                        cmp              eax, 72;                             jne   .Lx715_46
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
                        cmp              eax, 0;                              je    .Lx715_47
                        cmp              eax, 104;                            je    .Lx715_47
                        cmp              eax, 72;                             jne   .Lx715_48
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
                        cmp              ecx, 80;                             jne   .Lx715_49
                        cmp              edx, 80;                             je    .Lx715_53
                                                                              jmp   .Lx715_52
.Lx715_49:              cmp              edx, 80;                             je    .Lx715_52
                        cmp              ecx, 5;                              je    .Lx715_53
                        cmp              edx, 5;                              je    .Lx715_53
                        cmp              ecx, 3;                              jne   .Lx715_50
                        cmp              edx, 3;                              jne   .Lx715_50
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx715_54:              mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              eax, 104;                            je    n328_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n313_var_ref_α
n312_call_builtin_prolog_β:
                                                                              jmp   n328_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n314_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n315_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n315_call_builtin_prolog_α:
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
.Lx720_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx720_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx720_41
                        cmp              esi, 1;                              jne   .Lx720_55
                        mov              r8, rax;                             jmp   .Lx720_40
.Lx720_55:              cmp              esi, 2;                              jne   .Lx720_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx720_41
                        mov              r8, rax;                             jmp   .Lx720_40
.Lx720_56:              cmp              eax, 72;                             jne   .Lx720_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx720_41
                        cmp              rax, r8;                             je    .Lx720_41
                        mov              r8, rax;                             jmp   .Lx720_40
.Lx720_41:              lea              r9, [rsp + 1056]
.Lx720_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx720_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx720_43
                        cmp              esi, 1;                              jne   .Lx720_57
                        mov              r9, rax;                             jmp   .Lx720_42
.Lx720_57:              cmp              esi, 2;                              jne   .Lx720_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx720_43
                        mov              r9, rax;                             jmp   .Lx720_42
.Lx720_58:              cmp              eax, 72;                             jne   .Lx720_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx720_43
                        cmp              rax, r9;                             je    .Lx720_43
                        mov              r9, rax;                             jmp   .Lx720_42
.Lx720_43:              cmp              r8, r9;                              je    .Lx720_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx720_44
                        cmp              eax, 104;                            je    .Lx720_44
                        cmp              eax, 72;                             jne   .Lx720_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx720_44
                                                                              jmp   .Lx720_45
.Lx720_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx720_53
                        cmp              eax, 104;                            je    .Lx720_53
                        cmp              eax, 72;                             jne   .Lx720_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx720_53
                                                                              jmp   .Lx720_46
.Lx720_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx720_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx720_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx720_51
.Lx720_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx720_47
                        cmp              eax, 104;                            je    .Lx720_47
                        cmp              eax, 72;                             jne   .Lx720_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx720_47
                                                                              jmp   .Lx720_48
.Lx720_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx720_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx720_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx720_51
.Lx720_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx720_49
                        cmp              edx, 80;                             je    .Lx720_53
                                                                              jmp   .Lx720_52
.Lx720_49:              cmp              edx, 80;                             je    .Lx720_52
                        cmp              ecx, 5;                              je    .Lx720_53
                        cmp              edx, 5;                              je    .Lx720_53
                        cmp              ecx, 3;                              jne   .Lx720_50
                        cmp              edx, 3;                              jne   .Lx720_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx720_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx720_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx720_51
                                                                              jmp   .Lx720_52
.Lx720_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx720_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx720_53
.Lx720_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx720_54
.Lx720_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx720_54
.Lx720_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx720_54:              mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              eax, 104;                            je    n328_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n316_var_ref_α
n315_call_builtin_prolog_β:
                                                                              jmp   n328_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n317_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_string_α:      mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 1
                        mov              rax, qword ptr [rip + .Lx723_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n318_var_ref_α
.Lx723_0:               .quad            .Lx723_0_s
.Lx723_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n319_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n319_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n320_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n320_call_builtin_prolog_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              eax, 104;                            je    n328_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n321_call_builtin_prolog_α
n320_call_builtin_prolog_β:
                                                                              jmp   n328_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n321_call_builtin_prolog_α:
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
.Lx729_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx729_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx729_41
                        cmp              esi, 1;                              jne   .Lx729_55
                        mov              r8, rax;                             jmp   .Lx729_40
.Lx729_55:              cmp              esi, 2;                              jne   .Lx729_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx729_41
                        mov              r8, rax;                             jmp   .Lx729_40
.Lx729_56:              cmp              eax, 72;                             jne   .Lx729_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx729_41
                        cmp              rax, r8;                             je    .Lx729_41
                        mov              r8, rax;                             jmp   .Lx729_40
.Lx729_41:              lea              r9, [rsp + 864]
.Lx729_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx729_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx729_43
                        cmp              esi, 1;                              jne   .Lx729_57
                        mov              r9, rax;                             jmp   .Lx729_42
.Lx729_57:              cmp              esi, 2;                              jne   .Lx729_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx729_43
                        mov              r9, rax;                             jmp   .Lx729_42
.Lx729_58:              cmp              eax, 72;                             jne   .Lx729_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx729_43
                        cmp              rax, r9;                             je    .Lx729_43
                        mov              r9, rax;                             jmp   .Lx729_42
.Lx729_43:              cmp              r8, r9;                              je    .Lx729_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx729_44
                        cmp              eax, 104;                            je    .Lx729_44
                        cmp              eax, 72;                             jne   .Lx729_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx729_44
                                                                              jmp   .Lx729_45
.Lx729_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx729_53
                        cmp              eax, 104;                            je    .Lx729_53
                        cmp              eax, 72;                             jne   .Lx729_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx729_53
                                                                              jmp   .Lx729_46
.Lx729_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx729_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx729_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx729_51
.Lx729_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx729_47
                        cmp              eax, 104;                            je    .Lx729_47
                        cmp              eax, 72;                             jne   .Lx729_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx729_47
                                                                              jmp   .Lx729_48
.Lx729_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx729_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx729_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx729_51
.Lx729_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx729_49
                        cmp              edx, 80;                             je    .Lx729_53
                                                                              jmp   .Lx729_52
.Lx729_49:              cmp              edx, 80;                             je    .Lx729_52
                        cmp              ecx, 5;                              je    .Lx729_53
                        cmp              edx, 5;                              je    .Lx729_53
                        cmp              ecx, 3;                              jne   .Lx729_50
                        cmp              edx, 3;                              jne   .Lx729_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx729_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx729_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx729_51
                                                                              jmp   .Lx729_52
.Lx729_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx729_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx729_53
.Lx729_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx729_54
.Lx729_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx729_54
.Lx729_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx729_54:              mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              eax, 104;                            je    n328_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n322_cut_α
n321_call_builtin_prolog_β:
                                                                              jmp   n328_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n322_cut_α:                                                                   jmp   n323_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n324_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n324_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n325_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n325_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n326_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n326_call_proc_staged_α:
                        lea              rsi, [rsp + 784]
                        lea              rdx, [rsp + 800]
                        lea              rcx, [rsp + 816]
                        call             d$2F3_dcα;                           jmp   .Lx738_2
.Lx738_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx738_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
.Lx738_29:              mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              eax, 104;                            je    n352_call_builtin_prolog_α
                                                                              jmp   n327_move_label_α
n326_call_proc_staged_β:
                                                                              jmp   n352_call_builtin_prolog_α
.Lx738_0:               .quad            .Lx738_0_s
.Lx738_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n327_move_label_α:      lea              rax, [rip + n326_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n328_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n329_var_ref_α
n328_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n330_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8160]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n331_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n331_call_builtin_prolog_α:
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
.Lx746_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx746_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx746_41
                        cmp              esi, 1;                              jne   .Lx746_55
                        mov              r8, rax;                             jmp   .Lx746_40
.Lx746_55:              cmp              esi, 2;                              jne   .Lx746_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx746_41
                        mov              r8, rax;                             jmp   .Lx746_40
.Lx746_56:              cmp              eax, 72;                             jne   .Lx746_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx746_41
                        cmp              rax, r8;                             je    .Lx746_41
                        mov              r8, rax;                             jmp   .Lx746_40
.Lx746_41:              lea              r9, [rsp + 624]
.Lx746_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx746_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx746_43
                        cmp              esi, 1;                              jne   .Lx746_57
                        mov              r9, rax;                             jmp   .Lx746_42
.Lx746_57:              cmp              esi, 2;                              jne   .Lx746_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx746_43
                        mov              r9, rax;                             jmp   .Lx746_42
.Lx746_58:              cmp              eax, 72;                             jne   .Lx746_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx746_43
                        cmp              rax, r9;                             je    .Lx746_43
                        mov              r9, rax;                             jmp   .Lx746_42
.Lx746_43:              cmp              r8, r9;                              je    .Lx746_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx746_44
                        cmp              eax, 104;                            je    .Lx746_44
                        cmp              eax, 72;                             jne   .Lx746_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx746_44
                                                                              jmp   .Lx746_45
.Lx746_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx746_53
                        cmp              eax, 104;                            je    .Lx746_53
                        cmp              eax, 72;                             jne   .Lx746_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx746_53
                                                                              jmp   .Lx746_46
.Lx746_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx746_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx746_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx746_51
.Lx746_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx746_47
                        cmp              eax, 104;                            je    .Lx746_47
                        cmp              eax, 72;                             jne   .Lx746_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx746_47
                                                                              jmp   .Lx746_48
.Lx746_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx746_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx746_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx746_51
.Lx746_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx746_49
                        cmp              edx, 80;                             je    .Lx746_53
                                                                              jmp   .Lx746_52
.Lx746_49:              cmp              edx, 80;                             je    .Lx746_52
                        cmp              ecx, 5;                              je    .Lx746_53
                        cmp              edx, 5;                              je    .Lx746_53
                        cmp              ecx, 3;                              jne   .Lx746_50
                        cmp              edx, 3;                              jne   .Lx746_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx746_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx746_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx746_51
                                                                              jmp   .Lx746_52
.Lx746_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx746_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx746_53
.Lx746_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx746_54
.Lx746_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx746_54
.Lx746_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx746_54:              mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              eax, 104;                            je    n340_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n332_var_ref_α
n331_call_builtin_prolog_β:
                                                                              jmp   n340_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n333_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n333_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8160]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n334_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n334_call_builtin_prolog_α:
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
.Lx751_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx751_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx751_41
                        cmp              esi, 1;                              jne   .Lx751_55
                        mov              r8, rax;                             jmp   .Lx751_40
.Lx751_55:              cmp              esi, 2;                              jne   .Lx751_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx751_41
                        mov              r8, rax;                             jmp   .Lx751_40
.Lx751_56:              cmp              eax, 72;                             jne   .Lx751_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx751_41
                        cmp              rax, r8;                             je    .Lx751_41
                        mov              r8, rax;                             jmp   .Lx751_40
.Lx751_41:              lea              r9, [rsp + 544]
.Lx751_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx751_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx751_43
                        cmp              esi, 1;                              jne   .Lx751_57
                        mov              r9, rax;                             jmp   .Lx751_42
.Lx751_57:              cmp              esi, 2;                              jne   .Lx751_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx751_43
                        mov              r9, rax;                             jmp   .Lx751_42
.Lx751_58:              cmp              eax, 72;                             jne   .Lx751_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx751_43
                        cmp              rax, r9;                             je    .Lx751_43
                        mov              r9, rax;                             jmp   .Lx751_42
.Lx751_43:              cmp              r8, r9;                              je    .Lx751_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx751_44
                        cmp              eax, 104;                            je    .Lx751_44
                        cmp              eax, 72;                             jne   .Lx751_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx751_44
                                                                              jmp   .Lx751_45
.Lx751_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx751_53
                        cmp              eax, 104;                            je    .Lx751_53
                        cmp              eax, 72;                             jne   .Lx751_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx751_53
                                                                              jmp   .Lx751_46
.Lx751_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx751_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx751_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx751_51
.Lx751_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx751_47
                        cmp              eax, 104;                            je    .Lx751_47
                        cmp              eax, 72;                             jne   .Lx751_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx751_47
                                                                              jmp   .Lx751_48
.Lx751_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx751_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx751_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx751_51
.Lx751_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx751_49
                        cmp              edx, 80;                             je    .Lx751_53
                                                                              jmp   .Lx751_52
.Lx751_49:              cmp              edx, 80;                             je    .Lx751_52
                        cmp              ecx, 5;                              je    .Lx751_53
                        cmp              edx, 5;                              je    .Lx751_53
                        cmp              ecx, 3;                              jne   .Lx751_50
                        cmp              edx, 3;                              jne   .Lx751_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx751_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx751_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx751_51
                                                                              jmp   .Lx751_52
.Lx751_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx751_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx751_53
.Lx751_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx751_54
.Lx751_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx751_54
.Lx751_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx751_54:              mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 104;                            je    n340_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n335_var_ref_α
n334_call_builtin_prolog_β:
                                                                              jmp   n340_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n336_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_integer_α:     mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx754_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n337_call_builtin_prolog_α
.Lx754_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n337_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              eax, 104;                            je    n340_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n338_cut_α
n337_call_builtin_prolog_β:
                                                                              jmp   n340_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n338_cut_α:                                                                   jmp   n339_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n339_move_label_α:      lea              rax, [rip + n340_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n340_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n341_var_ref_α
n340_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n342_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n343_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n343_call_builtin_prolog_α:
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
.Lx764_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx764_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx764_41
                        cmp              esi, 1;                              jne   .Lx764_55
                        mov              r8, rax;                             jmp   .Lx764_40
.Lx764_55:              cmp              esi, 2;                              jne   .Lx764_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx764_41
                        mov              r8, rax;                             jmp   .Lx764_40
.Lx764_56:              cmp              eax, 72;                             jne   .Lx764_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx764_41
                        cmp              rax, r8;                             je    .Lx764_41
                        mov              r8, rax;                             jmp   .Lx764_40
.Lx764_41:              lea              r9, [rsp + 352]
.Lx764_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx764_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx764_43
                        cmp              esi, 1;                              jne   .Lx764_57
                        mov              r9, rax;                             jmp   .Lx764_42
.Lx764_57:              cmp              esi, 2;                              jne   .Lx764_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx764_43
                        mov              r9, rax;                             jmp   .Lx764_42
.Lx764_58:              cmp              eax, 72;                             jne   .Lx764_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx764_43
                        cmp              rax, r9;                             je    .Lx764_43
                        mov              r9, rax;                             jmp   .Lx764_42
.Lx764_43:              cmp              r8, r9;                              je    .Lx764_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx764_44
                        cmp              eax, 104;                            je    .Lx764_44
                        cmp              eax, 72;                             jne   .Lx764_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx764_44
                                                                              jmp   .Lx764_45
.Lx764_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx764_53
                        cmp              eax, 104;                            je    .Lx764_53
                        cmp              eax, 72;                             jne   .Lx764_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx764_53
                                                                              jmp   .Lx764_46
.Lx764_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx764_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx764_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx764_51
.Lx764_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx764_47
                        cmp              eax, 104;                            je    .Lx764_47
                        cmp              eax, 72;                             jne   .Lx764_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx764_47
                                                                              jmp   .Lx764_48
.Lx764_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx764_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx764_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx764_51
.Lx764_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx764_49
                        cmp              edx, 80;                             je    .Lx764_53
                                                                              jmp   .Lx764_52
.Lx764_49:              cmp              edx, 80;                             je    .Lx764_52
                        cmp              ecx, 5;                              je    .Lx764_53
                        cmp              edx, 5;                              je    .Lx764_53
                        cmp              ecx, 3;                              jne   .Lx764_50
                        cmp              edx, 3;                              jne   .Lx764_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx764_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx764_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx764_51
                                                                              jmp   .Lx764_52
.Lx764_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx764_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx764_53
.Lx764_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx764_54
.Lx764_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx764_54
.Lx764_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx764_54:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104;                            je    n352_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n344_var_ref_α
n343_call_builtin_prolog_β:
                                                                              jmp   n352_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n345_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n346_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n346_call_builtin_prolog_α:
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
.Lx769_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx769_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx769_41
                        cmp              esi, 1;                              jne   .Lx769_55
                        mov              r8, rax;                             jmp   .Lx769_40
.Lx769_55:              cmp              esi, 2;                              jne   .Lx769_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx769_41
                        mov              r8, rax;                             jmp   .Lx769_40
.Lx769_56:              cmp              eax, 72;                             jne   .Lx769_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx769_41
                        cmp              rax, r8;                             je    .Lx769_41
                        mov              r8, rax;                             jmp   .Lx769_40
.Lx769_41:              lea              r9, [rsp + 272]
.Lx769_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx769_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx769_43
                        cmp              esi, 1;                              jne   .Lx769_57
                        mov              r9, rax;                             jmp   .Lx769_42
.Lx769_57:              cmp              esi, 2;                              jne   .Lx769_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx769_43
                        mov              r9, rax;                             jmp   .Lx769_42
.Lx769_58:              cmp              eax, 72;                             jne   .Lx769_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx769_43
                        cmp              rax, r9;                             je    .Lx769_43
                        mov              r9, rax;                             jmp   .Lx769_42
.Lx769_43:              cmp              r8, r9;                              je    .Lx769_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx769_44
                        cmp              eax, 104;                            je    .Lx769_44
                        cmp              eax, 72;                             jne   .Lx769_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx769_44
                                                                              jmp   .Lx769_45
.Lx769_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx769_53
                        cmp              eax, 104;                            je    .Lx769_53
                        cmp              eax, 72;                             jne   .Lx769_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx769_53
                                                                              jmp   .Lx769_46
.Lx769_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx769_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx769_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx769_51
.Lx769_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx769_47
                        cmp              eax, 104;                            je    .Lx769_47
                        cmp              eax, 72;                             jne   .Lx769_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx769_47
                                                                              jmp   .Lx769_48
.Lx769_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx769_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx769_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx769_51
.Lx769_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx769_49
                        cmp              edx, 80;                             je    .Lx769_53
                                                                              jmp   .Lx769_52
.Lx769_49:              cmp              edx, 80;                             je    .Lx769_52
                        cmp              ecx, 5;                              je    .Lx769_53
                        cmp              edx, 5;                              je    .Lx769_53
                        cmp              ecx, 3;                              jne   .Lx769_50
                        cmp              edx, 3;                              jne   .Lx769_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx769_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx769_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx769_51
                                                                              jmp   .Lx769_52
.Lx769_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx769_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx769_53
.Lx769_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx769_54
.Lx769_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx769_54
.Lx769_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx769_54:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 104;                            je    n352_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n347_var_ref_α
n346_call_builtin_prolog_β:
                                                                              jmp   n352_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n348_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_integer_α:     mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx772_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n349_call_builtin_prolog_α
.Lx772_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n349_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    n352_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n350_move_label_α
n349_call_builtin_prolog_β:
                                                                              jmp   n352_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n350_move_label_α:      lea              rax, [rip + n352_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n351_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    d$2F3_ω
                                                                              jmp   rax
n351_disjunction_β:                                                           jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n352_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
n352_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_β:
                                                                              jmp   n351_disjunction_α
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r10, qword ptr [rsp + 16]
                        mov              edi, 2
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        lea              rcx, [rip + .Lx779_2]
                        lea              rdx, [rip + .Lx779_3];               jmp   FN__d$2F3
.Lx779_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx779_3:               pop              r11
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
top$2F0_α_body:
                        lea              rax, [rip + n782_suspend_β]
                        mov              qword ptr [rsp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n780_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx784_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx784_101
.Lx784_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx784_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx784_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx784_101
.Lx784_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx784_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104;                            je    top$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n781_call_proc_staged_α
n780_call_builtin_prolog_β:
                                                                              jmp   top$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n781_call_proc_staged_α:
                        call             divide10$2F0_dcα;                    jmp   .Lx786_2
.Lx786_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx786_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx786_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    n783_call_builtin_prolog_α
                                                                              jmp   n782_suspend_α
n781_call_proc_staged_β:
                                                                              jmp   n783_call_builtin_prolog_α
.Lx786_0:               .quad            .Lx786_0_s
.Lx786_0_s:             .string          "divide10/0"
#-----------------------------------------------------------------------------------------------------------------------
n782_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx788_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 112];          jmp   rax
.Lx788_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n782_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n782_suspend_β]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   top$2F0_γ
n782_suspend_β:                                                               jmp   n781_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n783_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    top$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   top$2F0_ω
n783_call_builtin_prolog_β:
                                                                              jmp   top$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_β:
                                                                              jmp   n782_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx789_50
                        mov              qword ptr [rsp + 112], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 112];          jmp   rax
.Lx789_50:              mov              rdi, rax
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
n790_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx801_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx801_101
.Lx801_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx801_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx801_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx801_101
.Lx801_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx801_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n791_call_proc_staged_α
n790_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n791_call_proc_staged_α:
                        mov              qword ptr [rsp + 256], 0
                        lea              rax, [rip + .Lx803_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx803_1
                        lea              rcx, [rip + .Lx803_3]
                        lea              rdx, [rip + .Lx803_4];               jmp   rax
.Lx803_3:               mov              qword ptr [rsp + 264], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 256]
                        test             rax, rax;                            jne   .Lx803_5
                        mov              qword ptr [rsp + 256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx803_2
.Lx803_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx803_2
.Lx803_4:               mov              rax, qword ptr [rsp + 256]
                        test             rax, rax;                            jne   .Lx803_6
                        mov              qword ptr [rsp + 256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx803_2
.Lx803_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx803_2
.Lx803_1:               call             rt_faildescr@PLT
.Lx803_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx803_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
.Lx803_29:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 104;                            je    n794_lit_string_α
                                                                              jmp   n792_lit_string_α
n791_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 256], 0
                        lea              rdi, [rsp + 272]
                        lea              rsi, [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n794_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              ecx, 16
                        mov              r8d, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n794_lit_string_α
                        lea              r11, [rip + .Lx803_7]
                        push             r11
                        lea              rcx, [rip + .Lx803_3]
                        lea              rdx, [rip + .Lx803_4];               jmp   rax
.Lx803_7:               add              rsp, 8
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 104;                            je    n794_lit_string_α
                                                                              jmp   n792_lit_string_α
.Lx803_0:               .quad            .Lx803_0_s
.Lx803_0_s:             .string          "top/0"
#-----------------------------------------------------------------------------------------------------------------------
n792_lit_string_α:      mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 2
                        mov              rax, qword ptr [rip + .Lx804_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n793_call_builtin_prolog_α
.Lx804_0:               .quad            .Lx804_0_s
.Lx804_0_s:             .string          "ok"
#-----------------------------------------------------------------------------------------------------------------------
n793_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn806:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn806]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 104;                            je    n800_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n796_lit_string_α
n793_call_builtin_prolog_β:
                                                                              jmp   n800_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n794_lit_string_α:      mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 6
                        mov              rax, qword ptr [rip + .Lx807_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n795_call_builtin_prolog_α
.Lx807_0:               .quad            .Lx807_0_s
.Lx807_0_s:             .string          "failed"
#-----------------------------------------------------------------------------------------------------------------------
n795_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn809:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn809]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 104;                            je    n800_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n796_lit_string_α
n795_call_builtin_prolog_β:
                                                                              jmp   n800_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n796_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx810_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n797_call_builtin_prolog_α
.Lx810_0:               .quad            .Lx810_0_s
.Lx810_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n797_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn812:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn812]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    n800_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n798_move_label_α
n797_call_builtin_prolog_β:
                                                                              jmp   n800_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n798_move_label_α:      lea              rax, [rip + n800_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n799_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n799_disjunction_β:                                                           jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n800_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_ω
n800_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n799_disjunction_α
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
