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
                        sub              rsp, 5448
                        mov              rdi, rsp
                        mov              ecx, 5448
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 5440], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx173_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx173_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx173_101
.Lx173_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx173_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1_lit_string_α
n0_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 5296], 1
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 5304], rax
                                                                                        jmp   n2_lit_integer_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 5072], 6
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rbp + 5080], rax
                                                                                        jmp   n3_lit_string_α
.Lx175_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 5200], 1
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rbp + 5208], rax
                                                                                        jmp   n4_lit_integer_α
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 5088], 6
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 5096], rax
                                                                                        jmp   n5_lit_integer_α
.Lx177_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rbp + 5104], 6
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 5112], rax
                                                                                        jmp   n6_op11_α
.Lx178_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n6_op11_α:
                        mov              rax, qword ptr [rbp + 5200]
                        mov              qword ptr [rbp + 5136], rax
                        mov              rax, qword ptr [rbp + 5208]
                        mov              qword ptr [rbp + 5144], rax
                        mov              rax, qword ptr [rbp + 5088]
                        mov              qword ptr [rbp + 5152], rax
                        mov              rax, qword ptr [rbp + 5096]
                        mov              qword ptr [rbp + 5160], rax
                        mov              rax, qword ptr [rbp + 5104]
                        mov              qword ptr [rbp + 5168], rax
                        mov              rax, qword ptr [rbp + 5112]
                        mov              qword ptr [rbp + 5176], rax
                        lea              rdi, [rbp + 5136]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5120], rax
                        mov              qword ptr [rbp + 5128], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n7_op11_α
n6_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_op11_α:
                        mov              rax, qword ptr [rbp + 5296]
                        mov              qword ptr [rbp + 5232], rax
                        mov              rax, qword ptr [rbp + 5304]
                        mov              qword ptr [rbp + 5240], rax
                        mov              rax, qword ptr [rbp + 5072]
                        mov              qword ptr [rbp + 5248], rax
                        mov              rax, qword ptr [rbp + 5080]
                        mov              qword ptr [rbp + 5256], rax
                        mov              rax, qword ptr [rbp + 5120]
                        mov              qword ptr [rbp + 5264], rax
                        mov              rax, qword ptr [rbp + 5128]
                        mov              qword ptr [rbp + 5272], rax
                        lea              rdi, [rbp + 5232]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5216], rax
                        mov              qword ptr [rbp + 5224], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n8_op11_α
n7_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        mov              rax, qword ptr [rbp + 5216]
                        mov              qword ptr [rbp + 5056], rax
                        mov              rax, qword ptr [rbp + 5224]
                        mov              qword ptr [rbp + 5064], rax
                        .section         .rodata
.Lrkfn182:              .string          "$display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn182]
                        lea              rsi, [rbp + 5056]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5040], rax
                        mov              qword ptr [rbp + 5048], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n10_lit_string_α
n8_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
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
n9_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 5024], 1
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rbp + 5032], rax
                                                                                        jmp   n11_op11_α
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        mov              rax, qword ptr [rbp + 5024]
                        mov              qword ptr [rbp + 5008], rax
                        mov              rax, qword ptr [rbp + 5032]
                        mov              qword ptr [rbp + 5016], rax
                        .section         .rodata
.Lrkfn186:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn186]
                        lea              rsi, [rbp + 5008]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n12_lit_string_α
n11_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 4976], 1
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rbp + 4984], rax
                                                                                        jmp   n13_lit_string_α
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 4864], 1
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 4872], rax
                                                                                        jmp   n14_lit_integer_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 4752], 6
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rbp + 4760], rax
                                                                                        jmp   n15_lit_integer_α
.Lx189_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rbp + 4768], 6
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rbp + 4776], rax
                                                                                        jmp   n16_op11_α
.Lx190_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 4808], rax
                        mov              rax, qword ptr [rbp + 4752]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 4760]
                        mov              qword ptr [rbp + 4824], rax
                        mov              rax, qword ptr [rbp + 4768]
                        mov              qword ptr [rbp + 4832], rax
                        mov              rax, qword ptr [rbp + 4776]
                        mov              qword ptr [rbp + 4840], rax
                        lea              rdi, [rbp + 4800]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n17_lit_integer_α
n16_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:
                        mov              qword ptr [rbp + 4880], 6
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rbp + 4888], rax
                                                                                        jmp   n18_op11_α
.Lx192_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        mov              rax, qword ptr [rbp + 4976]
                        mov              qword ptr [rbp + 4912], rax
                        mov              rax, qword ptr [rbp + 4984]
                        mov              qword ptr [rbp + 4920], rax
                        mov              rax, qword ptr [rbp + 4784]
                        mov              qword ptr [rbp + 4928], rax
                        mov              rax, qword ptr [rbp + 4792]
                        mov              qword ptr [rbp + 4936], rax
                        mov              rax, qword ptr [rbp + 4880]
                        mov              qword ptr [rbp + 4944], rax
                        mov              rax, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 4952], rax
                        lea              rdi, [rbp + 4912]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n19_op11_α
n18_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 4736], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 4744], rax
                        .section         .rodata
.Lrkfn195:              .string          "$display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn195]
                        lea              rsi, [rbp + 4736]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4720], rax
                        mov              qword ptr [rbp + 4728], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n20_lit_string_α
n19_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 4704], 1
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rbp + 4712], rax
                                                                                        jmp   n21_op11_α
.Lx196_0:
                        .quad            .Lx196_0_s
.Lx196_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 4704]
                        mov              qword ptr [rbp + 4688], rax
                        mov              rax, qword ptr [rbp + 4712]
                        mov              qword ptr [rbp + 4696], rax
                        .section         .rodata
.Lrkfn198:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn198]
                        lea              rsi, [rbp + 4688]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4672], rax
                        mov              qword ptr [rbp + 4680], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n22_lit_string_α
n21_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 4656], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 4664], rax
                                                                                        jmp   n23_lit_string_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 4560], 1
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 4568], rax
                                                                                        jmp   n24_lit_string_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        mov              qword ptr [rbp + 4544], 1
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rbp + 4552], rax
                                                                                        jmp   n25_lit_string_α
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 4448], 1
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rbp + 4456], rax
                                                                                        jmp   n26_lit_string_α
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 4432], 1
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rbp + 4440], rax
                                                                                        jmp   n27_lit_string_α
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 4336], 1
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 4344], rax
                                                                                        jmp   n28_lit_string_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 4320], 1
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rbp + 4328], rax
                                                                                        jmp   n29_op11_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 4368], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 4376], rax
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4392], rax
                        mov              rax, qword ptr [rbp + 4320]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 4328]
                        mov              qword ptr [rbp + 4408], rax
                        lea              rdi, [rbp + 4368]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n30_op11_α
n29_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n30_op11_α:
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 4480], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 4488], rax
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 4496], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 4504], rax
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 4512], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 4520], rax
                        lea              rdi, [rbp + 4480]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n31_op11_α
n30_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n31_op11_α:
                        mov              rax, qword ptr [rbp + 4656]
                        mov              qword ptr [rbp + 4592], rax
                        mov              rax, qword ptr [rbp + 4664]
                        mov              qword ptr [rbp + 4600], rax
                        mov              rax, qword ptr [rbp + 4560]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 4616], rax
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 4632], rax
                        lea              rdi, [rbp + 4592]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n32_op11_α
n31_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
                        mov              rax, qword ptr [rbp + 4576]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4584]
                        mov              qword ptr [rbp + 4312], rax
                        .section         .rodata
.Lrkfn210:              .string          "$display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn210]
                        lea              rsi, [rbp + 4304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n33_lit_string_α
n32_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 4272], 1
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rbp + 4280], rax
                                                                                        jmp   n34_op11_α
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
                        mov              rax, qword ptr [rbp + 4272]
                        mov              qword ptr [rbp + 4256], rax
                        mov              rax, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 4264], rax
                        .section         .rodata
.Lrkfn213:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn213]
                        lea              rsi, [rbp + 4256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n35_lit_string_α
n34_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rbp + 4224], 1
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rbp + 4232], rax
                                                                                        jmp   n36_op11_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n36_op11_α:
                        mov              rax, qword ptr [rbp + 4224]
                        mov              qword ptr [rbp + 4208], rax
                        mov              rax, qword ptr [rbp + 4232]
                        mov              qword ptr [rbp + 4216], rax
                        .section         .rodata
.Lrkfn216:              .string          "$display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rbp + 4208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4192], rax
                        mov              qword ptr [rbp + 4200], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n37_lit_string_α
n36_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 4176], 1
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rbp + 4184], rax
                                                                                        jmp   n38_op11_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
                        mov              rax, qword ptr [rbp + 4176]
                        mov              qword ptr [rbp + 4160], rax
                        mov              rax, qword ptr [rbp + 4184]
                        mov              qword ptr [rbp + 4168], rax
                        .section         .rodata
.Lrkfn219:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn219]
                        lea              rsi, [rbp + 4160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n39_lit_string_α
n38_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rbp + 4128], 1
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   n40_op11_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "Foo"
#-----------------------------------------------------------------------------------------------------------------------
n40_op11_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4120], rax
                        .section         .rodata
.Lrkfn222:              .string          "$display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn222]
                        lea              rsi, [rbp + 4112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n41_lit_string_α
n40_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 4080], 1
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rbp + 4088], rax
                                                                                        jmp   n42_op11_α
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n42_op11_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 4064], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 4072], rax
                        .section         .rodata
.Lrkfn225:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn225]
                        lea              rsi, [rbp + 4064]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n43_lit_string_α
n42_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rbp + 4032], 1
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rbp + 4040], rax
                                                                                        jmp   n44_op11_α
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n44_op11_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 4024], rax
                        .section         .rodata
.Lrkfn228:              .string          "$display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]
                        lea              rsi, [rbp + 4016]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n45_lit_string_α
n44_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        mov              qword ptr [rbp + 3984], 1
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rbp + 3992], rax
                                                                                        jmp   n46_op11_α
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n46_op11_α:
                        mov              rax, qword ptr [rbp + 3984]
                        mov              qword ptr [rbp + 3968], rax
                        mov              rax, qword ptr [rbp + 3992]
                        mov              qword ptr [rbp + 3976], rax
                        .section         .rodata
.Lrkfn231:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn231]
                        lea              rsi, [rbp + 3968]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n47_lit_string_α
n46_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rbp + 3936], 1
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rbp + 3944], rax
                                                                                        jmp   n48_lit_string_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 3744], 1
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n49_lit_integer_α
.Lx233_0:
                        .quad            .Lx233_0_s
.Lx233_0_s:
                        .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        mov              qword ptr [rbp + 3664], 6
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n50_op11_α
.Lx234_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n50_op11_α:
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
                                                                                        jmp   n51_lit_string_α
n50_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rbp + 3840], 1
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rbp + 3848], rax
                                                                                        jmp   n52_lit_integer_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "baz"
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        mov              qword ptr [rbp + 3760], 6
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rbp + 3768], rax
                                                                                        jmp   n53_op11_α
.Lx237_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 3800], rax
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3816], rax
                        lea              rdi, [rbp + 3792]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n54_op11_α
n53_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n54_op11_α:
                        mov              rax, qword ptr [rbp + 3936]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 3944]
                        mov              qword ptr [rbp + 3880], rax
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3896], rax
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3912], rax
                        lea              rdi, [rbp + 3872]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n55_op11_α
n54_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n55_op11_α:
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3656], rax
                        .section         .rodata
.Lrkfn241:              .string          "$display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn241]
                        lea              rsi, [rbp + 3648]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n56_lit_string_α
n55_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 3616], 1
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rbp + 3624], rax
                                                                                        jmp   n57_op11_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n57_op11_α:
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3608], rax
                        .section         .rodata
.Lrkfn244:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn244]
                        lea              rsi, [rbp + 3600]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n58_lit_string_α
n57_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        mov              qword ptr [rbp + 3568], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n59_lit_string_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          ":-"
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 3344], 1
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rbp + 3352], rax
                                                                                        jmp   n60_lit_string_α
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 3472], 1
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rbp + 3480], rax
                                                                                        jmp   n61_lit_string_α
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        mov              qword ptr [rbp + 3360], 1
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rbp + 3368], rax
                                                                                        jmp   n62_lit_string_α
.Lx248_0:
                        .quad            .Lx248_0_s
.Lx248_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        mov              qword ptr [rbp + 3376], 1
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n63_op11_α
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n63_op11_α:
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3416], rax
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3432], rax
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3448], rax
                        lea              rdi, [rbp + 3408]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n64_op11_α
n63_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n64_op11_α:
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3512], rax
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 3528], rax
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3544], rax
                        lea              rdi, [rbp + 3504]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n65_op11_α
n64_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n65_op11_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3336], rax
                        .section         .rodata
.Lrkfn253:              .string          "$display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn253]
                        lea              rsi, [rbp + 3328]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n66_lit_string_α
n65_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rbp + 3296], 1
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n67_op11_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n67_op11_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3288], rax
                        .section         .rodata
.Lrkfn256:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn256]
                        lea              rsi, [rbp + 3280]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n68_lit_integer_α
n67_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:
                        mov              qword ptr [rbp + 3248], 6
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   n69_op11_α
.Lx257_0:
                        .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n69_op11_α:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3240], rax
                        .section         .rodata
.Lrkfn259:              .string          "$display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn259]
                        lea              rsi, [rbp + 3232]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n70_lit_string_α
n69_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        mov              qword ptr [rbp + 3200], 1
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n71_op11_α
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n71_op11_α:
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3184], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3192], rax
                        .section         .rodata
.Lrkfn262:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn262]
                        lea              rsi, [rbp + 3184]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n72_var_ref_α
n71_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5360]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                                                                                        jmp   n73_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        mov              qword ptr [rbp + 3152], 1
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n74_var_ref_α
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5392]
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                                                                                        jmp   n75_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5408]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 3040], 1
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   n77_var_ref_α
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "g"
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5392]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                                                                                        jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5424]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                                                                                        jmp   n79_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n79_op11_α:
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 2984], rax
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 3000], rax
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 3016], rax
                        lea              rdi, [rbp + 2976]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n80_op11_α
n79_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n80_op11_α:
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3080], rax
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 3096], rax
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 3112], rax
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 3128], rax
                        lea              rdi, [rbp + 3072]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n81_op11_α
n80_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n81_op11_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2856], rax
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 2872], rax
                        lea              rdi, [rbp + 2848]
                        lea              r8, [rbp + 2848]
.Lx277_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx277_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx277_41
                        cmp              esi, 1
                                                                                        jne   .Lx277_55
                        mov              r8, rax
                                                                                        jmp   .Lx277_40
.Lx277_55:
                        cmp              esi, 2
                                                                                        jne   .Lx277_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx277_41
                        mov              r8, rax
                                                                                        jmp   .Lx277_40
.Lx277_56:
                        cmp              eax, 13
                                                                                        jne   .Lx277_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx277_41
                        cmp              rax, r8
                                                                                        je    .Lx277_41
                        mov              r8, rax
                                                                                        jmp   .Lx277_40
.Lx277_41:
                        lea              r9, [rbp + 2864]
.Lx277_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx277_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx277_43
                        cmp              esi, 1
                                                                                        jne   .Lx277_57
                        mov              r9, rax
                                                                                        jmp   .Lx277_42
.Lx277_57:
                        cmp              esi, 2
                                                                                        jne   .Lx277_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx277_43
                        mov              r9, rax
                                                                                        jmp   .Lx277_42
.Lx277_58:
                        cmp              eax, 13
                                                                                        jne   .Lx277_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx277_43
                        cmp              rax, r9
                                                                                        je    .Lx277_43
                        mov              r9, rax
                                                                                        jmp   .Lx277_42
.Lx277_43:
                        cmp              r8, r9
                                                                                        je    .Lx277_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx277_44
                        cmp              eax, 99
                                                                                        je    .Lx277_44
                        cmp              eax, 13
                                                                                        jne   .Lx277_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx277_44
                                                                                        jmp   .Lx277_45
.Lx277_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx277_53
                        cmp              eax, 99
                                                                                        je    .Lx277_53
                        cmp              eax, 13
                                                                                        jne   .Lx277_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx277_53
                                                                                        jmp   .Lx277_46
.Lx277_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx277_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx277_53
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
                                                                                        jmp   .Lx277_51
.Lx277_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx277_47
                        cmp              eax, 99
                                                                                        je    .Lx277_47
                        cmp              eax, 13
                                                                                        jne   .Lx277_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx277_47
                                                                                        jmp   .Lx277_48
.Lx277_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx277_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx277_53
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
                                                                                        jmp   .Lx277_51
.Lx277_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx277_49
                        cmp              edx, 14
                                                                                        je    .Lx277_53
                                                                                        jmp   .Lx277_52
.Lx277_49:
                        cmp              edx, 14
                                                                                        je    .Lx277_52
                        cmp              ecx, 7
                                                                                        je    .Lx277_53
                        cmp              edx, 7
                                                                                        je    .Lx277_53
                        cmp              ecx, 6
                                                                                        jne   .Lx277_50
                        cmp              edx, 6
                                                                                        jne   .Lx277_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx277_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx277_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx277_51
                                                                                        jmp   .Lx277_52
.Lx277_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx277_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx277_53
.Lx277_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx277_54
.Lx277_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx277_54
.Lx277_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx277_54:
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n82_var_ref_α
n81_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5360]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                                                                                        jmp   n83_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:
                        mov              qword ptr [rbp + 2800], 6
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n84_var_ref_α
.Lx280_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5376]
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                                                                                        jmp   n85_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n85_op11_α:
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
                        .section         .rodata
.Lrkfn284:              .string          "$numbervars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn284]
                        lea              rsi, [rbp + 2736]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n86_var_ref_α
n85_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5360]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n87_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n87_op11_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2696], rax
                        .section         .rodata
.Lrkfn288:              .string          "$display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn288]
                        lea              rsi, [rbp + 2688]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n88_lit_string_α
n87_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rbp + 2656], 1
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n89_op11_α
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n89_op11_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2648], rax
                        .section         .rodata
.Lrkfn291:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn291]
                        lea              rsi, [rbp + 2640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n90_var_ref_α
n89_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5312]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n91_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        mov              qword ptr [rbp + 2608], 1
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n92_lit_string_α
.Lx294_0:
                        .quad            .Lx294_0_s
.Lx294_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        mov              qword ptr [rbp + 2512], 1
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n93_lit_string_α
.Lx295_0:
                        .quad            .Lx295_0_s
.Lx295_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rbp + 2496], 1
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n94_lit_string_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        mov              qword ptr [rbp + 2400], 1
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n95_var_ref_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5344]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   n96_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n96_op11_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2440], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2456], rax
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2472], rax
                        lea              rdi, [rbp + 2432]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n97_op11_α
n96_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n97_op11_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2552], rax
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2568], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2584], rax
                        lea              rdi, [rbp + 2544]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n98_op11_α
n97_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n98_op11_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2344], rax
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2360], rax
                        lea              rdi, [rbp + 2336]
                        lea              r8, [rbp + 2336]
.Lx302_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx302_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx302_41
                        cmp              esi, 1
                                                                                        jne   .Lx302_55
                        mov              r8, rax
                                                                                        jmp   .Lx302_40
.Lx302_55:
                        cmp              esi, 2
                                                                                        jne   .Lx302_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx302_41
                        mov              r8, rax
                                                                                        jmp   .Lx302_40
.Lx302_56:
                        cmp              eax, 13
                                                                                        jne   .Lx302_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx302_41
                        cmp              rax, r8
                                                                                        je    .Lx302_41
                        mov              r8, rax
                                                                                        jmp   .Lx302_40
.Lx302_41:
                        lea              r9, [rbp + 2352]
.Lx302_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx302_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx302_43
                        cmp              esi, 1
                                                                                        jne   .Lx302_57
                        mov              r9, rax
                                                                                        jmp   .Lx302_42
.Lx302_57:
                        cmp              esi, 2
                                                                                        jne   .Lx302_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx302_43
                        mov              r9, rax
                                                                                        jmp   .Lx302_42
.Lx302_58:
                        cmp              eax, 13
                                                                                        jne   .Lx302_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx302_43
                        cmp              rax, r9
                                                                                        je    .Lx302_43
                        mov              r9, rax
                                                                                        jmp   .Lx302_42
.Lx302_43:
                        cmp              r8, r9
                                                                                        je    .Lx302_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx302_44
                        cmp              eax, 99
                                                                                        je    .Lx302_44
                        cmp              eax, 13
                                                                                        jne   .Lx302_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx302_44
                                                                                        jmp   .Lx302_45
.Lx302_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx302_53
                        cmp              eax, 99
                                                                                        je    .Lx302_53
                        cmp              eax, 13
                                                                                        jne   .Lx302_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx302_53
                                                                                        jmp   .Lx302_46
.Lx302_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx302_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx302_53
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
                                                                                        jmp   .Lx302_51
.Lx302_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx302_47
                        cmp              eax, 99
                                                                                        je    .Lx302_47
                        cmp              eax, 13
                                                                                        jne   .Lx302_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx302_47
                                                                                        jmp   .Lx302_48
.Lx302_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx302_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx302_53
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
                                                                                        jmp   .Lx302_51
.Lx302_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx302_49
                        cmp              edx, 14
                                                                                        je    .Lx302_53
                                                                                        jmp   .Lx302_52
.Lx302_49:
                        cmp              edx, 14
                                                                                        je    .Lx302_52
                        cmp              ecx, 7
                                                                                        je    .Lx302_53
                        cmp              edx, 7
                                                                                        je    .Lx302_53
                        cmp              ecx, 6
                                                                                        jne   .Lx302_50
                        cmp              edx, 6
                                                                                        jne   .Lx302_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx302_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx302_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx302_51
                                                                                        jmp   .Lx302_52
.Lx302_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx302_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx302_53
.Lx302_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx302_54
.Lx302_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx302_54
.Lx302_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx302_54:
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n99_var_ref_α
n98_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5312]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n100_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:
                        mov              qword ptr [rbp + 2288], 6
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n101_var_ref_α
.Lx305_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5328]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n102_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n102_op11_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2232], rax
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2264], rax
                        .section         .rodata
.Lrkfn309:              .string          "$numbervars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn309]
                        lea              rsi, [rbp + 2224]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n103_var_ref_α
n102_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5312]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                                                                                        jmp   n104_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n104_op11_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2184], rax
                        .section         .rodata
.Lrkfn313:              .string          "$display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn313]
                        lea              rsi, [rbp + 2176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n105_lit_string_α
n104_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rbp + 2144], 1
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n106_op11_α
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n106_op11_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2136], rax
                        .section         .rodata
.Lrkfn316:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn316]
                        lea              rsi, [rbp + 2128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n107_lit_string_α
n106_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:
                        mov              qword ptr [rbp + 2000], 1
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n108_lit_string_α
.Lx317_0:
                        .quad            .Lx317_0_s
.Lx317_0_s:
                        .string          "user_output"
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        mov              qword ptr [rbp + 2096], 1
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n109_lit_string_α
.Lx318_0:
                        .quad            .Lx318_0_s
.Lx318_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:
                        mov              qword ptr [rbp + 2016], 1
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n110_op11_α
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n110_op11_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2056], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 2072], rax
                        lea              rdi, [rbp + 2048]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n111_op11_α
n110_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n111_op11_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1992], rax
                        .section         .rodata
.Lrkfn322:              .string          "$display2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn322]
                        lea              rsi, [rbp + 1968]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n112_lit_string_α
n111_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:
                        mov              qword ptr [rbp + 1936], 1
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n113_op11_α
.Lx323_0:
                        .quad            .Lx323_0_s
.Lx323_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n113_op11_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1928], rax
                        .section         .rodata
.Lrkfn325:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn325]
                        lea              rsi, [rbp + 1920]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n114_lit_string_α
n113_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        mov              qword ptr [rbp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n115_lit_integer_α
.Lx326_0:
                        .quad            .Lx326_0_s
.Lx326_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:
                        mov              qword ptr [rbp + 1664], 6
                        mov              rax, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n116_lit_string_α
.Lx327_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        mov              qword ptr [rbp + 1792], 1
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n117_lit_integer_α
.Lx328_0:
                        .quad            .Lx328_0_s
.Lx328_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:
                        mov              qword ptr [rbp + 1680], 6
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n118_lit_integer_α
.Lx329_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:
                        mov              qword ptr [rbp + 1696], 6
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n119_op11_α
.Lx330_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n119_op11_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1688]
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
                                                                                        je    main_ω
                                                                                        jmp   n120_op11_α
n119_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n120_op11_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1864], rax
                        lea              rdi, [rbp + 1824]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n121_op11_α
n120_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n121_op11_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1656], rax
                        .section         .rodata
.Lrkfn334:              .string          "$print"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn334]
                        lea              rsi, [rbp + 1648]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n122_lit_string_α
n121_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:
                        mov              qword ptr [rbp + 1616], 1
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n123_op11_α
.Lx335_0:
                        .quad            .Lx335_0_s
.Lx335_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n123_op11_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1608], rax
                        .section         .rodata
.Lrkfn337:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn337]
                        lea              rsi, [rbp + 1600]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n124_lit_string_α
n123_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              rax, qword ptr [rip + .Lx338_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n125_lit_string_α
.Lx338_0:
                        .quad            .Lx338_0_s
.Lx338_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rbp + 1472], 1
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n126_lit_string_α
.Lx339_0:
                        .quad            .Lx339_0_s
.Lx339_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        mov              qword ptr [rbp + 1456], 1
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n127_lit_string_α
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n128_lit_string_α
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n129_lit_string_α
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n130_lit_string_α
.Lx343_0:
                        .quad            .Lx343_0_s
.Lx343_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n131_op11_α
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n131_op11_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1280]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n132_op11_α
n131_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n132_op11_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rdi, [rbp + 1392]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n133_op11_α
n132_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n133_op11_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1544], rax
                        lea              rdi, [rbp + 1504]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n134_op11_α
n133_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n134_op11_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn349:              .string          "$print"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn349]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n135_lit_string_α
n134_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n136_op11_α
.Lx350_0:
                        .quad            .Lx350_0_s
.Lx350_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n136_op11_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lrkfn352:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn352]
                        lea              rsi, [rbp + 1168]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n137_lit_string_α
n136_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n138_op11_α
.Lx353_0:
                        .quad            .Lx353_0_s
.Lx353_0_s:
                        .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n138_op11_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1128], rax
                        .section         .rodata
.Lrkfn355:              .string          "$print"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn355]
                        lea              rsi, [rbp + 1120]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n139_lit_string_α
n138_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n140_op11_α
.Lx356_0:
                        .quad            .Lx356_0_s
.Lx356_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n140_op11_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn358:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn358]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n141_lit_string_α
n140_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n142_lit_string_α
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n143_lit_integer_α
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n144_op11_α
.Lx361_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n144_op11_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n145_lit_string_α
n144_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n146_lit_integer_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
                        .string          "baz"
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:
                        mov              qword ptr [rbp + 864], 6
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n147_op11_α
.Lx364_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n147_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n148_op11_α
n147_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n148_op11_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 976]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n149_op11_α
n148_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n149_op11_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn368:              .string          "$print"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn368]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n150_lit_string_α
n149_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n151_op11_α
.Lx369_0:
                        .quad            .Lx369_0_s
.Lx369_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n151_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn371:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn371]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n152_lit_string_α
n151_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx372_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n153_lit_string_α
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          "user_output"
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n154_lit_string_α
.Lx373_0:
                        .quad            .Lx373_0_s
.Lx373_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n155_lit_string_α
.Lx374_0:
                        .quad            .Lx374_0_s
.Lx374_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n156_lit_string_α
.Lx375_0:
                        .quad            .Lx375_0_s
.Lx375_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n157_lit_string_α
.Lx376_0:
                        .quad            .Lx376_0_s
.Lx376_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n158_lit_string_α
.Lx377_0:
                        .quad            .Lx377_0_s
.Lx377_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n159_lit_string_α
.Lx378_0:
                        .quad            .Lx378_0_s
.Lx378_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n160_op11_α
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n160_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 384]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n161_op11_α
n160_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n161_op11_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n162_op11_α
n161_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n162_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n163_op11_α
n162_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n163_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn384:              .string          "$print2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn384]
                        lea              rsi, [rbp + 288]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n164_lit_string_α
n163_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n165_op11_α
.Lx385_0:
                        .quad            .Lx385_0_s
.Lx385_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n165_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn387:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn387]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n166_lit_string_α
n165_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n167_op11_α
.Lx388_0:
                        .quad            .Lx388_0_s
.Lx388_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n167_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn390:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn390]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n168_lit_string_α
n167_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n169_op11_α
.Lx391_0:
                        .quad            .Lx391_0_s
.Lx391_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n169_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn393:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn393]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n170_call_proc_staged_α
n169_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n170_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx395_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx395_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx395_3]
                        lea              rdx, [rip + .Lx395_4]
                                                                                        jmp   rax
.Lx395_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx395_2
.Lx395_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx395_2
.Lx395_1:
                        call             rt_faildescr@PLT
.Lx395_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n171_move_label_α
n170_call_proc_staged_β:
                                                                                        jmp   n9_op11_α
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
                        .string          "halt/0"
#-----------------------------------------------------------------------------------------------------------------------
n171_move_label_α:
                        lea              rax, [rip + n170_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n172_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n172_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n172_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 5440]
                        add              rsp, 5448
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 5440]
                        add              rsp, 5448
                        ret
                        .section         .note.GNU-stack,"",@progbits
