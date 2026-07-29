                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
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
                        sub              rsp, 6632
                        mov              rdi, rsp
                        mov              ecx, 6632
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 6624], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx200_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx200_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx200_101
.Lx200_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx200_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1_lit_string_α
n0_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 6256], 1
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rbp + 6264], rax
                                                                                        jmp   n2_var_ref_α
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "foo(x,y,z)."
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6608]
                        mov              qword ptr [rbp + 6272], rax
                        mov              qword ptr [rbp + 6280], rdx
                                                                                        jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 6288], 1
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 6296], rax
                                                                                        jmp   n4_op11_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n4_op11_α:
                        mov              rax, qword ptr [rbp + 6256]
                        mov              qword ptr [rbp + 6208], rax
                        mov              rax, qword ptr [rbp + 6264]
                        mov              qword ptr [rbp + 6216], rax
                        mov              rax, qword ptr [rbp + 6272]
                        mov              qword ptr [rbp + 6224], rax
                        mov              rax, qword ptr [rbp + 6280]
                        mov              qword ptr [rbp + 6232], rax
                        mov              rax, qword ptr [rbp + 6288]
                        mov              qword ptr [rbp + 6240], rax
                        mov              rax, qword ptr [rbp + 6296]
                        mov              qword ptr [rbp + 6248], rax
                        .section         .rodata
.Lrkfn206:              .string          "$read_term_from_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn206]
                        lea              rsi, [rbp + 6208]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6192], rax
                        mov              qword ptr [rbp + 6200], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n5_var_ref_α
n4_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6608]
                        mov              qword ptr [rbp + 6176], rax
                        mov              qword ptr [rbp + 6184], rdx
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n6_op11_α:
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
n6_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_op11_α:
                        mov              rax, qword ptr [rbp + 6176]
                        mov              qword ptr [rbp + 6160], rax
                        mov              rax, qword ptr [rbp + 6184]
                        mov              qword ptr [rbp + 6168], rax
                        .section         .rodata
.Lrkfn211:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn211]
                        lea              rsi, [rbp + 6160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6144], rax
                        mov              qword ptr [rbp + 6152], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n8_lit_string_α
n7_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 6128], 1
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rbp + 6136], rax
                                                                                        jmp   n9_op11_α
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
                        mov              rax, qword ptr [rbp + 6128]
                        mov              qword ptr [rbp + 6112], rax
                        mov              rax, qword ptr [rbp + 6136]
                        mov              qword ptr [rbp + 6120], rax
                        .section         .rodata
.Lrkfn214:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn214]
                        lea              rsi, [rbp + 6112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6096], rax
                        mov              qword ptr [rbp + 6104], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n10_lit_string_α
n9_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 5856], 1
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rbp + 5864], rax
                                                                                        jmp   n11_var_ref_α
.Lx215_0:
                        .quad            .Lx215_0_s
.Lx215_0_s:
                        .string          "bar(A,B,A)."
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6576]
                        mov              qword ptr [rbp + 5872], rax
                        mov              qword ptr [rbp + 5880], rdx
                                                                                        jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 6080], 1
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rbp + 6088], rax
                                                                                        jmp   n13_lit_string_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 5984], 1
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rbp + 5992], rax
                                                                                        jmp   n14_var_ref_α
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "variables"
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6560]
                        mov              qword ptr [rbp + 5904], rax
                        mov              qword ptr [rbp + 5912], rdx
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
                        mov              rax, qword ptr [rbp + 5984]
                        mov              qword ptr [rbp + 5936], rax
                        mov              rax, qword ptr [rbp + 5992]
                        mov              qword ptr [rbp + 5944], rax
                        mov              rax, qword ptr [rbp + 5904]
                        mov              qword ptr [rbp + 5952], rax
                        mov              rax, qword ptr [rbp + 5912]
                        mov              qword ptr [rbp + 5960], rax
                        lea              rdi, [rbp + 5936]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5920], rax
                        mov              qword ptr [rbp + 5928], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n16_lit_string_α
n15_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 5888], 1
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rbp + 5896], rax
                                                                                        jmp   n17_op11_α
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
                        mov              rax, qword ptr [rbp + 6080]
                        mov              qword ptr [rbp + 6016], rax
                        mov              rax, qword ptr [rbp + 6088]
                        mov              qword ptr [rbp + 6024], rax
                        mov              rax, qword ptr [rbp + 5920]
                        mov              qword ptr [rbp + 6032], rax
                        mov              rax, qword ptr [rbp + 5928]
                        mov              qword ptr [rbp + 6040], rax
                        mov              rax, qword ptr [rbp + 5888]
                        mov              qword ptr [rbp + 6048], rax
                        mov              rax, qword ptr [rbp + 5896]
                        mov              qword ptr [rbp + 6056], rax
                        lea              rdi, [rbp + 6016]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 6000], rax
                        mov              qword ptr [rbp + 6008], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n18_op11_α
n17_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        mov              rax, qword ptr [rbp + 5856]
                        mov              qword ptr [rbp + 5808], rax
                        mov              rax, qword ptr [rbp + 5864]
                        mov              qword ptr [rbp + 5816], rax
                        mov              rax, qword ptr [rbp + 5872]
                        mov              qword ptr [rbp + 5824], rax
                        mov              rax, qword ptr [rbp + 5880]
                        mov              qword ptr [rbp + 5832], rax
                        mov              rax, qword ptr [rbp + 6000]
                        mov              qword ptr [rbp + 5840], rax
                        mov              rax, qword ptr [rbp + 6008]
                        mov              qword ptr [rbp + 5848], rax
                        .section         .rodata
.Lrkfn226:              .string          "$read_term_from_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn226]
                        lea              rsi, [rbp + 5808]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n19_lit_string_α
n18_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 5744], 1
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rbp + 5752], rax
                                                                                        jmp   n20_var_ref_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6576]
                        mov              qword ptr [rbp + 5632], rax
                        mov              qword ptr [rbp + 5640], rdx
                                                                                        jmp   n21_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6560]
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx
                                                                                        jmp   n22_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_op11_α:
                        mov              rax, qword ptr [rbp + 5744]
                        mov              qword ptr [rbp + 5680], rax
                        mov              rax, qword ptr [rbp + 5752]
                        mov              qword ptr [rbp + 5688], rax
                        mov              rax, qword ptr [rbp + 5632]
                        mov              qword ptr [rbp + 5696], rax
                        mov              rax, qword ptr [rbp + 5640]
                        mov              qword ptr [rbp + 5704], rax
                        mov              rax, qword ptr [rbp + 5648]
                        mov              qword ptr [rbp + 5712], rax
                        mov              rax, qword ptr [rbp + 5656]
                        mov              qword ptr [rbp + 5720], rax
                        lea              rdi, [rbp + 5680]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n23_lit_integer_α
n22_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:
                        mov              qword ptr [rbp + 5760], 6
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rbp + 5768], rax
                                                                                        jmp   n24_var_ref_α
.Lx233_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6592]
                        mov              qword ptr [rbp + 5776], rax
                        mov              qword ptr [rbp + 5784], rdx
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_op11_α:
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5584], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5592], rax
                        mov              rax, qword ptr [rbp + 5760]
                        mov              qword ptr [rbp + 5600], rax
                        mov              rax, qword ptr [rbp + 5768]
                        mov              qword ptr [rbp + 5608], rax
                        mov              rax, qword ptr [rbp + 5776]
                        mov              qword ptr [rbp + 5616], rax
                        mov              rax, qword ptr [rbp + 5784]
                        mov              qword ptr [rbp + 5624], rax
                        .section         .rodata
.Lrkfn237:              .string          "$numbervars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn237]
                        lea              rsi, [rbp + 5584]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n26_var_ref_α
n25_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6576]
                        mov              qword ptr [rbp + 5552], rax
                        mov              qword ptr [rbp + 5560], rdx
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
                        mov              rax, qword ptr [rbp + 5552]
                        mov              qword ptr [rbp + 5536], rax
                        mov              rax, qword ptr [rbp + 5560]
                        mov              qword ptr [rbp + 5544], rax
                        .section         .rodata
.Lrkfn241:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn241]
                        lea              rsi, [rbp + 5536]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5520], rax
                        mov              qword ptr [rbp + 5528], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n28_lit_string_α
n27_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 5504], 1
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rbp + 5512], rax
                                                                                        jmp   n29_op11_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
                        mov              rax, qword ptr [rbp + 5504]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 5512]
                        mov              qword ptr [rbp + 5496], rax
                        .section         .rodata
.Lrkfn244:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn244]
                        lea              rsi, [rbp + 5488]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n30_var_ref_α
n29_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6560]
                        mov              qword ptr [rbp + 5456], rax
                        mov              qword ptr [rbp + 5464], rdx
                                                                                        jmp   n31_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n31_op11_α:
                        mov              rax, qword ptr [rbp + 5456]
                        mov              qword ptr [rbp + 5440], rax
                        mov              rax, qword ptr [rbp + 5464]
                        mov              qword ptr [rbp + 5448], rax
                        .section         .rodata
.Lrkfn248:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn248]
                        lea              rsi, [rbp + 5440]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5424], rax
                        mov              qword ptr [rbp + 5432], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n32_lit_string_α
n31_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 5408], 1
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rbp + 5416], rax
                                                                                        jmp   n33_op11_α
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n33_op11_α:
                        mov              rax, qword ptr [rbp + 5408]
                        mov              qword ptr [rbp + 5392], rax
                        mov              rax, qword ptr [rbp + 5416]
                        mov              qword ptr [rbp + 5400], rax
                        .section         .rodata
.Lrkfn251:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn251]
                        lea              rsi, [rbp + 5392]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n34_lit_string_α
n33_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 5136], 1
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rbp + 5144], rax
                                                                                        jmp   n35_var_ref_α
.Lx252_0:
                        .quad            .Lx252_0_s
.Lx252_0_s:
                        .string          "bar(A,B,A)."
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6544]
                        mov              qword ptr [rbp + 5152], rax
                        mov              qword ptr [rbp + 5160], rdx
                                                                                        jmp   n36_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rbp + 5360], 1
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 5368], rax
                                                                                        jmp   n37_lit_string_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 5264], 1
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rbp + 5272], rax
                                                                                        jmp   n38_var_ref_α
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "variable_names"
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6512]
                        mov              qword ptr [rbp + 5184], rax
                        mov              qword ptr [rbp + 5192], rdx
                                                                                        jmp   n39_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_op11_α:
                        mov              rax, qword ptr [rbp + 5264]
                        mov              qword ptr [rbp + 5216], rax
                        mov              rax, qword ptr [rbp + 5272]
                        mov              qword ptr [rbp + 5224], rax
                        mov              rax, qword ptr [rbp + 5184]
                        mov              qword ptr [rbp + 5232], rax
                        mov              rax, qword ptr [rbp + 5192]
                        mov              qword ptr [rbp + 5240], rax
                        lea              rdi, [rbp + 5216]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5200], rax
                        mov              qword ptr [rbp + 5208], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n40_lit_string_α
n39_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 5168], 1
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 5176], rax
                                                                                        jmp   n41_op11_α
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n41_op11_α:
                        mov              rax, qword ptr [rbp + 5360]
                        mov              qword ptr [rbp + 5296], rax
                        mov              rax, qword ptr [rbp + 5368]
                        mov              qword ptr [rbp + 5304], rax
                        mov              rax, qword ptr [rbp + 5200]
                        mov              qword ptr [rbp + 5312], rax
                        mov              rax, qword ptr [rbp + 5208]
                        mov              qword ptr [rbp + 5320], rax
                        mov              rax, qword ptr [rbp + 5168]
                        mov              qword ptr [rbp + 5328], rax
                        mov              rax, qword ptr [rbp + 5176]
                        mov              qword ptr [rbp + 5336], rax
                        lea              rdi, [rbp + 5296]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5280], rax
                        mov              qword ptr [rbp + 5288], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n42_op11_α
n41_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n42_op11_α:
                        mov              rax, qword ptr [rbp + 5136]
                        mov              qword ptr [rbp + 5088], rax
                        mov              rax, qword ptr [rbp + 5144]
                        mov              qword ptr [rbp + 5096], rax
                        mov              rax, qword ptr [rbp + 5152]
                        mov              qword ptr [rbp + 5104], rax
                        mov              rax, qword ptr [rbp + 5160]
                        mov              qword ptr [rbp + 5112], rax
                        mov              rax, qword ptr [rbp + 5280]
                        mov              qword ptr [rbp + 5120], rax
                        mov              rax, qword ptr [rbp + 5288]
                        mov              qword ptr [rbp + 5128], rax
                        .section         .rodata
.Lrkfn263:              .string          "$read_term_from_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn263]
                        lea              rsi, [rbp + 5088]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n43_var_ref_α
n42_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6512]
                        mov              qword ptr [rbp + 5024], rax
                        mov              qword ptr [rbp + 5032], rdx
                                                                                        jmp   n44_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:
                        mov              qword ptr [rbp + 5040], 6
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rbp + 5048], rax
                                                                                        jmp   n45_var_ref_α
.Lx266_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6528]
                        mov              qword ptr [rbp + 5056], rax
                        mov              qword ptr [rbp + 5064], rdx
                                                                                        jmp   n46_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n46_op11_α:
                        mov              rax, qword ptr [rbp + 5024]
                        mov              qword ptr [rbp + 4976], rax
                        mov              rax, qword ptr [rbp + 5032]
                        mov              qword ptr [rbp + 4984], rax
                        mov              rax, qword ptr [rbp + 5040]
                        mov              qword ptr [rbp + 4992], rax
                        mov              rax, qword ptr [rbp + 5048]
                        mov              qword ptr [rbp + 5000], rax
                        mov              rax, qword ptr [rbp + 5056]
                        mov              qword ptr [rbp + 5008], rax
                        mov              rax, qword ptr [rbp + 5064]
                        mov              qword ptr [rbp + 5016], rax
                        .section         .rodata
.Lrkfn270:              .string          "$numbervars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn270]
                        lea              rsi, [rbp + 4976]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4960], rax
                        mov              qword ptr [rbp + 4968], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n47_var_ref_α
n46_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6512]
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                                                                                        jmp   n48_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n48_op11_α:
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 4928], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 4936], rax
                        .section         .rodata
.Lrkfn274:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn274]
                        lea              rsi, [rbp + 4928]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n49_lit_string_α
n48_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        mov              qword ptr [rbp + 4896], 1
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rbp + 4904], rax
                                                                                        jmp   n50_op11_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n50_op11_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 4880], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 4888], rax
                        .section         .rodata
.Lrkfn277:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn277]
                        lea              rsi, [rbp + 4880]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n51_lit_string_α
n50_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rbp + 4624], 1
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rbp + 4632], rax
                                                                                        jmp   n52_var_ref_α
.Lx278_0:
                        .quad            .Lx278_0_s
.Lx278_0_s:
                        .string          "baz(P,Q,P,R)."
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6480]
                        mov              qword ptr [rbp + 4640], rax
                        mov              qword ptr [rbp + 4648], rdx
                                                                                        jmp   n53_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 4848], 1
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 4856], rax
                                                                                        jmp   n54_lit_string_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 4752], 1
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rbp + 4760], rax
                                                                                        jmp   n55_var_ref_α
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "singletons"
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6464]
                        mov              qword ptr [rbp + 4672], rax
                        mov              qword ptr [rbp + 4680], rdx
                                                                                        jmp   n56_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
                        mov              rax, qword ptr [rbp + 4752]
                        mov              qword ptr [rbp + 4704], rax
                        mov              rax, qword ptr [rbp + 4760]
                        mov              qword ptr [rbp + 4712], rax
                        mov              rax, qword ptr [rbp + 4672]
                        mov              qword ptr [rbp + 4720], rax
                        mov              rax, qword ptr [rbp + 4680]
                        mov              qword ptr [rbp + 4728], rax
                        lea              rdi, [rbp + 4704]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4688], rax
                        mov              qword ptr [rbp + 4696], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n57_lit_string_α
n56_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 4656], 1
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rbp + 4664], rax
                                                                                        jmp   n58_op11_α
.Lx286_0:
                        .quad            .Lx286_0_s
.Lx286_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n58_op11_α:
                        mov              rax, qword ptr [rbp + 4848]
                        mov              qword ptr [rbp + 4784], rax
                        mov              rax, qword ptr [rbp + 4856]
                        mov              qword ptr [rbp + 4792], rax
                        mov              rax, qword ptr [rbp + 4688]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 4696]
                        mov              qword ptr [rbp + 4808], rax
                        mov              rax, qword ptr [rbp + 4656]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 4664]
                        mov              qword ptr [rbp + 4824], rax
                        lea              rdi, [rbp + 4784]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4768], rax
                        mov              qword ptr [rbp + 4776], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n59_op11_α
n58_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n59_op11_α:
                        mov              rax, qword ptr [rbp + 4624]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 4632]
                        mov              qword ptr [rbp + 4584], rax
                        mov              rax, qword ptr [rbp + 4640]
                        mov              qword ptr [rbp + 4592], rax
                        mov              rax, qword ptr [rbp + 4648]
                        mov              qword ptr [rbp + 4600], rax
                        mov              rax, qword ptr [rbp + 4768]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 4776]
                        mov              qword ptr [rbp + 4616], rax
                        .section         .rodata
.Lrkfn289:              .string          "$read_term_from_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn289]
                        lea              rsi, [rbp + 4576]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4560], rax
                        mov              qword ptr [rbp + 4568], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n60_lit_string_α
n59_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 4512], 1
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rbp + 4520], rax
                                                                                        jmp   n61_var_ref_α
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6480]
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx
                                                                                        jmp   n62_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6464]
                        mov              qword ptr [rbp + 4416], rax
                        mov              qword ptr [rbp + 4424], rdx
                                                                                        jmp   n63_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n63_op11_α:
                        mov              rax, qword ptr [rbp + 4512]
                        mov              qword ptr [rbp + 4448], rax
                        mov              rax, qword ptr [rbp + 4520]
                        mov              qword ptr [rbp + 4456], rax
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 4464], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 4472], rax
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 4480], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 4488], rax
                        lea              rdi, [rbp + 4448]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4432], rax
                        mov              qword ptr [rbp + 4440], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n64_lit_integer_α
n63_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:
                        mov              qword ptr [rbp + 4528], 6
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 4536], rax
                                                                                        jmp   n65_var_ref_α
.Lx296_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6496]
                        mov              qword ptr [rbp + 4544], rax
                        mov              qword ptr [rbp + 4552], rdx
                                                                                        jmp   n66_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n66_op11_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 4352], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 4360], rax
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 4368], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 4376], rax
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 4392], rax
                        .section         .rodata
.Lrkfn300:              .string          "$numbervars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn300]
                        lea              rsi, [rbp + 4352]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n67_var_ref_α
n66_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6464]
                        mov              qword ptr [rbp + 4320], rax
                        mov              qword ptr [rbp + 4328], rdx
                                                                                        jmp   n68_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n68_op11_α:
                        mov              rax, qword ptr [rbp + 4320]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4328]
                        mov              qword ptr [rbp + 4312], rax
                        .section         .rodata
.Lrkfn304:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn304]
                        lea              rsi, [rbp + 4304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n69_lit_string_α
n68_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 4272], 1
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rbp + 4280], rax
                                                                                        jmp   n70_op11_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n70_op11_α:
                        mov              rax, qword ptr [rbp + 4272]
                        mov              qword ptr [rbp + 4256], rax
                        mov              rax, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 4264], rax
                        .section         .rodata
.Lrkfn307:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn307]
                        lea              rsi, [rbp + 4256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n71_lit_string_α
n70_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        mov              qword ptr [rbp + 3616], 1
                        mov              rax, qword ptr [rip + .Lx308_0]
                        mov              qword ptr [rbp + 3624], rax
                                                                                        jmp   n72_var_ref_α
.Lx308_0:
                        .quad            .Lx308_0_s
.Lx308_0_s:
                        .string          "quux(A,B,A,C,B)."
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6432]
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx
                                                                                        jmp   n73_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        mov              qword ptr [rbp + 4224], 1
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rbp + 4232], rax
                                                                                        jmp   n74_lit_string_α
.Lx311_0:
                        .quad            .Lx311_0_s
.Lx311_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:
                        mov              qword ptr [rbp + 4128], 1
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   n75_var_ref_α
.Lx312_0:
                        .quad            .Lx312_0_s
.Lx312_0_s:
                        .string          "variables"
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6416]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                                                                                        jmp   n76_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n76_op11_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4080], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4088], rax
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 4104], rax
                        lea              rdi, [rbp + 4080]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n77_lit_string_α
n76_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 4032], 1
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rbp + 4040], rax
                                                                                        jmp   n78_lit_string_α
.Lx316_0:
                        .quad            .Lx316_0_s
.Lx316_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rbp + 3936], 1
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rbp + 3944], rax
                                                                                        jmp   n79_var_ref_α
.Lx317_0:
                        .quad            .Lx317_0_s
.Lx317_0_s:
                        .string          "variable_names"
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6400]
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n80_op11_α:
                        mov              rax, qword ptr [rbp + 3936]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 3944]
                        mov              qword ptr [rbp + 3896], rax
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3912], rax
                        lea              rdi, [rbp + 3888]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n81_lit_string_α
n80_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rbp + 3840], 1
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rbp + 3848], rax
                                                                                        jmp   n82_lit_string_α
.Lx321_0:
                        .quad            .Lx321_0_s
.Lx321_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rbp + 3744], 1
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n83_var_ref_α
.Lx322_0:
                        .quad            .Lx322_0_s
.Lx322_0_s:
                        .string          "singletons"
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6384]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                                                                                        jmp   n84_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n84_op11_α:
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3704], rax
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3720], rax
                        lea              rdi, [rbp + 3696]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n85_lit_string_α
n84_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rbp + 3648], 1
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rbp + 3656], rax
                                                                                        jmp   n86_op11_α
.Lx326_0:
                        .quad            .Lx326_0_s
.Lx326_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n86_op11_α:
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 3776], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 3784], rax
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3800], rax
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3816], rax
                        lea              rdi, [rbp + 3776]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n87_op11_α
n86_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n87_op11_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 3968], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 3976], rax
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3992], rax
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 4008], rax
                        lea              rdi, [rbp + 3968]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n88_op11_α
n87_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n88_op11_α:
                        mov              rax, qword ptr [rbp + 4224]
                        mov              qword ptr [rbp + 4160], rax
                        mov              rax, qword ptr [rbp + 4232]
                        mov              qword ptr [rbp + 4168], rax
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 4184], rax
                        mov              rax, qword ptr [rbp + 3952]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 4200], rax
                        lea              rdi, [rbp + 4160]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n89_op11_α
n88_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n89_op11_α:
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3576], rax
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 3584], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 3592], rax
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 3608], rax
                        .section         .rodata
.Lrkfn331:              .string          "$read_term_from_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn331]
                        lea              rsi, [rbp + 3568]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n90_lit_string_α
n89_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rbp + 3504], 1
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n91_var_ref_α
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6432]
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                                                                                        jmp   n92_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6416]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                                                                                        jmp   n93_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6400]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                                                                                        jmp   n94_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6384]
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                                                                                        jmp   n95_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n95_op11_α:
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3416], rax
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3432], rax
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 3448], rax
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3464], rax
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3480], rax
                        lea              rdi, [rbp + 3408]
                        mov              esi, 5
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n96_lit_integer_α
n95_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:
                        mov              qword ptr [rbp + 3520], 6
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n97_var_ref_α
.Lx342_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6448]
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                                                                                        jmp   n98_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n98_op11_α:
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3288], rax
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3304], rax
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3320], rax
                        .section         .rodata
.Lrkfn346:              .string          "$numbervars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn346]
                        lea              rsi, [rbp + 3280]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n99_var_ref_α
n98_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6432]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                                                                                        jmp   n100_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n100_op11_α:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3240], rax
                        .section         .rodata
.Lrkfn350:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn350]
                        lea              rsi, [rbp + 3232]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n101_lit_string_α
n100_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rbp + 3200], 1
                        mov              rax, qword ptr [rip + .Lx351_0]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n102_op11_α
.Lx351_0:
                        .quad            .Lx351_0_s
.Lx351_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n102_op11_α:
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3184], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3192], rax
                        .section         .rodata
.Lrkfn353:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn353]
                        lea              rsi, [rbp + 3184]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n103_var_ref_α
n102_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6416]
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                                                                                        jmp   n104_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n104_op11_α:
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3144], rax
                        .section         .rodata
.Lrkfn357:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn357]
                        lea              rsi, [rbp + 3136]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n105_lit_string_α
n104_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rbp + 3104], 1
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n106_op11_α
.Lx358_0:
                        .quad            .Lx358_0_s
.Lx358_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n106_op11_α:
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3096], rax
                        .section         .rodata
.Lrkfn360:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn360]
                        lea              rsi, [rbp + 3088]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n107_var_ref_α
n106_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6400]
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                                                                                        jmp   n108_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n108_op11_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3048], rax
                        .section         .rodata
.Lrkfn364:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn364]
                        lea              rsi, [rbp + 3040]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n109_lit_string_α
n108_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:
                        mov              qword ptr [rbp + 3008], 1
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   n110_op11_α
.Lx365_0:
                        .quad            .Lx365_0_s
.Lx365_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n110_op11_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 3000], rax
                        .section         .rodata
.Lrkfn367:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn367]
                        lea              rsi, [rbp + 2992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n111_var_ref_α
n110_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6384]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n112_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n112_op11_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2952], rax
                        .section         .rodata
.Lrkfn371:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn371]
                        lea              rsi, [rbp + 2944]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n113_lit_string_α
n112_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rbp + 2912], 1
                        mov              rax, qword ptr [rip + .Lx372_0]
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   n114_op11_α
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n114_op11_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2904], rax
                        .section         .rodata
.Lrkfn374:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn374]
                        lea              rsi, [rbp + 2896]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n115_lit_string_α
n114_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:
                        mov              qword ptr [rbp + 2640], 1
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n116_lit_string_α
.Lx375_0:
                        .quad            .Lx375_0_s
.Lx375_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        mov              qword ptr [rbp + 2544], 1
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n117_lit_string_α
.Lx376_0:
                        .quad            .Lx376_0_s
.Lx376_0_s:
                        .string          "g"
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        mov              qword ptr [rbp + 2528], 1
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n118_lit_string_α
.Lx377_0:
                        .quad            .Lx377_0_s
.Lx377_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        mov              qword ptr [rbp + 2432], 1
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n119_lit_string_α
.Lx378_0:
                        .quad            .Lx378_0_s
.Lx378_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:
                        mov              qword ptr [rbp + 2416], 1
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n120_lit_string_α
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:
                        mov              qword ptr [rbp + 2320], 1
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n121_lit_string_α
.Lx380_0:
                        .quad            .Lx380_0_s
.Lx380_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:
                        mov              qword ptr [rbp + 2304], 1
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n122_lit_string_α
.Lx381_0:
                        .quad            .Lx381_0_s
.Lx381_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:
                        mov              qword ptr [rbp + 2208], 1
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n123_lit_string_α
.Lx382_0:
                        .quad            .Lx382_0_s
.Lx382_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:
                        mov              qword ptr [rbp + 2192], 1
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n124_lit_string_α
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        mov              qword ptr [rbp + 2096], 1
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n125_lit_string_α
.Lx384_0:
                        .quad            .Lx384_0_s
.Lx384_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rbp + 2080], 1
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n126_lit_string_α
.Lx385_0:
                        .quad            .Lx385_0_s
.Lx385_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n127_lit_string_α
.Lx386_0:
                        .quad            .Lx386_0_s
.Lx386_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 1968], 1
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n128_lit_string_α
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:
                        mov              qword ptr [rbp + 1872], 1
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n129_lit_string_α
.Lx388_0:
                        .quad            .Lx388_0_s
.Lx388_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n130_op11_α
.Lx389_0:
                        .quad            .Lx389_0_s
.Lx389_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n130_op11_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1944], rax
                        lea              rdi, [rbp + 1904]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n131_op11_α
n130_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n131_op11_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 2056], rax
                        lea              rdi, [rbp + 2016]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n132_op11_α
n131_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n132_op11_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2136], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 2168], rax
                        lea              rdi, [rbp + 2128]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n133_op11_α
n132_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n133_op11_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2280], rax
                        lea              rdi, [rbp + 2240]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n134_op11_α
n133_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n134_op11_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2392], rax
                        lea              rdi, [rbp + 2352]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n135_op11_α
n134_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n135_op11_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2488], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2504], rax
                        lea              rdi, [rbp + 2464]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n136_op11_α
n135_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n136_op11_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2584], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2600], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2616], rax
                        lea              rdi, [rbp + 2576]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n137_var_ref_α
n136_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6368]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n138_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rbp + 2864], 1
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n139_lit_string_α
.Lx399_0:
                        .quad            .Lx399_0_s
.Lx399_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:
                        mov              qword ptr [rbp + 2768], 1
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n140_var_ref_α
.Lx400_0:
                        .quad            .Lx400_0_s
.Lx400_0_s:
                        .string          "variables"
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6352]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n141_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n141_op11_α:
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2728], rax
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2744], rax
                        lea              rdi, [rbp + 2720]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n142_lit_string_α
n141_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:
                        mov              qword ptr [rbp + 2672], 1
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n143_op11_α
.Lx404_0:
                        .quad            .Lx404_0_s
.Lx404_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n143_op11_α:
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2808], rax
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2824], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2840], rax
                        lea              rdi, [rbp + 2800]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n144_op11_α
n143_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n144_op11_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 1848], rax
                        .section         .rodata
.Lrkfn407:              .string          "$read_term_from_chars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn407]
                        lea              rsi, [rbp + 1808]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n145_var_ref_α
n144_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6368]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n146_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n146_op11_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1768], rax
                        .section         .rodata
.Lrkfn411:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn411]
                        lea              rsi, [rbp + 1760]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n147_lit_string_α
n146_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n148_op11_α
.Lx412_0:
                        .quad            .Lx412_0_s
.Lx412_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n148_op11_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1720], rax
                        .section         .rodata
.Lrkfn414:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn414]
                        lea              rsi, [rbp + 1712]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n149_var_ref_α
n148_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6352]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n150_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n150_op11_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1672], rax
                        .section         .rodata
.Lrkfn418:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn418]
                        lea              rsi, [rbp + 1664]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n151_lit_string_α
n150_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:
                        mov              qword ptr [rbp + 1632], 1
                        mov              rax, qword ptr [rip + .Lx419_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n152_op11_α
.Lx419_0:
                        .quad            .Lx419_0_s
.Lx419_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n152_op11_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1624], rax
                        .section         .rodata
.Lrkfn421:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn421]
                        lea              rsi, [rbp + 1616]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n153_lit_string_α
n152_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              rax, qword ptr [rip + .Lx422_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n154_lit_integer_α
.Lx422_0:
                        .quad            .Lx422_0_s
.Lx422_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:
                        mov              qword ptr [rbp + 1264], 6
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n155_lit_string_α
.Lx423_0:
                        .quad            104
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n156_lit_integer_α
.Lx424_0:
                        .quad            .Lx424_0_s
.Lx424_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 6
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n157_lit_string_α
.Lx425_0:
                        .quad            105
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n158_lit_integer_α
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_integer_α:
                        mov              qword ptr [rbp + 1040], 6
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n159_lit_string_α
.Lx427_0:
                        .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n160_lit_integer_α
.Lx428_0:
                        .quad            .Lx428_0_s
.Lx428_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:
                        mov              qword ptr [rbp + 928], 6
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n161_lit_string_α
.Lx429_0:
                        .quad            88
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n162_lit_integer_α
.Lx430_0:
                        .quad            .Lx430_0_s
.Lx430_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_integer_α:
                        mov              qword ptr [rbp + 816], 6
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n163_lit_string_α
.Lx431_0:
                        .quad            44
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n164_lit_integer_α
.Lx432_0:
                        .quad            .Lx432_0_s
.Lx432_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_integer_α:
                        mov              qword ptr [rbp + 704], 6
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n165_lit_string_α
.Lx433_0:
                        .quad            89
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n166_lit_integer_α
.Lx434_0:
                        .quad            .Lx434_0_s
.Lx434_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:
                        mov              qword ptr [rbp + 592], 6
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n167_lit_string_α
.Lx435_0:
                        .quad            41
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n168_lit_integer_α
.Lx436_0:
                        .quad            .Lx436_0_s
.Lx436_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n169_lit_string_α
.Lx437_0:
                        .quad            46
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n170_op11_α
.Lx438_0:
                        .quad            .Lx438_0_s
.Lx438_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n170_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n171_op11_α
n170_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n171_op11_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 624]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n172_op11_α
n171_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n172_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 736]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n173_op11_α
n172_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n173_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 888], rax
                        lea              rdi, [rbp + 848]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n174_op11_α
n173_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n174_op11_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 960]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n175_op11_α
n174_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n175_op11_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n176_op11_α
n175_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n176_op11_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rdi, [rbp + 1184]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n177_op11_α
n176_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n177_op11_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1296]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n178_var_ref_α
n177_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6336]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n179_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:
                        mov              qword ptr [rbp + 1584], 1
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n180_lit_string_α
.Lx449_0:
                        .quad            .Lx449_0_s
.Lx449_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n181_var_ref_α
.Lx450_0:
                        .quad            .Lx450_0_s
.Lx450_0_s:
                        .string          "variable_names"
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6304]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n182_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n182_op11_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1464], rax
                        lea              rdi, [rbp + 1440]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n183_lit_string_α
n182_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n184_op11_α
.Lx454_0:
                        .quad            .Lx454_0_s
.Lx454_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n184_op11_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1560], rax
                        lea              rdi, [rbp + 1520]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n185_op11_α
n184_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n185_op11_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn457:              .string          "$read_term_from_codes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn457]
                        lea              rsi, [rbp + 416]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n186_var_ref_α
n185_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6304]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n187_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_integer_α:
                        mov              qword ptr [rbp + 368], 6
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n188_var_ref_α
.Lx460_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6320]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n189_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n189_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn464:              .string          "$numbervars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn464]
                        lea              rsi, [rbp + 304]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n190_var_ref_α
n189_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6304]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n191_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n191_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn468:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn468]
                        lea              rsi, [rbp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n192_lit_string_α
n191_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx469_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n193_op11_α
.Lx469_0:
                        .quad            .Lx469_0_s
.Lx469_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n193_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn471:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn471]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n194_lit_string_α
n193_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n195_op11_α
.Lx472_0:
                        .quad            .Lx472_0_s
.Lx472_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n195_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn474:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn474]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n196_lit_string_α
n195_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n197_op11_α
.Lx475_0:
                        .quad            .Lx475_0_s
.Lx475_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n197_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn477:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn477]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n198_move_label_α
n197_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n198_move_label_α:
                        lea              rax, [rip + n6_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n199_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n199_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n199_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 6624]
                        add              rsp, 6632
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 6624]
                        add              rsp, 6632
                        ret
                        .section         .note.GNU-stack,"",@progbits
