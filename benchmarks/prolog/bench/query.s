                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_area$2F2_α
proc_area$2F2_α:
                        .global          proc_area$2F2_α
                        .global          proc_area$2F2_β
                        .global          proc_area$2F2_γ
                        .global          proc_area$2F2_ω
                        sub              rsp, 5328
                        mov              [rsp + 5304], rcx
                        mov              [rsp + 5312], rdx
                        mov              [rsp + 5320], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 5280
                        mov              edx, 5296
                        call             rt_jmp_frame_lexprep2@PLT
proc_area$2F2_α_body:
                        lea              rax, [rip + n10_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx201_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx201_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx201_101
.Lx201_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx201_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5248], rax
                        mov              qword ptr [rbp + 5256], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 5264], 1
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 5272], rax
                                                                                        jmp   n3_op11_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "china"
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 5248]
                        mov              qword ptr [rbp + 5216], rax
                        mov              rax, qword ptr [rbp + 5256]
                        mov              qword ptr [rbp + 5224], rax
                        lea              rdi, [rbp + 5216]
                        mov              rsi, qword ptr [rip + .Lx205_2]
                                                                                        jmp   .Lx205_3
.Lx205_2:
                        .quad            .Lx205_2_s
.Lx205_2_s:
                        .string          "china"
.Lx205_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 5200], rax
                        mov              qword ptr [rbp + 5208], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 5168], rax
                        mov              qword ptr [rbp + 5176], rdx
                                                                                        jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 5088], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 5096], rax
                        lea              rdi, [rbp + 5088]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n7_var_ref_α
n5_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 5184], 6
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rbp + 5192], rax
                                                                                        jmp   n8_op11_α
.Lx209_0:
                        .quad            3380
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5040], rax
                        mov              qword ptr [rbp + 5048], rdx
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        mov              rax, qword ptr [rbp + 5168]
                        mov              qword ptr [rbp + 5136], rax
                        mov              rax, qword ptr [rbp + 5176]
                        mov              qword ptr [rbp + 5144], rax
                        lea              rdi, [rbp + 5136]
                        movabs           rsi, 3380
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 5120], rax
                        mov              qword ptr [rbp + 5128], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n10_suspend_α
n8_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 5056], 1
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rbp + 5064], rax
                                                                                        jmp   n11_op11_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "india"
#-----------------------------------------------------------------------------------------------------------------------
n10_suspend_α:
                        lea              rax, [rip + n10_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n10_suspend_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        mov              rax, qword ptr [rbp + 5040]
                        mov              qword ptr [rbp + 5008], rax
                        mov              rax, qword ptr [rbp + 5048]
                        mov              qword ptr [rbp + 5016], rax
                        lea              rdi, [rbp + 5008]
                        mov              rsi, qword ptr [rip + .Lx216_2]
                                                                                        jmp   .Lx216_3
.Lx216_2:
                        .quad            .Lx216_2_s
.Lx216_2_s:
                        .string          "india"
.Lx216_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n12_var_ref_α
n11_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4960], rax
                        mov              qword ptr [rbp + 4968], rdx
                                                                                        jmp   n14_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 4880], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 4888], rax
                        lea              rdi, [rbp + 4880]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n15_var_ref_α
n13_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 4976], 6
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rbp + 4984], rax
                                                                                        jmp   n16_op11_α
.Lx220_0:
                        .quad            1139
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4832], rax
                        mov              qword ptr [rbp + 4840], rdx
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
                        mov              rax, qword ptr [rbp + 4960]
                        mov              qword ptr [rbp + 4928], rax
                        mov              rax, qword ptr [rbp + 4968]
                        mov              qword ptr [rbp + 4936], rax
                        lea              rdi, [rbp + 4928]
                        movabs           rsi, 1139
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n18_suspend_α
n16_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 4848], 1
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rbp + 4856], rax
                                                                                        jmp   n19_op11_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "ussr"
#-----------------------------------------------------------------------------------------------------------------------
n18_suspend_α:
                        lea              rax, [rip + n18_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n18_suspend_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 4808], rax
                        lea              rdi, [rbp + 4800]
                        mov              rsi, qword ptr [rip + .Lx227_2]
                                                                                        jmp   .Lx227_3
.Lx227_2:
                        .quad            .Lx227_2_s
.Lx227_2_s:
                        .string          "ussr"
.Lx227_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                        cmp              eax, 99
                                                                                        je    n21_op11_α
                                                                                        jmp   n20_var_ref_α
n19_op11_β:
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                                                                                        jmp   n22_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 4672], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 4680], rax
                        lea              rdi, [rbp + 4672]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 4656], rax
                        mov              qword ptr [rbp + 4664], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n23_var_ref_α
n21_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rbp + 4768], 6
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 4776], rax
                                                                                        jmp   n24_op11_α
.Lx231_0:
                        .quad            8708
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4624], rax
                        mov              qword ptr [rbp + 4632], rdx
                                                                                        jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 4752]
                        mov              qword ptr [rbp + 4720], rax
                        mov              rax, qword ptr [rbp + 4760]
                        mov              qword ptr [rbp + 4728], rax
                        lea              rdi, [rbp + 4720]
                        movabs           rsi, 8708
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        cmp              eax, 99
                                                                                        je    n21_op11_α
                                                                                        jmp   n26_suspend_α
n24_op11_β:
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 4640], 1
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 4648], rax
                                                                                        jmp   n27_op11_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "usa"
#-----------------------------------------------------------------------------------------------------------------------
n26_suspend_α:
                        lea              rax, [rip + n26_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n26_suspend_β:
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
                        mov              rax, qword ptr [rbp + 4624]
                        mov              qword ptr [rbp + 4592], rax
                        mov              rax, qword ptr [rbp + 4632]
                        mov              qword ptr [rbp + 4600], rax
                        lea              rdi, [rbp + 4592]
                        mov              rsi, qword ptr [rip + .Lx238_2]
                                                                                        jmp   .Lx238_3
.Lx238_2:
                        .quad            .Lx238_2_s
.Lx238_2_s:
                        .string          "usa"
.Lx238_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx
                        cmp              eax, 99
                                                                                        je    n29_op11_α
                                                                                        jmp   n28_var_ref_α
n27_op11_β:
                                                                                        jmp   n29_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4544], rax
                        mov              qword ptr [rbp + 4552], rdx
                                                                                        jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 4464], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 4472], rax
                        lea              rdi, [rbp + 4464]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 4448], rax
                        mov              qword ptr [rbp + 4456], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n31_var_ref_α
n29_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 4560], 6
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rbp + 4568], rax
                                                                                        jmp   n32_op11_α
.Lx242_0:
                        .quad            3609
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4416], rax
                        mov              qword ptr [rbp + 4424], rdx
                                                                                        jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 4512], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 4520], rax
                        lea              rdi, [rbp + 4512]
                        movabs           rsi, 3609
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                        cmp              eax, 99
                                                                                        je    n29_op11_α
                                                                                        jmp   n34_suspend_α
n32_op11_β:
                                                                                        jmp   n29_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 4432], 1
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rbp + 4440], rax
                                                                                        jmp   n35_op11_α
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          "indonesia"
#-----------------------------------------------------------------------------------------------------------------------
n34_suspend_α:
                        lea              rax, [rip + n34_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n34_suspend_β:
                                                                                        jmp   n29_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_op11_α:
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 4392], rax
                        lea              rdi, [rbp + 4384]
                        mov              rsi, qword ptr [rip + .Lx249_2]
                                                                                        jmp   .Lx249_3
.Lx249_2:
                        .quad            .Lx249_2_s
.Lx249_2_s:
                        .string          "indonesia"
.Lx249_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx
                        cmp              eax, 99
                                                                                        je    n37_op11_α
                                                                                        jmp   n36_var_ref_α
n35_op11_β:
                                                                                        jmp   n37_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                                                                                        jmp   n38_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n37_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 4256], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 4264], rax
                        lea              rdi, [rbp + 4256]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n39_var_ref_α
n37_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:
                        mov              qword ptr [rbp + 4352], 6
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rbp + 4360], rax
                                                                                        jmp   n40_op11_α
.Lx253_0:
                        .quad            570
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx
                                                                                        jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_op11_α:
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4312], rax
                        lea              rdi, [rbp + 4304]
                        movabs           rsi, 570
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                        cmp              eax, 99
                                                                                        je    n37_op11_α
                                                                                        jmp   n42_suspend_α
n40_op11_β:
                                                                                        jmp   n37_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 4224], 1
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rbp + 4232], rax
                                                                                        jmp   n43_op11_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "japan"
#-----------------------------------------------------------------------------------------------------------------------
n42_suspend_α:
                        lea              rax, [rip + n42_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n42_suspend_β:
                                                                                        jmp   n37_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n43_op11_α:
                        mov              rax, qword ptr [rbp + 4208]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 4216]
                        mov              qword ptr [rbp + 4184], rax
                        lea              rdi, [rbp + 4176]
                        mov              rsi, qword ptr [rip + .Lx260_2]
                                                                                        jmp   .Lx260_3
.Lx260_2:
                        .quad            .Lx260_2_s
.Lx260_2_s:
                        .string          "japan"
.Lx260_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              eax, 99
                                                                                        je    n45_op11_α
                                                                                        jmp   n44_var_ref_α
n43_op11_β:
                                                                                        jmp   n45_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   n46_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n45_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 4056], rax
                        lea              rdi, [rbp + 4048]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n47_var_ref_α
n45_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:
                        mov              qword ptr [rbp + 4144], 6
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n48_op11_α
.Lx264_0:
                        .quad            148
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                                                                                        jmp   n49_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n48_op11_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4104], rax
                        lea              rdi, [rbp + 4096]
                        movabs           rsi, 148
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                        cmp              eax, 99
                                                                                        je    n45_op11_α
                                                                                        jmp   n50_suspend_α
n48_op11_β:
                                                                                        jmp   n45_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        mov              qword ptr [rbp + 4016], 1
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rbp + 4024], rax
                                                                                        jmp   n51_op11_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "brazil"
#-----------------------------------------------------------------------------------------------------------------------
n50_suspend_α:
                        lea              rax, [rip + n50_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n50_suspend_β:
                                                                                        jmp   n45_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n51_op11_α:
                        mov              rax, qword ptr [rbp + 4000]
                        mov              qword ptr [rbp + 3968], rax
                        mov              rax, qword ptr [rbp + 4008]
                        mov              qword ptr [rbp + 3976], rax
                        lea              rdi, [rbp + 3968]
                        mov              rsi, qword ptr [rip + .Lx271_2]
                                                                                        jmp   .Lx271_3
.Lx271_2:
                        .quad            .Lx271_2_s
.Lx271_2_s:
                        .string          "brazil"
.Lx271_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        cmp              eax, 99
                                                                                        je    n53_op11_α
                                                                                        jmp   n52_var_ref_α
n51_op11_β:
                                                                                        jmp   n53_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx
                                                                                        jmp   n54_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3848], rax
                        lea              rdi, [rbp + 3840]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n55_var_ref_α
n53_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:
                        mov              qword ptr [rbp + 3936], 6
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rbp + 3944], rax
                                                                                        jmp   n56_op11_α
.Lx275_0:
                        .quad            3288
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                                                                                        jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
                        mov              rax, qword ptr [rbp + 3920]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 3928]
                        mov              qword ptr [rbp + 3896], rax
                        lea              rdi, [rbp + 3888]
                        movabs           rsi, 3288
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                        cmp              eax, 99
                                                                                        je    n53_op11_α
                                                                                        jmp   n58_suspend_α
n56_op11_β:
                                                                                        jmp   n53_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 3808], 1
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rbp + 3816], rax
                                                                                        jmp   n59_op11_α
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          "bangladesh"
#-----------------------------------------------------------------------------------------------------------------------
n58_suspend_α:
                        lea              rax, [rip + n58_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n58_suspend_β:
                                                                                        jmp   n53_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n59_op11_α:
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3768], rax
                        lea              rdi, [rbp + 3760]
                        mov              rsi, qword ptr [rip + .Lx282_2]
                                                                                        jmp   .Lx282_3
.Lx282_2:
                        .quad            .Lx282_2_s
.Lx282_2_s:
                        .string          "bangladesh"
.Lx282_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                        cmp              eax, 99
                                                                                        je    n61_op11_α
                                                                                        jmp   n60_var_ref_α
n59_op11_β:
                                                                                        jmp   n61_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx
                                                                                        jmp   n62_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n61_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3640], rax
                        lea              rdi, [rbp + 3632]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n63_var_ref_α
n61_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:
                        mov              qword ptr [rbp + 3728], 6
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rbp + 3736], rax
                                                                                        jmp   n64_op11_α
.Lx286_0:
                        .quad            55
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                                                                                        jmp   n65_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n64_op11_α:
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3688], rax
                        lea              rdi, [rbp + 3680]
                        movabs           rsi, 55
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                        cmp              eax, 99
                                                                                        je    n61_op11_α
                                                                                        jmp   n66_suspend_α
n64_op11_β:
                                                                                        jmp   n61_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        mov              qword ptr [rbp + 3600], 1
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n67_op11_α
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "pakistan"
#-----------------------------------------------------------------------------------------------------------------------
n66_suspend_α:
                        lea              rax, [rip + n66_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n66_suspend_β:
                                                                                        jmp   n61_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n67_op11_α:
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3560], rax
                        lea              rdi, [rbp + 3552]
                        mov              rsi, qword ptr [rip + .Lx293_2]
                                                                                        jmp   .Lx293_3
.Lx293_2:
                        .quad            .Lx293_2_s
.Lx293_2_s:
                        .string          "pakistan"
.Lx293_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              eax, 99
                                                                                        je    n69_op11_α
                                                                                        jmp   n68_var_ref_α
n67_op11_β:
                                                                                        jmp   n69_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                                                                                        jmp   n70_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n69_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3432], rax
                        lea              rdi, [rbp + 3424]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n71_var_ref_α
n69_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:
                        mov              qword ptr [rbp + 3520], 6
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n72_op11_α
.Lx297_0:
                        .quad            311
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                                                                                        jmp   n73_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n72_op11_α:
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3480], rax
                        lea              rdi, [rbp + 3472]
                        movabs           rsi, 311
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              eax, 99
                                                                                        je    n69_op11_α
                                                                                        jmp   n74_suspend_α
n72_op11_β:
                                                                                        jmp   n69_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        mov              qword ptr [rbp + 3392], 1
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rbp + 3400], rax
                                                                                        jmp   n75_op11_α
.Lx301_0:
                        .quad            .Lx301_0_s
.Lx301_0_s:
                        .string          "w_germany"
#-----------------------------------------------------------------------------------------------------------------------
n74_suspend_α:
                        lea              rax, [rip + n74_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n74_suspend_β:
                                                                                        jmp   n69_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n75_op11_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3352], rax
                        lea              rdi, [rbp + 3344]
                        mov              rsi, qword ptr [rip + .Lx304_2]
                                                                                        jmp   .Lx304_3
.Lx304_2:
                        .quad            .Lx304_2_s
.Lx304_2_s:
                        .string          "w_germany"
.Lx304_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        cmp              eax, 99
                                                                                        je    n77_op11_α
                                                                                        jmp   n76_var_ref_α
n75_op11_β:
                                                                                        jmp   n77_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                                                                                        jmp   n78_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n77_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3224], rax
                        lea              rdi, [rbp + 3216]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n79_var_ref_α
n77_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:
                        mov              qword ptr [rbp + 3312], 6
                        mov              rax, qword ptr [rip + .Lx308_0]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n80_op11_α
.Lx308_0:
                        .quad            96
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                                                                                        jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n80_op11_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3272], rax
                        lea              rdi, [rbp + 3264]
                        movabs           rsi, 96
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        cmp              eax, 99
                                                                                        je    n77_op11_α
                                                                                        jmp   n82_suspend_α
n80_op11_β:
                                                                                        jmp   n77_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rbp + 3184], 1
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n83_op11_α
.Lx312_0:
                        .quad            .Lx312_0_s
.Lx312_0_s:
                        .string          "nigeria"
#-----------------------------------------------------------------------------------------------------------------------
n82_suspend_α:
                        lea              rax, [rip + n82_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n82_suspend_β:
                                                                                        jmp   n77_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n83_op11_α:
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3144], rax
                        lea              rdi, [rbp + 3136]
                        mov              rsi, qword ptr [rip + .Lx315_2]
                                                                                        jmp   .Lx315_3
.Lx315_2:
                        .quad            .Lx315_2_s
.Lx315_2_s:
                        .string          "nigeria"
.Lx315_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              eax, 99
                                                                                        je    n85_op11_α
                                                                                        jmp   n84_var_ref_α
n83_op11_β:
                                                                                        jmp   n85_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                                                                                        jmp   n86_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n85_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3016], rax
                        lea              rdi, [rbp + 3008]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n87_var_ref_α
n85_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:
                        mov              qword ptr [rbp + 3104], 6
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n88_op11_α
.Lx319_0:
                        .quad            373
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n89_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n88_op11_α:
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3064], rax
                        lea              rdi, [rbp + 3056]
                        movabs           rsi, 373
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        cmp              eax, 99
                                                                                        je    n85_op11_α
                                                                                        jmp   n90_suspend_α
n88_op11_β:
                                                                                        jmp   n85_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 2976], 1
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n91_op11_α
.Lx323_0:
                        .quad            .Lx323_0_s
.Lx323_0_s:
                        .string          "mexico"
#-----------------------------------------------------------------------------------------------------------------------
n90_suspend_α:
                        lea              rax, [rip + n90_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n90_suspend_β:
                                                                                        jmp   n85_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n91_op11_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2936], rax
                        lea              rdi, [rbp + 2928]
                        mov              rsi, qword ptr [rip + .Lx326_2]
                                                                                        jmp   .Lx326_3
.Lx326_2:
                        .quad            .Lx326_2_s
.Lx326_2_s:
                        .string          "mexico"
.Lx326_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              eax, 99
                                                                                        je    n93_op11_α
                                                                                        jmp   n92_var_ref_α
n91_op11_β:
                                                                                        jmp   n93_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                                                                                        jmp   n94_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n93_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2808], rax
                        lea              rdi, [rbp + 2800]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n95_var_ref_α
n93_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:
                        mov              qword ptr [rbp + 2896], 6
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n96_op11_α
.Lx330_0:
                        .quad            764
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                                                                                        jmp   n97_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n96_op11_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2856], rax
                        lea              rdi, [rbp + 2848]
                        movabs           rsi, 764
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              eax, 99
                                                                                        je    n93_op11_α
                                                                                        jmp   n98_suspend_α
n96_op11_β:
                                                                                        jmp   n93_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 2768], 1
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n99_op11_α
.Lx334_0:
                        .quad            .Lx334_0_s
.Lx334_0_s:
                        .string          "uk"
#-----------------------------------------------------------------------------------------------------------------------
n98_suspend_α:
                        lea              rax, [rip + n98_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n98_suspend_β:
                                                                                        jmp   n93_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n99_op11_α:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2728], rax
                        lea              rdi, [rbp + 2720]
                        mov              rsi, qword ptr [rip + .Lx337_2]
                                                                                        jmp   .Lx337_3
.Lx337_2:
                        .quad            .Lx337_2_s
.Lx337_2_s:
                        .string          "uk"
.Lx337_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n100_var_ref_α
n99_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n102_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n101_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2600], rax
                        lea              rdi, [rbp + 2592]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n103_var_ref_α
n101_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:
                        mov              qword ptr [rbp + 2688], 6
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n104_op11_α
.Lx341_0:
                        .quad            86
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                                                                                        jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n104_op11_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2648], rax
                        lea              rdi, [rbp + 2640]
                        movabs           rsi, 86
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n106_suspend_α
n104_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rbp + 2560], 1
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n107_op11_α
.Lx345_0:
                        .quad            .Lx345_0_s
.Lx345_0_s:
                        .string          "italy"
#-----------------------------------------------------------------------------------------------------------------------
n106_suspend_α:
                        lea              rax, [rip + n106_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n106_suspend_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n107_op11_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2520], rax
                        lea              rdi, [rbp + 2512]
                        mov              rsi, qword ptr [rip + .Lx348_2]
                                                                                        jmp   .Lx348_3
.Lx348_2:
                        .quad            .Lx348_2_s
.Lx348_2_s:
                        .string          "italy"
.Lx348_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        cmp              eax, 99
                                                                                        je    n109_op11_α
                                                                                        jmp   n108_var_ref_α
n107_op11_β:
                                                                                        jmp   n109_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n110_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n109_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2392], rax
                        lea              rdi, [rbp + 2384]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n111_var_ref_α
n109_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_integer_α:
                        mov              qword ptr [rbp + 2480], 6
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n112_op11_α
.Lx352_0:
                        .quad            116
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n113_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n112_op11_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2440], rax
                        lea              rdi, [rbp + 2432]
                        movabs           rsi, 116
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              eax, 99
                                                                                        je    n109_op11_α
                                                                                        jmp   n114_suspend_α
n112_op11_β:
                                                                                        jmp   n109_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n115_op11_α
.Lx356_0:
                        .quad            .Lx356_0_s
.Lx356_0_s:
                        .string          "france"
#-----------------------------------------------------------------------------------------------------------------------
n114_suspend_α:
                        lea              rax, [rip + n114_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n114_suspend_β:
                                                                                        jmp   n109_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n115_op11_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2312], rax
                        lea              rdi, [rbp + 2304]
                        mov              rsi, qword ptr [rip + .Lx359_2]
                                                                                        jmp   .Lx359_3
.Lx359_2:
                        .quad            .Lx359_2_s
.Lx359_2_s:
                        .string          "france"
.Lx359_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              eax, 99
                                                                                        je    n117_op11_α
                                                                                        jmp   n116_var_ref_α
n115_op11_β:
                                                                                        jmp   n117_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n118_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n117_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2184], rax
                        lea              rdi, [rbp + 2176]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n119_var_ref_α
n117_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:
                        mov              qword ptr [rbp + 2272], 6
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n120_op11_α
.Lx363_0:
                        .quad            213
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n121_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n120_op11_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2232], rax
                        lea              rdi, [rbp + 2224]
                        movabs           rsi, 213
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 99
                                                                                        je    n117_op11_α
                                                                                        jmp   n122_suspend_α
n120_op11_β:
                                                                                        jmp   n117_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:
                        mov              qword ptr [rbp + 2144], 1
                        mov              rax, qword ptr [rip + .Lx367_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n123_op11_α
.Lx367_0:
                        .quad            .Lx367_0_s
.Lx367_0_s:
                        .string          "philippines"
#-----------------------------------------------------------------------------------------------------------------------
n122_suspend_α:
                        lea              rax, [rip + n122_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n122_suspend_β:
                                                                                        jmp   n117_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n123_op11_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2104], rax
                        lea              rdi, [rbp + 2096]
                        mov              rsi, qword ptr [rip + .Lx370_2]
                                                                                        jmp   .Lx370_3
.Lx370_2:
                        .quad            .Lx370_2_s
.Lx370_2_s:
                        .string          "philippines"
.Lx370_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              eax, 99
                                                                                        je    n125_op11_α
                                                                                        jmp   n124_var_ref_α
n123_op11_β:
                                                                                        jmp   n125_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n126_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n125_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1976], rax
                        lea              rdi, [rbp + 1968]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n127_var_ref_α
n125_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_integer_α:
                        mov              qword ptr [rbp + 2064], 6
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n128_op11_α
.Lx374_0:
                        .quad            90
#-----------------------------------------------------------------------------------------------------------------------
n127_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n129_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n128_op11_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                        lea              rdi, [rbp + 2016]
                        movabs           rsi, 90
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n125_op11_α
                                                                                        jmp   n130_suspend_α
n128_op11_β:
                                                                                        jmp   n125_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rbp + 1936], 1
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n131_op11_α
.Lx378_0:
                        .quad            .Lx378_0_s
.Lx378_0_s:
                        .string          "thailand"
#-----------------------------------------------------------------------------------------------------------------------
n130_suspend_α:
                        lea              rax, [rip + n130_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n130_suspend_β:
                                                                                        jmp   n125_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n131_op11_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1896], rax
                        lea              rdi, [rbp + 1888]
                        mov              rsi, qword ptr [rip + .Lx381_2]
                                                                                        jmp   .Lx381_3
.Lx381_2:
                        .quad            .Lx381_2_s
.Lx381_2_s:
                        .string          "thailand"
.Lx381_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n133_op11_α
                                                                                        jmp   n132_var_ref_α
n131_op11_β:
                                                                                        jmp   n133_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n134_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n133_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1768], rax
                        lea              rdi, [rbp + 1760]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n135_var_ref_α
n133_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:
                        mov              qword ptr [rbp + 1856], 6
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n136_op11_α
.Lx385_0:
                        .quad            200
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n137_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n136_op11_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1816], rax
                        lea              rdi, [rbp + 1808]
                        movabs           rsi, 200
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              eax, 99
                                                                                        je    n133_op11_α
                                                                                        jmp   n138_suspend_α
n136_op11_β:
                                                                                        jmp   n133_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n139_op11_α
.Lx389_0:
                        .quad            .Lx389_0_s
.Lx389_0_s:
                        .string          "turkey"
#-----------------------------------------------------------------------------------------------------------------------
n138_suspend_α:
                        lea              rax, [rip + n138_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n138_suspend_β:
                                                                                        jmp   n133_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n139_op11_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1688], rax
                        lea              rdi, [rbp + 1680]
                        mov              rsi, qword ptr [rip + .Lx392_2]
                                                                                        jmp   .Lx392_3
.Lx392_2:
                        .quad            .Lx392_2_s
.Lx392_2_s:
                        .string          "turkey"
.Lx392_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n141_op11_α
                                                                                        jmp   n140_var_ref_α
n139_op11_β:
                                                                                        jmp   n141_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n142_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n141_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1560], rax
                        lea              rdi, [rbp + 1552]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n143_var_ref_α
n141_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:
                        mov              qword ptr [rbp + 1648], 6
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n144_op11_α
.Lx396_0:
                        .quad            296
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n145_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n144_op11_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1600]
                        movabs           rsi, 296
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n141_op11_α
                                                                                        jmp   n146_suspend_α
n144_op11_β:
                                                                                        jmp   n141_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n147_op11_α
.Lx400_0:
                        .quad            .Lx400_0_s
.Lx400_0_s:
                        .string          "egypt"
#-----------------------------------------------------------------------------------------------------------------------
n146_suspend_α:
                        lea              rax, [rip + n146_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n146_suspend_β:
                                                                                        jmp   n141_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n147_op11_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1472]
                        mov              rsi, qword ptr [rip + .Lx403_2]
                                                                                        jmp   .Lx403_3
.Lx403_2:
                        .quad            .Lx403_2_s
.Lx403_2_s:
                        .string          "egypt"
.Lx403_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n149_op11_α
                                                                                        jmp   n148_var_ref_α
n147_op11_β:
                                                                                        jmp   n149_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n150_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n149_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1344]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n151_var_ref_α
n149_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:
                        mov              qword ptr [rbp + 1440], 6
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n152_op11_α
.Lx407_0:
                        .quad            386
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n153_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n152_op11_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rdi, [rbp + 1392]
                        movabs           rsi, 386
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n149_op11_α
                                                                                        jmp   n154_suspend_α
n152_op11_β:
                                                                                        jmp   n149_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n155_op11_α
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          "spain"
#-----------------------------------------------------------------------------------------------------------------------
n154_suspend_α:
                        lea              rax, [rip + n154_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n154_suspend_β:
                                                                                        jmp   n149_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n155_op11_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1264]
                        mov              rsi, qword ptr [rip + .Lx414_2]
                                                                                        jmp   .Lx414_3
.Lx414_2:
                        .quad            .Lx414_2_s
.Lx414_2_s:
                        .string          "spain"
.Lx414_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n157_op11_α
                                                                                        jmp   n156_var_ref_α
n155_op11_β:
                                                                                        jmp   n157_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n158_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n157_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1136]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n159_var_ref_α
n157_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_integer_α:
                        mov              qword ptr [rbp + 1232], 6
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n160_op11_α
.Lx418_0:
                        .quad            190
#-----------------------------------------------------------------------------------------------------------------------
n159_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n161_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n160_op11_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1184]
                        movabs           rsi, 190
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n157_op11_α
                                                                                        jmp   n162_suspend_α
n160_op11_β:
                                                                                        jmp   n157_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx422_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n163_op11_α
.Lx422_0:
                        .quad            .Lx422_0_s
.Lx422_0_s:
                        .string          "poland"
#-----------------------------------------------------------------------------------------------------------------------
n162_suspend_α:
                        lea              rax, [rip + n162_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n162_suspend_β:
                                                                                        jmp   n157_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n163_op11_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1056]
                        mov              rsi, qword ptr [rip + .Lx425_2]
                                                                                        jmp   .Lx425_3
.Lx425_2:
                        .quad            .Lx425_2_s
.Lx425_2_s:
                        .string          "poland"
.Lx425_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n165_op11_α
                                                                                        jmp   n164_var_ref_α
n163_op11_β:
                                                                                        jmp   n165_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n166_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n165_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n167_var_ref_α
n165_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 6
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n168_op11_α
.Lx429_0:
                        .quad            121
#-----------------------------------------------------------------------------------------------------------------------
n167_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n169_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n168_op11_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        movabs           rsi, 121
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n165_op11_α
                                                                                        jmp   n170_suspend_α
n168_op11_β:
                                                                                        jmp   n165_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n171_op11_α
.Lx433_0:
                        .quad            .Lx433_0_s
.Lx433_0_s:
                        .string          "s_korea"
#-----------------------------------------------------------------------------------------------------------------------
n170_suspend_α:
                        lea              rax, [rip + n170_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n170_suspend_β:
                                                                                        jmp   n165_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n171_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              rsi, qword ptr [rip + .Lx436_2]
                                                                                        jmp   .Lx436_3
.Lx436_2:
                        .quad            .Lx436_2_s
.Lx436_2_s:
                        .string          "s_korea"
.Lx436_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n173_op11_α
                                                                                        jmp   n172_var_ref_α
n171_op11_β:
                                                                                        jmp   n173_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n173_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n175_var_ref_α
n173_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:
                        mov              qword ptr [rbp + 816], 6
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n176_op11_α
.Lx440_0:
                        .quad            37
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n177_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n176_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        movabs           rsi, 37
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n173_op11_α
                                                                                        jmp   n178_suspend_α
n176_op11_β:
                                                                                        jmp   n173_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx444_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n179_op11_α
.Lx444_0:
                        .quad            .Lx444_0_s
.Lx444_0_s:
                        .string          "iran"
#-----------------------------------------------------------------------------------------------------------------------
n178_suspend_α:
                        lea              rax, [rip + n178_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n178_suspend_β:
                                                                                        jmp   n173_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n179_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              rsi, qword ptr [rip + .Lx447_2]
                                                                                        jmp   .Lx447_3
.Lx447_2:
                        .quad            .Lx447_2_s
.Lx447_2_s:
                        .string          "iran"
.Lx447_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n181_op11_α
                                                                                        jmp   n180_var_ref_α
n179_op11_β:
                                                                                        jmp   n181_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n182_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n181_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n183_var_ref_α
n181_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_integer_α:
                        mov              qword ptr [rbp + 608], 6
                        mov              rax, qword ptr [rip + .Lx451_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n184_op11_α
.Lx451_0:
                        .quad            628
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n185_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n184_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        movabs           rsi, 628
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n181_op11_α
                                                                                        jmp   n186_suspend_α
n184_op11_β:
                                                                                        jmp   n181_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n187_op11_α
.Lx455_0:
                        .quad            .Lx455_0_s
.Lx455_0_s:
                        .string          "ethiopia"
#-----------------------------------------------------------------------------------------------------------------------
n186_suspend_α:
                        lea              rax, [rip + n186_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n186_suspend_β:
                                                                                        jmp   n181_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n187_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              rsi, qword ptr [rip + .Lx458_2]
                                                                                        jmp   .Lx458_3
.Lx458_2:
                        .quad            .Lx458_2_s
.Lx458_2_s:
                        .string          "ethiopia"
.Lx458_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n189_op11_α
                                                                                        jmp   n188_var_ref_α
n187_op11_β:
                                                                                        jmp   n189_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n190_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n189_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   n191_var_ref_α
n189_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx462_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n192_op11_α
.Lx462_0:
                        .quad            350
#-----------------------------------------------------------------------------------------------------------------------
n191_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n193_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n192_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        movabs           rsi, 350
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n189_op11_α
                                                                                        jmp   n194_suspend_α
n192_op11_β:
                                                                                        jmp   n189_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n195_op11_α
.Lx466_0:
                        .quad            .Lx466_0_s
.Lx466_0_s:
                        .string          "argentina"
#-----------------------------------------------------------------------------------------------------------------------
n194_suspend_α:
                        lea              rax, [rip + n194_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n194_suspend_β:
                                                                                        jmp   n189_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n195_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        mov              rsi, qword ptr [rip + .Lx469_2]
                                                                                        jmp   .Lx469_3
.Lx469_2:
                        .quad            .Lx469_2_s
.Lx469_2_s:
                        .string          "argentina"
.Lx469_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n197_op11_α
                                                                                        jmp   n196_var_ref_α
n195_op11_β:
                                                                                        jmp   n197_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n198_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n197_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_area$2F2_ω
                                                                                        jmp   proc_area$2F2_ω
n197_op11_β:
                                                                                        jmp   proc_area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n199_op11_α
.Lx473_0:
                        .quad            1080
#-----------------------------------------------------------------------------------------------------------------------
n199_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        movabs           rsi, 1080
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n197_op11_α
                                                                                        jmp   n200_suspend_α
n199_op11_β:
                                                                                        jmp   n197_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n200_suspend_α:
                        lea              rax, [rip + n200_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_area$2F2_γ
n200_suspend_β:
                                                                                        jmp   n197_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_area$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_area$2F2_β:
                                                                                        jmp   qword ptr [rbp + 5280]
#-----------------------------------------------------------------------------------------------------------------------
proc_area$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_area$2F2_res]
                        push             rax
                        mov              rax, [rbp + 5304]
                        mov              rbp, [rbp + 5320]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_area$2F2_ω:
                        mov              rax, [rbp + 5312]
                        lea              rsp, [rbp + 5328]
                        mov              rbp, [rbp + 5320]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_query$2F1_α
proc_query$2F1_α:
                        .global          proc_query$2F1_α
                        .global          proc_query$2F1_β
                        .global          proc_query$2F1_γ
                        .global          proc_query$2F1_ω
                        sub              rsp, 1472
                        mov              [rsp + 1448], rcx
                        mov              [rsp + 1456], rdx
                        mov              [rsp + 1464], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1328
                        mov              edx, 1440
                        call             rt_jmp_frame_lexprep2@PLT
proc_query$2F1_α_body:
                        lea              rax, [rip + n516_suspend_β]
                        mov              qword ptr [rbp + 1328], rax
#-----------------------------------------------------------------------------------------------------------------------
n477_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx517_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx517_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx517_101
.Lx517_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx517_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_query$2F1_ω
                                                                                        jmp   n478_var_ref_α
n477_op11_β:
                                                                                        jmp   proc_query$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n478_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n479_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n479_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n480_var_ref_α
.Lx520_0:
                        .quad            .Lx520_0_s
.Lx520_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n480_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n481_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n481_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n482_var_ref_α
.Lx523_0:
                        .quad            .Lx523_0_s
.Lx523_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n482_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n483_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n483_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx526_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n484_var_ref_α
.Lx526_0:
                        .quad            .Lx526_0_s
.Lx526_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n484_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n485_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n485_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n486_var_ref_α
.Lx529_0:
                        .quad            .Lx529_0_s
.Lx529_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n486_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n487_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n487_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n488_op11_α
.Lx532_0:
                        .quad            .Lx532_0_s
.Lx532_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n488_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 912]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    proc_query$2F1_ω
                                                                                        jmp   n489_op11_α
n488_op11_β:
                                                                                        jmp   proc_query$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n489_op11_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1024]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    proc_query$2F1_ω
                                                                                        jmp   n490_op11_α
n489_op11_β:
                                                                                        jmp   proc_query$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n490_op11_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rdi, [rbp + 1136]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    proc_query$2F1_ω
                                                                                        jmp   n491_op11_α
n490_op11_β:
                                                                                        jmp   proc_query$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n491_op11_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1248]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n493_op11_α
                                                                                        jmp   n492_op11_α
n491_op11_β:
                                                                                        jmp   n493_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n492_op11_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 816]
                        lea              r8, [rbp + 816]
.Lx537_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx537_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx537_41
                        cmp              esi, 1
                                                                                        jne   .Lx537_55
                        mov              r8, rax
                                                                                        jmp   .Lx537_40
.Lx537_55:
                        cmp              esi, 2
                                                                                        jne   .Lx537_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx537_41
                        mov              r8, rax
                                                                                        jmp   .Lx537_40
.Lx537_56:
                        cmp              eax, 13
                                                                                        jne   .Lx537_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx537_41
                        cmp              rax, r8
                                                                                        je    .Lx537_41
                        mov              r8, rax
                                                                                        jmp   .Lx537_40
.Lx537_41:
                        lea              r9, [rbp + 832]
.Lx537_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx537_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx537_43
                        cmp              esi, 1
                                                                                        jne   .Lx537_57
                        mov              r9, rax
                                                                                        jmp   .Lx537_42
.Lx537_57:
                        cmp              esi, 2
                                                                                        jne   .Lx537_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx537_43
                        mov              r9, rax
                                                                                        jmp   .Lx537_42
.Lx537_58:
                        cmp              eax, 13
                                                                                        jne   .Lx537_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx537_43
                        cmp              rax, r9
                                                                                        je    .Lx537_43
                        mov              r9, rax
                                                                                        jmp   .Lx537_42
.Lx537_43:
                        cmp              r8, r9
                                                                                        je    .Lx537_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx537_44
                        cmp              eax, 99
                                                                                        je    .Lx537_44
                        cmp              eax, 13
                                                                                        jne   .Lx537_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx537_44
                                                                                        jmp   .Lx537_45
.Lx537_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx537_53
                        cmp              eax, 99
                                                                                        je    .Lx537_53
                        cmp              eax, 13
                                                                                        jne   .Lx537_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx537_53
                                                                                        jmp   .Lx537_46
.Lx537_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx537_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx537_53
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
                                                                                        jmp   .Lx537_51
.Lx537_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx537_47
                        cmp              eax, 99
                                                                                        je    .Lx537_47
                        cmp              eax, 13
                                                                                        jne   .Lx537_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx537_47
                                                                                        jmp   .Lx537_48
.Lx537_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx537_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx537_53
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
                                                                                        jmp   .Lx537_51
.Lx537_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx537_49
                        cmp              edx, 14
                                                                                        je    .Lx537_53
                                                                                        jmp   .Lx537_52
.Lx537_49:
                        cmp              edx, 14
                                                                                        je    .Lx537_52
                        cmp              ecx, 7
                                                                                        je    .Lx537_53
                        cmp              edx, 7
                                                                                        je    .Lx537_53
                        cmp              ecx, 6
                                                                                        jne   .Lx537_50
                        cmp              edx, 6
                                                                                        jne   .Lx537_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx537_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx537_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx537_51
                                                                                        jmp   .Lx537_52
.Lx537_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx537_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx537_53
.Lx537_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx537_54
.Lx537_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx537_54
.Lx537_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx537_54:
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n493_op11_α
                                                                                        jmp   n494_var_ref_α
n492_op11_β:
                                                                                        jmp   n493_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n493_op11_α:
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
                                                                                        je    proc_query$2F1_ω
                                                                                        jmp   proc_query$2F1_ω
n493_op11_β:
                                                                                        jmp   proc_query$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n494_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n495_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n495_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n496_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n496_call_proc_staged_α:
                        mov              qword ptr [rbp + 736], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx544_20
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx544_21
.Lx544_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        call             rt_arg_stage@PLT
.Lx544_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx544_22
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx544_23
.Lx544_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        call             rt_arg_stage@PLT
.Lx544_23:
                        mov              edi, 3
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx544_1
                        lea              rcx, [rip + .Lx544_3]
                        lea              rdx, [rip + .Lx544_4]
                                                                                        jmp   rax
.Lx544_3:
                        mov              qword ptr [rbp + 744], rsp
                        mov              rax, qword ptr [rbp + 736]
                        test             rax, rax
                                                                                        jne   .Lx544_5
                        mov              qword ptr [rbp + 736], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx544_2
.Lx544_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx544_2
.Lx544_4:
                        mov              rax, qword ptr [rbp + 736]
                        test             rax, rax
                                                                                        jne   .Lx544_6
                        mov              qword ptr [rbp + 736], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx544_2
.Lx544_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx544_2
.Lx544_1:
                        call             rt_faildescr@PLT
.Lx544_2:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n493_op11_α
                                                                                        jmp   n497_var_ref_α
n496_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 744]
                                                                                        jmp   qword ptr [rsp]
.Lx544_0:
                        .quad            .Lx544_0_s
.Lx544_0_s:
                        .string          "density/2"
#-----------------------------------------------------------------------------------------------------------------------
n497_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n498_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n498_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n499_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n499_call_proc_staged_α:
                        mov              qword ptr [rbp + 624], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx550_20
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx550_21
.Lx550_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_arg_stage@PLT
.Lx550_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx550_22
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx550_23
.Lx550_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        call             rt_arg_stage@PLT
.Lx550_23:
                        mov              edi, 3
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx550_1
                        lea              rcx, [rip + .Lx550_3]
                        lea              rdx, [rip + .Lx550_4]
                                                                                        jmp   rax
.Lx550_3:
                        mov              qword ptr [rbp + 632], rsp
                        mov              rax, qword ptr [rbp + 624]
                        test             rax, rax
                                                                                        jne   .Lx550_5
                        mov              qword ptr [rbp + 624], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx550_2
.Lx550_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx550_2
.Lx550_4:
                        mov              rax, qword ptr [rbp + 624]
                        test             rax, rax
                                                                                        jne   .Lx550_6
                        mov              qword ptr [rbp + 624], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx550_2
.Lx550_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx550_2
.Lx550_1:
                        call             rt_faildescr@PLT
.Lx550_2:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n496_call_proc_staged_β
                                                                                        jmp   n500_var_α
n499_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 632]
                                                                                        jmp   qword ptr [rsp]
.Lx550_0:
                        .quad            .Lx550_0_s
.Lx550_0_s:
                        .string          "density/2"
#-----------------------------------------------------------------------------------------------------------------------
n500_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n501_var_α
#-----------------------------------------------------------------------------------------------------------------------
n501_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n502_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n502_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n499_call_proc_staged_β
                                                                                        jmp   n503_var_ref_α
n502_op11_β:
                                                                                        jmp   n499_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n503_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n504_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n504_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n505_var_α
.Lx558_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n505_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n506_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n506_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 2
                        call             rt_pl_dop_ax_mul@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n493_op11_α
                                                                                        jmp   n507_op11_α
n506_op11_β:
                                                                                        jmp   n493_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n507_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n499_call_proc_staged_β
                                                                                        jmp   n508_var_ref_α
n507_op11_β:
                                                                                        jmp   n499_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n508_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n509_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n509_lit_integer_α:
                        mov              qword ptr [rbp + 304], 6
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n510_var_α
.Lx565_0:
                        .quad            21
#-----------------------------------------------------------------------------------------------------------------------
n510_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n511_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n511_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 2
                        call             rt_pl_dop_ax_mul@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n493_op11_α
                                                                                        jmp   n512_op11_α
n511_op11_β:
                                                                                        jmp   n493_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n512_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n499_call_proc_staged_β
                                                                                        jmp   n513_var_α
n512_op11_β:
                                                                                        jmp   n499_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n513_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n514_var_α
#-----------------------------------------------------------------------------------------------------------------------
n514_var_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n515_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n515_op11_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_lt@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n499_call_proc_staged_β
                                                                                        jmp   n516_suspend_α
n515_op11_β:
                                                                                        jmp   n499_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n516_suspend_α:
                        lea              rax, [rip + n516_suspend_β]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_query$2F1_γ
n516_suspend_β:
                                                                                        jmp   n499_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_query$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_query$2F1_β:
                                                                                        jmp   qword ptr [rbp + 1328]
#-----------------------------------------------------------------------------------------------------------------------
proc_query$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_query$2F1_res]
                        push             rax
                        mov              rax, [rbp + 1448]
                        mov              rbp, [rbp + 1464]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_query$2F1_ω:
                        mov              rax, [rbp + 1456]
                        lea              rsp, [rbp + 1472]
                        mov              rbp, [rbp + 1464]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pop$2F2_α
proc_pop$2F2_α:
                        .global          proc_pop$2F2_α
                        .global          proc_pop$2F2_β
                        .global          proc_pop$2F2_γ
                        .global          proc_pop$2F2_ω
                        sub              rsp, 5328
                        mov              [rsp + 5304], rcx
                        mov              [rsp + 5312], rdx
                        mov              [rsp + 5320], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 5280
                        mov              edx, 5296
                        call             rt_jmp_frame_lexprep2@PLT
proc_pop$2F2_α_body:
                        lea              rax, [rip + n587_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
#-----------------------------------------------------------------------------------------------------------------------
n577_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx778_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx778_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx778_101
.Lx778_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx778_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n578_var_ref_α
n577_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n578_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5248], rax
                        mov              qword ptr [rbp + 5256], rdx
                                                                                        jmp   n579_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n579_lit_string_α:
                        mov              qword ptr [rbp + 5264], 1
                        mov              rax, qword ptr [rip + .Lx781_0]
                        mov              qword ptr [rbp + 5272], rax
                                                                                        jmp   n580_op11_α
.Lx781_0:
                        .quad            .Lx781_0_s
.Lx781_0_s:
                        .string          "china"
#-----------------------------------------------------------------------------------------------------------------------
n580_op11_α:
                        mov              rax, qword ptr [rbp + 5248]
                        mov              qword ptr [rbp + 5216], rax
                        mov              rax, qword ptr [rbp + 5256]
                        mov              qword ptr [rbp + 5224], rax
                        lea              rdi, [rbp + 5216]
                        mov              rsi, qword ptr [rip + .Lx782_2]
                                                                                        jmp   .Lx782_3
.Lx782_2:
                        .quad            .Lx782_2_s
.Lx782_2_s:
                        .string          "china"
.Lx782_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 5200], rax
                        mov              qword ptr [rbp + 5208], rdx
                        cmp              eax, 99
                                                                                        je    n582_op11_α
                                                                                        jmp   n581_var_ref_α
n580_op11_β:
                                                                                        jmp   n582_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n581_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 5168], rax
                        mov              qword ptr [rbp + 5176], rdx
                                                                                        jmp   n583_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n582_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 5088], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 5096], rax
                        lea              rdi, [rbp + 5088]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n584_var_ref_α
n582_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n583_lit_integer_α:
                        mov              qword ptr [rbp + 5184], 6
                        mov              rax, qword ptr [rip + .Lx786_0]
                        mov              qword ptr [rbp + 5192], rax
                                                                                        jmp   n585_op11_α
.Lx786_0:
                        .quad            8250
#-----------------------------------------------------------------------------------------------------------------------
n584_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5040], rax
                        mov              qword ptr [rbp + 5048], rdx
                                                                                        jmp   n586_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n585_op11_α:
                        mov              rax, qword ptr [rbp + 5168]
                        mov              qword ptr [rbp + 5136], rax
                        mov              rax, qword ptr [rbp + 5176]
                        mov              qword ptr [rbp + 5144], rax
                        lea              rdi, [rbp + 5136]
                        movabs           rsi, 8250
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 5120], rax
                        mov              qword ptr [rbp + 5128], rdx
                        cmp              eax, 99
                                                                                        je    n582_op11_α
                                                                                        jmp   n587_suspend_α
n585_op11_β:
                                                                                        jmp   n582_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n586_lit_string_α:
                        mov              qword ptr [rbp + 5056], 1
                        mov              rax, qword ptr [rip + .Lx790_0]
                        mov              qword ptr [rbp + 5064], rax
                                                                                        jmp   n588_op11_α
.Lx790_0:
                        .quad            .Lx790_0_s
.Lx790_0_s:
                        .string          "india"
#-----------------------------------------------------------------------------------------------------------------------
n587_suspend_α:
                        lea              rax, [rip + n587_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n587_suspend_β:
                                                                                        jmp   n582_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n588_op11_α:
                        mov              rax, qword ptr [rbp + 5040]
                        mov              qword ptr [rbp + 5008], rax
                        mov              rax, qword ptr [rbp + 5048]
                        mov              qword ptr [rbp + 5016], rax
                        lea              rdi, [rbp + 5008]
                        mov              rsi, qword ptr [rip + .Lx793_2]
                                                                                        jmp   .Lx793_3
.Lx793_2:
                        .quad            .Lx793_2_s
.Lx793_2_s:
                        .string          "india"
.Lx793_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx
                        cmp              eax, 99
                                                                                        je    n590_op11_α
                                                                                        jmp   n589_var_ref_α
n588_op11_β:
                                                                                        jmp   n590_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n589_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4960], rax
                        mov              qword ptr [rbp + 4968], rdx
                                                                                        jmp   n591_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n590_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 4880], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 4888], rax
                        lea              rdi, [rbp + 4880]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n592_var_ref_α
n590_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_integer_α:
                        mov              qword ptr [rbp + 4976], 6
                        mov              rax, qword ptr [rip + .Lx797_0]
                        mov              qword ptr [rbp + 4984], rax
                                                                                        jmp   n593_op11_α
.Lx797_0:
                        .quad            5863
#-----------------------------------------------------------------------------------------------------------------------
n592_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4832], rax
                        mov              qword ptr [rbp + 4840], rdx
                                                                                        jmp   n594_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n593_op11_α:
                        mov              rax, qword ptr [rbp + 4960]
                        mov              qword ptr [rbp + 4928], rax
                        mov              rax, qword ptr [rbp + 4968]
                        mov              qword ptr [rbp + 4936], rax
                        lea              rdi, [rbp + 4928]
                        movabs           rsi, 5863
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx
                        cmp              eax, 99
                                                                                        je    n590_op11_α
                                                                                        jmp   n595_suspend_α
n593_op11_β:
                                                                                        jmp   n590_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n594_lit_string_α:
                        mov              qword ptr [rbp + 4848], 1
                        mov              rax, qword ptr [rip + .Lx801_0]
                        mov              qword ptr [rbp + 4856], rax
                                                                                        jmp   n596_op11_α
.Lx801_0:
                        .quad            .Lx801_0_s
.Lx801_0_s:
                        .string          "ussr"
#-----------------------------------------------------------------------------------------------------------------------
n595_suspend_α:
                        lea              rax, [rip + n595_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n595_suspend_β:
                                                                                        jmp   n590_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n596_op11_α:
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 4808], rax
                        lea              rdi, [rbp + 4800]
                        mov              rsi, qword ptr [rip + .Lx804_2]
                                                                                        jmp   .Lx804_3
.Lx804_2:
                        .quad            .Lx804_2_s
.Lx804_2_s:
                        .string          "ussr"
.Lx804_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                        cmp              eax, 99
                                                                                        je    n598_op11_α
                                                                                        jmp   n597_var_ref_α
n596_op11_β:
                                                                                        jmp   n598_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n597_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                                                                                        jmp   n599_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n598_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 4672], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 4680], rax
                        lea              rdi, [rbp + 4672]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 4656], rax
                        mov              qword ptr [rbp + 4664], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n600_var_ref_α
n598_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n599_lit_integer_α:
                        mov              qword ptr [rbp + 4768], 6
                        mov              rax, qword ptr [rip + .Lx808_0]
                        mov              qword ptr [rbp + 4776], rax
                                                                                        jmp   n601_op11_α
.Lx808_0:
                        .quad            2521
#-----------------------------------------------------------------------------------------------------------------------
n600_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4624], rax
                        mov              qword ptr [rbp + 4632], rdx
                                                                                        jmp   n602_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n601_op11_α:
                        mov              rax, qword ptr [rbp + 4752]
                        mov              qword ptr [rbp + 4720], rax
                        mov              rax, qword ptr [rbp + 4760]
                        mov              qword ptr [rbp + 4728], rax
                        lea              rdi, [rbp + 4720]
                        movabs           rsi, 2521
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        cmp              eax, 99
                                                                                        je    n598_op11_α
                                                                                        jmp   n603_suspend_α
n601_op11_β:
                                                                                        jmp   n598_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n602_lit_string_α:
                        mov              qword ptr [rbp + 4640], 1
                        mov              rax, qword ptr [rip + .Lx812_0]
                        mov              qword ptr [rbp + 4648], rax
                                                                                        jmp   n604_op11_α
.Lx812_0:
                        .quad            .Lx812_0_s
.Lx812_0_s:
                        .string          "usa"
#-----------------------------------------------------------------------------------------------------------------------
n603_suspend_α:
                        lea              rax, [rip + n603_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n603_suspend_β:
                                                                                        jmp   n598_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n604_op11_α:
                        mov              rax, qword ptr [rbp + 4624]
                        mov              qword ptr [rbp + 4592], rax
                        mov              rax, qword ptr [rbp + 4632]
                        mov              qword ptr [rbp + 4600], rax
                        lea              rdi, [rbp + 4592]
                        mov              rsi, qword ptr [rip + .Lx815_2]
                                                                                        jmp   .Lx815_3
.Lx815_2:
                        .quad            .Lx815_2_s
.Lx815_2_s:
                        .string          "usa"
.Lx815_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx
                        cmp              eax, 99
                                                                                        je    n606_op11_α
                                                                                        jmp   n605_var_ref_α
n604_op11_β:
                                                                                        jmp   n606_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n605_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4544], rax
                        mov              qword ptr [rbp + 4552], rdx
                                                                                        jmp   n607_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n606_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 4464], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 4472], rax
                        lea              rdi, [rbp + 4464]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 4448], rax
                        mov              qword ptr [rbp + 4456], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n608_var_ref_α
n606_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n607_lit_integer_α:
                        mov              qword ptr [rbp + 4560], 6
                        mov              rax, qword ptr [rip + .Lx819_0]
                        mov              qword ptr [rbp + 4568], rax
                                                                                        jmp   n609_op11_α
.Lx819_0:
                        .quad            2119
#-----------------------------------------------------------------------------------------------------------------------
n608_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4416], rax
                        mov              qword ptr [rbp + 4424], rdx
                                                                                        jmp   n610_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n609_op11_α:
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 4512], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 4520], rax
                        lea              rdi, [rbp + 4512]
                        movabs           rsi, 2119
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                        cmp              eax, 99
                                                                                        je    n606_op11_α
                                                                                        jmp   n611_suspend_α
n609_op11_β:
                                                                                        jmp   n606_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n610_lit_string_α:
                        mov              qword ptr [rbp + 4432], 1
                        mov              rax, qword ptr [rip + .Lx823_0]
                        mov              qword ptr [rbp + 4440], rax
                                                                                        jmp   n612_op11_α
.Lx823_0:
                        .quad            .Lx823_0_s
.Lx823_0_s:
                        .string          "indonesia"
#-----------------------------------------------------------------------------------------------------------------------
n611_suspend_α:
                        lea              rax, [rip + n611_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n611_suspend_β:
                                                                                        jmp   n606_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n612_op11_α:
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 4392], rax
                        lea              rdi, [rbp + 4384]
                        mov              rsi, qword ptr [rip + .Lx826_2]
                                                                                        jmp   .Lx826_3
.Lx826_2:
                        .quad            .Lx826_2_s
.Lx826_2_s:
                        .string          "indonesia"
.Lx826_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx
                        cmp              eax, 99
                                                                                        je    n614_op11_α
                                                                                        jmp   n613_var_ref_α
n612_op11_β:
                                                                                        jmp   n614_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n613_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                                                                                        jmp   n615_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n614_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 4256], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 4264], rax
                        lea              rdi, [rbp + 4256]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n616_var_ref_α
n614_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n615_lit_integer_α:
                        mov              qword ptr [rbp + 4352], 6
                        mov              rax, qword ptr [rip + .Lx830_0]
                        mov              qword ptr [rbp + 4360], rax
                                                                                        jmp   n617_op11_α
.Lx830_0:
                        .quad            1276
#-----------------------------------------------------------------------------------------------------------------------
n616_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx
                                                                                        jmp   n618_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n617_op11_α:
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4312], rax
                        lea              rdi, [rbp + 4304]
                        movabs           rsi, 1276
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                        cmp              eax, 99
                                                                                        je    n614_op11_α
                                                                                        jmp   n619_suspend_α
n617_op11_β:
                                                                                        jmp   n614_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n618_lit_string_α:
                        mov              qword ptr [rbp + 4224], 1
                        mov              rax, qword ptr [rip + .Lx834_0]
                        mov              qword ptr [rbp + 4232], rax
                                                                                        jmp   n620_op11_α
.Lx834_0:
                        .quad            .Lx834_0_s
.Lx834_0_s:
                        .string          "japan"
#-----------------------------------------------------------------------------------------------------------------------
n619_suspend_α:
                        lea              rax, [rip + n619_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n619_suspend_β:
                                                                                        jmp   n614_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n620_op11_α:
                        mov              rax, qword ptr [rbp + 4208]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 4216]
                        mov              qword ptr [rbp + 4184], rax
                        lea              rdi, [rbp + 4176]
                        mov              rsi, qword ptr [rip + .Lx837_2]
                                                                                        jmp   .Lx837_3
.Lx837_2:
                        .quad            .Lx837_2_s
.Lx837_2_s:
                        .string          "japan"
.Lx837_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              eax, 99
                                                                                        je    n622_op11_α
                                                                                        jmp   n621_var_ref_α
n620_op11_β:
                                                                                        jmp   n622_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n621_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   n623_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n622_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 4056], rax
                        lea              rdi, [rbp + 4048]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n624_var_ref_α
n622_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n623_lit_integer_α:
                        mov              qword ptr [rbp + 4144], 6
                        mov              rax, qword ptr [rip + .Lx841_0]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n625_op11_α
.Lx841_0:
                        .quad            1097
#-----------------------------------------------------------------------------------------------------------------------
n624_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                                                                                        jmp   n626_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n625_op11_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4104], rax
                        lea              rdi, [rbp + 4096]
                        movabs           rsi, 1097
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                        cmp              eax, 99
                                                                                        je    n622_op11_α
                                                                                        jmp   n627_suspend_α
n625_op11_β:
                                                                                        jmp   n622_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n626_lit_string_α:
                        mov              qword ptr [rbp + 4016], 1
                        mov              rax, qword ptr [rip + .Lx845_0]
                        mov              qword ptr [rbp + 4024], rax
                                                                                        jmp   n628_op11_α
.Lx845_0:
                        .quad            .Lx845_0_s
.Lx845_0_s:
                        .string          "brazil"
#-----------------------------------------------------------------------------------------------------------------------
n627_suspend_α:
                        lea              rax, [rip + n627_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n627_suspend_β:
                                                                                        jmp   n622_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n628_op11_α:
                        mov              rax, qword ptr [rbp + 4000]
                        mov              qword ptr [rbp + 3968], rax
                        mov              rax, qword ptr [rbp + 4008]
                        mov              qword ptr [rbp + 3976], rax
                        lea              rdi, [rbp + 3968]
                        mov              rsi, qword ptr [rip + .Lx848_2]
                                                                                        jmp   .Lx848_3
.Lx848_2:
                        .quad            .Lx848_2_s
.Lx848_2_s:
                        .string          "brazil"
.Lx848_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        cmp              eax, 99
                                                                                        je    n630_op11_α
                                                                                        jmp   n629_var_ref_α
n628_op11_β:
                                                                                        jmp   n630_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n629_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx
                                                                                        jmp   n631_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n630_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3848], rax
                        lea              rdi, [rbp + 3840]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n632_var_ref_α
n630_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n631_lit_integer_α:
                        mov              qword ptr [rbp + 3936], 6
                        mov              rax, qword ptr [rip + .Lx852_0]
                        mov              qword ptr [rbp + 3944], rax
                                                                                        jmp   n633_op11_α
.Lx852_0:
                        .quad            1042
#-----------------------------------------------------------------------------------------------------------------------
n632_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                                                                                        jmp   n634_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n633_op11_α:
                        mov              rax, qword ptr [rbp + 3920]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 3928]
                        mov              qword ptr [rbp + 3896], rax
                        lea              rdi, [rbp + 3888]
                        movabs           rsi, 1042
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                        cmp              eax, 99
                                                                                        je    n630_op11_α
                                                                                        jmp   n635_suspend_α
n633_op11_β:
                                                                                        jmp   n630_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n634_lit_string_α:
                        mov              qword ptr [rbp + 3808], 1
                        mov              rax, qword ptr [rip + .Lx856_0]
                        mov              qword ptr [rbp + 3816], rax
                                                                                        jmp   n636_op11_α
.Lx856_0:
                        .quad            .Lx856_0_s
.Lx856_0_s:
                        .string          "bangladesh"
#-----------------------------------------------------------------------------------------------------------------------
n635_suspend_α:
                        lea              rax, [rip + n635_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n635_suspend_β:
                                                                                        jmp   n630_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n636_op11_α:
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3768], rax
                        lea              rdi, [rbp + 3760]
                        mov              rsi, qword ptr [rip + .Lx859_2]
                                                                                        jmp   .Lx859_3
.Lx859_2:
                        .quad            .Lx859_2_s
.Lx859_2_s:
                        .string          "bangladesh"
.Lx859_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                        cmp              eax, 99
                                                                                        je    n638_op11_α
                                                                                        jmp   n637_var_ref_α
n636_op11_β:
                                                                                        jmp   n638_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n637_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx
                                                                                        jmp   n639_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n638_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3640], rax
                        lea              rdi, [rbp + 3632]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n640_var_ref_α
n638_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n639_lit_integer_α:
                        mov              qword ptr [rbp + 3728], 6
                        mov              rax, qword ptr [rip + .Lx863_0]
                        mov              qword ptr [rbp + 3736], rax
                                                                                        jmp   n641_op11_α
.Lx863_0:
                        .quad            750
#-----------------------------------------------------------------------------------------------------------------------
n640_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                                                                                        jmp   n642_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n641_op11_α:
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3688], rax
                        lea              rdi, [rbp + 3680]
                        movabs           rsi, 750
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                        cmp              eax, 99
                                                                                        je    n638_op11_α
                                                                                        jmp   n643_suspend_α
n641_op11_β:
                                                                                        jmp   n638_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n642_lit_string_α:
                        mov              qword ptr [rbp + 3600], 1
                        mov              rax, qword ptr [rip + .Lx867_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n644_op11_α
.Lx867_0:
                        .quad            .Lx867_0_s
.Lx867_0_s:
                        .string          "pakistan"
#-----------------------------------------------------------------------------------------------------------------------
n643_suspend_α:
                        lea              rax, [rip + n643_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n643_suspend_β:
                                                                                        jmp   n638_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n644_op11_α:
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3560], rax
                        lea              rdi, [rbp + 3552]
                        mov              rsi, qword ptr [rip + .Lx870_2]
                                                                                        jmp   .Lx870_3
.Lx870_2:
                        .quad            .Lx870_2_s
.Lx870_2_s:
                        .string          "pakistan"
.Lx870_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              eax, 99
                                                                                        je    n646_op11_α
                                                                                        jmp   n645_var_ref_α
n644_op11_β:
                                                                                        jmp   n646_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n645_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                                                                                        jmp   n647_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n646_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3432], rax
                        lea              rdi, [rbp + 3424]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n648_var_ref_α
n646_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n647_lit_integer_α:
                        mov              qword ptr [rbp + 3520], 6
                        mov              rax, qword ptr [rip + .Lx874_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n649_op11_α
.Lx874_0:
                        .quad            682
#-----------------------------------------------------------------------------------------------------------------------
n648_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                                                                                        jmp   n650_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n649_op11_α:
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3480], rax
                        lea              rdi, [rbp + 3472]
                        movabs           rsi, 682
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              eax, 99
                                                                                        je    n646_op11_α
                                                                                        jmp   n651_suspend_α
n649_op11_β:
                                                                                        jmp   n646_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n650_lit_string_α:
                        mov              qword ptr [rbp + 3392], 1
                        mov              rax, qword ptr [rip + .Lx878_0]
                        mov              qword ptr [rbp + 3400], rax
                                                                                        jmp   n652_op11_α
.Lx878_0:
                        .quad            .Lx878_0_s
.Lx878_0_s:
                        .string          "w_germany"
#-----------------------------------------------------------------------------------------------------------------------
n651_suspend_α:
                        lea              rax, [rip + n651_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n651_suspend_β:
                                                                                        jmp   n646_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n652_op11_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3352], rax
                        lea              rdi, [rbp + 3344]
                        mov              rsi, qword ptr [rip + .Lx881_2]
                                                                                        jmp   .Lx881_3
.Lx881_2:
                        .quad            .Lx881_2_s
.Lx881_2_s:
                        .string          "w_germany"
.Lx881_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        cmp              eax, 99
                                                                                        je    n654_op11_α
                                                                                        jmp   n653_var_ref_α
n652_op11_β:
                                                                                        jmp   n654_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n653_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                                                                                        jmp   n655_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n654_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3224], rax
                        lea              rdi, [rbp + 3216]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n656_var_ref_α
n654_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n655_lit_integer_α:
                        mov              qword ptr [rbp + 3312], 6
                        mov              rax, qword ptr [rip + .Lx885_0]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n657_op11_α
.Lx885_0:
                        .quad            620
#-----------------------------------------------------------------------------------------------------------------------
n656_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                                                                                        jmp   n658_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n657_op11_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3272], rax
                        lea              rdi, [rbp + 3264]
                        movabs           rsi, 620
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        cmp              eax, 99
                                                                                        je    n654_op11_α
                                                                                        jmp   n659_suspend_α
n657_op11_β:
                                                                                        jmp   n654_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n658_lit_string_α:
                        mov              qword ptr [rbp + 3184], 1
                        mov              rax, qword ptr [rip + .Lx889_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n660_op11_α
.Lx889_0:
                        .quad            .Lx889_0_s
.Lx889_0_s:
                        .string          "nigeria"
#-----------------------------------------------------------------------------------------------------------------------
n659_suspend_α:
                        lea              rax, [rip + n659_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n659_suspend_β:
                                                                                        jmp   n654_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n660_op11_α:
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3144], rax
                        lea              rdi, [rbp + 3136]
                        mov              rsi, qword ptr [rip + .Lx892_2]
                                                                                        jmp   .Lx892_3
.Lx892_2:
                        .quad            .Lx892_2_s
.Lx892_2_s:
                        .string          "nigeria"
.Lx892_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              eax, 99
                                                                                        je    n662_op11_α
                                                                                        jmp   n661_var_ref_α
n660_op11_β:
                                                                                        jmp   n662_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n661_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                                                                                        jmp   n663_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n662_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3016], rax
                        lea              rdi, [rbp + 3008]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n664_var_ref_α
n662_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n663_lit_integer_α:
                        mov              qword ptr [rbp + 3104], 6
                        mov              rax, qword ptr [rip + .Lx896_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n665_op11_α
.Lx896_0:
                        .quad            613
#-----------------------------------------------------------------------------------------------------------------------
n664_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n666_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n665_op11_α:
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3064], rax
                        lea              rdi, [rbp + 3056]
                        movabs           rsi, 613
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        cmp              eax, 99
                                                                                        je    n662_op11_α
                                                                                        jmp   n667_suspend_α
n665_op11_β:
                                                                                        jmp   n662_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n666_lit_string_α:
                        mov              qword ptr [rbp + 2976], 1
                        mov              rax, qword ptr [rip + .Lx900_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n668_op11_α
.Lx900_0:
                        .quad            .Lx900_0_s
.Lx900_0_s:
                        .string          "mexico"
#-----------------------------------------------------------------------------------------------------------------------
n667_suspend_α:
                        lea              rax, [rip + n667_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n667_suspend_β:
                                                                                        jmp   n662_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n668_op11_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2936], rax
                        lea              rdi, [rbp + 2928]
                        mov              rsi, qword ptr [rip + .Lx903_2]
                                                                                        jmp   .Lx903_3
.Lx903_2:
                        .quad            .Lx903_2_s
.Lx903_2_s:
                        .string          "mexico"
.Lx903_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              eax, 99
                                                                                        je    n670_op11_α
                                                                                        jmp   n669_var_ref_α
n668_op11_β:
                                                                                        jmp   n670_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n669_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                                                                                        jmp   n671_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n670_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2808], rax
                        lea              rdi, [rbp + 2800]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n672_var_ref_α
n670_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n671_lit_integer_α:
                        mov              qword ptr [rbp + 2896], 6
                        mov              rax, qword ptr [rip + .Lx907_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n673_op11_α
.Lx907_0:
                        .quad            581
#-----------------------------------------------------------------------------------------------------------------------
n672_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                                                                                        jmp   n674_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n673_op11_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2856], rax
                        lea              rdi, [rbp + 2848]
                        movabs           rsi, 581
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              eax, 99
                                                                                        je    n670_op11_α
                                                                                        jmp   n675_suspend_α
n673_op11_β:
                                                                                        jmp   n670_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n674_lit_string_α:
                        mov              qword ptr [rbp + 2768], 1
                        mov              rax, qword ptr [rip + .Lx911_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n676_op11_α
.Lx911_0:
                        .quad            .Lx911_0_s
.Lx911_0_s:
                        .string          "uk"
#-----------------------------------------------------------------------------------------------------------------------
n675_suspend_α:
                        lea              rax, [rip + n675_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n675_suspend_β:
                                                                                        jmp   n670_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n676_op11_α:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2728], rax
                        lea              rdi, [rbp + 2720]
                        mov              rsi, qword ptr [rip + .Lx914_2]
                                                                                        jmp   .Lx914_3
.Lx914_2:
                        .quad            .Lx914_2_s
.Lx914_2_s:
                        .string          "uk"
.Lx914_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        cmp              eax, 99
                                                                                        je    n678_op11_α
                                                                                        jmp   n677_var_ref_α
n676_op11_β:
                                                                                        jmp   n678_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n677_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n679_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n678_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2600], rax
                        lea              rdi, [rbp + 2592]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n680_var_ref_α
n678_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n679_lit_integer_α:
                        mov              qword ptr [rbp + 2688], 6
                        mov              rax, qword ptr [rip + .Lx918_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n681_op11_α
.Lx918_0:
                        .quad            559
#-----------------------------------------------------------------------------------------------------------------------
n680_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                                                                                        jmp   n682_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n681_op11_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2648], rax
                        lea              rdi, [rbp + 2640]
                        movabs           rsi, 559
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 99
                                                                                        je    n678_op11_α
                                                                                        jmp   n683_suspend_α
n681_op11_β:
                                                                                        jmp   n678_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n682_lit_string_α:
                        mov              qword ptr [rbp + 2560], 1
                        mov              rax, qword ptr [rip + .Lx922_0]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n684_op11_α
.Lx922_0:
                        .quad            .Lx922_0_s
.Lx922_0_s:
                        .string          "italy"
#-----------------------------------------------------------------------------------------------------------------------
n683_suspend_α:
                        lea              rax, [rip + n683_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n683_suspend_β:
                                                                                        jmp   n678_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n684_op11_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2520], rax
                        lea              rdi, [rbp + 2512]
                        mov              rsi, qword ptr [rip + .Lx925_2]
                                                                                        jmp   .Lx925_3
.Lx925_2:
                        .quad            .Lx925_2_s
.Lx925_2_s:
                        .string          "italy"
.Lx925_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        cmp              eax, 99
                                                                                        je    n686_op11_α
                                                                                        jmp   n685_var_ref_α
n684_op11_β:
                                                                                        jmp   n686_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n685_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n687_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n686_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2392], rax
                        lea              rdi, [rbp + 2384]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n688_var_ref_α
n686_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n687_lit_integer_α:
                        mov              qword ptr [rbp + 2480], 6
                        mov              rax, qword ptr [rip + .Lx929_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n689_op11_α
.Lx929_0:
                        .quad            554
#-----------------------------------------------------------------------------------------------------------------------
n688_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n690_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n689_op11_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2440], rax
                        lea              rdi, [rbp + 2432]
                        movabs           rsi, 554
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              eax, 99
                                                                                        je    n686_op11_α
                                                                                        jmp   n691_suspend_α
n689_op11_β:
                                                                                        jmp   n686_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n690_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              rax, qword ptr [rip + .Lx933_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n692_op11_α
.Lx933_0:
                        .quad            .Lx933_0_s
.Lx933_0_s:
                        .string          "france"
#-----------------------------------------------------------------------------------------------------------------------
n691_suspend_α:
                        lea              rax, [rip + n691_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n691_suspend_β:
                                                                                        jmp   n686_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n692_op11_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2312], rax
                        lea              rdi, [rbp + 2304]
                        mov              rsi, qword ptr [rip + .Lx936_2]
                                                                                        jmp   .Lx936_3
.Lx936_2:
                        .quad            .Lx936_2_s
.Lx936_2_s:
                        .string          "france"
.Lx936_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              eax, 99
                                                                                        je    n694_op11_α
                                                                                        jmp   n693_var_ref_α
n692_op11_β:
                                                                                        jmp   n694_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n693_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n695_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n694_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2184], rax
                        lea              rdi, [rbp + 2176]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n696_var_ref_α
n694_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n695_lit_integer_α:
                        mov              qword ptr [rbp + 2272], 6
                        mov              rax, qword ptr [rip + .Lx940_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n697_op11_α
.Lx940_0:
                        .quad            525
#-----------------------------------------------------------------------------------------------------------------------
n696_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n698_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n697_op11_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2232], rax
                        lea              rdi, [rbp + 2224]
                        movabs           rsi, 525
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 99
                                                                                        je    n694_op11_α
                                                                                        jmp   n699_suspend_α
n697_op11_β:
                                                                                        jmp   n694_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n698_lit_string_α:
                        mov              qword ptr [rbp + 2144], 1
                        mov              rax, qword ptr [rip + .Lx944_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n700_op11_α
.Lx944_0:
                        .quad            .Lx944_0_s
.Lx944_0_s:
                        .string          "philippines"
#-----------------------------------------------------------------------------------------------------------------------
n699_suspend_α:
                        lea              rax, [rip + n699_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n699_suspend_β:
                                                                                        jmp   n694_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n700_op11_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2104], rax
                        lea              rdi, [rbp + 2096]
                        mov              rsi, qword ptr [rip + .Lx947_2]
                                                                                        jmp   .Lx947_3
.Lx947_2:
                        .quad            .Lx947_2_s
.Lx947_2_s:
                        .string          "philippines"
.Lx947_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              eax, 99
                                                                                        je    n702_op11_α
                                                                                        jmp   n701_var_ref_α
n700_op11_β:
                                                                                        jmp   n702_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n701_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n703_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n702_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1976], rax
                        lea              rdi, [rbp + 1968]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n704_var_ref_α
n702_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n703_lit_integer_α:
                        mov              qword ptr [rbp + 2064], 6
                        mov              rax, qword ptr [rip + .Lx951_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n705_op11_α
.Lx951_0:
                        .quad            415
#-----------------------------------------------------------------------------------------------------------------------
n704_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n706_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n705_op11_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                        lea              rdi, [rbp + 2016]
                        movabs           rsi, 415
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n702_op11_α
                                                                                        jmp   n707_suspend_α
n705_op11_β:
                                                                                        jmp   n702_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n706_lit_string_α:
                        mov              qword ptr [rbp + 1936], 1
                        mov              rax, qword ptr [rip + .Lx955_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n708_op11_α
.Lx955_0:
                        .quad            .Lx955_0_s
.Lx955_0_s:
                        .string          "thailand"
#-----------------------------------------------------------------------------------------------------------------------
n707_suspend_α:
                        lea              rax, [rip + n707_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n707_suspend_β:
                                                                                        jmp   n702_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n708_op11_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1896], rax
                        lea              rdi, [rbp + 1888]
                        mov              rsi, qword ptr [rip + .Lx958_2]
                                                                                        jmp   .Lx958_3
.Lx958_2:
                        .quad            .Lx958_2_s
.Lx958_2_s:
                        .string          "thailand"
.Lx958_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n710_op11_α
                                                                                        jmp   n709_var_ref_α
n708_op11_β:
                                                                                        jmp   n710_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n709_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n711_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n710_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1768], rax
                        lea              rdi, [rbp + 1760]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n712_var_ref_α
n710_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n711_lit_integer_α:
                        mov              qword ptr [rbp + 1856], 6
                        mov              rax, qword ptr [rip + .Lx962_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n713_op11_α
.Lx962_0:
                        .quad            410
#-----------------------------------------------------------------------------------------------------------------------
n712_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n714_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n713_op11_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1816], rax
                        lea              rdi, [rbp + 1808]
                        movabs           rsi, 410
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              eax, 99
                                                                                        je    n710_op11_α
                                                                                        jmp   n715_suspend_α
n713_op11_β:
                                                                                        jmp   n710_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n714_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx966_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n716_op11_α
.Lx966_0:
                        .quad            .Lx966_0_s
.Lx966_0_s:
                        .string          "turkey"
#-----------------------------------------------------------------------------------------------------------------------
n715_suspend_α:
                        lea              rax, [rip + n715_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n715_suspend_β:
                                                                                        jmp   n710_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n716_op11_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1688], rax
                        lea              rdi, [rbp + 1680]
                        mov              rsi, qword ptr [rip + .Lx969_2]
                                                                                        jmp   .Lx969_3
.Lx969_2:
                        .quad            .Lx969_2_s
.Lx969_2_s:
                        .string          "turkey"
.Lx969_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n718_op11_α
                                                                                        jmp   n717_var_ref_α
n716_op11_β:
                                                                                        jmp   n718_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n717_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n719_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n718_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1560], rax
                        lea              rdi, [rbp + 1552]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n720_var_ref_α
n718_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n719_lit_integer_α:
                        mov              qword ptr [rbp + 1648], 6
                        mov              rax, qword ptr [rip + .Lx973_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n721_op11_α
.Lx973_0:
                        .quad            383
#-----------------------------------------------------------------------------------------------------------------------
n720_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n722_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n721_op11_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1600]
                        movabs           rsi, 383
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n718_op11_α
                                                                                        jmp   n723_suspend_α
n721_op11_β:
                                                                                        jmp   n718_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n722_lit_string_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              rax, qword ptr [rip + .Lx977_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n724_op11_α
.Lx977_0:
                        .quad            .Lx977_0_s
.Lx977_0_s:
                        .string          "egypt"
#-----------------------------------------------------------------------------------------------------------------------
n723_suspend_α:
                        lea              rax, [rip + n723_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n723_suspend_β:
                                                                                        jmp   n718_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n724_op11_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1472]
                        mov              rsi, qword ptr [rip + .Lx980_2]
                                                                                        jmp   .Lx980_3
.Lx980_2:
                        .quad            .Lx980_2_s
.Lx980_2_s:
                        .string          "egypt"
.Lx980_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n726_op11_α
                                                                                        jmp   n725_var_ref_α
n724_op11_β:
                                                                                        jmp   n726_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n725_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n727_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n726_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1344]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n728_var_ref_α
n726_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n727_lit_integer_α:
                        mov              qword ptr [rbp + 1440], 6
                        mov              rax, qword ptr [rip + .Lx984_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n729_op11_α
.Lx984_0:
                        .quad            364
#-----------------------------------------------------------------------------------------------------------------------
n728_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n730_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n729_op11_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rdi, [rbp + 1392]
                        movabs           rsi, 364
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n726_op11_α
                                                                                        jmp   n731_suspend_α
n729_op11_β:
                                                                                        jmp   n726_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n730_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx988_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n732_op11_α
.Lx988_0:
                        .quad            .Lx988_0_s
.Lx988_0_s:
                        .string          "spain"
#-----------------------------------------------------------------------------------------------------------------------
n731_suspend_α:
                        lea              rax, [rip + n731_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n731_suspend_β:
                                                                                        jmp   n726_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n732_op11_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1264]
                        mov              rsi, qword ptr [rip + .Lx991_2]
                                                                                        jmp   .Lx991_3
.Lx991_2:
                        .quad            .Lx991_2_s
.Lx991_2_s:
                        .string          "spain"
.Lx991_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n734_op11_α
                                                                                        jmp   n733_var_ref_α
n732_op11_β:
                                                                                        jmp   n734_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n733_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n735_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n734_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1136]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n736_var_ref_α
n734_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n735_lit_integer_α:
                        mov              qword ptr [rbp + 1232], 6
                        mov              rax, qword ptr [rip + .Lx995_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n737_op11_α
.Lx995_0:
                        .quad            352
#-----------------------------------------------------------------------------------------------------------------------
n736_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n738_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n737_op11_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1184]
                        movabs           rsi, 352
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n734_op11_α
                                                                                        jmp   n739_suspend_α
n737_op11_β:
                                                                                        jmp   n734_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n738_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx999_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n740_op11_α
.Lx999_0:
                        .quad            .Lx999_0_s
.Lx999_0_s:
                        .string          "poland"
#-----------------------------------------------------------------------------------------------------------------------
n739_suspend_α:
                        lea              rax, [rip + n739_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n739_suspend_β:
                                                                                        jmp   n734_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n740_op11_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1056]
                        mov              rsi, qword ptr [rip + .Lx1002_2]
                                                                                        jmp   .Lx1002_3
.Lx1002_2:
                        .quad            .Lx1002_2_s
.Lx1002_2_s:
                        .string          "poland"
.Lx1002_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n742_op11_α
                                                                                        jmp   n741_var_ref_α
n740_op11_β:
                                                                                        jmp   n742_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n741_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n743_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n742_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n744_var_ref_α
n742_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n743_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 6
                        mov              rax, qword ptr [rip + .Lx1006_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n745_op11_α
.Lx1006_0:
                        .quad            337
#-----------------------------------------------------------------------------------------------------------------------
n744_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n746_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n745_op11_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        movabs           rsi, 337
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n742_op11_α
                                                                                        jmp   n747_suspend_α
n745_op11_β:
                                                                                        jmp   n742_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n746_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx1010_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n748_op11_α
.Lx1010_0:
                        .quad            .Lx1010_0_s
.Lx1010_0_s:
                        .string          "s_korea"
#-----------------------------------------------------------------------------------------------------------------------
n747_suspend_α:
                        lea              rax, [rip + n747_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n747_suspend_β:
                                                                                        jmp   n742_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n748_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              rsi, qword ptr [rip + .Lx1013_2]
                                                                                        jmp   .Lx1013_3
.Lx1013_2:
                        .quad            .Lx1013_2_s
.Lx1013_2_s:
                        .string          "s_korea"
.Lx1013_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n750_op11_α
                                                                                        jmp   n749_var_ref_α
n748_op11_β:
                                                                                        jmp   n750_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n749_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n751_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n750_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n752_var_ref_α
n750_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n751_lit_integer_α:
                        mov              qword ptr [rbp + 816], 6
                        mov              rax, qword ptr [rip + .Lx1017_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n753_op11_α
.Lx1017_0:
                        .quad            335
#-----------------------------------------------------------------------------------------------------------------------
n752_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n754_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n753_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        movabs           rsi, 335
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n750_op11_α
                                                                                        jmp   n755_suspend_α
n753_op11_β:
                                                                                        jmp   n750_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n754_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx1021_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n756_op11_α
.Lx1021_0:
                        .quad            .Lx1021_0_s
.Lx1021_0_s:
                        .string          "iran"
#-----------------------------------------------------------------------------------------------------------------------
n755_suspend_α:
                        lea              rax, [rip + n755_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n755_suspend_β:
                                                                                        jmp   n750_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n756_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              rsi, qword ptr [rip + .Lx1024_2]
                                                                                        jmp   .Lx1024_3
.Lx1024_2:
                        .quad            .Lx1024_2_s
.Lx1024_2_s:
                        .string          "iran"
.Lx1024_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n758_op11_α
                                                                                        jmp   n757_var_ref_α
n756_op11_β:
                                                                                        jmp   n758_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n757_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n759_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n758_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n760_var_ref_α
n758_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n759_lit_integer_α:
                        mov              qword ptr [rbp + 608], 6
                        mov              rax, qword ptr [rip + .Lx1028_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n761_op11_α
.Lx1028_0:
                        .quad            320
#-----------------------------------------------------------------------------------------------------------------------
n760_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n762_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n761_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        movabs           rsi, 320
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n758_op11_α
                                                                                        jmp   n763_suspend_α
n761_op11_β:
                                                                                        jmp   n758_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n762_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx1032_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n764_op11_α
.Lx1032_0:
                        .quad            .Lx1032_0_s
.Lx1032_0_s:
                        .string          "ethiopia"
#-----------------------------------------------------------------------------------------------------------------------
n763_suspend_α:
                        lea              rax, [rip + n763_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n763_suspend_β:
                                                                                        jmp   n758_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n764_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              rsi, qword ptr [rip + .Lx1035_2]
                                                                                        jmp   .Lx1035_3
.Lx1035_2:
                        .quad            .Lx1035_2_s
.Lx1035_2_s:
                        .string          "ethiopia"
.Lx1035_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n766_op11_α
                                                                                        jmp   n765_var_ref_α
n764_op11_β:
                                                                                        jmp   n766_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n765_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n767_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n766_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   n768_var_ref_α
n766_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n767_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx1039_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n769_op11_α
.Lx1039_0:
                        .quad            272
#-----------------------------------------------------------------------------------------------------------------------
n768_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n770_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n769_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        movabs           rsi, 272
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n766_op11_α
                                                                                        jmp   n771_suspend_α
n769_op11_β:
                                                                                        jmp   n766_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n770_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx1043_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n772_op11_α
.Lx1043_0:
                        .quad            .Lx1043_0_s
.Lx1043_0_s:
                        .string          "argentina"
#-----------------------------------------------------------------------------------------------------------------------
n771_suspend_α:
                        lea              rax, [rip + n771_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n771_suspend_β:
                                                                                        jmp   n766_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n772_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        mov              rsi, qword ptr [rip + .Lx1046_2]
                                                                                        jmp   .Lx1046_3
.Lx1046_2:
                        .quad            .Lx1046_2_s
.Lx1046_2_s:
                        .string          "argentina"
.Lx1046_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n774_op11_α
                                                                                        jmp   n773_var_ref_α
n772_op11_β:
                                                                                        jmp   n774_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n773_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n775_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n774_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop$2F2_ω
                                                                                        jmp   proc_pop$2F2_ω
n774_op11_β:
                                                                                        jmp   proc_pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n775_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx1050_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n776_op11_α
.Lx1050_0:
                        .quad            251
#-----------------------------------------------------------------------------------------------------------------------
n776_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        movabs           rsi, 251
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n774_op11_α
                                                                                        jmp   n777_suspend_α
n776_op11_β:
                                                                                        jmp   n774_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n777_suspend_α:
                        lea              rax, [rip + n777_suspend_β]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pop$2F2_γ
n777_suspend_β:
                                                                                        jmp   n774_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_pop$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pop$2F2_β:
                                                                                        jmp   qword ptr [rbp + 5280]
#-----------------------------------------------------------------------------------------------------------------------
proc_pop$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pop$2F2_res]
                        push             rax
                        mov              rax, [rbp + 5304]
                        mov              rbp, [rbp + 5320]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pop$2F2_ω:
                        mov              rax, [rbp + 5312]
                        lea              rsp, [rbp + 5328]
                        mov              rbp, [rbp + 5320]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_density$2F2_α
proc_density$2F2_α:
                        .global          proc_density$2F2_α
                        .global          proc_density$2F2_β
                        .global          proc_density$2F2_γ
                        .global          proc_density$2F2_ω
                        sub              rsp, 848
                        mov              [rsp + 824], rcx
                        mov              [rsp + 832], rdx
                        mov              [rsp + 840], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 736
                        mov              edx, 816
                        call             rt_jmp_frame_lexprep2@PLT
proc_density$2F2_α_body:
                        lea              rax, [rip + n1075_suspend_β]
                        mov              qword ptr [rbp + 736], rax
#-----------------------------------------------------------------------------------------------------------------------
n1054_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1076_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1076_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1076_101
.Lx1076_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1076_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_density$2F2_ω
                                                                                        jmp   n1055_var_ref_α
n1054_op11_β:
                                                                                        jmp   proc_density$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1055_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n1056_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1056_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n1057_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1057_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 672]
                        lea              r8, [rbp + 672]
.Lx1081_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1081_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1081_41
                        cmp              esi, 1
                                                                                        jne   .Lx1081_55
                        mov              r8, rax
                                                                                        jmp   .Lx1081_40
.Lx1081_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1081_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1081_41
                        mov              r8, rax
                                                                                        jmp   .Lx1081_40
.Lx1081_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1081_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1081_41
                        cmp              rax, r8
                                                                                        je    .Lx1081_41
                        mov              r8, rax
                                                                                        jmp   .Lx1081_40
.Lx1081_41:
                        lea              r9, [rbp + 688]
.Lx1081_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1081_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1081_43
                        cmp              esi, 1
                                                                                        jne   .Lx1081_57
                        mov              r9, rax
                                                                                        jmp   .Lx1081_42
.Lx1081_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1081_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1081_43
                        mov              r9, rax
                                                                                        jmp   .Lx1081_42
.Lx1081_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1081_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1081_43
                        cmp              rax, r9
                                                                                        je    .Lx1081_43
                        mov              r9, rax
                                                                                        jmp   .Lx1081_42
.Lx1081_43:
                        cmp              r8, r9
                                                                                        je    .Lx1081_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1081_44
                        cmp              eax, 99
                                                                                        je    .Lx1081_44
                        cmp              eax, 13
                                                                                        jne   .Lx1081_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1081_44
                                                                                        jmp   .Lx1081_45
.Lx1081_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1081_53
                        cmp              eax, 99
                                                                                        je    .Lx1081_53
                        cmp              eax, 13
                                                                                        jne   .Lx1081_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1081_53
                                                                                        jmp   .Lx1081_46
.Lx1081_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1081_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1081_53
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
                                                                                        jmp   .Lx1081_51
.Lx1081_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1081_47
                        cmp              eax, 99
                                                                                        je    .Lx1081_47
                        cmp              eax, 13
                                                                                        jne   .Lx1081_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1081_47
                                                                                        jmp   .Lx1081_48
.Lx1081_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1081_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1081_53
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
                                                                                        jmp   .Lx1081_51
.Lx1081_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1081_49
                        cmp              edx, 14
                                                                                        je    .Lx1081_53
                                                                                        jmp   .Lx1081_52
.Lx1081_49:
                        cmp              edx, 14
                                                                                        je    .Lx1081_52
                        cmp              ecx, 7
                                                                                        je    .Lx1081_53
                        cmp              edx, 7
                                                                                        je    .Lx1081_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1081_50
                        cmp              edx, 6
                                                                                        jne   .Lx1081_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1081_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1081_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1081_51
                                                                                        jmp   .Lx1081_52
.Lx1081_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1081_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1081_53
.Lx1081_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1081_54
.Lx1081_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1081_54
.Lx1081_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1081_54:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n1059_op11_α
                                                                                        jmp   n1058_var_ref_α
n1057_op11_β:
                                                                                        jmp   n1059_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1058_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n1060_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1059_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_density$2F2_ω
                                                                                        jmp   proc_density$2F2_ω
n1059_op11_β:
                                                                                        jmp   proc_density$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1060_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n1061_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1061_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 592]
                        lea              r8, [rbp + 592]
.Lx1087_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1087_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1087_41
                        cmp              esi, 1
                                                                                        jne   .Lx1087_55
                        mov              r8, rax
                                                                                        jmp   .Lx1087_40
.Lx1087_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1087_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1087_41
                        mov              r8, rax
                                                                                        jmp   .Lx1087_40
.Lx1087_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1087_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1087_41
                        cmp              rax, r8
                                                                                        je    .Lx1087_41
                        mov              r8, rax
                                                                                        jmp   .Lx1087_40
.Lx1087_41:
                        lea              r9, [rbp + 608]
.Lx1087_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1087_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1087_43
                        cmp              esi, 1
                                                                                        jne   .Lx1087_57
                        mov              r9, rax
                                                                                        jmp   .Lx1087_42
.Lx1087_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1087_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1087_43
                        mov              r9, rax
                                                                                        jmp   .Lx1087_42
.Lx1087_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1087_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1087_43
                        cmp              rax, r9
                                                                                        je    .Lx1087_43
                        mov              r9, rax
                                                                                        jmp   .Lx1087_42
.Lx1087_43:
                        cmp              r8, r9
                                                                                        je    .Lx1087_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1087_44
                        cmp              eax, 99
                                                                                        je    .Lx1087_44
                        cmp              eax, 13
                                                                                        jne   .Lx1087_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1087_44
                                                                                        jmp   .Lx1087_45
.Lx1087_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1087_53
                        cmp              eax, 99
                                                                                        je    .Lx1087_53
                        cmp              eax, 13
                                                                                        jne   .Lx1087_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1087_53
                                                                                        jmp   .Lx1087_46
.Lx1087_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1087_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1087_53
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
                                                                                        jmp   .Lx1087_51
.Lx1087_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1087_47
                        cmp              eax, 99
                                                                                        je    .Lx1087_47
                        cmp              eax, 13
                                                                                        jne   .Lx1087_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1087_47
                                                                                        jmp   .Lx1087_48
.Lx1087_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1087_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1087_53
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
                                                                                        jmp   .Lx1087_51
.Lx1087_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1087_49
                        cmp              edx, 14
                                                                                        je    .Lx1087_53
                                                                                        jmp   .Lx1087_52
.Lx1087_49:
                        cmp              edx, 14
                                                                                        je    .Lx1087_52
                        cmp              ecx, 7
                                                                                        je    .Lx1087_53
                        cmp              edx, 7
                                                                                        je    .Lx1087_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1087_50
                        cmp              edx, 6
                                                                                        jne   .Lx1087_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1087_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1087_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1087_51
                                                                                        jmp   .Lx1087_52
.Lx1087_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1087_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1087_53
.Lx1087_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1087_54
.Lx1087_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1087_54
.Lx1087_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1087_54:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n1059_op11_α
                                                                                        jmp   n1062_var_ref_α
n1061_op11_β:
                                                                                        jmp   n1059_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1062_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n1063_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1063_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n1064_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1064_call_proc_staged_α:
                        mov              qword ptr [rbp + 512], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1093_20
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1093_21
.Lx1093_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        call             rt_arg_stage@PLT
.Lx1093_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1093_22
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx1093_23
.Lx1093_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        call             rt_arg_stage@PLT
.Lx1093_23:
                        mov              edi, 2
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx1093_1
                        lea              rcx, [rip + .Lx1093_3]
                        lea              rdx, [rip + .Lx1093_4]
                                                                                        jmp   rax
.Lx1093_3:
                        mov              qword ptr [rbp + 520], rsp
                        mov              rax, qword ptr [rbp + 512]
                        test             rax, rax
                                                                                        jne   .Lx1093_5
                        mov              qword ptr [rbp + 512], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1093_2
.Lx1093_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx1093_2
.Lx1093_4:
                        mov              rax, qword ptr [rbp + 512]
                        test             rax, rax
                                                                                        jne   .Lx1093_6
                        mov              qword ptr [rbp + 512], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1093_2
.Lx1093_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx1093_2
.Lx1093_1:
                        call             rt_faildescr@PLT
.Lx1093_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n1059_op11_α
                                                                                        jmp   n1065_var_ref_α
n1064_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 520]
                                                                                        jmp   qword ptr [rsp]
.Lx1093_0:
                        .quad            .Lx1093_0_s
.Lx1093_0_s:
                        .string          "pop/2"
#-----------------------------------------------------------------------------------------------------------------------
n1065_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n1066_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1066_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n1067_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1067_call_proc_staged_α:
                        mov              qword ptr [rbp + 400], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1099_20
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1099_21
.Lx1099_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        call             rt_arg_stage@PLT
.Lx1099_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1099_22
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx1099_23
.Lx1099_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_arg_stage@PLT
.Lx1099_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx1099_1
                        lea              rcx, [rip + .Lx1099_3]
                        lea              rdx, [rip + .Lx1099_4]
                                                                                        jmp   rax
.Lx1099_3:
                        mov              qword ptr [rbp + 408], rsp
                        mov              rax, qword ptr [rbp + 400]
                        test             rax, rax
                                                                                        jne   .Lx1099_5
                        mov              qword ptr [rbp + 400], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1099_2
.Lx1099_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx1099_2
.Lx1099_4:
                        mov              rax, qword ptr [rbp + 400]
                        test             rax, rax
                                                                                        jne   .Lx1099_6
                        mov              qword ptr [rbp + 400], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1099_2
.Lx1099_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx1099_2
.Lx1099_1:
                        call             rt_faildescr@PLT
.Lx1099_2:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n1064_call_proc_staged_β
                                                                                        jmp   n1068_var_ref_α
n1067_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 408]
                                                                                        jmp   qword ptr [rsp]
.Lx1099_0:
                        .quad            .Lx1099_0_s
.Lx1099_0_s:
                        .string          "area/2"
#-----------------------------------------------------------------------------------------------------------------------
n1068_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n1069_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1069_var_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n1070_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1070_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx1104_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n1071_op11_α
.Lx1104_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n1071_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 2
                        call             rt_pl_dop_ax_mul@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n1059_op11_α
                                                                                        jmp   n1072_var_α
n1071_op11_β:
                                                                                        jmp   n1059_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1072_var_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n1073_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1073_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 2
                        call             rt_pl_dop_ax_idiv@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n1059_op11_α
                                                                                        jmp   n1074_op11_α
n1073_op11_β:
                                                                                        jmp   n1059_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1074_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n1067_call_proc_staged_β
                                                                                        jmp   n1075_suspend_α
n1074_op11_β:
                                                                                        jmp   n1067_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1075_suspend_α:
                        lea              rax, [rip + n1075_suspend_β]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_density$2F2_γ
n1075_suspend_β:
                                                                                        jmp   n1067_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_density$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_density$2F2_β:
                                                                                        jmp   qword ptr [rbp + 736]
#-----------------------------------------------------------------------------------------------------------------------
proc_density$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_density$2F2_res]
                        push             rax
                        mov              rax, [rbp + 824]
                        mov              rbp, [rbp + 840]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_density$2F2_ω:
                        mov              rax, [rbp + 832]
                        lea              rsp, [rbp + 848]
                        mov              rbp, [rbp + 840]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "area/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_area$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 5296
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "query/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_query$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1440
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "pop/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_pop$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 5296
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "density/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_density$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 816
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
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
                        sub              rsp, 1064
                        mov              rdi, rsp
                        mov              ecx, 1064
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1056], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1112_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1142_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1142_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1142_101
.Lx1142_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1142_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1113_lit_string_α
n1112_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1113_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx1143_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n1114_var_ref_α
.Lx1143_0:
                        .quad            .Lx1143_0_s
.Lx1143_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1114_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n1115_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1115_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx1146_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n1116_var_ref_α
.Lx1146_0:
                        .quad            .Lx1146_0_s
.Lx1146_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1116_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n1117_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1117_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx1149_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n1118_var_ref_α
.Lx1149_0:
                        .quad            .Lx1149_0_s
.Lx1149_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1118_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n1119_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1119_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx1152_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n1120_var_ref_α
.Lx1152_0:
                        .quad            .Lx1152_0_s
.Lx1152_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1120_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n1121_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1121_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx1155_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n1122_op11_α
.Lx1155_0:
                        .quad            .Lx1155_0_s
.Lx1155_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n1122_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 576]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1123_op11_α
n1122_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1123_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1124_op11_α
n1123_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1124_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1125_op11_α
n1124_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1125_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 912]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n1127_lit_string_α
                                                                                        jmp   n1126_call_proc_staged_α
n1125_op11_β:
                                                                                        jmp   n1127_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1126_call_proc_staged_α:
                        mov              qword ptr [rbp + 496], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1161_20
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1161_21
.Lx1161_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        call             rt_arg_stage@PLT
.Lx1161_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx1161_1
                        lea              rcx, [rip + .Lx1161_3]
                        lea              rdx, [rip + .Lx1161_4]
                                                                                        jmp   rax
.Lx1161_3:
                        mov              qword ptr [rbp + 504], rsp
                        mov              rax, qword ptr [rbp + 496]
                        test             rax, rax
                                                                                        jne   .Lx1161_5
                        mov              qword ptr [rbp + 496], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1161_2
.Lx1161_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx1161_2
.Lx1161_4:
                        mov              rax, qword ptr [rbp + 496]
                        test             rax, rax
                                                                                        jne   .Lx1161_6
                        mov              qword ptr [rbp + 496], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1161_2
.Lx1161_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx1161_2
.Lx1161_1:
                        call             rt_faildescr@PLT
.Lx1161_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n1127_lit_string_α
                                                                                        jmp   n1128_lit_string_α
n1126_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 504]
                                                                                        jmp   qword ptr [rsp]
.Lx1161_0:
                        .quad            .Lx1161_0_s
.Lx1161_0_s:
                        .string          "query/1"
#-----------------------------------------------------------------------------------------------------------------------
n1127_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx1162_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n1129_op11_α
.Lx1162_0:
                        .quad            .Lx1162_0_s
.Lx1162_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1128_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx1163_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n1130_var_ref_α
.Lx1163_0:
                        .quad            .Lx1163_0_s
.Lx1163_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1129_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn1165:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1165]
                        lea              rsi, [rbp + 432]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n1132_op11_α
                                                                                        jmp   n1131_lit_string_α
n1129_op11_β:
                                                                                        jmp   n1132_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1130_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n1133_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1131_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx1168_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1134_op11_α
.Lx1168_0:
                        .quad            .Lx1168_0_s
.Lx1168_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1132_op11_α:
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
n1132_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1133_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx1170_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n1135_var_ref_α
.Lx1170_0:
                        .quad            .Lx1170_0_s
.Lx1170_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1134_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn1172:             .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1172]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n1132_op11_α
                                                                                        jmp   n1136_move_label_α
n1134_op11_β:
                                                                                        jmp   n1132_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1135_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n1137_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1136_move_label_α:
                        lea              rax, [rip + n1132_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n1137_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx1177_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n1139_op11_α
.Lx1177_0:
                        .quad            .Lx1177_0_s
.Lx1177_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n1138_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n1138_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1139_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1140_op11_α
n1139_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1140_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n1132_op11_α
                                                                                        jmp   n1141_op11_α
n1140_op11_β:
                                                                                        jmp   n1132_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1141_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn1183:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1183]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n1132_op11_α
                                                                                        jmp   n1131_lit_string_α
n1141_op11_β:
                                                                                        jmp   n1132_op11_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n1138_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1056]
                        add              rsp, 1064
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1056]
                        add              rsp, 1064
                        ret
                        .section         .note.GNU-stack,"",@progbits
