                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "X"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 1
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 1
                        call             gva_register@PLT
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
                        sub              rsp, 1320
                        mov              rdi, rsp
                        mov              ecx, 1320
                        xor              eax, eax
                        rep stosb
main_α_body:
#=======================================================================================================================
# 	X = 'q'
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_assign_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n2_lit_string_α
#=======================================================================================================================
# 	X = '2'
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_assign_α
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n4_var_α
#=======================================================================================================================
# 	OUTPUT = GT(X, 1) 'a'
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rsp + 112], 6
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n7_op75_α
.Lx100_0:
                        .quad            1
#=======================================================================================================================
# 	OUTPUT = GT(2.5, 2) 'b'
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_real_α:
                        mov              qword ptr [rsp + 240], 7
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 248], rax
                                                                                        jmp   n8_lit_integer_α
.Lx101_0:
                        .quad            4612811918334230528
#-----------------------------------------------------------------------------------------------------------------------
n7_op75_α:
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 7
                                                                                        je    .Lx103_1
                        cmp              eax, 6
                                                                                        jne   .Lx103_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 6
                                                                                        jne   .Lx103_0
.Lx103_1:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n9_op75_α
.Lx103_0:
                        lea              rdi, [rsp + 128]
                        lea              rsi, [rsp + 112]
                        lea              rdx, [rsp + 96]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n9_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rsp + 224], 6
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n10_op75_α
.Lx104_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n9_op75_α:
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 7
                                                                                        je    .Lx106_1
                        cmp              eax, 6
                                                                                        jne   .Lx106_0
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 6
                                                                                        jne   .Lx106_0
.Lx106_1:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n11_op77_α
.Lx106_0:
                        lea              rdi, [rsp + 112]
                        lea              rsi, [rsp + 128]
                        lea              rdx, [rsp + 80]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n11_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n10_op75_α:
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 7
                                                                                        je    .Lx108_1
                        cmp              eax, 6
                                                                                        jne   .Lx108_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 6
                                                                                        jne   .Lx108_0
.Lx108_1:
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n12_op75_α
.Lx108_0:
                        lea              rdi, [rsp + 240]
                        lea              rsi, [rsp + 224]
                        lea              rdx, [rsp + 208]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n12_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n11_op77_α:
                        lea              rdi, [rsp + 96]
                        lea              rsi, [rsp + 80]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n6_lit_real_α
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_op75_α:
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 7
                                                                                        je    .Lx112_1
                        cmp              eax, 6
                                                                                        jne   .Lx112_0
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 6
                                                                                        jne   .Lx112_0
.Lx112_1:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n15_op77_α
.Lx112_0:
                        lea              rdi, [rsp + 224]
                        lea              rsi, [rsp + 240]
                        lea              rdx, [rsp + 192]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n15_op77_α
#=======================================================================================================================
# 	OUTPUT = LT('2.5', X) 'c'
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rsp + 352], 1
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n16_var_α
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "2.5"
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rsp + 144], 1
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n17_binop_α
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n15_op77_α:
                        lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 192]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n13_lit_string_α
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                                                                                        jmp   n18_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                                                                                        jmp   n19_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n17_binop_α:
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                                                                                        jmp   n21_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rsp + 256], 1
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n22_binop_α
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n19_op75_α:
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 7
                                                                                        je    .Lx121_1
                        cmp              eax, 6
                                                                                        jne   .Lx121_0
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 6
                                                                                        jne   .Lx121_0
.Lx121_1:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n23_op75_α
.Lx121_0:
                        lea              rdi, [rsp + 352]
                        lea              rsi, [rsp + 336]
                        lea              rdx, [rsp + 320]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n23_op75_α
#=======================================================================================================================
# 	OUTPUT = EQ('2.0', 2) 'd'
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rsp + 464], 1
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rsp + 472], rax
                                                                                        jmp   n24_lit_integer_α
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "2.0"
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              rdi, qword ptr [rip + .Lx123_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n6_lit_real_α
.Lx123_0:
                        .quad            .Lx123_0_s
.Lx123_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n25_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n23_op75_α:
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 7
                                                                                        je    .Lx126_1
                        cmp              eax, 6
                                                                                        jne   .Lx126_0
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 6
                                                                                        jne   .Lx126_0
.Lx126_1:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n26_op77_α
.Lx126_0:
                        lea              rdi, [rsp + 336]
                        lea              rsi, [rsp + 352]
                        lea              rdx, [rsp + 304]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n26_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        mov              qword ptr [rsp + 448], 6
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n27_op75_α
.Lx127_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              rdi, qword ptr [rip + .Lx128_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n13_lit_string_α
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n26_op77_α:
                        lea              rdi, [rsp + 320]
                        lea              rsi, [rsp + 304]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n20_lit_string_α
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                                                                                        jmp   n28_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_op75_α:
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 7
                                                                                        je    .Lx132_1
                        cmp              eax, 6
                                                                                        jne   .Lx132_0
                        mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 6
                                                                                        jne   .Lx132_0
.Lx132_1:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n29_op75_α
.Lx132_0:
                        lea              rdi, [rsp + 464]
                        lea              rsi, [rsp + 448]
                        lea              rdx, [rsp + 432]
                        mov              rcx, 101
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n29_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rsp + 368], 1
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 376], rax
                                                                                        jmp   n31_binop_α
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n29_op75_α:
                        mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 7
                                                                                        je    .Lx135_1
                        cmp              eax, 6
                                                                                        jne   .Lx135_0
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 6
                                                                                        jne   .Lx135_0
.Lx135_1:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n32_op77_α
.Lx135_0:
                        lea              rdi, [rsp + 448]
                        lea              rsi, [rsp + 464]
                        lea              rdx, [rsp + 416]
                        mov              rcx, 102
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n32_op77_α
#=======================================================================================================================
# 	OUTPUT = GE(, 0) 'e'
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rsp + 576], 6
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n33_lit_string_α
.Lx136_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n31_binop_α:
                        mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n34_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n32_op77_α:
                        lea              rdi, [rsp + 432]
                        lea              rsi, [rsp + 416]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   n30_lit_integer_α
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                                                                                        jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rsp + 560], 1
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n36_op75_α
.Lx140_0:
                        .quad            .Lx140_0_s
.Lx140_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              rdi, qword ptr [rip + .Lx141_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n20_lit_string_α
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rsp + 480], 1
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rsp + 488], rax
                                                                                        jmp   n37_binop_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n36_op75_α:
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 7
                                                                                        je    .Lx144_1
                        cmp              eax, 6
                                                                                        jne   .Lx144_0
                        mov              eax, dword ptr [rsp + 560]
                        cmp              eax, 6
                                                                                        jne   .Lx144_0
.Lx144_1:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n38_op75_α
.Lx144_0:
                        lea              rdi, [rsp + 576]
                        lea              rsi, [rsp + 560]
                        lea              rdx, [rsp + 544]
                        mov              rcx, 109
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n38_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n37_binop_α:
                        mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                                                                                        jmp   n40_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n38_op75_α:
                        mov              eax, dword ptr [rsp + 560]
                        cmp              eax, 7
                                                                                        je    .Lx147_1
                        cmp              eax, 6
                                                                                        jne   .Lx147_0
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 6
                                                                                        jne   .Lx147_0
.Lx147_1:
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                                                                                        jmp   n41_op77_α
.Lx147_0:
                        lea              rdi, [rsp + 560]
                        lea              rsi, [rsp + 576]
                        lea              rdx, [rsp + 528]
                        mov              rcx, 110
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n41_op77_α
#=======================================================================================================================
# 	OUTPUT = LGT('b', 'a') 'f'
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rsp + 656], 1
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 664], rax
                                                                                        jmp   n42_lit_string_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              rdi, qword ptr [rip + .Lx149_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n30_lit_integer_α
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n41_op77_α:
                        lea              rdi, [rsp + 544]
                        lea              rsi, [rsp + 528]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    n39_lit_string_α
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                                                                                        jmp   n43_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rsp + 640], 1
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 648], rax
                                                                                        jmp   n44_op77_α
.Lx152_0:
                        .quad            .Lx152_0_s
.Lx152_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rsp + 592], 1
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   n45_binop_α
.Lx153_0:
                        .quad            .Lx153_0_s
.Lx153_0_s:
                        .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n44_op77_α:
                        lea              rdi, [rsp + 656]
                        lea              rsi, [rsp + 640]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n47_lit_integer_α
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                                                                                        jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n45_binop_α:
                        mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              rdx, qword ptr [rsp + 592]
                        mov              rcx, qword ptr [rsp + 600]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                                                                                        jmp   n48_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rsp + 672], 1
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rsp + 680], rax
                                                                                        jmp   n49_binop_α
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          "f"
#=======================================================================================================================
# 	OUTPUT = LGT(10, 9) 'g'
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        mov              qword ptr [rsp + 768], 6
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rsp + 776], rax
                                                                                        jmp   n50_lit_integer_α
.Lx158_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:
                        mov              rsi, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              rdi, qword ptr [rip + .Lx159_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n39_lit_string_α
.Lx159_0:
                        .quad            .Lx159_0_s
.Lx159_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_α:
                        mov              rdi, qword ptr [rsp + 624]
                        mov              rsi, qword ptr [rsp + 632]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              rcx, qword ptr [rsp + 680]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                                                                                        jmp   n51_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:
                        mov              qword ptr [rsp + 752], 6
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rsp + 760], rax
                                                                                        jmp   n52_op73_α
.Lx161_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:
                        mov              rsi, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              rdi, qword ptr [rip + .Lx162_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n47_lit_integer_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n52_op73_α:
                        lea              rdi, [rsp + 768]
                        lea              rsi, [rsp + 736]
                        mov              rdx, 126
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n53_op73_α
#-----------------------------------------------------------------------------------------------------------------------
n53_op73_α:
                        lea              rdi, [rsp + 752]
                        lea              rsi, [rsp + 720]
                        mov              rdx, 127
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n55_op77_α
#=======================================================================================================================
# 	OUTPUT = NE(3, X) 'h'
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:
                        mov              qword ptr [rsp + 880], 6
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 888], rax
                                                                                        jmp   n56_var_α
.Lx167_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n55_op77_α:
                        lea              rdi, [rsp + 736]
                        lea              rsi, [rsp + 720]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n54_lit_integer_α
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                                                                                        jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                                                                                        jmp   n58_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rsp + 784], 1
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rsp + 792], rax
                                                                                        jmp   n60_binop_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "g"
#-----------------------------------------------------------------------------------------------------------------------
n58_op75_α:
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 7
                                                                                        je    .Lx173_1
                        cmp              eax, 6
                                                                                        jne   .Lx173_0
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 6
                                                                                        jne   .Lx173_0
.Lx173_1:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                                                                                        jmp   n61_op75_α
.Lx173_0:
                        lea              rdi, [rsp + 880]
                        lea              rsi, [rsp + 864]
                        lea              rdx, [rsp + 848]
                        mov              rcx, 149
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n61_op75_α
#=======================================================================================================================
# 	OUTPUT = LE(X, 2) 'i'
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                                                                                        jmp   n62_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:
                        mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              rdx, qword ptr [rsp + 784]
                        mov              rcx, qword ptr [rsp + 792]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                                                                                        jmp   n64_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n61_op75_α:
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 7
                                                                                        je    .Lx177_1
                        cmp              eax, 6
                                                                                        jne   .Lx177_0
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 6
                                                                                        jne   .Lx177_0
.Lx177_1:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rax
                                                                                        jmp   n65_op77_α
.Lx177_0:
                        lea              rdi, [rsp + 864]
                        lea              rsi, [rsp + 880]
                        lea              rdx, [rsp + 832]
                        mov              rcx, 150
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n65_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:
                        mov              qword ptr [rsp + 976], 6
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rsp + 984], rax
                                                                                        jmp   n66_op75_α
.Lx178_0:
                        .quad            2
#=======================================================================================================================
# 	OUTPUT = LNE(X, 'q') 'j'
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                                                                                        jmp   n67_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:
                        mov              rsi, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              rdi, qword ptr [rip + .Lx180_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n54_lit_integer_α
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n65_op77_α:
                        lea              rdi, [rsp + 848]
                        lea              rsi, [rsp + 832]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    n59_var_α
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                                                                                        jmp   n69_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n66_op75_α:
                        mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 7
                                                                                        je    .Lx184_1
                        cmp              eax, 6
                                                                                        jne   .Lx184_0
                        mov              eax, dword ptr [rsp + 976]
                        cmp              eax, 6
                                                                                        jne   .Lx184_0
.Lx184_1:
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax
                                                                                        jmp   n70_op75_α
.Lx184_0:
                        lea              rdi, [rsp + 992]
                        lea              rsi, [rsp + 976]
                        lea              rdx, [rsp + 960]
                        mov              rcx, 118
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n70_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        mov              qword ptr [rsp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rsp + 1080], rax
                                                                                        jmp   n71_op73_α
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "q"
#=======================================================================================================================
# 	OUTPUT = LLT('a', X) 'k'
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        mov              qword ptr [rsp + 1184], 1
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 1192], rax
                                                                                        jmp   n72_var_α
.Lx186_0:
                        .quad            .Lx186_0_s
.Lx186_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rsp + 896], 1
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rsp + 904], rax
                                                                                        jmp   n73_binop_α
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          "h"
#-----------------------------------------------------------------------------------------------------------------------
n70_op75_α:
                        mov              eax, dword ptr [rsp + 976]
                        cmp              eax, 7
                                                                                        je    .Lx189_1
                        cmp              eax, 6
                                                                                        jne   .Lx189_0
                        mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 6
                                                                                        jne   .Lx189_0
.Lx189_1:
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 952], rax
                                                                                        jmp   n74_op77_α
.Lx189_0:
                        lea              rdi, [rsp + 976]
                        lea              rsi, [rsp + 992]
                        lea              rdx, [rsp + 944]
                        mov              rcx, 119
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n74_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n71_op73_α:
                        lea              rdi, [rsp + 1088]
                        lea              rsi, [rsp + 1056]
                        mov              rdx, 132
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n75_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                                                                                        jmp   n76_op73_α
#-----------------------------------------------------------------------------------------------------------------------
n73_binop_α:
                        mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        mov              rdx, qword ptr [rsp + 896]
                        mov              rcx, qword ptr [rsp + 904]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                                                                                        jmp   n78_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n74_op77_α:
                        lea              rdi, [rsp + 960]
                        lea              rsi, [rsp + 944]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    n63_var_α
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                                                                                        jmp   n79_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_op77_α:
                        lea              rdi, [rsp + 1056]
                        lea              rsi, [rsp + 1072]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    n68_lit_string_α
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                                                                                        jmp   n80_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n76_op73_α:
                        lea              rdi, [rsp + 1168]
                        lea              rsi, [rsp + 1152]
                        mov              rdx, 131
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n81_op77_α
#=======================================================================================================================
# 	OUTPUT = LEQ(X, '2') 'l'
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                                                                                        jmp   n82_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:
                        mov              rsi, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              rdi, qword ptr [rip + .Lx201_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n59_var_α
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rsp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 1016], rax
                                                                                        jmp   n83_binop_α
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "i"
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rsp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 1112], rax
                                                                                        jmp   n84_binop_α
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "j"
#-----------------------------------------------------------------------------------------------------------------------
n81_op77_α:
                        lea              rdi, [rsp + 1184]
                        lea              rsi, [rsp + 1152]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n77_var_α
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                                                                                        jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rsp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rsp + 1272], rax
                                                                                        jmp   n86_op73_α
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n83_binop_α:
                        mov              rdi, qword ptr [rsp + 928]
                        mov              rsi, qword ptr [rsp + 936]
                        mov              rdx, qword ptr [rsp + 1008]
                        mov              rcx, qword ptr [rsp + 1016]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                                                                                        jmp   n87_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n84_binop_α:
                        mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 1104]
                        mov              rcx, qword ptr [rsp + 1112]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                                                                                        jmp   n88_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rsp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 1208], rax
                                                                                        jmp   n89_binop_α
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "k"
#-----------------------------------------------------------------------------------------------------------------------
n86_op73_α:
                        lea              rdi, [rsp + 1280]
                        lea              rsi, [rsp + 1248]
                        mov              rdx, 122
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n90_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:
                        mov              rsi, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        mov              rdi, qword ptr [rip + .Lx212_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n63_var_α
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:
                        mov              rsi, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        mov              rdi, qword ptr [rip + .Lx213_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n68_lit_string_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n89_binop_α:
                        mov              rdi, qword ptr [rsp + 1136]
                        mov              rsi, qword ptr [rsp + 1144]
                        mov              rdx, qword ptr [rsp + 1200]
                        mov              rcx, qword ptr [rsp + 1208]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                                                                                        jmp   n91_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n90_op77_α:
                        lea              rdi, [rsp + 1248]
                        lea              rsi, [rsp + 1264]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   main_γ
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                                                                                        jmp   n92_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:
                        mov              rsi, qword ptr [rsp + 1120]
                        mov              rdx, qword ptr [rsp + 1128]
                        mov              rdi, qword ptr [rip + .Lx217_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n77_var_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        mov              qword ptr [rsp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 1304], rax
                                                                                        jmp   n93_binop_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "l"
#-----------------------------------------------------------------------------------------------------------------------
n93_binop_α:
                        mov              rdi, qword ptr [rsp + 1232]
                        mov              rsi, qword ptr [rsp + 1240]
                        mov              rdx, qword ptr [rsp + 1296]
                        mov              rcx, qword ptr [rsp + 1304]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                                                                                        jmp   n94_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:
                        mov              rsi, qword ptr [rsp + 1216]
                        mov              rdx, qword ptr [rsp + 1224]
                        mov              rdi, qword ptr [rip + .Lx220_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 1320
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 1320
                        ret
                        .section         .note.GNU-stack,"",@progbits
