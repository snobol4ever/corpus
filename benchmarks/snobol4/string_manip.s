                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "T1"
.Lgvan1:                .string          "ITER"
.Lgvan2:                .string          "S"
.Lgvan3:                .string          "N"
.Lgvan4:                .string          "T2"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 5
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 5
                        call             gva_register@PLT
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
main_α:
#=======================================================================================================================
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 65544
                        mov              rdi, rsp
                        mov              ecx, 65544
                        xor              eax, eax
                        rep stosb
                        mov              qword ptr [rsp + 1432], rsp
                        mov              r12, qword ptr [1879048192]
                        mov              [rsp + 65536], rbp
                        mov              rbp, rsp
main_α_body:
#     &TRIM = 1
# IR_LIT_STRING
xchain0_n0_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx1_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   xchain0_n1_α
.Lx1_0:
                        .quad            .Lx1_0_s
.Lx1_0_s:
                        .string          "TRIM"
# IR_LIT_INTEGER
xchain0_n1_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx2_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   xchain0_n2_α
.Lx2_0:
                        .quad            1
xchain0_n2_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+112]
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+128]
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn4:                .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn4]
                        lea              rsi, [rbp + 112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n3_α
                                                                                        jmp   xchain0_n3_α
xchain0_n2_β:
                                                                                        jmp   xchain0_n3_α
#     &STLIMIT = 1000000000
# IR_LIT_STRING
xchain0_n3_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx5_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain0_n4_α
.Lx5_0:
                        .quad            .Lx5_0_s
.Lx5_0_s:
                        .string          "STLIMIT"
# IR_LIT_INTEGER
xchain0_n4_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx6_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   xchain0_n5_α
.Lx6_0:
                        .quad            1000000000
xchain0_n5_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+240]
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+256]
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn8:                .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn8]
                        lea              rsi, [rbp + 240]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n6_α
                                                                                        jmp   xchain0_n6_α
xchain0_n5_β:
                                                                                        jmp   xchain0_n6_α
#     T1 = TIME()
xchain0_n6_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn10:               .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn10]
                        lea              rsi, [rbp + 384]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n8_α
                                                                                        jmp   xchain0_n7_α
xchain0_n6_β:
                                                                                        jmp   xchain0_n8_α
# IR_ASSIGN gva
xchain0_n7_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   xchain0_n8_α
#     ITER = 0
# IR_LIT_INTEGER
xchain0_n8_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   xchain0_n9_α
.Lx12_0:
                        .quad            0
# IR_ASSIGN gva
xchain0_n9_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   xchain0_n10_α
# LOOP    ITER = LT(ITER, 5000000) ITER + 1   :F(DONE)
#     :(LOOP)
# IR_VAR
xchain0_n10_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   xchain0_n11_α
# IR_LIT_INTEGER
xchain0_n11_α:
                        mov              qword ptr [rbp + 592], 6
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   xchain0_n13_α
.Lx15_0:
                        .quad            5000000
# DONE    T2 = TIME()
xchain0_n12_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn17:               .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn17]
                        lea              rsi, [rbp + 1120]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n15_α
                                                                                        jmp   xchain0_n14_α
xchain0_n12_β:
                                                                                        jmp   xchain0_n15_α
# IR_COERCE_NUMERIC
xchain0_n13_α:
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 7
                                                                                        je    .Lx19_1
                        cmp              eax, 6
                                                                                        jne   .Lx19_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 6
                                                                                        jne   .Lx19_0
.Lx19_1:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   xchain0_n16_α
.Lx19_0:
                        lea              rdi, [rbp + 624]
                        lea              rsi, [rbp + 592]
                        lea              rdx, [rbp + 560]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n16_α
# IR_ASSIGN gva
xchain0_n14_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   xchain0_n15_α
#     OUTPUT = "result: " N
# IR_LIT_STRING
xchain0_n15_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   xchain0_n17_α
.Lx21_0:
                        .quad            .Lx21_0_s
.Lx21_0_s:
                        .string          "result: "
# IR_COERCE_NUMERIC
xchain0_n16_α:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 7
                                                                                        je    .Lx23_1
                        cmp              eax, 6
                                                                                        jne   .Lx23_0
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 6
                                                                                        jne   .Lx23_0
.Lx23_1:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   xchain0_n18_α
.Lx23_0:
                        lea              rdi, [rbp + 592]
                        lea              rsi, [rbp + 624]
                        lea              rdx, [rbp + 528]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n18_α
# IR_VAR
xchain0_n17_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   xchain0_n19_α
# IR_CMP_TEST
xchain0_n18_α:
                        lea              rdi, [rbp + 560]
                        lea              rsi, [rbp + 528]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   xchain0_n12_α
                        mov              qword ptr [rbp + 496], 0
                        mov              qword ptr [rbp + 504], 0
                                                                                        jmp   xchain0_n21_α
xchain0_n19_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1216]
                        mov              rcx, qword ptr [rbp + 1224]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   xchain0_n22_α
#     OUTPUT = "ms: " (T2 - T1)
# IR_LIT_STRING
xchain0_n20_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   xchain0_n23_α
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
                        .string          "ms: "
# IR_VAR
xchain0_n21_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   xchain0_n24_α
# IR_ASSIGN global
xchain0_n22_α:
                        mov              rsi, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              rdi, qword ptr [rip + .Lx30_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   xchain0_n20_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "OUTPUT"
# IR_VAR
xchain0_n23_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   xchain0_n25_α
# IR_LIT_INTEGER
xchain0_n24_α:
                        mov              qword ptr [rbp + 720], 6
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   xchain0_n26_α
.Lx32_0:
                        .quad            1
# IR_VAR
xchain0_n25_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   xchain0_n27_α
xchain0_n26_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 100
                                                                                        je    .Lx34_0
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 6
                                                                                        jne   .Lx34_2
.Lx34_1:
                        mov              rax, qword ptr [rbp + 696]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 656], 6
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   xchain0_n28_α
.Lx34_0:
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        mov              r8d, 0
                        lea              r9, [rbp + 656]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain0_n28_α
.Lx34_2:
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n12_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   xchain0_n28_α
xchain0_n26_β:
                                                                                        jmp   xchain0_n12_α
xchain0_n27_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 100
                                                                                        je    .Lx35_0
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 100
                                                                                        je    .Lx35_0
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 6
                                                                                        jne   .Lx35_2
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 6
                                                                                        jne   .Lx35_2
.Lx35_1:
                        mov              rax, qword ptr [rbp + 1368]
                        mov              rcx, qword ptr [rbp + 1400]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1328], 6
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   xchain0_n29_α
.Lx35_0:
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              rdx, qword ptr [rbp + 1392]
                        mov              rcx, qword ptr [rbp + 1400]
                        mov              r8d, 1
                        lea              r9, [rbp + 1328]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain0_n29_α
.Lx35_2:
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              rdx, qword ptr [rbp + 1392]
                        mov              rcx, qword ptr [rbp + 1400]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    main_γ
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   xchain0_n29_α
xchain0_n27_β:
                                                                                        jmp   main_γ
xchain0_n28_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   xchain0_n30_α
xchain0_n29_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1328]
                        mov              rcx, qword ptr [rbp + 1336]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   xchain0_n31_α
# IR_ASSIGN gva
xchain0_n30_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   xchain0_n32_α
# IR_ASSIGN global
xchain0_n31_α:
                        mov              rsi, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              rdi, qword ptr [rip + .Lx39_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   main_γ
.Lx39_0:
                        .quad            .Lx39_0_s
.Lx39_0_s:
                        .string          "OUTPUT"
#     S = 'The quick brown fox jumps over the lazy dog'
# IR_LIT_STRING
xchain0_n32_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   xchain0_n33_α
.Lx40_0:
                        .quad            .Lx40_0_s
.Lx40_0_s:
                        .string          "The quick brown fox jumps over the lazy dog"
# IR_ASSIGN gva
xchain0_n33_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   xchain0_n34_α
#     S = REPLACE(S, 'aeiou', '*****')
# IR_VAR
xchain0_n34_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   xchain0_n35_α
# IR_LIT_STRING
xchain0_n35_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   xchain0_n37_α
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "aeiou"
#     N = SIZE(S)
# IR_VAR
xchain0_n36_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   xchain0_n38_α
# IR_LIT_STRING
xchain0_n37_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   xchain0_n39_α
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "*****"
xchain0_n38_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+1024]
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        .section         .rodata
.Lrkfn47:               .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn47]
                        lea              rsi, [rbp + 1024]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n10_α
                                                                                        jmp   xchain0_n40_α
xchain0_n38_β:
                                                                                        jmp   xchain0_n10_α
xchain0_n39_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+896] -> [zr+832]
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 840], rax
# marshal arg1 = producer-box slot [zr+928] -> [zr+848]
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 856], rax
# marshal arg2 = producer-box slot [zr+960] -> [zr+864]
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 872], rax
                        .section         .rodata
.Lrkfn49:               .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn49]
                        lea              rsi, [rbp + 832]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n36_α
                                                                                        jmp   xchain0_n41_α
xchain0_n39_β:
                                                                                        jmp   xchain0_n36_α
# IR_ASSIGN gva
xchain0_n40_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   xchain0_n10_α
# IR_ASSIGN gva
xchain0_n41_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   xchain0_n36_α
main_β:
                                                                                        jmp   main_ω
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, qword ptr [rbp + 1432]
                        mov              rbp, [rsp + 65536]
                        add              rsp, 65544
                        ret
main_ω:
                        mov              rsp, qword ptr [rbp + 1432]
                        mov              dword ptr [rsp+0], 99
                        mov              dword ptr [rsp+4], 0
                        mov              qword ptr [rsp+8], 0
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 65536]
                        add              rsp, 65544
                        ret
