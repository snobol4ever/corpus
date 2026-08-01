                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__jlab_α
proc_LBL__jlab_α:
proc_LBL__jlab_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                                                                                        jmp   n1_lit_string_α
n0_goto_β:
                                                                                        jmp   proc_LBL__jlab_ω
#=======================================================================================================================
# jlab    DEFINE('jlab(a,b,c)d,e,f')
#         DIFFER(ARG(.jlab, 1), 'A')                   :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rsp + 176], 1
                        mov              dword ptr [rsp + 180], 4
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n2_call_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "jlab"
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn62:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn62]
                        lea              rsi, [rsp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n9_lit_string_α
                                                                                        jmp   n3_lit_integer_α
n2_call_β:
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rsp + 192], 6
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n4_call_α
.Lx63_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lbynamefn5:            .string          "ARG"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn5]
                        lea              rsi, [rsp + 80]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n9_lit_string_α
                                                                                        jmp   n5_lit_string_α
n4_call_β:
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rsp + 208], 1
                        mov              dword ptr [rsp + 212], 1
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n6_call_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n6_call_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn67:               .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn67]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n9_lit_string_α
                                                                                        jmp   n7_lit_string_α
n6_call_β:
                                                                                        jmp   n9_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1017/001: ARG(.jlab,1) = A'     :(END)
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rsp + 240], 1
                        mov              dword ptr [rsp + 244], 31
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 248], rax
                                                                                        jmp   n8_assign_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "FAIL 1017/001: ARG(.jlab,1) = A"
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              rdi, qword ptr [rip + .Lx69_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   proc_LBL__jlab_γ
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(ARG(.jlab, 3), 'C')                   :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rsp + 432], 1
                        mov              dword ptr [rsp + 436], 4
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n10_call_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "jlab"
#-----------------------------------------------------------------------------------------------------------------------
n10_call_α:
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn72:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn72]
                        lea              rsi, [rsp + 400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n17_lit_string_α
                                                                                        jmp   n11_lit_integer_α
n10_call_β:
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rsp + 448], 6
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n12_call_α
.Lx73_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n12_call_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lbynamefn13:           .string          "ARG"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn13]
                        lea              rsi, [rsp + 336]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n17_lit_string_α
                                                                                        jmp   n13_lit_string_α
n12_call_β:
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rsp + 464], 1
                        mov              dword ptr [rsp + 468], 1
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rsp + 472], rax
                                                                                        jmp   n14_call_α
.Lx75_0:
                        .quad            .Lx75_0_s
.Lx75_0_s:
                        .string          "C"
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn77:               .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn77]
                        lea              rsi, [rsp + 272]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n17_lit_string_α
                                                                                        jmp   n15_lit_string_α
n14_call_β:
                                                                                        jmp   n17_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1017/002: ARG(.jlab,3) = C'     :(END)
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rsp + 480], 1
                        mov              dword ptr [rsp + 484], 31
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 488], rax
                                                                                        jmp   n16_assign_α
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "FAIL 1017/002: ARG(.jlab,3) = C"
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rsi, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              rdi, qword ptr [rip + .Lx79_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   proc_LBL__jlab_γ
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         ARG(.jlab, 0)              :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rsp + 608], 1
                        mov              dword ptr [rsp + 612], 4
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rsp + 616], rax
                                                                                        jmp   n18_call_α
.Lx80_0:
                        .quad            .Lx80_0_s
.Lx80_0_s:
                        .string          "jlab"
#-----------------------------------------------------------------------------------------------------------------------
n18_call_α:
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn82:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn82]
                        lea              rsi, [rsp + 576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n23_lit_string_α
                                                                                        jmp   n19_lit_integer_α
n18_call_β:
                                                                                        jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rsp + 624], 6
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 632], rax
                                                                                        jmp   n20_call_α
.Lx83_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lbynamefn21:           .string          "ARG"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn21]
                        lea              rsi, [rsp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n23_lit_string_α
                                                                                        jmp   n21_lit_string_α
n20_call_β:
                                                                                        jmp   n23_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1017/003: ARG(.jlab,0) OOB should fail' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        mov              qword ptr [rsp + 640], 1
                        mov              dword ptr [rsp + 644], 43
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 648], rax
                                                                                        jmp   n22_assign_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "FAIL 1017/003: ARG(.jlab,0) OOB should fail"
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:
                        mov              rsi, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              rdi, qword ptr [rip + .Lx86_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   proc_LBL__jlab_γ
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         ARG(.jlab, 4)              :f(e004)
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rsp + 768], 1
                        mov              dword ptr [rsp + 772], 4
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 776], rax
                                                                                        jmp   n24_call_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "jlab"
#-----------------------------------------------------------------------------------------------------------------------
n24_call_α:
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lrkfn89:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn89]
                        lea              rsi, [rsp + 736]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n29_lit_string_α
                                                                                        jmp   n25_lit_integer_α
n24_call_β:
                                                                                        jmp   n29_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        mov              qword ptr [rsp + 784], 6
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rsp + 792], rax
                                                                                        jmp   n26_call_α
.Lx90_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n26_call_α:
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 696], rax
                        .section         .rodata
.Lbynamefn27:           .string          "ARG"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn27]
                        lea              rsi, [rsp + 672]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n29_lit_string_α
                                                                                        jmp   n27_lit_string_α
n26_call_β:
                                                                                        jmp   n29_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1017/004: ARG(.jlab,4) OOB should fail' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rsp + 800], 1
                        mov              dword ptr [rsp + 804], 43
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 808], rax
                                                                                        jmp   n28_assign_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "FAIL 1017/004: ARG(.jlab,4) OOB should fail"
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:
                        mov              rsi, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              rdi, qword ptr [rip + .Lx93_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   proc_LBL__jlab_γ
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(local(.jlab, 1), 'D')                   :f(e005)
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rsp + 992], 1
                        mov              dword ptr [rsp + 996], 4
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 1000], rax
                                                                                        jmp   n30_call_α
.Lx94_0:
                        .quad            .Lx94_0_s
.Lx94_0_s:
                        .string          "jlab"
#-----------------------------------------------------------------------------------------------------------------------
n30_call_α:
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax
                        .section         .rodata
.Lrkfn96:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn96]
                        lea              rsi, [rsp + 960]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n37_lit_string_α
                                                                                        jmp   n31_lit_integer_α
n30_call_β:
                                                                                        jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        mov              qword ptr [rsp + 1008], 6
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 1016], rax
                                                                                        jmp   n32_call_α
.Lx97_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n32_call_α:
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 920], rax
                        .section         .rodata
.Lbynamefn33:           .string          "local"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn33]
                        lea              rsi, [rsp + 896]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n37_lit_string_α
                                                                                        jmp   n33_lit_string_α
n32_call_β:
                                                                                        jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rsp + 1024], 1
                        mov              dword ptr [rsp + 1028], 1
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 1032], rax
                                                                                        jmp   n34_call_α
.Lx99_0:
                        .quad            .Lx99_0_s
.Lx99_0_s:
                        .string          "D"
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 856], rax
                        .section         .rodata
.Lrkfn101:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn101]
                        lea              rsi, [rsp + 832]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n37_lit_string_α
                                                                                        jmp   n35_lit_string_α
n34_call_β:
                                                                                        jmp   n37_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1017/005: local(.jlab,1) = D'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rsp + 1040], 1
                        mov              dword ptr [rsp + 1044], 33
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rsp + 1048], rax
                                                                                        jmp   n36_assign_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "FAIL 1017/005: local(.jlab,1) = D"
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:
                        mov              rsi, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        mov              rdi, qword ptr [rip + .Lx103_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   proc_LBL__jlab_γ
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(local(.jlab, 3), 'F')                   :f(e006)
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rsp + 1232], 1
                        mov              dword ptr [rsp + 1236], 4
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 1240], rax
                                                                                        jmp   n38_call_α
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "jlab"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1208], rax
                        .section         .rodata
.Lrkfn106:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn106]
                        lea              rsi, [rsp + 1200]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n45_lit_string_α
                                                                                        jmp   n39_lit_integer_α
n38_call_β:
                                                                                        jmp   n45_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:
                        mov              qword ptr [rsp + 1248], 6
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 1256], rax
                                                                                        jmp   n40_call_α
.Lx107_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n40_call_α:
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1160], rax
                        .section         .rodata
.Lbynamefn41:           .string          "local"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn41]
                        lea              rsi, [rsp + 1136]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n45_lit_string_α
                                                                                        jmp   n41_lit_string_α
n40_call_β:
                                                                                        jmp   n45_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rsp + 1264], 1
                        mov              dword ptr [rsp + 1268], 1
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rsp + 1272], rax
                                                                                        jmp   n42_call_α
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n42_call_α:
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1096], rax
                        .section         .rodata
.Lrkfn111:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn111]
                        lea              rsi, [rsp + 1072]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n45_lit_string_α
                                                                                        jmp   n43_lit_string_α
n42_call_β:
                                                                                        jmp   n45_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1017/006: local(.jlab,3) = F'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rsp + 1280], 1
                        mov              dword ptr [rsp + 1284], 33
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 1288], rax
                                                                                        jmp   n44_assign_α
.Lx112_0:
                        .quad            .Lx112_0_s
.Lx112_0_s:
                        .string          "FAIL 1017/006: local(.jlab,3) = F"
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:
                        mov              rsi, qword ptr [rsp + 1280]
                        mov              rdx, qword ptr [rsp + 1288]
                        mov              rdi, qword ptr [rip + .Lx113_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   proc_LBL__jlab_γ
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         local(.jlab, 0)            :f(e007)
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        mov              qword ptr [rsp + 1408], 1
                        mov              dword ptr [rsp + 1412], 4
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 1416], rax
                                                                                        jmp   n46_call_α
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "jlab"
#-----------------------------------------------------------------------------------------------------------------------
n46_call_α:
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1384], rax
                        .section         .rodata
.Lrkfn116:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn116]
                        lea              rsi, [rsp + 1376]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    n51_lit_string_α
                                                                                        jmp   n47_lit_integer_α
n46_call_β:
                                                                                        jmp   n51_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        mov              qword ptr [rsp + 1424], 6
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 1432], rax
                                                                                        jmp   n48_call_α
.Lx117_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n48_call_α:
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1320], rax
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1336], rax
                        .section         .rodata
.Lbynamefn49:           .string          "local"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn49]
                        lea              rsi, [rsp + 1312]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n51_lit_string_α
                                                                                        jmp   n49_lit_string_α
n48_call_β:
                                                                                        jmp   n51_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1017/007: local(.jlab,0) OOB should fail' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        mov              qword ptr [rsp + 1440], 1
                        mov              dword ptr [rsp + 1444], 45
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 1448], rax
                                                                                        jmp   n50_assign_α
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "FAIL 1017/007: local(.jlab,0) OOB should fail"
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rsi, qword ptr [rsp + 1440]
                        mov              rdx, qword ptr [rsp + 1448]
                        mov              rdi, qword ptr [rip + .Lx120_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   proc_LBL__jlab_γ
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         local(.jlab, 4)            :f(e008)
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rsp + 1568], 1
                        mov              dword ptr [rsp + 1572], 4
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rsp + 1576], rax
                                                                                        jmp   n52_call_α
.Lx121_0:
                        .quad            .Lx121_0_s
.Lx121_0_s:
                        .string          "jlab"
#-----------------------------------------------------------------------------------------------------------------------
n52_call_α:
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1544], rax
                        .section         .rodata
.Lrkfn123:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn123]
                        lea              rsi, [rsp + 1536]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n57_lit_string_α
                                                                                        jmp   n53_lit_integer_α
n52_call_β:
                                                                                        jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:
                        mov              qword ptr [rsp + 1584], 6
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rsp + 1592], rax
                                                                                        jmp   n54_call_α
.Lx124_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1480], rax
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1496], rax
                        .section         .rodata
.Lbynamefn55:           .string          "local"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn55]
                        lea              rsi, [rsp + 1472]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n57_lit_string_α
                                                                                        jmp   n55_lit_string_α
n54_call_β:
                                                                                        jmp   n57_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1017/008: local(.jlab,4) OOB should fail' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rsp + 1600], 1
                        mov              dword ptr [rsp + 1604], 45
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 1608], rax
                                                                                        jmp   n56_assign_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "FAIL 1017/008: local(.jlab,4) OOB should fail"
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_α:
                        mov              rsi, qword ptr [rsp + 1600]
                        mov              rdx, qword ptr [rsp + 1608]
                        mov              rdi, qword ptr [rip + .Lx127_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   proc_LBL__jlab_γ
.Lx127_0:
                        .quad            .Lx127_0_s
.Lx127_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'PASS 1017_arg_local (8/8)'
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rsp + 1616], 1
                        mov              dword ptr [rsp + 1620], 25
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 1624], rax
                                                                                        jmp   n58_assign_α
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "PASS 1017_arg_local (8/8)"
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:
                        mov              rsi, qword ptr [rsp + 1616]
                        mov              rdx, qword ptr [rsp + 1624]
                        mov              rdi, qword ptr [rip + .Lx129_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   proc_LBL__jlab_γ
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__jlab_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__jlab_β:
                                                                                        jmp   proc_LBL__jlab_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__jlab_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__jlab_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_jlab_α
proc_jlab_α:
proc_jlab_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n130_save_restore_α:
                        mov              rdi, rcx
                        mov              rsi, rdx
                        lea              rdx, [rsp + 0]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n131_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n131_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx135_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx135_1
.Lx135_0:
                        .quad            .Lx135_0_s
.Lx135_0_s:
                        .string          "jlab"
.Lx135_1:
                                                                                        jmp   proc_jlab_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_jlab_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_jlab_β:
                                                                                        jmp   proc_jlab_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_jlab_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_jlab_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__jlab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__jlab_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1632
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "jlab"
.Lstartup_pp1_0:        .string          "a"
.Lstartup_pp1_1:        .string          "b"
.Lstartup_pp1_2:        .string          "c"
.Lstartup_pp1_3:        .string          "d"
.Lstartup_pp1_4:        .string          "e"
.Lstartup_pp1_5:        .string          "f"
                        .align           8
.Lstartup_pnames1:
                        .quad            .Lstartup_pp1_0
                        .quad            .Lstartup_pp1_1
                        .quad            .Lstartup_pp1_2
                        .quad            .Lstartup_pp1_3
                        .quad            .Lstartup_pp1_4
                        .quad            .Lstartup_pp1_5
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + .Lstartup_pnames1]
                        mov              edx, 6
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_jlab_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 6
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 3
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "jlab"
.Lgvan1:                .string          "a"
.Lgvan2:                .string          "b"
.Lgvan3:                .string          "c"
.Lgvan4:                .string          "d"
.Lgvan5:                .string          "e"
.Lgvan6:                .string          "f"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 7
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 7
                        call             gva_register@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
# jlab    DEFINE('jlab(a,b,c)d,e,f')
#         DIFFER(ARG(.jlab, 1), 'A')                   :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n137_call_α
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "jlab"
#-----------------------------------------------------------------------------------------------------------------------
n137_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd205:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd205]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx204_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n144_lit_string_α
.Lx204_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n138_lit_integer_α
n137_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n144_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n139_call_α
.Lx206_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n139_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lbynamefnzd5:          .string          "ARG"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd5]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx207_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n144_lit_string_α
.Lx207_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n140_lit_string_α
n139_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n144_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n141_call_α
.Lx208_0:
                        .quad            .Lx208_0_s
.Lx208_0_s:
                        .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n141_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd210:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd210]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx209_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n144_lit_string_α
.Lx209_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 96
                                                                                        jmp   n142_lit_string_α
n141_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n144_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1017/001: ARG(.jlab,1) = A'     :(END)
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n143_assign_α
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          "FAIL 1017/001: ARG(.jlab,1) = A"
#-----------------------------------------------------------------------------------------------------------------------
n143_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx212_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(ARG(.jlab, 3), 'C')                   :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n145_call_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "jlab"
#-----------------------------------------------------------------------------------------------------------------------
n145_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd215:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd215]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx214_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n152_lit_string_α
.Lx214_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n146_lit_integer_α
n145_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n152_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n147_call_α
.Lx216_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n147_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lbynamefnzd13:         .string          "ARG"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd13]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx217_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n152_lit_string_α
.Lx217_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n148_lit_string_α
n147_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n152_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n149_call_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "C"
#-----------------------------------------------------------------------------------------------------------------------
n149_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd220:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd220]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx219_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n152_lit_string_α
.Lx219_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 96
                                                                                        jmp   n150_lit_string_α
n149_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n152_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1017/002: ARG(.jlab,3) = C'     :(END)
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n151_assign_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "FAIL 1017/002: ARG(.jlab,3) = C"
#-----------------------------------------------------------------------------------------------------------------------
n151_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx222_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx222_0:
                        .quad            .Lx222_0_s
.Lx222_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         ARG(.jlab, 0)              :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n153_call_α
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          "jlab"
#-----------------------------------------------------------------------------------------------------------------------
n153_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd225:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd225]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx224_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n158_lit_string_α
.Lx224_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n154_lit_integer_α
n153_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n158_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n155_call_α
.Lx226_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n155_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lbynamefnzd21:         .string          "ARG"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd21]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx227_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n158_lit_string_α
.Lx227_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 64
                                                                                        jmp   n156_lit_string_α
n155_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n158_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1017/003: ARG(.jlab,0) OOB should fail' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 43
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n157_assign_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "FAIL 1017/003: ARG(.jlab,0) OOB should fail"
#-----------------------------------------------------------------------------------------------------------------------
n157_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx229_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         ARG(.jlab, 4)              :f(e004)
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n159_call_α
.Lx230_0:
                        .quad            .Lx230_0_s
.Lx230_0_s:
                        .string          "jlab"
#-----------------------------------------------------------------------------------------------------------------------
n159_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd232:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd232]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx231_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n164_lit_string_α
.Lx231_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n160_lit_integer_α
n159_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n164_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n161_call_α
.Lx233_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n161_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lbynamefnzd27:         .string          "ARG"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd27]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx234_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n164_lit_string_α
.Lx234_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 64
                                                                                        jmp   n162_lit_string_α
n161_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n164_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1017/004: ARG(.jlab,4) OOB should fail' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 43
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n163_assign_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "FAIL 1017/004: ARG(.jlab,4) OOB should fail"
#-----------------------------------------------------------------------------------------------------------------------
n163_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx236_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(local(.jlab, 1), 'D')                   :f(e005)
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n165_call_α
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "jlab"
#-----------------------------------------------------------------------------------------------------------------------
n165_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd239:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd239]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx238_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n172_lit_string_α
.Lx238_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n166_lit_integer_α
n165_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n172_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n167_call_α
.Lx240_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n167_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lbynamefnzd33:         .string          "local"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd33]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx241_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n172_lit_string_α
.Lx241_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n168_lit_string_α
n167_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n172_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n169_call_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "D"
#-----------------------------------------------------------------------------------------------------------------------
n169_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd244:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd244]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx243_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n172_lit_string_α
.Lx243_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 96
                                                                                        jmp   n170_lit_string_α
n169_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n172_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1017/005: local(.jlab,1) = D'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n171_assign_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "FAIL 1017/005: local(.jlab,1) = D"
#-----------------------------------------------------------------------------------------------------------------------
n171_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx246_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(local(.jlab, 3), 'F')                   :f(e006)
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n173_call_α
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          "jlab"
#-----------------------------------------------------------------------------------------------------------------------
n173_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd249:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd249]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx248_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n180_lit_string_α
.Lx248_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n174_lit_integer_α
n173_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n180_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n175_call_α
.Lx250_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n175_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lbynamefnzd41:         .string          "local"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd41]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx251_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n180_lit_string_α
.Lx251_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n176_lit_string_α
n175_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n180_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n177_call_α
.Lx252_0:
                        .quad            .Lx252_0_s
.Lx252_0_s:
                        .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n177_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd254:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd254]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx253_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n180_lit_string_α
.Lx253_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 96
                                                                                        jmp   n178_lit_string_α
n177_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n180_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1017/006: local(.jlab,3) = F'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n179_assign_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "FAIL 1017/006: local(.jlab,3) = F"
#-----------------------------------------------------------------------------------------------------------------------
n179_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx256_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         local(.jlab, 0)            :f(e007)
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n181_call_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "jlab"
#-----------------------------------------------------------------------------------------------------------------------
n181_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd259:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd259]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx258_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n186_lit_string_α
.Lx258_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n182_lit_integer_α
n181_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n186_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n183_call_α
.Lx260_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n183_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lbynamefnzd49:         .string          "local"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd49]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx261_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n186_lit_string_α
.Lx261_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 64
                                                                                        jmp   n184_lit_string_α
n183_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n186_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1017/007: local(.jlab,0) OOB should fail' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 45
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n185_assign_α
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "FAIL 1017/007: local(.jlab,0) OOB should fail"
#-----------------------------------------------------------------------------------------------------------------------
n185_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx263_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         local(.jlab, 4)            :f(e008)
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n187_call_α
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          "jlab"
#-----------------------------------------------------------------------------------------------------------------------
n187_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd266:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd266]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx265_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n192_lit_string_α
.Lx265_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n188_lit_integer_α
n187_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n192_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n189_call_α
.Lx267_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n189_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lbynamefnzd55:         .string          "local"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd55]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx268_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n192_lit_string_α
.Lx268_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 64
                                                                                        jmp   n190_lit_string_α
n189_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n192_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1017/008: local(.jlab,4) OOB should fail' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 45
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n191_assign_α
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "FAIL 1017/008: local(.jlab,4) OOB should fail"
#-----------------------------------------------------------------------------------------------------------------------
n191_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx270_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'PASS 1017_arg_local (8/8)'
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 25
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n193_assign_α
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "PASS 1017_arg_local (8/8)"
#-----------------------------------------------------------------------------------------------------------------------
n193_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx272_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n194_goto_α:
                                                                                        jmp   n136_lit_string_α
n194_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n195_goto_α:
                                                                                        jmp   n144_lit_string_α
n195_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n196_goto_α:
                                                                                        jmp   n152_lit_string_α
n196_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n197_goto_α:
                                                                                        jmp   n158_lit_string_α
n197_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n198_goto_α:
                                                                                        jmp   n164_lit_string_α
n198_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n199_goto_α:
                                                                                        jmp   n172_lit_string_α
n199_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n200_goto_α:
                                                                                        jmp   n180_lit_string_α
n200_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n201_goto_α:
                                                                                        jmp   n186_lit_string_α
n201_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n202_goto_α:
                                                                                        jmp   n192_lit_string_α
n202_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
