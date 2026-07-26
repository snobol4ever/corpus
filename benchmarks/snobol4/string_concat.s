                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "T1"
.Lgvan1:                .string          "S"
.Lgvan2:                .string          "N"
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
                        sub              rsp, 1304
                        mov              rdi, rsp
                        mov              ecx, 1304
                        xor              eax, eax
                        rep stosb
                        mov              r12, qword ptr [1879048192]
                        mov              [rsp + 1296], rbp
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
#     S = ''
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain0_n8_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   xchain0_n9_α
.Lx12_0:
                        .quad            .Lx12_0_s
.Lx12_0_s:
                        .string          ""
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
#     N = 0
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
# LOOP    N = LT(N, 100000) N + 1        :F(DONE)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n12_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   xchain0_n13_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain0_n13_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   xchain0_n15_α
.Lx17_0:
                        .quad            100000
#=======================================================================================================================
# DONE    T2 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n14_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn19:               .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn19]
                        lea              rsi, [rbp + 944]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n17_α
                                                                                        jmp   xchain0_n16_α
xchain0_n14_β:
                                                                                        jmp   xchain0_n17_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain0_n15_α:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 7
                                                                                        je    .Lx21_1
                        cmp              eax, 6
                                                                                        jne   .Lx21_0
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 6
                                                                                        jne   .Lx21_0
.Lx21_1:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   xchain0_n18_α
.Lx21_0:
                        lea              rdi, [rbp + 672]
                        lea              rsi, [rbp + 640]
                        lea              rdx, [rbp + 608]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n18_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain0_n16_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   xchain0_n17_α
#=======================================================================================================================
#     OUTPUT = "result: " SIZE(S)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain0_n17_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   xchain0_n19_α
.Lx23_0:
                        .quad            .Lx23_0_s
.Lx23_0_s:
                        .string          "result: "
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain0_n18_α:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 7
                                                                                        je    .Lx25_1
                        cmp              eax, 6
                                                                                        jne   .Lx25_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 6
                                                                                        jne   .Lx25_0
.Lx25_1:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   xchain0_n20_α
.Lx25_0:
                        lea              rdi, [rbp + 640]
                        lea              rsi, [rbp + 672]
                        lea              rdx, [rbp + 576]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n20_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n19_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   xchain0_n21_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_CMP_TEST
xchain0_n20_α:
                        lea              rdi, [rbp + 608]
                        lea              rsi, [rbp + 576]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   xchain0_n14_α
                        mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                                                                                        jmp   xchain0_n23_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n21_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1056]
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        .section         .rodata
.Lrkfn30:               .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn30]
                        lea              rsi, [rbp + 1056]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n22_α
                                                                                        jmp   xchain0_n24_α
xchain0_n21_β:
                                                                                        jmp   xchain0_n22_α
#=======================================================================================================================
#     OUTPUT = "ms: " (T2 - T1)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain0_n22_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   xchain0_n25_α
.Lx31_0:
                        .quad            .Lx31_0_s
.Lx31_0_s:
                        .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n23_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   xchain0_n26_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n24_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 1040]
                        mov              rcx, qword ptr [rbp + 1048]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   xchain0_n27_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n25_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   xchain0_n28_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain0_n26_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   xchain0_n29_α
.Lx35_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain0_n27_α:
                        mov              rsi, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        mov              rdi, qword ptr [rip + .Lx36_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   xchain0_n22_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n28_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   xchain0_n30_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n29_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 100
                                                                                        je    .Lx38_0
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 6
                                                                                        jne   .Lx38_2
.Lx38_1:
                        mov              rax, qword ptr [rbp + 744]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 704], 6
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   xchain0_n31_α
.Lx38_0:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        mov              r8d, 0
                        lea              r9, [rbp + 704]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain0_n31_α
.Lx38_2:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n14_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   xchain0_n31_α
xchain0_n29_β:
                                                                                        jmp   xchain0_n14_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n30_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 100
                                                                                        je    .Lx39_0
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 100
                                                                                        je    .Lx39_0
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 6
                                                                                        jne   .Lx39_2
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 6
                                                                                        jne   .Lx39_2
.Lx39_1:
                        mov              rax, qword ptr [rbp + 1240]
                        mov              rcx, qword ptr [rbp + 1272]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1200], 6
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   xchain0_n32_α
.Lx39_0:
                        mov              rdi, qword ptr [rbp + 1232]
                        mov              rsi, qword ptr [rbp + 1240]
                        mov              rdx, qword ptr [rbp + 1264]
                        mov              rcx, qword ptr [rbp + 1272]
                        mov              r8d, 1
                        lea              r9, [rbp + 1200]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain0_n32_α
.Lx39_2:
                        mov              rdi, qword ptr [rbp + 1232]
                        mov              rsi, qword ptr [rbp + 1240]
                        mov              rdx, qword ptr [rbp + 1264]
                        mov              rcx, qword ptr [rbp + 1272]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    main_γ
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   xchain0_n32_α
xchain0_n30_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n31_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   xchain0_n33_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n32_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        mov              rdx, qword ptr [rbp + 1200]
                        mov              rcx, qword ptr [rbp + 1208]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   xchain0_n34_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain0_n33_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   xchain0_n35_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain0_n34_α:
                        mov              rsi, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              rdi, qword ptr [rip + .Lx43_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   main_γ
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#     S = S 'x'                          :(LOOP)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n35_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   xchain0_n36_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain0_n36_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   xchain0_n37_α
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n37_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, qword ptr [rbp + 880]
                        mov              rcx, qword ptr [rbp + 888]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   xchain0_n38_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain0_n38_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   xchain0_n12_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1296]
                        add              rsp, 1304
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              dword ptr [rsp+0], 99
                        mov              dword ptr [rsp+4], 0
                        mov              qword ptr [rsp+8], 0
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1296]
                        add              rsp, 1304
                        ret
                        .section         .note.GNU-stack,"",@progbits
