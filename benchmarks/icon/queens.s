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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1632], rax
 pop rsi
proc_q_α_body:
# IR_VAR_REF gva
 xchain0_n0_α:
 lea rdi, [rbx + 80]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n3_α
# IR_UNOP_TEST lv
 xchain0_n1_α:
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
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [r12 + 1616], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain0_n4_α
 xchain0_n2_β:
 jmp xchain0_n3_α
.Lx4_0:
 .quad 1
# IR_LIT_INTEGER
 xchain0_n3_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp proc_q_ω
.Lx5_0:
 .quad 0
# IR_ASSIGN_VAR write through variable
 xchain0_n4_α:
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
# IR_VAR_REF gva
 xchain0_n5_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_q_ω
# IR_LIT_INTEGER
 xchain0_n6_α:
 mov qword ptr [r12 + 1504], 6
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n11_α
.Lx9_0:
 .quad 2
# IR_LIT_INTEGER
 xchain0_n7_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp proc_q_ω
.Lx10_0:
 .quad 1
# IR_VAR gva
 xchain0_n8_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n11_α
# IR_VAR gva
 xchain0_n9_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n12_α
 xchain0_n9_β:
 jmp proc_q_ω
 xchain0_n10_α:
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
 jmp xchain0_n13_α
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
 je xchain0_n11_α
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
.Lx13_3:
 jmp xchain0_n13_α
 xchain0_n10_β:
 jmp xchain0_n11_α
# IR_LIT_INTEGER
 xchain0_n11_α:
 mov qword ptr [r12 + 1344], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain0_n14_α
 xchain0_n11_β:
 jmp xchain0_n18_α
.Lx14_0:
 .quad 2
# IR_TO
 xchain0_n12_α:
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 528], rax
.Lx16_0:
 mov rax, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 568]
 cmp rax, rcx
 jg proc_q_ω
 mov qword ptr [r12 + 512], 6
 mov qword ptr [r12 + 520], rax
 jmp xchain0_n15_α
 xchain0_n12_β:
 inc qword ptr [r12 + 528]
 jmp .Lx16_0
# IR_LIT_INTEGER
 xchain0_n13_α:
 mov qword ptr [r12 + 1536], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 1544], rax
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n11_α
.Lx17_0:
 .quad 1
# IR_VAR gva
 xchain0_n14_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp xchain0_n18_α
 xchain0_n15_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain0_n19_α
 xchain0_n15_β:
 jmp proc_q_ω
 xchain0_n16_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1488]
 cmp eax, 100
 je .Lx20_0
 mov eax, dword ptr [r12 + 1536]
 cmp eax, 100
 je .Lx20_0
 mov eax, dword ptr [r12 + 1488]
 cmp eax, 6
 jne .Lx20_2
 mov eax, dword ptr [r12 + 1536]
 cmp eax, 6
 jne .Lx20_2
.Lx20_1:
 mov rax, qword ptr [r12 + 1496]
 mov rcx, qword ptr [r12 + 1544]
 sub rax, rcx
 mov qword ptr [r12 + 1472], 6
 mov qword ptr [r12 + 1480], rax
 jmp xchain0_n20_α
.Lx20_0:
 mov rdi, qword ptr [r12 + 1488]
 mov rsi, qword ptr [r12 + 1496]
 mov rdx, qword ptr [r12 + 1536]
 mov rcx, qword ptr [r12 + 1544]
 mov r8d, 1
 lea r9, [r12 + 1472]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx20_3
.Lx20_2:
 mov rdi, qword ptr [r12 + 1488]
 mov rsi, qword ptr [r12 + 1496]
 mov rdx, qword ptr [r12 + 1536]
 mov rcx, qword ptr [r12 + 1544]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n11_α
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
.Lx20_3:
 jmp xchain0_n20_α
 xchain0_n16_β:
 jmp xchain0_n11_α
 xchain0_n17_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1344]
 cmp eax, 100
 je .Lx21_0
 mov eax, dword ptr [r12 + 1360]
 cmp eax, 100
 je .Lx21_0
 mov eax, dword ptr [r12 + 1344]
 cmp eax, 6
 jne .Lx21_2
 mov eax, dword ptr [r12 + 1360]
 cmp eax, 6
 jne .Lx21_2
.Lx21_1:
 mov rax, qword ptr [r12 + 1352]
 mov rcx, qword ptr [r12 + 1368]
 imul rax, rcx
 mov qword ptr [r12 + 1328], 6
 mov qword ptr [r12 + 1336], rax
 jmp xchain0_n21_α
.Lx21_0:
 mov rdi, qword ptr [r12 + 1344]
 mov rsi, qword ptr [r12 + 1352]
 mov rdx, qword ptr [r12 + 1360]
 mov rcx, qword ptr [r12 + 1368]
 mov r8d, 2
 lea r9, [r12 + 1328]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx21_3
.Lx21_2:
 mov rdi, qword ptr [r12 + 1344]
 mov rsi, qword ptr [r12 + 1352]
 mov rdx, qword ptr [r12 + 1360]
 mov rcx, qword ptr [r12 + 1368]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n18_α
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
.Lx21_3:
 jmp xchain0_n21_α
 xchain0_n17_β:
 jmp xchain0_n18_α
# IR_VAR gva
 xchain0_n18_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain0_n22_α
 xchain0_n18_β:
 jmp xchain0_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n19_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_q_ω
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain0_n23_α
 xchain0_n19_β:
 jmp proc_q_ω
# IR_LIT_INTEGER
 xchain0_n20_α:
 mov qword ptr [r12 + 1552], 6
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [r12 + 1560], rax
 jmp xchain0_n24_α
 xchain0_n20_β:
 jmp xchain0_n11_α
.Lx24_0:
 .quad 0
# IR_LIT_INTEGER
 xchain0_n21_α:
 mov qword ptr [r12 + 1376], 6
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain0_n25_α
 xchain0_n21_β:
 jmp xchain0_n18_α
.Lx25_0:
 .quad 1
# IR_LIT_INTEGER
 xchain0_n22_α:
 mov qword ptr [r12 + 1232], 6
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [r12 + 1240], rax
 jmp xchain0_n26_α
 xchain0_n22_β:
 jmp xchain0_n3_α
.Lx26_0:
 .quad 0
# IR_DEREF variable -> value
 xchain0_n23_α:
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 call rt_deref@PLT
 cmp eax, 99
 je proc_q_ω
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain0_n27_α
 xchain0_n23_β:
 jmp proc_q_ω
 xchain0_n24_α:
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
  .Lrkfn29: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn29]
 lea rsi, [r12 + 1440]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 cmp eax, 99
 je xchain0_n11_α
 jmp xchain0_n28_α
 xchain0_n24_β:
 jmp xchain0_n11_α
 xchain0_n25_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1328]
 cmp eax, 100
 je .Lx30_0
 mov eax, dword ptr [r12 + 1376]
 cmp eax, 100
 je .Lx30_0
 mov eax, dword ptr [r12 + 1328]
 cmp eax, 6
 jne .Lx30_2
 mov eax, dword ptr [r12 + 1376]
 cmp eax, 6
 jne .Lx30_2
.Lx30_1:
 mov rax, qword ptr [r12 + 1336]
 mov rcx, qword ptr [r12 + 1384]
 sub rax, rcx
 mov qword ptr [r12 + 1312], 6
 mov qword ptr [r12 + 1320], rax
 jmp xchain0_n29_α
.Lx30_0:
 mov rdi, qword ptr [r12 + 1328]
 mov rsi, qword ptr [r12 + 1336]
 mov rdx, qword ptr [r12 + 1376]
 mov rcx, qword ptr [r12 + 1384]
 mov r8d, 1
 lea r9, [r12 + 1312]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx30_3
.Lx30_2:
 mov rdi, qword ptr [r12 + 1328]
 mov rsi, qword ptr [r12 + 1336]
 mov rdx, qword ptr [r12 + 1376]
 mov rcx, qword ptr [r12 + 1384]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n18_α
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
.Lx30_3:
 jmp xchain0_n29_α
 xchain0_n25_β:
 jmp xchain0_n18_α
 xchain0_n26_α:
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
  .Lrkfn32: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn32]
 lea rsi, [r12 + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n30_α
 xchain0_n26_β:
 jmp xchain0_n3_α
 xchain0_n27_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 464]
 cmp eax, 100
 je .Lx33_0
 mov eax, dword ptr [r12 + 592]
 cmp eax, 100
 je .Lx33_0
 mov eax, dword ptr [r12 + 464]
 cmp eax, 6
 jne .Lx33_2
 mov eax, dword ptr [r12 + 592]
 cmp eax, 6
 jne .Lx33_2
.Lx33_1:
 mov rax, qword ptr [r12 + 472]
 mov rcx, qword ptr [r12 + 600]
 cmp rax, rcx
 jne xchain0_n12_β
 mov rcx, qword ptr [r12 + 592]
 mov qword ptr [r12 + 448], rcx
 mov rcx, qword ptr [r12 + 600]
 mov qword ptr [r12 + 456], rcx
 jmp xchain0_n31_α
.Lx33_0:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 592]
 mov rcx, qword ptr [r12 + 600]
 mov r8d, 9
 lea r9, [r12 + 448]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx33_1
 cmp eax, 1
 je xchain0_n12_β
 jmp xchain0_n31_α
.Lx33_2:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 592]
 mov rcx, qword ptr [r12 + 600]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n12_β
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 456], rax
 jmp xchain0_n31_α
 xchain0_n27_β:
 jmp xchain0_n12_β
# IR_ASSIGN gva
 xchain0_n28_α:
 mov rax, qword ptr [r12 + 1424]
 mov rdx, qword ptr [r12 + 1432]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain0_n11_α
 xchain0_n28_β:
 jmp xchain0_n11_α
# IR_LIT_INTEGER
 xchain0_n29_α:
 mov qword ptr [r12 + 1392], 6
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain0_n32_α
 xchain0_n29_β:
 jmp xchain0_n18_α
.Lx35_0:
 .quad 0
# IR_ASSIGN gva
 xchain0_n30_α:
 mov rax, qword ptr [r12 + 1168]
 mov rdx, qword ptr [r12 + 1176]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain0_n33_α
 xchain0_n30_β:
 jmp xchain0_n3_α
# IR_VAR_REF gva
 xchain0_n31_α:
 lea rdi, [rbx + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain0_n34_α
 xchain0_n31_β:
 jmp xchain0_n12_β
 xchain0_n32_α:
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
 je xchain0_n18_α
 jmp xchain0_n35_α
 xchain0_n32_β:
 jmp xchain0_n18_α
 xchain0_n33_α:
 jmp xchain0_n36_α
xchain0_n33_β:
 jmp xchain0_n3_α
# IR_VAR gva
 xchain0_n34_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain0_n37_α
 xchain0_n34_β:
 jmp xchain0_n12_β
# IR_ASSIGN gva
 xchain0_n35_α:
 mov rax, qword ptr [r12 + 1264]
 mov rdx, qword ptr [r12 + 1272]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain0_n18_α
 xchain0_n35_β:
 jmp xchain0_n18_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n36_α:
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rax
 lea rax, [rip + xchain0_n3_α]
 mov qword ptr [r12 + 1136], rax
 jmp xchain0_n3_α
 xchain0_n36_β:
 jmp xchain0_n3_α
# IR_VAR
 xchain0_n37_α:
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 680], rax
 jmp xchain0_n39_α
 xchain0_n37_β:
 jmp xchain0_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n38_α:
 jmp qword ptr [r12 + 1136]
 xchain0_n38_β:
 jmp xchain0_n3_α
 xchain0_n39_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 656]
 cmp eax, 100
 je .Lx50_0
 mov eax, dword ptr [r12 + 1648]
 cmp eax, 100
 je .Lx50_0
 mov eax, dword ptr [r12 + 656]
 cmp eax, 6
 jne .Lx50_2
 mov eax, dword ptr [r12 + 1648]
 cmp eax, 6
 jne .Lx50_2
.Lx50_1:
 mov rax, qword ptr [r12 + 664]
 mov rcx, qword ptr [r12 + 1656]
 add rax, rcx
 mov qword ptr [r12 + 640], 6
 mov qword ptr [r12 + 648], rax
 jmp xchain0_n40_α
.Lx50_0:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 1648]
 mov rcx, qword ptr [r12 + 1656]
 mov r8d, 0
 lea r9, [r12 + 640]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx50_3
.Lx50_2:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 1648]
 mov rcx, qword ptr [r12 + 1656]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
.Lx50_3:
 jmp xchain0_n40_α
 xchain0_n39_β:
 jmp xchain0_n12_β
# IR_VAR
 xchain0_n40_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 696], rax
 jmp xchain0_n41_α
 xchain0_n40_β:
 jmp xchain0_n12_β
 xchain0_n41_α:
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
 je xchain0_n12_β
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
.Lx53_3:
 jmp xchain0_n42_α
 xchain0_n41_β:
 jmp xchain0_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain0_n42_α:
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 mov rdx, qword ptr [r12 + 624]
 mov rcx, qword ptr [r12 + 632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain0_n43_α
 xchain0_n42_β:
 jmp xchain0_n12_β
# IR_DEREF variable -> value
 xchain0_n43_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain0_n44_α
 xchain0_n43_β:
 jmp xchain0_n12_β
 xchain0_n44_α:
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
 jne xchain0_n12_β
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
 je xchain0_n12_β
 jmp xchain0_n45_α
.Lx56_2:
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 720]
 mov rcx, qword ptr [r12 + 728]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n12_β
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 440], rax
 jmp xchain0_n45_α
 xchain0_n44_β:
 jmp xchain0_n12_β
# IR_VAR_REF gva
 xchain0_n45_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain0_n46_α
 xchain0_n45_β:
 jmp xchain0_n12_β
# IR_VAR
 xchain0_n46_α:
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 792], rax
 jmp xchain0_n47_α
 xchain0_n46_β:
 jmp xchain0_n12_β
# IR_VAR
 xchain0_n47_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 808], rax
 jmp xchain0_n48_α
 xchain0_n47_β:
 jmp xchain0_n12_β
 xchain0_n48_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1648]
 cmp eax, 100
 je .Lx63_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx63_0
 mov eax, dword ptr [r12 + 1648]
 cmp eax, 6
 jne .Lx63_2
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx63_2
.Lx63_1:
 mov rax, qword ptr [r12 + 1656]
 mov rcx, qword ptr [r12 + 24]
 add rax, rcx
 mov qword ptr [r12 + 768], 6
 mov qword ptr [r12 + 776], rax
 jmp xchain0_n49_α
.Lx63_0:
 mov rdi, qword ptr [r12 + 1648]
 mov rsi, qword ptr [r12 + 1656]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 0
 lea r9, [r12 + 768]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx63_3
.Lx63_2:
 mov rdi, qword ptr [r12 + 1648]
 mov rsi, qword ptr [r12 + 1656]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
.Lx63_3:
 jmp xchain0_n49_α
 xchain0_n48_β:
 jmp xchain0_n12_β
# IR_LIT_INTEGER
 xchain0_n49_α:
 mov qword ptr [r12 + 816], 6
 mov rax, qword ptr [rip + .Lx64_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain0_n50_α
 xchain0_n49_β:
 jmp xchain0_n12_β
.Lx64_0:
 .quad 1
 xchain0_n50_α:
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
 je xchain0_n12_β
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
.Lx65_3:
 jmp xchain0_n51_α
 xchain0_n50_β:
 jmp xchain0_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain0_n51_α:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain0_n52_α
 xchain0_n51_β:
 jmp xchain0_n12_β
# IR_DEREF variable -> value
 xchain0_n52_α:
 mov rdi, qword ptr [r12 + 832]
 mov rsi, qword ptr [r12 + 840]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain0_n53_α
 xchain0_n52_β:
 jmp xchain0_n12_β
 xchain0_n53_α:
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
 jne xchain0_n12_β
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
 je xchain0_n12_β
 jmp xchain0_n54_α
.Lx68_2:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 848]
 mov rcx, qword ptr [r12 + 856]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n12_β
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 424], rax
 jmp xchain0_n54_α
 xchain0_n53_β:
 jmp xchain0_n12_β
# IR_VAR_REF gva
 xchain0_n54_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain0_n55_α
 xchain0_n54_β:
 jmp xchain0_n12_β
# IR_VAR
 xchain0_n55_α:
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n56_α
 xchain0_n55_β:
 jmp xchain0_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain0_n56_α:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 56]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain0_n57_α
 xchain0_n56_β:
 jmp xchain0_n12_β
# IR_VAR_REF gva
 xchain0_n57_α:
 lea rdi, [rbx + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain0_n58_α
 xchain0_n57_β:
 jmp xchain0_n12_β
# IR_VAR gva
 xchain0_n58_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain0_n59_α
 xchain0_n58_β:
 jmp xchain0_n12_β
# IR_VAR
 xchain0_n59_α:
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n60_α
 xchain0_n59_β:
 jmp xchain0_n12_β
 xchain0_n60_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 160]
 cmp eax, 100
 je .Lx79_0
 mov eax, dword ptr [r12 + 1648]
 cmp eax, 100
 je .Lx79_0
 mov eax, dword ptr [r12 + 160]
 cmp eax, 6
 jne .Lx79_2
 mov eax, dword ptr [r12 + 1648]
 cmp eax, 6
 jne .Lx79_2
.Lx79_1:
 mov rax, qword ptr [r12 + 168]
 mov rcx, qword ptr [r12 + 1656]
 add rax, rcx
 mov qword ptr [r12 + 144], 6
 mov qword ptr [r12 + 152], rax
 jmp xchain0_n61_α
.Lx79_0:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 1648]
 mov rcx, qword ptr [r12 + 1656]
 mov r8d, 0
 lea r9, [r12 + 144]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx79_3
.Lx79_2:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 1648]
 mov rcx, qword ptr [r12 + 1656]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
.Lx79_3:
 jmp xchain0_n61_α
 xchain0_n60_β:
 jmp xchain0_n12_β
# IR_VAR
 xchain0_n61_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain0_n62_α
 xchain0_n61_β:
 jmp xchain0_n12_β
 xchain0_n62_α:
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
 je xchain0_n12_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
.Lx82_3:
 jmp xchain0_n63_α
 xchain0_n62_β:
 jmp xchain0_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain0_n63_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n64_α
 xchain0_n63_β:
 jmp xchain0_n12_β
# IR_VAR_REF gva
 xchain0_n64_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n65_α
 xchain0_n64_β:
 jmp xchain0_n12_β
# IR_VAR
 xchain0_n65_α:
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 312], rax
 jmp xchain0_n66_α
 xchain0_n65_β:
 jmp xchain0_n12_β
# IR_VAR
 xchain0_n66_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 328], rax
 jmp xchain0_n67_α
 xchain0_n66_β:
 jmp xchain0_n12_β
 xchain0_n67_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1648]
 cmp eax, 100
 je .Lx90_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx90_0
 mov eax, dword ptr [r12 + 1648]
 cmp eax, 6
 jne .Lx90_2
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx90_2
.Lx90_1:
 mov rax, qword ptr [r12 + 1656]
 mov rcx, qword ptr [r12 + 24]
 add rax, rcx
 mov qword ptr [r12 + 288], 6
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n68_α
.Lx90_0:
 mov rdi, qword ptr [r12 + 1648]
 mov rsi, qword ptr [r12 + 1656]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 0
 lea r9, [r12 + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx90_3
.Lx90_2:
 mov rdi, qword ptr [r12 + 1648]
 mov rsi, qword ptr [r12 + 1656]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
.Lx90_3:
 jmp xchain0_n68_α
 xchain0_n67_β:
 jmp xchain0_n12_β
# IR_LIT_INTEGER
 xchain0_n68_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain0_n69_α
 xchain0_n68_β:
 jmp xchain0_n12_β
.Lx91_0:
 .quad 1
 xchain0_n69_α:
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
 je xchain0_n12_β
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
.Lx92_3:
 jmp xchain0_n70_α
 xchain0_n69_β:
 jmp xchain0_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain0_n70_α:
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n12_β
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n71_α
 xchain0_n70_β:
 jmp xchain0_n12_β
# IR_LIT_INTEGER
 xchain0_n71_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx94_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain0_n72_α
 xchain0_n71_β:
 jmp xchain0_n12_β
.Lx94_0:
 .quad 1
# IR_REV_ASSIGN_VAR x[i]<-v: deref-save old, write new, suspend; restore on resume
 xchain0_n72_α:
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
 je xchain0_n12_β
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n73_α
 xchain0_n72_β:
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 call rt_assign_var@PLT
 jmp xchain0_n12_β
# IR_REV_ASSIGN_VAR x[i]<-v: deref-save old, write new, suspend; restore on resume
 xchain0_n73_α:
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
# IR_REV_ASSIGN_VAR x[i]<-v: deref-save old, write new, suspend; restore on resume
 xchain0_n74_α:
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
# IR_VAR_REF gva
 xchain0_n76_α:
 lea rdi, [rbx + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain0_n77_α
 xchain0_n76_β:
 jmp xchain0_n79_α
# IR_VAR
 xchain0_n77_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1064], rax
 jmp xchain0_n78_α
 xchain0_n77_β:
 jmp xchain0_n79_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n78_α:
 mov rdi, qword ptr [r12 + 1040]
 mov rsi, qword ptr [r12 + 1048]
 mov rdx, qword ptr [r12 + 1056]
 mov rcx, qword ptr [r12 + 1064]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n79_α
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain0_n80_α
 xchain0_n78_β:
 jmp xchain0_n79_α
# IR_VAR
 xchain0_n79_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1016], rax
 jmp xchain0_n81_α
 xchain0_n79_β:
 jmp xchain0_n82_α
# IR_VAR
 xchain0_n80_α:
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 1112], rax
 jmp xchain0_n83_α
 xchain0_n80_β:
 jmp xchain0_n79_α
# IR_VAR gva
 xchain0_n81_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain0_n84_α
 xchain0_n81_β:
 jmp xchain0_n82_α
# IR_VAR
 xchain0_n82_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 968], rax
 jmp xchain0_n85_α
 xchain0_n82_β:
 jmp xchain0_n74_β
# IR_ASSIGN_VAR write through variable
 xchain0_n83_α:
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 mov rdx, qword ptr [r12 + 1104]
 mov rcx, qword ptr [r12 + 1112]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n79_α
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain0_n79_α
 xchain0_n83_β:
 jmp xchain0_n79_α
 xchain0_n84_α:
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
 jne xchain0_n82_α
 mov rcx, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rcx
 mov rcx, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rcx
 jmp xchain0_n86_α
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
 je xchain0_n82_α
 jmp xchain0_n86_α
.Lx00001_2:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 1024]
 mov rcx, qword ptr [r12 + 1032]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n82_α
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
 jmp xchain0_n86_α
 xchain0_n84_β:
 jmp xchain0_n82_α
# IR_LIT_INTEGER
 xchain0_n85_α:
 mov qword ptr [r12 + 976], 6
 mov rax, qword ptr [rip + .Lx00002_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain0_n87_α
 xchain0_n85_β:
 jmp xchain0_n74_β
.Lx00002_0:
 .quad 1
 xchain0_n86_α:
  .section .rodata
  .Lcall87_pname: .string "show"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall87_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain0_n74_β
 jmp xchain0_n88_α
xchain0_n86_β:
 jmp xchain0_n74_β
 xchain0_n87_α:
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
 jmp xchain0_n89_α
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
 jmp xchain0_n89_α
 xchain0_n87_β:
 jmp xchain0_n74_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n88_α:
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 872], rax
 lea rax, [rip + xchain0_n74_β]
 mov qword ptr [r12 + 880], rax
 jmp xchain0_n90_α
 xchain0_n88_β:
 jmp xchain0_n74_β
 xchain0_n89_α:
  .section .rodata
  .Lcall90_pname: .string "q"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 944]
 mov rdx, qword ptr [r12 + 952]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall90_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain0_n74_β
 jmp xchain0_n92_α
xchain0_n89_β:
 jmp xchain0_n74_β
 xchain0_n90_α:
 jmp xchain0_n74_β
xchain0_n90_β:
 jmp xchain0_n74_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n91_α:
 jmp qword ptr [r12 + 880]
 xchain0_n91_β:
 jmp xchain0_n74_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n92_α:
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 872], rax
 lea rax, [rip + xchain0_n74_β]
 mov qword ptr [r12 + 880], rax
 jmp xchain0_n90_α
 xchain0_n92_β:
 jmp xchain0_n74_β
proc_q_β:
jmp proc_q_ω
proc_q_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1632]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1008], rax
 pop rsi
proc_show_α_body:
# IR_VAR_REF gva
 xchain00004_n0_α:
 lea rdi, [rbx + 144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain00004_n1_α
 xchain00004_n0_β:
 jmp xchain00004_n3_α
# IR_UNOP_TEST lv
 xchain00004_n1_α:
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
# IR_LIT_INTEGER
 xchain00004_n2_α:
 mov qword ptr [r12 + 992], 6
 mov rax, qword ptr [rip + .Lx00005_0]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00004_n4_α
 xchain00004_n2_β:
 jmp xchain00004_n3_α
.Lx00005_0:
 .quad 1
# IR_LIT_STRING
 xchain00004_n3_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx00006_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain00004_n5_α
 xchain00004_n3_β:
 jmp xchain00004_n8_α
.Lx00006_0:
 .quad .Lx00006_0_s
.Lx00006_0_s:
 .string "solution: "
# IR_ASSIGN_VAR write through variable
 xchain00004_n4_α:
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
# IR_VAR gva
 xchain00004_n5_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00004_n7_α
 xchain00004_n5_β:
 jmp xchain00004_n8_α
# IR_LIT_INTEGER
 xchain00004_n6_α:
 mov qword ptr [r12 + 928], 6
 mov rax, qword ptr [rip + .Lx00007_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain00004_n9_α
 xchain00004_n6_β:
 jmp xchain00004_n12_α
.Lx00007_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00004_n7_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx00008_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00004_n10_α
 xchain00004_n7_β:
 jmp xchain00004_n8_α
.Lx00008_0:
 .quad 1
# IR_LIT_STRING
 xchain00004_n8_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx00009_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain00004_n11_α
 xchain00004_n8_β:
 jmp xchain00004_n15_α
.Lx00009_0:
 .quad .Lx00009_0_s
.Lx00009_0_s:
 .string "  "
# IR_ASSIGN gva
 xchain00004_n9_α:
 mov rax, qword ptr [r12 + 928]
 mov rdx, qword ptr [r12 + 936]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain00004_n12_α
 xchain00004_n9_β:
 jmp xchain00004_n12_α
 xchain00004_n10_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 592]
 cmp eax, 100
 je .Lx00010_0
 mov eax, dword ptr [r12 + 608]
 cmp eax, 100
 je .Lx00010_0
 mov eax, dword ptr [r12 + 592]
 cmp eax, 6
 jne .Lx00010_2
 mov eax, dword ptr [r12 + 608]
 cmp eax, 6
 jne .Lx00010_2
.Lx00010_1:
 mov rax, qword ptr [r12 + 600]
 mov rcx, qword ptr [r12 + 616]
 add rax, rcx
 mov qword ptr [r12 + 576], 6
 mov qword ptr [r12 + 584], rax
 jmp xchain00004_n13_α
.Lx00010_0:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 0
 lea r9, [r12 + 576]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00010_3
.Lx00010_2:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00004_n8_α
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
.Lx00010_3:
 jmp xchain00004_n13_α
 xchain00004_n10_β:
 jmp xchain00004_n8_α
# IR_VAR gva
 xchain00004_n11_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00004_n14_α
 xchain00004_n11_β:
 jmp xchain00004_n15_α
# IR_LIT_STRING
 xchain00004_n12_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx00011_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain00004_n16_α
 xchain00004_n12_β:
 jmp xchain00004_n20_α
.Lx00011_0:
 .quad .Lx00011_0_s
.Lx00011_0_s:
 .string "|   "
# IR_ASSIGN gva
 xchain00004_n13_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00004_n17_α
 xchain00004_n13_β:
 jmp xchain00004_n8_α
 xchain00004_n14_α:
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
  .Lrkfn141: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn141]
 lea rsi, [r12 + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain00004_n15_α
 jmp xchain00004_n15_α
 xchain00004_n14_β:
 jmp xchain00004_n15_α
# IR_VAR_REF gva
 xchain00004_n15_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00004_n18_α
 xchain00004_n15_β:
 jmp xchain00004_n25_α
# IR_VAR gva
 xchain00004_n16_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00004_n19_α
 xchain00004_n16_β:
 jmp xchain00004_n20_α
 xchain00004_n17_α:
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
  .Lrkfn146: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn146]
 lea rsi, [r12 + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain00004_n8_α
 jmp xchain00004_n8_α
 xchain00004_n17_β:
 jmp xchain00004_n8_α
# IR_LIT_INTEGER
 xchain00004_n18_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx00012_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain00004_n21_α
 xchain00004_n18_β:
 jmp xchain00004_n25_α
.Lx00012_0:
 .quad 4
 xchain00004_n19_α:
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
  .Lrkfn149: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn149]
 lea rsi, [r12 + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain00004_n20_α
 jmp xchain00004_n22_α
 xchain00004_n19_β:
 jmp xchain00004_n20_α
# IR_LIT_STRING
 xchain00004_n20_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx00013_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00004_n23_α
 xchain00004_n20_β:
 jmp xchain00004_n3_α
.Lx00013_0:
 .quad .Lx00013_0_s
.Lx00013_0_s:
 .string "----"
# IR_VAR gva
 xchain00004_n21_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00004_n24_α
 xchain00004_n21_β:
 jmp xchain00004_n25_α
# IR_LIT_STRING
 xchain00004_n22_α:
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx00014_0]
 mov qword ptr [r12 + 904], rax
 jmp xchain00004_n26_α
 xchain00004_n22_β:
 jmp xchain00004_n20_α
.Lx00014_0:
 .quad .Lx00014_0_s
.Lx00014_0_s:
 .string "|"
# IR_VAR gva
 xchain00004_n23_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00004_n27_α
 xchain00004_n23_β:
 jmp xchain00004_n3_α
# IR_LIST_BANG
 xchain00004_n24_α:
 mov qword ptr [r12 + 128], 0
.Lx00015_0:
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 mov rdx, qword ptr [r12 + 128]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp rax, 99
 je xchain00004_n25_α
 jmp xchain00004_n28_α
 xchain00004_n24_β:
 inc qword ptr [r12 + 128]
 jmp .Lx00015_0
 xchain00004_n25_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn157: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn157]
 lea rsi, [r12 + 32]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je proc_show_ω
 jmp proc_show_γ
 xchain00004_n25_β:
 jmp proc_show_ω
 xchain00004_n26_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 816]
 mov rsi, qword ptr [r12 + 824]
 mov rdx, qword ptr [r12 + 896]
 mov rcx, qword ptr [r12 + 904]
 call str_concat_d@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00004_n29_α
 xchain00004_n26_β:
 jmp xchain00004_n20_α
 xchain00004_n27_α:
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
  .Lrkfn160: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn160]
 lea rsi, [r12 + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain00004_n3_α
 jmp xchain00004_n30_α
 xchain00004_n27_β:
 jmp xchain00004_n3_α
# IR_LIT_INTEGER
 xchain00004_n28_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00016_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00004_n31_α
 xchain00004_n28_β:
 jmp xchain00004_n24_β
.Lx00016_0:
 .quad 1
# IR_ASSIGN gva
 xchain00004_n29_α:
 mov rax, qword ptr [r12 + 800]
 mov rdx, qword ptr [r12 + 808]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00004_n20_α
 xchain00004_n29_β:
 jmp xchain00004_n20_α
# IR_LIT_STRING
 xchain00004_n30_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx00017_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain00004_n32_α
 xchain00004_n30_β:
 jmp xchain00004_n3_α
.Lx00017_0:
 .quad .Lx00017_0_s
.Lx00017_0_s:
 .string "-"
 xchain00004_n31_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 112]
 cmp eax, 100
 je .Lx00018_0
 mov eax, dword ptr [r12 + 160]
 cmp eax, 100
 je .Lx00018_0
 mov eax, dword ptr [r12 + 112]
 cmp eax, 6
 jne .Lx00018_2
 mov eax, dword ptr [r12 + 160]
 cmp eax, 6
 jne .Lx00018_2
.Lx00018_1:
 mov rax, qword ptr [r12 + 120]
 mov rcx, qword ptr [r12 + 168]
 sub rax, rcx
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00004_n33_α
.Lx00018_0:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 mov r8d, 1
 lea r9, [r12 + 96]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00018_3
.Lx00018_2:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00004_n25_α
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
.Lx00018_3:
 jmp xchain00004_n33_α
 xchain00004_n31_β:
 jmp xchain00004_n25_α
 xchain00004_n32_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 call str_concat_d@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00004_n34_α
 xchain00004_n32_β:
 jmp xchain00004_n3_α
 xchain00004_n33_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 80]
 cmp eax, 100
 je .Lx00019_0
 mov eax, dword ptr [r12 + 96]
 cmp eax, 100
 je .Lx00019_0
 mov eax, dword ptr [r12 + 80]
 cmp eax, 6
 jne .Lx00019_2
 mov eax, dword ptr [r12 + 96]
 cmp eax, 6
 jne .Lx00019_2
.Lx00019_1:
 mov rax, qword ptr [r12 + 88]
 mov rcx, qword ptr [r12 + 104]
 imul rax, rcx
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00004_n35_α
.Lx00019_0:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 mov r8d, 2
 lea r9, [r12 + 64]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00019_3
.Lx00019_2:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00004_n25_α
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
.Lx00019_3:
 jmp xchain00004_n35_α
 xchain00004_n33_β:
 jmp xchain00004_n25_α
# IR_ASSIGN gva
 xchain00004_n34_α:
 mov rax, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 680]
 mov qword ptr [rbx + 128], rax
 mov qword ptr [rbx + 136], rdx
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain00004_n36_α
 xchain00004_n34_β:
 jmp xchain00004_n3_α
# IR_LIT_INTEGER
 xchain00004_n35_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00020_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00004_n37_α
 xchain00004_n35_β:
 jmp xchain00004_n24_β
.Lx00020_0:
 .quad 3
 xchain00004_n36_α:
 jmp xchain00004_n38_α
xchain00004_n36_β:
 jmp xchain00004_n3_α
 xchain00004_n37_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 64]
 cmp eax, 100
 je .Lx00021_0
 mov eax, dword ptr [r12 + 176]
 cmp eax, 100
 je .Lx00021_0
 mov eax, dword ptr [r12 + 64]
 cmp eax, 6
 jne .Lx00021_2
 mov eax, dword ptr [r12 + 176]
 cmp eax, 6
 jne .Lx00021_2
.Lx00021_1:
 mov rax, qword ptr [r12 + 72]
 mov rcx, qword ptr [r12 + 184]
 add rax, rcx
 mov qword ptr [r12 + 48], 6
 mov qword ptr [r12 + 56], rax
 jmp xchain00004_n39_α
.Lx00021_0:
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8d, 0
 lea r9, [r12 + 48]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00021_3
.Lx00021_2:
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00004_n25_α
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
.Lx00021_3:
 jmp xchain00004_n39_α
 xchain00004_n37_β:
 jmp xchain00004_n25_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00004_n38_α:
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rax
 lea rax, [rip + xchain00004_n3_α]
 mov qword ptr [r12 + 640], rax
 jmp xchain00004_n3_α
 xchain00004_n38_β:
 jmp xchain00004_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00004_n39_α:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 56]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00004_n25_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00004_n41_α
 xchain00004_n39_β:
 jmp xchain00004_n25_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00004_n40_α:
 jmp qword ptr [r12 + 640]
 xchain00004_n40_β:
 jmp xchain00004_n3_α
# IR_LIT_STRING
 xchain00004_n41_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00022_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00004_n42_α
 xchain00004_n41_β:
 jmp xchain00004_n24_β
.Lx00022_0:
 .quad .Lx00022_0_s
.Lx00022_0_s:
 .string "Q"
# IR_REV_ASSIGN_VAR x[i]<-v: deref-save old, write new, suspend; restore on resume
 xchain00004_n42_α:
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
 je xchain00004_n24_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00004_n43_α
 xchain00004_n42_β:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 call rt_assign_var@PLT
 jmp xchain00004_n24_β
# IR_LIT_STRING
 xchain00004_n43_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00023_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00004_n44_α
 xchain00004_n43_β:
 jmp xchain00004_n46_α
.Lx00023_0:
 .quad .Lx00023_0_s
.Lx00023_0_s:
 .string "  "
# IR_VAR gva
 xchain00004_n44_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00004_n45_α
 xchain00004_n44_β:
 jmp xchain00004_n46_α
 xchain00004_n45_α:
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
# IR_LIT_STRING
 xchain00004_n46_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx00024_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00004_n47_α
 xchain00004_n46_β:
 jmp xchain00004_n42_β
.Lx00024_0:
 .quad .Lx00024_0_s
.Lx00024_0_s:
 .string "  "
# IR_VAR gva
 xchain00004_n47_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00004_n48_α
 xchain00004_n47_β:
 jmp xchain00004_n42_β
 xchain00004_n48_α:
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
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1008]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 624], rax
 pop rsi
main_α_body:
 xchain00025_n0_α:
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
 je xchain00025_n1_α
 jmp xchain00025_n1_α
xchain00025_n0_β:
 jmp xchain00025_n1_α
# IR_VAR
 xchain00025_n1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 584], rax
 jmp xchain00025_n2_α
 xchain00025_n1_β:
 jmp xchain00025_n3_α
# IR_LIT_STRING
 xchain00025_n2_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx00026_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00025_n4_α
 xchain00025_n2_β:
 jmp xchain00025_n3_α
.Lx00026_0:
 .quad .Lx00026_0_s
.Lx00026_0_s:
 .string "n+"
# IR_VAR_REF local
 xchain00025_n3_α:
 lea rdi, [r12 + 640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00025_n5_α
 xchain00025_n3_β:
 jmp xchain00025_n9_α
 xchain00025_n4_α:
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
  .Lbynamefn196: .string "options"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn196]
 lea rsi, [r12 + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain00025_n3_α
 jmp xchain00025_n6_α
xchain00025_n4_β:
 jmp xchain00025_n3_α
# IR_LIT_STRING
 xchain00025_n5_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx00027_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain00025_n7_α
 xchain00025_n5_β:
 jmp xchain00025_n9_α
.Lx00027_0:
 .quad .Lx00027_0_s
.Lx00027_0_s:
 .string "n"
 xchain00025_n6_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00025_n3_α
 xchain00025_n6_β:
 jmp xchain00025_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00025_n7_α:
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00025_n9_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00025_n8_α
 xchain00025_n7_β:
 jmp xchain00025_n9_α
# IR_DEREF variable -> value
 xchain00025_n8_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00025_n9_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00025_n10_α
 xchain00025_n8_β:
 jmp xchain00025_n9_α
# IR_LIT_INTEGER
 xchain00025_n9_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00028_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00025_n11_α
 xchain00025_n9_β:
 jmp xchain00025_n14_α
.Lx00028_0:
 .quad 6
# IR_UNOP
 xchain00025_n10_α:
 mov eax, dword ptr [r12 + 496]
 cmp eax, 99
 je xchain00025_n9_α
 cmp eax, 0
 je xchain00025_n9_α
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 440], rax
 jmp xchain00025_n12_α
 xchain00025_n10_β:
 jmp xchain00025_n9_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00025_n11_α:
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
 lea rax, [rip + xchain00025_n14_α]
 mov qword ptr [r12 + 400], rax
 jmp xchain00025_n13_α
 xchain00025_n11_β:
 jmp xchain00025_n14_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00025_n12_α:
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 392], rax
 lea rax, [rip + xchain00025_n9_α]
 mov qword ptr [r12 + 400], rax
 jmp xchain00025_n13_α
 xchain00025_n12_β:
 jmp xchain00025_n14_α
# IR_ASSIGN gva
 xchain00025_n13_α:
 mov rax, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00025_n14_α
 xchain00025_n13_β:
 jmp xchain00025_n14_α
# IR_VAR gva
 xchain00025_n14_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00025_n16_α
 xchain00025_n14_β:
 jmp xchain00025_n17_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00025_n15_α:
 jmp qword ptr [r12 + 400]
 xchain00025_n15_β:
 jmp xchain00025_n14_α
# IR_LIT_INTEGER
 xchain00025_n16_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx00029_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00025_n18_α
 xchain00025_n16_β:
 jmp xchain00025_n17_α
.Lx00029_0:
 .quad 0
# IR_VAR gva
 xchain00025_n17_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00025_n19_α
 xchain00025_n17_β:
 jmp xchain00025_n20_α
 xchain00025_n18_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 336]
 cmp eax, 100
 je .Lx00030_0
 mov eax, dword ptr [r12 + 352]
 cmp eax, 100
 je .Lx00030_0
 mov eax, dword ptr [r12 + 336]
 cmp eax, 6
 jne .Lx00030_2
 mov eax, dword ptr [r12 + 352]
 cmp eax, 6
 jne .Lx00030_2
.Lx00030_1:
 mov rax, qword ptr [r12 + 344]
 mov rcx, qword ptr [r12 + 360]
 cmp rax, rcx
 jg xchain00025_n17_α
 mov rcx, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rcx
 mov rcx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rcx
 jmp xchain00025_n21_α
.Lx00030_0:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 mov r8d, 6
 lea r9, [r12 + 320]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00030_1
 cmp eax, 1
 je xchain00025_n17_α
 jmp xchain00025_n21_α
.Lx00030_2:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 mov r8d, 6
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00025_n17_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
 jmp xchain00025_n21_α
 xchain00025_n18_β:
 jmp xchain00025_n17_α
 xchain00025_n19_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+224] -> [r12+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn215: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn215]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain00025_n20_α
 jmp xchain00025_n22_α
 xchain00025_n19_β:
 jmp xchain00025_n20_α
# IR_VAR gva
 xchain00025_n20_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00025_n23_α
 xchain00025_n20_β:
 jmp xchain00025_n24_α
# IR_LIT_STRING
 xchain00025_n21_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx00031_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00025_n25_α
 xchain00025_n21_β:
 jmp xchain00025_n17_α
.Lx00031_0:
 .quad .Lx00031_0_s
.Lx00031_0_s:
 .string "-n needs a positive numeric parameter"
# IR_ASSIGN gva
 xchain00025_n22_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00025_n20_α
 xchain00025_n22_β:
 jmp xchain00025_n20_α
# IR_LIT_STRING
 xchain00025_n23_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00032_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00025_n26_α
 xchain00025_n23_β:
 jmp xchain00025_n24_α
.Lx00032_0:
 .quad .Lx00032_0_s
.Lx00032_0_s:
 .string "-Queens:"
# IR_LIT_INTEGER
 xchain00025_n24_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx00033_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain00025_n27_α
 xchain00025_n24_β:
 jmp xchain00025_n29_α
.Lx00033_0:
 .quad 1
 xchain00025_n25_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+304] -> [r12+288]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn222: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn222]
 lea rsi, [r12 + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain00025_n17_α
 jmp xchain00025_n28_α
 xchain00025_n25_β:
 jmp xchain00025_n17_α
 xchain00025_n26_α:
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
  .Lrkfn224: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn224]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00025_n24_α
 jmp xchain00025_n24_α
 xchain00025_n26_β:
 jmp xchain00025_n24_α
 xchain00025_n27_α:
  .section .rodata
  .Lcall00034_pname: .string "q"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00034_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain00025_n29_α
 jmp xchain00025_n29_α
xchain00025_n27_β:
 jmp xchain00025_n29_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00025_n28_α:
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain00025_n17_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain00025_n17_α
 xchain00025_n28_β:
 jmp xchain00025_n17_α
 xchain00025_n29_α:
# BOX IR_CALL Term__(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn229: .string "Term__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn229]
 lea rsi, [r12 + 48]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain00025_n29_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00025_n30_α:
 jmp qword ptr [r12 + 256]
 xchain00025_n30_β:
 jmp xchain00025_n17_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 624]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
