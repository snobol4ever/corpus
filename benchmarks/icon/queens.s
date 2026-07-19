  .intel_syntax noprefix
  .text
  .globl proc_q_α
proc_q_α:
#=======================================================================================================================
    .global proc_q_α
    .global proc_q_β
    .global proc_q_γ
    .global proc_q_ω
  sub rsp, 3552
  mov [rsp + 3528], rcx
  mov [rsp + 3536], rdx
  mov [rsp + 3544], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 3520
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 3496], rsp
  mov rdi, rsp
  mov esi, 3520
  call rt_jmp_frame_lexprep@PLT
proc_q_α_body:
# IR_DISJUNCTION_NARY
 xchain0_n0_α:
 mov qword ptr [rbp + 2512], 0
 mov qword ptr [rbp + 2520], 0
 mov dword ptr [rbp + 2528], 0
 jmp xchain0_n2_α
xchain0_n0_as:
 mov eax, dword ptr [rbp + 2528]
 cmp eax, 0
 jne .Lx2_0
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2520], rax
 jmp xchain0_n1_α
.Lx2_0:
 jmp xchain0_n1_α
 xchain0_n0_β:
 mov eax, dword ptr [rbp + 2528]
 jmp xchain0_n1_α
xchain0_n0_af:
 add dword ptr [rbp + 2528], 1
 mov eax, dword ptr [rbp + 2528]
 jmp xchain0_n1_α
# IR_LIT_INTEGER
 xchain0_n1_α:
 mov qword ptr [rbp + 1040], 6
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain0_n4_α
.Lx3_0:
 .quad 0
# IR_VAR_REF
 xchain0_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052416
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain0_n5_α
 xchain0_n2_β:
 jmp xchain0_n0_af
 xchain0_n3_α:
 jmp xchain0_n0_as
xchain0_n3_β:
 jmp xchain0_n1_α
# IR_VAR_REF
 xchain0_n4_α:
 mov rax, 4294967305
 mov rdx, 1879052400
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain0_n6_α
# IR_NULLTEST_VAR
 xchain0_n5_α:
 mov eax, dword ptr [rbp + 3376]
 cmp eax, 99
 je xchain0_n0_af
 mov rdi, qword ptr [rbp + 3376]
 mov rsi, qword ptr [rbp + 3384]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n0_af
 cmp eax, 0
 jne xchain0_n0_af
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 3408], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 3416], rax
 jmp xchain0_n7_α
# IR_LIT_INTEGER
 xchain0_n6_α:
 mov qword ptr [rbp + 1152], 6
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain0_n8_α
.Lx10_0:
 .quad 1
# IR_LIT_INTEGER
 xchain0_n7_α:
 mov qword ptr [rbp + 3456], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [rbp + 3464], rax
 jmp xchain0_n9_α
.Lx11_0:
 .quad 1
# IR_VAR
 xchain0_n8_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain0_n10_α
# IR_ASSIGN_VAR
 xchain0_n9_α:
 mov rdi, qword ptr [rbp + 3408]
 mov rsi, qword ptr [rbp + 3416]
 mov rdx, qword ptr [rbp + 3456]
 mov rcx, qword ptr [rbp + 3464]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n0_af
 mov qword ptr [rbp + 3440], rax
 mov qword ptr [rbp + 3448], rdx
 jmp xchain0_n11_α
# IR_TO
 xchain0_n10_α:
 mov rdi, qword ptr [rbp + 1152]
 mov rsi, qword ptr [rbp + 1160]
 call to_int@PLT
 mov qword ptr [rbp + 1152], 6
 mov qword ptr [rbp + 1160], rax
 mov rdi, qword ptr [rbp + 1184]
 mov rsi, qword ptr [rbp + 1192]
 call to_int@PLT
 mov qword ptr [rbp + 1184], 6
 mov qword ptr [rbp + 1192], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1136], rax
.Lx15_0:
 mov rax, qword ptr [rbp + 1136]
 mov rcx, qword ptr [rbp + 1192]
 cmp rax, rcx
 jg proc_q_ω
 mov qword ptr [rbp + 1120], 6
 mov qword ptr [rbp + 1128], rax
 jmp xchain0_n12_α
 xchain0_n10_β:
 inc qword ptr [rbp + 1136]
 jmp .Lx15_0
# IR_LIT_INTEGER
 xchain0_n11_α:
 mov qword ptr [rbp + 3248], 6
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [rbp + 3256], rax
 jmp xchain0_n13_α
.Lx16_0:
 .quad 2
 xchain0_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1120]
 mov rdx, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain0_n14_α
# IR_VAR
 xchain0_n13_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain0_n15_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n14_α:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, qword ptr [rbp + 1104]
 mov rcx, qword ptr [rbp + 1112]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n10_β
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain0_n17_α
# IR_COERCE_NUMERIC
 xchain0_n15_α:
 mov eax, dword ptr [rbp + 3280]
 cmp eax, 7
 je .Lx21_1
 cmp eax, 6
 jne .Lx21_0
 mov eax, dword ptr [rbp + 3248]
 cmp eax, 6
 jne .Lx21_0
.Lx21_1:
 mov rax, qword ptr [rbp + 3280]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 3288]
 mov qword ptr [rbp + 3224], rax
 jmp xchain0_n18_α
.Lx21_0:
 lea rdi, [rbp + 3280]
 lea rsi, [rbp + 3248]
 lea rdx, [rbp + 3216]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n18_α
# IR_LIT_INTEGER
 xchain0_n16_α:
 mov qword ptr [rbp + 2912], 6
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [rbp + 2920], rax
 jmp xchain0_n19_α
.Lx22_0:
 .quad 2
# IR_DEREF variable -> value
 xchain0_n17_α:
 mov rdi, qword ptr [rbp + 1216]
 mov rsi, qword ptr [rbp + 1224]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n10_β
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain0_n20_α
 xchain0_n18_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3216]
 cmp eax, 100
 je .Lx24_0
 mov eax, dword ptr [rbp + 3216]
 cmp eax, 6
 jne .Lx24_2
.Lx24_1:
 mov rax, 2
 mov rcx, qword ptr [rbp + 3224]
 imul rax, rcx
 mov qword ptr [rbp + 3184], 6
 mov qword ptr [rbp + 3192], rax
 jmp xchain0_n21_α
.Lx24_0:
 mov rdi, qword ptr [rbp + 3248]
 mov rsi, qword ptr [rbp + 3256]
 mov rdx, qword ptr [rbp + 3216]
 mov rcx, qword ptr [rbp + 3224]
 mov r8d, 2
 lea r9, [rbp + 3184]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain0_n21_α
.Lx24_2:
 mov rdi, qword ptr [rbp + 3248]
 mov rsi, qword ptr [rbp + 3256]
 mov rdx, qword ptr [rbp + 3216]
 mov rcx, qword ptr [rbp + 3224]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n16_α
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain0_n21_α
 xchain0_n18_β:
 jmp xchain0_n16_α
# IR_VAR
 xchain0_n19_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 jmp xchain0_n22_α
 xchain0_n20_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 100
 je .Lx26_0
 mov eax, dword ptr [rbp + 1248]
 cmp eax, 100
 je .Lx26_0
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 6
 jne .Lx26_2
 mov eax, dword ptr [rbp + 1248]
 cmp eax, 6
 jne .Lx26_2
.Lx26_1:
 mov rax, qword ptr [rbp + 1048]
 mov rcx, qword ptr [rbp + 1256]
 cmp rax, rcx
 jne xchain0_n10_β
 mov rcx, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1008], rcx
 mov rcx, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1016], rcx
 jmp xchain0_n24_α
.Lx26_0:
 mov rdi, qword ptr [rbp + 1040]
 mov rsi, qword ptr [rbp + 1048]
 mov rdx, qword ptr [rbp + 1248]
 mov rcx, qword ptr [rbp + 1256]
 mov r8d, 9
 lea r9, [rbp + 1008]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx26_1
 cmp eax, 1
 je xchain0_n10_β
 jmp xchain0_n24_α
.Lx26_2:
 mov rdi, qword ptr [rbp + 1040]
 mov rsi, qword ptr [rbp + 1048]
 mov rdx, qword ptr [rbp + 1248]
 mov rcx, qword ptr [rbp + 1256]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n10_β
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1016], rax
 jmp xchain0_n24_α
# IR_LIT_INTEGER
 xchain0_n21_α:
 mov qword ptr [rbp + 3312], 6
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [rbp + 3320], rax
 jmp xchain0_n25_α
.Lx27_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain0_n22_α:
 mov eax, dword ptr [rbp + 2944]
 cmp eax, 7
 je .Lx29_1
 cmp eax, 6
 jne .Lx29_0
 mov eax, dword ptr [rbp + 2912]
 cmp eax, 6
 jne .Lx29_0
.Lx29_1:
 mov rax, qword ptr [rbp + 2944]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 2952]
 mov qword ptr [rbp + 2888], rax
 jmp xchain0_n26_α
.Lx29_0:
 lea rdi, [rbp + 2944]
 lea rsi, [rbp + 2912]
 lea rdx, [rbp + 2880]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n26_α
# IR_VAR
 xchain0_n23_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n24_α:
 mov rax, 4294967305
 mov rdx, 1879052368
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain0_n28_α
# IR_COERCE_NUMERIC
 xchain0_n25_α:
 mov eax, dword ptr [rbp + 3184]
 cmp eax, 7
 je .Lx34_1
 cmp eax, 6
 jne .Lx34_0
 mov eax, dword ptr [rbp + 3312]
 cmp eax, 6
 jne .Lx34_0
.Lx34_1:
 mov rax, qword ptr [rbp + 3184]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 3160], rax
 jmp xchain0_n29_α
.Lx34_0:
 lea rdi, [rbp + 3184]
 lea rsi, [rbp + 3312]
 lea rdx, [rbp + 3152]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n29_α
 xchain0_n26_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2880]
 cmp eax, 100
 je .Lx35_0
 mov eax, dword ptr [rbp + 2880]
 cmp eax, 6
 jne .Lx35_2
.Lx35_1:
 mov rax, 2
 mov rcx, qword ptr [rbp + 2888]
 imul rax, rcx
 mov qword ptr [rbp + 2848], 6
 mov qword ptr [rbp + 2856], rax
 jmp xchain0_n30_α
.Lx35_0:
 mov rdi, qword ptr [rbp + 2912]
 mov rsi, qword ptr [rbp + 2920]
 mov rdx, qword ptr [rbp + 2880]
 mov rcx, qword ptr [rbp + 2888]
 mov r8d, 2
 lea r9, [rbp + 2848]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain0_n30_α
.Lx35_2:
 mov rdi, qword ptr [rbp + 2912]
 mov rsi, qword ptr [rbp + 2920]
 mov rdx, qword ptr [rbp + 2880]
 mov rcx, qword ptr [rbp + 2888]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n23_α
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 jmp xchain0_n30_α
 xchain0_n26_β:
 jmp xchain0_n23_α
# IR_LIT_INTEGER
 xchain0_n27_α:
 mov qword ptr [rbp + 2672], 6
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [rbp + 2680], rax
 jmp xchain0_n31_α
.Lx36_0:
 .quad 0
# IR_VAR
 xchain0_n28_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain0_n32_α
 xchain0_n29_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3152]
 cmp eax, 100
 je .Lx38_0
 mov eax, dword ptr [rbp + 3152]
 cmp eax, 6
 jne .Lx38_2
.Lx38_1:
 mov rax, qword ptr [rbp + 3160]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 3120], 6
 mov qword ptr [rbp + 3128], rax
 jmp xchain0_n33_α
.Lx38_0:
 mov rdi, qword ptr [rbp + 3152]
 mov rsi, qword ptr [rbp + 3160]
 mov rdx, qword ptr [rbp + 3312]
 mov rcx, qword ptr [rbp + 3320]
 mov r8d, 1
 lea r9, [rbp + 3120]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain0_n33_α
.Lx38_2:
 mov rdi, qword ptr [rbp + 3152]
 mov rsi, qword ptr [rbp + 3160]
 mov rdx, qword ptr [rbp + 3312]
 mov rcx, qword ptr [rbp + 3320]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n16_α
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain0_n33_α
 xchain0_n29_β:
 jmp xchain0_n16_α
# IR_LIT_INTEGER
 xchain0_n30_α:
 mov qword ptr [rbp + 2976], 6
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [rbp + 2984], rax
 jmp xchain0_n34_α
.Lx39_0:
 .quad 1
 xchain0_n31_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2640] -> [zr+2592]
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 2600], rax
# marshal arg1 = producer-box slot [zr+2672] -> [zr+2608]
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2616], rax
  .section .rodata
  .Lrkfn41: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn41]
 lea rsi, [rbp + 2592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 cmp eax, 99
 je xchain0_n1_α
 jmp xchain0_n35_α
 xchain0_n31_β:
 jmp xchain0_n1_α
# IR_VAR
 xchain0_n32_α:
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 1528], rax
 jmp xchain0_n36_α
# IR_LIT_INTEGER
 xchain0_n33_α:
 mov qword ptr [rbp + 3344], 6
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [rbp + 3352], rax
 jmp xchain0_n37_α
.Lx44_0:
 .quad 0
# IR_COERCE_NUMERIC
 xchain0_n34_α:
 mov eax, dword ptr [rbp + 2848]
 cmp eax, 7
 je .Lx46_1
 cmp eax, 6
 jne .Lx46_0
 mov eax, dword ptr [rbp + 2976]
 cmp eax, 6
 jne .Lx46_0
.Lx46_1:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 2824], rax
 jmp xchain0_n38_α
.Lx46_0:
 lea rdi, [rbp + 2848]
 lea rsi, [rbp + 2976]
 lea rdx, [rbp + 2816]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n38_α
# IR_ASSIGN gva
 xchain0_n35_α:
 mov rax, qword ptr [rbp + 2576]
 mov rdx, qword ptr [rbp + 2584]
 mov qword ptr [1879052400], rax
 mov qword ptr [1879052408], rdx
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain0_n3_α
# IR_COERCE_NUMERIC
 xchain0_n36_α:
 mov eax, dword ptr [rbp + 1488]
 cmp eax, 7
 je .Lx49_1
 cmp eax, 6
 jne .Lx49_0
 mov eax, dword ptr [rbp + 3504]
 cmp eax, 6
 jne .Lx49_0
.Lx49_1:
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1464], rax
 jmp xchain0_n39_α
.Lx49_0:
 lea rdi, [rbp + 1488]
 lea rsi, [rbp + 3504]
 lea rdx, [rbp + 1456]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n39_α
 xchain0_n37_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3120] -> [zr+3072]
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 3072], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3080], rax
# marshal arg1 = producer-box slot [zr+3344] -> [zr+3088]
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 3088], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 3096], rax
  .section .rodata
  .Lrkfn51: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn51]
 lea rsi, [rbp + 3072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n40_α
 xchain0_n37_β:
 jmp xchain0_n16_α
 xchain0_n38_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 100
 je .Lx52_0
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 6
 jne .Lx52_2
.Lx52_1:
 mov rax, qword ptr [rbp + 2824]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 2784], 6
 mov qword ptr [rbp + 2792], rax
 jmp xchain0_n41_α
.Lx52_0:
 mov rdi, qword ptr [rbp + 2816]
 mov rsi, qword ptr [rbp + 2824]
 mov rdx, qword ptr [rbp + 2976]
 mov rcx, qword ptr [rbp + 2984]
 mov r8d, 1
 lea r9, [rbp + 2784]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain0_n41_α
.Lx52_2:
 mov rdi, qword ptr [rbp + 2816]
 mov rsi, qword ptr [rbp + 2824]
 mov rdx, qword ptr [rbp + 2976]
 mov rcx, qword ptr [rbp + 2984]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n23_α
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain0_n41_α
 xchain0_n38_β:
 jmp xchain0_n23_α
# IR_COERCE_NUMERIC
 xchain0_n39_α:
 mov eax, dword ptr [rbp + 3504]
 cmp eax, 7
 je .Lx54_1
 cmp eax, 6
 jne .Lx54_0
 mov eax, dword ptr [rbp + 1488]
 cmp eax, 6
 jne .Lx54_0
.Lx54_1:
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 1432], rax
 jmp xchain0_n42_α
.Lx54_0:
 lea rdi, [rbp + 3504]
 lea rsi, [rbp + 1488]
 lea rdx, [rbp + 1424]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n42_α
# IR_ASSIGN gva
 xchain0_n40_α:
 mov rax, qword ptr [rbp + 3056]
 mov rdx, qword ptr [rbp + 3064]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain0_n16_α
# IR_LIT_INTEGER
 xchain0_n41_α:
 mov qword ptr [rbp + 3008], 6
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [rbp + 3016], rax
 jmp xchain0_n43_α
.Lx56_0:
 .quad 0
 xchain0_n42_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1456]
 cmp eax, 100
 je .Lx57_0
 mov eax, dword ptr [rbp + 1424]
 cmp eax, 100
 je .Lx57_0
 mov eax, dword ptr [rbp + 1456]
 cmp eax, 6
 jne .Lx57_2
 mov eax, dword ptr [rbp + 1424]
 cmp eax, 6
 jne .Lx57_2
.Lx57_1:
 mov rax, qword ptr [rbp + 1464]
 mov rcx, qword ptr [rbp + 1432]
 add rax, rcx
 mov qword ptr [rbp + 1392], 6
 mov qword ptr [rbp + 1400], rax
 jmp xchain0_n44_α
.Lx57_0:
 mov rdi, qword ptr [rbp + 1456]
 mov rsi, qword ptr [rbp + 1464]
 mov rdx, qword ptr [rbp + 1424]
 mov rcx, qword ptr [rbp + 1432]
 mov r8d, 0
 lea r9, [rbp + 1392]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain0_n44_α
.Lx57_2:
 mov rdi, qword ptr [rbp + 1456]
 mov rsi, qword ptr [rbp + 1464]
 mov rdx, qword ptr [rbp + 1424]
 mov rcx, qword ptr [rbp + 1432]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n10_β
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain0_n44_α
 xchain0_n42_β:
 jmp xchain0_n10_β
 xchain0_n43_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2784] -> [zr+2736]
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2744], rax
# marshal arg1 = producer-box slot [zr+3008] -> [zr+2752]
 mov rax, qword ptr [rbp + 3008]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 3016]
 mov qword ptr [rbp + 2760], rax
  .section .rodata
  .Lrkfn59: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn59]
 lea rsi, [rbp + 2736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 cmp eax, 99
 je xchain0_n23_α
 jmp xchain0_n45_α
 xchain0_n43_β:
 jmp xchain0_n23_α
# IR_VAR
 xchain0_n44_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1560], rax
 jmp xchain0_n46_α
# IR_ASSIGN gva
 xchain0_n45_α:
 mov rax, qword ptr [rbp + 2720]
 mov rdx, qword ptr [rbp + 2728]
 mov qword ptr [1879052384], rax
 mov qword ptr [1879052392], rdx
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 jmp xchain0_n23_α
# IR_COERCE_NUMERIC
 xchain0_n46_α:
 mov eax, dword ptr [rbp + 1392]
 cmp eax, 7
 je .Lx64_1
 cmp eax, 6
 jne .Lx64_0
 mov eax, dword ptr [rbp + 16]
 cmp eax, 6
 jne .Lx64_0
.Lx64_1:
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1368], rax
 jmp xchain0_n47_α
.Lx64_0:
 lea rdi, [rbp + 1392]
 lea rsi, [rbp + 16]
 lea rdx, [rbp + 1360]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n47_α
# IR_COERCE_NUMERIC
 xchain0_n47_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx66_1
 cmp eax, 6
 jne .Lx66_0
 mov eax, dword ptr [rbp + 1392]
 cmp eax, 6
 jne .Lx66_0
.Lx66_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1336], rax
 jmp xchain0_n48_α
.Lx66_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 1392]
 lea rdx, [rbp + 1328]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n48_α
 xchain0_n48_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1360]
 cmp eax, 100
 je .Lx67_0
 mov eax, dword ptr [rbp + 1328]
 cmp eax, 100
 je .Lx67_0
 mov eax, dword ptr [rbp + 1360]
 cmp eax, 6
 jne .Lx67_2
 mov eax, dword ptr [rbp + 1328]
 cmp eax, 6
 jne .Lx67_2
.Lx67_1:
 mov rax, qword ptr [rbp + 1368]
 mov rcx, qword ptr [rbp + 1336]
 sub rax, rcx
 mov qword ptr [rbp + 1296], 6
 mov qword ptr [rbp + 1304], rax
 jmp xchain0_n49_α
.Lx67_0:
 mov rdi, qword ptr [rbp + 1360]
 mov rsi, qword ptr [rbp + 1368]
 mov rdx, qword ptr [rbp + 1328]
 mov rcx, qword ptr [rbp + 1336]
 mov r8d, 1
 lea r9, [rbp + 1296]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain0_n49_α
.Lx67_2:
 mov rdi, qword ptr [rbp + 1360]
 mov rsi, qword ptr [rbp + 1368]
 mov rdx, qword ptr [rbp + 1328]
 mov rcx, qword ptr [rbp + 1336]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n10_β
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain0_n49_α
 xchain0_n48_β:
 jmp xchain0_n10_β
# IR_SUBSCRIPT x[i] variable
 xchain0_n49_α:
 mov rdi, qword ptr [rbp + 1264]
 mov rsi, qword ptr [rbp + 1272]
 mov rdx, qword ptr [rbp + 1296]
 mov rcx, qword ptr [rbp + 1304]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n10_β
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain0_n50_α
# IR_DEREF variable -> value
 xchain0_n50_α:
 mov rdi, qword ptr [rbp + 1584]
 mov rsi, qword ptr [rbp + 1592]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n10_β
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain0_n51_α
 xchain0_n51_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 1008]
 cmp eax, 100
 je .Lx70_0
 mov eax, dword ptr [rbp + 1616]
 cmp eax, 100
 je .Lx70_0
 mov eax, dword ptr [rbp + 1008]
 cmp eax, 6
 jne .Lx70_2
 mov eax, dword ptr [rbp + 1616]
 cmp eax, 6
 jne .Lx70_2
.Lx70_1:
 mov rax, qword ptr [rbp + 1016]
 mov rcx, qword ptr [rbp + 1624]
 cmp rax, rcx
 jne xchain0_n10_β
 mov rcx, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 976], rcx
 mov rcx, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 984], rcx
 jmp xchain0_n52_α
.Lx70_0:
 mov rdi, qword ptr [rbp + 1008]
 mov rsi, qword ptr [rbp + 1016]
 mov rdx, qword ptr [rbp + 1616]
 mov rcx, qword ptr [rbp + 1624]
 mov r8d, 9
 lea r9, [rbp + 976]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx70_1
 cmp eax, 1
 je xchain0_n10_β
 jmp xchain0_n52_α
.Lx70_2:
 mov rdi, qword ptr [rbp + 1008]
 mov rsi, qword ptr [rbp + 1016]
 mov rdx, qword ptr [rbp + 1616]
 mov rcx, qword ptr [rbp + 1624]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n10_β
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 984], rax
 jmp xchain0_n52_α
# IR_VAR_REF
 xchain0_n52_α:
 mov rax, 4294967305
 mov rdx, 1879052384
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain0_n53_α
# IR_VAR
 xchain0_n53_α:
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 1832], rax
 jmp xchain0_n54_α
# IR_VAR
 xchain0_n54_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1864], rax
 jmp xchain0_n55_α
# IR_COERCE_NUMERIC
 xchain0_n55_α:
 mov eax, dword ptr [rbp + 3504]
 cmp eax, 7
 je .Lx78_1
 cmp eax, 6
 jne .Lx78_0
 mov eax, dword ptr [rbp + 16]
 cmp eax, 6
 jne .Lx78_0
.Lx78_1:
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 1800], rax
 jmp xchain0_n56_α
.Lx78_0:
 lea rdi, [rbp + 3504]
 lea rsi, [rbp + 16]
 lea rdx, [rbp + 1792]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n56_α
# IR_COERCE_NUMERIC
 xchain0_n56_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx80_1
 cmp eax, 6
 jne .Lx80_0
 mov eax, dword ptr [rbp + 3504]
 cmp eax, 6
 jne .Lx80_0
.Lx80_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1768], rax
 jmp xchain0_n57_α
.Lx80_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 3504]
 lea rdx, [rbp + 1760]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n57_α
 xchain0_n57_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 100
 je .Lx81_0
 mov eax, dword ptr [rbp + 1760]
 cmp eax, 100
 je .Lx81_0
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 6
 jne .Lx81_2
 mov eax, dword ptr [rbp + 1760]
 cmp eax, 6
 jne .Lx81_2
.Lx81_1:
 mov rax, qword ptr [rbp + 1800]
 mov rcx, qword ptr [rbp + 1768]
 add rax, rcx
 mov qword ptr [rbp + 1728], 6
 mov qword ptr [rbp + 1736], rax
 jmp xchain0_n58_α
.Lx81_0:
 mov rdi, qword ptr [rbp + 1792]
 mov rsi, qword ptr [rbp + 1800]
 mov rdx, qword ptr [rbp + 1760]
 mov rcx, qword ptr [rbp + 1768]
 mov r8d, 0
 lea r9, [rbp + 1728]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain0_n58_α
.Lx81_2:
 mov rdi, qword ptr [rbp + 1792]
 mov rsi, qword ptr [rbp + 1800]
 mov rdx, qword ptr [rbp + 1760]
 mov rcx, qword ptr [rbp + 1768]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n10_β
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain0_n58_α
 xchain0_n57_β:
 jmp xchain0_n10_β
# IR_LIT_INTEGER
 xchain0_n58_α:
 mov qword ptr [rbp + 1888], 6
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [rbp + 1896], rax
 jmp xchain0_n59_α
.Lx82_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain0_n59_α:
 mov eax, dword ptr [rbp + 1728]
 cmp eax, 7
 je .Lx84_1
 cmp eax, 6
 jne .Lx84_0
 mov eax, dword ptr [rbp + 1888]
 cmp eax, 6
 jne .Lx84_0
.Lx84_1:
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1704], rax
 jmp xchain0_n60_α
.Lx84_0:
 lea rdi, [rbp + 1728]
 lea rsi, [rbp + 1888]
 lea rdx, [rbp + 1696]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n60_α
 xchain0_n60_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1696]
 cmp eax, 100
 je .Lx85_0
 mov eax, dword ptr [rbp + 1696]
 cmp eax, 6
 jne .Lx85_2
.Lx85_1:
 mov rax, qword ptr [rbp + 1704]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 1664], 6
 mov qword ptr [rbp + 1672], rax
 jmp xchain0_n61_α
.Lx85_0:
 mov rdi, qword ptr [rbp + 1696]
 mov rsi, qword ptr [rbp + 1704]
 mov rdx, qword ptr [rbp + 1888]
 mov rcx, qword ptr [rbp + 1896]
 mov r8d, 1
 lea r9, [rbp + 1664]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain0_n61_α
.Lx85_2:
 mov rdi, qword ptr [rbp + 1696]
 mov rsi, qword ptr [rbp + 1704]
 mov rdx, qword ptr [rbp + 1888]
 mov rcx, qword ptr [rbp + 1896]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n10_β
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain0_n61_α
 xchain0_n60_β:
 jmp xchain0_n10_β
# IR_SUBSCRIPT x[i] variable
 xchain0_n61_α:
 mov rdi, qword ptr [rbp + 1632]
 mov rsi, qword ptr [rbp + 1640]
 mov rdx, qword ptr [rbp + 1664]
 mov rcx, qword ptr [rbp + 1672]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n10_β
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain0_n62_α
# IR_DEREF variable -> value
 xchain0_n62_α:
 mov rdi, qword ptr [rbp + 1920]
 mov rsi, qword ptr [rbp + 1928]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n10_β
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain0_n63_α
 xchain0_n63_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 976]
 cmp eax, 100
 je .Lx88_0
 mov eax, dword ptr [rbp + 1952]
 cmp eax, 100
 je .Lx88_0
 mov eax, dword ptr [rbp + 976]
 cmp eax, 6
 jne .Lx88_2
 mov eax, dword ptr [rbp + 1952]
 cmp eax, 6
 jne .Lx88_2
.Lx88_1:
 mov rax, qword ptr [rbp + 984]
 mov rcx, qword ptr [rbp + 1960]
 cmp rax, rcx
 jne xchain0_n10_β
 mov rcx, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 944], rcx
 mov rcx, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 952], rcx
 jmp xchain0_n64_α
.Lx88_0:
 mov rdi, qword ptr [rbp + 976]
 mov rsi, qword ptr [rbp + 984]
 mov rdx, qword ptr [rbp + 1952]
 mov rcx, qword ptr [rbp + 1960]
 mov r8d, 9
 lea r9, [rbp + 944]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx88_1
 cmp eax, 1
 je xchain0_n10_β
 jmp xchain0_n64_α
.Lx88_2:
 mov rdi, qword ptr [rbp + 976]
 mov rsi, qword ptr [rbp + 984]
 mov rdx, qword ptr [rbp + 1952]
 mov rcx, qword ptr [rbp + 1960]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n10_β
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 952], rax
 jmp xchain0_n64_α
# IR_VAR_REF
 xchain0_n64_α:
 mov rax, 4294967305
 mov rdx, 1879052400
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 jmp xchain0_n65_α
# IR_VAR
 xchain0_n65_α:
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 88], rax
 jmp xchain0_n66_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n66_α:
 mov rdi, qword ptr [rbp + 48]
 mov rsi, qword ptr [rbp + 56]
 mov rdx, qword ptr [rbp + 80]
 mov rcx, qword ptr [rbp + 88]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n10_β
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain0_n67_α
# IR_VAR_REF
 xchain0_n67_α:
 mov rax, 4294967305
 mov rdx, 1879052368
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain0_n68_α
# IR_VAR
 xchain0_n68_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain0_n69_α
# IR_VAR
 xchain0_n69_α:
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 440], rax
 jmp xchain0_n70_α
# IR_COERCE_NUMERIC
 xchain0_n70_α:
 mov eax, dword ptr [rbp + 400]
 cmp eax, 7
 je .Lx00001_1
 cmp eax, 6
 jne .Lx00001_0
 mov eax, dword ptr [rbp + 3504]
 cmp eax, 6
 jne .Lx00001_0
.Lx00001_1:
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 jmp xchain0_n71_α
.Lx00001_0:
 lea rdi, [rbp + 400]
 lea rsi, [rbp + 3504]
 lea rdx, [rbp + 368]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n71_α
# IR_COERCE_NUMERIC
 xchain0_n71_α:
 mov eax, dword ptr [rbp + 3504]
 cmp eax, 7
 je .Lx00002_1
 cmp eax, 6
 jne .Lx00002_0
 mov eax, dword ptr [rbp + 400]
 cmp eax, 6
 jne .Lx00002_0
.Lx00002_1:
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 344], rax
 jmp xchain0_n72_α
.Lx00002_0:
 lea rdi, [rbp + 3504]
 lea rsi, [rbp + 400]
 lea rdx, [rbp + 336]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n72_α
 xchain0_n72_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 368]
 cmp eax, 100
 je .Lx00003_0
 mov eax, dword ptr [rbp + 336]
 cmp eax, 100
 je .Lx00003_0
 mov eax, dword ptr [rbp + 368]
 cmp eax, 6
 jne .Lx00003_2
 mov eax, dword ptr [rbp + 336]
 cmp eax, 6
 jne .Lx00003_2
.Lx00003_1:
 mov rax, qword ptr [rbp + 376]
 mov rcx, qword ptr [rbp + 344]
 add rax, rcx
 mov qword ptr [rbp + 304], 6
 mov qword ptr [rbp + 312], rax
 jmp xchain0_n73_α
.Lx00003_0:
 mov rdi, qword ptr [rbp + 368]
 mov rsi, qword ptr [rbp + 376]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 mov r8d, 0
 lea r9, [rbp + 304]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain0_n73_α
.Lx00003_2:
 mov rdi, qword ptr [rbp + 368]
 mov rsi, qword ptr [rbp + 376]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n10_β
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain0_n73_α
 xchain0_n72_β:
 jmp xchain0_n10_β
# IR_VAR
 xchain0_n73_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 472], rax
 jmp xchain0_n74_α
# IR_COERCE_NUMERIC
 xchain0_n74_α:
 mov eax, dword ptr [rbp + 304]
 cmp eax, 7
 je .Lx00004_1
 cmp eax, 6
 jne .Lx00004_0
 mov eax, dword ptr [rbp + 16]
 cmp eax, 6
 jne .Lx00004_0
.Lx00004_1:
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 280], rax
 jmp xchain0_n75_α
.Lx00004_0:
 lea rdi, [rbp + 304]
 lea rsi, [rbp + 16]
 lea rdx, [rbp + 272]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n75_α
# IR_COERCE_NUMERIC
 xchain0_n75_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00005_1
 cmp eax, 6
 jne .Lx00005_0
 mov eax, dword ptr [rbp + 304]
 cmp eax, 6
 jne .Lx00005_0
.Lx00005_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 248], rax
 jmp xchain0_n76_α
.Lx00005_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 304]
 lea rdx, [rbp + 240]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n76_α
 xchain0_n76_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 272]
 cmp eax, 100
 je .Lx00006_0
 mov eax, dword ptr [rbp + 240]
 cmp eax, 100
 je .Lx00006_0
 mov eax, dword ptr [rbp + 272]
 cmp eax, 6
 jne .Lx00006_2
 mov eax, dword ptr [rbp + 240]
 cmp eax, 6
 jne .Lx00006_2
.Lx00006_1:
 mov rax, qword ptr [rbp + 280]
 mov rcx, qword ptr [rbp + 248]
 sub rax, rcx
 mov qword ptr [rbp + 208], 6
 mov qword ptr [rbp + 216], rax
 jmp xchain0_n77_α
.Lx00006_0:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 mov r8d, 1
 lea r9, [rbp + 208]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain0_n77_α
.Lx00006_2:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n10_β
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain0_n77_α
 xchain0_n76_β:
 jmp xchain0_n10_β
# IR_SUBSCRIPT x[i] variable
 xchain0_n77_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n10_β
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain0_n78_α
# IR_VAR_REF
 xchain0_n78_α:
 mov rax, 4294967305
 mov rdx, 1879052384
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain0_n79_α
# IR_VAR
 xchain0_n79_α:
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 760], rax
 jmp xchain0_n80_α
# IR_VAR
 xchain0_n80_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 792], rax
 jmp xchain0_n81_α
# IR_COERCE_NUMERIC
 xchain0_n81_α:
 mov eax, dword ptr [rbp + 3504]
 cmp eax, 7
 je .Lx00007_1
 cmp eax, 6
 jne .Lx00007_0
 mov eax, dword ptr [rbp + 16]
 cmp eax, 6
 jne .Lx00007_0
.Lx00007_1:
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 728], rax
 jmp xchain0_n82_α
.Lx00007_0:
 lea rdi, [rbp + 3504]
 lea rsi, [rbp + 16]
 lea rdx, [rbp + 720]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n82_α
# IR_COERCE_NUMERIC
 xchain0_n82_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00008_1
 cmp eax, 6
 jne .Lx00008_0
 mov eax, dword ptr [rbp + 3504]
 cmp eax, 6
 jne .Lx00008_0
.Lx00008_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 696], rax
 jmp xchain0_n83_α
.Lx00008_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 3504]
 lea rdx, [rbp + 688]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n83_α
 xchain0_n83_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 720]
 cmp eax, 100
 je .Lx00009_0
 mov eax, dword ptr [rbp + 688]
 cmp eax, 100
 je .Lx00009_0
 mov eax, dword ptr [rbp + 720]
 cmp eax, 6
 jne .Lx00009_2
 mov eax, dword ptr [rbp + 688]
 cmp eax, 6
 jne .Lx00009_2
.Lx00009_1:
 mov rax, qword ptr [rbp + 728]
 mov rcx, qword ptr [rbp + 696]
 add rax, rcx
 mov qword ptr [rbp + 656], 6
 mov qword ptr [rbp + 664], rax
 jmp xchain0_n84_α
.Lx00009_0:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 mov r8d, 0
 lea r9, [rbp + 656]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain0_n84_α
.Lx00009_2:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n10_β
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain0_n84_α
 xchain0_n83_β:
 jmp xchain0_n10_β
# IR_LIT_INTEGER
 xchain0_n84_α:
 mov qword ptr [rbp + 816], 6
 mov rax, qword ptr [rip + .Lx00010_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain0_n85_α
.Lx00010_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain0_n85_α:
 mov eax, dword ptr [rbp + 656]
 cmp eax, 7
 je .Lx00011_1
 cmp eax, 6
 jne .Lx00011_0
 mov eax, dword ptr [rbp + 816]
 cmp eax, 6
 jne .Lx00011_0
.Lx00011_1:
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 632], rax
 jmp xchain0_n86_α
.Lx00011_0:
 lea rdi, [rbp + 656]
 lea rsi, [rbp + 816]
 lea rdx, [rbp + 624]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n86_α
 xchain0_n86_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 624]
 cmp eax, 100
 je .Lx00012_0
 mov eax, dword ptr [rbp + 624]
 cmp eax, 6
 jne .Lx00012_2
.Lx00012_1:
 mov rax, qword ptr [rbp + 632]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 592], 6
 mov qword ptr [rbp + 600], rax
 jmp xchain0_n87_α
.Lx00012_0:
 mov rdi, qword ptr [rbp + 624]
 mov rsi, qword ptr [rbp + 632]
 mov rdx, qword ptr [rbp + 816]
 mov rcx, qword ptr [rbp + 824]
 mov r8d, 1
 lea r9, [rbp + 592]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain0_n87_α
.Lx00012_2:
 mov rdi, qword ptr [rbp + 624]
 mov rsi, qword ptr [rbp + 632]
 mov rdx, qword ptr [rbp + 816]
 mov rcx, qword ptr [rbp + 824]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n10_β
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain0_n87_α
 xchain0_n86_β:
 jmp xchain0_n10_β
# IR_SUBSCRIPT x[i] variable
 xchain0_n87_α:
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 mov rdx, qword ptr [rbp + 592]
 mov rcx, qword ptr [rbp + 600]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n10_β
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain0_n88_α
# IR_LIT_INTEGER
 xchain0_n88_α:
 mov qword ptr [rbp + 912], 6
 mov rax, qword ptr [rip + .Lx00013_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain0_n89_α
.Lx00013_0:
 .quad 1
# IR_REV_ASSIGN_VAR
 xchain0_n89_α:
 mov rdi, qword ptr [rbp + 848]
 mov rsi, qword ptr [rbp + 856]
 call rt_deref@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 mov rdi, qword ptr [rbp + 848]
 mov rsi, qword ptr [rbp + 856]
 mov rdx, qword ptr [rbp + 912]
 mov rcx, qword ptr [rbp + 920]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n10_β
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain0_n90_α
 xchain0_n89_β:
 mov rdi, qword ptr [rbp + 848]
 mov rsi, qword ptr [rbp + 856]
 mov rdx, qword ptr [rbp + 896]
 mov rcx, qword ptr [rbp + 904]
 call rt_assign_var@PLT
 jmp xchain0_n10_β
# IR_REV_ASSIGN_VAR
 xchain0_n90_α:
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 call rt_deref@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 mov rdx, qword ptr [rbp + 880]
 mov rcx, qword ptr [rbp + 888]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n89_β
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain0_n91_α
 xchain0_n90_β:
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 mov rdx, qword ptr [rbp + 544]
 mov rcx, qword ptr [rbp + 552]
 call rt_assign_var@PLT
 jmp xchain0_n89_β
# IR_REV_ASSIGN_VAR
 xchain0_n91_α:
 mov rdi, qword ptr [rbp + 112]
 mov rsi, qword ptr [rbp + 120]
 call rt_deref@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 mov rdi, qword ptr [rbp + 112]
 mov rsi, qword ptr [rbp + 120]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n90_β
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain0_n92_α
 xchain0_n91_β:
 mov rdi, qword ptr [rbp + 112]
 mov rsi, qword ptr [rbp + 120]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 call rt_assign_var@PLT
 jmp xchain0_n90_β
 xchain0_n92_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 40], rax
 jmp xchain0_n93_α
xchain0_n92_β:
 jmp proc_q_ω
# IR_BOUND
 xchain0_n93_α:
 mov qword ptr [rbp + 1968], rsp
 jmp xchain0_n94_α
# IR_VAR_REF
 xchain0_n94_α:
 mov rax, 4294967305
 mov rdx, 1879052304
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 jmp xchain0_n95_α
# IR_VAR
 xchain0_n95_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2408], rax
 jmp xchain0_n96_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n96_α:
 mov rdi, qword ptr [rbp + 2368]
 mov rsi, qword ptr [rbp + 2376]
 mov rdx, qword ptr [rbp + 2400]
 mov rcx, qword ptr [rbp + 2408]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n97_α
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 jmp xchain0_n98_α
# IR_DISJUNCTION_NARY
 xchain0_n97_α:
 mov qword ptr [rbp + 2032], 0
 mov qword ptr [rbp + 2040], 0
 mov dword ptr [rbp + 2048], 0
 jmp xchain0_n00001_α
xchain0_n97_as:
 mov eax, dword ptr [rbp + 2048]
 cmp eax, 0
 jne .Lx00014_0
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 2040], rax
 jmp xchain0_n99_α
.Lx00014_0:
 cmp eax, 1
 jne .Lx00014_1
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2040], rax
 jmp xchain0_n99_α
.Lx00014_1:
 jmp xchain0_n99_α
 xchain0_n97_β:
 mov eax, dword ptr [rbp + 2048]
 cmp eax, 0
 je xchain0_n00015_α
 jmp xchain0_n00015_α
xchain0_n97_af:
 add dword ptr [rbp + 2048], 1
 mov eax, dword ptr [rbp + 2048]
 cmp eax, 1
 je xchain0_n00016_α
 jmp xchain0_n00015_α
# IR_VAR
 xchain0_n98_α:
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 2488], rax
 jmp xchain0_n00017_α
 xchain0_n99_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2032]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 2040]
 mov qword ptr [rbp + 2024], rax
 jmp xchain0_n00015_α
xchain0_n99_β:
 jmp xchain0_n00015_α
# IR_VAR
 xchain0_n00001_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2136], rax
 jmp xchain0_n00018_α
 xchain0_n00001_β:
 jmp xchain0_n97_af
# IR_VAR
 xchain0_n00016_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2312], rax
 jmp xchain0_n00004_α
 xchain0_n00016_β:
 jmp xchain0_n00015_α
 xchain0_n00002_α:
 mov edi, 1
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00019_1
 lea rcx, [rip + .Lx00019_3]
 lea rdx, [rip + .Lx00019_4]
 jmp rax
.Lx00019_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00019_2
.Lx00019_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00019_2
.Lx00019_1:
 call rt_faildescr@PLT
.Lx00019_2:
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 cmp eax, 99
 je xchain0_n00015_α
 jmp xchain0_n97_as
 xchain0_n00002_β:
 jmp xchain0_n00015_α
.Lx00019_0:
 .quad .Lx00019_0_s
.Lx00019_0_s:
 .string "show"
 xchain0_n00003_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2240]
 mov rdx, qword ptr [rbp + 2248]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00020_1
 lea rcx, [rip + .Lx00020_3]
 lea rdx, [rip + .Lx00020_4]
 jmp rax
.Lx00020_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00020_2
.Lx00020_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00020_2
.Lx00020_1:
 call rt_faildescr@PLT
.Lx00020_2:
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 cmp eax, 99
 je xchain0_n00015_α
 jmp xchain0_n97_as
 xchain0_n00003_β:
 jmp xchain0_n00015_α
.Lx00020_0:
 .quad .Lx00020_0_s
.Lx00020_0_s:
 .string "q"
# IR_ASSIGN_VAR
 xchain0_n00017_α:
 mov rdi, qword ptr [rbp + 2432]
 mov rsi, qword ptr [rbp + 2440]
 mov rdx, qword ptr [rbp + 2480]
 mov rcx, qword ptr [rbp + 2488]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n97_α
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 jmp xchain0_n97_α
# IR_UNMARK
 xchain0_n00015_α:
 mov rsp, qword ptr [rbp + 1968]
 jmp xchain0_n91_β
# IR_VAR
 xchain0_n00018_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain0_n00021_α
# IR_LIT_INTEGER
 xchain0_n00004_α:
 mov qword ptr [rbp + 2336], 6
 mov rax, qword ptr [rip + .Lx00022_0]
 mov qword ptr [rbp + 2344], rax
 jmp xchain0_n00005_α
.Lx00022_0:
 .quad 1
 xchain0_n00021_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 16]
 cmp eax, 100
 je .Lx00023_0
 mov eax, dword ptr [rbp + 2160]
 cmp eax, 100
 je .Lx00023_0
 mov eax, dword ptr [rbp + 16]
 cmp eax, 6
 jne .Lx00023_2
 mov eax, dword ptr [rbp + 2160]
 cmp eax, 6
 jne .Lx00023_2
.Lx00023_1:
 mov rax, qword ptr [rbp + 24]
 mov rcx, qword ptr [rbp + 2168]
 cmp rax, rcx
 jne xchain0_n97_af
 mov rcx, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2096], rcx
 mov rcx, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2104], rcx
 jmp xchain0_n00002_α
.Lx00023_0:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 mov rdx, qword ptr [rbp + 2160]
 mov rcx, qword ptr [rbp + 2168]
 mov r8d, 9
 lea r9, [rbp + 2096]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00023_1
 cmp eax, 1
 je xchain0_n97_af
 jmp xchain0_n00002_α
.Lx00023_2:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 mov rdx, qword ptr [rbp + 2160]
 mov rcx, qword ptr [rbp + 2168]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n97_af
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2104], rax
 jmp xchain0_n00002_α
# IR_COERCE_NUMERIC
 xchain0_n00005_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00024_1
 cmp eax, 6
 jne .Lx00024_0
 mov eax, dword ptr [rbp + 2336]
 cmp eax, 6
 jne .Lx00024_0
.Lx00024_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2280], rax
 jmp xchain0_n00006_α
.Lx00024_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 2336]
 lea rdx, [rbp + 2272]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n00006_α
 xchain0_n00006_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2272]
 cmp eax, 100
 je .Lx00025_0
 mov eax, dword ptr [rbp + 2272]
 cmp eax, 6
 jne .Lx00025_2
.Lx00025_1:
 mov rax, qword ptr [rbp + 2280]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 2240], 6
 mov qword ptr [rbp + 2248], rax
 jmp xchain0_n00003_α
.Lx00025_0:
 mov rdi, qword ptr [rbp + 2272]
 mov rsi, qword ptr [rbp + 2280]
 mov rdx, qword ptr [rbp + 2336]
 mov rcx, qword ptr [rbp + 2344]
 mov r8d, 0
 lea r9, [rbp + 2240]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain0_n00003_α
.Lx00025_2:
 mov rdi, qword ptr [rbp + 2272]
 mov rsi, qword ptr [rbp + 2280]
 mov rdx, qword ptr [rbp + 2336]
 mov rcx, qword ptr [rbp + 2344]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n00015_α
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain0_n00003_α
 xchain0_n00006_β:
 jmp xchain0_n00015_α
proc_q_res:
add rsp, 8
pop rbp
proc_q_β:
jmp proc_q_ω
proc_q_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 3528]
lea rsp, [rbp + 3552]
mov rbp, [rbp + 3544]
jmp rax
proc_q_ω:
mov rax, [rbp + 3536]
lea rsp, [rbp + 3552]
mov rbp, [rbp + 3544]
jmp rax
  .globl proc_show_α
proc_show_α:
#=======================================================================================================================
    .global proc_show_α
    .global proc_show_β
    .global proc_show_γ
    .global proc_show_ω
  sub rsp, 1888
  mov [rsp + 1864], rcx
  mov [rsp + 1872], rdx
  mov [rsp + 1880], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1856
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1848], rsp
  mov rdi, rsp
  mov esi, 1856
  call rt_jmp_frame_lexprep@PLT
proc_show_α_body:
# IR_DISJUNCTION_NARY
 xchain00026_n0_α:
 mov qword ptr [rbp + 1216], 0
 mov qword ptr [rbp + 1224], 0
 mov dword ptr [rbp + 1232], 0
 jmp xchain00026_n2_α
xchain00026_n0_as:
 mov eax, dword ptr [rbp + 1232]
 cmp eax, 0
 jne .Lx00027_0
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1224], rax
 jmp xchain00026_n1_α
.Lx00027_0:
 jmp xchain00026_n1_α
 xchain00026_n0_β:
 mov eax, dword ptr [rbp + 1232]
 jmp xchain00026_n1_α
xchain00026_n0_af:
 add dword ptr [rbp + 1232], 1
 mov eax, dword ptr [rbp + 1232]
 jmp xchain00026_n1_α
# IR_LIT_STRING
 xchain00026_n1_α:
 mov qword ptr [rbp + 1040], 1
 mov rax, qword ptr [rip + .Lx00028_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00026_n4_α
.Lx00028_0:
 .quad .Lx00028_0_s
.Lx00028_0_s:
 .string "solution: "
# IR_VAR_REF
 xchain00026_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052480
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain00026_n5_α
 xchain00026_n2_β:
 jmp xchain00026_n0_af
 xchain00026_n3_α:
 jmp xchain00026_n0_as
xchain00026_n3_β:
 jmp xchain00026_n1_α
# IR_VAR
 xchain00026_n4_α:
 mov rax, qword ptr [1879052432]
 mov rdx, qword ptr [1879052440]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain00026_n6_α
# IR_NULLTEST_VAR
 xchain00026_n5_α:
 mov eax, dword ptr [rbp + 1728]
 cmp eax, 99
 je xchain00026_n0_af
 mov rdi, qword ptr [rbp + 1728]
 mov rsi, qword ptr [rbp + 1736]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00026_n0_af
 cmp eax, 0
 jne xchain00026_n0_af
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1768], rax
 jmp xchain00026_n8_α
# IR_LIT_INTEGER
 xchain00026_n6_α:
 mov qword ptr [rbp + 1184], 6
 mov rax, qword ptr [rip + .Lx00029_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain00026_n9_α
.Lx00029_0:
 .quad 1
# IR_LIT_STRING
 xchain00026_n7_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx00030_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00026_n10_α
.Lx00030_0:
 .quad .Lx00030_0_s
.Lx00030_0_s:
 .string "  "
# IR_LIT_INTEGER
 xchain00026_n8_α:
 mov qword ptr [rbp + 1808], 6
 mov rax, qword ptr [rip + .Lx00031_0]
 mov qword ptr [rbp + 1816], rax
 jmp xchain00026_n11_α
.Lx00031_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00026_n9_α:
 mov eax, dword ptr [rbp + 1152]
 cmp eax, 7
 je .Lx00032_1
 cmp eax, 6
 jne .Lx00032_0
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 6
 jne .Lx00032_0
.Lx00032_1:
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00026_n12_α
.Lx00032_0:
 lea rdi, [rbp + 1152]
 lea rsi, [rbp + 1184]
 lea rdx, [rbp + 1120]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00026_n12_α
# IR_VAR
 xchain00026_n10_α:
 mov rax, qword ptr [1879052464]
 mov rdx, qword ptr [1879052472]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain00026_n13_α
# IR_ASSIGN_VAR
 xchain00026_n11_α:
 mov rdi, qword ptr [rbp + 1760]
 mov rsi, qword ptr [rbp + 1768]
 mov rdx, qword ptr [rbp + 1808]
 mov rcx, qword ptr [rbp + 1816]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00026_n0_af
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain00026_n15_α
 xchain00026_n12_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1120]
 cmp eax, 100
 je .Lx00033_0
 mov eax, dword ptr [rbp + 1120]
 cmp eax, 6
 jne .Lx00033_2
.Lx00033_1:
 mov rax, qword ptr [rbp + 1128]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 1088], 6
 mov qword ptr [rbp + 1096], rax
 jmp xchain00026_n16_α
.Lx00033_0:
 mov rdi, qword ptr [rbp + 1120]
 mov rsi, qword ptr [rbp + 1128]
 mov rdx, qword ptr [rbp + 1184]
 mov rcx, qword ptr [rbp + 1192]
 mov r8d, 0
 lea r9, [rbp + 1088]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00026_n16_α
.Lx00033_2:
 mov rdi, qword ptr [rbp + 1120]
 mov rsi, qword ptr [rbp + 1128]
 mov rdx, qword ptr [rbp + 1184]
 mov rcx, qword ptr [rbp + 1192]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00026_n7_α
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain00026_n16_α
 xchain00026_n12_β:
 jmp xchain00026_n7_α
 xchain00026_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+864]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 872], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+880]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 888], rax
  .section .rodata
  .Lrkfn180: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn180]
 lea rsi, [rbp + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain00026_n14_α
 jmp xchain00026_n14_α
 xchain00026_n13_β:
 jmp xchain00026_n14_α
# IR_VAR_REF
 xchain00026_n14_α:
 mov rax, 4294967305
 mov rdx, 1879052448
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 jmp xchain00026_n17_α
# IR_LIT_INTEGER
 xchain00026_n15_α:
 mov qword ptr [rbp + 1696], 6
 mov rax, qword ptr [rip + .Lx00034_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain00026_n18_α
.Lx00034_0:
 .quad 0
# IR_ASSIGN gva
 xchain00026_n16_α:
 mov rax, qword ptr [rbp + 1088]
 mov rdx, qword ptr [rbp + 1096]
 mov qword ptr [1879052432], rax
 mov qword ptr [1879052440], rdx
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain00026_n19_α
# IR_LIT_INTEGER
 xchain00026_n17_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00035_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00026_n20_α
.Lx00035_0:
 .quad 4
# IR_ASSIGN gva
 xchain00026_n18_α:
 mov rax, qword ptr [rbp + 1696]
 mov rdx, qword ptr [rbp + 1704]
 mov qword ptr [1879052432], rax
 mov qword ptr [1879052440], rdx
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00026_n21_α
 xchain00026_n19_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+992]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1000], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+1008]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1016], rax
  .section .rodata
  .Lrkfn188: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn188]
 lea rsi, [rbp + 992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain00026_n7_α
 jmp xchain00026_n7_α
 xchain00026_n19_β:
 jmp xchain00026_n7_α
# IR_VAR
 xchain00026_n20_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00026_n22_α
# IR_LIT_STRING
 xchain00026_n21_α:
 mov qword ptr [rbp + 1584], 1
 mov rax, qword ptr [rip + .Lx00036_0]
 mov qword ptr [rbp + 1592], rax
 jmp xchain00026_n24_α
.Lx00036_0:
 .quad .Lx00036_0_s
.Lx00036_0_s:
 .string "|   "
# IR_LIST_BANG
 xchain00026_n22_α:
 mov qword ptr [rbp + 320], 0
.Lx00037_0:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 mov rdx, qword ptr [rbp + 320]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp rax, 99
 je xchain00026_n23_α
 jmp xchain00026_n25_α
 xchain00026_n22_β:
 inc qword ptr [rbp + 320]
 jmp .Lx00037_0
 xchain00026_n23_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn194: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn194]
 lea rsi, [rbp + 32]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 cmp eax, 99
 je proc_show_ω
 jmp proc_show_ω
 xchain00026_n23_β:
 jmp proc_show_ω
# IR_VAR
 xchain00026_n24_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain00026_n26_α
# IR_LIT_INTEGER
 xchain00026_n25_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx00038_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00026_n28_α
.Lx00038_0:
 .quad 1
 xchain00026_n26_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1584] -> [zr+1536]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1544], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1552]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1560], rax
  .section .rodata
  .Lrkfn198: .string "repl"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn198]
 lea rsi, [rbp + 1536]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain00026_n27_α
 jmp xchain00026_n29_α
 xchain00026_n26_β:
 jmp xchain00026_n27_α
# IR_LIT_STRING
 xchain00026_n27_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx00039_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain00026_n30_α
.Lx00039_0:
 .quad .Lx00039_0_s
.Lx00039_0_s:
 .string "----"
# IR_COERCE_NUMERIC
 xchain00026_n28_α:
 mov eax, dword ptr [rbp + 304]
 cmp eax, 7
 je .Lx00040_1
 cmp eax, 6
 jne .Lx00040_0
 mov eax, dword ptr [rbp + 368]
 cmp eax, 6
 jne .Lx00040_0
.Lx00040_1:
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 280], rax
 jmp xchain00026_n31_α
.Lx00040_0:
 lea rdi, [rbp + 304]
 lea rsi, [rbp + 368]
 lea rdx, [rbp + 272]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00026_n31_α
# IR_LIT_STRING
 xchain00026_n29_α:
 mov qword ptr [rbp + 1648], 1
 mov rax, qword ptr [rip + .Lx00041_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain00026_n32_α
.Lx00041_0:
 .quad .Lx00041_0_s
.Lx00041_0_s:
 .string "|"
# IR_VAR
 xchain00026_n30_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain00026_n33_α
 xchain00026_n31_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 272]
 cmp eax, 100
 je .Lx00042_0
 mov eax, dword ptr [rbp + 272]
 cmp eax, 6
 jne .Lx00042_2
.Lx00042_1:
 mov rax, qword ptr [rbp + 280]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 240], 6
 mov qword ptr [rbp + 248], rax
 jmp xchain00026_n34_α
.Lx00042_0:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 368]
 mov rcx, qword ptr [rbp + 376]
 mov r8d, 1
 lea r9, [rbp + 240]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00026_n34_α
.Lx00042_2:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 368]
 mov rcx, qword ptr [rbp + 376]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00026_n23_α
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00026_n34_α
 xchain00026_n31_β:
 jmp xchain00026_n23_α
 xchain00026_n32_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1520]
 mov rsi, qword ptr [rbp + 1528]
 mov rdx, qword ptr [rbp + 1648]
 mov rcx, qword ptr [rbp + 1656]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain00026_n35_α
 xchain00026_n33_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1328]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1336], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1344]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1352], rax
  .section .rodata
  .Lrkfn207: .string "repl"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn207]
 lea rsi, [rbp + 1328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain00026_n1_α
 jmp xchain00026_n36_α
 xchain00026_n33_β:
 jmp xchain00026_n1_α
# IR_COERCE_NUMERIC
 xchain00026_n34_α:
 mov eax, dword ptr [rbp + 240]
 cmp eax, 7
 je .Lx00043_1
 cmp eax, 6
 jne .Lx00043_0
 mov eax, dword ptr [rbp + 208]
 cmp eax, 6
 jne .Lx00043_0
.Lx00043_1:
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
 jmp xchain00026_n37_α
.Lx00043_0:
 lea rdi, [rbp + 240]
 lea rsi, [rbp + 208]
 lea rdx, [rbp + 176]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00026_n37_α
# IR_ASSIGN gva
 xchain00026_n35_α:
 mov rax, qword ptr [rbp + 1488]
 mov rdx, qword ptr [rbp + 1496]
 mov qword ptr [1879052448], rax
 mov qword ptr [1879052456], rdx
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain00026_n27_α
# IR_LIT_STRING
 xchain00026_n36_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx00044_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain00026_n38_α
.Lx00044_0:
 .quad .Lx00044_0_s
.Lx00044_0_s:
 .string "-"
 xchain00026_n37_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 176]
 cmp eax, 100
 je .Lx00045_0
 mov eax, dword ptr [rbp + 176]
 cmp eax, 6
 jne .Lx00045_2
.Lx00045_1:
 mov rax, 4
 mov rcx, qword ptr [rbp + 184]
 imul rax, rcx
 mov qword ptr [rbp + 144], 6
 mov qword ptr [rbp + 152], rax
 jmp xchain00026_n39_α
.Lx00045_0:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 176]
 mov rcx, qword ptr [rbp + 184]
 mov r8d, 2
 lea r9, [rbp + 144]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00026_n39_α
.Lx00045_2:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 176]
 mov rcx, qword ptr [rbp + 184]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00026_n23_α
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00026_n39_α
 xchain00026_n37_β:
 jmp xchain00026_n23_α
 xchain00026_n38_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1312]
 mov rsi, qword ptr [rbp + 1320]
 mov rdx, qword ptr [rbp + 1440]
 mov rcx, qword ptr [rbp + 1448]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain00026_n40_α
# IR_LIT_INTEGER
 xchain00026_n39_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx00046_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain00026_n41_α
.Lx00046_0:
 .quad 3
# IR_ASSIGN gva
 xchain00026_n40_α:
 mov rax, qword ptr [rbp + 1280]
 mov rdx, qword ptr [rbp + 1288]
 mov qword ptr [1879052464], rax
 mov qword ptr [1879052472], rdx
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain00026_n3_α
# IR_COERCE_NUMERIC
 xchain00026_n41_α:
 mov eax, dword ptr [rbp + 144]
 cmp eax, 7
 je .Lx00047_1
 cmp eax, 6
 jne .Lx00047_0
 mov eax, dword ptr [rbp + 400]
 cmp eax, 6
 jne .Lx00047_0
.Lx00047_1:
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 120], rax
 jmp xchain00026_n42_α
.Lx00047_0:
 lea rdi, [rbp + 144]
 lea rsi, [rbp + 400]
 lea rdx, [rbp + 112]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00026_n42_α
 xchain00026_n42_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 112]
 cmp eax, 100
 je .Lx00048_0
 mov eax, dword ptr [rbp + 112]
 cmp eax, 6
 jne .Lx00048_2
.Lx00048_1:
 mov rax, qword ptr [rbp + 120]
 mov rcx, 3
 add rax, rcx
 mov qword ptr [rbp + 80], 6
 mov qword ptr [rbp + 88], rax
 jmp xchain00026_n43_α
.Lx00048_0:
 mov rdi, qword ptr [rbp + 112]
 mov rsi, qword ptr [rbp + 120]
 mov rdx, qword ptr [rbp + 400]
 mov rcx, qword ptr [rbp + 408]
 mov r8d, 0
 lea r9, [rbp + 80]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00026_n43_α
.Lx00048_2:
 mov rdi, qword ptr [rbp + 112]
 mov rsi, qword ptr [rbp + 120]
 mov rdx, qword ptr [rbp + 400]
 mov rcx, qword ptr [rbp + 408]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00026_n23_α
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain00026_n43_α
 xchain00026_n42_β:
 jmp xchain00026_n23_α
# IR_SUBSCRIPT x[i] variable
 xchain00026_n43_α:
 mov rdi, qword ptr [rbp + 48]
 mov rsi, qword ptr [rbp + 56]
 mov rdx, qword ptr [rbp + 80]
 mov rcx, qword ptr [rbp + 88]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00026_n22_β
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00026_n44_α
# IR_LIT_STRING
 xchain00026_n44_α:
 mov qword ptr [rbp + 496], 1
 mov rax, qword ptr [rip + .Lx00049_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00026_n45_α
.Lx00049_0:
 .quad .Lx00049_0_s
.Lx00049_0_s:
 .string "Q"
# IR_REV_ASSIGN_VAR
 xchain00026_n45_α:
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 call rt_deref@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 mov rdx, qword ptr [rbp + 496]
 mov rcx, qword ptr [rbp + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00026_n22_β
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00026_n46_α
 xchain00026_n45_β:
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_assign_var@PLT
 jmp xchain00026_n22_β
# IR_BOUND
 xchain00026_n46_α:
 mov qword ptr [rbp + 528], rsp
 jmp xchain00026_n47_α
# IR_LIT_STRING
 xchain00026_n47_α:
 mov qword ptr [rbp + 784], 1
 mov rax, qword ptr [rip + .Lx00050_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain00026_n48_α
.Lx00050_0:
 .quad .Lx00050_0_s
.Lx00050_0_s:
 .string "  "
# IR_VAR
 xchain00026_n48_α:
 mov rax, qword ptr [1879052448]
 mov rdx, qword ptr [1879052456]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00026_n49_α
 xchain00026_n49_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+736]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 744], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+752]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 760], rax
  .section .rodata
  .Lrkfn227: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn227]
 lea rsi, [rbp + 736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je xchain00026_n50_α
 jmp xchain00026_n50_α
 xchain00026_n49_β:
 jmp xchain00026_n50_α
# IR_LIT_STRING
 xchain00026_n50_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx00051_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain00026_n51_α
.Lx00051_0:
 .quad .Lx00051_0_s
.Lx00051_0_s:
 .string "  "
# IR_VAR
 xchain00026_n51_α:
 mov rax, qword ptr [1879052464]
 mov rdx, qword ptr [1879052472]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00026_n52_α
 xchain00026_n52_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 616], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+624]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 632], rax
  .section .rodata
  .Lrkfn231: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn231]
 lea rsi, [rbp + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00026_n53_α
 jmp xchain00026_n54_α
 xchain00026_n52_β:
 jmp xchain00026_n53_α
# IR_UNMARK
 xchain00026_n53_α:
 mov rsp, qword ptr [rbp + 528]
 jmp xchain00026_n45_β
 xchain00026_n54_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 584], rax
 jmp xchain00026_n53_α
xchain00026_n54_β:
 jmp xchain00026_n53_α
proc_show_res:
add rsp, 8
pop rbp
proc_show_β:
jmp proc_show_ω
proc_show_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1864]
lea rsp, [rbp + 1888]
mov rbp, [rbp + 1880]
jmp rax
proc_show_ω:
mov rax, [rbp + 1872]
lea rsp, [rbp + 1888]
mov rbp, [rbp + 1880]
jmp rax
  .globl proc_options_α
proc_options_α:
#=======================================================================================================================
    .global proc_options_α
    .global proc_options_β
    .global proc_options_γ
    .global proc_options_ω
  sub rsp, 3760
  mov [rsp + 3736], rcx
  mov [rsp + 3744], rdx
  mov [rsp + 3752], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 3728
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 3592], rsp
  mov rdi, rsp
  mov esi, 3728
  call rt_jmp_frame_lexprep@PLT
proc_options_α_body:
# IR_VAR_REF
 xchain00052_n0_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain00052_n1_α
# IR_NULLTEST_VAR
 xchain00052_n1_α:
 mov eax, dword ptr [rbp + 3424]
 cmp eax, 99
 je xchain00052_n3_α
 mov rdi, qword ptr [rbp + 3424]
 mov rsi, qword ptr [rbp + 3432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00052_n3_α
 cmp eax, 0
 jne xchain00052_n3_α
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3464], rax
 jmp xchain00052_n2_α
# IR_LIT_CHARSET
 xchain00052_n2_α:
 mov qword ptr [rbp + 3552], 1
 mov dword ptr [rbp + 3556], -1
 mov rax, qword ptr [rip + .Lx00053_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain00052_n4_α
.Lx00053_0:
 .quad .Lx00053_0_s
.Lx00053_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00052_n3_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn241: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn241]
 lea rsi, [rbp + 3408]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 cmp eax, 99
 je xchain00052_n6_α
 jmp xchain00052_n5_α
 xchain00052_n3_β:
 jmp xchain00052_n6_α
 xchain00052_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3552] -> [zr+3520]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3520], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3528], rax
  .section .rodata
  .Lrkfn243: .string "string"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn243]
 lea rsi, [rbp + 3520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 cmp eax, 99
 je xchain00052_n3_α
 jmp xchain00052_n7_α
 xchain00052_n4_β:
 jmp xchain00052_n3_α
 xchain00052_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3392]
 mov rdx, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain00052_n6_α
# IR_MAKE_LIST
 xchain00052_n6_α:
 lea rdi, [rbp + 3376]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain00052_n8_α
# IR_ASSIGN_VAR
 xchain00052_n7_α:
 mov rdi, qword ptr [rbp + 3456]
 mov rsi, qword ptr [rbp + 3464]
 mov rdx, qword ptr [rbp + 3504]
 mov rcx, qword ptr [rbp + 3512]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00052_n3_α
 mov qword ptr [rbp + 3488], rax
 mov qword ptr [rbp + 3496], rdx
 jmp xchain00052_n3_α
 xchain00052_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3360]
 mov rdx, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain00052_n9_α
# IR_VAR
 xchain00052_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00052_n10_α
 xchain00052_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn252: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn252]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00052_n11_α
 jmp xchain00052_n12_α
 xchain00052_n10_β:
 jmp xchain00052_n11_α
# IR_VAR
 xchain00052_n11_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 152], rax
 jmp xchain00052_n13_α
 xchain00052_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00052_n15_α
# IR_VAR
 xchain00052_n13_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 232], rax
 jmp xchain00052_n16_α
# IR_VAR
 xchain00052_n14_α:
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 56], rax
 jmp xchain00052_n17_α
# IR_VAR
 xchain00052_n15_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3320], rax
 jmp xchain00052_n18_α
 xchain00052_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn263: .string "pull"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn263]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00052_n14_α
 jmp xchain00052_n19_α
 xchain00052_n16_β:
 jmp xchain00052_n14_α
# IR_RETURN
 xchain00052_n17_α:
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_options_γ
# IR_GEN_SCAN
 xchain00052_n18_α:
 mov rdi, qword ptr [rbp + 3312]
 mov rsi, qword ptr [rbp + 3320]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00052_n20_α
 xchain00052_n19_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+96]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 104], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+112]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn268: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn268]
 lea rsi, [rbp + 96]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00052_n14_α
 jmp xchain00052_n11_α
 xchain00052_n19_β:
 jmp xchain00052_n14_α
# IR_DISJUNCTION_NARY
 xchain00052_n20_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 mov dword ptr [rbp + 448], 0
 jmp xchain00052_n22_α
xchain00052_n20_as:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 jne .Lx00054_0
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 jmp xchain00052_n21_α
.Lx00054_0:
 cmp eax, 1
 jne .Lx00054_1
 mov rax, qword ptr [rbp + 3184]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 440], rax
 jmp xchain00052_n21_α
.Lx00054_1:
 jmp xchain00052_n21_α
 xchain00052_n20_β:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 je xchain00052_n23_β
 jmp xchain00052_n35_α
xchain00052_n20_af:
 add dword ptr [rbp + 448], 1
 mov eax, dword ptr [rbp + 448]
 cmp eax, 1
 je xchain00052_n24_α
 jmp xchain00052_n35_α
# IR_GEN_SCAN
 xchain00052_n21_α:
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 408], rax
 lea rdi, [rbp + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 368]
 mov r14, qword ptr [rbp + 376]
 mov r15, qword ptr [rbp + 384]
 jmp xchain00052_n9_α
 xchain00052_n21_β:
 call rt_scan_reenter@PLT
 mov r13, rax
 mov r15, rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 jmp xchain00052_n20_β
 jmp xchain00052_n9_α
# IR_LIT_STRING
 xchain00052_n22_α:
 mov qword ptr [rbp + 3152], 1
 mov rax, qword ptr [rip + .Lx00055_0]
 mov qword ptr [rbp + 3160], rax
 jmp xchain00052_n27_α
 xchain00052_n22_β:
 jmp xchain00052_n20_af
.Lx00055_0:
 .quad .Lx00055_0_s
.Lx00055_0_s:
 .string "-"
# IR_DISJUNCTION_NARY
 xchain00052_n23_α:
 mov qword ptr [rbp + 560], 0
 mov qword ptr [rbp + 568], 0
 mov dword ptr [rbp + 576], 0
 jmp xchain00052_n29_α
xchain00052_n23_as:
 mov eax, dword ptr [rbp + 576]
 cmp eax, 0
 jne .Lx00056_0
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 568], rax
 jmp xchain00052_n28_α
.Lx00056_0:
 cmp eax, 1
 jne .Lx00056_1
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 568], rax
 jmp xchain00052_n28_α
.Lx00056_1:
 jmp xchain00052_n28_α
 xchain00052_n23_β:
 mov eax, dword ptr [rbp + 576]
 cmp eax, 0
 je xchain00052_n30_β
 jmp xchain00052_n28_α
xchain00052_n23_af:
 add dword ptr [rbp + 576], 1
 mov eax, dword ptr [rbp + 576]
 cmp eax, 1
 je xchain00052_n31_α
 jmp xchain00052_n28_α
# IR_VAR
 xchain00052_n24_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 3248], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 3256], rax
 jmp xchain00052_n34_α
 xchain00052_n24_β:
 jmp xchain00052_n35_α
 xchain00052_n25_α:
 jmp xchain00052_n20_as
xchain00052_n25_β:
 jmp xchain00052_n35_α
 xchain00052_n26_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3248] -> [zr+3200]
 mov rax, qword ptr [rbp + 3248]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 3208], rax
# marshal arg1 = producer-box slot [zr+3280] -> [zr+3216]
 mov rax, qword ptr [rbp + 3280]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 3288]
 mov qword ptr [rbp + 3224], rax
  .section .rodata
  .Lrkfn280: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn280]
 lea rsi, [rbp + 3200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 cmp eax, 99
 je xchain00052_n35_α
 jmp xchain00052_n20_as
 xchain00052_n26_β:
 jmp xchain00052_n35_α
# IR_SCAN_MATCH
 xchain00052_n27_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00057_239
 add rsp, 16
 jmp xchain00052_n20_af
.Lx00057_239:
 mov rdi, qword ptr [rip + .Lx00057_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00057_240
 add rsp, 16
 jmp xchain00052_n20_af
.Lx00057_240:
 mov qword ptr [rbp + 3120], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 3128], rax
 jmp xchain00052_n36_α
.Lx00057_0:
 .quad .Lx00057_0_s
.Lx00057_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain00052_n28_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00058_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00052_n37_α
.Lx00058_0:
 .quad 1
# IR_VAR
 xchain00052_n29_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2552], rax
 jmp xchain00052_n38_α
 xchain00052_n29_β:
 jmp xchain00052_n23_af
# IR_DISJUNCTION_NARY
 xchain00052_n30_α:
 mov qword ptr [rbp + 704], 0
 mov qword ptr [rbp + 712], 0
 mov dword ptr [rbp + 720], 0
 jmp xchain00052_n39_α
xchain00052_n30_as:
 mov eax, dword ptr [rbp + 720]
 cmp eax, 0
 jne .Lx00059_0
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 712], rax
 jmp xchain00052_n32_α
.Lx00059_0:
 cmp eax, 1
 jne .Lx00059_1
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 712], rax
 jmp xchain00052_n32_α
.Lx00059_1:
 jmp xchain00052_n32_α
 xchain00052_n30_β:
 mov eax, dword ptr [rbp + 720]
 cmp eax, 0
 je xchain00052_n28_α
 jmp xchain00052_n28_α
xchain00052_n30_af:
 add dword ptr [rbp + 720], 1
 mov eax, dword ptr [rbp + 720]
 cmp eax, 1
 je xchain00052_n40_α
 jmp xchain00052_n28_α
# IR_LIT_STRING
 xchain00052_n31_α:
 mov qword ptr [rbp + 2704], 1
 mov rax, qword ptr [rip + .Lx00060_0]
 mov qword ptr [rbp + 2712], rax
 jmp xchain00052_n42_α
 xchain00052_n31_β:
 jmp xchain00052_n28_α
.Lx00060_0:
 .quad .Lx00060_0_s
.Lx00060_0_s:
 .string "Unrecognized option: -"
# IR_ASSIGN_VAR
 xchain00052_n32_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00052_n28_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00052_n23_as
 xchain00052_n32_β:
 jmp xchain00052_n28_α
 xchain00052_n33_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2704] -> [zr+2656]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2664], rax
# marshal arg1 = producer-box slot [zr+2736] -> [zr+2672]
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 2680], rax
  .section .rodata
  .Lrkfn291: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn291]
 lea rsi, [rbp + 2656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 cmp eax, 99
 je xchain00052_n28_α
 jmp xchain00052_n23_as
 xchain00052_n33_β:
 jmp xchain00052_n28_α
# IR_VAR
 xchain00052_n34_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3280], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3288], rax
 jmp xchain00052_n26_α
# IR_GEN_SCAN
 xchain00052_n35_α:
 lea rdi, [rbp + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 368]
 mov r14, qword ptr [rbp + 376]
 mov r15, qword ptr [rbp + 384]
 jmp xchain00052_n9_α
 xchain00052_n35_β:
 jmp xchain00052_n9_α
# IR_SCAN_TAB
 xchain00052_n36_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 3128]
 cmp rax, 1
 jge .Lx00061_0
 add rax, r15
 add rax, 1
.Lx00061_0:
 cmp rax, 1
 jge .Lx00061_239
 add rsp, 16
 jmp xchain00052_n20_af
.Lx00061_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00061_240
 add rsp, 16
 jmp xchain00052_n20_af
.Lx00061_240:
 mov qword ptr [rsp + 0], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain00052_n43_α
 xchain00052_n36_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00052_n20_af
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00052_n37_α:
 sub rsp, 16
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00062_239
 add rsp, 16
 jmp xchain00052_n35_α
.Lx00062_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00062_240
 add rsp, 16
 jmp xchain00052_n35_α
.Lx00062_240:
 mov qword ptr [rsp + 0], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00052_n44_α
 xchain00052_n37_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00052_n35_α
# IR_VAR
 xchain00052_n38_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 2584], rax
 jmp xchain00052_n45_α
# IR_LIT_CHARSET
 xchain00052_n39_α:
 mov qword ptr [rbp + 2208], 1
 mov dword ptr [rbp + 2212], -1
 mov rax, qword ptr [rip + .Lx00063_0]
 mov qword ptr [rbp + 2216], rax
 jmp xchain00052_n46_α
 xchain00052_n39_β:
 jmp xchain00052_n30_af
.Lx00063_0:
 .quad .Lx00063_0_s
.Lx00063_0_s:
 .string "+.:"
# IR_LIT_INTEGER
 xchain00052_n40_α:
 mov qword ptr [rbp + 2368], 6
 mov rax, qword ptr [rip + .Lx00064_0]
 mov qword ptr [rbp + 2376], rax
 jmp xchain00052_n30_as
 xchain00052_n40_β:
 jmp xchain00052_n28_α
.Lx00064_0:
 .quad 1
 xchain00052_n41_α:
 jmp xchain00052_n30_as
xchain00052_n41_β:
 jmp xchain00052_n28_α
# IR_VAR
 xchain00052_n42_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2744], rax
 jmp xchain00052_n33_α
# IR_LIT_INTEGER
 xchain00052_n43_α:
 mov qword ptr [rbp + 3056], 6
 mov rax, qword ptr [rip + .Lx00065_0]
 mov qword ptr [rbp + 3064], rax
 jmp xchain00052_n47_α
.Lx00065_0:
 .quad 0
 xchain00052_n44_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00052_n23_α
 xchain00052_n45_α:
# BOX CALL_GEN find(...) -> rt_call_arr_gen by-name [four-port generator; alpha zeroes resume cell, beta re-pumps invoke with persisted cell]
# marshal arg0 = producer-box slot [zr+2544] -> [zr+2496]
 mov rax, qword ptr [rbp + 2544]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2552]
 mov qword ptr [rbp + 2504], rax
# marshal arg1 = producer-box slot [zr+2576] -> [zr+2512]
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 2520], rax
 mov qword ptr [rbp + 2528], 0
.Lx00066_60:
  .section .rodata
  .Lbynamegenfn212: .string "find"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn212]
 lea rsi, [rbp + 2496]
 mov edx, 2
 lea rcx, [rbp + 2528]
 call rt_call_arr_gen@PLT
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 cmp eax, 99
 je xchain00052_n23_af
 jmp xchain00052_n48_α
 xchain00052_n45_β:
 jmp .Lx00066_60
# IR_VAR_REF
 xchain00052_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain00052_n49_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00052_n47_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00067_0
 add rax, r15
 add rax, 1
.Lx00067_0:
 cmp rax, 1
 jl xchain00052_n50_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00052_n50_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00052_n50_α
 mov qword ptr [rbp + 3024], 6
 mov qword ptr [rbp + 3032], rax
 jmp xchain00052_n20_af
# IR_LIT_INTEGER
 xchain00052_n48_α:
 mov qword ptr [rbp + 2608], 6
 mov rax, qword ptr [rip + .Lx00068_0]
 mov qword ptr [rbp + 2616], rax
 jmp xchain00052_n51_α
.Lx00068_0:
 .quad 1
# IR_VAR
 xchain00052_n49_α:
 mov rax, qword ptr [rbp + 3712]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 2296], rax
 jmp xchain00052_n52_α
# KEYWORD_null
 xchain00052_n50_α:
 mov qword ptr [rbp + 2992], 0
 mov qword ptr [rbp + 3000], 0
 jmp xchain00052_n53_α
 xchain00052_n50_β:
 jmp xchain00052_n20_af
# IR_COERCE_NUMERIC
 xchain00052_n51_α:
 mov eax, dword ptr [rbp + 2480]
 cmp eax, 7
 je .Lx00069_1
 cmp eax, 6
 jne .Lx00069_0
 mov eax, dword ptr [rbp + 2608]
 cmp eax, 6
 jne .Lx00069_0
.Lx00069_1:
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2456], rax
 jmp xchain00052_n54_α
.Lx00069_0:
 lea rdi, [rbp + 2480]
 lea rsi, [rbp + 2608]
 lea rdx, [rbp + 2448]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00052_n54_α
# IR_SUBSCRIPT x[i] variable
 xchain00052_n52_α:
 mov rdi, qword ptr [rbp + 2256]
 mov rsi, qword ptr [rbp + 2264]
 mov rdx, qword ptr [rbp + 2288]
 mov rcx, qword ptr [rbp + 2296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00052_n30_af
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain00052_n55_α
 xchain00052_n53_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 2984], rax
 jmp xchain00052_n56_α
xchain00052_n53_β:
 jmp xchain00052_n20_af
 xchain00052_n54_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 100
 je .Lx00070_0
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 6
 jne .Lx00070_2
.Lx00070_1:
 mov rax, qword ptr [rbp + 2456]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 2416], 6
 mov qword ptr [rbp + 2424], rax
 jmp xchain00052_n57_α
.Lx00070_0:
 mov rdi, qword ptr [rbp + 2448]
 mov rsi, qword ptr [rbp + 2456]
 mov rdx, qword ptr [rbp + 2608]
 mov rcx, qword ptr [rbp + 2616]
 mov r8d, 0
 lea r9, [rbp + 2416]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00052_n57_α
.Lx00070_2:
 mov rdi, qword ptr [rbp + 2448]
 mov rsi, qword ptr [rbp + 2456]
 mov rdx, qword ptr [rbp + 2608]
 mov rcx, qword ptr [rbp + 2616]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00052_n23_af
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain00052_n57_α
 xchain00052_n54_β:
 jmp xchain00052_n23_af
# IR_DEREF variable -> value
 xchain00052_n55_α:
 mov rdi, qword ptr [rbp + 2320]
 mov rsi, qword ptr [rbp + 2328]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00052_n30_af
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain00052_n58_α
# IR_DISJUNCTION_NARY
 xchain00052_n56_α:
 mov qword ptr [rbp + 2768], 0
 mov qword ptr [rbp + 2776], 0
 mov dword ptr [rbp + 2784], 0
 jmp xchain00052_n59_α
xchain00052_n56_as:
 mov eax, dword ptr [rbp + 2784]
 cmp eax, 0
 jne .Lx00071_0
 jmp xchain00052_n28_α
.Lx00071_0:
 jmp xchain00052_n28_α
 xchain00052_n56_β:
 mov eax, dword ptr [rbp + 2784]
 jmp xchain00052_n28_α
xchain00052_n56_af:
 add dword ptr [rbp + 2784], 1
 mov eax, dword ptr [rbp + 2784]
 jmp xchain00052_n28_α
 xchain00052_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2416]
 mov rdx, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain00052_n60_α
 xchain00052_n58_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2352]
 mov rdx, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain00052_n61_α
# IR_LIT_STRING
 xchain00052_n59_α:
 mov qword ptr [rbp + 2944], 1
 mov rax, qword ptr [rip + .Lx00072_0]
 mov qword ptr [rbp + 2952], rax
 jmp xchain00052_n62_α
 xchain00052_n59_β:
 jmp xchain00052_n56_af
.Lx00072_0:
 .quad .Lx00072_0_s
.Lx00072_0_s:
 .string "-"
# IR_VAR_REF
 xchain00052_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3600]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00052_n63_α
 xchain00052_n61_α:
# BOX CALL any(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+2208] -> [zr+2160]
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2168], rax
# marshal arg1 = producer-box slot [zr+2240] -> [zr+2176]
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2184], rax
  .section .rodata
  .Lbynamefn228: .string "any"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn228]
 lea rsi, [rbp + 2160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 cmp eax, 99
 je xchain00052_n30_af
 jmp xchain00052_n64_α
 xchain00052_n61_β:
 jmp xchain00052_n30_af
# IR_SCAN_MATCH
 xchain00052_n62_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00073_239
 add rsp, 16
 jmp xchain00052_n56_af
.Lx00073_239:
 mov rdi, qword ptr [rip + .Lx00073_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00073_240
 add rsp, 16
 jmp xchain00052_n56_af
.Lx00073_240:
 mov qword ptr [rbp + 2912], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 2920], rax
 jmp xchain00052_n65_α
.Lx00073_0:
 .quad .Lx00073_0_s
.Lx00073_0_s:
 .string "-"
# IR_VAR
 xchain00052_n63_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 632], rax
 jmp xchain00052_n66_α
# IR_DISJUNCTION_NARY
 xchain00052_n64_α:
 mov qword ptr [rbp + 1776], 0
 mov qword ptr [rbp + 1784], 0
 mov dword ptr [rbp + 1792], 0
 jmp xchain00052_n68_α
xchain00052_n64_as:
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 0
 jne .Lx00074_0
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00052_n67_α
.Lx00074_0:
 cmp eax, 1
 jne .Lx00074_1
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00052_n67_α
.Lx00074_1:
 cmp eax, 2
 jne .Lx00074_2
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00052_n67_α
.Lx00074_2:
 jmp xchain00052_n67_α
 xchain00052_n64_β:
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 0
 je xchain00052_n64_af
 cmp eax, 1
 je xchain00052_n64_af
 jmp xchain00052_n64_af
xchain00052_n64_af:
 add dword ptr [rbp + 1792], 1
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 1
 je xchain00052_n69_α
 cmp eax, 2
 je xchain00052_n70_α
 jmp xchain00052_n75_α
# IR_SCAN_TAB
 xchain00052_n65_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 2920]
 cmp rax, 1
 jge .Lx00075_0
 add rax, r15
 add rax, 1
.Lx00075_0:
 cmp rax, 1
 jge .Lx00075_239
 add rsp, 16
 jmp xchain00052_n56_af
.Lx00075_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00075_240
 add rsp, 16
 jmp xchain00052_n56_af
.Lx00075_240:
 mov qword ptr [rsp + 0], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 jmp xchain00052_n74_α
 xchain00052_n65_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00052_n56_af
# IR_SUBSCRIPT x[i] variable
 xchain00052_n66_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00052_n28_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00052_n30_α
 xchain00052_n67_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1776]
 mov rdx, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain00052_n75_α
# IR_LIT_STRING
 xchain00052_n68_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx00076_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain00052_n76_α
 xchain00052_n68_β:
 jmp xchain00052_n64_af
.Lx00076_0:
 .quad .Lx00076_0_s
.Lx00076_0_s:
 .string ""
# IR_VAR
 xchain00052_n69_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1992], rax
 jmp xchain00052_n72_α
 xchain00052_n69_β:
 jmp xchain00052_n64_af
# IR_LIT_STRING
 xchain00052_n70_α:
 mov qword ptr [rbp + 2080], 1
 mov rax, qword ptr [rip + .Lx00077_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain00052_n77_α
 xchain00052_n70_β:
 jmp xchain00052_n64_af
.Lx00077_0:
 .quad .Lx00077_0_s
.Lx00077_0_s:
 .string "No parameter following -"
 xchain00052_n71_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 1840]
 mov rsi, qword ptr [rbp + 1848]
 mov rdx, qword ptr [rbp + 1872]
 mov rcx, qword ptr [rbp + 1880]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00052_n64_af
 mov rdi, qword ptr [rbp + 1872]
 mov rsi, qword ptr [rbp + 1880]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain00052_n64_as
 xchain00052_n71_β:
 jmp xchain00052_n64_af
 xchain00052_n72_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1960], rax
  .section .rodata
  .Lrkfn348: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn348]
 lea rsi, [rbp + 1952]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je xchain00052_n64_af
 jmp xchain00052_n64_as
 xchain00052_n72_β:
 jmp xchain00052_n64_af
 xchain00052_n73_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2080] -> [zr+2032]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2040], rax
# marshal arg1 = producer-box slot [zr+2112] -> [zr+2048]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2056], rax
  .section .rodata
  .Lrkfn350: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn350]
 lea rsi, [rbp + 2032]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain00052_n64_af
 jmp xchain00052_n64_as
 xchain00052_n73_β:
 jmp xchain00052_n64_af
# IR_LIT_INTEGER
 xchain00052_n74_α:
 mov qword ptr [rbp + 2848], 6
 mov rax, qword ptr [rip + .Lx00078_0]
 mov qword ptr [rbp + 2856], rax
 jmp xchain00052_n78_α
.Lx00078_0:
 .quad 0
# IR_VAR
 xchain00052_n75_α:
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 792], rax
 jmp xchain00052_n79_α
# IR_LIT_INTEGER
 xchain00052_n76_α:
 mov qword ptr [rbp + 1904], 6
 mov rax, qword ptr [rip + .Lx00079_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain00052_n80_α
.Lx00079_0:
 .quad 0
# IR_VAR
 xchain00052_n77_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2120], rax
 jmp xchain00052_n73_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00052_n78_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00080_0
 add rax, r15
 add rax, 1
.Lx00080_0:
 cmp rax, 1
 jl xchain00052_n56_af
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00052_n56_af
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00052_n56_af
 mov qword ptr [rbp + 2816], 6
 mov qword ptr [rbp + 2824], rax
 jmp xchain00052_n81_α
# IR_LIT_STRING
 xchain00052_n79_α:
 mov qword ptr [rbp + 1616], 1
 mov rax, qword ptr [rip + .Lx00081_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00052_n82_α
.Lx00081_0:
 .quad .Lx00081_0_s
.Lx00081_0_s:
 .string ":"
# IR_SCAN_TAB
 xchain00052_n80_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00082_0
 add rax, r15
 add rax, 1
.Lx00082_0:
 cmp rax, 1
 jge .Lx00082_239
 add rsp, 16
 jmp xchain00052_n64_af
.Lx00082_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00082_240
 add rsp, 16
 jmp xchain00052_n64_af
.Lx00082_240:
 mov qword ptr [rsp + 0], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain00052_n71_α
 xchain00052_n80_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00052_n64_af
 xchain00052_n81_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2808], rax
 jmp xchain00052_n11_α
xchain00052_n81_β:
 jmp xchain00052_n56_af
 xchain00052_n82_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+1712]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 1720], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1728]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1736], rax
  .section .rodata
  .Lrkfn364: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn364]
 lea rsi, [rbp + 1712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je xchain00052_n84_α
 jmp xchain00052_n83_α
 xchain00052_n82_β:
 jmp xchain00052_n84_α
# IR_VAR
 xchain00052_n83_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1656], rax
 jmp xchain00052_n85_α
# IR_LIT_STRING
 xchain00052_n84_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx00083_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain00052_n86_α
.Lx00083_0:
 .quad .Lx00083_0_s
.Lx00083_0_s:
 .string "+"
 xchain00052_n85_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1648]
 mov rdx, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00052_n87_α
 xchain00052_n86_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+1568]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 1576], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+1584]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1592], rax
  .section .rodata
  .Lrkfn370: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn370]
 lea rsi, [rbp + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain00052_n89_α
 jmp xchain00052_n88_β
 xchain00052_n86_β:
 jmp xchain00052_n89_α
# IR_VAR
 xchain00052_n87_α:
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 760], rax
 jmp xchain00052_n41_α
# IR_DISJUNCTION_NARY
 xchain00052_n88_α:
 mov qword ptr [rbp + 1248], 0
 mov qword ptr [rbp + 1256], 0
 mov dword ptr [rbp + 1264], 0
 jmp xchain00052_n91_α
xchain00052_n88_as:
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 0
 jne .Lx00084_0
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00052_n90_α
.Lx00084_0:
 cmp eax, 1
 jne .Lx00084_1
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00052_n90_α
.Lx00084_1:
 jmp xchain00052_n90_α
 xchain00052_n88_β:
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 0
 je xchain00052_n88_af
 jmp xchain00052_n88_af
xchain00052_n88_af:
 add dword ptr [rbp + 1264], 1
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 1
 je xchain00052_n92_α
 jmp xchain00052_n28_α
# IR_LIT_STRING
 xchain00052_n89_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx00085_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00052_n95_α
.Lx00085_0:
 .quad .Lx00085_0_s
.Lx00085_0_s:
 .string "."
 xchain00052_n90_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain00052_n87_α
# IR_VAR
 xchain00052_n91_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1336], rax
 jmp xchain00052_n93_α
 xchain00052_n91_β:
 jmp xchain00052_n88_af
# IR_LIT_STRING
 xchain00052_n92_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx00086_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain00052_n96_α
 xchain00052_n92_β:
 jmp xchain00052_n88_af
.Lx00086_0:
 .quad .Lx00086_0_s
.Lx00086_0_s:
 .string "-"
 xchain00052_n93_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1296]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1304], rax
  .section .rodata
  .Lrkfn381: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn381]
 lea rsi, [rbp + 1296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain00052_n88_af
 jmp xchain00052_n88_as
 xchain00052_n93_β:
 jmp xchain00052_n88_af
 xchain00052_n94_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1376]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1384], rax
# marshal arg1 = producer-box slot [zr+1472] -> [zr+1392]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1400], rax
# marshal arg2 = producer-box slot [zr+1504] -> [zr+1408]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1416], rax
  .section .rodata
  .Lrkfn383: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn383]
 lea rsi, [rbp + 1376]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain00052_n88_af
 jmp xchain00052_n88_as
 xchain00052_n94_β:
 jmp xchain00052_n88_af
 xchain00052_n95_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+1168]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 1176], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+1184]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 1192], rax
  .section .rodata
  .Lrkfn385: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn385]
 lea rsi, [rbp + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain00052_n28_α
 jmp xchain00052_n97_β
 xchain00052_n95_β:
 jmp xchain00052_n28_α
# IR_VAR
 xchain00052_n96_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1480], rax
 jmp xchain00052_n98_α
# IR_DISJUNCTION_NARY
 xchain00052_n97_α:
 mov qword ptr [rbp + 848], 0
 mov qword ptr [rbp + 856], 0
 mov dword ptr [rbp + 864], 0
 jmp xchain00052_n00001_α
xchain00052_n97_as:
 mov eax, dword ptr [rbp + 864]
 cmp eax, 0
 jne .Lx00087_0
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 856], rax
 jmp xchain00052_n99_α
.Lx00087_0:
 cmp eax, 1
 jne .Lx00087_1
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 856], rax
 jmp xchain00052_n99_α
.Lx00087_1:
 jmp xchain00052_n99_α
 xchain00052_n97_β:
 mov eax, dword ptr [rbp + 864]
 cmp eax, 0
 je xchain00052_n97_af
 jmp xchain00052_n97_af
xchain00052_n97_af:
 add dword ptr [rbp + 864], 1
 mov eax, dword ptr [rbp + 864]
 cmp eax, 1
 je xchain00052_n00016_α
 jmp xchain00052_n28_α
# IR_LIT_STRING
 xchain00052_n98_α:
 mov qword ptr [rbp + 1504], 1
 mov rax, qword ptr [rip + .Lx00088_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain00052_n94_α
.Lx00088_0:
 .quad .Lx00088_0_s
.Lx00088_0_s:
 .string " needs numeric parameter"
 xchain00052_n99_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00052_n87_α
# IR_VAR
 xchain00052_n00001_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 936], rax
 jmp xchain00052_n00002_α
 xchain00052_n00001_β:
 jmp xchain00052_n97_af
# IR_LIT_STRING
 xchain00052_n00016_α:
 mov qword ptr [rbp + 1040], 1
 mov rax, qword ptr [rip + .Lx00089_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00052_n00017_α
 xchain00052_n00016_β:
 jmp xchain00052_n97_af
.Lx00089_0:
 .quad .Lx00089_0_s
.Lx00089_0_s:
 .string "-"
 xchain00052_n00002_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+896]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 904], rax
  .section .rodata
  .Lrkfn396: .string "real"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn396]
 lea rsi, [rbp + 896]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 cmp eax, 99
 je xchain00052_n97_af
 jmp xchain00052_n97_as
 xchain00052_n00002_β:
 jmp xchain00052_n97_af
 xchain00052_n00003_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+976]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 984], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+992]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1000], rax
# marshal arg2 = producer-box slot [zr+1104] -> [zr+1008]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1016], rax
  .section .rodata
  .Lrkfn398: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn398]
 lea rsi, [rbp + 976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain00052_n97_af
 jmp xchain00052_n97_as
 xchain00052_n00003_β:
 jmp xchain00052_n97_af
# IR_VAR
 xchain00052_n00017_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00052_n00015_α
# IR_LIT_STRING
 xchain00052_n00015_α:
 mov qword ptr [rbp + 1104], 1
 mov rax, qword ptr [rip + .Lx00090_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00052_n00003_α
.Lx00090_0:
 .quad .Lx00090_0_s
.Lx00090_0_s:
 .string " needs numeric parameter"
proc_options_res:
add rsp, 8
pop rbp
proc_options_β:
jmp proc_options_ω
proc_options_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 3736]
lea rsp, [rbp + 3760]
mov rbp, [rbp + 3752]
jmp rax
proc_options_ω:
mov rax, [rbp + 3744]
lea rsp, [rbp + 3760]
mov rbp, [rbp + 3752]
jmp rax
  .globl proc_Init___α
proc_Init___α:
#=======================================================================================================================
    .global proc_Init___α
    .global proc_Init___β
    .global proc_Init___γ
    .global proc_Init___ω
  sub rsp, 624
  mov [rsp + 600], rcx
  mov [rsp + 608], rdx
  mov [rsp + 616], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 592
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 552], rsp
  mov rdi, rsp
  mov esi, 592
  call rt_jmp_frame_lexprep@PLT
proc_Init___α_body:
# IR_VAR
 xchain00091_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 520], rax
 jmp xchain00091_n1_α
# IR_ASSIGN gva
 xchain00091_n1_α:
 mov rax, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00091_n2_α
 xchain00091_n2_α:
 mov edi, 7
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00092_1
 lea rcx, [rip + .Lx00092_3]
 lea rdx, [rip + .Lx00092_4]
 jmp rax
.Lx00092_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00092_2
.Lx00092_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00092_2
.Lx00092_1:
 call rt_faildescr@PLT
.Lx00092_2:
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00091_n3_α
 jmp xchain00091_n3_α
 xchain00091_n2_β:
 jmp xchain00091_n3_α
.Lx00092_0:
 .quad .Lx00092_0_s
.Lx00092_0_s:
 .string "Signature__"
 xchain00091_n3_α:
 mov edi, 6
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00093_1
 lea rcx, [rip + .Lx00093_3]
 lea rdx, [rip + .Lx00093_4]
 jmp rax
.Lx00093_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00093_2
.Lx00093_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00093_2
.Lx00093_1:
 call rt_faildescr@PLT
.Lx00093_2:
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00091_n4_α
 jmp xchain00091_n4_α
 xchain00091_n3_β:
 jmp xchain00091_n4_α
.Lx00093_0:
 .quad .Lx00093_0_s
.Lx00093_0_s:
 .string "Regions__"
 xchain00091_n4_α:
 mov edi, 9
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00094_1
 lea rcx, [rip + .Lx00094_3]
 lea rdx, [rip + .Lx00094_4]
 jmp rax
.Lx00094_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00094_2
.Lx00094_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00094_2
.Lx00094_1:
 call rt_faildescr@PLT
.Lx00094_2:
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain00091_n5_α
 jmp xchain00091_n5_α
 xchain00091_n4_β:
 jmp xchain00091_n5_α
.Lx00094_0:
 .quad .Lx00094_0_s
.Lx00094_0_s:
 .string "Time__"
# IR_DISJUNCTION_NARY
 xchain00091_n5_α:
 mov qword ptr [rbp + 192], 0
 mov qword ptr [rbp + 200], 0
 mov dword ptr [rbp + 208], 0
 jmp xchain00091_n7_α
xchain00091_n5_as:
 mov eax, dword ptr [rbp + 208]
 cmp eax, 0
 jne .Lx00095_0
 jmp xchain00091_n6_α
.Lx00095_0:
 jmp xchain00091_n6_α
 xchain00091_n5_β:
 mov eax, dword ptr [rbp + 208]
 jmp xchain00091_n6_α
xchain00091_n5_af:
 add dword ptr [rbp + 208], 1
 mov eax, dword ptr [rbp + 208]
 jmp xchain00091_n6_α
# IR_VAR
 xchain00091_n6_α:
 mov rdi, qword ptr [rip + .Lx00096_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00091_n10_α
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00091_n9_α
.Lx00096_0:
 .quad .Lx00096_0_s
.Lx00096_0_s:
 .string "write"
# IR_LIT_STRING
 xchain00091_n7_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx00097_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00091_n11_α
 xchain00091_n7_β:
 jmp xchain00091_n5_af
.Lx00097_0:
 .quad .Lx00097_0_s
.Lx00097_0_s:
 .string "OUTPUT"
 xchain00091_n8_α:
 jmp xchain00091_n5_as
xchain00091_n8_β:
 jmp xchain00091_n6_α
# IR_ASSIGN gva
 xchain00091_n9_α:
 mov rax, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00091_n10_α
# IR_VAR
 xchain00091_n10_α:
 mov rdi, qword ptr [rip + .Lx00098_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00091_n13_α
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain00091_n12_α
.Lx00098_0:
 .quad .Lx00098_0_s
.Lx00098_0_s:
 .string "writes"
 xchain00091_n11_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn420: .string "getenv"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn420]
 lea rsi, [rbp + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain00091_n5_af
 jmp xchain00091_n14_α
 xchain00091_n11_β:
 jmp xchain00091_n5_af
# IR_ASSIGN gva
 xchain00091_n12_α:
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00091_n13_α
# IR_LIT_INTEGER
 xchain00091_n13_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00099_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00091_n15_α
.Lx00099_0:
 .quad 1
# IR_LIT_STRING
 xchain00091_n14_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00100_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00091_n16_α
.Lx00100_0:
 .quad .Lx00100_0_s
.Lx00100_0_s:
 .string "*** Benchmarking with output ***"
# IR_ASSIGN global
 xchain00091_n15_α:
 mov rsi, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov rdi, qword ptr [rip + .Lx00101_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 jmp xchain00091_n17_α
.Lx00101_0:
 .quad .Lx00101_0_s
.Lx00101_0_s:
 .string "writes"
 xchain00091_n16_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn426: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn426]
 lea rsi, [rbp + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain00091_n18_α
 jmp xchain00091_n18_α
 xchain00091_n16_β:
 jmp xchain00091_n18_α
# IR_ASSIGN global
 xchain00091_n17_α:
 mov rsi, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov rdi, qword ptr [rip + .Lx00102_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00091_n19_α
.Lx00102_0:
 .quad .Lx00102_0_s
.Lx00102_0_s:
 .string "write"
# IR_RETURN
 xchain00091_n18_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Init___γ
# IR_RETURN
 xchain00091_n19_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Init___γ
proc_Init___res:
add rsp, 8
pop rbp
proc_Init___β:
jmp proc_Init___ω
proc_Init___γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 600]
lea rsp, [rbp + 624]
mov rbp, [rbp + 616]
jmp rax
proc_Init___ω:
mov rax, [rbp + 608]
lea rsp, [rbp + 624]
mov rbp, [rbp + 616]
jmp rax
  .globl proc_Term___α
proc_Term___α:
#=======================================================================================================================
    .global proc_Term___α
    .global proc_Term___β
    .global proc_Term___γ
    .global proc_Term___ω
  sub rsp, 624
  mov [rsp + 600], rcx
  mov [rsp + 608], rdx
  mov [rsp + 616], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 592
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 552], rsp
  mov rdi, rsp
  mov esi, 592
  call rt_jmp_frame_lexprep@PLT
proc_Term___α_body:
# IR_DISJUNCTION_NARY
 xchain00103_n0_α:
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 mov dword ptr [rbp + 304], 0
 jmp xchain00103_n2_α
xchain00103_n0_as:
 mov eax, dword ptr [rbp + 304]
 cmp eax, 0
 jne .Lx00104_0
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 296], rax
 jmp xchain00103_n1_α
.Lx00104_0:
 jmp xchain00103_n1_α
 xchain00103_n0_β:
 mov eax, dword ptr [rbp + 304]
 jmp xchain00103_n1_α
xchain00103_n0_af:
 add dword ptr [rbp + 304], 1
 mov eax, dword ptr [rbp + 304]
 jmp xchain00103_n1_α
# IR_VAR
 xchain00103_n1_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00103_n4_α
# IR_LIT_STRING
 xchain00103_n2_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx00105_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00103_n6_α
 xchain00103_n2_β:
 jmp xchain00103_n9_α
.Lx00105_0:
 .quad .Lx00105_0_s
.Lx00105_0_s:
 .string "OUTPUT"
 xchain00103_n3_α:
 jmp xchain00103_n0_as
xchain00103_n3_β:
 jmp xchain00103_n1_α
# IR_LIT_STRING
 xchain00103_n4_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00106_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00103_n7_α
.Lx00106_0:
 .quad .Lx00106_0_s
.Lx00106_0_s:
 .string " elapsed time = "
 xchain00103_n5_α:
 mov edi, 6
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00107_1
 lea rcx, [rip + .Lx00107_3]
 lea rdx, [rip + .Lx00107_4]
 jmp rax
.Lx00107_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00107_2
.Lx00107_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00107_2
.Lx00107_1:
 call rt_faildescr@PLT
.Lx00107_2:
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00103_n8_α
 jmp xchain00103_n8_α
 xchain00103_n5_β:
 jmp xchain00103_n8_α
.Lx00107_0:
 .quad .Lx00107_0_s
.Lx00107_0_s:
 .string "Regions__"
 xchain00103_n6_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
  .section .rodata
  .Lrkfn440: .string "getenv"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn440]
 lea rsi, [rbp + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00103_n9_α
 jmp xchain00103_n0_as
 xchain00103_n6_β:
 jmp xchain00103_n9_α
 xchain00103_n7_α:
 mov edi, 9
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00108_1
 lea rcx, [rip + .Lx00108_3]
 lea rdx, [rip + .Lx00108_4]
 jmp rax
.Lx00108_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00108_2
.Lx00108_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00108_2
.Lx00108_1:
 call rt_faildescr@PLT
.Lx00108_2:
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain00103_n5_α
 jmp xchain00103_n10_α
 xchain00103_n7_β:
 jmp xchain00103_n5_α
.Lx00108_0:
 .quad .Lx00108_0_s
.Lx00108_0_s:
 .string "Time__"
 xchain00103_n8_α:
 mov edi, 8
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00109_1
 lea rcx, [rip + .Lx00109_3]
 lea rdx, [rip + .Lx00109_4]
 jmp rax
.Lx00109_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00109_2
.Lx00109_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00109_2
.Lx00109_1:
 call rt_faildescr@PLT
.Lx00109_2:
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je xchain00103_n11_α
 jmp xchain00103_n11_α
 xchain00103_n8_β:
 jmp xchain00103_n11_α
.Lx00109_0:
 .quad .Lx00109_0_s
.Lx00109_0_s:
 .string "Storage__"
# KEYWORD_null
 xchain00103_n9_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 jmp xchain00103_n12_α
 xchain00103_n9_β:
 jmp xchain00103_n0_af
 xchain00103_n10_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+128]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 136], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+144]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 152], rax
# marshal arg2 = producer-box slot [zr+256] -> [zr+160]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn447: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn447]
 lea rsi, [rbp + 128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain00103_n5_α
 jmp xchain00103_n5_α
 xchain00103_n10_β:
 jmp xchain00103_n5_α
 xchain00103_n11_α:
 mov edi, 5
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00110_1
 lea rcx, [rip + .Lx00110_3]
 lea rdx, [rip + .Lx00110_4]
 jmp rax
.Lx00110_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00110_2
.Lx00110_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00110_2
.Lx00110_1:
 call rt_faildescr@PLT
.Lx00110_2:
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 cmp eax, 99
 je xchain00103_n13_α
 jmp xchain00103_n13_α
 xchain00103_n11_β:
 jmp xchain00103_n13_α
.Lx00110_0:
 .quad .Lx00110_0_s
.Lx00110_0_s:
 .string "Collections__"
# IR_VAR
 xchain00103_n12_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00103_n14_α
# IR_RETURN
 xchain00103_n13_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Term___γ
# IR_ASSIGN global
 xchain00103_n14_α:
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 mov rdi, qword ptr [rip + .Lx00111_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain00103_n15_α
.Lx00111_0:
 .quad .Lx00111_0_s
.Lx00111_0_s:
 .string "write"
# IR_VAR
 xchain00103_n15_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00103_n16_α
# IR_ASSIGN global
 xchain00103_n16_α:
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov rdi, qword ptr [rip + .Lx00112_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00103_n3_α
.Lx00112_0:
 .quad .Lx00112_0_s
.Lx00112_0_s:
 .string "writes"
proc_Term___res:
add rsp, 8
pop rbp
proc_Term___β:
jmp proc_Term___ω
proc_Term___γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 600]
lea rsp, [rbp + 624]
mov rbp, [rbp + 616]
jmp rax
proc_Term___ω:
mov rax, [rbp + 608]
lea rsp, [rbp + 624]
mov rbp, [rbp + 616]
jmp rax
  .globl proc_Collections___α
proc_Collections___α:
#=======================================================================================================================
    .global proc_Collections___α
    .global proc_Collections___β
    .global proc_Collections___γ
    .global proc_Collections___ω
  sub rsp, 1280
  mov [rsp + 1256], rcx
  mov [rsp + 1264], rdx
  mov [rsp + 1272], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1248
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1208], rsp
  mov rdi, rsp
  mov esi, 1248
  call rt_jmp_frame_lexprep@PLT
proc_Collections___α_body:
# IR_DISJUNCTION_NARY
 xchain00113_n0_α:
 mov qword ptr [rbp + 832], 0
 mov qword ptr [rbp + 840], 0
 mov dword ptr [rbp + 848], 0
 jmp xchain00113_n2_α
xchain00113_n0_as:
 mov eax, dword ptr [rbp + 848]
 cmp eax, 0
 jne .Lx00114_0
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
 jmp xchain00113_n1_α
.Lx00114_0:
 jmp xchain00113_n1_α
 xchain00113_n0_β:
 mov eax, dword ptr [rbp + 848]
 jmp xchain00113_n1_α
xchain00113_n0_af:
 add dword ptr [rbp + 848], 1
 mov eax, dword ptr [rbp + 848]
 jmp xchain00113_n1_α
# IR_MAKE_LIST
 xchain00113_n1_α:
 lea rdi, [rbp + 832]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00113_n4_α
# IR_VAR_REF
 xchain00113_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052512
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain00113_n5_α
 xchain00113_n2_β:
 jmp xchain00113_n0_af
# IR_ASSIGN gva
 xchain00113_n3_α:
 mov rax, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 mov qword ptr [1879052496], rax
 mov qword ptr [1879052504], rdx
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00113_n0_as
 xchain00113_n3_β:
 jmp xchain00113_n1_α
 xchain00113_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00113_n6_α
# IR_NULLTEST_VAR
 xchain00113_n5_α:
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 99
 je xchain00113_n0_af
 mov rdi, qword ptr [rbp + 1088]
 mov rsi, qword ptr [rbp + 1096]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00113_n0_af
 cmp eax, 0
 jne xchain00113_n0_af
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00113_n7_α
# IR_VAR
 xchain00113_n6_α:
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 744], rax
 jmp xchain00113_n8_α
# IR_LIT_INTEGER
 xchain00113_n7_α:
 mov qword ptr [rbp + 1168], 6
 mov rax, qword ptr [rip + .Lx00115_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain00113_n10_α
.Lx00115_0:
 .quad 1
# KEYWORD_gen
 xchain00113_n8_α:
 mov qword ptr [rbp + 784], 0
.Lx00116_1:
 mov rdi, qword ptr [rip + .Lx00116_0]
 mov rsi, qword ptr [rbp + 784]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00113_n9_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 mov rax, qword ptr [rbp + 784]
 add rax, 1
 mov qword ptr [rbp + 784], rax
 jmp xchain00113_n11_α
 xchain00113_n8_β:
 jmp .Lx00116_1
.Lx00116_0:
 .quad .Lx00116_0_s
.Lx00116_0_s:
 .string "&collections"
# IR_LIT_STRING
 xchain00113_n9_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00117_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00113_n12_α
.Lx00117_0:
 .quad .Lx00117_0_s
.Lx00117_0_s:
 .string "collections"
# IR_ASSIGN_VAR
 xchain00113_n10_α:
 mov rdi, qword ptr [rbp + 1120]
 mov rsi, qword ptr [rbp + 1128]
 mov rdx, qword ptr [rbp + 1168]
 mov rcx, qword ptr [rbp + 1176]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00113_n0_af
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain00113_n13_α
 xchain00113_n11_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+688]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 696], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+704]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 712], rax
  .section .rodata
  .Lrkfn472: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn472]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain00113_n9_α
 jmp xchain00113_n8_β
 xchain00113_n11_β:
 jmp xchain00113_n9_α
 xchain00113_n12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn474: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn474]
 lea rsi, [rbp + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00113_n14_α
 jmp xchain00113_n14_α
 xchain00113_n12_β:
 jmp xchain00113_n14_α
# IR_LIT_STRING
 xchain00113_n13_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx00118_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00113_n15_α
.Lx00118_0:
 .quad .Lx00118_0_s
.Lx00118_0_s:
 .string "total"
# IR_LIT_INTEGER
 xchain00113_n14_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00119_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00113_n16_α
.Lx00119_0:
 .quad 1
# IR_LIT_STRING
 xchain00113_n15_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx00120_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00113_n17_α
.Lx00120_0:
 .quad .Lx00120_0_s
.Lx00120_0_s:
 .string "static"
# IR_VAR
 xchain00113_n16_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00113_n18_α
# IR_LIT_STRING
 xchain00113_n17_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx00121_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00113_n20_α
.Lx00121_0:
 .quad .Lx00121_0_s
.Lx00121_0_s:
 .string "string"
# IR_UNOP
 xchain00113_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00113_n21_α
# IR_RETURN
 xchain00113_n19_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Collections___γ
# IR_LIT_STRING
 xchain00113_n20_α:
 mov qword ptr [rbp + 1056], 1
 mov rax, qword ptr [rip + .Lx00122_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain00113_n22_α
.Lx00122_0:
 .quad .Lx00122_0_s
.Lx00122_0_s:
 .string "block"
# IR_TO
 xchain00113_n21_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00123_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00113_n19_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00113_n23_α
 xchain00113_n21_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00123_0
# IR_MAKE_LIST
 xchain00113_n22_α:
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 904], rax
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 920], rax
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 936], rax
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 952], rax
 lea rdi, [rbp + 896]
 mov esi, 4
 call rt_make_list@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain00113_n3_α
 xchain00113_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00113_n24_α
# IR_BOUND
 xchain00113_n24_α:
 mov qword ptr [rbp + 160], rsp
 jmp xchain00113_n25_α
# IR_VAR_REF
 xchain00113_n25_α:
 mov rax, 4294967305
 mov rdx, 1879052496
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00113_n26_α
# IR_VAR
 xchain00113_n26_α:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 312], rax
 jmp xchain00113_n27_α
# IR_SUBSCRIPT x[i] variable
 xchain00113_n27_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00113_n28_α
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00113_n29_α
# IR_UNMARK
 xchain00113_n28_α:
 mov rsp, qword ptr [rbp + 160]
 jmp xchain00113_n21_β
# IR_DEREF variable -> value
 xchain00113_n29_α:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00113_n28_α
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00113_n30_α
# IR_VAR_REF
 xchain00113_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1232]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00113_n31_α
# IR_VAR
 xchain00113_n31_α:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 488], rax
 jmp xchain00113_n32_α
# IR_SUBSCRIPT x[i] variable
 xchain00113_n32_α:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00113_n28_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00113_n33_α
# IR_DEREF variable -> value
 xchain00113_n33_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00113_n28_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00113_n34_α
# IR_LIT_INTEGER
 xchain00113_n34_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00124_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00113_n35_α
.Lx00124_0:
 .quad 8
 xchain00113_n35_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+400]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+416]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 424], rax
  .section .rodata
  .Lrkfn506: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn506]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00113_n28_α
 jmp xchain00113_n36_α
 xchain00113_n35_β:
 jmp xchain00113_n28_α
 xchain00113_n36_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+224]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 232], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+240]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 248], rax
  .section .rodata
  .Lrkfn508: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn508]
 lea rsi, [rbp + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00113_n28_α
 jmp xchain00113_n28_α
 xchain00113_n36_β:
 jmp xchain00113_n28_α
proc_Collections___res:
add rsp, 8
pop rbp
proc_Collections___β:
jmp proc_Collections___ω
proc_Collections___γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1256]
lea rsp, [rbp + 1280]
mov rbp, [rbp + 1272]
jmp rax
proc_Collections___ω:
mov rax, [rbp + 1264]
lea rsp, [rbp + 1280]
mov rbp, [rbp + 1272]
jmp rax
  .globl proc_Regions___α
proc_Regions___α:
#=======================================================================================================================
    .global proc_Regions___α
    .global proc_Regions___β
    .global proc_Regions___γ
    .global proc_Regions___ω
  sub rsp, 1232
  mov [rsp + 1208], rcx
  mov [rsp + 1216], rdx
  mov [rsp + 1224], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1200
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1160], rsp
  mov rdi, rsp
  mov esi, 1200
  call rt_jmp_frame_lexprep@PLT
proc_Regions___α_body:
# IR_DISJUNCTION_NARY
 xchain00125_n0_α:
 mov qword ptr [rbp + 832], 0
 mov qword ptr [rbp + 840], 0
 mov dword ptr [rbp + 848], 0
 jmp xchain00125_n2_α
xchain00125_n0_as:
 mov eax, dword ptr [rbp + 848]
 cmp eax, 0
 jne .Lx00126_0
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
 jmp xchain00125_n1_α
.Lx00126_0:
 jmp xchain00125_n1_α
 xchain00125_n0_β:
 mov eax, dword ptr [rbp + 848]
 jmp xchain00125_n1_α
xchain00125_n0_af:
 add dword ptr [rbp + 848], 1
 mov eax, dword ptr [rbp + 848]
 jmp xchain00125_n1_α
# IR_MAKE_LIST
 xchain00125_n1_α:
 lea rdi, [rbp + 832]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00125_n4_α
# IR_VAR_REF
 xchain00125_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052544
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00125_n5_α
 xchain00125_n2_β:
 jmp xchain00125_n0_af
# IR_ASSIGN gva
 xchain00125_n3_α:
 mov rax, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 mov qword ptr [1879052528], rax
 mov qword ptr [1879052536], rdx
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00125_n0_as
 xchain00125_n3_β:
 jmp xchain00125_n1_α
 xchain00125_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00125_n6_α
# IR_NULLTEST_VAR
 xchain00125_n5_α:
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 99
 je xchain00125_n0_af
 mov rdi, qword ptr [rbp + 1040]
 mov rsi, qword ptr [rbp + 1048]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00125_n0_af
 cmp eax, 0
 jne xchain00125_n0_af
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00125_n7_α
# IR_VAR
 xchain00125_n6_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 744], rax
 jmp xchain00125_n8_α
# IR_LIT_INTEGER
 xchain00125_n7_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx00127_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00125_n10_α
.Lx00127_0:
 .quad 1
# KEYWORD_gen
 xchain00125_n8_α:
 mov qword ptr [rbp + 784], 0
.Lx00128_1:
 mov rdi, qword ptr [rip + .Lx00128_0]
 mov rsi, qword ptr [rbp + 784]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00125_n9_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 mov rax, qword ptr [rbp + 784]
 add rax, 1
 mov qword ptr [rbp + 784], rax
 jmp xchain00125_n11_α
 xchain00125_n8_β:
 jmp .Lx00128_1
.Lx00128_0:
 .quad .Lx00128_0_s
.Lx00128_0_s:
 .string "&regions"
# IR_LIT_STRING
 xchain00125_n9_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00125_n12_α
.Lx00129_0:
 .quad .Lx00129_0_s
.Lx00129_0_s:
 .string "regions"
# IR_ASSIGN_VAR
 xchain00125_n10_α:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, qword ptr [rbp + 1120]
 mov rcx, qword ptr [rbp + 1128]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00125_n0_af
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00125_n13_α
 xchain00125_n11_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+688]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 696], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+704]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 712], rax
  .section .rodata
  .Lrkfn526: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn526]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain00125_n9_α
 jmp xchain00125_n8_β
 xchain00125_n11_β:
 jmp xchain00125_n9_α
 xchain00125_n12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn528: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn528]
 lea rsi, [rbp + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00125_n14_α
 jmp xchain00125_n14_α
 xchain00125_n12_β:
 jmp xchain00125_n14_α
# IR_LIT_STRING
 xchain00125_n13_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx00130_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00125_n15_α
.Lx00130_0:
 .quad .Lx00130_0_s
.Lx00130_0_s:
 .string "static"
# IR_LIT_INTEGER
 xchain00125_n14_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00131_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00125_n16_α
.Lx00131_0:
 .quad 1
# IR_LIT_STRING
 xchain00125_n15_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx00132_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00125_n17_α
.Lx00132_0:
 .quad .Lx00132_0_s
.Lx00132_0_s:
 .string "string"
# IR_VAR
 xchain00125_n16_α:
 mov rax, qword ptr [1879052528]
 mov rdx, qword ptr [1879052536]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00125_n18_α
# IR_LIT_STRING
 xchain00125_n17_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx00133_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00125_n20_α
.Lx00133_0:
 .quad .Lx00133_0_s
.Lx00133_0_s:
 .string "block"
# IR_UNOP
 xchain00125_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00125_n21_α
# IR_RETURN
 xchain00125_n19_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Regions___γ
# IR_MAKE_LIST
 xchain00125_n20_α:
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 904], rax
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 920], rax
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 936], rax
 lea rdi, [rbp + 896]
 mov esi, 3
 call rt_make_list@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain00125_n3_α
# IR_TO
 xchain00125_n21_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00134_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00125_n19_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00125_n22_α
 xchain00125_n21_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00134_0
 xchain00125_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00125_n23_α
# IR_BOUND
 xchain00125_n23_α:
 mov qword ptr [rbp + 160], rsp
 jmp xchain00125_n24_α
# IR_VAR_REF
 xchain00125_n24_α:
 mov rax, 4294967305
 mov rdx, 1879052528
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00125_n25_α
# IR_VAR
 xchain00125_n25_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 312], rax
 jmp xchain00125_n26_α
# IR_SUBSCRIPT x[i] variable
 xchain00125_n26_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00125_n27_α
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00125_n28_α
# IR_UNMARK
 xchain00125_n27_α:
 mov rsp, qword ptr [rbp + 160]
 jmp xchain00125_n21_β
# IR_DEREF variable -> value
 xchain00125_n28_α:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00125_n27_α
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00125_n29_α
# IR_VAR_REF
 xchain00125_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00125_n30_α
# IR_VAR
 xchain00125_n30_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 488], rax
 jmp xchain00125_n31_α
# IR_SUBSCRIPT x[i] variable
 xchain00125_n31_α:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00125_n27_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00125_n32_α
# IR_DEREF variable -> value
 xchain00125_n32_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00125_n27_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00125_n33_α
# IR_LIT_INTEGER
 xchain00125_n33_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00135_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00125_n34_α
.Lx00135_0:
 .quad 8
 xchain00125_n34_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+400]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+416]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 424], rax
  .section .rodata
  .Lrkfn559: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn559]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00125_n27_α
 jmp xchain00125_n35_α
 xchain00125_n34_β:
 jmp xchain00125_n27_α
 xchain00125_n35_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+224]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 232], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+240]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 248], rax
  .section .rodata
  .Lrkfn561: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn561]
 lea rsi, [rbp + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00125_n27_α
 jmp xchain00125_n27_α
 xchain00125_n35_β:
 jmp xchain00125_n27_α
proc_Regions___res:
add rsp, 8
pop rbp
proc_Regions___β:
jmp proc_Regions___ω
proc_Regions___γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1208]
lea rsp, [rbp + 1232]
mov rbp, [rbp + 1224]
jmp rax
proc_Regions___ω:
mov rax, [rbp + 1216]
lea rsp, [rbp + 1232]
mov rbp, [rbp + 1224]
jmp rax
  .globl proc_Signature___α
proc_Signature___α:
#=======================================================================================================================
    .global proc_Signature___α
    .global proc_Signature___β
    .global proc_Signature___γ
    .global proc_Signature___ω
  sub rsp, 304
  mov [rsp + 280], rcx
  mov [rsp + 288], rdx
  mov [rsp + 296], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 272
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 264], rsp
  mov rdi, rsp
  mov esi, 272
  call rt_jmp_frame_lexprep@PLT
proc_Signature___α_body:
# KEYWORD_read
 xchain00136_n0_α:
 mov rdi, qword ptr [rip + .Lx00137_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00136_n2_α
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00136_n1_α
 xchain00136_n0_β:
 jmp xchain00136_n2_α
.Lx00137_0:
 .quad .Lx00137_0_s
.Lx00137_0_s:
 .string "&version"
 xchain00136_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn565: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn565]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00136_n2_α
 jmp xchain00136_n2_α
 xchain00136_n1_β:
 jmp xchain00136_n2_α
# KEYWORD_read
 xchain00136_n2_α:
 mov rdi, qword ptr [rip + .Lx00138_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00136_n4_α
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00136_n3_α
 xchain00136_n2_β:
 jmp xchain00136_n4_α
.Lx00138_0:
 .quad .Lx00138_0_s
.Lx00138_0_s:
 .string "&host"
 xchain00136_n3_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn568: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn568]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je xchain00136_n4_α
 jmp xchain00136_n4_α
 xchain00136_n3_β:
 jmp xchain00136_n4_α
# KEYWORD_gen
 xchain00136_n4_α:
 mov qword ptr [rbp + 80], 0
.Lx00139_1:
 mov rdi, qword ptr [rip + .Lx00139_0]
 mov rsi, qword ptr [rbp + 80]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00136_n6_α
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 mov rax, qword ptr [rbp + 80]
 add rax, 1
 mov qword ptr [rbp + 80], rax
 jmp xchain00136_n5_α
 xchain00136_n4_β:
 jmp .Lx00139_1
.Lx00139_0:
 .quad .Lx00139_0_s
.Lx00139_0_s:
 .string "&features"
 xchain00136_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+32]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 40], rax
  .section .rodata
  .Lrkfn571: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn571]
 lea rsi, [rbp + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 cmp eax, 99
 je xchain00136_n6_α
 jmp xchain00136_n4_β
 xchain00136_n5_β:
 jmp xchain00136_n6_α
# IR_RETURN
 xchain00136_n6_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Signature___γ
proc_Signature___res:
add rsp, 8
pop rbp
proc_Signature___β:
jmp proc_Signature___ω
proc_Signature___γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 280]
lea rsp, [rbp + 304]
mov rbp, [rbp + 296]
jmp rax
proc_Signature___ω:
mov rax, [rbp + 288]
lea rsp, [rbp + 304]
mov rbp, [rbp + 296]
jmp rax
  .globl proc_Storage___α
proc_Storage___α:
#=======================================================================================================================
    .global proc_Storage___α
    .global proc_Storage___β
    .global proc_Storage___γ
    .global proc_Storage___ω
  sub rsp, 1232
  mov [rsp + 1208], rcx
  mov [rsp + 1216], rdx
  mov [rsp + 1224], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1200
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1160], rsp
  mov rdi, rsp
  mov esi, 1200
  call rt_jmp_frame_lexprep@PLT
proc_Storage___α_body:
# IR_DISJUNCTION_NARY
 xchain00140_n0_α:
 mov qword ptr [rbp + 832], 0
 mov qword ptr [rbp + 840], 0
 mov dword ptr [rbp + 848], 0
 jmp xchain00140_n2_α
xchain00140_n0_as:
 mov eax, dword ptr [rbp + 848]
 cmp eax, 0
 jne .Lx00141_0
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
 jmp xchain00140_n1_α
.Lx00141_0:
 jmp xchain00140_n1_α
 xchain00140_n0_β:
 mov eax, dword ptr [rbp + 848]
 jmp xchain00140_n1_α
xchain00140_n0_af:
 add dword ptr [rbp + 848], 1
 mov eax, dword ptr [rbp + 848]
 jmp xchain00140_n1_α
# IR_MAKE_LIST
 xchain00140_n1_α:
 lea rdi, [rbp + 832]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00140_n4_α
# IR_VAR_REF
 xchain00140_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052576
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00140_n5_α
 xchain00140_n2_β:
 jmp xchain00140_n0_af
# IR_ASSIGN gva
 xchain00140_n3_α:
 mov rax, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00140_n0_as
 xchain00140_n3_β:
 jmp xchain00140_n1_α
 xchain00140_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00140_n6_α
# IR_NULLTEST_VAR
 xchain00140_n5_α:
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 99
 je xchain00140_n0_af
 mov rdi, qword ptr [rbp + 1040]
 mov rsi, qword ptr [rbp + 1048]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00140_n0_af
 cmp eax, 0
 jne xchain00140_n0_af
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00140_n7_α
# IR_VAR
 xchain00140_n6_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 744], rax
 jmp xchain00140_n8_α
# IR_LIT_INTEGER
 xchain00140_n7_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx00142_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00140_n10_α
.Lx00142_0:
 .quad 1
# KEYWORD_gen
 xchain00140_n8_α:
 mov qword ptr [rbp + 784], 0
.Lx00143_1:
 mov rdi, qword ptr [rip + .Lx00143_0]
 mov rsi, qword ptr [rbp + 784]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00140_n9_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 mov rax, qword ptr [rbp + 784]
 add rax, 1
 mov qword ptr [rbp + 784], rax
 jmp xchain00140_n11_α
 xchain00140_n8_β:
 jmp .Lx00143_1
.Lx00143_0:
 .quad .Lx00143_0_s
.Lx00143_0_s:
 .string "&storage"
# IR_LIT_STRING
 xchain00140_n9_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00144_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00140_n12_α
.Lx00144_0:
 .quad .Lx00144_0_s
.Lx00144_0_s:
 .string "storage"
# IR_ASSIGN_VAR
 xchain00140_n10_α:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, qword ptr [rbp + 1120]
 mov rcx, qword ptr [rbp + 1128]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00140_n0_af
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00140_n13_α
 xchain00140_n11_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+688]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 696], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+704]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 712], rax
  .section .rodata
  .Lrkfn590: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn590]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain00140_n9_α
 jmp xchain00140_n8_β
 xchain00140_n11_β:
 jmp xchain00140_n9_α
 xchain00140_n12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn592: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn592]
 lea rsi, [rbp + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00140_n14_α
 jmp xchain00140_n14_α
 xchain00140_n12_β:
 jmp xchain00140_n14_α
# IR_LIT_STRING
 xchain00140_n13_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx00145_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00140_n15_α
.Lx00145_0:
 .quad .Lx00145_0_s
.Lx00145_0_s:
 .string "static"
# IR_LIT_INTEGER
 xchain00140_n14_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00146_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00140_n16_α
.Lx00146_0:
 .quad 1
# IR_LIT_STRING
 xchain00140_n15_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx00147_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00140_n17_α
.Lx00147_0:
 .quad .Lx00147_0_s
.Lx00147_0_s:
 .string "string"
# IR_VAR
 xchain00140_n16_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00140_n18_α
# IR_LIT_STRING
 xchain00140_n17_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx00148_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00140_n20_α
.Lx00148_0:
 .quad .Lx00148_0_s
.Lx00148_0_s:
 .string "block"
# IR_UNOP
 xchain00140_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00140_n21_α
# IR_RETURN
 xchain00140_n19_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Storage___γ
# IR_MAKE_LIST
 xchain00140_n20_α:
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 904], rax
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 920], rax
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 936], rax
 lea rdi, [rbp + 896]
 mov esi, 3
 call rt_make_list@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain00140_n3_α
# IR_TO
 xchain00140_n21_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00149_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00140_n19_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00140_n22_α
 xchain00140_n21_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00149_0
 xchain00140_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00140_n23_α
# IR_BOUND
 xchain00140_n23_α:
 mov qword ptr [rbp + 160], rsp
 jmp xchain00140_n24_α
# IR_VAR_REF
 xchain00140_n24_α:
 mov rax, 4294967305
 mov rdx, 1879052560
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00140_n25_α
# IR_VAR
 xchain00140_n25_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 312], rax
 jmp xchain00140_n26_α
# IR_SUBSCRIPT x[i] variable
 xchain00140_n26_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00140_n27_α
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00140_n28_α
# IR_UNMARK
 xchain00140_n27_α:
 mov rsp, qword ptr [rbp + 160]
 jmp xchain00140_n21_β
# IR_DEREF variable -> value
 xchain00140_n28_α:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00140_n27_α
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00140_n29_α
# IR_VAR_REF
 xchain00140_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00140_n30_α
# IR_VAR
 xchain00140_n30_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 488], rax
 jmp xchain00140_n31_α
# IR_SUBSCRIPT x[i] variable
 xchain00140_n31_α:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00140_n27_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00140_n32_α
# IR_DEREF variable -> value
 xchain00140_n32_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00140_n27_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00140_n33_α
# IR_LIT_INTEGER
 xchain00140_n33_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00150_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00140_n34_α
.Lx00150_0:
 .quad 8
 xchain00140_n34_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+400]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+416]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 424], rax
  .section .rodata
  .Lrkfn623: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn623]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00140_n27_α
 jmp xchain00140_n35_α
 xchain00140_n34_β:
 jmp xchain00140_n27_α
 xchain00140_n35_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+224]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 232], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+240]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 248], rax
  .section .rodata
  .Lrkfn625: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn625]
 lea rsi, [rbp + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00140_n27_α
 jmp xchain00140_n27_α
 xchain00140_n35_β:
 jmp xchain00140_n27_α
proc_Storage___res:
add rsp, 8
pop rbp
proc_Storage___β:
jmp proc_Storage___ω
proc_Storage___γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1208]
lea rsp, [rbp + 1232]
mov rbp, [rbp + 1224]
jmp rax
proc_Storage___ω:
mov rax, [rbp + 1216]
lea rsp, [rbp + 1232]
mov rbp, [rbp + 1224]
jmp rax
  .globl proc_Time___α
proc_Time___α:
#=======================================================================================================================
    .global proc_Time___α
    .global proc_Time___β
    .global proc_Time___γ
    .global proc_Time___ω
  sub rsp, 416
  mov [rsp + 392], rcx
  mov [rsp + 400], rdx
  mov [rsp + 408], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 384
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 376], rsp
  mov rdi, rsp
  mov esi, 384
  call rt_jmp_frame_lexprep@PLT
proc_Time___α_body:
# IR_DISJUNCTION_NARY
 xchain00151_n0_α:
 mov qword ptr [rbp + 176], 0
 mov qword ptr [rbp + 184], 0
 mov dword ptr [rbp + 192], 0
 jmp xchain00151_n2_α
xchain00151_n0_as:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 0
 jne .Lx00152_0
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
 jmp xchain00151_n1_α
.Lx00152_0:
 jmp xchain00151_n1_α
 xchain00151_n0_β:
 mov eax, dword ptr [rbp + 192]
 jmp xchain00151_n1_α
xchain00151_n0_af:
 add dword ptr [rbp + 192], 1
 mov eax, dword ptr [rbp + 192]
 jmp xchain00151_n1_α
# KEYWORD_read
 xchain00151_n1_α:
 mov rdi, qword ptr [rip + .Lx00153_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je proc_Time___ω
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain00151_n4_α
 xchain00151_n1_β:
 jmp proc_Time___ω
.Lx00153_0:
 .quad .Lx00153_0_s
.Lx00153_0_s:
 .string "&time"
# IR_VAR_REF
 xchain00151_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052608
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00151_n5_α
 xchain00151_n2_β:
 jmp xchain00151_n0_af
# IR_ASSIGN gva
 xchain00151_n3_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [1879052592], rax
 mov qword ptr [1879052600], rdx
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00151_n0_as
 xchain00151_n3_β:
 jmp xchain00151_n1_α
# IR_VAR
 xchain00151_n4_α:
 mov rax, qword ptr [1879052592]
 mov rdx, qword ptr [1879052600]
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00151_n6_α
# IR_NULLTEST_VAR
 xchain00151_n5_α:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 99
 je xchain00151_n0_af
 mov rdi, qword ptr [rbp + 256]
 mov rsi, qword ptr [rbp + 264]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00151_n0_af
 cmp eax, 0
 jne xchain00151_n0_af
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 296], rax
 jmp xchain00151_n7_α
# IR_COERCE_NUMERIC
 xchain00151_n6_α:
 mov eax, dword ptr [rbp + 112]
 cmp eax, 7
 je .Lx00154_1
 cmp eax, 6
 jne .Lx00154_0
 mov eax, dword ptr [rbp + 144]
 cmp eax, 6
 jne .Lx00154_0
.Lx00154_1:
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 88], rax
 jmp xchain00151_n8_α
.Lx00154_0:
 lea rdi, [rbp + 112]
 lea rsi, [rbp + 144]
 lea rdx, [rbp + 80]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00151_n8_α
# IR_LIT_INTEGER
 xchain00151_n7_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00155_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00151_n9_α
.Lx00155_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00151_n8_α:
 mov eax, dword ptr [rbp + 144]
 cmp eax, 7
 je .Lx00156_1
 cmp eax, 6
 jne .Lx00156_0
 mov eax, dword ptr [rbp + 112]
 cmp eax, 6
 jne .Lx00156_0
.Lx00156_1:
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 56], rax
 jmp xchain00151_n10_α
.Lx00156_0:
 lea rdi, [rbp + 144]
 lea rsi, [rbp + 112]
 lea rdx, [rbp + 48]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00151_n10_α
# IR_ASSIGN_VAR
 xchain00151_n9_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00151_n0_af
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00151_n11_α
 xchain00151_n10_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 80]
 cmp eax, 100
 je .Lx00157_0
 mov eax, dword ptr [rbp + 48]
 cmp eax, 100
 je .Lx00157_0
 mov eax, dword ptr [rbp + 80]
 cmp eax, 6
 jne .Lx00157_2
 mov eax, dword ptr [rbp + 48]
 cmp eax, 6
 jne .Lx00157_2
.Lx00157_1:
 mov rax, qword ptr [rbp + 88]
 mov rcx, qword ptr [rbp + 56]
 sub rax, rcx
 mov qword ptr [rbp + 16], 6
 mov qword ptr [rbp + 24], rax
 jmp xchain00151_n12_α
.Lx00157_0:
 mov rdi, qword ptr [rbp + 80]
 mov rsi, qword ptr [rbp + 88]
 mov rdx, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 56]
 mov r8d, 1
 lea r9, [rbp + 16]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00151_n12_α
.Lx00157_2:
 mov rdi, qword ptr [rbp + 80]
 mov rsi, qword ptr [rbp + 88]
 mov rdx, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 56]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_Time___ω
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00151_n12_α
 xchain00151_n10_β:
 jmp proc_Time___ω
# KEYWORD_read
 xchain00151_n11_α:
 mov rdi, qword ptr [rip + .Lx00158_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00151_n1_α
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00151_n3_α
 xchain00151_n11_β:
 jmp xchain00151_n1_α
.Lx00158_0:
 .quad .Lx00158_0_s
.Lx00158_0_s:
 .string "&time"
# IR_RETURN
 xchain00151_n12_α:
 mov rax, qword ptr [rbp + 16]
 mov rdx, qword ptr [rbp + 24]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_Time___γ
proc_Time___res:
add rsp, 8
pop rbp
proc_Time___β:
jmp proc_Time___ω
proc_Time___γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 392]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
proc_Time___ω:
mov rax, [rbp + 400]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "q"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_q_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3520
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname1: .string "show"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_show_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1856
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname2: .string "options"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_options_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 3728
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname3: .string "Init__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_Init___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 592
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname4: .string "Term__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_Term___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 592
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname5: .string "Collections__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_Collections___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1248
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname6: .string "Regions__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_Regions___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1200
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname7: .string "Signature__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_Signature___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 272
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname8: .string "Storage__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + proc_Storage___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1200
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname9: .string "Time__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname9]
  lea rsi, [rip + proc_Time___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 384
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  add rsp, 8
  ret
  .section .rodata
  .Lgvan0: .string "n"
  .Lgvan1: .string "solution"
  .Lgvan2: .string "Save__"
  .Lgvan3: .string "Saves__"
  .Lgvan4: .string "Name__"
  .Lgvan5: .string "q__STATIC__up"
  .Lgvan6: .string "q__STATIC__down"
  .Lgvan7: .string "q__STATIC__rows"
  .Lgvan8: .string "q__INITFLAG__0"
  .Lgvan9: .string "show__STATIC__count"
  .Lgvan10: .string "show__STATIC__line"
  .Lgvan11: .string "show__STATIC__border"
  .Lgvan12: .string "show__INITFLAG__0"
  .Lgvan13: .string "Collections____STATIC__labels"
  .Lgvan14: .string "Collections____INITFLAG__0"
  .Lgvan15: .string "Regions____STATIC__labels"
  .Lgvan16: .string "Regions____INITFLAG__0"
  .Lgvan17: .string "Storage____STATIC__labels"
  .Lgvan18: .string "Storage____INITFLAG__0"
  .Lgvan19: .string "Time____STATIC__lasttime"
  .Lgvan20: .string "Time____INITFLAG__0"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .quad .Lgvan5
  .quad .Lgvan6
  .quad .Lgvan7
  .quad .Lgvan8
  .quad .Lgvan9
  .quad .Lgvan10
  .quad .Lgvan11
  .quad .Lgvan12
  .quad .Lgvan13
  .quad .Lgvan14
  .quad .Lgvan15
  .quad .Lgvan16
  .quad .Lgvan17
  .quad .Lgvan18
  .quad .Lgvan19
  .quad .Lgvan20
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 21
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 21
  call gva_register@PLT
  mov rdi, qword ptr [rsp]
  add rdi, 8
  mov esi, dword ptr [rsp + 8]
  sub esi, 1
  call rt_main_args_stage@PLT
  xor esi, esi
  call main_α
  xor eax, eax
  add rsp, 24
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
  mov qword ptr [rsp + 984], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
  push rsi
  sub rsp, 8
  call rt_main_args_fetch@PLT
  add rsp, 8
  pop rsi
  mov [rbp + 16], rax
  mov [rbp + 24], rdx
main_α_body:
 xchain00159_n0_α:
 mov edi, 3
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00160_1
 lea rcx, [rip + .Lx00160_3]
 lea rdx, [rip + .Lx00160_4]
 jmp rax
.Lx00160_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00160_2
.Lx00160_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00160_2
.Lx00160_1:
 call rt_faildescr@PLT
.Lx00160_2:
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain00159_n1_α
 jmp xchain00159_n1_α
 xchain00159_n0_β:
 jmp xchain00159_n1_α
.Lx00160_0:
 .quad .Lx00160_0_s
.Lx00160_0_s:
 .string "Init__"
# IR_VAR
 xchain00159_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 888], rax
 jmp xchain00159_n2_α
# IR_LIT_STRING
 xchain00159_n2_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx00161_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00159_n4_α
.Lx00161_0:
 .quad .Lx00161_0_s
.Lx00161_0_s:
 .string "n+"
# IR_DISJUNCTION_NARY
 xchain00159_n3_α:
 mov qword ptr [rbp + 592], 0
 mov qword ptr [rbp + 600], 0
 mov dword ptr [rbp + 608], 0
 jmp xchain00159_n6_α
xchain00159_n3_as:
 mov eax, dword ptr [rbp + 608]
 cmp eax, 0
 jne .Lx00162_0
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 600], rax
 jmp xchain00159_n5_α
.Lx00162_0:
 cmp eax, 1
 jne .Lx00162_1
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 600], rax
 jmp xchain00159_n5_α
.Lx00162_1:
 jmp xchain00159_n5_α
 xchain00159_n3_β:
 mov eax, dword ptr [rbp + 608]
 cmp eax, 0
 je xchain00159_n3_af
 jmp xchain00159_n3_af
xchain00159_n3_af:
 add dword ptr [rbp + 608], 1
 mov eax, dword ptr [rbp + 608]
 cmp eax, 1
 je xchain00159_n7_α
 jmp xchain00159_n10_α
 xchain00159_n4_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 912]
 mov rdx, qword ptr [rbp + 920]
 call rt_arg_stage@PLT
 mov edi, 2
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00163_1
 lea rcx, [rip + .Lx00163_3]
 lea rdx, [rip + .Lx00163_4]
 jmp rax
.Lx00163_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00163_2
.Lx00163_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00163_2
.Lx00163_1:
 call rt_faildescr@PLT
.Lx00163_2:
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain00159_n3_α
 jmp xchain00159_n9_α
 xchain00159_n4_β:
 jmp xchain00159_n3_α
.Lx00163_0:
 .quad .Lx00163_0_s
.Lx00163_0_s:
 .string "options"
# IR_ASSIGN gva
 xchain00159_n5_α:
 mov rax, qword ptr [rbp + 592]
 mov rdx, qword ptr [rbp + 600]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00159_n10_α
# IR_VAR_REF
 xchain00159_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 992]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00159_n11_α
 xchain00159_n6_β:
 jmp xchain00159_n3_af
# IR_LIT_INTEGER
 xchain00159_n7_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx00164_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00159_n3_as
 xchain00159_n7_β:
 jmp xchain00159_n3_af
.Lx00164_0:
 .quad 6
# IR_UNOP
 xchain00159_n8_α:
 mov eax, dword ptr [rbp + 752]
 cmp eax, 99
 je xchain00159_n3_af
 cmp eax, 0
 je xchain00159_n3_af
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 632], rax
 jmp xchain00159_n3_as
 xchain00159_n8_β:
 jmp xchain00159_n3_af
 xchain00159_n9_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00159_n3_α
# IR_DISJUNCTION_NARY
 xchain00159_n10_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 mov dword ptr [rbp + 384], 0
 jmp xchain00159_n13_α
xchain00159_n10_as:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 jne .Lx00165_0
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 jmp xchain00159_n12_α
.Lx00165_0:
 jmp xchain00159_n12_α
 xchain00159_n10_β:
 mov eax, dword ptr [rbp + 384]
 jmp xchain00159_n12_α
xchain00159_n10_af:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 jmp xchain00159_n12_α
# IR_LIT_STRING
 xchain00159_n11_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx00166_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00159_n15_α
.Lx00166_0:
 .quad .Lx00166_0_s
.Lx00166_0_s:
 .string "n"
# IR_VAR
 xchain00159_n12_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00159_n16_α
# IR_VAR
 xchain00159_n13_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00159_n18_α
 xchain00159_n13_β:
 jmp xchain00159_n10_af
 xchain00159_n14_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
  .section .rodata
  .Lrkfn666: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn666]
 lea rsi, [rbp + 416]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain00159_n12_α
 jmp xchain00159_n10_as
 xchain00159_n14_β:
 jmp xchain00159_n12_α
# IR_SUBSCRIPT x[i] variable
 xchain00159_n15_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00159_n3_af
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00159_n19_α
 xchain00159_n16_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 312], rax
  .section .rodata
  .Lrkfn669: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn669]
 lea rsi, [rbp + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain00159_n17_α
 jmp xchain00159_n20_α
 xchain00159_n16_β:
 jmp xchain00159_n17_α
# IR_VAR
 xchain00159_n17_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00159_n21_α
# IR_LIT_INTEGER
 xchain00159_n18_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00167_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00159_n23_α
.Lx00167_0:
 .quad 0
# IR_DEREF variable -> value
 xchain00159_n19_α:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00159_n3_af
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00159_n8_α
# IR_ASSIGN gva
 xchain00159_n20_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00159_n17_α
# IR_LIT_STRING
 xchain00159_n21_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00168_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00159_n24_α
.Lx00168_0:
 .quad .Lx00168_0_s
.Lx00168_0_s:
 .string "-Queens:"
# IR_LIT_INTEGER
 xchain00159_n22_α:
 mov qword ptr [rbp + 112], 6
 mov rax, qword ptr [rip + .Lx00169_0]
 mov qword ptr [rbp + 120], rax
 jmp xchain00159_n25_α
.Lx00169_0:
 .quad 1
 xchain00159_n23_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 512]
 cmp eax, 100
 je .Lx00170_0
 mov eax, dword ptr [rbp + 544]
 cmp eax, 100
 je .Lx00170_0
 mov eax, dword ptr [rbp + 512]
 cmp eax, 6
 jne .Lx00170_2
 mov eax, dword ptr [rbp + 544]
 cmp eax, 6
 jne .Lx00170_2
.Lx00170_1:
 mov rax, qword ptr [rbp + 520]
 mov rcx, qword ptr [rbp + 552]
 cmp rax, rcx
 jg xchain00159_n10_af
 mov rcx, qword ptr [rbp + 544]
 mov qword ptr [rbp + 480], rcx
 mov rcx, qword ptr [rbp + 552]
 mov qword ptr [rbp + 488], rcx
 jmp xchain00159_n26_α
.Lx00170_0:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 544]
 mov rcx, qword ptr [rbp + 552]
 mov r8d, 6
 lea r9, [rbp + 480]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00170_1
 cmp eax, 1
 je xchain00159_n10_af
 jmp xchain00159_n26_α
.Lx00170_2:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 544]
 mov rcx, qword ptr [rbp + 552]
 mov r8d, 6
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00159_n10_af
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 488], rax
 jmp xchain00159_n26_α
 xchain00159_n24_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+160]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 168], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+176]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
  .section .rodata
  .Lrkfn678: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn678]
 lea rsi, [rbp + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain00159_n22_α
 jmp xchain00159_n22_α
 xchain00159_n24_β:
 jmp xchain00159_n22_α
 xchain00159_n25_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00171_1
 lea rcx, [rip + .Lx00171_3]
 lea rdx, [rip + .Lx00171_4]
 jmp rax
.Lx00171_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00171_2
.Lx00171_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00171_2
.Lx00171_1:
 call rt_faildescr@PLT
.Lx00171_2:
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je xchain00159_n27_α
 jmp xchain00159_n27_α
 xchain00159_n25_β:
 jmp xchain00159_n27_α
.Lx00171_0:
 .quad .Lx00171_0_s
.Lx00171_0_s:
 .string "q"
# IR_LIT_STRING
 xchain00159_n26_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx00172_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain00159_n14_α
.Lx00172_0:
 .quad .Lx00172_0_s
.Lx00172_0_s:
 .string "-n needs a positive numeric parameter"
 xchain00159_n27_α:
 mov edi, 4
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00173_1
 lea rcx, [rip + .Lx00173_3]
 lea rdx, [rip + .Lx00173_4]
 jmp rax
.Lx00173_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00173_2
.Lx00173_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00173_2
.Lx00173_1:
 call rt_faildescr@PLT
.Lx00173_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain00159_n27_β:
 jmp main_ω
.Lx00173_0:
 .quad .Lx00173_0_s
.Lx00173_0_s:
 .string "Term__"
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 984]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 984]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
