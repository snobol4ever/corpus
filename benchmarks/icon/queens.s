  .intel_syntax noprefix
  .text
  .globl proc_q_α
proc_q_α:
#=======================================================================================================================
    .global proc_q_α
    .global proc_q_β
    .global proc_q_γ
    .global proc_q_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 3448], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 3440], rax
 pop rsi
proc_q_α_body:
# IR_VAR_REF
 xchain0_n0_α:
 lea rdi, [rbx + 128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3328], rax
 mov qword ptr [r12 + 3336], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n3_α
# IR_NULLTEST_VAR
 xchain0_n1_α:
 mov eax, dword ptr [r12 + 3328]
 cmp eax, 99
 je xchain0_n3_α
 mov rdi, qword ptr [r12 + 3328]
 mov rsi, qword ptr [r12 + 3336]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n3_α
 cmp eax, 0
 jne xchain0_n3_α
 mov rax, qword ptr [r12 + 3328]
 mov qword ptr [r12 + 3360], rax
 mov rax, qword ptr [r12 + 3336]
 mov qword ptr [r12 + 3368], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n3_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [r12 + 3408], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 3416], rax
 jmp xchain0_n4_α
 xchain0_n2_β:
 jmp xchain0_n3_α
.Lx4_0:
 .quad 1
# IR_LIT_INTEGER
 xchain0_n3_α:
 mov qword ptr [r12 + 1040], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp proc_q_ω
.Lx5_0:
 .quad 0
# IR_ASSIGN_VAR
 xchain0_n4_α:
 mov rdi, qword ptr [r12 + 3360]
 mov rsi, qword ptr [r12 + 3368]
 mov rdx, qword ptr [r12 + 3408]
 mov rcx, qword ptr [r12 + 3416]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n3_α
 mov qword ptr [r12 + 3392], rax
 mov qword ptr [r12 + 3400], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n3_α
# IR_VAR_REF
 xchain0_n5_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_q_ω
# IR_LIT_INTEGER
 xchain0_n6_α:
 mov qword ptr [r12 + 3200], 6
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 3208], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n11_α
.Lx9_0:
 .quad 2
# IR_LIT_INTEGER
 xchain0_n7_α:
 mov qword ptr [r12 + 1152], 6
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp proc_q_ω
.Lx10_0:
 .quad 1
# IR_VAR
 xchain0_n8_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 3232], rax
 mov qword ptr [r12 + 3240], rdx
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n11_α
# IR_VAR
 xchain0_n9_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain0_n12_α
 xchain0_n9_β:
 jmp proc_q_ω
# IR_COERCE_NUMERIC
 xchain0_n10_α:
 mov eax, dword ptr [r12 + 3232]
 cmp eax, 7
 je .Lx14_1
 cmp eax, 6
 jne .Lx14_0
 mov eax, dword ptr [r12 + 3200]
 cmp eax, 6
 jne .Lx14_0
.Lx14_1:
 mov rax, qword ptr [r12 + 3232]
 mov qword ptr [r12 + 3168], rax
 mov rax, qword ptr [r12 + 3240]
 mov qword ptr [r12 + 3176], rax
 jmp .Lx14_2
.Lx14_0:
 lea rdi, [r12 + 3232]
 lea rsi, [r12 + 3200]
 lea rdx, [r12 + 3168]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx14_2:
 jmp xchain0_n13_α
 xchain0_n10_β:
 jmp xchain0_n11_α
# IR_LIT_INTEGER
 xchain0_n11_α:
 mov qword ptr [r12 + 2864], 6
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 2872], rax
 jmp xchain0_n14_α
 xchain0_n11_β:
 jmp xchain0_n18_α
.Lx15_0:
 .quad 2
# IR_TO
 xchain0_n12_α:
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1136], rax
.Lx17_0:
 mov rax, qword ptr [r12 + 1136]
 mov rcx, qword ptr [r12 + 1192]
 cmp rax, rcx
 jg proc_q_ω
 mov qword ptr [r12 + 1120], 6
 mov qword ptr [r12 + 1128], rax
 jmp xchain0_n15_α
 xchain0_n12_β:
 inc qword ptr [r12 + 1136]
 jmp .Lx17_0
 xchain0_n13_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 3168]
 cmp eax, 100
 je .Lx18_0
 mov eax, dword ptr [r12 + 3168]
 cmp eax, 6
 jne .Lx18_2
.Lx18_1:
 mov rax, 2
 mov rcx, qword ptr [r12 + 3176]
 imul rax, rcx
 mov qword ptr [r12 + 3136], 6
 mov qword ptr [r12 + 3144], rax
 jmp xchain0_n16_α
.Lx18_0:
 mov rdi, qword ptr [r12 + 3200]
 mov rsi, qword ptr [r12 + 3208]
 mov rdx, qword ptr [r12 + 3168]
 mov rcx, qword ptr [r12 + 3176]
 mov r8d, 2
 lea r9, [r12 + 3136]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx18_3
.Lx18_2:
 mov rdi, qword ptr [r12 + 3200]
 mov rsi, qword ptr [r12 + 3208]
 mov rdx, qword ptr [r12 + 3168]
 mov rcx, qword ptr [r12 + 3176]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n11_α
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
.Lx18_3:
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n11_α
# IR_VAR
 xchain0_n14_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 2896], rax
 mov qword ptr [r12 + 2904], rdx
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp xchain0_n18_α
 xchain0_n15_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 3456], rax
 mov qword ptr [r12 + 3464], rdx
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain0_n19_α
 xchain0_n15_β:
 jmp proc_q_ω
# IR_LIT_INTEGER
 xchain0_n16_α:
 mov qword ptr [r12 + 3264], 6
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [r12 + 3272], rax
 jmp xchain0_n20_α
 xchain0_n16_β:
 jmp xchain0_n11_α
.Lx21_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain0_n17_α:
 mov eax, dword ptr [r12 + 2896]
 cmp eax, 7
 je .Lx23_1
 cmp eax, 6
 jne .Lx23_0
 mov eax, dword ptr [r12 + 2864]
 cmp eax, 6
 jne .Lx23_0
.Lx23_1:
 mov rax, qword ptr [r12 + 2896]
 mov qword ptr [r12 + 2832], rax
 mov rax, qword ptr [r12 + 2904]
 mov qword ptr [r12 + 2840], rax
 jmp .Lx23_2
.Lx23_0:
 lea rdi, [r12 + 2896]
 lea rsi, [r12 + 2864]
 lea rdx, [r12 + 2832]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx23_2:
 jmp xchain0_n21_α
 xchain0_n17_β:
 jmp xchain0_n18_α
# IR_VAR
 xchain0_n18_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 jmp xchain0_n22_α
 xchain0_n18_β:
 jmp xchain0_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n19_α:
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 mov rdx, qword ptr [r12 + 1104]
 mov rcx, qword ptr [r12 + 1112]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain0_n23_α
 xchain0_n19_β:
 jmp xchain0_n12_β
# IR_COERCE_NUMERIC
 xchain0_n20_α:
 mov eax, dword ptr [r12 + 3136]
 cmp eax, 7
 je .Lx27_1
 cmp eax, 6
 jne .Lx27_0
 mov eax, dword ptr [r12 + 3264]
 cmp eax, 6
 jne .Lx27_0
.Lx27_1:
 mov rax, qword ptr [r12 + 3136]
 mov qword ptr [r12 + 3104], rax
 mov rax, qword ptr [r12 + 3144]
 mov qword ptr [r12 + 3112], rax
 jmp .Lx27_2
.Lx27_0:
 lea rdi, [r12 + 3136]
 lea rsi, [r12 + 3264]
 lea rdx, [r12 + 3104]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx27_2:
 jmp xchain0_n24_α
 xchain0_n20_β:
 jmp xchain0_n11_α
 xchain0_n21_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2832]
 cmp eax, 100
 je .Lx28_0
 mov eax, dword ptr [r12 + 2832]
 cmp eax, 6
 jne .Lx28_2
.Lx28_1:
 mov rax, 2
 mov rcx, qword ptr [r12 + 2840]
 imul rax, rcx
 mov qword ptr [r12 + 2800], 6
 mov qword ptr [r12 + 2808], rax
 jmp xchain0_n25_α
.Lx28_0:
 mov rdi, qword ptr [r12 + 2864]
 mov rsi, qword ptr [r12 + 2872]
 mov rdx, qword ptr [r12 + 2832]
 mov rcx, qword ptr [r12 + 2840]
 mov r8d, 2
 lea r9, [r12 + 2800]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx28_3
.Lx28_2:
 mov rdi, qword ptr [r12 + 2864]
 mov rsi, qword ptr [r12 + 2872]
 mov rdx, qword ptr [r12 + 2832]
 mov rcx, qword ptr [r12 + 2840]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n18_α
 mov qword ptr [r12 + 2800], rax
 mov qword ptr [r12 + 2808], rdx
.Lx28_3:
 jmp xchain0_n25_α
 xchain0_n21_β:
 jmp xchain0_n18_α
# IR_LIT_INTEGER
 xchain0_n22_α:
 mov qword ptr [r12 + 2624], 6
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [r12 + 2632], rax
 jmp xchain0_n26_α
 xchain0_n22_β:
 jmp xchain0_n3_α
.Lx29_0:
 .quad 0
# IR_DEREF variable -> value
 xchain0_n23_α:
 mov rdi, qword ptr [r12 + 1216]
 mov rsi, qword ptr [r12 + 1224]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain0_n27_α
 xchain0_n23_β:
 jmp xchain0_n12_β
 xchain0_n24_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 3104]
 cmp eax, 100
 je .Lx31_0
 mov eax, dword ptr [r12 + 3104]
 cmp eax, 6
 jne .Lx31_2
.Lx31_1:
 mov rax, qword ptr [r12 + 3112]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [r12 + 3072], 6
 mov qword ptr [r12 + 3080], rax
 jmp xchain0_n28_α
.Lx31_0:
 mov rdi, qword ptr [r12 + 3104]
 mov rsi, qword ptr [r12 + 3112]
 mov rdx, qword ptr [r12 + 3264]
 mov rcx, qword ptr [r12 + 3272]
 mov r8d, 1
 lea r9, [r12 + 3072]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx31_3
.Lx31_2:
 mov rdi, qword ptr [r12 + 3104]
 mov rsi, qword ptr [r12 + 3112]
 mov rdx, qword ptr [r12 + 3264]
 mov rcx, qword ptr [r12 + 3272]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n11_α
 mov qword ptr [r12 + 3072], rax
 mov qword ptr [r12 + 3080], rdx
.Lx31_3:
 jmp xchain0_n28_α
 xchain0_n24_β:
 jmp xchain0_n11_α
# IR_LIT_INTEGER
 xchain0_n25_α:
 mov qword ptr [r12 + 2928], 6
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [r12 + 2936], rax
 jmp xchain0_n29_α
 xchain0_n25_β:
 jmp xchain0_n18_α
.Lx32_0:
 .quad 1
 xchain0_n26_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2592] -> [zr+2544]
 mov rax, qword ptr [r12 + 2592]
 mov qword ptr [r12 + 2544], rax
 mov rax, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 2552], rax
# marshal arg1 = producer-box slot [zr+2624] -> [zr+2560]
 mov rax, qword ptr [r12 + 2624]
 mov qword ptr [r12 + 2560], rax
 mov rax, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 2568], rax
  .section .rodata
  .Lrkfn34: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn34]
 lea rsi, [r12 + 2544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n30_α
 xchain0_n26_β:
 jmp xchain0_n3_α
 xchain0_n27_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1040]
 cmp eax, 100
 je .Lx35_0
 mov eax, dword ptr [r12 + 1248]
 cmp eax, 100
 je .Lx35_0
 mov eax, dword ptr [r12 + 1040]
 cmp eax, 6
 jne .Lx35_2
 mov eax, dword ptr [r12 + 1248]
 cmp eax, 6
 jne .Lx35_2
.Lx35_1:
 mov rax, qword ptr [r12 + 1048]
 mov rcx, qword ptr [r12 + 1256]
 cmp rax, rcx
 jne xchain0_n12_β
 mov rcx, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1008], rcx
 mov rcx, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1016], rcx
 jmp xchain0_n31_α
.Lx35_0:
 mov rdi, qword ptr [r12 + 1040]
 mov rsi, qword ptr [r12 + 1048]
 mov rdx, qword ptr [r12 + 1248]
 mov rcx, qword ptr [r12 + 1256]
 mov r8d, 9
 lea r9, [r12 + 1008]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx35_1
 cmp eax, 1
 je xchain0_n12_β
 jmp xchain0_n31_α
.Lx35_2:
 mov rdi, qword ptr [r12 + 1040]
 mov rsi, qword ptr [r12 + 1048]
 mov rdx, qword ptr [r12 + 1248]
 mov rcx, qword ptr [r12 + 1256]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n12_β
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1016], rax
 jmp xchain0_n31_α
 xchain0_n27_β:
 jmp xchain0_n12_β
# IR_LIT_INTEGER
 xchain0_n28_α:
 mov qword ptr [r12 + 3296], 6
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [r12 + 3304], rax
 jmp xchain0_n32_α
 xchain0_n28_β:
 jmp xchain0_n11_α
.Lx36_0:
 .quad 0
# IR_COERCE_NUMERIC
 xchain0_n29_α:
 mov eax, dword ptr [r12 + 2800]
 cmp eax, 7
 je .Lx38_1
 cmp eax, 6
 jne .Lx38_0
 mov eax, dword ptr [r12 + 2928]
 cmp eax, 6
 jne .Lx38_0
.Lx38_1:
 mov rax, qword ptr [r12 + 2800]
 mov qword ptr [r12 + 2768], rax
 mov rax, qword ptr [r12 + 2808]
 mov qword ptr [r12 + 2776], rax
 jmp .Lx38_2
.Lx38_0:
 lea rdi, [r12 + 2800]
 lea rsi, [r12 + 2928]
 lea rdx, [r12 + 2768]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx38_2:
 jmp xchain0_n33_α
 xchain0_n29_β:
 jmp xchain0_n18_α
# IR_ASSIGN gva
 xchain0_n30_α:
 mov rax, qword ptr [r12 + 2528]
 mov rdx, qword ptr [r12 + 2536]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 jmp xchain0_n34_α
 xchain0_n30_β:
 jmp xchain0_n3_α
# IR_VAR_REF
 xchain0_n31_α:
 lea rdi, [rbx + 80]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain0_n35_α
 xchain0_n31_β:
 jmp xchain0_n12_β
 xchain0_n32_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3072] -> [zr+3024]
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 3024], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 3032], rax
# marshal arg1 = producer-box slot [zr+3296] -> [zr+3040]
 mov rax, qword ptr [r12 + 3296]
 mov qword ptr [r12 + 3040], rax
 mov rax, qword ptr [r12 + 3304]
 mov qword ptr [r12 + 3048], rax
  .section .rodata
  .Lrkfn43: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn43]
 lea rsi, [r12 + 3024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 cmp eax, 99
 je xchain0_n11_α
 jmp xchain0_n36_α
 xchain0_n32_β:
 jmp xchain0_n11_α
 xchain0_n33_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2768]
 cmp eax, 100
 je .Lx44_0
 mov eax, dword ptr [r12 + 2768]
 cmp eax, 6
 jne .Lx44_2
.Lx44_1:
 mov rax, qword ptr [r12 + 2776]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [r12 + 2736], 6
 mov qword ptr [r12 + 2744], rax
 jmp xchain0_n37_α
.Lx44_0:
 mov rdi, qword ptr [r12 + 2768]
 mov rsi, qword ptr [r12 + 2776]
 mov rdx, qword ptr [r12 + 2928]
 mov rcx, qword ptr [r12 + 2936]
 mov r8d, 1
 lea r9, [r12 + 2736]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx44_3
.Lx44_2:
 mov rdi, qword ptr [r12 + 2768]
 mov rsi, qword ptr [r12 + 2776]
 mov rdx, qword ptr [r12 + 2928]
 mov rcx, qword ptr [r12 + 2936]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n18_α
 mov qword ptr [r12 + 2736], rax
 mov qword ptr [r12 + 2744], rdx
.Lx44_3:
 jmp xchain0_n37_α
 xchain0_n33_β:
 jmp xchain0_n18_α
 xchain0_n34_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 2512]
 mov qword ptr [r12 + 2496], rax
 mov rax, qword ptr [r12 + 2520]
 mov qword ptr [r12 + 2504], rax
 jmp xchain0_n38_α
xchain0_n34_β:
 jmp xchain0_n3_α
# IR_VAR
 xchain0_n35_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 jmp xchain0_n39_α
 xchain0_n35_β:
 jmp xchain0_n12_β
# IR_ASSIGN gva
 xchain0_n36_α:
 mov rax, qword ptr [r12 + 3008]
 mov rdx, qword ptr [r12 + 3016]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 2992], rax
 mov qword ptr [r12 + 3000], rdx
 jmp xchain0_n11_α
 xchain0_n36_β:
 jmp xchain0_n11_α
# IR_LIT_INTEGER
 xchain0_n37_α:
 mov qword ptr [r12 + 2960], 6
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [r12 + 2968], rax
 jmp xchain0_n40_α
 xchain0_n37_β:
 jmp xchain0_n18_α
.Lx48_0:
 .quad 0
# IR_MOVE_LABEL
 xchain0_n38_α:
 mov rax, qword ptr [r12 + 2512]
 mov qword ptr [r12 + 2464], rax
 mov rax, qword ptr [r12 + 2520]
 mov qword ptr [r12 + 2472], rax
 lea rax, [rip + xchain0_n3_α]
 mov qword ptr [r12 + 2480], rax
 jmp xchain0_n3_α
 xchain0_n38_β:
 jmp xchain0_n3_α
# IR_VAR
 xchain0_n39_α:
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 1528], rax
 jmp xchain0_n42_α
 xchain0_n39_β:
 jmp xchain0_n12_β
 xchain0_n40_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2736] -> [zr+2688]
 mov rax, qword ptr [r12 + 2736]
 mov qword ptr [r12 + 2688], rax
 mov rax, qword ptr [r12 + 2744]
 mov qword ptr [r12 + 2696], rax
# marshal arg1 = producer-box slot [zr+2960] -> [zr+2704]
 mov rax, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 2704], rax
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 2712], rax
  .section .rodata
  .Lrkfn54: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn54]
 lea rsi, [r12 + 2688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n43_α
 xchain0_n40_β:
 jmp xchain0_n18_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n41_α:
 jmp qword ptr [r12 + 2480]
 xchain0_n41_β:
 jmp xchain0_n3_α
# IR_COERCE_NUMERIC
 xchain0_n42_α:
 mov eax, dword ptr [r12 + 1488]
 cmp eax, 7
 je .Lx58_1
 cmp eax, 6
 jne .Lx58_0
 mov eax, dword ptr [r12 + 3456]
 cmp eax, 6
 jne .Lx58_0
.Lx58_1:
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 1464], rax
 jmp .Lx58_2
.Lx58_0:
 lea rdi, [r12 + 1488]
 lea rsi, [r12 + 3456]
 lea rdx, [r12 + 1456]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx58_2:
 jmp xchain0_n44_α
 xchain0_n42_β:
 jmp xchain0_n12_β
# IR_ASSIGN gva
 xchain0_n43_α:
 mov rax, qword ptr [r12 + 2672]
 mov rdx, qword ptr [r12 + 2680]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 2656], rax
 mov qword ptr [r12 + 2664], rdx
 jmp xchain0_n18_α
 xchain0_n43_β:
 jmp xchain0_n18_α
# IR_COERCE_NUMERIC
 xchain0_n44_α:
 mov eax, dword ptr [r12 + 3456]
 cmp eax, 7
 je .Lx61_1
 cmp eax, 6
 jne .Lx61_0
 mov eax, dword ptr [r12 + 1488]
 cmp eax, 6
 jne .Lx61_0
.Lx61_1:
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 1432], rax
 jmp .Lx61_2
.Lx61_0:
 lea rdi, [r12 + 3456]
 lea rsi, [r12 + 1488]
 lea rdx, [r12 + 1424]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx61_2:
 jmp xchain0_n45_α
 xchain0_n44_β:
 jmp xchain0_n12_β
 xchain0_n45_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1456]
 cmp eax, 100
 je .Lx62_0
 mov eax, dword ptr [r12 + 1424]
 cmp eax, 100
 je .Lx62_0
 mov eax, dword ptr [r12 + 1456]
 cmp eax, 6
 jne .Lx62_2
 mov eax, dword ptr [r12 + 1424]
 cmp eax, 6
 jne .Lx62_2
.Lx62_1:
 mov rax, qword ptr [r12 + 1464]
 mov rcx, qword ptr [r12 + 1432]
 add rax, rcx
 mov qword ptr [r12 + 1392], 6
 mov qword ptr [r12 + 1400], rax
 jmp xchain0_n46_α
.Lx62_0:
 mov rdi, qword ptr [r12 + 1456]
 mov rsi, qword ptr [r12 + 1464]
 mov rdx, qword ptr [r12 + 1424]
 mov rcx, qword ptr [r12 + 1432]
 mov r8d, 0
 lea r9, [r12 + 1392]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx62_3
.Lx62_2:
 mov rdi, qword ptr [r12 + 1456]
 mov rsi, qword ptr [r12 + 1464]
 mov rdx, qword ptr [r12 + 1424]
 mov rcx, qword ptr [r12 + 1432]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
.Lx62_3:
 jmp xchain0_n46_α
 xchain0_n45_β:
 jmp xchain0_n12_β
# IR_VAR
 xchain0_n46_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1552], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1560], rax
 jmp xchain0_n47_α
 xchain0_n46_β:
 jmp xchain0_n12_β
# IR_COERCE_NUMERIC
 xchain0_n47_α:
 mov eax, dword ptr [r12 + 1392]
 cmp eax, 7
 je .Lx66_1
 cmp eax, 6
 jne .Lx66_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx66_0
.Lx66_1:
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1368], rax
 jmp .Lx66_2
.Lx66_0:
 lea rdi, [r12 + 1392]
 lea rsi, [r12 + 16]
 lea rdx, [r12 + 1360]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx66_2:
 jmp xchain0_n48_α
 xchain0_n47_β:
 jmp xchain0_n12_β
# IR_COERCE_NUMERIC
 xchain0_n48_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 7
 je .Lx68_1
 cmp eax, 6
 jne .Lx68_0
 mov eax, dword ptr [r12 + 1392]
 cmp eax, 6
 jne .Lx68_0
.Lx68_1:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1336], rax
 jmp .Lx68_2
.Lx68_0:
 lea rdi, [r12 + 16]
 lea rsi, [r12 + 1392]
 lea rdx, [r12 + 1328]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx68_2:
 jmp xchain0_n49_α
 xchain0_n48_β:
 jmp xchain0_n12_β
 xchain0_n49_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1360]
 cmp eax, 100
 je .Lx69_0
 mov eax, dword ptr [r12 + 1328]
 cmp eax, 100
 je .Lx69_0
 mov eax, dword ptr [r12 + 1360]
 cmp eax, 6
 jne .Lx69_2
 mov eax, dword ptr [r12 + 1328]
 cmp eax, 6
 jne .Lx69_2
.Lx69_1:
 mov rax, qword ptr [r12 + 1368]
 mov rcx, qword ptr [r12 + 1336]
 sub rax, rcx
 mov qword ptr [r12 + 1296], 6
 mov qword ptr [r12 + 1304], rax
 jmp xchain0_n50_α
.Lx69_0:
 mov rdi, qword ptr [r12 + 1360]
 mov rsi, qword ptr [r12 + 1368]
 mov rdx, qword ptr [r12 + 1328]
 mov rcx, qword ptr [r12 + 1336]
 mov r8d, 1
 lea r9, [r12 + 1296]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx69_3
.Lx69_2:
 mov rdi, qword ptr [r12 + 1360]
 mov rsi, qword ptr [r12 + 1368]
 mov rdx, qword ptr [r12 + 1328]
 mov rcx, qword ptr [r12 + 1336]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
.Lx69_3:
 jmp xchain0_n50_α
 xchain0_n49_β:
 jmp xchain0_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain0_n50_α:
 mov rdi, qword ptr [r12 + 1264]
 mov rsi, qword ptr [r12 + 1272]
 mov rdx, qword ptr [r12 + 1296]
 mov rcx, qword ptr [r12 + 1304]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain0_n51_α
 xchain0_n50_β:
 jmp xchain0_n12_β
# IR_DEREF variable -> value
 xchain0_n51_α:
 mov rdi, qword ptr [r12 + 1584]
 mov rsi, qword ptr [r12 + 1592]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xchain0_n52_α
 xchain0_n51_β:
 jmp xchain0_n12_β
 xchain0_n52_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1008]
 cmp eax, 100
 je .Lx72_0
 mov eax, dword ptr [r12 + 1616]
 cmp eax, 100
 je .Lx72_0
 mov eax, dword ptr [r12 + 1008]
 cmp eax, 6
 jne .Lx72_2
 mov eax, dword ptr [r12 + 1616]
 cmp eax, 6
 jne .Lx72_2
.Lx72_1:
 mov rax, qword ptr [r12 + 1016]
 mov rcx, qword ptr [r12 + 1624]
 cmp rax, rcx
 jne xchain0_n12_β
 mov rcx, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 976], rcx
 mov rcx, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 984], rcx
 jmp xchain0_n53_α
.Lx72_0:
 mov rdi, qword ptr [r12 + 1008]
 mov rsi, qword ptr [r12 + 1016]
 mov rdx, qword ptr [r12 + 1616]
 mov rcx, qword ptr [r12 + 1624]
 mov r8d, 9
 lea r9, [r12 + 976]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx72_1
 cmp eax, 1
 je xchain0_n12_β
 jmp xchain0_n53_α
.Lx72_2:
 mov rdi, qword ptr [r12 + 1008]
 mov rsi, qword ptr [r12 + 1016]
 mov rdx, qword ptr [r12 + 1616]
 mov rcx, qword ptr [r12 + 1624]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n12_β
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 984], rax
 jmp xchain0_n53_α
 xchain0_n52_β:
 jmp xchain0_n12_β
# IR_VAR_REF
 xchain0_n53_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain0_n54_α
 xchain0_n53_β:
 jmp xchain0_n12_β
# IR_VAR
 xchain0_n54_α:
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 1832], rax
 jmp xchain0_n55_α
 xchain0_n54_β:
 jmp xchain0_n12_β
# IR_VAR
 xchain0_n55_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1864], rax
 jmp xchain0_n56_α
 xchain0_n55_β:
 jmp xchain0_n12_β
# IR_COERCE_NUMERIC
 xchain0_n56_α:
 mov eax, dword ptr [r12 + 3456]
 cmp eax, 7
 je .Lx80_1
 cmp eax, 6
 jne .Lx80_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx80_0
.Lx80_1:
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 1800], rax
 jmp .Lx80_2
.Lx80_0:
 lea rdi, [r12 + 3456]
 lea rsi, [r12 + 16]
 lea rdx, [r12 + 1792]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx80_2:
 jmp xchain0_n57_α
 xchain0_n56_β:
 jmp xchain0_n12_β
# IR_COERCE_NUMERIC
 xchain0_n57_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 7
 je .Lx82_1
 cmp eax, 6
 jne .Lx82_0
 mov eax, dword ptr [r12 + 3456]
 cmp eax, 6
 jne .Lx82_0
.Lx82_1:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1768], rax
 jmp .Lx82_2
.Lx82_0:
 lea rdi, [r12 + 16]
 lea rsi, [r12 + 3456]
 lea rdx, [r12 + 1760]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx82_2:
 jmp xchain0_n58_α
 xchain0_n57_β:
 jmp xchain0_n12_β
 xchain0_n58_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1792]
 cmp eax, 100
 je .Lx83_0
 mov eax, dword ptr [r12 + 1760]
 cmp eax, 100
 je .Lx83_0
 mov eax, dword ptr [r12 + 1792]
 cmp eax, 6
 jne .Lx83_2
 mov eax, dword ptr [r12 + 1760]
 cmp eax, 6
 jne .Lx83_2
.Lx83_1:
 mov rax, qword ptr [r12 + 1800]
 mov rcx, qword ptr [r12 + 1768]
 add rax, rcx
 mov qword ptr [r12 + 1728], 6
 mov qword ptr [r12 + 1736], rax
 jmp xchain0_n59_α
.Lx83_0:
 mov rdi, qword ptr [r12 + 1792]
 mov rsi, qword ptr [r12 + 1800]
 mov rdx, qword ptr [r12 + 1760]
 mov rcx, qword ptr [r12 + 1768]
 mov r8d, 0
 lea r9, [r12 + 1728]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx83_3
.Lx83_2:
 mov rdi, qword ptr [r12 + 1792]
 mov rsi, qword ptr [r12 + 1800]
 mov rdx, qword ptr [r12 + 1760]
 mov rcx, qword ptr [r12 + 1768]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
.Lx83_3:
 jmp xchain0_n59_α
 xchain0_n58_β:
 jmp xchain0_n12_β
# IR_LIT_INTEGER
 xchain0_n59_α:
 mov qword ptr [r12 + 1888], 6
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [r12 + 1896], rax
 jmp xchain0_n60_α
 xchain0_n59_β:
 jmp xchain0_n12_β
.Lx84_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain0_n60_α:
 mov eax, dword ptr [r12 + 1728]
 cmp eax, 7
 je .Lx86_1
 cmp eax, 6
 jne .Lx86_0
 mov eax, dword ptr [r12 + 1888]
 cmp eax, 6
 jne .Lx86_0
.Lx86_1:
 mov rax, qword ptr [r12 + 1728]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 1704], rax
 jmp .Lx86_2
.Lx86_0:
 lea rdi, [r12 + 1728]
 lea rsi, [r12 + 1888]
 lea rdx, [r12 + 1696]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx86_2:
 jmp xchain0_n61_α
 xchain0_n60_β:
 jmp xchain0_n12_β
 xchain0_n61_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1696]
 cmp eax, 100
 je .Lx87_0
 mov eax, dword ptr [r12 + 1696]
 cmp eax, 6
 jne .Lx87_2
.Lx87_1:
 mov rax, qword ptr [r12 + 1704]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [r12 + 1664], 6
 mov qword ptr [r12 + 1672], rax
 jmp xchain0_n62_α
.Lx87_0:
 mov rdi, qword ptr [r12 + 1696]
 mov rsi, qword ptr [r12 + 1704]
 mov rdx, qword ptr [r12 + 1888]
 mov rcx, qword ptr [r12 + 1896]
 mov r8d, 1
 lea r9, [r12 + 1664]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx87_3
.Lx87_2:
 mov rdi, qword ptr [r12 + 1696]
 mov rsi, qword ptr [r12 + 1704]
 mov rdx, qword ptr [r12 + 1888]
 mov rcx, qword ptr [r12 + 1896]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
.Lx87_3:
 jmp xchain0_n62_α
 xchain0_n61_β:
 jmp xchain0_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain0_n62_α:
 mov rdi, qword ptr [r12 + 1632]
 mov rsi, qword ptr [r12 + 1640]
 mov rdx, qword ptr [r12 + 1664]
 mov rcx, qword ptr [r12 + 1672]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain0_n63_α
 xchain0_n62_β:
 jmp xchain0_n12_β
# IR_DEREF variable -> value
 xchain0_n63_α:
 mov rdi, qword ptr [r12 + 1920]
 mov rsi, qword ptr [r12 + 1928]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 jmp xchain0_n64_α
 xchain0_n63_β:
 jmp xchain0_n12_β
 xchain0_n64_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 976]
 cmp eax, 100
 je .Lx90_0
 mov eax, dword ptr [r12 + 1952]
 cmp eax, 100
 je .Lx90_0
 mov eax, dword ptr [r12 + 976]
 cmp eax, 6
 jne .Lx90_2
 mov eax, dword ptr [r12 + 1952]
 cmp eax, 6
 jne .Lx90_2
.Lx90_1:
 mov rax, qword ptr [r12 + 984]
 mov rcx, qword ptr [r12 + 1960]
 cmp rax, rcx
 jne xchain0_n12_β
 mov rcx, qword ptr [r12 + 1952]
 mov qword ptr [r12 + 944], rcx
 mov rcx, qword ptr [r12 + 1960]
 mov qword ptr [r12 + 952], rcx
 jmp xchain0_n65_α
.Lx90_0:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1952]
 mov rcx, qword ptr [r12 + 1960]
 mov r8d, 9
 lea r9, [r12 + 944]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx90_1
 cmp eax, 1
 je xchain0_n12_β
 jmp xchain0_n65_α
.Lx90_2:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1952]
 mov rcx, qword ptr [r12 + 1960]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n12_β
 mov rax, qword ptr [r12 + 1952]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 1960]
 mov qword ptr [r12 + 952], rax
 jmp xchain0_n65_α
 xchain0_n64_β:
 jmp xchain0_n12_β
# IR_VAR_REF
 xchain0_n65_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain0_n66_α
 xchain0_n65_β:
 jmp xchain0_n12_β
# IR_VAR
 xchain0_n66_α:
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 88], rax
 jmp xchain0_n67_α
 xchain0_n66_β:
 jmp xchain0_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain0_n67_α:
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 88]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain0_n68_α
 xchain0_n67_β:
 jmp xchain0_n12_β
# IR_VAR_REF
 xchain0_n68_α:
 lea rdi, [rbx + 80]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain0_n69_α
 xchain0_n68_β:
 jmp xchain0_n12_β
# IR_VAR
 xchain0_n69_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain0_n70_α
 xchain0_n69_β:
 jmp xchain0_n12_β
# IR_VAR
 xchain0_n70_α:
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 440], rax
 jmp xchain0_n71_α
 xchain0_n70_β:
 jmp xchain0_n12_β
# IR_COERCE_NUMERIC
 xchain0_n71_α:
 mov eax, dword ptr [r12 + 400]
 cmp eax, 7
 je .Lx00001_1
 cmp eax, 6
 jne .Lx00001_0
 mov eax, dword ptr [r12 + 3456]
 cmp eax, 6
 jne .Lx00001_0
.Lx00001_1:
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 376], rax
 jmp .Lx00001_2
.Lx00001_0:
 lea rdi, [r12 + 400]
 lea rsi, [r12 + 3456]
 lea rdx, [r12 + 368]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00001_2:
 jmp xchain0_n72_α
 xchain0_n71_β:
 jmp xchain0_n12_β
# IR_COERCE_NUMERIC
 xchain0_n72_α:
 mov eax, dword ptr [r12 + 3456]
 cmp eax, 7
 je .Lx00002_1
 cmp eax, 6
 jne .Lx00002_0
 mov eax, dword ptr [r12 + 400]
 cmp eax, 6
 jne .Lx00002_0
.Lx00002_1:
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 344], rax
 jmp .Lx00002_2
.Lx00002_0:
 lea rdi, [r12 + 3456]
 lea rsi, [r12 + 400]
 lea rdx, [r12 + 336]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00002_2:
 jmp xchain0_n73_α
 xchain0_n72_β:
 jmp xchain0_n12_β
 xchain0_n73_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 368]
 cmp eax, 100
 je .Lx00003_0
 mov eax, dword ptr [r12 + 336]
 cmp eax, 100
 je .Lx00003_0
 mov eax, dword ptr [r12 + 368]
 cmp eax, 6
 jne .Lx00003_2
 mov eax, dword ptr [r12 + 336]
 cmp eax, 6
 jne .Lx00003_2
.Lx00003_1:
 mov rax, qword ptr [r12 + 376]
 mov rcx, qword ptr [r12 + 344]
 add rax, rcx
 mov qword ptr [r12 + 304], 6
 mov qword ptr [r12 + 312], rax
 jmp xchain0_n74_α
.Lx00003_0:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 mov r8d, 0
 lea r9, [r12 + 304]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00003_3
.Lx00003_2:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
.Lx00003_3:
 jmp xchain0_n74_α
 xchain0_n73_β:
 jmp xchain0_n12_β
# IR_VAR
 xchain0_n74_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n75_α
 xchain0_n74_β:
 jmp xchain0_n12_β
# IR_COERCE_NUMERIC
 xchain0_n75_α:
 mov eax, dword ptr [r12 + 304]
 cmp eax, 7
 je .Lx00004_1
 cmp eax, 6
 jne .Lx00004_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00004_0
.Lx00004_1:
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
 jmp .Lx00004_2
.Lx00004_0:
 lea rdi, [r12 + 304]
 lea rsi, [r12 + 16]
 lea rdx, [r12 + 272]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00004_2:
 jmp xchain0_n76_α
 xchain0_n75_β:
 jmp xchain0_n12_β
# IR_COERCE_NUMERIC
 xchain0_n76_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 7
 je .Lx00005_1
 cmp eax, 6
 jne .Lx00005_0
 mov eax, dword ptr [r12 + 304]
 cmp eax, 6
 jne .Lx00005_0
.Lx00005_1:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp .Lx00005_2
.Lx00005_0:
 lea rdi, [r12 + 16]
 lea rsi, [r12 + 304]
 lea rdx, [r12 + 240]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00005_2:
 jmp xchain0_n77_α
 xchain0_n76_β:
 jmp xchain0_n12_β
 xchain0_n77_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 272]
 cmp eax, 100
 je .Lx00006_0
 mov eax, dword ptr [r12 + 240]
 cmp eax, 100
 je .Lx00006_0
 mov eax, dword ptr [r12 + 272]
 cmp eax, 6
 jne .Lx00006_2
 mov eax, dword ptr [r12 + 240]
 cmp eax, 6
 jne .Lx00006_2
.Lx00006_1:
 mov rax, qword ptr [r12 + 280]
 mov rcx, qword ptr [r12 + 248]
 sub rax, rcx
 mov qword ptr [r12 + 208], 6
 mov qword ptr [r12 + 216], rax
 jmp xchain0_n78_α
.Lx00006_0:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 mov r8d, 1
 lea r9, [r12 + 208]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00006_3
.Lx00006_2:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
.Lx00006_3:
 jmp xchain0_n78_α
 xchain0_n77_β:
 jmp xchain0_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain0_n78_α:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 208]
 mov rcx, qword ptr [r12 + 216]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain0_n79_α
 xchain0_n78_β:
 jmp xchain0_n12_β
# IR_VAR_REF
 xchain0_n79_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n80_α
 xchain0_n79_β:
 jmp xchain0_n12_β
# IR_VAR
 xchain0_n80_α:
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 760], rax
 jmp xchain0_n81_α
 xchain0_n80_β:
 jmp xchain0_n12_β
# IR_VAR
 xchain0_n81_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 792], rax
 jmp xchain0_n82_α
 xchain0_n81_β:
 jmp xchain0_n12_β
# IR_COERCE_NUMERIC
 xchain0_n82_α:
 mov eax, dword ptr [r12 + 3456]
 cmp eax, 7
 je .Lx00007_1
 cmp eax, 6
 jne .Lx00007_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00007_0
.Lx00007_1:
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 728], rax
 jmp .Lx00007_2
.Lx00007_0:
 lea rdi, [r12 + 3456]
 lea rsi, [r12 + 16]
 lea rdx, [r12 + 720]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00007_2:
 jmp xchain0_n83_α
 xchain0_n82_β:
 jmp xchain0_n12_β
# IR_COERCE_NUMERIC
 xchain0_n83_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 7
 je .Lx00008_1
 cmp eax, 6
 jne .Lx00008_0
 mov eax, dword ptr [r12 + 3456]
 cmp eax, 6
 jne .Lx00008_0
.Lx00008_1:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 696], rax
 jmp .Lx00008_2
.Lx00008_0:
 lea rdi, [r12 + 16]
 lea rsi, [r12 + 3456]
 lea rdx, [r12 + 688]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00008_2:
 jmp xchain0_n84_α
 xchain0_n83_β:
 jmp xchain0_n12_β
 xchain0_n84_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 720]
 cmp eax, 100
 je .Lx00009_0
 mov eax, dword ptr [r12 + 688]
 cmp eax, 100
 je .Lx00009_0
 mov eax, dword ptr [r12 + 720]
 cmp eax, 6
 jne .Lx00009_2
 mov eax, dword ptr [r12 + 688]
 cmp eax, 6
 jne .Lx00009_2
.Lx00009_1:
 mov rax, qword ptr [r12 + 728]
 mov rcx, qword ptr [r12 + 696]
 add rax, rcx
 mov qword ptr [r12 + 656], 6
 mov qword ptr [r12 + 664], rax
 jmp xchain0_n85_α
.Lx00009_0:
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 mov r8d, 0
 lea r9, [r12 + 656]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00009_3
.Lx00009_2:
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
.Lx00009_3:
 jmp xchain0_n85_α
 xchain0_n84_β:
 jmp xchain0_n12_β
# IR_LIT_INTEGER
 xchain0_n85_α:
 mov qword ptr [r12 + 816], 6
 mov rax, qword ptr [rip + .Lx00010_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain0_n86_α
 xchain0_n85_β:
 jmp xchain0_n12_β
.Lx00010_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain0_n86_α:
 mov eax, dword ptr [r12 + 656]
 cmp eax, 7
 je .Lx00011_1
 cmp eax, 6
 jne .Lx00011_0
 mov eax, dword ptr [r12 + 816]
 cmp eax, 6
 jne .Lx00011_0
.Lx00011_1:
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rax
 jmp .Lx00011_2
.Lx00011_0:
 lea rdi, [r12 + 656]
 lea rsi, [r12 + 816]
 lea rdx, [r12 + 624]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00011_2:
 jmp xchain0_n87_α
 xchain0_n86_β:
 jmp xchain0_n12_β
 xchain0_n87_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 624]
 cmp eax, 100
 je .Lx00012_0
 mov eax, dword ptr [r12 + 624]
 cmp eax, 6
 jne .Lx00012_2
.Lx00012_1:
 mov rax, qword ptr [r12 + 632]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [r12 + 592], 6
 mov qword ptr [r12 + 600], rax
 jmp xchain0_n88_α
.Lx00012_0:
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 mov rdx, qword ptr [r12 + 816]
 mov rcx, qword ptr [r12 + 824]
 mov r8d, 1
 lea r9, [r12 + 592]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00012_3
.Lx00012_2:
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 mov rdx, qword ptr [r12 + 816]
 mov rcx, qword ptr [r12 + 824]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
.Lx00012_3:
 jmp xchain0_n88_α
 xchain0_n87_β:
 jmp xchain0_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain0_n88_α:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 592]
 mov rcx, qword ptr [r12 + 600]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain0_n89_α
 xchain0_n88_β:
 jmp xchain0_n12_β
# IR_LIT_INTEGER
 xchain0_n89_α:
 mov qword ptr [r12 + 912], 6
 mov rax, qword ptr [rip + .Lx00013_0]
 mov qword ptr [r12 + 920], rax
 jmp xchain0_n90_α
 xchain0_n89_β:
 jmp xchain0_n12_β
.Lx00013_0:
 .quad 1
# IR_REV_ASSIGN_VAR
 xchain0_n90_α:
 mov rdi, qword ptr [r12 + 848]
 mov rsi, qword ptr [r12 + 856]
 call rt_deref@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 mov rdi, qword ptr [r12 + 848]
 mov rsi, qword ptr [r12 + 856]
 mov rdx, qword ptr [r12 + 912]
 mov rcx, qword ptr [r12 + 920]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain0_n91_α
 xchain0_n90_β:
 mov rdi, qword ptr [r12 + 848]
 mov rsi, qword ptr [r12 + 856]
 mov rdx, qword ptr [r12 + 896]
 mov rcx, qword ptr [r12 + 904]
 call rt_assign_var@PLT
 jmp xchain0_n12_β
# IR_REV_ASSIGN_VAR
 xchain0_n91_α:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 call rt_deref@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 880]
 mov rcx, qword ptr [r12 + 888]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n90_β
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain0_n92_α
 xchain0_n91_β:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 552]
 call rt_assign_var@PLT
 jmp xchain0_n90_β
# IR_REV_ASSIGN_VAR
 xchain0_n92_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_deref@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n91_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain0_n93_α
 xchain0_n92_β:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 call rt_assign_var@PLT
 jmp xchain0_n91_β
 xchain0_n93_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n94_α
xchain0_n93_β:
 jmp proc_q_ω
# IR_VAR_REF
 xchain0_n94_α:
 lea rdi, [rbx + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 jmp xchain0_n95_α
 xchain0_n94_β:
 jmp xchain0_n97_α
# IR_VAR
 xchain0_n95_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 2352], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 2360], rax
 jmp xchain0_n96_α
 xchain0_n95_β:
 jmp xchain0_n97_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n96_α:
 mov rdi, qword ptr [r12 + 2320]
 mov rsi, qword ptr [r12 + 2328]
 mov rdx, qword ptr [r12 + 2352]
 mov rcx, qword ptr [r12 + 2360]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n97_α
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 jmp xchain0_n98_α
 xchain0_n96_β:
 jmp xchain0_n97_α
# IR_VAR
 xchain0_n97_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 2256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 2264], rax
 jmp xchain0_n99_α
 xchain0_n97_β:
 jmp xchain0_n00014_α
# IR_VAR
 xchain0_n98_α:
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 2432], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 2440], rax
 jmp xchain0_n00015_α
 xchain0_n98_β:
 jmp xchain0_n97_α
# IR_VAR
 xchain0_n99_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain0_n00001_α
 xchain0_n99_β:
 jmp xchain0_n00014_α
# IR_VAR
 xchain0_n00014_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 2160], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 2168], rax
 jmp xchain0_n00016_α
 xchain0_n00014_β:
 jmp xchain0_n92_β
# IR_ASSIGN_VAR
 xchain0_n00015_α:
 mov rdi, qword ptr [r12 + 2384]
 mov rsi, qword ptr [r12 + 2392]
 mov rdx, qword ptr [r12 + 2432]
 mov rcx, qword ptr [r12 + 2440]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n97_α
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 jmp xchain0_n97_α
 xchain0_n00015_β:
 jmp xchain0_n97_α
 xchain0_n00001_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00017_0
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 100
 je .Lx00017_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00017_2
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 6
 jne .Lx00017_2
.Lx00017_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 2296]
 cmp rax, rcx
 jne xchain0_n00014_α
 mov rcx, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 2224], rcx
 mov rcx, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 2232], rcx
 jmp xchain0_n00002_α
.Lx00017_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 2288]
 mov rcx, qword ptr [r12 + 2296]
 mov r8d, 9
 lea r9, [r12 + 2224]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00017_1
 cmp eax, 1
 je xchain0_n00014_α
 jmp xchain0_n00002_α
.Lx00017_2:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 2288]
 mov rcx, qword ptr [r12 + 2296]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n00014_α
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 2232], rax
 jmp xchain0_n00002_α
 xchain0_n00001_β:
 jmp xchain0_n00014_α
# IR_LIT_INTEGER
 xchain0_n00016_α:
 mov qword ptr [r12 + 2192], 6
 mov rax, qword ptr [rip + .Lx00018_0]
 mov qword ptr [r12 + 2200], rax
 jmp xchain0_n00003_α
 xchain0_n00016_β:
 jmp xchain0_n92_β
.Lx00018_0:
 .quad 1
 xchain0_n00002_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00019_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00019_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00019_2
.Lx00019_1:
 call rt_faildescr@PLT
.Lx00019_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je xchain0_n92_β
 jmp xchain0_n00020_α
 xchain0_n00002_β:
 jmp xchain0_n92_β
.Lx00019_0:
 .quad .Lx00019_0_s
.Lx00019_0_s:
 .string "show"
# IR_COERCE_NUMERIC
 xchain0_n00003_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 7
 je .Lx00021_1
 cmp eax, 6
 jne .Lx00021_0
 mov eax, dword ptr [r12 + 2192]
 cmp eax, 6
 jne .Lx00021_0
.Lx00021_1:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 2128], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 2136], rax
 jmp .Lx00021_2
.Lx00021_0:
 lea rdi, [r12 + 16]
 lea rsi, [r12 + 2192]
 lea rdx, [r12 + 2128]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00021_2:
 jmp xchain0_n00022_α
 xchain0_n00003_β:
 jmp xchain0_n92_β
# IR_MOVE_LABEL
 xchain0_n00020_α:
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 1992], rax
 lea rax, [rip + xchain0_n92_β]
 mov qword ptr [r12 + 2000], rax
 jmp xchain0_n00023_α
 xchain0_n00020_β:
 jmp xchain0_n92_β
 xchain0_n00022_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2128]
 cmp eax, 100
 je .Lx00024_0
 mov eax, dword ptr [r12 + 2128]
 cmp eax, 6
 jne .Lx00024_2
.Lx00024_1:
 mov rax, qword ptr [r12 + 2136]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 2096], 6
 mov qword ptr [r12 + 2104], rax
 jmp xchain0_n00025_α
.Lx00024_0:
 mov rdi, qword ptr [r12 + 2128]
 mov rsi, qword ptr [r12 + 2136]
 mov rdx, qword ptr [r12 + 2192]
 mov rcx, qword ptr [r12 + 2200]
 mov r8d, 0
 lea r9, [r12 + 2096]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00024_3
.Lx00024_2:
 mov rdi, qword ptr [r12 + 2128]
 mov rsi, qword ptr [r12 + 2136]
 mov rdx, qword ptr [r12 + 2192]
 mov rcx, qword ptr [r12 + 2200]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n92_β
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
.Lx00024_3:
 jmp xchain0_n00025_α
 xchain0_n00022_β:
 jmp xchain0_n92_β
 xchain0_n00023_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1976], rax
 jmp xchain0_n92_β
xchain0_n00023_β:
 jmp xchain0_n92_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n00004_α:
 jmp qword ptr [r12 + 2000]
 xchain0_n00004_β:
 jmp xchain0_n92_β
 xchain0_n00025_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 2096]
 mov rdx, qword ptr [r12 + 2104]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00026_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00026_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00026_2
.Lx00026_1:
 call rt_faildescr@PLT
.Lx00026_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 cmp eax, 99
 je xchain0_n92_β
 jmp xchain0_n00005_α
 xchain0_n00025_β:
 jmp xchain0_n92_β
.Lx00026_0:
 .quad .Lx00026_0_s
.Lx00026_0_s:
 .string "q"
# IR_MOVE_LABEL
 xchain0_n00005_α:
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 1992], rax
 lea rax, [rip + xchain0_n92_β]
 mov qword ptr [r12 + 2000], rax
 jmp xchain0_n00023_α
 xchain0_n00005_β:
 jmp xchain0_n92_β
proc_q_β:
jmp proc_q_ω
proc_q_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 3448]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 3440]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_q_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 3448]
pop r12
ret
  .globl proc_show_α
proc_show_α:
#=======================================================================================================================
    .global proc_show_α
    .global proc_show_β
    .global proc_show_γ
    .global proc_show_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 1800], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 1792], rax
 pop rsi
proc_show_α_body:
# IR_VAR_REF
 xchain00027_n0_α:
 lea rdi, [rbx + 192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain00027_n1_α
 xchain00027_n0_β:
 jmp xchain00027_n3_α
# IR_NULLTEST_VAR
 xchain00027_n1_α:
 mov eax, dword ptr [r12 + 1680]
 cmp eax, 99
 je xchain00027_n3_α
 mov rdi, qword ptr [r12 + 1680]
 mov rsi, qword ptr [r12 + 1688]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00027_n3_α
 cmp eax, 0
 jne xchain00027_n3_α
 mov rax, qword ptr [r12 + 1680]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 1688]
 mov qword ptr [r12 + 1720], rax
 jmp xchain00027_n2_α
 xchain00027_n1_β:
 jmp xchain00027_n3_α
# IR_LIT_INTEGER
 xchain00027_n2_α:
 mov qword ptr [r12 + 1760], 6
 mov rax, qword ptr [rip + .Lx00028_0]
 mov qword ptr [r12 + 1768], rax
 jmp xchain00027_n4_α
 xchain00027_n2_β:
 jmp xchain00027_n3_α
.Lx00028_0:
 .quad 1
# IR_LIT_STRING
 xchain00027_n3_α:
 mov qword ptr [r12 + 992], 1
 mov rax, qword ptr [rip + .Lx00029_0]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00027_n5_α
 xchain00027_n3_β:
 jmp xchain00027_n8_α
.Lx00029_0:
 .quad .Lx00029_0_s
.Lx00029_0_s:
 .string "solution: "
# IR_ASSIGN_VAR
 xchain00027_n4_α:
 mov rdi, qword ptr [r12 + 1712]
 mov rsi, qword ptr [r12 + 1720]
 mov rdx, qword ptr [r12 + 1760]
 mov rcx, qword ptr [r12 + 1768]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00027_n3_α
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain00027_n6_α
 xchain00027_n4_β:
 jmp xchain00027_n3_α
# IR_VAR
 xchain00027_n5_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain00027_n7_α
 xchain00027_n5_β:
 jmp xchain00027_n8_α
# IR_LIT_INTEGER
 xchain00027_n6_α:
 mov qword ptr [r12 + 1648], 6
 mov rax, qword ptr [rip + .Lx00030_0]
 mov qword ptr [r12 + 1656], rax
 jmp xchain00027_n9_α
 xchain00027_n6_β:
 jmp xchain00027_n12_α
.Lx00030_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00027_n7_α:
 mov qword ptr [r12 + 1136], 6
 mov rax, qword ptr [rip + .Lx00031_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain00027_n10_α
 xchain00027_n7_β:
 jmp xchain00027_n8_α
.Lx00031_0:
 .quad 1
# IR_LIT_STRING
 xchain00027_n8_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx00032_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain00027_n11_α
 xchain00027_n8_β:
 jmp xchain00027_n15_α
.Lx00032_0:
 .quad .Lx00032_0_s
.Lx00032_0_s:
 .string "  "
# IR_ASSIGN gva
 xchain00027_n9_α:
 mov rax, qword ptr [r12 + 1648]
 mov rdx, qword ptr [r12 + 1656]
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rdx
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain00027_n12_α
 xchain00027_n9_β:
 jmp xchain00027_n12_α
# IR_COERCE_NUMERIC
 xchain00027_n10_α:
 mov eax, dword ptr [r12 + 1104]
 cmp eax, 7
 je .Lx00033_1
 cmp eax, 6
 jne .Lx00033_0
 mov eax, dword ptr [r12 + 1136]
 cmp eax, 6
 jne .Lx00033_0
.Lx00033_1:
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1080], rax
 jmp .Lx00033_2
.Lx00033_0:
 lea rdi, [r12 + 1104]
 lea rsi, [r12 + 1136]
 lea rdx, [r12 + 1072]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00033_2:
 jmp xchain00027_n13_α
 xchain00027_n10_β:
 jmp xchain00027_n8_α
# IR_VAR
 xchain00027_n11_α:
 mov rax, qword ptr [rbx + 176]
 mov rdx, qword ptr [rbx + 184]
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00027_n14_α
 xchain00027_n11_β:
 jmp xchain00027_n15_α
# IR_LIT_STRING
 xchain00027_n12_α:
 mov qword ptr [r12 + 1536], 1
 mov rax, qword ptr [rip + .Lx00034_0]
 mov qword ptr [r12 + 1544], rax
 jmp xchain00027_n16_α
 xchain00027_n12_β:
 jmp xchain00027_n20_α
.Lx00034_0:
 .quad .Lx00034_0_s
.Lx00034_0_s:
 .string "|   "
 xchain00027_n13_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1072]
 cmp eax, 100
 je .Lx00035_0
 mov eax, dword ptr [r12 + 1072]
 cmp eax, 6
 jne .Lx00035_2
.Lx00035_1:
 mov rax, qword ptr [r12 + 1080]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 1040], 6
 mov qword ptr [r12 + 1048], rax
 jmp xchain00027_n17_α
.Lx00035_0:
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 mov rdx, qword ptr [r12 + 1136]
 mov rcx, qword ptr [r12 + 1144]
 mov r8d, 0
 lea r9, [r12 + 1040]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00035_3
.Lx00035_2:
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 mov rdx, qword ptr [r12 + 1136]
 mov rcx, qword ptr [r12 + 1144]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00027_n8_α
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
.Lx00035_3:
 jmp xchain00027_n17_α
 xchain00027_n13_β:
 jmp xchain00027_n8_α
 xchain00027_n14_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+816]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 824], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+832]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn182: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn182]
 lea rsi, [r12 + 816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain00027_n15_α
 jmp xchain00027_n15_α
 xchain00027_n14_β:
 jmp xchain00027_n15_α
# IR_VAR_REF
 xchain00027_n15_α:
 lea rdi, [rbx + 160]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00027_n18_α
 xchain00027_n15_β:
 jmp xchain00027_n26_α
# IR_VAR
 xchain00027_n16_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain00027_n19_α
 xchain00027_n16_β:
 jmp xchain00027_n20_α
# IR_ASSIGN gva
 xchain00027_n17_α:
 mov rax, qword ptr [r12 + 1040]
 mov rdx, qword ptr [r12 + 1048]
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rdx
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain00027_n21_α
 xchain00027_n17_β:
 jmp xchain00027_n8_α
# IR_LIT_INTEGER
 xchain00027_n18_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx00036_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00027_n22_α
 xchain00027_n18_β:
 jmp xchain00027_n26_α
.Lx00036_0:
 .quad 4
 xchain00027_n19_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1536] -> [zr+1488]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1496], rax
# marshal arg1 = producer-box slot [zr+1568] -> [zr+1504]
 mov rax, qword ptr [r12 + 1568]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1576]
 mov qword ptr [r12 + 1512], rax
  .section .rodata
  .Lrkfn189: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn189]
 lea rsi, [r12 + 1488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 cmp eax, 99
 je xchain00027_n20_α
 jmp xchain00027_n23_α
 xchain00027_n19_β:
 jmp xchain00027_n20_α
# IR_LIT_STRING
 xchain00027_n20_α:
 mov qword ptr [r12 + 1328], 1
 mov rax, qword ptr [rip + .Lx00037_0]
 mov qword ptr [r12 + 1336], rax
 jmp xchain00027_n24_α
 xchain00027_n20_β:
 jmp xchain00027_n3_α
.Lx00037_0:
 .quad .Lx00037_0_s
.Lx00037_0_s:
 .string "----"
 xchain00027_n21_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+992] -> [zr+944]
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 952], rax
# marshal arg1 = producer-box slot [zr+1024] -> [zr+960]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 968], rax
  .section .rodata
  .Lrkfn192: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn192]
 lea rsi, [r12 + 944]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 cmp eax, 99
 je xchain00027_n8_α
 jmp xchain00027_n8_α
 xchain00027_n21_β:
 jmp xchain00027_n8_α
# IR_VAR
 xchain00027_n22_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00027_n25_α
 xchain00027_n22_β:
 jmp xchain00027_n26_α
# IR_LIT_STRING
 xchain00027_n23_α:
 mov qword ptr [r12 + 1600], 1
 mov rax, qword ptr [rip + .Lx00038_0]
 mov qword ptr [r12 + 1608], rax
 jmp xchain00027_n27_α
 xchain00027_n23_β:
 jmp xchain00027_n20_α
.Lx00038_0:
 .quad .Lx00038_0_s
.Lx00038_0_s:
 .string "|"
# IR_VAR
 xchain00027_n24_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain00027_n28_α
 xchain00027_n24_β:
 jmp xchain00027_n3_α
# IR_LIST_BANG
 xchain00027_n25_α:
 mov qword ptr [r12 + 320], 0
.Lx00039_0:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 320]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp rax, 99
 je xchain00027_n26_α
 jmp xchain00027_n29_α
 xchain00027_n25_β:
 inc qword ptr [r12 + 320]
 jmp .Lx00039_0
 xchain00027_n26_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn199: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn199]
 lea rsi, [r12 + 32]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je proc_show_ω
 jmp proc_show_ω
 xchain00027_n26_β:
 jmp proc_show_ω
 xchain00027_n27_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1472]
 mov rsi, qword ptr [r12 + 1480]
 mov rdx, qword ptr [r12 + 1600]
 mov rcx, qword ptr [r12 + 1608]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain00027_n30_α
 xchain00027_n27_β:
 jmp xchain00027_n20_α
 xchain00027_n28_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1280]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1288], rax
# marshal arg1 = producer-box slot [zr+1360] -> [zr+1296]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1304], rax
  .section .rodata
  .Lrkfn202: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn202]
 lea rsi, [r12 + 1280]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 cmp eax, 99
 je xchain00027_n3_α
 jmp xchain00027_n31_α
 xchain00027_n28_β:
 jmp xchain00027_n3_α
# IR_LIT_INTEGER
 xchain00027_n29_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00040_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00027_n32_α
 xchain00027_n29_β:
 jmp xchain00027_n25_β
.Lx00040_0:
 .quad 1
# IR_ASSIGN gva
 xchain00027_n30_α:
 mov rax, qword ptr [r12 + 1440]
 mov rdx, qword ptr [r12 + 1448]
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rdx
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain00027_n20_α
 xchain00027_n30_β:
 jmp xchain00027_n20_α
# IR_LIT_STRING
 xchain00027_n31_α:
 mov qword ptr [r12 + 1392], 1
 mov rax, qword ptr [rip + .Lx00041_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00027_n33_α
 xchain00027_n31_β:
 jmp xchain00027_n3_α
.Lx00041_0:
 .quad .Lx00041_0_s
.Lx00041_0_s:
 .string "-"
# IR_COERCE_NUMERIC
 xchain00027_n32_α:
 mov eax, dword ptr [r12 + 304]
 cmp eax, 7
 je .Lx00042_1
 cmp eax, 6
 jne .Lx00042_0
 mov eax, dword ptr [r12 + 368]
 cmp eax, 6
 jne .Lx00042_0
.Lx00042_1:
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
 jmp .Lx00042_2
.Lx00042_0:
 lea rdi, [r12 + 304]
 lea rsi, [r12 + 368]
 lea rdx, [r12 + 272]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00042_2:
 jmp xchain00027_n34_α
 xchain00027_n32_β:
 jmp xchain00027_n26_α
 xchain00027_n33_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1264]
 mov rsi, qword ptr [r12 + 1272]
 mov rdx, qword ptr [r12 + 1392]
 mov rcx, qword ptr [r12 + 1400]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain00027_n35_α
 xchain00027_n33_β:
 jmp xchain00027_n3_α
 xchain00027_n34_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 272]
 cmp eax, 100
 je .Lx00043_0
 mov eax, dword ptr [r12 + 272]
 cmp eax, 6
 jne .Lx00043_2
.Lx00043_1:
 mov rax, qword ptr [r12 + 280]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [r12 + 240], 6
 mov qword ptr [r12 + 248], rax
 jmp xchain00027_n36_α
.Lx00043_0:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 mov r8d, 1
 lea r9, [r12 + 240]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00043_3
.Lx00043_2:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00027_n26_α
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
.Lx00043_3:
 jmp xchain00027_n36_α
 xchain00027_n34_β:
 jmp xchain00027_n26_α
# IR_ASSIGN gva
 xchain00027_n35_α:
 mov rax, qword ptr [r12 + 1232]
 mov rdx, qword ptr [r12 + 1240]
 mov qword ptr [rbx + 176], rax
 mov qword ptr [rbx + 184], rdx
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain00027_n37_α
 xchain00027_n35_β:
 jmp xchain00027_n3_α
# IR_COERCE_NUMERIC
 xchain00027_n36_α:
 mov eax, dword ptr [r12 + 240]
 cmp eax, 7
 je .Lx00044_1
 cmp eax, 6
 jne .Lx00044_0
 mov eax, dword ptr [r12 + 208]
 cmp eax, 6
 jne .Lx00044_0
.Lx00044_1:
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 184], rax
 jmp .Lx00044_2
.Lx00044_0:
 lea rdi, [r12 + 240]
 lea rsi, [r12 + 208]
 lea rdx, [r12 + 176]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00044_2:
 jmp xchain00027_n38_α
 xchain00027_n36_β:
 jmp xchain00027_n26_α
 xchain00027_n37_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1208], rax
 jmp xchain00027_n39_α
xchain00027_n37_β:
 jmp xchain00027_n3_α
 xchain00027_n38_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 176]
 cmp eax, 100
 je .Lx00045_0
 mov eax, dword ptr [r12 + 176]
 cmp eax, 6
 jne .Lx00045_2
.Lx00045_1:
 mov rax, 4
 mov rcx, qword ptr [r12 + 184]
 imul rax, rcx
 mov qword ptr [r12 + 144], 6
 mov qword ptr [r12 + 152], rax
 jmp xchain00027_n40_α
.Lx00045_0:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8d, 2
 lea r9, [r12 + 144]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00045_3
.Lx00045_2:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00027_n26_α
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
.Lx00045_3:
 jmp xchain00027_n40_α
 xchain00027_n38_β:
 jmp xchain00027_n26_α
# IR_MOVE_LABEL
 xchain00027_n39_α:
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1176], rax
 lea rax, [rip + xchain00027_n3_α]
 mov qword ptr [r12 + 1184], rax
 jmp xchain00027_n3_α
 xchain00027_n39_β:
 jmp xchain00027_n3_α
# IR_LIT_INTEGER
 xchain00027_n40_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00046_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00027_n42_α
 xchain00027_n40_β:
 jmp xchain00027_n25_β
.Lx00046_0:
 .quad 3
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00027_n41_α:
 jmp qword ptr [r12 + 1184]
 xchain00027_n41_β:
 jmp xchain00027_n3_α
# IR_COERCE_NUMERIC
 xchain00027_n42_α:
 mov eax, dword ptr [r12 + 144]
 cmp eax, 7
 je .Lx00047_1
 cmp eax, 6
 jne .Lx00047_0
 mov eax, dword ptr [r12 + 400]
 cmp eax, 6
 jne .Lx00047_0
.Lx00047_1:
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
 jmp .Lx00047_2
.Lx00047_0:
 lea rdi, [r12 + 144]
 lea rsi, [r12 + 400]
 lea rdx, [r12 + 112]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00047_2:
 jmp xchain00027_n43_α
 xchain00027_n42_β:
 jmp xchain00027_n26_α
 xchain00027_n43_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 112]
 cmp eax, 100
 je .Lx00048_0
 mov eax, dword ptr [r12 + 112]
 cmp eax, 6
 jne .Lx00048_2
.Lx00048_1:
 mov rax, qword ptr [r12 + 120]
 mov rcx, 3
 add rax, rcx
 mov qword ptr [r12 + 80], 6
 mov qword ptr [r12 + 88], rax
 jmp xchain00027_n44_α
.Lx00048_0:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 0
 lea r9, [r12 + 80]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00048_3
.Lx00048_2:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00027_n26_α
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
.Lx00048_3:
 jmp xchain00027_n44_α
 xchain00027_n43_β:
 jmp xchain00027_n26_α
# IR_SUBSCRIPT x[i] variable
 xchain00027_n44_α:
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 88]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00027_n25_β
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00027_n45_α
 xchain00027_n44_β:
 jmp xchain00027_n25_β
# IR_LIT_STRING
 xchain00027_n45_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx00049_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00027_n46_α
 xchain00027_n45_β:
 jmp xchain00027_n25_β
.Lx00049_0:
 .quad .Lx00049_0_s
.Lx00049_0_s:
 .string "Q"
# IR_REV_ASSIGN_VAR
 xchain00027_n46_α:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 call rt_deref@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00027_n25_β
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00027_n47_α
 xchain00027_n46_β:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 call rt_assign_var@PLT
 jmp xchain00027_n25_β
# IR_LIT_STRING
 xchain00027_n47_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx00050_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00027_n48_α
 xchain00027_n47_β:
 jmp xchain00027_n50_α
.Lx00050_0:
 .quad .Lx00050_0_s
.Lx00050_0_s:
 .string "  "
# IR_VAR
 xchain00027_n48_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00027_n49_α
 xchain00027_n48_β:
 jmp xchain00027_n50_α
 xchain00027_n49_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+688]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 696], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+704]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 712], rax
  .section .rodata
  .Lrkfn229: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn229]
 lea rsi, [r12 + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je xchain00027_n50_α
 jmp xchain00027_n50_α
 xchain00027_n49_β:
 jmp xchain00027_n50_α
# IR_LIT_STRING
 xchain00027_n50_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx00051_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00027_n51_α
 xchain00027_n50_β:
 jmp xchain00027_n46_β
.Lx00051_0:
 .quad .Lx00051_0_s
.Lx00051_0_s:
 .string "  "
# IR_VAR
 xchain00027_n51_α:
 mov rax, qword ptr [rbx + 176]
 mov rdx, qword ptr [rbx + 184]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00027_n52_α
 xchain00027_n51_β:
 jmp xchain00027_n46_β
 xchain00027_n52_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+560]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 568], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+576]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn233: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn233]
 lea rsi, [r12 + 560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain00027_n46_β
 jmp xchain00027_n53_α
 xchain00027_n52_β:
 jmp xchain00027_n46_β
 xchain00027_n53_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 536], rax
 jmp xchain00027_n46_β
xchain00027_n53_β:
 jmp xchain00027_n46_β
proc_show_β:
jmp proc_show_ω
proc_show_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 1800]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 1792]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_show_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 1800]
pop r12
ret
  .globl proc_options_α
proc_options_α:
#=======================================================================================================================
    .global proc_options_α
    .global proc_options_β
    .global proc_options_γ
    .global proc_options_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 3592], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 3584], rax
 pop rsi
proc_options_α_body:
# IR_VAR_REF
 xchain00052_n0_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3424], rax
 mov qword ptr [r12 + 3432], rdx
 jmp xchain00052_n1_α
 xchain00052_n0_β:
 jmp xchain00052_n3_α
# IR_NULLTEST_VAR
 xchain00052_n1_α:
 mov eax, dword ptr [r12 + 3424]
 cmp eax, 99
 je xchain00052_n3_α
 mov rdi, qword ptr [r12 + 3424]
 mov rsi, qword ptr [r12 + 3432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00052_n3_α
 cmp eax, 0
 jne xchain00052_n3_α
 mov rax, qword ptr [r12 + 3424]
 mov qword ptr [r12 + 3456], rax
 mov rax, qword ptr [r12 + 3432]
 mov qword ptr [r12 + 3464], rax
 jmp xchain00052_n2_α
 xchain00052_n1_β:
 jmp xchain00052_n3_α
# IR_LIT_CHARSET
 xchain00052_n2_α:
 mov qword ptr [r12 + 3552], 1
 mov dword ptr [r12 + 3556], -1
 mov rax, qword ptr [rip + .Lx00053_0]
 mov qword ptr [r12 + 3560], rax
 jmp xchain00052_n4_α
 xchain00052_n2_β:
 jmp xchain00052_n3_α
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
 lea rsi, [r12 + 3408]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3392], rax
 mov qword ptr [r12 + 3400], rdx
 cmp eax, 99
 je xchain00052_n6_α
 jmp xchain00052_n5_α
 xchain00052_n3_β:
 jmp xchain00052_n6_α
 xchain00052_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3552] -> [zr+3520]
 mov rax, qword ptr [r12 + 3552]
 mov qword ptr [r12 + 3520], rax
 mov rax, qword ptr [r12 + 3560]
 mov qword ptr [r12 + 3528], rax
  .section .rodata
  .Lrkfn243: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn243]
 lea rsi, [r12 + 3520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 cmp eax, 99
 je xchain00052_n3_α
 jmp xchain00052_n7_α
 xchain00052_n4_β:
 jmp xchain00052_n3_α
 xchain00052_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3392]
 mov rdx, qword ptr [r12 + 3400]
 mov qword ptr [r12 + 3600], rax
 mov qword ptr [r12 + 3608], rdx
 mov qword ptr [r12 + 3376], rax
 mov qword ptr [r12 + 3384], rdx
 jmp xchain00052_n6_α
 xchain00052_n5_β:
 jmp xchain00052_n6_α
# IR_MAKE_LIST
 xchain00052_n6_α:
 lea rdi, [r12 + 3376]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 3360], rax
 mov qword ptr [r12 + 3368], rdx
 jmp xchain00052_n8_α
 xchain00052_n6_β:
 jmp xchain00052_n9_α
# IR_ASSIGN_VAR
 xchain00052_n7_α:
 mov rdi, qword ptr [r12 + 3456]
 mov rsi, qword ptr [r12 + 3464]
 mov rdx, qword ptr [r12 + 3504]
 mov rcx, qword ptr [r12 + 3512]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00052_n3_α
 mov qword ptr [r12 + 3488], rax
 mov qword ptr [r12 + 3496], rdx
 jmp xchain00052_n3_α
 xchain00052_n7_β:
 jmp xchain00052_n3_α
 xchain00052_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3360]
 mov rdx, qword ptr [r12 + 3368]
 mov qword ptr [r12 + 3616], rax
 mov qword ptr [r12 + 3624], rdx
 mov qword ptr [r12 + 3344], rax
 mov qword ptr [r12 + 3352], rdx
 jmp xchain00052_n9_α
 xchain00052_n8_β:
 jmp xchain00052_n9_α
# IR_VAR
 xchain00052_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 328], rax
 jmp xchain00052_n10_α
 xchain00052_n9_β:
 jmp xchain00052_n11_α
 xchain00052_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn252: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn252]
 lea rsi, [r12 + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain00052_n11_α
 jmp xchain00052_n12_α
 xchain00052_n10_β:
 jmp xchain00052_n11_α
# IR_VAR
 xchain00052_n11_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00052_n13_α
 xchain00052_n11_β:
 jmp xchain00052_n14_α
 xchain00052_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 3632], rax
 mov qword ptr [r12 + 3640], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00052_n15_α
 xchain00052_n12_β:
 jmp xchain00052_n11_α
# IR_VAR
 xchain00052_n13_α:
 mov rax, qword ptr [r12 + 3616]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 3624]
 mov qword ptr [r12 + 232], rax
 jmp xchain00052_n16_α
 xchain00052_n13_β:
 jmp xchain00052_n14_α
# IR_VAR
 xchain00052_n14_α:
 mov rax, qword ptr [r12 + 3600]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 3608]
 mov qword ptr [r12 + 56], rax
 jmp xchain00052_n17_α
 xchain00052_n14_β:
 jmp proc_options_ω
# IR_VAR
 xchain00052_n15_α:
 mov rax, qword ptr [r12 + 3632]
 mov qword ptr [r12 + 3312], rax
 mov rax, qword ptr [r12 + 3640]
 mov qword ptr [r12 + 3320], rax
 jmp xchain00052_n18_α
 xchain00052_n15_β:
 jmp xchain00052_n9_α
 xchain00052_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn263: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn263]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain00052_n14_α
 jmp xchain00052_n19_α
 xchain00052_n16_β:
 jmp xchain00052_n14_α
# IR_RETURN
 xchain00052_n17_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_options_γ
# IR_GEN_SCAN
 xchain00052_n18_α:
 mov rdi, qword ptr [r12 + 3312]
 mov rsi, qword ptr [r12 + 3320]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00052_n20_α
 xchain00052_n18_β:
 jmp xchain00052_n9_α
 xchain00052_n19_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+96]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 104], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+112]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn268: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn268]
 lea rsi, [r12 + 96]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain00052_n14_α
 jmp xchain00052_n11_α
 xchain00052_n19_β:
 jmp xchain00052_n14_α
# IR_LIT_STRING
 xchain00052_n20_α:
 mov qword ptr [r12 + 3280], 1
 mov rax, qword ptr [rip + .Lx00054_0]
 mov qword ptr [r12 + 3288], rax
 jmp xchain00052_n21_α
 xchain00052_n20_β:
 jmp xchain00052_n23_α
.Lx00054_0:
 .quad .Lx00054_0_s
.Lx00054_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00052_n21_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00052_n23_α
 mov rdi, qword ptr [rip + .Lx00055_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00052_n23_α
 mov qword ptr [r12 + 3248], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 3256], rax
 jmp xchain00052_n22_α
 xchain00052_n21_β:
 jmp xchain00052_n23_α
.Lx00055_0:
 .quad .Lx00055_0_s
.Lx00055_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00052_n22_α:
 mov rax, qword ptr [r12 + 3256]
 cmp rax, 1
 jge .Lx00056_0
 add rax, r15
 add rax, 1
.Lx00056_0:
 cmp rax, 1
 jl xchain00052_n23_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00052_n23_α
 mov qword ptr [r12 + 3232], r14
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
 mov qword ptr [r12 + 3216], rax
 mov qword ptr [r12 + 3224], rdx
 jmp xchain00052_n24_α
 xchain00052_n22_β:
 mov r14, qword ptr [r12 + 3232]
 jmp xchain00052_n23_α
# IR_VAR
 xchain00052_n23_α:
 mov rax, qword ptr [r12 + 3616]
 mov qword ptr [r12 + 3040], rax
 mov rax, qword ptr [r12 + 3624]
 mov qword ptr [r12 + 3048], rax
 jmp xchain00052_n25_α
 xchain00052_n23_β:
 jmp xchain00052_n26_α
# IR_LIT_INTEGER
 xchain00052_n24_α:
 mov qword ptr [r12 + 3184], 6
 mov rax, qword ptr [rip + .Lx00057_0]
 mov qword ptr [r12 + 3192], rax
 jmp xchain00052_n27_α
 xchain00052_n24_β:
 jmp xchain00052_n29_α
.Lx00057_0:
 .quad 0
# IR_VAR
 xchain00052_n25_α:
 mov rax, qword ptr [r12 + 3632]
 mov qword ptr [r12 + 3072], rax
 mov rax, qword ptr [r12 + 3640]
 mov qword ptr [r12 + 3080], rax
 jmp xchain00052_n28_α
 xchain00052_n25_β:
 jmp xchain00052_n26_α
# IR_GEN_SCAN
 xchain00052_n26_α:
 lea rdi, [r12 + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 368]
 mov r14, qword ptr [r12 + 376]
 mov r15, qword ptr [r12 + 384]
 jmp xchain00052_n9_α
 xchain00052_n26_β:
 jmp xchain00052_n9_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00052_n27_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00058_0
 add rax, r15
 add rax, 1
.Lx00058_0:
 cmp rax, 1
 jl xchain00052_n29_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00052_n29_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00052_n29_α
 mov qword ptr [r12 + 3152], 6
 mov qword ptr [r12 + 3160], rax
 jmp xchain00052_n23_α
 xchain00052_n27_β:
 jmp xchain00052_n29_α
 xchain00052_n28_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3040] -> [zr+2992]
 mov rax, qword ptr [r12 + 3040]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 3048]
 mov qword ptr [r12 + 3000], rax
# marshal arg1 = producer-box slot [zr+3072] -> [zr+3008]
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 3008], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 3016], rax
  .section .rodata
  .Lrkfn284: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn284]
 lea rsi, [r12 + 2992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 cmp eax, 99
 je xchain00052_n26_α
 jmp xchain00052_n30_α
 xchain00052_n28_β:
 jmp xchain00052_n26_α
# KEYWORD_null
 xchain00052_n29_α:
 mov qword ptr [r12 + 3120], 0
 mov qword ptr [r12 + 3128], 0
 jmp xchain00052_n31_α
 xchain00052_n29_β:
 jmp xchain00052_n23_α
# IR_MOVE_LABEL
 xchain00052_n30_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 440], rax
 lea rax, [rip + xchain00052_n26_α]
 mov qword ptr [r12 + 448], rax
 jmp xchain00052_n32_α
 xchain00052_n30_β:
 jmp xchain00052_n26_α
 xchain00052_n31_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 3120]
 mov qword ptr [r12 + 3104], rax
 mov rax, qword ptr [r12 + 3128]
 mov qword ptr [r12 + 3112], rax
 jmp xchain00052_n34_α
xchain00052_n31_β:
 jmp xchain00052_n23_α
# IR_GEN_SCAN
 xchain00052_n32_α:
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
 lea rdi, [r12 + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 368]
 mov r14, qword ptr [r12 + 376]
 mov r15, qword ptr [r12 + 384]
 jmp xchain00052_n9_α
 xchain00052_n32_β:
 jmp xchain00052_n9_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00052_n33_α:
 jmp qword ptr [r12 + 448]
 xchain00052_n33_β:
 jmp xchain00052_n26_α
# IR_LIT_STRING
 xchain00052_n34_α:
 mov qword ptr [r12 + 2944], 1
 mov rax, qword ptr [rip + .Lx00059_0]
 mov qword ptr [r12 + 2952], rax
 jmp xchain00052_n35_α
 xchain00052_n34_β:
 jmp xchain00052_n37_α
.Lx00059_0:
 .quad .Lx00059_0_s
.Lx00059_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00052_n35_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00052_n37_α
 mov rdi, qword ptr [rip + .Lx00060_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00052_n37_α
 mov qword ptr [r12 + 2912], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 2920], rax
 jmp xchain00052_n36_α
 xchain00052_n35_β:
 jmp xchain00052_n37_α
.Lx00060_0:
 .quad .Lx00060_0_s
.Lx00060_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00052_n36_α:
 mov rax, qword ptr [r12 + 2920]
 cmp rax, 1
 jge .Lx00061_0
 add rax, r15
 add rax, 1
.Lx00061_0:
 cmp rax, 1
 jl xchain00052_n37_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00052_n37_α
 mov qword ptr [r12 + 2896], r14
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
 mov qword ptr [r12 + 2880], rax
 mov qword ptr [r12 + 2888], rdx
 jmp xchain00052_n38_α
 xchain00052_n36_β:
 mov r14, qword ptr [r12 + 2896]
 jmp xchain00052_n37_α
# IR_LIT_INTEGER
 xchain00052_n37_α:
 mov qword ptr [r12 + 528], 6
 mov rax, qword ptr [rip + .Lx00062_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain00052_n39_α
 xchain00052_n37_β:
 jmp xchain00052_n45_α
.Lx00062_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00052_n38_α:
 mov qword ptr [r12 + 2848], 6
 mov rax, qword ptr [rip + .Lx00063_0]
 mov qword ptr [r12 + 2856], rax
 jmp xchain00052_n40_α
 xchain00052_n38_β:
 jmp xchain00052_n37_α
.Lx00063_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00052_n39_α:
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00052_n45_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00052_n45_α
 mov qword ptr [r12 + 512], r14
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
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00052_n41_α
 xchain00052_n39_β:
 mov r14, qword ptr [r12 + 512]
 jmp xchain00052_n45_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00052_n40_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00064_0
 add rax, r15
 add rax, 1
.Lx00064_0:
 cmp rax, 1
 jl xchain00052_n37_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00052_n37_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00052_n37_α
 mov qword ptr [r12 + 2816], 6
 mov qword ptr [r12 + 2824], rax
 jmp xchain00052_n43_α
 xchain00052_n40_β:
 jmp xchain00052_n37_α
 xchain00052_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 3648], rax
 mov qword ptr [r12 + 3656], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00052_n44_α
 xchain00052_n41_β:
 jmp xchain00052_n45_α
 xchain00052_n42_α:
 jmp xchain00052_n45_α
xchain00052_n42_β:
 jmp xchain00052_n45_α
 xchain00052_n43_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 2816]
 mov qword ptr [r12 + 2800], rax
 mov rax, qword ptr [r12 + 2824]
 mov qword ptr [r12 + 2808], rax
 jmp xchain00052_n11_α
xchain00052_n43_β:
 jmp xchain00052_n37_α
# IR_VAR
 xchain00052_n44_α:
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 2672], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 2680], rax
 jmp xchain00052_n47_α
 xchain00052_n44_β:
 jmp xchain00052_n48_α
 xchain00052_n45_α:
 jmp xchain00052_n49_α
xchain00052_n45_β:
 jmp xchain00052_n26_α
 xchain00052_n46_α:
 jmp xchain00052_n11_α
xchain00052_n46_β:
 jmp xchain00052_n11_α
# IR_VAR
 xchain00052_n47_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 2704], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 2712], rax
 jmp xchain00052_n50_α
 xchain00052_n47_β:
 jmp xchain00052_n48_α
# IR_LIT_STRING
 xchain00052_n48_α:
 mov qword ptr [r12 + 2464], 1
 mov rax, qword ptr [rip + .Lx00065_0]
 mov qword ptr [r12 + 2472], rax
 jmp xchain00052_n51_α
 xchain00052_n48_β:
 jmp xchain00052_n37_α
.Lx00065_0:
 .quad .Lx00065_0_s
.Lx00065_0_s:
 .string "Unrecognized option: -"
# IR_MOVE_LABEL
 xchain00052_n49_α:
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
 lea rax, [rip + xchain00052_n52_α]
 mov qword ptr [r12 + 448], rax
 jmp xchain00052_n32_α
 xchain00052_n49_β:
 jmp xchain00052_n26_α
 xchain00052_n50_α:
# BOX CALL_GEN find(...) -> rt_call_arr_gen by-name [four-port generator; alpha zeroes resume cell, beta re-pumps invoke with persisted cell]
# marshal arg0 = producer-box slot [zr+2672] -> [zr+2624]
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 2624], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 2632], rax
# marshal arg1 = producer-box slot [zr+2704] -> [zr+2640]
 mov rax, qword ptr [r12 + 2704]
 mov qword ptr [r12 + 2640], rax
 mov rax, qword ptr [r12 + 2712]
 mov qword ptr [r12 + 2648], rax
 mov qword ptr [r12 + 2656], 0
.Lx00066_60:
  .section .rodata
  .Lbynamegenfn217: .string "find"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn217]
 lea rsi, [r12 + 2624]
 mov edx, 2
 lea rcx, [r12 + 2656]
 call rt_call_arr_gen@PLT
 mov qword ptr [r12 + 2608], rax
 mov qword ptr [r12 + 2616], rdx
 cmp eax, 99
 je xchain00052_n48_α
 jmp xchain00052_n53_α
 xchain00052_n50_β:
 jmp .Lx00066_60
# IR_VAR
 xchain00052_n51_α:
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 2496], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 2504], rax
 jmp xchain00052_n54_α
 xchain00052_n51_β:
 jmp xchain00052_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00052_n52_α:
 jmp qword ptr [r12 + 576]
 xchain00052_n52_β:
 jmp xchain00052_n37_α
# IR_LIT_INTEGER
 xchain00052_n53_α:
 mov qword ptr [r12 + 2736], 6
 mov rax, qword ptr [rip + .Lx00067_0]
 mov qword ptr [r12 + 2744], rax
 jmp xchain00052_n55_α
 xchain00052_n53_β:
 jmp xchain00052_n50_β
.Lx00067_0:
 .quad 1
 xchain00052_n54_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2464] -> [zr+2416]
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 2416], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 2424], rax
# marshal arg1 = producer-box slot [zr+2496] -> [zr+2432]
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 2432], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 2440], rax
  .section .rodata
  .Lrkfn323: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn323]
 lea rsi, [r12 + 2416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je xchain00052_n37_α
 jmp xchain00052_n56_α
 xchain00052_n54_β:
 jmp xchain00052_n37_α
# IR_COERCE_NUMERIC
 xchain00052_n55_α:
 mov eax, dword ptr [r12 + 2608]
 cmp eax, 7
 je .Lx00068_1
 cmp eax, 6
 jne .Lx00068_0
 mov eax, dword ptr [r12 + 2736]
 cmp eax, 6
 jne .Lx00068_0
.Lx00068_1:
 mov rax, qword ptr [r12 + 2608]
 mov qword ptr [r12 + 2576], rax
 mov rax, qword ptr [r12 + 2616]
 mov qword ptr [r12 + 2584], rax
 jmp .Lx00068_2
.Lx00068_0:
 lea rdi, [r12 + 2608]
 lea rsi, [r12 + 2736]
 lea rdx, [r12 + 2576]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00068_2:
 jmp xchain00052_n57_α
 xchain00052_n55_β:
 jmp xchain00052_n48_α
# IR_MOVE_LABEL
 xchain00052_n56_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 568], rax
 lea rax, [rip + xchain00052_n37_α]
 mov qword ptr [r12 + 576], rax
 jmp xchain00052_n37_α
 xchain00052_n56_β:
 jmp xchain00052_n37_α
 xchain00052_n57_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2576]
 cmp eax, 100
 je .Lx00069_0
 mov eax, dword ptr [r12 + 2576]
 cmp eax, 6
 jne .Lx00069_2
.Lx00069_1:
 mov rax, qword ptr [r12 + 2584]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 2544], 6
 mov qword ptr [r12 + 2552], rax
 jmp xchain00052_n58_α
.Lx00069_0:
 mov rdi, qword ptr [r12 + 2576]
 mov rsi, qword ptr [r12 + 2584]
 mov rdx, qword ptr [r12 + 2736]
 mov rcx, qword ptr [r12 + 2744]
 mov r8d, 0
 lea r9, [r12 + 2544]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00069_3
.Lx00069_2:
 mov rdi, qword ptr [r12 + 2576]
 mov rsi, qword ptr [r12 + 2584]
 mov rdx, qword ptr [r12 + 2736]
 mov rcx, qword ptr [r12 + 2744]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00052_n48_α
 mov qword ptr [r12 + 2544], rax
 mov qword ptr [r12 + 2552], rdx
.Lx00069_3:
 jmp xchain00052_n58_α
 xchain00052_n57_β:
 jmp xchain00052_n48_α
 xchain00052_n58_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2544]
 mov rdx, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 3712], rax
 mov qword ptr [r12 + 3720], rdx
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 jmp xchain00052_n59_α
 xchain00052_n58_β:
 jmp xchain00052_n48_α
# IR_VAR_REF
 xchain00052_n59_α:
 lea rdi, [r12 + 3600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00052_n60_α
 xchain00052_n59_β:
 jmp xchain00052_n37_α
# IR_VAR
 xchain00052_n60_α:
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 632], rax
 jmp xchain00052_n61_α
 xchain00052_n60_β:
 jmp xchain00052_n37_α
# IR_SUBSCRIPT x[i] variable
 xchain00052_n61_α:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 624]
 mov rcx, qword ptr [r12 + 632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00052_n37_α
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain00052_n62_α
 xchain00052_n61_β:
 jmp xchain00052_n37_α
# IR_LIT_CHARSET
 xchain00052_n62_α:
 mov qword ptr [r12 + 2240], 1
 mov dword ptr [r12 + 2244], -1
 mov rax, qword ptr [rip + .Lx00070_0]
 mov qword ptr [r12 + 2248], rax
 jmp xchain00052_n63_α
 xchain00052_n62_β:
 jmp xchain00052_n66_α
.Lx00070_0:
 .quad .Lx00070_0_s
.Lx00070_0_s:
 .string "+.:"
# IR_VAR_REF
 xchain00052_n63_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain00052_n64_α
 xchain00052_n63_β:
 jmp xchain00052_n66_α
# IR_VAR
 xchain00052_n64_α:
 mov rax, qword ptr [r12 + 3712]
 mov qword ptr [r12 + 2320], rax
 mov rax, qword ptr [r12 + 3720]
 mov qword ptr [r12 + 2328], rax
 jmp xchain00052_n65_α
 xchain00052_n64_β:
 jmp xchain00052_n66_α
# IR_SUBSCRIPT x[i] variable
 xchain00052_n65_α:
 mov rdi, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 mov rdx, qword ptr [r12 + 2320]
 mov rcx, qword ptr [r12 + 2328]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00052_n66_α
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 jmp xchain00052_n67_α
 xchain00052_n65_β:
 jmp xchain00052_n66_α
# IR_LIT_INTEGER
 xchain00052_n66_α:
 mov qword ptr [r12 + 2144], 6
 mov rax, qword ptr [rip + .Lx00071_0]
 mov qword ptr [r12 + 2152], rax
 jmp xchain00052_n68_α
 xchain00052_n66_β:
 jmp xchain00052_n37_α
.Lx00071_0:
 .quad 1
# IR_DEREF variable -> value
 xchain00052_n67_α:
 mov rdi, qword ptr [r12 + 2352]
 mov rsi, qword ptr [r12 + 2360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00052_n66_α
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 jmp xchain00052_n69_α
 xchain00052_n67_β:
 jmp xchain00052_n66_α
# IR_MOVE_LABEL
 xchain00052_n68_α:
 mov rax, qword ptr [r12 + 2144]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 2152]
 mov qword ptr [r12 + 712], rax
 lea rax, [rip + xchain00052_n37_α]
 mov qword ptr [r12 + 720], rax
 jmp xchain00052_n70_α
 xchain00052_n68_β:
 jmp xchain00052_n37_α
 xchain00052_n69_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2384]
 mov rdx, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 3680], rax
 mov qword ptr [r12 + 3688], rdx
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 jmp xchain00052_n72_α
 xchain00052_n69_β:
 jmp xchain00052_n66_α
# IR_ASSIGN_VAR
 xchain00052_n70_α:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 704]
 mov rcx, qword ptr [r12 + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00052_n37_α
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00052_n73_α
 xchain00052_n70_β:
 jmp xchain00052_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00052_n71_α:
 jmp qword ptr [r12 + 720]
 xchain00052_n71_β:
 jmp xchain00052_n37_α
 xchain00052_n72_α:
# BOX CALL any(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+2240] -> [zr+2192]
 mov rax, qword ptr [r12 + 2240]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2248]
 mov qword ptr [r12 + 2200], rax
# marshal arg1 = producer-box slot [zr+2272] -> [zr+2208]
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 2208], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2216], rax
  .section .rodata
  .Lbynamefn239: .string "any"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn239]
 lea rsi, [r12 + 2192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 cmp eax, 99
 je xchain00052_n66_α
 jmp xchain00052_n74_α
 xchain00052_n72_β:
 jmp xchain00052_n66_α
# IR_MOVE_LABEL
 xchain00052_n73_α:
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 568], rax
 lea rax, [rip + xchain00052_n71_α]
 mov qword ptr [r12 + 576], rax
 jmp xchain00052_n37_α
 xchain00052_n73_β:
 jmp xchain00052_n37_α
# IR_LIT_STRING
 xchain00052_n74_α:
 mov qword ptr [r12 + 2048], 1
 mov rax, qword ptr [rip + .Lx00072_0]
 mov qword ptr [r12 + 2056], rax
 jmp xchain00052_n75_α
 xchain00052_n74_β:
 jmp xchain00052_n78_α
.Lx00072_0:
 .quad .Lx00072_0_s
.Lx00072_0_s:
 .string ""
# IR_LIT_INTEGER
 xchain00052_n75_α:
 mov qword ptr [r12 + 2112], 6
 mov rax, qword ptr [rip + .Lx00073_0]
 mov qword ptr [r12 + 2120], rax
 jmp xchain00052_n76_α
 xchain00052_n75_β:
 jmp xchain00052_n78_α
.Lx00073_0:
 .quad 0
# IR_SCAN_TAB
 xchain00052_n76_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00074_0
 add rax, r15
 add rax, 1
.Lx00074_0:
 cmp rax, 1
 jl xchain00052_n78_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00052_n78_α
 mov qword ptr [r12 + 2096], r14
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
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 jmp xchain00052_n77_α
 xchain00052_n76_β:
 mov r14, qword ptr [r12 + 2096]
 jmp xchain00052_n78_α
 xchain00052_n77_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 2048]
 mov rsi, qword ptr [r12 + 2056]
 mov rdx, qword ptr [r12 + 2080]
 mov rcx, qword ptr [r12 + 2088]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00052_n78_α
 mov rdi, qword ptr [r12 + 2080]
 mov rsi, qword ptr [r12 + 2088]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 jmp xchain00052_n79_α
 xchain00052_n77_β:
 jmp xchain00052_n78_α
# IR_VAR
 xchain00052_n78_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1992], rax
 jmp xchain00052_n80_α
 xchain00052_n78_β:
 jmp xchain00052_n81_α
# IR_MOVE_LABEL
 xchain00052_n79_α:
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 1784], rax
 lea rax, [rip + xchain00052_n78_α]
 mov qword ptr [r12 + 1792], rax
 jmp xchain00052_n82_α
 xchain00052_n79_β:
 jmp xchain00052_n86_α
 xchain00052_n80_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1960], rax
  .section .rodata
  .Lrkfn362: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn362]
 lea rsi, [r12 + 1952]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 cmp eax, 99
 je xchain00052_n81_α
 jmp xchain00052_n84_α
 xchain00052_n80_β:
 jmp xchain00052_n81_α
# IR_LIT_STRING
 xchain00052_n81_α:
 mov qword ptr [r12 + 1872], 1
 mov rax, qword ptr [rip + .Lx00075_0]
 mov qword ptr [r12 + 1880], rax
 jmp xchain00052_n85_α
 xchain00052_n81_β:
 jmp xchain00052_n86_α
.Lx00075_0:
 .quad .Lx00075_0_s
.Lx00075_0_s:
 .string "No parameter following -"
 xchain00052_n82_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1776]
 mov rdx, qword ptr [r12 + 1784]
 mov qword ptr [r12 + 3696], rax
 mov qword ptr [r12 + 3704], rdx
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain00052_n86_α
 xchain00052_n82_β:
 jmp xchain00052_n86_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00052_n83_α:
 jmp qword ptr [r12 + 1792]
 xchain00052_n83_β:
 jmp xchain00052_n86_α
# IR_MOVE_LABEL
 xchain00052_n84_α:
 mov rax, qword ptr [r12 + 1936]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 1784], rax
 lea rax, [rip + xchain00052_n81_α]
 mov qword ptr [r12 + 1792], rax
 jmp xchain00052_n82_α
 xchain00052_n84_β:
 jmp xchain00052_n86_α
# IR_VAR
 xchain00052_n85_α:
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 1904], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 1912], rax
 jmp xchain00052_n87_α
 xchain00052_n85_β:
 jmp xchain00052_n86_α
# IR_VAR
 xchain00052_n86_α:
 mov rax, qword ptr [r12 + 3680]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 3688]
 mov qword ptr [r12 + 792], rax
 jmp xchain00052_n88_α
 xchain00052_n86_β:
 jmp xchain00052_n37_α
 xchain00052_n87_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1872] -> [zr+1824]
 mov rax, qword ptr [r12 + 1872]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 1832], rax
# marshal arg1 = producer-box slot [zr+1904] -> [zr+1840]
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1848], rax
  .section .rodata
  .Lrkfn374: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn374]
 lea rsi, [r12 + 1824]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 cmp eax, 99
 je xchain00052_n86_α
 jmp xchain00052_n89_α
 xchain00052_n87_β:
 jmp xchain00052_n86_α
# IR_LIT_STRING
 xchain00052_n88_α:
 mov qword ptr [r12 + 1616], 1
 mov rax, qword ptr [rip + .Lx00076_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain00052_n90_α
 xchain00052_n88_β:
 jmp xchain00052_n37_α
.Lx00076_0:
 .quad .Lx00076_0_s
.Lx00076_0_s:
 .string ":"
# IR_MOVE_LABEL
 xchain00052_n89_α:
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1784], rax
 lea rax, [rip + xchain00052_n86_α]
 mov qword ptr [r12 + 1792], rax
 jmp xchain00052_n82_α
 xchain00052_n89_β:
 jmp xchain00052_n86_α
 xchain00052_n90_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+1712]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 1720], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1728]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1736], rax
  .section .rodata
  .Lrkfn379: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn379]
 lea rsi, [r12 + 1712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 cmp eax, 99
 je xchain00052_n92_α
 jmp xchain00052_n91_α
 xchain00052_n90_β:
 jmp xchain00052_n92_α
# IR_VAR
 xchain00052_n91_α:
 mov rax, qword ptr [r12 + 3696]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 3704]
 mov qword ptr [r12 + 1656], rax
 jmp xchain00052_n93_α
 xchain00052_n91_β:
 jmp xchain00052_n37_α
# IR_LIT_STRING
 xchain00052_n92_α:
 mov qword ptr [r12 + 1216], 1
 mov rax, qword ptr [rip + .Lx00077_0]
 mov qword ptr [r12 + 1224], rax
 jmp xchain00052_n94_α
 xchain00052_n92_β:
 jmp xchain00052_n37_α
.Lx00077_0:
 .quad .Lx00077_0_s
.Lx00077_0_s:
 .string "+"
 xchain00052_n93_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1648]
 mov rdx, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 3664], rax
 mov qword ptr [r12 + 3672], rdx
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain00052_n95_α
 xchain00052_n93_β:
 jmp xchain00052_n37_α
 xchain00052_n94_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+1568]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 1576], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+1584]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1592], rax
  .section .rodata
  .Lrkfn385: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn385]
 lea rsi, [r12 + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 cmp eax, 99
 je xchain00052_n97_α
 jmp xchain00052_n96_α
 xchain00052_n94_β:
 jmp xchain00052_n97_α
# IR_VAR
 xchain00052_n95_α:
 mov rax, qword ptr [r12 + 3664]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 3672]
 mov qword ptr [r12 + 760], rax
 jmp xchain00052_n98_α
 xchain00052_n95_β:
 jmp xchain00052_n37_α
# IR_VAR
 xchain00052_n96_α:
 mov rax, qword ptr [r12 + 3696]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 3704]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00052_n99_α
 xchain00052_n96_β:
 jmp xchain00052_n00014_α
# IR_LIT_STRING
 xchain00052_n97_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx00078_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain00052_n00015_α
 xchain00052_n97_β:
 jmp xchain00052_n37_α
.Lx00078_0:
 .quad .Lx00078_0_s
.Lx00078_0_s:
 .string "."
 xchain00052_n98_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 744], rax
 jmp xchain00052_n00001_α
xchain00052_n98_β:
 jmp xchain00052_n37_α
 xchain00052_n99_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1472]
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1480], rax
  .section .rodata
  .Lrkfn393: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn393]
 lea rsi, [r12 + 1472]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 cmp eax, 99
 je xchain00052_n00014_α
 jmp xchain00052_n00016_α
 xchain00052_n99_β:
 jmp xchain00052_n00014_α
# IR_LIT_STRING
 xchain00052_n00014_α:
 mov qword ptr [r12 + 1360], 1
 mov rax, qword ptr [rip + .Lx00079_0]
 mov qword ptr [r12 + 1368], rax
 jmp xchain00052_n00002_α
 xchain00052_n00014_β:
 jmp xchain00052_n37_α
.Lx00079_0:
 .quad .Lx00079_0_s
.Lx00079_0_s:
 .string "-"
 xchain00052_n00015_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+1168]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 1176], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+1184]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lrkfn396: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn396]
 lea rsi, [r12 + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain00052_n37_α
 jmp xchain00052_n00003_α
 xchain00052_n00015_β:
 jmp xchain00052_n37_α
# IR_MOVE_LABEL
 xchain00052_n00001_α:
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 712], rax
 lea rax, [rip + xchain00052_n37_α]
 mov qword ptr [r12 + 720], rax
 jmp xchain00052_n70_α
 xchain00052_n00001_β:
 jmp xchain00052_n37_α
# IR_MOVE_LABEL
 xchain00052_n00016_α:
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1256], rax
 lea rax, [rip + xchain00052_n00014_α]
 mov qword ptr [r12 + 1264], rax
 jmp xchain00052_n00025_α
 xchain00052_n00016_β:
 jmp xchain00052_n37_α
# IR_VAR
 xchain00052_n00002_α:
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00052_n00022_α
 xchain00052_n00002_β:
 jmp xchain00052_n37_α
# IR_VAR
 xchain00052_n00003_α:
 mov rax, qword ptr [r12 + 3696]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 3704]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00052_n00023_α
 xchain00052_n00003_β:
 jmp xchain00052_n00004_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00052_n00020_α:
 jmp qword ptr [r12 + 1264]
 xchain00052_n00020_β:
 jmp xchain00052_n37_α
# IR_LIT_STRING
 xchain00052_n00022_α:
 mov qword ptr [r12 + 1424], 1
 mov rax, qword ptr [rip + .Lx00080_0]
 mov qword ptr [r12 + 1432], rax
 jmp xchain00052_n00005_α
 xchain00052_n00022_β:
 jmp xchain00052_n37_α
.Lx00080_0:
 .quad .Lx00080_0_s
.Lx00080_0_s:
 .string " needs numeric parameter"
 xchain00052_n00023_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1072]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn409: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn409]
 lea rsi, [r12 + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00052_n00004_α
 jmp xchain00052_n00006_α
 xchain00052_n00023_β:
 jmp xchain00052_n00004_α
# IR_LIT_STRING
 xchain00052_n00004_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx00081_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain00052_n00082_α
 xchain00052_n00004_β:
 jmp xchain00052_n37_α
.Lx00081_0:
 .quad .Lx00081_0_s
.Lx00081_0_s:
 .string "-"
 xchain00052_n00025_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1248]
 mov rdx, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 3664], rax
 mov qword ptr [r12 + 3672], rdx
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain00052_n95_α
 xchain00052_n00025_β:
 jmp xchain00052_n37_α
 xchain00052_n00005_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1296]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1304], rax
# marshal arg1 = producer-box slot [zr+1392] -> [zr+1312]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1320], rax
# marshal arg2 = producer-box slot [zr+1424] -> [zr+1328]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1336], rax
  .section .rodata
  .Lrkfn413: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn413]
 lea rsi, [r12 + 1296]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xchain00052_n37_α
 jmp xchain00052_n00083_α
 xchain00052_n00005_β:
 jmp xchain00052_n37_α
# IR_MOVE_LABEL
 xchain00052_n00006_α:
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00052_n00004_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00052_n00084_α
 xchain00052_n00006_β:
 jmp xchain00052_n37_α
# IR_VAR
 xchain00052_n00082_α:
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00052_n00085_α
 xchain00052_n00082_β:
 jmp xchain00052_n37_α
# IR_MOVE_LABEL
 xchain00052_n00083_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1256], rax
 lea rax, [rip + xchain00052_n37_α]
 mov qword ptr [r12 + 1264], rax
 jmp xchain00052_n00025_α
 xchain00052_n00083_β:
 jmp xchain00052_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00052_n00086_α:
 jmp qword ptr [r12 + 864]
 xchain00052_n00086_β:
 jmp xchain00052_n37_α
# IR_LIT_STRING
 xchain00052_n00085_α:
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx00087_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00052_n00088_α
 xchain00052_n00085_β:
 jmp xchain00052_n37_α
.Lx00087_0:
 .quad .Lx00087_0_s
.Lx00087_0_s:
 .string " needs numeric parameter"
 xchain00052_n00084_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [r12 + 3664], rax
 mov qword ptr [r12 + 3672], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00052_n95_α
 xchain00052_n00084_β:
 jmp xchain00052_n37_α
 xchain00052_n00088_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+896]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+912]
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 920], rax
# marshal arg2 = producer-box slot [zr+1024] -> [zr+928]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn425: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn425]
 lea rsi, [r12 + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain00052_n37_α
 jmp xchain00052_n00089_α
 xchain00052_n00088_β:
 jmp xchain00052_n37_α
# IR_MOVE_LABEL
 xchain00052_n00089_α:
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00052_n37_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00052_n00084_α
 xchain00052_n00089_β:
 jmp xchain00052_n37_α
proc_options_β:
jmp proc_options_ω
proc_options_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 3592]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 3584]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_options_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 3592]
pop r12
ret
  .globl proc_Init___α
proc_Init___α:
#=======================================================================================================================
    .global proc_Init___α
    .global proc_Init___β
    .global proc_Init___γ
    .global proc_Init___ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 552], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 544], rax
 pop rsi
proc_Init___α_body:
# IR_VAR
 xchain00090_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 520], rax
 jmp xchain00090_n1_α
 xchain00090_n0_β:
 jmp xchain00090_n2_α
# IR_ASSIGN gva
 xchain00090_n1_α:
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00090_n2_α
 xchain00090_n1_β:
 jmp xchain00090_n2_α
 xchain00090_n2_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00091_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00091_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00091_2
.Lx00091_1:
 call rt_faildescr@PLT
.Lx00091_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain00090_n3_α
 jmp xchain00090_n3_α
 xchain00090_n2_β:
 jmp xchain00090_n3_α
.Lx00091_0:
 .quad .Lx00091_0_s
.Lx00091_0_s:
 .string "Signature__"
 xchain00090_n3_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00092_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00092_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00092_2
.Lx00092_1:
 call rt_faildescr@PLT
.Lx00092_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain00090_n4_α
 jmp xchain00090_n4_α
 xchain00090_n3_β:
 jmp xchain00090_n4_α
.Lx00092_0:
 .quad .Lx00092_0_s
.Lx00092_0_s:
 .string "Regions__"
 xchain00090_n4_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00093_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00093_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00093_2
.Lx00093_1:
 call rt_faildescr@PLT
.Lx00093_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00090_n5_α
 jmp xchain00090_n5_α
 xchain00090_n4_β:
 jmp xchain00090_n5_α
.Lx00093_0:
 .quad .Lx00093_0_s
.Lx00093_0_s:
 .string "Time__"
# IR_LIT_STRING
 xchain00090_n5_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx00094_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00090_n6_α
 xchain00090_n5_β:
 jmp xchain00090_n8_α
.Lx00094_0:
 .quad .Lx00094_0_s
.Lx00094_0_s:
 .string "OUTPUT"
 xchain00090_n6_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn440: .string "getenv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn440]
 lea rsi, [r12 + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain00090_n8_α
 jmp xchain00090_n7_α
 xchain00090_n6_β:
 jmp xchain00090_n8_α
# IR_LIT_STRING
 xchain00090_n7_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx00095_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00090_n9_α
 xchain00090_n7_β:
 jmp xchain00090_n12_α
.Lx00095_0:
 .quad .Lx00095_0_s
.Lx00095_0_s:
 .string "*** Benchmarking with output ***"
# IR_VAR
 xchain00090_n8_α:
 mov rdi, qword ptr [rip + .Lx00096_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00090_n11_α
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00090_n10_α
 xchain00090_n8_β:
 jmp xchain00090_n11_α
.Lx00096_0:
 .quad .Lx00096_0_s
.Lx00096_0_s:
 .string "write"
 xchain00090_n9_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn444: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn444]
 lea rsi, [r12 + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain00090_n12_α
 jmp xchain00090_n12_α
 xchain00090_n9_β:
 jmp xchain00090_n12_α
# IR_ASSIGN gva
 xchain00090_n10_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00090_n11_α
 xchain00090_n10_β:
 jmp xchain00090_n11_α
# IR_VAR
 xchain00090_n11_α:
 mov rdi, qword ptr [rip + .Lx00097_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00090_n14_α
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00090_n13_α
 xchain00090_n11_β:
 jmp xchain00090_n14_α
.Lx00097_0:
 .quad .Lx00097_0_s
.Lx00097_0_s:
 .string "writes"
# IR_RETURN
 xchain00090_n12_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Init___γ
# IR_ASSIGN gva
 xchain00090_n13_α:
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00090_n14_α
 xchain00090_n13_β:
 jmp xchain00090_n14_α
# IR_LIT_INTEGER
 xchain00090_n14_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00098_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00090_n15_α
 xchain00090_n14_β:
 jmp xchain00090_n17_α
.Lx00098_0:
 .quad 1
# IR_ASSIGN global
 xchain00090_n15_α:
 mov rsi, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov rdi, qword ptr [rip + .Lx00099_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00090_n16_α
 xchain00090_n15_β:
 jmp xchain00090_n17_α
.Lx00099_0:
 .quad .Lx00099_0_s
.Lx00099_0_s:
 .string "writes"
# IR_ASSIGN global
 xchain00090_n16_α:
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov rdi, qword ptr [rip + .Lx00100_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00090_n17_α
 xchain00090_n16_β:
 jmp xchain00090_n17_α
.Lx00100_0:
 .quad .Lx00100_0_s
.Lx00100_0_s:
 .string "write"
# IR_RETURN
 xchain00090_n17_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Init___γ
proc_Init___β:
jmp proc_Init___ω
proc_Init___γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 552]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 544]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_Init___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 552]
pop r12
ret
  .globl proc_Term___α
proc_Term___α:
#=======================================================================================================================
    .global proc_Term___α
    .global proc_Term___β
    .global proc_Term___γ
    .global proc_Term___ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 552], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 544], rax
 pop rsi
proc_Term___α_body:
# IR_LIT_STRING
 xchain00101_n0_α:
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx00102_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00101_n1_α
 xchain00101_n0_β:
 jmp xchain00101_n3_α
.Lx00102_0:
 .quad .Lx00102_0_s
.Lx00102_0_s:
 .string "OUTPUT"
 xchain00101_n1_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn456: .string "getenv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn456]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain00101_n3_α
 jmp xchain00101_n2_α
 xchain00101_n1_β:
 jmp xchain00101_n3_α
# IR_VAR
 xchain00101_n2_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00101_n4_α
 xchain00101_n2_β:
 jmp xchain00101_n5_α
# KEYWORD_null
 xchain00101_n3_α:
 mov qword ptr [r12 + 432], 0
 mov qword ptr [r12 + 440], 0
 jmp xchain00101_n6_α
 xchain00101_n3_β:
 jmp xchain00101_n2_α
# IR_LIT_STRING
 xchain00101_n4_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx00103_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00101_n7_α
 xchain00101_n4_β:
 jmp xchain00101_n5_α
.Lx00103_0:
 .quad .Lx00103_0_s
.Lx00103_0_s:
 .string " elapsed time = "
 xchain00101_n5_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00104_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00104_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00104_2
.Lx00104_1:
 call rt_faildescr@PLT
.Lx00104_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain00101_n8_α
 jmp xchain00101_n8_α
 xchain00101_n5_β:
 jmp xchain00101_n8_α
.Lx00104_0:
 .quad .Lx00104_0_s
.Lx00104_0_s:
 .string "Regions__"
# IR_VAR
 xchain00101_n6_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00101_n9_α
 xchain00101_n6_β:
 jmp xchain00101_n10_α
 xchain00101_n7_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00105_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00105_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00105_2
.Lx00105_1:
 call rt_faildescr@PLT
.Lx00105_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain00101_n5_α
 jmp xchain00101_n11_α
 xchain00101_n7_β:
 jmp xchain00101_n5_α
.Lx00105_0:
 .quad .Lx00105_0_s
.Lx00105_0_s:
 .string "Time__"
 xchain00101_n8_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00106_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00106_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00106_2
.Lx00106_1:
 call rt_faildescr@PLT
.Lx00106_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain00101_n12_α
 jmp xchain00101_n12_α
 xchain00101_n8_β:
 jmp xchain00101_n12_α
.Lx00106_0:
 .quad .Lx00106_0_s
.Lx00106_0_s:
 .string "Storage__"
# IR_ASSIGN global
 xchain00101_n9_α:
 mov rsi, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 mov rdi, qword ptr [rip + .Lx00107_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00101_n10_α
 xchain00101_n9_β:
 jmp xchain00101_n10_α
.Lx00107_0:
 .quad .Lx00107_0_s
.Lx00107_0_s:
 .string "write"
# IR_VAR
 xchain00101_n10_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00101_n13_α
 xchain00101_n10_β:
 jmp xchain00101_n2_α
 xchain00101_n11_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+128]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+144]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 152], rax
# marshal arg2 = producer-box slot [zr+256] -> [zr+160]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn470: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn470]
 lea rsi, [r12 + 128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00101_n5_α
 jmp xchain00101_n5_α
 xchain00101_n11_β:
 jmp xchain00101_n5_α
 xchain00101_n12_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00108_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00108_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00108_2
.Lx00108_1:
 call rt_faildescr@PLT
.Lx00108_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain00101_n14_α
 jmp xchain00101_n14_α
 xchain00101_n12_β:
 jmp xchain00101_n14_α
.Lx00108_0:
 .quad .Lx00108_0_s
.Lx00108_0_s:
 .string "Collections__"
# IR_ASSIGN global
 xchain00101_n13_α:
 mov rsi, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov rdi, qword ptr [rip + .Lx00109_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00101_n15_α
 xchain00101_n13_β:
 jmp xchain00101_n2_α
.Lx00109_0:
 .quad .Lx00109_0_s
.Lx00109_0_s:
 .string "writes"
# IR_RETURN
 xchain00101_n14_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Term___γ
 xchain00101_n15_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 328], rax
 jmp xchain00101_n16_α
xchain00101_n15_β:
 jmp xchain00101_n2_α
# IR_MOVE_LABEL
 xchain00101_n16_α:
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 296], rax
 lea rax, [rip + xchain00101_n2_α]
 mov qword ptr [r12 + 304], rax
 jmp xchain00101_n2_α
 xchain00101_n16_β:
 jmp xchain00101_n2_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00101_n17_α:
 jmp qword ptr [r12 + 304]
 xchain00101_n17_β:
 jmp xchain00101_n2_α
proc_Term___β:
jmp proc_Term___ω
proc_Term___γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 552]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 544]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_Term___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 552]
pop r12
ret
  .globl proc_Collections___α
proc_Collections___α:
#=======================================================================================================================
    .global proc_Collections___α
    .global proc_Collections___β
    .global proc_Collections___γ
    .global proc_Collections___ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 1160], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 1152], rax
 pop rsi
proc_Collections___α_body:
# IR_VAR_REF
 xchain00110_n0_α:
 lea rdi, [rbx + 224]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00110_n1_α
 xchain00110_n0_β:
 jmp xchain00110_n3_α
# IR_NULLTEST_VAR
 xchain00110_n1_α:
 mov eax, dword ptr [r12 + 1040]
 cmp eax, 99
 je xchain00110_n3_α
 mov rdi, qword ptr [r12 + 1040]
 mov rsi, qword ptr [r12 + 1048]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00110_n3_α
 cmp eax, 0
 jne xchain00110_n3_α
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00110_n2_α
 xchain00110_n1_β:
 jmp xchain00110_n3_α
# IR_LIT_INTEGER
 xchain00110_n2_α:
 mov qword ptr [r12 + 1120], 6
 mov rax, qword ptr [rip + .Lx00111_0]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00110_n4_α
 xchain00110_n2_β:
 jmp xchain00110_n3_α
.Lx00111_0:
 .quad 1
# IR_MAKE_LIST
 xchain00110_n3_α:
 lea rdi, [r12 + 784]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00110_n5_α
 xchain00110_n3_β:
 jmp xchain00110_n7_α
# IR_ASSIGN_VAR
 xchain00110_n4_α:
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 mov rdx, qword ptr [r12 + 1120]
 mov rcx, qword ptr [r12 + 1128]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00110_n3_α
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain00110_n6_α
 xchain00110_n4_β:
 jmp xchain00110_n3_α
 xchain00110_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00110_n7_α
 xchain00110_n5_β:
 jmp xchain00110_n7_α
# IR_LIT_STRING
 xchain00110_n6_α:
 mov qword ptr [r12 + 912], 1
 mov rax, qword ptr [rip + .Lx00112_0]
 mov qword ptr [r12 + 920], rax
 jmp xchain00110_n8_α
 xchain00110_n6_β:
 jmp xchain00110_n3_α
.Lx00112_0:
 .quad .Lx00112_0_s
.Lx00112_0_s:
 .string "total"
# IR_VAR
 xchain00110_n7_α:
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 696], rax
 jmp xchain00110_n9_α
 xchain00110_n7_β:
 jmp xchain00110_n10_α
# IR_LIT_STRING
 xchain00110_n8_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx00113_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00110_n11_α
 xchain00110_n8_β:
 jmp xchain00110_n3_α
.Lx00113_0:
 .quad .Lx00113_0_s
.Lx00113_0_s:
 .string "static"
# KEYWORD_gen
 xchain00110_n9_α:
 mov qword ptr [r12 + 736], 0
.Lx00114_1:
 mov rdi, qword ptr [rip + .Lx00114_0]
 mov rsi, qword ptr [r12 + 736]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00110_n10_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 mov rax, qword ptr [r12 + 736]
 add rax, 1
 mov qword ptr [r12 + 736], rax
 jmp xchain00110_n12_α
 xchain00110_n9_β:
 jmp .Lx00114_1
.Lx00114_0:
 .quad .Lx00114_0_s
.Lx00114_0_s:
 .string "&collections"
# IR_LIT_STRING
 xchain00110_n10_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx00115_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00110_n13_α
 xchain00110_n10_β:
 jmp xchain00110_n15_α
.Lx00115_0:
 .quad .Lx00115_0_s
.Lx00115_0_s:
 .string "collections"
# IR_LIT_STRING
 xchain00110_n11_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx00116_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain00110_n14_α
 xchain00110_n11_β:
 jmp xchain00110_n3_α
.Lx00116_0:
 .quad .Lx00116_0_s
.Lx00116_0_s:
 .string "string"
 xchain00110_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 648], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+656]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn497: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn497]
 lea rsi, [r12 + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain00110_n10_α
 jmp xchain00110_n9_β
 xchain00110_n12_β:
 jmp xchain00110_n10_α
 xchain00110_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn499: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn499]
 lea rsi, [r12 + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain00110_n15_α
 jmp xchain00110_n15_α
 xchain00110_n13_β:
 jmp xchain00110_n15_α
# IR_LIT_STRING
 xchain00110_n14_α:
 mov qword ptr [r12 + 1008], 1
 mov rax, qword ptr [rip + .Lx00117_0]
 mov qword ptr [r12 + 1016], rax
 jmp xchain00110_n16_α
 xchain00110_n14_β:
 jmp xchain00110_n3_α
.Lx00117_0:
 .quad .Lx00117_0_s
.Lx00117_0_s:
 .string "block"
# IR_LIT_INTEGER
 xchain00110_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00118_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00110_n17_α
 xchain00110_n15_β:
 jmp xchain00110_n20_α
.Lx00118_0:
 .quad 1
# IR_MAKE_LIST
 xchain00110_n16_α:
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 856], rax
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 872], rax
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 888], rax
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 904], rax
 lea rdi, [r12 + 848]
 mov esi, 4
 call rt_make_list@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00110_n18_α
 xchain00110_n16_β:
 jmp xchain00110_n3_α
# IR_VAR
 xchain00110_n17_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00110_n19_α
 xchain00110_n17_β:
 jmp xchain00110_n20_α
# IR_ASSIGN gva
 xchain00110_n18_α:
 mov rax, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00110_n21_α
 xchain00110_n18_β:
 jmp xchain00110_n3_α
# IR_UNOP
 xchain00110_n19_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00110_n22_α
 xchain00110_n19_β:
 jmp xchain00110_n20_α
# IR_RETURN
 xchain00110_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Collections___γ
# IR_MOVE_LABEL
 xchain00110_n21_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
 lea rax, [rip + xchain00110_n3_α]
 mov qword ptr [r12 + 800], rax
 jmp xchain00110_n3_α
 xchain00110_n21_β:
 jmp xchain00110_n3_α
# IR_TO
 xchain00110_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00119_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 104]
 cmp rax, rcx
 jg xchain00110_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00110_n24_α
 xchain00110_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00119_0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00110_n23_α:
 jmp qword ptr [r12 + 800]
 xchain00110_n23_β:
 jmp xchain00110_n3_α
 xchain00110_n24_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00110_n25_α
 xchain00110_n24_β:
 jmp xchain00110_n20_α
# IR_VAR_REF
 xchain00110_n25_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00110_n26_α
 xchain00110_n25_β:
 jmp xchain00110_n22_β
# IR_VAR
 xchain00110_n26_α:
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 264], rax
 jmp xchain00110_n27_α
 xchain00110_n26_β:
 jmp xchain00110_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00110_n27_α:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00110_n22_β
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00110_n28_α
 xchain00110_n27_β:
 jmp xchain00110_n22_β
# IR_DEREF variable -> value
 xchain00110_n28_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00110_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00110_n29_α
 xchain00110_n28_β:
 jmp xchain00110_n22_β
# IR_VAR_REF
 xchain00110_n29_α:
 lea rdi, [r12 + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00110_n30_α
 xchain00110_n29_β:
 jmp xchain00110_n22_β
# IR_VAR
 xchain00110_n30_α:
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 440], rax
 jmp xchain00110_n31_α
 xchain00110_n30_β:
 jmp xchain00110_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00110_n31_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00110_n22_β
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00110_n32_α
 xchain00110_n31_β:
 jmp xchain00110_n22_β
# IR_DEREF variable -> value
 xchain00110_n32_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00110_n22_β
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00110_n33_α
 xchain00110_n32_β:
 jmp xchain00110_n22_β
# IR_LIT_INTEGER
 xchain00110_n33_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00120_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00110_n34_α
 xchain00110_n33_β:
 jmp xchain00110_n22_β
.Lx00120_0:
 .quad 8
 xchain00110_n34_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+352]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+368]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn529: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn529]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain00110_n22_β
 jmp xchain00110_n35_α
 xchain00110_n34_β:
 jmp xchain00110_n22_β
 xchain00110_n35_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+176]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 184], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+192]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn531: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn531]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00110_n22_β
 jmp xchain00110_n22_β
 xchain00110_n35_β:
 jmp xchain00110_n22_β
proc_Collections___β:
jmp proc_Collections___ω
proc_Collections___γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 1160]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 1152]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_Collections___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 1160]
pop r12
ret
  .globl proc_Regions___α
proc_Regions___α:
#=======================================================================================================================
    .global proc_Regions___α
    .global proc_Regions___β
    .global proc_Regions___γ
    .global proc_Regions___ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 1112], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 1104], rax
 pop rsi
proc_Regions___α_body:
# IR_VAR_REF
 xchain00121_n0_α:
 lea rdi, [rbx + 256]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain00121_n1_α
 xchain00121_n0_β:
 jmp xchain00121_n3_α
# IR_NULLTEST_VAR
 xchain00121_n1_α:
 mov eax, dword ptr [r12 + 992]
 cmp eax, 99
 je xchain00121_n3_α
 mov rdi, qword ptr [r12 + 992]
 mov rsi, qword ptr [r12 + 1000]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00121_n3_α
 cmp eax, 0
 jne xchain00121_n3_α
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00121_n2_α
 xchain00121_n1_β:
 jmp xchain00121_n3_α
# IR_LIT_INTEGER
 xchain00121_n2_α:
 mov qword ptr [r12 + 1072], 6
 mov rax, qword ptr [rip + .Lx00122_0]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00121_n4_α
 xchain00121_n2_β:
 jmp xchain00121_n3_α
.Lx00122_0:
 .quad 1
# IR_MAKE_LIST
 xchain00121_n3_α:
 lea rdi, [r12 + 784]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00121_n5_α
 xchain00121_n3_β:
 jmp xchain00121_n7_α
# IR_ASSIGN_VAR
 xchain00121_n4_α:
 mov rdi, qword ptr [r12 + 1024]
 mov rsi, qword ptr [r12 + 1032]
 mov rdx, qword ptr [r12 + 1072]
 mov rcx, qword ptr [r12 + 1080]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00121_n3_α
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain00121_n6_α
 xchain00121_n4_β:
 jmp xchain00121_n3_α
 xchain00121_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00121_n7_α
 xchain00121_n5_β:
 jmp xchain00121_n7_α
# IR_LIT_STRING
 xchain00121_n6_α:
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx00123_0]
 mov qword ptr [r12 + 904], rax
 jmp xchain00121_n8_α
 xchain00121_n6_β:
 jmp xchain00121_n3_α
.Lx00123_0:
 .quad .Lx00123_0_s
.Lx00123_0_s:
 .string "static"
# IR_VAR
 xchain00121_n7_α:
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 696], rax
 jmp xchain00121_n9_α
 xchain00121_n7_β:
 jmp xchain00121_n10_α
# IR_LIT_STRING
 xchain00121_n8_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx00124_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain00121_n11_α
 xchain00121_n8_β:
 jmp xchain00121_n3_α
.Lx00124_0:
 .quad .Lx00124_0_s
.Lx00124_0_s:
 .string "string"
# KEYWORD_gen
 xchain00121_n9_α:
 mov qword ptr [r12 + 736], 0
.Lx00125_1:
 mov rdi, qword ptr [rip + .Lx00125_0]
 mov rsi, qword ptr [r12 + 736]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00121_n10_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 mov rax, qword ptr [r12 + 736]
 add rax, 1
 mov qword ptr [r12 + 736], rax
 jmp xchain00121_n12_α
 xchain00121_n9_β:
 jmp .Lx00125_1
.Lx00125_0:
 .quad .Lx00125_0_s
.Lx00125_0_s:
 .string "&regions"
# IR_LIT_STRING
 xchain00121_n10_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx00126_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00121_n13_α
 xchain00121_n10_β:
 jmp xchain00121_n15_α
.Lx00126_0:
 .quad .Lx00126_0_s
.Lx00126_0_s:
 .string "regions"
# IR_LIT_STRING
 xchain00121_n11_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx00127_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain00121_n14_α
 xchain00121_n11_β:
 jmp xchain00121_n3_α
.Lx00127_0:
 .quad .Lx00127_0_s
.Lx00127_0_s:
 .string "block"
 xchain00121_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 648], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+656]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn549: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn549]
 lea rsi, [r12 + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain00121_n10_α
 jmp xchain00121_n9_β
 xchain00121_n12_β:
 jmp xchain00121_n10_α
 xchain00121_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn551: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn551]
 lea rsi, [r12 + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain00121_n15_α
 jmp xchain00121_n15_α
 xchain00121_n13_β:
 jmp xchain00121_n15_α
# IR_MAKE_LIST
 xchain00121_n14_α:
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 856], rax
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 872], rax
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 888], rax
 lea rdi, [r12 + 848]
 mov esi, 3
 call rt_make_list@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00121_n16_α
 xchain00121_n14_β:
 jmp xchain00121_n3_α
# IR_LIT_INTEGER
 xchain00121_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00128_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00121_n17_α
 xchain00121_n15_β:
 jmp xchain00121_n20_α
.Lx00128_0:
 .quad 1
# IR_ASSIGN gva
 xchain00121_n16_α:
 mov rax, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 mov qword ptr [rbx + 240], rax
 mov qword ptr [rbx + 248], rdx
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00121_n18_α
 xchain00121_n16_β:
 jmp xchain00121_n3_α
# IR_VAR
 xchain00121_n17_α:
 mov rax, qword ptr [rbx + 240]
 mov rdx, qword ptr [rbx + 248]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00121_n19_α
 xchain00121_n17_β:
 jmp xchain00121_n20_α
# IR_MOVE_LABEL
 xchain00121_n18_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
 lea rax, [rip + xchain00121_n3_α]
 mov qword ptr [r12 + 800], rax
 jmp xchain00121_n3_α
 xchain00121_n18_β:
 jmp xchain00121_n3_α
# IR_UNOP
 xchain00121_n19_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00121_n22_α
 xchain00121_n19_β:
 jmp xchain00121_n20_α
# IR_RETURN
 xchain00121_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Regions___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00121_n21_α:
 jmp qword ptr [r12 + 800]
 xchain00121_n21_β:
 jmp xchain00121_n3_α
# IR_TO
 xchain00121_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00129_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 104]
 cmp rax, rcx
 jg xchain00121_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00121_n23_α
 xchain00121_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00129_0
 xchain00121_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00121_n24_α
 xchain00121_n23_β:
 jmp xchain00121_n20_α
# IR_VAR_REF
 xchain00121_n24_α:
 lea rdi, [rbx + 240]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00121_n25_α
 xchain00121_n24_β:
 jmp xchain00121_n22_β
# IR_VAR
 xchain00121_n25_α:
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 264], rax
 jmp xchain00121_n26_α
 xchain00121_n25_β:
 jmp xchain00121_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00121_n26_α:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00121_n22_β
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00121_n27_α
 xchain00121_n26_β:
 jmp xchain00121_n22_β
# IR_DEREF variable -> value
 xchain00121_n27_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00121_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00121_n28_α
 xchain00121_n27_β:
 jmp xchain00121_n22_β
# IR_VAR_REF
 xchain00121_n28_α:
 lea rdi, [r12 + 1136]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00121_n29_α
 xchain00121_n28_β:
 jmp xchain00121_n22_β
# IR_VAR
 xchain00121_n29_α:
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 440], rax
 jmp xchain00121_n30_α
 xchain00121_n29_β:
 jmp xchain00121_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00121_n30_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00121_n22_β
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00121_n31_α
 xchain00121_n30_β:
 jmp xchain00121_n22_β
# IR_DEREF variable -> value
 xchain00121_n31_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00121_n22_β
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00121_n32_α
 xchain00121_n31_β:
 jmp xchain00121_n22_β
# IR_LIT_INTEGER
 xchain00121_n32_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00130_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00121_n33_α
 xchain00121_n32_β:
 jmp xchain00121_n22_β
.Lx00130_0:
 .quad 8
 xchain00121_n33_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+352]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+368]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn580: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn580]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain00121_n22_β
 jmp xchain00121_n34_α
 xchain00121_n33_β:
 jmp xchain00121_n22_β
 xchain00121_n34_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+176]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 184], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+192]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn582: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn582]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00121_n22_β
 jmp xchain00121_n22_β
 xchain00121_n34_β:
 jmp xchain00121_n22_β
proc_Regions___β:
jmp proc_Regions___ω
proc_Regions___γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 1112]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 1104]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_Regions___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 1112]
pop r12
ret
  .globl proc_Signature___α
proc_Signature___α:
#=======================================================================================================================
    .global proc_Signature___α
    .global proc_Signature___β
    .global proc_Signature___γ
    .global proc_Signature___ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 264], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 256], rax
 pop rsi
proc_Signature___α_body:
# KEYWORD_read
 xchain00131_n0_α:
 mov rdi, qword ptr [rip + .Lx00132_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00131_n1_α
 xchain00131_n0_β:
 jmp xchain00131_n2_α
.Lx00132_0:
 .quad .Lx00132_0_s
.Lx00132_0_s:
 .string "&version"
 xchain00131_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn586: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn586]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain00131_n2_α
 jmp xchain00131_n2_α
 xchain00131_n1_β:
 jmp xchain00131_n2_α
# KEYWORD_read
 xchain00131_n2_α:
 mov rdi, qword ptr [rip + .Lx00133_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00131_n3_α
 xchain00131_n2_β:
 jmp xchain00131_n4_α
.Lx00133_0:
 .quad .Lx00133_0_s
.Lx00133_0_s:
 .string "&host"
 xchain00131_n3_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn589: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn589]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00131_n4_α
 jmp xchain00131_n4_α
 xchain00131_n3_β:
 jmp xchain00131_n4_α
# KEYWORD_gen
 xchain00131_n4_α:
 mov qword ptr [r12 + 80], 0
.Lx00134_1:
 mov rdi, qword ptr [rip + .Lx00134_0]
 mov rsi, qword ptr [r12 + 80]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00131_n6_α
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov rax, qword ptr [r12 + 80]
 add rax, 1
 mov qword ptr [r12 + 80], rax
 jmp xchain00131_n5_α
 xchain00131_n4_β:
 jmp .Lx00134_1
.Lx00134_0:
 .quad .Lx00134_0_s
.Lx00134_0_s:
 .string "&features"
 xchain00131_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+32]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lrkfn592: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn592]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain00131_n6_α
 jmp xchain00131_n4_β
 xchain00131_n5_β:
 jmp xchain00131_n6_α
# IR_RETURN
 xchain00131_n6_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Signature___γ
proc_Signature___β:
jmp proc_Signature___ω
proc_Signature___γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 264]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 256]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_Signature___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 264]
pop r12
ret
  .globl proc_Storage___α
proc_Storage___α:
#=======================================================================================================================
    .global proc_Storage___α
    .global proc_Storage___β
    .global proc_Storage___γ
    .global proc_Storage___ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 1112], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 1104], rax
 pop rsi
proc_Storage___α_body:
# IR_VAR_REF
 xchain00135_n0_α:
 lea rdi, [rbx + 288]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain00135_n1_α
 xchain00135_n0_β:
 jmp xchain00135_n3_α
# IR_NULLTEST_VAR
 xchain00135_n1_α:
 mov eax, dword ptr [r12 + 992]
 cmp eax, 99
 je xchain00135_n3_α
 mov rdi, qword ptr [r12 + 992]
 mov rsi, qword ptr [r12 + 1000]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00135_n3_α
 cmp eax, 0
 jne xchain00135_n3_α
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00135_n2_α
 xchain00135_n1_β:
 jmp xchain00135_n3_α
# IR_LIT_INTEGER
 xchain00135_n2_α:
 mov qword ptr [r12 + 1072], 6
 mov rax, qword ptr [rip + .Lx00136_0]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00135_n4_α
 xchain00135_n2_β:
 jmp xchain00135_n3_α
.Lx00136_0:
 .quad 1
# IR_MAKE_LIST
 xchain00135_n3_α:
 lea rdi, [r12 + 784]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00135_n5_α
 xchain00135_n3_β:
 jmp xchain00135_n7_α
# IR_ASSIGN_VAR
 xchain00135_n4_α:
 mov rdi, qword ptr [r12 + 1024]
 mov rsi, qword ptr [r12 + 1032]
 mov rdx, qword ptr [r12 + 1072]
 mov rcx, qword ptr [r12 + 1080]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00135_n3_α
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain00135_n6_α
 xchain00135_n4_β:
 jmp xchain00135_n3_α
 xchain00135_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00135_n7_α
 xchain00135_n5_β:
 jmp xchain00135_n7_α
# IR_LIT_STRING
 xchain00135_n6_α:
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx00137_0]
 mov qword ptr [r12 + 904], rax
 jmp xchain00135_n8_α
 xchain00135_n6_β:
 jmp xchain00135_n3_α
.Lx00137_0:
 .quad .Lx00137_0_s
.Lx00137_0_s:
 .string "static"
# IR_VAR
 xchain00135_n7_α:
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 696], rax
 jmp xchain00135_n9_α
 xchain00135_n7_β:
 jmp xchain00135_n10_α
# IR_LIT_STRING
 xchain00135_n8_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx00138_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain00135_n11_α
 xchain00135_n8_β:
 jmp xchain00135_n3_α
.Lx00138_0:
 .quad .Lx00138_0_s
.Lx00138_0_s:
 .string "string"
# KEYWORD_gen
 xchain00135_n9_α:
 mov qword ptr [r12 + 736], 0
.Lx00139_1:
 mov rdi, qword ptr [rip + .Lx00139_0]
 mov rsi, qword ptr [r12 + 736]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00135_n10_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 mov rax, qword ptr [r12 + 736]
 add rax, 1
 mov qword ptr [r12 + 736], rax
 jmp xchain00135_n12_α
 xchain00135_n9_β:
 jmp .Lx00139_1
.Lx00139_0:
 .quad .Lx00139_0_s
.Lx00139_0_s:
 .string "&storage"
# IR_LIT_STRING
 xchain00135_n10_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx00140_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00135_n13_α
 xchain00135_n10_β:
 jmp xchain00135_n15_α
.Lx00140_0:
 .quad .Lx00140_0_s
.Lx00140_0_s:
 .string "storage"
# IR_LIT_STRING
 xchain00135_n11_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx00141_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain00135_n14_α
 xchain00135_n11_β:
 jmp xchain00135_n3_α
.Lx00141_0:
 .quad .Lx00141_0_s
.Lx00141_0_s:
 .string "block"
 xchain00135_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 648], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+656]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn611: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn611]
 lea rsi, [r12 + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain00135_n10_α
 jmp xchain00135_n9_β
 xchain00135_n12_β:
 jmp xchain00135_n10_α
 xchain00135_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn613: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn613]
 lea rsi, [r12 + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain00135_n15_α
 jmp xchain00135_n15_α
 xchain00135_n13_β:
 jmp xchain00135_n15_α
# IR_MAKE_LIST
 xchain00135_n14_α:
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 856], rax
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 872], rax
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 888], rax
 lea rdi, [r12 + 848]
 mov esi, 3
 call rt_make_list@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00135_n16_α
 xchain00135_n14_β:
 jmp xchain00135_n3_α
# IR_LIT_INTEGER
 xchain00135_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00142_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00135_n17_α
 xchain00135_n15_β:
 jmp xchain00135_n20_α
.Lx00142_0:
 .quad 1
# IR_ASSIGN gva
 xchain00135_n16_α:
 mov rax, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00135_n18_α
 xchain00135_n16_β:
 jmp xchain00135_n3_α
# IR_VAR
 xchain00135_n17_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00135_n19_α
 xchain00135_n17_β:
 jmp xchain00135_n20_α
# IR_MOVE_LABEL
 xchain00135_n18_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
 lea rax, [rip + xchain00135_n3_α]
 mov qword ptr [r12 + 800], rax
 jmp xchain00135_n3_α
 xchain00135_n18_β:
 jmp xchain00135_n3_α
# IR_UNOP
 xchain00135_n19_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00135_n22_α
 xchain00135_n19_β:
 jmp xchain00135_n20_α
# IR_RETURN
 xchain00135_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Storage___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00135_n21_α:
 jmp qword ptr [r12 + 800]
 xchain00135_n21_β:
 jmp xchain00135_n3_α
# IR_TO
 xchain00135_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00143_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 104]
 cmp rax, rcx
 jg xchain00135_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00135_n23_α
 xchain00135_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00143_0
 xchain00135_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00135_n24_α
 xchain00135_n23_β:
 jmp xchain00135_n20_α
# IR_VAR_REF
 xchain00135_n24_α:
 lea rdi, [rbx + 272]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00135_n25_α
 xchain00135_n24_β:
 jmp xchain00135_n22_β
# IR_VAR
 xchain00135_n25_α:
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 264], rax
 jmp xchain00135_n26_α
 xchain00135_n25_β:
 jmp xchain00135_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00135_n26_α:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00135_n22_β
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00135_n27_α
 xchain00135_n26_β:
 jmp xchain00135_n22_β
# IR_DEREF variable -> value
 xchain00135_n27_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00135_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00135_n28_α
 xchain00135_n27_β:
 jmp xchain00135_n22_β
# IR_VAR_REF
 xchain00135_n28_α:
 lea rdi, [r12 + 1136]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00135_n29_α
 xchain00135_n28_β:
 jmp xchain00135_n22_β
# IR_VAR
 xchain00135_n29_α:
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 440], rax
 jmp xchain00135_n30_α
 xchain00135_n29_β:
 jmp xchain00135_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00135_n30_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00135_n22_β
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00135_n31_α
 xchain00135_n30_β:
 jmp xchain00135_n22_β
# IR_DEREF variable -> value
 xchain00135_n31_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00135_n22_β
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00135_n32_α
 xchain00135_n31_β:
 jmp xchain00135_n22_β
# IR_LIT_INTEGER
 xchain00135_n32_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00144_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00135_n33_α
 xchain00135_n32_β:
 jmp xchain00135_n22_β
.Lx00144_0:
 .quad 8
 xchain00135_n33_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+352]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+368]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn642: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn642]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain00135_n22_β
 jmp xchain00135_n34_α
 xchain00135_n33_β:
 jmp xchain00135_n22_β
 xchain00135_n34_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+176]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 184], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+192]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn644: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn644]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00135_n22_β
 jmp xchain00135_n22_β
 xchain00135_n34_β:
 jmp xchain00135_n22_β
proc_Storage___β:
jmp proc_Storage___ω
proc_Storage___γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 1112]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 1104]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_Storage___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 1112]
pop r12
ret
  .globl proc_Time___α
proc_Time___α:
#=======================================================================================================================
    .global proc_Time___α
    .global proc_Time___β
    .global proc_Time___γ
    .global proc_Time___ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 376], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 368], rax
 pop rsi
proc_Time___α_body:
# IR_VAR_REF
 xchain00145_n0_α:
 lea rdi, [rbx + 320]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00145_n1_α
 xchain00145_n0_β:
 jmp xchain00145_n3_α
# IR_NULLTEST_VAR
 xchain00145_n1_α:
 mov eax, dword ptr [r12 + 256]
 cmp eax, 99
 je xchain00145_n3_α
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00145_n3_α
 cmp eax, 0
 jne xchain00145_n3_α
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 296], rax
 jmp xchain00145_n2_α
 xchain00145_n1_β:
 jmp xchain00145_n3_α
# IR_LIT_INTEGER
 xchain00145_n2_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00146_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00145_n4_α
 xchain00145_n2_β:
 jmp xchain00145_n3_α
.Lx00146_0:
 .quad 1
# KEYWORD_read
 xchain00145_n3_α:
 mov rdi, qword ptr [rip + .Lx00147_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00145_n5_α
 xchain00145_n3_β:
 jmp proc_Time___ω
.Lx00147_0:
 .quad .Lx00147_0_s
.Lx00147_0_s:
 .string "&time"
# IR_ASSIGN_VAR
 xchain00145_n4_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00145_n3_α
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00145_n6_α
 xchain00145_n4_β:
 jmp xchain00145_n3_α
# IR_VAR
 xchain00145_n5_α:
 mov rax, qword ptr [rbx + 304]
 mov rdx, qword ptr [rbx + 312]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00145_n7_α
 xchain00145_n5_β:
 jmp proc_Time___ω
# KEYWORD_read
 xchain00145_n6_α:
 mov rdi, qword ptr [rip + .Lx00148_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00145_n8_α
 xchain00145_n6_β:
 jmp xchain00145_n3_α
.Lx00148_0:
 .quad .Lx00148_0_s
.Lx00148_0_s:
 .string "&time"
# IR_COERCE_NUMERIC
 xchain00145_n7_α:
 mov eax, dword ptr [r12 + 112]
 cmp eax, 7
 je .Lx00149_1
 cmp eax, 6
 jne .Lx00149_0
 mov eax, dword ptr [r12 + 144]
 cmp eax, 6
 jne .Lx00149_0
.Lx00149_1:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
 jmp .Lx00149_2
.Lx00149_0:
 lea rdi, [r12 + 112]
 lea rsi, [r12 + 144]
 lea rdx, [r12 + 80]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00149_2:
 jmp xchain00145_n9_α
 xchain00145_n7_β:
 jmp proc_Time___ω
# IR_ASSIGN gva
 xchain00145_n8_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [rbx + 304], rax
 mov qword ptr [rbx + 312], rdx
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00145_n10_α
 xchain00145_n8_β:
 jmp xchain00145_n3_α
# IR_COERCE_NUMERIC
 xchain00145_n9_α:
 mov eax, dword ptr [r12 + 144]
 cmp eax, 7
 je .Lx00150_1
 cmp eax, 6
 jne .Lx00150_0
 mov eax, dword ptr [r12 + 112]
 cmp eax, 6
 jne .Lx00150_0
.Lx00150_1:
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 56], rax
 jmp .Lx00150_2
.Lx00150_0:
 lea rdi, [r12 + 144]
 lea rsi, [r12 + 112]
 lea rdx, [r12 + 48]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00150_2:
 jmp xchain00145_n11_α
 xchain00145_n9_β:
 jmp proc_Time___ω
# IR_MOVE_LABEL
 xchain00145_n10_α:
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
 lea rax, [rip + xchain00145_n3_α]
 mov qword ptr [r12 + 192], rax
 jmp xchain00145_n3_α
 xchain00145_n10_β:
 jmp xchain00145_n3_α
 xchain00145_n11_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 80]
 cmp eax, 100
 je .Lx00151_0
 mov eax, dword ptr [r12 + 48]
 cmp eax, 100
 je .Lx00151_0
 mov eax, dword ptr [r12 + 80]
 cmp eax, 6
 jne .Lx00151_2
 mov eax, dword ptr [r12 + 48]
 cmp eax, 6
 jne .Lx00151_2
.Lx00151_1:
 mov rax, qword ptr [r12 + 88]
 mov rcx, qword ptr [r12 + 56]
 sub rax, rcx
 mov qword ptr [r12 + 16], 6
 mov qword ptr [r12 + 24], rax
 jmp xchain00145_n13_α
.Lx00151_0:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 56]
 mov r8d, 1
 lea r9, [r12 + 16]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00151_3
.Lx00151_2:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 56]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_Time___ω
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
.Lx00151_3:
 jmp xchain00145_n13_α
 xchain00145_n11_β:
 jmp proc_Time___ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00145_n12_α:
 jmp qword ptr [r12 + 192]
 xchain00145_n12_β:
 jmp xchain00145_n3_α
# IR_RETURN
 xchain00145_n13_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Time___γ
proc_Time___β:
jmp proc_Time___ω
proc_Time___γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 376]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 368]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_Time___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 376]
pop r12
ret
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
  mov esi, 3472
  call rt_proc_set_frame_bytes@PLT
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
  mov esi, 1808
  call rt_proc_set_frame_bytes@PLT
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
  mov esi, 1200
  call rt_proc_set_frame_bytes@PLT
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
  mov esi, 1152
  call rt_proc_set_frame_bytes@PLT
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
  mov esi, 1152
  call rt_proc_set_frame_bytes@PLT
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
  .section .bss
  .align 16
__gva: .space 336, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 21
  call gva_register@PLT
  mov rbx, rax
  call rt_frame@PLT
  mov rdi, rax
  push rdi
  sub rsp, 8
  mov rdi, qword ptr [rsp + 16]
  add rdi, 8
  mov esi, dword ptr [rsp + 24]
  sub esi, 1
  call rt_args_list_from@PLT
  add rsp, 8
  pop rdi
  mov qword ptr [rdi + 16], rax
  mov qword ptr [rdi + 24], rdx
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
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 984], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 976], rax
 pop rsi
main_α_body:
 xchain00152_n0_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00153_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00153_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00153_2
.Lx00153_1:
 call rt_faildescr@PLT
.Lx00153_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je xchain00152_n1_α
 jmp xchain00152_n1_α
 xchain00152_n0_β:
 jmp xchain00152_n1_α
.Lx00153_0:
 .quad .Lx00153_0_s
.Lx00153_0_s:
 .string "Init__"
# IR_VAR
 xchain00152_n1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 888], rax
 jmp xchain00152_n2_α
 xchain00152_n1_β:
 jmp xchain00152_n3_α
# IR_LIT_STRING
 xchain00152_n2_α:
 mov qword ptr [r12 + 912], 1
 mov rax, qword ptr [rip + .Lx00154_0]
 mov qword ptr [r12 + 920], rax
 jmp xchain00152_n4_α
 xchain00152_n2_β:
 jmp xchain00152_n3_α
.Lx00154_0:
 .quad .Lx00154_0_s
.Lx00154_0_s:
 .string "n+"
# IR_VAR_REF
 xchain00152_n3_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00152_n5_α
 xchain00152_n3_β:
 jmp xchain00152_n9_α
 xchain00152_n4_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 880]
 mov rdx, qword ptr [r12 + 888]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00155_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00155_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00155_2
.Lx00155_1:
 call rt_faildescr@PLT
.Lx00155_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain00152_n3_α
 jmp xchain00152_n6_α
 xchain00152_n4_β:
 jmp xchain00152_n3_α
.Lx00155_0:
 .quad .Lx00155_0_s
.Lx00155_0_s:
 .string "options"
# IR_LIT_STRING
 xchain00152_n5_α:
 mov qword ptr [r12 + 720], 1
 mov rax, qword ptr [rip + .Lx00156_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain00152_n7_α
 xchain00152_n5_β:
 jmp xchain00152_n9_α
.Lx00156_0:
 .quad .Lx00156_0_s
.Lx00156_0_s:
 .string "n"
 xchain00152_n6_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 816]
 mov rdx, qword ptr [r12 + 824]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00152_n3_α
 xchain00152_n6_β:
 jmp xchain00152_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00152_n7_α:
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 mov rdx, qword ptr [r12 + 720]
 mov rcx, qword ptr [r12 + 728]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00152_n9_α
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00152_n8_α
 xchain00152_n7_β:
 jmp xchain00152_n9_α
# IR_DEREF variable -> value
 xchain00152_n8_α:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00152_n9_α
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00152_n10_α
 xchain00152_n8_β:
 jmp xchain00152_n9_α
# IR_LIT_INTEGER
 xchain00152_n9_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx00157_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain00152_n11_α
 xchain00152_n9_β:
 jmp xchain00152_n14_α
.Lx00157_0:
 .quad 6
# IR_UNOP
 xchain00152_n10_α:
 mov eax, dword ptr [r12 + 784]
 cmp eax, 99
 je xchain00152_n9_α
 cmp eax, 0
 je xchain00152_n9_α
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 664], rax
 jmp xchain00152_n12_α
 xchain00152_n10_β:
 jmp xchain00152_n9_α
# IR_MOVE_LABEL
 xchain00152_n11_α:
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 600], rax
 lea rax, [rip + xchain00152_n14_α]
 mov qword ptr [r12 + 608], rax
 jmp xchain00152_n13_α
 xchain00152_n11_β:
 jmp xchain00152_n14_α
# IR_MOVE_LABEL
 xchain00152_n12_α:
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 600], rax
 lea rax, [rip + xchain00152_n9_α]
 mov qword ptr [r12 + 608], rax
 jmp xchain00152_n13_α
 xchain00152_n12_β:
 jmp xchain00152_n14_α
# IR_ASSIGN gva
 xchain00152_n13_α:
 mov rax, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00152_n14_α
 xchain00152_n13_β:
 jmp xchain00152_n14_α
# IR_VAR
 xchain00152_n14_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00152_n16_α
 xchain00152_n14_β:
 jmp xchain00152_n17_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00152_n15_α:
 jmp qword ptr [r12 + 608]
 xchain00152_n15_β:
 jmp xchain00152_n14_α
# IR_LIT_INTEGER
 xchain00152_n16_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx00158_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain00152_n18_α
 xchain00152_n16_β:
 jmp xchain00152_n17_α
.Lx00158_0:
 .quad 0
# IR_VAR
 xchain00152_n17_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00152_n19_α
 xchain00152_n17_β:
 jmp xchain00152_n20_α
 xchain00152_n18_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 512]
 cmp eax, 100
 je .Lx00159_0
 mov eax, dword ptr [r12 + 544]
 cmp eax, 100
 je .Lx00159_0
 mov eax, dword ptr [r12 + 512]
 cmp eax, 6
 jne .Lx00159_2
 mov eax, dword ptr [r12 + 544]
 cmp eax, 6
 jne .Lx00159_2
.Lx00159_1:
 mov rax, qword ptr [r12 + 520]
 mov rcx, qword ptr [r12 + 552]
 cmp rax, rcx
 jg xchain00152_n17_α
 mov rcx, qword ptr [r12 + 544]
 mov qword ptr [r12 + 480], rcx
 mov rcx, qword ptr [r12 + 552]
 mov qword ptr [r12 + 488], rcx
 jmp xchain00152_n21_α
.Lx00159_0:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 552]
 mov r8d, 6
 lea r9, [r12 + 480]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00159_1
 cmp eax, 1
 je xchain00152_n17_α
 jmp xchain00152_n21_α
.Lx00159_2:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 552]
 mov r8d, 6
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00152_n17_α
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 488], rax
 jmp xchain00152_n21_α
 xchain00152_n18_β:
 jmp xchain00152_n17_α
 xchain00152_n19_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn693: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn693]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00152_n20_α
 jmp xchain00152_n22_α
 xchain00152_n19_β:
 jmp xchain00152_n20_α
# IR_VAR
 xchain00152_n20_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00152_n23_α
 xchain00152_n20_β:
 jmp xchain00152_n24_α
# IR_LIT_STRING
 xchain00152_n21_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx00160_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00152_n25_α
 xchain00152_n21_β:
 jmp xchain00152_n17_α
.Lx00160_0:
 .quad .Lx00160_0_s
.Lx00160_0_s:
 .string "-n needs a positive numeric parameter"
# IR_ASSIGN gva
 xchain00152_n22_α:
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00152_n20_α
 xchain00152_n22_β:
 jmp xchain00152_n20_α
# IR_LIT_STRING
 xchain00152_n23_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00161_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00152_n26_α
 xchain00152_n23_β:
 jmp xchain00152_n24_α
.Lx00161_0:
 .quad .Lx00161_0_s
.Lx00161_0_s:
 .string "-Queens:"
# IR_LIT_INTEGER
 xchain00152_n24_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00162_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00152_n27_α
 xchain00152_n24_β:
 jmp xchain00152_n29_α
.Lx00162_0:
 .quad 1
 xchain00152_n25_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn700: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn700]
 lea rsi, [r12 + 416]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00152_n17_α
 jmp xchain00152_n28_α
 xchain00152_n25_β:
 jmp xchain00152_n17_α
 xchain00152_n26_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+160]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 168], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+176]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn702: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn702]
 lea rsi, [r12 + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00152_n24_α
 jmp xchain00152_n24_α
 xchain00152_n26_β:
 jmp xchain00152_n24_α
 xchain00152_n27_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00163_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00163_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00163_2
.Lx00163_1:
 call rt_faildescr@PLT
.Lx00163_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00152_n29_α
 jmp xchain00152_n29_α
 xchain00152_n27_β:
 jmp xchain00152_n29_α
.Lx00163_0:
 .quad .Lx00163_0_s
.Lx00163_0_s:
 .string "q"
# IR_MOVE_LABEL
 xchain00152_n28_α:
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 376], rax
 lea rax, [rip + xchain00152_n17_α]
 mov qword ptr [r12 + 384], rax
 jmp xchain00152_n17_α
 xchain00152_n28_β:
 jmp xchain00152_n17_α
 xchain00152_n29_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00164_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00164_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00164_2
.Lx00164_1:
 call rt_faildescr@PLT
.Lx00164_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain00152_n29_β:
 jmp main_ω
.Lx00164_0:
 .quad .Lx00164_0_s
.Lx00164_0_s:
 .string "Term__"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00152_n30_α:
 jmp qword ptr [r12 + 384]
 xchain00152_n30_β:
 jmp xchain00152_n17_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 984]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 976]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 984]
pop r12
ret
