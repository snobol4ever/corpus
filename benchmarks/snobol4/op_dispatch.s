                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "T1"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "OUTER"
.Lgvan3:                .string          "T2"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 4
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 4
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
                        sub              rsp, 1784
                        mov              rdi, rsp
                        mov              ecx, 1784
                        xor              eax, eax
                        rep stosb
                        mov              r12, qword ptr [1879048192]
                        mov              [rsp + 1776], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#     &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
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
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain0_n1_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx2_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   xchain0_n2_α
.Lx2_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
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
#=======================================================================================================================
#     &STLIMIT = 1000000000
#-----------------------------------------------------------------------------------------------------------------------
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
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain0_n4_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx6_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   xchain0_n5_α
.Lx6_0:
                        .quad            1000000000
#-----------------------------------------------------------------------------------------------------------------------
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
#=======================================================================================================================
#     T1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
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
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain0_n7_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   xchain0_n8_α
#=======================================================================================================================
#     N = 1
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain0_n8_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   xchain0_n9_α
.Lx12_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain0_n9_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   xchain0_n10_α
#=======================================================================================================================
#     OUTER = 0
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain0_n10_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   xchain0_n11_α
.Lx14_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain0_n11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   xchain0_n12_α
#=======================================================================================================================
# OUTER   N = N + 3
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n12_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   xchain0_n13_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain0_n13_α:
                        mov              qword ptr [rbp + 576], 6
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   xchain0_n15_α
.Lx17_0:
                        .quad            3
#=======================================================================================================================
#     N = N - 1
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n14_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   xchain0_n16_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n15_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 100
                                                                                        je    .Lx19_0
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 6
                                                                                        jne   .Lx19_2
.Lx19_1:
                        mov              rax, qword ptr [rbp + 552]
                        mov              rcx, 3
                        add              rax, rcx
                        mov              qword ptr [rbp + 512], 6
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   xchain0_n18_α
.Lx19_0:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        mov              r8d, 0
                        lea              r9, [rbp + 512]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain0_n18_α
.Lx19_2:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n14_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   xchain0_n18_α
xchain0_n15_β:
                                                                                        jmp   xchain0_n14_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain0_n16_α:
                        mov              qword ptr [rbp + 688], 6
                        mov              rax, qword ptr [rip + .Lx20_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   xchain0_n19_α
.Lx20_0:
                        .quad            1
#=======================================================================================================================
#     N = N * 2
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n17_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   xchain0_n20_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain0_n18_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   xchain0_n14_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n19_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 100
                                                                                        je    .Lx23_0
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 6
                                                                                        jne   .Lx23_2
.Lx23_1:
                        mov              rax, qword ptr [rbp + 664]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 624], 6
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   xchain0_n22_α
.Lx23_0:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        mov              r8d, 1
                        lea              r9, [rbp + 624]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain0_n22_α
.Lx23_2:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n17_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   xchain0_n22_α
xchain0_n19_β:
                                                                                        jmp   xchain0_n17_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain0_n20_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   xchain0_n23_α
.Lx24_0:
                        .quad            2
#=======================================================================================================================
#     N = GE(N, 10000000) N / 10000      :S(OUTER)F(NEXT)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n21_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   xchain0_n24_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain0_n22_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   xchain0_n17_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n23_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 100
                                                                                        je    .Lx27_0
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 6
                                                                                        jne   .Lx27_2
.Lx27_1:
                        mov              rax, qword ptr [rbp + 776]
                        mov              rcx, 2
                        imul             rax, rcx
                        mov              qword ptr [rbp + 736], 6
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   xchain0_n26_α
.Lx27_0:
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 808]
                        mov              r8d, 2
                        lea              r9, [rbp + 736]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain0_n26_α
.Lx27_2:
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 808]
                        mov              r8d, 2
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n21_α
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   xchain0_n26_α
xchain0_n23_β:
                                                                                        jmp   xchain0_n21_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain0_n24_α:
                        mov              qword ptr [rbp + 976], 6
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   xchain0_n27_α
.Lx28_0:
                        .quad            10000000
#=======================================================================================================================
# NEXT    OUTER = LT(OUTER, 1000000) OUTER + 1  :S(OUTER)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n25_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   xchain0_n28_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain0_n26_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   xchain0_n21_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain0_n27_α:
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 7
                                                                                        je    .Lx32_1
                        cmp              eax, 6
                                                                                        jne   .Lx32_0
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 6
                                                                                        jne   .Lx32_0
.Lx32_1:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   xchain0_n30_α
.Lx32_0:
                        lea              rdi, [rbp + 1008]
                        lea              rsi, [rbp + 976]
                        lea              rdx, [rbp + 944]
                        mov              rcx, 109
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n30_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain0_n28_α:
                        mov              qword ptr [rbp + 1280], 6
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   xchain0_n31_α
.Lx33_0:
                        .quad            1000000
#=======================================================================================================================
#     T2 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n29_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn35:               .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn35]
                        lea              rsi, [rbp + 1472]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n33_α
                                                                                        jmp   xchain0_n32_α
xchain0_n29_β:
                                                                                        jmp   xchain0_n33_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain0_n30_α:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 7
                                                                                        je    .Lx37_1
                        cmp              eax, 6
                                                                                        jne   .Lx37_0
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 6
                                                                                        jne   .Lx37_0
.Lx37_1:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   xchain0_n34_α
.Lx37_0:
                        lea              rdi, [rbp + 976]
                        lea              rsi, [rbp + 1008]
                        lea              rdx, [rbp + 912]
                        mov              rcx, 110
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n34_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain0_n31_α:
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 7
                                                                                        je    .Lx39_1
                        cmp              eax, 6
                                                                                        jne   .Lx39_0
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 6
                                                                                        jne   .Lx39_0
.Lx39_1:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   xchain0_n35_α
.Lx39_0:
                        lea              rdi, [rbp + 1312]
                        lea              rsi, [rbp + 1280]
                        lea              rdx, [rbp + 1248]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n35_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain0_n32_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              rdx, qword ptr [rbp + 1464]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   xchain0_n33_α
#=======================================================================================================================
#     OUTPUT = "result: " N
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain0_n33_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   xchain0_n36_α
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          "result: "
#-----------------------------------------------------------------------------------------------------------------------
# IR_CMP_TEST
xchain0_n34_α:
                        lea              rdi, [rbp + 944]
                        lea              rsi, [rbp + 912]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    xchain0_n25_α
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                                                                                        jmp   xchain0_n37_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain0_n35_α:
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 7
                                                                                        je    .Lx45_1
                        cmp              eax, 6
                                                                                        jne   .Lx45_0
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 6
                                                                                        jne   .Lx45_0
.Lx45_1:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   xchain0_n38_α
.Lx45_0:
                        lea              rdi, [rbp + 1280]
                        lea              rsi, [rbp + 1312]
                        lea              rdx, [rbp + 1216]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n38_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n36_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   xchain0_n39_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n37_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   xchain0_n41_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_CMP_TEST
xchain0_n38_α:
                        lea              rdi, [rbp + 1248]
                        lea              rsi, [rbp + 1216]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   xchain0_n29_α
                        mov              qword ptr [rbp + 1184], 0
                        mov              qword ptr [rbp + 1192], 0
                                                                                        jmp   xchain0_n42_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n39_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1536]
                        mov              rsi, qword ptr [rbp + 1544]
                        mov              rdx, qword ptr [rbp + 1568]
                        mov              rcx, qword ptr [rbp + 1576]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   xchain0_n43_α
#=======================================================================================================================
#     OUTPUT = "ms: " (T2 - T1)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain0_n40_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   xchain0_n44_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain0_n41_α:
                        mov              qword ptr [rbp + 1104], 6
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   xchain0_n45_α
.Lx52_0:
                        .quad            10000
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n42_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   xchain0_n46_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain0_n43_α:
                        mov              rsi, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        mov              rdi, qword ptr [rip + .Lx54_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   xchain0_n40_α
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n44_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   xchain0_n47_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n45_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 100
                                                                                        je    .Lx56_0
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 6
                                                                                        jne   .Lx56_2
.Lx56_1:
                        mov              rax, qword ptr [rbp + 1080]
                        mov              rcx, 10000
                        cqo
                        idiv             rcx
                        mov              qword ptr [rbp + 1040], 6
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   xchain0_n48_α
.Lx56_0:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        mov              r8d, 3
                        lea              r9, [rbp + 1040]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain0_n48_α
.Lx56_2:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        mov              r8d, 3
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n25_α
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   xchain0_n48_α
xchain0_n45_β:
                                                                                        jmp   xchain0_n25_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain0_n46_α:
                        mov              qword ptr [rbp + 1408], 6
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   xchain0_n49_α
.Lx57_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n47_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   xchain0_n50_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n48_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              rdx, qword ptr [rbp + 1040]
                        mov              rcx, qword ptr [rbp + 1048]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   xchain0_n51_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n49_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 100
                                                                                        je    .Lx60_0
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 6
                                                                                        jne   .Lx60_2
.Lx60_1:
                        mov              rax, qword ptr [rbp + 1384]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1344], 6
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   xchain0_n52_α
.Lx60_0:
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        mov              rdx, qword ptr [rbp + 1408]
                        mov              rcx, qword ptr [rbp + 1416]
                        mov              r8d, 0
                        lea              r9, [rbp + 1344]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain0_n52_α
.Lx60_2:
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        mov              rdx, qword ptr [rbp + 1408]
                        mov              rcx, qword ptr [rbp + 1416]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n29_α
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   xchain0_n52_α
xchain0_n49_β:
                                                                                        jmp   xchain0_n29_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n50_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              eax, 100
                                                                                        je    .Lx61_0
                        mov              eax, dword ptr [rbp + 1744]
                        cmp              eax, 100
                                                                                        je    .Lx61_0
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              eax, 6
                                                                                        jne   .Lx61_2
                        mov              eax, dword ptr [rbp + 1744]
                        cmp              eax, 6
                                                                                        jne   .Lx61_2
.Lx61_1:
                        mov              rax, qword ptr [rbp + 1720]
                        mov              rcx, qword ptr [rbp + 1752]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1680], 6
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   xchain0_n53_α
.Lx61_0:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              rdx, qword ptr [rbp + 1744]
                        mov              rcx, qword ptr [rbp + 1752]
                        mov              r8d, 1
                        lea              r9, [rbp + 1680]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain0_n53_α
.Lx61_2:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              rdx, qword ptr [rbp + 1744]
                        mov              rcx, qword ptr [rbp + 1752]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    main_γ
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   xchain0_n53_α
xchain0_n50_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain0_n51_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   xchain0_n12_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n52_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1344]
                        mov              rcx, qword ptr [rbp + 1352]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   xchain0_n54_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n53_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              rdx, qword ptr [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1688]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   xchain0_n55_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain0_n54_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   xchain0_n12_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain0_n55_α:
                        mov              rsi, qword ptr [rbp + 1616]
                        mov              rdx, qword ptr [rbp + 1624]
                        mov              rdi, qword ptr [rip + .Lx66_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   main_γ
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1776]
                        add              rsp, 1784
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              dword ptr [rsp+0], 99
                        mov              dword ptr [rsp+4], 0
                        mov              qword ptr [rsp+8], 0
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1776]
                        add              rsp, 1784
                        ret
                        .section         .note.GNU-stack,"",@progbits
