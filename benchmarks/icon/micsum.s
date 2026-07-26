                        .intel_syntax    noprefix
                        .text
                        .globl           proc_dofile_α
proc_dofile_α:
#=======================================================================================================================
                        .global          proc_dofile_α
                        .global          proc_dofile_β
                        .global          proc_dofile_γ
                        .global          proc_dofile_ω
                        sub              rsp, 4688
                        mov              [rsp + 4664], rcx
                        mov              [rsp + 4672], rdx
                        mov              [rsp + 4680], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 4520], rsp
                        mov              rdi, rsp
                        mov              esi, 4512
                        mov              edx, 4656
                        call             rt_jmp_frame_lexprep2@PLT
proc_dofile_α_body:
# IR_MAKE_LIST
xchain0_n0_α:
                        lea              rdi, [rbp + 4512]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                                                                                        jmp   xchain0_n1_α
xchain0_n1_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 4496]
                        mov              rdx, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx
                                                                                        jmp   xchain0_n2_α
# IR_MAKE_LIST
xchain0_n2_α:
                        lea              rdi, [rbp + 4480]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx
                                                                                        jmp   xchain0_n3_α
xchain0_n3_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 4464]
                        mov              rdx, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 4544], rax
                        mov              qword ptr [rbp + 4552], rdx
                        mov              qword ptr [rbp + 4448], rax
                        mov              qword ptr [rbp + 4456], rdx
                                                                                        jmp   xchain0_n4_α
# IR_VAR
xchain0_n4_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   xchain0_n5_α
xchain0_n5_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3296] -> [zr+3264]
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3272], rax
                        .section         .rodata
.Lrkfn10:               .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn10]
                        lea              rsi, [rbp + 3264]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n6_α
                                                                                        jmp   xchain0_n7_α
xchain0_n5_β:
                                                                                        jmp   xchain0_n6_α
# IR_VAR
xchain0_n6_α:
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   xchain0_n8_α
xchain0_n7_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 3248]
                        mov              rdx, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 4608], rax
                        mov              qword ptr [rbp + 4616], rdx
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                                                                                        jmp   xchain0_n10_α
# IR_UNOP
xchain0_n8_α:
                        mov              rdi, qword ptr [rbp + 4544]
                        mov              rsi, qword ptr [rbp + 4552]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                                                                                        jmp   xchain0_n11_α
# IR_VAR
xchain0_n9_α:
                        mov              rax, qword ptr [rbp + 4592]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 4600]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   xchain0_n12_α
# IR_VAR
xchain0_n10_α:
                        mov              rax, qword ptr [rbp + 4608]
                        mov              qword ptr [rbp + 4416], rax
                        mov              rax, qword ptr [rbp + 4616]
                        mov              qword ptr [rbp + 4424], rax
                                                                                        jmp   xchain0_n14_α
xchain0_n11_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3168] -> [zr+3136]
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3144], rax
                        .section         .rodata
.Lrkfn20:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn20]
                        lea              rsi, [rbp + 3136]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n9_α
                                                                                        jmp   xchain0_n9_α
xchain0_n11_β:
                                                                                        jmp   xchain0_n9_α
# IR_LIT_INTEGER
xchain0_n12_α:
                        mov              qword ptr [rbp + 3088], 6
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   xchain0_n15_α
.Lx21_0:
                        .quad            7
# IR_LIT_INTEGER
xchain0_n13_α:
                        mov              qword ptr [rbp + 2912], 6
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   xchain0_n16_α
.Lx22_0:
                        .quad            0
# IR_GEN_SCAN
xchain0_n14_α:
                        mov              rdi, qword ptr [rbp + 4416]
                        mov              rsi, qword ptr [rbp + 4424]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   xchain0_n17_α
xchain0_n15_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3056] -> [zr+3008]
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3016], rax
# marshal arg1 = producer-box slot [zr+3088] -> [zr+3024]
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3032], rax
                        .section         .rodata
.Lrkfn26:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn26]
                        lea              rsi, [rbp + 3008]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n13_α
                                                                                        jmp   xchain0_n18_α
xchain0_n15_β:
                                                                                        jmp   xchain0_n13_α
xchain0_n16_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 2912]
                        mov              rdx, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                                                                                        jmp   xchain0_n19_α
# IR_LIT_CHARSET
xchain0_n17_α:
                        mov              qword ptr [rbp + 4384], 1
                        mov              dword ptr [rbp + 4388], -1
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rbp + 4392], rax
                                                                                        jmp   xchain0_n20_α
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
                        .string          " "
xchain0_n18_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2992] -> [zr+2960]
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2968], rax
                        .section         .rodata
.Lrkfn30:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn30]
                        lea              rsi, [rbp + 2960]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n13_α
                                                                                        jmp   xchain0_n13_α
xchain0_n18_β:
                                                                                        jmp   xchain0_n13_α
# IR_VAR
xchain0_n19_α:
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   xchain0_n21_α
# IR_SCAN_MANY
xchain0_n20_α:
                        mov              eax, r14d
.Lx34_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx34_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx34_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx34_1
                        add              eax, 1
                                                                                        jmp   .Lx34_0
.Lx34_1:
                        cmp              eax, r14d
                                                                                        je    xchain0_n27_α
                        mov              qword ptr [rbp + 4352], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 4360], rcx
                                                                                        jmp   xchain0_n23_α
xchain0_n20_β:
                                                                                        jmp   xchain0_n27_α
.Lx34_2:
                        .quad            .Lx34_2_s
.Lx34_2_s:
                        .string          " "
# IR_VAR
xchain0_n21_α:
                        mov              rax, qword ptr [rbp + 4576]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 4584]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   xchain0_n24_α
# IR_VAR
xchain0_n22_α:
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   xchain0_n25_α
# IR_SCAN_TAB
xchain0_n23_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 4360]
                        cmp              rax, 1
                                                                                        jge   .Lx40_0
                        add              rax, r15
                        add              rax, 1
.Lx40_0:
                        cmp              rax, 1
                                                                                        jge   .Lx40_239
                        add              rsp, 16
                                                                                        jmp   xchain0_n27_α
.Lx40_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx40_240
                        add              rsp, 16
                                                                                        jmp   xchain0_n27_α
.Lx40_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 4320], rax
                        mov              qword ptr [rbp + 4328], rdx
                                                                                        jmp   xchain0_n27_α
xchain0_n23_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain0_n27_α
# IR_LIST_BANG
xchain0_n24_α:
                        mov              qword ptr [rbp + 2816], 0
.Lx42_0:
                        mov              rdi, qword ptr [rbp + 2832]
                        mov              rsi, qword ptr [rbp + 2840]
                        mov              rdx, qword ptr [rbp + 2816]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              rax, 99
                                                                                        je    xchain0_n22_α
                                                                                        jmp   xchain0_n28_α
xchain0_n24_β:
                        inc              qword ptr [rbp + 2816]
                                                                                        jmp   .Lx42_0
# IR_VAR
xchain0_n25_α:
                        mov              rax, qword ptr [rbp + 4576]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 4584]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   xchain0_n29_α
# IR_VAR
xchain0_n26_α:
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   xchain0_n30_α
# IR_LIT_CHARSET
xchain0_n27_α:
                        mov              qword ptr [rbp + 4288], 1
                        mov              dword ptr [rbp + 4292], -1
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 4296], rax
                                                                                        jmp   xchain0_n32_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "-0123456789"
# IR_LIT_INTEGER
xchain0_n28_α:
                        mov              qword ptr [rbp + 2864], 6
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   xchain0_n33_α
.Lx48_0:
                        .quad            2
# IR_UNOP
xchain0_n29_α:
                        mov              rdi, qword ptr [rbp + 4576]
                        mov              rsi, qword ptr [rbp + 4584]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   xchain0_n34_α
# IR_LIT_INTEGER
xchain0_n30_α:
                        mov              qword ptr [rbp + 2160], 6
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   xchain0_n35_α
.Lx50_0:
                        .quad            7
# IR_VAR
xchain0_n31_α:
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   xchain0_n36_α
# IR_SCAN_MANY
xchain0_n32_α:
                        mov              eax, r14d
.Lx54_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx54_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx54_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx54_1
                        add              eax, 1
                                                                                        jmp   .Lx54_0
.Lx54_1:
                        cmp              eax, r14d
                                                                                        je    xchain0_n45_α
                        mov              qword ptr [rbp + 4256], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 4264], rcx
                                                                                        jmp   xchain0_n38_α
xchain0_n32_β:
                                                                                        jmp   xchain0_n45_α
.Lx54_2:
                        .quad            .Lx54_2_s
.Lx54_2_s:
                        .string          "-0123456789"
# IR_COERCE_NUMERIC
xchain0_n33_α:
                        mov              eax, dword ptr [rbp + 2800]
                        cmp              eax, 7
                                                                                        je    .Lx56_1
                        cmp              eax, 6
                                                                                        jne   .Lx56_0
                        mov              eax, dword ptr [rbp + 2864]
                        cmp              eax, 6
                                                                                        jne   .Lx56_0
.Lx56_1:
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   xchain0_n39_α
.Lx56_0:
                        lea              rdi, [rbp + 2800]
                        lea              rsi, [rbp + 2864]
                        lea              rdx, [rbp + 2768]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n39_α
# IR_COERCE_NUMERIC
xchain0_n34_α:
                        mov              eax, dword ptr [rbp + 4528]
                        cmp              eax, 7
                                                                                        je    .Lx58_1
                        cmp              eax, 6
                                                                                        jne   .Lx58_0
                        mov              eax, dword ptr [rbp + 2496]
                        cmp              eax, 6
                                                                                        jne   .Lx58_0
.Lx58_1:
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   xchain0_n40_α
.Lx58_0:
                        lea              rdi, [rbp + 4528]
                        lea              rsi, [rbp + 2496]
                        lea              rdx, [rbp + 2432]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n40_α
xchain0_n35_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2128] -> [zr+2080]
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2088], rax
# marshal arg1 = producer-box slot [zr+2160] -> [zr+2096]
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2104], rax
                        .section         .rodata
.Lrkfn60:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn60]
                        lea              rsi, [rbp + 2080]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n31_α
                                                                                        jmp   xchain0_n41_α
xchain0_n35_β:
                                                                                        jmp   xchain0_n31_α
xchain0_n36_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1960], rax
                        .section         .rodata
.Lrkfn62:               .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn62]
                        lea              rsi, [rbp + 1952]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n37_α
                                                                                        jmp   xchain0_n42_α
xchain0_n36_β:
                                                                                        jmp   xchain0_n37_α
# IR_VAR_REF
xchain0_n37_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4544]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   xchain0_n43_α
# IR_SCAN_TAB
xchain0_n38_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 4264]
                        cmp              rax, 1
                                                                                        jge   .Lx66_0
                        add              rax, r15
                        add              rax, 1
.Lx66_0:
                        cmp              rax, 1
                                                                                        jge   .Lx66_239
                        add              rsp, 16
                                                                                        jmp   xchain0_n45_α
.Lx66_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx66_240
                        add              rsp, 16
                                                                                        jmp   xchain0_n45_α
.Lx66_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 4224], rax
                        mov              qword ptr [rbp + 4232], rdx
                                                                                        jmp   xchain0_n44_α
xchain0_n38_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain0_n45_α
xchain0_n39_α:
# IR_BINOP_ARITH_REAL
                        mov              rdi, qword ptr [rbp + 2768]
                        mov              rsi, qword ptr [rbp + 2776]
                        mov              rdx, qword ptr [rbp + 2864]
                        mov              rcx, qword ptr [rbp + 2872]
                        mov              r8d, 18
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n22_α
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                                                                                        jmp   xchain0_n46_α
# IR_COERCE_NUMERIC
xchain0_n40_α:
                        mov              eax, dword ptr [rbp + 2496]
                        cmp              eax, 7
                                                                                        je    .Lx69_1
                        cmp              eax, 6
                                                                                        jne   .Lx69_0
                        mov              eax, dword ptr [rbp + 4528]
                        cmp              eax, 6
                                                                                        jne   .Lx69_0
.Lx69_1:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   xchain0_n47_α
.Lx69_0:
                        lea              rdi, [rbp + 2496]
                        lea              rsi, [rbp + 4528]
                        lea              rdx, [rbp + 2400]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n47_α
xchain0_n41_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2064] -> [zr+2032]
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2040], rax
                        .section         .rodata
.Lrkfn71:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn71]
                        lea              rsi, [rbp + 2032]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n31_α
                                                                                        jmp   xchain0_n31_α
xchain0_n41_β:
                                                                                        jmp   xchain0_n31_α
xchain0_n42_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 4544], rax
                        mov              qword ptr [rbp + 4552], rdx
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   xchain0_n37_α
# IR_VAR
xchain0_n43_α:
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   xchain0_n48_α
xchain0_n44_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4224] -> [zr+4192]
                        mov              rax, qword ptr [rbp + 4224]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 4232]
                        mov              qword ptr [rbp + 4200], rax
                        .section         .rodata
.Lrkfn76:               .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn76]
                        lea              rsi, [rbp + 4192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4176], rax
                        mov              qword ptr [rbp + 4184], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n45_α
                                                                                        jmp   xchain0_n50_α
xchain0_n44_β:
                                                                                        jmp   xchain0_n45_α
# IR_LIT_CHARSET
xchain0_n45_α:
                        mov              qword ptr [rbp + 4128], 1
                        mov              dword ptr [rbp + 4132], -1
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   xchain0_n51_α
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          " "
# IR_COERCE_NUMERIC
xchain0_n46_α:
                        mov              eax, dword ptr [rbp + 4528]
                        cmp              eax, 7
                                                                                        je    .Lx79_1
                        cmp              eax, 6
                                                                                        jne   .Lx79_0
                        mov              eax, dword ptr [rbp + 2736]
                        cmp              eax, 6
                                                                                        jne   .Lx79_0
.Lx79_1:
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   xchain0_n52_α
.Lx79_0:
                        lea              rdi, [rbp + 4528]
                        lea              rsi, [rbp + 2736]
                        lea              rdx, [rbp + 2672]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n52_α
xchain0_n47_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 2432]
                        cmp              eax, 100
                                                                                        je    .Lx80_0
                        mov              eax, dword ptr [rbp + 2400]
                        cmp              eax, 100
                                                                                        je    .Lx80_0
                        mov              eax, dword ptr [rbp + 2432]
                        cmp              eax, 6
                                                                                        jne   .Lx80_2
                        mov              eax, dword ptr [rbp + 2400]
                        cmp              eax, 6
                                                                                        jne   .Lx80_2
.Lx80_1:
                        mov              rax, qword ptr [rbp + 2440]
                        mov              rcx, qword ptr [rbp + 2408]
                        cqo
                        idiv             rcx
                        mov              qword ptr [rbp + 2368], 6
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   xchain0_n53_α
.Lx80_0:
                        mov              rdi, qword ptr [rbp + 2432]
                        mov              rsi, qword ptr [rbp + 2440]
                        mov              rdx, qword ptr [rbp + 2400]
                        mov              rcx, qword ptr [rbp + 2408]
                        mov              r8d, 3
                        lea              r9, [rbp + 2368]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain0_n53_α
.Lx80_2:
                        mov              rdi, qword ptr [rbp + 2432]
                        mov              rsi, qword ptr [rbp + 2440]
                        mov              rdx, qword ptr [rbp + 2400]
                        mov              rcx, qword ptr [rbp + 2408]
                        mov              r8d, 3
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n26_α
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   xchain0_n53_α
xchain0_n47_β:
                                                                                        jmp   xchain0_n26_α
# IR_UNOP
xchain0_n48_α:
                        mov              rdi, qword ptr [rbp + 4544]
                        mov              rsi, qword ptr [rbp + 4552]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   xchain0_n54_α
# IR_VAR
xchain0_n49_α:
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   xchain0_n55_α
xchain0_n50_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 4176]
                        mov              rdx, qword ptr [rbp + 4184]
                        mov              qword ptr [rbp + 4624], rax
                        mov              qword ptr [rbp + 4632], rdx
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                                                                                        jmp   xchain0_n45_α
# IR_SCAN_MANY
xchain0_n51_α:
                        mov              eax, r14d
.Lx86_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx86_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx86_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx86_1
                        add              eax, 1
                                                                                        jmp   .Lx86_0
.Lx86_1:
                        cmp              eax, r14d
                                                                                        je    xchain0_n63_α
                        mov              qword ptr [rbp + 4096], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 4104], rcx
                                                                                        jmp   xchain0_n57_α
xchain0_n51_β:
                                                                                        jmp   xchain0_n63_α
.Lx86_2:
                        .quad            .Lx86_2_s
.Lx86_2_s:
                        .string          " "
# IR_COERCE_NUMERIC
xchain0_n52_α:
                        mov              eax, dword ptr [rbp + 2736]
                        cmp              eax, 7
                                                                                        je    .Lx88_1
                        cmp              eax, 6
                                                                                        jne   .Lx88_0
                        mov              eax, dword ptr [rbp + 4528]
                        cmp              eax, 6
                                                                                        jne   .Lx88_0
.Lx88_1:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   xchain0_n58_α
.Lx88_0:
                        lea              rdi, [rbp + 2736]
                        lea              rsi, [rbp + 4528]
                        lea              rdx, [rbp + 2640]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n58_α
xchain0_n53_α:
# BOX IR_CALL sqrt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2368] -> [zr+2336]
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2344], rax
                        .section         .rodata
.Lrkfn90:               .string          "sqrt"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn90]
                        lea              rsi, [rbp + 2336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n26_α
                                                                                        jmp   xchain0_n59_α
xchain0_n53_β:
                                                                                        jmp   xchain0_n26_α
# IR_LIT_INTEGER
xchain0_n54_α:
                        mov              qword ptr [rbp + 1808], 6
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   xchain0_n60_α
.Lx91_0:
                        .quad            2
# IR_LIT_INTEGER
xchain0_n55_α:
                        mov              qword ptr [rbp + 1536], 6
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   xchain0_n61_α
.Lx92_0:
                        .quad            7
# IR_LIT_REAL
xchain0_n56_α:
                        mov              qword ptr [rbp + 1360], 7
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   xchain0_n62_α
.Lx93_0:
                        .quad            0
# IR_SCAN_TAB
xchain0_n57_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 4104]
                        cmp              rax, 1
                                                                                        jge   .Lx95_0
                        add              rax, r15
                        add              rax, 1
.Lx95_0:
                        cmp              rax, 1
                                                                                        jge   .Lx95_239
                        add              rsp, 16
                                                                                        jmp   xchain0_n63_α
.Lx95_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx95_240
                        add              rsp, 16
                                                                                        jmp   xchain0_n63_α
.Lx95_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                                                                                        jmp   xchain0_n63_α
xchain0_n57_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain0_n63_α
xchain0_n58_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 2672]
                        cmp              eax, 100
                                                                                        je    .Lx96_0
                        mov              eax, dword ptr [rbp + 2640]
                        cmp              eax, 100
                                                                                        je    .Lx96_0
                        mov              eax, dword ptr [rbp + 2672]
                        cmp              eax, 6
                                                                                        jne   .Lx96_2
                        mov              eax, dword ptr [rbp + 2640]
                        cmp              eax, 6
                                                                                        jne   .Lx96_2
.Lx96_1:
                        mov              rax, qword ptr [rbp + 2680]
                        mov              rcx, qword ptr [rbp + 2648]
                        add              rax, rcx
                        mov              qword ptr [rbp + 2608], 6
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   xchain0_n64_α
.Lx96_0:
                        mov              rdi, qword ptr [rbp + 2672]
                        mov              rsi, qword ptr [rbp + 2680]
                        mov              rdx, qword ptr [rbp + 2640]
                        mov              rcx, qword ptr [rbp + 2648]
                        mov              r8d, 0
                        lea              r9, [rbp + 2608]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain0_n64_α
.Lx96_2:
                        mov              rdi, qword ptr [rbp + 2672]
                        mov              rsi, qword ptr [rbp + 2680]
                        mov              rdx, qword ptr [rbp + 2640]
                        mov              rcx, qword ptr [rbp + 2648]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n22_α
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   xchain0_n64_α
xchain0_n58_β:
                                                                                        jmp   xchain0_n22_α
# IR_LIT_REAL
xchain0_n59_α:
                        mov              qword ptr [rbp + 2560], 7
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   xchain0_n65_α
.Lx97_0:
                        .quad            4602678819172646912
# IR_COERCE_NUMERIC
xchain0_n60_α:
                        mov              eax, dword ptr [rbp + 1744]
                        cmp              eax, 7
                                                                                        je    .Lx99_1
                        cmp              eax, 6
                                                                                        jne   .Lx99_0
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 6
                                                                                        jne   .Lx99_0
.Lx99_1:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   xchain0_n66_α
.Lx99_0:
                        lea              rdi, [rbp + 1744]
                        lea              rsi, [rbp + 1808]
                        lea              rdx, [rbp + 1712]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n66_α
xchain0_n61_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1456]
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1464], rax
# marshal arg1 = producer-box slot [zr+1536] -> [zr+1472]
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn101:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn101]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n56_α
                                                                                        jmp   xchain0_n67_α
xchain0_n61_β:
                                                                                        jmp   xchain0_n56_α
xchain0_n62_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   xchain0_n68_α
# IR_LIT_INTEGER
xchain0_n63_α:
                        mov              qword ptr [rbp + 4032], 6
                        mov              rax, qword ptr [rip + .Lx00001_0]
                        mov              qword ptr [rbp + 4040], rax
                                                                                        jmp   xchain0_n69_α
.Lx00001_0:
                        .quad            0
xchain0_n64_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 2608]
                        mov              rdx, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   xchain0_n24_β
# IR_COERCE_NUMERIC
xchain0_n65_α:
                        mov              eax, dword ptr [rbp + 2320]
                        cmp              eax, 7
                                                                                        je    .Lx00002_1
                        cmp              eax, 6
                                                                                        jne   .Lx00002_0
                        mov              eax, dword ptr [rbp + 2560]
                        cmp              eax, 6
                                                                                        jne   .Lx00002_0
.Lx00002_1:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   xchain0_n70_α
.Lx00002_0:
                        lea              rdi, [rbp + 2320]
                        lea              rsi, [rbp + 2560]
                        lea              rdx, [rbp + 2288]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n70_α
xchain0_n66_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              eax, 100
                                                                                        je    .Lx00003_0
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              eax, 6
                                                                                        jne   .Lx00003_2
.Lx00003_1:
                        mov              rax, qword ptr [rbp + 1720]
                        mov              rcx, 2
                        cqo
                        idiv             rcx
                        mov              qword ptr [rbp + 1680], 6
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   xchain0_n71_α
.Lx00003_0:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              rdx, qword ptr [rbp + 1808]
                        mov              rcx, qword ptr [rbp + 1816]
                        mov              r8d, 3
                        lea              r9, [rbp + 1680]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain0_n71_α
.Lx00003_2:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              rdx, qword ptr [rbp + 1808]
                        mov              rcx, qword ptr [rbp + 1816]
                        mov              r8d, 3
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n49_α
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   xchain0_n71_α
xchain0_n66_β:
                                                                                        jmp   xchain0_n49_α
xchain0_n67_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1408]
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax
                        .section         .rodata
.Lrkfn109:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn109]
                        lea              rsi, [rbp + 1408]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n56_α
                                                                                        jmp   xchain0_n56_α
xchain0_n67_β:
                                                                                        jmp   xchain0_n56_α
# IR_VAR
xchain0_n68_α:
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   xchain0_n72_α
# IR_SCAN_TAB
xchain0_n69_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00004_0
                        add              rax, r15
                        add              rax, 1
.Lx00004_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00004_239
                        add              rsp, 16
                                                                                        jmp   xchain0_n75_α
.Lx00004_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00004_240
                        add              rsp, 16
                                                                                        jmp   xchain0_n75_α
.Lx00004_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                                                                                        jmp   xchain0_n74_α
xchain0_n69_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain0_n75_α
xchain0_n70_α:
# IR_BINOP_ARITH_REAL
                        mov              rdi, qword ptr [rbp + 2288]
                        mov              rsi, qword ptr [rbp + 2296]
                        mov              rdx, qword ptr [rbp + 2560]
                        mov              rcx, qword ptr [rbp + 2568]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n26_α
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   xchain0_n76_α
# IR_LIT_INTEGER
xchain0_n71_α:
                        mov              qword ptr [rbp + 1840], 6
                        mov              rax, qword ptr [rip + .Lx00005_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   xchain0_n77_α
.Lx00005_0:
                        .quad            1
# IR_LIST_BANG
xchain0_n72_α:
                        mov              qword ptr [rbp + 864], 0
.Lx00006_0:
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              rdx, qword ptr [rbp + 864]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              rax, 99
                                                                                        je    xchain0_n73_α
                                                                                        jmp   xchain0_n78_α
xchain0_n72_β:
                        inc              qword ptr [rbp + 864]
                                                                                        jmp   .Lx00006_0
# KEYWORD_read
xchain0_n73_α:
                        mov              rdi, qword ptr [rip + .Lx00007_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n88_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   xchain0_n79_α
xchain0_n73_β:
                                                                                        jmp   xchain0_n88_α
.Lx00007_0:
                        .quad            .Lx00007_0_s
.Lx00007_0_s:
                        .string          "&e"
xchain0_n74_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 4000]
                        mov              rdx, qword ptr [rbp + 4008]
                        mov              qword ptr [rbp + 4640], rax
                        mov              qword ptr [rbp + 4648], rdx
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                                                                                        jmp   xchain0_n75_α
# IR_DISJUNCTION_NARY
xchain0_n75_α:
                        mov              qword ptr [rbp + 3424], 0
                        mov              qword ptr [rbp + 3432], 0
                        mov              dword ptr [rbp + 3440], 0
                                                                                        jmp   xchain0_n81_α
xchain0_n75_as:
                        mov              eax, dword ptr [rbp + 3440]
                        cmp              eax, 0
                                                                                        jne   .Lx00008_0
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3432], rax
                                                                                        jmp   xchain0_n80_α
.Lx00008_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00008_1
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 3432], rax
                                                                                        jmp   xchain0_n80_α
.Lx00008_1:
                                                                                        jmp   xchain0_n80_α
xchain0_n75_β:
                        mov              eax, dword ptr [rbp + 3440]
                        cmp              eax, 0
                                                                                        je    xchain0_n00001_α
                                                                                        jmp   xchain0_n82_β
xchain0_n75_af:
                        add              dword ptr [rbp + 3440], 1
                        mov              eax, dword ptr [rbp + 3440]
                        cmp              eax, 1
                                                                                        je    xchain0_n82_α
                                                                                        jmp   xchain0_n00001_α
xchain0_n76_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2256] -> [zr+2224]
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2232], rax
                        .section         .rodata
.Lrkfn123:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn123]
                        lea              rsi, [rbp + 2224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n26_α
                                                                                        jmp   xchain0_n84_α
xchain0_n76_β:
                                                                                        jmp   xchain0_n26_α
# IR_COERCE_NUMERIC
xchain0_n77_α:
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 7
                                                                                        je    .Lx00009_1
                        cmp              eax, 6
                                                                                        jne   .Lx00009_0
                        mov              eax, dword ptr [rbp + 1840]
                        cmp              eax, 6
                                                                                        jne   .Lx00009_0
.Lx00009_1:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   xchain0_n85_α
.Lx00009_0:
                        lea              rdi, [rbp + 1680]
                        lea              rsi, [rbp + 1840]
                        lea              rdx, [rbp + 1648]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n85_α
xchain0_n78_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 4560], rax
                        mov              qword ptr [rbp + 4568], rdx
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   xchain0_n86_α
# IR_VAR
xchain0_n79_α:
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   xchain0_n87_α
xchain0_n80_α:
# IR_CONJUNCTION value-forward copy
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3416], rax
                                                                                        jmp   xchain0_n89_α
xchain0_n80_β:
                                                                                        jmp   xchain0_n00001_α
# IR_VAR
xchain0_n81_α:
                        mov              rax, qword ptr [rbp + 4640]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 4648]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   xchain0_n90_α
xchain0_n81_β:
                                                                                        jmp   xchain0_n75_af
# IR_DISJUNCTION_NARY
xchain0_n82_α:
                        mov              qword ptr [rbp + 3600], 0
                        mov              qword ptr [rbp + 3608], 0
                        mov              dword ptr [rbp + 3616], 0
                                                                                        jmp   xchain0_n91_α
xchain0_n82_as:
                        mov              eax, dword ptr [rbp + 3616]
                        cmp              eax, 0
                                                                                        jne   .Lx00010_0
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   xchain0_n75_as
.Lx00010_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00010_1
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   xchain0_n75_as
.Lx00010_1:
                                                                                        jmp   xchain0_n75_as
xchain0_n82_β:
                        mov              eax, dword ptr [rbp + 3616]
                        cmp              eax, 0
                                                                                        je    xchain0_n00001_α
                                                                                        jmp   xchain0_n00001_α
xchain0_n82_af:
                        add              dword ptr [rbp + 3616], 1
                        mov              eax, dword ptr [rbp + 3616]
                        cmp              eax, 1
                                                                                        je    xchain0_n92_α
                                                                                        jmp   xchain0_n00001_α
xchain0_n83_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 3472]
                        mov              rdx, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                                                                                        jmp   xchain0_n75_as
xchain0_n83_β:
                                                                                        jmp   xchain0_n00001_α
xchain0_n84_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 2208]
                        mov              rdx, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                                                                                        jmp   xchain0_n26_α
xchain0_n85_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 100
                                                                                        je    .Lx00011_0
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 6
                                                                                        jne   .Lx00011_2
.Lx00011_1:
                        mov              rax, qword ptr [rbp + 1656]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1616], 6
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   xchain0_n95_α
.Lx00011_0:
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              rdx, qword ptr [rbp + 1840]
                        mov              rcx, qword ptr [rbp + 1848]
                        mov              r8d, 0
                        lea              r9, [rbp + 1616]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain0_n95_α
.Lx00011_2:
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              rdx, qword ptr [rbp + 1840]
                        mov              rcx, qword ptr [rbp + 1848]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n49_α
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   xchain0_n95_α
xchain0_n85_β:
                                                                                        jmp   xchain0_n49_α
# IR_BOUND
xchain0_n86_α:
                        mov              qword ptr [rbp + 912], rsp
                                                                                        jmp   xchain0_n96_α
# IR_VAR
xchain0_n87_α:
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   xchain0_n97_α
# IR_VAR
xchain0_n88_α:
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain0_n98_α
# IR_GEN_SCAN
xchain0_n89_α:
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3384], rax
                        lea              rdi, [rbp + 3344]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 3344]
                        mov              r14, qword ptr [rbp + 3352]
                        mov              r15, qword ptr [rbp + 3360]
                                                                                        jmp   xchain0_n4_α
xchain0_n89_β:
                                                                                        jmp   xchain0_n4_α
# IR_LIT_STRING
xchain0_n90_α:
                        mov              qword ptr [rbp + 3568], 1
                        mov              rax, qword ptr [rip + .Lx00012_0]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   xchain0_n00013_α
.Lx00012_0:
                        .quad            .Lx00012_0_s
.Lx00012_0_s:
                        .string          "overhead"
# IR_VAR
xchain0_n91_α:
                        mov              rax, qword ptr [rbp + 4640]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 4648]
                        mov              qword ptr [rbp + 3800], rax
                                                                                        jmp   xchain0_n00014_α
xchain0_n91_β:
                                                                                        jmp   xchain0_n82_af
# IR_VAR
xchain0_n92_α:
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 3928], rax
                                                                                        jmp   xchain0_n00015_α
xchain0_n92_β:
                                                                                        jmp   xchain0_n00001_α
xchain0_n93_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3696] -> [zr+3648]
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3656], rax
# marshal arg1 = producer-box slot [zr+3728] -> [zr+3664]
                        mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 3672], rax
                        .section         .rodata
.Lrkfn151:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rbp + 3648]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n00001_α
                                                                                        jmp   xchain0_n82_as
xchain0_n93_β:
                                                                                        jmp   xchain0_n00001_α
xchain0_n94_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3920] -> [zr+3872]
                        mov              rax, qword ptr [rbp + 3920]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 3928]
                        mov              qword ptr [rbp + 3880], rax
# marshal arg1 = producer-box slot [zr+3952] -> [zr+3888]
                        mov              rax, qword ptr [rbp + 3952]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 3896], rax
                        .section         .rodata
.Lrkfn153:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn153]
                        lea              rsi, [rbp + 3872]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n00001_α
                                                                                        jmp   xchain0_n82_as
xchain0_n94_β:
                                                                                        jmp   xchain0_n00001_α
# IR_SUBSCRIPT x[i] variable
xchain0_n95_α:
                        mov              rdi, qword ptr [rbp + 1584]
                        mov              rsi, qword ptr [rbp + 1592]
                        mov              rdx, qword ptr [rbp + 1616]
                        mov              rcx, qword ptr [rbp + 1624]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n49_α
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   xchain0_n00016_α
# IR_VAR
xchain0_n96_α:
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   xchain0_n00017_α
# IR_UNOP
xchain0_n97_α:
                        mov              rdi, qword ptr [rbp + 4544]
                        mov              rsi, qword ptr [rbp + 4552]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   xchain0_n00003_α
# IR_LIT_INTEGER
xchain0_n98_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx00018_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   xchain0_n00019_α
.Lx00018_0:
                        .quad            7
# IR_LIT_STRING
xchain0_n99_α:
                        mov              qword ptr [rbp + 112], 1
                        mov              rax, qword ptr [rip + .Lx00020_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   xchain0_n00021_α
.Lx00020_0:
                        .quad            .Lx00020_0_s
.Lx00020_0_s:
                        .string          "   "
xchain0_n00013_α:
# IR_BINOP_TEST
                        mov              rdi, qword ptr [rbp + 4640]
                        mov              rsi, qword ptr [rbp + 4648]
                        mov              rdx, qword ptr [rbp + 3568]
                        mov              rcx, qword ptr [rbp + 3576]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain0_n75_af
                        mov              rdi, qword ptr [rbp + 3568]
                        mov              rsi, qword ptr [rbp + 3576]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                                                                                        jmp   xchain0_n00022_α
# IR_LIT_STRING
xchain0_n00014_α:
                        mov              qword ptr [rbp + 3824], 1
                        mov              rax, qword ptr [rip + .Lx00023_0]
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   xchain0_n00024_α
.Lx00023_0:
                        .quad            .Lx00023_0_s
.Lx00023_0_s:
                        .string          "nothing"
# IR_VAR
xchain0_n00015_α:
                        mov              rax, qword ptr [rbp + 4624]
                        mov              qword ptr [rbp + 3952], rax
                        mov              rax, qword ptr [rbp + 4632]
                        mov              qword ptr [rbp + 3960], rax
                                                                                        jmp   xchain0_n94_α
# IR_GEN_SCAN
xchain0_n00001_α:
                        lea              rdi, [rbp + 3344]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 3344]
                        mov              r14, qword ptr [rbp + 3352]
                        mov              r15, qword ptr [rbp + 3360]
                                                                                        jmp   xchain0_n4_α
xchain0_n00001_β:
                                                                                        jmp   xchain0_n4_α
# IR_DEREF variable -> value
xchain0_n00016_α:
                        mov              rdi, qword ptr [rbp + 1872]
                        mov              rsi, qword ptr [rbp + 1880]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n49_α
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   xchain0_n00025_α
# IR_DISJUNCTION_NARY
xchain0_n00017_α:
                        mov              qword ptr [rbp + 1104], 0
                        mov              qword ptr [rbp + 1112], 0
                        mov              dword ptr [rbp + 1120], 0
                                                                                        jmp   xchain0_n00026_α
xchain0_n00017_as:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 0
                                                                                        jne   .Lx00027_0
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   xchain0_n00004_α
.Lx00027_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00027_1
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   xchain0_n00004_α
.Lx00027_1:
                                                                                        jmp   xchain0_n00004_α
xchain0_n00017_β:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 0
                                                                                        je    xchain0_n00002_α
                                                                                        jmp   xchain0_n00002_α
xchain0_n00017_af:
                        add              dword ptr [rbp + 1120], 1
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 1
                                                                                        je    xchain0_n00005_α
                                                                                        jmp   xchain0_n00002_α
# IR_UNMARK
xchain0_n00002_α:
                        mov              rsp, qword ptr [rbp + 912]
                                                                                        jmp   xchain0_n72_β
# IR_COERCE_NUMERIC
xchain0_n00003_α:
                        mov              eax, dword ptr [rbp + 4528]
                        cmp              eax, 7
                                                                                        je    .Lx00028_1
                        cmp              eax, 6
                                                                                        jne   .Lx00028_0
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 6
                                                                                        jne   .Lx00028_0
.Lx00028_1:
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   xchain0_n00007_α
.Lx00028_0:
                        lea              rdi, [rbp + 4528]
                        lea              rsi, [rbp + 736]
                        lea              rdx, [rbp + 672]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n00007_α
xchain0_n00019_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
.Lrkfn174:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn174]
                        lea              rsi, [rbp + 240]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n99_α
                                                                                        jmp   xchain0_n00029_α
xchain0_n00019_β:
                                                                                        jmp   xchain0_n99_α
# IR_VAR
xchain0_n00021_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   xchain0_n00030_α
# IR_VAR
xchain0_n00022_α:
                        mov              rax, qword ptr [rbp + 4624]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 4632]
                        mov              qword ptr [rbp + 3480], rax
                                                                                        jmp   xchain0_n83_α
xchain0_n00024_α:
# IR_BINOP_TEST
                        mov              rdi, qword ptr [rbp + 4640]
                        mov              rsi, qword ptr [rbp + 4648]
                        mov              rdx, qword ptr [rbp + 3824]
                        mov              rcx, qword ptr [rbp + 3832]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain0_n82_af
                        mov              rdi, qword ptr [rbp + 3824]
                        mov              rsi, qword ptr [rbp + 3832]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                                                                                        jmp   xchain0_n00031_α
xchain0_n00025_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   xchain0_n49_α
# IR_COERCE_NUMERIC
xchain0_n00004_α:
                        mov              eax, dword ptr [rbp + 4528]
                        cmp              eax, 7
                                                                                        je    .Lx00032_1
                        cmp              eax, 6
                                                                                        jne   .Lx00032_0
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 6
                                                                                        jne   .Lx00032_0
.Lx00032_1:
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   xchain0_n00033_α
.Lx00032_0:
                        lea              rdi, [rbp + 4528]
                        lea              rsi, [rbp + 1104]
                        lea              rdx, [rbp + 1040]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n00033_α
# IR_VAR
xchain0_n00026_α:
                        mov              rax, qword ptr [rbp + 4560]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   xchain0_n00034_α
xchain0_n00026_β:
                                                                                        jmp   xchain0_n00017_af
# IR_VAR
xchain0_n00005_α:
                        mov              rax, qword ptr [rbp + 4560]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   xchain0_n00006_α
xchain0_n00005_β:
                                                                                        jmp   xchain0_n00002_α
# IR_LIT_INTEGER
xchain0_n00035_α:
                        mov              qword ptr [rbp + 1136], 6
                        mov              rax, qword ptr [rip + .Lx00036_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   xchain0_n00017_as
xchain0_n00035_β:
                                                                                        jmp   xchain0_n00002_α
.Lx00036_0:
                        .quad            0
xchain0_n00006_α:
# BOX IR_CALL log(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1312] -> [zr+1280]
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                        .section         .rodata
.Lrkfn189:              .string          "log"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn189]
                        lea              rsi, [rbp + 1280]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n00002_α
                                                                                        jmp   xchain0_n00017_as
xchain0_n00006_β:
                                                                                        jmp   xchain0_n00002_α
# IR_COERCE_NUMERIC
xchain0_n00007_α:
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 7
                                                                                        je    .Lx00037_1
                        cmp              eax, 6
                                                                                        jne   .Lx00037_0
                        mov              eax, dword ptr [rbp + 4528]
                        cmp              eax, 6
                                                                                        jne   .Lx00037_0
.Lx00037_1:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   xchain0_n00009_α
.Lx00037_0:
                        lea              rdi, [rbp + 736]
                        lea              rsi, [rbp + 4528]
                        lea              rdx, [rbp + 640]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n00009_α
xchain0_n00029_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn193:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn193]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n99_α
                                                                                        jmp   xchain0_n99_α
xchain0_n00029_β:
                                                                                        jmp   xchain0_n99_α
xchain0_n00030_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+64]
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
# marshal arg1 = producer-box slot [zr+144] -> [zr+80]
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn195:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn195]
                        lea              rsi, [rbp + 64]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n00008_α
                                                                                        jmp   xchain0_n00008_α
xchain0_n00030_β:
                                                                                        jmp   xchain0_n00008_α
# IR_RETURN
xchain0_n00008_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_dofile_γ
# IR_VAR
xchain0_n00031_α:
                        mov              rax, qword ptr [rbp + 4576]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 4584]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   xchain0_n00038_α
# IR_COERCE_NUMERIC
xchain0_n00033_α:
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 7
                                                                                        je    .Lx00039_1
                        cmp              eax, 6
                                                                                        jne   .Lx00039_0
                        mov              eax, dword ptr [rbp + 4528]
                        cmp              eax, 6
                                                                                        jne   .Lx00039_0
.Lx00039_1:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   xchain0_n00040_α
.Lx00039_0:
                        lea              rdi, [rbp + 1104]
                        lea              rsi, [rbp + 4528]
                        lea              rdx, [rbp + 1008]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n00040_α
# IR_LIT_INTEGER
xchain0_n00034_α:
                        mov              qword ptr [rbp + 1232], 6
                        mov              rax, qword ptr [rip + .Lx00041_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   xchain0_n00042_α
.Lx00041_0:
                        .quad            0
xchain0_n00009_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 100
                                                                                        je    .Lx00043_0
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 100
                                                                                        je    .Lx00043_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 6
                                                                                        jne   .Lx00043_2
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 6
                                                                                        jne   .Lx00043_2
.Lx00043_1:
                        mov              rax, qword ptr [rbp + 680]
                        mov              rcx, qword ptr [rbp + 648]
                        cqo
                        idiv             rcx
                        mov              qword ptr [rbp + 608], 6
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   xchain0_n00044_α
.Lx00043_0:
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        mov              r8d, 3
                        lea              r9, [rbp + 608]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain0_n00044_α
.Lx00043_2:
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        mov              r8d, 3
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n88_α
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   xchain0_n00044_α
xchain0_n00009_β:
                                                                                        jmp   xchain0_n88_α
# IR_VAR
xchain0_n00038_α:
                        mov              rax, qword ptr [rbp + 4624]
                        mov              qword ptr [rbp + 3728], rax
                        mov              rax, qword ptr [rbp + 4632]
                        mov              qword ptr [rbp + 3736], rax
                                                                                        jmp   xchain0_n93_α
xchain0_n00040_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 100
                                                                                        je    .Lx00045_0
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 100
                                                                                        je    .Lx00045_0
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 6
                                                                                        jne   .Lx00045_2
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 6
                                                                                        jne   .Lx00045_2
.Lx00045_1:
                        mov              rax, qword ptr [rbp + 1048]
                        mov              rcx, qword ptr [rbp + 1016]
                        add              rax, rcx
                        mov              qword ptr [rbp + 976], 6
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   xchain0_n00046_α
.Lx00045_0:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 1008]
                        mov              rcx, qword ptr [rbp + 1016]
                        mov              r8d, 0
                        lea              r9, [rbp + 976]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain0_n00046_α
.Lx00045_2:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 1008]
                        mov              rcx, qword ptr [rbp + 1016]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n00002_α
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   xchain0_n00046_α
xchain0_n00040_β:
                                                                                        jmp   xchain0_n00002_α
xchain0_n00042_α:
# IR_BINOP_TEST
                        mov              eax, dword ptr [rbp + 4560]
                        cmp              eax, 100
                                                                                        je    .Lx00047_0
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 100
                                                                                        je    .Lx00047_0
                        mov              eax, dword ptr [rbp + 4560]
                        cmp              eax, 6
                                                                                        jne   .Lx00047_2
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 6
                                                                                        jne   .Lx00047_2
.Lx00047_1:
                        mov              rax, qword ptr [rbp + 4568]
                        mov              rcx, qword ptr [rbp + 1240]
                        cmp              rax, rcx
                                                                                        jg    xchain0_n00017_af
                        mov              rcx, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1168], rcx
                        mov              rcx, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1176], rcx
                                                                                        jmp   xchain0_n00035_α
.Lx00047_0:
                        mov              rdi, qword ptr [rbp + 4560]
                        mov              rsi, qword ptr [rbp + 4568]
                        mov              rdx, qword ptr [rbp + 1232]
                        mov              rcx, qword ptr [rbp + 1240]
                        mov              r8d, 6
                        lea              r9, [rbp + 1168]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00047_1
                        cmp              eax, 1
                                                                                        je    xchain0_n00017_af
                                                                                        jmp   xchain0_n00035_α
.Lx00047_2:
                        mov              rdi, qword ptr [rbp + 4560]
                        mov              rsi, qword ptr [rbp + 4568]
                        mov              rdx, qword ptr [rbp + 1232]
                        mov              rcx, qword ptr [rbp + 1240]
                        mov              r8d, 6
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain0_n00017_af
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   xchain0_n00035_α
# IR_COERCE_NUMERIC
xchain0_n00044_α:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 7
                                                                                        je    .Lx00048_1
                        cmp              eax, 6
                                                                                        jne   .Lx00048_0
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 6
                                                                                        jne   .Lx00048_0
.Lx00048_1:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   xchain0_n00049_α
.Lx00048_0:
                        lea              rdi, [rbp + 576]
                        lea              rsi, [rbp + 608]
                        lea              rdx, [rbp + 544]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n00049_α
xchain0_n00046_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   xchain0_n00002_α
# IR_COERCE_NUMERIC
xchain0_n00049_α:
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 7
                                                                                        je    .Lx00050_1
                        cmp              eax, 6
                                                                                        jne   .Lx00050_0
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 6
                                                                                        jne   .Lx00050_0
.Lx00050_1:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   xchain0_n00051_α
.Lx00050_0:
                        lea              rdi, [rbp + 608]
                        lea              rsi, [rbp + 576]
                        lea              rdx, [rbp + 512]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n00051_α
xchain0_n00051_α:
# IR_BINOP_ARITH_REAL
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        mov              r8d, 18
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n88_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   xchain0_n00010_α
# IR_LIT_REAL
xchain0_n00010_α:
                        mov              qword ptr [rbp + 800], 7
                        mov              rax, qword ptr [rip + .Lx00052_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   xchain0_n00053_α
.Lx00052_0:
                        .quad            4602678819172646912
# IR_COERCE_NUMERIC
xchain0_n00053_α:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 7
                                                                                        je    .Lx00054_1
                        cmp              eax, 6
                                                                                        jne   .Lx00054_0
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 6
                                                                                        jne   .Lx00054_0
.Lx00054_1:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   xchain0_n00055_α
.Lx00054_0:
                        lea              rdi, [rbp + 480]
                        lea              rsi, [rbp + 800]
                        lea              rdx, [rbp + 448]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n00055_α
xchain0_n00055_α:
# IR_BINOP_ARITH_REAL
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 808]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n88_α
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   xchain0_n00011_α
xchain0_n00011_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+384]
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn218:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn218]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n88_α
                                                                                        jmp   xchain0_n00056_α
xchain0_n00011_β:
                                                                                        jmp   xchain0_n88_α
xchain0_n00056_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   xchain0_n88_α
proc_dofile_res:
                        add              rsp, 8
                        pop              rbp
proc_dofile_β:
                                                                                        jmp   proc_dofile_ω
proc_dofile_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 4664]
                        lea              rsp, [rbp + 4688]
                        mov              rbp, [rbp + 4680]
                                                                                        jmp   rax
proc_dofile_ω:
                        mov              rax, [rbp + 4672]
                        lea              rsp, [rbp + 4688]
                        mov              rbp, [rbp + 4680]
                                                                                        jmp   rax
proc_dofile_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
                        pop              r11
                        sub              rsp, 4704
                        mov              qword ptr [rsp + 4696], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 4656], r11
                        lea              rax, [rip + .Lx00057_2]
                        mov              qword ptr [rbp + 4664], rax
                        lea              rax, [rip + .Lx00057_3]
                        mov              qword ptr [rbp + 4672], rax
                        mov              qword ptr [rbp + 4520], rbp
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 4512
                        mov              edx, 4656
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_dofile_α_body
.Lx00057_2:
                        mov              rdx, qword ptr [rsp + -4704]
                        mov              rcx, rsp
                        add              rcx, -4688
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00057_3:
                        mov              rdi, qword ptr [rsp + -4704]
                        mov              rsi, rsp
                        add              rsi, -4688
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "dofile"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_dofile_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 4656
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_dofile_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
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
                        mov              qword ptr [rsp + 904], rsp
                        mov              r12, qword ptr [1879048192]
                        mov              [rsp + 65536], rbp
                        mov              rbp, rsp
                        push             rsi
                        sub              rsp, 8
                        call             rt_main_args_fetch@PLT
                        add              rsp, 8
                        pop              rsi
                        mov              [rbp + 16], rax
                        mov              [rbp + 24], rdx
main_α_body:
# IR_LIT_STRING
xchain00058_n0_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx00059_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   xchain00058_n1_α
.Lx00059_0:
                        .quad            .Lx00059_0_s
.Lx00059_0_s:
                        .string          "  N ovhead rmserr median  gmean   filename"
xchain00058_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn224:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn224]
                        lea              rsi, [rbp + 832]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    xchain00058_n2_α
                                                                                        jmp   xchain00058_n2_α
xchain00058_n1_β:
                                                                                        jmp   xchain00058_n2_α
# IR_DISJUNCTION_NARY
xchain00058_n2_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   xchain00058_n3_α
xchain00058_n2_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx00060_0
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   main_ω
.Lx00060_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00060_1
                                                                                        jmp   main_ω
.Lx00060_1:
                                                                                        jmp   main_ω
xchain00058_n2_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    main_ω
                                                                                        jmp   xchain00058_n5_β
xchain00058_n2_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    xchain00058_n4_α
                                                                                        jmp   main_ω
# IR_VAR
xchain00058_n3_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   xchain00058_n7_α
xchain00058_n3_β:
                                                                                        jmp   xchain00058_n2_af
# IR_VAR
xchain00058_n4_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   xchain00058_n8_α
xchain00058_n4_β:
                                                                                        jmp   main_ω
xchain00058_n5_α:
                                                                                        jmp   xchain00058_n4_α
xchain00058_n5_β:
                                                                                        jmp   xchain00058_n4_α
xchain00058_n6_α:
                        lea              rsi, [rbp + 128]
                        lea              rdx, [rbp + 160]
                        call             proc_dofile_dcα
                                                                                        jmp   .Lx00061_2
.Lx00061_2:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   xchain00058_n2_as
xchain00058_n6_β:
                                                                                        jmp   main_ω
.Lx00061_0:
                        .quad            .Lx00061_0_s
.Lx00061_0_s:
                        .string          "dofile"
# IR_UNOP
xchain00058_n7_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   xchain00058_n9_α
xchain00058_n8_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+352]
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn236:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn236]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   xchain00058_n10_α
xchain00058_n8_β:
                                                                                        jmp   main_ω
# IR_LIT_INTEGER
xchain00058_n9_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx00062_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain00058_n11_α
.Lx00062_0:
                        .quad            0
xchain00058_n10_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   xchain00058_n12_α
xchain00058_n11_α:
# IR_BINOP_TEST
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 100
                                                                                        je    .Lx00063_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 100
                                                                                        je    .Lx00063_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 6
                                                                                        jne   .Lx00063_2
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 6
                                                                                        jne   .Lx00063_2
.Lx00063_1:
                        mov              rax, qword ptr [rbp + 232]
                        mov              rcx, qword ptr [rbp + 296]
                        cmp              rax, rcx
                                                                                        jne   xchain00058_n2_af
                        mov              rcx, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rcx
                        mov              rcx, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rcx
                                                                                        jmp   xchain00058_n13_α
.Lx00063_0:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        mov              r8d, 9
                        lea              r9, [rbp + 192]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00063_1
                        cmp              eax, 1
                                                                                        je    xchain00058_n2_af
                                                                                        jmp   xchain00058_n13_α
.Lx00063_2:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    xchain00058_n2_af
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   xchain00058_n13_α
# IR_DISJUNCTION_NARY
xchain00058_n12_α:
                        mov              qword ptr [rbp + 576], 0
                        mov              qword ptr [rbp + 584], 0
                        mov              dword ptr [rbp + 592], 0
                                                                                        jmp   xchain00058_n15_α
xchain00058_n12_as:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 0
                                                                                        jne   .Lx00064_0
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   xchain00058_n14_α
.Lx00064_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00064_1
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   xchain00058_n14_α
.Lx00064_1:
                                                                                        jmp   xchain00058_n14_α
xchain00058_n12_β:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 0
                                                                                        je    xchain00058_n12_af
                                                                                        jmp   xchain00058_n12_af
xchain00058_n12_af:
                        add              dword ptr [rbp + 592], 1
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 1
                                                                                        je    xchain00058_n16_α
                                                                                        jmp   xchain00058_n20_α
# KEYWORD_read
xchain00058_n13_α:
                        mov              rdi, qword ptr [rip + .Lx00065_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    main_ω
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   xchain00058_n19_α
xchain00058_n13_β:
                                                                                        jmp   main_ω
.Lx00065_0:
                        .quad            .Lx00065_0_s
.Lx00065_0_s:
                        .string          "&input"
xchain00058_n14_α:
# IR_ASSIGN local
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   xchain00058_n20_α
# IR_VAR
xchain00058_n15_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   xchain00058_n17_α
xchain00058_n15_β:
                                                                                        jmp   xchain00058_n12_af
# IR_LIT_STRING
xchain00058_n16_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx00066_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   xchain00058_n21_α
xchain00058_n16_β:
                                                                                        jmp   xchain00058_n12_af
.Lx00066_0:
                        .quad            .Lx00066_0_s
.Lx00066_0_s:
                        .string          "cannot open "
xchain00058_n17_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+624]
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn248:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn248]
                        lea              rsi, [rbp + 624]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    xchain00058_n12_af
                                                                                        jmp   xchain00058_n12_as
xchain00058_n17_β:
                                                                                        jmp   xchain00058_n12_af
xchain00058_n18_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+704]
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
# marshal arg1 = producer-box slot [zr+784] -> [zr+720]
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lrkfn250:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn250]
                        lea              rsi, [rbp + 704]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    xchain00058_n12_af
                                                                                        jmp   xchain00058_n12_as
xchain00058_n18_β:
                                                                                        jmp   xchain00058_n12_af
# IR_LIT_STRING
xchain00058_n19_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx00067_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   xchain00058_n6_α
.Lx00067_0:
                        .quad            .Lx00067_0_s
.Lx00067_0_s:
                        .string          "stdin"
# IR_VAR
xchain00058_n20_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   xchain00058_n22_α
# IR_VAR
xchain00058_n21_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   xchain00058_n18_α
# IR_VAR
xchain00058_n22_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   xchain00058_n23_α
xchain00058_n23_α:
                        lea              rsi, [rbp + 496]
                        lea              rdx, [rbp + 528]
                        call             proc_dofile_dcα
                                                                                        jmp   .Lx00068_2
.Lx00068_2:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    xchain00058_n4_α
                                                                                        jmp   xchain00058_n24_α
xchain00058_n23_β:
                                                                                        jmp   xchain00058_n4_α
.Lx00068_0:
                        .quad            .Lx00068_0_s
.Lx00068_0_s:
                        .string          "dofile"
xchain00058_n24_α:
# IR_CONJUNCTION value-forward copy
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   xchain00058_n4_α
xchain00058_n24_β:
                                                                                        jmp   xchain00058_n4_α
main_β:
                                                                                        jmp   main_ω
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, qword ptr [rbp + 904]
                        mov              rbp, [rsp + 65536]
                        add              rsp, 65544
                        ret
main_ω:
                        mov              rsp, qword ptr [rbp + 904]
                        mov              dword ptr [rsp+0], 99
                        mov              dword ptr [rsp+4], 0
                        mov              qword ptr [rsp+8], 0
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 65536]
                        add              rsp, 65544
                        ret
