  .intel_syntax noprefix
  .text
  .globl proc_dofile_α
proc_dofile_α:
#=======================================================================================================================
    .global proc_dofile_α
    .global proc_dofile_β
    .global proc_dofile_γ
    .global proc_dofile_ω
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
 mov qword ptr [r12 + 2544], rax
 pop rsi
proc_dofile_α_body:
# IR_MAKE_LIST
 xchain0_n0_α:
 lea rdi, [r12 + 2544]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
 xchain0_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2528]
 mov rdx, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 2608], rax
 mov qword ptr [r12 + 2616], rdx
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
# IR_MAKE_LIST
 xchain0_n2_α:
 lea rdi, [r12 + 2512]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
 xchain0_n3_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2496]
 mov rdx, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n4_α
# IR_VAR
 xchain0_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1736], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
 xchain0_n5_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1728] -> [zr+1712]
 mov rax, qword ptr [r12 + 1728]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 1720], rax
  .section .rodata
  .Lrkfn10: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn10]
 lea rsi, [r12 + 1712]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp xchain0_n6_α
# IR_VAR
 xchain0_n6_α:
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 1672], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n9_α
 xchain0_n7_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1696]
 mov rdx, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain0_n10_α
 xchain0_n7_β:
 jmp xchain0_n6_α
# IR_UNOP
 xchain0_n8_α:
 mov rdi, qword ptr [r12 + 2576]
 mov rsi, qword ptr [r12 + 2584]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain0_n11_α
 xchain0_n8_β:
 jmp xchain0_n9_α
# IR_VAR
 xchain0_n9_α:
 mov rax, qword ptr [r12 + 2624]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 1592], rax
 jmp xchain0_n12_α
 xchain0_n9_β:
 jmp xchain0_n13_α
# IR_VAR
 xchain0_n10_α:
 mov rax, qword ptr [r12 + 2640]
 mov qword ptr [r12 + 2464], rax
 mov rax, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 2472], rax
 jmp xchain0_n14_α
 xchain0_n10_β:
 jmp xchain0_n4_α
 xchain0_n11_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1648] -> [zr+1632]
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 1640], rax
  .section .rodata
  .Lrkfn20: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 1632]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 cmp eax, 99
 je xchain0_n9_α
 jmp xchain0_n9_α
 xchain0_n11_β:
 jmp xchain0_n9_α
# IR_LIT_INTEGER
 xchain0_n12_α:
 mov qword ptr [r12 + 1600], 6
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [r12 + 1608], rax
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n13_α
.Lx21_0:
 .quad 7
# IR_LIT_INTEGER
 xchain0_n13_α:
 mov qword ptr [r12 + 1488], 6
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 1496], rax
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n19_α
.Lx22_0:
 .quad 0
# IR_GEN_SCAN
 xchain0_n14_α:
 mov rdi, qword ptr [r12 + 2464]
 mov rsi, qword ptr [r12 + 2472]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp xchain0_n4_α
 xchain0_n15_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1584] -> [zr+1552]
 mov rax, qword ptr [r12 + 1584]
 mov qword ptr [r12 + 1552], rax
 mov rax, qword ptr [r12 + 1592]
 mov qword ptr [r12 + 1560], rax
# marshal arg1 = producer-box slot [zr+1600] -> [zr+1568]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1576], rax
  .section .rodata
  .Lrkfn26: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn26]
 lea rsi, [r12 + 1552]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n13_α
 xchain0_n16_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1488]
 mov rdx, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain0_n19_α
 xchain0_n16_β:
 jmp xchain0_n19_α
# IR_LIT_CHARSET
 xchain0_n17_α:
 mov qword ptr [r12 + 2448], 1
 mov dword ptr [r12 + 2452], -1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 2456], rax
 jmp xchain0_n20_α
 xchain0_n17_β:
 jmp xchain0_n27_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string " "
 xchain0_n18_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1536] -> [zr+1520]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1528], rax
  .section .rodata
  .Lrkfn30: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn30]
 lea rsi, [r12 + 1520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n13_α
 xchain0_n18_β:
 jmp xchain0_n13_α
# IR_VAR
 xchain0_n19_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 1384], rax
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n22_α
# IR_SCAN_MANY
 xchain0_n20_α:
 mov eax, r14d
.Lx34_0:
 cmp eax, r15d
 jge .Lx34_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx34_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx34_1
 add eax, 1
 jmp .Lx34_0
.Lx34_1:
 cmp eax, r14d
 je xchain0_n27_α
 mov qword ptr [r12 + 2432], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 2440], rcx
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp xchain0_n27_α
.Lx34_2:
 .quad .Lx34_2_s
.Lx34_2_s:
 .string " "
# IR_VAR
 xchain0_n21_α:
 mov rax, qword ptr [r12 + 2608]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 2616]
 mov qword ptr [r12 + 1448], rax
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n22_α
# IR_VAR
 xchain0_n22_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 1288], rax
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp xchain0_n26_α
# IR_SCAN_TAB
 xchain0_n23_α:
 mov rax, qword ptr [r12 + 2440]
 cmp rax, 1
 jge .Lx40_0
 add rax, r15
 add rax, 1
.Lx40_0:
 cmp rax, 1
 jl xchain0_n27_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n27_α
 mov qword ptr [r12 + 2416], r14
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
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 jmp xchain0_n27_α
 xchain0_n23_β:
 mov r14, qword ptr [r12 + 2416]
 jmp xchain0_n27_α
# IR_LIST_BANG
 xchain0_n24_α:
 mov qword ptr [r12 + 1424], 0
.Lx42_0:
 mov rdi, qword ptr [r12 + 1440]
 mov rsi, qword ptr [r12 + 1448]
 mov rdx, qword ptr [r12 + 1424]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 cmp rax, 99
 je xchain0_n22_α
 jmp xchain0_n28_α
 xchain0_n24_β:
 inc qword ptr [r12 + 1424]
 jmp .Lx42_0
# IR_VAR
 xchain0_n25_α:
 mov rax, qword ptr [r12 + 2608]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 2616]
 mov qword ptr [r12 + 1320], rax
 jmp xchain0_n29_α
 xchain0_n25_β:
 jmp xchain0_n26_α
# IR_VAR
 xchain0_n26_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 1144], rax
 jmp xchain0_n30_α
 xchain0_n26_β:
 jmp xchain0_n31_α
# IR_LIT_CHARSET
 xchain0_n27_α:
 mov qword ptr [r12 + 2384], 1
 mov dword ptr [r12 + 2388], -1
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [r12 + 2392], rax
 jmp xchain0_n32_α
 xchain0_n27_β:
 jmp xchain0_n45_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "-0123456789"
# IR_LIT_INTEGER
 xchain0_n28_α:
 mov qword ptr [r12 + 1456], 6
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [r12 + 1464], rax
 jmp xchain0_n33_α
 xchain0_n28_β:
 jmp xchain0_n24_β
.Lx48_0:
 .quad 2
# IR_UNOP
 xchain0_n29_α:
 mov rdi, qword ptr [r12 + 2608]
 mov rsi, qword ptr [r12 + 2616]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain0_n34_α
 xchain0_n29_β:
 jmp xchain0_n26_α
# IR_LIT_INTEGER
 xchain0_n30_α:
 mov qword ptr [r12 + 1152], 6
 mov rax, qword ptr [rip + .Lx50_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain0_n35_α
 xchain0_n30_β:
 jmp xchain0_n31_α
.Lx50_0:
 .quad 7
# IR_VAR
 xchain0_n31_α:
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 1048], rax
 jmp xchain0_n36_α
 xchain0_n31_β:
 jmp xchain0_n37_α
# IR_SCAN_MANY
 xchain0_n32_α:
 mov eax, r14d
.Lx54_0:
 cmp eax, r15d
 jge .Lx54_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx54_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx54_1
 add eax, 1
 jmp .Lx54_0
.Lx54_1:
 cmp eax, r14d
 je xchain0_n45_α
 mov qword ptr [r12 + 2368], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 2376], rcx
 jmp xchain0_n38_α
 xchain0_n32_β:
 jmp xchain0_n45_α
.Lx54_2:
 .quad .Lx54_2_s
.Lx54_2_s:
 .string "-0123456789"
 xchain0_n33_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 1408]
 mov rsi, qword ptr [r12 + 1416]
 mov rdx, qword ptr [r12 + 1456]
 mov rcx, qword ptr [r12 + 1464]
 mov r8d, 18
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n22_α
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain0_n39_α
 xchain0_n33_β:
 jmp xchain0_n22_α
 xchain0_n34_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 1280]
 mov rsi, qword ptr [r12 + 1288]
 mov rdx, qword ptr [r12 + 1296]
 mov rcx, qword ptr [r12 + 1304]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n26_α
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain0_n40_α
 xchain0_n34_β:
 jmp xchain0_n26_α
 xchain0_n35_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1104]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1112], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+1120]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rax
  .section .rodata
  .Lrkfn58: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn58]
 lea rsi, [r12 + 1104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je xchain0_n31_α
 jmp xchain0_n41_α
 xchain0_n35_β:
 jmp xchain0_n31_α
 xchain0_n36_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+1024]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1032], rax
  .section .rodata
  .Lrkfn60: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn60]
 lea rsi, [r12 + 1024]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xchain0_n37_α
 jmp xchain0_n42_α
 xchain0_n36_β:
 jmp xchain0_n37_α
# IR_VAR_REF local
 xchain0_n37_α:
 lea rdi, [r12 + 2576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain0_n43_α
 xchain0_n37_β:
 jmp xchain0_n49_α
# IR_SCAN_TAB
 xchain0_n38_α:
 mov rax, qword ptr [r12 + 2376]
 cmp rax, 1
 jge .Lx64_0
 add rax, r15
 add rax, 1
.Lx64_0:
 cmp rax, 1
 jl xchain0_n45_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n45_α
 mov qword ptr [r12 + 2352], r14
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
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 jmp xchain0_n44_α
 xchain0_n38_β:
 mov r14, qword ptr [r12 + 2352]
 jmp xchain0_n45_α
 xchain0_n39_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 1376]
 mov rsi, qword ptr [r12 + 1384]
 mov rdx, qword ptr [r12 + 1392]
 mov rcx, qword ptr [r12 + 1400]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n22_α
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain0_n46_α
 xchain0_n39_β:
 jmp xchain0_n22_α
 xchain0_n40_α:
# BOX IR_CALL sqrt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1248]
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1256], rax
  .section .rodata
  .Lrkfn67: .string "sqrt"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn67]
 lea rsi, [r12 + 1248]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je xchain0_n26_α
 jmp xchain0_n47_α
 xchain0_n40_β:
 jmp xchain0_n26_α
 xchain0_n41_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1072]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn69: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn69]
 lea rsi, [r12 + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain0_n31_α
 jmp xchain0_n31_α
 xchain0_n41_β:
 jmp xchain0_n31_α
 xchain0_n42_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1008]
 mov rdx, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain0_n37_α
 xchain0_n42_β:
 jmp xchain0_n37_α
# IR_VAR
 xchain0_n43_α:
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 920], rax
 jmp xchain0_n48_α
 xchain0_n43_β:
 jmp xchain0_n49_α
 xchain0_n44_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2336] -> [zr+2320]
 mov rax, qword ptr [r12 + 2336]
 mov qword ptr [r12 + 2320], rax
 mov rax, qword ptr [r12 + 2344]
 mov qword ptr [r12 + 2328], rax
  .section .rodata
  .Lrkfn74: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn74]
 lea rsi, [r12 + 2320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 cmp eax, 99
 je xchain0_n45_α
 jmp xchain0_n50_α
 xchain0_n44_β:
 jmp xchain0_n45_α
# IR_LIT_CHARSET
 xchain0_n45_α:
 mov qword ptr [r12 + 2272], 1
 mov dword ptr [r12 + 2276], -1
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [r12 + 2280], rax
 jmp xchain0_n51_α
 xchain0_n45_β:
 jmp xchain0_n61_α
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
 .string " "
 xchain0_n46_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1360]
 mov rdx, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain0_n24_β
 xchain0_n46_β:
 jmp xchain0_n22_α
# IR_LIT_REAL
 xchain0_n47_α:
 mov qword ptr [r12 + 1328], 7
 mov rax, qword ptr [rip + .Lx77_0]
 mov qword ptr [r12 + 1336], rax
 jmp xchain0_n52_α
 xchain0_n47_β:
 jmp xchain0_n26_α
.Lx77_0:
 .quad 4602678819172646912
# IR_UNOP
 xchain0_n48_α:
 mov rdi, qword ptr [r12 + 2576]
 mov rsi, qword ptr [r12 + 2584]
 call rt_size_d@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain0_n53_α
 xchain0_n48_β:
 jmp xchain0_n49_α
# IR_VAR
 xchain0_n49_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 808], rax
 jmp xchain0_n54_α
 xchain0_n49_β:
 jmp xchain0_n55_α
 xchain0_n50_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2304]
 mov rdx, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2656], rax
 mov qword ptr [r12 + 2664], rdx
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain0_n45_α
 xchain0_n50_β:
 jmp xchain0_n45_α
# IR_SCAN_MANY
 xchain0_n51_α:
 mov eax, r14d
.Lx83_0:
 cmp eax, r15d
 jge .Lx83_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx83_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx83_1
 add eax, 1
 jmp .Lx83_0
.Lx83_1:
 cmp eax, r14d
 je xchain0_n61_α
 mov qword ptr [r12 + 2256], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 2264], rcx
 jmp xchain0_n56_α
 xchain0_n51_β:
 jmp xchain0_n61_α
.Lx83_2:
 .quad .Lx83_2_s
.Lx83_2_s:
 .string " "
 xchain0_n52_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 1232]
 mov rsi, qword ptr [r12 + 1240]
 mov rdx, qword ptr [r12 + 1328]
 mov rcx, qword ptr [r12 + 1336]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n26_α
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain0_n57_α
 xchain0_n52_β:
 jmp xchain0_n26_α
# IR_LIT_INTEGER
 xchain0_n53_α:
 mov qword ptr [r12 + 928], 6
 mov rax, qword ptr [rip + .Lx85_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain0_n58_α
 xchain0_n53_β:
 jmp xchain0_n49_α
.Lx85_0:
 .quad 2
# IR_LIT_INTEGER
 xchain0_n54_α:
 mov qword ptr [r12 + 816], 6
 mov rax, qword ptr [rip + .Lx86_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain0_n59_α
 xchain0_n54_β:
 jmp xchain0_n55_α
.Lx86_0:
 .quad 7
# IR_LIT_REAL
 xchain0_n55_α:
 mov qword ptr [r12 + 704], 7
 mov rax, qword ptr [rip + .Lx87_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain0_n60_α
 xchain0_n55_β:
 jmp xchain0_n65_α
.Lx87_0:
 .quad 0
# IR_SCAN_TAB
 xchain0_n56_α:
 mov rax, qword ptr [r12 + 2264]
 cmp rax, 1
 jge .Lx89_0
 add rax, r15
 add rax, 1
.Lx89_0:
 cmp rax, 1
 jl xchain0_n61_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n61_α
 mov qword ptr [r12 + 2240], r14
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
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 jmp xchain0_n61_α
 xchain0_n56_β:
 mov r14, qword ptr [r12 + 2240]
 jmp xchain0_n61_α
 xchain0_n57_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1200]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1208], rax
  .section .rodata
  .Lrkfn91: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn91]
 lea rsi, [r12 + 1200]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 cmp eax, 99
 je xchain0_n26_α
 jmp xchain0_n62_α
 xchain0_n57_β:
 jmp xchain0_n26_α
 xchain0_n58_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 896]
 cmp eax, 100
 je .Lx92_0
 mov eax, dword ptr [r12 + 928]
 cmp eax, 100
 je .Lx92_0
 mov eax, dword ptr [r12 + 896]
 cmp eax, 6
 jne .Lx92_2
 mov eax, dword ptr [r12 + 928]
 cmp eax, 6
 jne .Lx92_2
.Lx92_1:
 mov rax, qword ptr [r12 + 904]
 mov rcx, qword ptr [r12 + 936]
 cqo
 idiv rcx
 mov qword ptr [r12 + 880], 6
 mov qword ptr [r12 + 888], rax
 jmp xchain0_n63_α
.Lx92_0:
 mov rdi, qword ptr [r12 + 896]
 mov rsi, qword ptr [r12 + 904]
 mov rdx, qword ptr [r12 + 928]
 mov rcx, qword ptr [r12 + 936]
 mov r8d, 3
 lea r9, [r12 + 880]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx92_3
.Lx92_2:
 mov rdi, qword ptr [r12 + 896]
 mov rsi, qword ptr [r12 + 904]
 mov rdx, qword ptr [r12 + 928]
 mov rcx, qword ptr [r12 + 936]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n49_α
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
.Lx92_3:
 jmp xchain0_n63_α
 xchain0_n58_β:
 jmp xchain0_n49_α
 xchain0_n59_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+768]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 776], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+784]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
  .section .rodata
  .Lrkfn94: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn94]
 lea rsi, [r12 + 768]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain0_n55_α
 jmp xchain0_n64_α
 xchain0_n59_β:
 jmp xchain0_n55_α
 xchain0_n60_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain0_n65_α
 xchain0_n60_β:
 jmp xchain0_n65_α
# IR_LIT_INTEGER
 xchain0_n61_α:
 mov qword ptr [r12 + 2208], 6
 mov rax, qword ptr [rip + .Lx96_0]
 mov qword ptr [r12 + 2216], rax
 jmp xchain0_n66_α
 xchain0_n61_β:
 jmp xchain0_n71_α
.Lx96_0:
 .quad 0
 xchain0_n62_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1184]
 mov rdx, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain0_n26_α
 xchain0_n62_β:
 jmp xchain0_n26_α
# IR_LIT_INTEGER
 xchain0_n63_α:
 mov qword ptr [r12 + 944], 6
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain0_n67_α
 xchain0_n63_β:
 jmp xchain0_n49_α
.Lx98_0:
 .quad 1
 xchain0_n64_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+736]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn100: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn100]
 lea rsi, [r12 + 736]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain0_n55_α
 jmp xchain0_n55_α
 xchain0_n64_β:
 jmp xchain0_n55_α
# IR_VAR
 xchain0_n65_α:
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 488], rax
 jmp xchain0_n68_α
 xchain0_n65_β:
 jmp xchain0_n69_α
# IR_SCAN_TAB
 xchain0_n66_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00001_0
 add rax, r15
 add rax, 1
.Lx00001_0:
 cmp rax, 1
 jl xchain0_n71_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n71_α
 mov qword ptr [r12 + 2192], r14
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
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain0_n70_α
 xchain0_n66_β:
 mov r14, qword ptr [r12 + 2192]
 jmp xchain0_n71_α
 xchain0_n67_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 880]
 cmp eax, 100
 je .Lx00002_0
 mov eax, dword ptr [r12 + 944]
 cmp eax, 100
 je .Lx00002_0
 mov eax, dword ptr [r12 + 880]
 cmp eax, 6
 jne .Lx00002_2
 mov eax, dword ptr [r12 + 944]
 cmp eax, 6
 jne .Lx00002_2
.Lx00002_1:
 mov rax, qword ptr [r12 + 888]
 mov rcx, qword ptr [r12 + 952]
 add rax, rcx
 mov qword ptr [r12 + 864], 6
 mov qword ptr [r12 + 872], rax
 jmp xchain0_n72_α
.Lx00002_0:
 mov rdi, qword ptr [r12 + 880]
 mov rsi, qword ptr [r12 + 888]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 mov r8d, 0
 lea r9, [r12 + 864]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00002_3
.Lx00002_2:
 mov rdi, qword ptr [r12 + 880]
 mov rsi, qword ptr [r12 + 888]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n49_α
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
.Lx00002_3:
 jmp xchain0_n72_α
 xchain0_n67_β:
 jmp xchain0_n49_α
# IR_LIST_BANG
 xchain0_n68_α:
 mov qword ptr [r12 + 464], 0
.Lx00003_0:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 464]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp rax, 99
 je xchain0_n69_α
 jmp xchain0_n73_α
 xchain0_n68_β:
 inc qword ptr [r12 + 464]
 jmp .Lx00003_0
# IR_KEYWORD_read
 xchain0_n69_α:
 mov rdi, qword ptr [rip + .Lx00004_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain0_n74_α
 xchain0_n69_β:
 jmp xchain0_n80_α
.Lx00004_0:
 .quad .Lx00004_0_s
.Lx00004_0_s:
 .string "&e"
 xchain0_n70_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2176]
 mov rdx, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 jmp xchain0_n71_α
 xchain0_n70_β:
 jmp xchain0_n71_α
# IR_VAR
 xchain0_n71_α:
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 2128], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 2136], rax
 jmp xchain0_n75_α
 xchain0_n71_β:
 jmp xchain0_n76_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n72_α:
 mov rdi, qword ptr [r12 + 848]
 mov rsi, qword ptr [r12 + 856]
 mov rdx, qword ptr [r12 + 864]
 mov rcx, qword ptr [r12 + 872]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n49_α
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain0_n77_α
 xchain0_n72_β:
 jmp xchain0_n49_α
 xchain0_n73_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n78_α
 xchain0_n73_β:
 jmp xchain0_n69_α
# IR_VAR
 xchain0_n74_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 376], rax
 jmp xchain0_n79_α
 xchain0_n74_β:
 jmp xchain0_n80_α
# IR_LIT_STRING
 xchain0_n75_α:
 mov qword ptr [r12 + 2144], 1
 mov rax, qword ptr [rip + .Lx00005_0]
 mov qword ptr [r12 + 2152], rax
 jmp xchain0_n81_α
 xchain0_n75_β:
 jmp xchain0_n76_α
.Lx00005_0:
 .quad .Lx00005_0_s
.Lx00005_0_s:
 .string "overhead"
# IR_VAR
 xchain0_n76_α:
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 2088], rax
 jmp xchain0_n82_α
 xchain0_n76_β:
 jmp xchain0_n83_α
# IR_DEREF variable -> value
 xchain0_n77_α:
 mov rdi, qword ptr [r12 + 960]
 mov rsi, qword ptr [r12 + 968]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n49_α
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain0_n84_α
 xchain0_n77_β:
 jmp xchain0_n49_α
# IR_VAR
 xchain0_n78_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 536], rax
 jmp xchain0_n85_α
 xchain0_n78_β:
 jmp xchain0_n68_β
# IR_VAR
 xchain0_n79_α:
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 408], rax
 jmp xchain0_n86_α
 xchain0_n79_β:
 jmp xchain0_n80_α
# IR_VAR
 xchain0_n80_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 216], rax
 jmp xchain0_n87_α
 xchain0_n80_β:
 jmp xchain0_n88_α
 xchain0_n81_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 2672]
 mov rsi, qword ptr [r12 + 2680]
 mov rdx, qword ptr [r12 + 2144]
 mov rcx, qword ptr [r12 + 2152]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n76_α
 mov rdi, qword ptr [r12 + 2144]
 mov rsi, qword ptr [r12 + 2152]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 jmp xchain0_n89_α
 xchain0_n81_β:
 jmp xchain0_n76_α
# IR_LIT_STRING
 xchain0_n82_α:
 mov qword ptr [r12 + 2096], 1
 mov rax, qword ptr [rip + .Lx00006_0]
 mov qword ptr [r12 + 2104], rax
 jmp xchain0_n90_α
 xchain0_n82_β:
 jmp xchain0_n83_α
.Lx00006_0:
 .quad .Lx00006_0_s
.Lx00006_0_s:
 .string "nothing"
# IR_VAR
 xchain0_n83_α:
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 2040], rax
 jmp xchain0_n91_α
 xchain0_n83_β:
 jmp xchain0_n92_α
 xchain0_n84_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 976]
 mov rdx, qword ptr [r12 + 984]
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain0_n49_α
 xchain0_n84_β:
 jmp xchain0_n49_α
# IR_VAR
 xchain0_n85_α:
 mov rax, qword ptr [r12 + 2592]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 664], rax
 jmp xchain0_n93_α
 xchain0_n85_β:
 jmp xchain0_n94_α
# IR_UNOP
 xchain0_n86_α:
 mov rdi, qword ptr [r12 + 2576]
 mov rsi, qword ptr [r12 + 2584]
 call rt_size_d@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain0_n95_α
 xchain0_n86_β:
 jmp xchain0_n80_α
# IR_LIT_INTEGER
 xchain0_n87_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00007_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain0_n96_α
 xchain0_n87_β:
 jmp xchain0_n88_α
.Lx00007_0:
 .quad 7
# IR_LIT_STRING
 xchain0_n88_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx00008_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain0_n97_α
 xchain0_n88_β:
 jmp xchain0_n00009_α
.Lx00008_0:
 .quad .Lx00008_0_s
.Lx00008_0_s:
 .string "   "
# IR_VAR
 xchain0_n89_α:
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 2664]
 mov qword ptr [r12 + 1864], rax
 jmp xchain0_n98_α
 xchain0_n89_β:
 jmp xchain0_n92_α
 xchain0_n90_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 2672]
 mov rsi, qword ptr [r12 + 2680]
 mov rdx, qword ptr [r12 + 2096]
 mov rcx, qword ptr [r12 + 2104]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n83_α
 mov rdi, qword ptr [r12 + 2096]
 mov rsi, qword ptr [r12 + 2104]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain0_n99_α
 xchain0_n90_β:
 jmp xchain0_n83_α
# IR_VAR
 xchain0_n91_α:
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2664]
 mov qword ptr [r12 + 2056], rax
 jmp xchain0_n00010_α
 xchain0_n91_β:
 jmp xchain0_n92_α
# IR_GEN_SCAN
 xchain0_n92_α:
 lea rdi, [r12 + 1744]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 1744]
 mov r14, qword ptr [r12 + 1752]
 mov r15, qword ptr [r12 + 1760]
 jmp xchain0_n4_α
 xchain0_n92_β:
 jmp xchain0_n4_α
# IR_LIT_INTEGER
 xchain0_n93_α:
 mov qword ptr [r12 + 672], 6
 mov rax, qword ptr [rip + .Lx00011_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain0_n00012_α
 xchain0_n93_β:
 jmp xchain0_n94_α
.Lx00011_0:
 .quad 0
# IR_VAR
 xchain0_n94_α:
 mov rax, qword ptr [r12 + 2592]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 632], rax
 jmp xchain0_n00013_α
 xchain0_n94_β:
 jmp xchain0_n68_β
 xchain0_n95_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n80_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n00014_α
 xchain0_n95_β:
 jmp xchain0_n80_α
 xchain0_n96_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+176]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn148: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn148]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain0_n88_α
 jmp xchain0_n00001_α
 xchain0_n96_β:
 jmp xchain0_n88_α
# IR_VAR
 xchain0_n97_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n00002_α
 xchain0_n97_β:
 jmp xchain0_n00009_α
 xchain0_n98_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1856]
 mov rdx, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 jmp xchain0_n00003_α
 xchain0_n98_β:
 jmp xchain0_n92_α
# IR_VAR
 xchain0_n99_α:
 mov rax, qword ptr [r12 + 2608]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 2616]
 mov qword ptr [r12 + 1960], rax
 jmp xchain0_n00004_α
 xchain0_n99_β:
 jmp xchain0_n92_α
 xchain0_n00010_α:
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
  .Lrkfn155: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn155]
 lea rsi, [r12 + 2000]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 cmp eax, 99
 je xchain0_n92_α
 jmp xchain0_n00015_α
 xchain0_n00010_β:
 jmp xchain0_n92_α
 xchain0_n00012_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2592]
 cmp eax, 100
 je .Lx00016_0
 mov eax, dword ptr [r12 + 672]
 cmp eax, 100
 je .Lx00016_0
 mov eax, dword ptr [r12 + 2592]
 cmp eax, 6
 jne .Lx00016_2
 mov eax, dword ptr [r12 + 672]
 cmp eax, 6
 jne .Lx00016_2
.Lx00016_1:
 mov rax, qword ptr [r12 + 2600]
 mov rcx, qword ptr [r12 + 680]
 cmp rax, rcx
 jg xchain0_n94_α
 mov rcx, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rcx
 mov rcx, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rcx
 jmp xchain0_n00017_α
.Lx00016_0:
 mov rdi, qword ptr [r12 + 2592]
 mov rsi, qword ptr [r12 + 2600]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 mov r8d, 6
 lea r9, [r12 + 640]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00016_1
 cmp eax, 1
 je xchain0_n94_α
 jmp xchain0_n00017_α
.Lx00016_2:
 mov rdi, qword ptr [r12 + 2592]
 mov rsi, qword ptr [r12 + 2600]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 mov r8d, 6
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n94_α
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
 jmp xchain0_n00017_α
 xchain0_n00012_β:
 jmp xchain0_n94_α
 xchain0_n00013_α:
# BOX IR_CALL log(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+608]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn158: .string "log"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn158]
 lea rsi, [r12 + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain0_n68_β
 jmp xchain0_n00018_α
 xchain0_n00013_β:
 jmp xchain0_n68_β
 xchain0_n00014_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 mov r8d, 18
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n80_α
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain0_n00019_α
 xchain0_n00014_β:
 jmp xchain0_n80_α
 xchain0_n00001_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+144]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn161: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn161]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain0_n88_α
 jmp xchain0_n88_α
 xchain0_n00001_β:
 jmp xchain0_n88_α
 xchain0_n00002_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+64]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 72], rax
# marshal arg1 = producer-box slot [zr+112] -> [zr+80]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn163: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn163]
 lea rsi, [r12 + 64]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain0_n00009_α
 jmp xchain0_n00009_α
 xchain0_n00002_β:
 jmp xchain0_n00009_α
# IR_RETURN
 xchain0_n00009_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_dofile_γ
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n00003_α:
 mov rax, qword ptr [r12 + 1840]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 1848]
 mov qword ptr [r12 + 1816], rax
 lea rax, [rip + xchain0_n92_α]
 mov qword ptr [r12 + 1824], rax
 jmp xchain0_n00020_α
 xchain0_n00003_β:
 jmp xchain0_n92_α
# IR_VAR
 xchain0_n00004_α:
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 2664]
 mov qword ptr [r12 + 1976], rax
 jmp xchain0_n00021_α
 xchain0_n00004_β:
 jmp xchain0_n92_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n00015_α:
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1880], rax
 lea rax, [rip + xchain0_n92_α]
 mov qword ptr [r12 + 1888], rax
 jmp xchain0_n00005_α
 xchain0_n00015_β:
 jmp xchain0_n92_α
# IR_LIT_INTEGER
 xchain0_n00017_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx00022_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n00023_α
 xchain0_n00017_β:
 jmp xchain0_n68_β
.Lx00022_0:
 .quad 0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n00018_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 552], rax
 lea rax, [rip + xchain0_n68_β]
 mov qword ptr [r12 + 560], rax
 jmp xchain0_n00024_α
 xchain0_n00018_β:
 jmp xchain0_n68_β
# IR_LIT_REAL
 xchain0_n00019_α:
 mov qword ptr [r12 + 416], 7
 mov rax, qword ptr [rip + .Lx00025_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain0_n00026_α
 xchain0_n00019_β:
 jmp xchain0_n80_α
.Lx00025_0:
 .quad 4602678819172646912
 xchain0_n00020_α:
 jmp xchain0_n00027_α
xchain0_n00020_β:
 jmp xchain0_n92_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n00028_α:
 jmp qword ptr [r12 + 1824]
 xchain0_n00028_β:
 jmp xchain0_n92_α
 xchain0_n00021_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1952] -> [zr+1920]
 mov rax, qword ptr [r12 + 1952]
 mov qword ptr [r12 + 1920], rax
 mov rax, qword ptr [r12 + 1960]
 mov qword ptr [r12 + 1928], rax
# marshal arg1 = producer-box slot [zr+1968] -> [zr+1936]
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 1944], rax
  .section .rodata
  .Lrkfn179: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn179]
 lea rsi, [r12 + 1920]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 cmp eax, 99
 je xchain0_n92_α
 jmp xchain0_n00029_α
 xchain0_n00021_β:
 jmp xchain0_n92_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n00005_α:
 mov rax, qword ptr [r12 + 1872]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 1816], rax
 lea rax, [rip + xchain0_n00030_α]
 mov qword ptr [r12 + 1824], rax
 jmp xchain0_n00020_α
 xchain0_n00005_β:
 jmp xchain0_n92_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n00030_α:
 jmp qword ptr [r12 + 1888]
 xchain0_n00030_β:
 jmp xchain0_n92_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n00023_α:
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
 lea rax, [rip + xchain0_n68_β]
 mov qword ptr [r12 + 560], rax
 jmp xchain0_n00024_α
 xchain0_n00023_β:
 jmp xchain0_n68_β
 xchain0_n00024_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 552]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n68_β
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain0_n00031_α
 xchain0_n00024_β:
 jmp xchain0_n68_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n00032_α:
 jmp qword ptr [r12 + 560]
 xchain0_n00032_β:
 jmp xchain0_n68_β
 xchain0_n00026_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n80_α
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n00033_α
 xchain0_n00026_β:
 jmp xchain0_n80_α
# IR_GEN_SCAN
 xchain0_n00027_α:
 lea rdi, [r12 + 1744]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 1744]
 mov r14, qword ptr [r12 + 1752]
 mov r15, qword ptr [r12 + 1760]
 jmp xchain0_n4_α
 xchain0_n00027_β:
 jmp xchain0_n4_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n00029_α:
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1880], rax
 lea rax, [rip + xchain0_n92_α]
 mov qword ptr [r12 + 1888], rax
 jmp xchain0_n00005_α
 xchain0_n00029_β:
 jmp xchain0_n92_α
 xchain0_n00031_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain0_n68_β
 xchain0_n00031_β:
 jmp xchain0_n68_β
 xchain0_n00033_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+272]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn196: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn196]
 lea rsi, [r12 + 272]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain0_n80_α
 jmp xchain0_n00034_α
 xchain0_n00033_β:
 jmp xchain0_n80_α
 xchain0_n00034_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n80_α
 xchain0_n00034_β:
 jmp xchain0_n80_α
proc_dofile_β:
jmp proc_dofile_ω
proc_dofile_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 2544]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_dofile_ω:
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
  .Lstartup_pname0: .string "dofile"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_dofile_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  pop rbp
  ret
  .globl main
main:
  push rbp
  mov rbp, rsp
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
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
 mov qword ptr [r12 + 592], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain00035_n0_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx00036_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain00035_n1_α
 xchain00035_n0_β:
 jmp xchain00035_n2_α
.Lx00036_0:
 .quad .Lx00036_0_s
.Lx00036_0_s:
 .string "  N ovhead rmserr median  gmean   filename"
 xchain00035_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+560]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn201: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn201]
 lea rsi, [r12 + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain00035_n2_α
 jmp xchain00035_n2_α
 xchain00035_n1_β:
 jmp xchain00035_n2_α
# IR_VAR
 xchain00035_n2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 520], rax
 jmp xchain00035_n3_α
 xchain00035_n2_β:
 jmp xchain00035_n4_α
# IR_UNOP
 xchain00035_n3_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00035_n5_α
 xchain00035_n3_β:
 jmp xchain00035_n4_α
# IR_VAR
 xchain00035_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00035_n6_α
 xchain00035_n4_β:
 jmp xchain00035_n10_α
# IR_LIT_INTEGER
 xchain00035_n5_α:
 mov qword ptr [r12 + 528], 6
 mov rax, qword ptr [rip + .Lx00037_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain00035_n8_α
 xchain00035_n5_β:
 jmp xchain00035_n4_α
.Lx00037_0:
 .quad 0
 xchain00035_n6_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn209: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn209]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain00035_n10_α
 jmp xchain00035_n9_α
 xchain00035_n6_β:
 jmp xchain00035_n10_α
 xchain00035_n7_α:
 jmp xchain00035_n10_α
xchain00035_n7_β:
 jmp xchain00035_n10_α
 xchain00035_n8_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 496]
 cmp eax, 100
 je .Lx00038_0
 mov eax, dword ptr [r12 + 528]
 cmp eax, 100
 je .Lx00038_0
 mov eax, dword ptr [r12 + 496]
 cmp eax, 6
 jne .Lx00038_2
 mov eax, dword ptr [r12 + 528]
 cmp eax, 6
 jne .Lx00038_2
.Lx00038_1:
 mov rax, qword ptr [r12 + 504]
 mov rcx, qword ptr [r12 + 536]
 cmp rax, rcx
 jne xchain00035_n4_α
 mov rcx, qword ptr [r12 + 528]
 mov qword ptr [r12 + 480], rcx
 mov rcx, qword ptr [r12 + 536]
 mov qword ptr [r12 + 488], rcx
 jmp xchain00035_n11_α
.Lx00038_0:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 9
 lea r9, [r12 + 480]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00038_1
 cmp eax, 1
 je xchain00035_n4_α
 jmp xchain00035_n11_α
.Lx00038_2:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00035_n4_α
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 488], rax
 jmp xchain00035_n11_α
 xchain00035_n8_β:
 jmp xchain00035_n4_α
 xchain00035_n9_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00035_n12_α
 xchain00035_n9_β:
 jmp xchain00035_n10_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00035_n10_α:
 lea rax, [rip + xchain00035_n4_α]
 mov qword ptr [r12 + 48], rax
 jmp main_γ
 xchain00035_n10_β:
 jmp main_ω
# IR_KEYWORD_read
 xchain00035_n11_α:
 mov rdi, qword ptr [rip + .Lx00039_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00035_n14_α
 xchain00035_n11_β:
 jmp main_ω
.Lx00039_0:
 .quad .Lx00039_0_s
.Lx00039_0_s:
 .string "&input"
# IR_VAR
 xchain00035_n12_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 472], rax
 jmp xchain00035_n15_α
 xchain00035_n12_β:
 jmp xchain00035_n16_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00035_n13_α:
 jmp qword ptr [r12 + 48]
 xchain00035_n13_β:
 jmp main_ω
# IR_LIT_STRING
 xchain00035_n14_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00040_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00035_n17_α
 xchain00035_n14_β:
 jmp main_ω
.Lx00040_0:
 .quad .Lx00040_0_s
.Lx00040_0_s:
 .string "stdin"
 xchain00035_n15_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+448]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn222: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn222]
 lea rsi, [r12 + 448]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain00035_n16_α
 jmp xchain00035_n18_α
 xchain00035_n15_β:
 jmp xchain00035_n16_α
# IR_LIT_STRING
 xchain00035_n16_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx00041_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00035_n19_α
 xchain00035_n16_β:
 jmp xchain00035_n24_α
.Lx00041_0:
 .quad .Lx00041_0_s
.Lx00041_0_s:
 .string "cannot open "
 xchain00035_n17_α:
  .section .rodata
  .Lcall00042_pname: .string "dofile"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00042_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp xchain00035_n20_α
xchain00035_n17_β:
 jmp main_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00035_n18_α:
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 328], rax
 lea rax, [rip + xchain00035_n16_α]
 mov qword ptr [r12 + 336], rax
 jmp xchain00035_n21_α
 xchain00035_n18_β:
 jmp xchain00035_n24_α
# IR_VAR
 xchain00035_n19_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 424], rax
 jmp xchain00035_n23_α
 xchain00035_n19_β:
 jmp xchain00035_n24_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00035_n20_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 40], rax
 lea rax, [rip + main_ω]
 mov qword ptr [r12 + 48], rax
 jmp main_γ
 xchain00035_n20_β:
 jmp main_ω
 xchain00035_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00035_n24_α
 xchain00035_n21_β:
 jmp xchain00035_n24_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00035_n22_α:
 jmp qword ptr [r12 + 336]
 xchain00035_n22_β:
 jmp xchain00035_n24_α
 xchain00035_n23_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+368]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 376], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+384]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lrkfn235: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn235]
 lea rsi, [r12 + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00035_n24_α
 jmp xchain00035_n25_α
 xchain00035_n23_β:
 jmp xchain00035_n24_α
# IR_VAR
 xchain00035_n24_α:
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 280], rax
 jmp xchain00035_n26_α
 xchain00035_n24_β:
 jmp xchain00035_n4_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00035_n25_α:
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
 lea rax, [rip + xchain00035_n24_α]
 mov qword ptr [r12 + 336], rax
 jmp xchain00035_n21_α
 xchain00035_n25_β:
 jmp xchain00035_n24_α
# IR_VAR
 xchain00035_n26_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 296], rax
 jmp xchain00035_n27_α
 xchain00035_n26_β:
 jmp xchain00035_n4_α
 xchain00035_n27_α:
  .section .rodata
  .Lcall00043_pname: .string "dofile"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00043_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00035_n4_α
 jmp xchain00035_n28_α
xchain00035_n27_β:
 jmp xchain00035_n4_α
 xchain00035_n28_α:
 jmp xchain00035_n4_α
xchain00035_n28_β:
 jmp xchain00035_n4_α
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
 mov rdi, qword ptr [r12 + 592]
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
