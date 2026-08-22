                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
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
                        sub              rsp, 6672
                        mov              qword ptr [rsp + 6648], rcx
                        mov              qword ptr [rsp + 6656], rdx
                        mov              qword ptr [rsp + 6664], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 6640
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 20
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx200_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx200_101
.Lx200_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx200_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx200_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx200_101
.Lx200_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx200_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rsp + 6256], 2            # result
                        mov              dword ptr [rsp + 6260], 11
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rsp + 6264], rax;         jmp   n2_var_ref_α
.Lx201_0:               .quad            .Lx201_0_s
.Lx201_0_s:             .string          "foo(x,y,z)."
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6608]
                        mov              qword ptr [rsp + 6272], rax
                        mov              qword ptr [rsp + 6280], rdx;         jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 6288], 2            # result
                        mov              dword ptr [rsp + 6292], 2
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rsp + 6296], rax;         jmp   n4_call_builtin_prolog_α
.Lx204_0:               .quad            .Lx204_0_s
.Lx204_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
                        mov              r11, 5
                        mov              rax, qword ptr [rsp + 6288]
                        mov              qword ptr [rsp + 6240], rax
                        mov              rax, qword ptr [rsp + 6296]
                        mov              qword ptr [rsp + 6248], rax
                        mov              rax, qword ptr [rsp + 6272]
                        mov              qword ptr [rsp + 6224], rax
                        mov              rax, qword ptr [rsp + 6280]
                        mov              qword ptr [rsp + 6232], rax
                        mov              rax, qword ptr [rsp + 6256]
                        mov              qword ptr [rsp + 6208], rax
                        mov              rax, qword ptr [rsp + 6264]
                        mov              qword ptr [rsp + 6216], rax
                        .section         .rodata
.Lrkfn206:              .string          "$read_term_from_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn206]
                        lea              rsi, [rsp + 6208]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6192], rax
                        mov              qword ptr [rsp + 6200], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_var_ref_α
n4_call_builtin_prolog_β:
                        mov              r11, 5;                              jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6608]
                        mov              qword ptr [rsp + 6176], rax
                        mov              qword ptr [rsp + 6184], rdx;         jmp   n6_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              r11, 7
                        mov              rax, qword ptr [rsp + 6176]
                        mov              qword ptr [rsp + 6160], rax
                        mov              rax, qword ptr [rsp + 6184]
                        mov              qword ptr [rsp + 6168], rax
                        .section         .rodata
.Lrkfn210:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn210]
                        lea              rsi, [rsp + 6160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6144], rax
                        mov              qword ptr [rsp + 6152], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n7_lit_string_α
n6_call_builtin_prolog_β:
                        mov              r11, 7;                              jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rsp + 6128], 2            # result
                        mov              dword ptr [rsp + 6132], 0
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rsp + 6136], rax;         jmp   n8_call_builtin_prolog_α
.Lx211_0:               .quad            .Lx211_0_s
.Lx211_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              r11, 9
                        mov              rax, qword ptr [rsp + 6128]
                        mov              qword ptr [rsp + 6112], rax
                        mov              rax, qword ptr [rsp + 6136]
                        mov              qword ptr [rsp + 6120], rax
                        .section         .rodata
.Lrkfn213:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn213]
                        lea              rsi, [rsp + 6112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6096], rax
                        mov              qword ptr [rsp + 6104], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n9_lit_string_α
n8_call_builtin_prolog_β:
                        mov              r11, 9;                              jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rsp + 5856], 2            # result
                        mov              dword ptr [rsp + 5860], 11
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 5864], rax;         jmp   n10_var_ref_α
.Lx214_0:               .quad            .Lx214_0_s
.Lx214_0_s:             .string          "bar(A,B,A)."
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6576]
                        mov              qword ptr [rsp + 5872], rax
                        mov              qword ptr [rsp + 5880], rdx;         jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              r11, 12
                        mov              qword ptr [rsp + 6080], 2            # result
                        mov              dword ptr [rsp + 6084], 1
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 6088], rax;         jmp   n12_lit_string_α
.Lx217_0:               .quad            .Lx217_0_s
.Lx217_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              r11, 13
                        mov              qword ptr [rsp + 5984], 2            # result
                        mov              dword ptr [rsp + 5988], 9
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 5992], rax;         jmp   n13_var_ref_α
.Lx218_0:               .quad            .Lx218_0_s
.Lx218_0_s:             .string          "variables"
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6560]
                        mov              qword ptr [rsp + 5904], rax
                        mov              qword ptr [rsp + 5912], rdx;         jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              r11, 15
                        mov              rax, qword ptr [rsp + 5904]
                        mov              qword ptr [rsp + 5952], rax
                        mov              rax, qword ptr [rsp + 5912]
                        mov              qword ptr [rsp + 5960], rax
                        mov              rax, qword ptr [rsp + 5984]
                        mov              qword ptr [rsp + 5936], rax
                        mov              rax, qword ptr [rsp + 5992]
                        mov              qword ptr [rsp + 5944], rax
                        lea              rdi, [rsp + 5936]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5920], rax
                        mov              qword ptr [rsp + 5928], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_lit_string_α
n14_call_builtin_prolog_β:
                        mov              r11, 15;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rsp + 5888], 2            # result
                        mov              dword ptr [rsp + 5892], 2
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rsp + 5896], rax;         jmp   n16_call_builtin_prolog_α
.Lx222_0:               .quad            .Lx222_0_s
.Lx222_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              r11, 17
                        mov              rax, qword ptr [rsp + 5888]
                        mov              qword ptr [rsp + 6048], rax
                        mov              rax, qword ptr [rsp + 5896]
                        mov              qword ptr [rsp + 6056], rax
                        mov              rax, qword ptr [rsp + 5920]
                        mov              qword ptr [rsp + 6032], rax
                        mov              rax, qword ptr [rsp + 5928]
                        mov              qword ptr [rsp + 6040], rax
                        mov              rax, qword ptr [rsp + 6080]
                        mov              qword ptr [rsp + 6016], rax
                        mov              rax, qword ptr [rsp + 6088]
                        mov              qword ptr [rsp + 6024], rax
                        lea              rdi, [rsp + 6016]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 6000], rax
                        mov              qword ptr [rsp + 6008], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n17_call_builtin_prolog_α
n16_call_builtin_prolog_β:
                        mov              r11, 17;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_prolog_α:
                        mov              r11, 18
                        mov              rax, qword ptr [rsp + 6000]
                        mov              qword ptr [rsp + 5840], rax
                        mov              rax, qword ptr [rsp + 6008]
                        mov              qword ptr [rsp + 5848], rax
                        mov              rax, qword ptr [rsp + 5872]
                        mov              qword ptr [rsp + 5824], rax
                        mov              rax, qword ptr [rsp + 5880]
                        mov              qword ptr [rsp + 5832], rax
                        mov              rax, qword ptr [rsp + 5856]
                        mov              qword ptr [rsp + 5808], rax
                        mov              rax, qword ptr [rsp + 5864]
                        mov              qword ptr [rsp + 5816], rax
                        .section         .rodata
.Lrkfn225:              .string          "$read_term_from_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn225]
                        lea              rsi, [rsp + 5808]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5792], rax
                        mov              qword ptr [rsp + 5800], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n18_lit_string_α
n17_call_builtin_prolog_β:
                        mov              r11, 18;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       mov              r11, 19
                        mov              qword ptr [rsp + 5744], 2            # result
                        mov              dword ptr [rsp + 5748], 1
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 5752], rax;         jmp   n19_var_ref_α
.Lx226_0:               .quad            .Lx226_0_s
.Lx226_0_s:             .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:          mov              r11, 20
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6576]
                        mov              qword ptr [rsp + 5632], rax
                        mov              qword ptr [rsp + 5640], rdx;         jmp   n20_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:          mov              r11, 21
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6560]
                        mov              qword ptr [rsp + 5648], rax
                        mov              qword ptr [rsp + 5656], rdx;         jmp   n21_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
                        mov              r11, 22
                        mov              rax, qword ptr [rsp + 5648]
                        mov              qword ptr [rsp + 5712], rax
                        mov              rax, qword ptr [rsp + 5656]
                        mov              qword ptr [rsp + 5720], rax
                        mov              rax, qword ptr [rsp + 5632]
                        mov              qword ptr [rsp + 5696], rax
                        mov              rax, qword ptr [rsp + 5640]
                        mov              qword ptr [rsp + 5704], rax
                        mov              rax, qword ptr [rsp + 5744]
                        mov              qword ptr [rsp + 5680], rax
                        mov              rax, qword ptr [rsp + 5752]
                        mov              qword ptr [rsp + 5688], rax
                        lea              rdi, [rsp + 5680]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5664], rax
                        mov              qword ptr [rsp + 5672], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n22_lit_integer_α
n21_call_builtin_prolog_β:
                        mov              r11, 22;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      mov              r11, 23
                        mov              qword ptr [rsp + 5760], 3            # result
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 5768], rax;         jmp   n23_var_ref_α
.Lx232_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              r11, 24
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6592]
                        mov              qword ptr [rsp + 5776], rax
                        mov              qword ptr [rsp + 5784], rdx;         jmp   n24_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
                        mov              r11, 25
                        mov              rax, qword ptr [rsp + 5776]
                        mov              qword ptr [rsp + 5616], rax
                        mov              rax, qword ptr [rsp + 5784]
                        mov              qword ptr [rsp + 5624], rax
                        mov              rax, qword ptr [rsp + 5760]
                        mov              qword ptr [rsp + 5600], rax
                        mov              rax, qword ptr [rsp + 5768]
                        mov              qword ptr [rsp + 5608], rax
                        mov              rax, qword ptr [rsp + 5664]
                        mov              qword ptr [rsp + 5584], rax
                        mov              rax, qword ptr [rsp + 5672]
                        mov              qword ptr [rsp + 5592], rax
                        .section         .rodata
.Lrkfn236:              .string          "$numbervars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn236]
                        lea              rsi, [rsp + 5584]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5568], rax
                        mov              qword ptr [rsp + 5576], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n25_var_ref_α
n24_call_builtin_prolog_β:
                        mov              r11, 25;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6576]
                        mov              qword ptr [rsp + 5552], rax
                        mov              qword ptr [rsp + 5560], rdx;         jmp   n26_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              r11, 27
                        mov              rax, qword ptr [rsp + 5552]
                        mov              qword ptr [rsp + 5536], rax
                        mov              rax, qword ptr [rsp + 5560]
                        mov              qword ptr [rsp + 5544], rax
                        .section         .rodata
.Lrkfn240:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn240]
                        lea              rsi, [rsp + 5536]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5520], rax
                        mov              qword ptr [rsp + 5528], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_lit_string_α
n26_call_builtin_prolog_β:
                        mov              r11, 27;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rsp + 5504], 2            # result
                        mov              dword ptr [rsp + 5508], 0
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 5512], rax;         jmp   n28_call_builtin_prolog_α
.Lx241_0:               .quad            .Lx241_0_s
.Lx241_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              r11, 29
                        mov              rax, qword ptr [rsp + 5504]
                        mov              qword ptr [rsp + 5488], rax
                        mov              rax, qword ptr [rsp + 5512]
                        mov              qword ptr [rsp + 5496], rax
                        .section         .rodata
.Lrkfn243:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn243]
                        lea              rsi, [rsp + 5488]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5472], rax
                        mov              qword ptr [rsp + 5480], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n29_var_ref_α
n28_call_builtin_prolog_β:
                        mov              r11, 29;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6560]
                        mov              qword ptr [rsp + 5456], rax
                        mov              qword ptr [rsp + 5464], rdx;         jmp   n30_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
                        mov              r11, 31
                        mov              rax, qword ptr [rsp + 5456]
                        mov              qword ptr [rsp + 5440], rax
                        mov              rax, qword ptr [rsp + 5464]
                        mov              qword ptr [rsp + 5448], rax
                        .section         .rodata
.Lrkfn247:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn247]
                        lea              rsi, [rsp + 5440]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5424], rax
                        mov              qword ptr [rsp + 5432], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n31_lit_string_α
n30_call_builtin_prolog_β:
                        mov              r11, 31;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       mov              r11, 32
                        mov              qword ptr [rsp + 5408], 2            # result
                        mov              dword ptr [rsp + 5412], 0
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 5416], rax;         jmp   n32_call_builtin_prolog_α
.Lx248_0:               .quad            .Lx248_0_s
.Lx248_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
                        mov              r11, 33
                        mov              rax, qword ptr [rsp + 5408]
                        mov              qword ptr [rsp + 5392], rax
                        mov              rax, qword ptr [rsp + 5416]
                        mov              qword ptr [rsp + 5400], rax
                        .section         .rodata
.Lrkfn250:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn250]
                        lea              rsi, [rsp + 5392]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5376], rax
                        mov              qword ptr [rsp + 5384], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n33_lit_string_α
n32_call_builtin_prolog_β:
                        mov              r11, 33;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       mov              r11, 34
                        mov              qword ptr [rsp + 5136], 2            # result
                        mov              dword ptr [rsp + 5140], 11
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 5144], rax;         jmp   n34_var_ref_α
.Lx251_0:               .quad            .Lx251_0_s
.Lx251_0_s:             .string          "bar(A,B,A)."
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6544]
                        mov              qword ptr [rsp + 5152], rax
                        mov              qword ptr [rsp + 5160], rdx;         jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       mov              r11, 36
                        mov              qword ptr [rsp + 5360], 2            # result
                        mov              dword ptr [rsp + 5364], 1
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rsp + 5368], rax;         jmp   n36_lit_string_α
.Lx254_0:               .quad            .Lx254_0_s
.Lx254_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       mov              r11, 37
                        mov              qword ptr [rsp + 5264], 2            # result
                        mov              dword ptr [rsp + 5268], 14
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 5272], rax;         jmp   n37_var_ref_α
.Lx255_0:               .quad            .Lx255_0_s
.Lx255_0_s:             .string          "variable_names"
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6512]
                        mov              qword ptr [rsp + 5184], rax
                        mov              qword ptr [rsp + 5192], rdx;         jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_prolog_α:
                        mov              r11, 39
                        mov              rax, qword ptr [rsp + 5184]
                        mov              qword ptr [rsp + 5232], rax
                        mov              rax, qword ptr [rsp + 5192]
                        mov              qword ptr [rsp + 5240], rax
                        mov              rax, qword ptr [rsp + 5264]
                        mov              qword ptr [rsp + 5216], rax
                        mov              rax, qword ptr [rsp + 5272]
                        mov              qword ptr [rsp + 5224], rax
                        lea              rdi, [rsp + 5216]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5200], rax
                        mov              qword ptr [rsp + 5208], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n39_lit_string_α
n38_call_builtin_prolog_β:
                        mov              r11, 39;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              r11, 40
                        mov              qword ptr [rsp + 5168], 2            # result
                        mov              dword ptr [rsp + 5172], 2
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 5176], rax;         jmp   n40_call_builtin_prolog_α
.Lx259_0:               .quad            .Lx259_0_s
.Lx259_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              r11, 41
                        mov              rax, qword ptr [rsp + 5168]
                        mov              qword ptr [rsp + 5328], rax
                        mov              rax, qword ptr [rsp + 5176]
                        mov              qword ptr [rsp + 5336], rax
                        mov              rax, qword ptr [rsp + 5200]
                        mov              qword ptr [rsp + 5312], rax
                        mov              rax, qword ptr [rsp + 5208]
                        mov              qword ptr [rsp + 5320], rax
                        mov              rax, qword ptr [rsp + 5360]
                        mov              qword ptr [rsp + 5296], rax
                        mov              rax, qword ptr [rsp + 5368]
                        mov              qword ptr [rsp + 5304], rax
                        lea              rdi, [rsp + 5296]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5280], rax
                        mov              qword ptr [rsp + 5288], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n41_call_builtin_prolog_α
n40_call_builtin_prolog_β:
                        mov              r11, 41;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_prolog_α:
                        mov              r11, 42
                        mov              rax, qword ptr [rsp + 5280]
                        mov              qword ptr [rsp + 5120], rax
                        mov              rax, qword ptr [rsp + 5288]
                        mov              qword ptr [rsp + 5128], rax
                        mov              rax, qword ptr [rsp + 5152]
                        mov              qword ptr [rsp + 5104], rax
                        mov              rax, qword ptr [rsp + 5160]
                        mov              qword ptr [rsp + 5112], rax
                        mov              rax, qword ptr [rsp + 5136]
                        mov              qword ptr [rsp + 5088], rax
                        mov              rax, qword ptr [rsp + 5144]
                        mov              qword ptr [rsp + 5096], rax
                        .section         .rodata
.Lrkfn262:              .string          "$read_term_from_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn262]
                        lea              rsi, [rsp + 5088]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5072], rax
                        mov              qword ptr [rsp + 5080], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n42_var_ref_α
n41_call_builtin_prolog_β:
                        mov              r11, 42;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6512]
                        mov              qword ptr [rsp + 5024], rax
                        mov              qword ptr [rsp + 5032], rdx;         jmp   n43_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:      mov              r11, 44
                        mov              qword ptr [rsp + 5040], 3            # result
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 5048], rax;         jmp   n44_var_ref_α
.Lx265_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6528]
                        mov              qword ptr [rsp + 5056], rax
                        mov              qword ptr [rsp + 5064], rdx;         jmp   n45_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_prolog_α:
                        mov              r11, 46
                        mov              rax, qword ptr [rsp + 5056]
                        mov              qword ptr [rsp + 5008], rax
                        mov              rax, qword ptr [rsp + 5064]
                        mov              qword ptr [rsp + 5016], rax
                        mov              rax, qword ptr [rsp + 5040]
                        mov              qword ptr [rsp + 4992], rax
                        mov              rax, qword ptr [rsp + 5048]
                        mov              qword ptr [rsp + 5000], rax
                        mov              rax, qword ptr [rsp + 5024]
                        mov              qword ptr [rsp + 4976], rax
                        mov              rax, qword ptr [rsp + 5032]
                        mov              qword ptr [rsp + 4984], rax
                        .section         .rodata
.Lrkfn269:              .string          "$numbervars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn269]
                        lea              rsi, [rsp + 4976]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4960], rax
                        mov              qword ptr [rsp + 4968], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n46_var_ref_α
n45_call_builtin_prolog_β:
                        mov              r11, 46;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6512]
                        mov              qword ptr [rsp + 4944], rax
                        mov              qword ptr [rsp + 4952], rdx;         jmp   n47_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_prolog_α:
                        mov              r11, 48
                        mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 4928], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 4936], rax
                        .section         .rodata
.Lrkfn273:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn273]
                        lea              rsi, [rsp + 4928]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4912], rax
                        mov              qword ptr [rsp + 4920], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n48_lit_string_α
n47_call_builtin_prolog_β:
                        mov              r11, 48;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       mov              r11, 49
                        mov              qword ptr [rsp + 4896], 2            # result
                        mov              dword ptr [rsp + 4900], 0
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rsp + 4904], rax;         jmp   n49_call_builtin_prolog_α
.Lx274_0:               .quad            .Lx274_0_s
.Lx274_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_prolog_α:
                        mov              r11, 50
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 4880], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 4888], rax
                        .section         .rodata
.Lrkfn276:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]
                        lea              rsi, [rsp + 4880]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4864], rax
                        mov              qword ptr [rsp + 4872], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n50_lit_string_α
n49_call_builtin_prolog_β:
                        mov              r11, 50;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       mov              r11, 51
                        mov              qword ptr [rsp + 4624], 2            # result
                        mov              dword ptr [rsp + 4628], 13
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 4632], rax;         jmp   n51_var_ref_α
.Lx277_0:               .quad            .Lx277_0_s
.Lx277_0_s:             .string          "baz(P,Q,P,R)."
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:          mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6480]
                        mov              qword ptr [rsp + 4640], rax
                        mov              qword ptr [rsp + 4648], rdx;         jmp   n52_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       mov              r11, 53
                        mov              qword ptr [rsp + 4848], 2            # result
                        mov              dword ptr [rsp + 4852], 1
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rsp + 4856], rax;         jmp   n53_lit_string_α
.Lx280_0:               .quad            .Lx280_0_s
.Lx280_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       mov              r11, 54
                        mov              qword ptr [rsp + 4752], 2            # result
                        mov              dword ptr [rsp + 4756], 10
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rsp + 4760], rax;         jmp   n54_var_ref_α
.Lx281_0:               .quad            .Lx281_0_s
.Lx281_0_s:             .string          "singletons"
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:          mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6464]
                        mov              qword ptr [rsp + 4672], rax
                        mov              qword ptr [rsp + 4680], rdx;         jmp   n55_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_prolog_α:
                        mov              r11, 56
                        mov              rax, qword ptr [rsp + 4672]
                        mov              qword ptr [rsp + 4720], rax
                        mov              rax, qword ptr [rsp + 4680]
                        mov              qword ptr [rsp + 4728], rax
                        mov              rax, qword ptr [rsp + 4752]
                        mov              qword ptr [rsp + 4704], rax
                        mov              rax, qword ptr [rsp + 4760]
                        mov              qword ptr [rsp + 4712], rax
                        lea              rdi, [rsp + 4704]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4688], rax
                        mov              qword ptr [rsp + 4696], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n56_lit_string_α
n55_call_builtin_prolog_β:
                        mov              r11, 56;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:       mov              r11, 57
                        mov              qword ptr [rsp + 4656], 2            # result
                        mov              dword ptr [rsp + 4660], 2
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rsp + 4664], rax;         jmp   n57_call_builtin_prolog_α
.Lx285_0:               .quad            .Lx285_0_s
.Lx285_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n57_call_builtin_prolog_α:
                        mov              r11, 58
                        mov              rax, qword ptr [rsp + 4656]
                        mov              qword ptr [rsp + 4816], rax
                        mov              rax, qword ptr [rsp + 4664]
                        mov              qword ptr [rsp + 4824], rax
                        mov              rax, qword ptr [rsp + 4688]
                        mov              qword ptr [rsp + 4800], rax
                        mov              rax, qword ptr [rsp + 4696]
                        mov              qword ptr [rsp + 4808], rax
                        mov              rax, qword ptr [rsp + 4848]
                        mov              qword ptr [rsp + 4784], rax
                        mov              rax, qword ptr [rsp + 4856]
                        mov              qword ptr [rsp + 4792], rax
                        lea              rdi, [rsp + 4784]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4768], rax
                        mov              qword ptr [rsp + 4776], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n58_call_builtin_prolog_α
n57_call_builtin_prolog_β:
                        mov              r11, 58;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_prolog_α:
                        mov              r11, 59
                        mov              rax, qword ptr [rsp + 4768]
                        mov              qword ptr [rsp + 4608], rax
                        mov              rax, qword ptr [rsp + 4776]
                        mov              qword ptr [rsp + 4616], rax
                        mov              rax, qword ptr [rsp + 4640]
                        mov              qword ptr [rsp + 4592], rax
                        mov              rax, qword ptr [rsp + 4648]
                        mov              qword ptr [rsp + 4600], rax
                        mov              rax, qword ptr [rsp + 4624]
                        mov              qword ptr [rsp + 4576], rax
                        mov              rax, qword ptr [rsp + 4632]
                        mov              qword ptr [rsp + 4584], rax
                        .section         .rodata
.Lrkfn288:              .string          "$read_term_from_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn288]
                        lea              rsi, [rsp + 4576]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4560], rax
                        mov              qword ptr [rsp + 4568], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n59_lit_string_α
n58_call_builtin_prolog_β:
                        mov              r11, 59;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              r11, 60
                        mov              qword ptr [rsp + 4512], 2            # result
                        mov              dword ptr [rsp + 4516], 1
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rsp + 4520], rax;         jmp   n60_var_ref_α
.Lx289_0:               .quad            .Lx289_0_s
.Lx289_0_s:             .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:          mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6480]
                        mov              qword ptr [rsp + 4400], rax
                        mov              qword ptr [rsp + 4408], rdx;         jmp   n61_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:          mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6464]
                        mov              qword ptr [rsp + 4416], rax
                        mov              qword ptr [rsp + 4424], rdx;         jmp   n62_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_prolog_α:
                        mov              r11, 63
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 4480], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 4488], rax
                        mov              rax, qword ptr [rsp + 4400]
                        mov              qword ptr [rsp + 4464], rax
                        mov              rax, qword ptr [rsp + 4408]
                        mov              qword ptr [rsp + 4472], rax
                        mov              rax, qword ptr [rsp + 4512]
                        mov              qword ptr [rsp + 4448], rax
                        mov              rax, qword ptr [rsp + 4520]
                        mov              qword ptr [rsp + 4456], rax
                        lea              rdi, [rsp + 4448]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4432], rax
                        mov              qword ptr [rsp + 4440], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n63_lit_integer_α
n62_call_builtin_prolog_β:
                        mov              r11, 63;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      mov              r11, 64
                        mov              qword ptr [rsp + 4528], 3            # result
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rsp + 4536], rax;         jmp   n64_var_ref_α
.Lx295_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6496]
                        mov              qword ptr [rsp + 4544], rax
                        mov              qword ptr [rsp + 4552], rdx;         jmp   n65_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_prolog_α:
                        mov              r11, 66
                        mov              rax, qword ptr [rsp + 4544]
                        mov              qword ptr [rsp + 4384], rax
                        mov              rax, qword ptr [rsp + 4552]
                        mov              qword ptr [rsp + 4392], rax
                        mov              rax, qword ptr [rsp + 4528]
                        mov              qword ptr [rsp + 4368], rax
                        mov              rax, qword ptr [rsp + 4536]
                        mov              qword ptr [rsp + 4376], rax
                        mov              rax, qword ptr [rsp + 4432]
                        mov              qword ptr [rsp + 4352], rax
                        mov              rax, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 4360], rax
                        .section         .rodata
.Lrkfn299:              .string          "$numbervars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn299]
                        lea              rsi, [rsp + 4352]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4336], rax
                        mov              qword ptr [rsp + 4344], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n66_var_ref_α
n65_call_builtin_prolog_β:
                        mov              r11, 66;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:          mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6464]
                        mov              qword ptr [rsp + 4320], rax
                        mov              qword ptr [rsp + 4328], rdx;         jmp   n67_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_prolog_α:
                        mov              r11, 68
                        mov              rax, qword ptr [rsp + 4320]
                        mov              qword ptr [rsp + 4304], rax
                        mov              rax, qword ptr [rsp + 4328]
                        mov              qword ptr [rsp + 4312], rax
                        .section         .rodata
.Lrkfn303:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn303]
                        lea              rsi, [rsp + 4304]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4288], rax
                        mov              qword ptr [rsp + 4296], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n68_lit_string_α
n67_call_builtin_prolog_β:
                        mov              r11, 68;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       mov              r11, 69
                        mov              qword ptr [rsp + 4272], 2            # result
                        mov              dword ptr [rsp + 4276], 0
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rsp + 4280], rax;         jmp   n69_call_builtin_prolog_α
.Lx304_0:               .quad            .Lx304_0_s
.Lx304_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_prolog_α:
                        mov              r11, 70
                        mov              rax, qword ptr [rsp + 4272]
                        mov              qword ptr [rsp + 4256], rax
                        mov              rax, qword ptr [rsp + 4280]
                        mov              qword ptr [rsp + 4264], rax
                        .section         .rodata
.Lrkfn306:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn306]
                        lea              rsi, [rsp + 4256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4240], rax
                        mov              qword ptr [rsp + 4248], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n70_lit_string_α
n69_call_builtin_prolog_β:
                        mov              r11, 70;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       mov              r11, 71
                        mov              qword ptr [rsp + 3616], 2            # result
                        mov              dword ptr [rsp + 3620], 16
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rsp + 3624], rax;         jmp   n71_var_ref_α
.Lx307_0:               .quad            .Lx307_0_s
.Lx307_0_s:             .string          "quux(A,B,A,C,B)."
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:          mov              r11, 72
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6432]
                        mov              qword ptr [rsp + 3632], rax
                        mov              qword ptr [rsp + 3640], rdx;         jmp   n72_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:       mov              r11, 73
                        mov              qword ptr [rsp + 4224], 2            # result
                        mov              dword ptr [rsp + 4228], 1
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 4232], rax;         jmp   n73_lit_string_α
.Lx310_0:               .quad            .Lx310_0_s
.Lx310_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:       mov              r11, 74
                        mov              qword ptr [rsp + 4128], 2            # result
                        mov              dword ptr [rsp + 4132], 9
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rsp + 4136], rax;         jmp   n74_var_ref_α
.Lx311_0:               .quad            .Lx311_0_s
.Lx311_0_s:             .string          "variables"
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:          mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6416]
                        mov              qword ptr [rsp + 4048], rax
                        mov              qword ptr [rsp + 4056], rdx;         jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_prolog_α:
                        mov              r11, 76
                        mov              rax, qword ptr [rsp + 4048]
                        mov              qword ptr [rsp + 4096], rax
                        mov              rax, qword ptr [rsp + 4056]
                        mov              qword ptr [rsp + 4104], rax
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 4080], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 4088], rax
                        lea              rdi, [rsp + 4080]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n76_lit_string_α
n75_call_builtin_prolog_β:
                        mov              r11, 76;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       mov              r11, 77
                        mov              qword ptr [rsp + 4032], 2            # result
                        mov              dword ptr [rsp + 4036], 1
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rsp + 4040], rax;         jmp   n77_lit_string_α
.Lx315_0:               .quad            .Lx315_0_s
.Lx315_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       mov              r11, 78
                        mov              qword ptr [rsp + 3936], 2            # result
                        mov              dword ptr [rsp + 3940], 14
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rsp + 3944], rax;         jmp   n78_var_ref_α
.Lx316_0:               .quad            .Lx316_0_s
.Lx316_0_s:             .string          "variable_names"
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6400]
                        mov              qword ptr [rsp + 3856], rax
                        mov              qword ptr [rsp + 3864], rdx;         jmp   n79_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_prolog_α:
                        mov              r11, 80
                        mov              rax, qword ptr [rsp + 3856]
                        mov              qword ptr [rsp + 3904], rax
                        mov              rax, qword ptr [rsp + 3864]
                        mov              qword ptr [rsp + 3912], rax
                        mov              rax, qword ptr [rsp + 3936]
                        mov              qword ptr [rsp + 3888], rax
                        mov              rax, qword ptr [rsp + 3944]
                        mov              qword ptr [rsp + 3896], rax
                        lea              rdi, [rsp + 3888]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3872], rax
                        mov              qword ptr [rsp + 3880], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n80_lit_string_α
n79_call_builtin_prolog_β:
                        mov              r11, 80;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:       mov              r11, 81
                        mov              qword ptr [rsp + 3840], 2            # result
                        mov              dword ptr [rsp + 3844], 1
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rsp + 3848], rax;         jmp   n81_lit_string_α
.Lx320_0:               .quad            .Lx320_0_s
.Lx320_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       mov              r11, 82
                        mov              qword ptr [rsp + 3744], 2            # result
                        mov              dword ptr [rsp + 3748], 10
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 3752], rax;         jmp   n82_var_ref_α
.Lx321_0:               .quad            .Lx321_0_s
.Lx321_0_s:             .string          "singletons"
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6384]
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx;         jmp   n83_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_prolog_α:
                        mov              r11, 84
                        mov              rax, qword ptr [rsp + 3664]
                        mov              qword ptr [rsp + 3712], rax
                        mov              rax, qword ptr [rsp + 3672]
                        mov              qword ptr [rsp + 3720], rax
                        mov              rax, qword ptr [rsp + 3744]
                        mov              qword ptr [rsp + 3696], rax
                        mov              rax, qword ptr [rsp + 3752]
                        mov              qword ptr [rsp + 3704], rax
                        lea              rdi, [rsp + 3696]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n84_lit_string_α
n83_call_builtin_prolog_β:
                        mov              r11, 84;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       mov              r11, 85
                        mov              qword ptr [rsp + 3648], 2            # result
                        mov              dword ptr [rsp + 3652], 2
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rsp + 3656], rax;         jmp   n85_call_builtin_prolog_α
.Lx325_0:               .quad            .Lx325_0_s
.Lx325_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_prolog_α:
                        mov              r11, 86
                        mov              rax, qword ptr [rsp + 3648]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 3656]
                        mov              qword ptr [rsp + 3816], rax
                        mov              rax, qword ptr [rsp + 3680]
                        mov              qword ptr [rsp + 3792], rax
                        mov              rax, qword ptr [rsp + 3688]
                        mov              qword ptr [rsp + 3800], rax
                        mov              rax, qword ptr [rsp + 3840]
                        mov              qword ptr [rsp + 3776], rax
                        mov              rax, qword ptr [rsp + 3848]
                        mov              qword ptr [rsp + 3784], rax
                        lea              rdi, [rsp + 3776]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3760], rax
                        mov              qword ptr [rsp + 3768], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n86_call_builtin_prolog_α
n85_call_builtin_prolog_β:
                        mov              r11, 86;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_prolog_α:
                        mov              r11, 87
                        mov              rax, qword ptr [rsp + 3760]
                        mov              qword ptr [rsp + 4000], rax
                        mov              rax, qword ptr [rsp + 3768]
                        mov              qword ptr [rsp + 4008], rax
                        mov              rax, qword ptr [rsp + 3872]
                        mov              qword ptr [rsp + 3984], rax
                        mov              rax, qword ptr [rsp + 3880]
                        mov              qword ptr [rsp + 3992], rax
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 3968], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 3976], rax
                        lea              rdi, [rsp + 3968]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3952], rax
                        mov              qword ptr [rsp + 3960], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n87_call_builtin_prolog_α
n86_call_builtin_prolog_β:
                        mov              r11, 87;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_prolog_α:
                        mov              r11, 88
                        mov              rax, qword ptr [rsp + 3952]
                        mov              qword ptr [rsp + 4192], rax
                        mov              rax, qword ptr [rsp + 3960]
                        mov              qword ptr [rsp + 4200], rax
                        mov              rax, qword ptr [rsp + 4064]
                        mov              qword ptr [rsp + 4176], rax
                        mov              rax, qword ptr [rsp + 4072]
                        mov              qword ptr [rsp + 4184], rax
                        mov              rax, qword ptr [rsp + 4224]
                        mov              qword ptr [rsp + 4160], rax
                        mov              rax, qword ptr [rsp + 4232]
                        mov              qword ptr [rsp + 4168], rax
                        lea              rdi, [rsp + 4160]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4144], rax
                        mov              qword ptr [rsp + 4152], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n88_call_builtin_prolog_α
n87_call_builtin_prolog_β:
                        mov              r11, 88;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_prolog_α:
                        mov              r11, 89
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 3600], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 3608], rax
                        mov              rax, qword ptr [rsp + 3632]
                        mov              qword ptr [rsp + 3584], rax
                        mov              rax, qword ptr [rsp + 3640]
                        mov              qword ptr [rsp + 3592], rax
                        mov              rax, qword ptr [rsp + 3616]
                        mov              qword ptr [rsp + 3568], rax
                        mov              rax, qword ptr [rsp + 3624]
                        mov              qword ptr [rsp + 3576], rax
                        .section         .rodata
.Lrkfn330:              .string          "$read_term_from_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn330]
                        lea              rsi, [rsp + 3568]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3552], rax
                        mov              qword ptr [rsp + 3560], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n89_lit_string_α
n88_call_builtin_prolog_β:
                        mov              r11, 89;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:       mov              r11, 90
                        mov              qword ptr [rsp + 3504], 2            # result
                        mov              dword ptr [rsp + 3508], 1
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n90_var_ref_α
.Lx331_0:               .quad            .Lx331_0_s
.Lx331_0_s:             .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6432]
                        mov              qword ptr [rsp + 3328], rax
                        mov              qword ptr [rsp + 3336], rdx;         jmp   n91_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6416]
                        mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx;         jmp   n92_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6400]
                        mov              qword ptr [rsp + 3360], rax
                        mov              qword ptr [rsp + 3368], rdx;         jmp   n93_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:          mov              r11, 94
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6384]
                        mov              qword ptr [rsp + 3376], rax
                        mov              qword ptr [rsp + 3384], rdx;         jmp   n94_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_prolog_α:
                        mov              r11, 95
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3472], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3480], rax
                        mov              rax, qword ptr [rsp + 3360]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 3368]
                        mov              qword ptr [rsp + 3464], rax
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 3440], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 3448], rax
                        mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 3424], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 3432], rax
                        mov              rax, qword ptr [rsp + 3504]
                        mov              qword ptr [rsp + 3408], rax
                        mov              rax, qword ptr [rsp + 3512]
                        mov              qword ptr [rsp + 3416], rax
                        lea              rdi, [rsp + 3408]
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n95_lit_integer_α
n94_call_builtin_prolog_β:
                        mov              r11, 95;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:      mov              r11, 96
                        mov              qword ptr [rsp + 3520], 3            # result
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 3528], rax;         jmp   n96_var_ref_α
.Lx341_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6448]
                        mov              qword ptr [rsp + 3536], rax
                        mov              qword ptr [rsp + 3544], rdx;         jmp   n97_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_prolog_α:
                        mov              r11, 98
                        mov              rax, qword ptr [rsp + 3536]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 3544]
                        mov              qword ptr [rsp + 3320], rax
                        mov              rax, qword ptr [rsp + 3520]
                        mov              qword ptr [rsp + 3296], rax
                        mov              rax, qword ptr [rsp + 3528]
                        mov              qword ptr [rsp + 3304], rax
                        mov              rax, qword ptr [rsp + 3392]
                        mov              qword ptr [rsp + 3280], rax
                        mov              rax, qword ptr [rsp + 3400]
                        mov              qword ptr [rsp + 3288], rax
                        .section         .rodata
.Lrkfn345:              .string          "$numbervars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn345]
                        lea              rsi, [rsp + 3280]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3264], rax
                        mov              qword ptr [rsp + 3272], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n98_var_ref_α
n97_call_builtin_prolog_β:
                        mov              r11, 98;                             jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:          mov              r11, 99
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6432]
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx;         jmp   n99_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_prolog_α:
                        mov              r11, 100
                        mov              rax, qword ptr [rsp + 3248]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 3256]
                        mov              qword ptr [rsp + 3240], rax
                        .section         .rodata
.Lrkfn349:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn349]
                        lea              rsi, [rsp + 3232]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n100_lit_string_α
n99_call_builtin_prolog_β:
                        mov              r11, 100;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:      mov              r11, 101
                        mov              qword ptr [rsp + 3200], 2            # result
                        mov              dword ptr [rsp + 3204], 0
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rsp + 3208], rax;         jmp   n101_call_builtin_prolog_α
.Lx350_0:               .quad            .Lx350_0_s
.Lx350_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_prolog_α:
                        mov              r11, 102
                        mov              rax, qword ptr [rsp + 3200]
                        mov              qword ptr [rsp + 3184], rax
                        mov              rax, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 3192], rax
                        .section         .rodata
.Lrkfn352:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn352]
                        lea              rsi, [rsp + 3184]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n102_var_ref_α
n101_call_builtin_prolog_β:
                        mov              r11, 102;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6416]
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx;         jmp   n103_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n103_call_builtin_prolog_α:
                        mov              r11, 104
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 3144], rax
                        .section         .rodata
.Lrkfn356:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn356]
                        lea              rsi, [rsp + 3136]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n104_lit_string_α
n103_call_builtin_prolog_β:
                        mov              r11, 104;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      mov              r11, 105
                        mov              qword ptr [rsp + 3104], 2            # result
                        mov              dword ptr [rsp + 3108], 0
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rsp + 3112], rax;         jmp   n105_call_builtin_prolog_α
.Lx357_0:               .quad            .Lx357_0_s
.Lx357_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_prolog_α:
                        mov              r11, 106
                        mov              rax, qword ptr [rsp + 3104]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 3096], rax
                        .section         .rodata
.Lrkfn359:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn359]
                        lea              rsi, [rsp + 3088]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n106_var_ref_α
n105_call_builtin_prolog_β:
                        mov              r11, 106;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6400]
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx;         jmp   n107_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_prolog_α:
                        mov              r11, 108
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3048], rax
                        .section         .rodata
.Lrkfn363:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn363]
                        lea              rsi, [rsp + 3040]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3024], rax
                        mov              qword ptr [rsp + 3032], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n108_lit_string_α
n107_call_builtin_prolog_β:
                        mov              r11, 108;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:      mov              r11, 109
                        mov              qword ptr [rsp + 3008], 2            # result
                        mov              dword ptr [rsp + 3012], 0
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rsp + 3016], rax;         jmp   n109_call_builtin_prolog_α
.Lx364_0:               .quad            .Lx364_0_s
.Lx364_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_prolog_α:
                        mov              r11, 110
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 2992], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 3000], rax
                        .section         .rodata
.Lrkfn366:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn366]
                        lea              rsi, [rsp + 2992]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n110_var_ref_α
n109_call_builtin_prolog_β:
                        mov              r11, 110;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6384]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_prolog_α:
                        mov              r11, 112
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2952], rax
                        .section         .rodata
.Lrkfn370:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn370]
                        lea              rsi, [rsp + 2944]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n112_lit_string_α
n111_call_builtin_prolog_β:
                        mov              r11, 112;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:      mov              r11, 113
                        mov              qword ptr [rsp + 2912], 2            # result
                        mov              dword ptr [rsp + 2916], 0
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rsp + 2920], rax;         jmp   n113_call_builtin_prolog_α
.Lx371_0:               .quad            .Lx371_0_s
.Lx371_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_prolog_α:
                        mov              r11, 114
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2896], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2904], rax
                        .section         .rodata
.Lrkfn373:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn373]
                        lea              rsi, [rsp + 2896]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n114_lit_string_α
n113_call_builtin_prolog_β:
                        mov              r11, 114;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:      mov              r11, 115
                        mov              qword ptr [rsp + 2640], 2            # result
                        mov              dword ptr [rsp + 2644], 1
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n115_lit_string_α
.Lx374_0:               .quad            .Lx374_0_s
.Lx374_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:      mov              r11, 116
                        mov              qword ptr [rsp + 2544], 2            # result
                        mov              dword ptr [rsp + 2548], 1
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n116_lit_string_α
.Lx375_0:               .quad            .Lx375_0_s
.Lx375_0_s:             .string          "g"
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:      mov              r11, 117
                        mov              qword ptr [rsp + 2528], 2            # result
                        mov              dword ptr [rsp + 2532], 1
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n117_lit_string_α
.Lx376_0:               .quad            .Lx376_0_s
.Lx376_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rsp + 2432], 2            # result
                        mov              dword ptr [rsp + 2436], 1
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n118_lit_string_α
.Lx377_0:               .quad            .Lx377_0_s
.Lx377_0_s:             .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:      mov              r11, 119
                        mov              qword ptr [rsp + 2416], 2            # result
                        mov              dword ptr [rsp + 2420], 1
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n119_lit_string_α
.Lx378_0:               .quad            .Lx378_0_s
.Lx378_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:      mov              r11, 120
                        mov              qword ptr [rsp + 2320], 2            # result
                        mov              dword ptr [rsp + 2324], 1
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n120_lit_string_α
.Lx379_0:               .quad            .Lx379_0_s
.Lx379_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:      mov              r11, 121
                        mov              qword ptr [rsp + 2304], 2            # result
                        mov              dword ptr [rsp + 2308], 1
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n121_lit_string_α
.Lx380_0:               .quad            .Lx380_0_s
.Lx380_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:      mov              r11, 122
                        mov              qword ptr [rsp + 2208], 2            # result
                        mov              dword ptr [rsp + 2212], 1
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n122_lit_string_α
.Lx381_0:               .quad            .Lx381_0_s
.Lx381_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:      mov              r11, 123
                        mov              qword ptr [rsp + 2192], 2            # result
                        mov              dword ptr [rsp + 2196], 1
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n123_lit_string_α
.Lx382_0:               .quad            .Lx382_0_s
.Lx382_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:      mov              r11, 124
                        mov              qword ptr [rsp + 2096], 2            # result
                        mov              dword ptr [rsp + 2100], 1
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n124_lit_string_α
.Lx383_0:               .quad            .Lx383_0_s
.Lx383_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:      mov              r11, 125
                        mov              qword ptr [rsp + 2080], 2            # result
                        mov              dword ptr [rsp + 2084], 1
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n125_lit_string_α
.Lx384_0:               .quad            .Lx384_0_s
.Lx384_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:      mov              r11, 126
                        mov              qword ptr [rsp + 1984], 2            # result
                        mov              dword ptr [rsp + 1988], 1
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n126_lit_string_α
.Lx385_0:               .quad            .Lx385_0_s
.Lx385_0_s:             .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:      mov              r11, 127
                        mov              qword ptr [rsp + 1968], 2            # result
                        mov              dword ptr [rsp + 1972], 1
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n127_lit_string_α
.Lx386_0:               .quad            .Lx386_0_s
.Lx386_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rsp + 1872], 2            # result
                        mov              dword ptr [rsp + 1876], 1
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n128_lit_string_α
.Lx387_0:               .quad            .Lx387_0_s
.Lx387_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:      mov              r11, 129
                        mov              qword ptr [rsp + 1856], 2            # result
                        mov              dword ptr [rsp + 1860], 2
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n129_call_builtin_prolog_α
.Lx388_0:               .quad            .Lx388_0_s
.Lx388_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n129_call_builtin_prolog_α:
                        mov              r11, 130
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1944], rax
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1912], rax
                        lea              rdi, [rsp + 1904]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n130_call_builtin_prolog_α
n129_call_builtin_prolog_β:
                        mov              r11, 130;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_prolog_α:
                        mov              r11, 131
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 2056], rax
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 2040], rax
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2024], rax
                        lea              rdi, [rsp + 2016]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n131_call_builtin_prolog_α
n130_call_builtin_prolog_β:
                        mov              r11, 131;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n131_call_builtin_prolog_α:
                        mov              r11, 132
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 2168], rax
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2152], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2136], rax
                        lea              rdi, [rsp + 2128]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n132_call_builtin_prolog_α
n131_call_builtin_prolog_β:
                        mov              r11, 132;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_prolog_α:
                        mov              r11, 133
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2280], rax
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2264], rax
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2248], rax
                        lea              rdi, [rsp + 2240]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n133_call_builtin_prolog_α
n132_call_builtin_prolog_β:
                        mov              r11, 133;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n133_call_builtin_prolog_α:
                        mov              r11, 134
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2392], rax
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2376], rax
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2360], rax
                        lea              rdi, [rsp + 2352]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n134_call_builtin_prolog_α
n133_call_builtin_prolog_β:
                        mov              r11, 134;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n134_call_builtin_prolog_α:
                        mov              r11, 135
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2504], rax
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2488], rax
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2472], rax
                        lea              rdi, [rsp + 2464]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n135_call_builtin_prolog_α
n134_call_builtin_prolog_β:
                        mov              r11, 135;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n135_call_builtin_prolog_α:
                        mov              r11, 136
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2616], rax
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2600], rax
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2584], rax
                        lea              rdi, [rsp + 2576]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n136_var_ref_α
n135_call_builtin_prolog_β:
                        mov              r11, 136;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:         mov              r11, 137
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6368]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx;         jmp   n137_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:      mov              r11, 138
                        mov              qword ptr [rsp + 2864], 2            # result
                        mov              dword ptr [rsp + 2868], 1
                        mov              rax, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rsp + 2872], rax;         jmp   n138_lit_string_α
.Lx398_0:               .quad            .Lx398_0_s
.Lx398_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      mov              r11, 139
                        mov              qword ptr [rsp + 2768], 2            # result
                        mov              dword ptr [rsp + 2772], 9
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n139_var_ref_α
.Lx399_0:               .quad            .Lx399_0_s
.Lx399_0_s:             .string          "variables"
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6352]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n140_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n140_call_builtin_prolog_α:
                        mov              r11, 141
                        mov              rax, qword ptr [rsp + 2688]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 2744], rax
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2728], rax
                        lea              rdi, [rsp + 2720]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n141_lit_string_α
n140_call_builtin_prolog_β:
                        mov              r11, 141;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:      mov              r11, 142
                        mov              qword ptr [rsp + 2672], 2            # result
                        mov              dword ptr [rsp + 2676], 2
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n142_call_builtin_prolog_α
.Lx403_0:               .quad            .Lx403_0_s
.Lx403_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n142_call_builtin_prolog_α:
                        mov              r11, 143
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2832], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2840], rax
                        mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2824], rax
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2808], rax
                        lea              rdi, [rsp + 2800]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n143_call_builtin_prolog_α
n142_call_builtin_prolog_β:
                        mov              r11, 143;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n143_call_builtin_prolog_α:
                        mov              r11, 144
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 1848], rax
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 1832], rax
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1816], rax
                        .section         .rodata
.Lrkfn406:              .string          "$read_term_from_chars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn406]
                        lea              rsi, [rsp + 1808]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n144_var_ref_α
n143_call_builtin_prolog_β:
                        mov              r11, 144;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6368]
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx;         jmp   n145_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n145_call_builtin_prolog_α:
                        mov              r11, 146
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1768], rax
                        .section         .rodata
.Lrkfn410:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn410]
                        lea              rsi, [rsp + 1760]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n146_lit_string_α
n145_call_builtin_prolog_β:
                        mov              r11, 146;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:      mov              r11, 147
                        mov              qword ptr [rsp + 1728], 2            # result
                        mov              dword ptr [rsp + 1732], 0
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n147_call_builtin_prolog_α
.Lx411_0:               .quad            .Lx411_0_s
.Lx411_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n147_call_builtin_prolog_α:
                        mov              r11, 148
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1720], rax
                        .section         .rodata
.Lrkfn413:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn413]
                        lea              rsi, [rsp + 1712]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n148_var_ref_α
n147_call_builtin_prolog_β:
                        mov              r11, 148;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6352]
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx;         jmp   n149_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n149_call_builtin_prolog_α:
                        mov              r11, 150
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1672], rax
                        .section         .rodata
.Lrkfn417:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn417]
                        lea              rsi, [rsp + 1664]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n150_lit_string_α
n149_call_builtin_prolog_β:
                        mov              r11, 150;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:      mov              r11, 151
                        mov              qword ptr [rsp + 1632], 2            # result
                        mov              dword ptr [rsp + 1636], 0
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n151_call_builtin_prolog_α
.Lx418_0:               .quad            .Lx418_0_s
.Lx418_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n151_call_builtin_prolog_α:
                        mov              r11, 152
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1624], rax
                        .section         .rodata
.Lrkfn420:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn420]
                        lea              rsi, [rsp + 1616]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n152_lit_string_α
n151_call_builtin_prolog_β:
                        mov              r11, 152;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:      mov              r11, 153
                        mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], 1
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n153_lit_integer_α
.Lx421_0:               .quad            .Lx421_0_s
.Lx421_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     mov              r11, 154
                        mov              qword ptr [rsp + 1264], 3            # result
                        mov              rax, qword ptr [rip + .Lx422_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n154_lit_string_α
.Lx422_0:               .quad            104
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:      mov              r11, 155
                        mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 1
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n155_lit_integer_α
.Lx423_0:               .quad            .Lx423_0_s
.Lx423_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:     mov              r11, 156
                        mov              qword ptr [rsp + 1152], 3            # result
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n156_lit_string_α
.Lx424_0:               .quad            105
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:      mov              r11, 157
                        mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n157_lit_integer_α
.Lx425_0:               .quad            .Lx425_0_s
.Lx425_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:     mov              r11, 158
                        mov              qword ptr [rsp + 1040], 3            # result
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n158_lit_string_α
.Lx426_0:               .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:      mov              r11, 159
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 1
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n159_lit_integer_α
.Lx427_0:               .quad            .Lx427_0_s
.Lx427_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:     mov              r11, 160
                        mov              qword ptr [rsp + 928], 3             # result
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n160_lit_string_α
.Lx428_0:               .quad            88
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:      mov              r11, 161
                        mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 1
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n161_lit_integer_α
.Lx429_0:               .quad            .Lx429_0_s
.Lx429_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:     mov              r11, 162
                        mov              qword ptr [rsp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n162_lit_string_α
.Lx430_0:               .quad            44
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:      mov              r11, 163
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 1
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n163_lit_integer_α
.Lx431_0:               .quad            .Lx431_0_s
.Lx431_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_integer_α:     mov              r11, 164
                        mov              qword ptr [rsp + 704], 3             # result
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n164_lit_string_α
.Lx432_0:               .quad            89
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:      mov              r11, 165
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 1
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n165_lit_integer_α
.Lx433_0:               .quad            .Lx433_0_s
.Lx433_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:     mov              r11, 166
                        mov              qword ptr [rsp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n166_lit_string_α
.Lx434_0:               .quad            41
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:      mov              r11, 167
                        mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 1
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n167_lit_integer_α
.Lx435_0:               .quad            .Lx435_0_s
.Lx435_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:     mov              r11, 168
                        mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n168_lit_string_α
.Lx436_0:               .quad            46
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:      mov              r11, 169
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 2
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n169_call_builtin_prolog_α
.Lx437_0:               .quad            .Lx437_0_s
.Lx437_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n169_call_builtin_prolog_α:
                        mov              r11, 170
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n170_call_builtin_prolog_α
n169_call_builtin_prolog_β:
                        mov              r11, 170;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n170_call_builtin_prolog_α:
                        mov              r11, 171
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 632], rax
                        lea              rdi, [rsp + 624]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n171_call_builtin_prolog_α
n170_call_builtin_prolog_β:
                        mov              r11, 171;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n171_call_builtin_prolog_α:
                        mov              r11, 172
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 736]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n172_call_builtin_prolog_α
n171_call_builtin_prolog_β:
                        mov              r11, 172;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n172_call_builtin_prolog_α:
                        mov              r11, 173
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 888], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n173_call_builtin_prolog_α
n172_call_builtin_prolog_β:
                        mov              r11, 173;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n173_call_builtin_prolog_α:
                        mov              r11, 174
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 968], rax
                        lea              rdi, [rsp + 960]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n174_call_builtin_prolog_α
n173_call_builtin_prolog_β:
                        mov              r11, 174;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n174_call_builtin_prolog_α:
                        mov              r11, 175
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1080], rax
                        lea              rdi, [rsp + 1072]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n175_call_builtin_prolog_α
n174_call_builtin_prolog_β:
                        mov              r11, 175;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n175_call_builtin_prolog_α:
                        mov              r11, 176
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1192], rax
                        lea              rdi, [rsp + 1184]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n176_call_builtin_prolog_α
n175_call_builtin_prolog_β:
                        mov              r11, 176;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n176_call_builtin_prolog_α:
                        mov              r11, 177
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1336], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1320], rax
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1304], rax
                        lea              rdi, [rsp + 1296]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n177_var_ref_α
n176_call_builtin_prolog_β:
                        mov              r11, 177;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:         mov              r11, 178
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6336]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n178_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:      mov              r11, 179
                        mov              qword ptr [rsp + 1584], 2            # result
                        mov              dword ptr [rsp + 1588], 1
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n179_lit_string_α
.Lx448_0:               .quad            .Lx448_0_s
.Lx448_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:      mov              r11, 180
                        mov              qword ptr [rsp + 1488], 2            # result
                        mov              dword ptr [rsp + 1492], 14
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n180_var_ref_α
.Lx449_0:               .quad            .Lx449_0_s
.Lx449_0_s:             .string          "variable_names"
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:         mov              r11, 181
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6304]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n181_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n181_call_builtin_prolog_α:
                        mov              r11, 182
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1448], rax
                        lea              rdi, [rsp + 1440]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n182_lit_string_α
n181_call_builtin_prolog_β:
                        mov              r11, 182;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:      mov              r11, 183
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 2
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n183_call_builtin_prolog_α
.Lx453_0:               .quad            .Lx453_0_s
.Lx453_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n183_call_builtin_prolog_α:
                        mov              r11, 184
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1560], rax
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1544], rax
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1528], rax
                        lea              rdi, [rsp + 1520]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n184_call_builtin_prolog_α
n183_call_builtin_prolog_β:
                        mov              r11, 184;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n184_call_builtin_prolog_α:
                        mov              r11, 185
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn456:              .string          "$read_term_from_codes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn456]
                        lea              rsi, [rsp + 416]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n185_var_ref_α
n184_call_builtin_prolog_β:
                        mov              r11, 185;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_ref_α:         mov              r11, 186
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6304]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n186_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:     mov              r11, 187
                        mov              qword ptr [rsp + 368], 3             # result
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n187_var_ref_α
.Lx459_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n187_var_ref_α:         mov              r11, 188
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6320]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n188_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_prolog_α:
                        mov              r11, 189
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn463:              .string          "$numbervars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn463]
                        lea              rsi, [rsp + 304]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n189_var_ref_α
n188_call_builtin_prolog_β:
                        mov              r11, 189;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n189_var_ref_α:         mov              r11, 190
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6304]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n190_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n190_call_builtin_prolog_α:
                        mov              r11, 191
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn467:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn467]
                        lea              rsi, [rsp + 256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n191_lit_string_α
n190_call_builtin_prolog_β:
                        mov              r11, 191;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:      mov              r11, 192
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 0
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n192_call_builtin_prolog_α
.Lx468_0:               .quad            .Lx468_0_s
.Lx468_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n192_call_builtin_prolog_α:
                        mov              r11, 193
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn470:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn470]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n193_lit_string_α
n192_call_builtin_prolog_β:
                        mov              r11, 193;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:      mov              r11, 194
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 4
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n194_call_builtin_prolog_α
.Lx471_0:               .quad            .Lx471_0_s
.Lx471_0_s:             .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n194_call_builtin_prolog_α:
                        mov              r11, 195
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn473:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn473]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n195_lit_string_α
n194_call_builtin_prolog_β:
                        mov              r11, 195;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:      mov              r11, 196
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n196_call_builtin_prolog_α
.Lx474_0:               .quad            .Lx474_0_s
.Lx474_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n196_call_builtin_prolog_α:
                        mov              r11, 197
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn476:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn476]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n197_move_label_α
n196_call_builtin_prolog_β:
                        mov              r11, 197;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n197_move_label_α:      mov              r11, 198
                        lea              rax, [rip + n199_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n198_disjunction_α:     mov              r11, 199
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n198_disjunction_β:     mov              r11, 199;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n199_call_builtin_prolog_α:
                        mov              r11, 200
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
n199_call_builtin_prolog_β:
                        mov              r11, 200;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n198_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 6648]
                        add              rsp, 6672;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 6656]
                        add              rsp, 6672;                           jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
