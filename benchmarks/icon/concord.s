  .intel_syntax noprefix
  .text
  .globl proc_tabulate_α
proc_tabulate_α:
#=======================================================================================================================
    .global proc_tabulate_α
    .global proc_tabulate_β
    .global proc_tabulate_γ
    .global proc_tabulate_ω
  sub rsp, 2128
  mov [rsp + 2104], rcx
  mov [rsp + 2112], rdx
  mov [rsp + 2120], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 2096
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 2040], rsp
  mov rdi, rsp
  mov esi, 2096
  call rt_jmp_frame_lexprep@PLT
proc_tabulate_α_body:
# IR_VAR
 xchain0_n0_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 2008], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
 xchain0_n1_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2000] -> [zr+1968]
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 1968], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 1976], rax
  .section .rodata
  .Lrkfn4: .string "string"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn4]
 lea rsi, [rbp + 1968]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n3_α
 xchain0_n1_β:
 jmp xchain0_n2_α
# IR_LIT_STRING
 xchain0_n2_α:
 mov qword ptr [rbp + 1904], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain0_n4_α
 xchain0_n2_β:
 jmp xchain0_n5_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string ""
 xchain0_n3_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1952]
 mov rdx, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain0_n2_α
 xchain0_n3_β:
 jmp xchain0_n2_α
 xchain0_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1904]
 mov rdx, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n5_α:
 mov rdi, 1879052288
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp proc_tabulate_ω
# IR_VAR
 xchain0_n6_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1816], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp proc_tabulate_ω
# IR_SUBSCRIPT x[i] variable
 xchain0_n7_α:
 mov rdi, qword ptr [rbp + 1776]
 mov rsi, qword ptr [rbp + 1784]
 mov rdx, qword ptr [rbp + 1808]
 mov rcx, qword ptr [rbp + 1816]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_tabulate_ω
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp proc_tabulate_ω
# IR_DEREF variable -> value
 xchain0_n8_α:
 mov rdi, qword ptr [rbp + 1840]
 mov rsi, qword ptr [rbp + 1848]
 call rt_deref@PLT
 cmp eax, 99
 je proc_tabulate_ω
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp proc_tabulate_ω
# IR_GEN_SCAN
 xchain0_n9_α:
 mov rdi, qword ptr [rbp + 1872]
 mov rsi, qword ptr [rbp + 1880]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp proc_tabulate_ω
# IR_VAR
 xchain0_n10_α:
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 1416], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n12_α
# IR_LIT_CHARSET
 xchain0_n11_α:
 mov qword ptr [rbp + 1504], 1
 mov dword ptr [rbp + 1508], -1
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n12_α
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string "0123456789"
# IR_VAR
 xchain0_n12_α:
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 1336], rax
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n15_α
# IR_SCAN_UPTO
 xchain0_n13_α:
 mov qword ptr [rbp + 1488], r14
.Lx22_0:
 mov rax, qword ptr [rbp + 1488]
 cmp rax, r15
 jge xchain0_n12_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx22_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx22_1
 mov qword ptr [rbp + 1472], 6
 add rax, 1
 mov qword ptr [rbp + 1480], rax
 jmp xchain0_n16_α
.Lx22_1:
 inc qword ptr [rbp + 1488]
 jmp .Lx22_0
 xchain0_n13_β:
 inc qword ptr [rbp + 1488]
 jmp .Lx22_0
.Lx22_2:
 .quad .Lx22_2_s
.Lx22_2_s:
 .string "0123456789"
# IR_UNOP
 xchain0_n14_α:
 mov eax, dword ptr [rbp + 2080]
 cmp eax, 99
 je xchain0_n15_α
 cmp eax, 0
 jne xchain0_n15_α
 mov qword ptr [rbp + 1296], 0
 mov qword ptr [rbp + 1304], 0
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp xchain0_n15_α
# IR_VAR
 xchain0_n15_α:
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 1240], rax
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n19_α
# IR_SCAN_TAB
 xchain0_n16_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1480]
 cmp rax, 1
 jge .Lx27_0
 add rax, r15
 add rax, 1
.Lx27_0:
 cmp rax, 1
 jge .Lx27_239
 add rsp, 16
 jmp xchain0_n12_α
.Lx27_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx27_240
 add rsp, 16
 jmp xchain0_n12_α
.Lx27_240:
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
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain0_n20_α
 xchain0_n16_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain0_n12_α
# IR_MOVE_LABEL
 xchain0_n17_α:
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1176], rax
 lea rax, [rip + xchain0_n15_α]
 mov qword ptr [rbp + 1184], rax
 jmp xchain0_n21_α
 xchain0_n17_β:
 jmp xchain0_n19_α
# IR_VAR
 xchain0_n18_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1272], rax
 jmp xchain0_n23_α
 xchain0_n18_β:
 jmp xchain0_n19_α
# IR_LIT_STRING
 xchain0_n19_α:
 mov qword ptr [rbp + 1136], 1
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain0_n24_α
 xchain0_n19_β:
 jmp xchain0_n29_α
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "("
 xchain0_n20_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 2048]
 mov rsi, qword ptr [rbp + 2056]
 mov rdx, qword ptr [rbp + 1440]
 mov rcx, qword ptr [rbp + 1448]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain0_n25_α
 xchain0_n20_β:
 jmp xchain0_n12_α
# IR_VAR_REF
 xchain0_n21_α:
 mov rdi, 1879052288
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain0_n26_α
 xchain0_n21_β:
 jmp xchain0_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n22_α:
 jmp qword ptr [rbp + 1184]
 xchain0_n22_β:
 jmp xchain0_n19_α
 xchain0_n23_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 2080]
 mov rsi, qword ptr [rbp + 2088]
 mov rdx, qword ptr [rbp + 32]
 mov rcx, qword ptr [rbp + 40]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n19_α
 mov rdi, qword ptr [rbp + 32]
 mov rsi, qword ptr [rbp + 40]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain0_n27_α
 xchain0_n23_β:
 jmp xchain0_n19_α
# IR_SCAN_MATCH
 xchain0_n24_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx40_239
 add rsp, 16
 jmp xchain0_n29_α
.Lx40_239:
 mov rdi, qword ptr [rip + .Lx40_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx40_240
 add rsp, 16
 jmp xchain0_n29_α
.Lx40_240:
 mov qword ptr [rbp + 1104], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 1112], rax
 jmp xchain0_n28_α
 xchain0_n24_β:
 add rsp, 16
 jmp xchain0_n29_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "("
 xchain0_n25_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1376]
 mov rdx, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain0_n30_α
 xchain0_n25_β:
 jmp xchain0_n12_α
# IR_VAR
 xchain0_n26_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 216], rax
 jmp xchain0_n31_α
 xchain0_n26_β:
 jmp xchain0_n37_α
# IR_MOVE_LABEL
 xchain0_n27_α:
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1176], rax
 lea rax, [rip + xchain0_n19_α]
 mov qword ptr [rbp + 1184], rax
 jmp xchain0_n21_α
 xchain0_n27_β:
 jmp xchain0_n19_α
# IR_SCAN_TAB
 xchain0_n28_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1112]
 cmp rax, 1
 jge .Lx47_0
 add rax, r15
 add rax, 1
.Lx47_0:
 cmp rax, 1
 jge .Lx47_239
 add rsp, 16
 jmp xchain0_n29_α
.Lx47_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx47_240
 add rsp, 16
 jmp xchain0_n29_α
.Lx47_240:
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
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain0_n33_α
 xchain0_n28_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain0_n29_α
# IR_LIT_INTEGER
 xchain0_n29_α:
 mov qword ptr [rbp + 1040], 6
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain0_n34_α
 xchain0_n29_β:
 jmp xchain0_n43_α
.Lx48_0:
 .quad 1
# IR_LIT_CHARSET
 xchain0_n30_α:
 mov qword ptr [rbp + 1744], 1
 mov dword ptr [rbp + 1748], -1
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [rbp + 1752], rax
 jmp xchain0_n35_α
 xchain0_n30_β:
 jmp xchain0_n46_α
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string "0123456789"
# IR_SUBSCRIPT x[i] variable
 xchain0_n31_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n37_α
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain0_n36_α
 xchain0_n31_β:
 jmp xchain0_n37_α
 xchain0_n32_α:
 jmp xchain0_n37_α
xchain0_n32_β:
 jmp xchain0_n37_α
# IR_LIT_CHARSET
 xchain0_n33_α:
 mov qword ptr [rbp + 992], 1
 mov dword ptr [rbp + 996], -1
 mov rax, qword ptr [rip + .Lx52_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain0_n38_α
 xchain0_n33_β:
 jmp xchain0_n43_α
.Lx52_0:
 .quad .Lx52_0_s
.Lx52_0_s:
 .string ")"
 xchain0_n34_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1040]
 mov rdx, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain0_n39_α
 xchain0_n34_β:
 jmp xchain0_n43_α
# IR_SCAN_MANY
 xchain0_n35_α:
 mov eax, r14d
.Lx55_0:
 cmp eax, r15d
 jge .Lx55_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx55_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx55_1
 add eax, 1
 jmp .Lx55_0
.Lx55_1:
 cmp eax, r14d
 je xchain0_n46_α
 mov qword ptr [rbp + 1712], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 1720], rcx
 jmp xchain0_n40_α
 xchain0_n35_β:
 jmp xchain0_n46_α
.Lx55_2:
 .quad .Lx55_2_s
.Lx55_2_s:
 .string "0123456789"
# IR_DEREF variable -> value
 xchain0_n36_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n37_α
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain0_n41_α
 xchain0_n36_β:
 jmp xchain0_n37_α
# IR_GEN_SCAN
 xchain0_n37_α:
 lea rdi, [rbp + 64]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 64]
 mov r14, qword ptr [rbp + 72]
 mov r15, qword ptr [rbp + 80]
 jmp proc_tabulate_ω
 xchain0_n37_β:
 jmp proc_tabulate_ω
# IR_SCAN_UPTO
 xchain0_n38_α:
 mov qword ptr [rbp + 976], r14
.Lx60_0:
 mov rax, qword ptr [rbp + 976]
 cmp rax, r15
 jge xchain0_n43_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx60_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx60_1
 mov qword ptr [rbp + 960], 6
 add rax, 1
 mov qword ptr [rbp + 968], rax
 jmp xchain0_n42_α
.Lx60_1:
 inc qword ptr [rbp + 976]
 jmp .Lx60_0
 xchain0_n38_β:
 inc qword ptr [rbp + 976]
 jmp .Lx60_0
.Lx60_2:
 .quad .Lx60_2_s
.Lx60_2_s:
 .string ")"
# IR_MOVE_LABEL
 xchain0_n39_α:
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 888], rax
 lea rax, [rip + xchain0_n43_α]
 mov qword ptr [rbp + 896], rax
 jmp xchain0_n43_α
 xchain0_n39_β:
 jmp xchain0_n43_α
# IR_SCAN_TAB
 xchain0_n40_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1720]
 cmp rax, 1
 jge .Lx64_0
 add rax, r15
 add rax, 1
.Lx64_0:
 cmp rax, 1
 jge .Lx64_239
 add rsp, 16
 jmp xchain0_n46_α
.Lx64_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx64_240
 add rsp, 16
 jmp xchain0_n46_α
.Lx64_240:
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
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain0_n45_α
 xchain0_n40_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain0_n46_α
# IR_VAR
 xchain0_n41_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 376], rax
 jmp xchain0_n47_α
 xchain0_n41_β:
 jmp xchain0_n37_α
# IR_SCAN_TAB
 xchain0_n42_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 968]
 cmp rax, 1
 jge .Lx68_0
 add rax, r15
 add rax, 1
.Lx68_0:
 cmp rax, 1
 jge .Lx68_239
 add rsp, 16
 jmp xchain0_n43_α
.Lx68_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx68_240
 add rsp, 16
 jmp xchain0_n43_α
.Lx68_240:
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
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain0_n48_α
 xchain0_n42_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain0_n43_α
# IR_VAR_REF
 xchain0_n43_α:
 mov rdi, 1879052288
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain0_n49_α
 xchain0_n43_β:
 jmp xchain0_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n44_α:
 jmp qword ptr [rbp + 896]
 xchain0_n44_β:
 jmp xchain0_n43_α
 xchain0_n45_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1680]
 mov rdx, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain0_n46_α
 xchain0_n45_β:
 jmp xchain0_n46_α
# IR_VAR
 xchain0_n46_α:
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 1608], rax
 jmp xchain0_n50_α
 xchain0_n46_β:
 jmp xchain0_n10_α
# IR_LIT_STRING
 xchain0_n47_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx76_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain0_n51_α
 xchain0_n47_β:
 jmp xchain0_n37_α
.Lx76_0:
 .quad .Lx76_0_s
.Lx76_0_s:
 .string ", "
 xchain0_n48_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain0_n52_α
 xchain0_n48_β:
 jmp xchain0_n43_α
# IR_VAR
 xchain0_n49_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 488], rax
 jmp xchain0_n53_α
 xchain0_n49_β:
 jmp xchain0_n37_α
# IR_VAR
 xchain0_n50_α:
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 1640], rax
 jmp xchain0_n54_α
 xchain0_n50_β:
 jmp xchain0_n10_α
 xchain0_n51_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 32]
 mov rsi, qword ptr [rbp + 40]
 mov rdx, qword ptr [rbp + 400]
 mov rcx, qword ptr [rbp + 408]
 call str_concat_d@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain0_n55_α
 xchain0_n51_β:
 jmp xchain0_n37_α
# IR_MOVE_LABEL
 xchain0_n52_α:
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 888], rax
 lea rax, [rip + xchain0_n43_α]
 mov qword ptr [rbp + 896], rax
 jmp xchain0_n43_α
 xchain0_n52_β:
 jmp xchain0_n43_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n53_α:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n37_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain0_n56_α
 xchain0_n53_β:
 jmp xchain0_n37_α
 xchain0_n54_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 2048]
 mov rsi, qword ptr [rbp + 2056]
 mov rdx, qword ptr [rbp + 2080]
 mov rcx, qword ptr [rbp + 2088]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain0_n57_α
 xchain0_n54_β:
 jmp xchain0_n10_α
 xchain0_n55_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 call str_concat_d@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain0_n58_α
 xchain0_n55_β:
 jmp xchain0_n37_α
# IR_VAR
 xchain0_n56_α:
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 664], rax
 jmp xchain0_n59_α
 xchain0_n56_β:
 jmp xchain0_n37_α
 xchain0_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1568]
 mov rdx, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain0_n60_α
 xchain0_n57_β:
 jmp xchain0_n10_α
# IR_ASSIGN_VAR
 xchain0_n58_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, qword ptr [rbp + 288]
 mov rcx, qword ptr [rbp + 296]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n37_α
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain0_n61_α
 xchain0_n58_β:
 jmp xchain0_n37_α
# IR_LIT_STRING
 xchain0_n59_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx92_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain0_n62_α
 xchain0_n59_β:
 jmp xchain0_n37_α
.Lx92_0:
 .quad .Lx92_0_s
.Lx92_0_s:
 .string "("
 xchain0_n60_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1544], rax
 jmp xchain0_n10_α
xchain0_n60_β:
 jmp xchain0_n10_α
# IR_MOVE_LABEL
 xchain0_n61_α:
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 152], rax
 lea rax, [rip + xchain0_n32_α]
 mov qword ptr [rbp + 160], rax
 jmp xchain0_n63_α
 xchain0_n61_β:
 jmp xchain0_n37_α
 xchain0_n62_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 2048]
 mov rsi, qword ptr [rbp + 2056]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call str_concat_d@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain0_n65_α
 xchain0_n62_β:
 jmp xchain0_n37_α
 xchain0_n63_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
 jmp xchain0_n66_α
xchain0_n63_β:
 jmp xchain0_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n64_α:
 jmp qword ptr [rbp + 160]
 xchain0_n64_β:
 jmp xchain0_n37_α
# IR_VAR
 xchain0_n65_α:
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 792], rax
 jmp xchain0_n67_α
 xchain0_n65_β:
 jmp xchain0_n37_α
# IR_GEN_SCAN
 xchain0_n66_α:
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 104], rax
 lea rdi, [rbp + 64]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 64]
 mov r14, qword ptr [rbp + 72]
 mov r15, qword ptr [rbp + 80]
 jmp proc_tabulate_ω
 xchain0_n66_β:
 jmp proc_tabulate_ω
# IR_LIT_INTEGER
 xchain0_n67_α:
 mov qword ptr [rbp + 816], 6
 mov rax, qword ptr [rip + .Lx00001_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain0_n68_α
 xchain0_n67_β:
 jmp xchain0_n37_α
.Lx00001_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain0_n68_α:
 mov eax, dword ptr [rbp + 2064]
 cmp eax, 7
 je .Lx00002_1
 cmp eax, 6
 jne .Lx00002_0
 mov eax, dword ptr [rbp + 816]
 cmp eax, 6
 jne .Lx00002_0
.Lx00002_1:
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 760], rax
 jmp .Lx00002_2
.Lx00002_0:
 lea rdi, [rbp + 2064]
 lea rsi, [rbp + 816]
 lea rdx, [rbp + 752]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00002_2:
 jmp xchain0_n69_α
 xchain0_n68_β:
 jmp xchain0_n37_α
 xchain0_n69_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 752]
 cmp eax, 100
 je .Lx00003_0
 mov eax, dword ptr [rbp + 752]
 cmp eax, 6
 jne .Lx00003_2
.Lx00003_1:
 mov rax, qword ptr [rbp + 760]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 720], 6
 mov qword ptr [rbp + 728], rax
 jmp xchain0_n70_α
.Lx00003_0:
 mov rdi, qword ptr [rbp + 752]
 mov rsi, qword ptr [rbp + 760]
 mov rdx, qword ptr [rbp + 816]
 mov rcx, qword ptr [rbp + 824]
 mov r8d, 0
 lea r9, [rbp + 720]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00003_3
.Lx00003_2:
 mov rdi, qword ptr [rbp + 752]
 mov rsi, qword ptr [rbp + 760]
 mov rdx, qword ptr [rbp + 816]
 mov rcx, qword ptr [rbp + 824]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n37_α
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
.Lx00003_3:
 jmp xchain0_n70_α
 xchain0_n69_β:
 jmp xchain0_n37_α
 xchain0_n70_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 624]
 mov rsi, qword ptr [rbp + 632]
 mov rdx, qword ptr [rbp + 720]
 mov rcx, qword ptr [rbp + 728]
 call str_concat_d@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain0_n71_α
 xchain0_n70_β:
 jmp xchain0_n37_α
# IR_LIT_STRING
 xchain0_n71_α:
 mov qword ptr [rbp + 848], 1
 mov rax, qword ptr [rip + .Lx00004_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain0_n72_α
 xchain0_n71_β:
 jmp xchain0_n37_α
.Lx00004_0:
 .quad .Lx00004_0_s
.Lx00004_0_s:
 .string "), "
 xchain0_n72_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 848]
 mov rcx, qword ptr [rbp + 856]
 call str_concat_d@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain0_n73_α
 xchain0_n72_β:
 jmp xchain0_n37_α
# IR_ASSIGN_VAR
 xchain0_n73_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 560]
 mov rcx, qword ptr [rbp + 568]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n37_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain0_n74_α
 xchain0_n73_β:
 jmp xchain0_n37_α
 xchain0_n74_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 440], rax
 jmp xchain0_n75_α
xchain0_n74_β:
 jmp xchain0_n37_α
# IR_MOVE_LABEL
 xchain0_n75_α:
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 152], rax
 lea rax, [rip + xchain0_n32_α]
 mov qword ptr [rbp + 160], rax
 jmp xchain0_n63_α
 xchain0_n75_β:
 jmp xchain0_n37_α
proc_tabulate_res:
add rsp, 8
pop rbp
proc_tabulate_β:
jmp proc_tabulate_ω
proc_tabulate_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 2104]
lea rsp, [rbp + 2128]
mov rbp, [rbp + 2120]
jmp rax
proc_tabulate_ω:
mov rax, [rbp + 2112]
lea rsp, [rbp + 2128]
mov rbp, [rbp + 2120]
jmp rax
  .globl proc_format_α
proc_format_α:
#=======================================================================================================================
    .global proc_format_α
    .global proc_format_β
    .global proc_format_γ
    .global proc_format_ω
  sub rsp, 1520
  mov [rsp + 1496], rcx
  mov [rsp + 1504], rdx
  mov [rsp + 1512], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1488
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1464], rsp
  mov rdi, rsp
  mov esi, 1488
  call rt_jmp_frame_lexprep@PLT
proc_format_α_body:
# IR_VAR
 xchain00005_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp xchain00005_n1_α
 xchain00005_n0_β:
 jmp xchain00005_n2_α
# IR_UNOP
 xchain00005_n1_α:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 call rt_size_d@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00005_n3_α
 xchain00005_n1_β:
 jmp xchain00005_n2_α
# IR_VAR
 xchain00005_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 120], rax
 jmp xchain00005_n4_α
 xchain00005_n2_β:
 jmp proc_format_ω
# IR_VAR
 xchain00005_n3_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00005_n5_α
 xchain00005_n3_β:
 jmp xchain00005_n2_α
# IR_LIT_INTEGER
 xchain00005_n4_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00006_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00005_n6_α
 xchain00005_n4_β:
 jmp proc_format_ω
.Lx00006_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00005_n5_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx00007_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain00005_n7_α
 xchain00005_n5_β:
 jmp xchain00005_n2_α
.Lx00007_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00005_n6_α:
 mov qword ptr [rbp + 176], 6
 mov rax, qword ptr [rip + .Lx00008_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00005_n8_α
 xchain00005_n6_β:
 jmp proc_format_ω
.Lx00008_0:
 .quad 18446744073709551614
# IR_COERCE_NUMERIC
 xchain00005_n7_α:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 7
 je .Lx00009_1
 cmp eax, 6
 jne .Lx00009_0
 mov eax, dword ptr [rbp + 400]
 cmp eax, 6
 jne .Lx00009_0
.Lx00009_1:
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
 jmp .Lx00009_2
.Lx00009_0:
 lea rdi, [rbp + 368]
 lea rsi, [rbp + 400]
 lea rdx, [rbp + 336]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00009_2:
 jmp xchain00005_n9_α
 xchain00005_n7_β:
 jmp xchain00005_n2_α
# IR_SUBSCRIPT section
 xchain00005_n8_α:
 mov rdi, qword ptr [rbp + 112]
 mov rsi, qword ptr [rbp + 120]
 mov rdx, qword ptr [rbp + 144]
 mov rcx, qword ptr [rbp + 152]
 mov r8, qword ptr [rbp + 176]
 mov r9, qword ptr [rbp + 184]
 call subscript_get2@PLT
 cmp eax, 99
 je proc_format_ω
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain00005_n10_α
 xchain00005_n8_β:
 jmp proc_format_ω
 xchain00005_n9_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 336]
 cmp eax, 100
 je .Lx00010_0
 mov eax, dword ptr [rbp + 336]
 cmp eax, 6
 jne .Lx00010_2
.Lx00010_1:
 mov rax, qword ptr [rbp + 344]
 mov rcx, 2
 add rax, rcx
 mov qword ptr [rbp + 304], 6
 mov qword ptr [rbp + 312], rax
 jmp xchain00005_n11_α
.Lx00010_0:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 mov rdx, qword ptr [rbp + 400]
 mov rcx, qword ptr [rbp + 408]
 mov r8d, 0
 lea r9, [rbp + 304]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00010_3
.Lx00010_2:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 mov rdx, qword ptr [rbp + 400]
 mov rcx, qword ptr [rbp + 408]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00005_n2_α
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
.Lx00010_3:
 jmp xchain00005_n11_α
 xchain00005_n9_β:
 jmp xchain00005_n2_α
 xchain00005_n10_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+48]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 56], rax
  .section .rodata
  .Lrkfn130: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn130]
 lea rsi, [rbp + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_format_ω
 jmp proc_format_ω
 xchain00005_n10_β:
 jmp proc_format_ω
 xchain00005_n11_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 240]
 cmp eax, 100
 je .Lx00011_0
 mov eax, dword ptr [rbp + 304]
 cmp eax, 100
 je .Lx00011_0
 mov eax, dword ptr [rbp + 240]
 cmp eax, 6
 jne .Lx00011_2
 mov eax, dword ptr [rbp + 304]
 cmp eax, 6
 jne .Lx00011_2
.Lx00011_1:
 mov rax, qword ptr [rbp + 248]
 mov rcx, qword ptr [rbp + 312]
 cmp rax, rcx
 jle xchain00005_n2_α
 mov rcx, qword ptr [rbp + 304]
 mov qword ptr [rbp + 208], rcx
 mov rcx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 216], rcx
 jmp xchain00005_n12_α
.Lx00011_0:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 mov r8d, 7
 lea r9, [rbp + 208]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00011_1
 cmp eax, 1
 je xchain00005_n2_α
 jmp xchain00005_n12_α
.Lx00011_2:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00005_n2_α
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 216], rax
 jmp xchain00005_n12_α
 xchain00005_n11_β:
 jmp xchain00005_n2_α
# IR_VAR
 xchain00005_n12_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain00005_n13_α
 xchain00005_n12_β:
 jmp xchain00005_n14_α
# IR_LIT_INTEGER
 xchain00005_n13_α:
 mov qword ptr [rbp + 1424], 6
 mov rax, qword ptr [rip + .Lx00012_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain00005_n15_α
 xchain00005_n13_β:
 jmp xchain00005_n14_α
.Lx00012_0:
 .quad 2
# IR_VAR_REF
 xchain00005_n14_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain00005_n16_α
 xchain00005_n14_β:
 jmp xchain00005_n14_α
# IR_COERCE_NUMERIC
 xchain00005_n15_α:
 mov eax, dword ptr [rbp + 1392]
 cmp eax, 7
 je .Lx00013_1
 cmp eax, 6
 jne .Lx00013_0
 mov eax, dword ptr [rbp + 1424]
 cmp eax, 6
 jne .Lx00013_0
.Lx00013_1:
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1368], rax
 jmp .Lx00013_2
.Lx00013_0:
 lea rdi, [rbp + 1392]
 lea rsi, [rbp + 1424]
 lea rdx, [rbp + 1360]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00013_2:
 jmp xchain00005_n17_α
 xchain00005_n15_β:
 jmp xchain00005_n14_α
# IR_VAR
 xchain00005_n16_α:
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1176], rax
 jmp xchain00005_n18_α
 xchain00005_n16_β:
 jmp xchain00005_n14_α
 xchain00005_n17_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1360]
 cmp eax, 100
 je .Lx00014_0
 mov eax, dword ptr [rbp + 1360]
 cmp eax, 6
 jne .Lx00014_2
.Lx00014_1:
 mov rax, qword ptr [rbp + 1368]
 mov rcx, 2
 add rax, rcx
 mov qword ptr [rbp + 1328], 6
 mov qword ptr [rbp + 1336], rax
 jmp xchain00005_n19_α
.Lx00014_0:
 mov rdi, qword ptr [rbp + 1360]
 mov rsi, qword ptr [rbp + 1368]
 mov rdx, qword ptr [rbp + 1424]
 mov rcx, qword ptr [rbp + 1432]
 mov r8d, 0
 lea r9, [rbp + 1328]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00014_3
.Lx00014_2:
 mov rdi, qword ptr [rbp + 1360]
 mov rsi, qword ptr [rbp + 1368]
 mov rdx, qword ptr [rbp + 1424]
 mov rcx, qword ptr [rbp + 1432]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00005_n14_α
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
.Lx00014_3:
 jmp xchain00005_n19_α
 xchain00005_n17_β:
 jmp xchain00005_n14_α
# IR_LIT_INTEGER
 xchain00005_n18_α:
 mov qword ptr [rbp + 1200], 6
 mov rax, qword ptr [rip + .Lx00015_0]
 mov qword ptr [rbp + 1208], rax
 jmp xchain00005_n20_α
 xchain00005_n18_β:
 jmp xchain00005_n14_α
.Lx00015_0:
 .quad 1
 xchain00005_n19_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1328]
 mov rdx, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain00005_n14_α
 xchain00005_n19_β:
 jmp xchain00005_n14_α
# IR_COERCE_NUMERIC
 xchain00005_n20_α:
 mov eax, dword ptr [rbp + 1472]
 cmp eax, 7
 je .Lx00016_1
 cmp eax, 6
 jne .Lx00016_0
 mov eax, dword ptr [rbp + 1200]
 cmp eax, 6
 jne .Lx00016_0
.Lx00016_1:
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1144], rax
 jmp .Lx00016_2
.Lx00016_0:
 lea rdi, [rbp + 1472]
 lea rsi, [rbp + 1200]
 lea rdx, [rbp + 1136]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00016_2:
 jmp xchain00005_n21_α
 xchain00005_n20_β:
 jmp xchain00005_n14_α
 xchain00005_n21_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 100
 je .Lx00017_0
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 6
 jne .Lx00017_2
.Lx00017_1:
 mov rax, qword ptr [rbp + 1144]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 1104], 6
 mov qword ptr [rbp + 1112], rax
 jmp xchain00005_n22_α
.Lx00017_0:
 mov rdi, qword ptr [rbp + 1136]
 mov rsi, qword ptr [rbp + 1144]
 mov rdx, qword ptr [rbp + 1200]
 mov rcx, qword ptr [rbp + 1208]
 mov r8d, 1
 lea r9, [rbp + 1104]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00017_3
.Lx00017_2:
 mov rdi, qword ptr [rbp + 1136]
 mov rsi, qword ptr [rbp + 1144]
 mov rdx, qword ptr [rbp + 1200]
 mov rcx, qword ptr [rbp + 1208]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00005_n14_α
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
.Lx00017_3:
 jmp xchain00005_n22_α
 xchain00005_n21_β:
 jmp xchain00005_n14_α
 xchain00005_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1104]
 mov rdx, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain00005_n23_α
 xchain00005_n22_β:
 jmp xchain00005_n14_α
# IR_SUBSCRIPT x[i] variable
 xchain00005_n23_α:
 mov rdi, qword ptr [rbp + 1056]
 mov rsi, qword ptr [rbp + 1064]
 mov rdx, qword ptr [rbp + 1088]
 mov rcx, qword ptr [rbp + 1096]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00005_n14_α
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain00005_n24_α
 xchain00005_n23_β:
 jmp xchain00005_n14_α
# IR_DEREF variable -> value
 xchain00005_n24_α:
 mov rdi, qword ptr [rbp + 1232]
 mov rsi, qword ptr [rbp + 1240]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00005_n14_α
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain00005_n25_α
 xchain00005_n24_β:
 jmp xchain00005_n14_α
# IR_LIT_STRING
 xchain00005_n25_α:
 mov qword ptr [rbp + 1280], 1
 mov rax, qword ptr [rip + .Lx00018_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain00005_n26_α
 xchain00005_n25_β:
 jmp xchain00005_n14_α
.Lx00018_0:
 .quad .Lx00018_0_s
.Lx00018_0_s:
 .string " "
 xchain00005_n26_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 1264]
 mov rsi, qword ptr [rbp + 1272]
 mov rdx, qword ptr [rbp + 1280]
 mov rcx, qword ptr [rbp + 1288]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00005_n14_α
 mov rdi, qword ptr [rbp + 1280]
 mov rsi, qword ptr [rbp + 1288]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain00005_n27_α
 xchain00005_n26_β:
 jmp xchain00005_n14_α
# IR_VAR
 xchain00005_n27_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 936], rax
 jmp xchain00005_n28_α
 xchain00005_n27_β:
 jmp xchain00005_n29_α
# IR_LIT_INTEGER
 xchain00005_n28_α:
 mov qword ptr [rbp + 960], 6
 mov rax, qword ptr [rip + .Lx00019_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00005_n30_α
 xchain00005_n28_β:
 jmp xchain00005_n29_α
.Lx00019_0:
 .quad 1
# IR_LIT_STRING
 xchain00005_n29_α:
 mov qword ptr [rbp + 560], 1
 mov rax, qword ptr [rip + .Lx00020_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00005_n31_α
 xchain00005_n29_β:
 jmp xchain00005_n0_α
.Lx00020_0:
 .quad .Lx00020_0_s
.Lx00020_0_s:
 .string " "
# IR_VAR
 xchain00005_n30_α:
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00005_n32_α
 xchain00005_n30_β:
 jmp xchain00005_n29_α
# IR_VAR
 xchain00005_n31_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00005_n33_α
 xchain00005_n31_β:
 jmp xchain00005_n0_α
# IR_SUBSCRIPT section
 xchain00005_n32_α:
 mov rdi, qword ptr [rbp + 928]
 mov rsi, qword ptr [rbp + 936]
 mov rdx, qword ptr [rbp + 960]
 mov rcx, qword ptr [rbp + 968]
 mov r8, qword ptr [rbp + 992]
 mov r9, qword ptr [rbp + 1000]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00005_n29_α
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain00005_n34_α
 xchain00005_n32_β:
 jmp xchain00005_n29_α
 xchain00005_n33_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+512]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 520], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+528]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 536], rax
  .section .rodata
  .Lrkfn160: .string "repl"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn160]
 lea rsi, [rbp + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain00005_n0_α
 jmp xchain00005_n35_α
 xchain00005_n33_β:
 jmp xchain00005_n0_α
 xchain00005_n34_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+896] -> [zr+864]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 872], rax
  .section .rodata
  .Lrkfn162: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn162]
 lea rsi, [rbp + 864]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain00005_n29_α
 jmp xchain00005_n29_α
 xchain00005_n34_β:
 jmp xchain00005_n29_α
# IR_VAR
 xchain00005_n35_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 664], rax
 jmp xchain00005_n36_α
 xchain00005_n35_β:
 jmp xchain00005_n0_α
# IR_VAR
 xchain00005_n36_α:
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 760], rax
 jmp xchain00005_n37_α
 xchain00005_n36_β:
 jmp xchain00005_n0_α
# IR_LIT_INTEGER
 xchain00005_n37_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx00021_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain00005_n38_α
 xchain00005_n37_β:
 jmp xchain00005_n0_α
.Lx00021_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00005_n38_α:
 mov eax, dword ptr [rbp + 1472]
 cmp eax, 7
 je .Lx00022_1
 cmp eax, 6
 jne .Lx00022_0
 mov eax, dword ptr [rbp + 784]
 cmp eax, 6
 jne .Lx00022_0
.Lx00022_1:
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 728], rax
 jmp .Lx00022_2
.Lx00022_0:
 lea rdi, [rbp + 1472]
 lea rsi, [rbp + 784]
 lea rdx, [rbp + 720]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00022_2:
 jmp xchain00005_n39_α
 xchain00005_n38_β:
 jmp xchain00005_n0_α
 xchain00005_n39_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 720]
 cmp eax, 100
 je .Lx00023_0
 mov eax, dword ptr [rbp + 720]
 cmp eax, 6
 jne .Lx00023_2
.Lx00023_1:
 mov rax, qword ptr [rbp + 728]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 688], 6
 mov qword ptr [rbp + 696], rax
 jmp xchain00005_n40_α
.Lx00023_0:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 784]
 mov rcx, qword ptr [rbp + 792]
 mov r8d, 0
 lea r9, [rbp + 688]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00023_3
.Lx00023_2:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 784]
 mov rcx, qword ptr [rbp + 792]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00005_n0_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
.Lx00023_3:
 jmp xchain00005_n40_α
 xchain00005_n39_β:
 jmp xchain00005_n0_α
# IR_LIT_INTEGER
 xchain00005_n40_α:
 mov qword ptr [rbp + 816], 6
 mov rax, qword ptr [rip + .Lx00024_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00005_n41_α
 xchain00005_n40_β:
 jmp xchain00005_n0_α
.Lx00024_0:
 .quad 0
# IR_SUBSCRIPT section
 xchain00005_n41_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 mov r8, qword ptr [rbp + 816]
 mov r9, qword ptr [rbp + 824]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00005_n0_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00005_n42_α
 xchain00005_n41_β:
 jmp xchain00005_n0_α
 xchain00005_n42_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call str_concat_d@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00005_n43_α
 xchain00005_n42_β:
 jmp xchain00005_n0_α
 xchain00005_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00005_n44_α
 xchain00005_n43_β:
 jmp xchain00005_n0_α
 xchain00005_n44_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 440], rax
 jmp xchain00005_n0_α
xchain00005_n44_β:
 jmp xchain00005_n0_α
proc_format_res:
add rsp, 8
pop rbp
proc_format_β:
jmp proc_format_ω
proc_format_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1496]
lea rsp, [rbp + 1520]
mov rbp, [rbp + 1512]
jmp rax
proc_format_ω:
mov rax, [rbp + 1504]
lea rsp, [rbp + 1520]
mov rbp, [rbp + 1512]
jmp rax
  .globl proc_item_α
proc_item_α:
#=======================================================================================================================
    .global proc_item_α
    .global proc_item_β
    .global proc_item_γ
    .global proc_item_ω
  sub rsp, 1280
  mov [rsp + 1256], rcx
  mov [rsp + 1264], rdx
  mov [rsp + 1272], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1248
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1192], rsp
  mov rdi, rsp
  mov esi, 1248
  call rt_jmp_frame_lexprep@PLT
proc_item_α_body:
lea rax, [rip + xchain00025_n33_β]
mov qword ptr [rbp + 1168], rax
 xchain00025_n0_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn178: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn178]
 lea rsi, [rbp + 48]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_item_ω
 jmp xchain00025_n1_α
 xchain00025_n0_β:
 jmp proc_item_ω
 xchain00025_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00025_n2_α
 xchain00025_n1_β:
 jmp proc_item_ω
# IR_VAR
 xchain00025_n2_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00025_n3_α
 xchain00025_n2_β:
 jmp xchain00025_n4_α
# IR_LIT_INTEGER
 xchain00025_n3_α:
 mov qword ptr [rbp + 1136], 6
 mov rax, qword ptr [rip + .Lx00026_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain00025_n5_α
 xchain00025_n3_β:
 jmp xchain00025_n4_α
.Lx00026_0:
 .quad 1
# IR_VAR
 xchain00025_n4_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain00025_n6_α
 xchain00025_n4_β:
 jmp xchain00025_n7_α
# IR_COERCE_NUMERIC
 xchain00025_n5_α:
 mov eax, dword ptr [rbp + 1104]
 cmp eax, 7
 je .Lx00027_1
 cmp eax, 6
 jne .Lx00027_0
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 6
 jne .Lx00027_0
.Lx00027_1:
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1080], rax
 jmp .Lx00027_2
.Lx00027_0:
 lea rdi, [rbp + 1104]
 lea rsi, [rbp + 1136]
 lea rdx, [rbp + 1072]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00027_2:
 jmp xchain00025_n8_α
 xchain00025_n5_β:
 jmp xchain00025_n4_α
# IR_LIT_INTEGER
 xchain00025_n6_α:
 mov qword ptr [rbp + 928], 6
 mov rax, qword ptr [rip + .Lx00028_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain00025_n9_α
 xchain00025_n6_β:
 jmp xchain00025_n7_α
.Lx00028_0:
 .quad 6
# IR_VAR
 xchain00025_n7_α:
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 728], rax
 jmp xchain00025_n10_α
 xchain00025_n7_β:
 jmp xchain00025_n11_α
 xchain00025_n8_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1072]
 cmp eax, 100
 je .Lx00029_0
 mov eax, dword ptr [rbp + 1072]
 cmp eax, 6
 jne .Lx00029_2
.Lx00029_1:
 mov rax, qword ptr [rbp + 1080]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 1040], 6
 mov qword ptr [rbp + 1048], rax
 jmp xchain00025_n12_α
.Lx00029_0:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, qword ptr [rbp + 1136]
 mov rcx, qword ptr [rbp + 1144]
 mov r8d, 0
 lea r9, [rbp + 1040]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00029_3
.Lx00029_2:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, qword ptr [rbp + 1136]
 mov rcx, qword ptr [rbp + 1144]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00025_n4_α
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
.Lx00029_3:
 jmp xchain00025_n12_α
 xchain00025_n8_β:
 jmp xchain00025_n4_α
 xchain00025_n9_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+896] -> [zr+848]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 856], rax
# marshal arg1 = producer-box slot [zr+928] -> [zr+864]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 872], rax
  .section .rodata
  .Lrkfn190: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn190]
 lea rsi, [rbp + 848]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain00025_n7_α
 jmp xchain00025_n13_α
 xchain00025_n9_β:
 jmp xchain00025_n7_α
 xchain00025_n10_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+720] -> [zr+688]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 696], rax
  .section .rodata
  .Lrkfn192: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn192]
 lea rsi, [rbp + 688]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain00025_n11_α
 jmp xchain00025_n14_α
 xchain00025_n10_β:
 jmp xchain00025_n11_α
# IR_LIT_INTEGER
 xchain00025_n11_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx00030_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00025_n15_α
 xchain00025_n11_β:
 jmp xchain00025_n17_α
.Lx00030_0:
 .quad 1
# IR_ASSIGN gva
 xchain00025_n12_α:
 mov rax, qword ptr [rbp + 1040]
 mov rdx, qword ptr [rbp + 1048]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain00025_n4_α
 xchain00025_n12_β:
 jmp xchain00025_n4_α
# IR_LIT_STRING
 xchain00025_n13_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx00031_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00025_n16_α
 xchain00025_n13_β:
 jmp xchain00025_n7_α
.Lx00031_0:
 .quad .Lx00031_0_s
.Lx00031_0_s:
 .string "  "
 xchain00025_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 672]
 mov rdx, qword ptr [rbp + 680]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00025_n11_α
 xchain00025_n14_β:
 jmp xchain00025_n11_α
 xchain00025_n15_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 624]
 mov rdx, qword ptr [rbp + 632]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00025_n17_α
 xchain00025_n15_β:
 jmp xchain00025_n17_α
# IR_VAR
 xchain00025_n16_α:
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00025_n18_α
 xchain00025_n16_β:
 jmp xchain00025_n7_α
# IR_VAR
 xchain00025_n17_α:
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 584], rax
 jmp xchain00025_n19_α
 xchain00025_n17_β:
 jmp xchain00025_n0_α
 xchain00025_n18_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+768]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 776], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+784]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 792], rax
# marshal arg2 = producer-box slot [zr+992] -> [zr+800]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 808], rax
  .section .rodata
  .Lrkfn203: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn203]
 lea rsi, [rbp + 768]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain00025_n7_α
 jmp xchain00025_n7_α
 xchain00025_n18_β:
 jmp xchain00025_n7_α
# IR_GEN_SCAN
 xchain00025_n19_α:
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00025_n20_α
 xchain00025_n19_β:
 jmp xchain00025_n0_α
# IR_LIT_CHARSET
 xchain00025_n20_α:
 mov qword ptr [rbp + 224], 1
 mov dword ptr [rbp + 228], -1
 mov rax, qword ptr [rip + .Lx00032_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00025_n21_α
 xchain00025_n20_β:
 jmp xchain00025_n24_α
.Lx00032_0:
 .quad .Lx00032_0_s
.Lx00032_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
# IR_SCAN_UPTO
 xchain00025_n21_α:
 mov qword ptr [rbp + 208], r14
.Lx00033_0:
 mov rax, qword ptr [rbp + 208]
 cmp rax, r15
 jge xchain00025_n24_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00033_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00033_1
 mov qword ptr [rbp + 192], 6
 add rax, 1
 mov qword ptr [rbp + 200], rax
 jmp xchain00025_n22_α
.Lx00033_1:
 inc qword ptr [rbp + 208]
 jmp .Lx00033_0
 xchain00025_n21_β:
 inc qword ptr [rbp + 208]
 jmp .Lx00033_0
.Lx00033_2:
 .quad .Lx00033_2_s
.Lx00033_2_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
# IR_SCAN_TAB
 xchain00025_n22_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 200]
 cmp rax, 1
 jge .Lx00034_0
 add rax, r15
 add rax, 1
.Lx00034_0:
 cmp rax, 1
 jge .Lx00034_239
 add rsp, 16
 jmp xchain00025_n24_α
.Lx00034_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00034_240
 add rsp, 16
 jmp xchain00025_n24_α
.Lx00034_240:
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
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00025_n23_α
 xchain00025_n22_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00025_n24_α
# IR_LIT_CHARSET
 xchain00025_n23_α:
 mov qword ptr [rbp + 544], 1
 mov dword ptr [rbp + 548], -1
 mov rax, qword ptr [rip + .Lx00035_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00025_n25_α
 xchain00025_n23_β:
 jmp xchain00025_n28_α
.Lx00035_0:
 .quad .Lx00035_0_s
.Lx00035_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
# IR_GEN_SCAN
 xchain00025_n24_α:
 lea rdi, [rbp + 96]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 96]
 mov r14, qword ptr [rbp + 104]
 mov r15, qword ptr [rbp + 112]
 jmp xchain00025_n0_α
 xchain00025_n24_β:
 jmp xchain00025_n0_α
# IR_SCAN_MANY
 xchain00025_n25_α:
 mov eax, r14d
.Lx00036_0:
 cmp eax, r15d
 jge .Lx00036_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00036_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00036_1
 add eax, 1
 jmp .Lx00036_0
.Lx00036_1:
 cmp eax, r14d
 je xchain00025_n28_α
 mov qword ptr [rbp + 512], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 520], rcx
 jmp xchain00025_n26_α
 xchain00025_n25_β:
 jmp xchain00025_n28_α
.Lx00036_2:
 .quad .Lx00036_2_s
.Lx00036_2_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
# IR_SCAN_TAB
 xchain00025_n26_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 520]
 cmp rax, 1
 jge .Lx00037_0
 add rax, r15
 add rax, 1
.Lx00037_0:
 cmp rax, 1
 jge .Lx00037_239
 add rsp, 16
 jmp xchain00025_n28_α
.Lx00037_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00037_240
 add rsp, 16
 jmp xchain00025_n28_α
.Lx00037_240:
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
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00025_n27_α
 xchain00025_n26_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00025_n28_α
 xchain00025_n27_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00025_n28_α
 xchain00025_n27_β:
 jmp xchain00025_n28_α
# IR_VAR
 xchain00025_n28_α:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 408], rax
 jmp xchain00025_n29_α
 xchain00025_n28_β:
 jmp xchain00025_n20_α
# IR_UNOP
 xchain00025_n29_α:
 mov rdi, qword ptr [rbp + 1216]
 mov rsi, qword ptr [rbp + 1224]
 call rt_size_d@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00025_n30_α
 xchain00025_n29_β:
 jmp xchain00025_n20_α
# IR_LIT_INTEGER
 xchain00025_n30_α:
 mov qword ptr [rbp + 432], 6
 mov rax, qword ptr [rip + .Lx00038_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00025_n31_α
 xchain00025_n30_β:
 jmp xchain00025_n20_α
.Lx00038_0:
 .quad 3
 xchain00025_n31_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 368]
 cmp eax, 100
 je .Lx00039_0
 mov eax, dword ptr [rbp + 432]
 cmp eax, 100
 je .Lx00039_0
 mov eax, dword ptr [rbp + 368]
 cmp eax, 6
 jne .Lx00039_2
 mov eax, dword ptr [rbp + 432]
 cmp eax, 6
 jne .Lx00039_2
.Lx00039_1:
 mov rax, qword ptr [rbp + 376]
 mov rcx, qword ptr [rbp + 440]
 cmp rax, rcx
 jl xchain00025_n20_α
 mov rcx, qword ptr [rbp + 432]
 mov qword ptr [rbp + 336], rcx
 mov rcx, qword ptr [rbp + 440]
 mov qword ptr [rbp + 344], rcx
 jmp xchain00025_n32_α
.Lx00039_0:
 mov rdi, qword ptr [rbp + 368]
 mov rsi, qword ptr [rbp + 376]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 mov r8d, 8
 lea r9, [rbp + 336]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00039_1
 cmp eax, 1
 je xchain00025_n20_α
 jmp xchain00025_n32_α
.Lx00039_2:
 mov rdi, qword ptr [rbp + 368]
 mov rsi, qword ptr [rbp + 376]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 mov r8d, 8
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00025_n20_α
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 344], rax
 jmp xchain00025_n32_α
 xchain00025_n31_β:
 jmp xchain00025_n20_α
# IR_VAR
 xchain00025_n32_α:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 312], rax
 jmp xchain00025_n33_α
 xchain00025_n32_β:
 jmp xchain00025_n20_α
# IR_SUSPEND yield+resume
 xchain00025_n33_α:
 lea rax, [rip + xchain00025_n33_β]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 8], rax
 jmp proc_item_γ
 xchain00025_n33_β:
 jmp xchain00025_n34_α
# IR_MOVE_LABEL
 xchain00025_n34_α:
 lea rax, [rip + xchain00025_n20_α]
 mov qword ptr [rbp + 288], rax
 jmp xchain00025_n35_α
 xchain00025_n34_β:
 jmp xchain00025_n20_α
 xchain00025_n35_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 264], rax
 jmp xchain00025_n20_α
xchain00025_n35_β:
 jmp xchain00025_n20_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00025_n36_α:
 jmp qword ptr [rbp + 288]
 xchain00025_n36_β:
 jmp xchain00025_n20_α
proc_item_res:
add rsp, 8
pop rbp
proc_item_β:
jmp qword ptr [rbp + 1168]
proc_item_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_item_res]
push rax
mov rax, [rbp + 1256]
mov rbp, [rbp + 1272]
jmp rax
proc_item_ω:
mov rax, [rbp + 1264]
lea rsp, [rbp + 1280]
mov rbp, [rbp + 1272]
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
 xchain00040_n0_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain00040_n1_α
 xchain00040_n0_β:
 jmp xchain00040_n3_α
# IR_NULLTEST_VAR
 xchain00040_n1_α:
 mov eax, dword ptr [rbp + 3424]
 cmp eax, 99
 je xchain00040_n3_α
 mov rdi, qword ptr [rbp + 3424]
 mov rsi, qword ptr [rbp + 3432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00040_n3_α
 cmp eax, 0
 jne xchain00040_n3_α
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3464], rax
 jmp xchain00040_n2_α
 xchain00040_n1_β:
 jmp xchain00040_n3_α
# IR_LIT_CHARSET
 xchain00040_n2_α:
 mov qword ptr [rbp + 3552], 1
 mov dword ptr [rbp + 3556], -1
 mov rax, qword ptr [rip + .Lx00041_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain00040_n4_α
 xchain00040_n2_β:
 jmp xchain00040_n3_α
.Lx00041_0:
 .quad .Lx00041_0_s
.Lx00041_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00040_n3_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn239: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn239]
 lea rsi, [rbp + 3408]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 cmp eax, 99
 je xchain00040_n6_α
 jmp xchain00040_n5_α
 xchain00040_n3_β:
 jmp xchain00040_n6_α
 xchain00040_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3552] -> [zr+3520]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3520], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3528], rax
  .section .rodata
  .Lrkfn241: .string "string"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn241]
 lea rsi, [rbp + 3520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 cmp eax, 99
 je xchain00040_n3_α
 jmp xchain00040_n7_α
 xchain00040_n4_β:
 jmp xchain00040_n3_α
 xchain00040_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3392]
 mov rdx, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain00040_n6_α
 xchain00040_n5_β:
 jmp xchain00040_n6_α
# IR_MAKE_LIST
 xchain00040_n6_α:
 lea rdi, [rbp + 3376]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain00040_n8_α
 xchain00040_n6_β:
 jmp xchain00040_n9_α
# IR_ASSIGN_VAR
 xchain00040_n7_α:
 mov rdi, qword ptr [rbp + 3456]
 mov rsi, qword ptr [rbp + 3464]
 mov rdx, qword ptr [rbp + 3504]
 mov rcx, qword ptr [rbp + 3512]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00040_n3_α
 mov qword ptr [rbp + 3488], rax
 mov qword ptr [rbp + 3496], rdx
 jmp xchain00040_n3_α
 xchain00040_n7_β:
 jmp xchain00040_n3_α
 xchain00040_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3360]
 mov rdx, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain00040_n9_α
 xchain00040_n8_β:
 jmp xchain00040_n9_α
# IR_VAR
 xchain00040_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00040_n10_α
 xchain00040_n9_β:
 jmp xchain00040_n11_α
 xchain00040_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn250: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn250]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00040_n11_α
 jmp xchain00040_n12_α
 xchain00040_n10_β:
 jmp xchain00040_n11_α
# IR_VAR
 xchain00040_n11_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 152], rax
 jmp xchain00040_n13_α
 xchain00040_n11_β:
 jmp xchain00040_n14_α
 xchain00040_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00040_n15_α
 xchain00040_n12_β:
 jmp xchain00040_n11_α
# IR_VAR
 xchain00040_n13_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 232], rax
 jmp xchain00040_n16_α
 xchain00040_n13_β:
 jmp xchain00040_n14_α
# IR_VAR
 xchain00040_n14_α:
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 56], rax
 jmp xchain00040_n17_α
 xchain00040_n14_β:
 jmp proc_options_ω
# IR_VAR
 xchain00040_n15_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3320], rax
 jmp xchain00040_n18_α
 xchain00040_n15_β:
 jmp xchain00040_n9_α
 xchain00040_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn261: .string "pull"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn261]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00040_n14_α
 jmp xchain00040_n19_α
 xchain00040_n16_β:
 jmp xchain00040_n14_α
# IR_RETURN
 xchain00040_n17_α:
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_options_γ
# IR_GEN_SCAN
 xchain00040_n18_α:
 mov rdi, qword ptr [rbp + 3312]
 mov rsi, qword ptr [rbp + 3320]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00040_n20_α
 xchain00040_n18_β:
 jmp xchain00040_n9_α
 xchain00040_n19_α:
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
  .Lrkfn266: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn266]
 lea rsi, [rbp + 96]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00040_n14_α
 jmp xchain00040_n11_α
 xchain00040_n19_β:
 jmp xchain00040_n14_α
# IR_LIT_STRING
 xchain00040_n20_α:
 mov qword ptr [rbp + 3280], 1
 mov rax, qword ptr [rip + .Lx00042_0]
 mov qword ptr [rbp + 3288], rax
 jmp xchain00040_n21_α
 xchain00040_n20_β:
 jmp xchain00040_n23_α
.Lx00042_0:
 .quad .Lx00042_0_s
.Lx00042_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00040_n21_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00043_239
 add rsp, 16
 jmp xchain00040_n23_α
.Lx00043_239:
 mov rdi, qword ptr [rip + .Lx00043_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00043_240
 add rsp, 16
 jmp xchain00040_n23_α
.Lx00043_240:
 mov qword ptr [rbp + 3248], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 3256], rax
 jmp xchain00040_n22_α
 xchain00040_n21_β:
 add rsp, 16
 jmp xchain00040_n23_α
.Lx00043_0:
 .quad .Lx00043_0_s
.Lx00043_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00040_n22_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 3256]
 cmp rax, 1
 jge .Lx00044_0
 add rax, r15
 add rax, 1
.Lx00044_0:
 cmp rax, 1
 jge .Lx00044_239
 add rsp, 16
 jmp xchain00040_n23_α
.Lx00044_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00044_240
 add rsp, 16
 jmp xchain00040_n23_α
.Lx00044_240:
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
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain00040_n24_α
 xchain00040_n22_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00040_n23_α
# IR_VAR
 xchain00040_n23_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 3048], rax
 jmp xchain00040_n25_α
 xchain00040_n23_β:
 jmp xchain00040_n29_α
# IR_LIT_INTEGER
 xchain00040_n24_α:
 mov qword ptr [rbp + 3184], 6
 mov rax, qword ptr [rip + .Lx00045_0]
 mov qword ptr [rbp + 3192], rax
 jmp xchain00040_n27_α
 xchain00040_n24_β:
 jmp xchain00040_n30_α
.Lx00045_0:
 .quad 0
# IR_VAR
 xchain00040_n25_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3072], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3080], rax
 jmp xchain00040_n28_α
 xchain00040_n25_β:
 jmp xchain00040_n29_α
 xchain00040_n26_α:
 jmp xchain00040_n29_α
xchain00040_n26_β:
 jmp xchain00040_n29_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00040_n27_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00046_0
 add rax, r15
 add rax, 1
.Lx00046_0:
 cmp rax, 1
 jl xchain00040_n30_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00040_n30_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00040_n30_α
 mov qword ptr [rbp + 3152], 6
 mov qword ptr [rbp + 3160], rax
 jmp xchain00040_n23_α
 xchain00040_n27_β:
 jmp xchain00040_n30_α
 xchain00040_n28_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3040] -> [zr+2992]
 mov rax, qword ptr [rbp + 3040]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 3048]
 mov qword ptr [rbp + 3000], rax
# marshal arg1 = producer-box slot [zr+3072] -> [zr+3008]
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 3016], rax
  .section .rodata
  .Lrkfn281: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn281]
 lea rsi, [rbp + 2992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 cmp eax, 99
 je xchain00040_n29_α
 jmp xchain00040_n31_α
 xchain00040_n28_β:
 jmp xchain00040_n29_α
# IR_GEN_SCAN
 xchain00040_n29_α:
 lea rdi, [rbp + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 368]
 mov r14, qword ptr [rbp + 376]
 mov r15, qword ptr [rbp + 384]
 jmp xchain00040_n9_α
 xchain00040_n29_β:
 jmp xchain00040_n9_α
# KEYWORD_null
 xchain00040_n30_α:
 mov qword ptr [rbp + 3120], 0
 mov qword ptr [rbp + 3128], 0
 jmp xchain00040_n32_α
 xchain00040_n30_β:
 jmp xchain00040_n23_α
# IR_MOVE_LABEL
 xchain00040_n31_α:
 mov rax, qword ptr [rbp + 2976]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 2984]
 mov qword ptr [rbp + 440], rax
 lea rax, [rip + xchain00040_n26_α]
 mov qword ptr [rbp + 448], rax
 jmp xchain00040_n33_α
 xchain00040_n31_β:
 jmp xchain00040_n29_α
 xchain00040_n32_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 3104], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3112], rax
 jmp xchain00040_n35_α
xchain00040_n32_β:
 jmp xchain00040_n23_α
 xchain00040_n33_α:
 jmp xchain00040_n36_α
xchain00040_n33_β:
 jmp xchain00040_n36_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00040_n34_α:
 jmp qword ptr [rbp + 448]
 xchain00040_n34_β:
 jmp xchain00040_n29_α
# IR_LIT_STRING
 xchain00040_n35_α:
 mov qword ptr [rbp + 2944], 1
 mov rax, qword ptr [rip + .Lx00047_0]
 mov qword ptr [rbp + 2952], rax
 jmp xchain00040_n37_α
 xchain00040_n35_β:
 jmp xchain00040_n39_α
.Lx00047_0:
 .quad .Lx00047_0_s
.Lx00047_0_s:
 .string "-"
# IR_GEN_SCAN
 xchain00040_n36_α:
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 408], rax
 lea rdi, [rbp + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 368]
 mov r14, qword ptr [rbp + 376]
 mov r15, qword ptr [rbp + 384]
 jmp xchain00040_n9_α
 xchain00040_n36_β:
 jmp xchain00040_n9_α
# IR_SCAN_MATCH
 xchain00040_n37_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00048_239
 add rsp, 16
 jmp xchain00040_n39_α
.Lx00048_239:
 mov rdi, qword ptr [rip + .Lx00048_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00048_240
 add rsp, 16
 jmp xchain00040_n39_α
.Lx00048_240:
 mov qword ptr [rbp + 2912], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 2920], rax
 jmp xchain00040_n38_α
 xchain00040_n37_β:
 add rsp, 16
 jmp xchain00040_n39_α
.Lx00048_0:
 .quad .Lx00048_0_s
.Lx00048_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00040_n38_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 2920]
 cmp rax, 1
 jge .Lx00049_0
 add rax, r15
 add rax, 1
.Lx00049_0:
 cmp rax, 1
 jge .Lx00049_239
 add rsp, 16
 jmp xchain00040_n39_α
.Lx00049_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00049_240
 add rsp, 16
 jmp xchain00040_n39_α
.Lx00049_240:
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
 jmp xchain00040_n40_α
 xchain00040_n38_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00040_n39_α
# IR_LIT_INTEGER
 xchain00040_n39_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00050_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00040_n41_α
 xchain00040_n39_β:
 jmp xchain00040_n29_α
.Lx00050_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00040_n40_α:
 mov qword ptr [rbp + 2848], 6
 mov rax, qword ptr [rip + .Lx00051_0]
 mov qword ptr [rbp + 2856], rax
 jmp xchain00040_n42_α
 xchain00040_n40_β:
 jmp xchain00040_n39_α
.Lx00051_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00040_n41_α:
 sub rsp, 16
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00052_239
 add rsp, 16
 jmp xchain00040_n29_α
.Lx00052_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00052_240
 add rsp, 16
 jmp xchain00040_n29_α
.Lx00052_240:
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
 jmp xchain00040_n43_α
 xchain00040_n41_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00040_n29_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00040_n42_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00053_0
 add rax, r15
 add rax, 1
.Lx00053_0:
 cmp rax, 1
 jl xchain00040_n39_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00040_n39_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00040_n39_α
 mov qword ptr [rbp + 2816], 6
 mov qword ptr [rbp + 2824], rax
 jmp xchain00040_n44_α
 xchain00040_n42_β:
 jmp xchain00040_n39_α
 xchain00040_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00040_n45_α
 xchain00040_n43_β:
 jmp xchain00040_n29_α
 xchain00040_n44_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2808], rax
 jmp xchain00040_n11_α
xchain00040_n44_β:
 jmp xchain00040_n39_α
# IR_VAR
 xchain00040_n45_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2680], rax
 jmp xchain00040_n47_α
 xchain00040_n45_β:
 jmp xchain00040_n48_α
 xchain00040_n46_α:
 jmp xchain00040_n11_α
xchain00040_n46_β:
 jmp xchain00040_n11_α
# IR_VAR
 xchain00040_n47_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 2712], rax
 jmp xchain00040_n49_α
 xchain00040_n47_β:
 jmp xchain00040_n48_α
# IR_LIT_STRING
 xchain00040_n48_α:
 mov qword ptr [rbp + 2464], 1
 mov rax, qword ptr [rip + .Lx00054_0]
 mov qword ptr [rbp + 2472], rax
 jmp xchain00040_n50_α
 xchain00040_n48_β:
 jmp xchain00040_n39_α
.Lx00054_0:
 .quad .Lx00054_0_s
.Lx00054_0_s:
 .string "Unrecognized option: -"
 xchain00040_n49_α:
# BOX CALL_GEN find(...) -> rt_call_arr_gen by-name [four-port generator; alpha zeroes resume cell, beta re-pumps invoke with persisted cell]
# marshal arg0 = producer-box slot [zr+2672] -> [zr+2624]
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2632], rax
# marshal arg1 = producer-box slot [zr+2704] -> [zr+2640]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2648], rax
 mov qword ptr [rbp + 2656], 0
.Lx00055_60:
  .section .rodata
  .Lbynamegenfn208: .string "find"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn208]
 lea rsi, [rbp + 2624]
 mov edx, 2
 lea rcx, [rbp + 2656]
 call rt_call_arr_gen@PLT
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 cmp eax, 99
 je xchain00040_n48_α
 jmp xchain00040_n51_α
 xchain00040_n49_β:
 jmp .Lx00055_60
# IR_VAR
 xchain00040_n50_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2504], rax
 jmp xchain00040_n52_α
 xchain00040_n50_β:
 jmp xchain00040_n39_α
# IR_LIT_INTEGER
 xchain00040_n51_α:
 mov qword ptr [rbp + 2736], 6
 mov rax, qword ptr [rip + .Lx00056_0]
 mov qword ptr [rbp + 2744], rax
 jmp xchain00040_n53_α
 xchain00040_n51_β:
 jmp xchain00040_n49_β
.Lx00056_0:
 .quad 1
 xchain00040_n52_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2464] -> [zr+2416]
 mov rax, qword ptr [rbp + 2464]
 mov qword ptr [rbp + 2416], rax
 mov rax, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 2424], rax
# marshal arg1 = producer-box slot [zr+2496] -> [zr+2432]
 mov rax, qword ptr [rbp + 2496]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 2504]
 mov qword ptr [rbp + 2440], rax
  .section .rodata
  .Lrkfn317: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn317]
 lea rsi, [rbp + 2416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 cmp eax, 99
 je xchain00040_n39_α
 jmp xchain00040_n54_α
 xchain00040_n52_β:
 jmp xchain00040_n39_α
# IR_COERCE_NUMERIC
 xchain00040_n53_α:
 mov eax, dword ptr [rbp + 2608]
 cmp eax, 7
 je .Lx00057_1
 cmp eax, 6
 jne .Lx00057_0
 mov eax, dword ptr [rbp + 2736]
 cmp eax, 6
 jne .Lx00057_0
.Lx00057_1:
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2584], rax
 jmp .Lx00057_2
.Lx00057_0:
 lea rdi, [rbp + 2608]
 lea rsi, [rbp + 2736]
 lea rdx, [rbp + 2576]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00057_2:
 jmp xchain00040_n55_α
 xchain00040_n53_β:
 jmp xchain00040_n48_α
# IR_MOVE_LABEL
 xchain00040_n54_α:
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 568], rax
 lea rax, [rip + xchain00040_n39_α]
 mov qword ptr [rbp + 576], rax
 jmp xchain00040_n39_α
 xchain00040_n54_β:
 jmp xchain00040_n39_α
 xchain00040_n55_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2576]
 cmp eax, 100
 je .Lx00058_0
 mov eax, dword ptr [rbp + 2576]
 cmp eax, 6
 jne .Lx00058_2
.Lx00058_1:
 mov rax, qword ptr [rbp + 2584]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 2544], 6
 mov qword ptr [rbp + 2552], rax
 jmp xchain00040_n57_α
.Lx00058_0:
 mov rdi, qword ptr [rbp + 2576]
 mov rsi, qword ptr [rbp + 2584]
 mov rdx, qword ptr [rbp + 2736]
 mov rcx, qword ptr [rbp + 2744]
 mov r8d, 0
 lea r9, [rbp + 2544]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00058_3
.Lx00058_2:
 mov rdi, qword ptr [rbp + 2576]
 mov rsi, qword ptr [rbp + 2584]
 mov rdx, qword ptr [rbp + 2736]
 mov rcx, qword ptr [rbp + 2744]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00040_n48_α
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
.Lx00058_3:
 jmp xchain00040_n57_α
 xchain00040_n55_β:
 jmp xchain00040_n48_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00040_n56_α:
 jmp qword ptr [rbp + 576]
 xchain00040_n56_β:
 jmp xchain00040_n39_α
 xchain00040_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2544]
 mov rdx, qword ptr [rbp + 2552]
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain00040_n58_α
 xchain00040_n57_β:
 jmp xchain00040_n48_α
# IR_VAR_REF
 xchain00040_n58_α:
 lea rdi, [rbp + 3600]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00040_n59_α
 xchain00040_n58_β:
 jmp xchain00040_n39_α
# IR_VAR
 xchain00040_n59_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 632], rax
 jmp xchain00040_n60_α
 xchain00040_n59_β:
 jmp xchain00040_n39_α
# IR_SUBSCRIPT x[i] variable
 xchain00040_n60_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00040_n39_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00040_n61_α
 xchain00040_n60_β:
 jmp xchain00040_n39_α
# IR_LIT_CHARSET
 xchain00040_n61_α:
 mov qword ptr [rbp + 2240], 1
 mov dword ptr [rbp + 2244], -1
 mov rax, qword ptr [rip + .Lx00059_0]
 mov qword ptr [rbp + 2248], rax
 jmp xchain00040_n62_α
 xchain00040_n61_β:
 jmp xchain00040_n65_α
.Lx00059_0:
 .quad .Lx00059_0_s
.Lx00059_0_s:
 .string "+.:"
# IR_VAR_REF
 xchain00040_n62_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain00040_n63_α
 xchain00040_n62_β:
 jmp xchain00040_n65_α
# IR_VAR
 xchain00040_n63_α:
 mov rax, qword ptr [rbp + 3712]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 2328], rax
 jmp xchain00040_n64_α
 xchain00040_n63_β:
 jmp xchain00040_n65_α
# IR_SUBSCRIPT x[i] variable
 xchain00040_n64_α:
 mov rdi, qword ptr [rbp + 2288]
 mov rsi, qword ptr [rbp + 2296]
 mov rdx, qword ptr [rbp + 2320]
 mov rcx, qword ptr [rbp + 2328]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00040_n65_α
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain00040_n66_α
 xchain00040_n64_β:
 jmp xchain00040_n65_α
# IR_LIT_INTEGER
 xchain00040_n65_α:
 mov qword ptr [rbp + 2144], 6
 mov rax, qword ptr [rip + .Lx00060_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain00040_n67_α
 xchain00040_n65_β:
 jmp xchain00040_n39_α
.Lx00060_0:
 .quad 1
# IR_DEREF variable -> value
 xchain00040_n66_α:
 mov rdi, qword ptr [rbp + 2352]
 mov rsi, qword ptr [rbp + 2360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00040_n65_α
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 jmp xchain00040_n68_α
 xchain00040_n66_β:
 jmp xchain00040_n65_α
# IR_MOVE_LABEL
 xchain00040_n67_α:
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 712], rax
 lea rax, [rip + xchain00040_n39_α]
 mov qword ptr [rbp + 720], rax
 jmp xchain00040_n69_α
 xchain00040_n67_β:
 jmp xchain00040_n39_α
 xchain00040_n68_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2384]
 mov rdx, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 jmp xchain00040_n71_α
 xchain00040_n68_β:
 jmp xchain00040_n65_α
# IR_ASSIGN_VAR
 xchain00040_n69_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00040_n39_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00040_n72_α
 xchain00040_n69_β:
 jmp xchain00040_n39_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00040_n70_α:
 jmp qword ptr [rbp + 720]
 xchain00040_n70_β:
 jmp xchain00040_n39_α
 xchain00040_n71_α:
# BOX CALL any(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+2240] -> [zr+2192]
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2200], rax
# marshal arg1 = producer-box slot [zr+2272] -> [zr+2208]
 mov rax, qword ptr [rbp + 2272]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 2216], rax
  .section .rodata
  .Lbynamefn230: .string "any"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn230]
 lea rsi, [rbp + 2192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je xchain00040_n65_α
 jmp xchain00040_n73_α
 xchain00040_n71_β:
 jmp xchain00040_n65_α
# IR_MOVE_LABEL
 xchain00040_n72_α:
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 568], rax
 lea rax, [rip + xchain00040_n70_α]
 mov qword ptr [rbp + 576], rax
 jmp xchain00040_n39_α
 xchain00040_n72_β:
 jmp xchain00040_n39_α
# IR_LIT_STRING
 xchain00040_n73_α:
 mov qword ptr [rbp + 2048], 1
 mov rax, qword ptr [rip + .Lx00061_0]
 mov qword ptr [rbp + 2056], rax
 jmp xchain00040_n74_α
 xchain00040_n73_β:
 jmp xchain00040_n77_α
.Lx00061_0:
 .quad .Lx00061_0_s
.Lx00061_0_s:
 .string ""
# IR_LIT_INTEGER
 xchain00040_n74_α:
 mov qword ptr [rbp + 2112], 6
 mov rax, qword ptr [rip + .Lx00062_0]
 mov qword ptr [rbp + 2120], rax
 jmp xchain00040_n75_α
 xchain00040_n74_β:
 jmp xchain00040_n77_α
.Lx00062_0:
 .quad 0
# IR_SCAN_TAB
 xchain00040_n75_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00063_0
 add rax, r15
 add rax, 1
.Lx00063_0:
 cmp rax, 1
 jge .Lx00063_239
 add rsp, 16
 jmp xchain00040_n77_α
.Lx00063_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00063_240
 add rsp, 16
 jmp xchain00040_n77_α
.Lx00063_240:
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
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain00040_n76_α
 xchain00040_n75_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00040_n77_α
 xchain00040_n76_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 2048]
 mov rsi, qword ptr [rbp + 2056]
 mov rdx, qword ptr [rbp + 2080]
 mov rcx, qword ptr [rbp + 2088]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00040_n77_α
 mov rdi, qword ptr [rbp + 2080]
 mov rsi, qword ptr [rbp + 2088]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain00040_n78_α
 xchain00040_n76_β:
 jmp xchain00040_n77_α
# IR_VAR
 xchain00040_n77_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1992], rax
 jmp xchain00040_n79_α
 xchain00040_n77_β:
 jmp xchain00040_n80_α
# IR_MOVE_LABEL
 xchain00040_n78_α:
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1784], rax
 lea rax, [rip + xchain00040_n77_α]
 mov qword ptr [rbp + 1792], rax
 jmp xchain00040_n81_α
 xchain00040_n78_β:
 jmp xchain00040_n85_α
 xchain00040_n79_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1960], rax
  .section .rodata
  .Lrkfn358: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn358]
 lea rsi, [rbp + 1952]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je xchain00040_n80_α
 jmp xchain00040_n83_α
 xchain00040_n79_β:
 jmp xchain00040_n80_α
# IR_LIT_STRING
 xchain00040_n80_α:
 mov qword ptr [rbp + 1872], 1
 mov rax, qword ptr [rip + .Lx00064_0]
 mov qword ptr [rbp + 1880], rax
 jmp xchain00040_n84_α
 xchain00040_n80_β:
 jmp xchain00040_n85_α
.Lx00064_0:
 .quad .Lx00064_0_s
.Lx00064_0_s:
 .string "No parameter following -"
 xchain00040_n81_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1776]
 mov rdx, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain00040_n85_α
 xchain00040_n81_β:
 jmp xchain00040_n85_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00040_n82_α:
 jmp qword ptr [rbp + 1792]
 xchain00040_n82_β:
 jmp xchain00040_n85_α
# IR_MOVE_LABEL
 xchain00040_n83_α:
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1784], rax
 lea rax, [rip + xchain00040_n80_α]
 mov qword ptr [rbp + 1792], rax
 jmp xchain00040_n81_α
 xchain00040_n83_β:
 jmp xchain00040_n85_α
# IR_VAR
 xchain00040_n84_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1912], rax
 jmp xchain00040_n86_α
 xchain00040_n84_β:
 jmp xchain00040_n85_α
# IR_VAR
 xchain00040_n85_α:
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 792], rax
 jmp xchain00040_n87_α
 xchain00040_n85_β:
 jmp xchain00040_n39_α
 xchain00040_n86_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1872] -> [zr+1824]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1832], rax
# marshal arg1 = producer-box slot [zr+1904] -> [zr+1840]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 1848], rax
  .section .rodata
  .Lrkfn370: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn370]
 lea rsi, [rbp + 1824]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 cmp eax, 99
 je xchain00040_n85_α
 jmp xchain00040_n88_α
 xchain00040_n86_β:
 jmp xchain00040_n85_α
# IR_LIT_STRING
 xchain00040_n87_α:
 mov qword ptr [rbp + 1616], 1
 mov rax, qword ptr [rip + .Lx00065_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00040_n89_α
 xchain00040_n87_β:
 jmp xchain00040_n39_α
.Lx00065_0:
 .quad .Lx00065_0_s
.Lx00065_0_s:
 .string ":"
# IR_MOVE_LABEL
 xchain00040_n88_α:
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1784], rax
 lea rax, [rip + xchain00040_n85_α]
 mov qword ptr [rbp + 1792], rax
 jmp xchain00040_n81_α
 xchain00040_n88_β:
 jmp xchain00040_n85_α
 xchain00040_n89_α:
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
  .Lrkfn375: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn375]
 lea rsi, [rbp + 1712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je xchain00040_n91_α
 jmp xchain00040_n90_α
 xchain00040_n89_β:
 jmp xchain00040_n91_α
# IR_VAR
 xchain00040_n90_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1656], rax
 jmp xchain00040_n92_α
 xchain00040_n90_β:
 jmp xchain00040_n39_α
# IR_LIT_STRING
 xchain00040_n91_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx00066_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain00040_n93_α
 xchain00040_n91_β:
 jmp xchain00040_n39_α
.Lx00066_0:
 .quad .Lx00066_0_s
.Lx00066_0_s:
 .string "+"
 xchain00040_n92_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1648]
 mov rdx, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00040_n94_α
 xchain00040_n92_β:
 jmp xchain00040_n39_α
 xchain00040_n93_α:
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
  .Lrkfn381: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn381]
 lea rsi, [rbp + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain00040_n96_α
 jmp xchain00040_n95_α
 xchain00040_n93_β:
 jmp xchain00040_n96_α
# IR_VAR
 xchain00040_n94_α:
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 760], rax
 jmp xchain00040_n97_α
 xchain00040_n94_β:
 jmp xchain00040_n39_α
# IR_VAR
 xchain00040_n95_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1512], rax
 jmp xchain00040_n98_α
 xchain00040_n95_β:
 jmp xchain00040_n99_α
# IR_LIT_STRING
 xchain00040_n96_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx00067_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00040_n00068_α
 xchain00040_n96_β:
 jmp xchain00040_n39_α
.Lx00067_0:
 .quad .Lx00067_0_s
.Lx00067_0_s:
 .string "."
 xchain00040_n97_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 744], rax
 jmp xchain00040_n00069_α
xchain00040_n97_β:
 jmp xchain00040_n39_α
 xchain00040_n98_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1472]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1480], rax
  .section .rodata
  .Lrkfn389: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn389]
 lea rsi, [rbp + 1472]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain00040_n99_α
 jmp xchain00040_n00070_α
 xchain00040_n98_β:
 jmp xchain00040_n99_α
# IR_LIT_STRING
 xchain00040_n99_α:
 mov qword ptr [rbp + 1360], 1
 mov rax, qword ptr [rip + .Lx00071_0]
 mov qword ptr [rbp + 1368], rax
 jmp xchain00040_n00072_α
 xchain00040_n99_β:
 jmp xchain00040_n39_α
.Lx00071_0:
 .quad .Lx00071_0_s
.Lx00071_0_s:
 .string "-"
 xchain00040_n00068_α:
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
  .Lrkfn392: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn392]
 lea rsi, [rbp + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain00040_n39_α
 jmp xchain00040_n00001_α
 xchain00040_n00068_β:
 jmp xchain00040_n39_α
# IR_MOVE_LABEL
 xchain00040_n00069_α:
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 712], rax
 lea rax, [rip + xchain00040_n39_α]
 mov qword ptr [rbp + 720], rax
 jmp xchain00040_n69_α
 xchain00040_n00069_β:
 jmp xchain00040_n39_α
# IR_MOVE_LABEL
 xchain00040_n00070_α:
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1256], rax
 lea rax, [rip + xchain00040_n99_α]
 mov qword ptr [rbp + 1264], rax
 jmp xchain00040_n00004_α
 xchain00040_n00070_β:
 jmp xchain00040_n39_α
# IR_VAR
 xchain00040_n00072_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1400], rax
 jmp xchain00040_n00002_α
 xchain00040_n00072_β:
 jmp xchain00040_n39_α
# IR_VAR
 xchain00040_n00001_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00040_n00003_α
 xchain00040_n00001_β:
 jmp xchain00040_n00073_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00040_n00074_α:
 jmp qword ptr [rbp + 1264]
 xchain00040_n00074_β:
 jmp xchain00040_n39_α
# IR_LIT_STRING
 xchain00040_n00002_α:
 mov qword ptr [rbp + 1424], 1
 mov rax, qword ptr [rip + .Lx00075_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain00040_n00076_α
 xchain00040_n00002_β:
 jmp xchain00040_n39_α
.Lx00075_0:
 .quad .Lx00075_0_s
.Lx00075_0_s:
 .string " needs numeric parameter"
 xchain00040_n00003_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1072]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1080], rax
  .section .rodata
  .Lrkfn405: .string "real"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn405]
 lea rsi, [rbp + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain00040_n00073_α
 jmp xchain00040_n00077_α
 xchain00040_n00003_β:
 jmp xchain00040_n00073_α
# IR_LIT_STRING
 xchain00040_n00073_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx00078_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00040_n00079_α
 xchain00040_n00073_β:
 jmp xchain00040_n39_α
.Lx00078_0:
 .quad .Lx00078_0_s
.Lx00078_0_s:
 .string "-"
 xchain00040_n00004_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain00040_n94_α
 xchain00040_n00004_β:
 jmp xchain00040_n39_α
 xchain00040_n00076_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1296]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1304], rax
# marshal arg1 = producer-box slot [zr+1392] -> [zr+1312]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1320], rax
# marshal arg2 = producer-box slot [zr+1424] -> [zr+1328]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1336], rax
  .section .rodata
  .Lrkfn409: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn409]
 lea rsi, [rbp + 1296]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain00040_n39_α
 jmp xchain00040_n00080_α
 xchain00040_n00076_β:
 jmp xchain00040_n39_α
# IR_MOVE_LABEL
 xchain00040_n00077_α:
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 856], rax
 lea rax, [rip + xchain00040_n00073_α]
 mov qword ptr [rbp + 864], rax
 jmp xchain00040_n00081_α
 xchain00040_n00077_β:
 jmp xchain00040_n39_α
# IR_VAR
 xchain00040_n00079_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00040_n00005_α
 xchain00040_n00079_β:
 jmp xchain00040_n39_α
# IR_MOVE_LABEL
 xchain00040_n00080_α:
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1256], rax
 lea rax, [rip + xchain00040_n39_α]
 mov qword ptr [rbp + 1264], rax
 jmp xchain00040_n00004_α
 xchain00040_n00080_β:
 jmp xchain00040_n39_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00040_n00082_α:
 jmp qword ptr [rbp + 864]
 xchain00040_n00082_β:
 jmp xchain00040_n39_α
# IR_LIT_STRING
 xchain00040_n00005_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx00083_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00040_n00084_α
 xchain00040_n00005_β:
 jmp xchain00040_n39_α
.Lx00083_0:
 .quad .Lx00083_0_s
.Lx00083_0_s:
 .string " needs numeric parameter"
 xchain00040_n00081_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00040_n94_α
 xchain00040_n00081_β:
 jmp xchain00040_n39_α
 xchain00040_n00084_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+896]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 904], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+912]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 920], rax
# marshal arg2 = producer-box slot [zr+1024] -> [zr+928]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 936], rax
  .section .rodata
  .Lrkfn421: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn421]
 lea rsi, [rbp + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 cmp eax, 99
 je xchain00040_n39_α
 jmp xchain00040_n00085_α
 xchain00040_n00084_β:
 jmp xchain00040_n39_α
# IR_MOVE_LABEL
 xchain00040_n00085_α:
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 856], rax
 lea rax, [rip + xchain00040_n39_α]
 mov qword ptr [rbp + 864], rax
 jmp xchain00040_n00081_α
 xchain00040_n00085_β:
 jmp xchain00040_n39_α
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
 xchain00086_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 520], rax
 jmp xchain00086_n1_α
 xchain00086_n0_β:
 jmp xchain00086_n2_α
# IR_ASSIGN gva
 xchain00086_n1_α:
 mov rax, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 mov qword ptr [1879052384], rax
 mov qword ptr [1879052392], rdx
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00086_n2_α
 xchain00086_n1_β:
 jmp xchain00086_n2_α
 xchain00086_n2_α:
 mov rdi, qword ptr [rip + .Lx00087_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00087_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00087_3]
 lea rdx, [rip + .Lx00087_4]
 jmp rax
.Lx00087_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00087_2
.Lx00087_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00087_2
.Lx00087_1:
 call rt_faildescr@PLT
.Lx00087_2:
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00086_n3_α
 jmp xchain00086_n3_α
 xchain00086_n2_β:
 jmp xchain00086_n3_α
.Lx00087_0:
 .quad .Lx00087_0_s
.Lx00087_0_s:
 .string "Signature__"
 xchain00086_n3_α:
 mov rdi, qword ptr [rip + .Lx00088_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00088_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00088_3]
 lea rdx, [rip + .Lx00088_4]
 jmp rax
.Lx00088_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00088_2
.Lx00088_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00088_2
.Lx00088_1:
 call rt_faildescr@PLT
.Lx00088_2:
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00086_n4_α
 jmp xchain00086_n4_α
 xchain00086_n3_β:
 jmp xchain00086_n4_α
.Lx00088_0:
 .quad .Lx00088_0_s
.Lx00088_0_s:
 .string "Regions__"
 xchain00086_n4_α:
 mov rdi, qword ptr [rip + .Lx00089_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00089_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00089_3]
 lea rdx, [rip + .Lx00089_4]
 jmp rax
.Lx00089_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00089_2
.Lx00089_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00089_2
.Lx00089_1:
 call rt_faildescr@PLT
.Lx00089_2:
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain00086_n5_α
 jmp xchain00086_n5_α
 xchain00086_n4_β:
 jmp xchain00086_n5_α
.Lx00089_0:
 .quad .Lx00089_0_s
.Lx00089_0_s:
 .string "Time__"
# IR_LIT_STRING
 xchain00086_n5_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx00090_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00086_n6_α
 xchain00086_n5_β:
 jmp xchain00086_n8_α
.Lx00090_0:
 .quad .Lx00090_0_s
.Lx00090_0_s:
 .string "OUTPUT"
 xchain00086_n6_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn436: .string "getenv"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn436]
 lea rsi, [rbp + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain00086_n8_α
 jmp xchain00086_n7_α
 xchain00086_n6_β:
 jmp xchain00086_n8_α
# IR_LIT_STRING
 xchain00086_n7_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00091_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00086_n9_α
 xchain00086_n7_β:
 jmp xchain00086_n12_α
.Lx00091_0:
 .quad .Lx00091_0_s
.Lx00091_0_s:
 .string "*** Benchmarking with output ***"
# IR_VAR
 xchain00086_n8_α:
 mov rdi, qword ptr [rip + .Lx00092_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00086_n11_α
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00086_n10_α
 xchain00086_n8_β:
 jmp xchain00086_n11_α
.Lx00092_0:
 .quad .Lx00092_0_s
.Lx00092_0_s:
 .string "write"
 xchain00086_n9_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn440: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn440]
 lea rsi, [rbp + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain00086_n12_α
 jmp xchain00086_n12_α
 xchain00086_n9_β:
 jmp xchain00086_n12_α
# IR_ASSIGN gva
 xchain00086_n10_α:
 mov rax, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00086_n11_α
 xchain00086_n10_β:
 jmp xchain00086_n11_α
# IR_VAR
 xchain00086_n11_α:
 mov rdi, qword ptr [rip + .Lx00093_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00086_n14_α
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain00086_n13_α
 xchain00086_n11_β:
 jmp xchain00086_n14_α
.Lx00093_0:
 .quad .Lx00093_0_s
.Lx00093_0_s:
 .string "writes"
# IR_RETURN
 xchain00086_n12_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_Init___γ
# IR_ASSIGN gva
 xchain00086_n13_α:
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00086_n14_α
 xchain00086_n13_β:
 jmp xchain00086_n14_α
# IR_LIT_INTEGER
 xchain00086_n14_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00094_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00086_n15_α
 xchain00086_n14_β:
 jmp xchain00086_n17_α
.Lx00094_0:
 .quad 1
# IR_ASSIGN global
 xchain00086_n15_α:
 mov rsi, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov rdi, qword ptr [rip + .Lx00095_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 jmp xchain00086_n16_α
 xchain00086_n15_β:
 jmp xchain00086_n17_α
.Lx00095_0:
 .quad .Lx00095_0_s
.Lx00095_0_s:
 .string "writes"
# IR_ASSIGN global
 xchain00086_n16_α:
 mov rsi, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov rdi, qword ptr [rip + .Lx00096_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00086_n17_α
 xchain00086_n16_β:
 jmp xchain00086_n17_α
.Lx00096_0:
 .quad .Lx00096_0_s
.Lx00096_0_s:
 .string "write"
# IR_RETURN
 xchain00086_n17_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
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
# IR_LIT_STRING
 xchain00097_n0_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx00098_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00097_n1_α
 xchain00097_n0_β:
 jmp xchain00097_n3_α
.Lx00098_0:
 .quad .Lx00098_0_s
.Lx00098_0_s:
 .string "OUTPUT"
 xchain00097_n1_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
  .section .rodata
  .Lrkfn452: .string "getenv"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn452]
 lea rsi, [rbp + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00097_n3_α
 jmp xchain00097_n2_α
 xchain00097_n1_β:
 jmp xchain00097_n3_α
# IR_VAR
 xchain00097_n2_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00097_n4_α
 xchain00097_n2_β:
 jmp xchain00097_n5_α
# KEYWORD_null
 xchain00097_n3_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 jmp xchain00097_n6_α
 xchain00097_n3_β:
 jmp xchain00097_n2_α
# IR_LIT_STRING
 xchain00097_n4_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00099_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00097_n7_α
 xchain00097_n4_β:
 jmp xchain00097_n5_α
.Lx00099_0:
 .quad .Lx00099_0_s
.Lx00099_0_s:
 .string " elapsed time = "
 xchain00097_n5_α:
 mov rdi, qword ptr [rip + .Lx00100_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00100_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00100_3]
 lea rdx, [rip + .Lx00100_4]
 jmp rax
.Lx00100_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00100_2
.Lx00100_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00100_2
.Lx00100_1:
 call rt_faildescr@PLT
.Lx00100_2:
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00097_n8_α
 jmp xchain00097_n8_α
 xchain00097_n5_β:
 jmp xchain00097_n8_α
.Lx00100_0:
 .quad .Lx00100_0_s
.Lx00100_0_s:
 .string "Regions__"
# IR_VAR
 xchain00097_n6_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00097_n9_α
 xchain00097_n6_β:
 jmp xchain00097_n10_α
 xchain00097_n7_α:
 mov rdi, qword ptr [rip + .Lx00101_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00101_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00101_3]
 lea rdx, [rip + .Lx00101_4]
 jmp rax
.Lx00101_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00101_2
.Lx00101_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00101_2
.Lx00101_1:
 call rt_faildescr@PLT
.Lx00101_2:
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain00097_n5_α
 jmp xchain00097_n11_α
 xchain00097_n7_β:
 jmp xchain00097_n5_α
.Lx00101_0:
 .quad .Lx00101_0_s
.Lx00101_0_s:
 .string "Time__"
 xchain00097_n8_α:
 mov rdi, qword ptr [rip + .Lx00102_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00102_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00102_3]
 lea rdx, [rip + .Lx00102_4]
 jmp rax
.Lx00102_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00102_2
.Lx00102_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00102_2
.Lx00102_1:
 call rt_faildescr@PLT
.Lx00102_2:
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je xchain00097_n12_α
 jmp xchain00097_n12_α
 xchain00097_n8_β:
 jmp xchain00097_n12_α
.Lx00102_0:
 .quad .Lx00102_0_s
.Lx00102_0_s:
 .string "Storage__"
# IR_ASSIGN global
 xchain00097_n9_α:
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 mov rdi, qword ptr [rip + .Lx00103_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain00097_n10_α
 xchain00097_n9_β:
 jmp xchain00097_n10_α
.Lx00103_0:
 .quad .Lx00103_0_s
.Lx00103_0_s:
 .string "write"
# IR_VAR
 xchain00097_n10_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00097_n13_α
 xchain00097_n10_β:
 jmp xchain00097_n2_α
 xchain00097_n11_α:
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
  .Lrkfn466: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn466]
 lea rsi, [rbp + 128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain00097_n5_α
 jmp xchain00097_n5_α
 xchain00097_n11_β:
 jmp xchain00097_n5_α
 xchain00097_n12_α:
 mov rdi, qword ptr [rip + .Lx00104_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00104_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00104_3]
 lea rdx, [rip + .Lx00104_4]
 jmp rax
.Lx00104_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00104_2
.Lx00104_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00104_2
.Lx00104_1:
 call rt_faildescr@PLT
.Lx00104_2:
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 cmp eax, 99
 je xchain00097_n14_α
 jmp xchain00097_n14_α
 xchain00097_n12_β:
 jmp xchain00097_n14_α
.Lx00104_0:
 .quad .Lx00104_0_s
.Lx00104_0_s:
 .string "Collections__"
# IR_ASSIGN global
 xchain00097_n13_α:
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov rdi, qword ptr [rip + .Lx00105_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00097_n15_α
 xchain00097_n13_β:
 jmp xchain00097_n2_α
.Lx00105_0:
 .quad .Lx00105_0_s
.Lx00105_0_s:
 .string "writes"
# IR_RETURN
 xchain00097_n14_α:
 mov rax, qword ptr [rbp + 16]
 mov rdx, qword ptr [rbp + 24]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_Term___γ
 xchain00097_n15_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 328], rax
 jmp xchain00097_n16_α
xchain00097_n15_β:
 jmp xchain00097_n2_α
# IR_MOVE_LABEL
 xchain00097_n16_α:
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 296], rax
 lea rax, [rip + xchain00097_n2_α]
 mov qword ptr [rbp + 304], rax
 jmp xchain00097_n2_α
 xchain00097_n16_β:
 jmp xchain00097_n2_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00097_n17_α:
 jmp qword ptr [rbp + 304]
 xchain00097_n17_β:
 jmp xchain00097_n2_α
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
proc_Collections___α_body:
# IR_VAR_REF
 xchain00106_n0_α:
 mov rdi, 1879052416
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00106_n1_α
 xchain00106_n0_β:
 jmp xchain00106_n3_α
# IR_NULLTEST_VAR
 xchain00106_n1_α:
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 99
 je xchain00106_n3_α
 mov rdi, qword ptr [rbp + 1040]
 mov rsi, qword ptr [rbp + 1048]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00106_n3_α
 cmp eax, 0
 jne xchain00106_n3_α
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00106_n2_α
 xchain00106_n1_β:
 jmp xchain00106_n3_α
# IR_LIT_INTEGER
 xchain00106_n2_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx00107_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00106_n4_α
 xchain00106_n2_β:
 jmp xchain00106_n3_α
.Lx00107_0:
 .quad 1
# IR_MAKE_LIST
 xchain00106_n3_α:
 lea rdi, [rbp + 784]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00106_n5_α
 xchain00106_n3_β:
 jmp xchain00106_n7_α
# IR_ASSIGN_VAR
 xchain00106_n4_α:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, qword ptr [rbp + 1120]
 mov rcx, qword ptr [rbp + 1128]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00106_n3_α
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00106_n6_α
 xchain00106_n4_β:
 jmp xchain00106_n3_α
 xchain00106_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00106_n7_α
 xchain00106_n5_β:
 jmp xchain00106_n7_α
# IR_LIT_STRING
 xchain00106_n6_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx00108_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00106_n8_α
 xchain00106_n6_β:
 jmp xchain00106_n3_α
.Lx00108_0:
 .quad .Lx00108_0_s
.Lx00108_0_s:
 .string "total"
# IR_VAR
 xchain00106_n7_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 696], rax
 jmp xchain00106_n9_α
 xchain00106_n7_β:
 jmp xchain00106_n10_α
# IR_LIT_STRING
 xchain00106_n8_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx00109_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00106_n11_α
 xchain00106_n8_β:
 jmp xchain00106_n3_α
.Lx00109_0:
 .quad .Lx00109_0_s
.Lx00109_0_s:
 .string "static"
# KEYWORD_gen
 xchain00106_n9_α:
 mov qword ptr [rbp + 736], 0
.Lx00110_1:
 mov rdi, qword ptr [rip + .Lx00110_0]
 mov rsi, qword ptr [rbp + 736]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00106_n10_α
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 mov rax, qword ptr [rbp + 736]
 add rax, 1
 mov qword ptr [rbp + 736], rax
 jmp xchain00106_n12_α
 xchain00106_n9_β:
 jmp .Lx00110_1
.Lx00110_0:
 .quad .Lx00110_0_s
.Lx00110_0_s:
 .string "&collections"
# IR_LIT_STRING
 xchain00106_n10_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx00111_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00106_n13_α
 xchain00106_n10_β:
 jmp xchain00106_n15_α
.Lx00111_0:
 .quad .Lx00111_0_s
.Lx00111_0_s:
 .string "collections"
# IR_LIT_STRING
 xchain00106_n11_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx00112_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00106_n14_α
 xchain00106_n11_β:
 jmp xchain00106_n3_α
.Lx00112_0:
 .quad .Lx00112_0_s
.Lx00112_0_s:
 .string "string"
 xchain00106_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 648], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+656]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 664], rax
  .section .rodata
  .Lrkfn493: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn493]
 lea rsi, [rbp + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain00106_n10_α
 jmp xchain00106_n9_β
 xchain00106_n12_β:
 jmp xchain00106_n10_α
 xchain00106_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
  .section .rodata
  .Lrkfn495: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn495]
 lea rsi, [rbp + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain00106_n15_α
 jmp xchain00106_n15_α
 xchain00106_n13_β:
 jmp xchain00106_n15_α
# IR_LIT_STRING
 xchain00106_n14_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx00113_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00106_n16_α
 xchain00106_n14_β:
 jmp xchain00106_n3_α
.Lx00113_0:
 .quad .Lx00113_0_s
.Lx00113_0_s:
 .string "block"
# IR_LIT_INTEGER
 xchain00106_n15_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00114_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00106_n17_α
 xchain00106_n15_β:
 jmp xchain00106_n20_α
.Lx00114_0:
 .quad 1
# IR_MAKE_LIST
 xchain00106_n16_α:
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 856], rax
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 872], rax
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 888], rax
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 904], rax
 lea rdi, [rbp + 848]
 mov esi, 4
 call rt_make_list@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00106_n18_α
 xchain00106_n16_β:
 jmp xchain00106_n3_α
# IR_VAR
 xchain00106_n17_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00106_n19_α
 xchain00106_n17_β:
 jmp xchain00106_n20_α
# IR_ASSIGN gva
 xchain00106_n18_α:
 mov rax, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 mov qword ptr [1879052400], rax
 mov qword ptr [1879052408], rdx
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00106_n21_α
 xchain00106_n18_β:
 jmp xchain00106_n3_α
# IR_UNOP
 xchain00106_n19_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00106_n22_α
 xchain00106_n19_β:
 jmp xchain00106_n20_α
# IR_RETURN
 xchain00106_n20_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Collections___γ
# IR_MOVE_LABEL
 xchain00106_n21_α:
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
 lea rax, [rip + xchain00106_n3_α]
 mov qword ptr [rbp + 800], rax
 jmp xchain00106_n3_α
 xchain00106_n21_β:
 jmp xchain00106_n3_α
# IR_TO
 xchain00106_n22_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00115_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00106_n20_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00106_n24_α
 xchain00106_n22_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00115_0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00106_n23_α:
 jmp qword ptr [rbp + 800]
 xchain00106_n23_β:
 jmp xchain00106_n3_α
 xchain00106_n24_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00106_n25_α
 xchain00106_n24_β:
 jmp xchain00106_n20_α
# IR_VAR_REF
 xchain00106_n25_α:
 mov rdi, 1879052400
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00106_n26_α
 xchain00106_n25_β:
 jmp xchain00106_n22_β
# IR_VAR
 xchain00106_n26_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 264], rax
 jmp xchain00106_n27_α
 xchain00106_n26_β:
 jmp xchain00106_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00106_n27_α:
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 256]
 mov rcx, qword ptr [rbp + 264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00106_n22_β
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00106_n28_α
 xchain00106_n27_β:
 jmp xchain00106_n22_β
# IR_DEREF variable -> value
 xchain00106_n28_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00106_n22_β
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00106_n29_α
 xchain00106_n28_β:
 jmp xchain00106_n22_β
# IR_VAR_REF
 xchain00106_n29_α:
 lea rdi, [rbp + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00106_n30_α
 xchain00106_n29_β:
 jmp xchain00106_n22_β
# IR_VAR
 xchain00106_n30_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 440], rax
 jmp xchain00106_n31_α
 xchain00106_n30_β:
 jmp xchain00106_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00106_n31_α:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00106_n22_β
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00106_n32_α
 xchain00106_n31_β:
 jmp xchain00106_n22_β
# IR_DEREF variable -> value
 xchain00106_n32_α:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00106_n22_β
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00106_n33_α
 xchain00106_n32_β:
 jmp xchain00106_n22_β
# IR_LIT_INTEGER
 xchain00106_n33_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00116_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00106_n34_α
 xchain00106_n33_β:
 jmp xchain00106_n22_β
.Lx00116_0:
 .quad 8
 xchain00106_n34_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+352]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+368]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 376], rax
  .section .rodata
  .Lrkfn525: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn525]
 lea rsi, [rbp + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain00106_n22_β
 jmp xchain00106_n35_α
 xchain00106_n34_β:
 jmp xchain00106_n22_β
 xchain00106_n35_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+176]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+192]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn527: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn527]
 lea rsi, [rbp + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain00106_n22_β
 jmp xchain00106_n22_β
 xchain00106_n35_β:
 jmp xchain00106_n22_β
proc_Collections___res:
add rsp, 8
pop rbp
proc_Collections___β:
jmp proc_Collections___ω
proc_Collections___γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1208]
lea rsp, [rbp + 1232]
mov rbp, [rbp + 1224]
jmp rax
proc_Collections___ω:
mov rax, [rbp + 1216]
lea rsp, [rbp + 1232]
mov rbp, [rbp + 1224]
jmp rax
  .globl proc_Regions___α
proc_Regions___α:
#=======================================================================================================================
    .global proc_Regions___α
    .global proc_Regions___β
    .global proc_Regions___γ
    .global proc_Regions___ω
  sub rsp, 1184
  mov [rsp + 1160], rcx
  mov [rsp + 1168], rdx
  mov [rsp + 1176], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1152
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1112], rsp
  mov rdi, rsp
  mov esi, 1152
  call rt_jmp_frame_lexprep@PLT
proc_Regions___α_body:
# IR_VAR_REF
 xchain00117_n0_α:
 mov rdi, 1879052448
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00117_n1_α
 xchain00117_n0_β:
 jmp xchain00117_n3_α
# IR_NULLTEST_VAR
 xchain00117_n1_α:
 mov eax, dword ptr [rbp + 992]
 cmp eax, 99
 je xchain00117_n3_α
 mov rdi, qword ptr [rbp + 992]
 mov rsi, qword ptr [rbp + 1000]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00117_n3_α
 cmp eax, 0
 jne xchain00117_n3_α
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00117_n2_α
 xchain00117_n1_β:
 jmp xchain00117_n3_α
# IR_LIT_INTEGER
 xchain00117_n2_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx00118_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00117_n4_α
 xchain00117_n2_β:
 jmp xchain00117_n3_α
.Lx00118_0:
 .quad 1
# IR_MAKE_LIST
 xchain00117_n3_α:
 lea rdi, [rbp + 784]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00117_n5_α
 xchain00117_n3_β:
 jmp xchain00117_n7_α
# IR_ASSIGN_VAR
 xchain00117_n4_α:
 mov rdi, qword ptr [rbp + 1024]
 mov rsi, qword ptr [rbp + 1032]
 mov rdx, qword ptr [rbp + 1072]
 mov rcx, qword ptr [rbp + 1080]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00117_n3_α
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain00117_n6_α
 xchain00117_n4_β:
 jmp xchain00117_n3_α
 xchain00117_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00117_n7_α
 xchain00117_n5_β:
 jmp xchain00117_n7_α
# IR_LIT_STRING
 xchain00117_n6_α:
 mov qword ptr [rbp + 896], 1
 mov rax, qword ptr [rip + .Lx00119_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain00117_n8_α
 xchain00117_n6_β:
 jmp xchain00117_n3_α
.Lx00119_0:
 .quad .Lx00119_0_s
.Lx00119_0_s:
 .string "static"
# IR_VAR
 xchain00117_n7_α:
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 696], rax
 jmp xchain00117_n9_α
 xchain00117_n7_β:
 jmp xchain00117_n10_α
# IR_LIT_STRING
 xchain00117_n8_α:
 mov qword ptr [rbp + 928], 1
 mov rax, qword ptr [rip + .Lx00120_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain00117_n11_α
 xchain00117_n8_β:
 jmp xchain00117_n3_α
.Lx00120_0:
 .quad .Lx00120_0_s
.Lx00120_0_s:
 .string "string"
# KEYWORD_gen
 xchain00117_n9_α:
 mov qword ptr [rbp + 736], 0
.Lx00121_1:
 mov rdi, qword ptr [rip + .Lx00121_0]
 mov rsi, qword ptr [rbp + 736]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00117_n10_α
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 mov rax, qword ptr [rbp + 736]
 add rax, 1
 mov qword ptr [rbp + 736], rax
 jmp xchain00117_n12_α
 xchain00117_n9_β:
 jmp .Lx00121_1
.Lx00121_0:
 .quad .Lx00121_0_s
.Lx00121_0_s:
 .string "&regions"
# IR_LIT_STRING
 xchain00117_n10_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx00122_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00117_n13_α
 xchain00117_n10_β:
 jmp xchain00117_n15_α
.Lx00122_0:
 .quad .Lx00122_0_s
.Lx00122_0_s:
 .string "regions"
# IR_LIT_STRING
 xchain00117_n11_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx00123_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00117_n14_α
 xchain00117_n11_β:
 jmp xchain00117_n3_α
.Lx00123_0:
 .quad .Lx00123_0_s
.Lx00123_0_s:
 .string "block"
 xchain00117_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 648], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+656]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 664], rax
  .section .rodata
  .Lrkfn545: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn545]
 lea rsi, [rbp + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain00117_n10_α
 jmp xchain00117_n9_β
 xchain00117_n12_β:
 jmp xchain00117_n10_α
 xchain00117_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
  .section .rodata
  .Lrkfn547: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn547]
 lea rsi, [rbp + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain00117_n15_α
 jmp xchain00117_n15_α
 xchain00117_n13_β:
 jmp xchain00117_n15_α
# IR_MAKE_LIST
 xchain00117_n14_α:
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 856], rax
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 872], rax
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 888], rax
 lea rdi, [rbp + 848]
 mov esi, 3
 call rt_make_list@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00117_n16_α
 xchain00117_n14_β:
 jmp xchain00117_n3_α
# IR_LIT_INTEGER
 xchain00117_n15_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00124_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00117_n17_α
 xchain00117_n15_β:
 jmp xchain00117_n20_α
.Lx00124_0:
 .quad 1
# IR_ASSIGN gva
 xchain00117_n16_α:
 mov rax, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 mov qword ptr [1879052432], rax
 mov qword ptr [1879052440], rdx
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00117_n18_α
 xchain00117_n16_β:
 jmp xchain00117_n3_α
# IR_VAR
 xchain00117_n17_α:
 mov rax, qword ptr [1879052432]
 mov rdx, qword ptr [1879052440]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00117_n19_α
 xchain00117_n17_β:
 jmp xchain00117_n20_α
# IR_MOVE_LABEL
 xchain00117_n18_α:
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
 lea rax, [rip + xchain00117_n3_α]
 mov qword ptr [rbp + 800], rax
 jmp xchain00117_n3_α
 xchain00117_n18_β:
 jmp xchain00117_n3_α
# IR_UNOP
 xchain00117_n19_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00117_n22_α
 xchain00117_n19_β:
 jmp xchain00117_n20_α
# IR_RETURN
 xchain00117_n20_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Regions___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00117_n21_α:
 jmp qword ptr [rbp + 800]
 xchain00117_n21_β:
 jmp xchain00117_n3_α
# IR_TO
 xchain00117_n22_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00125_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00117_n20_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00117_n23_α
 xchain00117_n22_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00125_0
 xchain00117_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00117_n24_α
 xchain00117_n23_β:
 jmp xchain00117_n20_α
# IR_VAR_REF
 xchain00117_n24_α:
 mov rdi, 1879052432
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00117_n25_α
 xchain00117_n24_β:
 jmp xchain00117_n22_β
# IR_VAR
 xchain00117_n25_α:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 264], rax
 jmp xchain00117_n26_α
 xchain00117_n25_β:
 jmp xchain00117_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00117_n26_α:
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 256]
 mov rcx, qword ptr [rbp + 264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00117_n22_β
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00117_n27_α
 xchain00117_n26_β:
 jmp xchain00117_n22_β
# IR_DEREF variable -> value
 xchain00117_n27_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00117_n22_β
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00117_n28_α
 xchain00117_n27_β:
 jmp xchain00117_n22_β
# IR_VAR_REF
 xchain00117_n28_α:
 lea rdi, [rbp + 1136]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00117_n29_α
 xchain00117_n28_β:
 jmp xchain00117_n22_β
# IR_VAR
 xchain00117_n29_α:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 440], rax
 jmp xchain00117_n30_α
 xchain00117_n29_β:
 jmp xchain00117_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00117_n30_α:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00117_n22_β
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00117_n31_α
 xchain00117_n30_β:
 jmp xchain00117_n22_β
# IR_DEREF variable -> value
 xchain00117_n31_α:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00117_n22_β
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00117_n32_α
 xchain00117_n31_β:
 jmp xchain00117_n22_β
# IR_LIT_INTEGER
 xchain00117_n32_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00126_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00117_n33_α
 xchain00117_n32_β:
 jmp xchain00117_n22_β
.Lx00126_0:
 .quad 8
 xchain00117_n33_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+352]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+368]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 376], rax
  .section .rodata
  .Lrkfn576: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn576]
 lea rsi, [rbp + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain00117_n22_β
 jmp xchain00117_n34_α
 xchain00117_n33_β:
 jmp xchain00117_n22_β
 xchain00117_n34_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+176]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+192]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn578: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn578]
 lea rsi, [rbp + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain00117_n22_β
 jmp xchain00117_n22_β
 xchain00117_n34_β:
 jmp xchain00117_n22_β
proc_Regions___res:
add rsp, 8
pop rbp
proc_Regions___β:
jmp proc_Regions___ω
proc_Regions___γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1160]
lea rsp, [rbp + 1184]
mov rbp, [rbp + 1176]
jmp rax
proc_Regions___ω:
mov rax, [rbp + 1168]
lea rsp, [rbp + 1184]
mov rbp, [rbp + 1176]
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
 xchain00127_n0_α:
 mov rdi, qword ptr [rip + .Lx00128_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00127_n1_α
 xchain00127_n0_β:
 jmp xchain00127_n2_α
.Lx00128_0:
 .quad .Lx00128_0_s
.Lx00128_0_s:
 .string "&version"
 xchain00127_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn582: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn582]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00127_n2_α
 jmp xchain00127_n2_α
 xchain00127_n1_β:
 jmp xchain00127_n2_α
# KEYWORD_read
 xchain00127_n2_α:
 mov rdi, qword ptr [rip + .Lx00129_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00127_n3_α
 xchain00127_n2_β:
 jmp xchain00127_n4_α
.Lx00129_0:
 .quad .Lx00129_0_s
.Lx00129_0_s:
 .string "&host"
 xchain00127_n3_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn585: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn585]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je xchain00127_n4_α
 jmp xchain00127_n4_α
 xchain00127_n3_β:
 jmp xchain00127_n4_α
# KEYWORD_gen
 xchain00127_n4_α:
 mov qword ptr [rbp + 80], 0
.Lx00130_1:
 mov rdi, qword ptr [rip + .Lx00130_0]
 mov rsi, qword ptr [rbp + 80]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00127_n6_α
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 mov rax, qword ptr [rbp + 80]
 add rax, 1
 mov qword ptr [rbp + 80], rax
 jmp xchain00127_n5_α
 xchain00127_n4_β:
 jmp .Lx00130_1
.Lx00130_0:
 .quad .Lx00130_0_s
.Lx00130_0_s:
 .string "&features"
 xchain00127_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+32]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 40], rax
  .section .rodata
  .Lrkfn588: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn588]
 lea rsi, [rbp + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 cmp eax, 99
 je xchain00127_n6_α
 jmp xchain00127_n4_β
 xchain00127_n5_β:
 jmp xchain00127_n6_α
# IR_RETURN
 xchain00127_n6_α:
 mov rax, qword ptr [rbp + 16]
 mov rdx, qword ptr [rbp + 24]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
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
  sub rsp, 1184
  mov [rsp + 1160], rcx
  mov [rsp + 1168], rdx
  mov [rsp + 1176], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1152
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1112], rsp
  mov rdi, rsp
  mov esi, 1152
  call rt_jmp_frame_lexprep@PLT
proc_Storage___α_body:
# IR_VAR_REF
 xchain00131_n0_α:
 mov rdi, 1879052480
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00131_n1_α
 xchain00131_n0_β:
 jmp xchain00131_n3_α
# IR_NULLTEST_VAR
 xchain00131_n1_α:
 mov eax, dword ptr [rbp + 992]
 cmp eax, 99
 je xchain00131_n3_α
 mov rdi, qword ptr [rbp + 992]
 mov rsi, qword ptr [rbp + 1000]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00131_n3_α
 cmp eax, 0
 jne xchain00131_n3_α
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00131_n2_α
 xchain00131_n1_β:
 jmp xchain00131_n3_α
# IR_LIT_INTEGER
 xchain00131_n2_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx00132_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00131_n4_α
 xchain00131_n2_β:
 jmp xchain00131_n3_α
.Lx00132_0:
 .quad 1
# IR_MAKE_LIST
 xchain00131_n3_α:
 lea rdi, [rbp + 784]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00131_n5_α
 xchain00131_n3_β:
 jmp xchain00131_n7_α
# IR_ASSIGN_VAR
 xchain00131_n4_α:
 mov rdi, qword ptr [rbp + 1024]
 mov rsi, qword ptr [rbp + 1032]
 mov rdx, qword ptr [rbp + 1072]
 mov rcx, qword ptr [rbp + 1080]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00131_n3_α
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain00131_n6_α
 xchain00131_n4_β:
 jmp xchain00131_n3_α
 xchain00131_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00131_n7_α
 xchain00131_n5_β:
 jmp xchain00131_n7_α
# IR_LIT_STRING
 xchain00131_n6_α:
 mov qword ptr [rbp + 896], 1
 mov rax, qword ptr [rip + .Lx00133_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain00131_n8_α
 xchain00131_n6_β:
 jmp xchain00131_n3_α
.Lx00133_0:
 .quad .Lx00133_0_s
.Lx00133_0_s:
 .string "static"
# IR_VAR
 xchain00131_n7_α:
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 696], rax
 jmp xchain00131_n9_α
 xchain00131_n7_β:
 jmp xchain00131_n10_α
# IR_LIT_STRING
 xchain00131_n8_α:
 mov qword ptr [rbp + 928], 1
 mov rax, qword ptr [rip + .Lx00134_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain00131_n11_α
 xchain00131_n8_β:
 jmp xchain00131_n3_α
.Lx00134_0:
 .quad .Lx00134_0_s
.Lx00134_0_s:
 .string "string"
# KEYWORD_gen
 xchain00131_n9_α:
 mov qword ptr [rbp + 736], 0
.Lx00135_1:
 mov rdi, qword ptr [rip + .Lx00135_0]
 mov rsi, qword ptr [rbp + 736]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00131_n10_α
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 mov rax, qword ptr [rbp + 736]
 add rax, 1
 mov qword ptr [rbp + 736], rax
 jmp xchain00131_n12_α
 xchain00131_n9_β:
 jmp .Lx00135_1
.Lx00135_0:
 .quad .Lx00135_0_s
.Lx00135_0_s:
 .string "&storage"
# IR_LIT_STRING
 xchain00131_n10_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx00136_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00131_n13_α
 xchain00131_n10_β:
 jmp xchain00131_n15_α
.Lx00136_0:
 .quad .Lx00136_0_s
.Lx00136_0_s:
 .string "storage"
# IR_LIT_STRING
 xchain00131_n11_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx00137_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00131_n14_α
 xchain00131_n11_β:
 jmp xchain00131_n3_α
.Lx00137_0:
 .quad .Lx00137_0_s
.Lx00137_0_s:
 .string "block"
 xchain00131_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 648], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+656]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 664], rax
  .section .rodata
  .Lrkfn607: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn607]
 lea rsi, [rbp + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain00131_n10_α
 jmp xchain00131_n9_β
 xchain00131_n12_β:
 jmp xchain00131_n10_α
 xchain00131_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
  .section .rodata
  .Lrkfn609: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn609]
 lea rsi, [rbp + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain00131_n15_α
 jmp xchain00131_n15_α
 xchain00131_n13_β:
 jmp xchain00131_n15_α
# IR_MAKE_LIST
 xchain00131_n14_α:
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 856], rax
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 872], rax
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 888], rax
 lea rdi, [rbp + 848]
 mov esi, 3
 call rt_make_list@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00131_n16_α
 xchain00131_n14_β:
 jmp xchain00131_n3_α
# IR_LIT_INTEGER
 xchain00131_n15_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00138_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00131_n17_α
 xchain00131_n15_β:
 jmp xchain00131_n20_α
.Lx00138_0:
 .quad 1
# IR_ASSIGN gva
 xchain00131_n16_α:
 mov rax, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 mov qword ptr [1879052464], rax
 mov qword ptr [1879052472], rdx
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00131_n18_α
 xchain00131_n16_β:
 jmp xchain00131_n3_α
# IR_VAR
 xchain00131_n17_α:
 mov rax, qword ptr [1879052464]
 mov rdx, qword ptr [1879052472]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00131_n19_α
 xchain00131_n17_β:
 jmp xchain00131_n20_α
# IR_MOVE_LABEL
 xchain00131_n18_α:
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
 lea rax, [rip + xchain00131_n3_α]
 mov qword ptr [rbp + 800], rax
 jmp xchain00131_n3_α
 xchain00131_n18_β:
 jmp xchain00131_n3_α
# IR_UNOP
 xchain00131_n19_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00131_n22_α
 xchain00131_n19_β:
 jmp xchain00131_n20_α
# IR_RETURN
 xchain00131_n20_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Storage___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00131_n21_α:
 jmp qword ptr [rbp + 800]
 xchain00131_n21_β:
 jmp xchain00131_n3_α
# IR_TO
 xchain00131_n22_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00139_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00131_n20_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00131_n23_α
 xchain00131_n22_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00139_0
 xchain00131_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00131_n24_α
 xchain00131_n23_β:
 jmp xchain00131_n20_α
# IR_VAR_REF
 xchain00131_n24_α:
 mov rdi, 1879052464
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00131_n25_α
 xchain00131_n24_β:
 jmp xchain00131_n22_β
# IR_VAR
 xchain00131_n25_α:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 264], rax
 jmp xchain00131_n26_α
 xchain00131_n25_β:
 jmp xchain00131_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00131_n26_α:
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 256]
 mov rcx, qword ptr [rbp + 264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00131_n22_β
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00131_n27_α
 xchain00131_n26_β:
 jmp xchain00131_n22_β
# IR_DEREF variable -> value
 xchain00131_n27_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00131_n22_β
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00131_n28_α
 xchain00131_n27_β:
 jmp xchain00131_n22_β
# IR_VAR_REF
 xchain00131_n28_α:
 lea rdi, [rbp + 1136]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00131_n29_α
 xchain00131_n28_β:
 jmp xchain00131_n22_β
# IR_VAR
 xchain00131_n29_α:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 440], rax
 jmp xchain00131_n30_α
 xchain00131_n29_β:
 jmp xchain00131_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00131_n30_α:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00131_n22_β
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00131_n31_α
 xchain00131_n30_β:
 jmp xchain00131_n22_β
# IR_DEREF variable -> value
 xchain00131_n31_α:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00131_n22_β
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00131_n32_α
 xchain00131_n31_β:
 jmp xchain00131_n22_β
# IR_LIT_INTEGER
 xchain00131_n32_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00140_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00131_n33_α
 xchain00131_n32_β:
 jmp xchain00131_n22_β
.Lx00140_0:
 .quad 8
 xchain00131_n33_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+352]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+368]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 376], rax
  .section .rodata
  .Lrkfn638: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn638]
 lea rsi, [rbp + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain00131_n22_β
 jmp xchain00131_n34_α
 xchain00131_n33_β:
 jmp xchain00131_n22_β
 xchain00131_n34_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+176]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+192]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn640: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn640]
 lea rsi, [rbp + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain00131_n22_β
 jmp xchain00131_n22_β
 xchain00131_n34_β:
 jmp xchain00131_n22_β
proc_Storage___res:
add rsp, 8
pop rbp
proc_Storage___β:
jmp proc_Storage___ω
proc_Storage___γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1160]
lea rsp, [rbp + 1184]
mov rbp, [rbp + 1176]
jmp rax
proc_Storage___ω:
mov rax, [rbp + 1168]
lea rsp, [rbp + 1184]
mov rbp, [rbp + 1176]
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
# IR_VAR_REF
 xchain00141_n0_α:
 mov rdi, 1879052512
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00141_n1_α
 xchain00141_n0_β:
 jmp xchain00141_n3_α
# IR_NULLTEST_VAR
 xchain00141_n1_α:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 99
 je xchain00141_n3_α
 mov rdi, qword ptr [rbp + 256]
 mov rsi, qword ptr [rbp + 264]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00141_n3_α
 cmp eax, 0
 jne xchain00141_n3_α
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 296], rax
 jmp xchain00141_n2_α
 xchain00141_n1_β:
 jmp xchain00141_n3_α
# IR_LIT_INTEGER
 xchain00141_n2_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00142_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00141_n4_α
 xchain00141_n2_β:
 jmp xchain00141_n3_α
.Lx00142_0:
 .quad 1
# KEYWORD_read
 xchain00141_n3_α:
 mov rdi, qword ptr [rip + .Lx00143_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain00141_n5_α
 xchain00141_n3_β:
 jmp proc_Time___ω
.Lx00143_0:
 .quad .Lx00143_0_s
.Lx00143_0_s:
 .string "&time"
# IR_ASSIGN_VAR
 xchain00141_n4_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00141_n3_α
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00141_n6_α
 xchain00141_n4_β:
 jmp xchain00141_n3_α
# IR_VAR
 xchain00141_n5_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00141_n7_α
 xchain00141_n5_β:
 jmp proc_Time___ω
# KEYWORD_read
 xchain00141_n6_α:
 mov rdi, qword ptr [rip + .Lx00144_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00141_n8_α
 xchain00141_n6_β:
 jmp xchain00141_n3_α
.Lx00144_0:
 .quad .Lx00144_0_s
.Lx00144_0_s:
 .string "&time"
# IR_COERCE_NUMERIC
 xchain00141_n7_α:
 mov eax, dword ptr [rbp + 112]
 cmp eax, 7
 je .Lx00145_1
 cmp eax, 6
 jne .Lx00145_0
 mov eax, dword ptr [rbp + 144]
 cmp eax, 6
 jne .Lx00145_0
.Lx00145_1:
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 88], rax
 jmp .Lx00145_2
.Lx00145_0:
 lea rdi, [rbp + 112]
 lea rsi, [rbp + 144]
 lea rdx, [rbp + 80]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00145_2:
 jmp xchain00141_n9_α
 xchain00141_n7_β:
 jmp proc_Time___ω
# IR_ASSIGN gva
 xchain00141_n8_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [1879052496], rax
 mov qword ptr [1879052504], rdx
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00141_n10_α
 xchain00141_n8_β:
 jmp xchain00141_n3_α
# IR_COERCE_NUMERIC
 xchain00141_n9_α:
 mov eax, dword ptr [rbp + 144]
 cmp eax, 7
 je .Lx00146_1
 cmp eax, 6
 jne .Lx00146_0
 mov eax, dword ptr [rbp + 112]
 cmp eax, 6
 jne .Lx00146_0
.Lx00146_1:
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 56], rax
 jmp .Lx00146_2
.Lx00146_0:
 lea rdi, [rbp + 144]
 lea rsi, [rbp + 112]
 lea rdx, [rbp + 48]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00146_2:
 jmp xchain00141_n11_α
 xchain00141_n9_β:
 jmp proc_Time___ω
# IR_MOVE_LABEL
 xchain00141_n10_α:
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
 lea rax, [rip + xchain00141_n3_α]
 mov qword ptr [rbp + 192], rax
 jmp xchain00141_n3_α
 xchain00141_n10_β:
 jmp xchain00141_n3_α
 xchain00141_n11_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 80]
 cmp eax, 100
 je .Lx00147_0
 mov eax, dword ptr [rbp + 48]
 cmp eax, 100
 je .Lx00147_0
 mov eax, dword ptr [rbp + 80]
 cmp eax, 6
 jne .Lx00147_2
 mov eax, dword ptr [rbp + 48]
 cmp eax, 6
 jne .Lx00147_2
.Lx00147_1:
 mov rax, qword ptr [rbp + 88]
 mov rcx, qword ptr [rbp + 56]
 sub rax, rcx
 mov qword ptr [rbp + 16], 6
 mov qword ptr [rbp + 24], rax
 jmp xchain00141_n13_α
.Lx00147_0:
 mov rdi, qword ptr [rbp + 80]
 mov rsi, qword ptr [rbp + 88]
 mov rdx, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 56]
 mov r8d, 1
 lea r9, [rbp + 16]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00147_3
.Lx00147_2:
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
.Lx00147_3:
 jmp xchain00141_n13_α
 xchain00141_n11_β:
 jmp proc_Time___ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00141_n12_α:
 jmp qword ptr [rbp + 192]
 xchain00141_n12_β:
 jmp xchain00141_n3_α
# IR_RETURN
 xchain00141_n13_α:
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
  .Lstartup_pname0: .string "tabulate"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_tabulate_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2096
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname1: .string "format"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_format_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1488
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname2: .string "item"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_item_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1248
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
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
  mov esi, 1200
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  mov esi, 1152
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  mov esi, 1152
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  add rsp, 8
  ret
  .section .rodata
  .Lgvan0: .string "uses"
  .Lgvan1: .string "colmax"
  .Lgvan2: .string "namewidth"
  .Lgvan3: .string "lineno"
  .Lgvan4: .string "Save__"
  .Lgvan5: .string "Saves__"
  .Lgvan6: .string "Name__"
  .Lgvan7: .string "Collections____STATIC__labels"
  .Lgvan8: .string "Collections____INITFLAG__0"
  .Lgvan9: .string "Regions____STATIC__labels"
  .Lgvan10: .string "Regions____INITFLAG__0"
  .Lgvan11: .string "Storage____STATIC__labels"
  .Lgvan12: .string "Storage____INITFLAG__0"
  .Lgvan13: .string "Time____STATIC__lasttime"
  .Lgvan14: .string "Time____INITFLAG__0"
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
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 15
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 15
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
  mov qword ptr [rsp + 1560], rsp
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
 xchain00148_n0_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx00149_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain00148_n1_α
 xchain00148_n0_β:
 jmp xchain00148_n2_α
.Lx00149_0:
 .quad .Lx00149_0_s
.Lx00149_0_s:
 .string "concord"
 xchain00148_n1_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1520]
 mov rdx, qword ptr [rbp + 1528]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00150_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00150_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00150_3]
 lea rdx, [rip + .Lx00150_4]
 jmp rax
.Lx00150_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00150_2
.Lx00150_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00150_2
.Lx00150_1:
 call rt_faildescr@PLT
.Lx00150_2:
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je xchain00148_n2_α
 jmp xchain00148_n2_α
 xchain00148_n1_β:
 jmp xchain00148_n2_α
.Lx00150_0:
 .quad .Lx00150_0_s
.Lx00150_0_s:
 .string "Init__"
# IR_VAR
 xchain00148_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1416], rax
 jmp xchain00148_n3_α
 xchain00148_n2_β:
 jmp xchain00148_n4_α
# IR_LIT_STRING
 xchain00148_n3_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx00151_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain00148_n5_α
 xchain00148_n3_β:
 jmp xchain00148_n4_α
.Lx00151_0:
 .quad .Lx00151_0_s
.Lx00151_0_s:
 .string "l+w+"
# IR_VAR_REF
 xchain00148_n4_α:
 lea rdi, [rbp + 1600]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain00148_n6_α
 xchain00148_n4_β:
 jmp xchain00148_n10_α
 xchain00148_n5_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1408]
 mov rdx, qword ptr [rbp + 1416]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1440]
 mov rdx, qword ptr [rbp + 1448]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00152_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00152_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00152_3]
 lea rdx, [rip + .Lx00152_4]
 jmp rax
.Lx00152_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00152_2
.Lx00152_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00152_2
.Lx00152_1:
 call rt_faildescr@PLT
.Lx00152_2:
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je xchain00148_n4_α
 jmp xchain00148_n7_α
 xchain00148_n5_β:
 jmp xchain00148_n4_α
.Lx00152_0:
 .quad .Lx00152_0_s
.Lx00152_0_s:
 .string "options"
# IR_LIT_STRING
 xchain00148_n6_α:
 mov qword ptr [rbp + 1248], 1
 mov rax, qword ptr [rip + .Lx00153_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00148_n8_α
 xchain00148_n6_β:
 jmp xchain00148_n10_α
.Lx00153_0:
 .quad .Lx00153_0_s
.Lx00153_0_s:
 .string "l"
 xchain00148_n7_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1344]
 mov rdx, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain00148_n4_α
 xchain00148_n7_β:
 jmp xchain00148_n4_α
# IR_SUBSCRIPT x[i] variable
 xchain00148_n8_α:
 mov rdi, qword ptr [rbp + 1216]
 mov rsi, qword ptr [rbp + 1224]
 mov rdx, qword ptr [rbp + 1248]
 mov rcx, qword ptr [rbp + 1256]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00148_n10_α
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain00148_n9_α
 xchain00148_n8_β:
 jmp xchain00148_n10_α
# IR_DEREF variable -> value
 xchain00148_n9_α:
 mov rdi, qword ptr [rbp + 1280]
 mov rsi, qword ptr [rbp + 1288]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00148_n10_α
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain00148_n11_α
 xchain00148_n9_β:
 jmp xchain00148_n10_α
# IR_LIT_INTEGER
 xchain00148_n10_α:
 mov qword ptr [rbp + 1152], 6
 mov rax, qword ptr [rip + .Lx00154_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain00148_n12_α
 xchain00148_n10_β:
 jmp xchain00148_n15_α
.Lx00154_0:
 .quad 72
# IR_UNOP
 xchain00148_n11_α:
 mov eax, dword ptr [rbp + 1312]
 cmp eax, 99
 je xchain00148_n10_α
 cmp eax, 0
 je xchain00148_n10_α
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1192], rax
 jmp xchain00148_n13_α
 xchain00148_n11_β:
 jmp xchain00148_n10_α
# IR_MOVE_LABEL
 xchain00148_n12_α:
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1128], rax
 lea rax, [rip + xchain00148_n15_α]
 mov qword ptr [rbp + 1136], rax
 jmp xchain00148_n14_α
 xchain00148_n12_β:
 jmp xchain00148_n15_α
# IR_MOVE_LABEL
 xchain00148_n13_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1128], rax
 lea rax, [rip + xchain00148_n10_α]
 mov qword ptr [rbp + 1136], rax
 jmp xchain00148_n14_α
 xchain00148_n13_β:
 jmp xchain00148_n15_α
# IR_ASSIGN gva
 xchain00148_n14_α:
 mov rax, qword ptr [rbp + 1120]
 mov rdx, qword ptr [rbp + 1128]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00148_n15_α
 xchain00148_n14_β:
 jmp xchain00148_n15_α
# IR_VAR_REF
 xchain00148_n15_α:
 lea rdi, [rbp + 1600]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00148_n17_α
 xchain00148_n15_β:
 jmp xchain00148_n20_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00148_n16_α:
 jmp qword ptr [rbp + 1136]
 xchain00148_n16_β:
 jmp xchain00148_n15_α
# IR_LIT_STRING
 xchain00148_n17_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx00155_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00148_n18_α
 xchain00148_n17_β:
 jmp xchain00148_n20_α
.Lx00155_0:
 .quad .Lx00155_0_s
.Lx00155_0_s:
 .string "w"
# IR_SUBSCRIPT x[i] variable
 xchain00148_n18_α:
 mov rdi, qword ptr [rbp + 992]
 mov rsi, qword ptr [rbp + 1000]
 mov rdx, qword ptr [rbp + 1024]
 mov rcx, qword ptr [rbp + 1032]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00148_n20_α
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain00148_n19_α
 xchain00148_n18_β:
 jmp xchain00148_n20_α
# IR_DEREF variable -> value
 xchain00148_n19_α:
 mov rdi, qword ptr [rbp + 1056]
 mov rsi, qword ptr [rbp + 1064]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00148_n20_α
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain00148_n21_α
 xchain00148_n19_β:
 jmp xchain00148_n20_α
# IR_LIT_INTEGER
 xchain00148_n20_α:
 mov qword ptr [rbp + 928], 6
 mov rax, qword ptr [rip + .Lx00156_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain00148_n22_α
 xchain00148_n20_β:
 jmp xchain00148_n25_α
.Lx00156_0:
 .quad 15
# IR_UNOP
 xchain00148_n21_α:
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 99
 je xchain00148_n20_α
 cmp eax, 0
 je xchain00148_n20_α
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 968], rax
 jmp xchain00148_n23_α
 xchain00148_n21_β:
 jmp xchain00148_n20_α
# IR_MOVE_LABEL
 xchain00148_n22_α:
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 904], rax
 lea rax, [rip + xchain00148_n25_α]
 mov qword ptr [rbp + 912], rax
 jmp xchain00148_n24_α
 xchain00148_n22_β:
 jmp xchain00148_n25_α
# IR_MOVE_LABEL
 xchain00148_n23_α:
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 904], rax
 lea rax, [rip + xchain00148_n20_α]
 mov qword ptr [rbp + 912], rax
 jmp xchain00148_n24_α
 xchain00148_n23_β:
 jmp xchain00148_n25_α
# IR_ASSIGN gva
 xchain00148_n24_α:
 mov rax, qword ptr [rbp + 896]
 mov rdx, qword ptr [rbp + 904]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain00148_n25_α
 xchain00148_n24_β:
 jmp xchain00148_n25_α
# IR_LIT_STRING
 xchain00148_n25_α:
 mov qword ptr [rbp + 848], 1
 mov rax, qword ptr [rip + .Lx00157_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain00148_n27_α
 xchain00148_n25_β:
 jmp xchain00148_n29_α
.Lx00157_0:
 .quad .Lx00157_0_s
.Lx00157_0_s:
 .string ""
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00148_n26_α:
 jmp qword ptr [rbp + 912]
 xchain00148_n26_β:
 jmp xchain00148_n25_α
 xchain00148_n27_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+816]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 824], rax
  .section .rodata
  .Lrkfn701: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn701]
 lea rsi, [rbp + 816]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain00148_n29_α
 jmp xchain00148_n28_α
 xchain00148_n27_β:
 jmp xchain00148_n29_α
# IR_ASSIGN gva
 xchain00148_n28_α:
 mov rax, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain00148_n29_α
 xchain00148_n28_β:
 jmp xchain00148_n29_α
# IR_LIT_INTEGER
 xchain00148_n29_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00158_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00148_n30_α
 xchain00148_n29_β:
 jmp xchain00148_n31_α
.Lx00158_0:
 .quad 0
# IR_ASSIGN gva
 xchain00148_n30_α:
 mov rax, qword ptr [rbp + 752]
 mov rdx, qword ptr [rbp + 760]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00148_n31_α
 xchain00148_n30_β:
 jmp xchain00148_n31_α
 xchain00148_n31_α:
 mov qword ptr [rbp + 672], 0
 mov rdi, qword ptr [rip + .Lx00159_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00159_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00159_3]
 lea rdx, [rip + .Lx00159_4]
 jmp rax
.Lx00159_3:
 mov qword ptr [rbp + 680], rsp
 mov rax, qword ptr [rbp + 672]
 test rax, rax
 jne .Lx00159_5
 mov qword ptr [rbp + 672], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00159_2
.Lx00159_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00159_2
.Lx00159_4:
 mov rax, qword ptr [rbp + 672]
 test rax, rax
 jne .Lx00159_6
 mov qword ptr [rbp + 672], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00159_2
.Lx00159_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00159_2
.Lx00159_1:
 call rt_faildescr@PLT
.Lx00159_2:
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain00148_n33_α
 jmp xchain00148_n32_α
 xchain00148_n31_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 680]
 jmp qword ptr [rsp]
.Lx00159_0:
 .quad .Lx00159_0_s
.Lx00159_0_s:
 .string "item"
# IR_VAR
 xchain00148_n32_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00148_n34_α
 xchain00148_n32_β:
 jmp xchain00148_n31_β
# IR_VAR
 xchain00148_n33_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00148_n35_α
 xchain00148_n33_β:
 jmp xchain00148_n36_α
 xchain00148_n34_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 704]
 mov rdx, qword ptr [rbp + 712]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00160_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00160_1
 call rt_proc_open_fn@PLT
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
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00148_n33_α
 jmp xchain00148_n31_β
 xchain00148_n34_β:
 jmp xchain00148_n33_α
.Lx00160_0:
 .quad .Lx00160_0_s
.Lx00160_0_s:
 .string "tabulate"
# IR_LIT_INTEGER
 xchain00148_n35_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00161_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00148_n37_α
 xchain00148_n35_β:
 jmp xchain00148_n36_α
.Lx00161_0:
 .quad 3
# IR_VAR
 xchain00148_n36_α:
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 136], rax
 jmp xchain00148_n38_α
 xchain00148_n36_β:
 jmp xchain00148_n39_α
 xchain00148_n37_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+480]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 488], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+496]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 504], rax
  .section .rodata
  .Lrkfn715: .string "sort"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn715]
 lea rsi, [rbp + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00148_n36_α
 jmp xchain00148_n40_α
 xchain00148_n37_β:
 jmp xchain00148_n36_α
 xchain00148_n38_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+96]
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn717: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn717]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00148_n39_α
 jmp xchain00148_n41_α
 xchain00148_n38_β:
 jmp xchain00148_n39_α
 xchain00148_n39_α:
 mov rdi, qword ptr [rip + .Lx00162_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00162_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00162_3]
 lea rdx, [rip + .Lx00162_4]
 jmp rax
.Lx00162_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00162_2
.Lx00162_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00162_2
.Lx00162_1:
 call rt_faildescr@PLT
.Lx00162_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain00148_n39_β:
 jmp main_ω
.Lx00162_0:
 .quad .Lx00162_0_s
.Lx00162_0_s:
 .string "Term__"
 xchain00148_n40_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00148_n36_α
 xchain00148_n40_β:
 jmp xchain00148_n36_α
 xchain00148_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 80]
 mov rdx, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain00148_n42_α
 xchain00148_n41_β:
 jmp xchain00148_n39_α
# IR_VAR
 xchain00148_n42_α:
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 312], rax
 jmp xchain00148_n43_α
 xchain00148_n42_β:
 jmp xchain00148_n36_α
# IR_VAR
 xchain00148_n43_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00148_n44_α
 xchain00148_n43_β:
 jmp xchain00148_n36_α
 xchain00148_n44_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+256]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 264], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+272]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 280], rax
  .section .rodata
  .Lrkfn726: .string "left"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn726]
 lea rsi, [rbp + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain00148_n36_α
 jmp xchain00148_n45_α
 xchain00148_n44_β:
 jmp xchain00148_n36_α
# IR_VAR
 xchain00148_n45_α:
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 424], rax
 jmp xchain00148_n46_α
 xchain00148_n45_β:
 jmp xchain00148_n36_α
 xchain00148_n46_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+384]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
  .section .rodata
  .Lrkfn730: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn730]
 lea rsi, [rbp + 384]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain00148_n36_α
 jmp xchain00148_n47_α
 xchain00148_n46_β:
 jmp xchain00148_n36_α
 xchain00148_n47_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, qword ptr [rbp + 368]
 mov rcx, qword ptr [rbp + 376]
 call str_concat_d@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00148_n48_α
 xchain00148_n47_β:
 jmp xchain00148_n36_α
 xchain00148_n48_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00163_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00163_1
 call rt_proc_open_fn@PLT
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
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain00148_n36_α
 jmp xchain00148_n36_α
 xchain00148_n48_β:
 jmp xchain00148_n36_α
.Lx00163_0:
 .quad .Lx00163_0_s
.Lx00163_0_s:
 .string "format"
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 1560]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 1560]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
