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
  push rbp
  mov rbp, rsp
  sub rsp, 8
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
# IR_VAR_REF
 xchain0_n0_α:
 lea rdi, [rbx + 128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n3_α
# IR_NULLTEST_VAR
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
# IR_ASSIGN_VAR
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
# IR_VAR_REF
 xchain0_n5_α:
 lea rdi, [rbx + 112]
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
# IR_VAR
 xchain0_n8_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n11_α
# IR_VAR
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
# IR_VAR
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
# IR_VAR
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
 je xchain0_n12_β
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain0_n23_α
 xchain0_n19_β:
 jmp xchain0_n12_β
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
 je xchain0_n12_β
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain0_n27_α
 xchain0_n23_β:
 jmp xchain0_n12_β
 xchain0_n24_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1472] -> [zr+1440]
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 1448], rax
# marshal arg1 = producer-box slot [zr+1552] -> [zr+1456]
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
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1184]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1192], rax
# marshal arg1 = producer-box slot [zr+1232] -> [zr+1200]
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
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
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
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain0_n33_α
 xchain0_n30_β:
 jmp xchain0_n3_α
# IR_VAR_REF
 xchain0_n31_α:
 lea rdi, [rbx + 80]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain0_n34_α
 xchain0_n31_β:
 jmp xchain0_n12_β
 xchain0_n32_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1312] -> [zr+1280]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rax
# marshal arg1 = producer-box slot [zr+1392] -> [zr+1296]
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
# IR_VAR
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
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
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
# IR_VAR_REF
 xchain0_n45_α:
 lea rdi, [rbx + 96]
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
# IR_VAR_REF
 xchain0_n54_α:
 lea rdi, [rbx + 112]
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
# IR_VAR_REF
 xchain0_n57_α:
 lea rdi, [rbx + 80]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain0_n58_α
 xchain0_n57_β:
 jmp xchain0_n12_β
# IR_VAR
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
# IR_VAR_REF
 xchain0_n64_α:
 lea rdi, [rbx + 96]
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
# IR_VAR_REF
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
# IR_VAR
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
# IR_ASSIGN_VAR
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
  push rbp
  mov rbp, rsp
  sub rsp, 8
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
# IR_VAR_REF
 xchain00004_n0_α:
 lea rdi, [rbx + 192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain00004_n1_α
 xchain00004_n0_β:
 jmp xchain00004_n3_α
# IR_NULLTEST_VAR
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
# IR_ASSIGN_VAR
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
# IR_VAR
 xchain00004_n5_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
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
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rdx
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
# IR_VAR
 xchain00004_n11_α:
 mov rax, qword ptr [rbx + 176]
 mov rdx, qword ptr [rbx + 184]
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
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00004_n17_α
 xchain00004_n13_β:
 jmp xchain00004_n8_α
 xchain00004_n14_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+448]
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
# IR_VAR_REF
 xchain00004_n15_α:
 lea rdi, [rbx + 160]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00004_n18_α
 xchain00004_n15_β:
 jmp xchain00004_n25_α
# IR_VAR
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
# marshal arg0 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+528]
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
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+848]
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
# IR_VAR
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
# IR_VAR
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
 jmp proc_show_ω
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
# marshal arg0 = producer-box slot [zr+736] -> [zr+704]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+720]
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
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rdx
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
 mov qword ptr [rbx + 176], rax
 mov qword ptr [rbx + 184], rdx
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
 je xchain00004_n24_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00004_n41_α
 xchain00004_n39_β:
 jmp xchain00004_n24_β
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
# IR_VAR
 xchain00004_n44_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00004_n45_α
 xchain00004_n44_β:
 jmp xchain00004_n46_α
 xchain00004_n45_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+368]
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
# IR_VAR
 xchain00004_n47_α:
 mov rax, qword ptr [rbx + 176]
 mov rdx, qword ptr [rbx + 184]
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00004_n48_α
 xchain00004_n47_β:
 jmp xchain00004_n42_β
 xchain00004_n48_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+288]
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 2368], rax
 pop rsi
proc_options_α_body:
# IR_VAR_REF
 xchain00025_n0_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 jmp xchain00025_n1_α
 xchain00025_n0_β:
 jmp xchain00025_n3_α
# IR_NULLTEST_VAR
 xchain00025_n1_α:
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 99
 je xchain00025_n3_α
 mov rdi, qword ptr [r12 + 2272]
 mov rsi, qword ptr [r12 + 2280]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00025_n3_α
 cmp eax, 0
 jne xchain00025_n3_α
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 2288], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2296], rax
 jmp xchain00025_n2_α
 xchain00025_n1_β:
 jmp xchain00025_n3_α
# IR_LIT_CHARSET
 xchain00025_n2_α:
 mov qword ptr [r12 + 2352], 1
 mov dword ptr [r12 + 2356], -1
 mov rax, qword ptr [rip + .Lx00026_0]
 mov qword ptr [r12 + 2360], rax
 jmp xchain00025_n4_α
 xchain00025_n2_β:
 jmp xchain00025_n3_α
.Lx00026_0:
 .quad .Lx00026_0_s
.Lx00026_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00025_n3_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn193: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn193]
 lea rsi, [r12 + 2272]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 cmp eax, 99
 je xchain00025_n6_α
 jmp xchain00025_n5_α
 xchain00025_n3_β:
 jmp xchain00025_n6_α
 xchain00025_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2352] -> [zr+2336]
 mov rax, qword ptr [r12 + 2352]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 2360]
 mov qword ptr [r12 + 2344], rax
  .section .rodata
  .Lrkfn195: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn195]
 lea rsi, [r12 + 2336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 cmp eax, 99
 je xchain00025_n3_α
 jmp xchain00025_n7_α
 xchain00025_n4_β:
 jmp xchain00025_n3_α
 xchain00025_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2256]
 mov rdx, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain00025_n6_α
 xchain00025_n5_β:
 jmp xchain00025_n6_α
# IR_MAKE_LIST
 xchain00025_n6_α:
 lea rdi, [r12 + 2240]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 jmp xchain00025_n8_α
 xchain00025_n6_β:
 jmp xchain00025_n9_α
# IR_ASSIGN_VAR
 xchain00025_n7_α:
 mov rdi, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 mov rdx, qword ptr [r12 + 2320]
 mov rcx, qword ptr [r12 + 2328]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00025_n3_α
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 jmp xchain00025_n3_α
 xchain00025_n7_β:
 jmp xchain00025_n3_α
 xchain00025_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2224]
 mov rdx, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 jmp xchain00025_n9_α
 xchain00025_n8_β:
 jmp xchain00025_n9_α
# IR_VAR
 xchain00025_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00025_n10_α
 xchain00025_n9_β:
 jmp xchain00025_n11_α
 xchain00025_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn204: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn204]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain00025_n11_α
 jmp xchain00025_n12_α
 xchain00025_n10_β:
 jmp xchain00025_n11_α
# IR_VAR
 xchain00025_n11_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00025_n13_α
 xchain00025_n11_β:
 jmp xchain00025_n14_α
 xchain00025_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00025_n15_α
 xchain00025_n12_β:
 jmp xchain00025_n11_α
# IR_VAR
 xchain00025_n13_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 168], rax
 jmp xchain00025_n16_α
 xchain00025_n13_β:
 jmp xchain00025_n14_α
# IR_VAR
 xchain00025_n14_α:
 mov rax, qword ptr [r12 + 2384]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 56], rax
 jmp xchain00025_n17_α
 xchain00025_n14_β:
 jmp proc_options_ω
# IR_VAR
 xchain00025_n15_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2200], rax
 jmp xchain00025_n18_α
 xchain00025_n15_β:
 jmp xchain00025_n9_α
 xchain00025_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+144]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn215: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn215]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00025_n14_α
 jmp xchain00025_n19_α
 xchain00025_n16_β:
 jmp xchain00025_n14_α
# IR_RETURN
 xchain00025_n17_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_options_γ
# IR_GEN_SCAN
 xchain00025_n18_α:
 mov rdi, qword ptr [r12 + 2192]
 mov rsi, qword ptr [r12 + 2200]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00025_n20_α
 xchain00025_n18_β:
 jmp xchain00025_n9_α
 xchain00025_n19_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+80]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
# marshal arg1 = producer-box slot [zr+128] -> [zr+96]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn220: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn220]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00025_n14_α
 jmp xchain00025_n11_α
 xchain00025_n19_β:
 jmp xchain00025_n14_α
# IR_LIT_STRING
 xchain00025_n20_α:
 mov qword ptr [r12 + 2176], 1
 mov rax, qword ptr [rip + .Lx00027_0]
 mov qword ptr [r12 + 2184], rax
 jmp xchain00025_n21_α
 xchain00025_n20_β:
 jmp xchain00025_n23_α
.Lx00027_0:
 .quad .Lx00027_0_s
.Lx00027_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00025_n21_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00025_n23_α
 mov rdi, qword ptr [rip + .Lx00028_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00025_n23_α
 mov qword ptr [r12 + 2144], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 2152], rax
 jmp xchain00025_n22_α
 xchain00025_n21_β:
 jmp xchain00025_n23_α
.Lx00028_0:
 .quad .Lx00028_0_s
.Lx00028_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00025_n22_α:
 mov rax, qword ptr [r12 + 2152]
 cmp rax, 1
 jge .Lx00029_0
 add rax, r15
 add rax, 1
.Lx00029_0:
 cmp rax, 1
 jl xchain00025_n23_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00025_n23_α
 mov qword ptr [r12 + 2128], r14
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
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 jmp xchain00025_n24_α
 xchain00025_n22_β:
 mov r14, qword ptr [r12 + 2128]
 jmp xchain00025_n23_α
# IR_VAR
 xchain00025_n23_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 2040], rax
 jmp xchain00025_n25_α
 xchain00025_n23_β:
 jmp xchain00025_n26_α
# IR_LIT_INTEGER
 xchain00025_n24_α:
 mov qword ptr [r12 + 2096], 6
 mov rax, qword ptr [rip + .Lx00030_0]
 mov qword ptr [r12 + 2104], rax
 jmp xchain00025_n27_α
 xchain00025_n24_β:
 jmp xchain00025_n29_α
.Lx00030_0:
 .quad 0
# IR_VAR
 xchain00025_n25_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2056], rax
 jmp xchain00025_n28_α
 xchain00025_n25_β:
 jmp xchain00025_n26_α
# IR_GEN_SCAN
 xchain00025_n26_α:
 lea rdi, [r12 + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 240]
 mov r14, qword ptr [r12 + 248]
 mov r15, qword ptr [r12 + 256]
 jmp xchain00025_n9_α
 xchain00025_n26_β:
 jmp xchain00025_n9_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00025_n27_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00031_0
 add rax, r15
 add rax, 1
.Lx00031_0:
 cmp rax, 1
 jl xchain00025_n29_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00025_n29_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00025_n29_α
 mov qword ptr [r12 + 2080], 6
 mov qword ptr [r12 + 2088], rax
 jmp xchain00025_n23_α
 xchain00025_n27_β:
 jmp xchain00025_n29_α
 xchain00025_n28_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2032] -> [zr+2000]
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 2000], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 2008], rax
# marshal arg1 = producer-box slot [zr+2048] -> [zr+2016]
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 2024], rax
  .section .rodata
  .Lrkfn236: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn236]
 lea rsi, [r12 + 2000]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 cmp eax, 99
 je xchain00025_n26_α
 jmp xchain00025_n30_α
 xchain00025_n28_β:
 jmp xchain00025_n26_α
# IR_KEYWORD_null
 xchain00025_n29_α:
 mov qword ptr [r12 + 2064], 0
 mov qword ptr [r12 + 2072], 0
 jmp xchain00025_n31_α
 xchain00025_n29_β:
 jmp xchain00025_n23_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00025_n30_α:
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 312], rax
 lea rax, [rip + xchain00025_n26_α]
 mov qword ptr [r12 + 320], rax
 jmp xchain00025_n32_α
 xchain00025_n30_β:
 jmp xchain00025_n26_α
 xchain00025_n31_α:
 jmp xchain00025_n34_α
xchain00025_n31_β:
 jmp xchain00025_n23_α
# IR_GEN_SCAN
 xchain00025_n32_α:
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
 lea rdi, [r12 + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 240]
 mov r14, qword ptr [r12 + 248]
 mov r15, qword ptr [r12 + 256]
 jmp xchain00025_n9_α
 xchain00025_n32_β:
 jmp xchain00025_n9_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00025_n33_α:
 jmp qword ptr [r12 + 320]
 xchain00025_n33_β:
 jmp xchain00025_n26_α
# IR_LIT_STRING
 xchain00025_n34_α:
 mov qword ptr [r12 + 1968], 1
 mov rax, qword ptr [rip + .Lx00032_0]
 mov qword ptr [r12 + 1976], rax
 jmp xchain00025_n35_α
 xchain00025_n34_β:
 jmp xchain00025_n37_α
.Lx00032_0:
 .quad .Lx00032_0_s
.Lx00032_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00025_n35_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00025_n37_α
 mov rdi, qword ptr [rip + .Lx00033_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00025_n37_α
 mov qword ptr [r12 + 1936], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 1944], rax
 jmp xchain00025_n36_α
 xchain00025_n35_β:
 jmp xchain00025_n37_α
.Lx00033_0:
 .quad .Lx00033_0_s
.Lx00033_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00025_n36_α:
 mov rax, qword ptr [r12 + 1944]
 cmp rax, 1
 jge .Lx00034_0
 add rax, r15
 add rax, 1
.Lx00034_0:
 cmp rax, 1
 jl xchain00025_n37_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00025_n37_α
 mov qword ptr [r12 + 1920], r14
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
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain00025_n38_α
 xchain00025_n36_β:
 mov r14, qword ptr [r12 + 1920]
 jmp xchain00025_n37_α
# IR_LIT_INTEGER
 xchain00025_n37_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00035_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00025_n39_α
 xchain00025_n37_β:
 jmp xchain00025_n45_α
.Lx00035_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00025_n38_α:
 mov qword ptr [r12 + 1888], 6
 mov rax, qword ptr [rip + .Lx00036_0]
 mov qword ptr [r12 + 1896], rax
 jmp xchain00025_n40_α
 xchain00025_n38_β:
 jmp xchain00025_n37_α
.Lx00036_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00025_n39_α:
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00025_n45_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00025_n45_α
 mov qword ptr [r12 + 368], r14
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
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00025_n41_α
 xchain00025_n39_β:
 mov r14, qword ptr [r12 + 368]
 jmp xchain00025_n45_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00025_n40_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00037_0
 add rax, r15
 add rax, 1
.Lx00037_0:
 cmp rax, 1
 jl xchain00025_n37_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00025_n37_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00025_n37_α
 mov qword ptr [r12 + 1872], 6
 mov qword ptr [r12 + 1880], rax
 jmp xchain00025_n43_α
 xchain00025_n40_β:
 jmp xchain00025_n37_α
 xchain00025_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00025_n44_α
 xchain00025_n41_β:
 jmp xchain00025_n45_α
 xchain00025_n42_α:
 jmp xchain00025_n45_α
xchain00025_n42_β:
 jmp xchain00025_n45_α
 xchain00025_n43_α:
 jmp xchain00025_n11_α
xchain00025_n43_β:
 jmp xchain00025_n37_α
# IR_VAR
 xchain00025_n44_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1800], rax
 jmp xchain00025_n47_α
 xchain00025_n44_β:
 jmp xchain00025_n48_α
 xchain00025_n45_α:
 jmp xchain00025_n49_α
xchain00025_n45_β:
 jmp xchain00025_n26_α
 xchain00025_n46_α:
 jmp xchain00025_n11_α
xchain00025_n46_β:
 jmp xchain00025_n11_α
# IR_VAR
 xchain00025_n47_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1816], rax
 jmp xchain00025_n50_α
 xchain00025_n47_β:
 jmp xchain00025_n48_α
# IR_LIT_STRING
 xchain00025_n48_α:
 mov qword ptr [r12 + 1664], 1
 mov rax, qword ptr [rip + .Lx00038_0]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00025_n51_α
 xchain00025_n48_β:
 jmp xchain00025_n37_α
.Lx00038_0:
 .quad .Lx00038_0_s
.Lx00038_0_s:
 .string "Unrecognized option: -"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00025_n49_α:
 lea rax, [rip + xchain00025_n52_α]
 mov qword ptr [r12 + 320], rax
 jmp xchain00025_n32_α
 xchain00025_n49_β:
 jmp xchain00025_n26_α
 xchain00025_n50_α:
# BOX IR_CALL_BUILTIN_GEN find(...) -> rt_call_arr_gen by-name [four-port generator; alpha zeroes resume cell, beta re-pumps invoke with persisted cell]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1744]
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1752], rax
# marshal arg1 = producer-box slot [zr+1808] -> [zr+1760]
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1768], rax
 mov qword ptr [r12 + 1776], 0
.Lx00039_60:
  .section .rodata
  .Lbynamegenfn194: .string "find"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn194]
 lea rsi, [r12 + 1744]
 mov edx, 2
 lea rcx, [r12 + 1776]
 call rt_call_arr_gen@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je xchain00025_n48_α
 jmp xchain00025_n53_α
 xchain00025_n50_β:
 jmp .Lx00039_60
# IR_VAR
 xchain00025_n51_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1688], rax
 jmp xchain00025_n54_α
 xchain00025_n51_β:
 jmp xchain00025_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00025_n52_α:
 jmp qword ptr [r12 + 416]
 xchain00025_n52_β:
 jmp xchain00025_n37_α
# IR_LIT_INTEGER
 xchain00025_n53_α:
 mov qword ptr [r12 + 1824], 6
 mov rax, qword ptr [rip + .Lx00040_0]
 mov qword ptr [r12 + 1832], rax
 jmp xchain00025_n55_α
 xchain00025_n53_β:
 jmp xchain00025_n50_β
.Lx00040_0:
 .quad 1
 xchain00025_n54_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1632]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1640], rax
# marshal arg1 = producer-box slot [zr+1680] -> [zr+1648]
 mov rax, qword ptr [r12 + 1680]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1688]
 mov qword ptr [r12 + 1656], rax
  .section .rodata
  .Lrkfn275: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn275]
 lea rsi, [r12 + 1632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 cmp eax, 99
 je xchain00025_n37_α
 jmp xchain00025_n56_α
 xchain00025_n54_β:
 jmp xchain00025_n37_α
 xchain00025_n55_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1728]
 cmp eax, 100
 je .Lx00041_0
 mov eax, dword ptr [r12 + 1824]
 cmp eax, 100
 je .Lx00041_0
 mov eax, dword ptr [r12 + 1728]
 cmp eax, 6
 jne .Lx00041_2
 mov eax, dword ptr [r12 + 1824]
 cmp eax, 6
 jne .Lx00041_2
.Lx00041_1:
 mov rax, qword ptr [r12 + 1736]
 mov rcx, qword ptr [r12 + 1832]
 add rax, rcx
 mov qword ptr [r12 + 1712], 6
 mov qword ptr [r12 + 1720], rax
 jmp xchain00025_n57_α
.Lx00041_0:
 mov rdi, qword ptr [r12 + 1728]
 mov rsi, qword ptr [r12 + 1736]
 mov rdx, qword ptr [r12 + 1824]
 mov rcx, qword ptr [r12 + 1832]
 mov r8d, 0
 lea r9, [r12 + 1712]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00041_3
.Lx00041_2:
 mov rdi, qword ptr [r12 + 1728]
 mov rsi, qword ptr [r12 + 1736]
 mov rdx, qword ptr [r12 + 1824]
 mov rcx, qword ptr [r12 + 1832]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00025_n48_α
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
.Lx00041_3:
 jmp xchain00025_n57_α
 xchain00025_n55_β:
 jmp xchain00025_n48_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00025_n56_α:
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 408], rax
 lea rax, [rip + xchain00025_n37_α]
 mov qword ptr [r12 + 416], rax
 jmp xchain00025_n37_α
 xchain00025_n56_β:
 jmp xchain00025_n37_α
 xchain00025_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1712]
 mov rdx, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain00025_n58_α
 xchain00025_n57_β:
 jmp xchain00025_n48_α
# IR_VAR_REF
 xchain00025_n58_α:
 lea rdi, [r12 + 2384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00025_n59_α
 xchain00025_n58_β:
 jmp xchain00025_n37_α
# IR_VAR
 xchain00025_n59_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 456], rax
 jmp xchain00025_n60_α
 xchain00025_n59_β:
 jmp xchain00025_n37_α
# IR_SUBSCRIPT x[i] variable
 xchain00025_n60_α:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00025_n37_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00025_n61_α
 xchain00025_n60_β:
 jmp xchain00025_n37_α
# IR_LIT_CHARSET
 xchain00025_n61_α:
 mov qword ptr [r12 + 1520], 1
 mov dword ptr [r12 + 1524], -1
 mov rax, qword ptr [rip + .Lx00042_0]
 mov qword ptr [r12 + 1528], rax
 jmp xchain00025_n62_α
 xchain00025_n61_β:
 jmp xchain00025_n65_α
.Lx00042_0:
 .quad .Lx00042_0_s
.Lx00042_0_s:
 .string "+.:"
# IR_VAR_REF
 xchain00025_n62_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain00025_n63_α
 xchain00025_n62_β:
 jmp xchain00025_n65_α
# IR_VAR
 xchain00025_n63_α:
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 1576], rax
 jmp xchain00025_n64_α
 xchain00025_n63_β:
 jmp xchain00025_n65_α
# IR_SUBSCRIPT x[i] variable
 xchain00025_n64_α:
 mov rdi, qword ptr [r12 + 1552]
 mov rsi, qword ptr [r12 + 1560]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00025_n65_α
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain00025_n66_α
 xchain00025_n64_β:
 jmp xchain00025_n65_α
# IR_LIT_INTEGER
 xchain00025_n65_α:
 mov qword ptr [r12 + 1456], 6
 mov rax, qword ptr [rip + .Lx00043_0]
 mov qword ptr [r12 + 1464], rax
 jmp xchain00025_n67_α
 xchain00025_n65_β:
 jmp xchain00025_n37_α
.Lx00043_0:
 .quad 1
# IR_DEREF variable -> value
 xchain00025_n66_α:
 mov rdi, qword ptr [r12 + 1584]
 mov rsi, qword ptr [r12 + 1592]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00025_n65_α
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00025_n68_α
 xchain00025_n66_β:
 jmp xchain00025_n65_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00025_n67_α:
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + xchain00025_n37_α]
 mov qword ptr [r12 + 512], rax
 jmp xchain00025_n69_α
 xchain00025_n67_β:
 jmp xchain00025_n37_α
 xchain00025_n68_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1600]
 mov rdx, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain00025_n71_α
 xchain00025_n68_β:
 jmp xchain00025_n65_α
# IR_ASSIGN_VAR
 xchain00025_n69_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00025_n37_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00025_n72_α
 xchain00025_n69_β:
 jmp xchain00025_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00025_n70_α:
 jmp qword ptr [r12 + 512]
 xchain00025_n70_β:
 jmp xchain00025_n37_α
 xchain00025_n71_α:
# BOX IR_CALL any(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+1520] -> [zr+1488]
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1496], rax
# marshal arg1 = producer-box slot [zr+1536] -> [zr+1504]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1512], rax
  .section .rodata
  .Lbynamefn215: .string "any"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn215]
 lea rsi, [r12 + 1488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 cmp eax, 99
 je xchain00025_n65_α
 jmp xchain00025_n73_α
 xchain00025_n71_β:
 jmp xchain00025_n65_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00025_n72_α:
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 408], rax
 lea rax, [rip + xchain00025_n70_α]
 mov qword ptr [r12 + 416], rax
 jmp xchain00025_n37_α
 xchain00025_n72_β:
 jmp xchain00025_n37_α
# IR_LIT_STRING
 xchain00025_n73_α:
 mov qword ptr [r12 + 1392], 1
 mov rax, qword ptr [rip + .Lx00044_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00025_n74_α
 xchain00025_n73_β:
 jmp xchain00025_n77_α
.Lx00044_0:
 .quad .Lx00044_0_s
.Lx00044_0_s:
 .string ""
# IR_LIT_INTEGER
 xchain00025_n74_α:
 mov qword ptr [r12 + 1440], 6
 mov rax, qword ptr [rip + .Lx00045_0]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00025_n75_α
 xchain00025_n74_β:
 jmp xchain00025_n77_α
.Lx00045_0:
 .quad 0
# IR_SCAN_TAB
 xchain00025_n75_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00046_0
 add rax, r15
 add rax, 1
.Lx00046_0:
 cmp rax, 1
 jl xchain00025_n77_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00025_n77_α
 mov qword ptr [r12 + 1424], r14
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
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain00025_n76_α
 xchain00025_n75_β:
 mov r14, qword ptr [r12 + 1424]
 jmp xchain00025_n77_α
 xchain00025_n76_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 1392]
 mov rsi, qword ptr [r12 + 1400]
 mov rdx, qword ptr [r12 + 1408]
 mov rcx, qword ptr [r12 + 1416]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00025_n77_α
 mov rdi, qword ptr [r12 + 1408]
 mov rsi, qword ptr [r12 + 1416]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain00025_n78_α
 xchain00025_n76_β:
 jmp xchain00025_n77_α
# IR_VAR
 xchain00025_n77_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1368], rax
 jmp xchain00025_n79_α
 xchain00025_n77_β:
 jmp xchain00025_n80_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00025_n78_α:
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00025_n77_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00025_n81_α
 xchain00025_n78_β:
 jmp xchain00025_n85_α
 xchain00025_n79_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1344]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1352], rax
  .section .rodata
  .Lrkfn312: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn312]
 lea rsi, [r12 + 1344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain00025_n80_α
 jmp xchain00025_n83_α
 xchain00025_n79_β:
 jmp xchain00025_n80_α
# IR_LIT_STRING
 xchain00025_n80_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx00047_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00025_n84_α
 xchain00025_n80_β:
 jmp xchain00025_n85_α
.Lx00047_0:
 .quad .Lx00047_0_s
.Lx00047_0_s:
 .string "No parameter following -"
 xchain00025_n81_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1216]
 mov rdx, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain00025_n85_α
 xchain00025_n81_β:
 jmp xchain00025_n85_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00025_n82_α:
 jmp qword ptr [r12 + 1232]
 xchain00025_n82_β:
 jmp xchain00025_n85_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00025_n83_α:
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00025_n80_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00025_n81_α
 xchain00025_n83_β:
 jmp xchain00025_n85_α
# IR_VAR
 xchain00025_n84_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1320], rax
 jmp xchain00025_n86_α
 xchain00025_n84_β:
 jmp xchain00025_n85_α
# IR_VAR
 xchain00025_n85_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 552], rax
 jmp xchain00025_n87_α
 xchain00025_n85_β:
 jmp xchain00025_n37_α
 xchain00025_n86_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1264]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1272], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1280]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rax
  .section .rodata
  .Lrkfn324: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn324]
 lea rsi, [r12 + 1264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain00025_n85_α
 jmp xchain00025_n88_α
 xchain00025_n86_β:
 jmp xchain00025_n85_α
# IR_LIT_STRING
 xchain00025_n87_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx00048_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00025_n89_α
 xchain00025_n87_β:
 jmp xchain00025_n37_α
.Lx00048_0:
 .quad .Lx00048_0_s
.Lx00048_0_s:
 .string ":"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00025_n88_α:
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00025_n85_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00025_n81_α
 xchain00025_n88_β:
 jmp xchain00025_n85_α
 xchain00025_n89_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+1168]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 1176], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+1184]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lrkfn329: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn329]
 lea rsi, [r12 + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain00025_n91_α
 jmp xchain00025_n90_α
 xchain00025_n89_β:
 jmp xchain00025_n91_α
# IR_VAR
 xchain00025_n90_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00025_n92_α
 xchain00025_n90_β:
 jmp xchain00025_n37_α
# IR_LIT_STRING
 xchain00025_n91_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx00049_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain00025_n93_α
 xchain00025_n91_β:
 jmp xchain00025_n37_α
.Lx00049_0:
 .quad .Lx00049_0_s
.Lx00049_0_s:
 .string "+"
 xchain00025_n92_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00025_n94_α
 xchain00025_n92_β:
 jmp xchain00025_n37_α
 xchain00025_n93_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+1072]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+1088]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn335: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn335]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00025_n96_α
 jmp xchain00025_n95_α
 xchain00025_n93_β:
 jmp xchain00025_n96_α
# IR_VAR
 xchain00025_n94_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 536], rax
 jmp xchain00025_n97_α
 xchain00025_n94_β:
 jmp xchain00025_n37_α
# IR_VAR
 xchain00025_n95_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00025_n98_α
 xchain00025_n95_β:
 jmp xchain00025_n99_α
# IR_LIT_STRING
 xchain00025_n96_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx00050_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00025_n00051_α
 xchain00025_n96_β:
 jmp xchain00025_n37_α
.Lx00050_0:
 .quad .Lx00050_0_s
.Lx00050_0_s:
 .string "."
 xchain00025_n97_α:
 jmp xchain00025_n00052_α
xchain00025_n97_β:
 jmp xchain00025_n37_α
 xchain00025_n98_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+1008]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn343: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn343]
 lea rsi, [r12 + 1008]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain00025_n99_α
 jmp xchain00025_n00053_α
 xchain00025_n98_β:
 jmp xchain00025_n99_α
# IR_LIT_STRING
 xchain00025_n99_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx00054_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00025_n00055_α
 xchain00025_n99_β:
 jmp xchain00025_n37_α
.Lx00054_0:
 .quad .Lx00054_0_s
.Lx00054_0_s:
 .string "-"
 xchain00025_n00051_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+800]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 808], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+816]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn346: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn346]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain00025_n37_α
 jmp xchain00025_n00056_α
 xchain00025_n00051_β:
 jmp xchain00025_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00025_n00052_α:
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + xchain00025_n37_α]
 mov qword ptr [r12 + 512], rax
 jmp xchain00025_n69_α
 xchain00025_n00052_β:
 jmp xchain00025_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00025_n00053_α:
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00025_n99_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00025_n00057_α
 xchain00025_n00053_β:
 jmp xchain00025_n37_α
# IR_VAR
 xchain00025_n00055_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 968], rax
 jmp xchain00025_n00058_α
 xchain00025_n00055_β:
 jmp xchain00025_n37_α
# IR_VAR
 xchain00025_n00056_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 760], rax
 jmp xchain00025_n00059_α
 xchain00025_n00056_β:
 jmp xchain00025_n00060_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00025_n00061_α:
 jmp qword ptr [r12 + 864]
 xchain00025_n00061_β:
 jmp xchain00025_n37_α
# IR_LIT_STRING
 xchain00025_n00058_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx00062_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain00025_n00063_α
 xchain00025_n00058_β:
 jmp xchain00025_n37_α
.Lx00062_0:
 .quad .Lx00062_0_s
.Lx00062_0_s:
 .string " needs numeric parameter"
 xchain00025_n00059_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+736]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn359: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn359]
 lea rsi, [r12 + 736]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain00025_n00060_α
 jmp xchain00025_n00064_α
 xchain00025_n00059_β:
 jmp xchain00025_n00060_α
# IR_LIT_STRING
 xchain00025_n00060_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00065_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00025_n00001_α
 xchain00025_n00060_β:
 jmp xchain00025_n37_α
.Lx00065_0:
 .quad .Lx00065_0_s
.Lx00065_0_s:
 .string "-"
 xchain00025_n00057_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00025_n94_α
 xchain00025_n00057_β:
 jmp xchain00025_n37_α
 xchain00025_n00063_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+896]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 920], rax
# marshal arg2 = producer-box slot [zr+976] -> [zr+928]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn363: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn363]
 lea rsi, [r12 + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain00025_n37_α
 jmp xchain00025_n00002_α
 xchain00025_n00063_β:
 jmp xchain00025_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00025_n00064_α:
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 584], rax
 lea rax, [rip + xchain00025_n00060_α]
 mov qword ptr [r12 + 592], rax
 jmp xchain00025_n00066_α
 xchain00025_n00064_β:
 jmp xchain00025_n37_α
# IR_VAR
 xchain00025_n00001_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 696], rax
 jmp xchain00025_n00003_α
 xchain00025_n00001_β:
 jmp xchain00025_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00025_n00002_α:
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00025_n37_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00025_n00057_α
 xchain00025_n00002_β:
 jmp xchain00025_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00025_n00067_α:
 jmp qword ptr [r12 + 592]
 xchain00025_n00067_β:
 jmp xchain00025_n37_α
# IR_LIT_STRING
 xchain00025_n00003_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx00068_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00025_n00069_α
 xchain00025_n00003_β:
 jmp xchain00025_n37_α
.Lx00068_0:
 .quad .Lx00068_0_s
.Lx00068_0_s:
 .string " needs numeric parameter"
 xchain00025_n00066_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00025_n94_α
 xchain00025_n00066_β:
 jmp xchain00025_n37_α
 xchain00025_n00069_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 648], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn375: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn375]
 lea rsi, [r12 + 624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain00025_n37_α
 jmp xchain00025_n00070_α
 xchain00025_n00069_β:
 jmp xchain00025_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00025_n00070_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
 lea rax, [rip + xchain00025_n37_α]
 mov qword ptr [r12 + 592], rax
 jmp xchain00025_n00066_α
 xchain00025_n00070_β:
 jmp xchain00025_n37_α
proc_options_β:
jmp proc_options_ω
proc_options_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 2368]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_options_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
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
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 352], rax
 pop rsi
proc_Init___α_body:
# IR_VAR
 xchain00071_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 344], rax
 jmp xchain00071_n1_α
 xchain00071_n0_β:
 jmp xchain00071_n2_α
# IR_ASSIGN gva
 xchain00071_n1_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00071_n2_α
 xchain00071_n1_β:
 jmp xchain00071_n2_α
 xchain00071_n2_α:
  .section .rodata
  .Lcall00038_pname: .string "Signature__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00038_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain00071_n3_α
 jmp xchain00071_n3_α
xchain00071_n2_β:
 jmp xchain00071_n3_α
 xchain00071_n3_α:
  .section .rodata
  .Lcall00072_pname: .string "Regions__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00072_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00071_n4_α
 jmp xchain00071_n4_α
xchain00071_n3_β:
 jmp xchain00071_n4_α
 xchain00071_n4_α:
  .section .rodata
  .Lcall00073_pname: .string "Time__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00073_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain00071_n5_α
 jmp xchain00071_n5_α
xchain00071_n4_β:
 jmp xchain00071_n5_α
# IR_LIT_STRING
 xchain00071_n5_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00074_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00071_n6_α
 xchain00071_n5_β:
 jmp xchain00071_n8_α
.Lx00074_0:
 .quad .Lx00074_0_s
.Lx00074_0_s:
 .string "OUTPUT"
 xchain00071_n6_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+240]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn387: .string "getenv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn387]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00071_n8_α
 jmp xchain00071_n7_α
 xchain00071_n6_β:
 jmp xchain00071_n8_α
# IR_LIT_STRING
 xchain00071_n7_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00075_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00071_n9_α
 xchain00071_n7_β:
 jmp xchain00071_n12_α
.Lx00075_0:
 .quad .Lx00075_0_s
.Lx00075_0_s:
 .string "*** Benchmarking with output ***"
# IR_VAR
 xchain00071_n8_α:
 mov rdi, qword ptr [rip + .Lx00076_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00071_n11_α
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00071_n10_α
 xchain00071_n8_β:
 jmp xchain00071_n11_α
.Lx00076_0:
 .quad .Lx00076_0_s
.Lx00076_0_s:
 .string "write"
 xchain00071_n9_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn391: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn391]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain00071_n12_α
 jmp xchain00071_n12_α
 xchain00071_n9_β:
 jmp xchain00071_n12_α
# IR_ASSIGN gva
 xchain00071_n10_α:
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00071_n11_α
 xchain00071_n10_β:
 jmp xchain00071_n11_α
# IR_VAR
 xchain00071_n11_α:
 mov rdi, qword ptr [rip + .Lx00077_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00071_n14_α
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00071_n13_α
 xchain00071_n11_β:
 jmp xchain00071_n14_α
.Lx00077_0:
 .quad .Lx00077_0_s
.Lx00077_0_s:
 .string "writes"
# IR_RETURN
 xchain00071_n12_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Init___γ
# IR_ASSIGN gva
 xchain00071_n13_α:
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00071_n14_α
 xchain00071_n13_β:
 jmp xchain00071_n14_α
# IR_LIT_INTEGER
 xchain00071_n14_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00078_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00071_n15_α
 xchain00071_n14_β:
 jmp xchain00071_n17_α
.Lx00078_0:
 .quad 1
# IR_ASSIGN global
 xchain00071_n15_α:
 mov rsi, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov rdi, qword ptr [rip + .Lx00079_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00071_n16_α
 xchain00071_n15_β:
 jmp xchain00071_n17_α
.Lx00079_0:
 .quad .Lx00079_0_s
.Lx00079_0_s:
 .string "writes"
# IR_ASSIGN global
 xchain00071_n16_α:
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov rdi, qword ptr [rip + .Lx00080_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00071_n17_α
 xchain00071_n16_β:
 jmp xchain00071_n17_α
.Lx00080_0:
 .quad .Lx00080_0_s
.Lx00080_0_s:
 .string "write"
# IR_RETURN
 xchain00071_n17_α:
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
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 352]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Init___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
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
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 336], rax
 pop rsi
proc_Term___α_body:
# IR_LIT_STRING
 xchain00081_n0_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx00082_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00081_n1_α
 xchain00081_n0_β:
 jmp xchain00081_n3_α
.Lx00082_0:
 .quad .Lx00082_0_s
.Lx00082_0_s:
 .string "OUTPUT"
 xchain00081_n1_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+304]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn403: .string "getenv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn403]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00081_n3_α
 jmp xchain00081_n2_α
 xchain00081_n1_β:
 jmp xchain00081_n3_α
# IR_VAR
 xchain00081_n2_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00081_n4_α
 xchain00081_n2_β:
 jmp xchain00081_n5_α
# IR_KEYWORD_null
 xchain00081_n3_α:
 mov qword ptr [r12 + 272], 0
 mov qword ptr [r12 + 280], 0
 jmp xchain00081_n6_α
 xchain00081_n3_β:
 jmp xchain00081_n2_α
# IR_LIT_STRING
 xchain00081_n4_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00083_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00081_n7_α
 xchain00081_n4_β:
 jmp xchain00081_n5_α
.Lx00083_0:
 .quad .Lx00083_0_s
.Lx00083_0_s:
 .string " elapsed time = "
 xchain00081_n5_α:
  .section .rodata
  .Lcall00084_pname: .string "Regions__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00084_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain00081_n8_α
 jmp xchain00081_n8_α
xchain00081_n5_β:
 jmp xchain00081_n8_α
# IR_VAR
 xchain00081_n6_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00081_n9_α
 xchain00081_n6_β:
 jmp xchain00081_n10_α
 xchain00081_n7_α:
  .section .rodata
  .Lcall00085_pname: .string "Time__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00085_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00081_n5_α
 jmp xchain00081_n11_α
xchain00081_n7_β:
 jmp xchain00081_n5_α
 xchain00081_n8_α:
  .section .rodata
  .Lcall00086_pname: .string "Storage__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00086_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain00081_n12_α
 jmp xchain00081_n12_α
xchain00081_n8_β:
 jmp xchain00081_n12_α
# IR_ASSIGN global
 xchain00081_n9_α:
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov rdi, qword ptr [rip + .Lx00087_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00081_n10_α
 xchain00081_n9_β:
 jmp xchain00081_n10_α
.Lx00087_0:
 .quad .Lx00087_0_s
.Lx00087_0_s:
 .string "write"
# IR_VAR
 xchain00081_n10_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00081_n13_α
 xchain00081_n10_β:
 jmp xchain00081_n2_α
 xchain00081_n11_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+80]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 88], rax
# marshal arg1 = producer-box slot [zr+144] -> [zr+96]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 104], rax
# marshal arg2 = producer-box slot [zr+160] -> [zr+112]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn414: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn414]
 lea rsi, [r12 + 80]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00081_n5_α
 jmp xchain00081_n5_α
 xchain00081_n11_β:
 jmp xchain00081_n5_α
 xchain00081_n12_α:
  .section .rodata
  .Lcall00088_pname: .string "Collections__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00088_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain00081_n14_α
 jmp xchain00081_n14_α
xchain00081_n12_β:
 jmp xchain00081_n14_α
# IR_ASSIGN global
 xchain00081_n13_α:
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov rdi, qword ptr [rip + .Lx00089_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00081_n15_α
 xchain00081_n13_β:
 jmp xchain00081_n2_α
.Lx00089_0:
 .quad .Lx00089_0_s
.Lx00089_0_s:
 .string "writes"
# IR_RETURN
 xchain00081_n14_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Term___γ
 xchain00081_n15_α:
 jmp xchain00081_n16_α
xchain00081_n15_β:
 jmp xchain00081_n2_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00081_n16_α:
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
 lea rax, [rip + xchain00081_n2_α]
 mov qword ptr [r12 + 192], rax
 jmp xchain00081_n2_α
 xchain00081_n16_β:
 jmp xchain00081_n2_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00081_n17_α:
 jmp qword ptr [r12 + 192]
 xchain00081_n17_β:
 jmp xchain00081_n2_α
proc_Term___β:
jmp proc_Term___ω
proc_Term___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 336]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Term___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
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
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 784], rax
 pop rsi
proc_Collections___α_body:
# IR_VAR_REF
 xchain00090_n0_α:
 lea rdi, [rbx + 224]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00090_n1_α
 xchain00090_n0_β:
 jmp xchain00090_n3_α
# IR_NULLTEST_VAR
 xchain00090_n1_α:
 mov eax, dword ptr [r12 + 720]
 cmp eax, 99
 je xchain00090_n3_α
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00090_n3_α
 cmp eax, 0
 jne xchain00090_n3_α
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 744], rax
 jmp xchain00090_n2_α
 xchain00090_n1_β:
 jmp xchain00090_n3_α
# IR_LIT_INTEGER
 xchain00090_n2_α:
 mov qword ptr [r12 + 768], 6
 mov rax, qword ptr [rip + .Lx00091_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain00090_n4_α
 xchain00090_n2_β:
 jmp xchain00090_n3_α
.Lx00091_0:
 .quad 1
# IR_MAKE_LIST
 xchain00090_n3_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00090_n5_α
 xchain00090_n3_β:
 jmp xchain00090_n7_α
# IR_ASSIGN_VAR
 xchain00090_n4_α:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00090_n3_α
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00090_n6_α
 xchain00090_n4_β:
 jmp xchain00090_n3_α
 xchain00090_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00090_n7_α
 xchain00090_n5_β:
 jmp xchain00090_n7_α
# IR_LIT_STRING
 xchain00090_n6_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00092_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00090_n8_α
 xchain00090_n6_β:
 jmp xchain00090_n3_α
.Lx00092_0:
 .quad .Lx00092_0_s
.Lx00092_0_s:
 .string "total"
# IR_VAR
 xchain00090_n7_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 456], rax
 jmp xchain00090_n9_α
 xchain00090_n7_β:
 jmp xchain00090_n10_α
# IR_LIT_STRING
 xchain00090_n8_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00093_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00090_n11_α
 xchain00090_n8_β:
 jmp xchain00090_n3_α
.Lx00093_0:
 .quad .Lx00093_0_s
.Lx00093_0_s:
 .string "static"
# IR_KEYWORD_gen
 xchain00090_n9_α:
 mov qword ptr [r12 + 480], 0
.Lx00094_1:
 mov rdi, qword ptr [rip + .Lx00094_0]
 mov rsi, qword ptr [r12 + 480]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00090_n10_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov rax, qword ptr [r12 + 480]
 add rax, 1
 mov qword ptr [r12 + 480], rax
 jmp xchain00090_n12_α
 xchain00090_n9_β:
 jmp .Lx00094_1
.Lx00094_0:
 .quad .Lx00094_0_s
.Lx00094_0_s:
 .string "&collections"
# IR_LIT_STRING
 xchain00090_n10_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00095_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00090_n13_α
 xchain00090_n10_β:
 jmp xchain00090_n15_α
.Lx00095_0:
 .quad .Lx00095_0_s
.Lx00095_0_s:
 .string "collections"
# IR_LIT_STRING
 xchain00090_n11_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx00096_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain00090_n14_α
 xchain00090_n11_β:
 jmp xchain00090_n3_α
.Lx00096_0:
 .quad .Lx00096_0_s
.Lx00096_0_s:
 .string "string"
 xchain00090_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn440: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn440]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00090_n10_α
 jmp xchain00090_n9_β
 xchain00090_n12_β:
 jmp xchain00090_n10_α
 xchain00090_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+368]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn442: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn442]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00090_n15_α
 jmp xchain00090_n15_α
 xchain00090_n13_β:
 jmp xchain00090_n15_α
# IR_LIT_STRING
 xchain00090_n14_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx00097_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00090_n16_α
 xchain00090_n14_β:
 jmp xchain00090_n3_α
.Lx00097_0:
 .quad .Lx00097_0_s
.Lx00097_0_s:
 .string "block"
# IR_LIT_INTEGER
 xchain00090_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00098_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00090_n17_α
 xchain00090_n15_β:
 jmp xchain00090_n20_α
.Lx00098_0:
 .quad 1
# IR_MAKE_LIST
 xchain00090_n16_α:
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 600], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 616], rax
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 632], rax
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 648], rax
 lea rdi, [r12 + 592]
 mov esi, 4
 call rt_make_list@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00090_n18_α
 xchain00090_n16_β:
 jmp xchain00090_n3_α
# IR_VAR
 xchain00090_n17_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00090_n19_α
 xchain00090_n17_β:
 jmp xchain00090_n20_α
# IR_ASSIGN gva
 xchain00090_n18_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00090_n21_α
 xchain00090_n18_β:
 jmp xchain00090_n3_α
# IR_UNOP
 xchain00090_n19_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00090_n22_α
 xchain00090_n19_β:
 jmp xchain00090_n20_α
# IR_RETURN
 xchain00090_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Collections___γ
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00090_n21_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain00090_n3_α]
 mov qword ptr [r12 + 544], rax
 jmp xchain00090_n3_α
 xchain00090_n21_β:
 jmp xchain00090_n3_α
# IR_TO
 xchain00090_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00099_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00090_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00090_n24_α
 xchain00090_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00099_0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00090_n23_α:
 jmp qword ptr [r12 + 544]
 xchain00090_n23_β:
 jmp xchain00090_n3_α
 xchain00090_n24_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00090_n25_α
 xchain00090_n24_β:
 jmp xchain00090_n20_α
# IR_VAR_REF
 xchain00090_n25_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00090_n26_α
 xchain00090_n25_β:
 jmp xchain00090_n22_β
# IR_VAR
 xchain00090_n26_α:
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 184], rax
 jmp xchain00090_n27_α
 xchain00090_n26_β:
 jmp xchain00090_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00090_n27_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00090_n22_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00090_n28_α
 xchain00090_n27_β:
 jmp xchain00090_n22_β
# IR_DEREF variable -> value
 xchain00090_n28_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00090_n22_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00090_n29_α
 xchain00090_n28_β:
 jmp xchain00090_n22_β
# IR_VAR_REF
 xchain00090_n29_α:
 lea rdi, [r12 + 816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00090_n30_α
 xchain00090_n29_β:
 jmp xchain00090_n22_β
# IR_VAR
 xchain00090_n30_α:
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 296], rax
 jmp xchain00090_n31_α
 xchain00090_n30_β:
 jmp xchain00090_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00090_n31_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00090_n22_β
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00090_n32_α
 xchain00090_n31_β:
 jmp xchain00090_n22_β
# IR_DEREF variable -> value
 xchain00090_n32_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00090_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00090_n33_α
 xchain00090_n32_β:
 jmp xchain00090_n22_β
# IR_LIT_INTEGER
 xchain00090_n33_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00100_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00090_n34_α
 xchain00090_n33_β:
 jmp xchain00090_n22_β
.Lx00100_0:
 .quad 8
 xchain00090_n34_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+240]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+256]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn472: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn472]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00090_n22_β
 jmp xchain00090_n35_α
 xchain00090_n34_β:
 jmp xchain00090_n22_β
 xchain00090_n35_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+128]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+144]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn474: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn474]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00090_n22_β
 jmp xchain00090_n22_β
 xchain00090_n35_β:
 jmp xchain00090_n22_β
proc_Collections___β:
jmp proc_Collections___ω
proc_Collections___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 784]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Collections___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
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
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 752], rax
 pop rsi
proc_Regions___α_body:
# IR_VAR_REF
 xchain00101_n0_α:
 lea rdi, [rbx + 256]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00101_n1_α
 xchain00101_n0_β:
 jmp xchain00101_n3_α
# IR_NULLTEST_VAR
 xchain00101_n1_α:
 mov eax, dword ptr [r12 + 688]
 cmp eax, 99
 je xchain00101_n3_α
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00101_n3_α
 cmp eax, 0
 jne xchain00101_n3_α
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 712], rax
 jmp xchain00101_n2_α
 xchain00101_n1_β:
 jmp xchain00101_n3_α
# IR_LIT_INTEGER
 xchain00101_n2_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx00102_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00101_n4_α
 xchain00101_n2_β:
 jmp xchain00101_n3_α
.Lx00102_0:
 .quad 1
# IR_MAKE_LIST
 xchain00101_n3_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00101_n5_α
 xchain00101_n3_β:
 jmp xchain00101_n7_α
# IR_ASSIGN_VAR
 xchain00101_n4_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00101_n3_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00101_n6_α
 xchain00101_n4_β:
 jmp xchain00101_n3_α
 xchain00101_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00101_n7_α
 xchain00101_n5_β:
 jmp xchain00101_n7_α
# IR_LIT_STRING
 xchain00101_n6_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx00103_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00101_n8_α
 xchain00101_n6_β:
 jmp xchain00101_n3_α
.Lx00103_0:
 .quad .Lx00103_0_s
.Lx00103_0_s:
 .string "static"
# IR_VAR
 xchain00101_n7_α:
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 456], rax
 jmp xchain00101_n9_α
 xchain00101_n7_β:
 jmp xchain00101_n10_α
# IR_LIT_STRING
 xchain00101_n8_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00104_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00101_n11_α
 xchain00101_n8_β:
 jmp xchain00101_n3_α
.Lx00104_0:
 .quad .Lx00104_0_s
.Lx00104_0_s:
 .string "string"
# IR_KEYWORD_gen
 xchain00101_n9_α:
 mov qword ptr [r12 + 480], 0
.Lx00105_1:
 mov rdi, qword ptr [rip + .Lx00105_0]
 mov rsi, qword ptr [r12 + 480]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00101_n10_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov rax, qword ptr [r12 + 480]
 add rax, 1
 mov qword ptr [r12 + 480], rax
 jmp xchain00101_n12_α
 xchain00101_n9_β:
 jmp .Lx00105_1
.Lx00105_0:
 .quad .Lx00105_0_s
.Lx00105_0_s:
 .string "&regions"
# IR_LIT_STRING
 xchain00101_n10_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00106_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00101_n13_α
 xchain00101_n10_β:
 jmp xchain00101_n15_α
.Lx00106_0:
 .quad .Lx00106_0_s
.Lx00106_0_s:
 .string "regions"
# IR_LIT_STRING
 xchain00101_n11_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00107_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00101_n14_α
 xchain00101_n11_β:
 jmp xchain00101_n3_α
.Lx00107_0:
 .quad .Lx00107_0_s
.Lx00107_0_s:
 .string "block"
 xchain00101_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn492: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn492]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00101_n10_α
 jmp xchain00101_n9_β
 xchain00101_n12_β:
 jmp xchain00101_n10_α
 xchain00101_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+368]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn494: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn494]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00101_n15_α
 jmp xchain00101_n15_α
 xchain00101_n13_β:
 jmp xchain00101_n15_α
# IR_MAKE_LIST
 xchain00101_n14_α:
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 600], rax
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 616], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 632], rax
 lea rdi, [r12 + 592]
 mov esi, 3
 call rt_make_list@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00101_n16_α
 xchain00101_n14_β:
 jmp xchain00101_n3_α
# IR_LIT_INTEGER
 xchain00101_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00108_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00101_n17_α
 xchain00101_n15_β:
 jmp xchain00101_n20_α
.Lx00108_0:
 .quad 1
# IR_ASSIGN gva
 xchain00101_n16_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 240], rax
 mov qword ptr [rbx + 248], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00101_n18_α
 xchain00101_n16_β:
 jmp xchain00101_n3_α
# IR_VAR
 xchain00101_n17_α:
 mov rax, qword ptr [rbx + 240]
 mov rdx, qword ptr [rbx + 248]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00101_n19_α
 xchain00101_n17_β:
 jmp xchain00101_n20_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00101_n18_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain00101_n3_α]
 mov qword ptr [r12 + 544], rax
 jmp xchain00101_n3_α
 xchain00101_n18_β:
 jmp xchain00101_n3_α
# IR_UNOP
 xchain00101_n19_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00101_n22_α
 xchain00101_n19_β:
 jmp xchain00101_n20_α
# IR_RETURN
 xchain00101_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Regions___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00101_n21_α:
 jmp qword ptr [r12 + 544]
 xchain00101_n21_β:
 jmp xchain00101_n3_α
# IR_TO
 xchain00101_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00109_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00101_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00101_n23_α
 xchain00101_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00109_0
 xchain00101_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00101_n24_α
 xchain00101_n23_β:
 jmp xchain00101_n20_α
# IR_VAR_REF
 xchain00101_n24_α:
 lea rdi, [rbx + 240]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00101_n25_α
 xchain00101_n24_β:
 jmp xchain00101_n22_β
# IR_VAR
 xchain00101_n25_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 184], rax
 jmp xchain00101_n26_α
 xchain00101_n25_β:
 jmp xchain00101_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00101_n26_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00101_n22_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00101_n27_α
 xchain00101_n26_β:
 jmp xchain00101_n22_β
# IR_DEREF variable -> value
 xchain00101_n27_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00101_n22_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00101_n28_α
 xchain00101_n27_β:
 jmp xchain00101_n22_β
# IR_VAR_REF
 xchain00101_n28_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00101_n29_α
 xchain00101_n28_β:
 jmp xchain00101_n22_β
# IR_VAR
 xchain00101_n29_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 296], rax
 jmp xchain00101_n30_α
 xchain00101_n29_β:
 jmp xchain00101_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00101_n30_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00101_n22_β
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00101_n31_α
 xchain00101_n30_β:
 jmp xchain00101_n22_β
# IR_DEREF variable -> value
 xchain00101_n31_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00101_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00101_n32_α
 xchain00101_n31_β:
 jmp xchain00101_n22_β
# IR_LIT_INTEGER
 xchain00101_n32_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00110_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00101_n33_α
 xchain00101_n32_β:
 jmp xchain00101_n22_β
.Lx00110_0:
 .quad 8
 xchain00101_n33_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+240]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+256]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn523: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn523]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00101_n22_β
 jmp xchain00101_n34_α
 xchain00101_n33_β:
 jmp xchain00101_n22_β
 xchain00101_n34_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+128]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+144]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn525: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn525]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00101_n22_β
 jmp xchain00101_n22_β
 xchain00101_n34_β:
 jmp xchain00101_n22_β
proc_Regions___β:
jmp proc_Regions___ω
proc_Regions___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 752]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Regions___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
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
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_Signature___α_body:
# IR_KEYWORD_read
 xchain00111_n0_α:
 mov rdi, qword ptr [rip + .Lx00112_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00111_n1_α
 xchain00111_n0_β:
 jmp xchain00111_n2_α
.Lx00112_0:
 .quad .Lx00112_0_s
.Lx00112_0_s:
 .string "&version"
 xchain00111_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn529: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn529]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00111_n2_α
 jmp xchain00111_n2_α
 xchain00111_n1_β:
 jmp xchain00111_n2_α
# IR_KEYWORD_read
 xchain00111_n2_α:
 mov rdi, qword ptr [rip + .Lx00113_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00111_n3_α
 xchain00111_n2_β:
 jmp xchain00111_n4_α
.Lx00113_0:
 .quad .Lx00113_0_s
.Lx00113_0_s:
 .string "&host"
 xchain00111_n3_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+96]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn532: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn532]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain00111_n4_α
 jmp xchain00111_n4_α
 xchain00111_n3_β:
 jmp xchain00111_n4_α
# IR_KEYWORD_gen
 xchain00111_n4_α:
 mov qword ptr [r12 + 64], 0
.Lx00114_1:
 mov rdi, qword ptr [rip + .Lx00114_0]
 mov rsi, qword ptr [r12 + 64]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00111_n6_α
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov rax, qword ptr [r12 + 64]
 add rax, 1
 mov qword ptr [r12 + 64], rax
 jmp xchain00111_n5_α
 xchain00111_n4_β:
 jmp .Lx00114_1
.Lx00114_0:
 .quad .Lx00114_0_s
.Lx00114_0_s:
 .string "&features"
 xchain00111_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lrkfn535: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn535]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain00111_n6_α
 jmp xchain00111_n4_β
 xchain00111_n5_β:
 jmp xchain00111_n6_α
# IR_RETURN
 xchain00111_n6_α:
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
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 208]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Signature___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
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
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 752], rax
 pop rsi
proc_Storage___α_body:
# IR_VAR_REF
 xchain00115_n0_α:
 lea rdi, [rbx + 288]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00115_n1_α
 xchain00115_n0_β:
 jmp xchain00115_n3_α
# IR_NULLTEST_VAR
 xchain00115_n1_α:
 mov eax, dword ptr [r12 + 688]
 cmp eax, 99
 je xchain00115_n3_α
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00115_n3_α
 cmp eax, 0
 jne xchain00115_n3_α
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 712], rax
 jmp xchain00115_n2_α
 xchain00115_n1_β:
 jmp xchain00115_n3_α
# IR_LIT_INTEGER
 xchain00115_n2_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx00116_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00115_n4_α
 xchain00115_n2_β:
 jmp xchain00115_n3_α
.Lx00116_0:
 .quad 1
# IR_MAKE_LIST
 xchain00115_n3_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00115_n5_α
 xchain00115_n3_β:
 jmp xchain00115_n7_α
# IR_ASSIGN_VAR
 xchain00115_n4_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00115_n3_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00115_n6_α
 xchain00115_n4_β:
 jmp xchain00115_n3_α
 xchain00115_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00115_n7_α
 xchain00115_n5_β:
 jmp xchain00115_n7_α
# IR_LIT_STRING
 xchain00115_n6_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx00117_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00115_n8_α
 xchain00115_n6_β:
 jmp xchain00115_n3_α
.Lx00117_0:
 .quad .Lx00117_0_s
.Lx00117_0_s:
 .string "static"
# IR_VAR
 xchain00115_n7_α:
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 456], rax
 jmp xchain00115_n9_α
 xchain00115_n7_β:
 jmp xchain00115_n10_α
# IR_LIT_STRING
 xchain00115_n8_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00118_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00115_n11_α
 xchain00115_n8_β:
 jmp xchain00115_n3_α
.Lx00118_0:
 .quad .Lx00118_0_s
.Lx00118_0_s:
 .string "string"
# IR_KEYWORD_gen
 xchain00115_n9_α:
 mov qword ptr [r12 + 480], 0
.Lx00119_1:
 mov rdi, qword ptr [rip + .Lx00119_0]
 mov rsi, qword ptr [r12 + 480]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00115_n10_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov rax, qword ptr [r12 + 480]
 add rax, 1
 mov qword ptr [r12 + 480], rax
 jmp xchain00115_n12_α
 xchain00115_n9_β:
 jmp .Lx00119_1
.Lx00119_0:
 .quad .Lx00119_0_s
.Lx00119_0_s:
 .string "&storage"
# IR_LIT_STRING
 xchain00115_n10_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00120_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00115_n13_α
 xchain00115_n10_β:
 jmp xchain00115_n15_α
.Lx00120_0:
 .quad .Lx00120_0_s
.Lx00120_0_s:
 .string "storage"
# IR_LIT_STRING
 xchain00115_n11_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00121_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00115_n14_α
 xchain00115_n11_β:
 jmp xchain00115_n3_α
.Lx00121_0:
 .quad .Lx00121_0_s
.Lx00121_0_s:
 .string "block"
 xchain00115_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn554: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn554]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00115_n10_α
 jmp xchain00115_n9_β
 xchain00115_n12_β:
 jmp xchain00115_n10_α
 xchain00115_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+368]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn556: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn556]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00115_n15_α
 jmp xchain00115_n15_α
 xchain00115_n13_β:
 jmp xchain00115_n15_α
# IR_MAKE_LIST
 xchain00115_n14_α:
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 600], rax
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 616], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 632], rax
 lea rdi, [r12 + 592]
 mov esi, 3
 call rt_make_list@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00115_n16_α
 xchain00115_n14_β:
 jmp xchain00115_n3_α
# IR_LIT_INTEGER
 xchain00115_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00122_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00115_n17_α
 xchain00115_n15_β:
 jmp xchain00115_n20_α
.Lx00122_0:
 .quad 1
# IR_ASSIGN gva
 xchain00115_n16_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00115_n18_α
 xchain00115_n16_β:
 jmp xchain00115_n3_α
# IR_VAR
 xchain00115_n17_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00115_n19_α
 xchain00115_n17_β:
 jmp xchain00115_n20_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00115_n18_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain00115_n3_α]
 mov qword ptr [r12 + 544], rax
 jmp xchain00115_n3_α
 xchain00115_n18_β:
 jmp xchain00115_n3_α
# IR_UNOP
 xchain00115_n19_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00115_n22_α
 xchain00115_n19_β:
 jmp xchain00115_n20_α
# IR_RETURN
 xchain00115_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Storage___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00115_n21_α:
 jmp qword ptr [r12 + 544]
 xchain00115_n21_β:
 jmp xchain00115_n3_α
# IR_TO
 xchain00115_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00123_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00115_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00115_n23_α
 xchain00115_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00123_0
 xchain00115_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00115_n24_α
 xchain00115_n23_β:
 jmp xchain00115_n20_α
# IR_VAR_REF
 xchain00115_n24_α:
 lea rdi, [rbx + 272]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00115_n25_α
 xchain00115_n24_β:
 jmp xchain00115_n22_β
# IR_VAR
 xchain00115_n25_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 184], rax
 jmp xchain00115_n26_α
 xchain00115_n25_β:
 jmp xchain00115_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00115_n26_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00115_n22_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00115_n27_α
 xchain00115_n26_β:
 jmp xchain00115_n22_β
# IR_DEREF variable -> value
 xchain00115_n27_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00115_n22_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00115_n28_α
 xchain00115_n27_β:
 jmp xchain00115_n22_β
# IR_VAR_REF
 xchain00115_n28_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00115_n29_α
 xchain00115_n28_β:
 jmp xchain00115_n22_β
# IR_VAR
 xchain00115_n29_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 296], rax
 jmp xchain00115_n30_α
 xchain00115_n29_β:
 jmp xchain00115_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00115_n30_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00115_n22_β
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00115_n31_α
 xchain00115_n30_β:
 jmp xchain00115_n22_β
# IR_DEREF variable -> value
 xchain00115_n31_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00115_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00115_n32_α
 xchain00115_n31_β:
 jmp xchain00115_n22_β
# IR_LIT_INTEGER
 xchain00115_n32_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00124_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00115_n33_α
 xchain00115_n32_β:
 jmp xchain00115_n22_β
.Lx00124_0:
 .quad 8
 xchain00115_n33_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+240]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+256]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn585: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn585]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00115_n22_β
 jmp xchain00115_n34_α
 xchain00115_n33_β:
 jmp xchain00115_n22_β
 xchain00115_n34_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+128]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+144]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn587: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn587]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00115_n22_β
 jmp xchain00115_n22_β
 xchain00115_n34_β:
 jmp xchain00115_n22_β
proc_Storage___β:
jmp proc_Storage___ω
proc_Storage___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 752]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Storage___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
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
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_Time___α_body:
# IR_VAR_REF
 xchain00125_n0_α:
 lea rdi, [rbx + 320]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00125_n1_α
 xchain00125_n0_β:
 jmp xchain00125_n3_α
# IR_NULLTEST_VAR
 xchain00125_n1_α:
 mov eax, dword ptr [r12 + 160]
 cmp eax, 99
 je xchain00125_n3_α
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00125_n3_α
 cmp eax, 0
 jne xchain00125_n3_α
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 184], rax
 jmp xchain00125_n2_α
 xchain00125_n1_β:
 jmp xchain00125_n3_α
# IR_LIT_INTEGER
 xchain00125_n2_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx00126_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00125_n4_α
 xchain00125_n2_β:
 jmp xchain00125_n3_α
.Lx00126_0:
 .quad 1
# IR_KEYWORD_read
 xchain00125_n3_α:
 mov rdi, qword ptr [rip + .Lx00127_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00125_n5_α
 xchain00125_n3_β:
 jmp proc_Time___ω
.Lx00127_0:
 .quad .Lx00127_0_s
.Lx00127_0_s:
 .string "&time"
# IR_ASSIGN_VAR
 xchain00125_n4_α:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 208]
 mov rcx, qword ptr [r12 + 216]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00125_n3_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00125_n6_α
 xchain00125_n4_β:
 jmp xchain00125_n3_α
# IR_VAR
 xchain00125_n5_α:
 mov rax, qword ptr [rbx + 304]
 mov rdx, qword ptr [rbx + 312]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain00125_n7_α
 xchain00125_n5_β:
 jmp proc_Time___ω
# IR_KEYWORD_read
 xchain00125_n6_α:
 mov rdi, qword ptr [rip + .Lx00128_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00125_n8_α
 xchain00125_n6_β:
 jmp xchain00125_n3_α
.Lx00128_0:
 .quad .Lx00128_0_s
.Lx00128_0_s:
 .string "&time"
 xchain00125_n7_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 32]
 cmp eax, 100
 je .Lx00129_0
 mov eax, dword ptr [r12 + 64]
 cmp eax, 100
 je .Lx00129_0
 mov eax, dword ptr [r12 + 32]
 cmp eax, 6
 jne .Lx00129_2
 mov eax, dword ptr [r12 + 64]
 cmp eax, 6
 jne .Lx00129_2
.Lx00129_1:
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 72]
 sub rax, rcx
 mov qword ptr [r12 + 16], 6
 mov qword ptr [r12 + 24], rax
 jmp xchain00125_n9_α
.Lx00129_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 72]
 mov r8d, 1
 lea r9, [r12 + 16]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00129_3
.Lx00129_2:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 72]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_Time___ω
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
.Lx00129_3:
 jmp xchain00125_n9_α
 xchain00125_n7_β:
 jmp proc_Time___ω
# IR_ASSIGN gva
 xchain00125_n8_α:
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [rbx + 304], rax
 mov qword ptr [rbx + 312], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00125_n10_α
 xchain00125_n8_β:
 jmp xchain00125_n3_α
# IR_RETURN
 xchain00125_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Time___γ
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00125_n10_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
 lea rax, [rip + xchain00125_n3_α]
 mov qword ptr [r12 + 96], rax
 jmp xchain00125_n3_α
 xchain00125_n10_β:
 jmp xchain00125_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00125_n11_α:
 jmp qword ptr [r12 + 96]
 xchain00125_n11_β:
 jmp xchain00125_n3_α
proc_Time___β:
jmp proc_Time___ω
proc_Time___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Time___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
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
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1664
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
  mov esi, 1024
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
  mov esi, 2512
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
  mov esi, 400
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
  mov esi, 384
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
  mov esi, 832
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
  mov esi, 800
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
  mov esi, 224
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
  mov esi, 800
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
  mov esi, 240
  call rt_proc_set_frame_bytes@PLT
  pop rbp
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
  push rbp
  mov rbp, rsp
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
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
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
 xchain00130_n0_α:
  .section .rodata
  .Lcall00131_pname: .string "Init__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00131_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain00130_n1_α
 jmp xchain00130_n1_α
xchain00130_n0_β:
 jmp xchain00130_n1_α
# IR_VAR
 xchain00130_n1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 584], rax
 jmp xchain00130_n2_α
 xchain00130_n1_β:
 jmp xchain00130_n3_α
# IR_LIT_STRING
 xchain00130_n2_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx00132_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00130_n4_α
 xchain00130_n2_β:
 jmp xchain00130_n3_α
.Lx00132_0:
 .quad .Lx00132_0_s
.Lx00132_0_s:
 .string "n+"
# IR_VAR_REF
 xchain00130_n3_α:
 lea rdi, [r12 + 640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00130_n5_α
 xchain00130_n3_β:
 jmp xchain00130_n9_α
 xchain00130_n4_α:
  .section .rodata
  .Lcall00133_pname: .string "options"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00133_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain00130_n3_α
 jmp xchain00130_n6_α
xchain00130_n4_β:
 jmp xchain00130_n3_α
# IR_LIT_STRING
 xchain00130_n5_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx00134_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain00130_n7_α
 xchain00130_n5_β:
 jmp xchain00130_n9_α
.Lx00134_0:
 .quad .Lx00134_0_s
.Lx00134_0_s:
 .string "n"
 xchain00130_n6_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00130_n3_α
 xchain00130_n6_β:
 jmp xchain00130_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00130_n7_α:
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00130_n9_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00130_n8_α
 xchain00130_n7_β:
 jmp xchain00130_n9_α
# IR_DEREF variable -> value
 xchain00130_n8_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00130_n9_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00130_n10_α
 xchain00130_n8_β:
 jmp xchain00130_n9_α
# IR_LIT_INTEGER
 xchain00130_n9_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00135_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00130_n11_α
 xchain00130_n9_β:
 jmp xchain00130_n14_α
.Lx00135_0:
 .quad 6
# IR_UNOP
 xchain00130_n10_α:
 mov eax, dword ptr [r12 + 496]
 cmp eax, 99
 je xchain00130_n9_α
 cmp eax, 0
 je xchain00130_n9_α
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 440], rax
 jmp xchain00130_n12_α
 xchain00130_n10_β:
 jmp xchain00130_n9_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00130_n11_α:
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
 lea rax, [rip + xchain00130_n14_α]
 mov qword ptr [r12 + 400], rax
 jmp xchain00130_n13_α
 xchain00130_n11_β:
 jmp xchain00130_n14_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00130_n12_α:
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 392], rax
 lea rax, [rip + xchain00130_n9_α]
 mov qword ptr [r12 + 400], rax
 jmp xchain00130_n13_α
 xchain00130_n12_β:
 jmp xchain00130_n14_α
# IR_ASSIGN gva
 xchain00130_n13_α:
 mov rax, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00130_n14_α
 xchain00130_n13_β:
 jmp xchain00130_n14_α
# IR_VAR
 xchain00130_n14_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00130_n16_α
 xchain00130_n14_β:
 jmp xchain00130_n17_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00130_n15_α:
 jmp qword ptr [r12 + 400]
 xchain00130_n15_β:
 jmp xchain00130_n14_α
# IR_LIT_INTEGER
 xchain00130_n16_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx00136_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00130_n18_α
 xchain00130_n16_β:
 jmp xchain00130_n17_α
.Lx00136_0:
 .quad 0
# IR_VAR
 xchain00130_n17_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00130_n19_α
 xchain00130_n17_β:
 jmp xchain00130_n20_α
 xchain00130_n18_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 336]
 cmp eax, 100
 je .Lx00137_0
 mov eax, dword ptr [r12 + 352]
 cmp eax, 100
 je .Lx00137_0
 mov eax, dword ptr [r12 + 336]
 cmp eax, 6
 jne .Lx00137_2
 mov eax, dword ptr [r12 + 352]
 cmp eax, 6
 jne .Lx00137_2
.Lx00137_1:
 mov rax, qword ptr [r12 + 344]
 mov rcx, qword ptr [r12 + 360]
 cmp rax, rcx
 jg xchain00130_n17_α
 mov rcx, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rcx
 mov rcx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rcx
 jmp xchain00130_n21_α
.Lx00137_0:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 mov r8d, 6
 lea r9, [r12 + 320]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00137_1
 cmp eax, 1
 je xchain00130_n17_α
 jmp xchain00130_n21_α
.Lx00137_2:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 mov r8d, 6
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00130_n17_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
 jmp xchain00130_n21_α
 xchain00130_n18_β:
 jmp xchain00130_n17_α
 xchain00130_n19_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn630: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn630]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain00130_n20_α
 jmp xchain00130_n22_α
 xchain00130_n19_β:
 jmp xchain00130_n20_α
# IR_VAR
 xchain00130_n20_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00130_n23_α
 xchain00130_n20_β:
 jmp xchain00130_n24_α
# IR_LIT_STRING
 xchain00130_n21_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx00138_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00130_n25_α
 xchain00130_n21_β:
 jmp xchain00130_n17_α
.Lx00138_0:
 .quad .Lx00138_0_s
.Lx00138_0_s:
 .string "-n needs a positive numeric parameter"
# IR_ASSIGN gva
 xchain00130_n22_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00130_n20_α
 xchain00130_n22_β:
 jmp xchain00130_n20_α
# IR_LIT_STRING
 xchain00130_n23_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00139_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00130_n26_α
 xchain00130_n23_β:
 jmp xchain00130_n24_α
.Lx00139_0:
 .quad .Lx00139_0_s
.Lx00139_0_s:
 .string "-Queens:"
# IR_LIT_INTEGER
 xchain00130_n24_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx00140_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain00130_n27_α
 xchain00130_n24_β:
 jmp xchain00130_n29_α
.Lx00140_0:
 .quad 1
 xchain00130_n25_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+288]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn637: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn637]
 lea rsi, [r12 + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain00130_n17_α
 jmp xchain00130_n28_α
 xchain00130_n25_β:
 jmp xchain00130_n17_α
 xchain00130_n26_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn639: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn639]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00130_n24_α
 jmp xchain00130_n24_α
 xchain00130_n26_β:
 jmp xchain00130_n24_α
 xchain00130_n27_α:
  .section .rodata
  .Lcall00141_pname: .string "q"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00141_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain00130_n29_α
 jmp xchain00130_n29_α
xchain00130_n27_β:
 jmp xchain00130_n29_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00130_n28_α:
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain00130_n17_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain00130_n17_α
 xchain00130_n28_β:
 jmp xchain00130_n17_α
 xchain00130_n29_α:
  .section .rodata
  .Lcall00142_pname: .string "Term__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00142_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
xchain00130_n29_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00130_n30_α:
 jmp qword ptr [r12 + 256]
 xchain00130_n30_β:
 jmp xchain00130_n17_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
pop r12
ret
