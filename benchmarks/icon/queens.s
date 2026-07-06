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
proc_q_α_body:
xchain0_n0_α:
# IR_VAR_REF gva
bb1_α:
 lea rdi, [rbx + 80]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n3_α
xchain0_n1_α:
# IR_UNOP_TEST lv
bb2_α:
 mov eax, dword ptr [r12 + 1568]
 cmp eax, 99
 je xchain0_n3_α
 mov rdi, qword ptr [r12 + 1568]
 mov rsi, qword ptr [r12 + 1576]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n3_α
 cmp eax, 0
 jne xchain0_n3_α
 mov rax, qword ptr [r12 + 1568]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1576]
 mov qword ptr [r12 + 1592], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n3_α
xchain0_n2_α:
# IR_LIT_INTEGER
bb3_α:
 mov qword ptr [r12 + 1616], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain0_n4_α
 xchain0_n2_β:
 jmp xchain0_n3_α
.Lx4_0:
 .quad 1
xchain0_n3_α:
# IR_LIT_INTEGER
bb4_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp proc_q_ω
.Lx5_0:
 .quad 0
xchain0_n4_α:
# IR_ASSIGN_VAR write through variable
bb5_α:
 mov rdi, qword ptr [r12 + 1584]
 mov rsi, qword ptr [r12 + 1592]
 mov rdx, qword ptr [r12 + 1616]
 mov rcx, qword ptr [r12 + 1624]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n3_α
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n3_α
xchain0_n5_α:
# IR_VAR_REF gva
bb6_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_q_ω
xchain0_n6_α:
# IR_LIT_INTEGER
bb7_α:
 mov qword ptr [r12 + 1504], 6
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n13_α
.Lx9_0:
 .quad 2
xchain0_n7_α:
# IR_LIT_INTEGER
bb8_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp proc_q_ω
.Lx10_0:
 .quad 1
xchain0_n8_α:
# IR_VAR gva
bb9_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n13_α
xchain0_n9_α:
# IR_VAR gva
bb10_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp proc_q_ω
xchain0_n10_α:
bb11_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1504]
 cmp eax, 100
 je .Lx13_0
 mov eax, dword ptr [r12 + 1520]
 cmp eax, 100
 je .Lx13_0
 mov eax, dword ptr [r12 + 1504]
 cmp eax, 6
 jne .Lx13_2
 mov eax, dword ptr [r12 + 1520]
 cmp eax, 6
 jne .Lx13_2
.Lx13_1:
 mov rax, qword ptr [r12 + 1512]
 mov rcx, qword ptr [r12 + 1528]
 imul rax, rcx
 mov qword ptr [r12 + 1488], 6
 mov qword ptr [r12 + 1496], rax
 jmp xchain0_n12_α
.Lx13_0:
 mov rdi, qword ptr [r12 + 1504]
 mov rsi, qword ptr [r12 + 1512]
 mov rdx, qword ptr [r12 + 1520]
 mov rcx, qword ptr [r12 + 1528]
 mov r8d, 2
 lea r9, [r12 + 1488]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx13_3
.Lx13_2:
 mov rdi, qword ptr [r12 + 1504]
 mov rsi, qword ptr [r12 + 1512]
 mov rdx, qword ptr [r12 + 1520]
 mov rcx, qword ptr [r12 + 1528]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n13_α
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
.Lx13_3:
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n13_α
xchain0_n11_α:
# IR_TO
bb12_α:
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 528], rax
.Lx15_0:
 mov rax, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 568]
 cmp rax, rcx
 jg proc_q_ω
 mov qword ptr [r12 + 512], 6
 mov qword ptr [r12 + 520], rax
 jmp xchain0_n14_α
 xchain0_n11_β:
 inc qword ptr [r12 + 528]
 jmp .Lx15_0
xchain0_n12_α:
# IR_LIT_INTEGER
bb13_α:
 mov qword ptr [r12 + 1536], 6
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 1544], rax
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n13_α
.Lx16_0:
 .quad 1
xchain0_n13_α:
# IR_LIT_INTEGER
bb14_α:
 mov qword ptr [r12 + 1344], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n23_α
.Lx17_0:
 .quad 2
xchain0_n14_α:
bb15_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp proc_q_ω
xchain0_n15_α:
bb16_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1488]
 cmp eax, 100
 je .Lx19_0
 mov eax, dword ptr [r12 + 1536]
 cmp eax, 100
 je .Lx19_0
 mov eax, dword ptr [r12 + 1488]
 cmp eax, 6
 jne .Lx19_2
 mov eax, dword ptr [r12 + 1536]
 cmp eax, 6
 jne .Lx19_2
.Lx19_1:
 mov rax, qword ptr [r12 + 1496]
 mov rcx, qword ptr [r12 + 1544]
 sub rax, rcx
 mov qword ptr [r12 + 1472], 6
 mov qword ptr [r12 + 1480], rax
 jmp xchain0_n18_α
.Lx19_0:
 mov rdi, qword ptr [r12 + 1488]
 mov rsi, qword ptr [r12 + 1496]
 mov rdx, qword ptr [r12 + 1536]
 mov rcx, qword ptr [r12 + 1544]
 mov r8d, 1
 lea r9, [r12 + 1472]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx19_3
.Lx19_2:
 mov rdi, qword ptr [r12 + 1488]
 mov rsi, qword ptr [r12 + 1496]
 mov rdx, qword ptr [r12 + 1536]
 mov rcx, qword ptr [r12 + 1544]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n13_α
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
.Lx19_3:
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n13_α
xchain0_n16_α:
# IR_VAR gva
bb17_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain0_n19_α
 xchain0_n16_β:
 jmp xchain0_n23_α
xchain0_n17_α:
# IR_SUBSCRIPT x[i] variable
bb18_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_q_ω
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain0_n20_α
 xchain0_n17_β:
 jmp proc_q_ω
xchain0_n18_α:
# IR_LIT_INTEGER
bb19_α:
 mov qword ptr [r12 + 1552], 6
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 1560], rax
 jmp xchain0_n21_α
 xchain0_n18_β:
 jmp xchain0_n13_α
.Lx22_0:
 .quad 0
xchain0_n19_α:
bb20_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1344]
 cmp eax, 100
 je .Lx23_0
 mov eax, dword ptr [r12 + 1360]
 cmp eax, 100
 je .Lx23_0
 mov eax, dword ptr [r12 + 1344]
 cmp eax, 6
 jne .Lx23_2
 mov eax, dword ptr [r12 + 1360]
 cmp eax, 6
 jne .Lx23_2
.Lx23_1:
 mov rax, qword ptr [r12 + 1352]
 mov rcx, qword ptr [r12 + 1368]
 imul rax, rcx
 mov qword ptr [r12 + 1328], 6
 mov qword ptr [r12 + 1336], rax
 jmp xchain0_n22_α
.Lx23_0:
 mov rdi, qword ptr [r12 + 1344]
 mov rsi, qword ptr [r12 + 1352]
 mov rdx, qword ptr [r12 + 1360]
 mov rcx, qword ptr [r12 + 1368]
 mov r8d, 2
 lea r9, [r12 + 1328]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx23_3
.Lx23_2:
 mov rdi, qword ptr [r12 + 1344]
 mov rsi, qword ptr [r12 + 1352]
 mov rdx, qword ptr [r12 + 1360]
 mov rcx, qword ptr [r12 + 1368]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n23_α
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
.Lx23_3:
 jmp xchain0_n22_α
 xchain0_n19_β:
 jmp xchain0_n23_α
xchain0_n20_α:
# IR_DEREF variable -> value
bb21_α:
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 call rt_deref@PLT
 cmp eax, 99
 je proc_q_ω
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain0_n24_α
 xchain0_n20_β:
 jmp proc_q_ω
xchain0_n21_α:
bb22_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1472] -> [r12+1440]
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 1448], rax
# marshal arg1 = producer-box slot [r12+1552] -> [r12+1456]
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 1464], rax
  .section .rodata
  .Lrkfn26: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn26]
 lea rsi, [r12 + 1440]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n25_α
 xchain0_n21_β:
 jmp xchain0_n13_α
xchain0_n22_α:
# IR_LIT_INTEGER
bb23_α:
 mov qword ptr [r12 + 1376], 6
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain0_n26_α
 xchain0_n22_β:
 jmp xchain0_n23_α
.Lx27_0:
 .quad 1
xchain0_n23_α:
# IR_VAR gva
bb24_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain0_n27_α
 xchain0_n23_β:
 jmp xchain0_n3_α
xchain0_n24_α:
bb25_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 464]
 cmp eax, 100
 je .Lx29_0
 mov eax, dword ptr [r12 + 592]
 cmp eax, 100
 je .Lx29_0
 mov eax, dword ptr [r12 + 464]
 cmp eax, 6
 jne .Lx29_2
 mov eax, dword ptr [r12 + 592]
 cmp eax, 6
 jne .Lx29_2
.Lx29_1:
 mov rax, qword ptr [r12 + 472]
 mov rcx, qword ptr [r12 + 600]
 cmp rax, rcx
 jne xchain0_n11_β
 mov rcx, qword ptr [r12 + 592]
 mov qword ptr [r12 + 448], rcx
 mov rcx, qword ptr [r12 + 600]
 mov qword ptr [r12 + 456], rcx
 jmp xchain0_n28_α
.Lx29_0:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 592]
 mov rcx, qword ptr [r12 + 600]
 mov r8d, 9
 lea r9, [r12 + 448]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx29_1
 cmp eax, 1
 je xchain0_n11_β
 jmp xchain0_n28_α
.Lx29_2:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 592]
 mov rcx, qword ptr [r12 + 600]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n11_β
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 456], rax
 jmp xchain0_n28_α
 xchain0_n24_β:
 jmp xchain0_n11_β
xchain0_n25_α:
# IR_ASSIGN gva
bb26_α:
 mov rax, qword ptr [r12 + 1424]
 mov rdx, qword ptr [r12 + 1432]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain0_n13_α
 xchain0_n25_β:
 jmp xchain0_n13_α
xchain0_n26_α:
bb27_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1328]
 cmp eax, 100
 je .Lx31_0
 mov eax, dword ptr [r12 + 1376]
 cmp eax, 100
 je .Lx31_0
 mov eax, dword ptr [r12 + 1328]
 cmp eax, 6
 jne .Lx31_2
 mov eax, dword ptr [r12 + 1376]
 cmp eax, 6
 jne .Lx31_2
.Lx31_1:
 mov rax, qword ptr [r12 + 1336]
 mov rcx, qword ptr [r12 + 1384]
 sub rax, rcx
 mov qword ptr [r12 + 1312], 6
 mov qword ptr [r12 + 1320], rax
 jmp xchain0_n29_α
.Lx31_0:
 mov rdi, qword ptr [r12 + 1328]
 mov rsi, qword ptr [r12 + 1336]
 mov rdx, qword ptr [r12 + 1376]
 mov rcx, qword ptr [r12 + 1384]
 mov r8d, 1
 lea r9, [r12 + 1312]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx31_3
.Lx31_2:
 mov rdi, qword ptr [r12 + 1328]
 mov rsi, qword ptr [r12 + 1336]
 mov rdx, qword ptr [r12 + 1376]
 mov rcx, qword ptr [r12 + 1384]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n23_α
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
.Lx31_3:
 jmp xchain0_n29_α
 xchain0_n26_β:
 jmp xchain0_n23_α
xchain0_n27_α:
# IR_LIT_INTEGER
bb28_α:
 mov qword ptr [r12 + 1232], 6
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [r12 + 1240], rax
 jmp xchain0_n30_α
 xchain0_n27_β:
 jmp xchain0_n3_α
.Lx32_0:
 .quad 0
xchain0_n28_α:
# IR_VAR_REF gva
bb29_α:
 lea rdi, [rbx + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain0_n31_α
 xchain0_n28_β:
 jmp xchain0_n11_β
xchain0_n29_α:
# IR_LIT_INTEGER
bb30_α:
 mov qword ptr [r12 + 1392], 6
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain0_n32_α
 xchain0_n29_β:
 jmp xchain0_n23_α
.Lx35_0:
 .quad 0
xchain0_n30_α:
bb31_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1216] -> [r12+1184]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1192], rax
# marshal arg1 = producer-box slot [r12+1232] -> [r12+1200]
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1208], rax
  .section .rodata
  .Lrkfn37: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn37]
 lea rsi, [r12 + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n33_α
 xchain0_n30_β:
 jmp xchain0_n3_α
xchain0_n31_α:
# IR_VAR gva
bb32_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain0_n34_α
 xchain0_n31_β:
 jmp xchain0_n11_β
xchain0_n32_α:
bb33_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1312] -> [r12+1280]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rax
# marshal arg1 = producer-box slot [r12+1392] -> [r12+1296]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1304], rax
  .section .rodata
  .Lrkfn40: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn40]
 lea rsi, [r12 + 1280]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 cmp eax, 99
 je xchain0_n23_α
 jmp xchain0_n35_α
 xchain0_n32_β:
 jmp xchain0_n23_α
xchain0_n33_α:
# IR_ASSIGN gva
bb34_α:
 mov rax, qword ptr [r12 + 1168]
 mov rdx, qword ptr [r12 + 1176]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain0_n36_α
 xchain0_n33_β:
 jmp xchain0_n3_α
xchain0_n34_α:
# IR_VAR
bb35_α:
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 680], rax
 jmp xchain0_n37_α
 xchain0_n34_β:
 jmp xchain0_n11_β
xchain0_n35_α:
# IR_ASSIGN gva
bb36_α:
 mov rax, qword ptr [r12 + 1264]
 mov rdx, qword ptr [r12 + 1272]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain0_n23_α
 xchain0_n35_β:
 jmp xchain0_n23_α
xchain0_n36_α:
 jmp xchain0_n38_α
xchain0_n36_β:
 jmp xchain0_n3_α
xchain0_n37_α:
bb38_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 656]
 cmp eax, 100
 je .Lx46_0
 mov eax, dword ptr [r12 + 1632]
 cmp eax, 100
 je .Lx46_0
 mov eax, dword ptr [r12 + 656]
 cmp eax, 6
 jne .Lx46_2
 mov eax, dword ptr [r12 + 1632]
 cmp eax, 6
 jne .Lx46_2
.Lx46_1:
 mov rax, qword ptr [r12 + 664]
 mov rcx, qword ptr [r12 + 1640]
 add rax, rcx
 mov qword ptr [r12 + 640], 6
 mov qword ptr [r12 + 648], rax
 jmp xchain0_n39_α
.Lx46_0:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 1632]
 mov rcx, qword ptr [r12 + 1640]
 mov r8d, 0
 lea r9, [r12 + 640]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx46_3
.Lx46_2:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 1632]
 mov rcx, qword ptr [r12 + 1640]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n11_β
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
.Lx46_3:
 jmp xchain0_n39_α
 xchain0_n37_β:
 jmp xchain0_n11_β
xchain0_n38_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb39_α:
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rax
 lea rax, [rip + xchain0_n3_α]
 mov qword ptr [r12 + 1136], rax
 jmp xchain0_n3_α
 xchain0_n38_β:
 jmp xchain0_n3_α
xchain0_n39_α:
# IR_VAR
bb40_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 696], rax
 jmp xchain0_n41_α
 xchain0_n39_β:
 jmp xchain0_n11_β
xchain0_n40_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb41_α:
 jmp qword ptr [r12 + 1136]
 xchain0_n40_β:
 jmp xchain0_n3_α
xchain0_n41_α:
bb42_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 640]
 cmp eax, 100
 je .Lx53_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx53_0
 mov eax, dword ptr [r12 + 640]
 cmp eax, 6
 jne .Lx53_2
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx53_2
.Lx53_1:
 mov rax, qword ptr [r12 + 648]
 mov rcx, qword ptr [r12 + 24]
 sub rax, rcx
 mov qword ptr [r12 + 624], 6
 mov qword ptr [r12 + 632], rax
 jmp xchain0_n42_α
.Lx53_0:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 1
 lea r9, [r12 + 624]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx53_3
.Lx53_2:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n11_β
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
.Lx53_3:
 jmp xchain0_n42_α
 xchain0_n41_β:
 jmp xchain0_n11_β
xchain0_n42_α:
# IR_SUBSCRIPT x[i] variable
bb43_α:
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 mov rdx, qword ptr [r12 + 624]
 mov rcx, qword ptr [r12 + 632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n11_β
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain0_n43_α
 xchain0_n42_β:
 jmp xchain0_n11_β
xchain0_n43_α:
# IR_DEREF variable -> value
bb44_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n11_β
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain0_n44_α
 xchain0_n43_β:
 jmp xchain0_n11_β
xchain0_n44_α:
bb45_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 448]
 cmp eax, 100
 je .Lx56_0
 mov eax, dword ptr [r12 + 720]
 cmp eax, 100
 je .Lx56_0
 mov eax, dword ptr [r12 + 448]
 cmp eax, 6
 jne .Lx56_2
 mov eax, dword ptr [r12 + 720]
 cmp eax, 6
 jne .Lx56_2
.Lx56_1:
 mov rax, qword ptr [r12 + 456]
 mov rcx, qword ptr [r12 + 728]
 cmp rax, rcx
 jne xchain0_n11_β
 mov rcx, qword ptr [r12 + 720]
 mov qword ptr [r12 + 432], rcx
 mov rcx, qword ptr [r12 + 728]
 mov qword ptr [r12 + 440], rcx
 jmp xchain0_n45_α
.Lx56_0:
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 720]
 mov rcx, qword ptr [r12 + 728]
 mov r8d, 9
 lea r9, [r12 + 432]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx56_1
 cmp eax, 1
 je xchain0_n11_β
 jmp xchain0_n45_α
.Lx56_2:
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 720]
 mov rcx, qword ptr [r12 + 728]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n11_β
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 440], rax
 jmp xchain0_n45_α
 xchain0_n44_β:
 jmp xchain0_n11_β
xchain0_n45_α:
# IR_VAR_REF gva
bb46_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain0_n46_α
 xchain0_n45_β:
 jmp xchain0_n11_β
xchain0_n46_α:
# IR_VAR
bb47_α:
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 792], rax
 jmp xchain0_n47_α
 xchain0_n46_β:
 jmp xchain0_n11_β
xchain0_n47_α:
# IR_VAR
bb48_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 808], rax
 jmp xchain0_n48_α
 xchain0_n47_β:
 jmp xchain0_n11_β
xchain0_n48_α:
bb49_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1632]
 cmp eax, 100
 je .Lx63_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx63_0
 mov eax, dword ptr [r12 + 1632]
 cmp eax, 6
 jne .Lx63_2
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx63_2
.Lx63_1:
 mov rax, qword ptr [r12 + 1640]
 mov rcx, qword ptr [r12 + 24]
 add rax, rcx
 mov qword ptr [r12 + 768], 6
 mov qword ptr [r12 + 776], rax
 jmp xchain0_n49_α
.Lx63_0:
 mov rdi, qword ptr [r12 + 1632]
 mov rsi, qword ptr [r12 + 1640]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 0
 lea r9, [r12 + 768]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx63_3
.Lx63_2:
 mov rdi, qword ptr [r12 + 1632]
 mov rsi, qword ptr [r12 + 1640]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n11_β
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
.Lx63_3:
 jmp xchain0_n49_α
 xchain0_n48_β:
 jmp xchain0_n11_β
xchain0_n49_α:
# IR_LIT_INTEGER
bb50_α:
 mov qword ptr [r12 + 816], 6
 mov rax, qword ptr [rip + .Lx64_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain0_n50_α
 xchain0_n49_β:
 jmp xchain0_n11_β
.Lx64_0:
 .quad 1
xchain0_n50_α:
bb51_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 768]
 cmp eax, 100
 je .Lx65_0
 mov eax, dword ptr [r12 + 816]
 cmp eax, 100
 je .Lx65_0
 mov eax, dword ptr [r12 + 768]
 cmp eax, 6
 jne .Lx65_2
 mov eax, dword ptr [r12 + 816]
 cmp eax, 6
 jne .Lx65_2
.Lx65_1:
 mov rax, qword ptr [r12 + 776]
 mov rcx, qword ptr [r12 + 824]
 sub rax, rcx
 mov qword ptr [r12 + 752], 6
 mov qword ptr [r12 + 760], rax
 jmp xchain0_n51_α
.Lx65_0:
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 mov rdx, qword ptr [r12 + 816]
 mov rcx, qword ptr [r12 + 824]
 mov r8d, 1
 lea r9, [r12 + 752]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx65_3
.Lx65_2:
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 mov rdx, qword ptr [r12 + 816]
 mov rcx, qword ptr [r12 + 824]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n11_β
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
.Lx65_3:
 jmp xchain0_n51_α
 xchain0_n50_β:
 jmp xchain0_n11_β
xchain0_n51_α:
# IR_SUBSCRIPT x[i] variable
bb52_α:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n11_β
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain0_n52_α
 xchain0_n51_β:
 jmp xchain0_n11_β
xchain0_n52_α:
# IR_DEREF variable -> value
bb53_α:
 mov rdi, qword ptr [r12 + 832]
 mov rsi, qword ptr [r12 + 840]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n11_β
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain0_n53_α
 xchain0_n52_β:
 jmp xchain0_n11_β
xchain0_n53_α:
bb54_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 432]
 cmp eax, 100
 je .Lx68_0
 mov eax, dword ptr [r12 + 848]
 cmp eax, 100
 je .Lx68_0
 mov eax, dword ptr [r12 + 432]
 cmp eax, 6
 jne .Lx68_2
 mov eax, dword ptr [r12 + 848]
 cmp eax, 6
 jne .Lx68_2
.Lx68_1:
 mov rax, qword ptr [r12 + 440]
 mov rcx, qword ptr [r12 + 856]
 cmp rax, rcx
 jne xchain0_n11_β
 mov rcx, qword ptr [r12 + 848]
 mov qword ptr [r12 + 416], rcx
 mov rcx, qword ptr [r12 + 856]
 mov qword ptr [r12 + 424], rcx
 jmp xchain0_n54_α
.Lx68_0:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 848]
 mov rcx, qword ptr [r12 + 856]
 mov r8d, 9
 lea r9, [r12 + 416]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx68_1
 cmp eax, 1
 je xchain0_n11_β
 jmp xchain0_n54_α
.Lx68_2:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 848]
 mov rcx, qword ptr [r12 + 856]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n11_β
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 424], rax
 jmp xchain0_n54_α
 xchain0_n53_β:
 jmp xchain0_n11_β
xchain0_n54_α:
# IR_VAR_REF gva
bb55_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain0_n55_α
 xchain0_n54_β:
 jmp xchain0_n11_β
xchain0_n55_α:
# IR_VAR
bb56_α:
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n56_α
 xchain0_n55_β:
 jmp xchain0_n11_β
xchain0_n56_α:
# IR_SUBSCRIPT x[i] variable
bb57_α:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 56]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n11_β
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain0_n57_α
 xchain0_n56_β:
 jmp xchain0_n11_β
xchain0_n57_α:
# IR_VAR_REF gva
bb58_α:
 lea rdi, [rbx + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain0_n58_α
 xchain0_n57_β:
 jmp xchain0_n11_β
xchain0_n58_α:
# IR_VAR gva
bb59_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain0_n59_α
 xchain0_n58_β:
 jmp xchain0_n11_β
xchain0_n59_α:
# IR_VAR
bb60_α:
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n60_α
 xchain0_n59_β:
 jmp xchain0_n11_β
xchain0_n60_α:
bb61_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 160]
 cmp eax, 100
 je .Lx79_0
 mov eax, dword ptr [r12 + 1632]
 cmp eax, 100
 je .Lx79_0
 mov eax, dword ptr [r12 + 160]
 cmp eax, 6
 jne .Lx79_2
 mov eax, dword ptr [r12 + 1632]
 cmp eax, 6
 jne .Lx79_2
.Lx79_1:
 mov rax, qword ptr [r12 + 168]
 mov rcx, qword ptr [r12 + 1640]
 add rax, rcx
 mov qword ptr [r12 + 144], 6
 mov qword ptr [r12 + 152], rax
 jmp xchain0_n61_α
.Lx79_0:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 1632]
 mov rcx, qword ptr [r12 + 1640]
 mov r8d, 0
 lea r9, [r12 + 144]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx79_3
.Lx79_2:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 1632]
 mov rcx, qword ptr [r12 + 1640]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n11_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
.Lx79_3:
 jmp xchain0_n61_α
 xchain0_n60_β:
 jmp xchain0_n11_β
xchain0_n61_α:
# IR_VAR
bb62_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain0_n62_α
 xchain0_n61_β:
 jmp xchain0_n11_β
xchain0_n62_α:
bb63_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 144]
 cmp eax, 100
 je .Lx82_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx82_0
 mov eax, dword ptr [r12 + 144]
 cmp eax, 6
 jne .Lx82_2
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx82_2
.Lx82_1:
 mov rax, qword ptr [r12 + 152]
 mov rcx, qword ptr [r12 + 24]
 sub rax, rcx
 mov qword ptr [r12 + 128], 6
 mov qword ptr [r12 + 136], rax
 jmp xchain0_n63_α
.Lx82_0:
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 1
 lea r9, [r12 + 128]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx82_3
.Lx82_2:
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n11_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
.Lx82_3:
 jmp xchain0_n63_α
 xchain0_n62_β:
 jmp xchain0_n11_β
xchain0_n63_α:
# IR_SUBSCRIPT x[i] variable
bb64_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n11_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n64_α
 xchain0_n63_β:
 jmp xchain0_n11_β
xchain0_n64_α:
# IR_VAR_REF gva
bb65_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n65_α
 xchain0_n64_β:
 jmp xchain0_n11_β
xchain0_n65_α:
# IR_VAR
bb66_α:
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 312], rax
 jmp xchain0_n66_α
 xchain0_n65_β:
 jmp xchain0_n11_β
xchain0_n66_α:
# IR_VAR
bb67_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 328], rax
 jmp xchain0_n67_α
 xchain0_n66_β:
 jmp xchain0_n11_β
xchain0_n67_α:
bb68_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1632]
 cmp eax, 100
 je .Lx90_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx90_0
 mov eax, dword ptr [r12 + 1632]
 cmp eax, 6
 jne .Lx90_2
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx90_2
.Lx90_1:
 mov rax, qword ptr [r12 + 1640]
 mov rcx, qword ptr [r12 + 24]
 add rax, rcx
 mov qword ptr [r12 + 288], 6
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n68_α
.Lx90_0:
 mov rdi, qword ptr [r12 + 1632]
 mov rsi, qword ptr [r12 + 1640]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 0
 lea r9, [r12 + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx90_3
.Lx90_2:
 mov rdi, qword ptr [r12 + 1632]
 mov rsi, qword ptr [r12 + 1640]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n11_β
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
.Lx90_3:
 jmp xchain0_n68_α
 xchain0_n67_β:
 jmp xchain0_n11_β
xchain0_n68_α:
# IR_LIT_INTEGER
bb69_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain0_n69_α
 xchain0_n68_β:
 jmp xchain0_n11_β
.Lx91_0:
 .quad 1
xchain0_n69_α:
bb70_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 288]
 cmp eax, 100
 je .Lx92_0
 mov eax, dword ptr [r12 + 336]
 cmp eax, 100
 je .Lx92_0
 mov eax, dword ptr [r12 + 288]
 cmp eax, 6
 jne .Lx92_2
 mov eax, dword ptr [r12 + 336]
 cmp eax, 6
 jne .Lx92_2
.Lx92_1:
 mov rax, qword ptr [r12 + 296]
 mov rcx, qword ptr [r12 + 344]
 sub rax, rcx
 mov qword ptr [r12 + 272], 6
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n70_α
.Lx92_0:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 mov r8d, 1
 lea r9, [r12 + 272]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx92_3
.Lx92_2:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n11_β
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
.Lx92_3:
 jmp xchain0_n70_α
 xchain0_n69_β:
 jmp xchain0_n11_β
xchain0_n70_α:
# IR_SUBSCRIPT x[i] variable
bb71_α:
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n11_β
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n71_α
 xchain0_n70_β:
 jmp xchain0_n11_β
xchain0_n71_α:
# IR_LIT_INTEGER
bb72_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx94_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain0_n72_α
 xchain0_n71_β:
 jmp xchain0_n11_β
.Lx94_0:
 .quad 1
xchain0_n72_α:
# IR_REV_ASSIGN_VAR x[i]<-v: deref-save old, write new, suspend; restore on resume
bb73_α:
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_deref@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n11_β
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n73_α
 xchain0_n72_β:
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 call rt_assign_var@PLT
 jmp xchain0_n11_β
xchain0_n73_α:
# IR_REV_ASSIGN_VAR x[i]<-v: deref-save old, write new, suspend; restore on resume
bb74_α:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 call rt_deref@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n72_β
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n74_α
 xchain0_n73_β:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 call rt_assign_var@PLT
 jmp xchain0_n72_β
xchain0_n74_α:
# IR_REV_ASSIGN_VAR x[i]<-v: deref-save old, write new, suspend; restore on resume
bb75_α:
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 call rt_deref@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n73_β
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain0_n75_α
 xchain0_n74_β:
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 call rt_assign_var@PLT
 jmp xchain0_n73_β
xchain0_n75_α:
 jmp xchain0_n76_α
xchain0_n75_β:
 jmp proc_q_ω
xchain0_n76_α:
# IR_VAR_REF gva
bb77_α:
 lea rdi, [rbx + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain0_n77_α
 xchain0_n76_β:
 jmp xchain0_n80_α
xchain0_n77_α:
# IR_VAR
bb78_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1064], rax
 jmp xchain0_n78_α
 xchain0_n77_β:
 jmp xchain0_n80_α
xchain0_n78_α:
# IR_SUBSCRIPT x[i] variable
bb79_α:
 mov rdi, qword ptr [r12 + 1040]
 mov rsi, qword ptr [r12 + 1048]
 mov rdx, qword ptr [r12 + 1056]
 mov rcx, qword ptr [r12 + 1064]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n80_α
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain0_n79_α
 xchain0_n78_β:
 jmp xchain0_n80_α
xchain0_n79_α:
# IR_VAR
bb80_α:
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1112], rax
 jmp xchain0_n81_α
 xchain0_n79_β:
 jmp xchain0_n80_α
xchain0_n80_α:
# IR_VAR
bb81_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1016], rax
 jmp xchain0_n82_α
 xchain0_n80_β:
 jmp xchain0_n85_α
xchain0_n81_α:
# IR_ASSIGN_VAR write through variable
bb82_α:
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 mov rdx, qword ptr [r12 + 1104]
 mov rcx, qword ptr [r12 + 1112]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n80_α
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain0_n80_α
 xchain0_n81_β:
 jmp xchain0_n80_α
xchain0_n82_α:
# IR_VAR gva
bb83_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain0_n83_α
 xchain0_n82_β:
 jmp xchain0_n85_α
xchain0_n83_α:
bb84_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00001_0
 mov eax, dword ptr [r12 + 1024]
 cmp eax, 100
 je .Lx00001_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00001_2
 mov eax, dword ptr [r12 + 1024]
 cmp eax, 6
 jne .Lx00001_2
.Lx00001_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 1032]
 cmp rax, rcx
 jne xchain0_n85_α
 mov rcx, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rcx
 mov rcx, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rcx
 jmp xchain0_n84_α
.Lx00001_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 1024]
 mov rcx, qword ptr [r12 + 1032]
 mov r8d, 9
 lea r9, [r12 + 992]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00001_1
 cmp eax, 1
 je xchain0_n85_α
 jmp xchain0_n84_α
.Lx00001_2:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 1024]
 mov rcx, qword ptr [r12 + 1032]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n85_α
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
 jmp xchain0_n84_α
 xchain0_n83_β:
 jmp xchain0_n85_α
xchain0_n84_α:
bb85_α:
  .section .rodata
  .Lcall85_pname: .string "show"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall85_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain0_n74_β
 jmp xchain0_n86_α
xchain0_n84_β:
 jmp xchain0_n74_β
xchain0_n85_α:
# IR_VAR
bb86_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 968], rax
 jmp xchain0_n87_α
 xchain0_n85_β:
 jmp xchain0_n74_β
xchain0_n86_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb87_α:
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 872], rax
 lea rax, [rip + xchain0_n74_β]
 mov qword ptr [r12 + 880], rax
 jmp xchain0_n88_α
 xchain0_n86_β:
 jmp xchain0_n74_β
xchain0_n87_α:
# IR_LIT_INTEGER
bb88_α:
 mov qword ptr [r12 + 976], 6
 mov rax, qword ptr [rip + .Lx00002_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain0_n90_α
 xchain0_n87_β:
 jmp xchain0_n74_β
.Lx00002_0:
 .quad 1
xchain0_n88_α:
 jmp xchain0_n74_β
xchain0_n88_β:
 jmp xchain0_n74_β
xchain0_n89_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb90_α:
 jmp qword ptr [r12 + 880]
 xchain0_n89_β:
 jmp xchain0_n74_β
xchain0_n90_α:
bb91_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00003_0
 mov eax, dword ptr [r12 + 976]
 cmp eax, 100
 je .Lx00003_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00003_2
 mov eax, dword ptr [r12 + 976]
 cmp eax, 6
 jne .Lx00003_2
.Lx00003_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 984]
 add rax, rcx
 mov qword ptr [r12 + 944], 6
 mov qword ptr [r12 + 952], rax
 jmp xchain0_n91_α
.Lx00003_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 976]
 mov rcx, qword ptr [r12 + 984]
 mov r8d, 0
 lea r9, [r12 + 944]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00003_3
.Lx00003_2:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 976]
 mov rcx, qword ptr [r12 + 984]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n74_β
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
.Lx00003_3:
 jmp xchain0_n91_α
 xchain0_n90_β:
 jmp xchain0_n74_β
xchain0_n91_α:
bb92_α:
  .section .rodata
  .Lcall92_pname: .string "q"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 944]
 mov rdx, qword ptr [r12 + 952]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall92_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain0_n74_β
 jmp xchain0_n92_α
xchain0_n91_β:
 jmp xchain0_n74_β
xchain0_n92_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb93_α:
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 872], rax
 lea rax, [rip + xchain0_n74_β]
 mov qword ptr [r12 + 880], rax
 jmp xchain0_n88_α
 xchain0_n92_β:
 jmp xchain0_n74_β
proc_q_β:
jmp proc_q_ω
proc_q_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_q_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
proc_show_α_body:
xchain00004_n0_α:
# IR_VAR_REF gva
bb94_α:
 lea rdi, [rbx + 144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain00004_n1_α
 xchain00004_n0_β:
 jmp xchain00004_n3_α
xchain00004_n1_α:
# IR_UNOP_TEST lv
bb95_α:
 mov eax, dword ptr [r12 + 944]
 cmp eax, 99
 je xchain00004_n3_α
 mov rdi, qword ptr [r12 + 944]
 mov rsi, qword ptr [r12 + 952]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00004_n3_α
 cmp eax, 0
 jne xchain00004_n3_α
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 968], rax
 jmp xchain00004_n2_α
 xchain00004_n1_β:
 jmp xchain00004_n3_α
xchain00004_n2_α:
# IR_LIT_INTEGER
bb96_α:
 mov qword ptr [r12 + 992], 6
 mov rax, qword ptr [rip + .Lx00005_0]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00004_n4_α
 xchain00004_n2_β:
 jmp xchain00004_n3_α
.Lx00005_0:
 .quad 1
xchain00004_n3_α:
# IR_LIT_STRING
bb97_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx00006_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain00004_n5_α
 xchain00004_n3_β:
 jmp xchain00004_n12_α
.Lx00006_0:
 .quad .Lx00006_0_s
.Lx00006_0_s:
 .string "solution: "
xchain00004_n4_α:
# IR_ASSIGN_VAR write through variable
bb98_α:
 mov rdi, qword ptr [r12 + 960]
 mov rsi, qword ptr [r12 + 968]
 mov rdx, qword ptr [r12 + 992]
 mov rcx, qword ptr [r12 + 1000]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00004_n3_α
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain00004_n6_α
 xchain00004_n4_β:
 jmp xchain00004_n3_α
xchain00004_n5_α:
# IR_VAR gva
bb99_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00004_n7_α
 xchain00004_n5_β:
 jmp xchain00004_n12_α
xchain00004_n6_α:
# IR_LIT_INTEGER
bb00007_α:
 mov qword ptr [r12 + 928], 6
 mov rax, qword ptr [rip + .Lx00008_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain00004_n8_α
 xchain00004_n6_β:
 jmp xchain00004_n10_α
.Lx00008_0:
 .quad 0
xchain00004_n7_α:
# IR_LIT_INTEGER
bb00009_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx00010_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00004_n9_α
 xchain00004_n7_β:
 jmp xchain00004_n12_α
.Lx00010_0:
 .quad 1
xchain00004_n8_α:
# IR_ASSIGN gva
bb00011_α:
 mov rax, qword ptr [r12 + 928]
 mov rdx, qword ptr [r12 + 936]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain00004_n10_α
 xchain00004_n8_β:
 jmp xchain00004_n10_α
xchain00004_n9_α:
bb00012_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 592]
 cmp eax, 100
 je .Lx00013_0
 mov eax, dword ptr [r12 + 608]
 cmp eax, 100
 je .Lx00013_0
 mov eax, dword ptr [r12 + 592]
 cmp eax, 6
 jne .Lx00013_2
 mov eax, dword ptr [r12 + 608]
 cmp eax, 6
 jne .Lx00013_2
.Lx00013_1:
 mov rax, qword ptr [r12 + 600]
 mov rcx, qword ptr [r12 + 616]
 add rax, rcx
 mov qword ptr [r12 + 576], 6
 mov qword ptr [r12 + 584], rax
 jmp xchain00004_n11_α
.Lx00013_0:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 0
 lea r9, [r12 + 576]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00013_3
.Lx00013_2:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00004_n12_α
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
.Lx00013_3:
 jmp xchain00004_n11_α
 xchain00004_n9_β:
 jmp xchain00004_n12_α
xchain00004_n10_α:
# IR_LIT_STRING
bb00014_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx00015_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain00004_n13_α
 xchain00004_n10_β:
 jmp xchain00004_n19_α
.Lx00015_0:
 .quad .Lx00015_0_s
.Lx00015_0_s:
 .string "|   "
xchain00004_n11_α:
# IR_ASSIGN gva
bb00016_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00004_n14_α
 xchain00004_n11_β:
 jmp xchain00004_n12_α
xchain00004_n12_α:
# IR_LIT_STRING
bb00017_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx00018_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain00004_n15_α
 xchain00004_n12_β:
 jmp xchain00004_n20_α
.Lx00018_0:
 .quad .Lx00018_0_s
.Lx00018_0_s:
 .string "  "
xchain00004_n13_α:
# IR_VAR gva
bb00019_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00004_n16_α
 xchain00004_n13_β:
 jmp xchain00004_n19_α
xchain00004_n14_α:
bb00020_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+544] -> [r12+512]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [r12+560] -> [r12+528]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn141: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn141]
 lea rsi, [r12 + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain00004_n12_α
 jmp xchain00004_n12_α
 xchain00004_n14_β:
 jmp xchain00004_n12_α
xchain00004_n15_α:
# IR_VAR gva
bb00021_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00004_n17_α
 xchain00004_n15_β:
 jmp xchain00004_n20_α
xchain00004_n16_α:
bb00001_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+864] -> [r12+832]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
# marshal arg1 = producer-box slot [r12+880] -> [r12+848]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn144: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn144]
 lea rsi, [r12 + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain00004_n19_α
 jmp xchain00004_n18_α
 xchain00004_n16_β:
 jmp xchain00004_n19_α
xchain00004_n17_α:
bb00022_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+464] -> [r12+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
# marshal arg1 = producer-box slot [r12+480] -> [r12+448]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn146: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn146]
 lea rsi, [r12 + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain00004_n20_α
 jmp xchain00004_n20_α
 xchain00004_n17_β:
 jmp xchain00004_n20_α
xchain00004_n18_α:
# IR_LIT_STRING
bb00023_α:
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx00024_0]
 mov qword ptr [r12 + 904], rax
 jmp xchain00004_n21_α
 xchain00004_n18_β:
 jmp xchain00004_n19_α
.Lx00024_0:
 .quad .Lx00024_0_s
.Lx00024_0_s:
 .string "|"
xchain00004_n19_α:
# IR_LIT_STRING
bb00025_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx00026_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00004_n22_α
 xchain00004_n19_β:
 jmp xchain00004_n3_α
.Lx00026_0:
 .quad .Lx00026_0_s
.Lx00026_0_s:
 .string "----"
xchain00004_n20_α:
# IR_VAR_REF gva
bb00027_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00004_n23_α
 xchain00004_n20_β:
 jmp xchain00004_n35_α
xchain00004_n21_α:
bb00028_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 816]
 mov rsi, qword ptr [r12 + 824]
 mov rdx, qword ptr [r12 + 896]
 mov rcx, qword ptr [r12 + 904]
 call str_concat_d@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00004_n24_α
 xchain00004_n21_β:
 jmp xchain00004_n19_α
xchain00004_n22_α:
# IR_VAR gva
bb00002_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00004_n25_α
 xchain00004_n22_β:
 jmp xchain00004_n3_α
xchain00004_n23_α:
# IR_LIT_INTEGER
bb00029_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx00030_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain00004_n26_α
 xchain00004_n23_β:
 jmp xchain00004_n35_α
.Lx00030_0:
 .quad 4
xchain00004_n24_α:
# IR_ASSIGN gva
bb00031_α:
 mov rax, qword ptr [r12 + 800]
 mov rdx, qword ptr [r12 + 808]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00004_n19_α
 xchain00004_n24_β:
 jmp xchain00004_n19_α
xchain00004_n25_α:
bb00032_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+736] -> [r12+704]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [r12+752] -> [r12+720]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn156: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn156]
 lea rsi, [r12 + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain00004_n3_α
 jmp xchain00004_n27_α
 xchain00004_n25_β:
 jmp xchain00004_n3_α
xchain00004_n26_α:
# IR_VAR gva
bb00003_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00004_n28_α
 xchain00004_n26_β:
 jmp xchain00004_n35_α
xchain00004_n27_α:
# IR_LIT_STRING
bb00033_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx00034_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain00004_n29_α
 xchain00004_n27_β:
 jmp xchain00004_n3_α
.Lx00034_0:
 .quad .Lx00034_0_s
.Lx00034_0_s:
 .string "-"
xchain00004_n28_α:
# IR_LIST_BANG
bb00035_α:
 mov qword ptr [r12 + 128], 0
.Lx00036_0:
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 mov rdx, qword ptr [r12 + 128]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp rax, 99
 je xchain00004_n35_α
 jmp xchain00004_n30_α
 xchain00004_n28_β:
 inc qword ptr [r12 + 128]
 jmp .Lx00036_0
xchain00004_n29_α:
bb00037_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 call str_concat_d@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00004_n31_α
 xchain00004_n29_β:
 jmp xchain00004_n3_α
xchain00004_n30_α:
# IR_LIT_INTEGER
bb00004_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00038_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00004_n32_α
 xchain00004_n30_β:
 jmp xchain00004_n28_β
.Lx00038_0:
 .quad 1
xchain00004_n31_α:
# IR_ASSIGN gva
bb00039_α:
 mov rax, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 680]
 mov qword ptr [rbx + 128], rax
 mov qword ptr [rbx + 136], rdx
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain00004_n33_α
 xchain00004_n31_β:
 jmp xchain00004_n3_α
xchain00004_n32_α:
bb00040_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 112]
 cmp eax, 100
 je .Lx00041_0
 mov eax, dword ptr [r12 + 160]
 cmp eax, 100
 je .Lx00041_0
 mov eax, dword ptr [r12 + 112]
 cmp eax, 6
 jne .Lx00041_2
 mov eax, dword ptr [r12 + 160]
 cmp eax, 6
 jne .Lx00041_2
.Lx00041_1:
 mov rax, qword ptr [r12 + 120]
 mov rcx, qword ptr [r12 + 168]
 sub rax, rcx
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00004_n34_α
.Lx00041_0:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 mov r8d, 1
 lea r9, [r12 + 96]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00041_3
.Lx00041_2:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00004_n35_α
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
.Lx00041_3:
 jmp xchain00004_n34_α
 xchain00004_n32_β:
 jmp xchain00004_n35_α
xchain00004_n33_α:
 jmp xchain00004_n36_α
xchain00004_n33_β:
 jmp xchain00004_n3_α
xchain00004_n34_α:
bb00005_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 80]
 cmp eax, 100
 je .Lx00042_0
 mov eax, dword ptr [r12 + 96]
 cmp eax, 100
 je .Lx00042_0
 mov eax, dword ptr [r12 + 80]
 cmp eax, 6
 jne .Lx00042_2
 mov eax, dword ptr [r12 + 96]
 cmp eax, 6
 jne .Lx00042_2
.Lx00042_1:
 mov rax, qword ptr [r12 + 88]
 mov rcx, qword ptr [r12 + 104]
 imul rax, rcx
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00004_n37_α
.Lx00042_0:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 mov r8d, 2
 lea r9, [r12 + 64]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00042_3
.Lx00042_2:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00004_n35_α
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
.Lx00042_3:
 jmp xchain00004_n37_α
 xchain00004_n34_β:
 jmp xchain00004_n35_α
xchain00004_n35_α:
bb00006_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn168: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn168]
 lea rsi, [r12 + 32]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je proc_show_ω
 jmp proc_show_γ
 xchain00004_n35_β:
 jmp proc_show_ω
xchain00004_n36_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00043_α:
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rax
 lea rax, [rip + xchain00004_n3_α]
 mov qword ptr [r12 + 640], rax
 jmp xchain00004_n3_α
 xchain00004_n36_β:
 jmp xchain00004_n3_α
xchain00004_n37_α:
# IR_LIT_INTEGER
bb00044_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00045_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00004_n39_α
 xchain00004_n37_β:
 jmp xchain00004_n28_β
.Lx00045_0:
 .quad 3
xchain00004_n38_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00008_α:
 jmp qword ptr [r12 + 640]
 xchain00004_n38_β:
 jmp xchain00004_n3_α
xchain00004_n39_α:
bb00010_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 64]
 cmp eax, 100
 je .Lx00046_0
 mov eax, dword ptr [r12 + 176]
 cmp eax, 100
 je .Lx00046_0
 mov eax, dword ptr [r12 + 64]
 cmp eax, 6
 jne .Lx00046_2
 mov eax, dword ptr [r12 + 176]
 cmp eax, 6
 jne .Lx00046_2
.Lx00046_1:
 mov rax, qword ptr [r12 + 72]
 mov rcx, qword ptr [r12 + 184]
 add rax, rcx
 mov qword ptr [r12 + 48], 6
 mov qword ptr [r12 + 56], rax
 jmp xchain00004_n40_α
.Lx00046_0:
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8d, 0
 lea r9, [r12 + 48]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00046_3
.Lx00046_2:
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00004_n35_α
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
.Lx00046_3:
 jmp xchain00004_n40_α
 xchain00004_n39_β:
 jmp xchain00004_n35_α
xchain00004_n40_α:
# IR_SUBSCRIPT x[i] variable
bb00047_α:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 56]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00004_n35_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00004_n41_α
 xchain00004_n40_β:
 jmp xchain00004_n35_α
xchain00004_n41_α:
# IR_LIT_STRING
bb00013_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00048_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00004_n42_α
 xchain00004_n41_β:
 jmp xchain00004_n28_β
.Lx00048_0:
 .quad .Lx00048_0_s
.Lx00048_0_s:
 .string "Q"
xchain00004_n42_α:
# IR_REV_ASSIGN_VAR x[i]<-v: deref-save old, write new, suspend; restore on resume
bb00015_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00004_n28_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00004_n43_α
 xchain00004_n42_β:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 call rt_assign_var@PLT
 jmp xchain00004_n28_β
xchain00004_n43_α:
# IR_LIT_STRING
bb00049_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00050_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00004_n44_α
 xchain00004_n43_β:
 jmp xchain00004_n46_α
.Lx00050_0:
 .quad .Lx00050_0_s
.Lx00050_0_s:
 .string "  "
xchain00004_n44_α:
# IR_VAR gva
bb00018_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00004_n45_α
 xchain00004_n44_β:
 jmp xchain00004_n46_α
xchain00004_n45_α:
bb00051_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+384] -> [r12+352]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = producer-box slot [r12+400] -> [r12+368]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn181: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn181]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain00004_n46_α
 jmp xchain00004_n46_α
 xchain00004_n45_β:
 jmp xchain00004_n46_α
xchain00004_n46_α:
# IR_LIT_STRING
bb00052_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx00053_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00004_n47_α
 xchain00004_n46_β:
 jmp xchain00004_n42_β
.Lx00053_0:
 .quad .Lx00053_0_s
.Lx00053_0_s:
 .string "  "
xchain00004_n47_α:
# IR_VAR gva
bb00054_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00004_n48_α
 xchain00004_n47_β:
 jmp xchain00004_n42_β
xchain00004_n48_α:
bb00055_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+304] -> [r12+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [r12+320] -> [r12+288]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn185: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn185]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain00004_n42_β
 jmp xchain00004_n49_α
 xchain00004_n48_β:
 jmp xchain00004_n42_β
xchain00004_n49_α:
 jmp xchain00004_n42_β
xchain00004_n49_β:
 jmp xchain00004_n42_β
proc_show_β:
jmp proc_show_ω
proc_show_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_show_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
proc_startup:
  push rbp
  mov rbp, rsp
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
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "n"
  .Lgvan1: .string "solution"
  .Lgvan2: .string "q__STATIC__up"
  .Lgvan3: .string "q__STATIC__down"
  .Lgvan4: .string "q__STATIC__rows"
  .Lgvan5: .string "q__INITFLAG__0"
  .Lgvan6: .string "show__STATIC__count"
  .Lgvan7: .string "show__STATIC__line"
  .Lgvan8: .string "show__STATIC__border"
  .Lgvan9: .string "show__INITFLAG__0"
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
  .section .bss
  .align 16
__gva: .space 160, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  push rdi
  push rsi
  call proc_startup
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 10
  call gva_register@PLT
  mov rbx, rax
  call rt_frame@PLT
  mov rdi, rax
  push rdi
  sub rsp, 8
  mov rdi, qword ptr [rbp - 16]
  add rdi, 8
  mov esi, dword ptr [rbp - 8]
  sub esi, 1
  call rt_args_list_from@PLT
  add rsp, 8
  pop rdi
  mov qword ptr [rdi + 16], rax
  mov qword ptr [rdi + 24], rdx
  xor esi, esi
  call main_α
  xor eax, eax
  mov rsp, rbp
  pop rbp
  ret
main_α:
#=======================================================================================================================
    .global main_α
    .global main_β
    .global main_γ
    .global main_ω
push r12
  mov r12, rdi
main_α_body:
xchain00056_n0_α:
bb00057_α:
# BOX IR_CALL Init__(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn189: .string "Init__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn189]
 lea rsi, [r12 + 624]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain00056_n1_α
 jmp xchain00056_n1_α
xchain00056_n0_β:
 jmp xchain00056_n1_α
xchain00056_n1_α:
# IR_VAR
bb00058_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 584], rax
 jmp xchain00056_n2_α
 xchain00056_n1_β:
 jmp xchain00056_n5_α
xchain00056_n2_α:
# IR_LIT_STRING
bb00059_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx00060_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00056_n3_α
 xchain00056_n2_β:
 jmp xchain00056_n5_α
.Lx00060_0:
 .quad .Lx00060_0_s
.Lx00060_0_s:
 .string "n+"
xchain00056_n3_α:
bb00024_α:
# BOX IR_CALL options(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+576] -> [r12+544]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
# marshal arg1 = producer-box slot [r12+592] -> [r12+560]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lbynamefn194: .string "options"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn194]
 lea rsi, [r12 + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain00056_n5_α
 jmp xchain00056_n4_α
xchain00056_n3_β:
 jmp xchain00056_n5_α
xchain00056_n4_α:
bb00026_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00056_n5_α
 xchain00056_n4_β:
 jmp xchain00056_n5_α
xchain00056_n5_α:
# IR_VAR_REF local
bb00061_α:
 lea rdi, [r12 + 624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00056_n6_α
 xchain00056_n5_β:
 jmp xchain00056_n9_α
xchain00056_n6_α:
# IR_LIT_STRING
bb00062_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx00063_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain00056_n7_α
 xchain00056_n6_β:
 jmp xchain00056_n9_α
.Lx00063_0:
 .quad .Lx00063_0_s
.Lx00063_0_s:
 .string "n"
xchain00056_n7_α:
# IR_SUBSCRIPT x[i] variable
bb00064_α:
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00056_n9_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00056_n8_α
 xchain00056_n7_β:
 jmp xchain00056_n9_α
xchain00056_n8_α:
# IR_DEREF variable -> value
bb00065_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00056_n9_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00056_n10_α
 xchain00056_n8_β:
 jmp xchain00056_n9_α
xchain00056_n9_α:
# IR_LIT_INTEGER
bb00030_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00066_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00056_n11_α
 xchain00056_n9_β:
 jmp xchain00056_n14_α
.Lx00066_0:
 .quad 6
xchain00056_n10_α:
# IR_UNOP
bb00067_α:
 mov eax, dword ptr [r12 + 496]
 cmp eax, 99
 je xchain00056_n9_α
 cmp eax, 0
 je xchain00056_n9_α
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 440], rax
 jmp xchain00056_n12_α
 xchain00056_n10_β:
 jmp xchain00056_n9_α
xchain00056_n11_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00068_α:
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
 lea rax, [rip + xchain00056_n14_α]
 mov qword ptr [r12 + 400], rax
 jmp xchain00056_n13_α
 xchain00056_n11_β:
 jmp xchain00056_n14_α
xchain00056_n12_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00069_α:
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 392], rax
 lea rax, [rip + xchain00056_n9_α]
 mov qword ptr [r12 + 400], rax
 jmp xchain00056_n13_α
 xchain00056_n12_β:
 jmp xchain00056_n14_α
xchain00056_n13_α:
# IR_ASSIGN gva
bb00070_α:
 mov rax, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00056_n14_α
 xchain00056_n13_β:
 jmp xchain00056_n14_α
xchain00056_n14_α:
# IR_VAR gva
bb00034_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00056_n16_α
 xchain00056_n14_β:
 jmp xchain00056_n19_α
xchain00056_n15_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00071_α:
 jmp qword ptr [r12 + 400]
 xchain00056_n15_β:
 jmp xchain00056_n14_α
xchain00056_n16_α:
# IR_LIT_INTEGER
bb00036_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx00072_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00056_n17_α
 xchain00056_n16_β:
 jmp xchain00056_n19_α
.Lx00072_0:
 .quad 0
xchain00056_n17_α:
bb00073_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 336]
 cmp eax, 100
 je .Lx00074_0
 mov eax, dword ptr [r12 + 352]
 cmp eax, 100
 je .Lx00074_0
 mov eax, dword ptr [r12 + 336]
 cmp eax, 6
 jne .Lx00074_2
 mov eax, dword ptr [r12 + 352]
 cmp eax, 6
 jne .Lx00074_2
.Lx00074_1:
 mov rax, qword ptr [r12 + 344]
 mov rcx, qword ptr [r12 + 360]
 cmp rax, rcx
 jg xchain00056_n19_α
 mov rcx, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rcx
 mov rcx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rcx
 jmp xchain00056_n18_α
.Lx00074_0:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 mov r8d, 6
 lea r9, [r12 + 320]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00074_1
 cmp eax, 1
 je xchain00056_n19_α
 jmp xchain00056_n18_α
.Lx00074_2:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 mov r8d, 6
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00056_n19_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
 jmp xchain00056_n18_α
 xchain00056_n17_β:
 jmp xchain00056_n19_α
xchain00056_n18_α:
# IR_LIT_STRING
bb00038_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx00075_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00056_n20_α
 xchain00056_n18_β:
 jmp xchain00056_n19_α
.Lx00075_0:
 .quad .Lx00075_0_s
.Lx00075_0_s:
 .string "-n needs a positive numeric parameter"
xchain00056_n19_α:
# IR_VAR gva
bb00076_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00056_n21_α
 xchain00056_n19_β:
 jmp xchain00056_n24_α
xchain00056_n20_α:
bb00041_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+304] -> [r12+288]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn216: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn216]
 lea rsi, [r12 + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain00056_n19_α
 jmp xchain00056_n22_α
 xchain00056_n20_β:
 jmp xchain00056_n19_α
xchain00056_n21_α:
bb00077_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+224] -> [r12+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn218: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn218]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain00056_n24_α
 jmp xchain00056_n23_α
 xchain00056_n21_β:
 jmp xchain00056_n24_α
xchain00056_n22_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00042_α:
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain00056_n19_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain00056_n19_α
 xchain00056_n22_β:
 jmp xchain00056_n19_α
xchain00056_n23_α:
# IR_ASSIGN gva
bb00078_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00056_n24_α
 xchain00056_n23_β:
 jmp xchain00056_n24_α
xchain00056_n24_α:
# IR_VAR gva
bb00079_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00056_n26_α
 xchain00056_n24_β:
 jmp xchain00056_n28_α
xchain00056_n25_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00080_α:
 jmp qword ptr [r12 + 256]
 xchain00056_n25_β:
 jmp xchain00056_n19_α
xchain00056_n26_α:
# IR_LIT_STRING
bb00081_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00082_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00056_n27_α
 xchain00056_n26_β:
 jmp xchain00056_n28_α
.Lx00082_0:
 .quad .Lx00082_0_s
.Lx00082_0_s:
 .string "-Queens:"
xchain00056_n27_α:
bb00045_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn227: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn227]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00056_n28_α
 jmp xchain00056_n28_α
 xchain00056_n27_β:
 jmp xchain00056_n28_α
xchain00056_n28_α:
# IR_LIT_INTEGER
bb00083_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx00084_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain00056_n29_α
 xchain00056_n28_β:
 jmp xchain00056_n30_α
.Lx00084_0:
 .quad 1
xchain00056_n29_α:
bb00085_α:
  .section .rodata
  .Lcall00085_pname: .string "q"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00085_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain00056_n30_α
 jmp xchain00056_n30_α
xchain00056_n29_β:
 jmp xchain00056_n30_α
xchain00056_n30_α:
bb00046_α:
# BOX IR_CALL Term__(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn231: .string "Term__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn231]
 lea rsi, [r12 + 48]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain00056_n30_β:
 jmp main_ω
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
pop r12
ret
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
