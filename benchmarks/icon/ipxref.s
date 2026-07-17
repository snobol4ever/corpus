  .intel_syntax noprefix
  .text
  .globl proc_addword_α
proc_addword_α:
#=======================================================================================================================
    .global proc_addword_α
    .global proc_addword_β
    .global proc_addword_γ
    .global proc_addword_ω
  sub rsp, 2208
  mov [rsp + 2184], rcx
  mov [rsp + 2192], rdx
  mov [rsp + 2200], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 2176
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 2168], rsp
  mov rdi, rsp
  mov esi, 2176
  call rt_jmp_frame_lexprep@PLT
proc_addword_α_body:
# IR_VAR
 xchain0_n0_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
# IR_VAR
 xchain0_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2136], rax
 jmp xchain0_n3_α
 xchain0_n1_β:
 jmp xchain0_n2_α
# IR_VAR
 xchain0_n2_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain0_n4_α
 xchain0_n2_β:
 jmp proc_addword_ω
 xchain0_n3_α:
# BOX CALL any(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+2096] -> [zr+2048]
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2056], rax
# marshal arg1 = producer-box slot [zr+2128] -> [zr+2064]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2072], rax
  .section .rodata
  .Lbynamefn4: .string "any"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn4]
 lea rsi, [rbp + 2048]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n2_α
# IR_UNOP
 xchain0_n4_α:
 mov eax, dword ptr [rbp + 2000]
 cmp eax, 99
 je proc_addword_ω
 cmp eax, 0
 je proc_addword_ω
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 1968], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 1976], rax
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp proc_addword_ω
# IR_MOVE_LABEL
 xchain0_n5_α:
 mov rax, qword ptr [rbp + 2032]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 2040]
 mov qword ptr [rbp + 1944], rax
 lea rax, [rip + xchain0_n2_α]
 mov qword ptr [rbp + 1952], rax
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_addword_ω
# IR_MOVE_LABEL
 xchain0_n6_α:
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1944], rax
 lea rax, [rip + proc_addword_ω]
 mov qword ptr [rbp + 1952], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp proc_addword_ω
# IR_VAR_REF
 xchain0_n7_α:
 mov rdi, 1879052352
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n11_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n8_α:
 jmp qword ptr [rbp + 1952]
 xchain0_n8_β:
 jmp proc_addword_ω
# IR_VAR
 xchain0_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1800], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n11_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n10_α:
 mov rdi, qword ptr [rbp + 1760]
 mov rsi, qword ptr [rbp + 1768]
 mov rdx, qword ptr [rbp + 1792]
 mov rcx, qword ptr [rbp + 1800]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n11_α
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n11_α
# IR_VAR_REF
 xchain0_n11_α:
 mov rdi, 1879052352
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n16_α
# IR_NULLTEST_VAR
 xchain0_n12_α:
 mov eax, dword ptr [rbp + 1824]
 cmp eax, 99
 je xchain0_n11_α
 mov rdi, qword ptr [rbp + 1824]
 mov rsi, qword ptr [rbp + 1832]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n11_α
 cmp eax, 0
 jne xchain0_n11_α
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1864], rax
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n11_α
# IR_VAR
 xchain0_n13_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1624], rax
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n16_α
 xchain0_n14_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn24: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn24]
 lea rsi, [rbp + 1920]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je xchain0_n11_α
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp xchain0_n11_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n15_α:
 mov rdi, qword ptr [rbp + 1584]
 mov rsi, qword ptr [rbp + 1592]
 mov rdx, qword ptr [rbp + 1616]
 mov rcx, qword ptr [rbp + 1624]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n16_α
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n16_α
# IR_VAR
 xchain0_n16_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1432], rax
 jmp xchain0_n19_α
 xchain0_n16_β:
 jmp xchain0_n20_α
# IR_ASSIGN_VAR
 xchain0_n17_α:
 mov rdi, qword ptr [rbp + 1856]
 mov rsi, qword ptr [rbp + 1864]
 mov rdx, qword ptr [rbp + 1904]
 mov rcx, qword ptr [rbp + 1912]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n11_α
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain0_n11_α
 xchain0_n17_β:
 jmp xchain0_n11_α
# IR_LIT_STRING
 xchain0_n18_α:
 mov qword ptr [rbp + 1680], 1
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [rbp + 1688], rax
 jmp xchain0_n21_α
 xchain0_n18_β:
 jmp xchain0_n16_α
.Lx29_0:
 .quad .Lx29_0_s
.Lx29_0_s:
 .string "global"
# IR_VAR
 xchain0_n19_α:
 mov rax, qword ptr [1879052480]
 mov rdx, qword ptr [1879052488]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain0_n22_α
 xchain0_n19_β:
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n20_α:
 mov rdi, 1879052352
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp xchain0_n27_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n21_α:
 mov rdi, qword ptr [rbp + 1648]
 mov rsi, qword ptr [rbp + 1656]
 mov rdx, qword ptr [rbp + 1680]
 mov rcx, qword ptr [rbp + 1688]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n16_α
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n16_α
# IR_UNOP
 xchain0_n22_α:
 mov eax, dword ptr [rbp + 1520]
 cmp eax, 99
 je xchain0_n20_α
 cmp eax, 0
 je xchain0_n20_α
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1496], rax
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp xchain0_n20_α
# IR_VAR
 xchain0_n23_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1080], rax
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n27_α
# IR_DEREF variable -> value
 xchain0_n24_α:
 mov rdi, qword ptr [rbp + 1712]
 mov rsi, qword ptr [rbp + 1720]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n16_α
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain0_n28_α
 xchain0_n24_β:
 jmp xchain0_n16_α
# IR_LIST_BANG
 xchain0_n25_α:
 mov qword ptr [rbp + 1472], 0
.Lx39_0:
 mov rdi, qword ptr [rbp + 1488]
 mov rsi, qword ptr [rbp + 1496]
 mov rdx, qword ptr [rbp + 1472]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp rax, 99
 je xchain0_n20_α
 jmp xchain0_n29_α
 xchain0_n25_β:
 inc qword ptr [rbp + 1472]
 jmp .Lx39_0
# IR_SUBSCRIPT x[i] variable
 xchain0_n26_α:
 mov rdi, qword ptr [rbp + 1040]
 mov rsi, qword ptr [rbp + 1048]
 mov rdx, qword ptr [rbp + 1072]
 mov rcx, qword ptr [rbp + 1080]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n27_α
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain0_n30_α
 xchain0_n26_β:
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n27_α:
 mov rdi, 1879052352
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain0_n31_α
 xchain0_n27_β:
 jmp proc_addword_ω
# IR_UNOP
 xchain0_n28_α:
 mov eax, dword ptr [rbp + 1744]
 cmp eax, 99
 je xchain0_n16_α
 cmp eax, 0
 jne xchain0_n16_α
 mov qword ptr [rbp + 1552], 0
 mov qword ptr [rbp + 1560], 0
 jmp xchain0_n32_α
 xchain0_n28_β:
 jmp xchain0_n16_α
 xchain0_n29_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 mov rdx, qword ptr [rbp + 1456]
 mov rcx, qword ptr [rbp + 1464]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n25_β
 mov rdi, qword ptr [rbp + 1456]
 mov rsi, qword ptr [rbp + 1464]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain0_n33_α
 xchain0_n29_β:
 jmp xchain0_n25_β
# IR_LIT_STRING
 xchain0_n30_α:
 mov qword ptr [rbp + 1136], 1
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain0_n34_α
 xchain0_n30_β:
 jmp xchain0_n27_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "global"
# IR_VAR
 xchain0_n31_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 872], rax
 jmp xchain0_n35_α
 xchain0_n31_β:
 jmp proc_addword_ω
# IR_MOVE_LABEL
 xchain0_n32_α:
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1368], rax
 lea rax, [rip + xchain0_n16_α]
 mov qword ptr [rbp + 1376], rax
 jmp xchain0_n36_α
 xchain0_n32_β:
 jmp xchain0_n20_α
# IR_MOVE_LABEL
 xchain0_n33_α:
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1368], rax
 lea rax, [rip + xchain0_n25_β]
 mov qword ptr [rbp + 1376], rax
 jmp xchain0_n36_α
 xchain0_n33_β:
 jmp xchain0_n20_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n34_α:
 mov rdi, qword ptr [rbp + 1104]
 mov rsi, qword ptr [rbp + 1112]
 mov rdx, qword ptr [rbp + 1136]
 mov rcx, qword ptr [rbp + 1144]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n27_α
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain0_n38_α
 xchain0_n34_β:
 jmp xchain0_n27_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n35_α:
 mov rdi, qword ptr [rbp + 832]
 mov rsi, qword ptr [rbp + 840]
 mov rdx, qword ptr [rbp + 864]
 mov rcx, qword ptr [rbp + 872]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain0_n39_α
 xchain0_n35_β:
 jmp proc_addword_ω
# IR_VAR_REF
 xchain0_n36_α:
 mov rdi, 1879052352
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain0_n40_α
 xchain0_n36_β:
 jmp xchain0_n44_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n37_α:
 jmp qword ptr [rbp + 1376]
 xchain0_n37_β:
 jmp xchain0_n20_α
# IR_NULLTEST_VAR
 xchain0_n38_α:
 mov eax, dword ptr [rbp + 1168]
 cmp eax, 99
 je xchain0_n27_α
 mov rdi, qword ptr [rbp + 1168]
 mov rsi, qword ptr [rbp + 1176]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n27_α
 cmp eax, 0
 jne xchain0_n27_α
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1208], rax
 jmp xchain0_n41_α
 xchain0_n38_β:
 jmp xchain0_n27_α
# IR_LIT_STRING
 xchain0_n39_α:
 mov qword ptr [rbp + 928], 1
 mov rax, qword ptr [rip + .Lx59_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain0_n42_α
 xchain0_n39_β:
 jmp proc_addword_ω
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
 .string "global"
# IR_VAR
 xchain0_n40_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 472], rax
 jmp xchain0_n43_α
 xchain0_n40_β:
 jmp xchain0_n44_α
# IR_VAR
 xchain0_n41_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1304], rax
 jmp xchain0_n45_α
 xchain0_n41_β:
 jmp xchain0_n27_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n42_α:
 mov rdi, qword ptr [rbp + 896]
 mov rsi, qword ptr [rbp + 904]
 mov rdx, qword ptr [rbp + 928]
 mov rcx, qword ptr [rbp + 936]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain0_n46_α
 xchain0_n42_β:
 jmp proc_addword_ω
# IR_SUBSCRIPT x[i] variable
 xchain0_n43_α:
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 mov rdx, qword ptr [rbp + 464]
 mov rcx, qword ptr [rbp + 472]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n44_α
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain0_n47_α
 xchain0_n43_β:
 jmp xchain0_n44_α
# IR_VAR_REF
 xchain0_n44_α:
 mov rdi, 1879052352
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain0_n48_α
 xchain0_n44_β:
 jmp proc_addword_ω
# IR_LIT_STRING
 xchain0_n45_α:
 mov qword ptr [rbp + 1328], 1
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain0_n49_α
 xchain0_n45_β:
 jmp xchain0_n27_α
.Lx68_0:
 .quad .Lx68_0_s
.Lx68_0_s:
 .string "global"
# IR_DEREF variable -> value
 xchain0_n46_α:
 mov rdi, qword ptr [rbp + 960]
 mov rsi, qword ptr [rbp + 968]
 call rt_deref@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain0_n50_α
 xchain0_n46_β:
 jmp proc_addword_ω
# IR_VAR
 xchain0_n47_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 536], rax
 jmp xchain0_n51_α
 xchain0_n47_β:
 jmp xchain0_n44_α
# IR_VAR
 xchain0_n48_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 264], rax
 jmp xchain0_n52_α
 xchain0_n48_β:
 jmp proc_addword_ω
# IR_MAKE_LIST
 xchain0_n49_α:
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1272], rax
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1288], rax
 lea rdi, [rbp + 1264]
 mov esi, 2
 call rt_make_list@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain0_n53_α
 xchain0_n49_β:
 jmp xchain0_n27_α
# IR_VAR
 xchain0_n50_α:
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 1016], rax
 jmp xchain0_n54_α
 xchain0_n50_β:
 jmp proc_addword_ω
# IR_SUBSCRIPT x[i] variable
 xchain0_n51_α:
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n44_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain0_n55_α
 xchain0_n51_β:
 jmp xchain0_n44_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n52_α:
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 256]
 mov rcx, qword ptr [rbp + 264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain0_n56_α
 xchain0_n52_β:
 jmp proc_addword_ω
# IR_ASSIGN_VAR
 xchain0_n53_α:
 mov rdi, qword ptr [rbp + 1200]
 mov rsi, qword ptr [rbp + 1208]
 mov rdx, qword ptr [rbp + 1248]
 mov rcx, qword ptr [rbp + 1256]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n27_α
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain0_n27_α
 xchain0_n53_β:
 jmp xchain0_n27_α
 xchain0_n54_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+992] -> [zr+784]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+1008] -> [zr+800]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 808], rax
  .section .rodata
  .Lrkfn82: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn82]
 lea rsi, [rbp + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je proc_addword_ω
 jmp xchain0_n57_α
 xchain0_n54_β:
 jmp proc_addword_ω
# IR_NULLTEST_VAR
 xchain0_n55_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain0_n44_α
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n44_α
 cmp eax, 0
 jne xchain0_n44_α
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain0_n58_α
 xchain0_n55_β:
 jmp xchain0_n44_α
# IR_VAR
 xchain0_n56_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 328], rax
 jmp xchain0_n59_α
 xchain0_n56_β:
 jmp proc_addword_ω
 xchain0_n57_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 760], rax
 jmp xchain0_n60_α
xchain0_n57_β:
 jmp proc_addword_ω
# IR_VAR
 xchain0_n58_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 696], rax
 jmp xchain0_n61_α
 xchain0_n58_β:
 jmp xchain0_n44_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n59_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 mov rdx, qword ptr [rbp + 320]
 mov rcx, qword ptr [rbp + 328]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain0_n62_α
 xchain0_n59_β:
 jmp proc_addword_ω
# IR_MOVE_LABEL
 xchain0_n60_α:
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 120], rax
 lea rax, [rip + proc_addword_ω]
 mov qword ptr [rbp + 128], rax
 jmp xchain0_n63_α
 xchain0_n60_β:
 jmp proc_addword_ω
# IR_VAR
 xchain0_n61_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 728], rax
 jmp xchain0_n65_α
 xchain0_n61_β:
 jmp xchain0_n44_α
# IR_DEREF variable -> value
 xchain0_n62_α:
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 call rt_deref@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain0_n66_α
 xchain0_n62_β:
 jmp proc_addword_ω
 xchain0_n63_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 104], rax
 jmp xchain0_n67_α
xchain0_n63_β:
 jmp proc_addword_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n64_α:
 jmp qword ptr [rbp + 128]
 xchain0_n64_β:
 jmp proc_addword_ω
# IR_MAKE_LIST
 xchain0_n65_α:
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 664], rax
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 680], rax
 lea rdi, [rbp + 656]
 mov esi, 2
 call rt_make_list@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain0_n68_α
 xchain0_n65_β:
 jmp xchain0_n44_α
# IR_VAR
 xchain0_n66_α:
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 408], rax
 jmp xchain0_n69_α
 xchain0_n66_β:
 jmp proc_addword_ω
# IR_MOVE_LABEL
 xchain0_n67_α:
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 72], rax
 lea rax, [rip + xchain0_n64_α]
 mov qword ptr [rbp + 80], rax
 jmp proc_addword_ω
 xchain0_n67_β:
 jmp proc_addword_ω
# IR_ASSIGN_VAR
 xchain0_n68_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n44_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain0_n44_α
 xchain0_n68_β:
 jmp xchain0_n44_α
 xchain0_n69_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+176]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+192]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn106: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn106]
 lea rsi, [rbp + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je proc_addword_ω
 jmp xchain0_n71_α
 xchain0_n69_β:
 jmp proc_addword_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n70_α:
 jmp qword ptr [rbp + 80]
 xchain0_n70_β:
 jmp proc_addword_ω
 xchain0_n71_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 152], rax
 jmp xchain0_n72_α
xchain0_n71_β:
 jmp proc_addword_ω
# IR_MOVE_LABEL
 xchain0_n72_α:
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 120], rax
 lea rax, [rip + proc_addword_ω]
 mov qword ptr [rbp + 128], rax
 jmp xchain0_n63_α
 xchain0_n72_β:
 jmp proc_addword_ω
proc_addword_res:
add rsp, 8
pop rbp
proc_addword_β:
jmp proc_addword_ω
proc_addword_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 2184]
lea rsp, [rbp + 2208]
mov rbp, [rbp + 2200]
jmp rax
proc_addword_ω:
mov rax, [rbp + 2192]
lea rsp, [rbp + 2208]
mov rbp, [rbp + 2200]
jmp rax
  .globl proc_getword_α
proc_getword_α:
#=======================================================================================================================
    .global proc_getword_α
    .global proc_getword_β
    .global proc_getword_γ
    .global proc_getword_ω
  sub rsp, 4800
  mov [rsp + 4776], rcx
  mov [rsp + 4784], rdx
  mov [rsp + 4792], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 4768
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 4728], rsp
  mov rdi, rsp
  mov esi, 4768
  call rt_jmp_frame_lexprep@PLT
proc_getword_α_body:
# IR_VAR_REF
 xchain00001_n0_α:
 mov rdi, 1879052592
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4608], rax
 mov qword ptr [rbp + 4616], rdx
 jmp xchain00001_n1_α
 xchain00001_n0_β:
 jmp xchain00001_n5_α
# IR_NULLTEST_VAR
 xchain00001_n1_α:
 mov eax, dword ptr [rbp + 4608]
 cmp eax, 99
 je xchain00001_n5_α
 mov rdi, qword ptr [rbp + 4608]
 mov rsi, qword ptr [rbp + 4616]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n5_α
 cmp eax, 0
 jne xchain00001_n5_α
 mov rax, qword ptr [rbp + 4608]
 mov qword ptr [rbp + 4640], rax
 mov rax, qword ptr [rbp + 4616]
 mov qword ptr [rbp + 4648], rax
 jmp xchain00001_n2_α
 xchain00001_n1_β:
 jmp xchain00001_n5_α
# IR_LIT_INTEGER
 xchain00001_n2_α:
 mov qword ptr [rbp + 4688], 6
 mov rax, qword ptr [rip + .Lx00002_0]
 mov qword ptr [rbp + 4696], rax
 jmp xchain00001_n4_α
 xchain00001_n2_β:
 jmp xchain00001_n5_α
.Lx00002_0:
 .quad 1
 xchain00001_n3_α:
 jmp xchain00001_n5_α
xchain00001_n3_β:
 jmp xchain00001_n5_α
# IR_ASSIGN_VAR
 xchain00001_n4_α:
 mov rdi, qword ptr [rbp + 4640]
 mov rsi, qword ptr [rbp + 4648]
 mov rdx, qword ptr [rbp + 4688]
 mov rcx, qword ptr [rbp + 4696]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00001_n5_α
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 jmp xchain00001_n6_α
 xchain00001_n4_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n5_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 jmp xchain00001_n7_α
 xchain00001_n5_β:
 jmp xchain00001_n8_α
# IR_LIT_CHARSET
 xchain00001_n6_α:
 mov qword ptr [rbp + 4576], 1
 mov dword ptr [rbp + 4580], -1
 mov rax, qword ptr [rip + .Lx00003_0]
 mov qword ptr [rbp + 4584], rax
 jmp xchain00001_n9_α
 xchain00001_n6_β:
 jmp xchain00001_n5_α
.Lx00003_0:
 .quad .Lx00003_0_s
.Lx00003_0_s:
 .string "\t\n "
# IR_UNOP
 xchain00001_n7_α:
 mov rdi, qword ptr [rbp + 4432]
 mov rsi, qword ptr [rbp + 4440]
 call rt_size_d@PLT
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 jmp xchain00001_n10_α
 xchain00001_n7_β:
 jmp xchain00001_n8_α
# IR_VAR
 xchain00001_n8_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 4224], rax
 mov qword ptr [rbp + 4232], rdx
 jmp xchain00001_n11_α
 xchain00001_n8_β:
 jmp xchain00001_n12_α
# IR_UNOP
 xchain00001_n9_α:
 mov rdi, qword ptr [rbp + 4576]
 mov rsi, qword ptr [rbp + 4584]
 call rt_cset_compl@PLT
 mov qword ptr [rbp + 4544], rax
 mov qword ptr [rbp + 4552], rdx
 jmp xchain00001_n13_α
 xchain00001_n9_β:
 jmp xchain00001_n5_α
# IR_LIT_INTEGER
 xchain00001_n10_α:
 mov qword ptr [rbp + 4464], 6
 mov rax, qword ptr [rip + .Lx00004_0]
 mov qword ptr [rbp + 4472], rax
 jmp xchain00001_n14_α
 xchain00001_n10_β:
 jmp xchain00001_n8_α
.Lx00004_0:
 .quad 0
# IR_UNOP
 xchain00001_n11_α:
 mov eax, dword ptr [rbp + 4224]
 cmp eax, 99
 je xchain00001_n12_α
 cmp eax, 0
 jne xchain00001_n12_α
 mov qword ptr [rbp + 4192], 0
 mov qword ptr [rbp + 4200], 0
 jmp xchain00001_n15_α
 xchain00001_n11_β:
 jmp xchain00001_n12_α
# IR_VAR
 xchain00001_n12_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 jmp xchain00001_n16_α
 xchain00001_n12_β:
 jmp xchain00001_n17_α
# IR_ASSIGN gva
 xchain00001_n13_α:
 mov rax, qword ptr [rbp + 4544]
 mov rdx, qword ptr [rbp + 4552]
 mov qword ptr [1879052576], rax
 mov qword ptr [1879052584], rdx
 mov qword ptr [rbp + 4528], rax
 mov qword ptr [rbp + 4536], rdx
 jmp xchain00001_n18_α
 xchain00001_n13_β:
 jmp xchain00001_n5_α
 xchain00001_n14_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 4400]
 cmp eax, 100
 je .Lx00005_0
 mov eax, dword ptr [rbp + 4464]
 cmp eax, 100
 je .Lx00005_0
 mov eax, dword ptr [rbp + 4400]
 cmp eax, 6
 jne .Lx00005_2
 mov eax, dword ptr [rbp + 4464]
 cmp eax, 6
 jne .Lx00005_2
.Lx00005_1:
 mov rax, qword ptr [rbp + 4408]
 mov rcx, qword ptr [rbp + 4472]
 cmp rax, rcx
 jle xchain00001_n8_α
 mov rcx, qword ptr [rbp + 4464]
 mov qword ptr [rbp + 4368], rcx
 mov rcx, qword ptr [rbp + 4472]
 mov qword ptr [rbp + 4376], rcx
 jmp xchain00001_n19_α
.Lx00005_0:
 mov rdi, qword ptr [rbp + 4400]
 mov rsi, qword ptr [rbp + 4408]
 mov rdx, qword ptr [rbp + 4464]
 mov rcx, qword ptr [rbp + 4472]
 mov r8d, 7
 lea r9, [rbp + 4368]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00005_1
 cmp eax, 1
 je xchain00001_n8_α
 jmp xchain00001_n19_α
.Lx00005_2:
 mov rdi, qword ptr [rbp + 4400]
 mov rsi, qword ptr [rbp + 4408]
 mov rdx, qword ptr [rbp + 4464]
 mov rcx, qword ptr [rbp + 4472]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n8_α
 mov rax, qword ptr [rbp + 4464]
 mov qword ptr [rbp + 4368], rax
 mov rax, qword ptr [rbp + 4472]
 mov qword ptr [rbp + 4376], rax
 jmp xchain00001_n19_α
 xchain00001_n14_β:
 jmp xchain00001_n8_α
# IR_MOVE_LABEL
 xchain00001_n15_α:
 mov rax, qword ptr [rbp + 4192]
 mov qword ptr [rbp + 3936], rax
 mov rax, qword ptr [rbp + 4200]
 mov qword ptr [rbp + 3944], rax
 lea rax, [rip + xchain00001_n12_α]
 mov qword ptr [rbp + 3952], rax
 jmp xchain00001_n20_α
 xchain00001_n15_β:
 jmp xchain00001_n17_α
# IR_VAR
 xchain00001_n16_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 4128], rax
 mov qword ptr [rbp + 4136], rdx
 jmp xchain00001_n22_α
 xchain00001_n16_β:
 jmp xchain00001_n17_α
# IR_VAR
 xchain00001_n17_α:
 mov rax, qword ptr [1879052576]
 mov rdx, qword ptr [1879052584]
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 jmp xchain00001_n23_α
 xchain00001_n17_β:
 jmp xchain00001_n24_α
# IR_MOVE_LABEL
 xchain00001_n18_α:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 4496], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 4504], rax
 lea rax, [rip + xchain00001_n3_α]
 mov qword ptr [rbp + 4512], rax
 jmp xchain00001_n3_α
 xchain00001_n18_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n19_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 jmp xchain00001_n26_α
 xchain00001_n19_β:
 jmp proc_getword_ω
# IR_VAR
 xchain00001_n20_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 jmp xchain00001_n27_α
 xchain00001_n20_β:
 jmp proc_getword_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n21_α:
 jmp qword ptr [rbp + 3952]
 xchain00001_n21_β:
 jmp xchain00001_n17_α
# IR_UNOP
 xchain00001_n22_α:
 mov rdi, qword ptr [rbp + 4128]
 mov rsi, qword ptr [rbp + 4136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 4096], rax
 mov qword ptr [rbp + 4104], rdx
 jmp xchain00001_n28_α
 xchain00001_n22_β:
 jmp xchain00001_n17_α
# IR_VAR
 xchain00001_n23_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 jmp xchain00001_n29_α
 xchain00001_n23_β:
 jmp xchain00001_n24_α
# IR_VAR
 xchain00001_n24_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 jmp xchain00001_n30_α
 xchain00001_n24_β:
 jmp xchain00001_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n25_α:
 jmp qword ptr [rbp + 4512]
 xchain00001_n25_β:
 jmp xchain00001_n5_α
 xchain00001_n26_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4336] -> [zr+4304]
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [rbp + 4304], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [rbp + 4312], rax
  .section .rodata
  .Lrkfn145: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn145]
 lea rsi, [rbp + 4304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 cmp eax, 99
 je proc_getword_ω
 jmp xchain00001_n31_α
 xchain00001_n26_β:
 jmp proc_getword_ω
 xchain00001_n27_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3904] -> [zr+3872]
 mov rax, qword ptr [rbp + 3904]
 mov qword ptr [rbp + 3872], rax
 mov rax, qword ptr [rbp + 3912]
 mov qword ptr [rbp + 3880], rax
  .section .rodata
  .Lrkfn147: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn147]
 lea rsi, [rbp + 3872]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 cmp eax, 99
 je proc_getword_ω
 jmp xchain00001_n32_α
 xchain00001_n27_β:
 jmp proc_getword_ω
# IR_LIT_INTEGER
 xchain00001_n28_α:
 mov qword ptr [rbp + 4160], 6
 mov rax, qword ptr [rip + .Lx00006_0]
 mov qword ptr [rbp + 4168], rax
 jmp xchain00001_n33_α
 xchain00001_n28_β:
 jmp xchain00001_n17_α
.Lx00006_0:
 .quad 1
# IR_VAR
 xchain00001_n29_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 3536], rax
 mov qword ptr [rbp + 3544], rdx
 jmp xchain00001_n34_α
 xchain00001_n29_β:
 jmp xchain00001_n24_α
# IR_UNOP
 xchain00001_n30_α:
 mov rdi, qword ptr [rbp + 3312]
 mov rsi, qword ptr [rbp + 3320]
 call rt_size_d@PLT
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain00001_n35_α
 xchain00001_n30_β:
 jmp xchain00001_n5_α
# IR_RETURN
 xchain00001_n31_α:
 mov rax, qword ptr [rbp + 4288]
 mov rdx, qword ptr [rbp + 4296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_getword_γ
# IR_ASSIGN gva
 xchain00001_n32_α:
 mov rax, qword ptr [rbp + 3856]
 mov rdx, qword ptr [rbp + 3864]
 mov qword ptr [1879052496], rax
 mov qword ptr [1879052504], rdx
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 jmp xchain00001_n36_α
 xchain00001_n32_β:
 jmp proc_getword_ω
# IR_COERCE_NUMERIC
 xchain00001_n33_α:
 mov eax, dword ptr [rbp + 4096]
 cmp eax, 7
 je .Lx00007_1
 cmp eax, 6
 jne .Lx00007_0
 mov eax, dword ptr [rbp + 4160]
 cmp eax, 6
 jne .Lx00007_0
.Lx00007_1:
 mov rax, qword ptr [rbp + 4096]
 mov qword ptr [rbp + 4064], rax
 mov rax, qword ptr [rbp + 4104]
 mov qword ptr [rbp + 4072], rax
 jmp .Lx00007_2
.Lx00007_0:
 lea rdi, [rbp + 4096]
 lea rsi, [rbp + 4160]
 lea rdx, [rbp + 4064]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00007_2:
 jmp xchain00001_n37_α
 xchain00001_n33_β:
 jmp xchain00001_n17_α
 xchain00001_n34_α:
# BOX CALL upto(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+3472] -> [zr+3408]
 mov rax, qword ptr [rbp + 3472]
 mov qword ptr [rbp + 3408], rax
 mov rax, qword ptr [rbp + 3480]
 mov qword ptr [rbp + 3416], rax
# marshal arg1 = producer-box slot [zr+3504] -> [zr+3424]
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 3424], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 3432], rax
# marshal arg2 = producer-box slot [zr+3536] -> [zr+3440]
 mov rax, qword ptr [rbp + 3536]
 mov qword ptr [rbp + 3440], rax
 mov rax, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 3448], rax
  .section .rodata
  .Lbynamefn108: .string "upto"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn108]
 lea rsi, [rbp + 3408]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 cmp eax, 99
 je xchain00001_n24_α
 jmp xchain00001_n38_α
 xchain00001_n34_β:
 jmp xchain00001_n24_α
# IR_LIT_INTEGER
 xchain00001_n35_α:
 mov qword ptr [rbp + 3344], 6
 mov rax, qword ptr [rip + .Lx00008_0]
 mov qword ptr [rbp + 3352], rax
 jmp xchain00001_n39_α
 xchain00001_n35_β:
 jmp xchain00001_n5_α
.Lx00008_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00001_n36_α:
 mov qword ptr [rbp + 3808], 6
 mov rax, qword ptr [rip + .Lx00009_0]
 mov qword ptr [rbp + 3816], rax
 jmp xchain00001_n40_α
 xchain00001_n36_β:
 jmp xchain00001_n44_α
.Lx00009_0:
 .quad 1
 xchain00001_n37_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 4064]
 cmp eax, 100
 je .Lx00010_0
 mov eax, dword ptr [rbp + 4064]
 cmp eax, 6
 jne .Lx00010_2
.Lx00010_1:
 mov rax, qword ptr [rbp + 4072]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 4032], 6
 mov qword ptr [rbp + 4040], rax
 jmp xchain00001_n41_α
.Lx00010_0:
 mov rdi, qword ptr [rbp + 4064]
 mov rsi, qword ptr [rbp + 4072]
 mov rdx, qword ptr [rbp + 4160]
 mov rcx, qword ptr [rbp + 4168]
 mov r8d, 0
 lea r9, [rbp + 4032]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00010_3
.Lx00010_2:
 mov rdi, qword ptr [rbp + 4064]
 mov rsi, qword ptr [rbp + 4072]
 mov rdx, qword ptr [rbp + 4160]
 mov rcx, qword ptr [rbp + 4168]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n17_α
 mov qword ptr [rbp + 4032], rax
 mov qword ptr [rbp + 4040], rdx
.Lx00010_3:
 jmp xchain00001_n41_α
 xchain00001_n37_β:
 jmp xchain00001_n17_α
# IR_ASSIGN gva
 xchain00001_n38_α:
 mov rax, qword ptr [rbp + 3392]
 mov rdx, qword ptr [rbp + 3400]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain00001_n42_α
 xchain00001_n38_β:
 jmp xchain00001_n24_α
# IR_COERCE_NUMERIC
 xchain00001_n39_α:
 mov eax, dword ptr [rbp + 3280]
 cmp eax, 7
 je .Lx00011_1
 cmp eax, 6
 jne .Lx00011_0
 mov eax, dword ptr [rbp + 3344]
 cmp eax, 6
 jne .Lx00011_0
.Lx00011_1:
 mov rax, qword ptr [rbp + 3280]
 mov qword ptr [rbp + 3248], rax
 mov rax, qword ptr [rbp + 3288]
 mov qword ptr [rbp + 3256], rax
 jmp .Lx00011_2
.Lx00011_0:
 lea rdi, [rbp + 3280]
 lea rsi, [rbp + 3344]
 lea rdx, [rbp + 3248]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00011_2:
 jmp xchain00001_n43_α
 xchain00001_n39_β:
 jmp xchain00001_n5_α
# IR_ASSIGN gva
 xchain00001_n40_α:
 mov rax, qword ptr [rbp + 3808]
 mov rdx, qword ptr [rbp + 3816]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 jmp xchain00001_n44_α
 xchain00001_n40_β:
 jmp xchain00001_n44_α
 xchain00001_n41_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 4000]
 cmp eax, 100
 je .Lx00012_0
 mov eax, dword ptr [rbp + 4032]
 cmp eax, 100
 je .Lx00012_0
 mov eax, dword ptr [rbp + 4000]
 cmp eax, 6
 jne .Lx00012_2
 mov eax, dword ptr [rbp + 4032]
 cmp eax, 6
 jne .Lx00012_2
.Lx00012_1:
 mov rax, qword ptr [rbp + 4008]
 mov rcx, qword ptr [rbp + 4040]
 cmp rax, rcx
 jne xchain00001_n17_α
 mov rcx, qword ptr [rbp + 4032]
 mov qword ptr [rbp + 3968], rcx
 mov rcx, qword ptr [rbp + 4040]
 mov qword ptr [rbp + 3976], rcx
 jmp xchain00001_n45_α
.Lx00012_0:
 mov rdi, qword ptr [rbp + 4000]
 mov rsi, qword ptr [rbp + 4008]
 mov rdx, qword ptr [rbp + 4032]
 mov rcx, qword ptr [rbp + 4040]
 mov r8d, 9
 lea r9, [rbp + 3968]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00012_1
 cmp eax, 1
 je xchain00001_n17_α
 jmp xchain00001_n45_α
.Lx00012_2:
 mov rdi, qword ptr [rbp + 4000]
 mov rsi, qword ptr [rbp + 4008]
 mov rdx, qword ptr [rbp + 4032]
 mov rcx, qword ptr [rbp + 4040]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n17_α
 mov rax, qword ptr [rbp + 4032]
 mov qword ptr [rbp + 3968], rax
 mov rax, qword ptr [rbp + 4040]
 mov qword ptr [rbp + 3976], rax
 jmp xchain00001_n45_α
 xchain00001_n41_β:
 jmp xchain00001_n17_α
# IR_VAR
 xchain00001_n42_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 jmp xchain00001_n46_α
 xchain00001_n42_β:
 jmp xchain00001_n47_α
 xchain00001_n43_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3248]
 cmp eax, 100
 je .Lx00013_0
 mov eax, dword ptr [rbp + 3248]
 cmp eax, 6
 jne .Lx00013_2
.Lx00013_1:
 mov rax, qword ptr [rbp + 3256]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 3216], 6
 mov qword ptr [rbp + 3224], rax
 jmp xchain00001_n48_α
.Lx00013_0:
 mov rdi, qword ptr [rbp + 3248]
 mov rsi, qword ptr [rbp + 3256]
 mov rdx, qword ptr [rbp + 3344]
 mov rcx, qword ptr [rbp + 3352]
 mov r8d, 0
 lea r9, [rbp + 3216]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00013_3
.Lx00013_2:
 mov rdi, qword ptr [rbp + 3248]
 mov rsi, qword ptr [rbp + 3256]
 mov rdx, qword ptr [rbp + 3344]
 mov rcx, qword ptr [rbp + 3352]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n5_α
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
.Lx00013_3:
 jmp xchain00001_n48_α
 xchain00001_n43_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n44_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 3728], rax
 mov qword ptr [rbp + 3736], rdx
 jmp xchain00001_n49_α
 xchain00001_n44_β:
 jmp xchain00001_n17_α
# IR_MOVE_LABEL
 xchain00001_n45_α:
 mov rax, qword ptr [rbp + 3968]
 mov qword ptr [rbp + 3936], rax
 mov rax, qword ptr [rbp + 3976]
 mov qword ptr [rbp + 3944], rax
 lea rax, [rip + xchain00001_n17_α]
 mov qword ptr [rbp + 3952], rax
 jmp xchain00001_n20_α
 xchain00001_n45_β:
 jmp xchain00001_n17_α
 xchain00001_n46_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3168]
 mov rdx, qword ptr [rbp + 3176]
 mov qword ptr [rbp + 4752], rax
 mov qword ptr [rbp + 4760], rdx
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 jmp xchain00001_n47_α
 xchain00001_n46_β:
 jmp xchain00001_n47_α
# IR_VAR_REF
 xchain00001_n47_α:
 mov rdi, 1879052496
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 jmp xchain00001_n50_α
 xchain00001_n47_β:
 jmp xchain00001_n54_α
# IR_ASSIGN gva
 xchain00001_n48_α:
 mov rax, qword ptr [rbp + 3216]
 mov rdx, qword ptr [rbp + 3224]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 jmp xchain00001_n51_α
 xchain00001_n48_β:
 jmp xchain00001_n5_α
# IR_LIT_INTEGER
 xchain00001_n49_α:
 mov qword ptr [rbp + 3760], 6
 mov rax, qword ptr [rip + .Lx00014_0]
 mov qword ptr [rbp + 3768], rax
 jmp xchain00001_n52_α
 xchain00001_n49_β:
 jmp xchain00001_n17_α
.Lx00014_0:
 .quad 1
# IR_VAR
 xchain00001_n50_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 jmp xchain00001_n53_α
 xchain00001_n50_β:
 jmp xchain00001_n54_α
# IR_MOVE_LABEL
 xchain00001_n51_α:
 mov rax, qword ptr [rbp + 3200]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 40], rax
 lea rax, [rip + xchain00001_n3_α]
 mov qword ptr [rbp + 48], rax
 jmp xchain00001_n55_α
 xchain00001_n51_β:
 jmp xchain00001_n5_α
# IR_COERCE_NUMERIC
 xchain00001_n52_α:
 mov eax, dword ptr [rbp + 3728]
 cmp eax, 7
 je .Lx00015_1
 cmp eax, 6
 jne .Lx00015_0
 mov eax, dword ptr [rbp + 3760]
 cmp eax, 6
 jne .Lx00015_0
.Lx00015_1:
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 3696], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 3704], rax
 jmp .Lx00015_2
.Lx00015_0:
 lea rdi, [rbp + 3728]
 lea rsi, [rbp + 3760]
 lea rdx, [rbp + 3696]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00015_2:
 jmp xchain00001_n57_α
 xchain00001_n52_β:
 jmp xchain00001_n17_α
# IR_SUBSCRIPT x[i] variable
 xchain00001_n53_α:
 mov rdi, qword ptr [rbp + 2944]
 mov rsi, qword ptr [rbp + 2952]
 mov rdx, qword ptr [rbp + 2976]
 mov rcx, qword ptr [rbp + 2984]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00001_n54_α
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 jmp xchain00001_n58_α
 xchain00001_n53_β:
 jmp xchain00001_n54_α
# IR_VAR_REF
 xchain00001_n54_α:
 mov rdi, 1879052496
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 jmp xchain00001_n59_α
 xchain00001_n54_β:
 jmp xchain00001_n63_α
 xchain00001_n55_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 16], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 24], rax
 jmp xchain00001_n5_α
xchain00001_n55_β:
 jmp xchain00001_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n56_α:
 jmp qword ptr [rbp + 48]
 xchain00001_n56_β:
 jmp xchain00001_n5_α
 xchain00001_n57_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3696]
 cmp eax, 100
 je .Lx00016_0
 mov eax, dword ptr [rbp + 3696]
 cmp eax, 6
 jne .Lx00016_2
.Lx00016_1:
 mov rax, qword ptr [rbp + 3704]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 3664], 6
 mov qword ptr [rbp + 3672], rax
 jmp xchain00001_n60_α
.Lx00016_0:
 mov rdi, qword ptr [rbp + 3696]
 mov rsi, qword ptr [rbp + 3704]
 mov rdx, qword ptr [rbp + 3760]
 mov rcx, qword ptr [rbp + 3768]
 mov r8d, 0
 lea r9, [rbp + 3664]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00016_3
.Lx00016_2:
 mov rdi, qword ptr [rbp + 3696]
 mov rsi, qword ptr [rbp + 3704]
 mov rdx, qword ptr [rbp + 3760]
 mov rcx, qword ptr [rbp + 3768]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n17_α
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
.Lx00016_3:
 jmp xchain00001_n60_α
 xchain00001_n57_β:
 jmp xchain00001_n17_α
# IR_DEREF variable -> value
 xchain00001_n58_α:
 mov rdi, qword ptr [rbp + 3008]
 mov rsi, qword ptr [rbp + 3016]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n54_α
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain00001_n61_α
 xchain00001_n58_β:
 jmp xchain00001_n54_α
# IR_VAR
 xchain00001_n59_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 jmp xchain00001_n62_α
 xchain00001_n59_β:
 jmp xchain00001_n63_α
# IR_ASSIGN gva
 xchain00001_n60_α:
 mov rax, qword ptr [rbp + 3664]
 mov rdx, qword ptr [rbp + 3672]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 jmp xchain00001_n64_α
 xchain00001_n60_β:
 jmp xchain00001_n17_α
# IR_LIT_STRING
 xchain00001_n61_α:
 mov qword ptr [rbp + 3120], 1
 mov rax, qword ptr [rip + .Lx00017_0]
 mov qword ptr [rbp + 3128], rax
 jmp xchain00001_n65_α
 xchain00001_n61_β:
 jmp xchain00001_n71_α
.Lx00017_0:
 .quad .Lx00017_0_s
.Lx00017_0_s:
 .string "'"
# IR_SUBSCRIPT x[i] variable
 xchain00001_n62_α:
 mov rdi, qword ptr [rbp + 2768]
 mov rsi, qword ptr [rbp + 2776]
 mov rdx, qword ptr [rbp + 2800]
 mov rcx, qword ptr [rbp + 2808]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00001_n63_α
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 jmp xchain00001_n66_α
 xchain00001_n62_β:
 jmp xchain00001_n63_α
# IR_VAR
 xchain00001_n63_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain00001_n67_α
 xchain00001_n63_β:
 jmp xchain00001_n68_α
 xchain00001_n64_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 3632], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 3640], rax
 jmp xchain00001_n69_α
xchain00001_n64_β:
 jmp xchain00001_n17_α
# IR_MOVE_LABEL
 xchain00001_n65_α:
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3064], rax
 lea rax, [rip + xchain00001_n71_α]
 mov qword ptr [rbp + 3072], rax
 jmp xchain00001_n70_α
 xchain00001_n65_β:
 jmp xchain00001_n54_α
# IR_DEREF variable -> value
 xchain00001_n66_α:
 mov rdi, qword ptr [rbp + 2832]
 mov rsi, qword ptr [rbp + 2840]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n63_α
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 jmp xchain00001_n73_α
 xchain00001_n66_β:
 jmp xchain00001_n63_α
# IR_VAR
 xchain00001_n67_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 jmp xchain00001_n74_α
 xchain00001_n67_β:
 jmp xchain00001_n68_α
# IR_VAR
 xchain00001_n68_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 jmp xchain00001_n75_α
 xchain00001_n68_β:
 jmp xchain00001_n76_α
# IR_MOVE_LABEL
 xchain00001_n69_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 3608], rax
 lea rax, [rip + xchain00001_n17_α]
 mov qword ptr [rbp + 3616], rax
 jmp xchain00001_n77_α
 xchain00001_n69_β:
 jmp xchain00001_n17_α
 xchain00001_n70_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 3040]
 mov rsi, qword ptr [rbp + 3048]
 mov rdx, qword ptr [rbp + 3056]
 mov rcx, qword ptr [rbp + 3064]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n72_α
 mov rdi, qword ptr [rbp + 3056]
 mov rsi, qword ptr [rbp + 3064]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 jmp xchain00001_n79_α
 xchain00001_n70_β:
 jmp xchain00001_n72_α
# IR_LIT_STRING
 xchain00001_n71_α:
 mov qword ptr [rbp + 3088], 1
 mov rax, qword ptr [rip + .Lx00018_0]
 mov qword ptr [rbp + 3096], rax
 jmp xchain00001_n80_α
 xchain00001_n71_β:
 jmp xchain00001_n54_α
.Lx00018_0:
 .quad .Lx00018_0_s
.Lx00018_0_s:
 .string "\""
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n72_α:
 jmp qword ptr [rbp + 3072]
 xchain00001_n72_β:
 jmp xchain00001_n54_α
# IR_LIT_STRING
 xchain00001_n73_α:
 mov qword ptr [rbp + 2880], 1
 mov rax, qword ptr [rip + .Lx00019_0]
 mov qword ptr [rbp + 2888], rax
 jmp xchain00001_n81_α
 xchain00001_n73_β:
 jmp xchain00001_n63_α
.Lx00019_0:
 .quad .Lx00019_0_s
.Lx00019_0_s:
 .string "#"
# IR_VAR
 xchain00001_n74_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 jmp xchain00001_n82_α
 xchain00001_n74_β:
 jmp xchain00001_n68_α
# IR_LIT_INTEGER
 xchain00001_n75_α:
 mov qword ptr [rbp + 2512], 6
 mov rax, qword ptr [rip + .Lx00020_0]
 mov qword ptr [rbp + 2520], rax
 jmp xchain00001_n83_α
 xchain00001_n75_β:
 jmp xchain00001_n76_α
.Lx00020_0:
 .quad 1
# IR_VAR_REF
 xchain00001_n76_α:
 mov rdi, 1879052496
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain00001_n84_α
 xchain00001_n76_β:
 jmp proc_getword_ω
# IR_MOVE_LABEL
 xchain00001_n77_α:
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 3568], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 3576], rax
 lea rax, [rip + xchain00001_n78_α]
 mov qword ptr [rbp + 3584], rax
 jmp xchain00001_n17_α
 xchain00001_n77_β:
 jmp xchain00001_n17_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n78_α:
 jmp qword ptr [rbp + 3616]
 xchain00001_n78_β:
 jmp xchain00001_n17_α
# IR_VAR
 xchain00001_n79_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain00001_n86_α
 xchain00001_n79_β:
 jmp xchain00001_n87_α
# IR_MOVE_LABEL
 xchain00001_n80_α:
 mov rax, qword ptr [rbp + 3088]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 3096]
 mov qword ptr [rbp + 3064], rax
 lea rax, [rip + xchain00001_n54_α]
 mov qword ptr [rbp + 3072], rax
 jmp xchain00001_n70_α
 xchain00001_n80_β:
 jmp xchain00001_n54_α
 xchain00001_n81_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 2864]
 mov rsi, qword ptr [rbp + 2872]
 mov rdx, qword ptr [rbp + 2880]
 mov rcx, qword ptr [rbp + 2888]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n63_α
 mov rdi, qword ptr [rbp + 2880]
 mov rsi, qword ptr [rbp + 2888]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 jmp xchain00001_n88_α
 xchain00001_n81_β:
 jmp xchain00001_n63_α
 xchain00001_n82_α:
# BOX CALL many(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+2640] -> [zr+2576]
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 2584], rax
# marshal arg1 = producer-box slot [zr+2672] -> [zr+2592]
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2600], rax
# marshal arg2 = producer-box slot [zr+2704] -> [zr+2608]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2616], rax
  .section .rodata
  .Lbynamefn156: .string "many"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn156]
 lea rsi, [rbp + 2576]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 cmp eax, 99
 je xchain00001_n68_α
 jmp xchain00001_n89_α
 xchain00001_n82_β:
 jmp xchain00001_n68_α
# IR_COERCE_NUMERIC
 xchain00001_n83_α:
 mov eax, dword ptr [rbp + 2480]
 cmp eax, 7
 je .Lx00021_1
 cmp eax, 6
 jne .Lx00021_0
 mov eax, dword ptr [rbp + 2512]
 cmp eax, 6
 jne .Lx00021_0
.Lx00021_1:
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2456], rax
 jmp .Lx00021_2
.Lx00021_0:
 lea rdi, [rbp + 2480]
 lea rsi, [rbp + 2512]
 lea rdx, [rbp + 2448]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00021_2:
 jmp xchain00001_n90_α
 xchain00001_n83_β:
 jmp xchain00001_n76_α
# IR_VAR
 xchain00001_n84_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain00001_n91_α
 xchain00001_n84_β:
 jmp proc_getword_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n85_α:
 jmp qword ptr [rbp + 3584]
 xchain00001_n85_β:
 jmp xchain00001_n17_α
# IR_UNOP
 xchain00001_n86_α:
 mov eax, dword ptr [rbp + 1776]
 cmp eax, 99
 je xchain00001_n87_α
 cmp eax, 0
 jne xchain00001_n87_α
 mov qword ptr [rbp + 1744], 0
 mov qword ptr [rbp + 1752], 0
 jmp xchain00001_n92_α
 xchain00001_n86_β:
 jmp xchain00001_n87_α
# IR_VAR
 xchain00001_n87_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00001_n93_α
 xchain00001_n87_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n88_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain00001_n94_α
 xchain00001_n88_β:
 jmp xchain00001_n5_α
# IR_ASSIGN gva
 xchain00001_n89_α:
 mov rax, qword ptr [rbp + 2560]
 mov rdx, qword ptr [rbp + 2568]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 jmp xchain00001_n95_α
 xchain00001_n89_β:
 jmp xchain00001_n68_α
 xchain00001_n90_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 100
 je .Lx00022_0
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 6
 jne .Lx00022_2
.Lx00022_1:
 mov rax, qword ptr [rbp + 2456]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 2416], 6
 mov qword ptr [rbp + 2424], rax
 jmp xchain00001_n96_α
.Lx00022_0:
 mov rdi, qword ptr [rbp + 2448]
 mov rsi, qword ptr [rbp + 2456]
 mov rdx, qword ptr [rbp + 2512]
 mov rcx, qword ptr [rbp + 2520]
 mov r8d, 0
 lea r9, [rbp + 2416]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00022_3
.Lx00022_2:
 mov rdi, qword ptr [rbp + 2448]
 mov rsi, qword ptr [rbp + 2456]
 mov rdx, qword ptr [rbp + 2512]
 mov rcx, qword ptr [rbp + 2520]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n76_α
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
.Lx00022_3:
 jmp xchain00001_n96_α
 xchain00001_n90_β:
 jmp xchain00001_n76_α
# IR_LIT_INTEGER
 xchain00001_n91_α:
 mov qword ptr [rbp + 2320], 6
 mov rax, qword ptr [rip + .Lx00023_0]
 mov qword ptr [rbp + 2328], rax
 jmp xchain00001_n97_α
 xchain00001_n91_β:
 jmp proc_getword_ω
.Lx00023_0:
 .quad 1
# IR_VAR_REF
 xchain00001_n92_α:
 mov rdi, 1879052496
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain00001_n98_α
 xchain00001_n92_β:
 jmp xchain00001_n00024_α
# IR_LIT_INTEGER
 xchain00001_n93_α:
 mov qword ptr [rbp + 1712], 6
 mov rax, qword ptr [rip + .Lx00025_0]
 mov qword ptr [rbp + 1720], rax
 jmp xchain00001_n99_α
 xchain00001_n93_β:
 jmp xchain00001_n5_α
.Lx00025_0:
 .quad 1
# IR_UNOP
 xchain00001_n94_α:
 mov rdi, qword ptr [rbp + 1952]
 mov rsi, qword ptr [rbp + 1960]
 call rt_size_d@PLT
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain00001_n00026_α
 xchain00001_n94_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n95_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain00001_n00027_α
 xchain00001_n95_β:
 jmp proc_getword_ω
# IR_ASSIGN gva
 xchain00001_n96_α:
 mov rax, qword ptr [rbp + 2416]
 mov rdx, qword ptr [rbp + 2424]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain00001_n76_α
 xchain00001_n96_β:
 jmp xchain00001_n76_α
# IR_COERCE_NUMERIC
 xchain00001_n97_α:
 mov eax, dword ptr [rbp + 2288]
 cmp eax, 7
 je .Lx00028_1
 cmp eax, 6
 jne .Lx00028_0
 mov eax, dword ptr [rbp + 2320]
 cmp eax, 6
 jne .Lx00028_0
.Lx00028_1:
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2264], rax
 jmp .Lx00028_2
.Lx00028_0:
 lea rdi, [rbp + 2288]
 lea rsi, [rbp + 2320]
 lea rdx, [rbp + 2256]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00028_2:
 jmp xchain00001_n00029_α
 xchain00001_n97_β:
 jmp proc_getword_ω
# IR_VAR
 xchain00001_n98_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain00001_n00030_α
 xchain00001_n98_β:
 jmp xchain00001_n00024_α
# IR_COERCE_NUMERIC
 xchain00001_n99_α:
 mov eax, dword ptr [rbp + 1680]
 cmp eax, 7
 je .Lx00031_1
 cmp eax, 6
 jne .Lx00031_0
 mov eax, dword ptr [rbp + 1712]
 cmp eax, 6
 jne .Lx00031_0
.Lx00031_1:
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1656], rax
 jmp .Lx00031_2
.Lx00031_0:
 lea rdi, [rbp + 1680]
 lea rsi, [rbp + 1712]
 lea rdx, [rbp + 1648]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00031_2:
 jmp xchain00001_n00032_α
 xchain00001_n99_β:
 jmp xchain00001_n5_α
# IR_LIT_INTEGER
 xchain00001_n00026_α:
 mov qword ptr [rbp + 1984], 6
 mov rax, qword ptr [rip + .Lx00033_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain00001_n00034_α
 xchain00001_n00026_β:
 jmp xchain00001_n5_α
.Lx00033_0:
 .quad 1
# IR_VAR
 xchain00001_n00027_α:
 mov rax, qword ptr [rbp + 4752]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 4760]
 mov qword ptr [rbp + 2120], rax
 jmp xchain00001_n00035_α
 xchain00001_n00027_β:
 jmp proc_getword_ω
 xchain00001_n00029_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2256]
 cmp eax, 100
 je .Lx00036_0
 mov eax, dword ptr [rbp + 2256]
 cmp eax, 6
 jne .Lx00036_2
.Lx00036_1:
 mov rax, qword ptr [rbp + 2264]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 2224], 6
 mov qword ptr [rbp + 2232], rax
 jmp xchain00001_n00037_α
.Lx00036_0:
 mov rdi, qword ptr [rbp + 2256]
 mov rsi, qword ptr [rbp + 2264]
 mov rdx, qword ptr [rbp + 2320]
 mov rcx, qword ptr [rbp + 2328]
 mov r8d, 1
 lea r9, [rbp + 2224]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00036_3
.Lx00036_2:
 mov rdi, qword ptr [rbp + 2256]
 mov rsi, qword ptr [rbp + 2264]
 mov rdx, qword ptr [rbp + 2320]
 mov rcx, qword ptr [rbp + 2328]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_getword_ω
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
.Lx00036_3:
 jmp xchain00001_n00037_α
 xchain00001_n00029_β:
 jmp proc_getword_ω
# IR_SUBSCRIPT x[i] variable
 xchain00001_n00030_α:
 mov rdi, qword ptr [rbp + 1488]
 mov rsi, qword ptr [rbp + 1496]
 mov rdx, qword ptr [rbp + 1520]
 mov rcx, qword ptr [rbp + 1528]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00001_n00024_α
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain00001_n00038_α
 xchain00001_n00030_β:
 jmp xchain00001_n00024_α
# IR_VAR
 xchain00001_n00024_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain00001_n00039_α
 xchain00001_n00024_β:
 jmp xchain00001_n00040_α
 xchain00001_n00032_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1648]
 cmp eax, 100
 je .Lx00041_0
 mov eax, dword ptr [rbp + 1648]
 cmp eax, 6
 jne .Lx00041_2
.Lx00041_1:
 mov rax, qword ptr [rbp + 1656]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 1616], 6
 mov qword ptr [rbp + 1624], rax
 jmp xchain00001_n00001_α
.Lx00041_0:
 mov rdi, qword ptr [rbp + 1648]
 mov rsi, qword ptr [rbp + 1656]
 mov rdx, qword ptr [rbp + 1712]
 mov rcx, qword ptr [rbp + 1720]
 mov r8d, 0
 lea r9, [rbp + 1616]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00041_3
.Lx00041_2:
 mov rdi, qword ptr [rbp + 1648]
 mov rsi, qword ptr [rbp + 1656]
 mov rdx, qword ptr [rbp + 1712]
 mov rcx, qword ptr [rbp + 1720]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n5_α
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
.Lx00041_3:
 jmp xchain00001_n00001_α
 xchain00001_n00032_β:
 jmp xchain00001_n5_α
# IR_COERCE_NUMERIC
 xchain00001_n00034_α:
 mov eax, dword ptr [rbp + 1920]
 cmp eax, 7
 je .Lx00042_1
 cmp eax, 6
 jne .Lx00042_0
 mov eax, dword ptr [rbp + 1984]
 cmp eax, 6
 jne .Lx00042_0
.Lx00042_1:
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1896], rax
 jmp .Lx00042_2
.Lx00042_0:
 lea rdi, [rbp + 1920]
 lea rsi, [rbp + 1984]
 lea rdx, [rbp + 1888]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00042_2:
 jmp xchain00001_n00043_α
 xchain00001_n00034_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n00035_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 jmp xchain00001_n00044_α
 xchain00001_n00035_β:
 jmp proc_getword_ω
# IR_SUBSCRIPT x[i] variable
 xchain00001_n00037_α:
 mov rdi, qword ptr [rbp + 2192]
 mov rsi, qword ptr [rbp + 2200]
 mov rdx, qword ptr [rbp + 2224]
 mov rcx, qword ptr [rbp + 2232]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_getword_ω
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain00001_n00045_α
 xchain00001_n00037_β:
 jmp proc_getword_ω
# IR_DEREF variable -> value
 xchain00001_n00038_α:
 mov rdi, qword ptr [rbp + 1552]
 mov rsi, qword ptr [rbp + 1560]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n00024_α
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain00001_n00002_α
 xchain00001_n00038_β:
 jmp xchain00001_n00024_α
# IR_LIT_INTEGER
 xchain00001_n00039_α:
 mov qword ptr [rbp + 1440], 6
 mov rax, qword ptr [rip + .Lx00046_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain00001_n00047_α
 xchain00001_n00039_β:
 jmp xchain00001_n00040_α
.Lx00046_0:
 .quad 1
 xchain00001_n00048_α:
 jmp xchain00001_n00040_α
xchain00001_n00048_β:
 jmp xchain00001_n00040_α
# IR_ASSIGN gva
 xchain00001_n00001_α:
 mov rax, qword ptr [rbp + 1616]
 mov rdx, qword ptr [rbp + 1624]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain00001_n00049_α
 xchain00001_n00001_β:
 jmp xchain00001_n5_α
 xchain00001_n00043_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1888]
 cmp eax, 100
 je .Lx00050_0
 mov eax, dword ptr [rbp + 1888]
 cmp eax, 6
 jne .Lx00050_2
.Lx00050_1:
 mov rax, qword ptr [rbp + 1896]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 1856], 6
 mov qword ptr [rbp + 1864], rax
 jmp xchain00001_n00003_α
.Lx00050_0:
 mov rdi, qword ptr [rbp + 1888]
 mov rsi, qword ptr [rbp + 1896]
 mov rdx, qword ptr [rbp + 1984]
 mov rcx, qword ptr [rbp + 1992]
 mov r8d, 0
 lea r9, [rbp + 1856]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00050_3
.Lx00050_2:
 mov rdi, qword ptr [rbp + 1888]
 mov rsi, qword ptr [rbp + 1896]
 mov rdx, qword ptr [rbp + 1984]
 mov rcx, qword ptr [rbp + 1992]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n5_α
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
.Lx00050_3:
 jmp xchain00001_n00003_α
 xchain00001_n00043_β:
 jmp xchain00001_n5_α
# IR_SUBSCRIPT section
 xchain00001_n00044_α:
 mov rdi, qword ptr [rbp + 2080]
 mov rsi, qword ptr [rbp + 2088]
 mov rdx, qword ptr [rbp + 2112]
 mov rcx, qword ptr [rbp + 2120]
 mov r8, qword ptr [rbp + 2144]
 mov r9, qword ptr [rbp + 2152]
 call subscript_get2@PLT
 cmp eax, 99
 je proc_getword_ω
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 jmp xchain00001_n00051_α
 xchain00001_n00044_β:
 jmp proc_getword_ω
# IR_DEREF variable -> value
 xchain00001_n00045_α:
 mov rdi, qword ptr [rbp + 2352]
 mov rsi, qword ptr [rbp + 2360]
 call rt_deref@PLT
 cmp eax, 99
 je proc_getword_ω
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 jmp xchain00001_n00052_α
 xchain00001_n00045_β:
 jmp proc_getword_ω
 xchain00001_n00002_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1584]
 mov rdx, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 4736], rax
 mov qword ptr [rbp + 4744], rdx
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain00001_n00024_α
 xchain00001_n00002_β:
 jmp xchain00001_n00024_α
# IR_COERCE_NUMERIC
 xchain00001_n00047_α:
 mov eax, dword ptr [rbp + 1408]
 cmp eax, 7
 je .Lx00053_1
 cmp eax, 6
 jne .Lx00053_0
 mov eax, dword ptr [rbp + 1440]
 cmp eax, 6
 jne .Lx00053_0
.Lx00053_1:
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1384], rax
 jmp .Lx00053_2
.Lx00053_0:
 lea rdi, [rbp + 1408]
 lea rsi, [rbp + 1440]
 lea rdx, [rbp + 1376]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00053_2:
 jmp xchain00001_n00054_α
 xchain00001_n00047_β:
 jmp xchain00001_n00040_α
# IR_VAR
 xchain00001_n00040_α:
 mov rax, qword ptr [rbp + 4736]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 4744]
 mov qword ptr [rbp + 1176], rax
 jmp xchain00001_n00004_α
 xchain00001_n00040_β:
 jmp xchain00001_n00055_α
# IR_MOVE_LABEL
 xchain00001_n00049_α:
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 120], rax
 lea rax, [rip + xchain00001_n3_α]
 mov qword ptr [rbp + 128], rax
 jmp xchain00001_n00056_α
 xchain00001_n00049_β:
 jmp xchain00001_n5_α
# IR_ASSIGN gva
 xchain00001_n00003_α:
 mov rax, qword ptr [rbp + 1856]
 mov rdx, qword ptr [rbp + 1864]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain00001_n00005_α
 xchain00001_n00003_β:
 jmp xchain00001_n5_α
# IR_RETURN
 xchain00001_n00051_α:
 mov rax, qword ptr [rbp + 2048]
 mov rdx, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_getword_γ
# IR_RETURN
 xchain00001_n00052_α:
 mov rax, qword ptr [rbp + 2384]
 mov rdx, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_getword_γ
 xchain00001_n00054_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1376]
 cmp eax, 100
 je .Lx00057_0
 mov eax, dword ptr [rbp + 1376]
 cmp eax, 6
 jne .Lx00057_2
.Lx00057_1:
 mov rax, qword ptr [rbp + 1384]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 1344], 6
 mov qword ptr [rbp + 1352], rax
 jmp xchain00001_n00058_α
.Lx00057_0:
 mov rdi, qword ptr [rbp + 1376]
 mov rsi, qword ptr [rbp + 1384]
 mov rdx, qword ptr [rbp + 1440]
 mov rcx, qword ptr [rbp + 1448]
 mov r8d, 0
 lea r9, [rbp + 1344]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00057_3
.Lx00057_2:
 mov rdi, qword ptr [rbp + 1376]
 mov rsi, qword ptr [rbp + 1384]
 mov rdx, qword ptr [rbp + 1440]
 mov rcx, qword ptr [rbp + 1448]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00040_α
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
.Lx00057_3:
 jmp xchain00001_n00058_α
 xchain00001_n00054_β:
 jmp xchain00001_n00040_α
# IR_LIT_CHARSET
 xchain00001_n00004_α:
 mov qword ptr [rbp + 1200], 1
 mov dword ptr [rbp + 1204], -1
 mov rax, qword ptr [rip + .Lx00059_0]
 mov qword ptr [rbp + 1208], rax
 jmp xchain00001_n00060_α
 xchain00001_n00004_β:
 jmp xchain00001_n00055_α
.Lx00059_0:
 .quad .Lx00059_0_s
.Lx00059_0_s:
 .string "\\"
# IR_LIT_INTEGER
 xchain00001_n00055_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx00061_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00001_n00062_α
 xchain00001_n00055_β:
 jmp xchain00001_n00063_α
.Lx00061_0:
 .quad 1
# IR_MOVE_LABEL
 xchain00001_n00056_α:
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 88], rax
 lea rax, [rip + xchain00001_n00064_α]
 mov qword ptr [rbp + 96], rax
 jmp xchain00001_n00065_α
 xchain00001_n00056_β:
 jmp xchain00001_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00064_α:
 jmp qword ptr [rbp + 128]
 xchain00001_n00064_β:
 jmp xchain00001_n5_α
# IR_MOVE_LABEL
 xchain00001_n00005_α:
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1816], rax
 lea rax, [rip + xchain00001_n3_α]
 mov qword ptr [rbp + 1824], rax
 jmp xchain00001_n00066_α
 xchain00001_n00005_β:
 jmp xchain00001_n5_α
# IR_ASSIGN gva
 xchain00001_n00058_α:
 mov rax, qword ptr [rbp + 1344]
 mov rdx, qword ptr [rbp + 1352]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain00001_n00040_α
 xchain00001_n00058_β:
 jmp xchain00001_n00040_α
 xchain00001_n00060_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 1168]
 mov rsi, qword ptr [rbp + 1176]
 mov rdx, qword ptr [rbp + 1200]
 mov rcx, qword ptr [rbp + 1208]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00055_α
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00001_n00067_α
 xchain00001_n00060_β:
 jmp xchain00001_n00055_α
# IR_ASSIGN gva
 xchain00001_n00062_α:
 mov rax, qword ptr [rbp + 944]
 mov rdx, qword ptr [rbp + 952]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain00001_n00063_α
 xchain00001_n00062_β:
 jmp xchain00001_n00063_α
 xchain00001_n00065_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 72], rax
 jmp xchain00001_n00068_α
xchain00001_n00065_β:
 jmp xchain00001_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00069_α:
 jmp qword ptr [rbp + 96]
 xchain00001_n00069_β:
 jmp xchain00001_n5_α
# IR_MOVE_LABEL
 xchain00001_n00066_α:
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 88], rax
 lea rax, [rip + xchain00001_n00070_α]
 mov qword ptr [rbp + 96], rax
 jmp xchain00001_n00065_α
 xchain00001_n00066_β:
 jmp xchain00001_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00070_α:
 jmp qword ptr [rbp + 1824]
 xchain00001_n00070_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n00067_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain00001_n00071_α
 xchain00001_n00067_β:
 jmp xchain00001_n00055_α
# IR_VAR
 xchain00001_n00063_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00001_n00072_α
 xchain00001_n00063_β:
 jmp xchain00001_n00073_α
# IR_MOVE_LABEL
 xchain00001_n00068_α:
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 40], rax
 lea rax, [rip + xchain00001_n00069_α]
 mov qword ptr [rbp + 48], rax
 jmp xchain00001_n55_α
 xchain00001_n00068_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n00071_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain00001_n00074_α
 xchain00001_n00071_β:
 jmp xchain00001_n00055_α
# IR_LIT_INTEGER
 xchain00001_n00072_α:
 mov qword ptr [rbp + 896], 6
 mov rax, qword ptr [rip + .Lx00075_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain00001_n00076_α
 xchain00001_n00072_β:
 jmp xchain00001_n00073_α
.Lx00075_0:
 .quad 1
# IR_VAR
 xchain00001_n00073_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00001_n00077_α
 xchain00001_n00073_β:
 jmp proc_getword_ω
 xchain00001_n00074_α:
# BOX CALL upto(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1072]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1080], rax
# marshal arg1 = producer-box slot [zr+1232] -> [zr+1088]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1096], rax
# marshal arg2 = producer-box slot [zr+1264] -> [zr+1104]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1112], rax
  .section .rodata
  .Lbynamefn216: .string "upto"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn216]
 lea rsi, [rbp + 1072]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain00001_n00055_α
 jmp xchain00001_n00078_α
 xchain00001_n00074_β:
 jmp xchain00001_n00055_α
# IR_COERCE_NUMERIC
 xchain00001_n00076_α:
 mov eax, dword ptr [rbp + 864]
 cmp eax, 7
 je .Lx00079_1
 cmp eax, 6
 jne .Lx00079_0
 mov eax, dword ptr [rbp + 896]
 cmp eax, 6
 jne .Lx00079_0
.Lx00079_1:
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
 jmp .Lx00079_2
.Lx00079_0:
 lea rdi, [rbp + 864]
 lea rsi, [rbp + 896]
 lea rdx, [rbp + 832]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00079_2:
 jmp xchain00001_n00080_α
 xchain00001_n00076_β:
 jmp xchain00001_n00073_α
 xchain00001_n00077_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+720]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 728], rax
  .section .rodata
  .Lrkfn298: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn298]
 lea rsi, [rbp + 720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je proc_getword_ω
 jmp xchain00001_n00081_α
 xchain00001_n00077_β:
 jmp proc_getword_ω
# IR_LIT_INTEGER
 xchain00001_n00078_α:
 mov qword ptr [rbp + 1296], 6
 mov rax, qword ptr [rip + .Lx00082_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain00001_n00006_α
 xchain00001_n00078_β:
 jmp xchain00001_n00055_α
.Lx00082_0:
 .quad 1
 xchain00001_n00080_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 832]
 cmp eax, 100
 je .Lx00083_0
 mov eax, dword ptr [rbp + 832]
 cmp eax, 6
 jne .Lx00083_2
.Lx00083_1:
 mov rax, qword ptr [rbp + 840]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 800], 6
 mov qword ptr [rbp + 808], rax
 jmp xchain00001_n00084_α
.Lx00083_0:
 mov rdi, qword ptr [rbp + 832]
 mov rsi, qword ptr [rbp + 840]
 mov rdx, qword ptr [rbp + 896]
 mov rcx, qword ptr [rbp + 904]
 mov r8d, 0
 lea r9, [rbp + 800]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00083_3
.Lx00083_2:
 mov rdi, qword ptr [rbp + 832]
 mov rsi, qword ptr [rbp + 840]
 mov rdx, qword ptr [rbp + 896]
 mov rcx, qword ptr [rbp + 904]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00073_α
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
.Lx00083_3:
 jmp xchain00001_n00084_α
 xchain00001_n00080_β:
 jmp xchain00001_n00073_α
# IR_MOVE_LABEL
 xchain00001_n00081_α:
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 680], rax
 lea rax, [rip + proc_getword_ω]
 mov qword ptr [rbp + 688], rax
 jmp xchain00001_n00085_α
 xchain00001_n00081_β:
 jmp xchain00001_n00040_α
# IR_COERCE_NUMERIC
 xchain00001_n00006_α:
 mov eax, dword ptr [rbp + 1056]
 cmp eax, 7
 je .Lx00086_1
 cmp eax, 6
 jne .Lx00086_0
 mov eax, dword ptr [rbp + 1296]
 cmp eax, 6
 jne .Lx00086_0
.Lx00086_1:
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1032], rax
 jmp .Lx00086_2
.Lx00086_0:
 lea rdi, [rbp + 1056]
 lea rsi, [rbp + 1296]
 lea rdx, [rbp + 1024]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00086_2:
 jmp xchain00001_n00087_α
 xchain00001_n00006_β:
 jmp xchain00001_n00055_α
# IR_ASSIGN gva
 xchain00001_n00084_α:
 mov rax, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain00001_n00073_α
 xchain00001_n00084_β:
 jmp xchain00001_n00073_α
# IR_ASSIGN gva
 xchain00001_n00085_α:
 mov rax, qword ptr [rbp + 672]
 mov rdx, qword ptr [rbp + 680]
 mov qword ptr [1879052496], rax
 mov qword ptr [1879052504], rdx
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00001_n00088_α
 xchain00001_n00085_β:
 jmp xchain00001_n00040_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00089_α:
 jmp qword ptr [rbp + 688]
 xchain00001_n00089_β:
 jmp xchain00001_n00040_α
 xchain00001_n00087_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1024]
 cmp eax, 100
 je .Lx00090_0
 mov eax, dword ptr [rbp + 1024]
 cmp eax, 6
 jne .Lx00090_2
.Lx00090_1:
 mov rax, qword ptr [rbp + 1032]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 992], 6
 mov qword ptr [rbp + 1000], rax
 jmp xchain00001_n00007_α
.Lx00090_0:
 mov rdi, qword ptr [rbp + 1024]
 mov rsi, qword ptr [rbp + 1032]
 mov rdx, qword ptr [rbp + 1296]
 mov rcx, qword ptr [rbp + 1304]
 mov r8d, 0
 lea r9, [rbp + 992]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00090_3
.Lx00090_2:
 mov rdi, qword ptr [rbp + 1024]
 mov rsi, qword ptr [rbp + 1032]
 mov rdx, qword ptr [rbp + 1296]
 mov rcx, qword ptr [rbp + 1304]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00055_α
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
.Lx00090_3:
 jmp xchain00001_n00007_α
 xchain00001_n00087_β:
 jmp xchain00001_n00055_α
 xchain00001_n00088_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 648], rax
 jmp xchain00001_n00091_α
xchain00001_n00088_β:
 jmp xchain00001_n00040_α
# IR_ASSIGN gva
 xchain00001_n00007_α:
 mov rax, qword ptr [rbp + 992]
 mov rdx, qword ptr [rbp + 1000]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain00001_n00008_α
 xchain00001_n00007_β:
 jmp xchain00001_n00055_α
# IR_MOVE_LABEL
 xchain00001_n00091_α:
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 168], rax
 lea rax, [rip + xchain00001_n00089_α]
 mov qword ptr [rbp + 176], rax
 jmp xchain00001_n00048_α
 xchain00001_n00091_β:
 jmp xchain00001_n00040_α
# IR_VAR_REF
 xchain00001_n00008_α:
 mov rdi, 1879052496
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00001_n00010_α
 xchain00001_n00008_β:
 jmp xchain00001_n00092_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00009_α:
 jmp qword ptr [rbp + 176]
 xchain00001_n00009_β:
 jmp xchain00001_n00040_α
# IR_VAR
 xchain00001_n00010_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00001_n00093_α
 xchain00001_n00010_β:
 jmp xchain00001_n00092_α
# IR_LIT_INTEGER
 xchain00001_n00093_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00094_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00001_n00011_α
 xchain00001_n00093_β:
 jmp xchain00001_n00092_α
.Lx00094_0:
 .quad 1
# IR_VAR
 xchain00001_n00092_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain00001_n00095_α
 xchain00001_n00092_β:
 jmp xchain00001_n00040_α
# IR_COERCE_NUMERIC
 xchain00001_n00011_α:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 7
 je .Lx00096_1
 cmp eax, 6
 jne .Lx00096_0
 mov eax, dword ptr [rbp + 528]
 cmp eax, 6
 jne .Lx00096_0
.Lx00096_1:
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 472], rax
 jmp .Lx00096_2
.Lx00096_0:
 lea rdi, [rbp + 496]
 lea rsi, [rbp + 528]
 lea rdx, [rbp + 464]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00096_2:
 jmp xchain00001_n00012_α
 xchain00001_n00011_β:
 jmp xchain00001_n00092_α
# IR_LIT_INTEGER
 xchain00001_n00095_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00097_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00001_n00098_α
 xchain00001_n00095_β:
 jmp xchain00001_n00040_α
.Lx00097_0:
 .quad 1
 xchain00001_n00012_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 464]
 cmp eax, 100
 je .Lx00099_0
 mov eax, dword ptr [rbp + 464]
 cmp eax, 6
 jne .Lx00099_2
.Lx00099_1:
 mov rax, qword ptr [rbp + 472]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 432], 6
 mov qword ptr [rbp + 440], rax
 jmp xchain00001_n00013_α
.Lx00099_0:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 mov r8d, 1
 lea r9, [rbp + 432]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00099_3
.Lx00099_2:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00092_α
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
.Lx00099_3:
 jmp xchain00001_n00013_α
 xchain00001_n00012_β:
 jmp xchain00001_n00092_α
# IR_COERCE_NUMERIC
 xchain00001_n00098_α:
 mov eax, dword ptr [rbp + 304]
 cmp eax, 7
 je .Lx00100_1
 cmp eax, 6
 jne .Lx00100_0
 mov eax, dword ptr [rbp + 336]
 cmp eax, 6
 jne .Lx00100_0
.Lx00100_1:
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 280], rax
 jmp .Lx00100_2
.Lx00100_0:
 lea rdi, [rbp + 304]
 lea rsi, [rbp + 336]
 lea rdx, [rbp + 272]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00100_2:
 jmp xchain00001_n00101_α
 xchain00001_n00098_β:
 jmp xchain00001_n00040_α
# IR_SUBSCRIPT x[i] variable
 xchain00001_n00013_α:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00001_n00092_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00001_n00102_α
 xchain00001_n00013_β:
 jmp xchain00001_n00092_α
 xchain00001_n00101_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 272]
 cmp eax, 100
 je .Lx00103_0
 mov eax, dword ptr [rbp + 272]
 cmp eax, 6
 jne .Lx00103_2
.Lx00103_1:
 mov rax, qword ptr [rbp + 280]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 240], 6
 mov qword ptr [rbp + 248], rax
 jmp xchain00001_n00104_α
.Lx00103_0:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 mov r8d, 0
 lea r9, [rbp + 240]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00103_3
.Lx00103_2:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00040_α
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
.Lx00103_3:
 jmp xchain00001_n00104_α
 xchain00001_n00101_β:
 jmp xchain00001_n00040_α
# IR_DEREF variable -> value
 xchain00001_n00102_α:
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n00092_α
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00001_n00105_α
 xchain00001_n00102_β:
 jmp xchain00001_n00092_α
# IR_ASSIGN gva
 xchain00001_n00104_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00001_n00106_α
 xchain00001_n00104_β:
 jmp xchain00001_n00040_α
# IR_VAR
 xchain00001_n00105_α:
 mov rax, qword ptr [rbp + 4736]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 4744]
 mov qword ptr [rbp + 616], rax
 jmp xchain00001_n00107_α
 xchain00001_n00105_β:
 jmp xchain00001_n00092_α
# IR_MOVE_LABEL
 xchain00001_n00106_α:
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
 lea rax, [rip + xchain00001_n00048_α]
 mov qword ptr [rbp + 208], rax
 jmp xchain00001_n00108_α
 xchain00001_n00106_β:
 jmp xchain00001_n00040_α
 xchain00001_n00107_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 4736]
 mov rcx, qword ptr [rbp + 4744]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n00092_α
 mov rdi, qword ptr [rbp + 4736]
 mov rsi, qword ptr [rbp + 4744]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00001_n00109_α
 xchain00001_n00107_β:
 jmp xchain00001_n00092_α
# IR_MOVE_LABEL
 xchain00001_n00108_α:
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
 lea rax, [rip + xchain00001_n00014_α]
 mov qword ptr [rbp + 176], rax
 jmp xchain00001_n00048_α
 xchain00001_n00108_β:
 jmp xchain00001_n00040_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00014_α:
 jmp qword ptr [rbp + 208]
 xchain00001_n00014_β:
 jmp xchain00001_n00040_α
 xchain00001_n00110_α:
 jmp xchain00001_n00109_α
xchain00001_n00110_β:
 jmp xchain00001_n00109_α
 xchain00001_n00109_α:
 jmp xchain00001_n00111_α
xchain00001_n00109_β:
 jmp xchain00001_n5_α
# IR_MOVE_LABEL
 xchain00001_n00111_α:
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 120], rax
 lea rax, [rip + xchain00001_n00109_α]
 mov qword ptr [rbp + 128], rax
 jmp xchain00001_n00056_α
 xchain00001_n00111_β:
 jmp xchain00001_n5_α
proc_getword_res:
add rsp, 8
pop rbp
proc_getword_β:
jmp proc_getword_ω
proc_getword_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 4776]
lea rsp, [rbp + 4800]
mov rbp, [rbp + 4792]
jmp rax
proc_getword_ω:
mov rax, [rbp + 4784]
lea rsp, [rbp + 4800]
mov rbp, [rbp + 4792]
jmp rax
  .globl proc_format_α
proc_format_α:
#=======================================================================================================================
    .global proc_format_α
    .global proc_format_β
    .global proc_format_γ
    .global proc_format_ω
  sub rsp, 3472
  mov [rsp + 3448], rcx
  mov [rsp + 3456], rdx
  mov [rsp + 3464], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 3440
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 3304], rsp
  mov rdi, rsp
  mov esi, 3440
  call rt_jmp_frame_lexprep@PLT
proc_format_α_body:
# IR_VAR_REF
 xchain00112_n0_α:
 mov rdi, 1879052608
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain00112_n1_α
 xchain00112_n0_β:
 jmp xchain00112_n3_α
# IR_NULLTEST_VAR
 xchain00112_n1_α:
 mov eax, dword ptr [rbp + 3184]
 cmp eax, 99
 je xchain00112_n3_α
 mov rdi, qword ptr [rbp + 3184]
 mov rsi, qword ptr [rbp + 3192]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00112_n3_α
 cmp eax, 0
 jne xchain00112_n3_α
 mov rax, qword ptr [rbp + 3184]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 3224], rax
 jmp xchain00112_n2_α
 xchain00112_n1_β:
 jmp xchain00112_n3_α
# IR_LIT_INTEGER
 xchain00112_n2_α:
 mov qword ptr [rbp + 3264], 6
 mov rax, qword ptr [rip + .Lx00113_0]
 mov qword ptr [rbp + 3272], rax
 jmp xchain00112_n4_α
 xchain00112_n2_β:
 jmp xchain00112_n3_α
.Lx00113_0:
 .quad 1
# IR_MAKE_LIST
 xchain00112_n3_α:
 lea rdi, [rbp + 2704]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 jmp xchain00112_n5_α
 xchain00112_n3_β:
 jmp xchain00112_n7_α
# IR_ASSIGN_VAR
 xchain00112_n4_α:
 mov rdi, qword ptr [rbp + 3216]
 mov rsi, qword ptr [rbp + 3224]
 mov rdx, qword ptr [rbp + 3264]
 mov rcx, qword ptr [rbp + 3272]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00112_n3_α
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 jmp xchain00112_n6_α
 xchain00112_n4_β:
 jmp xchain00112_n3_α
 xchain00112_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2688]
 mov rdx, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 jmp xchain00112_n7_α
 xchain00112_n5_β:
 jmp xchain00112_n7_α
# IR_VAR
 xchain00112_n6_α:
 mov rax, qword ptr [1879052432]
 mov rdx, qword ptr [1879052440]
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 jmp xchain00112_n8_α
 xchain00112_n6_β:
 jmp xchain00112_n9_α
# IR_VAR
 xchain00112_n7_α:
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 2648], rax
 jmp xchain00112_n10_α
 xchain00112_n7_β:
 jmp xchain00112_n11_α
# IR_UNOP
 xchain00112_n8_α:
 mov eax, dword ptr [rbp + 3152]
 cmp eax, 99
 je xchain00112_n9_α
 cmp eax, 0
 je xchain00112_n9_α
 mov rax, qword ptr [rbp + 3152]
 mov qword ptr [rbp + 3120], rax
 mov rax, qword ptr [rbp + 3160]
 mov qword ptr [rbp + 3128], rax
 jmp xchain00112_n12_α
 xchain00112_n8_β:
 jmp xchain00112_n9_α
# IR_LIT_INTEGER
 xchain00112_n9_α:
 mov qword ptr [rbp + 3088], 6
 mov rax, qword ptr [rip + .Lx00114_0]
 mov qword ptr [rbp + 3096], rax
 jmp xchain00112_n13_α
 xchain00112_n9_β:
 jmp xchain00112_n18_α
.Lx00114_0:
 .quad 80
 xchain00112_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2640]
 mov rdx, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 jmp xchain00112_n11_α
 xchain00112_n10_β:
 jmp xchain00112_n11_α
# IR_VAR
 xchain00112_n11_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00112_n14_α
 xchain00112_n11_β:
 jmp xchain00112_n15_α
# IR_MOVE_LABEL
 xchain00112_n12_α:
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3064], rax
 lea rax, [rip + xchain00112_n9_α]
 mov qword ptr [rbp + 3072], rax
 jmp xchain00112_n16_α
 xchain00112_n12_β:
 jmp xchain00112_n18_α
# IR_MOVE_LABEL
 xchain00112_n13_α:
 mov rax, qword ptr [rbp + 3088]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 3096]
 mov qword ptr [rbp + 3064], rax
 lea rax, [rip + xchain00112_n18_α]
 mov qword ptr [rbp + 3072], rax
 jmp xchain00112_n16_α
 xchain00112_n13_β:
 jmp xchain00112_n18_α
# IR_LIST_BANG
 xchain00112_n14_α:
 mov qword ptr [rbp + 320], 0
.Lx00115_0:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 mov rdx, qword ptr [rbp + 320]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp rax, 99
 je xchain00112_n15_α
 jmp xchain00112_n19_α
 xchain00112_n14_β:
 inc qword ptr [rbp + 320]
 jmp .Lx00115_0
# IR_VAR
 xchain00112_n15_α:
 mov rax, qword ptr [rbp + 3312]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 3320]
 mov qword ptr [rbp + 264], rax
 jmp xchain00112_n20_α
 xchain00112_n15_β:
 jmp xchain00112_n21_α
 xchain00112_n16_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3056]
 mov rdx, qword ptr [rbp + 3064]
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain00112_n18_α
 xchain00112_n16_β:
 jmp xchain00112_n18_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00112_n17_α:
 jmp qword ptr [rbp + 3072]
 xchain00112_n17_β:
 jmp xchain00112_n18_α
# IR_VAR
 xchain00112_n18_α:
 mov rax, qword ptr [1879052448]
 mov rdx, qword ptr [1879052456]
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 jmp xchain00112_n22_α
 xchain00112_n18_β:
 jmp xchain00112_n23_α
 xchain00112_n19_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00112_n24_α
 xchain00112_n19_β:
 jmp xchain00112_n15_α
 xchain00112_n20_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn375: .string "sort"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn375]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00112_n21_α
 jmp xchain00112_n25_α
 xchain00112_n20_β:
 jmp xchain00112_n21_α
# IR_VAR
 xchain00112_n21_α:
 mov rax, qword ptr [rbp + 3312]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 3320]
 mov qword ptr [rbp + 136], rax
 jmp xchain00112_n26_α
 xchain00112_n21_β:
 jmp xchain00112_n27_α
# IR_UNOP
 xchain00112_n22_α:
 mov eax, dword ptr [rbp + 3008]
 cmp eax, 99
 je xchain00112_n23_α
 cmp eax, 0
 je xchain00112_n23_α
 mov rax, qword ptr [rbp + 3008]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 3016]
 mov qword ptr [rbp + 2984], rax
 jmp xchain00112_n28_α
 xchain00112_n22_β:
 jmp xchain00112_n23_α
# IR_LIT_INTEGER
 xchain00112_n23_α:
 mov qword ptr [rbp + 2944], 6
 mov rax, qword ptr [rip + .Lx00116_0]
 mov qword ptr [rbp + 2952], rax
 jmp xchain00112_n29_α
 xchain00112_n23_β:
 jmp xchain00112_n35_α
.Lx00116_0:
 .quad 40
# IR_VAR
 xchain00112_n24_α:
 mov rax, qword ptr [rbp + 3328]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 3336]
 mov qword ptr [rbp + 424], rax
 jmp xchain00112_n30_α
 xchain00112_n24_β:
 jmp xchain00112_n14_β
 xchain00112_n25_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00112_n21_α
 xchain00112_n25_β:
 jmp xchain00112_n21_α
# IR_LIT_STRING
 xchain00112_n26_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00117_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00112_n31_α
 xchain00112_n26_β:
 jmp xchain00112_n27_α
.Lx00117_0:
 .quad .Lx00117_0_s
.Lx00117_0_s:
 .string "variable\tprocedure\t\tline numbers\n"
# IR_VAR
 xchain00112_n27_α:
 mov rax, qword ptr [rbp + 3312]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 3320]
 mov qword ptr [rbp + 40], rax
 jmp xchain00112_n32_α
 xchain00112_n27_β:
 jmp proc_format_ω
# IR_MOVE_LABEL
 xchain00112_n28_α:
 mov rax, qword ptr [rbp + 2976]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 2984]
 mov qword ptr [rbp + 2920], rax
 lea rax, [rip + xchain00112_n23_α]
 mov qword ptr [rbp + 2928], rax
 jmp xchain00112_n33_α
 xchain00112_n28_β:
 jmp xchain00112_n35_α
# IR_MOVE_LABEL
 xchain00112_n29_α:
 mov rax, qword ptr [rbp + 2944]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 2952]
 mov qword ptr [rbp + 2920], rax
 lea rax, [rip + xchain00112_n35_α]
 mov qword ptr [rbp + 2928], rax
 jmp xchain00112_n33_α
 xchain00112_n29_β:
 jmp xchain00112_n35_α
# IR_LIST_BANG
 xchain00112_n30_α:
 mov qword ptr [rbp + 400], 0
.Lx00118_0:
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 mov rdx, qword ptr [rbp + 400]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp rax, 99
 je xchain00112_n14_β
 jmp xchain00112_n36_α
 xchain00112_n30_β:
 inc qword ptr [rbp + 400]
 jmp .Lx00118_0
 xchain00112_n31_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+80]
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 88], rax
# marshal arg1 = producer-box slot [zr+160] -> [zr+96]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn393: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn393]
 lea rsi, [rbp + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je xchain00112_n27_α
 jmp xchain00112_n27_α
 xchain00112_n31_β:
 jmp xchain00112_n27_α
# IR_RETURN
 xchain00112_n32_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_format_γ
 xchain00112_n33_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2912]
 mov rdx, qword ptr [rbp + 2920]
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain00112_n35_α
 xchain00112_n33_β:
 jmp xchain00112_n35_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00112_n34_α:
 jmp qword ptr [rbp + 2928]
 xchain00112_n34_β:
 jmp xchain00112_n35_α
# IR_VAR
 xchain00112_n35_α:
 mov rax, qword ptr [1879052464]
 mov rdx, qword ptr [1879052472]
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 jmp xchain00112_n37_α
 xchain00112_n35_β:
 jmp xchain00112_n38_α
 xchain00112_n36_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00112_n39_α
 xchain00112_n36_β:
 jmp xchain00112_n14_β
# IR_UNOP
 xchain00112_n37_α:
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 99
 je xchain00112_n38_α
 cmp eax, 0
 je xchain00112_n38_α
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 2840], rax
 jmp xchain00112_n40_α
 xchain00112_n37_β:
 jmp xchain00112_n38_α
# IR_LIT_INTEGER
 xchain00112_n38_α:
 mov qword ptr [rbp + 2800], 6
 mov rax, qword ptr [rip + .Lx00119_0]
 mov qword ptr [rbp + 2808], rax
 jmp xchain00112_n41_α
 xchain00112_n38_β:
 jmp xchain00112_n3_α
.Lx00119_0:
 .quad 4
# IR_VAR_REF
 xchain00112_n39_α:
 lea rdi, [rbp + 3344]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain00112_n42_α
 xchain00112_n39_β:
 jmp xchain00112_n48_α
# IR_MOVE_LABEL
 xchain00112_n40_α:
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 2768], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 2776], rax
 lea rax, [rip + xchain00112_n38_α]
 mov qword ptr [rbp + 2784], rax
 jmp xchain00112_n43_α
 xchain00112_n40_β:
 jmp xchain00112_n3_α
# IR_MOVE_LABEL
 xchain00112_n41_α:
 mov rax, qword ptr [rbp + 2800]
 mov qword ptr [rbp + 2768], rax
 mov rax, qword ptr [rbp + 2808]
 mov qword ptr [rbp + 2776], rax
 lea rax, [rip + xchain00112_n3_α]
 mov qword ptr [rbp + 2784], rax
 jmp xchain00112_n43_α
 xchain00112_n41_β:
 jmp xchain00112_n3_α
# IR_LIT_INTEGER
 xchain00112_n42_α:
 mov qword ptr [rbp + 2128], 6
 mov rax, qword ptr [rip + .Lx00120_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain00112_n45_α
 xchain00112_n42_β:
 jmp xchain00112_n48_α
.Lx00120_0:
 .quad 1
 xchain00112_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2768]
 mov rdx, qword ptr [rbp + 2776]
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain00112_n46_α
 xchain00112_n43_β:
 jmp xchain00112_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00112_n44_α:
 jmp qword ptr [rbp + 2784]
 xchain00112_n44_β:
 jmp xchain00112_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00112_n45_α:
 mov rdi, qword ptr [rbp + 2096]
 mov rsi, qword ptr [rbp + 2104]
 mov rdx, qword ptr [rbp + 2128]
 mov rcx, qword ptr [rbp + 2136]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00112_n48_α
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain00112_n47_α
 xchain00112_n45_β:
 jmp xchain00112_n48_α
 xchain00112_n46_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2744], rax
 jmp xchain00112_n49_α
xchain00112_n46_β:
 jmp xchain00112_n3_α
# IR_DEREF variable -> value
 xchain00112_n47_α:
 mov rdi, qword ptr [rbp + 2160]
 mov rsi, qword ptr [rbp + 2168]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00112_n48_α
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain00112_n50_α
 xchain00112_n47_β:
 jmp xchain00112_n48_α
# IR_VAR
 xchain00112_n48_α:
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 968], rax
 jmp xchain00112_n51_α
 xchain00112_n48_β:
 jmp xchain00112_n52_α
# IR_MOVE_LABEL
 xchain00112_n49_α:
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2712], rax
 lea rax, [rip + xchain00112_n44_α]
 mov qword ptr [rbp + 2720], rax
 jmp xchain00112_n3_α
 xchain00112_n49_β:
 jmp xchain00112_n3_α
# IR_LIT_INTEGER
 xchain00112_n50_α:
 mov qword ptr [rbp + 2208], 6
 mov rax, qword ptr [rip + .Lx00121_0]
 mov qword ptr [rbp + 2216], rax
 jmp xchain00112_n54_α
 xchain00112_n50_β:
 jmp xchain00112_n48_α
.Lx00121_0:
 .quad 16
# IR_VAR_REF
 xchain00112_n51_α:
 lea rdi, [rbp + 3344]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain00112_n55_α
 xchain00112_n51_β:
 jmp xchain00112_n52_α
# IR_VAR
 xchain00112_n52_α:
 mov rax, qword ptr [rbp + 3360]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 856], rax
 jmp xchain00112_n56_α
 xchain00112_n52_β:
 jmp xchain00112_n57_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00112_n53_α:
 jmp qword ptr [rbp + 2720]
 xchain00112_n53_β:
 jmp xchain00112_n3_α
# IR_LIT_STRING
 xchain00112_n54_α:
 mov qword ptr [rbp + 2240], 1
 mov rax, qword ptr [rip + .Lx00122_0]
 mov qword ptr [rbp + 2248], rax
 jmp xchain00112_n58_α
 xchain00112_n54_β:
 jmp xchain00112_n48_α
.Lx00122_0:
 .quad .Lx00122_0_s
.Lx00122_0_s:
 .string " "
# IR_LIT_INTEGER
 xchain00112_n55_α:
 mov qword ptr [rbp + 1136], 6
 mov rax, qword ptr [rip + .Lx00123_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain00112_n59_α
 xchain00112_n55_β:
 jmp xchain00112_n52_α
.Lx00123_0:
 .quad 3
# IR_VAR
 xchain00112_n56_α:
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 888], rax
 jmp xchain00112_n60_α
 xchain00112_n56_β:
 jmp xchain00112_n57_α
# IR_VAR
 xchain00112_n57_α:
 mov rax, qword ptr [rbp + 3312]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 3320]
 mov qword ptr [rbp + 584], rax
 jmp xchain00112_n61_α
 xchain00112_n57_β:
 jmp xchain00112_n62_α
 xchain00112_n58_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2192] -> [zr+2032]
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2040], rax
# marshal arg1 = producer-box slot [zr+2208] -> [zr+2048]
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2056], rax
# marshal arg2 = producer-box slot [zr+2240] -> [zr+2064]
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2072], rax
  .section .rodata
  .Lrkfn433: .string "left"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn433]
 lea rsi, [rbp + 2032]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain00112_n48_α
 jmp xchain00112_n63_α
 xchain00112_n58_β:
 jmp xchain00112_n48_α
# IR_VAR
 xchain00112_n59_α:
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 1208], rax
 jmp xchain00112_n64_α
 xchain00112_n59_β:
 jmp xchain00112_n52_α
 xchain00112_n60_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 3360]
 cmp eax, 100
 je .Lx00124_0
 mov eax, dword ptr [rbp + 3376]
 cmp eax, 100
 je .Lx00124_0
 mov eax, dword ptr [rbp + 3360]
 cmp eax, 6
 jne .Lx00124_2
 mov eax, dword ptr [rbp + 3376]
 cmp eax, 6
 jne .Lx00124_2
.Lx00124_1:
 mov rax, qword ptr [rbp + 3368]
 mov rcx, qword ptr [rbp + 3384]
 cmp rax, rcx
 jne xchain00112_n57_α
 mov rcx, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 816], rcx
 mov rcx, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 824], rcx
 jmp xchain00112_n65_α
.Lx00124_0:
 mov rdi, qword ptr [rbp + 3360]
 mov rsi, qword ptr [rbp + 3368]
 mov rdx, qword ptr [rbp + 3376]
 mov rcx, qword ptr [rbp + 3384]
 mov r8d, 9
 lea r9, [rbp + 816]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00124_1
 cmp eax, 1
 je xchain00112_n57_α
 jmp xchain00112_n65_α
.Lx00124_2:
 mov rdi, qword ptr [rbp + 3360]
 mov rsi, qword ptr [rbp + 3368]
 mov rdx, qword ptr [rbp + 3376]
 mov rcx, qword ptr [rbp + 3384]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00112_n57_α
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 824], rax
 jmp xchain00112_n65_α
 xchain00112_n60_β:
 jmp xchain00112_n57_α
# IR_VAR
 xchain00112_n61_α:
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 616], rax
 jmp xchain00112_n66_α
 xchain00112_n61_β:
 jmp xchain00112_n62_α
# IR_VAR
 xchain00112_n62_α:
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 488], rax
 jmp xchain00112_n67_α
 xchain00112_n62_β:
 jmp xchain00112_n30_β
# IR_VAR_REF
 xchain00112_n63_α:
 lea rdi, [rbp + 3344]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain00112_n68_α
 xchain00112_n63_β:
 jmp xchain00112_n48_α
# IR_UNOP
 xchain00112_n64_α:
 mov rdi, qword ptr [rbp + 3344]
 mov rsi, qword ptr [rbp + 3352]
 call rt_size_d@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain00112_n69_α
 xchain00112_n64_β:
 jmp xchain00112_n52_α
# IR_VAR
 xchain00112_n65_α:
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 728], rax
 jmp xchain00112_n70_α
 xchain00112_n65_β:
 jmp xchain00112_n57_α
 xchain00112_n66_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+528]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+544]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 552], rax
  .section .rodata
  .Lrkfn447: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn447]
 lea rsi, [rbp + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain00112_n62_α
 jmp xchain00112_n62_α
 xchain00112_n66_β:
 jmp xchain00112_n62_α
 xchain00112_n67_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00112_n71_α
 xchain00112_n67_β:
 jmp xchain00112_n30_β
# IR_LIT_INTEGER
 xchain00112_n68_α:
 mov qword ptr [rbp + 2384], 6
 mov rax, qword ptr [rip + .Lx00125_0]
 mov qword ptr [rbp + 2392], rax
 jmp xchain00112_n72_α
 xchain00112_n68_β:
 jmp xchain00112_n48_α
.Lx00125_0:
 .quad 2
# IR_TO
 xchain00112_n69_α:
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1120], rax
.Lx00126_0:
 mov rax, qword ptr [rbp + 1120]
 mov rcx, qword ptr [rbp + 1176]
 cmp rax, rcx
 jg xchain00112_n52_α
 mov qword ptr [rbp + 1104], 6
 mov qword ptr [rbp + 1112], rax
 jmp xchain00112_n73_α
 xchain00112_n69_β:
 inc qword ptr [rbp + 1120]
 jmp .Lx00126_0
# IR_LIT_INTEGER
 xchain00112_n70_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00127_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00112_n74_α
 xchain00112_n70_β:
 jmp xchain00112_n57_α
.Lx00127_0:
 .quad 1
 xchain00112_n71_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 456], rax
 jmp xchain00112_n30_β
xchain00112_n71_β:
 jmp xchain00112_n30_β
# IR_SUBSCRIPT x[i] variable
 xchain00112_n72_α:
 mov rdi, qword ptr [rbp + 2352]
 mov rsi, qword ptr [rbp + 2360]
 mov rdx, qword ptr [rbp + 2384]
 mov rcx, qword ptr [rbp + 2392]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00112_n48_α
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain00112_n75_α
 xchain00112_n72_β:
 jmp xchain00112_n48_α
# IR_SUBSCRIPT x[i] variable
 xchain00112_n73_α:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, qword ptr [rbp + 1104]
 mov rcx, qword ptr [rbp + 1112]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00112_n69_β
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain00112_n76_α
 xchain00112_n73_β:
 jmp xchain00112_n69_β
# IR_LIT_INTEGER
 xchain00112_n74_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx00128_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain00112_n77_α
 xchain00112_n74_β:
 jmp xchain00112_n57_α
.Lx00128_0:
 .quad 18446744073709551610
# IR_DEREF variable -> value
 xchain00112_n75_α:
 mov rdi, qword ptr [rbp + 2416]
 mov rsi, qword ptr [rbp + 2424]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00112_n48_α
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain00112_n78_α
 xchain00112_n75_β:
 jmp xchain00112_n48_α
# IR_DEREF variable -> value
 xchain00112_n76_α:
 mov rdi, qword ptr [rbp + 1232]
 mov rsi, qword ptr [rbp + 1240]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00112_n69_β
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain00112_n79_α
 xchain00112_n76_β:
 jmp xchain00112_n69_β
# IR_SUBSCRIPT section
 xchain00112_n77_α:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 mov r8, qword ptr [rbp + 784]
 mov r9, qword ptr [rbp + 792]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00112_n57_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00112_n80_α
 xchain00112_n77_β:
 jmp xchain00112_n57_α
# IR_VAR
 xchain00112_n78_α:
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 2536], rax
 jmp xchain00112_n81_α
 xchain00112_n78_β:
 jmp xchain00112_n48_α
# IR_VAR
 xchain00112_n79_α:
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 1288], rax
 jmp xchain00112_n82_α
 xchain00112_n79_β:
 jmp xchain00112_n69_β
 xchain00112_n80_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 688]
 mov rdx, qword ptr [rbp + 696]
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00112_n83_α
 xchain00112_n80_β:
 jmp xchain00112_n57_α
# IR_LIT_INTEGER
 xchain00112_n81_α:
 mov qword ptr [rbp + 2560], 6
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [rbp + 2568], rax
 jmp xchain00112_n84_α
 xchain00112_n81_β:
 jmp xchain00112_n48_α
.Lx00129_0:
 .quad 16
# IR_LIT_STRING
 xchain00112_n82_α:
 mov qword ptr [rbp + 1312], 1
 mov rax, qword ptr [rip + .Lx00130_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain00112_n85_α
 xchain00112_n82_β:
 jmp xchain00112_n69_β
.Lx00130_0:
 .quad .Lx00130_0_s
.Lx00130_0_s:
 .string " "
# IR_MOVE_LABEL
 xchain00112_n83_α:
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 648], rax
 lea rax, [rip + xchain00112_n57_α]
 mov qword ptr [rbp + 656], rax
 jmp xchain00112_n57_α
 xchain00112_n83_β:
 jmp xchain00112_n57_α
# IR_COERCE_NUMERIC
 xchain00112_n84_α:
 mov eax, dword ptr [rbp + 3376]
 cmp eax, 7
 je .Lx00131_1
 cmp eax, 6
 jne .Lx00131_0
 mov eax, dword ptr [rbp + 2560]
 cmp eax, 6
 jne .Lx00131_0
.Lx00131_1:
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 2504], rax
 jmp .Lx00131_2
.Lx00131_0:
 lea rdi, [rbp + 3376]
 lea rsi, [rbp + 2560]
 lea rdx, [rbp + 2496]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00131_2:
 jmp xchain00112_n87_α
 xchain00112_n84_β:
 jmp xchain00112_n48_α
 xchain00112_n85_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1008]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1016], rax
# marshal arg1 = producer-box slot [zr+1280] -> [zr+1024]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1032], rax
# marshal arg2 = producer-box slot [zr+1312] -> [zr+1040]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1048], rax
  .section .rodata
  .Lrkfn472: .string "center"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn472]
 lea rsi, [rbp + 1008]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain00112_n52_α
 jmp xchain00112_n88_α
 xchain00112_n85_β:
 jmp xchain00112_n52_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00112_n86_α:
 jmp qword ptr [rbp + 656]
 xchain00112_n86_β:
 jmp xchain00112_n57_α
 xchain00112_n87_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2496]
 cmp eax, 100
 je .Lx00132_0
 mov eax, dword ptr [rbp + 2496]
 cmp eax, 6
 jne .Lx00132_2
.Lx00132_1:
 mov rax, qword ptr [rbp + 2504]
 mov rcx, 16
 sub rax, rcx
 mov qword ptr [rbp + 2464], 6
 mov qword ptr [rbp + 2472], rax
 jmp xchain00112_n89_α
.Lx00132_0:
 mov rdi, qword ptr [rbp + 2496]
 mov rsi, qword ptr [rbp + 2504]
 mov rdx, qword ptr [rbp + 2560]
 mov rcx, qword ptr [rbp + 2568]
 mov r8d, 1
 lea r9, [rbp + 2464]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00132_3
.Lx00132_2:
 mov rdi, qword ptr [rbp + 2496]
 mov rsi, qword ptr [rbp + 2504]
 mov rdx, qword ptr [rbp + 2560]
 mov rcx, qword ptr [rbp + 2568]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00112_n48_α
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
.Lx00132_3:
 jmp xchain00112_n89_α
 xchain00112_n87_β:
 jmp xchain00112_n48_α
 xchain00112_n88_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 3392]
 mov rsi, qword ptr [rbp + 3400]
 mov rdx, qword ptr [rbp + 992]
 mov rcx, qword ptr [rbp + 1000]
 call str_concat_d@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain00112_n90_α
 xchain00112_n88_β:
 jmp xchain00112_n52_α
# IR_LIT_STRING
 xchain00112_n89_α:
 mov qword ptr [rbp + 2592], 1
 mov rax, qword ptr [rip + .Lx00133_0]
 mov qword ptr [rbp + 2600], rax
 jmp xchain00112_n91_α
 xchain00112_n89_β:
 jmp xchain00112_n48_α
.Lx00133_0:
 .quad .Lx00133_0_s
.Lx00133_0_s:
 .string " "
 xchain00112_n90_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain00112_n92_α
 xchain00112_n90_β:
 jmp xchain00112_n52_α
 xchain00112_n91_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2448] -> [zr+2288]
 mov rax, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2296], rax
# marshal arg1 = producer-box slot [zr+2464] -> [zr+2304]
 mov rax, qword ptr [rbp + 2464]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 2312], rax
# marshal arg2 = producer-box slot [zr+2592] -> [zr+2320]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2328], rax
  .section .rodata
  .Lrkfn480: .string "left"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn480]
 lea rsi, [rbp + 2288]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 cmp eax, 99
 je xchain00112_n48_α
 jmp xchain00112_n93_α
 xchain00112_n91_β:
 jmp xchain00112_n48_α
# IR_VAR
 xchain00112_n92_α:
 mov rax, qword ptr [rbp + 3360]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 1912], rax
 jmp xchain00112_n94_α
 xchain00112_n92_β:
 jmp xchain00112_n95_α
 xchain00112_n93_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 2016]
 mov rsi, qword ptr [rbp + 2024]
 mov rdx, qword ptr [rbp + 2272]
 mov rcx, qword ptr [rbp + 2280]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 jmp xchain00112_n96_α
 xchain00112_n93_β:
 jmp xchain00112_n48_α
# IR_VAR
 xchain00112_n94_α:
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 1944], rax
 jmp xchain00112_n97_α
 xchain00112_n94_β:
 jmp xchain00112_n95_α
# IR_VAR
 xchain00112_n95_α:
 mov rax, qword ptr [rbp + 3360]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 1608], rax
 jmp xchain00112_n98_α
 xchain00112_n95_β:
 jmp xchain00112_n69_β
 xchain00112_n96_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1984]
 mov rdx, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain00112_n48_α
 xchain00112_n96_β:
 jmp xchain00112_n48_α
# IR_COERCE_NUMERIC
 xchain00112_n97_α:
 mov eax, dword ptr [rbp + 3360]
 cmp eax, 7
 je .Lx00134_1
 cmp eax, 6
 jne .Lx00134_0
 mov eax, dword ptr [rbp + 3408]
 cmp eax, 6
 jne .Lx00134_0
.Lx00134_1:
 mov rax, qword ptr [rbp + 3360]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 1880], rax
 jmp .Lx00134_2
.Lx00134_0:
 lea rdi, [rbp + 3360]
 lea rsi, [rbp + 3408]
 lea rdx, [rbp + 1872]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00134_2:
 jmp xchain00112_n99_α
 xchain00112_n97_β:
 jmp xchain00112_n95_α
# IR_VAR
 xchain00112_n98_α:
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 1736], rax
 jmp xchain00112_n00026_α
 xchain00112_n98_β:
 jmp xchain00112_n69_β
# IR_COERCE_NUMERIC
 xchain00112_n99_α:
 mov eax, dword ptr [rbp + 3408]
 cmp eax, 7
 je .Lx00135_1
 cmp eax, 6
 jne .Lx00135_0
 mov eax, dword ptr [rbp + 3360]
 cmp eax, 6
 jne .Lx00135_0
.Lx00135_1:
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 1848], rax
 jmp .Lx00135_2
.Lx00135_0:
 lea rdi, [rbp + 3408]
 lea rsi, [rbp + 3360]
 lea rdx, [rbp + 1840]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00135_2:
 jmp xchain00112_n00027_α
 xchain00112_n99_β:
 jmp xchain00112_n95_α
# IR_VAR
 xchain00112_n00026_α:
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 1768], rax
 jmp xchain00112_n00029_α
 xchain00112_n00026_β:
 jmp xchain00112_n69_β
 xchain00112_n00027_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1872]
 cmp eax, 100
 je .Lx00136_0
 mov eax, dword ptr [rbp + 1840]
 cmp eax, 100
 je .Lx00136_0
 mov eax, dword ptr [rbp + 1872]
 cmp eax, 6
 jne .Lx00136_2
 mov eax, dword ptr [rbp + 1840]
 cmp eax, 6
 jne .Lx00136_2
.Lx00136_1:
 mov rax, qword ptr [rbp + 1880]
 mov rcx, qword ptr [rbp + 1848]
 add rax, rcx
 mov qword ptr [rbp + 1808], 6
 mov qword ptr [rbp + 1816], rax
 jmp xchain00112_n00030_α
.Lx00136_0:
 mov rdi, qword ptr [rbp + 1872]
 mov rsi, qword ptr [rbp + 1880]
 mov rdx, qword ptr [rbp + 1840]
 mov rcx, qword ptr [rbp + 1848]
 mov r8d, 0
 lea r9, [rbp + 1808]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00136_3
.Lx00136_2:
 mov rdi, qword ptr [rbp + 1872]
 mov rsi, qword ptr [rbp + 1880]
 mov rdx, qword ptr [rbp + 1840]
 mov rcx, qword ptr [rbp + 1848]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00112_n95_α
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
.Lx00136_3:
 jmp xchain00112_n00030_α
 xchain00112_n00027_β:
 jmp xchain00112_n95_α
# IR_COERCE_NUMERIC
 xchain00112_n00029_α:
 mov eax, dword ptr [rbp + 3424]
 cmp eax, 7
 je .Lx00137_1
 cmp eax, 6
 jne .Lx00137_0
 mov eax, dword ptr [rbp + 3408]
 cmp eax, 6
 jne .Lx00137_0
.Lx00137_1:
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 1704], rax
 jmp .Lx00137_2
.Lx00137_0:
 lea rdi, [rbp + 3424]
 lea rsi, [rbp + 3408]
 lea rdx, [rbp + 1696]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00137_2:
 jmp xchain00112_n00024_α
 xchain00112_n00029_β:
 jmp xchain00112_n69_β
 xchain00112_n00030_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1808]
 mov rdx, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain00112_n95_α
 xchain00112_n00030_β:
 jmp xchain00112_n95_α
# IR_COERCE_NUMERIC
 xchain00112_n00024_α:
 mov eax, dword ptr [rbp + 3408]
 cmp eax, 7
 je .Lx00138_1
 cmp eax, 6
 jne .Lx00138_0
 mov eax, dword ptr [rbp + 3424]
 cmp eax, 6
 jne .Lx00138_0
.Lx00138_1:
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 1672], rax
 jmp .Lx00138_2
.Lx00138_0:
 lea rdi, [rbp + 3408]
 lea rsi, [rbp + 3424]
 lea rdx, [rbp + 1664]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00138_2:
 jmp xchain00112_n00032_α
 xchain00112_n00024_β:
 jmp xchain00112_n69_β
 xchain00112_n00032_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1696]
 cmp eax, 100
 je .Lx00139_0
 mov eax, dword ptr [rbp + 1664]
 cmp eax, 100
 je .Lx00139_0
 mov eax, dword ptr [rbp + 1696]
 cmp eax, 6
 jne .Lx00139_2
 mov eax, dword ptr [rbp + 1664]
 cmp eax, 6
 jne .Lx00139_2
.Lx00139_1:
 mov rax, qword ptr [rbp + 1704]
 mov rcx, qword ptr [rbp + 1672]
 sub rax, rcx
 mov qword ptr [rbp + 1632], 6
 mov qword ptr [rbp + 1640], rax
 jmp xchain00112_n00034_α
.Lx00139_0:
 mov rdi, qword ptr [rbp + 1696]
 mov rsi, qword ptr [rbp + 1704]
 mov rdx, qword ptr [rbp + 1664]
 mov rcx, qword ptr [rbp + 1672]
 mov r8d, 1
 lea r9, [rbp + 1632]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00139_3
.Lx00139_2:
 mov rdi, qword ptr [rbp + 1696]
 mov rsi, qword ptr [rbp + 1704]
 mov rdx, qword ptr [rbp + 1664]
 mov rcx, qword ptr [rbp + 1672]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00112_n69_β
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
.Lx00139_3:
 jmp xchain00112_n00034_α
 xchain00112_n00032_β:
 jmp xchain00112_n69_β
 xchain00112_n00034_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 3360]
 cmp eax, 100
 je .Lx00140_0
 mov eax, dword ptr [rbp + 1632]
 cmp eax, 100
 je .Lx00140_0
 mov eax, dword ptr [rbp + 3360]
 cmp eax, 6
 jne .Lx00140_2
 mov eax, dword ptr [rbp + 1632]
 cmp eax, 6
 jne .Lx00140_2
.Lx00140_1:
 mov rax, qword ptr [rbp + 3368]
 mov rcx, qword ptr [rbp + 1640]
 cmp rax, rcx
 jl xchain00112_n69_β
 mov rcx, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1568], rcx
 mov rcx, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1576], rcx
 jmp xchain00112_n00035_α
.Lx00140_0:
 mov rdi, qword ptr [rbp + 3360]
 mov rsi, qword ptr [rbp + 3368]
 mov rdx, qword ptr [rbp + 1632]
 mov rcx, qword ptr [rbp + 1640]
 mov r8d, 8
 lea r9, [rbp + 1568]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00140_1
 cmp eax, 1
 je xchain00112_n69_β
 jmp xchain00112_n00035_α
.Lx00140_2:
 mov rdi, qword ptr [rbp + 3360]
 mov rsi, qword ptr [rbp + 3368]
 mov rdx, qword ptr [rbp + 1632]
 mov rcx, qword ptr [rbp + 1640]
 mov r8d, 8
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00112_n69_β
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1576], rax
 jmp xchain00112_n00035_α
 xchain00112_n00034_β:
 jmp xchain00112_n69_β
# IR_VAR
 xchain00112_n00035_α:
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 1512], rax
 jmp xchain00112_n00037_α
 xchain00112_n00035_β:
 jmp xchain00112_n00038_α
# IR_LIT_STRING
 xchain00112_n00037_α:
 mov qword ptr [rbp + 1536], 1
 mov rax, qword ptr [rip + .Lx00141_0]
 mov qword ptr [rbp + 1544], rax
 jmp xchain00112_n00039_α
 xchain00112_n00037_β:
 jmp xchain00112_n00038_α
.Lx00141_0:
 .quad .Lx00141_0_s
.Lx00141_0_s:
 .string "\n\t\t\t\t\t"
# IR_VAR
 xchain00112_n00038_α:
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 1432], rax
 jmp xchain00112_n00048_α
 xchain00112_n00038_β:
 jmp xchain00112_n69_β
 xchain00112_n00039_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 3392]
 mov rsi, qword ptr [rbp + 3400]
 mov rdx, qword ptr [rbp + 1536]
 mov rcx, qword ptr [rbp + 1544]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain00112_n00001_α
 xchain00112_n00039_β:
 jmp xchain00112_n00038_α
 xchain00112_n00048_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1424]
 mov rdx, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain00112_n00043_α
 xchain00112_n00048_β:
 jmp xchain00112_n69_β
 xchain00112_n00001_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1472]
 mov rdx, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain00112_n00038_α
 xchain00112_n00001_β:
 jmp xchain00112_n00038_α
 xchain00112_n00043_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1400], rax
 jmp xchain00112_n00044_α
xchain00112_n00043_β:
 jmp xchain00112_n69_β
# IR_MOVE_LABEL
 xchain00112_n00044_α:
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1368], rax
 lea rax, [rip + xchain00112_n69_β]
 mov qword ptr [rbp + 1376], rax
 jmp xchain00112_n00045_α
 xchain00112_n00044_β:
 jmp xchain00112_n69_β
 xchain00112_n00045_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1352], rax
 jmp xchain00112_n69_β
xchain00112_n00045_β:
 jmp xchain00112_n69_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00112_n00002_α:
 jmp qword ptr [rbp + 1376]
 xchain00112_n00002_β:
 jmp xchain00112_n69_β
proc_format_res:
add rsp, 8
pop rbp
proc_format_β:
jmp proc_format_ω
proc_format_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 3448]
lea rsp, [rbp + 3472]
mov rbp, [rbp + 3464]
jmp rax
proc_format_ω:
mov rax, [rbp + 3456]
lea rsp, [rbp + 3472]
mov rbp, [rbp + 3464]
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
 xchain00142_n0_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain00142_n1_α
 xchain00142_n0_β:
 jmp xchain00142_n3_α
# IR_NULLTEST_VAR
 xchain00142_n1_α:
 mov eax, dword ptr [rbp + 3424]
 cmp eax, 99
 je xchain00142_n3_α
 mov rdi, qword ptr [rbp + 3424]
 mov rsi, qword ptr [rbp + 3432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00142_n3_α
 cmp eax, 0
 jne xchain00142_n3_α
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3464], rax
 jmp xchain00142_n2_α
 xchain00142_n1_β:
 jmp xchain00142_n3_α
# IR_LIT_CHARSET
 xchain00142_n2_α:
 mov qword ptr [rbp + 3552], 1
 mov dword ptr [rbp + 3556], -1
 mov rax, qword ptr [rip + .Lx00143_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain00142_n4_α
 xchain00142_n2_β:
 jmp xchain00142_n3_α
.Lx00143_0:
 .quad .Lx00143_0_s
.Lx00143_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00142_n3_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn525: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn525]
 lea rsi, [rbp + 3408]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 cmp eax, 99
 je xchain00142_n6_α
 jmp xchain00142_n5_α
 xchain00142_n3_β:
 jmp xchain00142_n6_α
 xchain00142_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3552] -> [zr+3520]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3520], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3528], rax
  .section .rodata
  .Lrkfn527: .string "string"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn527]
 lea rsi, [rbp + 3520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 cmp eax, 99
 je xchain00142_n3_α
 jmp xchain00142_n7_α
 xchain00142_n4_β:
 jmp xchain00142_n3_α
 xchain00142_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3392]
 mov rdx, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain00142_n6_α
 xchain00142_n5_β:
 jmp xchain00142_n6_α
# IR_MAKE_LIST
 xchain00142_n6_α:
 lea rdi, [rbp + 3376]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain00142_n8_α
 xchain00142_n6_β:
 jmp xchain00142_n9_α
# IR_ASSIGN_VAR
 xchain00142_n7_α:
 mov rdi, qword ptr [rbp + 3456]
 mov rsi, qword ptr [rbp + 3464]
 mov rdx, qword ptr [rbp + 3504]
 mov rcx, qword ptr [rbp + 3512]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00142_n3_α
 mov qword ptr [rbp + 3488], rax
 mov qword ptr [rbp + 3496], rdx
 jmp xchain00142_n3_α
 xchain00142_n7_β:
 jmp xchain00142_n3_α
 xchain00142_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3360]
 mov rdx, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain00142_n9_α
 xchain00142_n8_β:
 jmp xchain00142_n9_α
# IR_VAR
 xchain00142_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00142_n10_α
 xchain00142_n9_β:
 jmp xchain00142_n11_α
 xchain00142_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn536: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn536]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00142_n11_α
 jmp xchain00142_n12_α
 xchain00142_n10_β:
 jmp xchain00142_n11_α
# IR_VAR
 xchain00142_n11_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 152], rax
 jmp xchain00142_n13_α
 xchain00142_n11_β:
 jmp xchain00142_n14_α
 xchain00142_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00142_n15_α
 xchain00142_n12_β:
 jmp xchain00142_n11_α
# IR_VAR
 xchain00142_n13_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 232], rax
 jmp xchain00142_n16_α
 xchain00142_n13_β:
 jmp xchain00142_n14_α
# IR_VAR
 xchain00142_n14_α:
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 56], rax
 jmp xchain00142_n17_α
 xchain00142_n14_β:
 jmp proc_options_ω
# IR_VAR
 xchain00142_n15_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3320], rax
 jmp xchain00142_n18_α
 xchain00142_n15_β:
 jmp xchain00142_n9_α
 xchain00142_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn547: .string "pull"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn547]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00142_n14_α
 jmp xchain00142_n19_α
 xchain00142_n16_β:
 jmp xchain00142_n14_α
# IR_RETURN
 xchain00142_n17_α:
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_options_γ
# IR_GEN_SCAN
 xchain00142_n18_α:
 mov rdi, qword ptr [rbp + 3312]
 mov rsi, qword ptr [rbp + 3320]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00142_n20_α
 xchain00142_n18_β:
 jmp xchain00142_n9_α
 xchain00142_n19_α:
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
  .Lrkfn552: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn552]
 lea rsi, [rbp + 96]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00142_n14_α
 jmp xchain00142_n11_α
 xchain00142_n19_β:
 jmp xchain00142_n14_α
# IR_LIT_STRING
 xchain00142_n20_α:
 mov qword ptr [rbp + 3280], 1
 mov rax, qword ptr [rip + .Lx00144_0]
 mov qword ptr [rbp + 3288], rax
 jmp xchain00142_n21_α
 xchain00142_n20_β:
 jmp xchain00142_n23_α
.Lx00144_0:
 .quad .Lx00144_0_s
.Lx00144_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00142_n21_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00145_239
 add rsp, 16
 jmp xchain00142_n23_α
.Lx00145_239:
 mov rdi, qword ptr [rip + .Lx00145_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00145_240
 add rsp, 16
 jmp xchain00142_n23_α
.Lx00145_240:
 mov qword ptr [rbp + 3248], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 3256], rax
 jmp xchain00142_n22_α
 xchain00142_n21_β:
 add rsp, 16
 jmp xchain00142_n23_α
.Lx00145_0:
 .quad .Lx00145_0_s
.Lx00145_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00142_n22_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 3256]
 cmp rax, 1
 jge .Lx00146_0
 add rax, r15
 add rax, 1
.Lx00146_0:
 cmp rax, 1
 jge .Lx00146_239
 add rsp, 16
 jmp xchain00142_n23_α
.Lx00146_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00146_240
 add rsp, 16
 jmp xchain00142_n23_α
.Lx00146_240:
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
 jmp xchain00142_n24_α
 xchain00142_n22_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00142_n23_α
# IR_VAR
 xchain00142_n23_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 3048], rax
 jmp xchain00142_n25_α
 xchain00142_n23_β:
 jmp xchain00142_n29_α
# IR_LIT_INTEGER
 xchain00142_n24_α:
 mov qword ptr [rbp + 3184], 6
 mov rax, qword ptr [rip + .Lx00147_0]
 mov qword ptr [rbp + 3192], rax
 jmp xchain00142_n27_α
 xchain00142_n24_β:
 jmp xchain00142_n30_α
.Lx00147_0:
 .quad 0
# IR_VAR
 xchain00142_n25_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3072], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3080], rax
 jmp xchain00142_n28_α
 xchain00142_n25_β:
 jmp xchain00142_n29_α
 xchain00142_n26_α:
 jmp xchain00142_n29_α
xchain00142_n26_β:
 jmp xchain00142_n29_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00142_n27_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00148_0
 add rax, r15
 add rax, 1
.Lx00148_0:
 cmp rax, 1
 jl xchain00142_n30_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00142_n30_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00142_n30_α
 mov qword ptr [rbp + 3152], 6
 mov qword ptr [rbp + 3160], rax
 jmp xchain00142_n23_α
 xchain00142_n27_β:
 jmp xchain00142_n30_α
 xchain00142_n28_α:
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
  .Lrkfn567: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn567]
 lea rsi, [rbp + 2992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 cmp eax, 99
 je xchain00142_n29_α
 jmp xchain00142_n31_α
 xchain00142_n28_β:
 jmp xchain00142_n29_α
# IR_GEN_SCAN
 xchain00142_n29_α:
 lea rdi, [rbp + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 368]
 mov r14, qword ptr [rbp + 376]
 mov r15, qword ptr [rbp + 384]
 jmp xchain00142_n9_α
 xchain00142_n29_β:
 jmp xchain00142_n9_α
# KEYWORD_null
 xchain00142_n30_α:
 mov qword ptr [rbp + 3120], 0
 mov qword ptr [rbp + 3128], 0
 jmp xchain00142_n32_α
 xchain00142_n30_β:
 jmp xchain00142_n23_α
# IR_MOVE_LABEL
 xchain00142_n31_α:
 mov rax, qword ptr [rbp + 2976]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 2984]
 mov qword ptr [rbp + 440], rax
 lea rax, [rip + xchain00142_n26_α]
 mov qword ptr [rbp + 448], rax
 jmp xchain00142_n33_α
 xchain00142_n31_β:
 jmp xchain00142_n29_α
 xchain00142_n32_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 3104], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3112], rax
 jmp xchain00142_n35_α
xchain00142_n32_β:
 jmp xchain00142_n23_α
 xchain00142_n33_α:
 jmp xchain00142_n36_α
xchain00142_n33_β:
 jmp xchain00142_n36_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00142_n34_α:
 jmp qword ptr [rbp + 448]
 xchain00142_n34_β:
 jmp xchain00142_n29_α
# IR_LIT_STRING
 xchain00142_n35_α:
 mov qword ptr [rbp + 2944], 1
 mov rax, qword ptr [rip + .Lx00149_0]
 mov qword ptr [rbp + 2952], rax
 jmp xchain00142_n37_α
 xchain00142_n35_β:
 jmp xchain00142_n39_α
.Lx00149_0:
 .quad .Lx00149_0_s
.Lx00149_0_s:
 .string "-"
# IR_GEN_SCAN
 xchain00142_n36_α:
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 408], rax
 lea rdi, [rbp + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 368]
 mov r14, qword ptr [rbp + 376]
 mov r15, qword ptr [rbp + 384]
 jmp xchain00142_n9_α
 xchain00142_n36_β:
 jmp xchain00142_n9_α
# IR_SCAN_MATCH
 xchain00142_n37_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00150_239
 add rsp, 16
 jmp xchain00142_n39_α
.Lx00150_239:
 mov rdi, qword ptr [rip + .Lx00150_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00150_240
 add rsp, 16
 jmp xchain00142_n39_α
.Lx00150_240:
 mov qword ptr [rbp + 2912], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 2920], rax
 jmp xchain00142_n38_α
 xchain00142_n37_β:
 add rsp, 16
 jmp xchain00142_n39_α
.Lx00150_0:
 .quad .Lx00150_0_s
.Lx00150_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00142_n38_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 2920]
 cmp rax, 1
 jge .Lx00151_0
 add rax, r15
 add rax, 1
.Lx00151_0:
 cmp rax, 1
 jge .Lx00151_239
 add rsp, 16
 jmp xchain00142_n39_α
.Lx00151_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00151_240
 add rsp, 16
 jmp xchain00142_n39_α
.Lx00151_240:
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
 jmp xchain00142_n40_α
 xchain00142_n38_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00142_n39_α
# IR_LIT_INTEGER
 xchain00142_n39_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00142_n41_α
 xchain00142_n39_β:
 jmp xchain00142_n29_α
.Lx00152_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00142_n40_α:
 mov qword ptr [rbp + 2848], 6
 mov rax, qword ptr [rip + .Lx00153_0]
 mov qword ptr [rbp + 2856], rax
 jmp xchain00142_n42_α
 xchain00142_n40_β:
 jmp xchain00142_n39_α
.Lx00153_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00142_n41_α:
 sub rsp, 16
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00154_239
 add rsp, 16
 jmp xchain00142_n29_α
.Lx00154_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00154_240
 add rsp, 16
 jmp xchain00142_n29_α
.Lx00154_240:
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
 jmp xchain00142_n43_α
 xchain00142_n41_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00142_n29_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00142_n42_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00155_0
 add rax, r15
 add rax, 1
.Lx00155_0:
 cmp rax, 1
 jl xchain00142_n39_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00142_n39_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00142_n39_α
 mov qword ptr [rbp + 2816], 6
 mov qword ptr [rbp + 2824], rax
 jmp xchain00142_n44_α
 xchain00142_n42_β:
 jmp xchain00142_n39_α
 xchain00142_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00142_n45_α
 xchain00142_n43_β:
 jmp xchain00142_n29_α
 xchain00142_n44_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2808], rax
 jmp xchain00142_n11_α
xchain00142_n44_β:
 jmp xchain00142_n39_α
# IR_VAR
 xchain00142_n45_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2680], rax
 jmp xchain00142_n47_α
 xchain00142_n45_β:
 jmp xchain00142_n48_α
 xchain00142_n46_α:
 jmp xchain00142_n11_α
xchain00142_n46_β:
 jmp xchain00142_n11_α
# IR_VAR
 xchain00142_n47_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 2712], rax
 jmp xchain00142_n49_α
 xchain00142_n47_β:
 jmp xchain00142_n48_α
# IR_LIT_STRING
 xchain00142_n48_α:
 mov qword ptr [rbp + 2464], 1
 mov rax, qword ptr [rip + .Lx00156_0]
 mov qword ptr [rbp + 2472], rax
 jmp xchain00142_n50_α
 xchain00142_n48_β:
 jmp xchain00142_n39_α
.Lx00156_0:
 .quad .Lx00156_0_s
.Lx00156_0_s:
 .string "Unrecognized option: -"
 xchain00142_n49_α:
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
.Lx00157_60:
  .section .rodata
  .Lbynamegenfn417: .string "find"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn417]
 lea rsi, [rbp + 2624]
 mov edx, 2
 lea rcx, [rbp + 2656]
 call rt_call_arr_gen@PLT
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 cmp eax, 99
 je xchain00142_n48_α
 jmp xchain00142_n51_α
 xchain00142_n49_β:
 jmp .Lx00157_60
# IR_VAR
 xchain00142_n50_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2504], rax
 jmp xchain00142_n52_α
 xchain00142_n50_β:
 jmp xchain00142_n39_α
# IR_LIT_INTEGER
 xchain00142_n51_α:
 mov qword ptr [rbp + 2736], 6
 mov rax, qword ptr [rip + .Lx00158_0]
 mov qword ptr [rbp + 2744], rax
 jmp xchain00142_n53_α
 xchain00142_n51_β:
 jmp xchain00142_n49_β
.Lx00158_0:
 .quad 1
 xchain00142_n52_α:
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
  .Lrkfn603: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn603]
 lea rsi, [rbp + 2416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 cmp eax, 99
 je xchain00142_n39_α
 jmp xchain00142_n54_α
 xchain00142_n52_β:
 jmp xchain00142_n39_α
# IR_COERCE_NUMERIC
 xchain00142_n53_α:
 mov eax, dword ptr [rbp + 2608]
 cmp eax, 7
 je .Lx00159_1
 cmp eax, 6
 jne .Lx00159_0
 mov eax, dword ptr [rbp + 2736]
 cmp eax, 6
 jne .Lx00159_0
.Lx00159_1:
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2584], rax
 jmp .Lx00159_2
.Lx00159_0:
 lea rdi, [rbp + 2608]
 lea rsi, [rbp + 2736]
 lea rdx, [rbp + 2576]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00159_2:
 jmp xchain00142_n55_α
 xchain00142_n53_β:
 jmp xchain00142_n48_α
# IR_MOVE_LABEL
 xchain00142_n54_α:
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 568], rax
 lea rax, [rip + xchain00142_n39_α]
 mov qword ptr [rbp + 576], rax
 jmp xchain00142_n39_α
 xchain00142_n54_β:
 jmp xchain00142_n39_α
 xchain00142_n55_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2576]
 cmp eax, 100
 je .Lx00160_0
 mov eax, dword ptr [rbp + 2576]
 cmp eax, 6
 jne .Lx00160_2
.Lx00160_1:
 mov rax, qword ptr [rbp + 2584]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 2544], 6
 mov qword ptr [rbp + 2552], rax
 jmp xchain00142_n57_α
.Lx00160_0:
 mov rdi, qword ptr [rbp + 2576]
 mov rsi, qword ptr [rbp + 2584]
 mov rdx, qword ptr [rbp + 2736]
 mov rcx, qword ptr [rbp + 2744]
 mov r8d, 0
 lea r9, [rbp + 2544]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00160_3
.Lx00160_2:
 mov rdi, qword ptr [rbp + 2576]
 mov rsi, qword ptr [rbp + 2584]
 mov rdx, qword ptr [rbp + 2736]
 mov rcx, qword ptr [rbp + 2744]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00142_n48_α
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
.Lx00160_3:
 jmp xchain00142_n57_α
 xchain00142_n55_β:
 jmp xchain00142_n48_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00142_n56_α:
 jmp qword ptr [rbp + 576]
 xchain00142_n56_β:
 jmp xchain00142_n39_α
 xchain00142_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2544]
 mov rdx, qword ptr [rbp + 2552]
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain00142_n58_α
 xchain00142_n57_β:
 jmp xchain00142_n48_α
# IR_VAR_REF
 xchain00142_n58_α:
 lea rdi, [rbp + 3600]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00142_n59_α
 xchain00142_n58_β:
 jmp xchain00142_n39_α
# IR_VAR
 xchain00142_n59_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 632], rax
 jmp xchain00142_n60_α
 xchain00142_n59_β:
 jmp xchain00142_n39_α
# IR_SUBSCRIPT x[i] variable
 xchain00142_n60_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00142_n39_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00142_n61_α
 xchain00142_n60_β:
 jmp xchain00142_n39_α
# IR_LIT_CHARSET
 xchain00142_n61_α:
 mov qword ptr [rbp + 2240], 1
 mov dword ptr [rbp + 2244], -1
 mov rax, qword ptr [rip + .Lx00161_0]
 mov qword ptr [rbp + 2248], rax
 jmp xchain00142_n62_α
 xchain00142_n61_β:
 jmp xchain00142_n65_α
.Lx00161_0:
 .quad .Lx00161_0_s
.Lx00161_0_s:
 .string "+.:"
# IR_VAR_REF
 xchain00142_n62_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain00142_n63_α
 xchain00142_n62_β:
 jmp xchain00142_n65_α
# IR_VAR
 xchain00142_n63_α:
 mov rax, qword ptr [rbp + 3712]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 2328], rax
 jmp xchain00142_n64_α
 xchain00142_n63_β:
 jmp xchain00142_n65_α
# IR_SUBSCRIPT x[i] variable
 xchain00142_n64_α:
 mov rdi, qword ptr [rbp + 2288]
 mov rsi, qword ptr [rbp + 2296]
 mov rdx, qword ptr [rbp + 2320]
 mov rcx, qword ptr [rbp + 2328]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00142_n65_α
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain00142_n66_α
 xchain00142_n64_β:
 jmp xchain00142_n65_α
# IR_LIT_INTEGER
 xchain00142_n65_α:
 mov qword ptr [rbp + 2144], 6
 mov rax, qword ptr [rip + .Lx00162_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain00142_n67_α
 xchain00142_n65_β:
 jmp xchain00142_n39_α
.Lx00162_0:
 .quad 1
# IR_DEREF variable -> value
 xchain00142_n66_α:
 mov rdi, qword ptr [rbp + 2352]
 mov rsi, qword ptr [rbp + 2360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00142_n65_α
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 jmp xchain00142_n68_α
 xchain00142_n66_β:
 jmp xchain00142_n65_α
# IR_MOVE_LABEL
 xchain00142_n67_α:
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 712], rax
 lea rax, [rip + xchain00142_n39_α]
 mov qword ptr [rbp + 720], rax
 jmp xchain00142_n69_α
 xchain00142_n67_β:
 jmp xchain00142_n39_α
 xchain00142_n68_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2384]
 mov rdx, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 jmp xchain00142_n71_α
 xchain00142_n68_β:
 jmp xchain00142_n65_α
# IR_ASSIGN_VAR
 xchain00142_n69_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00142_n39_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00142_n72_α
 xchain00142_n69_β:
 jmp xchain00142_n39_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00142_n70_α:
 jmp qword ptr [rbp + 720]
 xchain00142_n70_β:
 jmp xchain00142_n39_α
 xchain00142_n71_α:
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
  .Lbynamefn439: .string "any"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn439]
 lea rsi, [rbp + 2192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je xchain00142_n65_α
 jmp xchain00142_n73_α
 xchain00142_n71_β:
 jmp xchain00142_n65_α
# IR_MOVE_LABEL
 xchain00142_n72_α:
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 568], rax
 lea rax, [rip + xchain00142_n70_α]
 mov qword ptr [rbp + 576], rax
 jmp xchain00142_n39_α
 xchain00142_n72_β:
 jmp xchain00142_n39_α
# IR_LIT_STRING
 xchain00142_n73_α:
 mov qword ptr [rbp + 2048], 1
 mov rax, qword ptr [rip + .Lx00163_0]
 mov qword ptr [rbp + 2056], rax
 jmp xchain00142_n74_α
 xchain00142_n73_β:
 jmp xchain00142_n77_α
.Lx00163_0:
 .quad .Lx00163_0_s
.Lx00163_0_s:
 .string ""
# IR_LIT_INTEGER
 xchain00142_n74_α:
 mov qword ptr [rbp + 2112], 6
 mov rax, qword ptr [rip + .Lx00164_0]
 mov qword ptr [rbp + 2120], rax
 jmp xchain00142_n75_α
 xchain00142_n74_β:
 jmp xchain00142_n77_α
.Lx00164_0:
 .quad 0
# IR_SCAN_TAB
 xchain00142_n75_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00165_0
 add rax, r15
 add rax, 1
.Lx00165_0:
 cmp rax, 1
 jge .Lx00165_239
 add rsp, 16
 jmp xchain00142_n77_α
.Lx00165_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00165_240
 add rsp, 16
 jmp xchain00142_n77_α
.Lx00165_240:
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
 jmp xchain00142_n76_α
 xchain00142_n75_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00142_n77_α
 xchain00142_n76_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 2048]
 mov rsi, qword ptr [rbp + 2056]
 mov rdx, qword ptr [rbp + 2080]
 mov rcx, qword ptr [rbp + 2088]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00142_n77_α
 mov rdi, qword ptr [rbp + 2080]
 mov rsi, qword ptr [rbp + 2088]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain00142_n78_α
 xchain00142_n76_β:
 jmp xchain00142_n77_α
# IR_VAR
 xchain00142_n77_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1992], rax
 jmp xchain00142_n79_α
 xchain00142_n77_β:
 jmp xchain00142_n80_α
# IR_MOVE_LABEL
 xchain00142_n78_α:
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1784], rax
 lea rax, [rip + xchain00142_n77_α]
 mov qword ptr [rbp + 1792], rax
 jmp xchain00142_n81_α
 xchain00142_n78_β:
 jmp xchain00142_n85_α
 xchain00142_n79_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1960], rax
  .section .rodata
  .Lrkfn644: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn644]
 lea rsi, [rbp + 1952]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je xchain00142_n80_α
 jmp xchain00142_n83_α
 xchain00142_n79_β:
 jmp xchain00142_n80_α
# IR_LIT_STRING
 xchain00142_n80_α:
 mov qword ptr [rbp + 1872], 1
 mov rax, qword ptr [rip + .Lx00166_0]
 mov qword ptr [rbp + 1880], rax
 jmp xchain00142_n84_α
 xchain00142_n80_β:
 jmp xchain00142_n85_α
.Lx00166_0:
 .quad .Lx00166_0_s
.Lx00166_0_s:
 .string "No parameter following -"
 xchain00142_n81_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1776]
 mov rdx, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain00142_n85_α
 xchain00142_n81_β:
 jmp xchain00142_n85_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00142_n82_α:
 jmp qword ptr [rbp + 1792]
 xchain00142_n82_β:
 jmp xchain00142_n85_α
# IR_MOVE_LABEL
 xchain00142_n83_α:
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1784], rax
 lea rax, [rip + xchain00142_n80_α]
 mov qword ptr [rbp + 1792], rax
 jmp xchain00142_n81_α
 xchain00142_n83_β:
 jmp xchain00142_n85_α
# IR_VAR
 xchain00142_n84_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1912], rax
 jmp xchain00142_n86_α
 xchain00142_n84_β:
 jmp xchain00142_n85_α
# IR_VAR
 xchain00142_n85_α:
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 792], rax
 jmp xchain00142_n87_α
 xchain00142_n85_β:
 jmp xchain00142_n39_α
 xchain00142_n86_α:
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
  .Lrkfn656: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn656]
 lea rsi, [rbp + 1824]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 cmp eax, 99
 je xchain00142_n85_α
 jmp xchain00142_n88_α
 xchain00142_n86_β:
 jmp xchain00142_n85_α
# IR_LIT_STRING
 xchain00142_n87_α:
 mov qword ptr [rbp + 1616], 1
 mov rax, qword ptr [rip + .Lx00167_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00142_n89_α
 xchain00142_n87_β:
 jmp xchain00142_n39_α
.Lx00167_0:
 .quad .Lx00167_0_s
.Lx00167_0_s:
 .string ":"
# IR_MOVE_LABEL
 xchain00142_n88_α:
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1784], rax
 lea rax, [rip + xchain00142_n85_α]
 mov qword ptr [rbp + 1792], rax
 jmp xchain00142_n81_α
 xchain00142_n88_β:
 jmp xchain00142_n85_α
 xchain00142_n89_α:
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
  .Lrkfn661: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn661]
 lea rsi, [rbp + 1712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je xchain00142_n91_α
 jmp xchain00142_n90_α
 xchain00142_n89_β:
 jmp xchain00142_n91_α
# IR_VAR
 xchain00142_n90_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1656], rax
 jmp xchain00142_n92_α
 xchain00142_n90_β:
 jmp xchain00142_n39_α
# IR_LIT_STRING
 xchain00142_n91_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx00168_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain00142_n93_α
 xchain00142_n91_β:
 jmp xchain00142_n39_α
.Lx00168_0:
 .quad .Lx00168_0_s
.Lx00168_0_s:
 .string "+"
 xchain00142_n92_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1648]
 mov rdx, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00142_n94_α
 xchain00142_n92_β:
 jmp xchain00142_n39_α
 xchain00142_n93_α:
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
  .Lrkfn667: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn667]
 lea rsi, [rbp + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain00142_n96_α
 jmp xchain00142_n95_α
 xchain00142_n93_β:
 jmp xchain00142_n96_α
# IR_VAR
 xchain00142_n94_α:
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 760], rax
 jmp xchain00142_n97_α
 xchain00142_n94_β:
 jmp xchain00142_n39_α
# IR_VAR
 xchain00142_n95_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1512], rax
 jmp xchain00142_n98_α
 xchain00142_n95_β:
 jmp xchain00142_n99_α
# IR_LIT_STRING
 xchain00142_n96_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx00169_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00142_n00026_α
 xchain00142_n96_β:
 jmp xchain00142_n39_α
.Lx00169_0:
 .quad .Lx00169_0_s
.Lx00169_0_s:
 .string "."
 xchain00142_n97_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 744], rax
 jmp xchain00142_n00027_α
xchain00142_n97_β:
 jmp xchain00142_n39_α
 xchain00142_n98_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1472]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1480], rax
  .section .rodata
  .Lrkfn675: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn675]
 lea rsi, [rbp + 1472]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain00142_n99_α
 jmp xchain00142_n00029_α
 xchain00142_n98_β:
 jmp xchain00142_n99_α
# IR_LIT_STRING
 xchain00142_n99_α:
 mov qword ptr [rbp + 1360], 1
 mov rax, qword ptr [rip + .Lx00170_0]
 mov qword ptr [rbp + 1368], rax
 jmp xchain00142_n00030_α
 xchain00142_n99_β:
 jmp xchain00142_n39_α
.Lx00170_0:
 .quad .Lx00170_0_s
.Lx00170_0_s:
 .string "-"
 xchain00142_n00026_α:
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
  .Lrkfn678: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn678]
 lea rsi, [rbp + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain00142_n39_α
 jmp xchain00142_n00024_α
 xchain00142_n00026_β:
 jmp xchain00142_n39_α
# IR_MOVE_LABEL
 xchain00142_n00027_α:
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 712], rax
 lea rax, [rip + xchain00142_n39_α]
 mov qword ptr [rbp + 720], rax
 jmp xchain00142_n69_α
 xchain00142_n00027_β:
 jmp xchain00142_n39_α
# IR_MOVE_LABEL
 xchain00142_n00029_α:
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1256], rax
 lea rax, [rip + xchain00142_n99_α]
 mov qword ptr [rbp + 1264], rax
 jmp xchain00142_n00038_α
 xchain00142_n00029_β:
 jmp xchain00142_n39_α
# IR_VAR
 xchain00142_n00030_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1400], rax
 jmp xchain00142_n00034_α
 xchain00142_n00030_β:
 jmp xchain00142_n39_α
# IR_VAR
 xchain00142_n00024_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00142_n00035_α
 xchain00142_n00024_β:
 jmp xchain00142_n00037_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00142_n00032_α:
 jmp qword ptr [rbp + 1264]
 xchain00142_n00032_β:
 jmp xchain00142_n39_α
# IR_LIT_STRING
 xchain00142_n00034_α:
 mov qword ptr [rbp + 1424], 1
 mov rax, qword ptr [rip + .Lx00171_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain00142_n00039_α
 xchain00142_n00034_β:
 jmp xchain00142_n39_α
.Lx00171_0:
 .quad .Lx00171_0_s
.Lx00171_0_s:
 .string " needs numeric parameter"
 xchain00142_n00035_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1072]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1080], rax
  .section .rodata
  .Lrkfn691: .string "real"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn691]
 lea rsi, [rbp + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain00142_n00037_α
 jmp xchain00142_n00048_α
 xchain00142_n00035_β:
 jmp xchain00142_n00037_α
# IR_LIT_STRING
 xchain00142_n00037_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx00172_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00142_n00001_α
 xchain00142_n00037_β:
 jmp xchain00142_n39_α
.Lx00172_0:
 .quad .Lx00172_0_s
.Lx00172_0_s:
 .string "-"
 xchain00142_n00038_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain00142_n94_α
 xchain00142_n00038_β:
 jmp xchain00142_n39_α
 xchain00142_n00039_α:
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
  .Lrkfn695: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn695]
 lea rsi, [rbp + 1296]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain00142_n39_α
 jmp xchain00142_n00043_α
 xchain00142_n00039_β:
 jmp xchain00142_n39_α
# IR_MOVE_LABEL
 xchain00142_n00048_α:
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 856], rax
 lea rax, [rip + xchain00142_n00037_α]
 mov qword ptr [rbp + 864], rax
 jmp xchain00142_n00002_α
 xchain00142_n00048_β:
 jmp xchain00142_n39_α
# IR_VAR
 xchain00142_n00001_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00142_n00045_α
 xchain00142_n00001_β:
 jmp xchain00142_n39_α
# IR_MOVE_LABEL
 xchain00142_n00043_α:
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1256], rax
 lea rax, [rip + xchain00142_n39_α]
 mov qword ptr [rbp + 1264], rax
 jmp xchain00142_n00038_α
 xchain00142_n00043_β:
 jmp xchain00142_n39_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00142_n00044_α:
 jmp qword ptr [rbp + 864]
 xchain00142_n00044_β:
 jmp xchain00142_n39_α
# IR_LIT_STRING
 xchain00142_n00045_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx00173_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00142_n00047_α
 xchain00142_n00045_β:
 jmp xchain00142_n39_α
.Lx00173_0:
 .quad .Lx00173_0_s
.Lx00173_0_s:
 .string " needs numeric parameter"
 xchain00142_n00002_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00142_n94_α
 xchain00142_n00002_β:
 jmp xchain00142_n39_α
 xchain00142_n00047_α:
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
  .Lrkfn707: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn707]
 lea rsi, [rbp + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 cmp eax, 99
 je xchain00142_n39_α
 jmp xchain00142_n00040_α
 xchain00142_n00047_β:
 jmp xchain00142_n39_α
# IR_MOVE_LABEL
 xchain00142_n00040_α:
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 856], rax
 lea rax, [rip + xchain00142_n39_α]
 mov qword ptr [rbp + 864], rax
 jmp xchain00142_n00002_α
 xchain00142_n00040_β:
 jmp xchain00142_n39_α
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
 xchain00174_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 520], rax
 jmp xchain00174_n1_α
 xchain00174_n0_β:
 jmp xchain00174_n2_α
# IR_ASSIGN gva
 xchain00174_n1_α:
 mov rax, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 mov qword ptr [1879052544], rax
 mov qword ptr [1879052552], rdx
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00174_n2_α
 xchain00174_n1_β:
 jmp xchain00174_n2_α
 xchain00174_n2_α:
 mov rdi, qword ptr [rip + .Lx00175_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00175_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00175_3]
 lea rdx, [rip + .Lx00175_4]
 jmp rax
.Lx00175_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00175_2
.Lx00175_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00175_2
.Lx00175_1:
 call rt_faildescr@PLT
.Lx00175_2:
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00174_n3_α
 jmp xchain00174_n3_α
 xchain00174_n2_β:
 jmp xchain00174_n3_α
.Lx00175_0:
 .quad .Lx00175_0_s
.Lx00175_0_s:
 .string "Signature__"
 xchain00174_n3_α:
 mov rdi, qword ptr [rip + .Lx00176_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00176_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00176_3]
 lea rdx, [rip + .Lx00176_4]
 jmp rax
.Lx00176_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00176_2
.Lx00176_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00176_2
.Lx00176_1:
 call rt_faildescr@PLT
.Lx00176_2:
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00174_n4_α
 jmp xchain00174_n4_α
 xchain00174_n3_β:
 jmp xchain00174_n4_α
.Lx00176_0:
 .quad .Lx00176_0_s
.Lx00176_0_s:
 .string "Regions__"
 xchain00174_n4_α:
 mov rdi, qword ptr [rip + .Lx00177_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00177_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00177_3]
 lea rdx, [rip + .Lx00177_4]
 jmp rax
.Lx00177_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00177_2
.Lx00177_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00177_2
.Lx00177_1:
 call rt_faildescr@PLT
.Lx00177_2:
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain00174_n5_α
 jmp xchain00174_n5_α
 xchain00174_n4_β:
 jmp xchain00174_n5_α
.Lx00177_0:
 .quad .Lx00177_0_s
.Lx00177_0_s:
 .string "Time__"
# IR_LIT_STRING
 xchain00174_n5_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx00178_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00174_n6_α
 xchain00174_n5_β:
 jmp xchain00174_n8_α
.Lx00178_0:
 .quad .Lx00178_0_s
.Lx00178_0_s:
 .string "OUTPUT"
 xchain00174_n6_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn722: .string "getenv"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn722]
 lea rsi, [rbp + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain00174_n8_α
 jmp xchain00174_n7_α
 xchain00174_n6_β:
 jmp xchain00174_n8_α
# IR_LIT_STRING
 xchain00174_n7_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00179_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00174_n9_α
 xchain00174_n7_β:
 jmp xchain00174_n12_α
.Lx00179_0:
 .quad .Lx00179_0_s
.Lx00179_0_s:
 .string "*** Benchmarking with output ***"
# IR_VAR
 xchain00174_n8_α:
 mov rdi, qword ptr [rip + .Lx00180_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00174_n11_α
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00174_n10_α
 xchain00174_n8_β:
 jmp xchain00174_n11_α
.Lx00180_0:
 .quad .Lx00180_0_s
.Lx00180_0_s:
 .string "write"
 xchain00174_n9_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn726: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn726]
 lea rsi, [rbp + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain00174_n12_α
 jmp xchain00174_n12_α
 xchain00174_n9_β:
 jmp xchain00174_n12_α
# IR_ASSIGN gva
 xchain00174_n10_α:
 mov rax, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 mov qword ptr [1879052512], rax
 mov qword ptr [1879052520], rdx
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00174_n11_α
 xchain00174_n10_β:
 jmp xchain00174_n11_α
# IR_VAR
 xchain00174_n11_α:
 mov rdi, qword ptr [rip + .Lx00181_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00174_n14_α
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain00174_n13_α
 xchain00174_n11_β:
 jmp xchain00174_n14_α
.Lx00181_0:
 .quad .Lx00181_0_s
.Lx00181_0_s:
 .string "writes"
# IR_RETURN
 xchain00174_n12_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_Init___γ
# IR_ASSIGN gva
 xchain00174_n13_α:
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [1879052528], rax
 mov qword ptr [1879052536], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00174_n14_α
 xchain00174_n13_β:
 jmp xchain00174_n14_α
# IR_LIT_INTEGER
 xchain00174_n14_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00182_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00174_n15_α
 xchain00174_n14_β:
 jmp xchain00174_n17_α
.Lx00182_0:
 .quad 1
# IR_ASSIGN global
 xchain00174_n15_α:
 mov rsi, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov rdi, qword ptr [rip + .Lx00183_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 jmp xchain00174_n16_α
 xchain00174_n15_β:
 jmp xchain00174_n17_α
.Lx00183_0:
 .quad .Lx00183_0_s
.Lx00183_0_s:
 .string "writes"
# IR_ASSIGN global
 xchain00174_n16_α:
 mov rsi, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov rdi, qword ptr [rip + .Lx00184_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00174_n17_α
 xchain00174_n16_β:
 jmp xchain00174_n17_α
.Lx00184_0:
 .quad .Lx00184_0_s
.Lx00184_0_s:
 .string "write"
# IR_RETURN
 xchain00174_n17_α:
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
 xchain00185_n0_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx00186_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00185_n1_α
 xchain00185_n0_β:
 jmp xchain00185_n3_α
.Lx00186_0:
 .quad .Lx00186_0_s
.Lx00186_0_s:
 .string "OUTPUT"
 xchain00185_n1_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
  .section .rodata
  .Lrkfn738: .string "getenv"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn738]
 lea rsi, [rbp + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00185_n3_α
 jmp xchain00185_n2_α
 xchain00185_n1_β:
 jmp xchain00185_n3_α
# IR_VAR
 xchain00185_n2_α:
 mov rax, qword ptr [1879052544]
 mov rdx, qword ptr [1879052552]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00185_n4_α
 xchain00185_n2_β:
 jmp xchain00185_n5_α
# KEYWORD_null
 xchain00185_n3_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 jmp xchain00185_n6_α
 xchain00185_n3_β:
 jmp xchain00185_n2_α
# IR_LIT_STRING
 xchain00185_n4_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00187_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00185_n7_α
 xchain00185_n4_β:
 jmp xchain00185_n5_α
.Lx00187_0:
 .quad .Lx00187_0_s
.Lx00187_0_s:
 .string " elapsed time = "
 xchain00185_n5_α:
 mov rdi, qword ptr [rip + .Lx00188_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00188_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00188_3]
 lea rdx, [rip + .Lx00188_4]
 jmp rax
.Lx00188_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00188_2
.Lx00188_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00188_2
.Lx00188_1:
 call rt_faildescr@PLT
.Lx00188_2:
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00185_n8_α
 jmp xchain00185_n8_α
 xchain00185_n5_β:
 jmp xchain00185_n8_α
.Lx00188_0:
 .quad .Lx00188_0_s
.Lx00188_0_s:
 .string "Regions__"
# IR_VAR
 xchain00185_n6_α:
 mov rax, qword ptr [1879052512]
 mov rdx, qword ptr [1879052520]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00185_n9_α
 xchain00185_n6_β:
 jmp xchain00185_n10_α
 xchain00185_n7_α:
 mov rdi, qword ptr [rip + .Lx00189_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00189_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00189_3]
 lea rdx, [rip + .Lx00189_4]
 jmp rax
.Lx00189_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00189_2
.Lx00189_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00189_2
.Lx00189_1:
 call rt_faildescr@PLT
.Lx00189_2:
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain00185_n5_α
 jmp xchain00185_n11_α
 xchain00185_n7_β:
 jmp xchain00185_n5_α
.Lx00189_0:
 .quad .Lx00189_0_s
.Lx00189_0_s:
 .string "Time__"
 xchain00185_n8_α:
 mov rdi, qword ptr [rip + .Lx00190_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00190_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00190_3]
 lea rdx, [rip + .Lx00190_4]
 jmp rax
.Lx00190_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00190_2
.Lx00190_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00190_2
.Lx00190_1:
 call rt_faildescr@PLT
.Lx00190_2:
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je xchain00185_n12_α
 jmp xchain00185_n12_α
 xchain00185_n8_β:
 jmp xchain00185_n12_α
.Lx00190_0:
 .quad .Lx00190_0_s
.Lx00190_0_s:
 .string "Storage__"
# IR_ASSIGN global
 xchain00185_n9_α:
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 mov rdi, qword ptr [rip + .Lx00191_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain00185_n10_α
 xchain00185_n9_β:
 jmp xchain00185_n10_α
.Lx00191_0:
 .quad .Lx00191_0_s
.Lx00191_0_s:
 .string "write"
# IR_VAR
 xchain00185_n10_α:
 mov rax, qword ptr [1879052528]
 mov rdx, qword ptr [1879052536]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00185_n13_α
 xchain00185_n10_β:
 jmp xchain00185_n2_α
 xchain00185_n11_α:
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
  .Lrkfn752: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn752]
 lea rsi, [rbp + 128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain00185_n5_α
 jmp xchain00185_n5_α
 xchain00185_n11_β:
 jmp xchain00185_n5_α
 xchain00185_n12_α:
 mov rdi, qword ptr [rip + .Lx00192_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00192_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00192_3]
 lea rdx, [rip + .Lx00192_4]
 jmp rax
.Lx00192_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00192_2
.Lx00192_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00192_2
.Lx00192_1:
 call rt_faildescr@PLT
.Lx00192_2:
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 cmp eax, 99
 je xchain00185_n14_α
 jmp xchain00185_n14_α
 xchain00185_n12_β:
 jmp xchain00185_n14_α
.Lx00192_0:
 .quad .Lx00192_0_s
.Lx00192_0_s:
 .string "Collections__"
# IR_ASSIGN global
 xchain00185_n13_α:
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov rdi, qword ptr [rip + .Lx00193_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00185_n15_α
 xchain00185_n13_β:
 jmp xchain00185_n2_α
.Lx00193_0:
 .quad .Lx00193_0_s
.Lx00193_0_s:
 .string "writes"
# IR_RETURN
 xchain00185_n14_α:
 mov rax, qword ptr [rbp + 16]
 mov rdx, qword ptr [rbp + 24]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_Term___γ
 xchain00185_n15_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 328], rax
 jmp xchain00185_n16_α
xchain00185_n15_β:
 jmp xchain00185_n2_α
# IR_MOVE_LABEL
 xchain00185_n16_α:
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 296], rax
 lea rax, [rip + xchain00185_n2_α]
 mov qword ptr [rbp + 304], rax
 jmp xchain00185_n2_α
 xchain00185_n16_β:
 jmp xchain00185_n2_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00185_n17_α:
 jmp qword ptr [rbp + 304]
 xchain00185_n17_β:
 jmp xchain00185_n2_α
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
 xchain00194_n0_α:
 mov rdi, 1879052640
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00194_n1_α
 xchain00194_n0_β:
 jmp xchain00194_n3_α
# IR_NULLTEST_VAR
 xchain00194_n1_α:
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 99
 je xchain00194_n3_α
 mov rdi, qword ptr [rbp + 1040]
 mov rsi, qword ptr [rbp + 1048]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00194_n3_α
 cmp eax, 0
 jne xchain00194_n3_α
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00194_n2_α
 xchain00194_n1_β:
 jmp xchain00194_n3_α
# IR_LIT_INTEGER
 xchain00194_n2_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx00195_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00194_n4_α
 xchain00194_n2_β:
 jmp xchain00194_n3_α
.Lx00195_0:
 .quad 1
# IR_MAKE_LIST
 xchain00194_n3_α:
 lea rdi, [rbp + 784]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00194_n5_α
 xchain00194_n3_β:
 jmp xchain00194_n7_α
# IR_ASSIGN_VAR
 xchain00194_n4_α:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, qword ptr [rbp + 1120]
 mov rcx, qword ptr [rbp + 1128]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00194_n3_α
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00194_n6_α
 xchain00194_n4_β:
 jmp xchain00194_n3_α
 xchain00194_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00194_n7_α
 xchain00194_n5_β:
 jmp xchain00194_n7_α
# IR_LIT_STRING
 xchain00194_n6_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx00196_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00194_n8_α
 xchain00194_n6_β:
 jmp xchain00194_n3_α
.Lx00196_0:
 .quad .Lx00196_0_s
.Lx00196_0_s:
 .string "total"
# IR_VAR
 xchain00194_n7_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 696], rax
 jmp xchain00194_n9_α
 xchain00194_n7_β:
 jmp xchain00194_n10_α
# IR_LIT_STRING
 xchain00194_n8_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx00197_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00194_n11_α
 xchain00194_n8_β:
 jmp xchain00194_n3_α
.Lx00197_0:
 .quad .Lx00197_0_s
.Lx00197_0_s:
 .string "static"
# KEYWORD_gen
 xchain00194_n9_α:
 mov qword ptr [rbp + 736], 0
.Lx00198_1:
 mov rdi, qword ptr [rip + .Lx00198_0]
 mov rsi, qword ptr [rbp + 736]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00194_n10_α
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 mov rax, qword ptr [rbp + 736]
 add rax, 1
 mov qword ptr [rbp + 736], rax
 jmp xchain00194_n12_α
 xchain00194_n9_β:
 jmp .Lx00198_1
.Lx00198_0:
 .quad .Lx00198_0_s
.Lx00198_0_s:
 .string "&collections"
# IR_LIT_STRING
 xchain00194_n10_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx00199_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00194_n13_α
 xchain00194_n10_β:
 jmp xchain00194_n15_α
.Lx00199_0:
 .quad .Lx00199_0_s
.Lx00199_0_s:
 .string "collections"
# IR_LIT_STRING
 xchain00194_n11_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx00200_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00194_n14_α
 xchain00194_n11_β:
 jmp xchain00194_n3_α
.Lx00200_0:
 .quad .Lx00200_0_s
.Lx00200_0_s:
 .string "string"
 xchain00194_n12_α:
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
  .Lrkfn779: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn779]
 lea rsi, [rbp + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain00194_n10_α
 jmp xchain00194_n9_β
 xchain00194_n12_β:
 jmp xchain00194_n10_α
 xchain00194_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
  .section .rodata
  .Lrkfn781: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn781]
 lea rsi, [rbp + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain00194_n15_α
 jmp xchain00194_n15_α
 xchain00194_n13_β:
 jmp xchain00194_n15_α
# IR_LIT_STRING
 xchain00194_n14_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx00201_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00194_n16_α
 xchain00194_n14_β:
 jmp xchain00194_n3_α
.Lx00201_0:
 .quad .Lx00201_0_s
.Lx00201_0_s:
 .string "block"
# IR_LIT_INTEGER
 xchain00194_n15_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00202_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00194_n17_α
 xchain00194_n15_β:
 jmp xchain00194_n20_α
.Lx00202_0:
 .quad 1
# IR_MAKE_LIST
 xchain00194_n16_α:
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
 jmp xchain00194_n18_α
 xchain00194_n16_β:
 jmp xchain00194_n3_α
# IR_VAR
 xchain00194_n17_α:
 mov rax, qword ptr [1879052624]
 mov rdx, qword ptr [1879052632]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00194_n19_α
 xchain00194_n17_β:
 jmp xchain00194_n20_α
# IR_ASSIGN gva
 xchain00194_n18_α:
 mov rax, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 mov qword ptr [1879052624], rax
 mov qword ptr [1879052632], rdx
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00194_n21_α
 xchain00194_n18_β:
 jmp xchain00194_n3_α
# IR_UNOP
 xchain00194_n19_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00194_n22_α
 xchain00194_n19_β:
 jmp xchain00194_n20_α
# IR_RETURN
 xchain00194_n20_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Collections___γ
# IR_MOVE_LABEL
 xchain00194_n21_α:
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
 lea rax, [rip + xchain00194_n3_α]
 mov qword ptr [rbp + 800], rax
 jmp xchain00194_n3_α
 xchain00194_n21_β:
 jmp xchain00194_n3_α
# IR_TO
 xchain00194_n22_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00203_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00194_n20_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00194_n24_α
 xchain00194_n22_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00203_0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00194_n23_α:
 jmp qword ptr [rbp + 800]
 xchain00194_n23_β:
 jmp xchain00194_n3_α
 xchain00194_n24_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00194_n25_α
 xchain00194_n24_β:
 jmp xchain00194_n20_α
# IR_VAR_REF
 xchain00194_n25_α:
 mov rdi, 1879052624
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00194_n26_α
 xchain00194_n25_β:
 jmp xchain00194_n22_β
# IR_VAR
 xchain00194_n26_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 264], rax
 jmp xchain00194_n27_α
 xchain00194_n26_β:
 jmp xchain00194_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00194_n27_α:
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 256]
 mov rcx, qword ptr [rbp + 264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00194_n22_β
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00194_n28_α
 xchain00194_n27_β:
 jmp xchain00194_n22_β
# IR_DEREF variable -> value
 xchain00194_n28_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00194_n22_β
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00194_n29_α
 xchain00194_n28_β:
 jmp xchain00194_n22_β
# IR_VAR_REF
 xchain00194_n29_α:
 lea rdi, [rbp + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00194_n30_α
 xchain00194_n29_β:
 jmp xchain00194_n22_β
# IR_VAR
 xchain00194_n30_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 440], rax
 jmp xchain00194_n31_α
 xchain00194_n30_β:
 jmp xchain00194_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00194_n31_α:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00194_n22_β
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00194_n32_α
 xchain00194_n31_β:
 jmp xchain00194_n22_β
# IR_DEREF variable -> value
 xchain00194_n32_α:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00194_n22_β
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00194_n33_α
 xchain00194_n32_β:
 jmp xchain00194_n22_β
# IR_LIT_INTEGER
 xchain00194_n33_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00204_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00194_n34_α
 xchain00194_n33_β:
 jmp xchain00194_n22_β
.Lx00204_0:
 .quad 8
 xchain00194_n34_α:
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
  .Lrkfn811: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn811]
 lea rsi, [rbp + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain00194_n22_β
 jmp xchain00194_n35_α
 xchain00194_n34_β:
 jmp xchain00194_n22_β
 xchain00194_n35_α:
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
  .Lrkfn813: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn813]
 lea rsi, [rbp + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain00194_n22_β
 jmp xchain00194_n22_β
 xchain00194_n35_β:
 jmp xchain00194_n22_β
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
 xchain00205_n0_α:
 mov rdi, 1879052672
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00205_n1_α
 xchain00205_n0_β:
 jmp xchain00205_n3_α
# IR_NULLTEST_VAR
 xchain00205_n1_α:
 mov eax, dword ptr [rbp + 992]
 cmp eax, 99
 je xchain00205_n3_α
 mov rdi, qword ptr [rbp + 992]
 mov rsi, qword ptr [rbp + 1000]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00205_n3_α
 cmp eax, 0
 jne xchain00205_n3_α
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00205_n2_α
 xchain00205_n1_β:
 jmp xchain00205_n3_α
# IR_LIT_INTEGER
 xchain00205_n2_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx00206_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00205_n4_α
 xchain00205_n2_β:
 jmp xchain00205_n3_α
.Lx00206_0:
 .quad 1
# IR_MAKE_LIST
 xchain00205_n3_α:
 lea rdi, [rbp + 784]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00205_n5_α
 xchain00205_n3_β:
 jmp xchain00205_n7_α
# IR_ASSIGN_VAR
 xchain00205_n4_α:
 mov rdi, qword ptr [rbp + 1024]
 mov rsi, qword ptr [rbp + 1032]
 mov rdx, qword ptr [rbp + 1072]
 mov rcx, qword ptr [rbp + 1080]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00205_n3_α
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain00205_n6_α
 xchain00205_n4_β:
 jmp xchain00205_n3_α
 xchain00205_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00205_n7_α
 xchain00205_n5_β:
 jmp xchain00205_n7_α
# IR_LIT_STRING
 xchain00205_n6_α:
 mov qword ptr [rbp + 896], 1
 mov rax, qword ptr [rip + .Lx00207_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain00205_n8_α
 xchain00205_n6_β:
 jmp xchain00205_n3_α
.Lx00207_0:
 .quad .Lx00207_0_s
.Lx00207_0_s:
 .string "static"
# IR_VAR
 xchain00205_n7_α:
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 696], rax
 jmp xchain00205_n9_α
 xchain00205_n7_β:
 jmp xchain00205_n10_α
# IR_LIT_STRING
 xchain00205_n8_α:
 mov qword ptr [rbp + 928], 1
 mov rax, qword ptr [rip + .Lx00208_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain00205_n11_α
 xchain00205_n8_β:
 jmp xchain00205_n3_α
.Lx00208_0:
 .quad .Lx00208_0_s
.Lx00208_0_s:
 .string "string"
# KEYWORD_gen
 xchain00205_n9_α:
 mov qword ptr [rbp + 736], 0
.Lx00209_1:
 mov rdi, qword ptr [rip + .Lx00209_0]
 mov rsi, qword ptr [rbp + 736]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00205_n10_α
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 mov rax, qword ptr [rbp + 736]
 add rax, 1
 mov qword ptr [rbp + 736], rax
 jmp xchain00205_n12_α
 xchain00205_n9_β:
 jmp .Lx00209_1
.Lx00209_0:
 .quad .Lx00209_0_s
.Lx00209_0_s:
 .string "&regions"
# IR_LIT_STRING
 xchain00205_n10_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx00210_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00205_n13_α
 xchain00205_n10_β:
 jmp xchain00205_n15_α
.Lx00210_0:
 .quad .Lx00210_0_s
.Lx00210_0_s:
 .string "regions"
# IR_LIT_STRING
 xchain00205_n11_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx00211_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00205_n14_α
 xchain00205_n11_β:
 jmp xchain00205_n3_α
.Lx00211_0:
 .quad .Lx00211_0_s
.Lx00211_0_s:
 .string "block"
 xchain00205_n12_α:
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
  .Lrkfn831: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn831]
 lea rsi, [rbp + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain00205_n10_α
 jmp xchain00205_n9_β
 xchain00205_n12_β:
 jmp xchain00205_n10_α
 xchain00205_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
  .section .rodata
  .Lrkfn833: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn833]
 lea rsi, [rbp + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain00205_n15_α
 jmp xchain00205_n15_α
 xchain00205_n13_β:
 jmp xchain00205_n15_α
# IR_MAKE_LIST
 xchain00205_n14_α:
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
 jmp xchain00205_n16_α
 xchain00205_n14_β:
 jmp xchain00205_n3_α
# IR_LIT_INTEGER
 xchain00205_n15_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00212_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00205_n17_α
 xchain00205_n15_β:
 jmp xchain00205_n20_α
.Lx00212_0:
 .quad 1
# IR_ASSIGN gva
 xchain00205_n16_α:
 mov rax, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 mov qword ptr [1879052656], rax
 mov qword ptr [1879052664], rdx
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00205_n18_α
 xchain00205_n16_β:
 jmp xchain00205_n3_α
# IR_VAR
 xchain00205_n17_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00205_n19_α
 xchain00205_n17_β:
 jmp xchain00205_n20_α
# IR_MOVE_LABEL
 xchain00205_n18_α:
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
 lea rax, [rip + xchain00205_n3_α]
 mov qword ptr [rbp + 800], rax
 jmp xchain00205_n3_α
 xchain00205_n18_β:
 jmp xchain00205_n3_α
# IR_UNOP
 xchain00205_n19_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00205_n22_α
 xchain00205_n19_β:
 jmp xchain00205_n20_α
# IR_RETURN
 xchain00205_n20_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Regions___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00205_n21_α:
 jmp qword ptr [rbp + 800]
 xchain00205_n21_β:
 jmp xchain00205_n3_α
# IR_TO
 xchain00205_n22_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00213_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00205_n20_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00205_n23_α
 xchain00205_n22_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00213_0
 xchain00205_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00205_n24_α
 xchain00205_n23_β:
 jmp xchain00205_n20_α
# IR_VAR_REF
 xchain00205_n24_α:
 mov rdi, 1879052656
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00205_n25_α
 xchain00205_n24_β:
 jmp xchain00205_n22_β
# IR_VAR
 xchain00205_n25_α:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 264], rax
 jmp xchain00205_n26_α
 xchain00205_n25_β:
 jmp xchain00205_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00205_n26_α:
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 256]
 mov rcx, qword ptr [rbp + 264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00205_n22_β
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00205_n27_α
 xchain00205_n26_β:
 jmp xchain00205_n22_β
# IR_DEREF variable -> value
 xchain00205_n27_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00205_n22_β
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00205_n28_α
 xchain00205_n27_β:
 jmp xchain00205_n22_β
# IR_VAR_REF
 xchain00205_n28_α:
 lea rdi, [rbp + 1136]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00205_n29_α
 xchain00205_n28_β:
 jmp xchain00205_n22_β
# IR_VAR
 xchain00205_n29_α:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 440], rax
 jmp xchain00205_n30_α
 xchain00205_n29_β:
 jmp xchain00205_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00205_n30_α:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00205_n22_β
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00205_n31_α
 xchain00205_n30_β:
 jmp xchain00205_n22_β
# IR_DEREF variable -> value
 xchain00205_n31_α:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00205_n22_β
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00205_n32_α
 xchain00205_n31_β:
 jmp xchain00205_n22_β
# IR_LIT_INTEGER
 xchain00205_n32_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00214_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00205_n33_α
 xchain00205_n32_β:
 jmp xchain00205_n22_β
.Lx00214_0:
 .quad 8
 xchain00205_n33_α:
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
  .Lrkfn862: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn862]
 lea rsi, [rbp + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain00205_n22_β
 jmp xchain00205_n34_α
 xchain00205_n33_β:
 jmp xchain00205_n22_β
 xchain00205_n34_α:
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
  .Lrkfn864: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn864]
 lea rsi, [rbp + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain00205_n22_β
 jmp xchain00205_n22_β
 xchain00205_n34_β:
 jmp xchain00205_n22_β
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
 xchain00215_n0_α:
 mov rdi, qword ptr [rip + .Lx00216_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00215_n1_α
 xchain00215_n0_β:
 jmp xchain00215_n2_α
.Lx00216_0:
 .quad .Lx00216_0_s
.Lx00216_0_s:
 .string "&version"
 xchain00215_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn868: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn868]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00215_n2_α
 jmp xchain00215_n2_α
 xchain00215_n1_β:
 jmp xchain00215_n2_α
# KEYWORD_read
 xchain00215_n2_α:
 mov rdi, qword ptr [rip + .Lx00217_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00215_n3_α
 xchain00215_n2_β:
 jmp xchain00215_n4_α
.Lx00217_0:
 .quad .Lx00217_0_s
.Lx00217_0_s:
 .string "&host"
 xchain00215_n3_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn871: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn871]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je xchain00215_n4_α
 jmp xchain00215_n4_α
 xchain00215_n3_β:
 jmp xchain00215_n4_α
# KEYWORD_gen
 xchain00215_n4_α:
 mov qword ptr [rbp + 80], 0
.Lx00218_1:
 mov rdi, qword ptr [rip + .Lx00218_0]
 mov rsi, qword ptr [rbp + 80]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00215_n6_α
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 mov rax, qword ptr [rbp + 80]
 add rax, 1
 mov qword ptr [rbp + 80], rax
 jmp xchain00215_n5_α
 xchain00215_n4_β:
 jmp .Lx00218_1
.Lx00218_0:
 .quad .Lx00218_0_s
.Lx00218_0_s:
 .string "&features"
 xchain00215_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+32]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 40], rax
  .section .rodata
  .Lrkfn874: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn874]
 lea rsi, [rbp + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 cmp eax, 99
 je xchain00215_n6_α
 jmp xchain00215_n4_β
 xchain00215_n5_β:
 jmp xchain00215_n6_α
# IR_RETURN
 xchain00215_n6_α:
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
 xchain00219_n0_α:
 mov rdi, 1879052704
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00219_n1_α
 xchain00219_n0_β:
 jmp xchain00219_n3_α
# IR_NULLTEST_VAR
 xchain00219_n1_α:
 mov eax, dword ptr [rbp + 992]
 cmp eax, 99
 je xchain00219_n3_α
 mov rdi, qword ptr [rbp + 992]
 mov rsi, qword ptr [rbp + 1000]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00219_n3_α
 cmp eax, 0
 jne xchain00219_n3_α
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00219_n2_α
 xchain00219_n1_β:
 jmp xchain00219_n3_α
# IR_LIT_INTEGER
 xchain00219_n2_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx00220_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00219_n4_α
 xchain00219_n2_β:
 jmp xchain00219_n3_α
.Lx00220_0:
 .quad 1
# IR_MAKE_LIST
 xchain00219_n3_α:
 lea rdi, [rbp + 784]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00219_n5_α
 xchain00219_n3_β:
 jmp xchain00219_n7_α
# IR_ASSIGN_VAR
 xchain00219_n4_α:
 mov rdi, qword ptr [rbp + 1024]
 mov rsi, qword ptr [rbp + 1032]
 mov rdx, qword ptr [rbp + 1072]
 mov rcx, qword ptr [rbp + 1080]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00219_n3_α
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain00219_n6_α
 xchain00219_n4_β:
 jmp xchain00219_n3_α
 xchain00219_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00219_n7_α
 xchain00219_n5_β:
 jmp xchain00219_n7_α
# IR_LIT_STRING
 xchain00219_n6_α:
 mov qword ptr [rbp + 896], 1
 mov rax, qword ptr [rip + .Lx00221_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain00219_n8_α
 xchain00219_n6_β:
 jmp xchain00219_n3_α
.Lx00221_0:
 .quad .Lx00221_0_s
.Lx00221_0_s:
 .string "static"
# IR_VAR
 xchain00219_n7_α:
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 696], rax
 jmp xchain00219_n9_α
 xchain00219_n7_β:
 jmp xchain00219_n10_α
# IR_LIT_STRING
 xchain00219_n8_α:
 mov qword ptr [rbp + 928], 1
 mov rax, qword ptr [rip + .Lx00222_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain00219_n11_α
 xchain00219_n8_β:
 jmp xchain00219_n3_α
.Lx00222_0:
 .quad .Lx00222_0_s
.Lx00222_0_s:
 .string "string"
# KEYWORD_gen
 xchain00219_n9_α:
 mov qword ptr [rbp + 736], 0
.Lx00223_1:
 mov rdi, qword ptr [rip + .Lx00223_0]
 mov rsi, qword ptr [rbp + 736]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00219_n10_α
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 mov rax, qword ptr [rbp + 736]
 add rax, 1
 mov qword ptr [rbp + 736], rax
 jmp xchain00219_n12_α
 xchain00219_n9_β:
 jmp .Lx00223_1
.Lx00223_0:
 .quad .Lx00223_0_s
.Lx00223_0_s:
 .string "&storage"
# IR_LIT_STRING
 xchain00219_n10_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx00224_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00219_n13_α
 xchain00219_n10_β:
 jmp xchain00219_n15_α
.Lx00224_0:
 .quad .Lx00224_0_s
.Lx00224_0_s:
 .string "storage"
# IR_LIT_STRING
 xchain00219_n11_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx00225_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00219_n14_α
 xchain00219_n11_β:
 jmp xchain00219_n3_α
.Lx00225_0:
 .quad .Lx00225_0_s
.Lx00225_0_s:
 .string "block"
 xchain00219_n12_α:
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
  .Lrkfn893: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn893]
 lea rsi, [rbp + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain00219_n10_α
 jmp xchain00219_n9_β
 xchain00219_n12_β:
 jmp xchain00219_n10_α
 xchain00219_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
  .section .rodata
  .Lrkfn895: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn895]
 lea rsi, [rbp + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain00219_n15_α
 jmp xchain00219_n15_α
 xchain00219_n13_β:
 jmp xchain00219_n15_α
# IR_MAKE_LIST
 xchain00219_n14_α:
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
 jmp xchain00219_n16_α
 xchain00219_n14_β:
 jmp xchain00219_n3_α
# IR_LIT_INTEGER
 xchain00219_n15_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00226_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00219_n17_α
 xchain00219_n15_β:
 jmp xchain00219_n20_α
.Lx00226_0:
 .quad 1
# IR_ASSIGN gva
 xchain00219_n16_α:
 mov rax, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00219_n18_α
 xchain00219_n16_β:
 jmp xchain00219_n3_α
# IR_VAR
 xchain00219_n17_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00219_n19_α
 xchain00219_n17_β:
 jmp xchain00219_n20_α
# IR_MOVE_LABEL
 xchain00219_n18_α:
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
 lea rax, [rip + xchain00219_n3_α]
 mov qword ptr [rbp + 800], rax
 jmp xchain00219_n3_α
 xchain00219_n18_β:
 jmp xchain00219_n3_α
# IR_UNOP
 xchain00219_n19_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00219_n22_α
 xchain00219_n19_β:
 jmp xchain00219_n20_α
# IR_RETURN
 xchain00219_n20_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Storage___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00219_n21_α:
 jmp qword ptr [rbp + 800]
 xchain00219_n21_β:
 jmp xchain00219_n3_α
# IR_TO
 xchain00219_n22_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00227_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00219_n20_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00219_n23_α
 xchain00219_n22_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00227_0
 xchain00219_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00219_n24_α
 xchain00219_n23_β:
 jmp xchain00219_n20_α
# IR_VAR_REF
 xchain00219_n24_α:
 mov rdi, 1879052688
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00219_n25_α
 xchain00219_n24_β:
 jmp xchain00219_n22_β
# IR_VAR
 xchain00219_n25_α:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 264], rax
 jmp xchain00219_n26_α
 xchain00219_n25_β:
 jmp xchain00219_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00219_n26_α:
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 256]
 mov rcx, qword ptr [rbp + 264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00219_n22_β
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00219_n27_α
 xchain00219_n26_β:
 jmp xchain00219_n22_β
# IR_DEREF variable -> value
 xchain00219_n27_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00219_n22_β
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00219_n28_α
 xchain00219_n27_β:
 jmp xchain00219_n22_β
# IR_VAR_REF
 xchain00219_n28_α:
 lea rdi, [rbp + 1136]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00219_n29_α
 xchain00219_n28_β:
 jmp xchain00219_n22_β
# IR_VAR
 xchain00219_n29_α:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 440], rax
 jmp xchain00219_n30_α
 xchain00219_n29_β:
 jmp xchain00219_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00219_n30_α:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00219_n22_β
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00219_n31_α
 xchain00219_n30_β:
 jmp xchain00219_n22_β
# IR_DEREF variable -> value
 xchain00219_n31_α:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00219_n22_β
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00219_n32_α
 xchain00219_n31_β:
 jmp xchain00219_n22_β
# IR_LIT_INTEGER
 xchain00219_n32_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00228_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00219_n33_α
 xchain00219_n32_β:
 jmp xchain00219_n22_β
.Lx00228_0:
 .quad 8
 xchain00219_n33_α:
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
  .Lrkfn924: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn924]
 lea rsi, [rbp + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain00219_n22_β
 jmp xchain00219_n34_α
 xchain00219_n33_β:
 jmp xchain00219_n22_β
 xchain00219_n34_α:
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
  .Lrkfn926: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn926]
 lea rsi, [rbp + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain00219_n22_β
 jmp xchain00219_n22_β
 xchain00219_n34_β:
 jmp xchain00219_n22_β
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
 xchain00229_n0_α:
 mov rdi, 1879052736
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00229_n1_α
 xchain00229_n0_β:
 jmp xchain00229_n3_α
# IR_NULLTEST_VAR
 xchain00229_n1_α:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 99
 je xchain00229_n3_α
 mov rdi, qword ptr [rbp + 256]
 mov rsi, qword ptr [rbp + 264]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00229_n3_α
 cmp eax, 0
 jne xchain00229_n3_α
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 296], rax
 jmp xchain00229_n2_α
 xchain00229_n1_β:
 jmp xchain00229_n3_α
# IR_LIT_INTEGER
 xchain00229_n2_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00230_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00229_n4_α
 xchain00229_n2_β:
 jmp xchain00229_n3_α
.Lx00230_0:
 .quad 1
# KEYWORD_read
 xchain00229_n3_α:
 mov rdi, qword ptr [rip + .Lx00231_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain00229_n5_α
 xchain00229_n3_β:
 jmp proc_Time___ω
.Lx00231_0:
 .quad .Lx00231_0_s
.Lx00231_0_s:
 .string "&time"
# IR_ASSIGN_VAR
 xchain00229_n4_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00229_n3_α
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00229_n6_α
 xchain00229_n4_β:
 jmp xchain00229_n3_α
# IR_VAR
 xchain00229_n5_α:
 mov rax, qword ptr [1879052720]
 mov rdx, qword ptr [1879052728]
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00229_n7_α
 xchain00229_n5_β:
 jmp proc_Time___ω
# KEYWORD_read
 xchain00229_n6_α:
 mov rdi, qword ptr [rip + .Lx00232_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00229_n8_α
 xchain00229_n6_β:
 jmp xchain00229_n3_α
.Lx00232_0:
 .quad .Lx00232_0_s
.Lx00232_0_s:
 .string "&time"
# IR_COERCE_NUMERIC
 xchain00229_n7_α:
 mov eax, dword ptr [rbp + 112]
 cmp eax, 7
 je .Lx00233_1
 cmp eax, 6
 jne .Lx00233_0
 mov eax, dword ptr [rbp + 144]
 cmp eax, 6
 jne .Lx00233_0
.Lx00233_1:
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 88], rax
 jmp .Lx00233_2
.Lx00233_0:
 lea rdi, [rbp + 112]
 lea rsi, [rbp + 144]
 lea rdx, [rbp + 80]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00233_2:
 jmp xchain00229_n9_α
 xchain00229_n7_β:
 jmp proc_Time___ω
# IR_ASSIGN gva
 xchain00229_n8_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [1879052720], rax
 mov qword ptr [1879052728], rdx
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00229_n10_α
 xchain00229_n8_β:
 jmp xchain00229_n3_α
# IR_COERCE_NUMERIC
 xchain00229_n9_α:
 mov eax, dword ptr [rbp + 144]
 cmp eax, 7
 je .Lx00234_1
 cmp eax, 6
 jne .Lx00234_0
 mov eax, dword ptr [rbp + 112]
 cmp eax, 6
 jne .Lx00234_0
.Lx00234_1:
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 56], rax
 jmp .Lx00234_2
.Lx00234_0:
 lea rdi, [rbp + 144]
 lea rsi, [rbp + 112]
 lea rdx, [rbp + 48]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00234_2:
 jmp xchain00229_n11_α
 xchain00229_n9_β:
 jmp proc_Time___ω
# IR_MOVE_LABEL
 xchain00229_n10_α:
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
 lea rax, [rip + xchain00229_n3_α]
 mov qword ptr [rbp + 192], rax
 jmp xchain00229_n3_α
 xchain00229_n10_β:
 jmp xchain00229_n3_α
 xchain00229_n11_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 80]
 cmp eax, 100
 je .Lx00235_0
 mov eax, dword ptr [rbp + 48]
 cmp eax, 100
 je .Lx00235_0
 mov eax, dword ptr [rbp + 80]
 cmp eax, 6
 jne .Lx00235_2
 mov eax, dword ptr [rbp + 48]
 cmp eax, 6
 jne .Lx00235_2
.Lx00235_1:
 mov rax, qword ptr [rbp + 88]
 mov rcx, qword ptr [rbp + 56]
 sub rax, rcx
 mov qword ptr [rbp + 16], 6
 mov qword ptr [rbp + 24], rax
 jmp xchain00229_n13_α
.Lx00235_0:
 mov rdi, qword ptr [rbp + 80]
 mov rsi, qword ptr [rbp + 88]
 mov rdx, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 56]
 mov r8d, 1
 lea r9, [rbp + 16]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00235_3
.Lx00235_2:
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
.Lx00235_3:
 jmp xchain00229_n13_α
 xchain00229_n11_β:
 jmp proc_Time___ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00229_n12_α:
 jmp qword ptr [rbp + 192]
 xchain00229_n12_β:
 jmp xchain00229_n3_α
# IR_RETURN
 xchain00229_n13_α:
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
  .Lclassspec0: .string "procrec(pname,begline,lastline)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec0]
  call record_register@PLT
  .section .rodata
  .Lstartup_pname0: .string "addword"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_addword_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2176
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname1: .string "getword"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_getword_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 4768
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname2: .string "format"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_format_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 3440
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  .Lgvan0: .string "resword"
  .Lgvan1: .string "linenum"
  .Lgvan2: .string "letters"
  .Lgvan3: .string "alphas"
  .Lgvan4: .string "var"
  .Lgvan5: .string "buffer"
  .Lgvan6: .string "qflag"
  .Lgvan7: .string "infile"
  .Lgvan8: .string "xflag"
  .Lgvan9: .string "inmaxcol"
  .Lgvan10: .string "inlmarg"
  .Lgvan11: .string "inchunk"
  .Lgvan12: .string "localvar"
  .Lgvan13: .string "lin"
  .Lgvan14: .string "Save__"
  .Lgvan15: .string "Saves__"
  .Lgvan16: .string "Name__"
  .Lgvan17: .string "getword__STATIC__i"
  .Lgvan18: .string "getword__STATIC__nonwhite"
  .Lgvan19: .string "getword__INITFLAG__0"
  .Lgvan20: .string "format__INITFLAG__0"
  .Lgvan21: .string "Collections____STATIC__labels"
  .Lgvan22: .string "Collections____INITFLAG__0"
  .Lgvan23: .string "Regions____STATIC__labels"
  .Lgvan24: .string "Regions____INITFLAG__0"
  .Lgvan25: .string "Storage____STATIC__labels"
  .Lgvan26: .string "Storage____INITFLAG__0"
  .Lgvan27: .string "Time____STATIC__lasttime"
  .Lgvan28: .string "Time____INITFLAG__0"
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
  .quad .Lgvan26
  .quad .Lgvan27
  .quad .Lgvan28
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 29
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 29
  call gva_register@PLT
  # R12-ERAD FENCE: main(args) stuffing pending under RSP self-alloc
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
  mov qword ptr [rsp + 9400], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
# IR_LIT_STRING
 xchain00236_n0_α:
 mov qword ptr [rbp + 9360], 1
 mov rax, qword ptr [rip + .Lx00237_0]
 mov qword ptr [rbp + 9368], rax
 jmp xchain00236_n1_α
 xchain00236_n0_β:
 jmp xchain00236_n2_α
.Lx00237_0:
 .quad .Lx00237_0_s
.Lx00237_0_s:
 .string "ipxref"
 xchain00236_n1_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9360]
 mov rdx, qword ptr [rbp + 9368]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00238_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00238_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00238_3]
 lea rdx, [rip + .Lx00238_4]
 jmp rax
.Lx00238_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00238_2
.Lx00238_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00238_2
.Lx00238_1:
 call rt_faildescr@PLT
.Lx00238_2:
 mov qword ptr [rbp + 9312], rax
 mov qword ptr [rbp + 9320], rdx
 cmp eax, 99
 je xchain00236_n2_α
 jmp xchain00236_n2_α
 xchain00236_n1_β:
 jmp xchain00236_n2_α
.Lx00238_0:
 .quad .Lx00238_0_s
.Lx00238_0_s:
 .string "Init__"
# IR_LIT_STRING
 xchain00236_n2_α:
 mov qword ptr [rbp + 8416], 1
 mov rax, qword ptr [rip + .Lx00239_0]
 mov qword ptr [rbp + 8424], rax
 jmp xchain00236_n3_α
 xchain00236_n2_β:
 jmp xchain00236_n32_α
.Lx00239_0:
 .quad .Lx00239_0_s
.Lx00239_0_s:
 .string "break"
# IR_LIT_STRING
 xchain00236_n3_α:
 mov qword ptr [rbp + 8448], 1
 mov rax, qword ptr [rip + .Lx00240_0]
 mov qword ptr [rbp + 8456], rax
 jmp xchain00236_n4_α
 xchain00236_n3_β:
 jmp xchain00236_n32_α
.Lx00240_0:
 .quad .Lx00240_0_s
.Lx00240_0_s:
 .string "by"
# IR_LIT_STRING
 xchain00236_n4_α:
 mov qword ptr [rbp + 8480], 1
 mov rax, qword ptr [rip + .Lx00241_0]
 mov qword ptr [rbp + 8488], rax
 jmp xchain00236_n5_α
 xchain00236_n4_β:
 jmp xchain00236_n32_α
.Lx00241_0:
 .quad .Lx00241_0_s
.Lx00241_0_s:
 .string "case"
# IR_LIT_STRING
 xchain00236_n5_α:
 mov qword ptr [rbp + 8512], 1
 mov rax, qword ptr [rip + .Lx00242_0]
 mov qword ptr [rbp + 8520], rax
 jmp xchain00236_n6_α
 xchain00236_n5_β:
 jmp xchain00236_n32_α
.Lx00242_0:
 .quad .Lx00242_0_s
.Lx00242_0_s:
 .string "default"
# IR_LIT_STRING
 xchain00236_n6_α:
 mov qword ptr [rbp + 8544], 1
 mov rax, qword ptr [rip + .Lx00243_0]
 mov qword ptr [rbp + 8552], rax
 jmp xchain00236_n7_α
 xchain00236_n6_β:
 jmp xchain00236_n32_α
.Lx00243_0:
 .quad .Lx00243_0_s
.Lx00243_0_s:
 .string "do"
# IR_LIT_STRING
 xchain00236_n7_α:
 mov qword ptr [rbp + 8576], 1
 mov rax, qword ptr [rip + .Lx00244_0]
 mov qword ptr [rbp + 8584], rax
 jmp xchain00236_n8_α
 xchain00236_n7_β:
 jmp xchain00236_n32_α
.Lx00244_0:
 .quad .Lx00244_0_s
.Lx00244_0_s:
 .string "dynamic"
# IR_LIT_STRING
 xchain00236_n8_α:
 mov qword ptr [rbp + 8608], 1
 mov rax, qword ptr [rip + .Lx00245_0]
 mov qword ptr [rbp + 8616], rax
 jmp xchain00236_n9_α
 xchain00236_n8_β:
 jmp xchain00236_n32_α
.Lx00245_0:
 .quad .Lx00245_0_s
.Lx00245_0_s:
 .string "else"
# IR_LIT_STRING
 xchain00236_n9_α:
 mov qword ptr [rbp + 8640], 1
 mov rax, qword ptr [rip + .Lx00246_0]
 mov qword ptr [rbp + 8648], rax
 jmp xchain00236_n10_α
 xchain00236_n9_β:
 jmp xchain00236_n32_α
.Lx00246_0:
 .quad .Lx00246_0_s
.Lx00246_0_s:
 .string "end"
# IR_LIT_STRING
 xchain00236_n10_α:
 mov qword ptr [rbp + 8672], 1
 mov rax, qword ptr [rip + .Lx00247_0]
 mov qword ptr [rbp + 8680], rax
 jmp xchain00236_n11_α
 xchain00236_n10_β:
 jmp xchain00236_n32_α
.Lx00247_0:
 .quad .Lx00247_0_s
.Lx00247_0_s:
 .string "every"
# IR_LIT_STRING
 xchain00236_n11_α:
 mov qword ptr [rbp + 8704], 1
 mov rax, qword ptr [rip + .Lx00248_0]
 mov qword ptr [rbp + 8712], rax
 jmp xchain00236_n12_α
 xchain00236_n11_β:
 jmp xchain00236_n32_α
.Lx00248_0:
 .quad .Lx00248_0_s
.Lx00248_0_s:
 .string "fail"
# IR_LIT_STRING
 xchain00236_n12_α:
 mov qword ptr [rbp + 8736], 1
 mov rax, qword ptr [rip + .Lx00249_0]
 mov qword ptr [rbp + 8744], rax
 jmp xchain00236_n13_α
 xchain00236_n12_β:
 jmp xchain00236_n32_α
.Lx00249_0:
 .quad .Lx00249_0_s
.Lx00249_0_s:
 .string "global"
# IR_LIT_STRING
 xchain00236_n13_α:
 mov qword ptr [rbp + 8768], 1
 mov rax, qword ptr [rip + .Lx00250_0]
 mov qword ptr [rbp + 8776], rax
 jmp xchain00236_n14_α
 xchain00236_n13_β:
 jmp xchain00236_n32_α
.Lx00250_0:
 .quad .Lx00250_0_s
.Lx00250_0_s:
 .string "if"
# IR_LIT_STRING
 xchain00236_n14_α:
 mov qword ptr [rbp + 8800], 1
 mov rax, qword ptr [rip + .Lx00251_0]
 mov qword ptr [rbp + 8808], rax
 jmp xchain00236_n15_α
 xchain00236_n14_β:
 jmp xchain00236_n32_α
.Lx00251_0:
 .quad .Lx00251_0_s
.Lx00251_0_s:
 .string "initial"
# IR_LIT_STRING
 xchain00236_n15_α:
 mov qword ptr [rbp + 8832], 1
 mov rax, qword ptr [rip + .Lx00252_0]
 mov qword ptr [rbp + 8840], rax
 jmp xchain00236_n16_α
 xchain00236_n15_β:
 jmp xchain00236_n32_α
.Lx00252_0:
 .quad .Lx00252_0_s
.Lx00252_0_s:
 .string "link"
# IR_LIT_STRING
 xchain00236_n16_α:
 mov qword ptr [rbp + 8864], 1
 mov rax, qword ptr [rip + .Lx00253_0]
 mov qword ptr [rbp + 8872], rax
 jmp xchain00236_n17_α
 xchain00236_n16_β:
 jmp xchain00236_n32_α
.Lx00253_0:
 .quad .Lx00253_0_s
.Lx00253_0_s:
 .string "local"
# IR_LIT_STRING
 xchain00236_n17_α:
 mov qword ptr [rbp + 8896], 1
 mov rax, qword ptr [rip + .Lx00254_0]
 mov qword ptr [rbp + 8904], rax
 jmp xchain00236_n18_α
 xchain00236_n17_β:
 jmp xchain00236_n32_α
.Lx00254_0:
 .quad .Lx00254_0_s
.Lx00254_0_s:
 .string "next"
# IR_LIT_STRING
 xchain00236_n18_α:
 mov qword ptr [rbp + 8928], 1
 mov rax, qword ptr [rip + .Lx00255_0]
 mov qword ptr [rbp + 8936], rax
 jmp xchain00236_n19_α
 xchain00236_n18_β:
 jmp xchain00236_n32_α
.Lx00255_0:
 .quad .Lx00255_0_s
.Lx00255_0_s:
 .string "not"
# IR_LIT_STRING
 xchain00236_n19_α:
 mov qword ptr [rbp + 8960], 1
 mov rax, qword ptr [rip + .Lx00256_0]
 mov qword ptr [rbp + 8968], rax
 jmp xchain00236_n20_α
 xchain00236_n19_β:
 jmp xchain00236_n32_α
.Lx00256_0:
 .quad .Lx00256_0_s
.Lx00256_0_s:
 .string "of"
# IR_LIT_STRING
 xchain00236_n20_α:
 mov qword ptr [rbp + 8992], 1
 mov rax, qword ptr [rip + .Lx00257_0]
 mov qword ptr [rbp + 9000], rax
 jmp xchain00236_n21_α
 xchain00236_n20_β:
 jmp xchain00236_n32_α
.Lx00257_0:
 .quad .Lx00257_0_s
.Lx00257_0_s:
 .string "procedure"
# IR_LIT_STRING
 xchain00236_n21_α:
 mov qword ptr [rbp + 9024], 1
 mov rax, qword ptr [rip + .Lx00258_0]
 mov qword ptr [rbp + 9032], rax
 jmp xchain00236_n22_α
 xchain00236_n21_β:
 jmp xchain00236_n32_α
.Lx00258_0:
 .quad .Lx00258_0_s
.Lx00258_0_s:
 .string "record"
# IR_LIT_STRING
 xchain00236_n22_α:
 mov qword ptr [rbp + 9056], 1
 mov rax, qword ptr [rip + .Lx00259_0]
 mov qword ptr [rbp + 9064], rax
 jmp xchain00236_n23_α
 xchain00236_n22_β:
 jmp xchain00236_n32_α
.Lx00259_0:
 .quad .Lx00259_0_s
.Lx00259_0_s:
 .string "repeat"
# IR_LIT_STRING
 xchain00236_n23_α:
 mov qword ptr [rbp + 9088], 1
 mov rax, qword ptr [rip + .Lx00260_0]
 mov qword ptr [rbp + 9096], rax
 jmp xchain00236_n24_α
 xchain00236_n23_β:
 jmp xchain00236_n32_α
.Lx00260_0:
 .quad .Lx00260_0_s
.Lx00260_0_s:
 .string "return"
# IR_LIT_STRING
 xchain00236_n24_α:
 mov qword ptr [rbp + 9120], 1
 mov rax, qword ptr [rip + .Lx00261_0]
 mov qword ptr [rbp + 9128], rax
 jmp xchain00236_n25_α
 xchain00236_n24_β:
 jmp xchain00236_n32_α
.Lx00261_0:
 .quad .Lx00261_0_s
.Lx00261_0_s:
 .string "static"
# IR_LIT_STRING
 xchain00236_n25_α:
 mov qword ptr [rbp + 9152], 1
 mov rax, qword ptr [rip + .Lx00262_0]
 mov qword ptr [rbp + 9160], rax
 jmp xchain00236_n26_α
 xchain00236_n25_β:
 jmp xchain00236_n32_α
.Lx00262_0:
 .quad .Lx00262_0_s
.Lx00262_0_s:
 .string "suspend"
# IR_LIT_STRING
 xchain00236_n26_α:
 mov qword ptr [rbp + 9184], 1
 mov rax, qword ptr [rip + .Lx00263_0]
 mov qword ptr [rbp + 9192], rax
 jmp xchain00236_n27_α
 xchain00236_n26_β:
 jmp xchain00236_n32_α
.Lx00263_0:
 .quad .Lx00263_0_s
.Lx00263_0_s:
 .string "then"
# IR_LIT_STRING
 xchain00236_n27_α:
 mov qword ptr [rbp + 9216], 1
 mov rax, qword ptr [rip + .Lx00264_0]
 mov qword ptr [rbp + 9224], rax
 jmp xchain00236_n28_α
 xchain00236_n27_β:
 jmp xchain00236_n32_α
.Lx00264_0:
 .quad .Lx00264_0_s
.Lx00264_0_s:
 .string "to"
# IR_LIT_STRING
 xchain00236_n28_α:
 mov qword ptr [rbp + 9248], 1
 mov rax, qword ptr [rip + .Lx00265_0]
 mov qword ptr [rbp + 9256], rax
 jmp xchain00236_n29_α
 xchain00236_n28_β:
 jmp xchain00236_n32_α
.Lx00265_0:
 .quad .Lx00265_0_s
.Lx00265_0_s:
 .string "until"
# IR_LIT_STRING
 xchain00236_n29_α:
 mov qword ptr [rbp + 9280], 1
 mov rax, qword ptr [rip + .Lx00266_0]
 mov qword ptr [rbp + 9288], rax
 jmp xchain00236_n30_α
 xchain00236_n29_β:
 jmp xchain00236_n32_α
.Lx00266_0:
 .quad .Lx00266_0_s
.Lx00266_0_s:
 .string "while"
# IR_MAKE_LIST
 xchain00236_n30_α:
 mov rax, qword ptr [rbp + 8416]
 mov qword ptr [rbp + 7968], rax
 mov rax, qword ptr [rbp + 8424]
 mov qword ptr [rbp + 7976], rax
 mov rax, qword ptr [rbp + 8448]
 mov qword ptr [rbp + 7984], rax
 mov rax, qword ptr [rbp + 8456]
 mov qword ptr [rbp + 7992], rax
 mov rax, qword ptr [rbp + 8480]
 mov qword ptr [rbp + 8000], rax
 mov rax, qword ptr [rbp + 8488]
 mov qword ptr [rbp + 8008], rax
 mov rax, qword ptr [rbp + 8512]
 mov qword ptr [rbp + 8016], rax
 mov rax, qword ptr [rbp + 8520]
 mov qword ptr [rbp + 8024], rax
 mov rax, qword ptr [rbp + 8544]
 mov qword ptr [rbp + 8032], rax
 mov rax, qword ptr [rbp + 8552]
 mov qword ptr [rbp + 8040], rax
 mov rax, qword ptr [rbp + 8576]
 mov qword ptr [rbp + 8048], rax
 mov rax, qword ptr [rbp + 8584]
 mov qword ptr [rbp + 8056], rax
 mov rax, qword ptr [rbp + 8608]
 mov qword ptr [rbp + 8064], rax
 mov rax, qword ptr [rbp + 8616]
 mov qword ptr [rbp + 8072], rax
 mov rax, qword ptr [rbp + 8640]
 mov qword ptr [rbp + 8080], rax
 mov rax, qword ptr [rbp + 8648]
 mov qword ptr [rbp + 8088], rax
 mov rax, qword ptr [rbp + 8672]
 mov qword ptr [rbp + 8096], rax
 mov rax, qword ptr [rbp + 8680]
 mov qword ptr [rbp + 8104], rax
 mov rax, qword ptr [rbp + 8704]
 mov qword ptr [rbp + 8112], rax
 mov rax, qword ptr [rbp + 8712]
 mov qword ptr [rbp + 8120], rax
 mov rax, qword ptr [rbp + 8736]
 mov qword ptr [rbp + 8128], rax
 mov rax, qword ptr [rbp + 8744]
 mov qword ptr [rbp + 8136], rax
 mov rax, qword ptr [rbp + 8768]
 mov qword ptr [rbp + 8144], rax
 mov rax, qword ptr [rbp + 8776]
 mov qword ptr [rbp + 8152], rax
 mov rax, qword ptr [rbp + 8800]
 mov qword ptr [rbp + 8160], rax
 mov rax, qword ptr [rbp + 8808]
 mov qword ptr [rbp + 8168], rax
 mov rax, qword ptr [rbp + 8832]
 mov qword ptr [rbp + 8176], rax
 mov rax, qword ptr [rbp + 8840]
 mov qword ptr [rbp + 8184], rax
 mov rax, qword ptr [rbp + 8864]
 mov qword ptr [rbp + 8192], rax
 mov rax, qword ptr [rbp + 8872]
 mov qword ptr [rbp + 8200], rax
 mov rax, qword ptr [rbp + 8896]
 mov qword ptr [rbp + 8208], rax
 mov rax, qword ptr [rbp + 8904]
 mov qword ptr [rbp + 8216], rax
 mov rax, qword ptr [rbp + 8928]
 mov qword ptr [rbp + 8224], rax
 mov rax, qword ptr [rbp + 8936]
 mov qword ptr [rbp + 8232], rax
 mov rax, qword ptr [rbp + 8960]
 mov qword ptr [rbp + 8240], rax
 mov rax, qword ptr [rbp + 8968]
 mov qword ptr [rbp + 8248], rax
 mov rax, qword ptr [rbp + 8992]
 mov qword ptr [rbp + 8256], rax
 mov rax, qword ptr [rbp + 9000]
 mov qword ptr [rbp + 8264], rax
 mov rax, qword ptr [rbp + 9024]
 mov qword ptr [rbp + 8272], rax
 mov rax, qword ptr [rbp + 9032]
 mov qword ptr [rbp + 8280], rax
 mov rax, qword ptr [rbp + 9056]
 mov qword ptr [rbp + 8288], rax
 mov rax, qword ptr [rbp + 9064]
 mov qword ptr [rbp + 8296], rax
 mov rax, qword ptr [rbp + 9088]
 mov qword ptr [rbp + 8304], rax
 mov rax, qword ptr [rbp + 9096]
 mov qword ptr [rbp + 8312], rax
 mov rax, qword ptr [rbp + 9120]
 mov qword ptr [rbp + 8320], rax
 mov rax, qword ptr [rbp + 9128]
 mov qword ptr [rbp + 8328], rax
 mov rax, qword ptr [rbp + 9152]
 mov qword ptr [rbp + 8336], rax
 mov rax, qword ptr [rbp + 9160]
 mov qword ptr [rbp + 8344], rax
 mov rax, qword ptr [rbp + 9184]
 mov qword ptr [rbp + 8352], rax
 mov rax, qword ptr [rbp + 9192]
 mov qword ptr [rbp + 8360], rax
 mov rax, qword ptr [rbp + 9216]
 mov qword ptr [rbp + 8368], rax
 mov rax, qword ptr [rbp + 9224]
 mov qword ptr [rbp + 8376], rax
 mov rax, qword ptr [rbp + 9248]
 mov qword ptr [rbp + 8384], rax
 mov rax, qword ptr [rbp + 9256]
 mov qword ptr [rbp + 8392], rax
 mov rax, qword ptr [rbp + 9280]
 mov qword ptr [rbp + 8400], rax
 mov rax, qword ptr [rbp + 9288]
 mov qword ptr [rbp + 8408], rax
 lea rdi, [rbp + 7968]
 mov esi, 28
 call rt_make_list@PLT
 mov qword ptr [rbp + 7952], rax
 mov qword ptr [rbp + 7960], rdx
 jmp xchain00236_n31_α
 xchain00236_n30_β:
 jmp xchain00236_n32_α
# IR_ASSIGN gva
 xchain00236_n31_α:
 mov rax, qword ptr [rbp + 7952]
 mov rdx, qword ptr [rbp + 7960]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 7936], rax
 mov qword ptr [rbp + 7944], rdx
 jmp xchain00236_n32_α
 xchain00236_n31_β:
 jmp xchain00236_n32_α
# IR_LIT_INTEGER
 xchain00236_n32_α:
 mov qword ptr [rbp + 7904], 6
 mov rax, qword ptr [rip + .Lx00267_0]
 mov qword ptr [rbp + 7912], rax
 jmp xchain00236_n33_α
 xchain00236_n32_β:
 jmp xchain00236_n34_α
.Lx00267_0:
 .quad 0
# IR_ASSIGN gva
 xchain00236_n33_α:
 mov rax, qword ptr [rbp + 7904]
 mov rdx, qword ptr [rbp + 7912]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 7888], rax
 mov qword ptr [rbp + 7896], rdx
 jmp xchain00236_n34_α
 xchain00236_n33_β:
 jmp xchain00236_n34_α
 xchain00236_n34_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn985: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn985]
 lea rsi, [rbp + 7872]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7856], rax
 mov qword ptr [rbp + 7864], rdx
 cmp eax, 99
 je xchain00236_n36_α
 jmp xchain00236_n35_α
 xchain00236_n34_β:
 jmp xchain00236_n36_α
# IR_ASSIGN gva
 xchain00236_n35_α:
 mov rax, qword ptr [rbp + 7856]
 mov rdx, qword ptr [rbp + 7864]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 7840], rax
 mov qword ptr [rbp + 7848], rdx
 jmp xchain00236_n36_α
 xchain00236_n35_β:
 jmp xchain00236_n36_α
# IR_MAKE_LIST
 xchain00236_n36_α:
 lea rdi, [rbp + 7840]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 7824], rax
 mov qword ptr [rbp + 7832], rdx
 jmp xchain00236_n37_α
 xchain00236_n36_β:
 jmp xchain00236_n38_α
 xchain00236_n37_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 7824]
 mov rdx, qword ptr [rbp + 7832]
 mov qword ptr [rbp + 9440], rax
 mov qword ptr [rbp + 9448], rdx
 mov qword ptr [rbp + 7808], rax
 mov qword ptr [rbp + 7816], rdx
 jmp xchain00236_n38_α
 xchain00236_n37_β:
 jmp xchain00236_n38_α
# IR_MAKE_LIST
 xchain00236_n38_α:
 lea rdi, [rbp + 7808]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 7792], rax
 mov qword ptr [rbp + 7800], rdx
 jmp xchain00236_n39_α
 xchain00236_n38_β:
 jmp xchain00236_n40_α
# IR_ASSIGN gva
 xchain00236_n39_α:
 mov rax, qword ptr [rbp + 7792]
 mov rdx, qword ptr [rbp + 7800]
 mov qword ptr [1879052480], rax
 mov qword ptr [1879052488], rdx
 mov qword ptr [rbp + 7776], rax
 mov qword ptr [rbp + 7784], rdx
 jmp xchain00236_n40_α
 xchain00236_n39_β:
 jmp xchain00236_n40_α
# IR_MAKE_LIST
 xchain00236_n40_α:
 lea rdi, [rbp + 7776]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 7760], rax
 mov qword ptr [rbp + 7768], rdx
 jmp xchain00236_n41_α
 xchain00236_n40_β:
 jmp xchain00236_n42_α
# IR_ASSIGN gva
 xchain00236_n41_α:
 mov rax, qword ptr [rbp + 7760]
 mov rdx, qword ptr [rbp + 7768]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rbp + 7744], rax
 mov qword ptr [rbp + 7752], rdx
 jmp xchain00236_n42_α
 xchain00236_n41_β:
 jmp xchain00236_n42_α
# IR_LIT_STRING
 xchain00236_n42_α:
 mov qword ptr [rbp + 7712], 1
 mov rax, qword ptr [rip + .Lx00268_0]
 mov qword ptr [rbp + 7720], rax
 jmp xchain00236_n43_α
 xchain00236_n42_β:
 jmp xchain00236_n44_α
.Lx00268_0:
 .quad .Lx00268_0_s
.Lx00268_0_s:
 .string "global"
 xchain00236_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 7712]
 mov rdx, qword ptr [rbp + 7720]
 mov qword ptr [rbp + 9472], rax
 mov qword ptr [rbp + 9480], rdx
 mov qword ptr [rbp + 7696], rax
 mov qword ptr [rbp + 7704], rdx
 jmp xchain00236_n44_α
 xchain00236_n43_β:
 jmp xchain00236_n44_α
# IR_LIT_CHARSET
 xchain00236_n44_α:
 mov qword ptr [rbp + 7632], 1
 mov dword ptr [rbp + 7636], -1
 mov rax, qword ptr [rip + .Lx00269_0]
 mov qword ptr [rbp + 7640], rax
 jmp xchain00236_n45_α
 xchain00236_n44_β:
 jmp xchain00236_n48_α
.Lx00269_0:
 .quad .Lx00269_0_s
.Lx00269_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
# IR_LIT_CHARSET
 xchain00236_n45_α:
 mov qword ptr [rbp + 7664], 1
 mov dword ptr [rbp + 7668], -1
 mov rax, qword ptr [rip + .Lx00270_0]
 mov qword ptr [rbp + 7672], rax
 jmp xchain00236_n46_α
 xchain00236_n45_β:
 jmp xchain00236_n48_α
.Lx00270_0:
 .quad .Lx00270_0_s
.Lx00270_0_s:
 .string "_"
 xchain00236_n46_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 7632]
 mov rsi, qword ptr [rbp + 7640]
 mov rdx, qword ptr [rbp + 7664]
 mov rcx, qword ptr [rbp + 7672]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00236_n48_α
 mov qword ptr [rbp + 7600], rax
 mov qword ptr [rbp + 7608], rdx
 jmp xchain00236_n47_α
 xchain00236_n46_β:
 jmp xchain00236_n48_α
# IR_ASSIGN gva
 xchain00236_n47_α:
 mov rax, qword ptr [rbp + 7600]
 mov rdx, qword ptr [rbp + 7608]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 7584], rax
 mov qword ptr [rbp + 7592], rdx
 jmp xchain00236_n48_α
 xchain00236_n47_β:
 jmp xchain00236_n48_α
# IR_VAR
 xchain00236_n48_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 7520], rax
 mov qword ptr [rbp + 7528], rdx
 jmp xchain00236_n49_α
 xchain00236_n48_β:
 jmp xchain00236_n50_α
# IR_LIT_CHARSET
 xchain00236_n49_α:
 mov qword ptr [rbp + 7552], 1
 mov dword ptr [rbp + 7556], -1
 mov rax, qword ptr [rip + .Lx00271_0]
 mov qword ptr [rbp + 7560], rax
 jmp xchain00236_n51_α
 xchain00236_n49_β:
 jmp xchain00236_n50_α
.Lx00271_0:
 .quad .Lx00271_0_s
.Lx00271_0_s:
 .string "0123456789"
# IR_VAR
 xchain00236_n50_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 7408], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 7416], rax
 jmp xchain00236_n52_α
 xchain00236_n50_β:
 jmp xchain00236_n53_α
 xchain00236_n51_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 7520]
 mov rsi, qword ptr [rbp + 7528]
 mov rdx, qword ptr [rbp + 7552]
 mov rcx, qword ptr [rbp + 7560]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00236_n50_α
 mov qword ptr [rbp + 7488], rax
 mov qword ptr [rbp + 7496], rdx
 jmp xchain00236_n54_α
 xchain00236_n51_β:
 jmp xchain00236_n50_α
# IR_LIT_STRING
 xchain00236_n52_α:
 mov qword ptr [rbp + 7440], 1
 mov rax, qword ptr [rip + .Lx00272_0]
 mov qword ptr [rbp + 7448], rax
 jmp xchain00236_n55_α
 xchain00236_n52_β:
 jmp xchain00236_n53_α
.Lx00272_0:
 .quad .Lx00272_0_s
.Lx00272_0_s:
 .string "qxw+l+c+"
# IR_VAR_REF
 xchain00236_n53_α:
 lea rdi, [rbp + 9520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7216], rax
 mov qword ptr [rbp + 7224], rdx
 jmp xchain00236_n56_α
 xchain00236_n53_β:
 jmp xchain00236_n60_α
# IR_ASSIGN gva
 xchain00236_n54_α:
 mov rax, qword ptr [rbp + 7488]
 mov rdx, qword ptr [rbp + 7496]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 7472], rax
 mov qword ptr [rbp + 7480], rdx
 jmp xchain00236_n50_α
 xchain00236_n54_β:
 jmp xchain00236_n50_α
 xchain00236_n55_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7408]
 mov rdx, qword ptr [rbp + 7416]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 7440]
 mov rdx, qword ptr [rbp + 7448]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00273_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00273_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00273_3]
 lea rdx, [rip + .Lx00273_4]
 jmp rax
.Lx00273_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00273_2
.Lx00273_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00273_2
.Lx00273_1:
 call rt_faildescr@PLT
.Lx00273_2:
 mov qword ptr [rbp + 7344], rax
 mov qword ptr [rbp + 7352], rdx
 cmp eax, 99
 je xchain00236_n53_α
 jmp xchain00236_n57_α
 xchain00236_n55_β:
 jmp xchain00236_n53_α
.Lx00273_0:
 .quad .Lx00273_0_s
.Lx00273_0_s:
 .string "options"
# IR_LIT_STRING
 xchain00236_n56_α:
 mov qword ptr [rbp + 7248], 1
 mov rax, qword ptr [rip + .Lx00274_0]
 mov qword ptr [rbp + 7256], rax
 jmp xchain00236_n58_α
 xchain00236_n56_β:
 jmp xchain00236_n60_α
.Lx00274_0:
 .quad .Lx00274_0_s
.Lx00274_0_s:
 .string "q"
 xchain00236_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 7344]
 mov rdx, qword ptr [rbp + 7352]
 mov qword ptr [rbp + 9520], rax
 mov qword ptr [rbp + 9528], rdx
 mov qword ptr [rbp + 7328], rax
 mov qword ptr [rbp + 7336], rdx
 jmp xchain00236_n53_α
 xchain00236_n57_β:
 jmp xchain00236_n53_α
# IR_SUBSCRIPT x[i] variable
 xchain00236_n58_α:
 mov rdi, qword ptr [rbp + 7216]
 mov rsi, qword ptr [rbp + 7224]
 mov rdx, qword ptr [rbp + 7248]
 mov rcx, qword ptr [rbp + 7256]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00236_n60_α
 mov qword ptr [rbp + 7280], rax
 mov qword ptr [rbp + 7288], rdx
 jmp xchain00236_n59_α
 xchain00236_n58_β:
 jmp xchain00236_n60_α
# IR_DEREF variable -> value
 xchain00236_n59_α:
 mov rdi, qword ptr [rbp + 7280]
 mov rsi, qword ptr [rbp + 7288]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00236_n60_α
 mov qword ptr [rbp + 7312], rax
 mov qword ptr [rbp + 7320], rdx
 jmp xchain00236_n61_α
 xchain00236_n59_β:
 jmp xchain00236_n60_α
# IR_VAR_REF
 xchain00236_n60_α:
 lea rdi, [rbp + 9520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6992], rax
 mov qword ptr [rbp + 7000], rdx
 jmp xchain00236_n62_α
 xchain00236_n60_β:
 jmp xchain00236_n67_α
# IR_UNOP
 xchain00236_n61_α:
 mov eax, dword ptr [rbp + 7312]
 cmp eax, 99
 je xchain00236_n60_α
 cmp eax, 0
 je xchain00236_n60_α
 mov rax, qword ptr [rbp + 7312]
 mov qword ptr [rbp + 7184], rax
 mov rax, qword ptr [rbp + 7320]
 mov qword ptr [rbp + 7192], rax
 jmp xchain00236_n63_α
 xchain00236_n61_β:
 jmp xchain00236_n60_α
# IR_LIT_STRING
 xchain00236_n62_α:
 mov qword ptr [rbp + 7024], 1
 mov rax, qword ptr [rip + .Lx00275_0]
 mov qword ptr [rbp + 7032], rax
 jmp xchain00236_n64_α
 xchain00236_n62_β:
 jmp xchain00236_n67_α
.Lx00275_0:
 .quad .Lx00275_0_s
.Lx00275_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain00236_n63_α:
 mov qword ptr [rbp + 7152], 6
 mov rax, qword ptr [rip + .Lx00276_0]
 mov qword ptr [rbp + 7160], rax
 jmp xchain00236_n65_α
 xchain00236_n63_β:
 jmp xchain00236_n60_α
.Lx00276_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00236_n64_α:
 mov rdi, qword ptr [rbp + 6992]
 mov rsi, qword ptr [rbp + 7000]
 mov rdx, qword ptr [rbp + 7024]
 mov rcx, qword ptr [rbp + 7032]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00236_n67_α
 mov qword ptr [rbp + 7056], rax
 mov qword ptr [rbp + 7064], rdx
 jmp xchain00236_n66_α
 xchain00236_n64_β:
 jmp xchain00236_n67_α
# IR_ASSIGN gva
 xchain00236_n65_α:
 mov rax, qword ptr [rbp + 7152]
 mov rdx, qword ptr [rbp + 7160]
 mov qword ptr [1879052384], rax
 mov qword ptr [1879052392], rdx
 mov qword ptr [rbp + 7136], rax
 mov qword ptr [rbp + 7144], rdx
 jmp xchain00236_n68_α
 xchain00236_n65_β:
 jmp xchain00236_n60_α
# IR_DEREF variable -> value
 xchain00236_n66_α:
 mov rdi, qword ptr [rbp + 7056]
 mov rsi, qword ptr [rbp + 7064]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00236_n67_α
 mov qword ptr [rbp + 7088], rax
 mov qword ptr [rbp + 7096], rdx
 jmp xchain00236_n69_α
 xchain00236_n66_β:
 jmp xchain00236_n67_α
# IR_VAR_REF
 xchain00236_n67_α:
 lea rdi, [rbp + 9520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6768], rax
 mov qword ptr [rbp + 6776], rdx
 jmp xchain00236_n70_α
 xchain00236_n67_β:
 jmp xchain00236_n76_α
# IR_MOVE_LABEL
 xchain00236_n68_α:
 mov rax, qword ptr [rbp + 7136]
 mov qword ptr [rbp + 7104], rax
 mov rax, qword ptr [rbp + 7144]
 mov qword ptr [rbp + 7112], rax
 lea rax, [rip + xchain00236_n60_α]
 mov qword ptr [rbp + 7120], rax
 jmp xchain00236_n60_α
 xchain00236_n68_β:
 jmp xchain00236_n60_α
# IR_UNOP
 xchain00236_n69_α:
 mov eax, dword ptr [rbp + 7088]
 cmp eax, 99
 je xchain00236_n67_α
 cmp eax, 0
 je xchain00236_n67_α
 mov rax, qword ptr [rbp + 7088]
 mov qword ptr [rbp + 6960], rax
 mov rax, qword ptr [rbp + 7096]
 mov qword ptr [rbp + 6968], rax
 jmp xchain00236_n72_α
 xchain00236_n69_β:
 jmp xchain00236_n67_α
# IR_LIT_STRING
 xchain00236_n70_α:
 mov qword ptr [rbp + 6800], 1
 mov rax, qword ptr [rip + .Lx00277_0]
 mov qword ptr [rbp + 6808], rax
 jmp xchain00236_n73_α
 xchain00236_n70_β:
 jmp xchain00236_n76_α
.Lx00277_0:
 .quad .Lx00277_0_s
.Lx00277_0_s:
 .string "w"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00236_n71_α:
 jmp qword ptr [rbp + 7120]
 xchain00236_n71_β:
 jmp xchain00236_n60_α
# IR_LIT_INTEGER
 xchain00236_n72_α:
 mov qword ptr [rbp + 6928], 6
 mov rax, qword ptr [rip + .Lx00278_0]
 mov qword ptr [rbp + 6936], rax
 jmp xchain00236_n74_α
 xchain00236_n72_β:
 jmp xchain00236_n67_α
.Lx00278_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00236_n73_α:
 mov rdi, qword ptr [rbp + 6768]
 mov rsi, qword ptr [rbp + 6776]
 mov rdx, qword ptr [rbp + 6800]
 mov rcx, qword ptr [rbp + 6808]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00236_n76_α
 mov qword ptr [rbp + 6832], rax
 mov qword ptr [rbp + 6840], rdx
 jmp xchain00236_n75_α
 xchain00236_n73_β:
 jmp xchain00236_n76_α
# IR_ASSIGN gva
 xchain00236_n74_α:
 mov rax, qword ptr [rbp + 6928]
 mov rdx, qword ptr [rbp + 6936]
 mov qword ptr [1879052416], rax
 mov qword ptr [1879052424], rdx
 mov qword ptr [rbp + 6912], rax
 mov qword ptr [rbp + 6920], rdx
 jmp xchain00236_n77_α
 xchain00236_n74_β:
 jmp xchain00236_n67_α
# IR_DEREF variable -> value
 xchain00236_n75_α:
 mov rdi, qword ptr [rbp + 6832]
 mov rsi, qword ptr [rbp + 6840]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00236_n76_α
 mov qword ptr [rbp + 6864], rax
 mov qword ptr [rbp + 6872], rdx
 jmp xchain00236_n78_α
 xchain00236_n75_β:
 jmp xchain00236_n76_α
# IR_VAR_REF
 xchain00236_n76_α:
 lea rdi, [rbp + 9520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6608], rax
 mov qword ptr [rbp + 6616], rdx
 jmp xchain00236_n79_α
 xchain00236_n76_β:
 jmp xchain00236_n84_α
# IR_MOVE_LABEL
 xchain00236_n77_α:
 mov rax, qword ptr [rbp + 6912]
 mov qword ptr [rbp + 6880], rax
 mov rax, qword ptr [rbp + 6920]
 mov qword ptr [rbp + 6888], rax
 lea rax, [rip + xchain00236_n67_α]
 mov qword ptr [rbp + 6896], rax
 jmp xchain00236_n67_α
 xchain00236_n77_β:
 jmp xchain00236_n67_α
# IR_UNOP
 xchain00236_n78_α:
 mov eax, dword ptr [rbp + 6864]
 cmp eax, 99
 je xchain00236_n76_α
 cmp eax, 0
 je xchain00236_n76_α
 mov rax, qword ptr [rbp + 6864]
 mov qword ptr [rbp + 6736], rax
 mov rax, qword ptr [rbp + 6872]
 mov qword ptr [rbp + 6744], rax
 jmp xchain00236_n81_α
 xchain00236_n78_β:
 jmp xchain00236_n76_α
# IR_LIT_STRING
 xchain00236_n79_α:
 mov qword ptr [rbp + 6640], 1
 mov rax, qword ptr [rip + .Lx00279_0]
 mov qword ptr [rbp + 6648], rax
 jmp xchain00236_n82_α
 xchain00236_n79_β:
 jmp xchain00236_n84_α
.Lx00279_0:
 .quad .Lx00279_0_s
.Lx00279_0_s:
 .string "l"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00236_n80_α:
 jmp qword ptr [rbp + 6896]
 xchain00236_n80_β:
 jmp xchain00236_n67_α
# IR_ASSIGN gva
 xchain00236_n81_α:
 mov rax, qword ptr [rbp + 6736]
 mov rdx, qword ptr [rbp + 6744]
 mov qword ptr [1879052432], rax
 mov qword ptr [1879052440], rdx
 mov qword ptr [rbp + 6720], rax
 mov qword ptr [rbp + 6728], rdx
 jmp xchain00236_n76_α
 xchain00236_n81_β:
 jmp xchain00236_n76_α
# IR_SUBSCRIPT x[i] variable
 xchain00236_n82_α:
 mov rdi, qword ptr [rbp + 6608]
 mov rsi, qword ptr [rbp + 6616]
 mov rdx, qword ptr [rbp + 6640]
 mov rcx, qword ptr [rbp + 6648]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00236_n84_α
 mov qword ptr [rbp + 6672], rax
 mov qword ptr [rbp + 6680], rdx
 jmp xchain00236_n83_α
 xchain00236_n82_β:
 jmp xchain00236_n84_α
# IR_DEREF variable -> value
 xchain00236_n83_α:
 mov rdi, qword ptr [rbp + 6672]
 mov rsi, qword ptr [rbp + 6680]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00236_n84_α
 mov qword ptr [rbp + 6704], rax
 mov qword ptr [rbp + 6712], rdx
 jmp xchain00236_n85_α
 xchain00236_n83_β:
 jmp xchain00236_n84_α
# IR_VAR_REF
 xchain00236_n84_α:
 lea rdi, [rbp + 9520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6448], rax
 mov qword ptr [rbp + 6456], rdx
 jmp xchain00236_n86_α
 xchain00236_n84_β:
 jmp xchain00236_n90_α
# IR_UNOP
 xchain00236_n85_α:
 mov eax, dword ptr [rbp + 6704]
 cmp eax, 99
 je xchain00236_n84_α
 cmp eax, 0
 je xchain00236_n84_α
 mov rax, qword ptr [rbp + 6704]
 mov qword ptr [rbp + 6576], rax
 mov rax, qword ptr [rbp + 6712]
 mov qword ptr [rbp + 6584], rax
 jmp xchain00236_n87_α
 xchain00236_n85_β:
 jmp xchain00236_n84_α
# IR_LIT_STRING
 xchain00236_n86_α:
 mov qword ptr [rbp + 6480], 1
 mov rax, qword ptr [rip + .Lx00280_0]
 mov qword ptr [rbp + 6488], rax
 jmp xchain00236_n88_α
 xchain00236_n86_β:
 jmp xchain00236_n90_α
.Lx00280_0:
 .quad .Lx00280_0_s
.Lx00280_0_s:
 .string "c"
# IR_ASSIGN gva
 xchain00236_n87_α:
 mov rax, qword ptr [rbp + 6576]
 mov rdx, qword ptr [rbp + 6584]
 mov qword ptr [1879052448], rax
 mov qword ptr [1879052456], rdx
 mov qword ptr [rbp + 6560], rax
 mov qword ptr [rbp + 6568], rdx
 jmp xchain00236_n84_α
 xchain00236_n87_β:
 jmp xchain00236_n84_α
# IR_SUBSCRIPT x[i] variable
 xchain00236_n88_α:
 mov rdi, qword ptr [rbp + 6448]
 mov rsi, qword ptr [rbp + 6456]
 mov rdx, qword ptr [rbp + 6480]
 mov rcx, qword ptr [rbp + 6488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00236_n90_α
 mov qword ptr [rbp + 6512], rax
 mov qword ptr [rbp + 6520], rdx
 jmp xchain00236_n89_α
 xchain00236_n88_β:
 jmp xchain00236_n90_α
# IR_DEREF variable -> value
 xchain00236_n89_α:
 mov rdi, qword ptr [rbp + 6512]
 mov rsi, qword ptr [rbp + 6520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00236_n90_α
 mov qword ptr [rbp + 6544], rax
 mov qword ptr [rbp + 6552], rdx
 jmp xchain00236_n91_α
 xchain00236_n89_β:
 jmp xchain00236_n90_α
# IR_VAR_REF
 xchain00236_n90_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6256], rax
 mov qword ptr [rbp + 6264], rdx
 jmp xchain00236_n92_α
 xchain00236_n90_β:
 jmp xchain00236_n96_α
# IR_UNOP
 xchain00236_n91_α:
 mov eax, dword ptr [rbp + 6544]
 cmp eax, 99
 je xchain00236_n90_α
 cmp eax, 0
 je xchain00236_n90_α
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 6416], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 6424], rax
 jmp xchain00236_n93_α
 xchain00236_n91_β:
 jmp xchain00236_n90_α
# IR_LIT_INTEGER
 xchain00236_n92_α:
 mov qword ptr [rbp + 6288], 6
 mov rax, qword ptr [rip + .Lx00281_0]
 mov qword ptr [rbp + 6296], rax
 jmp xchain00236_n94_α
 xchain00236_n92_β:
 jmp xchain00236_n96_α
.Lx00281_0:
 .quad 1
# IR_ASSIGN gva
 xchain00236_n93_α:
 mov rax, qword ptr [rbp + 6416]
 mov rdx, qword ptr [rbp + 6424]
 mov qword ptr [1879052464], rax
 mov qword ptr [1879052472], rdx
 mov qword ptr [rbp + 6400], rax
 mov qword ptr [rbp + 6408], rdx
 jmp xchain00236_n90_α
 xchain00236_n93_β:
 jmp xchain00236_n90_α
# IR_SUBSCRIPT x[i] variable
 xchain00236_n94_α:
 mov rdi, qword ptr [rbp + 6256]
 mov rsi, qword ptr [rbp + 6264]
 mov rdx, qword ptr [rbp + 6288]
 mov rcx, qword ptr [rbp + 6296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00236_n96_α
 mov qword ptr [rbp + 6320], rax
 mov qword ptr [rbp + 6328], rdx
 jmp xchain00236_n95_α
 xchain00236_n94_β:
 jmp xchain00236_n96_α
# IR_DEREF variable -> value
 xchain00236_n95_α:
 mov rdi, qword ptr [rbp + 6320]
 mov rsi, qword ptr [rbp + 6328]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00236_n96_α
 mov qword ptr [rbp + 6352], rax
 mov qword ptr [rbp + 6360], rdx
 jmp xchain00236_n97_α
 xchain00236_n95_β:
 jmp xchain00236_n96_α
 xchain00236_n96_α:
 mov rdi, qword ptr [rip + .Lx00282_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00282_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00282_3]
 lea rdx, [rip + .Lx00282_4]
 jmp rax
.Lx00282_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00282_2
.Lx00282_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00282_2
.Lx00282_1:
 call rt_faildescr@PLT
.Lx00282_2:
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain00236_n99_α
 jmp xchain00236_n98_α
 xchain00236_n96_β:
 jmp xchain00236_n99_α
.Lx00282_0:
 .quad .Lx00282_0_s
.Lx00282_0_s:
 .string "getword"
# IR_LIT_STRING
 xchain00236_n97_α:
 mov qword ptr [rbp + 6368], 1
 mov rax, qword ptr [rip + .Lx00283_0]
 mov qword ptr [rbp + 6376], rax
 jmp xchain00236_n00026_α
 xchain00236_n97_β:
 jmp xchain00236_n96_α
.Lx00283_0:
 .quad .Lx00283_0_s
.Lx00283_0_s:
 .string "r"
 xchain00236_n98_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1152]
 mov rdx, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 9456], rax
 mov qword ptr [rbp + 9464], rdx
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00236_n00027_α
 xchain00236_n98_β:
 jmp xchain00236_n99_α
# IR_VAR
 xchain00236_n99_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00236_n00029_α
 xchain00236_n99_β:
 jmp xchain00236_n00030_α
 xchain00236_n00026_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6352] -> [zr+6208]
 mov rax, qword ptr [rbp + 6352]
 mov qword ptr [rbp + 6208], rax
 mov rax, qword ptr [rbp + 6360]
 mov qword ptr [rbp + 6216], rax
# marshal arg1 = producer-box slot [zr+6368] -> [zr+6224]
 mov rax, qword ptr [rbp + 6368]
 mov qword ptr [rbp + 6224], rax
 mov rax, qword ptr [rbp + 6376]
 mov qword ptr [rbp + 6232], rax
  .section .rodata
  .Lrkfn1068: .string "open"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1068]
 lea rsi, [rbp + 6208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6192], rax
 mov qword ptr [rbp + 6200], rdx
 cmp eax, 99
 je xchain00236_n96_α
 jmp xchain00236_n00024_α
 xchain00236_n00026_β:
 jmp xchain00236_n96_α
# IR_VAR
 xchain00236_n00027_α:
 mov rax, qword ptr [rbp + 9456]
 mov qword ptr [rbp + 6112], rax
 mov rax, qword ptr [rbp + 9464]
 mov qword ptr [rbp + 6120], rax
 jmp xchain00236_n00032_α
 xchain00236_n00027_β:
 jmp xchain00236_n00034_α
 xchain00236_n00029_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1104]
 mov rdx, qword ptr [rbp + 1112]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00284_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00284_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00284_3]
 lea rdx, [rip + .Lx00284_4]
 jmp rax
.Lx00284_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00284_2
.Lx00284_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00284_2
.Lx00284_1:
 call rt_faildescr@PLT
.Lx00284_2:
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain00236_n00030_α
 jmp xchain00236_n00035_α
 xchain00236_n00029_β:
 jmp xchain00236_n00030_α
.Lx00284_0:
 .quad .Lx00284_0_s
.Lx00284_0_s:
 .string "format"
# IR_LIT_STRING
 xchain00236_n00030_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx00285_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00236_n00037_α
 xchain00236_n00030_β:
 jmp xchain00236_n00043_α
.Lx00285_0:
 .quad .Lx00285_0_s
.Lx00285_0_s:
 .string "\n\nprocedures:\tlines:\n"
# IR_ASSIGN gva
 xchain00236_n00024_α:
 mov rax, qword ptr [rbp + 6192]
 mov rdx, qword ptr [rbp + 6200]
 mov qword ptr [1879052400], rax
 mov qword ptr [1879052408], rdx
 mov qword ptr [rbp + 6176], rax
 mov qword ptr [rbp + 6184], rdx
 jmp xchain00236_n96_α
 xchain00236_n00024_β:
 jmp xchain00236_n96_α
# IR_LIT_STRING
 xchain00236_n00032_α:
 mov qword ptr [rbp + 6144], 1
 mov rax, qword ptr [rip + .Lx00286_0]
 mov qword ptr [rbp + 6152], rax
 jmp xchain00236_n00038_α
 xchain00236_n00032_β:
 jmp xchain00236_n00034_α
.Lx00286_0:
 .quad .Lx00286_0_s
.Lx00286_0_s:
 .string "link"
# IR_VAR
 xchain00236_n00034_α:
 mov rax, qword ptr [rbp + 9456]
 mov qword ptr [rbp + 6016], rax
 mov rax, qword ptr [rbp + 9464]
 mov qword ptr [rbp + 6024], rax
 jmp xchain00236_n00039_α
 xchain00236_n00034_β:
 jmp xchain00236_n00048_α
# IR_LIST_BANG
 xchain00236_n00035_α:
 mov qword ptr [rbp + 1040], 0
.Lx00287_0:
 mov rdi, qword ptr [rbp + 1056]
 mov rsi, qword ptr [rbp + 1064]
 mov rdx, qword ptr [rbp + 1040]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp rax, 99
 je xchain00236_n00030_α
 jmp xchain00236_n00001_α
 xchain00236_n00035_β:
 inc qword ptr [rbp + 1040]
 jmp .Lx00287_0
 xchain00236_n00037_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+912]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 920], rax
  .section .rodata
  .Lrkfn1081: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1081]
 lea rsi, [rbp + 912]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain00236_n00043_α
 jmp xchain00236_n00043_α
 xchain00236_n00037_β:
 jmp xchain00236_n00043_α
 xchain00236_n00038_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 9456]
 mov rsi, qword ptr [rbp + 9464]
 mov rdx, qword ptr [rbp + 6144]
 mov rcx, qword ptr [rbp + 6152]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00236_n00034_α
 mov rdi, qword ptr [rbp + 6144]
 mov rsi, qword ptr [rbp + 6152]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 6080], rax
 mov qword ptr [rbp + 6088], rdx
 jmp xchain00236_n00044_α
 xchain00236_n00038_β:
 jmp xchain00236_n00034_α
# IR_LIT_STRING
 xchain00236_n00039_α:
 mov qword ptr [rbp + 6048], 1
 mov rax, qword ptr [rip + .Lx00288_0]
 mov qword ptr [rbp + 6056], rax
 jmp xchain00236_n00045_α
 xchain00236_n00039_β:
 jmp xchain00236_n00048_α
.Lx00288_0:
 .quad .Lx00288_0_s
.Lx00288_0_s:
 .string "procedure"
# IR_VAR
 xchain00236_n00048_α:
 mov rax, qword ptr [rbp + 9456]
 mov qword ptr [rbp + 5824], rax
 mov rax, qword ptr [rbp + 9464]
 mov qword ptr [rbp + 5832], rax
 jmp xchain00236_n00002_α
 xchain00236_n00048_β:
 jmp xchain00236_n00047_α
 xchain00236_n00001_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+992]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1000], rax
  .section .rodata
  .Lrkfn1087: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1087]
 lea rsi, [rbp + 992]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain00236_n00030_α
 jmp xchain00236_n00035_β
 xchain00236_n00001_β:
 jmp xchain00236_n00030_α
# IR_MAKE_LIST
 xchain00236_n00043_α:
 lea rdi, [rbp + 896]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain00236_n00040_α
 xchain00236_n00043_β:
 jmp xchain00236_n00004_α
# IR_MAKE_LIST
 xchain00236_n00044_α:
 lea rdi, [rbp + 1312]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain00236_n00049_α
 xchain00236_n00044_β:
 jmp xchain00236_n00055_α
 xchain00236_n00045_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 9456]
 mov rsi, qword ptr [rbp + 9464]
 mov rdx, qword ptr [rbp + 6048]
 mov rcx, qword ptr [rbp + 6056]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00236_n00048_α
 mov rdi, qword ptr [rbp + 6048]
 mov rsi, qword ptr [rbp + 6056]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 5984], rax
 mov qword ptr [rbp + 5992], rdx
 jmp xchain00236_n00003_α
 xchain00236_n00045_β:
 jmp xchain00236_n00048_α
# IR_LIT_STRING
 xchain00236_n00002_α:
 mov qword ptr [rbp + 5952], 1
 mov rax, qword ptr [rip + .Lx00289_0]
 mov qword ptr [rbp + 5960], rax
 jmp xchain00236_n00051_α
 xchain00236_n00002_β:
 jmp xchain00236_n00058_α
.Lx00289_0:
 .quad .Lx00289_0_s
.Lx00289_0_s:
 .string "global"
# IR_VAR
 xchain00236_n00047_α:
 mov rax, qword ptr [rbp + 9456]
 mov qword ptr [rbp + 5632], rax
 mov rax, qword ptr [rbp + 9464]
 mov qword ptr [rbp + 5640], rax
 jmp xchain00236_n00052_α
 xchain00236_n00047_β:
 jmp xchain00236_n00054_α
 xchain00236_n00040_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 mov qword ptr [rbp + 9408], rax
 mov qword ptr [rbp + 9416], rdx
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00236_n00004_α
 xchain00236_n00040_β:
 jmp xchain00236_n00004_α
# IR_ASSIGN gva
 xchain00236_n00049_α:
 mov rax, qword ptr [rbp + 1296]
 mov rdx, qword ptr [rbp + 1304]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain00236_n00055_α
 xchain00236_n00049_β:
 jmp xchain00236_n00055_α
# IR_VAR
 xchain00236_n00003_α:
 mov rax, qword ptr [rbp + 9440]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 9448]
 mov qword ptr [rbp + 1848], rax
 jmp xchain00236_n00056_α
 xchain00236_n00003_β:
 jmp xchain00236_n00064_α
# IR_MOVE_LABEL
 xchain00236_n00051_α:
 mov rax, qword ptr [rbp + 5952]
 mov qword ptr [rbp + 5856], rax
 mov rax, qword ptr [rbp + 5960]
 mov qword ptr [rbp + 5864], rax
 lea rax, [rip + xchain00236_n00058_α]
 mov qword ptr [rbp + 5872], rax
 jmp xchain00236_n00005_α
 xchain00236_n00051_β:
 jmp xchain00236_n00047_α
# IR_LIT_STRING
 xchain00236_n00052_α:
 mov qword ptr [rbp + 5760], 1
 mov rax, qword ptr [rip + .Lx00290_0]
 mov qword ptr [rbp + 5768], rax
 jmp xchain00236_n00062_α
 xchain00236_n00052_β:
 jmp xchain00236_n00076_α
.Lx00290_0:
 .quad .Lx00290_0_s
.Lx00290_0_s:
 .string "local"
# IR_VAR
 xchain00236_n00054_α:
 mov rax, qword ptr [rbp + 9456]
 mov qword ptr [rbp + 5536], rax
 mov rax, qword ptr [rbp + 9464]
 mov qword ptr [rbp + 5544], rax
 jmp xchain00236_n00065_α
 xchain00236_n00054_β:
 jmp xchain00236_n00069_α
# IR_VAR
 xchain00236_n00004_α:
 mov rax, qword ptr [rbp + 9440]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 9448]
 mov qword ptr [rbp + 280], rax
 jmp xchain00236_n00066_α
 xchain00236_n00004_β:
 jmp xchain00236_n00070_α
# IR_LIT_STRING
 xchain00236_n00055_α:
 mov qword ptr [rbp + 1248], 1
 mov rax, qword ptr [rip + .Lx00291_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00236_n00067_α
 xchain00236_n00055_β:
 jmp xchain00236_n96_α
.Lx00291_0:
 .quad .Lx00291_0_s
.Lx00291_0_s:
 .string ""
# IR_LIT_STRING
 xchain00236_n00056_α:
 mov qword ptr [rbp + 1952], 1
 mov rax, qword ptr [rip + .Lx00292_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain00236_n00063_α
 xchain00236_n00056_β:
 jmp xchain00236_n00064_α
.Lx00292_0:
 .quad .Lx00292_0_s
.Lx00292_0_s:
 .string ""
 xchain00236_n00064_α:
 mov rdi, qword ptr [rip + .Lx00293_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00293_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00293_3]
 lea rdx, [rip + .Lx00293_4]
 jmp rax
.Lx00293_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00293_2
.Lx00293_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00293_2
.Lx00293_1:
 call rt_faildescr@PLT
.Lx00293_2:
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 cmp eax, 99
 je xchain00236_n99_α
 jmp xchain00236_n00068_α
 xchain00236_n00064_β:
 jmp xchain00236_n99_α
.Lx00293_0:
 .quad .Lx00293_0_s
.Lx00293_0_s:
 .string "getword"
 xchain00236_n00005_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 9456]
 mov rsi, qword ptr [rbp + 9464]
 mov rdx, qword ptr [rbp + 5856]
 mov rcx, qword ptr [rbp + 5864]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00236_n00060_α
 mov rdi, qword ptr [rbp + 5856]
 mov rsi, qword ptr [rbp + 5864]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 5792], rax
 mov qword ptr [rbp + 5800], rdx
 jmp xchain00236_n00072_α
 xchain00236_n00005_β:
 jmp xchain00236_n00060_α
# IR_LIT_STRING
 xchain00236_n00058_α:
 mov qword ptr [rbp + 5920], 1
 mov rax, qword ptr [rip + .Lx00294_0]
 mov qword ptr [rbp + 5928], rax
 jmp xchain00236_n00073_α
 xchain00236_n00058_β:
 jmp xchain00236_n00009_α
.Lx00294_0:
 .quad .Lx00294_0_s
.Lx00294_0_s:
 .string "link"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00236_n00060_α:
 jmp qword ptr [rbp + 5872]
 xchain00236_n00060_β:
 jmp xchain00236_n00047_α
# IR_MOVE_LABEL
 xchain00236_n00062_α:
 mov rax, qword ptr [rbp + 5760]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 5768]
 mov qword ptr [rbp + 5672], rax
 lea rax, [rip + xchain00236_n00076_α]
 mov qword ptr [rbp + 5680], rax
 jmp xchain00236_n00074_α
 xchain00236_n00062_β:
 jmp xchain00236_n00054_α
# IR_LIT_STRING
 xchain00236_n00065_α:
 mov qword ptr [rbp + 5568], 1
 mov rax, qword ptr [rip + .Lx00295_0]
 mov qword ptr [rbp + 5576], rax
 jmp xchain00236_n00078_α
 xchain00236_n00065_β:
 jmp xchain00236_n00069_α
.Lx00295_0:
 .quad .Lx00295_0_s
.Lx00295_0_s:
 .string "end"
# IR_VAR
 xchain00236_n00069_α:
 mov rax, qword ptr [rbp + 9456]
 mov qword ptr [rbp + 5408], rax
 mov rax, qword ptr [rbp + 9464]
 mov qword ptr [rbp + 5416], rax
 jmp xchain00236_n00080_α
 xchain00236_n00069_β:
 jmp xchain00236_n00081_α
# IR_LIST_BANG
 xchain00236_n00066_α:
 mov qword ptr [rbp + 256], 0
.Lx00296_0:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 256]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp rax, 99
 je xchain00236_n00070_α
 jmp xchain00236_n00006_α
 xchain00236_n00066_β:
 inc qword ptr [rbp + 256]
 jmp .Lx00296_0
# IR_VAR
 xchain00236_n00070_α:
 mov rax, qword ptr [rbp + 9408]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 9416]
 mov qword ptr [rbp + 200], rax
 jmp xchain00236_n00084_α
 xchain00236_n00070_β:
 jmp xchain00236_n00085_α
# IR_ASSIGN gva
 xchain00236_n00067_α:
 mov rax, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 mov qword ptr [1879052496], rax
 mov qword ptr [1879052504], rdx
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain00236_n96_α
 xchain00236_n00067_β:
 jmp xchain00236_n96_α
# IR_VAR
 xchain00236_n00063_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 jmp xchain00236_n00087_α
 xchain00236_n00063_β:
 jmp xchain00236_n00064_α
# IR_MOVE_LABEL
 xchain00236_n00068_α:
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1720], rax
 lea rax, [rip + xchain00236_n00071_α]
 mov qword ptr [rbp + 1728], rax
 jmp xchain00236_n00088_α
 xchain00236_n00068_β:
 jmp xchain00236_n00102_α
 xchain00236_n00071_α:
 jmp xchain00236_n99_α
xchain00236_n00071_β:
 jmp xchain00236_n99_α
 xchain00236_n00072_α:
 mov rdi, qword ptr [rip + .Lx00297_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00297_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00297_3]
 lea rdx, [rip + .Lx00297_4]
 jmp rax
.Lx00297_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00297_2
.Lx00297_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00297_2
.Lx00297_1:
 call rt_faildescr@PLT
.Lx00297_2:
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 cmp eax, 99
 je xchain00236_n99_α
 jmp xchain00236_n00091_α
 xchain00236_n00072_β:
 jmp xchain00236_n99_α
.Lx00297_0:
 .quad .Lx00297_0_s
.Lx00297_0_s:
 .string "getword"
# IR_MOVE_LABEL
 xchain00236_n00073_α:
 mov rax, qword ptr [rbp + 5920]
 mov qword ptr [rbp + 5856], rax
 mov rax, qword ptr [rbp + 5928]
 mov qword ptr [rbp + 5864], rax
 lea rax, [rip + xchain00236_n00009_α]
 mov qword ptr [rbp + 5872], rax
 jmp xchain00236_n00005_α
 xchain00236_n00073_β:
 jmp xchain00236_n00047_α
 xchain00236_n00074_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 9456]
 mov rsi, qword ptr [rbp + 9464]
 mov rdx, qword ptr [rbp + 5664]
 mov rcx, qword ptr [rbp + 5672]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00236_n00077_α
 mov rdi, qword ptr [rbp + 5664]
 mov rsi, qword ptr [rbp + 5672]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 5600], rax
 mov qword ptr [rbp + 5608], rdx
 jmp xchain00236_n00010_α
 xchain00236_n00074_β:
 jmp xchain00236_n00077_α
# IR_LIT_STRING
 xchain00236_n00076_α:
 mov qword ptr [rbp + 5728], 1
 mov rax, qword ptr [rip + .Lx00298_0]
 mov qword ptr [rbp + 5736], rax
 jmp xchain00236_n00093_α
 xchain00236_n00076_β:
 jmp xchain00236_n00014_α
.Lx00298_0:
 .quad .Lx00298_0_s
.Lx00298_0_s:
 .string "dynamic"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00236_n00077_α:
 jmp qword ptr [rbp + 5680]
 xchain00236_n00077_β:
 jmp xchain00236_n00054_α
 xchain00236_n00078_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 9456]
 mov rsi, qword ptr [rbp + 9464]
 mov rdx, qword ptr [rbp + 5568]
 mov rcx, qword ptr [rbp + 5576]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00236_n00069_α
 mov rdi, qword ptr [rbp + 5568]
 mov rsi, qword ptr [rbp + 5576]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 5504], rax
 mov qword ptr [rbp + 5512], rdx
 jmp xchain00236_n00092_α
 xchain00236_n00078_β:
 jmp xchain00236_n00069_α
# IR_VAR
 xchain00236_n00080_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 jmp xchain00236_n00011_α
 xchain00236_n00080_β:
 jmp xchain00236_n00081_α
# IR_VAR
 xchain00236_n00081_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 5344], rax
 mov qword ptr [rbp + 5352], rdx
 jmp xchain00236_n00095_α
 xchain00236_n00081_β:
 jmp xchain00236_n00012_α
 xchain00236_n00006_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 9424], rax
 mov qword ptr [rbp + 9432], rdx
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00236_n00098_α
 xchain00236_n00006_β:
 jmp xchain00236_n00070_α
 xchain00236_n00084_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn1142: .string "sort"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1142]
 lea rsi, [rbp + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain00236_n00085_α
 jmp xchain00236_n00013_α
 xchain00236_n00084_β:
 jmp xchain00236_n00085_α
 xchain00236_n00085_α:
 mov rdi, qword ptr [rip + .Lx00299_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00299_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00299_3]
 lea rdx, [rip + .Lx00299_4]
 jmp rax
.Lx00299_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00299_2
.Lx00299_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00299_2
.Lx00299_1:
 call rt_faildescr@PLT
.Lx00299_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain00236_n00085_β:
 jmp main_ω
.Lx00299_0:
 .quad .Lx00299_0_s
.Lx00299_0_s:
 .string "Term__"
 xchain00236_n00089_α:
 jmp xchain00236_n96_α
xchain00236_n00089_β:
 jmp xchain00236_n96_α
# IR_LIT_INTEGER
 xchain00236_n00087_α:
 mov qword ptr [rbp + 2016], 6
 mov rax, qword ptr [rip + .Lx00300_0]
 mov qword ptr [rbp + 2024], rax
 jmp xchain00236_n00101_α
 xchain00236_n00087_β:
 jmp xchain00236_n00064_α
.Lx00300_0:
 .quad 0
 xchain00236_n00088_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1712]
 mov rdx, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 9472], rax
 mov qword ptr [rbp + 9480], rdx
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain00236_n00102_α
 xchain00236_n00088_β:
 jmp xchain00236_n00102_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00236_n00007_α:
 jmp qword ptr [rbp + 1728]
 xchain00236_n00007_β:
 jmp xchain00236_n00102_α
# IR_MOVE_LABEL
 xchain00236_n00091_α:
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 2960], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 2968], rax
 lea rax, [rip + xchain00236_n00008_α]
 mov qword ptr [rbp + 2976], rax
 jmp xchain00236_n00104_α
 xchain00236_n00091_β:
 jmp xchain00236_n00301_α
 xchain00236_n00008_α:
 jmp xchain00236_n99_α
xchain00236_n00008_β:
 jmp xchain00236_n99_α
# IR_LIT_STRING
 xchain00236_n00009_α:
 mov qword ptr [rbp + 5888], 1
 mov rax, qword ptr [rip + .Lx00302_0]
 mov qword ptr [rbp + 5896], rax
 jmp xchain00236_n00106_α
 xchain00236_n00009_β:
 jmp xchain00236_n00047_α
.Lx00302_0:
 .quad .Lx00302_0_s
.Lx00302_0_s:
 .string "record"
 xchain00236_n00010_α:
 mov rdi, qword ptr [rip + .Lx00303_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00303_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00303_3]
 lea rdx, [rip + .Lx00303_4]
 jmp rax
.Lx00303_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00303_2
.Lx00303_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00303_2
.Lx00303_1:
 call rt_faildescr@PLT
.Lx00303_2:
 mov qword ptr [rbp + 4224], rax
 mov qword ptr [rbp + 4232], rdx
 cmp eax, 99
 je xchain00236_n99_α
 jmp xchain00236_n00107_α
 xchain00236_n00010_β:
 jmp xchain00236_n99_α
.Lx00303_0:
 .quad .Lx00303_0_s
.Lx00303_0_s:
 .string "getword"
# IR_MOVE_LABEL
 xchain00236_n00093_α:
 mov rax, qword ptr [rbp + 5728]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 5736]
 mov qword ptr [rbp + 5672], rax
 lea rax, [rip + xchain00236_n00014_α]
 mov qword ptr [rbp + 5680], rax
 jmp xchain00236_n00074_α
 xchain00236_n00093_β:
 jmp xchain00236_n00054_α
# IR_LIT_STRING
 xchain00236_n00092_α:
 mov qword ptr [rbp + 4688], 1
 mov rax, qword ptr [rip + .Lx00304_0]
 mov qword ptr [rbp + 4696], rax
 jmp xchain00236_n00110_α
 xchain00236_n00092_β:
 jmp xchain00236_n00305_α
.Lx00304_0:
 .quad .Lx00304_0_s
.Lx00304_0_s:
 .string "global"
# IR_LIST_BANG
 xchain00236_n00011_α:
 mov qword ptr [rbp + 5456], 0
.Lx00306_0:
 mov rdi, qword ptr [rbp + 5472]
 mov rsi, qword ptr [rbp + 5480]
 mov rdx, qword ptr [rbp + 5456]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 cmp rax, 99
 je xchain00236_n00081_α
 jmp xchain00236_n00109_α
 xchain00236_n00011_β:
 inc qword ptr [rbp + 5456]
 jmp .Lx00306_0
 xchain00236_n00095_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 5344]
 mov rdx, qword ptr [rbp + 5352]
 mov qword ptr [rbp + 9504], rax
 mov qword ptr [rbp + 9512], rdx
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 jmp xchain00236_n00012_α
 xchain00236_n00095_β:
 jmp xchain00236_n00012_α
 xchain00236_n00012_α:
 mov rdi, qword ptr [rip + .Lx00307_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00307_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00307_3]
 lea rdx, [rip + .Lx00307_4]
 jmp rax
.Lx00307_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00307_2
.Lx00307_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00307_2
.Lx00307_1:
 call rt_faildescr@PLT
.Lx00307_2:
 mov qword ptr [rbp + 5264], rax
 mov qword ptr [rbp + 5272], rdx
 cmp eax, 99
 je xchain00236_n00308_α
 jmp xchain00236_n00111_α
 xchain00236_n00012_β:
 jmp xchain00236_n00308_α
.Lx00307_0:
 .quad .Lx00307_0_s
.Lx00307_0_s:
 .string "getword"
# IR_VAR
 xchain00236_n00098_α:
 mov rax, qword ptr [rbp + 9408]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 9416]
 mov qword ptr [rbp + 376], rax
 jmp xchain00236_n00015_α
 xchain00236_n00098_β:
 jmp xchain00236_n00066_β
# IR_LIST_BANG
 xchain00236_n00013_α:
 mov qword ptr [rbp + 128], 0
.Lx00309_0:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 mov rdx, qword ptr [rbp + 128]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp rax, 99
 je xchain00236_n00085_α
 jmp xchain00236_n00310_α
 xchain00236_n00013_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00309_0
 xchain00236_n00101_α:
# BOX IR_CALL procrec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1952] -> [zr+1888]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1896], rax
# marshal arg1 = producer-box slot [zr+1984] -> [zr+1904]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1912], rax
# marshal arg2 = producer-box slot [zr+2016] -> [zr+1920]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1928], rax
  .section .rodata
  .Lrkfn1169: .string "procrec"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1169]
 lea rsi, [rbp + 1888]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 cmp eax, 99
 je xchain00236_n00064_α
 jmp xchain00236_n00311_α
 xchain00236_n00101_β:
 jmp xchain00236_n00064_α
# IR_VAR
 xchain00236_n00102_α:
 mov rax, qword ptr [rbp + 9440]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 9448]
 mov qword ptr [rbp + 1672], rax
 jmp xchain00236_n00312_α
 xchain00236_n00102_β:
 jmp xchain00236_n00313_α
 xchain00236_n00104_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2960]
 mov rdx, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 9456], rax
 mov qword ptr [rbp + 9464], rdx
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 jmp xchain00236_n00301_α
 xchain00236_n00104_β:
 jmp xchain00236_n00301_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00236_n00105_α:
 jmp qword ptr [rbp + 2976]
 xchain00236_n00105_β:
 jmp xchain00236_n00301_α
# IR_MOVE_LABEL
 xchain00236_n00106_α:
 mov rax, qword ptr [rbp + 5888]
 mov qword ptr [rbp + 5856], rax
 mov rax, qword ptr [rbp + 5896]
 mov qword ptr [rbp + 5864], rax
 lea rax, [rip + xchain00236_n00047_α]
 mov qword ptr [rbp + 5872], rax
 jmp xchain00236_n00005_α
 xchain00236_n00106_β:
 jmp xchain00236_n00047_α
# IR_MOVE_LABEL
 xchain00236_n00107_α:
 mov rax, qword ptr [rbp + 4224]
 mov qword ptr [rbp + 4192], rax
 mov rax, qword ptr [rbp + 4232]
 mov qword ptr [rbp + 4200], rax
 lea rax, [rip + xchain00236_n00108_α]
 mov qword ptr [rbp + 4208], rax
 jmp xchain00236_n00314_α
 xchain00236_n00107_β:
 jmp xchain00236_n00315_α
 xchain00236_n00108_α:
 jmp xchain00236_n99_α
xchain00236_n00108_β:
 jmp xchain00236_n99_α
# IR_LIT_STRING
 xchain00236_n00014_α:
 mov qword ptr [rbp + 5696], 1
 mov rax, qword ptr [rip + .Lx00316_0]
 mov qword ptr [rbp + 5704], rax
 jmp xchain00236_n00317_α
 xchain00236_n00014_β:
 jmp xchain00236_n00054_α
.Lx00316_0:
 .quad .Lx00316_0_s
.Lx00316_0_s:
 .string "static"
 xchain00236_n00110_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4688]
 mov rdx, qword ptr [rbp + 4696]
 mov qword ptr [rbp + 9472], rax
 mov qword ptr [rbp + 9480], rdx
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 jmp xchain00236_n00305_α
 xchain00236_n00110_β:
 jmp xchain00236_n00305_α
 xchain00236_n00109_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 9456]
 mov rsi, qword ptr [rbp + 9464]
 mov rdx, qword ptr [rbp + 5440]
 mov rcx, qword ptr [rbp + 5448]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00236_n00011_β
 mov rdi, qword ptr [rbp + 5440]
 mov rsi, qword ptr [rbp + 5448]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 jmp xchain00236_n96_α
 xchain00236_n00109_β:
 jmp xchain00236_n00011_β
 xchain00236_n00111_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 5264]
 mov rdx, qword ptr [rbp + 5272]
 mov qword ptr [rbp + 9488], rax
 mov qword ptr [rbp + 9496], rdx
 mov qword ptr [rbp + 5248], rax
 mov qword ptr [rbp + 5256], rdx
 jmp xchain00236_n00017_α
 xchain00236_n00111_β:
 jmp xchain00236_n00308_α
# IR_VAR
 xchain00236_n00308_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 5152], rax
 mov qword ptr [rbp + 5160], rdx
 jmp xchain00236_n00318_α
 xchain00236_n00308_β:
 jmp xchain00236_n00319_α
# IR_VAR
 xchain00236_n00015_α:
 mov rax, qword ptr [rbp + 9424]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 9432]
 mov qword ptr [rbp + 616], rax
 jmp xchain00236_n00320_α
 xchain00236_n00015_β:
 jmp xchain00236_n00066_β
 xchain00236_n00310_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+80]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 88], rax
  .section .rodata
  .Lrkfn1188: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1188]
 lea rsi, [rbp + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je xchain00236_n00085_α
 jmp xchain00236_n00013_β
 xchain00236_n00310_β:
 jmp xchain00236_n00085_α
 xchain00236_n00311_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1840] -> [zr+1792]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1800], rax
# marshal arg1 = producer-box slot [zr+1872] -> [zr+1808]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1816], rax
  .section .rodata
  .Lrkfn1190: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1190]
 lea rsi, [rbp + 1792]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 cmp eax, 99
 je xchain00236_n00064_α
 jmp xchain00236_n00064_α
 xchain00236_n00311_β:
 jmp xchain00236_n00064_α
 xchain00236_n00312_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1632]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1640], rax
  .section .rodata
  .Lrkfn1192: .string "pull"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1192]
 lea rsi, [rbp + 1632]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je xchain00236_n00313_α
 jmp xchain00236_n00321_α
 xchain00236_n00312_β:
 jmp xchain00236_n00313_α
# IR_VAR
 xchain00236_n00313_α:
 mov rax, qword ptr [rbp + 9424]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 9432]
 mov qword ptr [rbp + 1528], rax
 jmp xchain00236_n00322_α
 xchain00236_n00313_β:
 jmp xchain00236_n00323_α
# IR_VAR
 xchain00236_n00301_α:
 mov rax, qword ptr [rbp + 9456]
 mov qword ptr [rbp + 2848], rax
 mov rax, qword ptr [rbp + 9464]
 mov qword ptr [rbp + 2856], rax
 jmp xchain00236_n00324_α
 xchain00236_n00301_β:
 jmp xchain00236_n00325_α
 xchain00236_n00314_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4192]
 mov rdx, qword ptr [rbp + 4200]
 mov qword ptr [rbp + 9456], rax
 mov qword ptr [rbp + 9464], rdx
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 jmp xchain00236_n00315_α
 xchain00236_n00314_β:
 jmp xchain00236_n00315_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00236_n00016_α:
 jmp qword ptr [rbp + 4208]
 xchain00236_n00016_β:
 jmp xchain00236_n00315_α
# IR_MOVE_LABEL
 xchain00236_n00317_α:
 mov rax, qword ptr [rbp + 5696]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 5704]
 mov qword ptr [rbp + 5672], rax
 lea rax, [rip + xchain00236_n00054_α]
 mov qword ptr [rbp + 5680], rax
 jmp xchain00236_n00074_α
 xchain00236_n00317_β:
 jmp xchain00236_n00054_α
# IR_MAKE_LIST
 xchain00236_n00305_α:
 lea rdi, [rbp + 4672]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 4656], rax
 mov qword ptr [rbp + 4664], rdx
 jmp xchain00236_n00326_α
 xchain00236_n00305_β:
 jmp xchain00236_n00327_α
 xchain00236_n00328_α:
 jmp xchain00236_n96_α
xchain00236_n00328_β:
 jmp xchain00236_n96_α
# IR_LIT_STRING
 xchain00236_n00017_α:
 mov qword ptr [rbp + 5296], 1
 mov rax, qword ptr [rip + .Lx00329_0]
 mov qword ptr [rbp + 5304], rax
 jmp xchain00236_n00330_α
 xchain00236_n00017_β:
 jmp xchain00236_n00308_α
.Lx00329_0:
 .quad .Lx00329_0_s
.Lx00329_0_s:
 .string "("
# IR_VAR
 xchain00236_n00318_α:
 mov rax, qword ptr [rbp + 9488]
 mov qword ptr [rbp + 5184], rax
 mov rax, qword ptr [rbp + 9496]
 mov qword ptr [rbp + 5192], rax
 jmp xchain00236_n00018_α
 xchain00236_n00318_β:
 jmp xchain00236_n00319_α
# IR_VAR
 xchain00236_n00319_α:
 mov rax, qword ptr [rbp + 9456]
 mov qword ptr [rbp + 4848], rax
 mov rax, qword ptr [rbp + 9464]
 mov qword ptr [rbp + 4856], rax
 jmp xchain00236_n00331_α
 xchain00236_n00319_β:
 jmp xchain00236_n96_α
# IR_FIELD_GET
 xchain00236_n00320_α:
 mov rdi, qword ptr [rip + .Lx00332_0]
 mov rsi, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00236_n00066_β
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00236_n00333_α
 xchain00236_n00320_β:
 jmp xchain00236_n00066_β
.Lx00332_0:
 .quad .Lx00332_0_s
.Lx00332_0_s:
 .string "pname"
 xchain00236_n00321_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1616]
 mov rdx, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 9424], rax
 mov qword ptr [rbp + 9432], rdx
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain00236_n00313_α
 xchain00236_n00321_β:
 jmp xchain00236_n00313_α
# IR_FIELD_GET lv
 xchain00236_n00322_α:
 mov rdi, qword ptr [rip + .Lx00334_0]
 mov rsi, qword ptr [rbp + 1520]
 mov rdx, qword ptr [rbp + 1528]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00236_n00323_α
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain00236_n00019_α
 xchain00236_n00322_β:
 jmp xchain00236_n00323_α
.Lx00334_0:
 .quad .Lx00334_0_s
.Lx00334_0_s:
 .string "pname"
# IR_VAR
 xchain00236_n00323_α:
 mov rax, qword ptr [rbp + 9440]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 9448]
 mov qword ptr [rbp + 1432], rax
 jmp xchain00236_n00335_α
 xchain00236_n00323_β:
 jmp xchain00236_n96_α
# IR_LIT_STRING
 xchain00236_n00324_α:
 mov qword ptr [rbp + 2880], 1
 mov rax, qword ptr [rip + .Lx00336_0]
 mov qword ptr [rbp + 2888], rax
 jmp xchain00236_n00020_α
 xchain00236_n00324_β:
 jmp xchain00236_n00325_α
.Lx00336_0:
 .quad .Lx00336_0_s
.Lx00336_0_s:
 .string "global"
 xchain00236_n00325_α:
 mov rdi, qword ptr [rip + .Lx00337_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00337_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00337_3]
 lea rdx, [rip + .Lx00337_4]
 jmp rax
.Lx00337_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00337_2
.Lx00337_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00337_2
.Lx00337_1:
 call rt_faildescr@PLT
.Lx00337_2:
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 cmp eax, 99
 je xchain00236_n00338_α
 jmp xchain00236_n00339_α
 xchain00236_n00325_β:
 jmp xchain00236_n00338_α
.Lx00337_0:
 .quad .Lx00337_0_s
.Lx00337_0_s:
 .string "getword"
# IR_VAR
 xchain00236_n00315_α:
 mov rax, qword ptr [1879052480]
 mov rdx, qword ptr [1879052488]
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 jmp xchain00236_n00340_α
 xchain00236_n00315_β:
 jmp xchain00236_n00341_α
# IR_ASSIGN gva
 xchain00236_n00326_α:
 mov rax, qword ptr [rbp + 4656]
 mov rdx, qword ptr [rbp + 4664]
 mov qword ptr [1879052480], rax
 mov qword ptr [1879052488], rdx
 mov qword ptr [rbp + 4640], rax
 mov qword ptr [rbp + 4648], rdx
 jmp xchain00236_n00327_α
 xchain00236_n00326_β:
 jmp xchain00236_n00327_α
 xchain00236_n00330_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 5248]
 mov rsi, qword ptr [rbp + 5256]
 mov rdx, qword ptr [rbp + 5296]
 mov rcx, qword ptr [rbp + 5304]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00236_n00308_α
 mov rdi, qword ptr [rbp + 5296]
 mov rsi, qword ptr [rbp + 5304]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 jmp xchain00236_n00342_α
 xchain00236_n00330_β:
 jmp xchain00236_n00308_α
 xchain00236_n00018_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5152] -> [zr+5104]
 mov rax, qword ptr [rbp + 5152]
 mov qword ptr [rbp + 5104], rax
 mov rax, qword ptr [rbp + 5160]
 mov qword ptr [rbp + 5112], rax
# marshal arg1 = producer-box slot [zr+5184] -> [zr+5120]
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 5120], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 5128], rax
  .section .rodata
  .Lrkfn1222: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1222]
 lea rsi, [rbp + 5104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5088], rax
 mov qword ptr [rbp + 5096], rdx
 cmp eax, 99
 je xchain00236_n00319_α
 jmp xchain00236_n00343_α
 xchain00236_n00018_β:
 jmp xchain00236_n00319_α
# IR_VAR
 xchain00236_n00331_α:
 mov rax, qword ptr [rbp + 9472]
 mov qword ptr [rbp + 4880], rax
 mov rax, qword ptr [rbp + 9480]
 mov qword ptr [rbp + 4888], rax
 jmp xchain00236_n00344_α
 xchain00236_n00331_β:
 jmp xchain00236_n96_α
# IR_LIT_INTEGER
 xchain00236_n00333_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00345_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00236_n00346_α
 xchain00236_n00333_β:
 jmp xchain00236_n00066_β
.Lx00345_0:
 .quad 16
# IR_VAR
 xchain00236_n00019_α:
 mov rax, qword ptr [rbp + 9472]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 9480]
 mov qword ptr [rbp + 1576], rax
 jmp xchain00236_n00347_α
 xchain00236_n00019_β:
 jmp xchain00236_n00323_α
# IR_VAR
 xchain00236_n00335_α:
 mov rax, qword ptr [rbp + 9424]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 9432]
 mov qword ptr [rbp + 1464], rax
 jmp xchain00236_n00348_α
 xchain00236_n00335_β:
 jmp xchain00236_n96_α
# IR_VAR
 xchain00236_n00020_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 jmp xchain00236_n00349_α
 xchain00236_n00020_β:
 jmp xchain00236_n00325_α
 xchain00236_n00339_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2272]
 mov rdx, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 9488], rax
 mov qword ptr [rbp + 9496], rdx
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain00236_n00021_α
 xchain00236_n00339_β:
 jmp xchain00236_n00338_α
# IR_VAR
 xchain00236_n00338_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain00236_n00350_α
 xchain00236_n00338_β:
 jmp xchain00236_n96_α
# IR_VAR
 xchain00236_n00340_α:
 mov rax, qword ptr [rbp + 9456]
 mov qword ptr [rbp + 4144], rax
 mov rax, qword ptr [rbp + 9464]
 mov qword ptr [rbp + 4152], rax
 jmp xchain00236_n00351_α
 xchain00236_n00340_β:
 jmp xchain00236_n00341_α
# IR_VAR
 xchain00236_n00341_α:
 mov rax, qword ptr [rbp + 9456]
 mov qword ptr [rbp + 3952], rax
 mov rax, qword ptr [rbp + 9464]
 mov qword ptr [rbp + 3960], rax
 jmp xchain00236_n00352_α
 xchain00236_n00341_β:
 jmp xchain00236_n00353_α
# IR_VAR
 xchain00236_n00327_α:
 mov rax, qword ptr [rbp + 9440]
 mov qword ptr [rbp + 4608], rax
 mov rax, qword ptr [rbp + 9448]
 mov qword ptr [rbp + 4616], rax
 jmp xchain00236_n00354_α
 xchain00236_n00327_β:
 jmp xchain00236_n00355_α
# IR_VAR
 xchain00236_n00342_α:
 mov rax, qword ptr [rbp + 9456]
 mov qword ptr [rbp + 5024], rax
 mov rax, qword ptr [rbp + 9464]
 mov qword ptr [rbp + 5032], rax
 jmp xchain00236_n00356_α
 xchain00236_n00342_β:
 jmp xchain00236_n00319_α
# IR_MOVE_LABEL
 xchain00236_n00343_α:
 mov rax, qword ptr [rbp + 5088]
 mov qword ptr [rbp + 4944], rax
 mov rax, qword ptr [rbp + 5096]
 mov qword ptr [rbp + 4952], rax
 lea rax, [rip + xchain00236_n00319_α]
 mov qword ptr [rbp + 4960], rax
 jmp xchain00236_n00319_α
 xchain00236_n00343_β:
 jmp xchain00236_n00319_α
# IR_VAR
 xchain00236_n00344_α:
 mov rax, qword ptr [rbp + 9504]
 mov qword ptr [rbp + 4912], rax
 mov rax, qword ptr [rbp + 9512]
 mov qword ptr [rbp + 4920], rax
 jmp xchain00236_n00023_α
 xchain00236_n00344_β:
 jmp xchain00236_n96_α
# IR_LIT_STRING
 xchain00236_n00346_α:
 mov qword ptr [rbp + 672], 1
 mov rax, qword ptr [rip + .Lx00357_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain00236_n00358_α
 xchain00236_n00346_β:
 jmp xchain00236_n00066_β
.Lx00357_0:
 .quad .Lx00357_0_s
.Lx00357_0_s:
 .string " "
# IR_ASSIGN_VAR
 xchain00236_n00347_α:
 mov rdi, qword ptr [rbp + 1488]
 mov rsi, qword ptr [rbp + 1496]
 mov rdx, qword ptr [rbp + 1568]
 mov rcx, qword ptr [rbp + 1576]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00236_n00323_α
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain00236_n00323_α
 xchain00236_n00347_β:
 jmp xchain00236_n00323_α
 xchain00236_n00348_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1376]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1384], rax
# marshal arg1 = producer-box slot [zr+1456] -> [zr+1392]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1400], rax
  .section .rodata
  .Lrkfn1248: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1248]
 lea rsi, [rbp + 1376]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain00236_n96_α
 jmp xchain00236_n00359_α
 xchain00236_n00348_β:
 jmp xchain00236_n96_α
 xchain00236_n00349_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2848]
 mov rdx, qword ptr [rbp + 2856]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2880]
 mov rdx, qword ptr [rbp + 2888]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 2912]
 mov rdx, qword ptr [rbp + 2920]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00360_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00360_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00360_3]
 lea rdx, [rip + .Lx00360_4]
 jmp rax
.Lx00360_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00360_2
.Lx00360_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00360_2
.Lx00360_1:
 call rt_faildescr@PLT
.Lx00360_2:
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 cmp eax, 99
 je xchain00236_n00325_α
 jmp xchain00236_n00325_α
 xchain00236_n00349_β:
 jmp xchain00236_n00325_α
.Lx00360_0:
 .quad .Lx00360_0_s
.Lx00360_0_s:
 .string "addword"
# IR_LIT_STRING
 xchain00236_n00021_α:
 mov qword ptr [rbp + 2304], 1
 mov rax, qword ptr [rip + .Lx00361_0]
 mov qword ptr [rbp + 2312], rax
 jmp xchain00236_n00025_α
 xchain00236_n00021_β:
 jmp xchain00236_n00338_α
.Lx00361_0:
 .quad .Lx00361_0_s
.Lx00361_0_s:
 .string ","
# IR_VAR
 xchain00236_n00350_α:
 mov rax, qword ptr [rbp + 9488]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 9496]
 mov qword ptr [rbp + 2200], rax
 jmp xchain00236_n00362_α
 xchain00236_n00350_β:
 jmp xchain00236_n96_α
 xchain00236_n00351_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4112] -> [zr+4064]
 mov rax, qword ptr [rbp + 4112]
 mov qword ptr [rbp + 4064], rax
 mov rax, qword ptr [rbp + 4120]
 mov qword ptr [rbp + 4072], rax
# marshal arg1 = producer-box slot [zr+4144] -> [zr+4080]
 mov rax, qword ptr [rbp + 4144]
 mov qword ptr [rbp + 4080], rax
 mov rax, qword ptr [rbp + 4152]
 mov qword ptr [rbp + 4088], rax
  .section .rodata
  .Lrkfn1255: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1255]
 lea rsi, [rbp + 4064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4048], rax
 mov qword ptr [rbp + 4056], rdx
 cmp eax, 99
 je xchain00236_n00341_α
 jmp xchain00236_n00341_α
 xchain00236_n00351_β:
 jmp xchain00236_n00341_α
# IR_VAR
 xchain00236_n00352_α:
 mov rax, qword ptr [rbp + 9472]
 mov qword ptr [rbp + 3984], rax
 mov rax, qword ptr [rbp + 9480]
 mov qword ptr [rbp + 3992], rax
 jmp xchain00236_n00363_α
 xchain00236_n00352_β:
 jmp xchain00236_n00353_α
 xchain00236_n00353_α:
 mov rdi, qword ptr [rip + .Lx00364_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00364_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00364_3]
 lea rdx, [rip + .Lx00364_4]
 jmp rax
.Lx00364_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00364_2
.Lx00364_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00364_2
.Lx00364_1:
 call rt_faildescr@PLT
.Lx00364_2:
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 cmp eax, 99
 je xchain00236_n00365_α
 jmp xchain00236_n00366_α
 xchain00236_n00353_β:
 jmp xchain00236_n00365_α
.Lx00364_0:
 .quad .Lx00364_0_s
.Lx00364_0_s:
 .string "getword"
 xchain00236_n00354_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4608] -> [zr+4576]
 mov rax, qword ptr [rbp + 4608]
 mov qword ptr [rbp + 4576], rax
 mov rax, qword ptr [rbp + 4616]
 mov qword ptr [rbp + 4584], rax
  .section .rodata
  .Lrkfn1261: .string "pull"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1261]
 lea rsi, [rbp + 4576]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 cmp eax, 99
 je xchain00236_n00355_α
 jmp xchain00236_n00028_α
 xchain00236_n00354_β:
 jmp xchain00236_n00355_α
# IR_VAR
 xchain00236_n00355_α:
 mov rax, qword ptr [rbp + 9424]
 mov qword ptr [rbp + 4464], rax
 mov rax, qword ptr [rbp + 9432]
 mov qword ptr [rbp + 4472], rax
 jmp xchain00236_n00367_α
 xchain00236_n00355_β:
 jmp xchain00236_n00368_α
# IR_LIT_STRING
 xchain00236_n00356_α:
 mov qword ptr [rbp + 5056], 1
 mov rax, qword ptr [rip + .Lx00369_0]
 mov qword ptr [rbp + 5064], rax
 jmp xchain00236_n00031_α
 xchain00236_n00356_β:
 jmp xchain00236_n00319_α
.Lx00369_0:
 .quad .Lx00369_0_s
.Lx00369_0_s:
 .string " *"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00236_n00022_α:
 jmp qword ptr [rbp + 4960]
 xchain00236_n00022_β:
 jmp xchain00236_n00319_α
 xchain00236_n00023_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4848]
 mov rdx, qword ptr [rbp + 4856]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 4880]
 mov rdx, qword ptr [rbp + 4888]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 4912]
 mov rdx, qword ptr [rbp + 4920]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00370_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00370_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00370_3]
 lea rdx, [rip + .Lx00370_4]
 jmp rax
.Lx00370_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00370_2
.Lx00370_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00370_2
.Lx00370_1:
 call rt_faildescr@PLT
.Lx00370_2:
 mov qword ptr [rbp + 4768], rax
 mov qword ptr [rbp + 4776], rdx
 cmp eax, 99
 je xchain00236_n96_α
 jmp xchain00236_n00033_α
 xchain00236_n00023_β:
 jmp xchain00236_n96_α
.Lx00370_0:
 .quad .Lx00370_0_s
.Lx00370_0_s:
 .string "addword"
 xchain00236_n00358_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+512]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 520], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+528]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 536], rax
# marshal arg2 = producer-box slot [zr+672] -> [zr+544]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 552], rax
  .section .rodata
  .Lrkfn1270: .string "left"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1270]
 lea rsi, [rbp + 512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain00236_n00066_β
 jmp xchain00236_n00371_α
 xchain00236_n00358_β:
 jmp xchain00236_n00066_β
 xchain00236_n00359_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1352], rax
 jmp xchain00236_n00372_α
xchain00236_n00359_β:
 jmp xchain00236_n96_α
 xchain00236_n00025_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 2256]
 mov rsi, qword ptr [rbp + 2264]
 mov rdx, qword ptr [rbp + 2304]
 mov rcx, qword ptr [rbp + 2312]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00236_n00338_α
 mov rdi, qword ptr [rbp + 2304]
 mov rsi, qword ptr [rbp + 2312]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 jmp xchain00236_n00036_α
 xchain00236_n00025_β:
 jmp xchain00236_n00338_α
 xchain00236_n00362_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2160] -> [zr+2112]
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2120], rax
# marshal arg1 = producer-box slot [zr+2192] -> [zr+2128]
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2136], rax
  .section .rodata
  .Lrkfn1274: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1274]
 lea rsi, [rbp + 2112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 cmp eax, 99
 je xchain00236_n96_α
 jmp xchain00236_n00373_α
 xchain00236_n00362_β:
 jmp xchain00236_n96_α
# IR_VAR
 xchain00236_n00363_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 4016], rax
 mov qword ptr [rbp + 4024], rdx
 jmp xchain00236_n00374_α
 xchain00236_n00363_β:
 jmp xchain00236_n00353_α
 xchain00236_n00366_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3248]
 mov rdx, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 9488], rax
 mov qword ptr [rbp + 9496], rdx
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 jmp xchain00236_n00041_α
 xchain00236_n00366_β:
 jmp xchain00236_n00365_α
# IR_VAR
 xchain00236_n00365_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 jmp xchain00236_n00375_α
 xchain00236_n00365_β:
 jmp xchain00236_n96_α
 xchain00236_n00028_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4560]
 mov rdx, qword ptr [rbp + 4568]
 mov qword ptr [rbp + 9424], rax
 mov qword ptr [rbp + 9432], rdx
 mov qword ptr [rbp + 4544], rax
 mov qword ptr [rbp + 4552], rdx
 jmp xchain00236_n00355_α
 xchain00236_n00028_β:
 jmp xchain00236_n00355_α
# IR_FIELD_GET lv
 xchain00236_n00367_α:
 mov rdi, qword ptr [rip + .Lx00376_0]
 mov rsi, qword ptr [rbp + 4464]
 mov rdx, qword ptr [rbp + 4472]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00236_n00368_α
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 jmp xchain00236_n00042_α
 xchain00236_n00367_β:
 jmp xchain00236_n00368_α
.Lx00376_0:
 .quad .Lx00376_0_s
.Lx00376_0_s:
 .string "lastline"
# IR_VAR
 xchain00236_n00368_α:
 mov rax, qword ptr [rbp + 9440]
 mov qword ptr [rbp + 4368], rax
 mov rax, qword ptr [rbp + 9448]
 mov qword ptr [rbp + 4376], rax
 jmp xchain00236_n00377_α
 xchain00236_n00368_β:
 jmp xchain00236_n96_α
 xchain00236_n00031_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 9456]
 mov rsi, qword ptr [rbp + 9464]
 mov rdx, qword ptr [rbp + 5056]
 mov rcx, qword ptr [rbp + 5064]
 call str_concat_d@PLT
 mov qword ptr [rbp + 4992], rax
 mov qword ptr [rbp + 5000], rdx
 jmp xchain00236_n00378_α
 xchain00236_n00031_β:
 jmp xchain00236_n00319_α
 xchain00236_n00033_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 4768]
 mov qword ptr [rbp + 4752], rax
 mov rax, qword ptr [rbp + 4776]
 mov qword ptr [rbp + 4760], rax
 jmp xchain00236_n00379_α
xchain00236_n00033_β:
 jmp xchain00236_n96_α
# IR_VAR
 xchain00236_n00371_α:
 mov rax, qword ptr [rbp + 9424]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 9432]
 mov qword ptr [rbp + 744], rax
 jmp xchain00236_n00046_α
 xchain00236_n00371_β:
 jmp xchain00236_n00066_β
# IR_MOVE_LABEL
 xchain00236_n00372_α:
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1320], rax
 lea rax, [rip + xchain00236_n96_α]
 mov qword ptr [rbp + 1328], rax
 jmp xchain00236_n00380_α
 xchain00236_n00372_β:
 jmp xchain00236_n96_α
# IR_VAR
 xchain00236_n00036_α:
 mov rax, qword ptr [rbp + 9456]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 9464]
 mov qword ptr [rbp + 2680], rax
 jmp xchain00236_n00050_α
 xchain00236_n00036_β:
 jmp xchain00236_n00381_α
 xchain00236_n00373_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2088], rax
 jmp xchain00236_n00382_α
xchain00236_n00373_β:
 jmp xchain00236_n96_α
 xchain00236_n00374_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3952]
 mov rdx, qword ptr [rbp + 3960]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3984]
 mov rdx, qword ptr [rbp + 3992]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 4016]
 mov rdx, qword ptr [rbp + 4024]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00383_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00383_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00383_3]
 lea rdx, [rip + .Lx00383_4]
 jmp rax
.Lx00383_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00383_2
.Lx00383_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00383_2
.Lx00383_1:
 call rt_faildescr@PLT
.Lx00383_2:
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 cmp eax, 99
 je xchain00236_n00353_α
 jmp xchain00236_n00353_α
 xchain00236_n00374_β:
 jmp xchain00236_n00353_α
.Lx00383_0:
 .quad .Lx00383_0_s
.Lx00383_0_s:
 .string "addword"
# IR_LIT_STRING
 xchain00236_n00041_α:
 mov qword ptr [rbp + 3280], 1
 mov rax, qword ptr [rip + .Lx00384_0]
 mov qword ptr [rbp + 3288], rax
 jmp xchain00236_n00385_α
 xchain00236_n00041_β:
 jmp xchain00236_n00365_α
.Lx00384_0:
 .quad .Lx00384_0_s
.Lx00384_0_s:
 .string ","
# IR_VAR
 xchain00236_n00375_α:
 mov rax, qword ptr [rbp + 9488]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 9496]
 mov qword ptr [rbp + 3176], rax
 jmp xchain00236_n00386_α
 xchain00236_n00375_β:
 jmp xchain00236_n96_α
# IR_VAR
 xchain00236_n00042_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 jmp xchain00236_n00053_α
 xchain00236_n00042_β:
 jmp xchain00236_n00368_α
# IR_VAR
 xchain00236_n00377_α:
 mov rax, qword ptr [rbp + 9424]
 mov qword ptr [rbp + 4400], rax
 mov rax, qword ptr [rbp + 9432]
 mov qword ptr [rbp + 4408], rax
 jmp xchain00236_n00387_α
 xchain00236_n00377_β:
 jmp xchain00236_n96_α
 xchain00236_n00378_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4992]
 mov rdx, qword ptr [rbp + 5000]
 mov qword ptr [rbp + 9456], rax
 mov qword ptr [rbp + 9464], rdx
 mov qword ptr [rbp + 4976], rax
 mov qword ptr [rbp + 4984], rdx
 jmp xchain00236_n00388_α
 xchain00236_n00378_β:
 jmp xchain00236_n00319_α
# IR_MOVE_LABEL
 xchain00236_n00379_α:
 mov rax, qword ptr [rbp + 4768]
 mov qword ptr [rbp + 4720], rax
 mov rax, qword ptr [rbp + 4776]
 mov qword ptr [rbp + 4728], rax
 lea rax, [rip + xchain00236_n96_α]
 mov qword ptr [rbp + 4736], rax
 jmp xchain00236_n00389_α
 xchain00236_n00379_β:
 jmp xchain00236_n96_α
# IR_FIELD_GET
 xchain00236_n00046_α:
 mov rdi, qword ptr [rip + .Lx00390_0]
 mov rsi, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00236_n00066_β
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00236_n00391_α
 xchain00236_n00046_β:
 jmp xchain00236_n00066_β
.Lx00390_0:
 .quad .Lx00390_0_s
.Lx00390_0_s:
 .string "begline"
# IR_MOVE_LABEL
 xchain00236_n00380_α:
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1192], rax
 lea rax, [rip + xchain00236_n00392_α]
 mov qword ptr [rbp + 1200], rax
 jmp xchain00236_n96_α
 xchain00236_n00380_β:
 jmp xchain00236_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00236_n00392_α:
 jmp qword ptr [rbp + 1328]
 xchain00236_n00392_β:
 jmp xchain00236_n96_α
# IR_VAR
 xchain00236_n00050_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 jmp xchain00236_n00393_α
 xchain00236_n00050_β:
 jmp xchain00236_n00381_α
 xchain00236_n00381_α:
 mov rdi, qword ptr [rip + .Lx00394_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00394_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00394_3]
 lea rdx, [rip + .Lx00394_4]
 jmp rax
.Lx00394_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00394_2
.Lx00394_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00394_2
.Lx00394_1:
 call rt_faildescr@PLT
.Lx00394_2:
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 cmp eax, 99
 je xchain00236_n00338_α
 jmp xchain00236_n00057_α
 xchain00236_n00381_β:
 jmp xchain00236_n00338_α
.Lx00394_0:
 .quad .Lx00394_0_s
.Lx00394_0_s:
 .string "getword"
# IR_MOVE_LABEL
 xchain00236_n00382_α:
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2056], rax
 lea rax, [rip + xchain00236_n96_α]
 mov qword ptr [rbp + 2064], rax
 jmp xchain00236_n00061_α
 xchain00236_n00382_β:
 jmp xchain00236_n96_α
 xchain00236_n00385_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 3232]
 mov rsi, qword ptr [rbp + 3240]
 mov rdx, qword ptr [rbp + 3280]
 mov rcx, qword ptr [rbp + 3288]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00236_n00365_α
 mov rdi, qword ptr [rbp + 3280]
 mov rsi, qword ptr [rbp + 3288]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 jmp xchain00236_n00395_α
 xchain00236_n00385_β:
 jmp xchain00236_n00365_α
 xchain00236_n00386_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3136] -> [zr+3088]
 mov rax, qword ptr [rbp + 3136]
 mov qword ptr [rbp + 3088], rax
 mov rax, qword ptr [rbp + 3144]
 mov qword ptr [rbp + 3096], rax
# marshal arg1 = producer-box slot [zr+3168] -> [zr+3104]
 mov rax, qword ptr [rbp + 3168]
 mov qword ptr [rbp + 3104], rax
 mov rax, qword ptr [rbp + 3176]
 mov qword ptr [rbp + 3112], rax
  .section .rodata
  .Lrkfn1314: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1314]
 lea rsi, [rbp + 3088]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 cmp eax, 99
 je xchain00236_n96_α
 jmp xchain00236_n00396_α
 xchain00236_n00386_β:
 jmp xchain00236_n96_α
# IR_ASSIGN_VAR
 xchain00236_n00053_α:
 mov rdi, qword ptr [rbp + 4432]
 mov rsi, qword ptr [rbp + 4440]
 mov rdx, qword ptr [rbp + 4512]
 mov rcx, qword ptr [rbp + 4520]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00236_n00368_α
 mov qword ptr [rbp + 4496], rax
 mov qword ptr [rbp + 4504], rdx
 jmp xchain00236_n00368_α
 xchain00236_n00053_β:
 jmp xchain00236_n00368_α
 xchain00236_n00387_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4368] -> [zr+4320]
 mov rax, qword ptr [rbp + 4368]
 mov qword ptr [rbp + 4320], rax
 mov rax, qword ptr [rbp + 4376]
 mov qword ptr [rbp + 4328], rax
# marshal arg1 = producer-box slot [zr+4400] -> [zr+4336]
 mov rax, qword ptr [rbp + 4400]
 mov qword ptr [rbp + 4336], rax
 mov rax, qword ptr [rbp + 4408]
 mov qword ptr [rbp + 4344], rax
  .section .rodata
  .Lrkfn1317: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1317]
 lea rsi, [rbp + 4320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 cmp eax, 99
 je xchain00236_n96_α
 jmp xchain00236_n00397_α
 xchain00236_n00387_β:
 jmp xchain00236_n96_α
# IR_MOVE_LABEL
 xchain00236_n00388_α:
 mov rax, qword ptr [rbp + 4976]
 mov qword ptr [rbp + 4944], rax
 mov rax, qword ptr [rbp + 4984]
 mov qword ptr [rbp + 4952], rax
 lea rax, [rip + xchain00236_n00319_α]
 mov qword ptr [rbp + 4960], rax
 jmp xchain00236_n00319_α
 xchain00236_n00388_β:
 jmp xchain00236_n00319_α
# IR_MOVE_LABEL
 xchain00236_n00389_α:
 mov rax, qword ptr [rbp + 4720]
 mov qword ptr [rbp + 4256], rax
 mov rax, qword ptr [rbp + 4728]
 mov qword ptr [rbp + 4264], rax
 lea rax, [rip + xchain00236_n00398_α]
 mov qword ptr [rbp + 4272], rax
 jmp xchain00236_n00399_α
 xchain00236_n00389_β:
 jmp xchain00236_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00236_n00398_α:
 jmp qword ptr [rbp + 4736]
 xchain00236_n00398_β:
 jmp xchain00236_n96_α
 xchain00236_n00391_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 call str_concat_d@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00236_n00400_α
 xchain00236_n00391_β:
 jmp xchain00236_n00066_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00236_n00401_α:
 jmp qword ptr [rbp + 1200]
 xchain00236_n00401_β:
 jmp xchain00236_n96_α
# IR_LIST_BANG
 xchain00236_n00393_α:
 mov qword ptr [rbp + 2720], 0
.Lx00402_0:
 mov rdi, qword ptr [rbp + 2736]
 mov rsi, qword ptr [rbp + 2744]
 mov rdx, qword ptr [rbp + 2720]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 cmp rax, 99
 je xchain00236_n00381_α
 jmp xchain00236_n00403_α
 xchain00236_n00393_β:
 inc qword ptr [rbp + 2720]
 jmp .Lx00402_0
# IR_MOVE_LABEL
 xchain00236_n00057_α:
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 2552], rax
 lea rax, [rip + xchain00236_n00059_α]
 mov qword ptr [rbp + 2560], rax
 jmp xchain00236_n00404_α
 xchain00236_n00057_β:
 jmp xchain00236_n00405_α
 xchain00236_n00059_α:
 jmp xchain00236_n00338_α
xchain00236_n00059_β:
 jmp xchain00236_n00338_α
# IR_MOVE_LABEL
 xchain00236_n00061_α:
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 1320], rax
 lea rax, [rip + xchain00236_n00406_α]
 mov qword ptr [rbp + 1328], rax
 jmp xchain00236_n00380_α
 xchain00236_n00061_β:
 jmp xchain00236_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00236_n00406_α:
 jmp qword ptr [rbp + 2064]
 xchain00236_n00406_β:
 jmp xchain00236_n96_α
# IR_VAR
 xchain00236_n00395_α:
 mov rax, qword ptr [rbp + 9456]
 mov qword ptr [rbp + 3776], rax
 mov rax, qword ptr [rbp + 9464]
 mov qword ptr [rbp + 3784], rax
 jmp xchain00236_n00407_α
 xchain00236_n00395_β:
 jmp xchain00236_n00408_α
 xchain00236_n00396_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 3064], rax
 jmp xchain00236_n00409_α
xchain00236_n00396_β:
 jmp xchain00236_n96_α
 xchain00236_n00397_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 4304]
 mov qword ptr [rbp + 4288], rax
 mov rax, qword ptr [rbp + 4312]
 mov qword ptr [rbp + 4296], rax
 jmp xchain00236_n00410_α
xchain00236_n00397_β:
 jmp xchain00236_n96_α
# IR_MOVE_LABEL
 xchain00236_n00399_α:
 mov rax, qword ptr [rbp + 4256]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 4264]
 mov qword ptr [rbp + 3032], rax
 lea rax, [rip + xchain00236_n00411_α]
 mov qword ptr [rbp + 3040], rax
 jmp xchain00236_n00412_α
 xchain00236_n00399_β:
 jmp xchain00236_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00236_n00411_α:
 jmp qword ptr [rbp + 4272]
 xchain00236_n00411_β:
 jmp xchain00236_n96_α
# IR_LIT_STRING
 xchain00236_n00400_α:
 mov qword ptr [rbp + 768], 1
 mov rax, qword ptr [rip + .Lx00413_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00236_n00414_α
 xchain00236_n00400_β:
 jmp xchain00236_n00066_β
.Lx00413_0:
 .quad .Lx00413_0_s
.Lx00413_0_s:
 .string "-"
 xchain00236_n00403_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 9456]
 mov rsi, qword ptr [rbp + 9464]
 mov rdx, qword ptr [rbp + 2704]
 mov rcx, qword ptr [rbp + 2712]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00236_n00393_β
 mov rdi, qword ptr [rbp + 2704]
 mov rsi, qword ptr [rbp + 2712]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain00236_n00338_α
 xchain00236_n00403_β:
 jmp xchain00236_n00393_β
 xchain00236_n00404_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2544]
 mov rdx, qword ptr [rbp + 2552]
 mov qword ptr [rbp + 9456], rax
 mov qword ptr [rbp + 9464], rdx
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain00236_n00405_α
 xchain00236_n00404_β:
 jmp xchain00236_n00405_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00236_n00415_α:
 jmp qword ptr [rbp + 2560]
 xchain00236_n00415_β:
 jmp xchain00236_n00405_α
# IR_VAR
 xchain00236_n00407_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 jmp xchain00236_n00416_α
 xchain00236_n00407_β:
 jmp xchain00236_n00408_α
 xchain00236_n00408_α:
 mov rdi, qword ptr [rip + .Lx00417_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00417_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00417_3]
 lea rdx, [rip + .Lx00417_4]
 jmp rax
.Lx00417_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00417_2
.Lx00417_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00417_2
.Lx00417_1:
 call rt_faildescr@PLT
.Lx00417_2:
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 cmp eax, 99
 je xchain00236_n00365_α
 jmp xchain00236_n00418_α
 xchain00236_n00408_β:
 jmp xchain00236_n00365_α
.Lx00417_0:
 .quad .Lx00417_0_s
.Lx00417_0_s:
 .string "getword"
# IR_MOVE_LABEL
 xchain00236_n00409_α:
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 3032], rax
 lea rax, [rip + xchain00236_n96_α]
 mov qword ptr [rbp + 3040], rax
 jmp xchain00236_n00412_α
 xchain00236_n00409_β:
 jmp xchain00236_n96_α
# IR_MOVE_LABEL
 xchain00236_n00410_α:
 mov rax, qword ptr [rbp + 4304]
 mov qword ptr [rbp + 4256], rax
 mov rax, qword ptr [rbp + 4312]
 mov qword ptr [rbp + 4264], rax
 lea rax, [rip + xchain00236_n96_α]
 mov qword ptr [rbp + 4272], rax
 jmp xchain00236_n00399_α
 xchain00236_n00410_β:
 jmp xchain00236_n96_α
# IR_MOVE_LABEL
 xchain00236_n00412_α:
 mov rax, qword ptr [rbp + 3024]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 3032]
 mov qword ptr [rbp + 2056], rax
 lea rax, [rip + xchain00236_n00419_α]
 mov qword ptr [rbp + 2064], rax
 jmp xchain00236_n00061_α
 xchain00236_n00412_β:
 jmp xchain00236_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00236_n00419_α:
 jmp qword ptr [rbp + 3040]
 xchain00236_n00419_β:
 jmp xchain00236_n96_α
 xchain00236_n00414_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 mov rdx, qword ptr [rbp + 768]
 mov rcx, qword ptr [rbp + 776]
 call str_concat_d@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00236_n00420_α
 xchain00236_n00414_β:
 jmp xchain00236_n00066_β
 xchain00236_n00421_α:
 jmp xchain00236_n00338_α
xchain00236_n00421_β:
 jmp xchain00236_n00338_α
# IR_VAR
 xchain00236_n00405_α:
 mov rax, qword ptr [rbp + 9456]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 9464]
 mov qword ptr [rbp + 2440], rax
 jmp xchain00236_n00422_α
 xchain00236_n00405_β:
 jmp xchain00236_n00325_α
# IR_LIST_BANG
 xchain00236_n00416_α:
 mov qword ptr [rbp + 3824], 0
.Lx00423_0:
 mov rdi, qword ptr [rbp + 3840]
 mov rsi, qword ptr [rbp + 3848]
 mov rdx, qword ptr [rbp + 3824]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 cmp rax, 99
 je xchain00236_n00408_α
 jmp xchain00236_n00424_α
 xchain00236_n00416_β:
 inc qword ptr [rbp + 3824]
 jmp .Lx00423_0
# IR_MOVE_LABEL
 xchain00236_n00418_α:
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 3648], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 3656], rax
 lea rax, [rip + xchain00236_n00075_α]
 mov qword ptr [rbp + 3664], rax
 jmp xchain00236_n00079_α
 xchain00236_n00418_β:
 jmp xchain00236_n00425_α
 xchain00236_n00075_α:
 jmp xchain00236_n00365_α
xchain00236_n00075_β:
 jmp xchain00236_n00365_α
# IR_VAR
 xchain00236_n00420_α:
 mov rax, qword ptr [rbp + 9424]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 9432]
 mov qword ptr [rbp + 840], rax
 jmp xchain00236_n00426_α
 xchain00236_n00420_β:
 jmp xchain00236_n00066_β
# IR_LIT_STRING
 xchain00236_n00422_α:
 mov qword ptr [rbp + 2464], 1
 mov rax, qword ptr [rip + .Lx00427_0]
 mov qword ptr [rbp + 2472], rax
 jmp xchain00236_n00082_α
 xchain00236_n00422_β:
 jmp xchain00236_n00325_α
.Lx00427_0:
 .quad .Lx00427_0_s
.Lx00427_0_s:
 .string "global"
 xchain00236_n00424_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 9456]
 mov rsi, qword ptr [rbp + 9464]
 mov rdx, qword ptr [rbp + 3808]
 mov rcx, qword ptr [rbp + 3816]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00236_n00416_β
 mov rdi, qword ptr [rbp + 3808]
 mov rsi, qword ptr [rbp + 3816]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3752], rdx
 jmp xchain00236_n00365_α
 xchain00236_n00424_β:
 jmp xchain00236_n00416_β
 xchain00236_n00079_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3648]
 mov rdx, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 9456], rax
 mov qword ptr [rbp + 9464], rdx
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 jmp xchain00236_n00425_α
 xchain00236_n00079_β:
 jmp xchain00236_n00425_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00236_n00428_α:
 jmp qword ptr [rbp + 3664]
 xchain00236_n00428_β:
 jmp xchain00236_n00425_α
# IR_FIELD_GET
 xchain00236_n00426_α:
 mov rdi, qword ptr [rip + .Lx00429_0]
 mov rsi, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00236_n00066_β
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00236_n00430_α
 xchain00236_n00426_β:
 jmp xchain00236_n00066_β
.Lx00429_0:
 .quad .Lx00429_0_s
.Lx00429_0_s:
 .string "lastline"
# IR_VAR
 xchain00236_n00082_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 jmp xchain00236_n00431_α
 xchain00236_n00082_β:
 jmp xchain00236_n00325_α
 xchain00236_n00083_α:
 jmp xchain00236_n00365_α
xchain00236_n00083_β:
 jmp xchain00236_n00365_α
# IR_VAR
 xchain00236_n00425_α:
 mov rax, qword ptr [1879052480]
 mov rdx, qword ptr [1879052488]
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 jmp xchain00236_n00086_α
 xchain00236_n00425_β:
 jmp xchain00236_n00432_α
 xchain00236_n00430_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 mov rdx, qword ptr [rbp + 800]
 mov rcx, qword ptr [rbp + 808]
 call str_concat_d@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00236_n00433_α
 xchain00236_n00430_β:
 jmp xchain00236_n00066_β
 xchain00236_n00431_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2432]
 mov rdx, qword ptr [rbp + 2440]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2464]
 mov rdx, qword ptr [rbp + 2472]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 2496]
 mov rdx, qword ptr [rbp + 2504]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00434_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00434_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00434_3]
 lea rdx, [rip + .Lx00434_4]
 jmp rax
.Lx00434_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00434_2
.Lx00434_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00434_2
.Lx00434_1:
 call rt_faildescr@PLT
.Lx00434_2:
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 cmp eax, 99
 je xchain00236_n00325_α
 jmp xchain00236_n00435_α
 xchain00236_n00431_β:
 jmp xchain00236_n00325_α
.Lx00434_0:
 .quad .Lx00434_0_s
.Lx00434_0_s:
 .string "addword"
# IR_VAR
 xchain00236_n00086_α:
 mov rax, qword ptr [rbp + 9456]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 9464]
 mov qword ptr [rbp + 3608], rax
 jmp xchain00236_n00436_α
 xchain00236_n00086_β:
 jmp xchain00236_n00432_α
# IR_VAR
 xchain00236_n00432_α:
 mov rax, qword ptr [rbp + 9456]
 mov qword ptr [rbp + 3408], rax
 mov rax, qword ptr [rbp + 9464]
 mov qword ptr [rbp + 3416], rax
 jmp xchain00236_n00090_α
 xchain00236_n00432_β:
 jmp xchain00236_n00353_α
 xchain00236_n00433_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 328], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+336]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn1388: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1388]
 lea rsi, [rbp + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain00236_n00066_β
 jmp xchain00236_n00066_β
 xchain00236_n00433_β:
 jmp xchain00236_n00066_β
 xchain00236_n00435_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2344], rax
 jmp xchain00236_n00325_α
xchain00236_n00435_β:
 jmp xchain00236_n00325_α
 xchain00236_n00436_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3568] -> [zr+3520]
 mov rax, qword ptr [rbp + 3568]
 mov qword ptr [rbp + 3520], rax
 mov rax, qword ptr [rbp + 3576]
 mov qword ptr [rbp + 3528], rax
# marshal arg1 = producer-box slot [zr+3600] -> [zr+3536]
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 3536], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 3544], rax
  .section .rodata
  .Lrkfn1391: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1391]
 lea rsi, [rbp + 3520]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 cmp eax, 99
 je xchain00236_n00432_α
 jmp xchain00236_n00432_α
 xchain00236_n00436_β:
 jmp xchain00236_n00432_α
# IR_VAR
 xchain00236_n00090_α:
 mov rax, qword ptr [rbp + 9472]
 mov qword ptr [rbp + 3440], rax
 mov rax, qword ptr [rbp + 9480]
 mov qword ptr [rbp + 3448], rax
 jmp xchain00236_n00437_α
 xchain00236_n00090_β:
 jmp xchain00236_n00353_α
# IR_VAR
 xchain00236_n00437_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 jmp xchain00236_n00438_α
 xchain00236_n00437_β:
 jmp xchain00236_n00353_α
 xchain00236_n00438_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3408]
 mov rdx, qword ptr [rbp + 3416]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3440]
 mov rdx, qword ptr [rbp + 3448]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 3472]
 mov rdx, qword ptr [rbp + 3480]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00439_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00439_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00439_3]
 lea rdx, [rip + .Lx00439_4]
 jmp rax
.Lx00439_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00439_2
.Lx00439_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00439_2
.Lx00439_1:
 call rt_faildescr@PLT
.Lx00439_2:
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 cmp eax, 99
 je xchain00236_n00353_α
 jmp xchain00236_n00440_α
 xchain00236_n00438_β:
 jmp xchain00236_n00353_α
.Lx00439_0:
 .quad .Lx00439_0_s
.Lx00439_0_s:
 .string "addword"
 xchain00236_n00440_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 3328]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3336]
 mov qword ptr [rbp + 3320], rax
 jmp xchain00236_n00353_α
xchain00236_n00440_β:
 jmp xchain00236_n00353_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rsp + 9400]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rsp + 9400]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
