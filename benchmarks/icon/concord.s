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
  mov qword ptr [rsp + 2040], rsp
  mov rdi, rsp
  mov esi, 2032
  mov edx, 2096
  call rt_jmp_frame_lexprep2@PLT
proc_tabulate_α_body:
# IR_VAR
 xchain0_n0_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 2008], rax
 jmp xchain0_n1_α
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
 xchain0_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1904]
 mov rdx, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n5_α:
 mov rax, 4294967305
 mov rdx, 1879052288
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain0_n6_α
# IR_VAR
 xchain0_n6_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1816], rax
 jmp xchain0_n7_α
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
# IR_VAR
 xchain0_n10_α:
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 1416], rax
 jmp xchain0_n11_α
# IR_LIT_CHARSET
 xchain0_n11_α:
 mov qword ptr [rbp + 1504], 1
 mov dword ptr [rbp + 1508], -1
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain0_n13_α
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string "0123456789"
# IR_DISJUNCTION_NARY
 xchain0_n12_α:
 mov qword ptr [rbp + 144], 0
 mov qword ptr [rbp + 152], 0
 mov dword ptr [rbp + 160], 0
 jmp xchain0_n15_α
xchain0_n12_as:
 mov eax, dword ptr [rbp + 160]
 cmp eax, 0
 jne .Lx20_0
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 152], rax
 jmp xchain0_n14_α
.Lx20_0:
 cmp eax, 1
 jne .Lx20_1
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 152], rax
 jmp xchain0_n14_α
.Lx20_1:
 jmp xchain0_n14_α
 xchain0_n12_β:
 mov eax, dword ptr [rbp + 160]
 cmp eax, 0
 je xchain0_n32_α
 jmp xchain0_n32_α
xchain0_n12_af:
 add dword ptr [rbp + 160], 1
 mov eax, dword ptr [rbp + 160]
 cmp eax, 1
 je xchain0_n16_α
 jmp xchain0_n32_α
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
 jmp xchain0_n19_α
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
 xchain0_n14_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
 jmp xchain0_n20_α
xchain0_n14_β:
 jmp xchain0_n32_α
# IR_DISJUNCTION_NARY
 xchain0_n15_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 mov dword ptr [rbp + 448], 0
 jmp xchain0_n22_α
xchain0_n15_as:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 jne .Lx25_0
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 jmp xchain0_n21_α
.Lx25_0:
 cmp eax, 1
 jne .Lx25_1
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 440], rax
 jmp xchain0_n21_α
.Lx25_1:
 jmp xchain0_n21_α
 xchain0_n15_β:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 je xchain0_n15_af
 jmp xchain0_n15_af
xchain0_n15_af:
 add dword ptr [rbp + 448], 1
 mov eax, dword ptr [rbp + 448]
 cmp eax, 1
 je xchain0_n23_α
 jmp xchain0_n12_af
# IR_DISJUNCTION_NARY
 xchain0_n16_α:
 mov qword ptr [rbp + 1072], 0
 mov qword ptr [rbp + 1080], 0
 mov dword ptr [rbp + 1088], 0
 jmp xchain0_n27_α
xchain0_n16_as:
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 0
 jne .Lx27_0
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1080], rax
 jmp xchain0_n26_α
.Lx27_0:
 cmp eax, 1
 jne .Lx27_1
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1080], rax
 jmp xchain0_n26_α
.Lx27_1:
 jmp xchain0_n26_α
 xchain0_n16_β:
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 0
 je xchain0_n28_β
 jmp xchain0_n26_α
xchain0_n16_af:
 add dword ptr [rbp + 1088], 1
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 1
 je xchain0_n29_α
 jmp xchain0_n26_α
# IR_ASSIGN_VAR
 xchain0_n17_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, qword ptr [rbp + 288]
 mov rcx, qword ptr [rbp + 296]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n32_α
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain0_n12_as
 xchain0_n17_β:
 jmp xchain0_n32_α
 xchain0_n18_α:
 jmp xchain0_n12_as
xchain0_n18_β:
 jmp xchain0_n32_α
# IR_SCAN_TAB
 xchain0_n19_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1480]
 cmp rax, 1
 jge .Lx31_0
 add rax, r15
 add rax, 1
.Lx31_0:
 cmp rax, 1
 jge .Lx31_239
 add rsp, 16
 jmp xchain0_n13_β
.Lx31_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx31_240
 add rsp, 16
 jmp xchain0_n13_β
.Lx31_240:
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
 jmp xchain0_n33_α
 xchain0_n19_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain0_n13_β
# IR_GEN_SCAN
 xchain0_n20_α:
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
 xchain0_n20_β:
 jmp proc_tabulate_ω
# IR_VAR_REF
 xchain0_n21_α:
 mov rax, 4294967305
 mov rdx, 1879052288
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain0_n34_α
# IR_VAR
 xchain0_n22_α:
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 504], rax
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n15_af
# IR_VAR
 xchain0_n23_α:
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 568], rax
 jmp xchain0_n35_α
 xchain0_n23_β:
 jmp xchain0_n15_af
# IR_UNOP
 xchain0_n24_α:
 mov eax, dword ptr [rbp + 2048]
 cmp eax, 99
 je xchain0_n15_af
 cmp eax, 0
 jne xchain0_n15_af
 mov qword ptr [rbp + 464], 0
 mov qword ptr [rbp + 472], 0
 jmp xchain0_n15_as
 xchain0_n24_β:
 jmp xchain0_n15_af
 xchain0_n25_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 2048]
 mov rsi, qword ptr [rbp + 2056]
 mov rdx, qword ptr [rbp + 32]
 mov rcx, qword ptr [rbp + 40]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n15_af
 mov rdi, qword ptr [rbp + 32]
 mov rsi, qword ptr [rbp + 40]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain0_n15_as
 xchain0_n25_β:
 jmp xchain0_n15_af
# IR_VAR_REF
 xchain0_n26_α:
 mov rax, 4294967305
 mov rdx, 1879052288
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain0_n36_α
# IR_LIT_STRING
 xchain0_n27_α:
 mov qword ptr [rbp + 1280], 1
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain0_n37_α
 xchain0_n27_β:
 jmp xchain0_n16_af
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "("
# IR_SCAN_UPTO
 xchain0_n28_α:
 mov qword ptr [rbp + 1168], r14
.Lx46_0:
 mov rax, qword ptr [rbp + 1168]
 cmp rax, r15
 jge xchain0_n26_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx46_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx46_1
 mov qword ptr [rbp + 1152], 6
 add rax, 1
 mov qword ptr [rbp + 1160], rax
 jmp xchain0_n38_α
.Lx46_1:
 inc qword ptr [rbp + 1168]
 jmp .Lx46_0
 xchain0_n28_β:
 inc qword ptr [rbp + 1168]
 jmp .Lx46_0
.Lx46_2:
 .quad .Lx46_2_s
.Lx46_2_s:
 .string ")"
# IR_LIT_INTEGER
 xchain0_n29_α:
 mov qword ptr [rbp + 1328], 6
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp xchain0_n26_α
.Lx47_0:
 .quad 1
 xchain0_n30_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1120]
 mov rdx, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain0_n16_as
 xchain0_n30_β:
 jmp xchain0_n26_α
 xchain0_n31_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1328]
 mov rdx, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain0_n16_as
 xchain0_n31_β:
 jmp xchain0_n26_α
# IR_GEN_SCAN
 xchain0_n32_α:
 lea rdi, [rbp + 64]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 64]
 mov r14, qword ptr [rbp + 72]
 mov r15, qword ptr [rbp + 80]
 jmp proc_tabulate_ω
 xchain0_n32_β:
 jmp proc_tabulate_ω
 xchain0_n33_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 2064]
 mov rsi, qword ptr [rbp + 2072]
 mov rdx, qword ptr [rbp + 1440]
 mov rcx, qword ptr [rbp + 1448]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain0_n39_α
# IR_VAR
 xchain0_n34_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 216], rax
 jmp xchain0_n40_α
# IR_VAR
 xchain0_n35_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 600], rax
 jmp xchain0_n25_α
# IR_VAR
 xchain0_n36_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 680], rax
 jmp xchain0_n41_α
# IR_SCAN_MATCH
 xchain0_n37_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx60_239
 add rsp, 16
 jmp xchain0_n16_af
.Lx60_239:
 mov rdi, qword ptr [rip + .Lx60_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx60_240
 add rsp, 16
 jmp xchain0_n16_af
.Lx60_240:
 mov qword ptr [rbp + 1248], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 1256], rax
 jmp xchain0_n42_α
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
 .string "("
# IR_SCAN_TAB
 xchain0_n38_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1160]
 cmp rax, 1
 jge .Lx62_0
 add rax, r15
 add rax, 1
.Lx62_0:
 cmp rax, 1
 jge .Lx62_239
 add rsp, 16
 jmp xchain0_n28_β
.Lx62_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx62_240
 add rsp, 16
 jmp xchain0_n28_β
.Lx62_240:
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
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain0_n30_α
 xchain0_n38_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain0_n28_β
 xchain0_n39_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1376]
 mov rdx, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain0_n43_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n40_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n32_α
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain0_n44_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n41_α:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 672]
 mov rcx, qword ptr [rbp + 680]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n32_α
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain0_n45_α
# IR_SCAN_TAB
 xchain0_n42_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1256]
 cmp rax, 1
 jge .Lx67_0
 add rax, r15
 add rax, 1
.Lx67_0:
 cmp rax, 1
 jge .Lx67_239
 add rsp, 16
 jmp xchain0_n16_af
.Lx67_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx67_240
 add rsp, 16
 jmp xchain0_n16_af
.Lx67_240:
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
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain0_n46_α
 xchain0_n42_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain0_n16_af
# IR_LIT_CHARSET
 xchain0_n43_α:
 mov qword ptr [rbp + 1744], 1
 mov dword ptr [rbp + 1748], -1
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [rbp + 1752], rax
 jmp xchain0_n47_α
.Lx68_0:
 .quad .Lx68_0_s
.Lx68_0_s:
 .string "0123456789"
# IR_DEREF variable -> value
 xchain0_n44_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n32_α
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain0_n48_α
# IR_VAR
 xchain0_n45_α:
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 856], rax
 jmp xchain0_n49_α
# IR_LIT_CHARSET
 xchain0_n46_α:
 mov qword ptr [rbp + 1184], 1
 mov dword ptr [rbp + 1188], -1
 mov rax, qword ptr [rip + .Lx72_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain0_n28_α
.Lx72_0:
 .quad .Lx72_0_s
.Lx72_0_s:
 .string ")"
# IR_SCAN_MANY
 xchain0_n47_α:
 mov eax, r14d
.Lx74_0:
 cmp eax, r15d
 jge .Lx74_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx74_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx74_1
 add eax, 1
 jmp .Lx74_0
.Lx74_1:
 cmp eax, r14d
 je xchain0_n54_α
 mov qword ptr [rbp + 1712], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 1720], rcx
 jmp xchain0_n50_α
 xchain0_n47_β:
 jmp xchain0_n54_α
.Lx74_2:
 .quad .Lx74_2_s
.Lx74_2_s:
 .string "0123456789"
# IR_VAR
 xchain0_n48_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 376], rax
 jmp xchain0_n51_α
# IR_LIT_STRING
 xchain0_n49_α:
 mov qword ptr [rbp + 880], 1
 mov rax, qword ptr [rip + .Lx77_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain0_n52_α
.Lx77_0:
 .quad .Lx77_0_s
.Lx77_0_s:
 .string "("
# IR_SCAN_TAB
 xchain0_n50_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1720]
 cmp rax, 1
 jge .Lx79_0
 add rax, r15
 add rax, 1
.Lx79_0:
 cmp rax, 1
 jge .Lx79_239
 add rsp, 16
 jmp xchain0_n54_α
.Lx79_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx79_240
 add rsp, 16
 jmp xchain0_n54_α
.Lx79_240:
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
 jmp xchain0_n53_α
 xchain0_n50_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain0_n54_α
# IR_LIT_STRING
 xchain0_n51_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx80_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain0_n55_α
.Lx80_0:
 .quad .Lx80_0_s
.Lx80_0_s:
 .string ", "
 xchain0_n52_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 2064]
 mov rsi, qword ptr [rbp + 2072]
 mov rdx, qword ptr [rbp + 880]
 mov rcx, qword ptr [rbp + 888]
 call str_concat_d@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain0_n56_α
 xchain0_n53_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1680]
 mov rdx, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain0_n54_α
# IR_VAR
 xchain0_n54_α:
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 1608], rax
 jmp xchain0_n57_α
 xchain0_n55_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 32]
 mov rsi, qword ptr [rbp + 40]
 mov rdx, qword ptr [rbp + 400]
 mov rcx, qword ptr [rbp + 408]
 call str_concat_d@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain0_n58_α
# IR_VAR
 xchain0_n56_α:
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 984], rax
 jmp xchain0_n59_α
# IR_VAR
 xchain0_n57_α:
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 1640], rax
 jmp xchain0_n60_α
 xchain0_n58_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 call str_concat_d@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain0_n17_α
# IR_LIT_INTEGER
 xchain0_n59_α:
 mov qword ptr [rbp + 1008], 6
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain0_n61_α
.Lx91_0:
 .quad 1
 xchain0_n60_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 2064]
 mov rsi, qword ptr [rbp + 2072]
 mov rdx, qword ptr [rbp + 2048]
 mov rcx, qword ptr [rbp + 2056]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain0_n62_α
# IR_COERCE_NUMERIC
 xchain0_n61_α:
 mov eax, dword ptr [rbp + 2080]
 cmp eax, 7
 je .Lx94_1
 cmp eax, 6
 jne .Lx94_0
 mov eax, dword ptr [rbp + 1008]
 cmp eax, 6
 jne .Lx94_0
.Lx94_1:
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 952], rax
 jmp xchain0_n63_α
.Lx94_0:
 lea rdi, [rbp + 2080]
 lea rsi, [rbp + 1008]
 lea rdx, [rbp + 944]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n63_α
 xchain0_n62_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1568]
 mov rdx, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain0_n64_α
 xchain0_n63_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 944]
 cmp eax, 100
 je .Lx96_0
 mov eax, dword ptr [rbp + 944]
 cmp eax, 6
 jne .Lx96_2
.Lx96_1:
 mov rax, qword ptr [rbp + 952]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 912], 6
 mov qword ptr [rbp + 920], rax
 jmp xchain0_n65_α
.Lx96_0:
 mov rdi, qword ptr [rbp + 944]
 mov rsi, qword ptr [rbp + 952]
 mov rdx, qword ptr [rbp + 1008]
 mov rcx, qword ptr [rbp + 1016]
 mov r8d, 0
 lea r9, [rbp + 912]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain0_n65_α
.Lx96_2:
 mov rdi, qword ptr [rbp + 944]
 mov rsi, qword ptr [rbp + 952]
 mov rdx, qword ptr [rbp + 1008]
 mov rcx, qword ptr [rbp + 1016]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n32_α
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain0_n65_α
 xchain0_n63_β:
 jmp xchain0_n32_α
 xchain0_n64_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1544], rax
 jmp xchain0_n10_α
xchain0_n64_β:
 jmp xchain0_n10_α
 xchain0_n65_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 816]
 mov rsi, qword ptr [rbp + 824]
 mov rdx, qword ptr [rbp + 912]
 mov rcx, qword ptr [rbp + 920]
 call str_concat_d@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain0_n66_α
# IR_LIT_STRING
 xchain0_n66_α:
 mov qword ptr [rbp + 1040], 1
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain0_n67_α
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "), "
 xchain0_n67_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 784]
 mov rsi, qword ptr [rbp + 792]
 mov rdx, qword ptr [rbp + 1040]
 mov rcx, qword ptr [rbp + 1048]
 call str_concat_d@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain0_n68_α
# IR_ASSIGN_VAR
 xchain0_n68_α:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n32_α
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain0_n18_α
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
proc_tabulate_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 2144
 mov qword ptr [rsp + 2136], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 2096], r11
 lea rax, [rip + .Lx00001_2]
 mov qword ptr [rbp + 2104], rax
 lea rax, [rip + .Lx00001_3]
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2040], rbp
 mov qword ptr [rbp + 16], rsi
 mov qword ptr [rbp + 24], rdx
 mov rdi, rbp
 mov esi, 2032
 mov edx, 2096
 mov ecx, 2
 mov r8d, 2
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_tabulate_α_body
.Lx00001_2:
 mov rdx, qword ptr [rsp + -2144]
 mov rcx, rsp
 add rcx, -2128
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00001_3:
 mov rdi, qword ptr [rsp + -2144]
 mov rsi, rsp
 add rsi, -2128
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 1464], rsp
  mov rdi, rsp
  mov esi, 1456
  mov edx, 1488
  call rt_jmp_frame_lexprep2@PLT
proc_format_α_body:
# IR_VAR
 xchain00002_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp xchain00002_n1_α
# IR_UNOP
 xchain00002_n1_α:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 call rt_size_d@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00002_n3_α
# IR_VAR
 xchain00002_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 120], rax
 jmp xchain00002_n4_α
# IR_VAR
 xchain00002_n3_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00002_n5_α
# IR_LIT_INTEGER
 xchain00002_n4_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00003_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00002_n6_α
.Lx00003_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00002_n5_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx00004_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain00002_n7_α
.Lx00004_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00002_n6_α:
 mov qword ptr [rbp + 176], 6
 mov rax, qword ptr [rip + .Lx00005_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00002_n8_α
.Lx00005_0:
 .quad 18446744073709551614
# IR_COERCE_NUMERIC
 xchain00002_n7_α:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 7
 je .Lx00006_1
 cmp eax, 6
 jne .Lx00006_0
 mov eax, dword ptr [rbp + 400]
 cmp eax, 6
 jne .Lx00006_0
.Lx00006_1:
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
 jmp xchain00002_n9_α
.Lx00006_0:
 lea rdi, [rbp + 368]
 lea rsi, [rbp + 400]
 lea rdx, [rbp + 336]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00002_n9_α
# IR_SUBSCRIPT section
 xchain00002_n8_α:
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
 jmp xchain00002_n10_α
 xchain00002_n9_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 336]
 cmp eax, 100
 je .Lx00007_0
 mov eax, dword ptr [rbp + 336]
 cmp eax, 6
 jne .Lx00007_2
.Lx00007_1:
 mov rax, qword ptr [rbp + 344]
 mov rcx, 2
 add rax, rcx
 mov qword ptr [rbp + 304], 6
 mov qword ptr [rbp + 312], rax
 jmp xchain00002_n11_α
.Lx00007_0:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 mov rdx, qword ptr [rbp + 400]
 mov rcx, qword ptr [rbp + 408]
 mov r8d, 0
 lea r9, [rbp + 304]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00002_n11_α
.Lx00007_2:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 mov rdx, qword ptr [rbp + 400]
 mov rcx, qword ptr [rbp + 408]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00002_n2_α
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain00002_n11_α
 xchain00002_n9_β:
 jmp xchain00002_n2_α
 xchain00002_n10_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+48]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 56], rax
  .section .rodata
  .Lrkfn118: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn118]
 lea rsi, [rbp + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_format_ω
 jmp proc_format_ω
 xchain00002_n10_β:
 jmp proc_format_ω
 xchain00002_n11_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 240]
 cmp eax, 100
 je .Lx00008_0
 mov eax, dword ptr [rbp + 304]
 cmp eax, 100
 je .Lx00008_0
 mov eax, dword ptr [rbp + 240]
 cmp eax, 6
 jne .Lx00008_2
 mov eax, dword ptr [rbp + 304]
 cmp eax, 6
 jne .Lx00008_2
.Lx00008_1:
 mov rax, qword ptr [rbp + 248]
 mov rcx, qword ptr [rbp + 312]
 cmp rax, rcx
 jle xchain00002_n2_α
 mov rcx, qword ptr [rbp + 304]
 mov qword ptr [rbp + 208], rcx
 mov rcx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 216], rcx
 jmp xchain00002_n12_α
.Lx00008_0:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 mov r8d, 7
 lea r9, [rbp + 208]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00008_1
 cmp eax, 1
 je xchain00002_n2_α
 jmp xchain00002_n12_α
.Lx00008_2:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00002_n2_α
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 216], rax
 jmp xchain00002_n12_α
# IR_VAR
 xchain00002_n12_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain00002_n13_α
# IR_LIT_INTEGER
 xchain00002_n13_α:
 mov qword ptr [rbp + 1424], 6
 mov rax, qword ptr [rip + .Lx00009_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain00002_n15_α
.Lx00009_0:
 .quad 2
# IR_VAR_REF
 xchain00002_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain00002_n16_α
# IR_COERCE_NUMERIC
 xchain00002_n15_α:
 mov eax, dword ptr [rbp + 1392]
 cmp eax, 7
 je .Lx00010_1
 cmp eax, 6
 jne .Lx00010_0
 mov eax, dword ptr [rbp + 1424]
 cmp eax, 6
 jne .Lx00010_0
.Lx00010_1:
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1368], rax
 jmp xchain00002_n17_α
.Lx00010_0:
 lea rdi, [rbp + 1392]
 lea rsi, [rbp + 1424]
 lea rdx, [rbp + 1360]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00002_n17_α
# IR_VAR
 xchain00002_n16_α:
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1176], rax
 jmp xchain00002_n18_α
 xchain00002_n17_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1360]
 cmp eax, 100
 je .Lx00011_0
 mov eax, dword ptr [rbp + 1360]
 cmp eax, 6
 jne .Lx00011_2
.Lx00011_1:
 mov rax, qword ptr [rbp + 1368]
 mov rcx, 2
 add rax, rcx
 mov qword ptr [rbp + 1328], 6
 mov qword ptr [rbp + 1336], rax
 jmp xchain00002_n19_α
.Lx00011_0:
 mov rdi, qword ptr [rbp + 1360]
 mov rsi, qword ptr [rbp + 1368]
 mov rdx, qword ptr [rbp + 1424]
 mov rcx, qword ptr [rbp + 1432]
 mov r8d, 0
 lea r9, [rbp + 1328]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00002_n19_α
.Lx00011_2:
 mov rdi, qword ptr [rbp + 1360]
 mov rsi, qword ptr [rbp + 1368]
 mov rdx, qword ptr [rbp + 1424]
 mov rcx, qword ptr [rbp + 1432]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00002_n14_α
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain00002_n19_α
 xchain00002_n17_β:
 jmp xchain00002_n14_α
# IR_LIT_INTEGER
 xchain00002_n18_α:
 mov qword ptr [rbp + 1200], 6
 mov rax, qword ptr [rip + .Lx00012_0]
 mov qword ptr [rbp + 1208], rax
 jmp xchain00002_n20_α
.Lx00012_0:
 .quad 1
 xchain00002_n19_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1328]
 mov rdx, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain00002_n14_α
# IR_COERCE_NUMERIC
 xchain00002_n20_α:
 mov eax, dword ptr [rbp + 1472]
 cmp eax, 7
 je .Lx00013_1
 cmp eax, 6
 jne .Lx00013_0
 mov eax, dword ptr [rbp + 1200]
 cmp eax, 6
 jne .Lx00013_0
.Lx00013_1:
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1144], rax
 jmp xchain00002_n21_α
.Lx00013_0:
 lea rdi, [rbp + 1472]
 lea rsi, [rbp + 1200]
 lea rdx, [rbp + 1136]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00002_n21_α
 xchain00002_n21_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 100
 je .Lx00014_0
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 6
 jne .Lx00014_2
.Lx00014_1:
 mov rax, qword ptr [rbp + 1144]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 1104], 6
 mov qword ptr [rbp + 1112], rax
 jmp xchain00002_n22_α
.Lx00014_0:
 mov rdi, qword ptr [rbp + 1136]
 mov rsi, qword ptr [rbp + 1144]
 mov rdx, qword ptr [rbp + 1200]
 mov rcx, qword ptr [rbp + 1208]
 mov r8d, 1
 lea r9, [rbp + 1104]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00002_n22_α
.Lx00014_2:
 mov rdi, qword ptr [rbp + 1136]
 mov rsi, qword ptr [rbp + 1144]
 mov rdx, qword ptr [rbp + 1200]
 mov rcx, qword ptr [rbp + 1208]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00002_n14_α
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00002_n22_α
 xchain00002_n21_β:
 jmp xchain00002_n14_α
 xchain00002_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1104]
 mov rdx, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain00002_n23_α
# IR_SUBSCRIPT x[i] variable
 xchain00002_n23_α:
 mov rdi, qword ptr [rbp + 1056]
 mov rsi, qword ptr [rbp + 1064]
 mov rdx, qword ptr [rbp + 1088]
 mov rcx, qword ptr [rbp + 1096]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00002_n14_α
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain00002_n24_α
# IR_DEREF variable -> value
 xchain00002_n24_α:
 mov rdi, qword ptr [rbp + 1232]
 mov rsi, qword ptr [rbp + 1240]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00002_n14_α
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain00002_n25_α
# IR_LIT_STRING
 xchain00002_n25_α:
 mov qword ptr [rbp + 1280], 1
 mov rax, qword ptr [rip + .Lx00015_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain00002_n26_α
.Lx00015_0:
 .quad .Lx00015_0_s
.Lx00015_0_s:
 .string " "
 xchain00002_n26_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 1264]
 mov rsi, qword ptr [rbp + 1272]
 mov rdx, qword ptr [rbp + 1280]
 mov rcx, qword ptr [rbp + 1288]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00002_n14_α
 mov rdi, qword ptr [rbp + 1280]
 mov rsi, qword ptr [rbp + 1288]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain00002_n27_α
# IR_VAR
 xchain00002_n27_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 936], rax
 jmp xchain00002_n28_α
# IR_LIT_INTEGER
 xchain00002_n28_α:
 mov qword ptr [rbp + 960], 6
 mov rax, qword ptr [rip + .Lx00016_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00002_n30_α
.Lx00016_0:
 .quad 1
# IR_LIT_STRING
 xchain00002_n29_α:
 mov qword ptr [rbp + 560], 1
 mov rax, qword ptr [rip + .Lx00017_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00002_n31_α
.Lx00017_0:
 .quad .Lx00017_0_s
.Lx00017_0_s:
 .string " "
# IR_VAR
 xchain00002_n30_α:
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00002_n32_α
# IR_VAR
 xchain00002_n31_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00002_n33_α
# IR_SUBSCRIPT section
 xchain00002_n32_α:
 mov rdi, qword ptr [rbp + 928]
 mov rsi, qword ptr [rbp + 936]
 mov rdx, qword ptr [rbp + 960]
 mov rcx, qword ptr [rbp + 968]
 mov r8, qword ptr [rbp + 992]
 mov r9, qword ptr [rbp + 1000]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00002_n29_α
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain00002_n34_α
 xchain00002_n33_α:
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
  .Lrkfn148: .string "repl"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn148]
 lea rsi, [rbp + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain00002_n0_α
 jmp xchain00002_n35_α
 xchain00002_n33_β:
 jmp xchain00002_n0_α
 xchain00002_n34_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+896] -> [zr+864]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 872], rax
  .section .rodata
  .Lrkfn150: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn150]
 lea rsi, [rbp + 864]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain00002_n29_α
 jmp xchain00002_n29_α
 xchain00002_n34_β:
 jmp xchain00002_n29_α
# IR_VAR
 xchain00002_n35_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 664], rax
 jmp xchain00002_n36_α
# IR_VAR
 xchain00002_n36_α:
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 760], rax
 jmp xchain00002_n37_α
# IR_LIT_INTEGER
 xchain00002_n37_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx00018_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain00002_n38_α
.Lx00018_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00002_n38_α:
 mov eax, dword ptr [rbp + 1472]
 cmp eax, 7
 je .Lx00019_1
 cmp eax, 6
 jne .Lx00019_0
 mov eax, dword ptr [rbp + 784]
 cmp eax, 6
 jne .Lx00019_0
.Lx00019_1:
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 728], rax
 jmp xchain00002_n39_α
.Lx00019_0:
 lea rdi, [rbp + 1472]
 lea rsi, [rbp + 784]
 lea rdx, [rbp + 720]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00002_n39_α
 xchain00002_n39_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 720]
 cmp eax, 100
 je .Lx00020_0
 mov eax, dword ptr [rbp + 720]
 cmp eax, 6
 jne .Lx00020_2
.Lx00020_1:
 mov rax, qword ptr [rbp + 728]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 688], 6
 mov qword ptr [rbp + 696], rax
 jmp xchain00002_n40_α
.Lx00020_0:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 784]
 mov rcx, qword ptr [rbp + 792]
 mov r8d, 0
 lea r9, [rbp + 688]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00002_n40_α
.Lx00020_2:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 784]
 mov rcx, qword ptr [rbp + 792]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00002_n0_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00002_n40_α
 xchain00002_n39_β:
 jmp xchain00002_n0_α
# IR_LIT_INTEGER
 xchain00002_n40_α:
 mov qword ptr [rbp + 816], 6
 mov rax, qword ptr [rip + .Lx00021_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00002_n41_α
.Lx00021_0:
 .quad 0
# IR_SUBSCRIPT section
 xchain00002_n41_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 mov r8, qword ptr [rbp + 816]
 mov r9, qword ptr [rbp + 824]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00002_n0_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00002_n42_α
 xchain00002_n42_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call str_concat_d@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00002_n43_α
 xchain00002_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00002_n44_α
 xchain00002_n44_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 440], rax
 jmp xchain00002_n0_α
xchain00002_n44_β:
 jmp xchain00002_n0_α
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
proc_format_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 1536
 mov qword ptr [rsp + 1528], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 1488], r11
 lea rax, [rip + .Lx00022_2]
 mov qword ptr [rbp + 1496], rax
 lea rax, [rip + .Lx00022_3]
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1464], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 1456
 mov edx, 1488
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_format_α_body
.Lx00022_2:
 mov rdx, qword ptr [rsp + -1536]
 mov rcx, rsp
 add rcx, -1520
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00022_3:
 mov rdi, qword ptr [rsp + -1536]
 mov rsi, rsp
 add rsi, -1520
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 1192], rsp
  mov rdi, rsp
  mov esi, 1168
  mov edx, 1248
  call rt_jmp_frame_lexprep2@PLT
proc_item_α_body:
lea rax, [rip + xchain00023_n34_β]
mov qword ptr [rbp + 1168], rax
 xchain00023_n0_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn167: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn167]
 lea rsi, [rbp + 48]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_item_ω
 jmp xchain00023_n1_α
 xchain00023_n0_β:
 jmp proc_item_ω
 xchain00023_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00023_n2_α
# IR_VAR
 xchain00023_n2_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00023_n3_α
# IR_LIT_INTEGER
 xchain00023_n3_α:
 mov qword ptr [rbp + 1136], 6
 mov rax, qword ptr [rip + .Lx00024_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain00023_n5_α
.Lx00024_0:
 .quad 1
# IR_VAR
 xchain00023_n4_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain00023_n6_α
# IR_COERCE_NUMERIC
 xchain00023_n5_α:
 mov eax, dword ptr [rbp + 1104]
 cmp eax, 7
 je .Lx00025_1
 cmp eax, 6
 jne .Lx00025_0
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 6
 jne .Lx00025_0
.Lx00025_1:
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00023_n8_α
.Lx00025_0:
 lea rdi, [rbp + 1104]
 lea rsi, [rbp + 1136]
 lea rdx, [rbp + 1072]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00023_n8_α
# IR_LIT_INTEGER
 xchain00023_n6_α:
 mov qword ptr [rbp + 928], 6
 mov rax, qword ptr [rip + .Lx00026_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain00023_n9_α
.Lx00026_0:
 .quad 6
# IR_VAR
 xchain00023_n7_α:
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 728], rax
 jmp xchain00023_n10_α
 xchain00023_n8_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1072]
 cmp eax, 100
 je .Lx00027_0
 mov eax, dword ptr [rbp + 1072]
 cmp eax, 6
 jne .Lx00027_2
.Lx00027_1:
 mov rax, qword ptr [rbp + 1080]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 1040], 6
 mov qword ptr [rbp + 1048], rax
 jmp xchain00023_n12_α
.Lx00027_0:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, qword ptr [rbp + 1136]
 mov rcx, qword ptr [rbp + 1144]
 mov r8d, 0
 lea r9, [rbp + 1040]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00023_n12_α
.Lx00027_2:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, qword ptr [rbp + 1136]
 mov rcx, qword ptr [rbp + 1144]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00023_n4_α
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00023_n12_α
 xchain00023_n8_β:
 jmp xchain00023_n4_α
 xchain00023_n9_α:
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
  .Lrkfn179: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn179]
 lea rsi, [rbp + 848]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain00023_n7_α
 jmp xchain00023_n13_α
 xchain00023_n9_β:
 jmp xchain00023_n7_α
 xchain00023_n10_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+720] -> [zr+688]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 696], rax
  .section .rodata
  .Lrkfn181: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn181]
 lea rsi, [rbp + 688]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain00023_n11_α
 jmp xchain00023_n14_α
 xchain00023_n10_β:
 jmp xchain00023_n11_α
# IR_LIT_INTEGER
 xchain00023_n11_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx00028_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00023_n15_α
.Lx00028_0:
 .quad 1
# IR_ASSIGN gva
 xchain00023_n12_α:
 mov rax, qword ptr [rbp + 1040]
 mov rdx, qword ptr [rbp + 1048]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain00023_n4_α
# IR_LIT_STRING
 xchain00023_n13_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx00029_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00023_n16_α
.Lx00029_0:
 .quad .Lx00029_0_s
.Lx00029_0_s:
 .string "  "
 xchain00023_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 672]
 mov rdx, qword ptr [rbp + 680]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00023_n11_α
 xchain00023_n15_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 624]
 mov rdx, qword ptr [rbp + 632]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00023_n17_α
# IR_VAR
 xchain00023_n16_α:
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00023_n18_α
# IR_VAR
 xchain00023_n17_α:
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 584], rax
 jmp xchain00023_n19_α
 xchain00023_n18_α:
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
  .Lrkfn192: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn192]
 lea rsi, [rbp + 768]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain00023_n7_α
 jmp xchain00023_n7_α
 xchain00023_n18_β:
 jmp xchain00023_n7_α
# IR_GEN_SCAN
 xchain00023_n19_α:
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00023_n20_α
# IR_LIT_CHARSET
 xchain00023_n20_α:
 mov qword ptr [rbp + 224], 1
 mov dword ptr [rbp + 228], -1
 mov rax, qword ptr [rip + .Lx00030_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00023_n21_α
.Lx00030_0:
 .quad .Lx00030_0_s
.Lx00030_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
# IR_SCAN_UPTO
 xchain00023_n21_α:
 mov qword ptr [rbp + 208], r14
.Lx00031_0:
 mov rax, qword ptr [rbp + 208]
 cmp rax, r15
 jge xchain00023_n35_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00031_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00031_1
 mov qword ptr [rbp + 192], 6
 add rax, 1
 mov qword ptr [rbp + 200], rax
 jmp xchain00023_n22_α
.Lx00031_1:
 inc qword ptr [rbp + 208]
 jmp .Lx00031_0
 xchain00023_n21_β:
 inc qword ptr [rbp + 208]
 jmp .Lx00031_0
.Lx00031_2:
 .quad .Lx00031_2_s
.Lx00031_2_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
# IR_SCAN_TAB
 xchain00023_n22_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 200]
 cmp rax, 1
 jge .Lx00032_0
 add rax, r15
 add rax, 1
.Lx00032_0:
 cmp rax, 1
 jge .Lx00032_239
 add rsp, 16
 jmp xchain00023_n21_β
.Lx00032_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00032_240
 add rsp, 16
 jmp xchain00023_n21_β
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
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00023_n23_α
 xchain00023_n22_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00023_n21_β
# IR_LIT_CHARSET
 xchain00023_n23_α:
 mov qword ptr [rbp + 544], 1
 mov dword ptr [rbp + 548], -1
 mov rax, qword ptr [rip + .Lx00033_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00023_n24_α
.Lx00033_0:
 .quad .Lx00033_0_s
.Lx00033_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
# IR_SCAN_MANY
 xchain00023_n24_α:
 mov eax, r14d
.Lx00034_0:
 cmp eax, r15d
 jge .Lx00034_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00034_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00034_1
 add eax, 1
 jmp .Lx00034_0
.Lx00034_1:
 cmp eax, r14d
 je xchain00023_n27_α
 mov qword ptr [rbp + 512], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 520], rcx
 jmp xchain00023_n25_α
 xchain00023_n24_β:
 jmp xchain00023_n27_α
.Lx00034_2:
 .quad .Lx00034_2_s
.Lx00034_2_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
# IR_SCAN_TAB
 xchain00023_n25_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 520]
 cmp rax, 1
 jge .Lx00035_0
 add rax, r15
 add rax, 1
.Lx00035_0:
 cmp rax, 1
 jge .Lx00035_239
 add rsp, 16
 jmp xchain00023_n27_α
.Lx00035_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00035_240
 add rsp, 16
 jmp xchain00023_n27_α
.Lx00035_240:
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
 jmp xchain00023_n26_α
 xchain00023_n25_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00023_n27_α
 xchain00023_n26_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00023_n27_α
# IR_DISJUNCTION_NARY
 xchain00023_n27_α:
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 mov dword ptr [rbp + 288], 0
 jmp xchain00023_n29_α
xchain00023_n27_as:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 0
 jne .Lx00036_0
 jmp xchain00023_n28_α
.Lx00036_0:
 jmp xchain00023_n28_α
 xchain00023_n27_β:
 mov eax, dword ptr [rbp + 288]
 jmp xchain00023_n20_α
xchain00023_n27_af:
 add dword ptr [rbp + 288], 1
 mov eax, dword ptr [rbp + 288]
 jmp xchain00023_n20_α
 xchain00023_n28_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 264], rax
 jmp xchain00023_n20_α
xchain00023_n28_β:
 jmp xchain00023_n20_α
# IR_VAR
 xchain00023_n29_α:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 408], rax
 jmp xchain00023_n30_α
 xchain00023_n29_β:
 jmp xchain00023_n27_af
# IR_UNOP
 xchain00023_n30_α:
 mov rdi, qword ptr [rbp + 1216]
 mov rsi, qword ptr [rbp + 1224]
 call rt_size_d@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00023_n31_α
# IR_LIT_INTEGER
 xchain00023_n31_α:
 mov qword ptr [rbp + 432], 6
 mov rax, qword ptr [rip + .Lx00037_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00023_n32_α
.Lx00037_0:
 .quad 3
 xchain00023_n32_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 368]
 cmp eax, 100
 je .Lx00038_0
 mov eax, dword ptr [rbp + 432]
 cmp eax, 100
 je .Lx00038_0
 mov eax, dword ptr [rbp + 368]
 cmp eax, 6
 jne .Lx00038_2
 mov eax, dword ptr [rbp + 432]
 cmp eax, 6
 jne .Lx00038_2
.Lx00038_1:
 mov rax, qword ptr [rbp + 376]
 mov rcx, qword ptr [rbp + 440]
 cmp rax, rcx
 jl xchain00023_n27_af
 mov rcx, qword ptr [rbp + 432]
 mov qword ptr [rbp + 336], rcx
 mov rcx, qword ptr [rbp + 440]
 mov qword ptr [rbp + 344], rcx
 jmp xchain00023_n33_α
.Lx00038_0:
 mov rdi, qword ptr [rbp + 368]
 mov rsi, qword ptr [rbp + 376]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 mov r8d, 8
 lea r9, [rbp + 336]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00038_1
 cmp eax, 1
 je xchain00023_n27_af
 jmp xchain00023_n33_α
.Lx00038_2:
 mov rdi, qword ptr [rbp + 368]
 mov rsi, qword ptr [rbp + 376]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 mov r8d, 8
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00023_n27_af
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 344], rax
 jmp xchain00023_n33_α
# IR_VAR
 xchain00023_n33_α:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 312], rax
 jmp xchain00023_n34_α
# IR_SUSPEND yield+resume
 xchain00023_n34_α:
 lea rax, [rip + xchain00023_n34_β]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 8], rax
 mov rdi, r14
 call rt_scan_sync_out@PLT
 jmp proc_item_γ
 xchain00023_n34_β:
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 jmp xchain00023_n27_β
# IR_GEN_SCAN
 xchain00023_n35_α:
 lea rdi, [rbp + 96]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 96]
 mov r14, qword ptr [rbp + 104]
 mov r15, qword ptr [rbp + 112]
 jmp xchain00023_n0_α
 xchain00023_n35_β:
 jmp xchain00023_n0_α
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
  mov qword ptr [rsp + 3592], rsp
  mov rdi, rsp
  mov esi, 3584
  mov edx, 3728
  call rt_jmp_frame_lexprep2@PLT
proc_options_α_body:
# IR_VAR_REF
 xchain00039_n0_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain00039_n1_α
# IR_NULLTEST_VAR
 xchain00039_n1_α:
 mov eax, dword ptr [rbp + 3424]
 cmp eax, 99
 je xchain00039_n3_α
 mov rdi, qword ptr [rbp + 3424]
 mov rsi, qword ptr [rbp + 3432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00039_n3_α
 cmp eax, 0
 jne xchain00039_n3_α
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3464], rax
 jmp xchain00039_n2_α
# IR_LIT_CHARSET
 xchain00039_n2_α:
 mov qword ptr [rbp + 3552], 1
 mov dword ptr [rbp + 3556], -1
 mov rax, qword ptr [rip + .Lx00040_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain00039_n4_α
.Lx00040_0:
 .quad .Lx00040_0_s
.Lx00040_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00039_n3_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn226: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn226]
 lea rsi, [rbp + 3408]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 cmp eax, 99
 je xchain00039_n6_α
 jmp xchain00039_n5_α
 xchain00039_n3_β:
 jmp xchain00039_n6_α
 xchain00039_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3552] -> [zr+3520]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3520], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3528], rax
  .section .rodata
  .Lrkfn228: .string "string"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn228]
 lea rsi, [rbp + 3520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 cmp eax, 99
 je xchain00039_n3_α
 jmp xchain00039_n7_α
 xchain00039_n4_β:
 jmp xchain00039_n3_α
 xchain00039_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3392]
 mov rdx, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain00039_n6_α
# IR_MAKE_LIST
 xchain00039_n6_α:
 lea rdi, [rbp + 3376]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain00039_n8_α
# IR_ASSIGN_VAR
 xchain00039_n7_α:
 mov rdi, qword ptr [rbp + 3456]
 mov rsi, qword ptr [rbp + 3464]
 mov rdx, qword ptr [rbp + 3504]
 mov rcx, qword ptr [rbp + 3512]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00039_n3_α
 mov qword ptr [rbp + 3488], rax
 mov qword ptr [rbp + 3496], rdx
 jmp xchain00039_n3_α
 xchain00039_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3360]
 mov rdx, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain00039_n9_α
# IR_VAR
 xchain00039_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00039_n10_α
 xchain00039_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn237: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn237]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00039_n11_α
 jmp xchain00039_n12_α
 xchain00039_n10_β:
 jmp xchain00039_n11_α
# IR_VAR
 xchain00039_n11_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 152], rax
 jmp xchain00039_n13_α
 xchain00039_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00039_n15_α
# IR_VAR
 xchain00039_n13_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 232], rax
 jmp xchain00039_n16_α
# IR_VAR
 xchain00039_n14_α:
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 56], rax
 jmp xchain00039_n17_α
# IR_VAR
 xchain00039_n15_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3320], rax
 jmp xchain00039_n18_α
 xchain00039_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn248: .string "pull"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn248]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00039_n14_α
 jmp xchain00039_n19_α
 xchain00039_n16_β:
 jmp xchain00039_n14_α
# IR_RETURN
 xchain00039_n17_α:
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_options_γ
# IR_GEN_SCAN
 xchain00039_n18_α:
 mov rdi, qword ptr [rbp + 3312]
 mov rsi, qword ptr [rbp + 3320]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00039_n20_α
 xchain00039_n19_α:
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
  .Lrkfn253: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn253]
 lea rsi, [rbp + 96]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00039_n14_α
 jmp xchain00039_n11_α
 xchain00039_n19_β:
 jmp xchain00039_n14_α
# IR_DISJUNCTION_NARY
 xchain00039_n20_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 mov dword ptr [rbp + 448], 0
 jmp xchain00039_n22_α
xchain00039_n20_as:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 jne .Lx00041_0
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 jmp xchain00039_n21_α
.Lx00041_0:
 cmp eax, 1
 jne .Lx00041_1
 mov rax, qword ptr [rbp + 3184]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 440], rax
 jmp xchain00039_n21_α
.Lx00041_1:
 jmp xchain00039_n21_α
 xchain00039_n20_β:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 je xchain00039_n23_β
 jmp xchain00039_n35_α
xchain00039_n20_af:
 add dword ptr [rbp + 448], 1
 mov eax, dword ptr [rbp + 448]
 cmp eax, 1
 je xchain00039_n24_α
 jmp xchain00039_n35_α
# IR_GEN_SCAN
 xchain00039_n21_α:
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 408], rax
 lea rdi, [rbp + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 368]
 mov r14, qword ptr [rbp + 376]
 mov r15, qword ptr [rbp + 384]
 jmp xchain00039_n9_α
 xchain00039_n21_β:
 call rt_scan_reenter@PLT
 mov r13, rax
 mov r15, rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 jmp xchain00039_n20_β
 jmp xchain00039_n9_α
# IR_LIT_STRING
 xchain00039_n22_α:
 mov qword ptr [rbp + 3152], 1
 mov rax, qword ptr [rip + .Lx00042_0]
 mov qword ptr [rbp + 3160], rax
 jmp xchain00039_n27_α
 xchain00039_n22_β:
 jmp xchain00039_n20_af
.Lx00042_0:
 .quad .Lx00042_0_s
.Lx00042_0_s:
 .string "-"
# IR_DISJUNCTION_NARY
 xchain00039_n23_α:
 mov qword ptr [rbp + 560], 0
 mov qword ptr [rbp + 568], 0
 mov dword ptr [rbp + 576], 0
 jmp xchain00039_n29_α
xchain00039_n23_as:
 mov eax, dword ptr [rbp + 576]
 cmp eax, 0
 jne .Lx00043_0
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 568], rax
 jmp xchain00039_n28_α
.Lx00043_0:
 cmp eax, 1
 jne .Lx00043_1
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 568], rax
 jmp xchain00039_n28_α
.Lx00043_1:
 jmp xchain00039_n28_α
 xchain00039_n23_β:
 mov eax, dword ptr [rbp + 576]
 cmp eax, 0
 je xchain00039_n30_β
 jmp xchain00039_n28_α
xchain00039_n23_af:
 add dword ptr [rbp + 576], 1
 mov eax, dword ptr [rbp + 576]
 cmp eax, 1
 je xchain00039_n31_α
 jmp xchain00039_n28_α
# IR_VAR
 xchain00039_n24_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 3248], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 3256], rax
 jmp xchain00039_n34_α
 xchain00039_n24_β:
 jmp xchain00039_n35_α
 xchain00039_n25_α:
 jmp xchain00039_n20_as
xchain00039_n25_β:
 jmp xchain00039_n35_α
 xchain00039_n26_α:
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
  .Lrkfn265: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn265]
 lea rsi, [rbp + 3200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 cmp eax, 99
 je xchain00039_n35_α
 jmp xchain00039_n20_as
 xchain00039_n26_β:
 jmp xchain00039_n35_α
# IR_SCAN_MATCH
 xchain00039_n27_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00044_239
 add rsp, 16
 jmp xchain00039_n20_af
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
 jmp xchain00039_n20_af
.Lx00044_240:
 mov qword ptr [rbp + 3120], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 3128], rax
 jmp xchain00039_n36_α
.Lx00044_0:
 .quad .Lx00044_0_s
.Lx00044_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain00039_n28_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00045_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00039_n37_α
.Lx00045_0:
 .quad 1
# IR_VAR
 xchain00039_n29_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2552], rax
 jmp xchain00039_n38_α
 xchain00039_n29_β:
 jmp xchain00039_n23_af
# IR_DISJUNCTION_NARY
 xchain00039_n30_α:
 mov qword ptr [rbp + 704], 0
 mov qword ptr [rbp + 712], 0
 mov dword ptr [rbp + 720], 0
 jmp xchain00039_n39_α
xchain00039_n30_as:
 mov eax, dword ptr [rbp + 720]
 cmp eax, 0
 jne .Lx00046_0
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 712], rax
 jmp xchain00039_n32_α
.Lx00046_0:
 cmp eax, 1
 jne .Lx00046_1
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 712], rax
 jmp xchain00039_n32_α
.Lx00046_1:
 jmp xchain00039_n32_α
 xchain00039_n30_β:
 mov eax, dword ptr [rbp + 720]
 cmp eax, 0
 je xchain00039_n28_α
 jmp xchain00039_n28_α
xchain00039_n30_af:
 add dword ptr [rbp + 720], 1
 mov eax, dword ptr [rbp + 720]
 cmp eax, 1
 je xchain00039_n40_α
 jmp xchain00039_n28_α
# IR_LIT_STRING
 xchain00039_n31_α:
 mov qword ptr [rbp + 2704], 1
 mov rax, qword ptr [rip + .Lx00047_0]
 mov qword ptr [rbp + 2712], rax
 jmp xchain00039_n42_α
 xchain00039_n31_β:
 jmp xchain00039_n28_α
.Lx00047_0:
 .quad .Lx00047_0_s
.Lx00047_0_s:
 .string "Unrecognized option: -"
# IR_ASSIGN_VAR
 xchain00039_n32_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00039_n28_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00039_n23_as
 xchain00039_n32_β:
 jmp xchain00039_n28_α
 xchain00039_n33_α:
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
  .Lrkfn276: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn276]
 lea rsi, [rbp + 2656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 cmp eax, 99
 je xchain00039_n28_α
 jmp xchain00039_n23_as
 xchain00039_n33_β:
 jmp xchain00039_n28_α
# IR_VAR
 xchain00039_n34_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3280], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3288], rax
 jmp xchain00039_n26_α
# IR_GEN_SCAN
 xchain00039_n35_α:
 lea rdi, [rbp + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 368]
 mov r14, qword ptr [rbp + 376]
 mov r15, qword ptr [rbp + 384]
 jmp xchain00039_n9_α
 xchain00039_n35_β:
 jmp xchain00039_n9_α
# IR_SCAN_TAB
 xchain00039_n36_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 3128]
 cmp rax, 1
 jge .Lx00048_0
 add rax, r15
 add rax, 1
.Lx00048_0:
 cmp rax, 1
 jge .Lx00048_239
 add rsp, 16
 jmp xchain00039_n20_af
.Lx00048_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00048_240
 add rsp, 16
 jmp xchain00039_n20_af
.Lx00048_240:
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
 jmp xchain00039_n43_α
 xchain00039_n36_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00039_n20_af
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00039_n37_α:
 sub rsp, 16
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00049_239
 add rsp, 16
 jmp xchain00039_n35_α
.Lx00049_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00049_240
 add rsp, 16
 jmp xchain00039_n35_α
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
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00039_n44_α
 xchain00039_n37_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00039_n35_α
# IR_VAR
 xchain00039_n38_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 2584], rax
 jmp xchain00039_n45_α
# IR_LIT_CHARSET
 xchain00039_n39_α:
 mov qword ptr [rbp + 2208], 1
 mov dword ptr [rbp + 2212], -1
 mov rax, qword ptr [rip + .Lx00050_0]
 mov qword ptr [rbp + 2216], rax
 jmp xchain00039_n46_α
 xchain00039_n39_β:
 jmp xchain00039_n30_af
.Lx00050_0:
 .quad .Lx00050_0_s
.Lx00050_0_s:
 .string "+.:"
# IR_LIT_INTEGER
 xchain00039_n40_α:
 mov qword ptr [rbp + 2368], 6
 mov rax, qword ptr [rip + .Lx00051_0]
 mov qword ptr [rbp + 2376], rax
 jmp xchain00039_n30_as
 xchain00039_n40_β:
 jmp xchain00039_n28_α
.Lx00051_0:
 .quad 1
 xchain00039_n41_α:
 jmp xchain00039_n30_as
xchain00039_n41_β:
 jmp xchain00039_n28_α
# IR_VAR
 xchain00039_n42_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2744], rax
 jmp xchain00039_n33_α
# IR_LIT_INTEGER
 xchain00039_n43_α:
 mov qword ptr [rbp + 3056], 6
 mov rax, qword ptr [rip + .Lx00052_0]
 mov qword ptr [rbp + 3064], rax
 jmp xchain00039_n47_α
.Lx00052_0:
 .quad 0
 xchain00039_n44_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00039_n23_α
 xchain00039_n45_α:
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
.Lx00053_60:
  .section .rodata
  .Lbynamegenfn196: .string "find"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn196]
 lea rsi, [rbp + 2496]
 mov edx, 2
 lea rcx, [rbp + 2528]
 call rt_call_arr_gen@PLT
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 cmp eax, 99
 je xchain00039_n23_af
 jmp xchain00039_n48_α
 xchain00039_n45_β:
 jmp .Lx00053_60
# IR_VAR_REF
 xchain00039_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain00039_n49_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00039_n47_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00054_0
 add rax, r15
 add rax, 1
.Lx00054_0:
 cmp rax, 1
 jl xchain00039_n50_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00039_n50_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00039_n50_α
 mov qword ptr [rbp + 3024], 6
 mov qword ptr [rbp + 3032], rax
 jmp xchain00039_n20_af
# IR_LIT_INTEGER
 xchain00039_n48_α:
 mov qword ptr [rbp + 2608], 6
 mov rax, qword ptr [rip + .Lx00055_0]
 mov qword ptr [rbp + 2616], rax
 jmp xchain00039_n51_α
.Lx00055_0:
 .quad 1
# IR_VAR
 xchain00039_n49_α:
 mov rax, qword ptr [rbp + 3712]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 2296], rax
 jmp xchain00039_n52_α
# KEYWORD_null
 xchain00039_n50_α:
 mov qword ptr [rbp + 2992], 0
 mov qword ptr [rbp + 3000], 0
 jmp xchain00039_n53_α
 xchain00039_n50_β:
 jmp xchain00039_n20_af
# IR_COERCE_NUMERIC
 xchain00039_n51_α:
 mov eax, dword ptr [rbp + 2480]
 cmp eax, 7
 je .Lx00056_1
 cmp eax, 6
 jne .Lx00056_0
 mov eax, dword ptr [rbp + 2608]
 cmp eax, 6
 jne .Lx00056_0
.Lx00056_1:
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2456], rax
 jmp xchain00039_n54_α
.Lx00056_0:
 lea rdi, [rbp + 2480]
 lea rsi, [rbp + 2608]
 lea rdx, [rbp + 2448]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00039_n54_α
# IR_SUBSCRIPT x[i] variable
 xchain00039_n52_α:
 mov rdi, qword ptr [rbp + 2256]
 mov rsi, qword ptr [rbp + 2264]
 mov rdx, qword ptr [rbp + 2288]
 mov rcx, qword ptr [rbp + 2296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00039_n30_af
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain00039_n55_α
 xchain00039_n53_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 2984], rax
 jmp xchain00039_n56_α
xchain00039_n53_β:
 jmp xchain00039_n20_af
 xchain00039_n54_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 100
 je .Lx00057_0
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 6
 jne .Lx00057_2
.Lx00057_1:
 mov rax, qword ptr [rbp + 2456]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 2416], 6
 mov qword ptr [rbp + 2424], rax
 jmp xchain00039_n57_α
.Lx00057_0:
 mov rdi, qword ptr [rbp + 2448]
 mov rsi, qword ptr [rbp + 2456]
 mov rdx, qword ptr [rbp + 2608]
 mov rcx, qword ptr [rbp + 2616]
 mov r8d, 0
 lea r9, [rbp + 2416]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00039_n57_α
.Lx00057_2:
 mov rdi, qword ptr [rbp + 2448]
 mov rsi, qword ptr [rbp + 2456]
 mov rdx, qword ptr [rbp + 2608]
 mov rcx, qword ptr [rbp + 2616]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00039_n23_af
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain00039_n57_α
 xchain00039_n54_β:
 jmp xchain00039_n23_af
# IR_DEREF variable -> value
 xchain00039_n55_α:
 mov rdi, qword ptr [rbp + 2320]
 mov rsi, qword ptr [rbp + 2328]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00039_n30_af
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain00039_n58_α
# IR_DISJUNCTION_NARY
 xchain00039_n56_α:
 mov qword ptr [rbp + 2768], 0
 mov qword ptr [rbp + 2776], 0
 mov dword ptr [rbp + 2784], 0
 jmp xchain00039_n59_α
xchain00039_n56_as:
 mov eax, dword ptr [rbp + 2784]
 cmp eax, 0
 jne .Lx00058_0
 jmp xchain00039_n28_α
.Lx00058_0:
 jmp xchain00039_n28_α
 xchain00039_n56_β:
 mov eax, dword ptr [rbp + 2784]
 jmp xchain00039_n28_α
xchain00039_n56_af:
 add dword ptr [rbp + 2784], 1
 mov eax, dword ptr [rbp + 2784]
 jmp xchain00039_n28_α
 xchain00039_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2416]
 mov rdx, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain00039_n60_α
 xchain00039_n58_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2352]
 mov rdx, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain00039_n61_α
# IR_LIT_STRING
 xchain00039_n59_α:
 mov qword ptr [rbp + 2944], 1
 mov rax, qword ptr [rip + .Lx00059_0]
 mov qword ptr [rbp + 2952], rax
 jmp xchain00039_n62_α
 xchain00039_n59_β:
 jmp xchain00039_n56_af
.Lx00059_0:
 .quad .Lx00059_0_s
.Lx00059_0_s:
 .string "-"
# IR_VAR_REF
 xchain00039_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3600]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00039_n63_α
 xchain00039_n61_α:
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
  .Lbynamefn212: .string "any"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn212]
 lea rsi, [rbp + 2160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 cmp eax, 99
 je xchain00039_n30_af
 jmp xchain00039_n64_α
 xchain00039_n61_β:
 jmp xchain00039_n30_af
# IR_SCAN_MATCH
 xchain00039_n62_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00060_239
 add rsp, 16
 jmp xchain00039_n56_af
.Lx00060_239:
 mov rdi, qword ptr [rip + .Lx00060_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00060_240
 add rsp, 16
 jmp xchain00039_n56_af
.Lx00060_240:
 mov qword ptr [rbp + 2912], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 2920], rax
 jmp xchain00039_n65_α
.Lx00060_0:
 .quad .Lx00060_0_s
.Lx00060_0_s:
 .string "-"
# IR_VAR
 xchain00039_n63_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 632], rax
 jmp xchain00039_n66_α
# IR_DISJUNCTION_NARY
 xchain00039_n64_α:
 mov qword ptr [rbp + 1776], 0
 mov qword ptr [rbp + 1784], 0
 mov dword ptr [rbp + 1792], 0
 jmp xchain00039_n68_α
xchain00039_n64_as:
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 0
 jne .Lx00061_0
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00039_n67_α
.Lx00061_0:
 cmp eax, 1
 jne .Lx00061_1
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00039_n67_α
.Lx00061_1:
 cmp eax, 2
 jne .Lx00061_2
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00039_n67_α
.Lx00061_2:
 jmp xchain00039_n67_α
 xchain00039_n64_β:
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 0
 je xchain00039_n64_af
 cmp eax, 1
 je xchain00039_n64_af
 jmp xchain00039_n64_af
xchain00039_n64_af:
 add dword ptr [rbp + 1792], 1
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 1
 je xchain00039_n69_α
 cmp eax, 2
 je xchain00039_n70_α
 jmp xchain00039_n75_α
# IR_SCAN_TAB
 xchain00039_n65_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 2920]
 cmp rax, 1
 jge .Lx00062_0
 add rax, r15
 add rax, 1
.Lx00062_0:
 cmp rax, 1
 jge .Lx00062_239
 add rsp, 16
 jmp xchain00039_n56_af
.Lx00062_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00062_240
 add rsp, 16
 jmp xchain00039_n56_af
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
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 jmp xchain00039_n74_α
 xchain00039_n65_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00039_n56_af
# IR_SUBSCRIPT x[i] variable
 xchain00039_n66_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00039_n28_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00039_n30_α
 xchain00039_n67_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1776]
 mov rdx, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain00039_n75_α
# IR_LIT_STRING
 xchain00039_n68_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx00063_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain00039_n76_α
 xchain00039_n68_β:
 jmp xchain00039_n64_af
.Lx00063_0:
 .quad .Lx00063_0_s
.Lx00063_0_s:
 .string ""
# IR_VAR
 xchain00039_n69_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1992], rax
 jmp xchain00039_n72_α
 xchain00039_n69_β:
 jmp xchain00039_n64_af
# IR_LIT_STRING
 xchain00039_n70_α:
 mov qword ptr [rbp + 2080], 1
 mov rax, qword ptr [rip + .Lx00064_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain00039_n77_α
 xchain00039_n70_β:
 jmp xchain00039_n64_af
.Lx00064_0:
 .quad .Lx00064_0_s
.Lx00064_0_s:
 .string "No parameter following -"
 xchain00039_n71_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 1840]
 mov rsi, qword ptr [rbp + 1848]
 mov rdx, qword ptr [rbp + 1872]
 mov rcx, qword ptr [rbp + 1880]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00039_n64_af
 mov rdi, qword ptr [rbp + 1872]
 mov rsi, qword ptr [rbp + 1880]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain00039_n64_as
 xchain00039_n71_β:
 jmp xchain00039_n64_af
 xchain00039_n72_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1960], rax
  .section .rodata
  .Lrkfn333: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn333]
 lea rsi, [rbp + 1952]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je xchain00039_n64_af
 jmp xchain00039_n64_as
 xchain00039_n72_β:
 jmp xchain00039_n64_af
 xchain00039_n73_α:
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
  .Lrkfn335: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn335]
 lea rsi, [rbp + 2032]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain00039_n64_af
 jmp xchain00039_n64_as
 xchain00039_n73_β:
 jmp xchain00039_n64_af
# IR_LIT_INTEGER
 xchain00039_n74_α:
 mov qword ptr [rbp + 2848], 6
 mov rax, qword ptr [rip + .Lx00065_0]
 mov qword ptr [rbp + 2856], rax
 jmp xchain00039_n78_α
.Lx00065_0:
 .quad 0
# IR_VAR
 xchain00039_n75_α:
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 792], rax
 jmp xchain00039_n79_α
# IR_LIT_INTEGER
 xchain00039_n76_α:
 mov qword ptr [rbp + 1904], 6
 mov rax, qword ptr [rip + .Lx00066_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain00039_n80_α
.Lx00066_0:
 .quad 0
# IR_VAR
 xchain00039_n77_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2120], rax
 jmp xchain00039_n73_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00039_n78_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00067_0
 add rax, r15
 add rax, 1
.Lx00067_0:
 cmp rax, 1
 jl xchain00039_n56_af
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00039_n56_af
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00039_n56_af
 mov qword ptr [rbp + 2816], 6
 mov qword ptr [rbp + 2824], rax
 jmp xchain00039_n81_α
# IR_LIT_STRING
 xchain00039_n79_α:
 mov qword ptr [rbp + 1616], 1
 mov rax, qword ptr [rip + .Lx00068_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00039_n82_α
.Lx00068_0:
 .quad .Lx00068_0_s
.Lx00068_0_s:
 .string ":"
# IR_SCAN_TAB
 xchain00039_n80_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00069_0
 add rax, r15
 add rax, 1
.Lx00069_0:
 cmp rax, 1
 jge .Lx00069_239
 add rsp, 16
 jmp xchain00039_n64_af
.Lx00069_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00069_240
 add rsp, 16
 jmp xchain00039_n64_af
.Lx00069_240:
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
 jmp xchain00039_n71_α
 xchain00039_n80_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00039_n64_af
 xchain00039_n81_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2808], rax
 jmp xchain00039_n11_α
xchain00039_n81_β:
 jmp xchain00039_n56_af
 xchain00039_n82_α:
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
  .Lrkfn349: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn349]
 lea rsi, [rbp + 1712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je xchain00039_n84_α
 jmp xchain00039_n83_α
 xchain00039_n82_β:
 jmp xchain00039_n84_α
# IR_VAR
 xchain00039_n83_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1656], rax
 jmp xchain00039_n85_α
# IR_LIT_STRING
 xchain00039_n84_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx00070_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain00039_n86_α
.Lx00070_0:
 .quad .Lx00070_0_s
.Lx00070_0_s:
 .string "+"
 xchain00039_n85_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1648]
 mov rdx, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00039_n87_α
 xchain00039_n86_α:
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
  .Lrkfn355: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn355]
 lea rsi, [rbp + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain00039_n89_α
 jmp xchain00039_n88_β
 xchain00039_n86_β:
 jmp xchain00039_n89_α
# IR_VAR
 xchain00039_n87_α:
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 760], rax
 jmp xchain00039_n41_α
# IR_DISJUNCTION_NARY
 xchain00039_n88_α:
 mov qword ptr [rbp + 1248], 0
 mov qword ptr [rbp + 1256], 0
 mov dword ptr [rbp + 1264], 0
 jmp xchain00039_n91_α
xchain00039_n88_as:
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 0
 jne .Lx00071_0
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00039_n90_α
.Lx00071_0:
 cmp eax, 1
 jne .Lx00071_1
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00039_n90_α
.Lx00071_1:
 jmp xchain00039_n90_α
 xchain00039_n88_β:
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 0
 je xchain00039_n88_af
 jmp xchain00039_n88_af
xchain00039_n88_af:
 add dword ptr [rbp + 1264], 1
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 1
 je xchain00039_n92_α
 jmp xchain00039_n28_α
# IR_LIT_STRING
 xchain00039_n89_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx00072_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00039_n95_α
.Lx00072_0:
 .quad .Lx00072_0_s
.Lx00072_0_s:
 .string "."
 xchain00039_n90_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain00039_n87_α
# IR_VAR
 xchain00039_n91_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1336], rax
 jmp xchain00039_n93_α
 xchain00039_n91_β:
 jmp xchain00039_n88_af
# IR_LIT_STRING
 xchain00039_n92_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx00073_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain00039_n96_α
 xchain00039_n92_β:
 jmp xchain00039_n88_af
.Lx00073_0:
 .quad .Lx00073_0_s
.Lx00073_0_s:
 .string "-"
 xchain00039_n93_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1296]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1304], rax
  .section .rodata
  .Lrkfn366: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn366]
 lea rsi, [rbp + 1296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain00039_n88_af
 jmp xchain00039_n88_as
 xchain00039_n93_β:
 jmp xchain00039_n88_af
 xchain00039_n94_α:
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
  .Lrkfn368: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn368]
 lea rsi, [rbp + 1376]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain00039_n88_af
 jmp xchain00039_n88_as
 xchain00039_n94_β:
 jmp xchain00039_n88_af
 xchain00039_n95_α:
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
  .Lrkfn370: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn370]
 lea rsi, [rbp + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain00039_n28_α
 jmp xchain00039_n97_β
 xchain00039_n95_β:
 jmp xchain00039_n28_α
# IR_VAR
 xchain00039_n96_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1480], rax
 jmp xchain00039_n98_α
# IR_DISJUNCTION_NARY
 xchain00039_n97_α:
 mov qword ptr [rbp + 848], 0
 mov qword ptr [rbp + 856], 0
 mov dword ptr [rbp + 864], 0
 jmp xchain00039_n00074_α
xchain00039_n97_as:
 mov eax, dword ptr [rbp + 864]
 cmp eax, 0
 jne .Lx00075_0
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 856], rax
 jmp xchain00039_n99_α
.Lx00075_0:
 cmp eax, 1
 jne .Lx00075_1
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 856], rax
 jmp xchain00039_n99_α
.Lx00075_1:
 jmp xchain00039_n99_α
 xchain00039_n97_β:
 mov eax, dword ptr [rbp + 864]
 cmp eax, 0
 je xchain00039_n97_af
 jmp xchain00039_n97_af
xchain00039_n97_af:
 add dword ptr [rbp + 864], 1
 mov eax, dword ptr [rbp + 864]
 cmp eax, 1
 je xchain00039_n00076_α
 jmp xchain00039_n28_α
# IR_LIT_STRING
 xchain00039_n98_α:
 mov qword ptr [rbp + 1504], 1
 mov rax, qword ptr [rip + .Lx00077_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain00039_n94_α
.Lx00077_0:
 .quad .Lx00077_0_s
.Lx00077_0_s:
 .string " needs numeric parameter"
 xchain00039_n99_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00039_n87_α
# IR_VAR
 xchain00039_n00074_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 936], rax
 jmp xchain00039_n00001_α
 xchain00039_n00074_β:
 jmp xchain00039_n97_af
# IR_LIT_STRING
 xchain00039_n00076_α:
 mov qword ptr [rbp + 1040], 1
 mov rax, qword ptr [rip + .Lx00078_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00039_n00079_α
 xchain00039_n00076_β:
 jmp xchain00039_n97_af
.Lx00078_0:
 .quad .Lx00078_0_s
.Lx00078_0_s:
 .string "-"
 xchain00039_n00001_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+896]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 904], rax
  .section .rodata
  .Lrkfn381: .string "real"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn381]
 lea rsi, [rbp + 896]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 cmp eax, 99
 je xchain00039_n97_af
 jmp xchain00039_n97_as
 xchain00039_n00001_β:
 jmp xchain00039_n97_af
 xchain00039_n00002_α:
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
  .Lrkfn383: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn383]
 lea rsi, [rbp + 976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain00039_n97_af
 jmp xchain00039_n97_as
 xchain00039_n00002_β:
 jmp xchain00039_n97_af
# IR_VAR
 xchain00039_n00079_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00039_n00080_α
# IR_LIT_STRING
 xchain00039_n00080_α:
 mov qword ptr [rbp + 1104], 1
 mov rax, qword ptr [rip + .Lx00081_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00039_n00002_α
.Lx00081_0:
 .quad .Lx00081_0_s
.Lx00081_0_s:
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
 lea rax, [rip + .Lx00082_2]
 mov qword ptr [rbp + 3736], rax
 lea rax, [rip + .Lx00082_3]
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
.Lx00082_2:
 mov rdx, qword ptr [rsp + -3776]
 mov rcx, rsp
 add rcx, -3760
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00082_3:
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
 xchain00083_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 520], rax
 jmp xchain00083_n1_α
# IR_ASSIGN gva
 xchain00083_n1_α:
 mov rax, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 mov qword ptr [1879052384], rax
 mov qword ptr [1879052392], rdx
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00083_n2_α
 xchain00083_n2_α:
 call proc_Signature___dcα
 jmp .Lx00084_2
.Lx00084_2:
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00083_n3_α
 jmp xchain00083_n3_α
 xchain00083_n2_β:
 jmp xchain00083_n3_α
.Lx00084_0:
 .quad .Lx00084_0_s
.Lx00084_0_s:
 .string "Signature__"
 xchain00083_n3_α:
 call proc_Regions___dcα
 jmp .Lx00085_2
.Lx00085_2:
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00083_n4_α
 jmp xchain00083_n4_α
 xchain00083_n3_β:
 jmp xchain00083_n4_α
.Lx00085_0:
 .quad .Lx00085_0_s
.Lx00085_0_s:
 .string "Regions__"
 xchain00083_n4_α:
 call proc_Time___dcα
 jmp .Lx00086_2
.Lx00086_2:
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain00083_n5_α
 jmp xchain00083_n5_α
 xchain00083_n4_β:
 jmp xchain00083_n5_α
.Lx00086_0:
 .quad .Lx00086_0_s
.Lx00086_0_s:
 .string "Time__"
# IR_DISJUNCTION_NARY
 xchain00083_n5_α:
 mov qword ptr [rbp + 192], 0
 mov qword ptr [rbp + 200], 0
 mov dword ptr [rbp + 208], 0
 jmp xchain00083_n7_α
xchain00083_n5_as:
 mov eax, dword ptr [rbp + 208]
 cmp eax, 0
 jne .Lx00087_0
 jmp xchain00083_n6_α
.Lx00087_0:
 jmp xchain00083_n6_α
 xchain00083_n5_β:
 mov eax, dword ptr [rbp + 208]
 jmp xchain00083_n6_α
xchain00083_n5_af:
 add dword ptr [rbp + 208], 1
 mov eax, dword ptr [rbp + 208]
 jmp xchain00083_n6_α
# IR_VAR
 xchain00083_n6_α:
 mov rdi, qword ptr [rip + .Lx00088_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00083_n10_α
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00083_n9_α
.Lx00088_0:
 .quad .Lx00088_0_s
.Lx00088_0_s:
 .string "write"
# IR_LIT_STRING
 xchain00083_n7_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx00089_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00083_n11_α
 xchain00083_n7_β:
 jmp xchain00083_n5_af
.Lx00089_0:
 .quad .Lx00089_0_s
.Lx00089_0_s:
 .string "OUTPUT"
 xchain00083_n8_α:
 jmp xchain00083_n5_as
xchain00083_n8_β:
 jmp xchain00083_n6_α
# IR_ASSIGN gva
 xchain00083_n9_α:
 mov rax, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00083_n10_α
# IR_VAR
 xchain00083_n10_α:
 mov rdi, qword ptr [rip + .Lx00090_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00083_n13_α
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain00083_n12_α
.Lx00090_0:
 .quad .Lx00090_0_s
.Lx00090_0_s:
 .string "writes"
 xchain00083_n11_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn406: .string "getenv"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn406]
 lea rsi, [rbp + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain00083_n5_af
 jmp xchain00083_n14_α
 xchain00083_n11_β:
 jmp xchain00083_n5_af
# IR_ASSIGN gva
 xchain00083_n12_α:
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00083_n13_α
# IR_LIT_INTEGER
 xchain00083_n13_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00091_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00083_n15_α
.Lx00091_0:
 .quad 1
# IR_LIT_STRING
 xchain00083_n14_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00092_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00083_n16_α
.Lx00092_0:
 .quad .Lx00092_0_s
.Lx00092_0_s:
 .string "*** Benchmarking with output ***"
# IR_ASSIGN global
 xchain00083_n15_α:
 mov rsi, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov rdi, qword ptr [rip + .Lx00093_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 jmp xchain00083_n17_α
.Lx00093_0:
 .quad .Lx00093_0_s
.Lx00093_0_s:
 .string "writes"
 xchain00083_n16_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn412: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn412]
 lea rsi, [rbp + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain00083_n18_α
 jmp xchain00083_n18_α
 xchain00083_n16_β:
 jmp xchain00083_n18_α
# IR_ASSIGN global
 xchain00083_n17_α:
 mov rsi, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov rdi, qword ptr [rip + .Lx00094_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00083_n19_α
.Lx00094_0:
 .quad .Lx00094_0_s
.Lx00094_0_s:
 .string "write"
# IR_RETURN
 xchain00083_n18_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Init___γ
# IR_RETURN
 xchain00083_n19_α:
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
 lea rax, [rip + .Lx00095_2]
 mov qword ptr [rbp + 600], rax
 lea rax, [rip + .Lx00095_3]
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
.Lx00095_2:
 mov rdx, qword ptr [rsp + -640]
 mov rcx, rsp
 add rcx, -624
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00095_3:
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
 xchain00096_n0_α:
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 mov dword ptr [rbp + 304], 0
 jmp xchain00096_n2_α
xchain00096_n0_as:
 mov eax, dword ptr [rbp + 304]
 cmp eax, 0
 jne .Lx00097_0
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 296], rax
 jmp xchain00096_n1_α
.Lx00097_0:
 jmp xchain00096_n1_α
 xchain00096_n0_β:
 mov eax, dword ptr [rbp + 304]
 jmp xchain00096_n1_α
xchain00096_n0_af:
 add dword ptr [rbp + 304], 1
 mov eax, dword ptr [rbp + 304]
 jmp xchain00096_n1_α
# IR_VAR
 xchain00096_n1_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00096_n4_α
# IR_LIT_STRING
 xchain00096_n2_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx00098_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00096_n6_α
 xchain00096_n2_β:
 jmp xchain00096_n9_α
.Lx00098_0:
 .quad .Lx00098_0_s
.Lx00098_0_s:
 .string "OUTPUT"
 xchain00096_n3_α:
 jmp xchain00096_n0_as
xchain00096_n3_β:
 jmp xchain00096_n1_α
# IR_LIT_STRING
 xchain00096_n4_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00099_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00096_n7_α
.Lx00099_0:
 .quad .Lx00099_0_s
.Lx00099_0_s:
 .string " elapsed time = "
 xchain00096_n5_α:
 call proc_Regions___dcα
 jmp .Lx00100_2
.Lx00100_2:
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00096_n8_α
 jmp xchain00096_n8_α
 xchain00096_n5_β:
 jmp xchain00096_n8_α
.Lx00100_0:
 .quad .Lx00100_0_s
.Lx00100_0_s:
 .string "Regions__"
 xchain00096_n6_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
  .section .rodata
  .Lrkfn427: .string "getenv"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn427]
 lea rsi, [rbp + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00096_n9_α
 jmp xchain00096_n0_as
 xchain00096_n6_β:
 jmp xchain00096_n9_α
 xchain00096_n7_α:
 call proc_Time___dcα
 jmp .Lx00101_2
.Lx00101_2:
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain00096_n5_α
 jmp xchain00096_n10_α
 xchain00096_n7_β:
 jmp xchain00096_n5_α
.Lx00101_0:
 .quad .Lx00101_0_s
.Lx00101_0_s:
 .string "Time__"
 xchain00096_n8_α:
 call proc_Storage___dcα
 jmp .Lx00102_2
.Lx00102_2:
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je xchain00096_n11_α
 jmp xchain00096_n11_α
 xchain00096_n8_β:
 jmp xchain00096_n11_α
.Lx00102_0:
 .quad .Lx00102_0_s
.Lx00102_0_s:
 .string "Storage__"
# KEYWORD_null
 xchain00096_n9_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 jmp xchain00096_n12_α
 xchain00096_n9_β:
 jmp xchain00096_n0_af
 xchain00096_n10_α:
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
  .Lrkfn434: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn434]
 lea rsi, [rbp + 128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain00096_n5_α
 jmp xchain00096_n5_α
 xchain00096_n10_β:
 jmp xchain00096_n5_α
 xchain00096_n11_α:
 call proc_Collections___dcα
 jmp .Lx00103_2
.Lx00103_2:
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 cmp eax, 99
 je xchain00096_n13_α
 jmp xchain00096_n13_α
 xchain00096_n11_β:
 jmp xchain00096_n13_α
.Lx00103_0:
 .quad .Lx00103_0_s
.Lx00103_0_s:
 .string "Collections__"
# IR_VAR
 xchain00096_n12_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00096_n14_α
# IR_RETURN
 xchain00096_n13_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Term___γ
# IR_ASSIGN global
 xchain00096_n14_α:
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 mov rdi, qword ptr [rip + .Lx00104_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain00096_n15_α
.Lx00104_0:
 .quad .Lx00104_0_s
.Lx00104_0_s:
 .string "write"
# IR_VAR
 xchain00096_n15_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00096_n16_α
# IR_ASSIGN global
 xchain00096_n16_α:
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov rdi, qword ptr [rip + .Lx00105_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00096_n3_α
.Lx00105_0:
 .quad .Lx00105_0_s
.Lx00105_0_s:
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
 lea rax, [rip + .Lx00106_2]
 mov qword ptr [rbp + 600], rax
 lea rax, [rip + .Lx00106_3]
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
.Lx00106_2:
 mov rdx, qword ptr [rsp + -640]
 mov rcx, rsp
 add rcx, -624
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00106_3:
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
 xchain00107_n0_α:
 mov qword ptr [rbp + 832], 0
 mov qword ptr [rbp + 840], 0
 mov dword ptr [rbp + 848], 0
 jmp xchain00107_n2_α
xchain00107_n0_as:
 mov eax, dword ptr [rbp + 848]
 cmp eax, 0
 jne .Lx00108_0
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
 jmp xchain00107_n1_α
.Lx00108_0:
 jmp xchain00107_n1_α
 xchain00107_n0_β:
 mov eax, dword ptr [rbp + 848]
 jmp xchain00107_n1_α
xchain00107_n0_af:
 add dword ptr [rbp + 848], 1
 mov eax, dword ptr [rbp + 848]
 jmp xchain00107_n1_α
# IR_MAKE_LIST
 xchain00107_n1_α:
 lea rdi, [rbp + 832]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00107_n4_α
# IR_VAR_REF
 xchain00107_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052416
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain00107_n5_α
 xchain00107_n2_β:
 jmp xchain00107_n0_af
# IR_ASSIGN gva
 xchain00107_n3_α:
 mov rax, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 mov qword ptr [1879052400], rax
 mov qword ptr [1879052408], rdx
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00107_n0_as
 xchain00107_n3_β:
 jmp xchain00107_n1_α
 xchain00107_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00107_n6_α
# IR_NULLTEST_VAR
 xchain00107_n5_α:
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 99
 je xchain00107_n0_af
 mov rdi, qword ptr [rbp + 1088]
 mov rsi, qword ptr [rbp + 1096]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00107_n0_af
 cmp eax, 0
 jne xchain00107_n0_af
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00107_n7_α
# IR_VAR
 xchain00107_n6_α:
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 744], rax
 jmp xchain00107_n8_α
# IR_LIT_INTEGER
 xchain00107_n7_α:
 mov qword ptr [rbp + 1168], 6
 mov rax, qword ptr [rip + .Lx00109_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain00107_n10_α
.Lx00109_0:
 .quad 1
# KEYWORD_gen
 xchain00107_n8_α:
 mov qword ptr [rbp + 784], 0
.Lx00110_1:
 mov rdi, qword ptr [rip + .Lx00110_0]
 mov rsi, qword ptr [rbp + 784]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00107_n9_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 mov rax, qword ptr [rbp + 784]
 add rax, 1
 mov qword ptr [rbp + 784], rax
 jmp xchain00107_n11_α
 xchain00107_n8_β:
 jmp .Lx00110_1
.Lx00110_0:
 .quad .Lx00110_0_s
.Lx00110_0_s:
 .string "&collections"
# IR_LIT_STRING
 xchain00107_n9_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00111_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00107_n12_α
.Lx00111_0:
 .quad .Lx00111_0_s
.Lx00111_0_s:
 .string "collections"
# IR_ASSIGN_VAR
 xchain00107_n10_α:
 mov rdi, qword ptr [rbp + 1120]
 mov rsi, qword ptr [rbp + 1128]
 mov rdx, qword ptr [rbp + 1168]
 mov rcx, qword ptr [rbp + 1176]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00107_n0_af
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain00107_n13_α
 xchain00107_n11_α:
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
  .Lrkfn460: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn460]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain00107_n8_β
 jmp xchain00107_n8_β
 xchain00107_n11_β:
 jmp xchain00107_n8_β
 xchain00107_n12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn462: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn462]
 lea rsi, [rbp + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00107_n14_α
 jmp xchain00107_n14_α
 xchain00107_n12_β:
 jmp xchain00107_n14_α
# IR_LIT_STRING
 xchain00107_n13_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx00112_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00107_n15_α
.Lx00112_0:
 .quad .Lx00112_0_s
.Lx00112_0_s:
 .string "total"
# IR_LIT_INTEGER
 xchain00107_n14_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00113_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00107_n16_α
.Lx00113_0:
 .quad 1
# IR_LIT_STRING
 xchain00107_n15_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx00114_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00107_n17_α
.Lx00114_0:
 .quad .Lx00114_0_s
.Lx00114_0_s:
 .string "static"
# IR_VAR
 xchain00107_n16_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00107_n18_α
# IR_LIT_STRING
 xchain00107_n17_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx00115_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00107_n20_α
.Lx00115_0:
 .quad .Lx00115_0_s
.Lx00115_0_s:
 .string "string"
# IR_UNOP
 xchain00107_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00107_n21_α
# IR_RETURN
 xchain00107_n19_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Collections___γ
# IR_LIT_STRING
 xchain00107_n20_α:
 mov qword ptr [rbp + 1056], 1
 mov rax, qword ptr [rip + .Lx00116_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain00107_n22_α
.Lx00116_0:
 .quad .Lx00116_0_s
.Lx00116_0_s:
 .string "block"
# IR_TO
 xchain00107_n21_α:
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
.Lx00117_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00107_n19_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00107_n23_α
 xchain00107_n21_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00117_0
# IR_MAKE_LIST
 xchain00107_n22_α:
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
 jmp xchain00107_n3_α
 xchain00107_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00107_n24_α
# IR_BOUND
 xchain00107_n24_α:
 mov qword ptr [rbp + 160], rsp
 jmp xchain00107_n25_α
# IR_VAR_REF
 xchain00107_n25_α:
 mov rax, 4294967305
 mov rdx, 1879052400
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00107_n26_α
# IR_VAR
 xchain00107_n26_α:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 312], rax
 jmp xchain00107_n27_α
# IR_SUBSCRIPT x[i] variable
 xchain00107_n27_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00107_n28_α
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00107_n29_α
# IR_UNMARK
 xchain00107_n28_α:
 mov rsp, qword ptr [rbp + 160]
 jmp xchain00107_n21_β
# IR_DEREF variable -> value
 xchain00107_n29_α:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00107_n28_α
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00107_n30_α
# IR_VAR_REF
 xchain00107_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1232]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00107_n31_α
# IR_VAR
 xchain00107_n31_α:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 488], rax
 jmp xchain00107_n32_α
# IR_SUBSCRIPT x[i] variable
 xchain00107_n32_α:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00107_n28_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00107_n33_α
# IR_DEREF variable -> value
 xchain00107_n33_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00107_n28_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00107_n34_α
# IR_LIT_INTEGER
 xchain00107_n34_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00118_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00107_n35_α
.Lx00118_0:
 .quad 8
 xchain00107_n35_α:
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
  .Lrkfn494: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn494]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00107_n28_α
 jmp xchain00107_n36_α
 xchain00107_n35_β:
 jmp xchain00107_n28_α
 xchain00107_n36_α:
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
  .Lrkfn496: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn496]
 lea rsi, [rbp + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00107_n28_α
 jmp xchain00107_n28_α
 xchain00107_n36_β:
 jmp xchain00107_n28_α
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
 lea rax, [rip + .Lx00119_2]
 mov qword ptr [rbp + 1256], rax
 lea rax, [rip + .Lx00119_3]
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
.Lx00119_2:
 mov rdx, qword ptr [rsp + -1296]
 mov rcx, rsp
 add rcx, -1280
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00119_3:
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
 xchain00120_n0_α:
 mov qword ptr [rbp + 832], 0
 mov qword ptr [rbp + 840], 0
 mov dword ptr [rbp + 848], 0
 jmp xchain00120_n2_α
xchain00120_n0_as:
 mov eax, dword ptr [rbp + 848]
 cmp eax, 0
 jne .Lx00121_0
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
 jmp xchain00120_n1_α
.Lx00121_0:
 jmp xchain00120_n1_α
 xchain00120_n0_β:
 mov eax, dword ptr [rbp + 848]
 jmp xchain00120_n1_α
xchain00120_n0_af:
 add dword ptr [rbp + 848], 1
 mov eax, dword ptr [rbp + 848]
 jmp xchain00120_n1_α
# IR_MAKE_LIST
 xchain00120_n1_α:
 lea rdi, [rbp + 832]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00120_n4_α
# IR_VAR_REF
 xchain00120_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052448
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00120_n5_α
 xchain00120_n2_β:
 jmp xchain00120_n0_af
# IR_ASSIGN gva
 xchain00120_n3_α:
 mov rax, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 mov qword ptr [1879052432], rax
 mov qword ptr [1879052440], rdx
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00120_n0_as
 xchain00120_n3_β:
 jmp xchain00120_n1_α
 xchain00120_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00120_n6_α
# IR_NULLTEST_VAR
 xchain00120_n5_α:
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 99
 je xchain00120_n0_af
 mov rdi, qword ptr [rbp + 1040]
 mov rsi, qword ptr [rbp + 1048]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00120_n0_af
 cmp eax, 0
 jne xchain00120_n0_af
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00120_n7_α
# IR_VAR
 xchain00120_n6_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 744], rax
 jmp xchain00120_n8_α
# IR_LIT_INTEGER
 xchain00120_n7_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx00122_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00120_n10_α
.Lx00122_0:
 .quad 1
# KEYWORD_gen
 xchain00120_n8_α:
 mov qword ptr [rbp + 784], 0
.Lx00123_1:
 mov rdi, qword ptr [rip + .Lx00123_0]
 mov rsi, qword ptr [rbp + 784]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00120_n9_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 mov rax, qword ptr [rbp + 784]
 add rax, 1
 mov qword ptr [rbp + 784], rax
 jmp xchain00120_n11_α
 xchain00120_n8_β:
 jmp .Lx00123_1
.Lx00123_0:
 .quad .Lx00123_0_s
.Lx00123_0_s:
 .string "&regions"
# IR_LIT_STRING
 xchain00120_n9_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00124_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00120_n12_α
.Lx00124_0:
 .quad .Lx00124_0_s
.Lx00124_0_s:
 .string "regions"
# IR_ASSIGN_VAR
 xchain00120_n10_α:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, qword ptr [rbp + 1120]
 mov rcx, qword ptr [rbp + 1128]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00120_n0_af
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00120_n13_α
 xchain00120_n11_α:
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
  .Lrkfn515: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn515]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain00120_n8_β
 jmp xchain00120_n8_β
 xchain00120_n11_β:
 jmp xchain00120_n8_β
 xchain00120_n12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn517: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn517]
 lea rsi, [rbp + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00120_n14_α
 jmp xchain00120_n14_α
 xchain00120_n12_β:
 jmp xchain00120_n14_α
# IR_LIT_STRING
 xchain00120_n13_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx00125_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00120_n15_α
.Lx00125_0:
 .quad .Lx00125_0_s
.Lx00125_0_s:
 .string "static"
# IR_LIT_INTEGER
 xchain00120_n14_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00126_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00120_n16_α
.Lx00126_0:
 .quad 1
# IR_LIT_STRING
 xchain00120_n15_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx00127_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00120_n17_α
.Lx00127_0:
 .quad .Lx00127_0_s
.Lx00127_0_s:
 .string "string"
# IR_VAR
 xchain00120_n16_α:
 mov rax, qword ptr [1879052432]
 mov rdx, qword ptr [1879052440]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00120_n18_α
# IR_LIT_STRING
 xchain00120_n17_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx00128_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00120_n20_α
.Lx00128_0:
 .quad .Lx00128_0_s
.Lx00128_0_s:
 .string "block"
# IR_UNOP
 xchain00120_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00120_n21_α
# IR_RETURN
 xchain00120_n19_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Regions___γ
# IR_MAKE_LIST
 xchain00120_n20_α:
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
 jmp xchain00120_n3_α
# IR_TO
 xchain00120_n21_α:
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
.Lx00129_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00120_n19_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00120_n22_α
 xchain00120_n21_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00129_0
 xchain00120_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00120_n23_α
# IR_BOUND
 xchain00120_n23_α:
 mov qword ptr [rbp + 160], rsp
 jmp xchain00120_n24_α
# IR_VAR_REF
 xchain00120_n24_α:
 mov rax, 4294967305
 mov rdx, 1879052432
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00120_n25_α
# IR_VAR
 xchain00120_n25_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 312], rax
 jmp xchain00120_n26_α
# IR_SUBSCRIPT x[i] variable
 xchain00120_n26_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00120_n27_α
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00120_n28_α
# IR_UNMARK
 xchain00120_n27_α:
 mov rsp, qword ptr [rbp + 160]
 jmp xchain00120_n21_β
# IR_DEREF variable -> value
 xchain00120_n28_α:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00120_n27_α
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00120_n29_α
# IR_VAR_REF
 xchain00120_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00120_n30_α
# IR_VAR
 xchain00120_n30_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 488], rax
 jmp xchain00120_n31_α
# IR_SUBSCRIPT x[i] variable
 xchain00120_n31_α:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00120_n27_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00120_n32_α
# IR_DEREF variable -> value
 xchain00120_n32_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00120_n27_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00120_n33_α
# IR_LIT_INTEGER
 xchain00120_n33_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00130_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00120_n34_α
.Lx00130_0:
 .quad 8
 xchain00120_n34_α:
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
  .Lrkfn548: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn548]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00120_n27_α
 jmp xchain00120_n35_α
 xchain00120_n34_β:
 jmp xchain00120_n27_α
 xchain00120_n35_α:
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
  .Lrkfn550: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn550]
 lea rsi, [rbp + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00120_n27_α
 jmp xchain00120_n27_α
 xchain00120_n35_β:
 jmp xchain00120_n27_α
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
 lea rax, [rip + .Lx00131_2]
 mov qword ptr [rbp + 1208], rax
 lea rax, [rip + .Lx00131_3]
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
.Lx00131_2:
 mov rdx, qword ptr [rsp + -1248]
 mov rcx, rsp
 add rcx, -1232
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00131_3:
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
 xchain00132_n0_α:
 mov rdi, qword ptr [rip + .Lx00133_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00132_n2_α
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00132_n1_α
 xchain00132_n0_β:
 jmp xchain00132_n2_α
.Lx00133_0:
 .quad .Lx00133_0_s
.Lx00133_0_s:
 .string "&version"
 xchain00132_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn555: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn555]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00132_n2_α
 jmp xchain00132_n2_α
 xchain00132_n1_β:
 jmp xchain00132_n2_α
# KEYWORD_read
 xchain00132_n2_α:
 mov rdi, qword ptr [rip + .Lx00134_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00132_n4_α
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00132_n3_α
 xchain00132_n2_β:
 jmp xchain00132_n4_α
.Lx00134_0:
 .quad .Lx00134_0_s
.Lx00134_0_s:
 .string "&host"
 xchain00132_n3_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn558: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn558]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je xchain00132_n4_α
 jmp xchain00132_n4_α
 xchain00132_n3_β:
 jmp xchain00132_n4_α
# KEYWORD_gen
 xchain00132_n4_α:
 mov qword ptr [rbp + 80], 0
.Lx00135_1:
 mov rdi, qword ptr [rip + .Lx00135_0]
 mov rsi, qword ptr [rbp + 80]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00132_n6_α
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 mov rax, qword ptr [rbp + 80]
 add rax, 1
 mov qword ptr [rbp + 80], rax
 jmp xchain00132_n5_α
 xchain00132_n4_β:
 jmp .Lx00135_1
.Lx00135_0:
 .quad .Lx00135_0_s
.Lx00135_0_s:
 .string "&features"
 xchain00132_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+32]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 40], rax
  .section .rodata
  .Lrkfn561: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn561]
 lea rsi, [rbp + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 cmp eax, 99
 je xchain00132_n4_β
 jmp xchain00132_n4_β
 xchain00132_n5_β:
 jmp xchain00132_n4_β
# IR_RETURN
 xchain00132_n6_α:
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
 lea rax, [rip + .Lx00136_2]
 mov qword ptr [rbp + 280], rax
 lea rax, [rip + .Lx00136_3]
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
.Lx00136_2:
 mov rdx, qword ptr [rsp + -320]
 mov rcx, rsp
 add rcx, -304
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00136_3:
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
 xchain00137_n0_α:
 mov qword ptr [rbp + 832], 0
 mov qword ptr [rbp + 840], 0
 mov dword ptr [rbp + 848], 0
 jmp xchain00137_n2_α
xchain00137_n0_as:
 mov eax, dword ptr [rbp + 848]
 cmp eax, 0
 jne .Lx00138_0
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
 jmp xchain00137_n1_α
.Lx00138_0:
 jmp xchain00137_n1_α
 xchain00137_n0_β:
 mov eax, dword ptr [rbp + 848]
 jmp xchain00137_n1_α
xchain00137_n0_af:
 add dword ptr [rbp + 848], 1
 mov eax, dword ptr [rbp + 848]
 jmp xchain00137_n1_α
# IR_MAKE_LIST
 xchain00137_n1_α:
 lea rdi, [rbp + 832]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00137_n4_α
# IR_VAR_REF
 xchain00137_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052480
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00137_n5_α
 xchain00137_n2_β:
 jmp xchain00137_n0_af
# IR_ASSIGN gva
 xchain00137_n3_α:
 mov rax, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 mov qword ptr [1879052464], rax
 mov qword ptr [1879052472], rdx
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00137_n0_as
 xchain00137_n3_β:
 jmp xchain00137_n1_α
 xchain00137_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00137_n6_α
# IR_NULLTEST_VAR
 xchain00137_n5_α:
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 99
 je xchain00137_n0_af
 mov rdi, qword ptr [rbp + 1040]
 mov rsi, qword ptr [rbp + 1048]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00137_n0_af
 cmp eax, 0
 jne xchain00137_n0_af
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00137_n7_α
# IR_VAR
 xchain00137_n6_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 744], rax
 jmp xchain00137_n8_α
# IR_LIT_INTEGER
 xchain00137_n7_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx00139_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00137_n10_α
.Lx00139_0:
 .quad 1
# KEYWORD_gen
 xchain00137_n8_α:
 mov qword ptr [rbp + 784], 0
.Lx00140_1:
 mov rdi, qword ptr [rip + .Lx00140_0]
 mov rsi, qword ptr [rbp + 784]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00137_n9_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 mov rax, qword ptr [rbp + 784]
 add rax, 1
 mov qword ptr [rbp + 784], rax
 jmp xchain00137_n11_α
 xchain00137_n8_β:
 jmp .Lx00140_1
.Lx00140_0:
 .quad .Lx00140_0_s
.Lx00140_0_s:
 .string "&storage"
# IR_LIT_STRING
 xchain00137_n9_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00141_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00137_n12_α
.Lx00141_0:
 .quad .Lx00141_0_s
.Lx00141_0_s:
 .string "storage"
# IR_ASSIGN_VAR
 xchain00137_n10_α:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, qword ptr [rbp + 1120]
 mov rcx, qword ptr [rbp + 1128]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00137_n0_af
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00137_n13_α
 xchain00137_n11_α:
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
  .Lrkfn581: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn581]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain00137_n8_β
 jmp xchain00137_n8_β
 xchain00137_n11_β:
 jmp xchain00137_n8_β
 xchain00137_n12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn583: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn583]
 lea rsi, [rbp + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00137_n14_α
 jmp xchain00137_n14_α
 xchain00137_n12_β:
 jmp xchain00137_n14_α
# IR_LIT_STRING
 xchain00137_n13_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx00142_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00137_n15_α
.Lx00142_0:
 .quad .Lx00142_0_s
.Lx00142_0_s:
 .string "static"
# IR_LIT_INTEGER
 xchain00137_n14_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00143_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00137_n16_α
.Lx00143_0:
 .quad 1
# IR_LIT_STRING
 xchain00137_n15_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx00144_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00137_n17_α
.Lx00144_0:
 .quad .Lx00144_0_s
.Lx00144_0_s:
 .string "string"
# IR_VAR
 xchain00137_n16_α:
 mov rax, qword ptr [1879052464]
 mov rdx, qword ptr [1879052472]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00137_n18_α
# IR_LIT_STRING
 xchain00137_n17_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx00145_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00137_n20_α
.Lx00145_0:
 .quad .Lx00145_0_s
.Lx00145_0_s:
 .string "block"
# IR_UNOP
 xchain00137_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00137_n21_α
# IR_RETURN
 xchain00137_n19_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Storage___γ
# IR_MAKE_LIST
 xchain00137_n20_α:
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
 jmp xchain00137_n3_α
# IR_TO
 xchain00137_n21_α:
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
.Lx00146_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00137_n19_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00137_n22_α
 xchain00137_n21_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00146_0
 xchain00137_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00137_n23_α
# IR_BOUND
 xchain00137_n23_α:
 mov qword ptr [rbp + 160], rsp
 jmp xchain00137_n24_α
# IR_VAR_REF
 xchain00137_n24_α:
 mov rax, 4294967305
 mov rdx, 1879052464
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00137_n25_α
# IR_VAR
 xchain00137_n25_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 312], rax
 jmp xchain00137_n26_α
# IR_SUBSCRIPT x[i] variable
 xchain00137_n26_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00137_n27_α
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00137_n28_α
# IR_UNMARK
 xchain00137_n27_α:
 mov rsp, qword ptr [rbp + 160]
 jmp xchain00137_n21_β
# IR_DEREF variable -> value
 xchain00137_n28_α:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00137_n27_α
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00137_n29_α
# IR_VAR_REF
 xchain00137_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00137_n30_α
# IR_VAR
 xchain00137_n30_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 488], rax
 jmp xchain00137_n31_α
# IR_SUBSCRIPT x[i] variable
 xchain00137_n31_α:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00137_n27_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00137_n32_α
# IR_DEREF variable -> value
 xchain00137_n32_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00137_n27_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00137_n33_α
# IR_LIT_INTEGER
 xchain00137_n33_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00147_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00137_n34_α
.Lx00147_0:
 .quad 8
 xchain00137_n34_α:
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
  .Lrkfn614: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn614]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00137_n27_α
 jmp xchain00137_n35_α
 xchain00137_n34_β:
 jmp xchain00137_n27_α
 xchain00137_n35_α:
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
  .Lrkfn616: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn616]
 lea rsi, [rbp + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00137_n27_α
 jmp xchain00137_n27_α
 xchain00137_n35_β:
 jmp xchain00137_n27_α
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
 lea rax, [rip + .Lx00148_2]
 mov qword ptr [rbp + 1208], rax
 lea rax, [rip + .Lx00148_3]
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
.Lx00148_2:
 mov rdx, qword ptr [rsp + -1248]
 mov rcx, rsp
 add rcx, -1232
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00148_3:
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
 xchain00149_n0_α:
 mov qword ptr [rbp + 176], 0
 mov qword ptr [rbp + 184], 0
 mov dword ptr [rbp + 192], 0
 jmp xchain00149_n2_α
xchain00149_n0_as:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 0
 jne .Lx00150_0
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
 jmp xchain00149_n1_α
.Lx00150_0:
 jmp xchain00149_n1_α
 xchain00149_n0_β:
 mov eax, dword ptr [rbp + 192]
 jmp xchain00149_n1_α
xchain00149_n0_af:
 add dword ptr [rbp + 192], 1
 mov eax, dword ptr [rbp + 192]
 jmp xchain00149_n1_α
# KEYWORD_read
 xchain00149_n1_α:
 mov rdi, qword ptr [rip + .Lx00151_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je proc_Time___ω
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain00149_n4_α
 xchain00149_n1_β:
 jmp proc_Time___ω
.Lx00151_0:
 .quad .Lx00151_0_s
.Lx00151_0_s:
 .string "&time"
# IR_VAR_REF
 xchain00149_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052512
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00149_n5_α
 xchain00149_n2_β:
 jmp xchain00149_n0_af
# IR_ASSIGN gva
 xchain00149_n3_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [1879052496], rax
 mov qword ptr [1879052504], rdx
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00149_n0_as
 xchain00149_n3_β:
 jmp xchain00149_n1_α
# IR_VAR
 xchain00149_n4_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00149_n6_α
# IR_NULLTEST_VAR
 xchain00149_n5_α:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 99
 je xchain00149_n0_af
 mov rdi, qword ptr [rbp + 256]
 mov rsi, qword ptr [rbp + 264]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00149_n0_af
 cmp eax, 0
 jne xchain00149_n0_af
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 296], rax
 jmp xchain00149_n7_α
# IR_COERCE_NUMERIC
 xchain00149_n6_α:
 mov eax, dword ptr [rbp + 112]
 cmp eax, 7
 je .Lx00152_1
 cmp eax, 6
 jne .Lx00152_0
 mov eax, dword ptr [rbp + 144]
 cmp eax, 6
 jne .Lx00152_0
.Lx00152_1:
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 88], rax
 jmp xchain00149_n8_α
.Lx00152_0:
 lea rdi, [rbp + 112]
 lea rsi, [rbp + 144]
 lea rdx, [rbp + 80]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00149_n8_α
# IR_LIT_INTEGER
 xchain00149_n7_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00153_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00149_n9_α
.Lx00153_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00149_n8_α:
 mov eax, dword ptr [rbp + 144]
 cmp eax, 7
 je .Lx00154_1
 cmp eax, 6
 jne .Lx00154_0
 mov eax, dword ptr [rbp + 112]
 cmp eax, 6
 jne .Lx00154_0
.Lx00154_1:
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 56], rax
 jmp xchain00149_n10_α
.Lx00154_0:
 lea rdi, [rbp + 144]
 lea rsi, [rbp + 112]
 lea rdx, [rbp + 48]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00149_n10_α
# IR_ASSIGN_VAR
 xchain00149_n9_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00149_n0_af
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00149_n11_α
 xchain00149_n10_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 80]
 cmp eax, 100
 je .Lx00155_0
 mov eax, dword ptr [rbp + 48]
 cmp eax, 100
 je .Lx00155_0
 mov eax, dword ptr [rbp + 80]
 cmp eax, 6
 jne .Lx00155_2
 mov eax, dword ptr [rbp + 48]
 cmp eax, 6
 jne .Lx00155_2
.Lx00155_1:
 mov rax, qword ptr [rbp + 88]
 mov rcx, qword ptr [rbp + 56]
 sub rax, rcx
 mov qword ptr [rbp + 16], 6
 mov qword ptr [rbp + 24], rax
 jmp xchain00149_n12_α
.Lx00155_0:
 mov rdi, qword ptr [rbp + 80]
 mov rsi, qword ptr [rbp + 88]
 mov rdx, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 56]
 mov r8d, 1
 lea r9, [rbp + 16]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00149_n12_α
.Lx00155_2:
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
 jmp xchain00149_n12_α
 xchain00149_n10_β:
 jmp proc_Time___ω
# KEYWORD_read
 xchain00149_n11_α:
 mov rdi, qword ptr [rip + .Lx00156_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00149_n1_α
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00149_n3_α
 xchain00149_n11_β:
 jmp xchain00149_n1_α
.Lx00156_0:
 .quad .Lx00156_0_s
.Lx00156_0_s:
 .string "&time"
# IR_RETURN
 xchain00149_n12_α:
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
 lea rax, [rip + .Lx00157_2]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + .Lx00157_3]
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
.Lx00157_2:
 mov rdx, qword ptr [rsp + -432]
 mov rcx, rsp
 add rcx, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00157_3:
 mov rdi, qword ptr [rsp + -432]
 mov rsi, rsp
 add rsi, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_tabulate_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_format_dcα]
  call rt_proc_set_dcfn@PLT
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
 xchain00158_n0_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx00159_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain00158_n1_α
.Lx00159_0:
 .quad .Lx00159_0_s
.Lx00159_0_s:
 .string "concord"
 xchain00158_n1_α:
 lea rsi, [rbp + 1520]
 call proc_Init___dcα
 jmp .Lx00160_2
.Lx00160_2:
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je xchain00158_n2_α
 jmp xchain00158_n2_α
 xchain00158_n1_β:
 jmp xchain00158_n2_α
.Lx00160_0:
 .quad .Lx00160_0_s
.Lx00160_0_s:
 .string "Init__"
# IR_VAR
 xchain00158_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1416], rax
 jmp xchain00158_n3_α
# IR_LIT_STRING
 xchain00158_n3_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx00161_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain00158_n5_α
.Lx00161_0:
 .quad .Lx00161_0_s
.Lx00161_0_s:
 .string "l+w+"
# IR_DISJUNCTION_NARY
 xchain00158_n4_α:
 mov qword ptr [rbp + 1120], 0
 mov qword ptr [rbp + 1128], 0
 mov dword ptr [rbp + 1136], 0
 jmp xchain00158_n7_α
xchain00158_n4_as:
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 0
 jne .Lx00162_0
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00158_n6_α
.Lx00162_0:
 cmp eax, 1
 jne .Lx00162_1
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00158_n6_α
.Lx00162_1:
 jmp xchain00158_n6_α
 xchain00158_n4_β:
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 0
 je xchain00158_n4_af
 jmp xchain00158_n4_af
xchain00158_n4_af:
 add dword ptr [rbp + 1136], 1
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 1
 je xchain00158_n8_α
 jmp xchain00158_n11_α
 xchain00158_n5_α:
 lea rsi, [rbp + 1408]
 lea rdx, [rbp + 1440]
 call proc_options_dcα
 jmp .Lx00163_2
.Lx00163_2:
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je xchain00158_n4_α
 jmp xchain00158_n10_α
 xchain00158_n5_β:
 jmp xchain00158_n4_α
.Lx00163_0:
 .quad .Lx00163_0_s
.Lx00163_0_s:
 .string "options"
# IR_ASSIGN gva
 xchain00158_n6_α:
 mov rax, qword ptr [rbp + 1120]
 mov rdx, qword ptr [rbp + 1128]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00158_n11_α
# IR_VAR_REF
 xchain00158_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1600]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain00158_n12_α
 xchain00158_n7_β:
 jmp xchain00158_n4_af
# IR_LIT_INTEGER
 xchain00158_n8_α:
 mov qword ptr [rbp + 1296], 6
 mov rax, qword ptr [rip + .Lx00164_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain00158_n4_as
 xchain00158_n8_β:
 jmp xchain00158_n4_af
.Lx00164_0:
 .quad 72
# IR_UNOP
 xchain00158_n9_α:
 mov eax, dword ptr [rbp + 1280]
 cmp eax, 99
 je xchain00158_n4_af
 cmp eax, 0
 je xchain00158_n4_af
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1160], rax
 jmp xchain00158_n4_as
 xchain00158_n9_β:
 jmp xchain00158_n4_af
 xchain00158_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1344]
 mov rdx, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain00158_n4_α
# IR_DISJUNCTION_NARY
 xchain00158_n11_α:
 mov qword ptr [rbp + 896], 0
 mov qword ptr [rbp + 904], 0
 mov dword ptr [rbp + 912], 0
 jmp xchain00158_n14_α
xchain00158_n11_as:
 mov eax, dword ptr [rbp + 912]
 cmp eax, 0
 jne .Lx00165_0
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 904], rax
 jmp xchain00158_n13_α
.Lx00165_0:
 cmp eax, 1
 jne .Lx00165_1
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 904], rax
 jmp xchain00158_n13_α
.Lx00165_1:
 jmp xchain00158_n13_α
 xchain00158_n11_β:
 mov eax, dword ptr [rbp + 912]
 cmp eax, 0
 je xchain00158_n11_af
 jmp xchain00158_n11_af
xchain00158_n11_af:
 add dword ptr [rbp + 912], 1
 mov eax, dword ptr [rbp + 912]
 cmp eax, 1
 je xchain00158_n15_α
 jmp xchain00158_n18_α
# IR_LIT_STRING
 xchain00158_n12_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx00166_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain00158_n17_α
.Lx00166_0:
 .quad .Lx00166_0_s
.Lx00166_0_s:
 .string "l"
# IR_ASSIGN gva
 xchain00158_n13_α:
 mov rax, qword ptr [rbp + 896]
 mov rdx, qword ptr [rbp + 904]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain00158_n18_α
# IR_VAR_REF
 xchain00158_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1600]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain00158_n19_α
 xchain00158_n14_β:
 jmp xchain00158_n11_af
# IR_LIT_INTEGER
 xchain00158_n15_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx00167_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00158_n11_as
 xchain00158_n15_β:
 jmp xchain00158_n11_af
.Lx00167_0:
 .quad 15
# IR_UNOP
 xchain00158_n16_α:
 mov eax, dword ptr [rbp + 1056]
 cmp eax, 99
 je xchain00158_n11_af
 cmp eax, 0
 je xchain00158_n11_af
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 936], rax
 jmp xchain00158_n11_as
 xchain00158_n16_β:
 jmp xchain00158_n11_af
# IR_SUBSCRIPT x[i] variable
 xchain00158_n17_α:
 mov rdi, qword ptr [rbp + 1184]
 mov rsi, qword ptr [rbp + 1192]
 mov rdx, qword ptr [rbp + 1216]
 mov rcx, qword ptr [rbp + 1224]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00158_n4_af
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain00158_n20_α
# IR_LIT_STRING
 xchain00158_n18_α:
 mov qword ptr [rbp + 848], 1
 mov rax, qword ptr [rip + .Lx00168_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain00158_n21_α
.Lx00168_0:
 .quad .Lx00168_0_s
.Lx00168_0_s:
 .string ""
# IR_LIT_STRING
 xchain00158_n19_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx00169_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00158_n22_α
.Lx00169_0:
 .quad .Lx00169_0_s
.Lx00169_0_s:
 .string "w"
# IR_DEREF variable -> value
 xchain00158_n20_α:
 mov rdi, qword ptr [rbp + 1248]
 mov rsi, qword ptr [rbp + 1256]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00158_n4_af
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain00158_n9_α
 xchain00158_n21_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+816]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 824], rax
  .section .rodata
  .Lrkfn667: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn667]
 lea rsi, [rbp + 816]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain00158_n24_α
 jmp xchain00158_n23_α
 xchain00158_n21_β:
 jmp xchain00158_n24_α
# IR_SUBSCRIPT x[i] variable
 xchain00158_n22_α:
 mov rdi, qword ptr [rbp + 960]
 mov rsi, qword ptr [rbp + 968]
 mov rdx, qword ptr [rbp + 992]
 mov rcx, qword ptr [rbp + 1000]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00158_n11_af
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain00158_n25_α
# IR_ASSIGN gva
 xchain00158_n23_α:
 mov rax, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain00158_n24_α
# IR_LIT_INTEGER
 xchain00158_n24_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00170_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00158_n26_α
.Lx00170_0:
 .quad 0
# IR_DEREF variable -> value
 xchain00158_n25_α:
 mov rdi, qword ptr [rbp + 1024]
 mov rsi, qword ptr [rbp + 1032]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00158_n11_af
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain00158_n16_α
# IR_ASSIGN gva
 xchain00158_n26_α:
 mov rax, qword ptr [rbp + 752]
 mov rdx, qword ptr [rbp + 760]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00158_n27_α
 xchain00158_n27_α:
 mov qword ptr [rbp + 672], 0
 mov rdi, qword ptr [rip + .Lx00171_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00171_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00171_3]
 lea rdx, [rip + .Lx00171_4]
 jmp rax
.Lx00171_3:
 mov qword ptr [rbp + 680], rsp
 mov rax, qword ptr [rbp + 672]
 test rax, rax
 jne .Lx00171_5
 mov qword ptr [rbp + 672], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00171_2
.Lx00171_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00171_2
.Lx00171_4:
 mov rax, qword ptr [rbp + 672]
 test rax, rax
 jne .Lx00171_6
 mov qword ptr [rbp + 672], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00171_2
.Lx00171_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00171_2
.Lx00171_1:
 call rt_faildescr@PLT
.Lx00171_2:
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain00158_n29_α
 jmp xchain00158_n28_α
 xchain00158_n27_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 680]
 jmp qword ptr [rsp]
.Lx00171_0:
 .quad .Lx00171_0_s
.Lx00171_0_s:
 .string "item"
# IR_VAR
 xchain00158_n28_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00158_n30_α
# IR_VAR
 xchain00158_n29_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00158_n31_α
 xchain00158_n30_α:
 lea rsi, [rbp + 656]
 lea rdx, [rbp + 704]
 call proc_tabulate_dcα
 jmp .Lx00172_2
.Lx00172_2:
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00158_n27_β
 jmp xchain00158_n27_β
 xchain00158_n30_β:
 jmp xchain00158_n27_β
.Lx00172_0:
 .quad .Lx00172_0_s
.Lx00172_0_s:
 .string "tabulate"
# IR_LIT_INTEGER
 xchain00158_n31_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00173_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00158_n33_α
.Lx00173_0:
 .quad 3
# IR_VAR
 xchain00158_n32_α:
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 136], rax
 jmp xchain00158_n34_α
 xchain00158_n33_α:
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
  .Lrkfn683: .string "sort"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn683]
 lea rsi, [rbp + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00158_n32_α
 jmp xchain00158_n36_α
 xchain00158_n33_β:
 jmp xchain00158_n32_α
 xchain00158_n34_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+96]
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn685: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn685]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00158_n35_α
 jmp xchain00158_n37_α
 xchain00158_n34_β:
 jmp xchain00158_n35_α
 xchain00158_n35_α:
 call proc_Term___dcα
 jmp .Lx00174_2
.Lx00174_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain00158_n35_β:
 jmp main_ω
.Lx00174_0:
 .quad .Lx00174_0_s
.Lx00174_0_s:
 .string "Term__"
 xchain00158_n36_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00158_n32_α
 xchain00158_n37_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 80]
 mov rdx, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain00158_n38_α
# IR_VAR
 xchain00158_n38_α:
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 312], rax
 jmp xchain00158_n39_α
# IR_VAR
 xchain00158_n39_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00158_n40_α
 xchain00158_n40_α:
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
  .Lrkfn694: .string "left"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn694]
 lea rsi, [rbp + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain00158_n32_α
 jmp xchain00158_n41_α
 xchain00158_n40_β:
 jmp xchain00158_n32_α
# IR_VAR
 xchain00158_n41_α:
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 424], rax
 jmp xchain00158_n42_α
 xchain00158_n42_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+384]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
  .section .rodata
  .Lrkfn698: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn698]
 lea rsi, [rbp + 384]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain00158_n32_α
 jmp xchain00158_n43_α
 xchain00158_n42_β:
 jmp xchain00158_n32_α
 xchain00158_n43_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, qword ptr [rbp + 368]
 mov rcx, qword ptr [rbp + 376]
 call str_concat_d@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00158_n44_α
 xchain00158_n44_α:
 lea rsi, [rbp + 208]
 call proc_format_dcα
 jmp .Lx00175_2
.Lx00175_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain00158_n32_α
 jmp xchain00158_n32_α
 xchain00158_n44_β:
 jmp xchain00158_n32_α
.Lx00175_0:
 .quad .Lx00175_0_s
.Lx00175_0_s:
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
