  .intel_syntax noprefix
  .text
  .globl proc_display_α
proc_display_α:
#=======================================================================================================================
    .global proc_display_α
    .global proc_display_β
    .global proc_display_γ
    .global proc_display_ω
  sub rsp, 2656
  mov [rsp + 2632], rcx
  mov [rsp + 2640], rdx
  mov [rsp + 2648], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2584], rsp
  mov rdi, rsp
  mov esi, 2576
  mov edx, 2624
  call rt_jmp_frame_lexprep2@PLT
proc_display_α_body:
# IR_DISJUNCTION_NARY
 xchain0_n0_α:
 mov qword ptr [rbp + 2064], 0
 mov qword ptr [rbp + 2072], 0
 mov dword ptr [rbp + 2080], 0
 jmp xchain0_n2_α
xchain0_n0_as:
 mov eax, dword ptr [rbp + 2080]
 cmp eax, 0
 jne .Lx2_0
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2072], rax
 jmp xchain0_n1_α
.Lx2_0:
 jmp xchain0_n1_α
 xchain0_n0_β:
 mov eax, dword ptr [rbp + 2080]
 jmp xchain0_n1_α
xchain0_n0_af:
 add dword ptr [rbp + 2080], 1
 mov eax, dword ptr [rbp + 2080]
 jmp xchain0_n1_α
# IR_VAR
 xchain0_n1_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 jmp xchain0_n4_α
# IR_VAR_REF
 xchain0_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052480
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 jmp xchain0_n6_α
 xchain0_n2_β:
 jmp xchain0_n0_af
 xchain0_n3_α:
 jmp xchain0_n0_as
xchain0_n3_β:
 jmp xchain0_n1_α
 xchain0_n4_α:
 lea rsi, [rbp + 2032]
 call proc_shuffle_dcα
 jmp .Lx8_2
.Lx8_2:
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n7_α
 xchain0_n4_β:
 jmp xchain0_n5_α
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "shuffle"
# IR_MAKE_LIST
 xchain0_n5_α:
 lea rdi, [rbp + 1968]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain0_n8_α
# IR_NULLTEST_VAR
 xchain0_n6_α:
 mov eax, dword ptr [rbp + 2464]
 cmp eax, 99
 je xchain0_n0_af
 mov rdi, qword ptr [rbp + 2464]
 mov rsi, qword ptr [rbp + 2472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n0_af
 cmp eax, 0
 jne xchain0_n0_af
 mov rax, qword ptr [rbp + 2464]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 2504], rax
 jmp xchain0_n9_α
# IR_ASSIGN gva
 xchain0_n7_α:
 mov rax, qword ptr [rbp + 1984]
 mov rdx, qword ptr [rbp + 1992]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain0_n5_α
 xchain0_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1952]
 mov rdx, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain0_n10_α
# IR_LIT_INTEGER
 xchain0_n9_α:
 mov qword ptr [rbp + 2544], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [rbp + 2552], rax
 jmp xchain0_n11_α
.Lx14_0:
 .quad 1
# IR_VAR
 xchain0_n10_α:
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 1416], rax
 jmp xchain0_n12_α
# IR_ASSIGN_VAR
 xchain0_n11_α:
 mov rdi, qword ptr [rbp + 2496]
 mov rsi, qword ptr [rbp + 2504]
 mov rdx, qword ptr [rbp + 2544]
 mov rcx, qword ptr [rbp + 2552]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n0_af
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain0_n14_α
# IR_VAR
 xchain0_n12_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain0_n15_α
 xchain0_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn20: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn20]
 lea rsi, [rbp + 1328]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n16_α
# IR_LIT_STRING
 xchain0_n14_α:
 mov qword ptr [rbp + 2304], 1
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [rbp + 2312], rax
 jmp xchain0_n17_α
.Lx21_0:
 .quad .Lx21_0_s
.Lx21_0_s:
 .string "\n"
# IR_LIT_INTEGER
 xchain0_n15_α:
 mov qword ptr [rbp + 1744], 6
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [rbp + 1752], rax
 jmp xchain0_n18_α
.Lx22_0:
 .quad 0
# IR_VAR
 xchain0_n16_α:
 mov rax, qword ptr [1879052464]
 mov rdx, qword ptr [1879052472]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain0_n19_α
# IR_LIT_STRING
 xchain0_n17_α:
 mov qword ptr [rbp + 2400], 1
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [rbp + 2408], rax
 jmp xchain0_n21_α
.Lx24_0:
 .quad .Lx24_0_s
.Lx24_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain0_n18_α:
 mov qword ptr [rbp + 1776], 6
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [rbp + 1784], rax
 jmp xchain0_n22_α
.Lx25_0:
 .quad 3
# IR_VAR_REF
 xchain0_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2592]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain0_n23_α
 xchain0_n20_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn29: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn29]
 lea rsi, [rbp + 1056]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n24_α
 xchain0_n20_β:
 jmp xchain0_n24_α
# IR_LIT_INTEGER
 xchain0_n21_α:
 mov qword ptr [rbp + 2432], 6
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [rbp + 2440], rax
 jmp xchain0_n25_α
.Lx30_0:
 .quad 33
# IR_TO
 xchain0_n22_α:
 mov rdi, qword ptr [rbp + 1744]
 mov rsi, qword ptr [rbp + 1752]
 call to_int@PLT
 mov qword ptr [rbp + 1744], 6
 mov qword ptr [rbp + 1752], rax
 mov rdi, qword ptr [rbp + 1776]
 mov rsi, qword ptr [rbp + 1784]
 call to_int@PLT
 mov qword ptr [rbp + 1776], 6
 mov qword ptr [rbp + 1784], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1728], rax
.Lx32_0:
 mov rax, qword ptr [rbp + 1728]
 mov rcx, qword ptr [rbp + 1784]
 cmp rax, rcx
 jg xchain0_n13_α
 mov qword ptr [rbp + 1712], 6
 mov qword ptr [rbp + 1720], rax
 jmp xchain0_n26_α
 xchain0_n22_β:
 inc qword ptr [rbp + 1728]
 jmp .Lx32_0
# IR_LIT_INTEGER
 xchain0_n23_α:
 mov qword ptr [rbp + 1232], 6
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain0_n27_α
.Lx33_0:
 .quad 1
# IR_LIT_INTEGER
 xchain0_n24_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain0_n28_α
.Lx34_0:
 .quad 1
 xchain0_n25_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2400] -> [zr+2352]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2360], rax
# marshal arg1 = producer-box slot [zr+2432] -> [zr+2368]
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 2376], rax
  .section .rodata
  .Lrkfn36: .string "repl"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn36]
 lea rsi, [rbp + 2352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n29_α
 xchain0_n25_β:
 jmp xchain0_n30_α
# IR_VAR
 xchain0_n26_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain0_n31_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n27_α:
 mov rdi, qword ptr [rbp + 1200]
 mov rsi, qword ptr [rbp + 1208]
 mov rdx, qword ptr [rbp + 1232]
 mov rcx, qword ptr [rbp + 1240]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n20_α
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain0_n32_α
# IR_LIT_INTEGER
 xchain0_n28_α:
 mov qword ptr [rbp + 448], 6
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain0_n33_α
.Lx39_0:
 .quad 4
 xchain0_n29_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 2304]
 mov rsi, qword ptr [rbp + 2312]
 mov rdx, qword ptr [rbp + 2336]
 mov rcx, qword ptr [rbp + 2344]
 call str_concat_d@PLT
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 jmp xchain0_n34_α
# IR_LIT_STRING
 xchain0_n30_α:
 mov qword ptr [rbp + 2192], 1
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [rbp + 2200], rax
 jmp xchain0_n35_α
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string " "
# IR_COERCE_NUMERIC
 xchain0_n31_α:
 mov eax, dword ptr [rbp + 1712]
 cmp eax, 7
 je .Lx43_1
 cmp eax, 6
 jne .Lx43_0
 mov eax, dword ptr [rbp + 1808]
 cmp eax, 6
 jne .Lx43_0
.Lx43_1:
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1688], rax
 jmp xchain0_n36_α
.Lx43_0:
 lea rdi, [rbp + 1712]
 lea rsi, [rbp + 1808]
 lea rdx, [rbp + 1680]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n36_α
# IR_DEREF variable -> value
 xchain0_n32_α:
 mov rdi, qword ptr [rbp + 1264]
 mov rsi, qword ptr [rbp + 1272]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n20_α
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain0_n37_α
# IR_TO
 xchain0_n33_α:
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 call to_int@PLT
 mov qword ptr [rbp + 416], 6
 mov qword ptr [rbp + 424], rax
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 call to_int@PLT
 mov qword ptr [rbp + 448], 6
 mov qword ptr [rbp + 456], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 400], rax
.Lx46_0:
 mov rax, qword ptr [rbp + 400]
 mov rcx, qword ptr [rbp + 456]
 cmp rax, rcx
 jg xchain0_n68_α
 mov qword ptr [rbp + 384], 6
 mov qword ptr [rbp + 392], rax
 jmp xchain0_n38_α
 xchain0_n33_β:
 inc qword ptr [rbp + 400]
 jmp .Lx46_0
# IR_ASSIGN gva
 xchain0_n34_α:
 mov rax, qword ptr [rbp + 2272]
 mov rdx, qword ptr [rbp + 2280]
 mov qword ptr [1879052448], rax
 mov qword ptr [1879052456], rdx
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain0_n30_α
# IR_LIT_INTEGER
 xchain0_n35_α:
 mov qword ptr [rbp + 2224], 6
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [rbp + 2232], rax
 jmp xchain0_n39_α
.Lx48_0:
 .quad 10
# IR_COERCE_NUMERIC
 xchain0_n36_α:
 mov eax, dword ptr [rbp + 1808]
 cmp eax, 7
 je .Lx50_1
 cmp eax, 6
 jne .Lx50_0
 mov eax, dword ptr [rbp + 1712]
 cmp eax, 6
 jne .Lx50_0
.Lx50_1:
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1656], rax
 jmp xchain0_n40_α
.Lx50_0:
 lea rdi, [rbp + 1808]
 lea rsi, [rbp + 1712]
 lea rdx, [rbp + 1648]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n40_α
# IR_LIST_BANG
 xchain0_n37_α:
 mov qword ptr [rbp + 1184], 0
.Lx52_0:
 mov rdi, qword ptr [rbp + 1296]
 mov rsi, qword ptr [rbp + 1304]
 mov rdx, qword ptr [rbp + 1184]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp rax, 99
 je xchain0_n20_α
 jmp xchain0_n41_α
 xchain0_n37_β:
 inc qword ptr [rbp + 1184]
 jmp .Lx52_0
 xchain0_n38_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain0_n42_α
 xchain0_n39_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2192] -> [zr+2144]
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2152], rax
# marshal arg1 = producer-box slot [zr+2224] -> [zr+2160]
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 2168], rax
  .section .rodata
  .Lrkfn55: .string "repl"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn55]
 lea rsi, [rbp + 2144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 cmp eax, 99
 je xchain0_n1_α
 jmp xchain0_n43_α
 xchain0_n39_β:
 jmp xchain0_n1_α
 xchain0_n40_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1680]
 cmp eax, 100
 je .Lx56_0
 mov eax, dword ptr [rbp + 1648]
 cmp eax, 100
 je .Lx56_0
 mov eax, dword ptr [rbp + 1680]
 cmp eax, 6
 jne .Lx56_2
 mov eax, dword ptr [rbp + 1648]
 cmp eax, 6
 jne .Lx56_2
.Lx56_1:
 mov rax, qword ptr [rbp + 1688]
 mov rcx, qword ptr [rbp + 1656]
 imul rax, rcx
 mov qword ptr [rbp + 1616], 6
 mov qword ptr [rbp + 1624], rax
 jmp xchain0_n44_α
.Lx56_0:
 mov rdi, qword ptr [rbp + 1680]
 mov rsi, qword ptr [rbp + 1688]
 mov rdx, qword ptr [rbp + 1648]
 mov rcx, qword ptr [rbp + 1656]
 mov r8d, 2
 lea r9, [rbp + 1616]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain0_n44_α
.Lx56_2:
 mov rdi, qword ptr [rbp + 1680]
 mov rsi, qword ptr [rbp + 1688]
 mov rdx, qword ptr [rbp + 1648]
 mov rcx, qword ptr [rbp + 1656]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n13_α
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain0_n44_α
 xchain0_n40_β:
 jmp xchain0_n13_α
 xchain0_n41_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1088]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1096], rax
# marshal arg1 = producer-box slot [zr+1168] -> [zr+1104]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1112], rax
  .section .rodata
  .Lrkfn58: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn58]
 lea rsi, [rbp + 1088]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain0_n37_β
 jmp xchain0_n37_β
 xchain0_n41_β:
 jmp xchain0_n37_β
# IR_BOUND
 xchain0_n42_α:
 mov qword ptr [rbp + 480], rsp
 jmp xchain0_n45_α
# IR_ASSIGN gva
 xchain0_n43_α:
 mov rax, qword ptr [rbp + 2128]
 mov rdx, qword ptr [rbp + 2136]
 mov qword ptr [1879052464], rax
 mov qword ptr [1879052472], rdx
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain0_n3_α
# IR_LIT_INTEGER
 xchain0_n44_α:
 mov qword ptr [rbp + 1840], 6
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain0_n46_α
.Lx62_0:
 .quad 1
# IR_VAR_REF
 xchain0_n45_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2592]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain0_n47_α
# IR_COERCE_NUMERIC
 xchain0_n46_α:
 mov eax, dword ptr [rbp + 1616]
 cmp eax, 7
 je .Lx66_1
 cmp eax, 6
 jne .Lx66_0
 mov eax, dword ptr [rbp + 1840]
 cmp eax, 6
 jne .Lx66_0
.Lx66_1:
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1592], rax
 jmp xchain0_n48_α
.Lx66_0:
 lea rdi, [rbp + 1616]
 lea rsi, [rbp + 1840]
 lea rdx, [rbp + 1584]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n48_α
# IR_LIT_INTEGER
 xchain0_n47_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain0_n49_α
.Lx67_0:
 .quad 4
 xchain0_n48_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1584]
 cmp eax, 100
 je .Lx68_0
 mov eax, dword ptr [rbp + 1584]
 cmp eax, 6
 jne .Lx68_2
.Lx68_1:
 mov rax, qword ptr [rbp + 1592]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 1552], 6
 mov qword ptr [rbp + 1560], rax
 jmp xchain0_n50_α
.Lx68_0:
 mov rdi, qword ptr [rbp + 1584]
 mov rsi, qword ptr [rbp + 1592]
 mov rdx, qword ptr [rbp + 1840]
 mov rcx, qword ptr [rbp + 1848]
 mov r8d, 0
 lea r9, [rbp + 1552]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain0_n50_α
.Lx68_2:
 mov rdi, qword ptr [rbp + 1584]
 mov rsi, qword ptr [rbp + 1592]
 mov rdx, qword ptr [rbp + 1840]
 mov rcx, qword ptr [rbp + 1848]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n13_α
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain0_n50_α
 xchain0_n48_β:
 jmp xchain0_n13_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n49_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n52_α
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain0_n51_α
# IR_VAR
 xchain0_n50_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain0_n53_α
# IR_VAR
 xchain0_n51_α:
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 760], rax
 jmp xchain0_n54_α
# IR_UNMARK
 xchain0_n52_α:
 mov rsp, qword ptr [rbp + 480]
 jmp xchain0_n33_β
 xchain0_n53_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1552]
 cmp eax, 100
 je .Lx75_0
 mov eax, dword ptr [rbp + 1872]
 cmp eax, 100
 je .Lx75_0
 mov eax, dword ptr [rbp + 1552]
 cmp eax, 6
 jne .Lx75_2
 mov eax, dword ptr [rbp + 1872]
 cmp eax, 6
 jne .Lx75_2
.Lx75_1:
 mov rax, qword ptr [rbp + 1560]
 mov rcx, qword ptr [rbp + 1880]
 add rax, rcx
 mov qword ptr [rbp + 1904], 6
 mov qword ptr [rbp + 1912], rax
 jmp xchain0_n55_α
.Lx75_0:
 mov rdi, qword ptr [rbp + 1552]
 mov rsi, qword ptr [rbp + 1560]
 mov rdx, qword ptr [rbp + 1872]
 mov rcx, qword ptr [rbp + 1880]
 mov r8d, 0
 lea r9, [rbp + 1904]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain0_n55_α
.Lx75_2:
 mov rdi, qword ptr [rbp + 1552]
 mov rsi, qword ptr [rbp + 1560]
 mov rdx, qword ptr [rbp + 1872]
 mov rcx, qword ptr [rbp + 1880]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n22_β
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 jmp xchain0_n55_α
 xchain0_n53_β:
 jmp xchain0_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain0_n54_α:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n52_α
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain0_n56_α
# IR_SUBSCRIPT section extended (x[i+:n]/x[i-:n]; end pre-computed by IR_BINOP; wraparound→ω)
 xchain0_n55_α:
 mov rdi, qword ptr [rbp + 1520]
 mov rsi, qword ptr [rbp + 1528]
 mov rdx, qword ptr [rbp + 1552]
 mov rcx, qword ptr [rbp + 1560]
 mov r8, qword ptr [rbp + 1904]
 mov r9, qword ptr [rbp + 1912]
 call subscript_get2_ext@PLT
 cmp eax, 99
 je xchain0_n22_β
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain0_n57_α
# IR_DEREF variable -> value
 xchain0_n56_α:
 mov rdi, qword ptr [rbp + 784]
 mov rsi, qword ptr [rbp + 792]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n52_α
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain0_n58_α
 xchain0_n57_α:
 lea rsi, [rbp + 1488]
 call proc_show_dcα
 jmp .Lx80_2
.Lx80_2:
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain0_n22_β
 jmp xchain0_n59_α
 xchain0_n57_β:
 jmp xchain0_n22_β
.Lx80_0:
 .quad .Lx80_0_s
.Lx80_0_s:
 .string "show"
# IR_LIT_INTEGER
 xchain0_n58_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx81_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain0_n60_α
.Lx81_0:
 .quad 20
 xchain0_n59_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1360]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1368], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1376]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1384], rax
  .section .rodata
  .Lrkfn83: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn83]
 lea rsi, [rbp + 1360]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je xchain0_n22_β
 jmp xchain0_n22_β
 xchain0_n59_β:
 jmp xchain0_n22_β
 xchain0_n60_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+608]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 616], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+624]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 632], rax
  .section .rodata
  .Lrkfn85: .string "left"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn85]
 lea rsi, [rbp + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain0_n52_α
 jmp xchain0_n61_α
 xchain0_n60_β:
 jmp xchain0_n52_α
# IR_VAR_REF
 xchain0_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2592]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain0_n62_α
# IR_LIT_INTEGER
 xchain0_n62_α:
 mov qword ptr [rbp + 896], 6
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain0_n63_α
.Lx88_0:
 .quad 2
# IR_SUBSCRIPT x[i] variable
 xchain0_n63_α:
 mov rdi, qword ptr [rbp + 864]
 mov rsi, qword ptr [rbp + 872]
 mov rdx, qword ptr [rbp + 896]
 mov rcx, qword ptr [rbp + 904]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n52_α
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain0_n64_α
# IR_VAR
 xchain0_n64_α:
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 968], rax
 jmp xchain0_n65_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n65_α:
 mov rdi, qword ptr [rbp + 928]
 mov rsi, qword ptr [rbp + 936]
 mov rdx, qword ptr [rbp + 960]
 mov rcx, qword ptr [rbp + 968]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n52_α
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain0_n66_α
# IR_DEREF variable -> value
 xchain0_n66_α:
 mov rdi, qword ptr [rbp + 992]
 mov rsi, qword ptr [rbp + 1000]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n52_α
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain0_n67_α
 xchain0_n67_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+544]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 552], rax
# marshal arg1 = producer-box slot [zr+1024] -> [zr+560]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 568], rax
  .section .rodata
  .Lrkfn95: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn95]
 lea rsi, [rbp + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain0_n52_α
 jmp xchain0_n52_α
 xchain0_n67_β:
 jmp xchain0_n52_α
 xchain0_n68_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn97: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn97]
 lea rsi, [rbp + 352]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain0_n69_α
 jmp xchain0_n69_α
 xchain0_n68_β:
 jmp xchain0_n69_α
# IR_VAR
 xchain0_n69_α:
 mov rax, qword ptr [1879052464]
 mov rdx, qword ptr [1879052472]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain0_n70_α
# IR_VAR_REF
 xchain0_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2592]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain0_n72_α
# IR_VAR
 xchain0_n71_α:
 mov rax, qword ptr [1879052448]
 mov rdx, qword ptr [1879052456]
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain0_n73_α
# IR_LIT_INTEGER
 xchain0_n72_α:
 mov qword ptr [rbp + 256], 6
 mov rax, qword ptr [rip + .Lx00001_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain0_n74_α
.Lx00001_0:
 .quad 3
 xchain0_n73_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+32]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 40], rax
  .section .rodata
  .Lrkfn104: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn104]
 lea rsi, [rbp + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 cmp eax, 99
 je proc_display_ω
 jmp proc_display_ω
 xchain0_n73_β:
 jmp proc_display_ω
# IR_SUBSCRIPT x[i] variable
 xchain0_n74_α:
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 256]
 mov rcx, qword ptr [rbp + 264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n71_α
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain0_n75_α
# IR_DEREF variable -> value
 xchain0_n75_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n71_α
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain0_n76_α
# IR_LIST_BANG
 xchain0_n76_α:
 mov qword ptr [rbp + 208], 0
.Lx00002_0:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, qword ptr [rbp + 208]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp rax, 99
 je xchain0_n71_α
 jmp xchain0_n77_α
 xchain0_n76_β:
 inc qword ptr [rbp + 208]
 jmp .Lx00002_0
 xchain0_n77_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+112]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 120], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+128]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn110: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn110]
 lea rsi, [rbp + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je xchain0_n76_β
 jmp xchain0_n76_β
 xchain0_n77_β:
 jmp xchain0_n76_β
proc_display_res:
add rsp, 8
pop rbp
proc_display_β:
jmp proc_display_ω
proc_display_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 2632]
lea rsp, [rbp + 2656]
mov rbp, [rbp + 2648]
jmp rax
proc_display_ω:
mov rax, [rbp + 2640]
lea rsp, [rbp + 2656]
mov rbp, [rbp + 2648]
jmp rax
proc_display_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 2672
 mov qword ptr [rsp + 2664], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 2624], r11
 lea rax, [rip + .Lx00003_2]
 mov qword ptr [rbp + 2632], rax
 lea rax, [rip + .Lx00003_3]
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2584], rbp
 mov rdi, rbp
 mov esi, 2576
 mov edx, 2624
 mov ecx, 0
 mov r8d, 0
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_display_α_body
.Lx00003_2:
 mov rdx, qword ptr [rsp + -2672]
 mov rcx, rsp
 add rcx, -2656
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00003_3:
 mov rdi, qword ptr [rsp + -2672]
 mov rsi, rsp
 add rsi, -2656
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
  .globl proc_show_α
proc_show_α:
#=======================================================================================================================
    .global proc_show_α
    .global proc_show_β
    .global proc_show_γ
    .global proc_show_ω
  sub rsp, 2048
  mov [rsp + 2024], rcx
  mov [rsp + 2032], rdx
  mov [rsp + 2040], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2008], rsp
  mov rdi, rsp
  mov esi, 2000
  mov edx, 2016
  call rt_jmp_frame_lexprep2@PLT
proc_show_α_body:
# IR_DISJUNCTION_NARY
 xchain00004_n0_α:
 mov qword ptr [rbp + 880], 0
 mov qword ptr [rbp + 888], 0
 mov dword ptr [rbp + 896], 0
 jmp xchain00004_n2_α
xchain00004_n0_as:
 mov eax, dword ptr [rbp + 896]
 cmp eax, 0
 jne .Lx00005_0
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 888], rax
 jmp xchain00004_n1_α
.Lx00005_0:
 jmp xchain00004_n1_α
 xchain00004_n0_β:
 mov eax, dword ptr [rbp + 896]
 jmp xchain00004_n1_α
xchain00004_n0_af:
 add dword ptr [rbp + 896], 1
 mov eax, dword ptr [rbp + 896]
 jmp xchain00004_n1_α
# IR_LIT_STRING
 xchain00004_n1_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx00006_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00004_n4_α
.Lx00006_0:
 .quad .Lx00006_0_s
.Lx00006_0_s:
 .string "S: "
# IR_VAR_REF
 xchain00004_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052560
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain00004_n5_α
 xchain00004_n2_β:
 jmp xchain00004_n0_af
 xchain00004_n3_α:
 jmp xchain00004_n0_as
xchain00004_n3_β:
 jmp xchain00004_n1_α
# IR_VAR
 xchain00004_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 248], rax
 jmp xchain00004_n6_α
# IR_NULLTEST_VAR
 xchain00004_n5_α:
 mov eax, dword ptr [rbp + 1888]
 cmp eax, 99
 je xchain00004_n0_af
 mov rdi, qword ptr [rbp + 1888]
 mov rsi, qword ptr [rbp + 1896]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00004_n0_af
 cmp eax, 0
 jne xchain00004_n0_af
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 1928], rax
 jmp xchain00004_n7_α
# IR_VAR
 xchain00004_n6_α:
 mov rax, qword ptr [1879052544]
 mov rdx, qword ptr [1879052552]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00004_n8_α
# IR_LIT_INTEGER
 xchain00004_n7_α:
 mov qword ptr [rbp + 1968], 6
 mov rax, qword ptr [rip + .Lx00007_0]
 mov qword ptr [rbp + 1976], rax
 jmp xchain00004_n9_α
.Lx00007_0:
 .quad 1
 xchain00004_n8_α:
 lea rsi, [rbp + 240]
 lea rdx, [rbp + 272]
 call proc_arrange_dcα
 jmp .Lx00008_2
.Lx00008_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je proc_show_ω
 jmp xchain00004_n10_α
 xchain00004_n8_β:
 jmp proc_show_ω
.Lx00008_0:
 .quad .Lx00008_0_s
.Lx00008_0_s:
 .string "arrange"
# IR_ASSIGN_VAR
 xchain00004_n9_α:
 mov rdi, qword ptr [rbp + 1920]
 mov rsi, qword ptr [rbp + 1928]
 mov rdx, qword ptr [rbp + 1968]
 mov rcx, qword ptr [rbp + 1976]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00004_n0_af
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain00004_n11_α
 xchain00004_n10_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 mov rdx, qword ptr [rbp + 176]
 mov rcx, qword ptr [rbp + 184]
 call str_concat_d@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain00004_n12_α
# IR_VAR
 xchain00004_n11_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain00004_n13_α
# IR_LIT_STRING
 xchain00004_n12_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00009_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00004_n15_α
.Lx00009_0:
 .quad .Lx00009_0_s
.Lx00009_0_s:
 .string "H: "
# IR_VAR
 xchain00004_n13_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain00004_n16_α
# IR_VAR
 xchain00004_n14_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain00004_n17_α
# IR_VAR
 xchain00004_n15_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 440], rax
 jmp xchain00004_n19_α
# IR_LIT_INTEGER
 xchain00004_n16_α:
 mov qword ptr [rbp + 1856], 6
 mov rax, qword ptr [rip + .Lx00010_0]
 mov qword ptr [rbp + 1864], rax
 jmp xchain00004_n20_α
.Lx00010_0:
 .quad 3
# IR_VAR
 xchain00004_n17_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain00004_n21_α
# IR_VAR
 xchain00004_n18_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain00004_n22_α
# IR_VAR
 xchain00004_n19_α:
 mov rax, qword ptr [1879052528]
 mov rdx, qword ptr [1879052536]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00004_n24_α
 xchain00004_n20_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1824] -> [zr+1776]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1784], rax
# marshal arg1 = producer-box slot [zr+1856] -> [zr+1792]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1800], rax
  .section .rodata
  .Lrkfn139: .string "repl"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn139]
 lea rsi, [rbp + 1776]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 cmp eax, 99
 je xchain00004_n14_α
 jmp xchain00004_n25_α
 xchain00004_n20_β:
 jmp xchain00004_n14_α
 xchain00004_n21_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1488]
 mov rsi, qword ptr [rbp + 1496]
 mov rdx, qword ptr [rbp + 1520]
 mov rcx, qword ptr [rbp + 1528]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain00004_n26_α
# IR_LIT_INTEGER
 xchain00004_n22_α:
 mov qword ptr [rbp + 1312], 6
 mov rax, qword ptr [rip + .Lx00011_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain00004_n27_α
.Lx00011_0:
 .quad 2
# IR_VAR
 xchain00004_n23_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00004_n28_α
 xchain00004_n24_α:
 lea rsi, [rbp + 432]
 lea rdx, [rbp + 464]
 call proc_arrange_dcα
 jmp .Lx00012_2
.Lx00012_2:
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je proc_show_ω
 jmp xchain00004_n29_α
 xchain00004_n24_β:
 jmp proc_show_ω
.Lx00012_0:
 .quad .Lx00012_0_s
.Lx00012_0_s:
 .string "arrange"
 xchain00004_n25_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1728]
 mov rsi, qword ptr [rbp + 1736]
 mov rdx, qword ptr [rbp + 1760]
 mov rcx, qword ptr [rbp + 1768]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain00004_n30_α
# IR_VAR
 xchain00004_n26_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain00004_n31_α
 xchain00004_n27_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1232]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1248]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1256], rax
  .section .rodata
  .Lrkfn148: .string "repl"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn148]
 lea rsi, [rbp + 1232]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain00004_n23_α
 jmp xchain00004_n32_α
 xchain00004_n27_β:
 jmp xchain00004_n23_α
# IR_LIT_INTEGER
 xchain00004_n28_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx00013_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00004_n33_α
.Lx00013_0:
 .quad 3
 xchain00004_n29_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 mov rdx, qword ptr [rbp + 368]
 mov rcx, qword ptr [rbp + 376]
 call str_concat_d@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain00004_n34_α
# IR_ASSIGN gva
 xchain00004_n30_α:
 mov rax, qword ptr [rbp + 1696]
 mov rdx, qword ptr [rbp + 1704]
 mov qword ptr [1879052496], rax
 mov qword ptr [1879052504], rdx
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00004_n14_α
# IR_LIT_INTEGER
 xchain00004_n31_α:
 mov qword ptr [rbp + 1648], 6
 mov rax, qword ptr [rip + .Lx00014_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain00004_n35_α
.Lx00014_0:
 .quad 2
# IR_VAR
 xchain00004_n32_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain00004_n36_α
 xchain00004_n33_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn155: .string "repl"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn155]
 lea rsi, [rbp + 992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain00004_n1_α
 jmp xchain00004_n37_α
 xchain00004_n33_β:
 jmp xchain00004_n1_α
# IR_LIT_STRING
 xchain00004_n34_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx00015_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00004_n38_α
.Lx00015_0:
 .quad .Lx00015_0_s
.Lx00015_0_s:
 .string "D: "
 xchain00004_n35_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1616] -> [zr+1568]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1576], rax
# marshal arg1 = producer-box slot [zr+1648] -> [zr+1584]
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1592], rax
  .section .rodata
  .Lrkfn158: .string "repl"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn158]
 lea rsi, [rbp + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain00004_n18_α
 jmp xchain00004_n39_α
 xchain00004_n35_β:
 jmp xchain00004_n18_α
 xchain00004_n36_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1216]
 mov rsi, qword ptr [rbp + 1224]
 mov rdx, qword ptr [rbp + 1344]
 mov rcx, qword ptr [rbp + 1352]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain00004_n40_α
# IR_VAR
 xchain00004_n37_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00004_n41_α
# IR_VAR
 xchain00004_n38_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 632], rax
 jmp xchain00004_n42_α
 xchain00004_n39_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1456]
 mov rsi, qword ptr [rbp + 1464]
 mov rdx, qword ptr [rbp + 1552]
 mov rcx, qword ptr [rbp + 1560]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain00004_n43_α
# IR_VAR
 xchain00004_n40_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain00004_n44_α
 xchain00004_n41_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 976]
 mov rsi, qword ptr [rbp + 984]
 mov rdx, qword ptr [rbp + 1104]
 mov rcx, qword ptr [rbp + 1112]
 call str_concat_d@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain00004_n45_α
# IR_VAR
 xchain00004_n42_α:
 mov rax, qword ptr [1879052512]
 mov rdx, qword ptr [1879052520]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00004_n46_α
# IR_ASSIGN gva
 xchain00004_n43_α:
 mov rax, qword ptr [rbp + 1424]
 mov rdx, qword ptr [rbp + 1432]
 mov qword ptr [1879052512], rax
 mov qword ptr [1879052520], rdx
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain00004_n18_α
 xchain00004_n44_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1184]
 mov rsi, qword ptr [rbp + 1192]
 mov rdx, qword ptr [rbp + 1376]
 mov rcx, qword ptr [rbp + 1384]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain00004_n47_α
# IR_ASSIGN gva
 xchain00004_n45_α:
 mov rax, qword ptr [rbp + 944]
 mov rdx, qword ptr [rbp + 952]
 mov qword ptr [1879052544], rax
 mov qword ptr [1879052552], rdx
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain00004_n3_α
 xchain00004_n46_α:
 lea rsi, [rbp + 624]
 lea rdx, [rbp + 656]
 call proc_arrange_dcα
 jmp .Lx00016_2
.Lx00016_2:
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je proc_show_ω
 jmp xchain00004_n48_α
 xchain00004_n46_β:
 jmp proc_show_ω
.Lx00016_0:
 .quad .Lx00016_0_s
.Lx00016_0_s:
 .string "arrange"
# IR_ASSIGN gva
 xchain00004_n47_α:
 mov rax, qword ptr [rbp + 1152]
 mov rdx, qword ptr [rbp + 1160]
 mov qword ptr [1879052528], rax
 mov qword ptr [1879052536], rdx
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00004_n23_α
 xchain00004_n48_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 560]
 mov rcx, qword ptr [rbp + 568]
 call str_concat_d@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00004_n49_α
# IR_LIT_STRING
 xchain00004_n49_α:
 mov qword ptr [rbp + 720], 1
 mov rax, qword ptr [rip + .Lx00017_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00004_n50_α
.Lx00017_0:
 .quad .Lx00017_0_s
.Lx00017_0_s:
 .string "C: "
# IR_VAR
 xchain00004_n50_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 824], rax
 jmp xchain00004_n51_α
# IR_VAR
 xchain00004_n51_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain00004_n52_α
 xchain00004_n52_α:
 lea rsi, [rbp + 816]
 lea rdx, [rbp + 848]
 call proc_arrange_dcα
 jmp .Lx00018_2
.Lx00018_2:
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je proc_show_ω
 jmp xchain00004_n53_α
 xchain00004_n52_β:
 jmp proc_show_ω
.Lx00018_0:
 .quad .Lx00018_0_s
.Lx00018_0_s:
 .string "arrange"
 xchain00004_n53_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 call str_concat_d@PLT
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00004_n54_α
# IR_MAKE_LIST
 xchain00004_n54_α:
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 56], rax
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 72], rax
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 88], rax
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 104], rax
 lea rdi, [rbp + 48]
 mov esi, 4
 call rt_make_list@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00004_n55_α
# IR_RETURN
 xchain00004_n55_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_show_γ
proc_show_res:
add rsp, 8
pop rbp
proc_show_β:
jmp proc_show_ω
proc_show_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 2024]
lea rsp, [rbp + 2048]
mov rbp, [rbp + 2040]
jmp rax
proc_show_ω:
mov rax, [rbp + 2032]
lea rsp, [rbp + 2048]
mov rbp, [rbp + 2040]
jmp rax
proc_show_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 2064
 mov qword ptr [rsp + 2056], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 2016], r11
 lea rax, [rip + .Lx00019_2]
 mov qword ptr [rbp + 2024], rax
 lea rax, [rip + .Lx00019_3]
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2008], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 2000
 mov edx, 2016
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_show_α_body
.Lx00019_2:
 mov rdx, qword ptr [rsp + -2064]
 mov rcx, rsp
 add rcx, -2048
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00019_3:
 mov rdi, qword ptr [rsp + -2064]
 mov rsi, rsp
 add rsi, -2048
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
  .globl proc_arrange_α
proc_arrange_α:
#=======================================================================================================================
    .global proc_arrange_α
    .global proc_arrange_β
    .global proc_arrange_γ
    .global proc_arrange_ω
  sub rsp, 480
  mov [rsp + 456], rcx
  mov [rsp + 464], rdx
  mov [rsp + 472], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 432
  mov edx, 448
  call rt_jmp_frame_lexprep2@PLT
proc_arrange_α_body:
# IR_VAR
 xchain00020_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 248], rax
 jmp xchain00020_n1_α
# IR_VAR
 xchain00020_n1_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00020_n2_α
# IR_VAR
 xchain00020_n2_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 312], rax
 jmp xchain00020_n3_α
 xchain00020_n3_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+176]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+192]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 200], rax
# marshal arg2 = producer-box slot [zr+304] -> [zr+208]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 216], rax
  .section .rodata
  .Lrkfn192: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn192]
 lea rsi, [rbp + 176]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je proc_arrange_ω
 jmp xchain00020_n4_α
 xchain00020_n3_β:
 jmp proc_arrange_ω
# IR_LIT_CHARSET
 xchain00020_n4_α:
 mov qword ptr [rbp + 336], 1
 mov dword ptr [rbp + 340], -1
 mov rax, qword ptr [rip + .Lx00021_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00020_n5_α
.Lx00021_0:
 .quad .Lx00021_0_s
.Lx00021_0_s:
 .string " "
 xchain00020_n5_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 mov r8d, 20
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_arrange_ω
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00020_n6_α
# IR_VAR
 xchain00020_n6_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00020_n7_α
# IR_VAR
 xchain00020_n7_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00020_n8_α
 xchain00020_n8_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+64]
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 72], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+80]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 88], rax
# marshal arg2 = producer-box slot [zr+400] -> [zr+96]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn198: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn198]
 lea rsi, [rbp + 64]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_arrange_ω
 jmp xchain00020_n9_α
 xchain00020_n8_β:
 jmp proc_arrange_ω
# IR_RETURN
 xchain00020_n9_α:
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_arrange_γ
proc_arrange_res:
add rsp, 8
pop rbp
proc_arrange_β:
jmp proc_arrange_ω
proc_arrange_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_arrange_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_arrange_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 496
 mov qword ptr [rsp + 488], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 448], r11
 lea rax, [rip + .Lx00022_2]
 mov qword ptr [rbp + 456], rax
 lea rax, [rip + .Lx00022_3]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 440], rbp
 mov qword ptr [rbp + 16], rsi
 mov qword ptr [rbp + 24], rdx
 mov rdi, rbp
 mov esi, 432
 mov edx, 448
 mov ecx, 2
 mov r8d, 2
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_arrange_α_body
.Lx00022_2:
 mov rdx, qword ptr [rsp + -496]
 mov rcx, rsp
 add rcx, -480
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00022_3:
 mov rdi, qword ptr [rsp + -496]
 mov rsi, rsp
 add rsi, -480
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 3592], rsp
  mov rdi, rsp
  mov esi, 3584
  mov edx, 3728
  call rt_jmp_frame_lexprep2@PLT
proc_options_α_body:
# IR_VAR_REF
 xchain00023_n0_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain00023_n1_α
# IR_NULLTEST_VAR
 xchain00023_n1_α:
 mov eax, dword ptr [rbp + 3424]
 cmp eax, 99
 je xchain00023_n3_α
 mov rdi, qword ptr [rbp + 3424]
 mov rsi, qword ptr [rbp + 3432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00023_n3_α
 cmp eax, 0
 jne xchain00023_n3_α
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3464], rax
 jmp xchain00023_n2_α
# IR_LIT_CHARSET
 xchain00023_n2_α:
 mov qword ptr [rbp + 3552], 1
 mov dword ptr [rbp + 3556], -1
 mov rax, qword ptr [rip + .Lx00024_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain00023_n4_α
.Lx00024_0:
 .quad .Lx00024_0_s
.Lx00024_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00023_n3_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn207: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn207]
 lea rsi, [rbp + 3408]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 cmp eax, 99
 je xchain00023_n6_α
 jmp xchain00023_n5_α
 xchain00023_n3_β:
 jmp xchain00023_n6_α
 xchain00023_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3552] -> [zr+3520]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3520], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3528], rax
  .section .rodata
  .Lrkfn209: .string "string"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn209]
 lea rsi, [rbp + 3520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 cmp eax, 99
 je xchain00023_n3_α
 jmp xchain00023_n7_α
 xchain00023_n4_β:
 jmp xchain00023_n3_α
 xchain00023_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3392]
 mov rdx, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain00023_n6_α
# IR_MAKE_LIST
 xchain00023_n6_α:
 lea rdi, [rbp + 3376]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain00023_n8_α
# IR_ASSIGN_VAR
 xchain00023_n7_α:
 mov rdi, qword ptr [rbp + 3456]
 mov rsi, qword ptr [rbp + 3464]
 mov rdx, qword ptr [rbp + 3504]
 mov rcx, qword ptr [rbp + 3512]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00023_n3_α
 mov qword ptr [rbp + 3488], rax
 mov qword ptr [rbp + 3496], rdx
 jmp xchain00023_n3_α
 xchain00023_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3360]
 mov rdx, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain00023_n9_α
# IR_VAR
 xchain00023_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00023_n10_α
 xchain00023_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn218: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn218]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00023_n11_α
 jmp xchain00023_n12_α
 xchain00023_n10_β:
 jmp xchain00023_n11_α
# IR_VAR
 xchain00023_n11_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 152], rax
 jmp xchain00023_n13_α
 xchain00023_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00023_n15_α
# IR_VAR
 xchain00023_n13_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 232], rax
 jmp xchain00023_n16_α
# IR_VAR
 xchain00023_n14_α:
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 56], rax
 jmp xchain00023_n17_α
# IR_VAR
 xchain00023_n15_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3320], rax
 jmp xchain00023_n18_α
 xchain00023_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn229: .string "pull"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn229]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00023_n14_α
 jmp xchain00023_n19_α
 xchain00023_n16_β:
 jmp xchain00023_n14_α
# IR_RETURN
 xchain00023_n17_α:
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_options_γ
# IR_GEN_SCAN
 xchain00023_n18_α:
 mov rdi, qword ptr [rbp + 3312]
 mov rsi, qword ptr [rbp + 3320]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00023_n20_α
 xchain00023_n19_α:
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
  .Lrkfn234: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn234]
 lea rsi, [rbp + 96]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00023_n14_α
 jmp xchain00023_n11_α
 xchain00023_n19_β:
 jmp xchain00023_n14_α
# IR_DISJUNCTION_NARY
 xchain00023_n20_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 mov dword ptr [rbp + 448], 0
 jmp xchain00023_n22_α
xchain00023_n20_as:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 jne .Lx00025_0
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 jmp xchain00023_n21_α
.Lx00025_0:
 cmp eax, 1
 jne .Lx00025_1
 mov rax, qword ptr [rbp + 3184]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 440], rax
 jmp xchain00023_n21_α
.Lx00025_1:
 jmp xchain00023_n21_α
 xchain00023_n20_β:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 je xchain00023_n23_β
 jmp xchain00023_n35_α
xchain00023_n20_af:
 add dword ptr [rbp + 448], 1
 mov eax, dword ptr [rbp + 448]
 cmp eax, 1
 je xchain00023_n24_α
 jmp xchain00023_n35_α
# IR_GEN_SCAN
 xchain00023_n21_α:
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 408], rax
 lea rdi, [rbp + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 368]
 mov r14, qword ptr [rbp + 376]
 mov r15, qword ptr [rbp + 384]
 jmp xchain00023_n9_α
 xchain00023_n21_β:
 call rt_scan_reenter@PLT
 mov r13, rax
 mov r15, rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 jmp xchain00023_n20_β
 jmp xchain00023_n9_α
# IR_LIT_STRING
 xchain00023_n22_α:
 mov qword ptr [rbp + 3152], 1
 mov rax, qword ptr [rip + .Lx00026_0]
 mov qword ptr [rbp + 3160], rax
 jmp xchain00023_n27_α
 xchain00023_n22_β:
 jmp xchain00023_n20_af
.Lx00026_0:
 .quad .Lx00026_0_s
.Lx00026_0_s:
 .string "-"
# IR_DISJUNCTION_NARY
 xchain00023_n23_α:
 mov qword ptr [rbp + 560], 0
 mov qword ptr [rbp + 568], 0
 mov dword ptr [rbp + 576], 0
 jmp xchain00023_n29_α
xchain00023_n23_as:
 mov eax, dword ptr [rbp + 576]
 cmp eax, 0
 jne .Lx00027_0
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 568], rax
 jmp xchain00023_n28_α
.Lx00027_0:
 cmp eax, 1
 jne .Lx00027_1
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 568], rax
 jmp xchain00023_n28_α
.Lx00027_1:
 jmp xchain00023_n28_α
 xchain00023_n23_β:
 mov eax, dword ptr [rbp + 576]
 cmp eax, 0
 je xchain00023_n30_β
 jmp xchain00023_n28_α
xchain00023_n23_af:
 add dword ptr [rbp + 576], 1
 mov eax, dword ptr [rbp + 576]
 cmp eax, 1
 je xchain00023_n31_α
 jmp xchain00023_n28_α
# IR_VAR
 xchain00023_n24_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 3248], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 3256], rax
 jmp xchain00023_n34_α
 xchain00023_n24_β:
 jmp xchain00023_n35_α
 xchain00023_n25_α:
 jmp xchain00023_n20_as
xchain00023_n25_β:
 jmp xchain00023_n35_α
 xchain00023_n26_α:
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
  .Lrkfn246: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn246]
 lea rsi, [rbp + 3200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 cmp eax, 99
 je xchain00023_n35_α
 jmp xchain00023_n20_as
 xchain00023_n26_β:
 jmp xchain00023_n35_α
# IR_SCAN_MATCH
 xchain00023_n27_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00028_239
 add rsp, 16
 jmp xchain00023_n20_af
.Lx00028_239:
 mov rdi, qword ptr [rip + .Lx00028_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00028_240
 add rsp, 16
 jmp xchain00023_n20_af
.Lx00028_240:
 mov qword ptr [rbp + 3120], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 3128], rax
 jmp xchain00023_n36_α
.Lx00028_0:
 .quad .Lx00028_0_s
.Lx00028_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain00023_n28_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00029_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00023_n37_α
.Lx00029_0:
 .quad 1
# IR_VAR
 xchain00023_n29_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2552], rax
 jmp xchain00023_n38_α
 xchain00023_n29_β:
 jmp xchain00023_n23_af
# IR_DISJUNCTION_NARY
 xchain00023_n30_α:
 mov qword ptr [rbp + 704], 0
 mov qword ptr [rbp + 712], 0
 mov dword ptr [rbp + 720], 0
 jmp xchain00023_n39_α
xchain00023_n30_as:
 mov eax, dword ptr [rbp + 720]
 cmp eax, 0
 jne .Lx00030_0
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 712], rax
 jmp xchain00023_n32_α
.Lx00030_0:
 cmp eax, 1
 jne .Lx00030_1
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 712], rax
 jmp xchain00023_n32_α
.Lx00030_1:
 jmp xchain00023_n32_α
 xchain00023_n30_β:
 mov eax, dword ptr [rbp + 720]
 cmp eax, 0
 je xchain00023_n28_α
 jmp xchain00023_n28_α
xchain00023_n30_af:
 add dword ptr [rbp + 720], 1
 mov eax, dword ptr [rbp + 720]
 cmp eax, 1
 je xchain00023_n40_α
 jmp xchain00023_n28_α
# IR_LIT_STRING
 xchain00023_n31_α:
 mov qword ptr [rbp + 2704], 1
 mov rax, qword ptr [rip + .Lx00031_0]
 mov qword ptr [rbp + 2712], rax
 jmp xchain00023_n42_α
 xchain00023_n31_β:
 jmp xchain00023_n28_α
.Lx00031_0:
 .quad .Lx00031_0_s
.Lx00031_0_s:
 .string "Unrecognized option: -"
# IR_ASSIGN_VAR
 xchain00023_n32_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00023_n28_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00023_n23_as
 xchain00023_n32_β:
 jmp xchain00023_n28_α
 xchain00023_n33_α:
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
  .Lrkfn257: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn257]
 lea rsi, [rbp + 2656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 cmp eax, 99
 je xchain00023_n28_α
 jmp xchain00023_n23_as
 xchain00023_n33_β:
 jmp xchain00023_n28_α
# IR_VAR
 xchain00023_n34_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3280], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3288], rax
 jmp xchain00023_n26_α
# IR_GEN_SCAN
 xchain00023_n35_α:
 lea rdi, [rbp + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 368]
 mov r14, qword ptr [rbp + 376]
 mov r15, qword ptr [rbp + 384]
 jmp xchain00023_n9_α
 xchain00023_n35_β:
 jmp xchain00023_n9_α
# IR_SCAN_TAB
 xchain00023_n36_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 3128]
 cmp rax, 1
 jge .Lx00032_0
 add rax, r15
 add rax, 1
.Lx00032_0:
 cmp rax, 1
 jge .Lx00032_239
 add rsp, 16
 jmp xchain00023_n20_af
.Lx00032_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00032_240
 add rsp, 16
 jmp xchain00023_n20_af
.Lx00032_240:
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
 jmp xchain00023_n43_α
 xchain00023_n36_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00023_n20_af
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00023_n37_α:
 sub rsp, 16
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00033_239
 add rsp, 16
 jmp xchain00023_n35_α
.Lx00033_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00033_240
 add rsp, 16
 jmp xchain00023_n35_α
.Lx00033_240:
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
 jmp xchain00023_n44_α
 xchain00023_n37_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00023_n35_α
# IR_VAR
 xchain00023_n38_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 2584], rax
 jmp xchain00023_n45_α
# IR_LIT_CHARSET
 xchain00023_n39_α:
 mov qword ptr [rbp + 2208], 1
 mov dword ptr [rbp + 2212], -1
 mov rax, qword ptr [rip + .Lx00034_0]
 mov qword ptr [rbp + 2216], rax
 jmp xchain00023_n46_α
 xchain00023_n39_β:
 jmp xchain00023_n30_af
.Lx00034_0:
 .quad .Lx00034_0_s
.Lx00034_0_s:
 .string "+.:"
# IR_LIT_INTEGER
 xchain00023_n40_α:
 mov qword ptr [rbp + 2368], 6
 mov rax, qword ptr [rip + .Lx00035_0]
 mov qword ptr [rbp + 2376], rax
 jmp xchain00023_n30_as
 xchain00023_n40_β:
 jmp xchain00023_n28_α
.Lx00035_0:
 .quad 1
 xchain00023_n41_α:
 jmp xchain00023_n30_as
xchain00023_n41_β:
 jmp xchain00023_n28_α
# IR_VAR
 xchain00023_n42_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2744], rax
 jmp xchain00023_n33_α
# IR_LIT_INTEGER
 xchain00023_n43_α:
 mov qword ptr [rbp + 3056], 6
 mov rax, qword ptr [rip + .Lx00036_0]
 mov qword ptr [rbp + 3064], rax
 jmp xchain00023_n47_α
.Lx00036_0:
 .quad 0
 xchain00023_n44_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00023_n23_α
 xchain00023_n45_α:
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
 mov rdi, r14
 call rt_scan_sync_out@PLT
.Lx00037_60:
  .section .rodata
  .Lbynamegenfn190: .string "find"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn190]
 lea rsi, [rbp + 2496]
 mov edx, 2
 lea rcx, [rbp + 2528]
 call rt_call_arr_gen@PLT
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 cmp eax, 99
 je xchain00023_n23_af
 jmp xchain00023_n48_α
 xchain00023_n45_β:
 jmp .Lx00037_60
# IR_VAR_REF
 xchain00023_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain00023_n49_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00023_n47_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00038_0
 add rax, r15
 add rax, 1
.Lx00038_0:
 cmp rax, 1
 jl xchain00023_n50_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00023_n50_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00023_n50_α
 mov qword ptr [rbp + 3024], 6
 mov qword ptr [rbp + 3032], rax
 jmp xchain00023_n36_α
# IR_LIT_INTEGER
 xchain00023_n48_α:
 mov qword ptr [rbp + 2608], 6
 mov rax, qword ptr [rip + .Lx00039_0]
 mov qword ptr [rbp + 2616], rax
 jmp xchain00023_n51_α
.Lx00039_0:
 .quad 1
# IR_VAR
 xchain00023_n49_α:
 mov rax, qword ptr [rbp + 3712]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 2296], rax
 jmp xchain00023_n52_α
# KEYWORD_null
 xchain00023_n50_α:
 mov qword ptr [rbp + 2992], 0
 mov qword ptr [rbp + 3000], 0
 jmp xchain00023_n53_α
 xchain00023_n50_β:
 jmp xchain00023_n36_α
# IR_COERCE_NUMERIC
 xchain00023_n51_α:
 mov eax, dword ptr [rbp + 2480]
 cmp eax, 7
 je .Lx00040_1
 cmp eax, 6
 jne .Lx00040_0
 mov eax, dword ptr [rbp + 2608]
 cmp eax, 6
 jne .Lx00040_0
.Lx00040_1:
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2456], rax
 jmp xchain00023_n54_α
.Lx00040_0:
 lea rdi, [rbp + 2480]
 lea rsi, [rbp + 2608]
 lea rdx, [rbp + 2448]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00023_n54_α
# IR_SUBSCRIPT x[i] variable
 xchain00023_n52_α:
 mov rdi, qword ptr [rbp + 2256]
 mov rsi, qword ptr [rbp + 2264]
 mov rdx, qword ptr [rbp + 2288]
 mov rcx, qword ptr [rbp + 2296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00023_n30_af
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain00023_n55_α
 xchain00023_n53_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 2984], rax
 jmp xchain00023_n56_α
xchain00023_n53_β:
 jmp xchain00023_n20_af
 xchain00023_n54_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 100
 je .Lx00041_0
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 6
 jne .Lx00041_2
.Lx00041_1:
 mov rax, qword ptr [rbp + 2456]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 2416], 6
 mov qword ptr [rbp + 2424], rax
 jmp xchain00023_n57_α
.Lx00041_0:
 mov rdi, qword ptr [rbp + 2448]
 mov rsi, qword ptr [rbp + 2456]
 mov rdx, qword ptr [rbp + 2608]
 mov rcx, qword ptr [rbp + 2616]
 mov r8d, 0
 lea r9, [rbp + 2416]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00023_n57_α
.Lx00041_2:
 mov rdi, qword ptr [rbp + 2448]
 mov rsi, qword ptr [rbp + 2456]
 mov rdx, qword ptr [rbp + 2608]
 mov rcx, qword ptr [rbp + 2616]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00023_n23_af
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain00023_n57_α
 xchain00023_n54_β:
 jmp xchain00023_n23_af
# IR_DEREF variable -> value
 xchain00023_n55_α:
 mov rdi, qword ptr [rbp + 2320]
 mov rsi, qword ptr [rbp + 2328]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00023_n30_af
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain00023_n58_α
# IR_DISJUNCTION_NARY
 xchain00023_n56_α:
 mov qword ptr [rbp + 2768], 0
 mov qword ptr [rbp + 2776], 0
 mov dword ptr [rbp + 2784], 0
 jmp xchain00023_n59_α
xchain00023_n56_as:
 mov eax, dword ptr [rbp + 2784]
 cmp eax, 0
 jne .Lx00042_0
 jmp xchain00023_n28_α
.Lx00042_0:
 jmp xchain00023_n28_α
 xchain00023_n56_β:
 mov eax, dword ptr [rbp + 2784]
 jmp xchain00023_n28_α
xchain00023_n56_af:
 add dword ptr [rbp + 2784], 1
 mov eax, dword ptr [rbp + 2784]
 jmp xchain00023_n28_α
 xchain00023_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2416]
 mov rdx, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain00023_n60_α
 xchain00023_n58_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2352]
 mov rdx, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain00023_n61_α
# IR_LIT_STRING
 xchain00023_n59_α:
 mov qword ptr [rbp + 2944], 1
 mov rax, qword ptr [rip + .Lx00043_0]
 mov qword ptr [rbp + 2952], rax
 jmp xchain00023_n62_α
 xchain00023_n59_β:
 jmp xchain00023_n56_af
.Lx00043_0:
 .quad .Lx00043_0_s
.Lx00043_0_s:
 .string "-"
# IR_VAR_REF
 xchain00023_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3600]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00023_n63_α
 xchain00023_n61_α:
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
 mov rdi, r14
 call rt_scan_sync_out@PLT
  .section .rodata
  .Lbynamefn206: .string "any"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn206]
 lea rsi, [rbp + 2160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 cmp eax, 99
 je xchain00023_n30_af
 jmp xchain00023_n64_α
 xchain00023_n61_β:
 jmp xchain00023_n30_af
# IR_SCAN_MATCH
 xchain00023_n62_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00044_239
 add rsp, 16
 jmp xchain00023_n56_af
.Lx00044_239:
 mov rdi, qword ptr [rip + .Lx00044_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00044_240
 add rsp, 16
 jmp xchain00023_n56_af
.Lx00044_240:
 mov qword ptr [rbp + 2912], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 2920], rax
 jmp xchain00023_n65_α
.Lx00044_0:
 .quad .Lx00044_0_s
.Lx00044_0_s:
 .string "-"
# IR_VAR
 xchain00023_n63_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 632], rax
 jmp xchain00023_n66_α
# IR_DISJUNCTION_NARY
 xchain00023_n64_α:
 mov qword ptr [rbp + 1776], 0
 mov qword ptr [rbp + 1784], 0
 mov dword ptr [rbp + 1792], 0
 jmp xchain00023_n68_α
xchain00023_n64_as:
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 0
 jne .Lx00045_0
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00023_n67_α
.Lx00045_0:
 cmp eax, 1
 jne .Lx00045_1
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00023_n67_α
.Lx00045_1:
 cmp eax, 2
 jne .Lx00045_2
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00023_n67_α
.Lx00045_2:
 jmp xchain00023_n67_α
 xchain00023_n64_β:
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 0
 je xchain00023_n64_af
 cmp eax, 1
 je xchain00023_n64_af
 jmp xchain00023_n64_af
xchain00023_n64_af:
 add dword ptr [rbp + 1792], 1
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 1
 je xchain00023_n69_α
 cmp eax, 2
 je xchain00023_n70_α
 jmp xchain00023_n75_α
# IR_SCAN_TAB
 xchain00023_n65_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 2920]
 cmp rax, 1
 jge .Lx00046_0
 add rax, r15
 add rax, 1
.Lx00046_0:
 cmp rax, 1
 jge .Lx00046_239
 add rsp, 16
 jmp xchain00023_n56_af
.Lx00046_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00046_240
 add rsp, 16
 jmp xchain00023_n56_af
.Lx00046_240:
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
 jmp xchain00023_n74_α
 xchain00023_n65_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00023_n56_af
# IR_SUBSCRIPT x[i] variable
 xchain00023_n66_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00023_n28_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00023_n30_α
 xchain00023_n67_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1776]
 mov rdx, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain00023_n75_α
# IR_LIT_STRING
 xchain00023_n68_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx00047_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain00023_n76_α
 xchain00023_n68_β:
 jmp xchain00023_n64_af
.Lx00047_0:
 .quad .Lx00047_0_s
.Lx00047_0_s:
 .string ""
# IR_VAR
 xchain00023_n69_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1992], rax
 jmp xchain00023_n72_α
 xchain00023_n69_β:
 jmp xchain00023_n64_af
# IR_LIT_STRING
 xchain00023_n70_α:
 mov qword ptr [rbp + 2080], 1
 mov rax, qword ptr [rip + .Lx00048_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain00023_n77_α
 xchain00023_n70_β:
 jmp xchain00023_n64_af
.Lx00048_0:
 .quad .Lx00048_0_s
.Lx00048_0_s:
 .string "No parameter following -"
 xchain00023_n71_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 1840]
 mov rsi, qword ptr [rbp + 1848]
 mov rdx, qword ptr [rbp + 1872]
 mov rcx, qword ptr [rbp + 1880]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00023_n64_af
 mov rdi, qword ptr [rbp + 1872]
 mov rsi, qword ptr [rbp + 1880]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain00023_n64_as
 xchain00023_n71_β:
 jmp xchain00023_n64_af
 xchain00023_n72_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1960], rax
  .section .rodata
  .Lrkfn314: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn314]
 lea rsi, [rbp + 1952]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je xchain00023_n64_af
 jmp xchain00023_n64_as
 xchain00023_n72_β:
 jmp xchain00023_n64_af
 xchain00023_n73_α:
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
  .Lrkfn316: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn316]
 lea rsi, [rbp + 2032]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain00023_n64_af
 jmp xchain00023_n64_as
 xchain00023_n73_β:
 jmp xchain00023_n64_af
# IR_LIT_INTEGER
 xchain00023_n74_α:
 mov qword ptr [rbp + 2848], 6
 mov rax, qword ptr [rip + .Lx00049_0]
 mov qword ptr [rbp + 2856], rax
 jmp xchain00023_n78_α
.Lx00049_0:
 .quad 0
# IR_VAR
 xchain00023_n75_α:
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 792], rax
 jmp xchain00023_n79_α
# IR_LIT_INTEGER
 xchain00023_n76_α:
 mov qword ptr [rbp + 1904], 6
 mov rax, qword ptr [rip + .Lx00050_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain00023_n80_α
.Lx00050_0:
 .quad 0
# IR_VAR
 xchain00023_n77_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2120], rax
 jmp xchain00023_n73_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00023_n78_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00051_0
 add rax, r15
 add rax, 1
.Lx00051_0:
 cmp rax, 1
 jl xchain00023_n65_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00023_n65_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00023_n65_α
 mov qword ptr [rbp + 2816], 6
 mov qword ptr [rbp + 2824], rax
 jmp xchain00023_n81_α
# IR_LIT_STRING
 xchain00023_n79_α:
 mov qword ptr [rbp + 1616], 1
 mov rax, qword ptr [rip + .Lx00052_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00023_n82_α
.Lx00052_0:
 .quad .Lx00052_0_s
.Lx00052_0_s:
 .string ":"
# IR_SCAN_TAB
 xchain00023_n80_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00053_0
 add rax, r15
 add rax, 1
.Lx00053_0:
 cmp rax, 1
 jge .Lx00053_239
 add rsp, 16
 jmp xchain00023_n64_af
.Lx00053_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00053_240
 add rsp, 16
 jmp xchain00023_n64_af
.Lx00053_240:
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
 jmp xchain00023_n71_α
 xchain00023_n80_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00023_n64_af
 xchain00023_n81_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2808], rax
 jmp xchain00023_n11_α
xchain00023_n81_β:
 jmp xchain00023_n56_af
 xchain00023_n82_α:
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
  .Lrkfn330: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn330]
 lea rsi, [rbp + 1712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je xchain00023_n84_α
 jmp xchain00023_n83_α
 xchain00023_n82_β:
 jmp xchain00023_n84_α
# IR_VAR
 xchain00023_n83_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1656], rax
 jmp xchain00023_n85_α
# IR_LIT_STRING
 xchain00023_n84_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx00054_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain00023_n86_α
.Lx00054_0:
 .quad .Lx00054_0_s
.Lx00054_0_s:
 .string "+"
 xchain00023_n85_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1648]
 mov rdx, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00023_n87_α
 xchain00023_n86_α:
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
  .Lrkfn336: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn336]
 lea rsi, [rbp + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain00023_n89_α
 jmp xchain00023_n88_α
 xchain00023_n86_β:
 jmp xchain00023_n89_α
# IR_VAR
 xchain00023_n87_α:
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 760], rax
 jmp xchain00023_n41_α
# IR_DISJUNCTION_NARY
 xchain00023_n88_α:
 mov qword ptr [rbp + 1248], 0
 mov qword ptr [rbp + 1256], 0
 mov dword ptr [rbp + 1264], 0
 jmp xchain00023_n91_α
xchain00023_n88_as:
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 0
 jne .Lx00055_0
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00023_n90_α
.Lx00055_0:
 cmp eax, 1
 jne .Lx00055_1
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00023_n90_α
.Lx00055_1:
 jmp xchain00023_n90_α
 xchain00023_n88_β:
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 0
 je xchain00023_n88_af
 jmp xchain00023_n88_af
xchain00023_n88_af:
 add dword ptr [rbp + 1264], 1
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 1
 je xchain00023_n92_α
 jmp xchain00023_n28_α
# IR_LIT_STRING
 xchain00023_n89_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx00056_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00023_n95_α
.Lx00056_0:
 .quad .Lx00056_0_s
.Lx00056_0_s:
 .string "."
 xchain00023_n90_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain00023_n87_α
# IR_VAR
 xchain00023_n91_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1336], rax
 jmp xchain00023_n93_α
 xchain00023_n91_β:
 jmp xchain00023_n88_af
# IR_LIT_STRING
 xchain00023_n92_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx00057_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain00023_n96_α
 xchain00023_n92_β:
 jmp xchain00023_n88_af
.Lx00057_0:
 .quad .Lx00057_0_s
.Lx00057_0_s:
 .string "-"
 xchain00023_n93_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1296]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1304], rax
  .section .rodata
  .Lrkfn347: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn347]
 lea rsi, [rbp + 1296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain00023_n88_af
 jmp xchain00023_n88_as
 xchain00023_n93_β:
 jmp xchain00023_n88_af
 xchain00023_n94_α:
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
  .Lrkfn349: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn349]
 lea rsi, [rbp + 1376]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain00023_n88_af
 jmp xchain00023_n88_as
 xchain00023_n94_β:
 jmp xchain00023_n88_af
 xchain00023_n95_α:
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
  .Lrkfn351: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn351]
 lea rsi, [rbp + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain00023_n28_α
 jmp xchain00023_n97_α
 xchain00023_n95_β:
 jmp xchain00023_n28_α
# IR_VAR
 xchain00023_n96_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1480], rax
 jmp xchain00023_n98_α
# IR_DISJUNCTION_NARY
 xchain00023_n97_α:
 mov qword ptr [rbp + 848], 0
 mov qword ptr [rbp + 856], 0
 mov dword ptr [rbp + 864], 0
 jmp xchain00023_n00058_α
xchain00023_n97_as:
 mov eax, dword ptr [rbp + 864]
 cmp eax, 0
 jne .Lx00059_0
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 856], rax
 jmp xchain00023_n99_α
.Lx00059_0:
 cmp eax, 1
 jne .Lx00059_1
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 856], rax
 jmp xchain00023_n99_α
.Lx00059_1:
 jmp xchain00023_n99_α
 xchain00023_n97_β:
 mov eax, dword ptr [rbp + 864]
 cmp eax, 0
 je xchain00023_n97_af
 jmp xchain00023_n97_af
xchain00023_n97_af:
 add dword ptr [rbp + 864], 1
 mov eax, dword ptr [rbp + 864]
 cmp eax, 1
 je xchain00023_n00060_α
 jmp xchain00023_n28_α
# IR_LIT_STRING
 xchain00023_n98_α:
 mov qword ptr [rbp + 1504], 1
 mov rax, qword ptr [rip + .Lx00061_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain00023_n94_α
.Lx00061_0:
 .quad .Lx00061_0_s
.Lx00061_0_s:
 .string " needs numeric parameter"
 xchain00023_n99_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00023_n87_α
# IR_VAR
 xchain00023_n00058_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 936], rax
 jmp xchain00023_n00001_α
 xchain00023_n00058_β:
 jmp xchain00023_n97_af
# IR_LIT_STRING
 xchain00023_n00060_α:
 mov qword ptr [rbp + 1040], 1
 mov rax, qword ptr [rip + .Lx00062_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00023_n00063_α
 xchain00023_n00060_β:
 jmp xchain00023_n97_af
.Lx00062_0:
 .quad .Lx00062_0_s
.Lx00062_0_s:
 .string "-"
 xchain00023_n00001_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+896]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 904], rax
  .section .rodata
  .Lrkfn362: .string "real"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn362]
 lea rsi, [rbp + 896]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 cmp eax, 99
 je xchain00023_n97_af
 jmp xchain00023_n97_as
 xchain00023_n00001_β:
 jmp xchain00023_n97_af
 xchain00023_n00064_α:
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
  .Lrkfn364: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn364]
 lea rsi, [rbp + 976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain00023_n97_af
 jmp xchain00023_n97_as
 xchain00023_n00064_β:
 jmp xchain00023_n97_af
# IR_VAR
 xchain00023_n00063_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00023_n00065_α
# IR_LIT_STRING
 xchain00023_n00065_α:
 mov qword ptr [rbp + 1104], 1
 mov rax, qword ptr [rip + .Lx00066_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00023_n00064_α
.Lx00066_0:
 .quad .Lx00066_0_s
.Lx00066_0_s:
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
proc_options_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 3776
 mov qword ptr [rsp + 3768], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 3728], r11
 lea rax, [rip + .Lx00067_2]
 mov qword ptr [rbp + 3736], rax
 lea rax, [rip + .Lx00067_3]
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3592], rbp
 mov qword ptr [rbp + 16], rsi
 mov qword ptr [rbp + 24], rdx
 mov rdi, rbp
 mov esi, 3584
 mov edx, 3728
 mov ecx, 2
 mov r8d, 2
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_options_α_body
.Lx00067_2:
 mov rdx, qword ptr [rsp + -3776]
 mov rcx, rsp
 add rcx, -3760
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00067_3:
 mov rdi, qword ptr [rsp + -3776]
 mov rsi, rsp
 add rsi, -3760
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 552], rsp
  mov rdi, rsp
  mov esi, 544
  mov edx, 592
  call rt_jmp_frame_lexprep2@PLT
proc_Init___α_body:
# IR_VAR
 xchain00068_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 520], rax
 jmp xchain00068_n1_α
# IR_ASSIGN gva
 xchain00068_n1_α:
 mov rax, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 mov qword ptr [1879052432], rax
 mov qword ptr [1879052440], rdx
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00068_n2_α
 xchain00068_n2_α:
 call proc_Signature___dcα
 jmp .Lx00069_2
.Lx00069_2:
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00068_n3_α
 jmp xchain00068_n3_α
 xchain00068_n2_β:
 jmp xchain00068_n3_α
.Lx00069_0:
 .quad .Lx00069_0_s
.Lx00069_0_s:
 .string "Signature__"
 xchain00068_n3_α:
 call proc_Regions___dcα
 jmp .Lx00070_2
.Lx00070_2:
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00068_n4_α
 jmp xchain00068_n4_α
 xchain00068_n3_β:
 jmp xchain00068_n4_α
.Lx00070_0:
 .quad .Lx00070_0_s
.Lx00070_0_s:
 .string "Regions__"
 xchain00068_n4_α:
 call proc_Time___dcα
 jmp .Lx00071_2
.Lx00071_2:
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain00068_n5_α
 jmp xchain00068_n5_α
 xchain00068_n4_β:
 jmp xchain00068_n5_α
.Lx00071_0:
 .quad .Lx00071_0_s
.Lx00071_0_s:
 .string "Time__"
# IR_DISJUNCTION_NARY
 xchain00068_n5_α:
 mov qword ptr [rbp + 192], 0
 mov qword ptr [rbp + 200], 0
 mov dword ptr [rbp + 208], 0
 jmp xchain00068_n7_α
xchain00068_n5_as:
 mov eax, dword ptr [rbp + 208]
 cmp eax, 0
 jne .Lx00072_0
 jmp xchain00068_n6_α
.Lx00072_0:
 jmp xchain00068_n6_α
 xchain00068_n5_β:
 mov eax, dword ptr [rbp + 208]
 jmp xchain00068_n6_α
xchain00068_n5_af:
 add dword ptr [rbp + 208], 1
 mov eax, dword ptr [rbp + 208]
 jmp xchain00068_n6_α
# IR_VAR
 xchain00068_n6_α:
 mov rdi, qword ptr [rip + .Lx00073_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00068_n10_α
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00068_n9_α
.Lx00073_0:
 .quad .Lx00073_0_s
.Lx00073_0_s:
 .string "write"
# IR_LIT_STRING
 xchain00068_n7_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx00074_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00068_n11_α
 xchain00068_n7_β:
 jmp xchain00068_n5_af
.Lx00074_0:
 .quad .Lx00074_0_s
.Lx00074_0_s:
 .string "OUTPUT"
 xchain00068_n8_α:
 jmp xchain00068_n5_as
xchain00068_n8_β:
 jmp xchain00068_n6_α
# IR_ASSIGN gva
 xchain00068_n9_α:
 mov rax, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 mov qword ptr [1879052400], rax
 mov qword ptr [1879052408], rdx
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00068_n10_α
# IR_VAR
 xchain00068_n10_α:
 mov rdi, qword ptr [rip + .Lx00075_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00068_n13_α
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain00068_n12_α
.Lx00075_0:
 .quad .Lx00075_0_s
.Lx00075_0_s:
 .string "writes"
 xchain00068_n11_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn387: .string "getenv"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn387]
 lea rsi, [rbp + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain00068_n5_af
 jmp xchain00068_n14_α
 xchain00068_n11_β:
 jmp xchain00068_n5_af
# IR_ASSIGN gva
 xchain00068_n12_α:
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [1879052416], rax
 mov qword ptr [1879052424], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00068_n13_α
# IR_LIT_INTEGER
 xchain00068_n13_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00076_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00068_n15_α
.Lx00076_0:
 .quad 1
# IR_LIT_STRING
 xchain00068_n14_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00077_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00068_n16_α
.Lx00077_0:
 .quad .Lx00077_0_s
.Lx00077_0_s:
 .string "*** Benchmarking with output ***"
# IR_ASSIGN global
 xchain00068_n15_α:
 mov rsi, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov rdi, qword ptr [rip + .Lx00078_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 jmp xchain00068_n17_α
.Lx00078_0:
 .quad .Lx00078_0_s
.Lx00078_0_s:
 .string "writes"
 xchain00068_n16_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn393: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn393]
 lea rsi, [rbp + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain00068_n18_α
 jmp xchain00068_n18_α
 xchain00068_n16_β:
 jmp xchain00068_n18_α
# IR_ASSIGN global
 xchain00068_n17_α:
 mov rsi, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov rdi, qword ptr [rip + .Lx00079_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00068_n19_α
.Lx00079_0:
 .quad .Lx00079_0_s
.Lx00079_0_s:
 .string "write"
# IR_RETURN
 xchain00068_n18_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Init___γ
# IR_RETURN
 xchain00068_n19_α:
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
proc_Init___dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 640
 mov qword ptr [rsp + 632], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 592], r11
 lea rax, [rip + .Lx00080_2]
 mov qword ptr [rbp + 600], rax
 lea rax, [rip + .Lx00080_3]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 552], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 544
 mov edx, 592
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_Init___α_body
.Lx00080_2:
 mov rdx, qword ptr [rsp + -640]
 mov rcx, rsp
 add rcx, -624
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00080_3:
 mov rdi, qword ptr [rsp + -640]
 mov rsi, rsp
 add rsi, -624
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 552], rsp
  mov rdi, rsp
  mov esi, 544
  mov edx, 592
  call rt_jmp_frame_lexprep2@PLT
proc_Term___α_body:
# IR_DISJUNCTION_NARY
 xchain00081_n0_α:
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 mov dword ptr [rbp + 304], 0
 jmp xchain00081_n2_α
xchain00081_n0_as:
 mov eax, dword ptr [rbp + 304]
 cmp eax, 0
 jne .Lx00082_0
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 296], rax
 jmp xchain00081_n1_α
.Lx00082_0:
 jmp xchain00081_n1_α
 xchain00081_n0_β:
 mov eax, dword ptr [rbp + 304]
 jmp xchain00081_n1_α
xchain00081_n0_af:
 add dword ptr [rbp + 304], 1
 mov eax, dword ptr [rbp + 304]
 jmp xchain00081_n1_α
# IR_VAR
 xchain00081_n1_α:
 mov rax, qword ptr [1879052432]
 mov rdx, qword ptr [1879052440]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00081_n4_α
# IR_LIT_STRING
 xchain00081_n2_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx00083_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00081_n6_α
 xchain00081_n2_β:
 jmp xchain00081_n9_α
.Lx00083_0:
 .quad .Lx00083_0_s
.Lx00083_0_s:
 .string "OUTPUT"
 xchain00081_n3_α:
 jmp xchain00081_n0_as
xchain00081_n3_β:
 jmp xchain00081_n1_α
# IR_LIT_STRING
 xchain00081_n4_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00084_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00081_n7_α
.Lx00084_0:
 .quad .Lx00084_0_s
.Lx00084_0_s:
 .string " elapsed time = "
 xchain00081_n5_α:
 call proc_Regions___dcα
 jmp .Lx00085_2
.Lx00085_2:
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00081_n8_α
 jmp xchain00081_n8_α
 xchain00081_n5_β:
 jmp xchain00081_n8_α
.Lx00085_0:
 .quad .Lx00085_0_s
.Lx00085_0_s:
 .string "Regions__"
 xchain00081_n6_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
  .section .rodata
  .Lrkfn408: .string "getenv"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn408]
 lea rsi, [rbp + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00081_n9_α
 jmp xchain00081_n0_as
 xchain00081_n6_β:
 jmp xchain00081_n9_α
 xchain00081_n7_α:
 call proc_Time___dcα
 jmp .Lx00086_2
.Lx00086_2:
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain00081_n5_α
 jmp xchain00081_n10_α
 xchain00081_n7_β:
 jmp xchain00081_n5_α
.Lx00086_0:
 .quad .Lx00086_0_s
.Lx00086_0_s:
 .string "Time__"
 xchain00081_n8_α:
 call proc_Storage___dcα
 jmp .Lx00087_2
.Lx00087_2:
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je xchain00081_n11_α
 jmp xchain00081_n11_α
 xchain00081_n8_β:
 jmp xchain00081_n11_α
.Lx00087_0:
 .quad .Lx00087_0_s
.Lx00087_0_s:
 .string "Storage__"
# KEYWORD_null
 xchain00081_n9_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 jmp xchain00081_n12_α
 xchain00081_n9_β:
 jmp xchain00081_n0_af
 xchain00081_n10_α:
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
  .Lrkfn415: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn415]
 lea rsi, [rbp + 128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain00081_n5_α
 jmp xchain00081_n5_α
 xchain00081_n10_β:
 jmp xchain00081_n5_α
 xchain00081_n11_α:
 call proc_Collections___dcα
 jmp .Lx00088_2
.Lx00088_2:
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 cmp eax, 99
 je xchain00081_n13_α
 jmp xchain00081_n13_α
 xchain00081_n11_β:
 jmp xchain00081_n13_α
.Lx00088_0:
 .quad .Lx00088_0_s
.Lx00088_0_s:
 .string "Collections__"
# IR_VAR
 xchain00081_n12_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00081_n14_α
# IR_RETURN
 xchain00081_n13_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Term___γ
# IR_ASSIGN global
 xchain00081_n14_α:
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 mov rdi, qword ptr [rip + .Lx00089_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain00081_n15_α
.Lx00089_0:
 .quad .Lx00089_0_s
.Lx00089_0_s:
 .string "write"
# IR_VAR
 xchain00081_n15_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00081_n16_α
# IR_ASSIGN global
 xchain00081_n16_α:
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov rdi, qword ptr [rip + .Lx00090_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00081_n3_α
.Lx00090_0:
 .quad .Lx00090_0_s
.Lx00090_0_s:
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
proc_Term___dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 640
 mov qword ptr [rsp + 632], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 592], r11
 lea rax, [rip + .Lx00091_2]
 mov qword ptr [rbp + 600], rax
 lea rax, [rip + .Lx00091_3]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 552], rbp
 mov rdi, rbp
 mov esi, 544
 mov edx, 592
 mov ecx, 0
 mov r8d, 0
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_Term___α_body
.Lx00091_2:
 mov rdx, qword ptr [rsp + -640]
 mov rcx, rsp
 add rcx, -624
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00091_3:
 mov rdi, qword ptr [rsp + -640]
 mov rsi, rsp
 add rsi, -624
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 1208], rsp
  mov rdi, rsp
  mov esi, 1200
  mov edx, 1248
  call rt_jmp_frame_lexprep2@PLT
proc_Collections___α_body:
# IR_DISJUNCTION_NARY
 xchain00092_n0_α:
 mov qword ptr [rbp + 832], 0
 mov qword ptr [rbp + 840], 0
 mov dword ptr [rbp + 848], 0
 jmp xchain00092_n2_α
xchain00092_n0_as:
 mov eax, dword ptr [rbp + 848]
 cmp eax, 0
 jne .Lx00093_0
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
 jmp xchain00092_n1_α
.Lx00093_0:
 jmp xchain00092_n1_α
 xchain00092_n0_β:
 mov eax, dword ptr [rbp + 848]
 jmp xchain00092_n1_α
xchain00092_n0_af:
 add dword ptr [rbp + 848], 1
 mov eax, dword ptr [rbp + 848]
 jmp xchain00092_n1_α
# IR_MAKE_LIST
 xchain00092_n1_α:
 lea rdi, [rbp + 832]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00092_n4_α
# IR_VAR_REF
 xchain00092_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052592
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain00092_n5_α
 xchain00092_n2_β:
 jmp xchain00092_n0_af
# IR_ASSIGN gva
 xchain00092_n3_α:
 mov rax, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 mov qword ptr [1879052576], rax
 mov qword ptr [1879052584], rdx
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00092_n0_as
 xchain00092_n3_β:
 jmp xchain00092_n1_α
 xchain00092_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00092_n6_α
# IR_NULLTEST_VAR
 xchain00092_n5_α:
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 99
 je xchain00092_n0_af
 mov rdi, qword ptr [rbp + 1088]
 mov rsi, qword ptr [rbp + 1096]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00092_n0_af
 cmp eax, 0
 jne xchain00092_n0_af
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00092_n7_α
# IR_VAR
 xchain00092_n6_α:
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 744], rax
 jmp xchain00092_n8_α
# IR_LIT_INTEGER
 xchain00092_n7_α:
 mov qword ptr [rbp + 1168], 6
 mov rax, qword ptr [rip + .Lx00094_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain00092_n10_α
.Lx00094_0:
 .quad 1
# KEYWORD_gen
 xchain00092_n8_α:
 mov qword ptr [rbp + 784], 0
.Lx00095_1:
 mov rdi, qword ptr [rip + .Lx00095_0]
 mov rsi, qword ptr [rbp + 784]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00092_n9_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 mov rax, qword ptr [rbp + 784]
 add rax, 1
 mov qword ptr [rbp + 784], rax
 jmp xchain00092_n11_α
 xchain00092_n8_β:
 jmp .Lx00095_1
.Lx00095_0:
 .quad .Lx00095_0_s
.Lx00095_0_s:
 .string "&collections"
# IR_LIT_STRING
 xchain00092_n9_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00096_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00092_n12_α
.Lx00096_0:
 .quad .Lx00096_0_s
.Lx00096_0_s:
 .string "collections"
# IR_ASSIGN_VAR
 xchain00092_n10_α:
 mov rdi, qword ptr [rbp + 1120]
 mov rsi, qword ptr [rbp + 1128]
 mov rdx, qword ptr [rbp + 1168]
 mov rcx, qword ptr [rbp + 1176]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00092_n0_af
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain00092_n13_α
 xchain00092_n11_α:
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
  .Lrkfn441: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn441]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain00092_n8_β
 jmp xchain00092_n8_β
 xchain00092_n11_β:
 jmp xchain00092_n8_β
 xchain00092_n12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn443: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn443]
 lea rsi, [rbp + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00092_n14_α
 jmp xchain00092_n14_α
 xchain00092_n12_β:
 jmp xchain00092_n14_α
# IR_LIT_STRING
 xchain00092_n13_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx00097_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00092_n15_α
.Lx00097_0:
 .quad .Lx00097_0_s
.Lx00097_0_s:
 .string "total"
# IR_LIT_INTEGER
 xchain00092_n14_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00098_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00092_n16_α
.Lx00098_0:
 .quad 1
# IR_LIT_STRING
 xchain00092_n15_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx00099_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00092_n17_α
.Lx00099_0:
 .quad .Lx00099_0_s
.Lx00099_0_s:
 .string "static"
# IR_VAR
 xchain00092_n16_α:
 mov rax, qword ptr [1879052576]
 mov rdx, qword ptr [1879052584]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00092_n18_α
# IR_LIT_STRING
 xchain00092_n17_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx00100_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00092_n20_α
.Lx00100_0:
 .quad .Lx00100_0_s
.Lx00100_0_s:
 .string "string"
# IR_UNOP
 xchain00092_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00092_n21_α
# IR_RETURN
 xchain00092_n19_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Collections___γ
# IR_LIT_STRING
 xchain00092_n20_α:
 mov qword ptr [rbp + 1056], 1
 mov rax, qword ptr [rip + .Lx00101_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain00092_n22_α
.Lx00101_0:
 .quad .Lx00101_0_s
.Lx00101_0_s:
 .string "block"
# IR_TO
 xchain00092_n21_α:
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
.Lx00102_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00092_n19_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00092_n23_α
 xchain00092_n21_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00102_0
# IR_MAKE_LIST
 xchain00092_n22_α:
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
 jmp xchain00092_n3_α
 xchain00092_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00092_n24_α
# IR_BOUND
 xchain00092_n24_α:
 mov qword ptr [rbp + 160], rsp
 jmp xchain00092_n25_α
# IR_VAR_REF
 xchain00092_n25_α:
 mov rax, 4294967305
 mov rdx, 1879052576
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00092_n26_α
# IR_VAR
 xchain00092_n26_α:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 312], rax
 jmp xchain00092_n27_α
# IR_SUBSCRIPT x[i] variable
 xchain00092_n27_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00092_n28_α
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00092_n29_α
# IR_UNMARK
 xchain00092_n28_α:
 mov rsp, qword ptr [rbp + 160]
 jmp xchain00092_n21_β
# IR_DEREF variable -> value
 xchain00092_n29_α:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00092_n28_α
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00092_n30_α
# IR_VAR_REF
 xchain00092_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1232]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00092_n31_α
# IR_VAR
 xchain00092_n31_α:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 488], rax
 jmp xchain00092_n32_α
# IR_SUBSCRIPT x[i] variable
 xchain00092_n32_α:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00092_n28_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00092_n33_α
# IR_DEREF variable -> value
 xchain00092_n33_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00092_n28_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00092_n34_α
# IR_LIT_INTEGER
 xchain00092_n34_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00103_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00092_n35_α
.Lx00103_0:
 .quad 8
 xchain00092_n35_α:
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
  .Lrkfn475: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn475]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00092_n28_α
 jmp xchain00092_n36_α
 xchain00092_n35_β:
 jmp xchain00092_n28_α
 xchain00092_n36_α:
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
  .Lrkfn477: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn477]
 lea rsi, [rbp + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00092_n28_α
 jmp xchain00092_n28_α
 xchain00092_n36_β:
 jmp xchain00092_n28_α
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
proc_Collections___dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 1296
 mov qword ptr [rsp + 1288], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 1248], r11
 lea rax, [rip + .Lx00104_2]
 mov qword ptr [rbp + 1256], rax
 lea rax, [rip + .Lx00104_3]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1208], rbp
 mov rdi, rbp
 mov esi, 1200
 mov edx, 1248
 mov ecx, 0
 mov r8d, 0
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_Collections___α_body
.Lx00104_2:
 mov rdx, qword ptr [rsp + -1296]
 mov rcx, rsp
 add rcx, -1280
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00104_3:
 mov rdi, qword ptr [rsp + -1296]
 mov rsi, rsp
 add rsi, -1280
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 1160], rsp
  mov rdi, rsp
  mov esi, 1152
  mov edx, 1200
  call rt_jmp_frame_lexprep2@PLT
proc_Regions___α_body:
# IR_DISJUNCTION_NARY
 xchain00105_n0_α:
 mov qword ptr [rbp + 832], 0
 mov qword ptr [rbp + 840], 0
 mov dword ptr [rbp + 848], 0
 jmp xchain00105_n2_α
xchain00105_n0_as:
 mov eax, dword ptr [rbp + 848]
 cmp eax, 0
 jne .Lx00106_0
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
 jmp xchain00105_n1_α
.Lx00106_0:
 jmp xchain00105_n1_α
 xchain00105_n0_β:
 mov eax, dword ptr [rbp + 848]
 jmp xchain00105_n1_α
xchain00105_n0_af:
 add dword ptr [rbp + 848], 1
 mov eax, dword ptr [rbp + 848]
 jmp xchain00105_n1_α
# IR_MAKE_LIST
 xchain00105_n1_α:
 lea rdi, [rbp + 832]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00105_n4_α
# IR_VAR_REF
 xchain00105_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052624
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00105_n5_α
 xchain00105_n2_β:
 jmp xchain00105_n0_af
# IR_ASSIGN gva
 xchain00105_n3_α:
 mov rax, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 mov qword ptr [1879052608], rax
 mov qword ptr [1879052616], rdx
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00105_n0_as
 xchain00105_n3_β:
 jmp xchain00105_n1_α
 xchain00105_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00105_n6_α
# IR_NULLTEST_VAR
 xchain00105_n5_α:
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 99
 je xchain00105_n0_af
 mov rdi, qword ptr [rbp + 1040]
 mov rsi, qword ptr [rbp + 1048]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00105_n0_af
 cmp eax, 0
 jne xchain00105_n0_af
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00105_n7_α
# IR_VAR
 xchain00105_n6_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 744], rax
 jmp xchain00105_n8_α
# IR_LIT_INTEGER
 xchain00105_n7_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx00107_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00105_n10_α
.Lx00107_0:
 .quad 1
# KEYWORD_gen
 xchain00105_n8_α:
 mov qword ptr [rbp + 784], 0
.Lx00108_1:
 mov rdi, qword ptr [rip + .Lx00108_0]
 mov rsi, qword ptr [rbp + 784]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00105_n9_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 mov rax, qword ptr [rbp + 784]
 add rax, 1
 mov qword ptr [rbp + 784], rax
 jmp xchain00105_n11_α
 xchain00105_n8_β:
 jmp .Lx00108_1
.Lx00108_0:
 .quad .Lx00108_0_s
.Lx00108_0_s:
 .string "&regions"
# IR_LIT_STRING
 xchain00105_n9_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00109_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00105_n12_α
.Lx00109_0:
 .quad .Lx00109_0_s
.Lx00109_0_s:
 .string "regions"
# IR_ASSIGN_VAR
 xchain00105_n10_α:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, qword ptr [rbp + 1120]
 mov rcx, qword ptr [rbp + 1128]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00105_n0_af
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00105_n13_α
 xchain00105_n11_α:
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
  .Lrkfn496: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn496]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain00105_n8_β
 jmp xchain00105_n8_β
 xchain00105_n11_β:
 jmp xchain00105_n8_β
 xchain00105_n12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn498: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn498]
 lea rsi, [rbp + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00105_n14_α
 jmp xchain00105_n14_α
 xchain00105_n12_β:
 jmp xchain00105_n14_α
# IR_LIT_STRING
 xchain00105_n13_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx00110_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00105_n15_α
.Lx00110_0:
 .quad .Lx00110_0_s
.Lx00110_0_s:
 .string "static"
# IR_LIT_INTEGER
 xchain00105_n14_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00111_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00105_n16_α
.Lx00111_0:
 .quad 1
# IR_LIT_STRING
 xchain00105_n15_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx00112_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00105_n17_α
.Lx00112_0:
 .quad .Lx00112_0_s
.Lx00112_0_s:
 .string "string"
# IR_VAR
 xchain00105_n16_α:
 mov rax, qword ptr [1879052608]
 mov rdx, qword ptr [1879052616]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00105_n18_α
# IR_LIT_STRING
 xchain00105_n17_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx00113_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00105_n20_α
.Lx00113_0:
 .quad .Lx00113_0_s
.Lx00113_0_s:
 .string "block"
# IR_UNOP
 xchain00105_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00105_n21_α
# IR_RETURN
 xchain00105_n19_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Regions___γ
# IR_MAKE_LIST
 xchain00105_n20_α:
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
 jmp xchain00105_n3_α
# IR_TO
 xchain00105_n21_α:
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
.Lx00114_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00105_n19_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00105_n22_α
 xchain00105_n21_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00114_0
 xchain00105_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00105_n23_α
# IR_BOUND
 xchain00105_n23_α:
 mov qword ptr [rbp + 160], rsp
 jmp xchain00105_n24_α
# IR_VAR_REF
 xchain00105_n24_α:
 mov rax, 4294967305
 mov rdx, 1879052608
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00105_n25_α
# IR_VAR
 xchain00105_n25_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 312], rax
 jmp xchain00105_n26_α
# IR_SUBSCRIPT x[i] variable
 xchain00105_n26_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00105_n27_α
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00105_n28_α
# IR_UNMARK
 xchain00105_n27_α:
 mov rsp, qword ptr [rbp + 160]
 jmp xchain00105_n21_β
# IR_DEREF variable -> value
 xchain00105_n28_α:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00105_n27_α
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00105_n29_α
# IR_VAR_REF
 xchain00105_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00105_n30_α
# IR_VAR
 xchain00105_n30_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 488], rax
 jmp xchain00105_n31_α
# IR_SUBSCRIPT x[i] variable
 xchain00105_n31_α:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00105_n27_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00105_n32_α
# IR_DEREF variable -> value
 xchain00105_n32_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00105_n27_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00105_n33_α
# IR_LIT_INTEGER
 xchain00105_n33_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00115_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00105_n34_α
.Lx00115_0:
 .quad 8
 xchain00105_n34_α:
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
  .Lrkfn529: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn529]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00105_n27_α
 jmp xchain00105_n35_α
 xchain00105_n34_β:
 jmp xchain00105_n27_α
 xchain00105_n35_α:
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
  .Lrkfn531: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn531]
 lea rsi, [rbp + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00105_n27_α
 jmp xchain00105_n27_α
 xchain00105_n35_β:
 jmp xchain00105_n27_α
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
proc_Regions___dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 1248
 mov qword ptr [rsp + 1240], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 1200], r11
 lea rax, [rip + .Lx00116_2]
 mov qword ptr [rbp + 1208], rax
 lea rax, [rip + .Lx00116_3]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1160], rbp
 mov rdi, rbp
 mov esi, 1152
 mov edx, 1200
 mov ecx, 0
 mov r8d, 0
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_Regions___α_body
.Lx00116_2:
 mov rdx, qword ptr [rsp + -1248]
 mov rcx, rsp
 add rcx, -1232
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00116_3:
 mov rdi, qword ptr [rsp + -1248]
 mov rsi, rsp
 add rsi, -1232
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 264], rsp
  mov rdi, rsp
  mov esi, 256
  mov edx, 272
  call rt_jmp_frame_lexprep2@PLT
proc_Signature___α_body:
# KEYWORD_read
 xchain00117_n0_α:
 mov rdi, qword ptr [rip + .Lx00118_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00117_n2_α
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00117_n1_α
 xchain00117_n0_β:
 jmp xchain00117_n2_α
.Lx00118_0:
 .quad .Lx00118_0_s
.Lx00118_0_s:
 .string "&version"
 xchain00117_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn536: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn536]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00117_n2_α
 jmp xchain00117_n2_α
 xchain00117_n1_β:
 jmp xchain00117_n2_α
# KEYWORD_read
 xchain00117_n2_α:
 mov rdi, qword ptr [rip + .Lx00119_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00117_n4_α
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00117_n3_α
 xchain00117_n2_β:
 jmp xchain00117_n4_α
.Lx00119_0:
 .quad .Lx00119_0_s
.Lx00119_0_s:
 .string "&host"
 xchain00117_n3_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn539: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn539]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je xchain00117_n4_α
 jmp xchain00117_n4_α
 xchain00117_n3_β:
 jmp xchain00117_n4_α
# KEYWORD_gen
 xchain00117_n4_α:
 mov qword ptr [rbp + 80], 0
.Lx00120_1:
 mov rdi, qword ptr [rip + .Lx00120_0]
 mov rsi, qword ptr [rbp + 80]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00117_n6_α
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 mov rax, qword ptr [rbp + 80]
 add rax, 1
 mov qword ptr [rbp + 80], rax
 jmp xchain00117_n5_α
 xchain00117_n4_β:
 jmp .Lx00120_1
.Lx00120_0:
 .quad .Lx00120_0_s
.Lx00120_0_s:
 .string "&features"
 xchain00117_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+32]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 40], rax
  .section .rodata
  .Lrkfn542: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn542]
 lea rsi, [rbp + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 cmp eax, 99
 je xchain00117_n4_β
 jmp xchain00117_n4_β
 xchain00117_n5_β:
 jmp xchain00117_n4_β
# IR_RETURN
 xchain00117_n6_α:
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
proc_Signature___dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 320
 mov qword ptr [rsp + 312], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 272], r11
 lea rax, [rip + .Lx00121_2]
 mov qword ptr [rbp + 280], rax
 lea rax, [rip + .Lx00121_3]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 264], rbp
 mov rdi, rbp
 mov esi, 256
 mov edx, 272
 mov ecx, 0
 mov r8d, 0
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_Signature___α_body
.Lx00121_2:
 mov rdx, qword ptr [rsp + -320]
 mov rcx, rsp
 add rcx, -304
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00121_3:
 mov rdi, qword ptr [rsp + -320]
 mov rsi, rsp
 add rsi, -304
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 1160], rsp
  mov rdi, rsp
  mov esi, 1152
  mov edx, 1200
  call rt_jmp_frame_lexprep2@PLT
proc_Storage___α_body:
# IR_DISJUNCTION_NARY
 xchain00122_n0_α:
 mov qword ptr [rbp + 832], 0
 mov qword ptr [rbp + 840], 0
 mov dword ptr [rbp + 848], 0
 jmp xchain00122_n2_α
xchain00122_n0_as:
 mov eax, dword ptr [rbp + 848]
 cmp eax, 0
 jne .Lx00123_0
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
 jmp xchain00122_n1_α
.Lx00123_0:
 jmp xchain00122_n1_α
 xchain00122_n0_β:
 mov eax, dword ptr [rbp + 848]
 jmp xchain00122_n1_α
xchain00122_n0_af:
 add dword ptr [rbp + 848], 1
 mov eax, dword ptr [rbp + 848]
 jmp xchain00122_n1_α
# IR_MAKE_LIST
 xchain00122_n1_α:
 lea rdi, [rbp + 832]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00122_n4_α
# IR_VAR_REF
 xchain00122_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052656
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00122_n5_α
 xchain00122_n2_β:
 jmp xchain00122_n0_af
# IR_ASSIGN gva
 xchain00122_n3_α:
 mov rax, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 mov qword ptr [1879052640], rax
 mov qword ptr [1879052648], rdx
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00122_n0_as
 xchain00122_n3_β:
 jmp xchain00122_n1_α
 xchain00122_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00122_n6_α
# IR_NULLTEST_VAR
 xchain00122_n5_α:
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 99
 je xchain00122_n0_af
 mov rdi, qword ptr [rbp + 1040]
 mov rsi, qword ptr [rbp + 1048]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00122_n0_af
 cmp eax, 0
 jne xchain00122_n0_af
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00122_n7_α
# IR_VAR
 xchain00122_n6_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 744], rax
 jmp xchain00122_n8_α
# IR_LIT_INTEGER
 xchain00122_n7_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx00124_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00122_n10_α
.Lx00124_0:
 .quad 1
# KEYWORD_gen
 xchain00122_n8_α:
 mov qword ptr [rbp + 784], 0
.Lx00125_1:
 mov rdi, qword ptr [rip + .Lx00125_0]
 mov rsi, qword ptr [rbp + 784]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00122_n9_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 mov rax, qword ptr [rbp + 784]
 add rax, 1
 mov qword ptr [rbp + 784], rax
 jmp xchain00122_n11_α
 xchain00122_n8_β:
 jmp .Lx00125_1
.Lx00125_0:
 .quad .Lx00125_0_s
.Lx00125_0_s:
 .string "&storage"
# IR_LIT_STRING
 xchain00122_n9_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00126_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00122_n12_α
.Lx00126_0:
 .quad .Lx00126_0_s
.Lx00126_0_s:
 .string "storage"
# IR_ASSIGN_VAR
 xchain00122_n10_α:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, qword ptr [rbp + 1120]
 mov rcx, qword ptr [rbp + 1128]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00122_n0_af
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00122_n13_α
 xchain00122_n11_α:
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
  .Lrkfn562: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn562]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain00122_n8_β
 jmp xchain00122_n8_β
 xchain00122_n11_β:
 jmp xchain00122_n8_β
 xchain00122_n12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn564: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn564]
 lea rsi, [rbp + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00122_n14_α
 jmp xchain00122_n14_α
 xchain00122_n12_β:
 jmp xchain00122_n14_α
# IR_LIT_STRING
 xchain00122_n13_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx00127_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00122_n15_α
.Lx00127_0:
 .quad .Lx00127_0_s
.Lx00127_0_s:
 .string "static"
# IR_LIT_INTEGER
 xchain00122_n14_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00128_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00122_n16_α
.Lx00128_0:
 .quad 1
# IR_LIT_STRING
 xchain00122_n15_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00122_n17_α
.Lx00129_0:
 .quad .Lx00129_0_s
.Lx00129_0_s:
 .string "string"
# IR_VAR
 xchain00122_n16_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00122_n18_α
# IR_LIT_STRING
 xchain00122_n17_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx00130_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00122_n20_α
.Lx00130_0:
 .quad .Lx00130_0_s
.Lx00130_0_s:
 .string "block"
# IR_UNOP
 xchain00122_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00122_n21_α
# IR_RETURN
 xchain00122_n19_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Storage___γ
# IR_MAKE_LIST
 xchain00122_n20_α:
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
 jmp xchain00122_n3_α
# IR_TO
 xchain00122_n21_α:
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
.Lx00131_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00122_n19_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00122_n22_α
 xchain00122_n21_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00131_0
 xchain00122_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00122_n23_α
# IR_BOUND
 xchain00122_n23_α:
 mov qword ptr [rbp + 160], rsp
 jmp xchain00122_n24_α
# IR_VAR_REF
 xchain00122_n24_α:
 mov rax, 4294967305
 mov rdx, 1879052640
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00122_n25_α
# IR_VAR
 xchain00122_n25_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 312], rax
 jmp xchain00122_n26_α
# IR_SUBSCRIPT x[i] variable
 xchain00122_n26_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00122_n27_α
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00122_n28_α
# IR_UNMARK
 xchain00122_n27_α:
 mov rsp, qword ptr [rbp + 160]
 jmp xchain00122_n21_β
# IR_DEREF variable -> value
 xchain00122_n28_α:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00122_n27_α
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00122_n29_α
# IR_VAR_REF
 xchain00122_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00122_n30_α
# IR_VAR
 xchain00122_n30_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 488], rax
 jmp xchain00122_n31_α
# IR_SUBSCRIPT x[i] variable
 xchain00122_n31_α:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00122_n27_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00122_n32_α
# IR_DEREF variable -> value
 xchain00122_n32_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00122_n27_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00122_n33_α
# IR_LIT_INTEGER
 xchain00122_n33_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00132_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00122_n34_α
.Lx00132_0:
 .quad 8
 xchain00122_n34_α:
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
  .Lrkfn595: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn595]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00122_n27_α
 jmp xchain00122_n35_α
 xchain00122_n34_β:
 jmp xchain00122_n27_α
 xchain00122_n35_α:
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
  .Lrkfn597: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn597]
 lea rsi, [rbp + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00122_n27_α
 jmp xchain00122_n27_α
 xchain00122_n35_β:
 jmp xchain00122_n27_α
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
proc_Storage___dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 1248
 mov qword ptr [rsp + 1240], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 1200], r11
 lea rax, [rip + .Lx00133_2]
 mov qword ptr [rbp + 1208], rax
 lea rax, [rip + .Lx00133_3]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1160], rbp
 mov rdi, rbp
 mov esi, 1152
 mov edx, 1200
 mov ecx, 0
 mov r8d, 0
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_Storage___α_body
.Lx00133_2:
 mov rdx, qword ptr [rsp + -1248]
 mov rcx, rsp
 add rcx, -1232
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00133_3:
 mov rdi, qword ptr [rsp + -1248]
 mov rsi, rsp
 add rsi, -1232
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 376], rsp
  mov rdi, rsp
  mov esi, 368
  mov edx, 384
  call rt_jmp_frame_lexprep2@PLT
proc_Time___α_body:
# IR_DISJUNCTION_NARY
 xchain00134_n0_α:
 mov qword ptr [rbp + 176], 0
 mov qword ptr [rbp + 184], 0
 mov dword ptr [rbp + 192], 0
 jmp xchain00134_n2_α
xchain00134_n0_as:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 0
 jne .Lx00135_0
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
 jmp xchain00134_n1_α
.Lx00135_0:
 jmp xchain00134_n1_α
 xchain00134_n0_β:
 mov eax, dword ptr [rbp + 192]
 jmp xchain00134_n1_α
xchain00134_n0_af:
 add dword ptr [rbp + 192], 1
 mov eax, dword ptr [rbp + 192]
 jmp xchain00134_n1_α
# KEYWORD_read
 xchain00134_n1_α:
 mov rdi, qword ptr [rip + .Lx00136_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je proc_Time___ω
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain00134_n4_α
 xchain00134_n1_β:
 jmp proc_Time___ω
.Lx00136_0:
 .quad .Lx00136_0_s
.Lx00136_0_s:
 .string "&time"
# IR_VAR_REF
 xchain00134_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052688
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00134_n5_α
 xchain00134_n2_β:
 jmp xchain00134_n0_af
# IR_ASSIGN gva
 xchain00134_n3_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [1879052672], rax
 mov qword ptr [1879052680], rdx
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00134_n0_as
 xchain00134_n3_β:
 jmp xchain00134_n1_α
# IR_VAR
 xchain00134_n4_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00134_n6_α
# IR_NULLTEST_VAR
 xchain00134_n5_α:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 99
 je xchain00134_n0_af
 mov rdi, qword ptr [rbp + 256]
 mov rsi, qword ptr [rbp + 264]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00134_n0_af
 cmp eax, 0
 jne xchain00134_n0_af
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 296], rax
 jmp xchain00134_n7_α
# IR_COERCE_NUMERIC
 xchain00134_n6_α:
 mov eax, dword ptr [rbp + 112]
 cmp eax, 7
 je .Lx00137_1
 cmp eax, 6
 jne .Lx00137_0
 mov eax, dword ptr [rbp + 144]
 cmp eax, 6
 jne .Lx00137_0
.Lx00137_1:
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 88], rax
 jmp xchain00134_n8_α
.Lx00137_0:
 lea rdi, [rbp + 112]
 lea rsi, [rbp + 144]
 lea rdx, [rbp + 80]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00134_n8_α
# IR_LIT_INTEGER
 xchain00134_n7_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00138_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00134_n9_α
.Lx00138_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00134_n8_α:
 mov eax, dword ptr [rbp + 144]
 cmp eax, 7
 je .Lx00139_1
 cmp eax, 6
 jne .Lx00139_0
 mov eax, dword ptr [rbp + 112]
 cmp eax, 6
 jne .Lx00139_0
.Lx00139_1:
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 56], rax
 jmp xchain00134_n10_α
.Lx00139_0:
 lea rdi, [rbp + 144]
 lea rsi, [rbp + 112]
 lea rdx, [rbp + 48]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00134_n10_α
# IR_ASSIGN_VAR
 xchain00134_n9_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00134_n0_af
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00134_n11_α
 xchain00134_n10_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 80]
 cmp eax, 100
 je .Lx00140_0
 mov eax, dword ptr [rbp + 48]
 cmp eax, 100
 je .Lx00140_0
 mov eax, dword ptr [rbp + 80]
 cmp eax, 6
 jne .Lx00140_2
 mov eax, dword ptr [rbp + 48]
 cmp eax, 6
 jne .Lx00140_2
.Lx00140_1:
 mov rax, qword ptr [rbp + 88]
 mov rcx, qword ptr [rbp + 56]
 sub rax, rcx
 mov qword ptr [rbp + 16], 6
 mov qword ptr [rbp + 24], rax
 jmp xchain00134_n12_α
.Lx00140_0:
 mov rdi, qword ptr [rbp + 80]
 mov rsi, qword ptr [rbp + 88]
 mov rdx, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 56]
 mov r8d, 1
 lea r9, [rbp + 16]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00134_n12_α
.Lx00140_2:
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
 jmp xchain00134_n12_α
 xchain00134_n10_β:
 jmp proc_Time___ω
# KEYWORD_read
 xchain00134_n11_α:
 mov rdi, qword ptr [rip + .Lx00141_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00134_n1_α
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00134_n3_α
 xchain00134_n11_β:
 jmp xchain00134_n1_α
.Lx00141_0:
 .quad .Lx00141_0_s
.Lx00141_0_s:
 .string "&time"
# IR_RETURN
 xchain00134_n12_α:
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
proc_Time___dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 432
 mov qword ptr [rsp + 424], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 384], r11
 lea rax, [rip + .Lx00142_2]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + .Lx00142_3]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 376], rbp
 mov rdi, rbp
 mov esi, 368
 mov edx, 384
 mov ecx, 0
 mov r8d, 0
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_Time___α_body
.Lx00142_2:
 mov rdx, qword ptr [rsp + -432]
 mov rcx, rsp
 add rcx, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00142_3:
 mov rdi, qword ptr [rsp + -432]
 mov rsi, rsp
 add rsi, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
  .globl proc_shuffle_α
proc_shuffle_α:
#=======================================================================================================================
    .global proc_shuffle_α
    .global proc_shuffle_β
    .global proc_shuffle_γ
    .global proc_shuffle_ω
  sub rsp, 336
  mov [rsp + 312], rcx
  mov [rsp + 320], rdx
  mov [rsp + 328], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 296], rsp
  mov rdi, rsp
  mov esi, 288
  mov edx, 304
  call rt_jmp_frame_lexprep2@PLT
proc_shuffle_α_body:
# IR_VAR
 xchain00143_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 264], rax
 jmp xchain00143_n1_α
 xchain00143_n1_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn622: .string "string"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn622]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00143_n2_α
 jmp xchain00143_n3_α
 xchain00143_n1_β:
 jmp xchain00143_n2_α
# IR_VAR_REF
 xchain00143_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00143_n4_α
 xchain00143_n3_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00143_n2_α
# IR_LIST_BANG
 xchain00143_n4_α:
 mov qword ptr [rbp + 80], 0
.Lx00144_0:
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 mov rdx, qword ptr [rbp + 80]
 call rt_list_bang_var_at@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp rax, 99
 je xchain00143_n8_α
 jmp xchain00143_n5_α
 xchain00143_n4_β:
 inc qword ptr [rbp + 80]
 jmp .Lx00144_0
# IR_VAR_REF
 xchain00143_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00143_n6_α
# IR_RANDOM
 xchain00143_n6_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00143_n8_α
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00143_n7_α
# IR_SWAP_VAR x:=:y through variables (canonical swap, oasgn.r:265)
 xchain00143_n7_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 mov rdx, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 136]
 call rt_swap_var@PLT
 cmp eax, 99
 je xchain00143_n8_α
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00143_n4_β
# IR_VAR
 xchain00143_n8_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 40], rax
 jmp xchain00143_n9_α
# IR_RETURN
 xchain00143_n9_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_shuffle_γ
proc_shuffle_res:
add rsp, 8
pop rbp
proc_shuffle_β:
jmp proc_shuffle_ω
proc_shuffle_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 312]
lea rsp, [rbp + 336]
mov rbp, [rbp + 328]
jmp rax
proc_shuffle_ω:
mov rax, [rbp + 320]
lea rsp, [rbp + 336]
mov rbp, [rbp + 328]
jmp rax
proc_shuffle_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 352
 mov qword ptr [rsp + 344], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 304], r11
 lea rax, [rip + .Lx00145_2]
 mov qword ptr [rbp + 312], rax
 lea rax, [rip + .Lx00145_3]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 296], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 288
 mov edx, 304
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_shuffle_α_body
.Lx00145_2:
 mov rdx, qword ptr [rsp + -352]
 mov rcx, rsp
 add rcx, -336
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00145_3:
 mov rdi, qword ptr [rsp + -352]
 mov rsi, rsp
 add rsi, -336
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "display"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_display_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2624
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_display_dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname1: .string "show"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_show_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2016
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_show_dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname2: .string "arrange"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_arrange_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 448
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_arrange_dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname3: .string "options"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_options_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3728
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_options_dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname4: .string "Init__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_Init___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 592
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_Init___dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname5: .string "Term__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_Term___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 592
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_Term___dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname6: .string "Collections__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_Collections___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1248
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_Collections___dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname7: .string "Regions__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_Regions___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1200
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_Regions___dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname8: .string "Signature__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + proc_Signature___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 272
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + proc_Signature___dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname9: .string "Storage__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname9]
  lea rsi, [rip + proc_Storage___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 1200
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname9]
  lea rsi, [rip + proc_Storage___dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname10: .string "Time__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname10]
  lea rsi, [rip + proc_Time___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 384
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname10]
  lea rsi, [rip + proc_Time___dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname11: .string "shuffle"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname11]
  lea rsi, [rip + proc_shuffle_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 304
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname11]
  lea rsi, [rip + proc_shuffle_dcα]
  call rt_proc_set_dcfn@PLT
  add rsp, 8
  ret
  .section .rodata
  .Lgvan0: .string "deck"
  .Lgvan1: .string "deckimage"
  .Lgvan2: .string "handsize"
  .Lgvan3: .string "suitsize"
  .Lgvan4: .string "denom"
  .Lgvan5: .string "rank"
  .Lgvan6: .string "blanker"
  .Lgvan7: .string "Save__"
  .Lgvan8: .string "Saves__"
  .Lgvan9: .string "Name__"
  .Lgvan10: .string "display__STATIC__bar"
  .Lgvan11: .string "display__STATIC__offset"
  .Lgvan12: .string "display__INITFLAG__0"
  .Lgvan13: .string "show__STATIC__clubmap"
  .Lgvan14: .string "show__STATIC__diamondmap"
  .Lgvan15: .string "show__STATIC__heartmap"
  .Lgvan16: .string "show__STATIC__spademap"
  .Lgvan17: .string "show__INITFLAG__0"
  .Lgvan18: .string "Collections____STATIC__labels"
  .Lgvan19: .string "Collections____INITFLAG__0"
  .Lgvan20: .string "Regions____STATIC__labels"
  .Lgvan21: .string "Regions____INITFLAG__0"
  .Lgvan22: .string "Storage____STATIC__labels"
  .Lgvan23: .string "Storage____INITFLAG__0"
  .Lgvan24: .string "Time____STATIC__lasttime"
  .Lgvan25: .string "Time____INITFLAG__0"
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
  .quad .Lgvan21
  .quad .Lgvan22
  .quad .Lgvan23
  .quad .Lgvan24
  .quad .Lgvan25
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 26
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 26
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
  mov qword ptr [rsp + 1528], rsp
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
# IR_LIT_STRING
 xchain00146_n0_α:
 mov qword ptr [rbp + 1488], 1
 mov rax, qword ptr [rip + .Lx00147_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain00146_n1_α
.Lx00147_0:
 .quad .Lx00147_0_s
.Lx00147_0_s:
 .string "deal"
 xchain00146_n1_α:
 lea rsi, [rbp + 1488]
 call proc_Init___dcα
 jmp .Lx00148_2
.Lx00148_2:
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain00146_n2_α
 jmp xchain00146_n2_α
 xchain00146_n1_β:
 jmp xchain00146_n2_α
.Lx00148_0:
 .quad .Lx00148_0_s
.Lx00148_0_s:
 .string "Init__"
# IR_LIT_CHARSET
 xchain00146_n2_α:
 mov qword ptr [rbp + 1408], 1
 mov dword ptr [rbp + 1412], -1
 mov rax, qword ptr [rip + .Lx00149_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain00146_n3_α
.Lx00149_0:
 .quad .Lx00149_0_s
.Lx00149_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00146_n3_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1376]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1384], rax
  .section .rodata
  .Lrkfn642: .string "string"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn642]
 lea rsi, [rbp + 1376]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain00146_n5_α
 jmp xchain00146_n4_α
 xchain00146_n3_β:
 jmp xchain00146_n5_α
# IR_ASSIGN gva
 xchain00146_n4_α:
 mov rax, qword ptr [rbp + 1360]
 mov rdx, qword ptr [rbp + 1368]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain00146_n6_α
# IR_VAR
 xchain00146_n5_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain00146_n7_α
# IR_ASSIGN gva
 xchain00146_n6_α:
 mov rax, qword ptr [rbp + 1344]
 mov rdx, qword ptr [rbp + 1352]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain00146_n5_α
# IR_UNOP
 xchain00146_n7_α:
 mov rdi, qword ptr [rbp + 1264]
 mov rsi, qword ptr [rbp + 1272]
 call rt_size_d@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain00146_n9_α
# IR_LIT_STRING
 xchain00146_n8_α:
 mov qword ptr [rbp + 1104], 1
 mov rax, qword ptr [rip + .Lx00150_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00146_n10_α
.Lx00150_0:
 .quad .Lx00150_0_s
.Lx00150_0_s:
 .string "AKQJT98765432"
# IR_LIT_INTEGER
 xchain00146_n9_α:
 mov qword ptr [rbp + 1296], 6
 mov rax, qword ptr [rip + .Lx00151_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain00146_n11_α
.Lx00151_0:
 .quad 4
# IR_ASSIGN gva
 xchain00146_n10_α:
 mov rax, qword ptr [rbp + 1104]
 mov rdx, qword ptr [rbp + 1112]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain00146_n12_α
# IR_COERCE_NUMERIC
 xchain00146_n11_α:
 mov eax, dword ptr [rbp + 1232]
 cmp eax, 7
 je .Lx00152_1
 cmp eax, 6
 jne .Lx00152_0
 mov eax, dword ptr [rbp + 1296]
 cmp eax, 6
 jne .Lx00152_0
.Lx00152_1:
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1208], rax
 jmp xchain00146_n13_α
.Lx00152_0:
 lea rdi, [rbp + 1232]
 lea rsi, [rbp + 1296]
 lea rdx, [rbp + 1200]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00146_n13_α
# IR_LIT_STRING
 xchain00146_n12_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx00153_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00146_n14_α
.Lx00153_0:
 .quad .Lx00153_0_s
.Lx00153_0_s:
 .string " "
 xchain00146_n13_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1200]
 cmp eax, 100
 je .Lx00154_0
 mov eax, dword ptr [rbp + 1200]
 cmp eax, 6
 jne .Lx00154_2
.Lx00154_1:
 mov rax, qword ptr [rbp + 1208]
 mov rcx, 4
 cqo
 idiv rcx
 mov qword ptr [rbp + 1168], 6
 mov qword ptr [rbp + 1176], rax
 jmp xchain00146_n15_α
.Lx00154_0:
 mov rdi, qword ptr [rbp + 1200]
 mov rsi, qword ptr [rbp + 1208]
 mov rdx, qword ptr [rbp + 1296]
 mov rcx, qword ptr [rbp + 1304]
 mov r8d, 3
 lea r9, [rbp + 1168]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00146_n15_α
.Lx00154_2:
 mov rdi, qword ptr [rbp + 1200]
 mov rsi, qword ptr [rbp + 1208]
 mov rdx, qword ptr [rbp + 1296]
 mov rcx, qword ptr [rbp + 1304]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00146_n8_α
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain00146_n15_α
 xchain00146_n13_β:
 jmp xchain00146_n8_α
# IR_VAR
 xchain00146_n14_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain00146_n16_α
# IR_ASSIGN gva
 xchain00146_n15_α:
 mov rax, qword ptr [rbp + 1168]
 mov rdx, qword ptr [rbp + 1176]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain00146_n18_α
 xchain00146_n16_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+976]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 984], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+992]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1000], rax
  .section .rodata
  .Lrkfn657: .string "repl"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn657]
 lea rsi, [rbp + 976]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain00146_n17_α
 jmp xchain00146_n19_α
 xchain00146_n16_β:
 jmp xchain00146_n17_α
# IR_LIT_CHARSET
 xchain00146_n17_α:
 mov qword ptr [rbp + 816], 1
 mov dword ptr [rbp + 820], -1
 mov rax, qword ptr [rip + .Lx00155_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00146_n20_α
.Lx00155_0:
 .quad .Lx00155_0_s
.Lx00155_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_ASSIGN gva
 xchain00146_n18_α:
 mov rax, qword ptr [rbp + 1152]
 mov rdx, qword ptr [rbp + 1160]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00146_n8_α
# IR_ASSIGN gva
 xchain00146_n19_α:
 mov rax, qword ptr [rbp + 960]
 mov rdx, qword ptr [rbp + 968]
 mov qword ptr [1879052384], rax
 mov qword ptr [1879052392], rdx
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain00146_n17_α
# IR_LIT_INTEGER
 xchain00146_n20_α:
 mov qword ptr [rbp + 848], 6
 mov rax, qword ptr [rip + .Lx00156_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain00146_n21_α
.Lx00156_0:
 .quad 1
# IR_VAR
 xchain00146_n21_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain00146_n22_α
 xchain00146_n22_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 880]
 cmp eax, 100
 je .Lx00157_0
 mov eax, dword ptr [rbp + 880]
 cmp eax, 6
 jne .Lx00157_2
.Lx00157_1:
 mov rax, 1
 mov rcx, qword ptr [rbp + 888]
 add rax, rcx
 mov qword ptr [rbp + 912], 6
 mov qword ptr [rbp + 920], rax
 jmp xchain00146_n24_α
.Lx00157_0:
 mov rdi, qword ptr [rbp + 848]
 mov rsi, qword ptr [rbp + 856]
 mov rdx, qword ptr [rbp + 880]
 mov rcx, qword ptr [rbp + 888]
 mov r8d, 0
 lea r9, [rbp + 912]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00146_n24_α
.Lx00157_2:
 mov rdi, qword ptr [rbp + 848]
 mov rsi, qword ptr [rbp + 856]
 mov rdx, qword ptr [rbp + 880]
 mov rcx, qword ptr [rbp + 888]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00146_n23_α
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain00146_n24_α
 xchain00146_n22_β:
 jmp xchain00146_n23_α
# IR_VAR
 xchain00146_n23_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 712], rax
 jmp xchain00146_n25_α
# IR_SUBSCRIPT section extended (x[i+:n]/x[i-:n]; end pre-computed by IR_BINOP; wraparound→ω)
 xchain00146_n24_α:
 mov rdi, qword ptr [rbp + 816]
 mov rsi, qword ptr [rbp + 824]
 mov rdx, qword ptr [rbp + 848]
 mov rcx, qword ptr [rbp + 856]
 mov r8, qword ptr [rbp + 912]
 mov r9, qword ptr [rbp + 920]
 call subscript_get2_ext@PLT
 cmp eax, 99
 je xchain00146_n23_α
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain00146_n27_α
# IR_LIT_STRING
 xchain00146_n25_α:
 mov qword ptr [rbp + 736], 1
 mov rax, qword ptr [rip + .Lx00158_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain00146_n28_α
.Lx00158_0:
 .quad .Lx00158_0_s
.Lx00158_0_s:
 .string "h+s+"
# IR_DISJUNCTION_NARY
 xchain00146_n26_α:
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 mov dword ptr [rbp + 432], 0
 jmp xchain00146_n30_α
xchain00146_n26_as:
 mov eax, dword ptr [rbp + 432]
 cmp eax, 0
 jne .Lx00159_0
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
 jmp xchain00146_n29_α
.Lx00159_0:
 cmp eax, 1
 jne .Lx00159_1
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 424], rax
 jmp xchain00146_n29_α
.Lx00159_1:
 jmp xchain00146_n29_α
 xchain00146_n26_β:
 mov eax, dword ptr [rbp + 432]
 cmp eax, 0
 je xchain00146_n26_af
 jmp xchain00146_n26_af
xchain00146_n26_af:
 add dword ptr [rbp + 432], 1
 mov eax, dword ptr [rbp + 432]
 cmp eax, 1
 je xchain00146_n31_α
 jmp xchain00146_n34_α
# IR_ASSIGN gva
 xchain00146_n27_α:
 mov rax, qword ptr [rbp + 784]
 mov rdx, qword ptr [rbp + 792]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00146_n23_α
 xchain00146_n28_α:
 lea rsi, [rbp + 704]
 lea rdx, [rbp + 736]
 call proc_options_dcα
 jmp .Lx00160_2
.Lx00160_2:
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain00146_n26_α
 jmp xchain00146_n33_α
 xchain00146_n28_β:
 jmp xchain00146_n26_α
.Lx00160_0:
 .quad .Lx00160_0_s
.Lx00160_0_s:
 .string "options"
 xchain00146_n29_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00146_n34_α
# IR_VAR_REF
 xchain00146_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00146_n35_α
 xchain00146_n30_β:
 jmp xchain00146_n26_af
# IR_LIT_INTEGER
 xchain00146_n31_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00161_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00146_n26_as
 xchain00146_n31_β:
 jmp xchain00146_n26_af
.Lx00161_0:
 .quad 1
# IR_UNOP
 xchain00146_n32_α:
 mov eax, dword ptr [rbp + 576]
 cmp eax, 99
 je xchain00146_n26_af
 cmp eax, 0
 je xchain00146_n26_af
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 456], rax
 jmp xchain00146_n26_as
 xchain00146_n32_β:
 jmp xchain00146_n26_af
 xchain00146_n33_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00146_n26_α
# IR_VAR_REF
 xchain00146_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00146_n36_α
# IR_LIT_STRING
 xchain00146_n35_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx00162_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00146_n37_α
.Lx00162_0:
 .quad .Lx00162_0_s
.Lx00162_0_s:
 .string "h"
# IR_LIT_STRING
 xchain00146_n36_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00163_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00146_n38_α
.Lx00163_0:
 .quad .Lx00163_0_s
.Lx00163_0_s:
 .string "s"
# IR_SUBSCRIPT x[i] variable
 xchain00146_n37_α:
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 512]
 mov rcx, qword ptr [rbp + 520]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00146_n26_af
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00146_n39_α
# IR_SUBSCRIPT x[i] variable
 xchain00146_n38_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 mov rdx, qword ptr [rbp + 320]
 mov rcx, qword ptr [rbp + 328]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00146_n41_α
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00146_n40_α
# IR_DEREF variable -> value
 xchain00146_n39_α:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00146_n26_af
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00146_n32_α
# IR_DEREF variable -> value
 xchain00146_n40_α:
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00146_n41_α
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain00146_n42_α
# IR_LIT_INTEGER
 xchain00146_n41_α:
 mov qword ptr [rbp + 96], 6
 mov rax, qword ptr [rip + .Lx00164_0]
 mov qword ptr [rbp + 104], rax
 jmp xchain00146_n43_α
.Lx00164_0:
 .quad 1
# IR_UNOP
 xchain00146_n42_α:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 99
 je xchain00146_n41_α
 cmp eax, 0
 je xchain00146_n41_α
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 264], rax
 jmp xchain00146_n44_α
# IR_VAR
 xchain00146_n43_α:
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 136], rax
 jmp xchain00146_n45_α
# BOX ICN IR_KEYWORD_ASSIGN random [data.r kywdint: coerce int, store g_random seed, result {DT_I,n}; non-numeric->omega]
 xchain00146_n44_α:
 mov rdi, qword ptr [rbp + 256]
 mov rsi, qword ptr [rbp + 264]
 call rt_keyword_random_set@PLT
 cmp eax, 99
 je xchain00146_n41_α
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00146_n41_α
# IR_TO
 xchain00146_n45_α:
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call to_int@PLT
 mov qword ptr [rbp + 128], 6
 mov qword ptr [rbp + 136], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 80], rax
.Lx00165_0:
 mov rax, qword ptr [rbp + 80]
 mov rcx, qword ptr [rbp + 136]
 cmp rax, rcx
 jg xchain00146_n46_α
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 jmp xchain00146_n47_α
 xchain00146_n45_β:
 inc qword ptr [rbp + 80]
 jmp .Lx00165_0
 xchain00146_n46_α:
 call proc_Term___dcα
 jmp .Lx00166_2
.Lx00166_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain00146_n46_β:
 jmp main_ω
.Lx00166_0:
 .quad .Lx00166_0_s
.Lx00166_0_s:
 .string "Term__"
# IR_BOUND
 xchain00146_n47_α:
 mov qword ptr [rbp + 160], rsp
 jmp xchain00146_n48_α
 xchain00146_n48_α:
 call proc_display_dcα
 jmp .Lx00167_2
.Lx00167_2:
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00146_n49_α
 jmp xchain00146_n49_α
 xchain00146_n48_β:
 jmp xchain00146_n49_α
.Lx00167_0:
 .quad .Lx00167_0_s
.Lx00167_0_s:
 .string "display"
# IR_UNMARK
 xchain00146_n49_α:
 mov rsp, qword ptr [rbp + 160]
 jmp xchain00146_n45_β
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 1528]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 1528]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
