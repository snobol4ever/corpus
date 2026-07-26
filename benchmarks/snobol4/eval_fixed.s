                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "T1"
.Lgvan1:                .string          "X"
.Lgvan2:                .string          "N"
.Lgvan3:                .string          "R"
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
    .global main_α
    .global main_β
    .global main_γ
    .global main_ω
  sub rsp, 65544
  mov rdi, rsp
  mov ecx, 65544
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1240], rsp
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
#     X = 10
# IR_LIT_INTEGER
xchain0_n8_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rbp + 424], rax
                        jmp              xchain0_n9_α
.Lx12_0:
                        .quad            10
# IR_ASSIGN gva
xchain0_n9_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        jmp              xchain0_n10_α
#     N = 0
# IR_LIT_INTEGER
xchain0_n10_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rbp + 472], rax
                        jmp              xchain0_n11_α
.Lx14_0:
                        .quad            0
# IR_ASSIGN gva
xchain0_n11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        jmp              xchain0_n12_α
# LOOP    N = LT(N, 1000000) N + 1       :F(DONE)
#     :(LOOP)
# IR_VAR
xchain0_n12_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        jmp              xchain0_n13_α
# IR_LIT_INTEGER
xchain0_n13_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rbp + 648], rax
                        jmp              xchain0_n15_α
.Lx17_0:
                        .quad            1000000
# DONE    T2 = TIME()
xchain0_n14_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn19:               .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn19]
                        lea              rsi, [rbp + 928]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                        je               xchain0_n17_α
                        jmp              xchain0_n16_α
xchain0_n14_β:
                        jmp              xchain0_n17_α
# IR_COERCE_NUMERIC
xchain0_n15_α:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 7
                        je               .Lx21_1
                        cmp              eax, 6
                        jne              .Lx21_0
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 6
                        jne              .Lx21_0
.Lx21_1:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 616], rax
                        jmp              xchain0_n18_α
.Lx21_0:
                        lea              rdi, [rbp + 672]
                        lea              rsi, [rbp + 640]
                        lea              rdx, [rbp + 608]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                        jmp              xchain0_n18_α
# IR_ASSIGN gva
xchain0_n16_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        jmp              xchain0_n17_α
#     OUTPUT = "result: " R
# IR_LIT_STRING
xchain0_n17_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rbp + 1000], rax
                        jmp              xchain0_n19_α
.Lx23_0:
                        .quad            .Lx23_0_s
.Lx23_0_s:
                        .string          "result: "
# IR_COERCE_NUMERIC
xchain0_n18_α:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 7
                        je               .Lx25_1
                        cmp              eax, 6
                        jne              .Lx25_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 6
                        jne              .Lx25_0
.Lx25_1:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 584], rax
                        jmp              xchain0_n20_α
.Lx25_0:
                        lea              rdi, [rbp + 640]
                        lea              rsi, [rbp + 672]
                        lea              rdx, [rbp + 576]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                        jmp              xchain0_n20_α
# IR_VAR
xchain0_n19_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        jmp              xchain0_n21_α
# IR_CMP_TEST
xchain0_n20_α:
                        lea              rdi, [rbp + 608]
                        lea              rsi, [rbp + 576]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                        jns              xchain0_n14_α
                        mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        jmp              xchain0_n23_α
xchain0_n21_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 1024]
                        mov              rcx, qword ptr [rbp + 1032]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        jmp              xchain0_n24_α
#     OUTPUT = "ms: " (T2 - T1)
# IR_LIT_STRING
xchain0_n22_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rbp + 1112], rax
                        jmp              xchain0_n25_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "ms: "
# IR_VAR
xchain0_n23_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        jmp              xchain0_n26_α
# IR_ASSIGN global
xchain0_n24_α:
                        mov              rsi, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              rdi, qword ptr [rip + .Lx32_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        jmp              xchain0_n22_α
.Lx32_0:
                        .quad            .Lx32_0_s
.Lx32_0_s:
                        .string          "OUTPUT"
# IR_VAR
xchain0_n25_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        jmp              xchain0_n27_α
# IR_LIT_INTEGER
xchain0_n26_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rbp + 776], rax
                        jmp              xchain0_n28_α
.Lx34_0:
                        .quad            1
# IR_VAR
xchain0_n27_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        jmp              xchain0_n29_α
xchain0_n28_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 100
                        je               .Lx36_0
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 6
                        jne              .Lx36_2
.Lx36_1:
                        mov              rax, qword ptr [rbp + 744]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 704], 6
                        mov              qword ptr [rbp + 712], rax
                        jmp              xchain0_n30_α
.Lx36_0:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        mov              r8d, 0
                        lea              r9, [rbp + 704]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain0_n30_α
.Lx36_2:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               xchain0_n14_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        jmp              xchain0_n30_α
xchain0_n28_β:
                        jmp              xchain0_n14_α
xchain0_n29_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 100
                        je               .Lx37_0
                        mov              eax, dword ptr [rbp + 1200]
                        cmp              eax, 100
                        je               .Lx37_0
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 6
                        jne              .Lx37_2
                        mov              eax, dword ptr [rbp + 1200]
                        cmp              eax, 6
                        jne              .Lx37_2
.Lx37_1:
                        mov              rax, qword ptr [rbp + 1176]
                        mov              rcx, qword ptr [rbp + 1208]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1136], 6
                        mov              qword ptr [rbp + 1144], rax
                        jmp              xchain0_n31_α
.Lx37_0:
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        mov              rdx, qword ptr [rbp + 1200]
                        mov              rcx, qword ptr [rbp + 1208]
                        mov              r8d, 1
                        lea              r9, [rbp + 1136]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain0_n31_α
.Lx37_2:
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        mov              rdx, qword ptr [rbp + 1200]
                        mov              rcx, qword ptr [rbp + 1208]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               main_γ
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        jmp              xchain0_n31_α
xchain0_n29_β:
                        jmp              main_γ
xchain0_n30_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        jmp              xchain0_n32_α
xchain0_n31_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1104]
                        mov              rsi, qword ptr [rbp + 1112]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        jmp              xchain0_n33_α
# IR_ASSIGN gva
xchain0_n32_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        jmp              xchain0_n34_α
# IR_ASSIGN global
xchain0_n33_α:
                        mov              rsi, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              rdi, qword ptr [rip + .Lx41_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        jmp              main_γ
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          "OUTPUT"
#     R = EVAL('X + 1')
# IR_LIT_STRING
xchain0_n34_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rbp + 872], rax
                        jmp              xchain0_n35_α
.Lx42_0:
                        .quad            .Lx42_0_s
.Lx42_0_s:
                        .string          "X + 1"
xchain0_n35_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn44:               .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn44]
                        lea              rsi, [rbp + 832]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                        je               xchain0_n12_α
                        jmp              xchain0_n36_α
xchain0_n35_β:
                        jmp              xchain0_n12_α
# IR_ASSIGN gva
xchain0_n36_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        jmp              xchain0_n12_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 1240]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 1240]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
