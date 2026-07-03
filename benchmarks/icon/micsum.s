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
proc_dofile_α_body:
xchain0_n0_α:
# IR_MAKE_LIST
bb1_α:
 lea rdi, [r12 + 2432]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
bb2_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2416]
 mov rdx, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2544], rax
 mov qword ptr [r12 + 2552], rdx
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
# IR_MAKE_LIST
bb3_α:
 lea rdi, [r12 + 2400]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
bb4_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2384]
 mov rdx, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 mov qword ptr [r12 + 2368], rax
 mov qword ptr [r12 + 2376], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
# IR_VAR
bb5_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1720], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n7_α
xchain0_n5_α:
bb6_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1712] -> [r12+1696]
 mov rax, qword ptr [r12 + 1712]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 1704], rax
  .section .rodata
  .Lrkfn10: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn10]
 lea rsi, [r12 + 1696]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n7_α
xchain0_n6_α:
bb7_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1680]
 mov rdx, qword ptr [r12 + 1688]
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n7_α
xchain0_n7_α:
 jmp xchain0_n9_α
xchain0_n7_β:
 jmp xchain0_n9_α
xchain0_n8_α:
# IR_VAR
bb9_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 2352], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 2360], rax
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n4_α
xchain0_n9_α:
# IR_VAR
bb10_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 1656], rax
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n14_α
xchain0_n10_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 2352]
 mov rsi, qword ptr [r12 + 2360]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n4_α
xchain0_n11_α:
# IR_UNOP
bb12_α:
 mov rdi, qword ptr [r12 + 1648]
 mov rsi, qword ptr [r12 + 1656]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
xchain0_n12_α:
# IR_LIT_CHARSET
bb13_α:
 mov qword ptr [r12 + 2336], 1
 mov dword ptr [r12 + 2340], -1
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [r12 + 2344], rax
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n19_α
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string " "
xchain0_n13_α:
bb14_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1632] -> [r12+1616]
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1624], rax
  .section .rodata
  .Lrkfn22: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn22]
 lea rsi, [r12 + 1616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n14_α
xchain0_n14_α:
# IR_VAR
bb15_α:
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 1576], rax
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp xchain0_n21_α
xchain0_n15_α:
# IR_SCAN_MANY
bb16_α:
 mov eax, r14d
.Lx26_0:
 cmp eax, r15d
 jge .Lx26_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx26_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx26_1
 add eax, 1
 jmp .Lx26_0
.Lx26_1:
 cmp eax, r14d
 je xchain0_n19_α
 mov qword ptr [r12 + 2320], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 2328], rcx
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n19_α
.Lx26_2:
 .quad .Lx26_2_s
.Lx26_2_s:
 .string " "
xchain0_n16_α:
# IR_LIT_INTEGER
bb17_α:
 mov qword ptr [r12 + 1584], 6
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [r12 + 1592], rax
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n21_α
.Lx27_0:
 .quad 7
xchain0_n17_α:
# IR_SCAN_TAB
bb18_α:
 mov rax, qword ptr [r12 + 2328]
 cmp rax, 1
 jl xchain0_n19_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n19_α
 mov qword ptr [r12 + 2320], r14
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
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 jmp xchain0_n19_α
 xchain0_n17_β:
 mov r14, qword ptr [r12 + 2320]
 jmp xchain0_n19_α
xchain0_n18_α:
bb19_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1568] -> [r12+1536]
 mov rax, qword ptr [r12 + 1568]
 mov qword ptr [r12 + 1536], rax
 mov rax, qword ptr [r12 + 1576]
 mov qword ptr [r12 + 1544], rax
# marshal arg1 = producer-box slot [r12+1584] -> [r12+1552]
 mov rax, qword ptr [r12 + 1584]
 mov qword ptr [r12 + 1552], rax
 mov rax, qword ptr [r12 + 1592]
 mov qword ptr [r12 + 1560], rax
  .section .rodata
  .Lrkfn31: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn31]
 lea rsi, [r12 + 1536]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 cmp eax, 99
 je xchain0_n21_α
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n21_α
xchain0_n19_α:
# IR_LIT_CHARSET
bb20_α:
 mov qword ptr [r12 + 2288], 1
 mov dword ptr [r12 + 2292], -1
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [r12 + 2296], rax
 jmp xchain0_n22_α
 xchain0_n19_β:
 jmp xchain0_n29_α
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "-0123456789"
xchain0_n20_α:
bb21_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1520] -> [r12+1504]
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1512], rax
  .section .rodata
  .Lrkfn34: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn34]
 lea rsi, [r12 + 1504]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 cmp eax, 99
 je xchain0_n21_α
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n21_α
xchain0_n21_α:
# IR_LIT_INTEGER
bb22_α:
 mov qword ptr [r12 + 1472], 6
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 1480], rax
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n25_α
.Lx35_0:
 .quad 0
xchain0_n22_α:
# IR_SCAN_MANY
bb23_α:
 mov eax, r14d
.Lx37_0:
 cmp eax, r15d
 jge .Lx37_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx37_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx37_1
 add eax, 1
 jmp .Lx37_0
.Lx37_1:
 cmp eax, r14d
 je xchain0_n29_α
 mov qword ptr [r12 + 2272], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 2280], rcx
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n29_α
.Lx37_2:
 .quad .Lx37_2_s
.Lx37_2_s:
 .string "-0123456789"
xchain0_n23_α:
bb24_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1472]
 mov rdx, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp xchain0_n25_α
xchain0_n24_α:
# IR_SCAN_TAB
bb25_α:
 mov rax, qword ptr [r12 + 2280]
 cmp rax, 1
 jl xchain0_n29_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n29_α
 mov qword ptr [r12 + 2272], r14
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
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 jmp xchain0_n26_α
 xchain0_n24_β:
 mov r14, qword ptr [r12 + 2272]
 jmp xchain0_n29_α
xchain0_n25_α:
# IR_VAR
bb26_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1368], rax
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp xchain0_n37_α
xchain0_n26_α:
bb27_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2256] -> [r12+2240]
 mov rax, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 2240], rax
 mov rax, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2248], rax
  .section .rodata
  .Lrkfn44: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn44]
 lea rsi, [r12 + 2240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 cmp eax, 99
 je xchain0_n29_α
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp xchain0_n29_α
xchain0_n27_α:
# IR_VAR
bb28_α:
 mov rax, qword ptr [r12 + 2544]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 1432], rax
 jmp xchain0_n30_α
 xchain0_n27_β:
 jmp xchain0_n37_α
xchain0_n28_α:
bb29_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2224]
 mov rdx, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp xchain0_n29_α
xchain0_n29_α:
# IR_LIT_CHARSET
bb30_α:
 mov qword ptr [r12 + 2192], 1
 mov dword ptr [r12 + 2196], -1
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [r12 + 2200], rax
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp xchain0_n35_α
.Lx48_0:
 .quad .Lx48_0_s
.Lx48_0_s:
 .string " "
xchain0_n30_α:
# IR_LIST_BANG
bb31_α:
 mov qword ptr [r12 + 1408], 0
.Lx50_0:
 mov rdi, qword ptr [r12 + 1424]
 mov rsi, qword ptr [r12 + 1432]
 mov rdx, qword ptr [r12 + 1408]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 cmp rax, 99
 je xchain0_n37_α
 jmp xchain0_n32_α
 xchain0_n30_β:
 inc qword ptr [r12 + 1408]
 jmp .Lx50_0
xchain0_n31_α:
# IR_SCAN_MANY
bb32_α:
 mov eax, r14d
.Lx52_0:
 cmp eax, r15d
 jge .Lx52_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx52_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx52_1
 add eax, 1
 jmp .Lx52_0
.Lx52_1:
 cmp eax, r14d
 je xchain0_n35_α
 mov qword ptr [r12 + 2176], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 2184], rcx
 jmp xchain0_n33_α
 xchain0_n31_β:
 jmp xchain0_n35_α
.Lx52_2:
 .quad .Lx52_2_s
.Lx52_2_s:
 .string " "
xchain0_n32_α:
# IR_LIT_INTEGER
bb33_α:
 mov qword ptr [r12 + 1440], 6
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [r12 + 1448], rax
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n30_β
.Lx53_0:
 .quad 2
xchain0_n33_α:
# IR_SCAN_TAB
bb34_α:
 mov rax, qword ptr [r12 + 2184]
 cmp rax, 1
 jl xchain0_n35_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n35_α
 mov qword ptr [r12 + 2176], r14
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
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 jmp xchain0_n35_α
 xchain0_n33_β:
 mov r14, qword ptr [r12 + 2176]
 jmp xchain0_n35_α
xchain0_n34_α:
bb35_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 1392]
 mov rsi, qword ptr [r12 + 1400]
 mov rdx, qword ptr [r12 + 1440]
 mov rcx, qword ptr [r12 + 1448]
 mov r8d, 18
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n37_α
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain0_n36_α
 xchain0_n34_β:
 jmp xchain0_n37_α
xchain0_n35_α:
# IR_LIT_INTEGER
bb36_α:
 mov qword ptr [r12 + 2144], 6
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [r12 + 2152], rax
 jmp xchain0_n38_α
 xchain0_n35_β:
 jmp xchain0_n44_α
.Lx57_0:
 .quad 0
xchain0_n36_α:
bb37_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 2432]
 mov rsi, qword ptr [r12 + 2440]
 mov rdx, qword ptr [r12 + 1376]
 mov rcx, qword ptr [r12 + 1384]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n37_α
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain0_n39_α
 xchain0_n36_β:
 jmp xchain0_n37_α
xchain0_n37_α:
# IR_VAR
bb38_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1272], rax
 jmp xchain0_n40_α
 xchain0_n37_β:
 jmp xchain0_n46_α
xchain0_n38_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xchain0_n39_α:
bb40_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1344]
 mov rdx, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain0_n42_α
 xchain0_n39_β:
 jmp xchain0_n37_α
xchain0_n40_α:
# IR_VAR
bb41_α:
 mov rax, qword ptr [r12 + 2544]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 1304], rax
 jmp xchain0_n43_α
 xchain0_n40_β:
 jmp xchain0_n46_α
xchain0_n41_α:
bb42_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2128]
 mov rdx, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 jmp xchain0_n44_α
 xchain0_n41_β:
 jmp xchain0_n44_α
xchain0_n42_α:
 jmp xchain0_n30_β
xchain0_n42_β:
 jmp xchain0_n30_β
xchain0_n43_α:
# IR_UNOP
bb44_α:
 mov rdi, qword ptr [r12 + 1296]
 mov rsi, qword ptr [r12 + 1304]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain0_n45_α
 xchain0_n43_β:
 jmp xchain0_n46_α
xchain0_n44_α:
# IR_VAR
bb45_α:
 mov rax, qword ptr [r12 + 2512]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 2520]
 mov qword ptr [r12 + 2088], rax
 jmp xchain0_n47_α
 xchain0_n44_β:
 jmp xchain0_n54_α
xchain0_n45_α:
bb46_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 2432]
 mov rsi, qword ptr [r12 + 2440]
 mov rdx, qword ptr [r12 + 1280]
 mov rcx, qword ptr [r12 + 1288]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n46_α
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain0_n48_α
 xchain0_n45_β:
 jmp xchain0_n46_α
xchain0_n46_α:
# IR_VAR
bb47_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1128], rax
 jmp xchain0_n49_α
 xchain0_n46_β:
 jmp xchain0_n57_α
xchain0_n47_α:
# IR_LIT_STRING
bb48_α:
 mov qword ptr [r12 + 2096], 1
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [r12 + 2104], rax
 jmp xchain0_n50_α
 xchain0_n47_β:
 jmp xchain0_n54_α
.Lx74_0:
 .quad .Lx74_0_s
.Lx74_0_s:
 .string "overhead"
xchain0_n48_α:
bb49_α:
# BOX IR_CALL sqrt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1248] -> [r12+1232]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1240], rax
  .section .rodata
  .Lrkfn76: .string "sqrt"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn76]
 lea rsi, [r12 + 1232]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 cmp eax, 99
 je xchain0_n46_α
 jmp xchain0_n51_α
 xchain0_n48_β:
 jmp xchain0_n46_α
xchain0_n49_α:
# IR_LIT_INTEGER
bb50_α:
 mov qword ptr [r12 + 1136], 6
 mov rax, qword ptr [rip + .Lx77_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain0_n52_α
 xchain0_n49_β:
 jmp xchain0_n57_α
.Lx77_0:
 .quad 7
xchain0_n50_α:
bb51_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 2512]
 mov rsi, qword ptr [r12 + 2520]
 mov rdx, qword ptr [r12 + 2096]
 mov rcx, qword ptr [r12 + 2104]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n54_α
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2072], rax
 jmp xchain0_n53_α
 xchain0_n50_β:
 jmp xchain0_n54_α
xchain0_n51_α:
# IR_LIT_REAL
bb52_α:
 mov qword ptr [r12 + 1312], 7
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [r12 + 1320], rax
 jmp xchain0_n55_α
 xchain0_n51_β:
 jmp xchain0_n46_α
.Lx79_0:
 .quad 4602678819172646912
xchain0_n52_α:
bb53_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1120] -> [r12+1088]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1096], rax
# marshal arg1 = producer-box slot [r12+1136] -> [r12+1104]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1112], rax
  .section .rodata
  .Lrkfn81: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn81]
 lea rsi, [r12 + 1088]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 cmp eax, 99
 je xchain0_n57_α
 jmp xchain0_n56_α
 xchain0_n52_β:
 jmp xchain0_n57_α
xchain0_n53_α:
# IR_VAR
bb54_α:
 mov rax, qword ptr [r12 + 2528]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 1816], rax
 jmp xchain0_n58_α
 xchain0_n53_β:
 jmp xchain0_n68_α
xchain0_n54_α:
# IR_VAR
bb55_α:
 mov rax, qword ptr [r12 + 2512]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2520]
 mov qword ptr [r12 + 2040], rax
 jmp xchain0_n59_α
 xchain0_n54_β:
 jmp xchain0_n71_α
xchain0_n55_α:
bb56_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 1216]
 mov rsi, qword ptr [r12 + 1224]
 mov rdx, qword ptr [r12 + 1312]
 mov rcx, qword ptr [r12 + 1320]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n46_α
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain0_n60_α
 xchain0_n55_β:
 jmp xchain0_n46_α
xchain0_n56_α:
bb57_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1072] -> [r12+1056]
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1064], rax
  .section .rodata
  .Lrkfn88: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn88]
 lea rsi, [r12 + 1056]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 cmp eax, 99
 je xchain0_n57_α
 jmp xchain0_n57_α
 xchain0_n56_β:
 jmp xchain0_n57_α
xchain0_n57_α:
# IR_VAR
bb58_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 1032], rax
 jmp xchain0_n61_α
 xchain0_n57_β:
 jmp xchain0_n66_α
xchain0_n58_α:
bb59_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1808]
 mov rdx, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain0_n62_α
 xchain0_n58_β:
 jmp xchain0_n68_α
xchain0_n59_α:
# IR_LIT_STRING
bb60_α:
 mov qword ptr [r12 + 2048], 1
 mov rax, qword ptr [rip + .Lx92_0]
 mov qword ptr [r12 + 2056], rax
 jmp xchain0_n63_α
 xchain0_n59_β:
 jmp xchain0_n71_α
.Lx92_0:
 .quad .Lx92_0_s
.Lx92_0_s:
 .string "nothing"
xchain0_n60_α:
bb61_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1200] -> [r12+1184]
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lrkfn94: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn94]
 lea rsi, [r12 + 1184]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain0_n46_α
 jmp xchain0_n64_α
 xchain0_n60_β:
 jmp xchain0_n46_α
xchain0_n61_α:
bb62_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1024] -> [r12+1008]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn96: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn96]
 lea rsi, [r12 + 1008]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain0_n66_α
 jmp xchain0_n65_α
 xchain0_n61_β:
 jmp xchain0_n66_α
xchain0_n62_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb63_α:
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1768], rax
 lea rax, [rip + xchain0_n68_α]
 mov qword ptr [r12 + 1776], rax
 jmp xchain0_n67_α
 xchain0_n62_β:
 jmp xchain0_n68_α
xchain0_n63_α:
bb64_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 2512]
 mov rsi, qword ptr [r12 + 2520]
 mov rdx, qword ptr [r12 + 2048]
 mov rcx, qword ptr [r12 + 2056]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n71_α
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 2024], rax
 jmp xchain0_n70_α
 xchain0_n63_β:
 jmp xchain0_n71_α
xchain0_n64_α:
bb65_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1168]
 mov rdx, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain0_n46_α
 xchain0_n64_β:
 jmp xchain0_n46_α
xchain0_n65_α:
bb66_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 992]
 mov rdx, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain0_n66_α
 xchain0_n65_β:
 jmp xchain0_n66_α
xchain0_n66_α:
# IR_VAR_REF local
bb67_α:
 lea rdi, [r12 + 2464]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain0_n72_α
 xchain0_n66_β:
 jmp xchain0_n80_α
xchain0_n67_α:
 jmp xchain0_n73_α
xchain0_n67_β:
 jmp xchain0_n68_α
xchain0_n68_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 1728]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 1728]
 mov r14, qword ptr [r12 + 1736]
 mov r15, qword ptr [r12 + 1744]
 jmp xchain0_n4_α
 xchain0_n68_β:
 jmp xchain0_n4_α
xchain0_n69_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb70_α:
 jmp qword ptr [r12 + 1776]
 xchain0_n69_β:
 jmp xchain0_n68_α
xchain0_n70_α:
# IR_VAR
bb71_α:
 mov rax, qword ptr [r12 + 2544]
 mov qword ptr [r12 + 1904], rax
 mov rax, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 1912], rax
 jmp xchain0_n74_α
 xchain0_n70_β:
 jmp xchain0_n68_α
xchain0_n71_α:
# IR_VAR
bb72_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 1992], rax
 jmp xchain0_n75_α
 xchain0_n71_β:
 jmp xchain0_n68_α
xchain0_n72_α:
# IR_VAR
bb73_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 904], rax
 jmp xchain0_n76_α
 xchain0_n72_β:
 jmp xchain0_n80_α
xchain0_n73_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 1728]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 1728]
 mov r14, qword ptr [r12 + 1736]
 mov r15, qword ptr [r12 + 1744]
 jmp xchain0_n4_α
 xchain0_n73_β:
 jmp xchain0_n4_α
xchain0_n74_α:
# IR_VAR
bb75_α:
 mov rax, qword ptr [r12 + 2528]
 mov qword ptr [r12 + 1920], rax
 mov rax, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 1928], rax
 jmp xchain0_n77_α
 xchain0_n74_β:
 jmp xchain0_n68_α
xchain0_n75_α:
# IR_VAR
bb76_α:
 mov rax, qword ptr [r12 + 2528]
 mov qword ptr [r12 + 2000], rax
 mov rax, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 2008], rax
 jmp xchain0_n78_α
 xchain0_n75_β:
 jmp xchain0_n68_α
xchain0_n76_α:
# IR_UNOP
bb77_α:
 mov rdi, qword ptr [r12 + 896]
 mov rsi, qword ptr [r12 + 904]
 call rt_size_d@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain0_n79_α
 xchain0_n76_β:
 jmp xchain0_n80_α
xchain0_n77_α:
bb78_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1904] -> [r12+1872]
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1880], rax
# marshal arg1 = producer-box slot [r12+1920] -> [r12+1888]
 mov rax, qword ptr [r12 + 1920]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 1896], rax
  .section .rodata
  .Lbynamefn123: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn123]
 lea rsi, [r12 + 1872]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 cmp eax, 99
 je xchain0_n68_α
 jmp xchain0_n81_α
xchain0_n77_β:
 jmp xchain0_n68_α
xchain0_n78_α:
bb79_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1984] -> [r12+1952]
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1960], rax
# marshal arg1 = producer-box slot [r12+2000] -> [r12+1968]
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 1976], rax
  .section .rodata
  .Lbynamefn125: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn125]
 lea rsi, [r12 + 1952]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 cmp eax, 99
 je xchain0_n68_α
 jmp xchain0_n82_α
xchain0_n78_β:
 jmp xchain0_n68_α
xchain0_n79_α:
# IR_LIT_INTEGER
bb80_α:
 mov qword ptr [r12 + 912], 6
 mov rax, qword ptr [rip + .Lx00001_0]
 mov qword ptr [r12 + 920], rax
 jmp xchain0_n83_α
 xchain0_n79_β:
 jmp xchain0_n80_α
.Lx00001_0:
 .quad 2
xchain0_n80_α:
# IR_VAR
bb81_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 792], rax
 jmp xchain0_n84_α
 xchain0_n80_β:
 jmp xchain0_n91_α
xchain0_n81_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb82_α:
 lea rax, [rip + xchain0_n68_α]
 mov qword ptr [r12 + 1840], rax
 jmp xchain0_n85_α
 xchain0_n81_β:
 jmp xchain0_n68_α
xchain0_n82_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb83_α:
 lea rax, [rip + xchain0_n68_α]
 mov qword ptr [r12 + 1840], rax
 jmp xchain0_n85_α
 xchain0_n82_β:
 jmp xchain0_n68_α
xchain0_n83_α:
bb84_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 880]
 cmp eax, 100
 je .Lx00002_0
 mov eax, dword ptr [r12 + 912]
 cmp eax, 100
 je .Lx00002_0
.Lx00002_1:
 mov rax, qword ptr [r12 + 888]
 mov rcx, qword ptr [r12 + 920]
 cqo
 idiv rcx
 mov qword ptr [r12 + 864], 6
 mov qword ptr [r12 + 872], rax
 jmp xchain0_n87_α
.Lx00002_0:
 mov rdi, qword ptr [r12 + 880]
 mov rsi, qword ptr [r12 + 888]
 mov rdx, qword ptr [r12 + 912]
 mov rcx, qword ptr [r12 + 920]
 mov r8d, 3
 lea r9, [r12 + 864]
 call rt_binop_overload@PLT
 test eax, eax
 je .Lx00002_1
 jmp xchain0_n87_α
 xchain0_n83_β:
 jmp xchain0_n80_α
xchain0_n84_α:
# IR_LIT_INTEGER
bb85_α:
 mov qword ptr [r12 + 800], 6
 mov rax, qword ptr [rip + .Lx00003_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain0_n88_α
 xchain0_n84_β:
 jmp xchain0_n91_α
.Lx00003_0:
 .quad 7
xchain0_n85_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb86_α:
 mov rax, qword ptr [r12 + 1824]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 1768], rax
 lea rax, [rip + xchain0_n86_α]
 mov qword ptr [r12 + 1776], rax
 jmp xchain0_n67_α
 xchain0_n85_β:
 jmp xchain0_n68_α
xchain0_n86_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb87_α:
 jmp qword ptr [r12 + 1840]
 xchain0_n86_β:
 jmp xchain0_n68_α
xchain0_n87_α:
# IR_LIT_INTEGER
bb88_α:
 mov qword ptr [r12 + 928], 6
 mov rax, qword ptr [rip + .Lx00004_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain0_n89_α
 xchain0_n87_β:
 jmp xchain0_n80_α
.Lx00004_0:
 .quad 1
xchain0_n88_α:
bb89_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+784] -> [r12+752]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 760], rax
# marshal arg1 = producer-box slot [r12+800] -> [r12+768]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 776], rax
  .section .rodata
  .Lrkfn141: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn141]
 lea rsi, [r12 + 752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xchain0_n91_α
 jmp xchain0_n90_α
 xchain0_n88_β:
 jmp xchain0_n91_α
xchain0_n89_α:
bb90_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 864]
 cmp eax, 100
 je .Lx00005_0
 mov eax, dword ptr [r12 + 928]
 cmp eax, 100
 je .Lx00005_0
.Lx00005_1:
 mov rax, qword ptr [r12 + 872]
 mov rcx, qword ptr [r12 + 936]
 add rax, rcx
 mov qword ptr [r12 + 848], 6
 mov qword ptr [r12 + 856], rax
 jmp xchain0_n92_α
.Lx00005_0:
 mov rdi, qword ptr [r12 + 864]
 mov rsi, qword ptr [r12 + 872]
 mov rdx, qword ptr [r12 + 928]
 mov rcx, qword ptr [r12 + 936]
 mov r8d, 0
 lea r9, [r12 + 848]
 call rt_binop_overload@PLT
 test eax, eax
 je .Lx00005_1
 jmp xchain0_n92_α
 xchain0_n89_β:
 jmp xchain0_n80_α
xchain0_n90_α:
bb91_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+736] -> [r12+720]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn144: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn144]
 lea rsi, [r12 + 720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain0_n91_α
 jmp xchain0_n91_α
 xchain0_n90_β:
 jmp xchain0_n91_α
xchain0_n91_α:
# IR_LIT_REAL
bb92_α:
 mov qword ptr [r12 + 688], 7
 mov rax, qword ptr [rip + .Lx00006_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain0_n93_α
 xchain0_n91_β:
 jmp xchain0_n95_α
.Lx00006_0:
 .quad 0
xchain0_n92_α:
# IR_SUBSCRIPT x[i] variable
bb93_α:
 mov rdi, qword ptr [r12 + 832]
 mov rsi, qword ptr [r12 + 840]
 mov rdx, qword ptr [r12 + 848]
 mov rcx, qword ptr [r12 + 856]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n80_α
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain0_n94_α
 xchain0_n92_β:
 jmp xchain0_n80_α
xchain0_n93_α:
bb94_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 688]
 mov rdx, qword ptr [r12 + 696]
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain0_n95_α
 xchain0_n93_β:
 jmp xchain0_n95_α
xchain0_n94_α:
# IR_DEREF variable -> value
bb95_α:
 mov rdi, qword ptr [r12 + 944]
 mov rsi, qword ptr [r12 + 952]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n80_α
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain0_n96_α
 xchain0_n94_β:
 jmp xchain0_n80_α
xchain0_n95_α:
# IR_VAR
bb96_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n97_α
 xchain0_n95_β:
 jmp xchain0_n00007_α
xchain0_n96_α:
bb97_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 960]
 mov rdx, qword ptr [r12 + 968]
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain0_n80_α
 xchain0_n96_β:
 jmp xchain0_n80_α
xchain0_n97_α:
# IR_LIST_BANG
bb98_α:
 mov qword ptr [r12 + 448], 0
.Lx00008_0:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 448]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp rax, 99
 je xchain0_n00007_α
 jmp xchain0_n98_α
 xchain0_n97_β:
 inc qword ptr [r12 + 448]
 jmp .Lx00008_0
xchain0_n98_α:
bb99_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain0_n99_α
 xchain0_n98_β:
 jmp xchain0_n00007_α
xchain0_n99_α:
# IR_VAR
bb00009_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 520], rax
 jmp xchain0_n00009_α
 xchain0_n99_β:
 jmp xchain0_n97_β
xchain0_n00009_α:
# IR_VAR
bb00010_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 648], rax
 jmp xchain0_n00010_α
 xchain0_n00009_β:
 jmp xchain0_n00011_α
xchain0_n00010_α:
# IR_LIT_INTEGER
bb00012_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx00013_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain0_n00012_α
 xchain0_n00010_β:
 jmp xchain0_n00011_α
.Lx00013_0:
 .quad 0
xchain0_n00012_α:
bb00014_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2448]
 cmp eax, 100
 je .Lx00015_0
 mov eax, dword ptr [r12 + 656]
 cmp eax, 100
 je .Lx00015_0
.Lx00015_1:
 mov rax, qword ptr [r12 + 2456]
 mov rcx, qword ptr [r12 + 664]
 cmp rax, rcx
 jg xchain0_n00011_α
 mov rcx, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rcx
 mov rcx, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rcx
 jmp xchain0_n00014_α
.Lx00015_0:
 mov rdi, qword ptr [r12 + 2448]
 mov rsi, qword ptr [r12 + 2456]
 mov rdx, qword ptr [r12 + 656]
 mov rcx, qword ptr [r12 + 664]
 mov r8d, 6
 lea r9, [r12 + 624]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00015_1
 cmp eax, 1
 je xchain0_n00011_α
 jmp xchain0_n00014_α
 xchain0_n00012_β:
 jmp xchain0_n00011_α
xchain0_n00014_α:
# IR_LIT_INTEGER
bb00011_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx00016_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain0_n00017_α
 xchain0_n00014_β:
 jmp xchain0_n97_β
.Lx00016_0:
 .quad 0
xchain0_n00011_α:
# IR_VAR
bb00017_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 616], rax
 jmp xchain0_n00018_α
 xchain0_n00011_β:
 jmp xchain0_n97_β
xchain0_n00017_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00018_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain0_n97_β]
 mov qword ptr [r12 + 544], rax
 jmp xchain0_n00019_α
 xchain0_n00017_β:
 jmp xchain0_n97_β
xchain0_n00018_α:
bb00019_α:
# BOX IR_CALL log(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+608] -> [r12+592]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn167: .string "log"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn167]
 lea rsi, [r12 + 592]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain0_n97_β
 jmp xchain0_n00020_α
 xchain0_n00018_β:
 jmp xchain0_n97_β
xchain0_n00019_α:
bb00021_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 2432]
 mov rsi, qword ptr [r12 + 2440]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n97_β
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain0_n00022_α
 xchain0_n00019_β:
 jmp xchain0_n97_β
xchain0_n00021_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00020_α:
 jmp qword ptr [r12 + 544]
 xchain0_n00021_β:
 jmp xchain0_n97_β
xchain0_n00020_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00022_α:
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain0_n97_β]
 mov qword ptr [r12 + 544], rax
 jmp xchain0_n00019_α
 xchain0_n00020_β:
 jmp xchain0_n97_β
xchain0_n00022_α:
bb00007_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain0_n97_β
 xchain0_n00022_β:
 jmp xchain0_n97_β
xchain0_n00007_α:
# IR_KEYWORD_read
bb00023_α:
 mov rdi, qword ptr [rip + .Lx00024_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain0_n00023_α
 xchain0_n00007_β:
 jmp xchain0_n00025_α
.Lx00024_0:
 .quad .Lx00024_0_s
.Lx00024_0_s:
 .string "&e"
xchain0_n00023_α:
# IR_VAR
bb00026_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 360], rax
 jmp xchain0_n00026_α
 xchain0_n00023_β:
 jmp xchain0_n00025_α
xchain0_n00026_α:
# IR_VAR
bb00027_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 392], rax
 jmp xchain0_n00027_α
 xchain0_n00026_β:
 jmp xchain0_n00025_α
xchain0_n00027_α:
# IR_UNOP
bb00028_α:
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 call rt_size_d@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n00028_α
 xchain0_n00027_β:
 jmp xchain0_n00025_α
xchain0_n00028_α:
bb00025_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 2432]
 mov rsi, qword ptr [r12 + 2440]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n00025_α
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain0_n00029_α
 xchain0_n00028_β:
 jmp xchain0_n00025_α
xchain0_n00025_α:
# IR_VAR
bb00029_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 216], rax
 jmp xchain0_n00030_α
 xchain0_n00025_β:
 jmp xchain0_n00031_α
xchain0_n00029_α:
bb00030_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 mov r8d, 18
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n00025_α
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain0_n00032_α
 xchain0_n00029_β:
 jmp xchain0_n00025_α
xchain0_n00030_α:
# IR_LIT_INTEGER
bb00032_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00033_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain0_n00034_α
 xchain0_n00030_β:
 jmp xchain0_n00031_α
.Lx00033_0:
 .quad 7
xchain0_n00032_α:
# IR_LIT_REAL
bb00034_α:
 mov qword ptr [r12 + 400], 7
 mov rax, qword ptr [rip + .Lx00035_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain0_n00036_α
 xchain0_n00032_β:
 jmp xchain0_n00025_α
.Lx00035_0:
 .quad 4602678819172646912
xchain0_n00034_α:
bb00036_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+208] -> [r12+176]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
# marshal arg1 = producer-box slot [r12+224] -> [r12+192]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn187: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn187]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain0_n00031_α
 jmp xchain0_n00037_α
 xchain0_n00034_β:
 jmp xchain0_n00031_α
xchain0_n00036_α:
bb00037_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n00025_α
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n00038_α
 xchain0_n00036_β:
 jmp xchain0_n00025_α
xchain0_n00037_α:
bb00031_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+160] -> [r12+144]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn190: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn190]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain0_n00031_α
 jmp xchain0_n00031_α
 xchain0_n00037_β:
 jmp xchain0_n00031_α
xchain0_n00031_α:
# IR_LIT_STRING
bb00038_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx00039_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain0_n00040_α
 xchain0_n00031_β:
 jmp xchain0_n00041_α
.Lx00039_0:
 .quad .Lx00039_0_s
.Lx00039_0_s:
 .string "   "
xchain0_n00038_α:
bb00040_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+288] -> [r12+272]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn193: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn193]
 lea rsi, [r12 + 272]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain0_n00025_α
 jmp xchain0_n00001_α
 xchain0_n00038_β:
 jmp xchain0_n00025_α
xchain0_n00040_α:
# IR_VAR
bb00001_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n00042_α
 xchain0_n00040_β:
 jmp xchain0_n00041_α
xchain0_n00001_α:
bb00042_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n00025_α
 xchain0_n00001_β:
 jmp xchain0_n00025_α
xchain0_n00042_α:
bb00041_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+64]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 72], rax
# marshal arg1 = producer-box slot [r12+112] -> [r12+80]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn198: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn198]
 lea rsi, [r12 + 64]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain0_n00041_α
 jmp xchain0_n00041_α
 xchain0_n00042_β:
 jmp xchain0_n00041_α
xchain0_n00041_α:
# IR_RETURN
bb00043_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_dofile_γ
proc_dofile_β:
jmp proc_dofile_ω
proc_dofile_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_dofile_ω:
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
  call proc_startup
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call main_α
  xor eax, eax
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
xchain00044_n0_α:
# IR_LIT_STRING
bb00045_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx00046_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00044_n1_α
 xchain00044_n0_β:
 jmp xchain00044_n2_α
.Lx00046_0:
 .quad .Lx00046_0_s
.Lx00046_0_s:
 .string "  N ovhead rmserr median  gmean   filename"
xchain00044_n1_α:
bb00047_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+560] -> [r12+544]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn203: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn203]
 lea rsi, [r12 + 544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain00044_n2_α
 jmp xchain00044_n2_α
 xchain00044_n1_β:
 jmp xchain00044_n2_α
xchain00044_n2_α:
# IR_VAR
bb00048_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 504], rax
 jmp xchain00044_n3_α
 xchain00044_n2_β:
 jmp xchain00044_n5_α
xchain00044_n3_α:
# IR_UNOP
bb00002_α:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 call rt_size_d@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00044_n4_α
 xchain00044_n3_β:
 jmp xchain00044_n5_α
xchain00044_n4_α:
# IR_LIT_INTEGER
bb00003_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00049_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00044_n6_α
 xchain00044_n4_β:
 jmp xchain00044_n5_α
.Lx00049_0:
 .quad 0
xchain00044_n5_α:
# IR_VAR
bb00050_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00044_n7_α
 xchain00044_n5_β:
 jmp xchain00044_n10_α
xchain00044_n6_α:
bb00051_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 480]
 cmp eax, 100
 je .Lx00052_0
 mov eax, dword ptr [r12 + 512]
 cmp eax, 100
 je .Lx00052_0
.Lx00052_1:
 mov rax, qword ptr [r12 + 488]
 mov rcx, qword ptr [r12 + 520]
 cmp rax, rcx
 jne xchain00044_n5_α
 mov rcx, qword ptr [r12 + 512]
 mov qword ptr [r12 + 464], rcx
 mov rcx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 472], rcx
 jmp xchain00044_n8_α
.Lx00052_0:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 mov r8d, 9
 lea r9, [r12 + 464]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00052_1
 cmp eax, 1
 je xchain00044_n5_α
 jmp xchain00044_n8_α
 xchain00044_n6_β:
 jmp xchain00044_n5_α
xchain00044_n7_α:
bb00053_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+192] -> [r12+176]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn212: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn212]
 lea rsi, [r12 + 176]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00044_n10_α
 jmp xchain00044_n9_α
 xchain00044_n7_β:
 jmp xchain00044_n10_α
xchain00044_n8_α:
# IR_KEYWORD_read
bb00054_α:
 mov rdi, qword ptr [rip + .Lx00055_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00044_n11_α
 xchain00044_n8_β:
 jmp main_ω
.Lx00055_0:
 .quad .Lx00055_0_s
.Lx00055_0_s:
 .string "&input"
xchain00044_n9_α:
bb00004_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00044_n12_α
 xchain00044_n9_β:
 jmp xchain00044_n10_α
xchain00044_n10_α:
 jmp xchain00044_n13_α
xchain00044_n10_β:
 jmp xchain00044_n13_α
xchain00044_n11_α:
# IR_LIT_STRING
bb00056_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00057_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00044_n14_α
 xchain00044_n11_β:
 jmp main_ω
.Lx00057_0:
 .quad .Lx00057_0_s
.Lx00057_0_s:
 .string "stdin"
xchain00044_n12_α:
# IR_VAR
bb00005_α:
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 456], rax
 jmp xchain00044_n15_α
 xchain00044_n12_β:
 jmp xchain00044_n19_α
xchain00044_n13_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00058_α:
 lea rax, [rip + xchain00044_n5_α]
 mov qword ptr [r12 + 48], rax
 jmp main_γ
 xchain00044_n13_β:
 jmp main_ω
xchain00044_n14_α:
bb00059_α:
  .section .rodata
  .Lcall00059_pname: .string "dofile"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00059_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp xchain00044_n17_α
xchain00044_n14_β:
 jmp main_ω
xchain00044_n15_α:
bb00006_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+448] -> [r12+432]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn223: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn223]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain00044_n19_α
 jmp xchain00044_n18_α
 xchain00044_n15_β:
 jmp xchain00044_n19_α
xchain00044_n16_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00060_α:
 jmp qword ptr [r12 + 48]
 xchain00044_n16_β:
 jmp main_ω
xchain00044_n17_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00061_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 40], rax
 lea rax, [rip + main_ω]
 mov qword ptr [r12 + 48], rax
 jmp main_γ
 xchain00044_n17_β:
 jmp main_ω
xchain00044_n18_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00062_α:
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 312], rax
 lea rax, [rip + xchain00044_n19_α]
 mov qword ptr [r12 + 320], rax
 jmp xchain00044_n20_α
 xchain00044_n18_β:
 jmp xchain00044_n23_α
xchain00044_n19_α:
# IR_LIT_STRING
bb00063_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00064_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00044_n22_α
 xchain00044_n19_β:
 jmp xchain00044_n23_α
.Lx00064_0:
 .quad .Lx00064_0_s
.Lx00064_0_s:
 .string "cannot open "
xchain00044_n20_α:
bb00065_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00044_n23_α
 xchain00044_n20_β:
 jmp xchain00044_n23_α
xchain00044_n21_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00066_α:
 jmp qword ptr [r12 + 320]
 xchain00044_n21_β:
 jmp xchain00044_n23_α
xchain00044_n22_α:
# IR_VAR
bb00067_α:
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 408], rax
 jmp xchain00044_n24_α
 xchain00044_n22_β:
 jmp xchain00044_n23_α
xchain00044_n23_α:
# IR_VAR
bb00008_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 264], rax
 jmp xchain00044_n25_α
 xchain00044_n23_β:
 jmp xchain00044_n5_α
xchain00044_n24_α:
bb00068_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn239: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn239]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain00044_n23_α
 jmp xchain00044_n26_α
 xchain00044_n24_β:
 jmp xchain00044_n23_α
xchain00044_n25_α:
# IR_VAR
bb00069_α:
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 280], rax
 jmp xchain00044_n27_α
 xchain00044_n25_β:
 jmp xchain00044_n5_α
xchain00044_n26_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00070_α:
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
 lea rax, [rip + xchain00044_n23_α]
 mov qword ptr [r12 + 320], rax
 jmp xchain00044_n20_α
 xchain00044_n26_β:
 jmp xchain00044_n23_α
xchain00044_n27_α:
bb00071_α:
  .section .rodata
  .Lcall00071_pname: .string "dofile"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00071_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain00044_n5_α
 jmp xchain00044_n28_α
xchain00044_n27_β:
 jmp xchain00044_n5_α
xchain00044_n28_α:
 jmp xchain00044_n5_α
xchain00044_n28_β:
 jmp xchain00044_n5_α
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
.section .rodata
.S0: .string "bb_scan_tab: unhandled (needs literal positive n or sibling scan-producer slot + descr flat-chain slot)"
.text
