                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "T1"
.Lgvan1:                .string          "A"
.Lgvan2:                .string          "B"
.Lgvan3:                .string          "C"
.Lgvan4:                .string          "D"
.Lgvan5:                .string          "E"
.Lgvan6:                .string          "N"
.Lgvan7:                .string          "T2"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 8
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 8
                        call             gva_register@PLT
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
main_α:
#=======================================================================================================================
    .global main_α
    .global main_β
    .global main_γ
    .global main_ω
  sub rsp, 65544
  mov rdi, rsp
  mov ecx, 65544
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1896], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
#     &TRIM = 1
# IR_LIT_STRING
xchain0_n0_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx1_0]
                        mov              qword ptr [rbp + 168], rax
                        jmp              xchain0_n1_α
.Lx1_0:
                        .quad            .Lx1_0_s
.Lx1_0_s:
                        .string          "TRIM"
# IR_LIT_INTEGER
xchain0_n1_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx2_0]
                        mov              qword ptr [rbp + 200], rax
                        jmp              xchain0_n2_α
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
                        je               xchain0_n3_α
                        jmp              xchain0_n3_α
xchain0_n2_β:
                        jmp              xchain0_n3_α
#     &STLIMIT = 1000000000
# IR_LIT_STRING
xchain0_n3_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx5_0]
                        mov              qword ptr [rbp + 296], rax
                        jmp              xchain0_n4_α
.Lx5_0:
                        .quad            .Lx5_0_s
.Lx5_0_s:
                        .string          "STLIMIT"
# IR_LIT_INTEGER
xchain0_n4_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx6_0]
                        mov              qword ptr [rbp + 328], rax
                        jmp              xchain0_n5_α
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
                        je               xchain0_n6_α
                        jmp              xchain0_n6_α
xchain0_n5_β:
                        jmp              xchain0_n6_α
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
                        je               xchain0_n8_α
                        jmp              xchain0_n7_α
xchain0_n6_β:
                        jmp              xchain0_n8_α
# IR_ASSIGN gva
xchain0_n7_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        jmp              xchain0_n8_α
#     A = 1
# IR_LIT_INTEGER
xchain0_n8_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rbp + 424], rax
                        jmp              xchain0_n9_α
.Lx12_0:
                        .quad            1
# IR_ASSIGN gva
xchain0_n9_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        jmp              xchain0_n10_α
#     B = 2
# IR_LIT_INTEGER
xchain0_n10_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rbp + 472], rax
                        jmp              xchain0_n11_α
.Lx14_0:
                        .quad            2
# IR_ASSIGN gva
xchain0_n11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        jmp              xchain0_n12_α
#     C = 0
# IR_LIT_INTEGER
xchain0_n12_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rbp + 520], rax
                        jmp              xchain0_n13_α
.Lx16_0:
                        .quad            0
# IR_ASSIGN gva
xchain0_n13_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        jmp              xchain0_n14_α
#     D = 0
# IR_LIT_INTEGER
xchain0_n14_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rbp + 568], rax
                        jmp              xchain0_n15_α
.Lx18_0:
                        .quad            0
# IR_ASSIGN gva
xchain0_n15_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        jmp              xchain0_n16_α
#     E = 0
# IR_LIT_INTEGER
xchain0_n16_α:
                        mov              qword ptr [rbp + 608], 6
                        mov              rax, qword ptr [rip + .Lx20_0]
                        mov              qword ptr [rbp + 616], rax
                        jmp              xchain0_n17_α
.Lx20_0:
                        .quad            0
# IR_ASSIGN gva
xchain0_n17_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        jmp              xchain0_n18_α
#     N = 0
# IR_LIT_INTEGER
xchain0_n18_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rbp + 664], rax
                        jmp              xchain0_n19_α
.Lx22_0:
                        .quad            0
# IR_ASSIGN gva
xchain0_n19_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        jmp              xchain0_n20_α
# LOOP    A = A + 1
# IR_VAR
xchain0_n20_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        jmp              xchain0_n21_α
# IR_LIT_INTEGER
xchain0_n21_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rbp + 776], rax
                        jmp              xchain0_n23_α
.Lx25_0:
                        .quad            1
#     B = B + 2
# IR_VAR
xchain0_n22_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        jmp              xchain0_n24_α
xchain0_n23_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 100
                        je               .Lx27_0
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 6
                        jne              .Lx27_2
.Lx27_1:
                        mov              rax, qword ptr [rbp + 744]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 704], 6
                        mov              qword ptr [rbp + 712], rax
                        jmp              xchain0_n26_α
.Lx27_0:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        mov              r8d, 0
                        lea              r9, [rbp + 704]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain0_n26_α
.Lx27_2:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               xchain0_n22_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        jmp              xchain0_n26_α
xchain0_n23_β:
                        jmp              xchain0_n22_α
# IR_LIT_INTEGER
xchain0_n24_α:
                        mov              qword ptr [rbp + 880], 6
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rbp + 888], rax
                        jmp              xchain0_n27_α
.Lx28_0:
                        .quad            2
#     C = A + B
# IR_VAR
xchain0_n25_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        jmp              xchain0_n28_α
# IR_ASSIGN gva
xchain0_n26_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        jmp              xchain0_n22_α
xchain0_n27_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 100
                        je               .Lx31_0
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 6
                        jne              .Lx31_2
.Lx31_1:
                        mov              rax, qword ptr [rbp + 856]
                        mov              rcx, 2
                        add              rax, rcx
                        mov              qword ptr [rbp + 816], 6
                        mov              qword ptr [rbp + 824], rax
                        jmp              xchain0_n30_α
.Lx31_0:
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, qword ptr [rbp + 880]
                        mov              rcx, qword ptr [rbp + 888]
                        mov              r8d, 0
                        lea              r9, [rbp + 816]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain0_n30_α
.Lx31_2:
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, qword ptr [rbp + 880]
                        mov              rcx, qword ptr [rbp + 888]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               xchain0_n25_α
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        jmp              xchain0_n30_α
xchain0_n27_β:
                        jmp              xchain0_n25_α
# IR_VAR
xchain0_n28_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        jmp              xchain0_n31_α
#     D = C + A
# IR_VAR
xchain0_n29_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        jmp              xchain0_n32_α
# IR_ASSIGN gva
xchain0_n30_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        jmp              xchain0_n25_α
xchain0_n31_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 100
                        je               .Lx35_0
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 100
                        je               .Lx35_0
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 6
                        jne              .Lx35_2
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 6
                        jne              .Lx35_2
.Lx35_1:
                        mov              rax, qword ptr [rbp + 968]
                        mov              rcx, qword ptr [rbp + 1000]
                        add              rax, rcx
                        mov              qword ptr [rbp + 928], 6
                        mov              qword ptr [rbp + 936], rax
                        jmp              xchain0_n34_α
.Lx35_0:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 992]
                        mov              rcx, qword ptr [rbp + 1000]
                        mov              r8d, 0
                        lea              r9, [rbp + 928]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain0_n34_α
.Lx35_2:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 992]
                        mov              rcx, qword ptr [rbp + 1000]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               xchain0_n29_α
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        jmp              xchain0_n34_α
xchain0_n31_β:
                        jmp              xchain0_n29_α
# IR_VAR
xchain0_n32_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        jmp              xchain0_n35_α
#     E = D + B
# IR_VAR
xchain0_n33_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        jmp              xchain0_n36_α
# IR_ASSIGN gva
xchain0_n34_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        jmp              xchain0_n29_α
xchain0_n35_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 100
                        je               .Lx39_0
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 100
                        je               .Lx39_0
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 6
                        jne              .Lx39_2
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 6
                        jne              .Lx39_2
.Lx39_1:
                        mov              rax, qword ptr [rbp + 1080]
                        mov              rcx, qword ptr [rbp + 1112]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1040], 6
                        mov              qword ptr [rbp + 1048], rax
                        jmp              xchain0_n38_α
.Lx39_0:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        mov              r8d, 0
                        lea              r9, [rbp + 1040]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain0_n38_α
.Lx39_2:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               xchain0_n33_α
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        jmp              xchain0_n38_α
xchain0_n35_β:
                        jmp              xchain0_n33_α
# IR_VAR
xchain0_n36_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        jmp              xchain0_n39_α
#     N = LT(N, 10000000) N + 1          :S(LOOP)
# IR_VAR
xchain0_n37_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        jmp              xchain0_n40_α
# IR_ASSIGN gva
xchain0_n38_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        jmp              xchain0_n33_α
xchain0_n39_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 100
                        je               .Lx43_0
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 100
                        je               .Lx43_0
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 6
                        jne              .Lx43_2
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 6
                        jne              .Lx43_2
.Lx43_1:
                        mov              rax, qword ptr [rbp + 1192]
                        mov              rcx, qword ptr [rbp + 1224]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1152], 6
                        mov              qword ptr [rbp + 1160], rax
                        jmp              xchain0_n42_α
.Lx43_0:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1216]
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              r8d, 0
                        lea              r9, [rbp + 1152]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain0_n42_α
.Lx43_2:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1216]
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               xchain0_n37_α
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        jmp              xchain0_n42_α
xchain0_n39_β:
                        jmp              xchain0_n37_α
# IR_LIT_INTEGER
xchain0_n40_α:
                        mov              qword ptr [rbp + 1392], 6
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rbp + 1400], rax
                        jmp              xchain0_n43_α
.Lx44_0:
                        .quad            10000000
#     T2 = TIME()
xchain0_n41_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn46:               .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn46]
                        lea              rsi, [rbp + 1584]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                        je               xchain0_n45_α
                        jmp              xchain0_n44_α
xchain0_n41_β:
                        jmp              xchain0_n45_α
# IR_ASSIGN gva
xchain0_n42_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        jmp              xchain0_n37_α
# IR_COERCE_NUMERIC
xchain0_n43_α:
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 7
                        je               .Lx49_1
                        cmp              eax, 6
                        jne              .Lx49_0
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 6
                        jne              .Lx49_0
.Lx49_1:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1368], rax
                        jmp              xchain0_n46_α
.Lx49_0:
                        lea              rdi, [rbp + 1424]
                        lea              rsi, [rbp + 1392]
                        lea              rdx, [rbp + 1360]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                        jmp              xchain0_n46_α
# IR_ASSIGN gva
xchain0_n44_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              rdx, qword ptr [rbp + 1576]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        jmp              xchain0_n45_α
#     OUTPUT = "result: " E
# IR_LIT_STRING
xchain0_n45_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rbp + 1656], rax
                        jmp              xchain0_n47_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "result: "
# IR_COERCE_NUMERIC
xchain0_n46_α:
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 7
                        je               .Lx53_1
                        cmp              eax, 6
                        jne              .Lx53_0
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 6
                        jne              .Lx53_0
.Lx53_1:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1336], rax
                        jmp              xchain0_n48_α
.Lx53_0:
                        lea              rdi, [rbp + 1392]
                        lea              rsi, [rbp + 1424]
                        lea              rdx, [rbp + 1328]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                        jmp              xchain0_n48_α
# IR_VAR
xchain0_n47_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        jmp              xchain0_n49_α
# IR_CMP_TEST
xchain0_n48_α:
                        lea              rdi, [rbp + 1360]
                        lea              rsi, [rbp + 1328]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                        jns              xchain0_n41_α
                        mov              qword ptr [rbp + 1296], 0
                        mov              qword ptr [rbp + 1304], 0
                        jmp              xchain0_n51_α
xchain0_n49_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              rdx, qword ptr [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1688]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        jmp              xchain0_n52_α
#     OUTPUT = "ms: " (T2 - T1)
# IR_LIT_STRING
xchain0_n50_α:
                        mov              qword ptr [rbp + 1760], 1
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rbp + 1768], rax
                        jmp              xchain0_n53_α
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "ms: "
# IR_VAR
xchain0_n51_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        jmp              xchain0_n54_α
# IR_ASSIGN global
xchain0_n52_α:
                        mov              rsi, qword ptr [rbp + 1616]
                        mov              rdx, qword ptr [rbp + 1624]
                        mov              rdi, qword ptr [rip + .Lx60_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        jmp              xchain0_n50_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "OUTPUT"
# IR_VAR
xchain0_n53_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        jmp              xchain0_n55_α
# IR_LIT_INTEGER
xchain0_n54_α:
                        mov              qword ptr [rbp + 1520], 6
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rbp + 1528], rax
                        jmp              xchain0_n56_α
.Lx62_0:
                        .quad            1
# IR_VAR
xchain0_n55_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        jmp              xchain0_n57_α
xchain0_n56_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 100
                        je               .Lx64_0
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 6
                        jne              .Lx64_2
.Lx64_1:
                        mov              rax, qword ptr [rbp + 1496]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1456], 6
                        mov              qword ptr [rbp + 1464], rax
                        jmp              xchain0_n58_α
.Lx64_0:
                        mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        mov              rdx, qword ptr [rbp + 1520]
                        mov              rcx, qword ptr [rbp + 1528]
                        mov              r8d, 0
                        lea              r9, [rbp + 1456]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain0_n58_α
.Lx64_2:
                        mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        mov              rdx, qword ptr [rbp + 1520]
                        mov              rcx, qword ptr [rbp + 1528]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               xchain0_n41_α
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        jmp              xchain0_n58_α
xchain0_n56_β:
                        jmp              xchain0_n41_α
xchain0_n57_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 100
                        je               .Lx65_0
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 100
                        je               .Lx65_0
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 6
                        jne              .Lx65_2
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 6
                        jne              .Lx65_2
.Lx65_1:
                        mov              rax, qword ptr [rbp + 1832]
                        mov              rcx, qword ptr [rbp + 1864]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1792], 6
                        mov              qword ptr [rbp + 1800], rax
                        jmp              xchain0_n59_α
.Lx65_0:
                        mov              rdi, qword ptr [rbp + 1824]
                        mov              rsi, qword ptr [rbp + 1832]
                        mov              rdx, qword ptr [rbp + 1856]
                        mov              rcx, qword ptr [rbp + 1864]
                        mov              r8d, 1
                        lea              r9, [rbp + 1792]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain0_n59_α
.Lx65_2:
                        mov              rdi, qword ptr [rbp + 1824]
                        mov              rsi, qword ptr [rbp + 1832]
                        mov              rdx, qword ptr [rbp + 1856]
                        mov              rcx, qword ptr [rbp + 1864]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               main_γ
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        jmp              xchain0_n59_α
xchain0_n57_β:
                        jmp              main_γ
xchain0_n58_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1456]
                        mov              rcx, qword ptr [rbp + 1464]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        jmp              xchain0_n60_α
xchain0_n59_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1760]
                        mov              rsi, qword ptr [rbp + 1768]
                        mov              rdx, qword ptr [rbp + 1792]
                        mov              rcx, qword ptr [rbp + 1800]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        jmp              xchain0_n61_α
# IR_ASSIGN gva
xchain0_n60_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        jmp              xchain0_n20_α
# IR_ASSIGN global
xchain0_n61_α:
                        mov              rsi, qword ptr [rbp + 1728]
                        mov              rdx, qword ptr [rbp + 1736]
                        mov              rdi, qword ptr [rip + .Lx69_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        jmp              main_γ
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "OUTPUT"
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 1896]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 1896]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
