  .intel_syntax noprefix
  .text
  .globl proc_addword_α
proc_addword_α:
#=======================================================================================================================
    .global proc_addword_α
    .global proc_addword_β
    .global proc_addword_γ
    .global proc_addword_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 2168], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 2160], rax
 pop rsi
proc_addword_α_body:
# IR_VAR
 xchain0_n0_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
# IR_VAR
 xchain0_n1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 2128], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 2136], rax
 jmp xchain0_n3_α
 xchain0_n1_β:
 jmp xchain0_n2_α
# IR_VAR
 xchain0_n2_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain0_n4_α
 xchain0_n2_β:
 jmp proc_addword_ω
 xchain0_n3_α:
# BOX CALL any(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+2096] -> [zr+2048]
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2056], rax
# marshal arg1 = producer-box slot [zr+2128] -> [zr+2064]
 mov rax, qword ptr [r12 + 2128]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 2072], rax
  .section .rodata
  .Lbynamefn4: .string "any"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn4]
 lea rsi, [r12 + 2048]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n2_α
# IR_UNOP
 xchain0_n4_α:
 mov eax, dword ptr [r12 + 2000]
 cmp eax, 99
 je proc_addword_ω
 cmp eax, 0
 je proc_addword_ω
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 1976], rax
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp proc_addword_ω
# IR_MOVE_LABEL
 xchain0_n5_α:
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 1944], rax
 lea rax, [rip + xchain0_n2_α]
 mov qword ptr [r12 + 1952], rax
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_addword_ω
# IR_MOVE_LABEL
 xchain0_n6_α:
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 1944], rax
 lea rax, [rip + proc_addword_ω]
 mov qword ptr [r12 + 1952], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp proc_addword_ω
# IR_VAR_REF
 xchain0_n7_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n11_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n8_α:
 jmp qword ptr [r12 + 1952]
 xchain0_n8_β:
 jmp proc_addword_ω
# IR_VAR
 xchain0_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1800], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n11_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n10_α:
 mov rdi, qword ptr [r12 + 1760]
 mov rsi, qword ptr [r12 + 1768]
 mov rdx, qword ptr [r12 + 1792]
 mov rcx, qword ptr [r12 + 1800]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n11_α
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n11_α
# IR_VAR_REF
 xchain0_n11_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n16_α
# IR_NULLTEST_VAR
 xchain0_n12_α:
 mov eax, dword ptr [r12 + 1824]
 cmp eax, 99
 je xchain0_n11_α
 mov rdi, qword ptr [r12 + 1824]
 mov rsi, qword ptr [r12 + 1832]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n11_α
 cmp eax, 0
 jne xchain0_n11_α
 mov rax, qword ptr [r12 + 1824]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 1864], rax
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n11_α
# IR_VAR
 xchain0_n13_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1624], rax
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
 lea rsi, [r12 + 1920]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 cmp eax, 99
 je xchain0_n11_α
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp xchain0_n11_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n15_α:
 mov rdi, qword ptr [r12 + 1584]
 mov rsi, qword ptr [r12 + 1592]
 mov rdx, qword ptr [r12 + 1616]
 mov rcx, qword ptr [r12 + 1624]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n16_α
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n16_α
# IR_VAR
 xchain0_n16_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1432], rax
 jmp xchain0_n19_α
 xchain0_n16_β:
 jmp xchain0_n20_α
# IR_ASSIGN_VAR
 xchain0_n17_α:
 mov rdi, qword ptr [r12 + 1856]
 mov rsi, qword ptr [r12 + 1864]
 mov rdx, qword ptr [r12 + 1904]
 mov rcx, qword ptr [r12 + 1912]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n11_α
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain0_n11_α
 xchain0_n17_β:
 jmp xchain0_n11_α
# IR_LIT_STRING
 xchain0_n18_α:
 mov qword ptr [r12 + 1680], 1
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [r12 + 1688], rax
 jmp xchain0_n21_α
 xchain0_n18_β:
 jmp xchain0_n16_α
.Lx29_0:
 .quad .Lx29_0_s
.Lx29_0_s:
 .string "global"
# IR_VAR
 xchain0_n19_α:
 mov rax, qword ptr [rbx + 192]
 mov rdx, qword ptr [rbx + 200]
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain0_n22_α
 xchain0_n19_β:
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n20_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp xchain0_n27_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n21_α:
 mov rdi, qword ptr [r12 + 1648]
 mov rsi, qword ptr [r12 + 1656]
 mov rdx, qword ptr [r12 + 1680]
 mov rcx, qword ptr [r12 + 1688]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n16_α
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n16_α
# IR_UNOP
 xchain0_n22_α:
 mov eax, dword ptr [r12 + 1520]
 cmp eax, 99
 je xchain0_n20_α
 cmp eax, 0
 je xchain0_n20_α
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1496], rax
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp xchain0_n20_α
# IR_VAR
 xchain0_n23_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1080], rax
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n27_α
# IR_DEREF variable -> value
 xchain0_n24_α:
 mov rdi, qword ptr [r12 + 1712]
 mov rsi, qword ptr [r12 + 1720]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n16_α
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain0_n28_α
 xchain0_n24_β:
 jmp xchain0_n16_α
# IR_LIST_BANG
 xchain0_n25_α:
 mov qword ptr [r12 + 1472], 0
.Lx39_0:
 mov rdi, qword ptr [r12 + 1488]
 mov rsi, qword ptr [r12 + 1496]
 mov rdx, qword ptr [r12 + 1472]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 cmp rax, 99
 je xchain0_n20_α
 jmp xchain0_n29_α
 xchain0_n25_β:
 inc qword ptr [r12 + 1472]
 jmp .Lx39_0
# IR_SUBSCRIPT x[i] variable
 xchain0_n26_α:
 mov rdi, qword ptr [r12 + 1040]
 mov rsi, qword ptr [r12 + 1048]
 mov rdx, qword ptr [r12 + 1072]
 mov rcx, qword ptr [r12 + 1080]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n27_α
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain0_n30_α
 xchain0_n26_β:
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n27_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain0_n31_α
 xchain0_n27_β:
 jmp proc_addword_ω
# IR_UNOP
 xchain0_n28_α:
 mov eax, dword ptr [r12 + 1744]
 cmp eax, 99
 je xchain0_n16_α
 cmp eax, 0
 jne xchain0_n16_α
 mov qword ptr [r12 + 1552], 0
 mov qword ptr [r12 + 1560], 0
 jmp xchain0_n32_α
 xchain0_n28_β:
 jmp xchain0_n16_α
 xchain0_n29_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 1456]
 mov rcx, qword ptr [r12 + 1464]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n25_β
 mov rdi, qword ptr [r12 + 1456]
 mov rsi, qword ptr [r12 + 1464]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain0_n33_α
 xchain0_n29_β:
 jmp xchain0_n25_β
# IR_LIT_STRING
 xchain0_n30_α:
 mov qword ptr [r12 + 1136], 1
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain0_n34_α
 xchain0_n30_β:
 jmp xchain0_n27_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "global"
# IR_VAR
 xchain0_n31_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 872], rax
 jmp xchain0_n35_α
 xchain0_n31_β:
 jmp proc_addword_ω
# IR_MOVE_LABEL
 xchain0_n32_α:
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 1368], rax
 lea rax, [rip + xchain0_n16_α]
 mov qword ptr [r12 + 1376], rax
 jmp xchain0_n36_α
 xchain0_n32_β:
 jmp xchain0_n20_α
# IR_MOVE_LABEL
 xchain0_n33_α:
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1368], rax
 lea rax, [rip + xchain0_n25_β]
 mov qword ptr [r12 + 1376], rax
 jmp xchain0_n36_α
 xchain0_n33_β:
 jmp xchain0_n20_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n34_α:
 mov rdi, qword ptr [r12 + 1104]
 mov rsi, qword ptr [r12 + 1112]
 mov rdx, qword ptr [r12 + 1136]
 mov rcx, qword ptr [r12 + 1144]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n27_α
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain0_n38_α
 xchain0_n34_β:
 jmp xchain0_n27_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n35_α:
 mov rdi, qword ptr [r12 + 832]
 mov rsi, qword ptr [r12 + 840]
 mov rdx, qword ptr [r12 + 864]
 mov rcx, qword ptr [r12 + 872]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain0_n39_α
 xchain0_n35_β:
 jmp proc_addword_ω
# IR_VAR_REF
 xchain0_n36_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n40_α
 xchain0_n36_β:
 jmp xchain0_n44_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n37_α:
 jmp qword ptr [r12 + 1376]
 xchain0_n37_β:
 jmp xchain0_n20_α
# IR_NULLTEST_VAR
 xchain0_n38_α:
 mov eax, dword ptr [r12 + 1168]
 cmp eax, 99
 je xchain0_n27_α
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n27_α
 cmp eax, 0
 jne xchain0_n27_α
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1208], rax
 jmp xchain0_n41_α
 xchain0_n38_β:
 jmp xchain0_n27_α
# IR_LIT_STRING
 xchain0_n39_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx59_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain0_n42_α
 xchain0_n39_β:
 jmp proc_addword_ω
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
 .string "global"
# IR_VAR
 xchain0_n40_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n43_α
 xchain0_n40_β:
 jmp xchain0_n44_α
# IR_VAR
 xchain0_n41_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1304], rax
 jmp xchain0_n45_α
 xchain0_n41_β:
 jmp xchain0_n27_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n42_α:
 mov rdi, qword ptr [r12 + 896]
 mov rsi, qword ptr [r12 + 904]
 mov rdx, qword ptr [r12 + 928]
 mov rcx, qword ptr [r12 + 936]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain0_n46_α
 xchain0_n42_β:
 jmp proc_addword_ω
# IR_SUBSCRIPT x[i] variable
 xchain0_n43_α:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n44_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain0_n47_α
 xchain0_n43_β:
 jmp xchain0_n44_α
# IR_VAR_REF
 xchain0_n44_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n48_α
 xchain0_n44_β:
 jmp proc_addword_ω
# IR_LIT_STRING
 xchain0_n45_α:
 mov qword ptr [r12 + 1328], 1
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [r12 + 1336], rax
 jmp xchain0_n49_α
 xchain0_n45_β:
 jmp xchain0_n27_α
.Lx68_0:
 .quad .Lx68_0_s
.Lx68_0_s:
 .string "global"
# IR_DEREF variable -> value
 xchain0_n46_α:
 mov rdi, qword ptr [r12 + 960]
 mov rsi, qword ptr [r12 + 968]
 call rt_deref@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain0_n50_α
 xchain0_n46_β:
 jmp proc_addword_ω
# IR_VAR
 xchain0_n47_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 536], rax
 jmp xchain0_n51_α
 xchain0_n47_β:
 jmp xchain0_n44_α
# IR_VAR
 xchain0_n48_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 264], rax
 jmp xchain0_n52_α
 xchain0_n48_β:
 jmp proc_addword_ω
# IR_MAKE_LIST
 xchain0_n49_α:
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1272], rax
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1288], rax
 lea rdi, [r12 + 1264]
 mov esi, 2
 call rt_make_list@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain0_n53_α
 xchain0_n49_β:
 jmp xchain0_n27_α
# IR_VAR
 xchain0_n50_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 1016], rax
 jmp xchain0_n54_α
 xchain0_n50_β:
 jmp proc_addword_ω
# IR_SUBSCRIPT x[i] variable
 xchain0_n51_α:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n44_α
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n55_α
 xchain0_n51_β:
 jmp xchain0_n44_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n52_α:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n56_α
 xchain0_n52_β:
 jmp proc_addword_ω
# IR_ASSIGN_VAR
 xchain0_n53_α:
 mov rdi, qword ptr [r12 + 1200]
 mov rsi, qword ptr [r12 + 1208]
 mov rdx, qword ptr [r12 + 1248]
 mov rcx, qword ptr [r12 + 1256]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n27_α
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain0_n27_α
 xchain0_n53_β:
 jmp xchain0_n27_α
 xchain0_n54_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+992] -> [zr+784]
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 792], rax
# marshal arg1 = producer-box slot [zr+1008] -> [zr+800]
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 808], rax
  .section .rodata
  .Lrkfn82: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn82]
 lea rsi, [r12 + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je proc_addword_ω
 jmp xchain0_n57_α
 xchain0_n54_β:
 jmp proc_addword_ω
# IR_NULLTEST_VAR
 xchain0_n55_α:
 mov eax, dword ptr [r12 + 560]
 cmp eax, 99
 je xchain0_n44_α
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n44_α
 cmp eax, 0
 jne xchain0_n44_α
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 600], rax
 jmp xchain0_n58_α
 xchain0_n55_β:
 jmp xchain0_n44_α
# IR_VAR
 xchain0_n56_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 328], rax
 jmp xchain0_n59_α
 xchain0_n56_β:
 jmp proc_addword_ω
 xchain0_n57_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 760], rax
 jmp xchain0_n60_α
xchain0_n57_β:
 jmp proc_addword_ω
# IR_VAR
 xchain0_n58_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 696], rax
 jmp xchain0_n61_α
 xchain0_n58_β:
 jmp xchain0_n44_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n59_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n62_α
 xchain0_n59_β:
 jmp proc_addword_ω
# IR_MOVE_LABEL
 xchain0_n60_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 120], rax
 lea rax, [rip + proc_addword_ω]
 mov qword ptr [r12 + 128], rax
 jmp xchain0_n63_α
 xchain0_n60_β:
 jmp proc_addword_ω
# IR_VAR
 xchain0_n61_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 728], rax
 jmp xchain0_n65_α
 xchain0_n61_β:
 jmp xchain0_n44_α
# IR_DEREF variable -> value
 xchain0_n62_α:
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_deref@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain0_n66_α
 xchain0_n62_β:
 jmp proc_addword_ω
 xchain0_n63_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 104], rax
 jmp xchain0_n67_α
xchain0_n63_β:
 jmp proc_addword_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n64_α:
 jmp qword ptr [r12 + 128]
 xchain0_n64_β:
 jmp proc_addword_ω
# IR_MAKE_LIST
 xchain0_n65_α:
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 664], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 680], rax
 lea rdi, [r12 + 656]
 mov esi, 2
 call rt_make_list@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain0_n68_α
 xchain0_n65_β:
 jmp xchain0_n44_α
# IR_VAR
 xchain0_n66_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 408], rax
 jmp xchain0_n69_α
 xchain0_n66_β:
 jmp proc_addword_ω
# IR_MOVE_LABEL
 xchain0_n67_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 72], rax
 lea rax, [rip + xchain0_n64_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_addword_ω
 xchain0_n67_β:
 jmp proc_addword_ω
# IR_ASSIGN_VAR
 xchain0_n68_α:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 640]
 mov rcx, qword ptr [r12 + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n44_α
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain0_n44_α
 xchain0_n68_β:
 jmp xchain0_n44_α
 xchain0_n69_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+176]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 184], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+192]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn106: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn106]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je proc_addword_ω
 jmp xchain0_n71_α
 xchain0_n69_β:
 jmp proc_addword_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n70_α:
 jmp qword ptr [r12 + 80]
 xchain0_n70_β:
 jmp proc_addword_ω
 xchain0_n71_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 152], rax
 jmp xchain0_n72_α
xchain0_n71_β:
 jmp proc_addword_ω
# IR_MOVE_LABEL
 xchain0_n72_α:
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 120], rax
 lea rax, [rip + proc_addword_ω]
 mov qword ptr [r12 + 128], rax
 jmp xchain0_n63_α
 xchain0_n72_β:
 jmp proc_addword_ω
proc_addword_β:
jmp proc_addword_ω
proc_addword_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 2168]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 2160]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_addword_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 2168]
pop r12
ret
  .globl proc_getword_α
proc_getword_α:
#=======================================================================================================================
    .global proc_getword_α
    .global proc_getword_β
    .global proc_getword_γ
    .global proc_getword_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 4728], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 4720], rax
 pop rsi
proc_getword_α_body:
# IR_VAR_REF
 xchain00001_n0_α:
 lea rdi, [rbx + 304]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4608], rax
 mov qword ptr [r12 + 4616], rdx
 jmp xchain00001_n1_α
 xchain00001_n0_β:
 jmp xchain00001_n5_α
# IR_NULLTEST_VAR
 xchain00001_n1_α:
 mov eax, dword ptr [r12 + 4608]
 cmp eax, 99
 je xchain00001_n5_α
 mov rdi, qword ptr [r12 + 4608]
 mov rsi, qword ptr [r12 + 4616]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n5_α
 cmp eax, 0
 jne xchain00001_n5_α
 mov rax, qword ptr [r12 + 4608]
 mov qword ptr [r12 + 4640], rax
 mov rax, qword ptr [r12 + 4616]
 mov qword ptr [r12 + 4648], rax
 jmp xchain00001_n2_α
 xchain00001_n1_β:
 jmp xchain00001_n5_α
# IR_LIT_INTEGER
 xchain00001_n2_α:
 mov qword ptr [r12 + 4688], 6
 mov rax, qword ptr [rip + .Lx00002_0]
 mov qword ptr [r12 + 4696], rax
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
 mov rdi, qword ptr [r12 + 4640]
 mov rsi, qword ptr [r12 + 4648]
 mov rdx, qword ptr [r12 + 4688]
 mov rcx, qword ptr [r12 + 4696]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00001_n5_α
 mov qword ptr [r12 + 4672], rax
 mov qword ptr [r12 + 4680], rdx
 jmp xchain00001_n6_α
 xchain00001_n4_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n5_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 4432], rax
 mov qword ptr [r12 + 4440], rdx
 jmp xchain00001_n7_α
 xchain00001_n5_β:
 jmp xchain00001_n8_α
# IR_LIT_CHARSET
 xchain00001_n6_α:
 mov qword ptr [r12 + 4576], 1
 mov dword ptr [r12 + 4580], -1
 mov rax, qword ptr [rip + .Lx00003_0]
 mov qword ptr [r12 + 4584], rax
 jmp xchain00001_n9_α
 xchain00001_n6_β:
 jmp xchain00001_n5_α
.Lx00003_0:
 .quad .Lx00003_0_s
.Lx00003_0_s:
 .string "\t\n "
# IR_UNOP
 xchain00001_n7_α:
 mov rdi, qword ptr [r12 + 4432]
 mov rsi, qword ptr [r12 + 4440]
 call rt_size_d@PLT
 mov qword ptr [r12 + 4400], rax
 mov qword ptr [r12 + 4408], rdx
 jmp xchain00001_n10_α
 xchain00001_n7_β:
 jmp xchain00001_n8_α
# IR_VAR
 xchain00001_n8_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 4224], rax
 mov qword ptr [r12 + 4232], rdx
 jmp xchain00001_n11_α
 xchain00001_n8_β:
 jmp xchain00001_n12_α
# IR_UNOP
 xchain00001_n9_α:
 mov rdi, qword ptr [r12 + 4576]
 mov rsi, qword ptr [r12 + 4584]
 call rt_cset_compl@PLT
 mov qword ptr [r12 + 4544], rax
 mov qword ptr [r12 + 4552], rdx
 jmp xchain00001_n13_α
 xchain00001_n9_β:
 jmp xchain00001_n5_α
# IR_LIT_INTEGER
 xchain00001_n10_α:
 mov qword ptr [r12 + 4464], 6
 mov rax, qword ptr [rip + .Lx00004_0]
 mov qword ptr [r12 + 4472], rax
 jmp xchain00001_n14_α
 xchain00001_n10_β:
 jmp xchain00001_n8_α
.Lx00004_0:
 .quad 0
# IR_UNOP
 xchain00001_n11_α:
 mov eax, dword ptr [r12 + 4224]
 cmp eax, 99
 je xchain00001_n12_α
 cmp eax, 0
 jne xchain00001_n12_α
 mov qword ptr [r12 + 4192], 0
 mov qword ptr [r12 + 4200], 0
 jmp xchain00001_n15_α
 xchain00001_n11_β:
 jmp xchain00001_n12_α
# IR_VAR
 xchain00001_n12_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 4000], rax
 mov qword ptr [r12 + 4008], rdx
 jmp xchain00001_n16_α
 xchain00001_n12_β:
 jmp xchain00001_n17_α
# IR_ASSIGN gva
 xchain00001_n13_α:
 mov rax, qword ptr [r12 + 4544]
 mov rdx, qword ptr [r12 + 4552]
 mov qword ptr [rbx + 288], rax
 mov qword ptr [rbx + 296], rdx
 mov qword ptr [r12 + 4528], rax
 mov qword ptr [r12 + 4536], rdx
 jmp xchain00001_n18_α
 xchain00001_n13_β:
 jmp xchain00001_n5_α
 xchain00001_n14_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 4400]
 cmp eax, 100
 je .Lx00005_0
 mov eax, dword ptr [r12 + 4464]
 cmp eax, 100
 je .Lx00005_0
 mov eax, dword ptr [r12 + 4400]
 cmp eax, 6
 jne .Lx00005_2
 mov eax, dword ptr [r12 + 4464]
 cmp eax, 6
 jne .Lx00005_2
.Lx00005_1:
 mov rax, qword ptr [r12 + 4408]
 mov rcx, qword ptr [r12 + 4472]
 cmp rax, rcx
 jle xchain00001_n8_α
 mov rcx, qword ptr [r12 + 4464]
 mov qword ptr [r12 + 4368], rcx
 mov rcx, qword ptr [r12 + 4472]
 mov qword ptr [r12 + 4376], rcx
 jmp xchain00001_n19_α
.Lx00005_0:
 mov rdi, qword ptr [r12 + 4400]
 mov rsi, qword ptr [r12 + 4408]
 mov rdx, qword ptr [r12 + 4464]
 mov rcx, qword ptr [r12 + 4472]
 mov r8d, 7
 lea r9, [r12 + 4368]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00005_1
 cmp eax, 1
 je xchain00001_n8_α
 jmp xchain00001_n19_α
.Lx00005_2:
 mov rdi, qword ptr [r12 + 4400]
 mov rsi, qword ptr [r12 + 4408]
 mov rdx, qword ptr [r12 + 4464]
 mov rcx, qword ptr [r12 + 4472]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n8_α
 mov rax, qword ptr [r12 + 4464]
 mov qword ptr [r12 + 4368], rax
 mov rax, qword ptr [r12 + 4472]
 mov qword ptr [r12 + 4376], rax
 jmp xchain00001_n19_α
 xchain00001_n14_β:
 jmp xchain00001_n8_α
# IR_MOVE_LABEL
 xchain00001_n15_α:
 mov rax, qword ptr [r12 + 4192]
 mov qword ptr [r12 + 3936], rax
 mov rax, qword ptr [r12 + 4200]
 mov qword ptr [r12 + 3944], rax
 lea rax, [rip + xchain00001_n12_α]
 mov qword ptr [r12 + 3952], rax
 jmp xchain00001_n20_α
 xchain00001_n15_β:
 jmp xchain00001_n17_α
# IR_VAR
 xchain00001_n16_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 4128], rax
 mov qword ptr [r12 + 4136], rdx
 jmp xchain00001_n22_α
 xchain00001_n16_β:
 jmp xchain00001_n17_α
# IR_VAR
 xchain00001_n17_α:
 mov rax, qword ptr [rbx + 288]
 mov rdx, qword ptr [rbx + 296]
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], rdx
 jmp xchain00001_n23_α
 xchain00001_n17_β:
 jmp xchain00001_n24_α
# IR_MOVE_LABEL
 xchain00001_n18_α:
 mov rax, qword ptr [r12 + 4528]
 mov qword ptr [r12 + 4496], rax
 mov rax, qword ptr [r12 + 4536]
 mov qword ptr [r12 + 4504], rax
 lea rax, [rip + xchain00001_n3_α]
 mov qword ptr [r12 + 4512], rax
 jmp xchain00001_n3_α
 xchain00001_n18_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n19_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 4336], rax
 mov qword ptr [r12 + 4344], rdx
 jmp xchain00001_n26_α
 xchain00001_n19_β:
 jmp proc_getword_ω
# IR_VAR
 xchain00001_n20_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 3904], rax
 mov qword ptr [r12 + 3912], rdx
 jmp xchain00001_n27_α
 xchain00001_n20_β:
 jmp proc_getword_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n21_α:
 jmp qword ptr [r12 + 3952]
 xchain00001_n21_β:
 jmp xchain00001_n17_α
# IR_UNOP
 xchain00001_n22_α:
 mov rdi, qword ptr [r12 + 4128]
 mov rsi, qword ptr [r12 + 4136]
 call rt_size_d@PLT
 mov qword ptr [r12 + 4096], rax
 mov qword ptr [r12 + 4104], rdx
 jmp xchain00001_n28_α
 xchain00001_n22_β:
 jmp xchain00001_n17_α
# IR_VAR
 xchain00001_n23_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 jmp xchain00001_n29_α
 xchain00001_n23_β:
 jmp xchain00001_n24_α
# IR_VAR
 xchain00001_n24_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 3312], rax
 mov qword ptr [r12 + 3320], rdx
 jmp xchain00001_n30_α
 xchain00001_n24_β:
 jmp xchain00001_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n25_α:
 jmp qword ptr [r12 + 4512]
 xchain00001_n25_β:
 jmp xchain00001_n5_α
 xchain00001_n26_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4336] -> [zr+4304]
 mov rax, qword ptr [r12 + 4336]
 mov qword ptr [r12 + 4304], rax
 mov rax, qword ptr [r12 + 4344]
 mov qword ptr [r12 + 4312], rax
  .section .rodata
  .Lrkfn145: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn145]
 lea rsi, [r12 + 4304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4288], rax
 mov qword ptr [r12 + 4296], rdx
 cmp eax, 99
 je proc_getword_ω
 jmp xchain00001_n31_α
 xchain00001_n26_β:
 jmp proc_getword_ω
 xchain00001_n27_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3904] -> [zr+3872]
 mov rax, qword ptr [r12 + 3904]
 mov qword ptr [r12 + 3872], rax
 mov rax, qword ptr [r12 + 3912]
 mov qword ptr [r12 + 3880], rax
  .section .rodata
  .Lrkfn147: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn147]
 lea rsi, [r12 + 3872]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3856], rax
 mov qword ptr [r12 + 3864], rdx
 cmp eax, 99
 je proc_getword_ω
 jmp xchain00001_n32_α
 xchain00001_n27_β:
 jmp proc_getword_ω
# IR_LIT_INTEGER
 xchain00001_n28_α:
 mov qword ptr [r12 + 4160], 6
 mov rax, qword ptr [rip + .Lx00006_0]
 mov qword ptr [r12 + 4168], rax
 jmp xchain00001_n33_α
 xchain00001_n28_β:
 jmp xchain00001_n17_α
.Lx00006_0:
 .quad 1
# IR_VAR
 xchain00001_n29_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 3536], rax
 mov qword ptr [r12 + 3544], rdx
 jmp xchain00001_n34_α
 xchain00001_n29_β:
 jmp xchain00001_n24_α
# IR_UNOP
 xchain00001_n30_α:
 mov rdi, qword ptr [r12 + 3312]
 mov rsi, qword ptr [r12 + 3320]
 call rt_size_d@PLT
 mov qword ptr [r12 + 3280], rax
 mov qword ptr [r12 + 3288], rdx
 jmp xchain00001_n35_α
 xchain00001_n30_β:
 jmp xchain00001_n5_α
# IR_RETURN
 xchain00001_n31_α:
 mov rax, qword ptr [r12 + 4288]
 mov rdx, qword ptr [r12 + 4296]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_getword_γ
# IR_ASSIGN gva
 xchain00001_n32_α:
 mov rax, qword ptr [r12 + 3856]
 mov rdx, qword ptr [r12 + 3864]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 3840], rax
 mov qword ptr [r12 + 3848], rdx
 jmp xchain00001_n36_α
 xchain00001_n32_β:
 jmp proc_getword_ω
# IR_COERCE_NUMERIC
 xchain00001_n33_α:
 mov eax, dword ptr [r12 + 4096]
 cmp eax, 7
 je .Lx00007_1
 cmp eax, 6
 jne .Lx00007_0
 mov eax, dword ptr [r12 + 4160]
 cmp eax, 6
 jne .Lx00007_0
.Lx00007_1:
 mov rax, qword ptr [r12 + 4096]
 mov qword ptr [r12 + 4064], rax
 mov rax, qword ptr [r12 + 4104]
 mov qword ptr [r12 + 4072], rax
 jmp .Lx00007_2
.Lx00007_0:
 lea rdi, [r12 + 4096]
 lea rsi, [r12 + 4160]
 lea rdx, [r12 + 4064]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00007_2:
 jmp xchain00001_n37_α
 xchain00001_n33_β:
 jmp xchain00001_n17_α
 xchain00001_n34_α:
# BOX CALL upto(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+3472] -> [zr+3408]
 mov rax, qword ptr [r12 + 3472]
 mov qword ptr [r12 + 3408], rax
 mov rax, qword ptr [r12 + 3480]
 mov qword ptr [r12 + 3416], rax
# marshal arg1 = producer-box slot [zr+3504] -> [zr+3424]
 mov rax, qword ptr [r12 + 3504]
 mov qword ptr [r12 + 3424], rax
 mov rax, qword ptr [r12 + 3512]
 mov qword ptr [r12 + 3432], rax
# marshal arg2 = producer-box slot [zr+3536] -> [zr+3440]
 mov rax, qword ptr [r12 + 3536]
 mov qword ptr [r12 + 3440], rax
 mov rax, qword ptr [r12 + 3544]
 mov qword ptr [r12 + 3448], rax
  .section .rodata
  .Lbynamefn108: .string "upto"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn108]
 lea rsi, [r12 + 3408]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3392], rax
 mov qword ptr [r12 + 3400], rdx
 cmp eax, 99
 je xchain00001_n24_α
 jmp xchain00001_n38_α
 xchain00001_n34_β:
 jmp xchain00001_n24_α
# IR_LIT_INTEGER
 xchain00001_n35_α:
 mov qword ptr [r12 + 3344], 6
 mov rax, qword ptr [rip + .Lx00008_0]
 mov qword ptr [r12 + 3352], rax
 jmp xchain00001_n39_α
 xchain00001_n35_β:
 jmp xchain00001_n5_α
.Lx00008_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00001_n36_α:
 mov qword ptr [r12 + 3808], 6
 mov rax, qword ptr [rip + .Lx00009_0]
 mov qword ptr [r12 + 3816], rax
 jmp xchain00001_n40_α
 xchain00001_n36_β:
 jmp xchain00001_n44_α
.Lx00009_0:
 .quad 1
 xchain00001_n37_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 4064]
 cmp eax, 100
 je .Lx00010_0
 mov eax, dword ptr [r12 + 4064]
 cmp eax, 6
 jne .Lx00010_2
.Lx00010_1:
 mov rax, qword ptr [r12 + 4072]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 4032], 6
 mov qword ptr [r12 + 4040], rax
 jmp xchain00001_n41_α
.Lx00010_0:
 mov rdi, qword ptr [r12 + 4064]
 mov rsi, qword ptr [r12 + 4072]
 mov rdx, qword ptr [r12 + 4160]
 mov rcx, qword ptr [r12 + 4168]
 mov r8d, 0
 lea r9, [r12 + 4032]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00010_3
.Lx00010_2:
 mov rdi, qword ptr [r12 + 4064]
 mov rsi, qword ptr [r12 + 4072]
 mov rdx, qword ptr [r12 + 4160]
 mov rcx, qword ptr [r12 + 4168]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n17_α
 mov qword ptr [r12 + 4032], rax
 mov qword ptr [r12 + 4040], rdx
.Lx00010_3:
 jmp xchain00001_n41_α
 xchain00001_n37_β:
 jmp xchain00001_n17_α
# IR_ASSIGN gva
 xchain00001_n38_α:
 mov rax, qword ptr [r12 + 3392]
 mov rdx, qword ptr [r12 + 3400]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 3376], rax
 mov qword ptr [r12 + 3384], rdx
 jmp xchain00001_n42_α
 xchain00001_n38_β:
 jmp xchain00001_n24_α
# IR_COERCE_NUMERIC
 xchain00001_n39_α:
 mov eax, dword ptr [r12 + 3280]
 cmp eax, 7
 je .Lx00011_1
 cmp eax, 6
 jne .Lx00011_0
 mov eax, dword ptr [r12 + 3344]
 cmp eax, 6
 jne .Lx00011_0
.Lx00011_1:
 mov rax, qword ptr [r12 + 3280]
 mov qword ptr [r12 + 3248], rax
 mov rax, qword ptr [r12 + 3288]
 mov qword ptr [r12 + 3256], rax
 jmp .Lx00011_2
.Lx00011_0:
 lea rdi, [r12 + 3280]
 lea rsi, [r12 + 3344]
 lea rdx, [r12 + 3248]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00011_2:
 jmp xchain00001_n43_α
 xchain00001_n39_β:
 jmp xchain00001_n5_α
# IR_ASSIGN gva
 xchain00001_n40_α:
 mov rax, qword ptr [r12 + 3808]
 mov rdx, qword ptr [r12 + 3816]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 3792], rax
 mov qword ptr [r12 + 3800], rdx
 jmp xchain00001_n44_α
 xchain00001_n40_β:
 jmp xchain00001_n44_α
 xchain00001_n41_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 4000]
 cmp eax, 100
 je .Lx00012_0
 mov eax, dword ptr [r12 + 4032]
 cmp eax, 100
 je .Lx00012_0
 mov eax, dword ptr [r12 + 4000]
 cmp eax, 6
 jne .Lx00012_2
 mov eax, dword ptr [r12 + 4032]
 cmp eax, 6
 jne .Lx00012_2
.Lx00012_1:
 mov rax, qword ptr [r12 + 4008]
 mov rcx, qword ptr [r12 + 4040]
 cmp rax, rcx
 jne xchain00001_n17_α
 mov rcx, qword ptr [r12 + 4032]
 mov qword ptr [r12 + 3968], rcx
 mov rcx, qword ptr [r12 + 4040]
 mov qword ptr [r12 + 3976], rcx
 jmp xchain00001_n45_α
.Lx00012_0:
 mov rdi, qword ptr [r12 + 4000]
 mov rsi, qword ptr [r12 + 4008]
 mov rdx, qword ptr [r12 + 4032]
 mov rcx, qword ptr [r12 + 4040]
 mov r8d, 9
 lea r9, [r12 + 3968]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00012_1
 cmp eax, 1
 je xchain00001_n17_α
 jmp xchain00001_n45_α
.Lx00012_2:
 mov rdi, qword ptr [r12 + 4000]
 mov rsi, qword ptr [r12 + 4008]
 mov rdx, qword ptr [r12 + 4032]
 mov rcx, qword ptr [r12 + 4040]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n17_α
 mov rax, qword ptr [r12 + 4032]
 mov qword ptr [r12 + 3968], rax
 mov rax, qword ptr [r12 + 4040]
 mov qword ptr [r12 + 3976], rax
 jmp xchain00001_n45_α
 xchain00001_n41_β:
 jmp xchain00001_n17_α
# IR_VAR
 xchain00001_n42_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 3168], rax
 mov qword ptr [r12 + 3176], rdx
 jmp xchain00001_n46_α
 xchain00001_n42_β:
 jmp xchain00001_n47_α
 xchain00001_n43_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 3248]
 cmp eax, 100
 je .Lx00013_0
 mov eax, dword ptr [r12 + 3248]
 cmp eax, 6
 jne .Lx00013_2
.Lx00013_1:
 mov rax, qword ptr [r12 + 3256]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 3216], 6
 mov qword ptr [r12 + 3224], rax
 jmp xchain00001_n48_α
.Lx00013_0:
 mov rdi, qword ptr [r12 + 3248]
 mov rsi, qword ptr [r12 + 3256]
 mov rdx, qword ptr [r12 + 3344]
 mov rcx, qword ptr [r12 + 3352]
 mov r8d, 0
 lea r9, [r12 + 3216]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00013_3
.Lx00013_2:
 mov rdi, qword ptr [r12 + 3248]
 mov rsi, qword ptr [r12 + 3256]
 mov rdx, qword ptr [r12 + 3344]
 mov rcx, qword ptr [r12 + 3352]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n5_α
 mov qword ptr [r12 + 3216], rax
 mov qword ptr [r12 + 3224], rdx
.Lx00013_3:
 jmp xchain00001_n48_α
 xchain00001_n43_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n44_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 3728], rax
 mov qword ptr [r12 + 3736], rdx
 jmp xchain00001_n49_α
 xchain00001_n44_β:
 jmp xchain00001_n17_α
# IR_MOVE_LABEL
 xchain00001_n45_α:
 mov rax, qword ptr [r12 + 3968]
 mov qword ptr [r12 + 3936], rax
 mov rax, qword ptr [r12 + 3976]
 mov qword ptr [r12 + 3944], rax
 lea rax, [rip + xchain00001_n17_α]
 mov qword ptr [r12 + 3952], rax
 jmp xchain00001_n20_α
 xchain00001_n45_β:
 jmp xchain00001_n17_α
 xchain00001_n46_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3168]
 mov rdx, qword ptr [r12 + 3176]
 mov qword ptr [r12 + 4752], rax
 mov qword ptr [r12 + 4760], rdx
 mov qword ptr [r12 + 3152], rax
 mov qword ptr [r12 + 3160], rdx
 jmp xchain00001_n47_α
 xchain00001_n46_β:
 jmp xchain00001_n47_α
# IR_VAR_REF
 xchain00001_n47_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2944], rax
 mov qword ptr [r12 + 2952], rdx
 jmp xchain00001_n50_α
 xchain00001_n47_β:
 jmp xchain00001_n54_α
# IR_ASSIGN gva
 xchain00001_n48_α:
 mov rax, qword ptr [r12 + 3216]
 mov rdx, qword ptr [r12 + 3224]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 3200], rax
 mov qword ptr [r12 + 3208], rdx
 jmp xchain00001_n51_α
 xchain00001_n48_β:
 jmp xchain00001_n5_α
# IR_LIT_INTEGER
 xchain00001_n49_α:
 mov qword ptr [r12 + 3760], 6
 mov rax, qword ptr [rip + .Lx00014_0]
 mov qword ptr [r12 + 3768], rax
 jmp xchain00001_n52_α
 xchain00001_n49_β:
 jmp xchain00001_n17_α
.Lx00014_0:
 .quad 1
# IR_VAR
 xchain00001_n50_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 jmp xchain00001_n53_α
 xchain00001_n50_β:
 jmp xchain00001_n54_α
# IR_MOVE_LABEL
 xchain00001_n51_α:
 mov rax, qword ptr [r12 + 3200]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 3208]
 mov qword ptr [r12 + 40], rax
 lea rax, [rip + xchain00001_n3_α]
 mov qword ptr [r12 + 48], rax
 jmp xchain00001_n55_α
 xchain00001_n51_β:
 jmp xchain00001_n5_α
# IR_COERCE_NUMERIC
 xchain00001_n52_α:
 mov eax, dword ptr [r12 + 3728]
 cmp eax, 7
 je .Lx00015_1
 cmp eax, 6
 jne .Lx00015_0
 mov eax, dword ptr [r12 + 3760]
 cmp eax, 6
 jne .Lx00015_0
.Lx00015_1:
 mov rax, qword ptr [r12 + 3728]
 mov qword ptr [r12 + 3696], rax
 mov rax, qword ptr [r12 + 3736]
 mov qword ptr [r12 + 3704], rax
 jmp .Lx00015_2
.Lx00015_0:
 lea rdi, [r12 + 3728]
 lea rsi, [r12 + 3760]
 lea rdx, [r12 + 3696]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00015_2:
 jmp xchain00001_n57_α
 xchain00001_n52_β:
 jmp xchain00001_n17_α
# IR_SUBSCRIPT x[i] variable
 xchain00001_n53_α:
 mov rdi, qword ptr [r12 + 2944]
 mov rsi, qword ptr [r12 + 2952]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00001_n54_α
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 jmp xchain00001_n58_α
 xchain00001_n53_β:
 jmp xchain00001_n54_α
# IR_VAR_REF
 xchain00001_n54_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 jmp xchain00001_n59_α
 xchain00001_n54_β:
 jmp xchain00001_n63_α
 xchain00001_n55_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 24], rax
 jmp xchain00001_n5_α
xchain00001_n55_β:
 jmp xchain00001_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n56_α:
 jmp qword ptr [r12 + 48]
 xchain00001_n56_β:
 jmp xchain00001_n5_α
 xchain00001_n57_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 3696]
 cmp eax, 100
 je .Lx00016_0
 mov eax, dword ptr [r12 + 3696]
 cmp eax, 6
 jne .Lx00016_2
.Lx00016_1:
 mov rax, qword ptr [r12 + 3704]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 3664], 6
 mov qword ptr [r12 + 3672], rax
 jmp xchain00001_n60_α
.Lx00016_0:
 mov rdi, qword ptr [r12 + 3696]
 mov rsi, qword ptr [r12 + 3704]
 mov rdx, qword ptr [r12 + 3760]
 mov rcx, qword ptr [r12 + 3768]
 mov r8d, 0
 lea r9, [r12 + 3664]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00016_3
.Lx00016_2:
 mov rdi, qword ptr [r12 + 3696]
 mov rsi, qword ptr [r12 + 3704]
 mov rdx, qword ptr [r12 + 3760]
 mov rcx, qword ptr [r12 + 3768]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n17_α
 mov qword ptr [r12 + 3664], rax
 mov qword ptr [r12 + 3672], rdx
.Lx00016_3:
 jmp xchain00001_n60_α
 xchain00001_n57_β:
 jmp xchain00001_n17_α
# IR_DEREF variable -> value
 xchain00001_n58_α:
 mov rdi, qword ptr [r12 + 3008]
 mov rsi, qword ptr [r12 + 3016]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n54_α
 mov qword ptr [r12 + 3040], rax
 mov qword ptr [r12 + 3048], rdx
 jmp xchain00001_n61_α
 xchain00001_n58_β:
 jmp xchain00001_n54_α
# IR_VAR
 xchain00001_n59_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 2800], rax
 mov qword ptr [r12 + 2808], rdx
 jmp xchain00001_n62_α
 xchain00001_n59_β:
 jmp xchain00001_n63_α
# IR_ASSIGN gva
 xchain00001_n60_α:
 mov rax, qword ptr [r12 + 3664]
 mov rdx, qword ptr [r12 + 3672]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 3648], rax
 mov qword ptr [r12 + 3656], rdx
 jmp xchain00001_n64_α
 xchain00001_n60_β:
 jmp xchain00001_n17_α
# IR_LIT_STRING
 xchain00001_n61_α:
 mov qword ptr [r12 + 3120], 1
 mov rax, qword ptr [rip + .Lx00017_0]
 mov qword ptr [r12 + 3128], rax
 jmp xchain00001_n65_α
 xchain00001_n61_β:
 jmp xchain00001_n71_α
.Lx00017_0:
 .quad .Lx00017_0_s
.Lx00017_0_s:
 .string "'"
# IR_SUBSCRIPT x[i] variable
 xchain00001_n62_α:
 mov rdi, qword ptr [r12 + 2768]
 mov rsi, qword ptr [r12 + 2776]
 mov rdx, qword ptr [r12 + 2800]
 mov rcx, qword ptr [r12 + 2808]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00001_n63_α
 mov qword ptr [r12 + 2832], rax
 mov qword ptr [r12 + 2840], rdx
 jmp xchain00001_n66_α
 xchain00001_n62_β:
 jmp xchain00001_n63_α
# IR_VAR
 xchain00001_n63_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 jmp xchain00001_n67_α
 xchain00001_n63_β:
 jmp xchain00001_n68_α
 xchain00001_n64_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 3632], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 3640], rax
 jmp xchain00001_n69_α
xchain00001_n64_β:
 jmp xchain00001_n17_α
# IR_MOVE_LABEL
 xchain00001_n65_α:
 mov rax, qword ptr [r12 + 3120]
 mov qword ptr [r12 + 3056], rax
 mov rax, qword ptr [r12 + 3128]
 mov qword ptr [r12 + 3064], rax
 lea rax, [rip + xchain00001_n71_α]
 mov qword ptr [r12 + 3072], rax
 jmp xchain00001_n70_α
 xchain00001_n65_β:
 jmp xchain00001_n54_α
# IR_DEREF variable -> value
 xchain00001_n66_α:
 mov rdi, qword ptr [r12 + 2832]
 mov rsi, qword ptr [r12 + 2840]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n63_α
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], rdx
 jmp xchain00001_n73_α
 xchain00001_n66_β:
 jmp xchain00001_n63_α
# IR_VAR
 xchain00001_n67_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 jmp xchain00001_n74_α
 xchain00001_n67_β:
 jmp xchain00001_n68_α
# IR_VAR
 xchain00001_n68_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 jmp xchain00001_n75_α
 xchain00001_n68_β:
 jmp xchain00001_n76_α
# IR_MOVE_LABEL
 xchain00001_n69_α:
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 3600], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 3608], rax
 lea rax, [rip + xchain00001_n17_α]
 mov qword ptr [r12 + 3616], rax
 jmp xchain00001_n77_α
 xchain00001_n69_β:
 jmp xchain00001_n17_α
 xchain00001_n70_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 3040]
 mov rsi, qword ptr [r12 + 3048]
 mov rdx, qword ptr [r12 + 3056]
 mov rcx, qword ptr [r12 + 3064]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n72_α
 mov rdi, qword ptr [r12 + 3056]
 mov rsi, qword ptr [r12 + 3064]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 jmp xchain00001_n79_α
 xchain00001_n70_β:
 jmp xchain00001_n72_α
# IR_LIT_STRING
 xchain00001_n71_α:
 mov qword ptr [r12 + 3088], 1
 mov rax, qword ptr [rip + .Lx00018_0]
 mov qword ptr [r12 + 3096], rax
 jmp xchain00001_n80_α
 xchain00001_n71_β:
 jmp xchain00001_n54_α
.Lx00018_0:
 .quad .Lx00018_0_s
.Lx00018_0_s:
 .string "\""
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n72_α:
 jmp qword ptr [r12 + 3072]
 xchain00001_n72_β:
 jmp xchain00001_n54_α
# IR_LIT_STRING
 xchain00001_n73_α:
 mov qword ptr [r12 + 2880], 1
 mov rax, qword ptr [rip + .Lx00019_0]
 mov qword ptr [r12 + 2888], rax
 jmp xchain00001_n81_α
 xchain00001_n73_β:
 jmp xchain00001_n63_α
.Lx00019_0:
 .quad .Lx00019_0_s
.Lx00019_0_s:
 .string "#"
# IR_VAR
 xchain00001_n74_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 2704], rax
 mov qword ptr [r12 + 2712], rdx
 jmp xchain00001_n82_α
 xchain00001_n74_β:
 jmp xchain00001_n68_α
# IR_LIT_INTEGER
 xchain00001_n75_α:
 mov qword ptr [r12 + 2512], 6
 mov rax, qword ptr [rip + .Lx00020_0]
 mov qword ptr [r12 + 2520], rax
 jmp xchain00001_n83_α
 xchain00001_n75_β:
 jmp xchain00001_n76_α
.Lx00020_0:
 .quad 1
# IR_VAR_REF
 xchain00001_n76_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain00001_n84_α
 xchain00001_n76_β:
 jmp proc_getword_ω
# IR_MOVE_LABEL
 xchain00001_n77_α:
 mov rax, qword ptr [r12 + 3600]
 mov qword ptr [r12 + 3568], rax
 mov rax, qword ptr [r12 + 3608]
 mov qword ptr [r12 + 3576], rax
 lea rax, [rip + xchain00001_n78_α]
 mov qword ptr [r12 + 3584], rax
 jmp xchain00001_n17_α
 xchain00001_n77_β:
 jmp xchain00001_n17_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n78_α:
 jmp qword ptr [r12 + 3616]
 xchain00001_n78_β:
 jmp xchain00001_n17_α
# IR_VAR
 xchain00001_n79_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 jmp xchain00001_n86_α
 xchain00001_n79_β:
 jmp xchain00001_n87_α
# IR_MOVE_LABEL
 xchain00001_n80_α:
 mov rax, qword ptr [r12 + 3088]
 mov qword ptr [r12 + 3056], rax
 mov rax, qword ptr [r12 + 3096]
 mov qword ptr [r12 + 3064], rax
 lea rax, [rip + xchain00001_n54_α]
 mov qword ptr [r12 + 3072], rax
 jmp xchain00001_n70_α
 xchain00001_n80_β:
 jmp xchain00001_n54_α
 xchain00001_n81_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 2864]
 mov rsi, qword ptr [r12 + 2872]
 mov rdx, qword ptr [r12 + 2880]
 mov rcx, qword ptr [r12 + 2888]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n63_α
 mov rdi, qword ptr [r12 + 2880]
 mov rsi, qword ptr [r12 + 2888]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 2736], rax
 mov qword ptr [r12 + 2744], rdx
 jmp xchain00001_n88_α
 xchain00001_n81_β:
 jmp xchain00001_n63_α
 xchain00001_n82_α:
# BOX CALL many(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+2640] -> [zr+2576]
 mov rax, qword ptr [r12 + 2640]
 mov qword ptr [r12 + 2576], rax
 mov rax, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 2584], rax
# marshal arg1 = producer-box slot [zr+2672] -> [zr+2592]
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 2592], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 2600], rax
# marshal arg2 = producer-box slot [zr+2704] -> [zr+2608]
 mov rax, qword ptr [r12 + 2704]
 mov qword ptr [r12 + 2608], rax
 mov rax, qword ptr [r12 + 2712]
 mov qword ptr [r12 + 2616], rax
  .section .rodata
  .Lbynamefn156: .string "many"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn156]
 lea rsi, [r12 + 2576]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 cmp eax, 99
 je xchain00001_n68_α
 jmp xchain00001_n89_α
 xchain00001_n82_β:
 jmp xchain00001_n68_α
# IR_COERCE_NUMERIC
 xchain00001_n83_α:
 mov eax, dword ptr [r12 + 2480]
 cmp eax, 7
 je .Lx00021_1
 cmp eax, 6
 jne .Lx00021_0
 mov eax, dword ptr [r12 + 2512]
 cmp eax, 6
 jne .Lx00021_0
.Lx00021_1:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 2448], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 2456], rax
 jmp .Lx00021_2
.Lx00021_0:
 lea rdi, [r12 + 2480]
 lea rsi, [r12 + 2512]
 lea rdx, [r12 + 2448]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00021_2:
 jmp xchain00001_n90_α
 xchain00001_n83_β:
 jmp xchain00001_n76_α
# IR_VAR
 xchain00001_n84_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain00001_n91_α
 xchain00001_n84_β:
 jmp proc_getword_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n85_α:
 jmp qword ptr [r12 + 3584]
 xchain00001_n85_β:
 jmp xchain00001_n17_α
# IR_UNOP
 xchain00001_n86_α:
 mov eax, dword ptr [r12 + 1776]
 cmp eax, 99
 je xchain00001_n87_α
 cmp eax, 0
 jne xchain00001_n87_α
 mov qword ptr [r12 + 1744], 0
 mov qword ptr [r12 + 1752], 0
 jmp xchain00001_n92_α
 xchain00001_n86_β:
 jmp xchain00001_n87_α
# IR_VAR
 xchain00001_n87_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain00001_n93_α
 xchain00001_n87_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n88_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 jmp xchain00001_n94_α
 xchain00001_n88_β:
 jmp xchain00001_n5_α
# IR_ASSIGN gva
 xchain00001_n89_α:
 mov rax, qword ptr [r12 + 2560]
 mov rdx, qword ptr [r12 + 2568]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 2544], rax
 mov qword ptr [r12 + 2552], rdx
 jmp xchain00001_n95_α
 xchain00001_n89_β:
 jmp xchain00001_n68_α
 xchain00001_n90_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2448]
 cmp eax, 100
 je .Lx00022_0
 mov eax, dword ptr [r12 + 2448]
 cmp eax, 6
 jne .Lx00022_2
.Lx00022_1:
 mov rax, qword ptr [r12 + 2456]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 2416], 6
 mov qword ptr [r12 + 2424], rax
 jmp xchain00001_n96_α
.Lx00022_0:
 mov rdi, qword ptr [r12 + 2448]
 mov rsi, qword ptr [r12 + 2456]
 mov rdx, qword ptr [r12 + 2512]
 mov rcx, qword ptr [r12 + 2520]
 mov r8d, 0
 lea r9, [r12 + 2416]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00022_3
.Lx00022_2:
 mov rdi, qword ptr [r12 + 2448]
 mov rsi, qword ptr [r12 + 2456]
 mov rdx, qword ptr [r12 + 2512]
 mov rcx, qword ptr [r12 + 2520]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n76_α
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
.Lx00022_3:
 jmp xchain00001_n96_α
 xchain00001_n90_β:
 jmp xchain00001_n76_α
# IR_LIT_INTEGER
 xchain00001_n91_α:
 mov qword ptr [r12 + 2320], 6
 mov rax, qword ptr [rip + .Lx00023_0]
 mov qword ptr [r12 + 2328], rax
 jmp xchain00001_n97_α
 xchain00001_n91_β:
 jmp proc_getword_ω
.Lx00023_0:
 .quad 1
# IR_VAR_REF
 xchain00001_n92_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 jmp xchain00001_n98_α
 xchain00001_n92_β:
 jmp xchain00001_n00024_α
# IR_LIT_INTEGER
 xchain00001_n93_α:
 mov qword ptr [r12 + 1712], 6
 mov rax, qword ptr [rip + .Lx00025_0]
 mov qword ptr [r12 + 1720], rax
 jmp xchain00001_n99_α
 xchain00001_n93_β:
 jmp xchain00001_n5_α
.Lx00025_0:
 .quad 1
# IR_UNOP
 xchain00001_n94_α:
 mov rdi, qword ptr [r12 + 1952]
 mov rsi, qword ptr [r12 + 1960]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain00001_n00026_α
 xchain00001_n94_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n95_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 jmp xchain00001_n00027_α
 xchain00001_n95_β:
 jmp proc_getword_ω
# IR_ASSIGN gva
 xchain00001_n96_α:
 mov rax, qword ptr [r12 + 2416]
 mov rdx, qword ptr [r12 + 2424]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 jmp xchain00001_n76_α
 xchain00001_n96_β:
 jmp xchain00001_n76_α
# IR_COERCE_NUMERIC
 xchain00001_n97_α:
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 7
 je .Lx00028_1
 cmp eax, 6
 jne .Lx00028_0
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 6
 jne .Lx00028_0
.Lx00028_1:
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 2256], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 2264], rax
 jmp .Lx00028_2
.Lx00028_0:
 lea rdi, [r12 + 2288]
 lea rsi, [r12 + 2320]
 lea rdx, [r12 + 2256]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00028_2:
 jmp xchain00001_n00029_α
 xchain00001_n97_β:
 jmp proc_getword_ω
# IR_VAR
 xchain00001_n98_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain00001_n00030_α
 xchain00001_n98_β:
 jmp xchain00001_n00024_α
# IR_COERCE_NUMERIC
 xchain00001_n99_α:
 mov eax, dword ptr [r12 + 1680]
 cmp eax, 7
 je .Lx00031_1
 cmp eax, 6
 jne .Lx00031_0
 mov eax, dword ptr [r12 + 1712]
 cmp eax, 6
 jne .Lx00031_0
.Lx00031_1:
 mov rax, qword ptr [r12 + 1680]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1688]
 mov qword ptr [r12 + 1656], rax
 jmp .Lx00031_2
.Lx00031_0:
 lea rdi, [r12 + 1680]
 lea rsi, [r12 + 1712]
 lea rdx, [r12 + 1648]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00031_2:
 jmp xchain00001_n00032_α
 xchain00001_n99_β:
 jmp xchain00001_n5_α
# IR_LIT_INTEGER
 xchain00001_n00026_α:
 mov qword ptr [r12 + 1984], 6
 mov rax, qword ptr [rip + .Lx00033_0]
 mov qword ptr [r12 + 1992], rax
 jmp xchain00001_n00034_α
 xchain00001_n00026_β:
 jmp xchain00001_n5_α
.Lx00033_0:
 .quad 1
# IR_VAR
 xchain00001_n00027_α:
 mov rax, qword ptr [r12 + 4752]
 mov qword ptr [r12 + 2112], rax
 mov rax, qword ptr [r12 + 4760]
 mov qword ptr [r12 + 2120], rax
 jmp xchain00001_n00035_α
 xchain00001_n00027_β:
 jmp proc_getword_ω
 xchain00001_n00029_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 100
 je .Lx00036_0
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 6
 jne .Lx00036_2
.Lx00036_1:
 mov rax, qword ptr [r12 + 2264]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [r12 + 2224], 6
 mov qword ptr [r12 + 2232], rax
 jmp xchain00001_n00037_α
.Lx00036_0:
 mov rdi, qword ptr [r12 + 2256]
 mov rsi, qword ptr [r12 + 2264]
 mov rdx, qword ptr [r12 + 2320]
 mov rcx, qword ptr [r12 + 2328]
 mov r8d, 1
 lea r9, [r12 + 2224]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00036_3
.Lx00036_2:
 mov rdi, qword ptr [r12 + 2256]
 mov rsi, qword ptr [r12 + 2264]
 mov rdx, qword ptr [r12 + 2320]
 mov rcx, qword ptr [r12 + 2328]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_getword_ω
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
.Lx00036_3:
 jmp xchain00001_n00037_α
 xchain00001_n00029_β:
 jmp proc_getword_ω
# IR_SUBSCRIPT x[i] variable
 xchain00001_n00030_α:
 mov rdi, qword ptr [r12 + 1488]
 mov rsi, qword ptr [r12 + 1496]
 mov rdx, qword ptr [r12 + 1520]
 mov rcx, qword ptr [r12 + 1528]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00001_n00024_α
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain00001_n00038_α
 xchain00001_n00030_β:
 jmp xchain00001_n00024_α
# IR_VAR
 xchain00001_n00024_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain00001_n00039_α
 xchain00001_n00024_β:
 jmp xchain00001_n00040_α
 xchain00001_n00032_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1648]
 cmp eax, 100
 je .Lx00041_0
 mov eax, dword ptr [r12 + 1648]
 cmp eax, 6
 jne .Lx00041_2
.Lx00041_1:
 mov rax, qword ptr [r12 + 1656]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 1616], 6
 mov qword ptr [r12 + 1624], rax
 jmp xchain00001_n00001_α
.Lx00041_0:
 mov rdi, qword ptr [r12 + 1648]
 mov rsi, qword ptr [r12 + 1656]
 mov rdx, qword ptr [r12 + 1712]
 mov rcx, qword ptr [r12 + 1720]
 mov r8d, 0
 lea r9, [r12 + 1616]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00041_3
.Lx00041_2:
 mov rdi, qword ptr [r12 + 1648]
 mov rsi, qword ptr [r12 + 1656]
 mov rdx, qword ptr [r12 + 1712]
 mov rcx, qword ptr [r12 + 1720]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n5_α
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
.Lx00041_3:
 jmp xchain00001_n00001_α
 xchain00001_n00032_β:
 jmp xchain00001_n5_α
# IR_COERCE_NUMERIC
 xchain00001_n00034_α:
 mov eax, dword ptr [r12 + 1920]
 cmp eax, 7
 je .Lx00042_1
 cmp eax, 6
 jne .Lx00042_0
 mov eax, dword ptr [r12 + 1984]
 cmp eax, 6
 jne .Lx00042_0
.Lx00042_1:
 mov rax, qword ptr [r12 + 1920]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 1896], rax
 jmp .Lx00042_2
.Lx00042_0:
 lea rdi, [r12 + 1920]
 lea rsi, [r12 + 1984]
 lea rdx, [r12 + 1888]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00042_2:
 jmp xchain00001_n00043_α
 xchain00001_n00034_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n00035_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain00001_n00044_α
 xchain00001_n00035_β:
 jmp proc_getword_ω
# IR_SUBSCRIPT x[i] variable
 xchain00001_n00037_α:
 mov rdi, qword ptr [r12 + 2192]
 mov rsi, qword ptr [r12 + 2200]
 mov rdx, qword ptr [r12 + 2224]
 mov rcx, qword ptr [r12 + 2232]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_getword_ω
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 jmp xchain00001_n00045_α
 xchain00001_n00037_β:
 jmp proc_getword_ω
# IR_DEREF variable -> value
 xchain00001_n00038_α:
 mov rdi, qword ptr [r12 + 1552]
 mov rsi, qword ptr [r12 + 1560]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n00024_α
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain00001_n00002_α
 xchain00001_n00038_β:
 jmp xchain00001_n00024_α
# IR_LIT_INTEGER
 xchain00001_n00039_α:
 mov qword ptr [r12 + 1440], 6
 mov rax, qword ptr [rip + .Lx00046_0]
 mov qword ptr [r12 + 1448], rax
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
 mov rax, qword ptr [r12 + 1616]
 mov rdx, qword ptr [r12 + 1624]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00001_n00049_α
 xchain00001_n00001_β:
 jmp xchain00001_n5_α
 xchain00001_n00043_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1888]
 cmp eax, 100
 je .Lx00050_0
 mov eax, dword ptr [r12 + 1888]
 cmp eax, 6
 jne .Lx00050_2
.Lx00050_1:
 mov rax, qword ptr [r12 + 1896]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 1856], 6
 mov qword ptr [r12 + 1864], rax
 jmp xchain00001_n00003_α
.Lx00050_0:
 mov rdi, qword ptr [r12 + 1888]
 mov rsi, qword ptr [r12 + 1896]
 mov rdx, qword ptr [r12 + 1984]
 mov rcx, qword ptr [r12 + 1992]
 mov r8d, 0
 lea r9, [r12 + 1856]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00050_3
.Lx00050_2:
 mov rdi, qword ptr [r12 + 1888]
 mov rsi, qword ptr [r12 + 1896]
 mov rdx, qword ptr [r12 + 1984]
 mov rcx, qword ptr [r12 + 1992]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n5_α
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
.Lx00050_3:
 jmp xchain00001_n00003_α
 xchain00001_n00043_β:
 jmp xchain00001_n5_α
# IR_SUBSCRIPT section
 xchain00001_n00044_α:
 mov rdi, qword ptr [r12 + 2080]
 mov rsi, qword ptr [r12 + 2088]
 mov rdx, qword ptr [r12 + 2112]
 mov rcx, qword ptr [r12 + 2120]
 mov r8, qword ptr [r12 + 2144]
 mov r9, qword ptr [r12 + 2152]
 call subscript_get2@PLT
 cmp eax, 99
 je proc_getword_ω
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 jmp xchain00001_n00051_α
 xchain00001_n00044_β:
 jmp proc_getword_ω
# IR_DEREF variable -> value
 xchain00001_n00045_α:
 mov rdi, qword ptr [r12 + 2352]
 mov rsi, qword ptr [r12 + 2360]
 call rt_deref@PLT
 cmp eax, 99
 je proc_getword_ω
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 jmp xchain00001_n00052_α
 xchain00001_n00045_β:
 jmp proc_getword_ω
 xchain00001_n00002_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1584]
 mov rdx, qword ptr [r12 + 1592]
 mov qword ptr [r12 + 4736], rax
 mov qword ptr [r12 + 4744], rdx
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain00001_n00024_α
 xchain00001_n00002_β:
 jmp xchain00001_n00024_α
# IR_COERCE_NUMERIC
 xchain00001_n00047_α:
 mov eax, dword ptr [r12 + 1408]
 cmp eax, 7
 je .Lx00053_1
 cmp eax, 6
 jne .Lx00053_0
 mov eax, dword ptr [r12 + 1440]
 cmp eax, 6
 jne .Lx00053_0
.Lx00053_1:
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1384], rax
 jmp .Lx00053_2
.Lx00053_0:
 lea rdi, [r12 + 1408]
 lea rsi, [r12 + 1440]
 lea rdx, [r12 + 1376]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00053_2:
 jmp xchain00001_n00054_α
 xchain00001_n00047_β:
 jmp xchain00001_n00040_α
# IR_VAR
 xchain00001_n00040_α:
 mov rax, qword ptr [r12 + 4736]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 4744]
 mov qword ptr [r12 + 1176], rax
 jmp xchain00001_n00004_α
 xchain00001_n00040_β:
 jmp xchain00001_n00055_α
# IR_MOVE_LABEL
 xchain00001_n00049_α:
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 120], rax
 lea rax, [rip + xchain00001_n3_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain00001_n00056_α
 xchain00001_n00049_β:
 jmp xchain00001_n5_α
# IR_ASSIGN gva
 xchain00001_n00003_α:
 mov rax, qword ptr [r12 + 1856]
 mov rdx, qword ptr [r12 + 1864]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 jmp xchain00001_n00005_α
 xchain00001_n00003_β:
 jmp xchain00001_n5_α
# IR_RETURN
 xchain00001_n00051_α:
 mov rax, qword ptr [r12 + 2048]
 mov rdx, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_getword_γ
# IR_RETURN
 xchain00001_n00052_α:
 mov rax, qword ptr [r12 + 2384]
 mov rdx, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_getword_γ
 xchain00001_n00054_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1376]
 cmp eax, 100
 je .Lx00057_0
 mov eax, dword ptr [r12 + 1376]
 cmp eax, 6
 jne .Lx00057_2
.Lx00057_1:
 mov rax, qword ptr [r12 + 1384]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 1344], 6
 mov qword ptr [r12 + 1352], rax
 jmp xchain00001_n00058_α
.Lx00057_0:
 mov rdi, qword ptr [r12 + 1376]
 mov rsi, qword ptr [r12 + 1384]
 mov rdx, qword ptr [r12 + 1440]
 mov rcx, qword ptr [r12 + 1448]
 mov r8d, 0
 lea r9, [r12 + 1344]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00057_3
.Lx00057_2:
 mov rdi, qword ptr [r12 + 1376]
 mov rsi, qword ptr [r12 + 1384]
 mov rdx, qword ptr [r12 + 1440]
 mov rcx, qword ptr [r12 + 1448]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00040_α
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
.Lx00057_3:
 jmp xchain00001_n00058_α
 xchain00001_n00054_β:
 jmp xchain00001_n00040_α
# IR_LIT_CHARSET
 xchain00001_n00004_α:
 mov qword ptr [r12 + 1200], 1
 mov dword ptr [r12 + 1204], -1
 mov rax, qword ptr [rip + .Lx00059_0]
 mov qword ptr [r12 + 1208], rax
 jmp xchain00001_n00060_α
 xchain00001_n00004_β:
 jmp xchain00001_n00055_α
.Lx00059_0:
 .quad .Lx00059_0_s
.Lx00059_0_s:
 .string "\\"
# IR_LIT_INTEGER
 xchain00001_n00055_α:
 mov qword ptr [r12 + 944], 6
 mov rax, qword ptr [rip + .Lx00061_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00001_n00062_α
 xchain00001_n00055_β:
 jmp xchain00001_n00063_α
.Lx00061_0:
 .quad 1
# IR_MOVE_LABEL
 xchain00001_n00056_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
 lea rax, [rip + xchain00001_n00064_α]
 mov qword ptr [r12 + 96], rax
 jmp xchain00001_n00065_α
 xchain00001_n00056_β:
 jmp xchain00001_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00064_α:
 jmp qword ptr [r12 + 128]
 xchain00001_n00064_β:
 jmp xchain00001_n5_α
# IR_MOVE_LABEL
 xchain00001_n00005_α:
 mov rax, qword ptr [r12 + 1840]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 1848]
 mov qword ptr [r12 + 1816], rax
 lea rax, [rip + xchain00001_n3_α]
 mov qword ptr [r12 + 1824], rax
 jmp xchain00001_n00066_α
 xchain00001_n00005_β:
 jmp xchain00001_n5_α
# IR_ASSIGN gva
 xchain00001_n00058_α:
 mov rax, qword ptr [r12 + 1344]
 mov rdx, qword ptr [r12 + 1352]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain00001_n00040_α
 xchain00001_n00058_β:
 jmp xchain00001_n00040_α
 xchain00001_n00060_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 mov rdx, qword ptr [r12 + 1200]
 mov rcx, qword ptr [r12 + 1208]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00055_α
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00001_n00067_α
 xchain00001_n00060_β:
 jmp xchain00001_n00055_α
# IR_ASSIGN gva
 xchain00001_n00062_α:
 mov rax, qword ptr [r12 + 944]
 mov rdx, qword ptr [r12 + 952]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain00001_n00063_α
 xchain00001_n00062_β:
 jmp xchain00001_n00063_α
 xchain00001_n00065_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 72], rax
 jmp xchain00001_n00068_α
xchain00001_n00065_β:
 jmp xchain00001_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00069_α:
 jmp qword ptr [r12 + 96]
 xchain00001_n00069_β:
 jmp xchain00001_n5_α
# IR_MOVE_LABEL
 xchain00001_n00066_α:
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 88], rax
 lea rax, [rip + xchain00001_n00070_α]
 mov qword ptr [r12 + 96], rax
 jmp xchain00001_n00065_α
 xchain00001_n00066_β:
 jmp xchain00001_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00070_α:
 jmp qword ptr [r12 + 1824]
 xchain00001_n00070_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n00067_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain00001_n00071_α
 xchain00001_n00067_β:
 jmp xchain00001_n00055_α
# IR_VAR
 xchain00001_n00063_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00001_n00072_α
 xchain00001_n00063_β:
 jmp xchain00001_n00073_α
# IR_MOVE_LABEL
 xchain00001_n00068_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 40], rax
 lea rax, [rip + xchain00001_n00069_α]
 mov qword ptr [r12 + 48], rax
 jmp xchain00001_n55_α
 xchain00001_n00068_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n00071_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain00001_n00074_α
 xchain00001_n00071_β:
 jmp xchain00001_n00055_α
# IR_LIT_INTEGER
 xchain00001_n00072_α:
 mov qword ptr [r12 + 896], 6
 mov rax, qword ptr [rip + .Lx00075_0]
 mov qword ptr [r12 + 904], rax
 jmp xchain00001_n00076_α
 xchain00001_n00072_β:
 jmp xchain00001_n00073_α
.Lx00075_0:
 .quad 1
# IR_VAR
 xchain00001_n00073_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00001_n00077_α
 xchain00001_n00073_β:
 jmp proc_getword_ω
 xchain00001_n00074_α:
# BOX CALL upto(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1072]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = producer-box slot [zr+1232] -> [zr+1088]
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1096], rax
# marshal arg2 = producer-box slot [zr+1264] -> [zr+1104]
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1112], rax
  .section .rodata
  .Lbynamefn216: .string "upto"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn216]
 lea rsi, [r12 + 1072]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00001_n00055_α
 jmp xchain00001_n00078_α
 xchain00001_n00074_β:
 jmp xchain00001_n00055_α
# IR_COERCE_NUMERIC
 xchain00001_n00076_α:
 mov eax, dword ptr [r12 + 864]
 cmp eax, 7
 je .Lx00079_1
 cmp eax, 6
 jne .Lx00079_0
 mov eax, dword ptr [r12 + 896]
 cmp eax, 6
 jne .Lx00079_0
.Lx00079_1:
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
 jmp .Lx00079_2
.Lx00079_0:
 lea rdi, [r12 + 864]
 lea rsi, [r12 + 896]
 lea rdx, [r12 + 832]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00079_2:
 jmp xchain00001_n00080_α
 xchain00001_n00076_β:
 jmp xchain00001_n00073_α
 xchain00001_n00077_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+720]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn298: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn298]
 lea rsi, [r12 + 720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je proc_getword_ω
 jmp xchain00001_n00081_α
 xchain00001_n00077_β:
 jmp proc_getword_ω
# IR_LIT_INTEGER
 xchain00001_n00078_α:
 mov qword ptr [r12 + 1296], 6
 mov rax, qword ptr [rip + .Lx00082_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00001_n00006_α
 xchain00001_n00078_β:
 jmp xchain00001_n00055_α
.Lx00082_0:
 .quad 1
 xchain00001_n00080_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 832]
 cmp eax, 100
 je .Lx00083_0
 mov eax, dword ptr [r12 + 832]
 cmp eax, 6
 jne .Lx00083_2
.Lx00083_1:
 mov rax, qword ptr [r12 + 840]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 800], 6
 mov qword ptr [r12 + 808], rax
 jmp xchain00001_n00084_α
.Lx00083_0:
 mov rdi, qword ptr [r12 + 832]
 mov rsi, qword ptr [r12 + 840]
 mov rdx, qword ptr [r12 + 896]
 mov rcx, qword ptr [r12 + 904]
 mov r8d, 0
 lea r9, [r12 + 800]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00083_3
.Lx00083_2:
 mov rdi, qword ptr [r12 + 832]
 mov rsi, qword ptr [r12 + 840]
 mov rdx, qword ptr [r12 + 896]
 mov rcx, qword ptr [r12 + 904]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00073_α
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
.Lx00083_3:
 jmp xchain00001_n00084_α
 xchain00001_n00080_β:
 jmp xchain00001_n00073_α
# IR_MOVE_LABEL
 xchain00001_n00081_α:
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 680], rax
 lea rax, [rip + proc_getword_ω]
 mov qword ptr [r12 + 688], rax
 jmp xchain00001_n00085_α
 xchain00001_n00081_β:
 jmp xchain00001_n00040_α
# IR_COERCE_NUMERIC
 xchain00001_n00006_α:
 mov eax, dword ptr [r12 + 1056]
 cmp eax, 7
 je .Lx00086_1
 cmp eax, 6
 jne .Lx00086_0
 mov eax, dword ptr [r12 + 1296]
 cmp eax, 6
 jne .Lx00086_0
.Lx00086_1:
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1032], rax
 jmp .Lx00086_2
.Lx00086_0:
 lea rdi, [r12 + 1056]
 lea rsi, [r12 + 1296]
 lea rdx, [r12 + 1024]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00086_2:
 jmp xchain00001_n00087_α
 xchain00001_n00006_β:
 jmp xchain00001_n00055_α
# IR_ASSIGN gva
 xchain00001_n00084_α:
 mov rax, qword ptr [r12 + 800]
 mov rdx, qword ptr [r12 + 808]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00001_n00073_α
 xchain00001_n00084_β:
 jmp xchain00001_n00073_α
# IR_ASSIGN gva
 xchain00001_n00085_α:
 mov rax, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 680]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain00001_n00088_α
 xchain00001_n00085_β:
 jmp xchain00001_n00040_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00089_α:
 jmp qword ptr [r12 + 688]
 xchain00001_n00089_β:
 jmp xchain00001_n00040_α
 xchain00001_n00087_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1024]
 cmp eax, 100
 je .Lx00090_0
 mov eax, dword ptr [r12 + 1024]
 cmp eax, 6
 jne .Lx00090_2
.Lx00090_1:
 mov rax, qword ptr [r12 + 1032]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 992], 6
 mov qword ptr [r12 + 1000], rax
 jmp xchain00001_n00007_α
.Lx00090_0:
 mov rdi, qword ptr [r12 + 1024]
 mov rsi, qword ptr [r12 + 1032]
 mov rdx, qword ptr [r12 + 1296]
 mov rcx, qword ptr [r12 + 1304]
 mov r8d, 0
 lea r9, [r12 + 992]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00090_3
.Lx00090_2:
 mov rdi, qword ptr [r12 + 1024]
 mov rsi, qword ptr [r12 + 1032]
 mov rdx, qword ptr [r12 + 1296]
 mov rcx, qword ptr [r12 + 1304]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00055_α
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
.Lx00090_3:
 jmp xchain00001_n00007_α
 xchain00001_n00087_β:
 jmp xchain00001_n00055_α
 xchain00001_n00088_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 648], rax
 jmp xchain00001_n00091_α
xchain00001_n00088_β:
 jmp xchain00001_n00040_α
# IR_ASSIGN gva
 xchain00001_n00007_α:
 mov rax, qword ptr [r12 + 992]
 mov rdx, qword ptr [r12 + 1000]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain00001_n00008_α
 xchain00001_n00007_β:
 jmp xchain00001_n00055_α
# IR_MOVE_LABEL
 xchain00001_n00091_α:
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 168], rax
 lea rax, [rip + xchain00001_n00089_α]
 mov qword ptr [r12 + 176], rax
 jmp xchain00001_n00048_α
 xchain00001_n00091_β:
 jmp xchain00001_n00040_α
# IR_VAR_REF
 xchain00001_n00008_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00001_n00010_α
 xchain00001_n00008_β:
 jmp xchain00001_n00092_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00009_α:
 jmp qword ptr [r12 + 176]
 xchain00001_n00009_β:
 jmp xchain00001_n00040_α
# IR_VAR
 xchain00001_n00010_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00001_n00093_α
 xchain00001_n00010_β:
 jmp xchain00001_n00092_α
# IR_LIT_INTEGER
 xchain00001_n00093_α:
 mov qword ptr [r12 + 528], 6
 mov rax, qword ptr [rip + .Lx00094_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain00001_n00011_α
 xchain00001_n00093_β:
 jmp xchain00001_n00092_α
.Lx00094_0:
 .quad 1
# IR_VAR
 xchain00001_n00092_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00001_n00095_α
 xchain00001_n00092_β:
 jmp xchain00001_n00040_α
# IR_COERCE_NUMERIC
 xchain00001_n00011_α:
 mov eax, dword ptr [r12 + 496]
 cmp eax, 7
 je .Lx00096_1
 cmp eax, 6
 jne .Lx00096_0
 mov eax, dword ptr [r12 + 528]
 cmp eax, 6
 jne .Lx00096_0
.Lx00096_1:
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 472], rax
 jmp .Lx00096_2
.Lx00096_0:
 lea rdi, [r12 + 496]
 lea rsi, [r12 + 528]
 lea rdx, [r12 + 464]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00096_2:
 jmp xchain00001_n00012_α
 xchain00001_n00011_β:
 jmp xchain00001_n00092_α
# IR_LIT_INTEGER
 xchain00001_n00095_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00097_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00001_n00098_α
 xchain00001_n00095_β:
 jmp xchain00001_n00040_α
.Lx00097_0:
 .quad 1
 xchain00001_n00012_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 464]
 cmp eax, 100
 je .Lx00099_0
 mov eax, dword ptr [r12 + 464]
 cmp eax, 6
 jne .Lx00099_2
.Lx00099_1:
 mov rax, qword ptr [r12 + 472]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [r12 + 432], 6
 mov qword ptr [r12 + 440], rax
 jmp xchain00001_n00013_α
.Lx00099_0:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 1
 lea r9, [r12 + 432]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00099_3
.Lx00099_2:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00092_α
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
.Lx00099_3:
 jmp xchain00001_n00013_α
 xchain00001_n00012_β:
 jmp xchain00001_n00092_α
# IR_COERCE_NUMERIC
 xchain00001_n00098_α:
 mov eax, dword ptr [r12 + 304]
 cmp eax, 7
 je .Lx00100_1
 cmp eax, 6
 jne .Lx00100_0
 mov eax, dword ptr [r12 + 336]
 cmp eax, 6
 jne .Lx00100_0
.Lx00100_1:
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
 jmp .Lx00100_2
.Lx00100_0:
 lea rdi, [r12 + 304]
 lea rsi, [r12 + 336]
 lea rdx, [r12 + 272]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00100_2:
 jmp xchain00001_n00101_α
 xchain00001_n00098_β:
 jmp xchain00001_n00040_α
# IR_SUBSCRIPT x[i] variable
 xchain00001_n00013_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00001_n00092_α
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00001_n00102_α
 xchain00001_n00013_β:
 jmp xchain00001_n00092_α
 xchain00001_n00101_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 272]
 cmp eax, 100
 je .Lx00103_0
 mov eax, dword ptr [r12 + 272]
 cmp eax, 6
 jne .Lx00103_2
.Lx00103_1:
 mov rax, qword ptr [r12 + 280]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 240], 6
 mov qword ptr [r12 + 248], rax
 jmp xchain00001_n00104_α
.Lx00103_0:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 mov r8d, 0
 lea r9, [r12 + 240]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00103_3
.Lx00103_2:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00040_α
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
.Lx00103_3:
 jmp xchain00001_n00104_α
 xchain00001_n00101_β:
 jmp xchain00001_n00040_α
# IR_DEREF variable -> value
 xchain00001_n00102_α:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n00092_α
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00001_n00105_α
 xchain00001_n00102_β:
 jmp xchain00001_n00092_α
# IR_ASSIGN gva
 xchain00001_n00104_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00001_n00106_α
 xchain00001_n00104_β:
 jmp xchain00001_n00040_α
# IR_VAR
 xchain00001_n00105_α:
 mov rax, qword ptr [r12 + 4736]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 4744]
 mov qword ptr [r12 + 616], rax
 jmp xchain00001_n00107_α
 xchain00001_n00105_β:
 jmp xchain00001_n00092_α
# IR_MOVE_LABEL
 xchain00001_n00106_α:
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
 lea rax, [rip + xchain00001_n00048_α]
 mov qword ptr [r12 + 208], rax
 jmp xchain00001_n00108_α
 xchain00001_n00106_β:
 jmp xchain00001_n00040_α
 xchain00001_n00107_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 4736]
 mov rcx, qword ptr [r12 + 4744]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n00092_α
 mov rdi, qword ptr [r12 + 4736]
 mov rsi, qword ptr [r12 + 4744]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00001_n00109_α
 xchain00001_n00107_β:
 jmp xchain00001_n00092_α
# IR_MOVE_LABEL
 xchain00001_n00108_α:
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
 lea rax, [rip + xchain00001_n00014_α]
 mov qword ptr [r12 + 176], rax
 jmp xchain00001_n00048_α
 xchain00001_n00108_β:
 jmp xchain00001_n00040_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00014_α:
 jmp qword ptr [r12 + 208]
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
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
 lea rax, [rip + xchain00001_n00109_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain00001_n00056_α
 xchain00001_n00111_β:
 jmp xchain00001_n5_α
proc_getword_β:
jmp proc_getword_ω
proc_getword_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 4728]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 4720]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_getword_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 4728]
pop r12
ret
  .globl proc_format_α
proc_format_α:
#=======================================================================================================================
    .global proc_format_α
    .global proc_format_β
    .global proc_format_γ
    .global proc_format_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 3304], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 3296], rax
 pop rsi
proc_format_α_body:
# IR_VAR_REF
 xchain00112_n0_α:
 lea rdi, [rbx + 320]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3184], rax
 mov qword ptr [r12 + 3192], rdx
 jmp xchain00112_n1_α
 xchain00112_n0_β:
 jmp xchain00112_n3_α
# IR_NULLTEST_VAR
 xchain00112_n1_α:
 mov eax, dword ptr [r12 + 3184]
 cmp eax, 99
 je xchain00112_n3_α
 mov rdi, qword ptr [r12 + 3184]
 mov rsi, qword ptr [r12 + 3192]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00112_n3_α
 cmp eax, 0
 jne xchain00112_n3_α
 mov rax, qword ptr [r12 + 3184]
 mov qword ptr [r12 + 3216], rax
 mov rax, qword ptr [r12 + 3192]
 mov qword ptr [r12 + 3224], rax
 jmp xchain00112_n2_α
 xchain00112_n1_β:
 jmp xchain00112_n3_α
# IR_LIT_INTEGER
 xchain00112_n2_α:
 mov qword ptr [r12 + 3264], 6
 mov rax, qword ptr [rip + .Lx00113_0]
 mov qword ptr [r12 + 3272], rax
 jmp xchain00112_n4_α
 xchain00112_n2_β:
 jmp xchain00112_n3_α
.Lx00113_0:
 .quad 1
# IR_MAKE_LIST
 xchain00112_n3_α:
 lea rdi, [r12 + 2704]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 jmp xchain00112_n5_α
 xchain00112_n3_β:
 jmp xchain00112_n7_α
# IR_ASSIGN_VAR
 xchain00112_n4_α:
 mov rdi, qword ptr [r12 + 3216]
 mov rsi, qword ptr [r12 + 3224]
 mov rdx, qword ptr [r12 + 3264]
 mov rcx, qword ptr [r12 + 3272]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00112_n3_α
 mov qword ptr [r12 + 3248], rax
 mov qword ptr [r12 + 3256], rdx
 jmp xchain00112_n6_α
 xchain00112_n4_β:
 jmp xchain00112_n3_α
 xchain00112_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2688]
 mov rdx, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 3312], rax
 mov qword ptr [r12 + 3320], rdx
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 jmp xchain00112_n7_α
 xchain00112_n5_β:
 jmp xchain00112_n7_α
# IR_VAR
 xchain00112_n6_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
 mov qword ptr [r12 + 3152], rax
 mov qword ptr [r12 + 3160], rdx
 jmp xchain00112_n8_α
 xchain00112_n6_β:
 jmp xchain00112_n9_α
# IR_VAR
 xchain00112_n7_α:
 mov rax, qword ptr [r12 + 3376]
 mov qword ptr [r12 + 2640], rax
 mov rax, qword ptr [r12 + 3384]
 mov qword ptr [r12 + 2648], rax
 jmp xchain00112_n10_α
 xchain00112_n7_β:
 jmp xchain00112_n11_α
# IR_UNOP
 xchain00112_n8_α:
 mov eax, dword ptr [r12 + 3152]
 cmp eax, 99
 je xchain00112_n9_α
 cmp eax, 0
 je xchain00112_n9_α
 mov rax, qword ptr [r12 + 3152]
 mov qword ptr [r12 + 3120], rax
 mov rax, qword ptr [r12 + 3160]
 mov qword ptr [r12 + 3128], rax
 jmp xchain00112_n12_α
 xchain00112_n8_β:
 jmp xchain00112_n9_α
# IR_LIT_INTEGER
 xchain00112_n9_α:
 mov qword ptr [r12 + 3088], 6
 mov rax, qword ptr [rip + .Lx00114_0]
 mov qword ptr [r12 + 3096], rax
 jmp xchain00112_n13_α
 xchain00112_n9_β:
 jmp xchain00112_n18_α
.Lx00114_0:
 .quad 80
 xchain00112_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2640]
 mov rdx, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 3360], rax
 mov qword ptr [r12 + 3368], rdx
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 jmp xchain00112_n11_α
 xchain00112_n10_β:
 jmp xchain00112_n11_α
# IR_VAR
 xchain00112_n11_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 344], rax
 jmp xchain00112_n14_α
 xchain00112_n11_β:
 jmp xchain00112_n15_α
# IR_MOVE_LABEL
 xchain00112_n12_α:
 mov rax, qword ptr [r12 + 3120]
 mov qword ptr [r12 + 3056], rax
 mov rax, qword ptr [r12 + 3128]
 mov qword ptr [r12 + 3064], rax
 lea rax, [rip + xchain00112_n9_α]
 mov qword ptr [r12 + 3072], rax
 jmp xchain00112_n16_α
 xchain00112_n12_β:
 jmp xchain00112_n18_α
# IR_MOVE_LABEL
 xchain00112_n13_α:
 mov rax, qword ptr [r12 + 3088]
 mov qword ptr [r12 + 3056], rax
 mov rax, qword ptr [r12 + 3096]
 mov qword ptr [r12 + 3064], rax
 lea rax, [rip + xchain00112_n18_α]
 mov qword ptr [r12 + 3072], rax
 jmp xchain00112_n16_α
 xchain00112_n13_β:
 jmp xchain00112_n18_α
# IR_LIST_BANG
 xchain00112_n14_α:
 mov qword ptr [r12 + 320], 0
.Lx00115_0:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 320]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp rax, 99
 je xchain00112_n15_α
 jmp xchain00112_n19_α
 xchain00112_n14_β:
 inc qword ptr [r12 + 320]
 jmp .Lx00115_0
# IR_VAR
 xchain00112_n15_α:
 mov rax, qword ptr [r12 + 3312]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 3320]
 mov qword ptr [r12 + 264], rax
 jmp xchain00112_n20_α
 xchain00112_n15_β:
 jmp xchain00112_n21_α
 xchain00112_n16_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3056]
 mov rdx, qword ptr [r12 + 3064]
 mov qword ptr [r12 + 3424], rax
 mov qword ptr [r12 + 3432], rdx
 mov qword ptr [r12 + 3040], rax
 mov qword ptr [r12 + 3048], rdx
 jmp xchain00112_n18_α
 xchain00112_n16_β:
 jmp xchain00112_n18_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00112_n17_α:
 jmp qword ptr [r12 + 3072]
 xchain00112_n17_β:
 jmp xchain00112_n18_α
# IR_VAR
 xchain00112_n18_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 jmp xchain00112_n22_α
 xchain00112_n18_β:
 jmp xchain00112_n23_α
 xchain00112_n19_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [r12 + 3328], rax
 mov qword ptr [r12 + 3336], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00112_n24_α
 xchain00112_n19_β:
 jmp xchain00112_n15_α
 xchain00112_n20_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn375: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn375]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain00112_n21_α
 jmp xchain00112_n25_α
 xchain00112_n20_β:
 jmp xchain00112_n21_α
# IR_VAR
 xchain00112_n21_α:
 mov rax, qword ptr [r12 + 3312]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 3320]
 mov qword ptr [r12 + 136], rax
 jmp xchain00112_n26_α
 xchain00112_n21_β:
 jmp xchain00112_n27_α
# IR_UNOP
 xchain00112_n22_α:
 mov eax, dword ptr [r12 + 3008]
 cmp eax, 99
 je xchain00112_n23_α
 cmp eax, 0
 je xchain00112_n23_α
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 2976], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 2984], rax
 jmp xchain00112_n28_α
 xchain00112_n22_β:
 jmp xchain00112_n23_α
# IR_LIT_INTEGER
 xchain00112_n23_α:
 mov qword ptr [r12 + 2944], 6
 mov rax, qword ptr [rip + .Lx00116_0]
 mov qword ptr [r12 + 2952], rax
 jmp xchain00112_n29_α
 xchain00112_n23_β:
 jmp xchain00112_n35_α
.Lx00116_0:
 .quad 40
# IR_VAR
 xchain00112_n24_α:
 mov rax, qword ptr [r12 + 3328]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 3336]
 mov qword ptr [r12 + 424], rax
 jmp xchain00112_n30_α
 xchain00112_n24_β:
 jmp xchain00112_n14_β
 xchain00112_n25_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 3312], rax
 mov qword ptr [r12 + 3320], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00112_n21_α
 xchain00112_n25_β:
 jmp xchain00112_n21_α
# IR_LIT_STRING
 xchain00112_n26_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00117_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00112_n31_α
 xchain00112_n26_β:
 jmp xchain00112_n27_α
.Lx00117_0:
 .quad .Lx00117_0_s
.Lx00117_0_s:
 .string "variable\tprocedure\t\tline numbers\n"
# IR_VAR
 xchain00112_n27_α:
 mov rax, qword ptr [r12 + 3312]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 3320]
 mov qword ptr [r12 + 40], rax
 jmp xchain00112_n32_α
 xchain00112_n27_β:
 jmp proc_format_ω
# IR_MOVE_LABEL
 xchain00112_n28_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 2912], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 2920], rax
 lea rax, [rip + xchain00112_n23_α]
 mov qword ptr [r12 + 2928], rax
 jmp xchain00112_n33_α
 xchain00112_n28_β:
 jmp xchain00112_n35_α
# IR_MOVE_LABEL
 xchain00112_n29_α:
 mov rax, qword ptr [r12 + 2944]
 mov qword ptr [r12 + 2912], rax
 mov rax, qword ptr [r12 + 2952]
 mov qword ptr [r12 + 2920], rax
 lea rax, [rip + xchain00112_n35_α]
 mov qword ptr [r12 + 2928], rax
 jmp xchain00112_n33_α
 xchain00112_n29_β:
 jmp xchain00112_n35_α
# IR_LIST_BANG
 xchain00112_n30_α:
 mov qword ptr [r12 + 400], 0
.Lx00118_0:
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 400]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp rax, 99
 je xchain00112_n14_β
 jmp xchain00112_n36_α
 xchain00112_n30_β:
 inc qword ptr [r12 + 400]
 jmp .Lx00118_0
 xchain00112_n31_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+80]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 88], rax
# marshal arg1 = producer-box slot [zr+160] -> [zr+96]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn393: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn393]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00112_n27_α
 jmp xchain00112_n27_α
 xchain00112_n31_β:
 jmp xchain00112_n27_α
# IR_RETURN
 xchain00112_n32_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_format_γ
 xchain00112_n33_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2912]
 mov rdx, qword ptr [r12 + 2920]
 mov qword ptr [r12 + 3376], rax
 mov qword ptr [r12 + 3384], rdx
 mov qword ptr [r12 + 2896], rax
 mov qword ptr [r12 + 2904], rdx
 jmp xchain00112_n35_α
 xchain00112_n33_β:
 jmp xchain00112_n35_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00112_n34_α:
 jmp qword ptr [r12 + 2928]
 xchain00112_n34_β:
 jmp xchain00112_n35_α
# IR_VAR
 xchain00112_n35_α:
 mov rax, qword ptr [rbx + 176]
 mov rdx, qword ptr [rbx + 184]
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], rdx
 jmp xchain00112_n37_α
 xchain00112_n35_β:
 jmp xchain00112_n38_α
 xchain00112_n36_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 mov qword ptr [r12 + 3344], rax
 mov qword ptr [r12 + 3352], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00112_n39_α
 xchain00112_n36_β:
 jmp xchain00112_n14_β
# IR_UNOP
 xchain00112_n37_α:
 mov eax, dword ptr [r12 + 2864]
 cmp eax, 99
 je xchain00112_n38_α
 cmp eax, 0
 je xchain00112_n38_α
 mov rax, qword ptr [r12 + 2864]
 mov qword ptr [r12 + 2832], rax
 mov rax, qword ptr [r12 + 2872]
 mov qword ptr [r12 + 2840], rax
 jmp xchain00112_n40_α
 xchain00112_n37_β:
 jmp xchain00112_n38_α
# IR_LIT_INTEGER
 xchain00112_n38_α:
 mov qword ptr [r12 + 2800], 6
 mov rax, qword ptr [rip + .Lx00119_0]
 mov qword ptr [r12 + 2808], rax
 jmp xchain00112_n41_α
 xchain00112_n38_β:
 jmp xchain00112_n3_α
.Lx00119_0:
 .quad 4
# IR_VAR_REF
 xchain00112_n39_α:
 lea rdi, [r12 + 3344]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain00112_n42_α
 xchain00112_n39_β:
 jmp xchain00112_n48_α
# IR_MOVE_LABEL
 xchain00112_n40_α:
 mov rax, qword ptr [r12 + 2832]
 mov qword ptr [r12 + 2768], rax
 mov rax, qword ptr [r12 + 2840]
 mov qword ptr [r12 + 2776], rax
 lea rax, [rip + xchain00112_n38_α]
 mov qword ptr [r12 + 2784], rax
 jmp xchain00112_n43_α
 xchain00112_n40_β:
 jmp xchain00112_n3_α
# IR_MOVE_LABEL
 xchain00112_n41_α:
 mov rax, qword ptr [r12 + 2800]
 mov qword ptr [r12 + 2768], rax
 mov rax, qword ptr [r12 + 2808]
 mov qword ptr [r12 + 2776], rax
 lea rax, [rip + xchain00112_n3_α]
 mov qword ptr [r12 + 2784], rax
 jmp xchain00112_n43_α
 xchain00112_n41_β:
 jmp xchain00112_n3_α
# IR_LIT_INTEGER
 xchain00112_n42_α:
 mov qword ptr [r12 + 2128], 6
 mov rax, qword ptr [rip + .Lx00120_0]
 mov qword ptr [r12 + 2136], rax
 jmp xchain00112_n45_α
 xchain00112_n42_β:
 jmp xchain00112_n48_α
.Lx00120_0:
 .quad 1
 xchain00112_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2768]
 mov rdx, qword ptr [r12 + 2776]
 mov qword ptr [r12 + 3408], rax
 mov qword ptr [r12 + 3416], rdx
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 jmp xchain00112_n46_α
 xchain00112_n43_β:
 jmp xchain00112_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00112_n44_α:
 jmp qword ptr [r12 + 2784]
 xchain00112_n44_β:
 jmp xchain00112_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00112_n45_α:
 mov rdi, qword ptr [r12 + 2096]
 mov rsi, qword ptr [r12 + 2104]
 mov rdx, qword ptr [r12 + 2128]
 mov rcx, qword ptr [r12 + 2136]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00112_n48_α
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 jmp xchain00112_n47_α
 xchain00112_n45_β:
 jmp xchain00112_n48_α
 xchain00112_n46_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 2752]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 2760]
 mov qword ptr [r12 + 2744], rax
 jmp xchain00112_n49_α
xchain00112_n46_β:
 jmp xchain00112_n3_α
# IR_DEREF variable -> value
 xchain00112_n47_α:
 mov rdi, qword ptr [r12 + 2160]
 mov rsi, qword ptr [r12 + 2168]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00112_n48_α
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain00112_n50_α
 xchain00112_n47_β:
 jmp xchain00112_n48_α
# IR_VAR
 xchain00112_n48_α:
 mov rax, qword ptr [r12 + 3392]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 3400]
 mov qword ptr [r12 + 968], rax
 jmp xchain00112_n51_α
 xchain00112_n48_β:
 jmp xchain00112_n52_α
# IR_MOVE_LABEL
 xchain00112_n49_α:
 mov rax, qword ptr [r12 + 2752]
 mov qword ptr [r12 + 2704], rax
 mov rax, qword ptr [r12 + 2760]
 mov qword ptr [r12 + 2712], rax
 lea rax, [rip + xchain00112_n44_α]
 mov qword ptr [r12 + 2720], rax
 jmp xchain00112_n3_α
 xchain00112_n49_β:
 jmp xchain00112_n3_α
# IR_LIT_INTEGER
 xchain00112_n50_α:
 mov qword ptr [r12 + 2208], 6
 mov rax, qword ptr [rip + .Lx00121_0]
 mov qword ptr [r12 + 2216], rax
 jmp xchain00112_n54_α
 xchain00112_n50_β:
 jmp xchain00112_n48_α
.Lx00121_0:
 .quad 16
# IR_VAR_REF
 xchain00112_n51_α:
 lea rdi, [r12 + 3344]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain00112_n55_α
 xchain00112_n51_β:
 jmp xchain00112_n52_α
# IR_VAR
 xchain00112_n52_α:
 mov rax, qword ptr [r12 + 3360]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 3368]
 mov qword ptr [r12 + 856], rax
 jmp xchain00112_n56_α
 xchain00112_n52_β:
 jmp xchain00112_n57_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00112_n53_α:
 jmp qword ptr [r12 + 2720]
 xchain00112_n53_β:
 jmp xchain00112_n3_α
# IR_LIT_STRING
 xchain00112_n54_α:
 mov qword ptr [r12 + 2240], 1
 mov rax, qword ptr [rip + .Lx00122_0]
 mov qword ptr [r12 + 2248], rax
 jmp xchain00112_n58_α
 xchain00112_n54_β:
 jmp xchain00112_n48_α
.Lx00122_0:
 .quad .Lx00122_0_s
.Lx00122_0_s:
 .string " "
# IR_LIT_INTEGER
 xchain00112_n55_α:
 mov qword ptr [r12 + 1136], 6
 mov rax, qword ptr [rip + .Lx00123_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain00112_n59_α
 xchain00112_n55_β:
 jmp xchain00112_n52_α
.Lx00123_0:
 .quad 3
# IR_VAR
 xchain00112_n56_α:
 mov rax, qword ptr [r12 + 3376]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 3384]
 mov qword ptr [r12 + 888], rax
 jmp xchain00112_n60_α
 xchain00112_n56_β:
 jmp xchain00112_n57_α
# IR_VAR
 xchain00112_n57_α:
 mov rax, qword ptr [r12 + 3312]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 3320]
 mov qword ptr [r12 + 584], rax
 jmp xchain00112_n61_α
 xchain00112_n57_β:
 jmp xchain00112_n62_α
 xchain00112_n58_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2192] -> [zr+2032]
 mov rax, qword ptr [r12 + 2192]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 2040], rax
# marshal arg1 = producer-box slot [zr+2208] -> [zr+2048]
 mov rax, qword ptr [r12 + 2208]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2216]
 mov qword ptr [r12 + 2056], rax
# marshal arg2 = producer-box slot [zr+2240] -> [zr+2064]
 mov rax, qword ptr [r12 + 2240]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 2248]
 mov qword ptr [r12 + 2072], rax
  .section .rodata
  .Lrkfn433: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn433]
 lea rsi, [r12 + 2032]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je xchain00112_n48_α
 jmp xchain00112_n63_α
 xchain00112_n58_β:
 jmp xchain00112_n48_α
# IR_VAR
 xchain00112_n59_α:
 mov rax, qword ptr [r12 + 3344]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 3352]
 mov qword ptr [r12 + 1208], rax
 jmp xchain00112_n64_α
 xchain00112_n59_β:
 jmp xchain00112_n52_α
 xchain00112_n60_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3360]
 cmp eax, 100
 je .Lx00124_0
 mov eax, dword ptr [r12 + 3376]
 cmp eax, 100
 je .Lx00124_0
 mov eax, dword ptr [r12 + 3360]
 cmp eax, 6
 jne .Lx00124_2
 mov eax, dword ptr [r12 + 3376]
 cmp eax, 6
 jne .Lx00124_2
.Lx00124_1:
 mov rax, qword ptr [r12 + 3368]
 mov rcx, qword ptr [r12 + 3384]
 cmp rax, rcx
 jne xchain00112_n57_α
 mov rcx, qword ptr [r12 + 3376]
 mov qword ptr [r12 + 816], rcx
 mov rcx, qword ptr [r12 + 3384]
 mov qword ptr [r12 + 824], rcx
 jmp xchain00112_n65_α
.Lx00124_0:
 mov rdi, qword ptr [r12 + 3360]
 mov rsi, qword ptr [r12 + 3368]
 mov rdx, qword ptr [r12 + 3376]
 mov rcx, qword ptr [r12 + 3384]
 mov r8d, 9
 lea r9, [r12 + 816]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00124_1
 cmp eax, 1
 je xchain00112_n57_α
 jmp xchain00112_n65_α
.Lx00124_2:
 mov rdi, qword ptr [r12 + 3360]
 mov rsi, qword ptr [r12 + 3368]
 mov rdx, qword ptr [r12 + 3376]
 mov rcx, qword ptr [r12 + 3384]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00112_n57_α
 mov rax, qword ptr [r12 + 3376]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 3384]
 mov qword ptr [r12 + 824], rax
 jmp xchain00112_n65_α
 xchain00112_n60_β:
 jmp xchain00112_n57_α
# IR_VAR
 xchain00112_n61_α:
 mov rax, qword ptr [r12 + 3392]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 3400]
 mov qword ptr [r12 + 616], rax
 jmp xchain00112_n66_α
 xchain00112_n61_β:
 jmp xchain00112_n62_α
# IR_VAR
 xchain00112_n62_α:
 mov rax, qword ptr [r12 + 3376]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 3384]
 mov qword ptr [r12 + 488], rax
 jmp xchain00112_n67_α
 xchain00112_n62_β:
 jmp xchain00112_n30_β
# IR_VAR_REF
 xchain00112_n63_α:
 lea rdi, [r12 + 3344]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 jmp xchain00112_n68_α
 xchain00112_n63_β:
 jmp xchain00112_n48_α
# IR_UNOP
 xchain00112_n64_α:
 mov rdi, qword ptr [r12 + 3344]
 mov rsi, qword ptr [r12 + 3352]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain00112_n69_α
 xchain00112_n64_β:
 jmp xchain00112_n52_α
# IR_VAR
 xchain00112_n65_α:
 mov rax, qword ptr [r12 + 3392]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 3400]
 mov qword ptr [r12 + 728], rax
 jmp xchain00112_n70_α
 xchain00112_n65_β:
 jmp xchain00112_n57_α
 xchain00112_n66_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+528]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 536], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+544]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn447: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn447]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain00112_n62_α
 jmp xchain00112_n62_α
 xchain00112_n66_β:
 jmp xchain00112_n62_α
 xchain00112_n67_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov qword ptr [r12 + 3360], rax
 mov qword ptr [r12 + 3368], rdx
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00112_n71_α
 xchain00112_n67_β:
 jmp xchain00112_n30_β
# IR_LIT_INTEGER
 xchain00112_n68_α:
 mov qword ptr [r12 + 2384], 6
 mov rax, qword ptr [rip + .Lx00125_0]
 mov qword ptr [r12 + 2392], rax
 jmp xchain00112_n72_α
 xchain00112_n68_β:
 jmp xchain00112_n48_α
.Lx00125_0:
 .quad 2
# IR_TO
 xchain00112_n69_α:
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1120], rax
.Lx00126_0:
 mov rax, qword ptr [r12 + 1120]
 mov rcx, qword ptr [r12 + 1176]
 cmp rax, rcx
 jg xchain00112_n52_α
 mov qword ptr [r12 + 1104], 6
 mov qword ptr [r12 + 1112], rax
 jmp xchain00112_n73_α
 xchain00112_n69_β:
 inc qword ptr [r12 + 1120]
 jmp .Lx00126_0
# IR_LIT_INTEGER
 xchain00112_n70_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx00127_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain00112_n74_α
 xchain00112_n70_β:
 jmp xchain00112_n57_α
.Lx00127_0:
 .quad 1
 xchain00112_n71_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 456], rax
 jmp xchain00112_n30_β
xchain00112_n71_β:
 jmp xchain00112_n30_β
# IR_SUBSCRIPT x[i] variable
 xchain00112_n72_α:
 mov rdi, qword ptr [r12 + 2352]
 mov rsi, qword ptr [r12 + 2360]
 mov rdx, qword ptr [r12 + 2384]
 mov rcx, qword ptr [r12 + 2392]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00112_n48_α
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 jmp xchain00112_n75_α
 xchain00112_n72_β:
 jmp xchain00112_n48_α
# IR_SUBSCRIPT x[i] variable
 xchain00112_n73_α:
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 mov rdx, qword ptr [r12 + 1104]
 mov rcx, qword ptr [r12 + 1112]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00112_n69_β
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain00112_n76_α
 xchain00112_n73_β:
 jmp xchain00112_n69_β
# IR_LIT_INTEGER
 xchain00112_n74_α:
 mov qword ptr [r12 + 784], 6
 mov rax, qword ptr [rip + .Lx00128_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain00112_n77_α
 xchain00112_n74_β:
 jmp xchain00112_n57_α
.Lx00128_0:
 .quad 18446744073709551610
# IR_DEREF variable -> value
 xchain00112_n75_α:
 mov rdi, qword ptr [r12 + 2416]
 mov rsi, qword ptr [r12 + 2424]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00112_n48_α
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 jmp xchain00112_n78_α
 xchain00112_n75_β:
 jmp xchain00112_n48_α
# IR_DEREF variable -> value
 xchain00112_n76_α:
 mov rdi, qword ptr [r12 + 1232]
 mov rsi, qword ptr [r12 + 1240]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00112_n69_β
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain00112_n79_α
 xchain00112_n76_β:
 jmp xchain00112_n69_β
# IR_SUBSCRIPT section
 xchain00112_n77_α:
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 mov r8, qword ptr [r12 + 784]
 mov r9, qword ptr [r12 + 792]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00112_n57_α
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00112_n80_α
 xchain00112_n77_β:
 jmp xchain00112_n57_α
# IR_VAR
 xchain00112_n78_α:
 mov rax, qword ptr [r12 + 3376]
 mov qword ptr [r12 + 2528], rax
 mov rax, qword ptr [r12 + 3384]
 mov qword ptr [r12 + 2536], rax
 jmp xchain00112_n81_α
 xchain00112_n78_β:
 jmp xchain00112_n48_α
# IR_VAR
 xchain00112_n79_α:
 mov rax, qword ptr [r12 + 3408]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 3416]
 mov qword ptr [r12 + 1288], rax
 jmp xchain00112_n82_α
 xchain00112_n79_β:
 jmp xchain00112_n69_β
 xchain00112_n80_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 688]
 mov rdx, qword ptr [r12 + 696]
 mov qword ptr [r12 + 3392], rax
 mov qword ptr [r12 + 3400], rdx
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00112_n83_α
 xchain00112_n80_β:
 jmp xchain00112_n57_α
# IR_LIT_INTEGER
 xchain00112_n81_α:
 mov qword ptr [r12 + 2560], 6
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [r12 + 2568], rax
 jmp xchain00112_n84_α
 xchain00112_n81_β:
 jmp xchain00112_n48_α
.Lx00129_0:
 .quad 16
# IR_LIT_STRING
 xchain00112_n82_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx00130_0]
 mov qword ptr [r12 + 1320], rax
 jmp xchain00112_n85_α
 xchain00112_n82_β:
 jmp xchain00112_n69_β
.Lx00130_0:
 .quad .Lx00130_0_s
.Lx00130_0_s:
 .string " "
# IR_MOVE_LABEL
 xchain00112_n83_α:
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
 lea rax, [rip + xchain00112_n57_α]
 mov qword ptr [r12 + 656], rax
 jmp xchain00112_n57_α
 xchain00112_n83_β:
 jmp xchain00112_n57_α
# IR_COERCE_NUMERIC
 xchain00112_n84_α:
 mov eax, dword ptr [r12 + 3376]
 cmp eax, 7
 je .Lx00131_1
 cmp eax, 6
 jne .Lx00131_0
 mov eax, dword ptr [r12 + 2560]
 cmp eax, 6
 jne .Lx00131_0
.Lx00131_1:
 mov rax, qword ptr [r12 + 3376]
 mov qword ptr [r12 + 2496], rax
 mov rax, qword ptr [r12 + 3384]
 mov qword ptr [r12 + 2504], rax
 jmp .Lx00131_2
.Lx00131_0:
 lea rdi, [r12 + 3376]
 lea rsi, [r12 + 2560]
 lea rdx, [r12 + 2496]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00131_2:
 jmp xchain00112_n87_α
 xchain00112_n84_β:
 jmp xchain00112_n48_α
 xchain00112_n85_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1008]
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1016], rax
# marshal arg1 = producer-box slot [zr+1280] -> [zr+1024]
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1032], rax
# marshal arg2 = producer-box slot [zr+1312] -> [zr+1040]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1048], rax
  .section .rodata
  .Lrkfn472: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn472]
 lea rsi, [r12 + 1008]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain00112_n52_α
 jmp xchain00112_n88_α
 xchain00112_n85_β:
 jmp xchain00112_n52_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00112_n86_α:
 jmp qword ptr [r12 + 656]
 xchain00112_n86_β:
 jmp xchain00112_n57_α
 xchain00112_n87_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2496]
 cmp eax, 100
 je .Lx00132_0
 mov eax, dword ptr [r12 + 2496]
 cmp eax, 6
 jne .Lx00132_2
.Lx00132_1:
 mov rax, qword ptr [r12 + 2504]
 mov rcx, 16
 sub rax, rcx
 mov qword ptr [r12 + 2464], 6
 mov qword ptr [r12 + 2472], rax
 jmp xchain00112_n89_α
.Lx00132_0:
 mov rdi, qword ptr [r12 + 2496]
 mov rsi, qword ptr [r12 + 2504]
 mov rdx, qword ptr [r12 + 2560]
 mov rcx, qword ptr [r12 + 2568]
 mov r8d, 1
 lea r9, [r12 + 2464]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00132_3
.Lx00132_2:
 mov rdi, qword ptr [r12 + 2496]
 mov rsi, qword ptr [r12 + 2504]
 mov rdx, qword ptr [r12 + 2560]
 mov rcx, qword ptr [r12 + 2568]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00112_n48_α
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
.Lx00132_3:
 jmp xchain00112_n89_α
 xchain00112_n87_β:
 jmp xchain00112_n48_α
 xchain00112_n88_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 3392]
 mov rsi, qword ptr [r12 + 3400]
 mov rdx, qword ptr [r12 + 992]
 mov rcx, qword ptr [r12 + 1000]
 call str_concat_d@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain00112_n90_α
 xchain00112_n88_β:
 jmp xchain00112_n52_α
# IR_LIT_STRING
 xchain00112_n89_α:
 mov qword ptr [r12 + 2592], 1
 mov rax, qword ptr [rip + .Lx00133_0]
 mov qword ptr [r12 + 2600], rax
 jmp xchain00112_n91_α
 xchain00112_n89_β:
 jmp xchain00112_n48_α
.Lx00133_0:
 .quad .Lx00133_0_s
.Lx00133_0_s:
 .string " "
 xchain00112_n90_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 928]
 mov rdx, qword ptr [r12 + 936]
 mov qword ptr [r12 + 3392], rax
 mov qword ptr [r12 + 3400], rdx
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain00112_n92_α
 xchain00112_n90_β:
 jmp xchain00112_n52_α
 xchain00112_n91_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2448] -> [zr+2288]
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 2288], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 2296], rax
# marshal arg1 = producer-box slot [zr+2464] -> [zr+2304]
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 2304], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 2312], rax
# marshal arg2 = producer-box slot [zr+2592] -> [zr+2320]
 mov rax, qword ptr [r12 + 2592]
 mov qword ptr [r12 + 2320], rax
 mov rax, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 2328], rax
  .section .rodata
  .Lrkfn480: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn480]
 lea rsi, [r12 + 2288]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 cmp eax, 99
 je xchain00112_n48_α
 jmp xchain00112_n93_α
 xchain00112_n91_β:
 jmp xchain00112_n48_α
# IR_VAR
 xchain00112_n92_α:
 mov rax, qword ptr [r12 + 3360]
 mov qword ptr [r12 + 1904], rax
 mov rax, qword ptr [r12 + 3368]
 mov qword ptr [r12 + 1912], rax
 jmp xchain00112_n94_α
 xchain00112_n92_β:
 jmp xchain00112_n95_α
 xchain00112_n93_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 2016]
 mov rsi, qword ptr [r12 + 2024]
 mov rdx, qword ptr [r12 + 2272]
 mov rcx, qword ptr [r12 + 2280]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xchain00112_n96_α
 xchain00112_n93_β:
 jmp xchain00112_n48_α
# IR_VAR
 xchain00112_n94_α:
 mov rax, qword ptr [r12 + 3408]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 3416]
 mov qword ptr [r12 + 1944], rax
 jmp xchain00112_n97_α
 xchain00112_n94_β:
 jmp xchain00112_n95_α
# IR_VAR
 xchain00112_n95_α:
 mov rax, qword ptr [r12 + 3360]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 3368]
 mov qword ptr [r12 + 1608], rax
 jmp xchain00112_n98_α
 xchain00112_n95_β:
 jmp xchain00112_n69_β
 xchain00112_n96_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1984]
 mov rdx, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 3392], rax
 mov qword ptr [r12 + 3400], rdx
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 jmp xchain00112_n48_α
 xchain00112_n96_β:
 jmp xchain00112_n48_α
# IR_COERCE_NUMERIC
 xchain00112_n97_α:
 mov eax, dword ptr [r12 + 3360]
 cmp eax, 7
 je .Lx00134_1
 cmp eax, 6
 jne .Lx00134_0
 mov eax, dword ptr [r12 + 3408]
 cmp eax, 6
 jne .Lx00134_0
.Lx00134_1:
 mov rax, qword ptr [r12 + 3360]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 3368]
 mov qword ptr [r12 + 1880], rax
 jmp .Lx00134_2
.Lx00134_0:
 lea rdi, [r12 + 3360]
 lea rsi, [r12 + 3408]
 lea rdx, [r12 + 1872]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00134_2:
 jmp xchain00112_n99_α
 xchain00112_n97_β:
 jmp xchain00112_n95_α
# IR_VAR
 xchain00112_n98_α:
 mov rax, qword ptr [r12 + 3424]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 3432]
 mov qword ptr [r12 + 1736], rax
 jmp xchain00112_n00026_α
 xchain00112_n98_β:
 jmp xchain00112_n69_β
# IR_COERCE_NUMERIC
 xchain00112_n99_α:
 mov eax, dword ptr [r12 + 3408]
 cmp eax, 7
 je .Lx00135_1
 cmp eax, 6
 jne .Lx00135_0
 mov eax, dword ptr [r12 + 3360]
 cmp eax, 6
 jne .Lx00135_0
.Lx00135_1:
 mov rax, qword ptr [r12 + 3408]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 3416]
 mov qword ptr [r12 + 1848], rax
 jmp .Lx00135_2
.Lx00135_0:
 lea rdi, [r12 + 3408]
 lea rsi, [r12 + 3360]
 lea rdx, [r12 + 1840]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00135_2:
 jmp xchain00112_n00027_α
 xchain00112_n99_β:
 jmp xchain00112_n95_α
# IR_VAR
 xchain00112_n00026_α:
 mov rax, qword ptr [r12 + 3408]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 3416]
 mov qword ptr [r12 + 1768], rax
 jmp xchain00112_n00029_α
 xchain00112_n00026_β:
 jmp xchain00112_n69_β
 xchain00112_n00027_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1872]
 cmp eax, 100
 je .Lx00136_0
 mov eax, dword ptr [r12 + 1840]
 cmp eax, 100
 je .Lx00136_0
 mov eax, dword ptr [r12 + 1872]
 cmp eax, 6
 jne .Lx00136_2
 mov eax, dword ptr [r12 + 1840]
 cmp eax, 6
 jne .Lx00136_2
.Lx00136_1:
 mov rax, qword ptr [r12 + 1880]
 mov rcx, qword ptr [r12 + 1848]
 add rax, rcx
 mov qword ptr [r12 + 1808], 6
 mov qword ptr [r12 + 1816], rax
 jmp xchain00112_n00030_α
.Lx00136_0:
 mov rdi, qword ptr [r12 + 1872]
 mov rsi, qword ptr [r12 + 1880]
 mov rdx, qword ptr [r12 + 1840]
 mov rcx, qword ptr [r12 + 1848]
 mov r8d, 0
 lea r9, [r12 + 1808]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00136_3
.Lx00136_2:
 mov rdi, qword ptr [r12 + 1872]
 mov rsi, qword ptr [r12 + 1880]
 mov rdx, qword ptr [r12 + 1840]
 mov rcx, qword ptr [r12 + 1848]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00112_n95_α
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
.Lx00136_3:
 jmp xchain00112_n00030_α
 xchain00112_n00027_β:
 jmp xchain00112_n95_α
# IR_COERCE_NUMERIC
 xchain00112_n00029_α:
 mov eax, dword ptr [r12 + 3424]
 cmp eax, 7
 je .Lx00137_1
 cmp eax, 6
 jne .Lx00137_0
 mov eax, dword ptr [r12 + 3408]
 cmp eax, 6
 jne .Lx00137_0
.Lx00137_1:
 mov rax, qword ptr [r12 + 3424]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 3432]
 mov qword ptr [r12 + 1704], rax
 jmp .Lx00137_2
.Lx00137_0:
 lea rdi, [r12 + 3424]
 lea rsi, [r12 + 3408]
 lea rdx, [r12 + 1696]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00137_2:
 jmp xchain00112_n00024_α
 xchain00112_n00029_β:
 jmp xchain00112_n69_β
 xchain00112_n00030_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1808]
 mov rdx, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 3360], rax
 mov qword ptr [r12 + 3368], rdx
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain00112_n95_α
 xchain00112_n00030_β:
 jmp xchain00112_n95_α
# IR_COERCE_NUMERIC
 xchain00112_n00024_α:
 mov eax, dword ptr [r12 + 3408]
 cmp eax, 7
 je .Lx00138_1
 cmp eax, 6
 jne .Lx00138_0
 mov eax, dword ptr [r12 + 3424]
 cmp eax, 6
 jne .Lx00138_0
.Lx00138_1:
 mov rax, qword ptr [r12 + 3408]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 3416]
 mov qword ptr [r12 + 1672], rax
 jmp .Lx00138_2
.Lx00138_0:
 lea rdi, [r12 + 3408]
 lea rsi, [r12 + 3424]
 lea rdx, [r12 + 1664]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00138_2:
 jmp xchain00112_n00032_α
 xchain00112_n00024_β:
 jmp xchain00112_n69_β
 xchain00112_n00032_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1696]
 cmp eax, 100
 je .Lx00139_0
 mov eax, dword ptr [r12 + 1664]
 cmp eax, 100
 je .Lx00139_0
 mov eax, dword ptr [r12 + 1696]
 cmp eax, 6
 jne .Lx00139_2
 mov eax, dword ptr [r12 + 1664]
 cmp eax, 6
 jne .Lx00139_2
.Lx00139_1:
 mov rax, qword ptr [r12 + 1704]
 mov rcx, qword ptr [r12 + 1672]
 sub rax, rcx
 mov qword ptr [r12 + 1632], 6
 mov qword ptr [r12 + 1640], rax
 jmp xchain00112_n00034_α
.Lx00139_0:
 mov rdi, qword ptr [r12 + 1696]
 mov rsi, qword ptr [r12 + 1704]
 mov rdx, qword ptr [r12 + 1664]
 mov rcx, qword ptr [r12 + 1672]
 mov r8d, 1
 lea r9, [r12 + 1632]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00139_3
.Lx00139_2:
 mov rdi, qword ptr [r12 + 1696]
 mov rsi, qword ptr [r12 + 1704]
 mov rdx, qword ptr [r12 + 1664]
 mov rcx, qword ptr [r12 + 1672]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00112_n69_β
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
.Lx00139_3:
 jmp xchain00112_n00034_α
 xchain00112_n00032_β:
 jmp xchain00112_n69_β
 xchain00112_n00034_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3360]
 cmp eax, 100
 je .Lx00140_0
 mov eax, dword ptr [r12 + 1632]
 cmp eax, 100
 je .Lx00140_0
 mov eax, dword ptr [r12 + 3360]
 cmp eax, 6
 jne .Lx00140_2
 mov eax, dword ptr [r12 + 1632]
 cmp eax, 6
 jne .Lx00140_2
.Lx00140_1:
 mov rax, qword ptr [r12 + 3368]
 mov rcx, qword ptr [r12 + 1640]
 cmp rax, rcx
 jl xchain00112_n69_β
 mov rcx, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1568], rcx
 mov rcx, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1576], rcx
 jmp xchain00112_n00035_α
.Lx00140_0:
 mov rdi, qword ptr [r12 + 3360]
 mov rsi, qword ptr [r12 + 3368]
 mov rdx, qword ptr [r12 + 1632]
 mov rcx, qword ptr [r12 + 1640]
 mov r8d, 8
 lea r9, [r12 + 1568]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00140_1
 cmp eax, 1
 je xchain00112_n69_β
 jmp xchain00112_n00035_α
.Lx00140_2:
 mov rdi, qword ptr [r12 + 3360]
 mov rsi, qword ptr [r12 + 3368]
 mov rdx, qword ptr [r12 + 1632]
 mov rcx, qword ptr [r12 + 1640]
 mov r8d, 8
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00112_n69_β
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1576], rax
 jmp xchain00112_n00035_α
 xchain00112_n00034_β:
 jmp xchain00112_n69_β
# IR_VAR
 xchain00112_n00035_α:
 mov rax, qword ptr [r12 + 3392]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 3400]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00112_n00037_α
 xchain00112_n00035_β:
 jmp xchain00112_n00038_α
# IR_LIT_STRING
 xchain00112_n00037_α:
 mov qword ptr [r12 + 1536], 1
 mov rax, qword ptr [rip + .Lx00141_0]
 mov qword ptr [r12 + 1544], rax
 jmp xchain00112_n00039_α
 xchain00112_n00037_β:
 jmp xchain00112_n00038_α
.Lx00141_0:
 .quad .Lx00141_0_s
.Lx00141_0_s:
 .string "\n\t\t\t\t\t"
# IR_VAR
 xchain00112_n00038_α:
 mov rax, qword ptr [r12 + 3376]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 3384]
 mov qword ptr [r12 + 1432], rax
 jmp xchain00112_n00048_α
 xchain00112_n00038_β:
 jmp xchain00112_n69_β
 xchain00112_n00039_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 3392]
 mov rsi, qword ptr [r12 + 3400]
 mov rdx, qword ptr [r12 + 1536]
 mov rcx, qword ptr [r12 + 1544]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain00112_n00001_α
 xchain00112_n00039_β:
 jmp xchain00112_n00038_α
 xchain00112_n00048_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1424]
 mov rdx, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 3360], rax
 mov qword ptr [r12 + 3368], rdx
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain00112_n00043_α
 xchain00112_n00048_β:
 jmp xchain00112_n69_β
 xchain00112_n00001_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1472]
 mov rdx, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 3392], rax
 mov qword ptr [r12 + 3400], rdx
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain00112_n00038_α
 xchain00112_n00001_β:
 jmp xchain00112_n00038_α
 xchain00112_n00043_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00112_n00044_α
xchain00112_n00043_β:
 jmp xchain00112_n69_β
# IR_MOVE_LABEL
 xchain00112_n00044_α:
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1368], rax
 lea rax, [rip + xchain00112_n69_β]
 mov qword ptr [r12 + 1376], rax
 jmp xchain00112_n00045_α
 xchain00112_n00044_β:
 jmp xchain00112_n69_β
 xchain00112_n00045_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1352], rax
 jmp xchain00112_n69_β
xchain00112_n00045_β:
 jmp xchain00112_n69_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00112_n00002_α:
 jmp qword ptr [r12 + 1376]
 xchain00112_n00002_β:
 jmp xchain00112_n69_β
proc_format_β:
jmp proc_format_ω
proc_format_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 3304]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 3296]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_format_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 3304]
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
 xchain00142_n0_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3424], rax
 mov qword ptr [r12 + 3432], rdx
 jmp xchain00142_n1_α
 xchain00142_n0_β:
 jmp xchain00142_n3_α
# IR_NULLTEST_VAR
 xchain00142_n1_α:
 mov eax, dword ptr [r12 + 3424]
 cmp eax, 99
 je xchain00142_n3_α
 mov rdi, qword ptr [r12 + 3424]
 mov rsi, qword ptr [r12 + 3432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00142_n3_α
 cmp eax, 0
 jne xchain00142_n3_α
 mov rax, qword ptr [r12 + 3424]
 mov qword ptr [r12 + 3456], rax
 mov rax, qword ptr [r12 + 3432]
 mov qword ptr [r12 + 3464], rax
 jmp xchain00142_n2_α
 xchain00142_n1_β:
 jmp xchain00142_n3_α
# IR_LIT_CHARSET
 xchain00142_n2_α:
 mov qword ptr [r12 + 3552], 1
 mov dword ptr [r12 + 3556], -1
 mov rax, qword ptr [rip + .Lx00143_0]
 mov qword ptr [r12 + 3560], rax
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
 lea rsi, [r12 + 3408]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3392], rax
 mov qword ptr [r12 + 3400], rdx
 cmp eax, 99
 je xchain00142_n6_α
 jmp xchain00142_n5_α
 xchain00142_n3_β:
 jmp xchain00142_n6_α
 xchain00142_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3552] -> [zr+3520]
 mov rax, qword ptr [r12 + 3552]
 mov qword ptr [r12 + 3520], rax
 mov rax, qword ptr [r12 + 3560]
 mov qword ptr [r12 + 3528], rax
  .section .rodata
  .Lrkfn527: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn527]
 lea rsi, [r12 + 3520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 cmp eax, 99
 je xchain00142_n3_α
 jmp xchain00142_n7_α
 xchain00142_n4_β:
 jmp xchain00142_n3_α
 xchain00142_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3392]
 mov rdx, qword ptr [r12 + 3400]
 mov qword ptr [r12 + 3600], rax
 mov qword ptr [r12 + 3608], rdx
 mov qword ptr [r12 + 3376], rax
 mov qword ptr [r12 + 3384], rdx
 jmp xchain00142_n6_α
 xchain00142_n5_β:
 jmp xchain00142_n6_α
# IR_MAKE_LIST
 xchain00142_n6_α:
 lea rdi, [r12 + 3376]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 3360], rax
 mov qword ptr [r12 + 3368], rdx
 jmp xchain00142_n8_α
 xchain00142_n6_β:
 jmp xchain00142_n9_α
# IR_ASSIGN_VAR
 xchain00142_n7_α:
 mov rdi, qword ptr [r12 + 3456]
 mov rsi, qword ptr [r12 + 3464]
 mov rdx, qword ptr [r12 + 3504]
 mov rcx, qword ptr [r12 + 3512]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00142_n3_α
 mov qword ptr [r12 + 3488], rax
 mov qword ptr [r12 + 3496], rdx
 jmp xchain00142_n3_α
 xchain00142_n7_β:
 jmp xchain00142_n3_α
 xchain00142_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3360]
 mov rdx, qword ptr [r12 + 3368]
 mov qword ptr [r12 + 3616], rax
 mov qword ptr [r12 + 3624], rdx
 mov qword ptr [r12 + 3344], rax
 mov qword ptr [r12 + 3352], rdx
 jmp xchain00142_n9_α
 xchain00142_n8_β:
 jmp xchain00142_n9_α
# IR_VAR
 xchain00142_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 328], rax
 jmp xchain00142_n10_α
 xchain00142_n9_β:
 jmp xchain00142_n11_α
 xchain00142_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn536: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn536]
 lea rsi, [r12 + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain00142_n11_α
 jmp xchain00142_n12_α
 xchain00142_n10_β:
 jmp xchain00142_n11_α
# IR_VAR
 xchain00142_n11_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00142_n13_α
 xchain00142_n11_β:
 jmp xchain00142_n14_α
 xchain00142_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 3632], rax
 mov qword ptr [r12 + 3640], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00142_n15_α
 xchain00142_n12_β:
 jmp xchain00142_n11_α
# IR_VAR
 xchain00142_n13_α:
 mov rax, qword ptr [r12 + 3616]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 3624]
 mov qword ptr [r12 + 232], rax
 jmp xchain00142_n16_α
 xchain00142_n13_β:
 jmp xchain00142_n14_α
# IR_VAR
 xchain00142_n14_α:
 mov rax, qword ptr [r12 + 3600]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 3608]
 mov qword ptr [r12 + 56], rax
 jmp xchain00142_n17_α
 xchain00142_n14_β:
 jmp proc_options_ω
# IR_VAR
 xchain00142_n15_α:
 mov rax, qword ptr [r12 + 3632]
 mov qword ptr [r12 + 3312], rax
 mov rax, qword ptr [r12 + 3640]
 mov qword ptr [r12 + 3320], rax
 jmp xchain00142_n18_α
 xchain00142_n15_β:
 jmp xchain00142_n9_α
 xchain00142_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn547: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn547]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain00142_n14_α
 jmp xchain00142_n19_α
 xchain00142_n16_β:
 jmp xchain00142_n14_α
# IR_RETURN
 xchain00142_n17_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_options_γ
# IR_GEN_SCAN
 xchain00142_n18_α:
 mov rdi, qword ptr [r12 + 3312]
 mov rsi, qword ptr [r12 + 3320]
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
  .Lrkfn552: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn552]
 lea rsi, [r12 + 96]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain00142_n14_α
 jmp xchain00142_n11_α
 xchain00142_n19_β:
 jmp xchain00142_n14_α
# IR_LIT_STRING
 xchain00142_n20_α:
 mov qword ptr [r12 + 3280], 1
 mov rax, qword ptr [rip + .Lx00144_0]
 mov qword ptr [r12 + 3288], rax
 jmp xchain00142_n21_α
 xchain00142_n20_β:
 jmp xchain00142_n23_α
.Lx00144_0:
 .quad .Lx00144_0_s
.Lx00144_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00142_n21_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00142_n23_α
 mov rdi, qword ptr [rip + .Lx00145_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00142_n23_α
 mov qword ptr [r12 + 3248], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 3256], rax
 jmp xchain00142_n22_α
 xchain00142_n21_β:
 jmp xchain00142_n23_α
.Lx00145_0:
 .quad .Lx00145_0_s
.Lx00145_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00142_n22_α:
 mov rax, qword ptr [r12 + 3256]
 cmp rax, 1
 jge .Lx00146_0
 add rax, r15
 add rax, 1
.Lx00146_0:
 cmp rax, 1
 jl xchain00142_n23_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00142_n23_α
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
 jmp xchain00142_n24_α
 xchain00142_n22_β:
 mov r14, qword ptr [r12 + 3232]
 jmp xchain00142_n23_α
# IR_VAR
 xchain00142_n23_α:
 mov rax, qword ptr [r12 + 3616]
 mov qword ptr [r12 + 3040], rax
 mov rax, qword ptr [r12 + 3624]
 mov qword ptr [r12 + 3048], rax
 jmp xchain00142_n25_α
 xchain00142_n23_β:
 jmp xchain00142_n26_α
# IR_LIT_INTEGER
 xchain00142_n24_α:
 mov qword ptr [r12 + 3184], 6
 mov rax, qword ptr [rip + .Lx00147_0]
 mov qword ptr [r12 + 3192], rax
 jmp xchain00142_n27_α
 xchain00142_n24_β:
 jmp xchain00142_n29_α
.Lx00147_0:
 .quad 0
# IR_VAR
 xchain00142_n25_α:
 mov rax, qword ptr [r12 + 3632]
 mov qword ptr [r12 + 3072], rax
 mov rax, qword ptr [r12 + 3640]
 mov qword ptr [r12 + 3080], rax
 jmp xchain00142_n28_α
 xchain00142_n25_β:
 jmp xchain00142_n26_α
# IR_GEN_SCAN
 xchain00142_n26_α:
 lea rdi, [r12 + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 368]
 mov r14, qword ptr [r12 + 376]
 mov r15, qword ptr [r12 + 384]
 jmp xchain00142_n9_α
 xchain00142_n26_β:
 jmp xchain00142_n9_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00142_n27_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00148_0
 add rax, r15
 add rax, 1
.Lx00148_0:
 cmp rax, 1
 jl xchain00142_n29_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00142_n29_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00142_n29_α
 mov qword ptr [r12 + 3152], 6
 mov qword ptr [r12 + 3160], rax
 jmp xchain00142_n23_α
 xchain00142_n27_β:
 jmp xchain00142_n29_α
 xchain00142_n28_α:
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
  .Lrkfn568: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn568]
 lea rsi, [r12 + 2992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 cmp eax, 99
 je xchain00142_n26_α
 jmp xchain00142_n30_α
 xchain00142_n28_β:
 jmp xchain00142_n26_α
# KEYWORD_null
 xchain00142_n29_α:
 mov qword ptr [r12 + 3120], 0
 mov qword ptr [r12 + 3128], 0
 jmp xchain00142_n31_α
 xchain00142_n29_β:
 jmp xchain00142_n23_α
# IR_MOVE_LABEL
 xchain00142_n30_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 440], rax
 lea rax, [rip + xchain00142_n26_α]
 mov qword ptr [r12 + 448], rax
 jmp xchain00142_n32_α
 xchain00142_n30_β:
 jmp xchain00142_n26_α
 xchain00142_n31_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 3120]
 mov qword ptr [r12 + 3104], rax
 mov rax, qword ptr [r12 + 3128]
 mov qword ptr [r12 + 3112], rax
 jmp xchain00142_n34_α
xchain00142_n31_β:
 jmp xchain00142_n23_α
# IR_GEN_SCAN
 xchain00142_n32_α:
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
 lea rdi, [r12 + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 368]
 mov r14, qword ptr [r12 + 376]
 mov r15, qword ptr [r12 + 384]
 jmp xchain00142_n9_α
 xchain00142_n32_β:
 jmp xchain00142_n9_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00142_n33_α:
 jmp qword ptr [r12 + 448]
 xchain00142_n33_β:
 jmp xchain00142_n26_α
# IR_LIT_STRING
 xchain00142_n34_α:
 mov qword ptr [r12 + 2944], 1
 mov rax, qword ptr [rip + .Lx00149_0]
 mov qword ptr [r12 + 2952], rax
 jmp xchain00142_n35_α
 xchain00142_n34_β:
 jmp xchain00142_n37_α
.Lx00149_0:
 .quad .Lx00149_0_s
.Lx00149_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00142_n35_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00142_n37_α
 mov rdi, qword ptr [rip + .Lx00150_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00142_n37_α
 mov qword ptr [r12 + 2912], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 2920], rax
 jmp xchain00142_n36_α
 xchain00142_n35_β:
 jmp xchain00142_n37_α
.Lx00150_0:
 .quad .Lx00150_0_s
.Lx00150_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00142_n36_α:
 mov rax, qword ptr [r12 + 2920]
 cmp rax, 1
 jge .Lx00151_0
 add rax, r15
 add rax, 1
.Lx00151_0:
 cmp rax, 1
 jl xchain00142_n37_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00142_n37_α
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
 jmp xchain00142_n38_α
 xchain00142_n36_β:
 mov r14, qword ptr [r12 + 2896]
 jmp xchain00142_n37_α
# IR_LIT_INTEGER
 xchain00142_n37_α:
 mov qword ptr [r12 + 528], 6
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain00142_n39_α
 xchain00142_n37_β:
 jmp xchain00142_n45_α
.Lx00152_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00142_n38_α:
 mov qword ptr [r12 + 2848], 6
 mov rax, qword ptr [rip + .Lx00153_0]
 mov qword ptr [r12 + 2856], rax
 jmp xchain00142_n40_α
 xchain00142_n38_β:
 jmp xchain00142_n37_α
.Lx00153_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00142_n39_α:
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00142_n45_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00142_n45_α
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
 jmp xchain00142_n41_α
 xchain00142_n39_β:
 mov r14, qword ptr [r12 + 512]
 jmp xchain00142_n45_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00142_n40_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00154_0
 add rax, r15
 add rax, 1
.Lx00154_0:
 cmp rax, 1
 jl xchain00142_n37_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00142_n37_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00142_n37_α
 mov qword ptr [r12 + 2816], 6
 mov qword ptr [r12 + 2824], rax
 jmp xchain00142_n43_α
 xchain00142_n40_β:
 jmp xchain00142_n37_α
 xchain00142_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 3648], rax
 mov qword ptr [r12 + 3656], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00142_n44_α
 xchain00142_n41_β:
 jmp xchain00142_n45_α
 xchain00142_n42_α:
 jmp xchain00142_n45_α
xchain00142_n42_β:
 jmp xchain00142_n45_α
 xchain00142_n43_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 2816]
 mov qword ptr [r12 + 2800], rax
 mov rax, qword ptr [r12 + 2824]
 mov qword ptr [r12 + 2808], rax
 jmp xchain00142_n11_α
xchain00142_n43_β:
 jmp xchain00142_n37_α
# IR_VAR
 xchain00142_n44_α:
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 2672], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 2680], rax
 jmp xchain00142_n47_α
 xchain00142_n44_β:
 jmp xchain00142_n48_α
 xchain00142_n45_α:
 jmp xchain00142_n49_α
xchain00142_n45_β:
 jmp xchain00142_n26_α
 xchain00142_n46_α:
 jmp xchain00142_n11_α
xchain00142_n46_β:
 jmp xchain00142_n11_α
# IR_VAR
 xchain00142_n47_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 2704], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 2712], rax
 jmp xchain00142_n50_α
 xchain00142_n47_β:
 jmp xchain00142_n48_α
# IR_LIT_STRING
 xchain00142_n48_α:
 mov qword ptr [r12 + 2464], 1
 mov rax, qword ptr [rip + .Lx00155_0]
 mov qword ptr [r12 + 2472], rax
 jmp xchain00142_n51_α
 xchain00142_n48_β:
 jmp xchain00142_n37_α
.Lx00155_0:
 .quad .Lx00155_0_s
.Lx00155_0_s:
 .string "Unrecognized option: -"
# IR_MOVE_LABEL
 xchain00142_n49_α:
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
 lea rax, [rip + xchain00142_n52_α]
 mov qword ptr [r12 + 448], rax
 jmp xchain00142_n32_α
 xchain00142_n49_β:
 jmp xchain00142_n26_α
 xchain00142_n50_α:
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
.Lx00156_60:
  .section .rodata
  .Lbynamegenfn418: .string "find"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn418]
 lea rsi, [r12 + 2624]
 mov edx, 2
 lea rcx, [r12 + 2656]
 call rt_call_arr_gen@PLT
 mov qword ptr [r12 + 2608], rax
 mov qword ptr [r12 + 2616], rdx
 cmp eax, 99
 je xchain00142_n48_α
 jmp xchain00142_n53_α
 xchain00142_n50_β:
 jmp .Lx00156_60
# IR_VAR
 xchain00142_n51_α:
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 2496], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 2504], rax
 jmp xchain00142_n54_α
 xchain00142_n51_β:
 jmp xchain00142_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00142_n52_α:
 jmp qword ptr [r12 + 576]
 xchain00142_n52_β:
 jmp xchain00142_n37_α
# IR_LIT_INTEGER
 xchain00142_n53_α:
 mov qword ptr [r12 + 2736], 6
 mov rax, qword ptr [rip + .Lx00157_0]
 mov qword ptr [r12 + 2744], rax
 jmp xchain00142_n55_α
 xchain00142_n53_β:
 jmp xchain00142_n50_β
.Lx00157_0:
 .quad 1
 xchain00142_n54_α:
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
  .Lrkfn607: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn607]
 lea rsi, [r12 + 2416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je xchain00142_n37_α
 jmp xchain00142_n56_α
 xchain00142_n54_β:
 jmp xchain00142_n37_α
# IR_COERCE_NUMERIC
 xchain00142_n55_α:
 mov eax, dword ptr [r12 + 2608]
 cmp eax, 7
 je .Lx00158_1
 cmp eax, 6
 jne .Lx00158_0
 mov eax, dword ptr [r12 + 2736]
 cmp eax, 6
 jne .Lx00158_0
.Lx00158_1:
 mov rax, qword ptr [r12 + 2608]
 mov qword ptr [r12 + 2576], rax
 mov rax, qword ptr [r12 + 2616]
 mov qword ptr [r12 + 2584], rax
 jmp .Lx00158_2
.Lx00158_0:
 lea rdi, [r12 + 2608]
 lea rsi, [r12 + 2736]
 lea rdx, [r12 + 2576]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00158_2:
 jmp xchain00142_n57_α
 xchain00142_n55_β:
 jmp xchain00142_n48_α
# IR_MOVE_LABEL
 xchain00142_n56_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 568], rax
 lea rax, [rip + xchain00142_n37_α]
 mov qword ptr [r12 + 576], rax
 jmp xchain00142_n37_α
 xchain00142_n56_β:
 jmp xchain00142_n37_α
 xchain00142_n57_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2576]
 cmp eax, 100
 je .Lx00159_0
 mov eax, dword ptr [r12 + 2576]
 cmp eax, 6
 jne .Lx00159_2
.Lx00159_1:
 mov rax, qword ptr [r12 + 2584]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 2544], 6
 mov qword ptr [r12 + 2552], rax
 jmp xchain00142_n58_α
.Lx00159_0:
 mov rdi, qword ptr [r12 + 2576]
 mov rsi, qword ptr [r12 + 2584]
 mov rdx, qword ptr [r12 + 2736]
 mov rcx, qword ptr [r12 + 2744]
 mov r8d, 0
 lea r9, [r12 + 2544]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00159_3
.Lx00159_2:
 mov rdi, qword ptr [r12 + 2576]
 mov rsi, qword ptr [r12 + 2584]
 mov rdx, qword ptr [r12 + 2736]
 mov rcx, qword ptr [r12 + 2744]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00142_n48_α
 mov qword ptr [r12 + 2544], rax
 mov qword ptr [r12 + 2552], rdx
.Lx00159_3:
 jmp xchain00142_n58_α
 xchain00142_n57_β:
 jmp xchain00142_n48_α
 xchain00142_n58_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2544]
 mov rdx, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 3712], rax
 mov qword ptr [r12 + 3720], rdx
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 jmp xchain00142_n59_α
 xchain00142_n58_β:
 jmp xchain00142_n48_α
# IR_VAR_REF
 xchain00142_n59_α:
 lea rdi, [r12 + 3600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00142_n60_α
 xchain00142_n59_β:
 jmp xchain00142_n37_α
# IR_VAR
 xchain00142_n60_α:
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 632], rax
 jmp xchain00142_n61_α
 xchain00142_n60_β:
 jmp xchain00142_n37_α
# IR_SUBSCRIPT x[i] variable
 xchain00142_n61_α:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 624]
 mov rcx, qword ptr [r12 + 632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00142_n37_α
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain00142_n62_α
 xchain00142_n61_β:
 jmp xchain00142_n37_α
# IR_LIT_CHARSET
 xchain00142_n62_α:
 mov qword ptr [r12 + 2240], 1
 mov dword ptr [r12 + 2244], -1
 mov rax, qword ptr [rip + .Lx00160_0]
 mov qword ptr [r12 + 2248], rax
 jmp xchain00142_n63_α
 xchain00142_n62_β:
 jmp xchain00142_n66_α
.Lx00160_0:
 .quad .Lx00160_0_s
.Lx00160_0_s:
 .string "+.:"
# IR_VAR_REF
 xchain00142_n63_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain00142_n64_α
 xchain00142_n63_β:
 jmp xchain00142_n66_α
# IR_VAR
 xchain00142_n64_α:
 mov rax, qword ptr [r12 + 3712]
 mov qword ptr [r12 + 2320], rax
 mov rax, qword ptr [r12 + 3720]
 mov qword ptr [r12 + 2328], rax
 jmp xchain00142_n65_α
 xchain00142_n64_β:
 jmp xchain00142_n66_α
# IR_SUBSCRIPT x[i] variable
 xchain00142_n65_α:
 mov rdi, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 mov rdx, qword ptr [r12 + 2320]
 mov rcx, qword ptr [r12 + 2328]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00142_n66_α
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 jmp xchain00142_n67_α
 xchain00142_n65_β:
 jmp xchain00142_n66_α
# IR_LIT_INTEGER
 xchain00142_n66_α:
 mov qword ptr [r12 + 2144], 6
 mov rax, qword ptr [rip + .Lx00161_0]
 mov qword ptr [r12 + 2152], rax
 jmp xchain00142_n68_α
 xchain00142_n66_β:
 jmp xchain00142_n37_α
.Lx00161_0:
 .quad 1
# IR_DEREF variable -> value
 xchain00142_n67_α:
 mov rdi, qword ptr [r12 + 2352]
 mov rsi, qword ptr [r12 + 2360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00142_n66_α
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 jmp xchain00142_n69_α
 xchain00142_n67_β:
 jmp xchain00142_n66_α
# IR_MOVE_LABEL
 xchain00142_n68_α:
 mov rax, qword ptr [r12 + 2144]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 2152]
 mov qword ptr [r12 + 712], rax
 lea rax, [rip + xchain00142_n37_α]
 mov qword ptr [r12 + 720], rax
 jmp xchain00142_n70_α
 xchain00142_n68_β:
 jmp xchain00142_n37_α
 xchain00142_n69_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2384]
 mov rdx, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 3680], rax
 mov qword ptr [r12 + 3688], rdx
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 jmp xchain00142_n72_α
 xchain00142_n69_β:
 jmp xchain00142_n66_α
# IR_ASSIGN_VAR
 xchain00142_n70_α:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 704]
 mov rcx, qword ptr [r12 + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00142_n37_α
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00142_n73_α
 xchain00142_n70_β:
 jmp xchain00142_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00142_n71_α:
 jmp qword ptr [r12 + 720]
 xchain00142_n71_β:
 jmp xchain00142_n37_α
 xchain00142_n72_α:
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
  .Lbynamefn440: .string "any"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn440]
 lea rsi, [r12 + 2192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 cmp eax, 99
 je xchain00142_n66_α
 jmp xchain00142_n74_α
 xchain00142_n72_β:
 jmp xchain00142_n66_α
# IR_MOVE_LABEL
 xchain00142_n73_α:
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 568], rax
 lea rax, [rip + xchain00142_n71_α]
 mov qword ptr [r12 + 576], rax
 jmp xchain00142_n37_α
 xchain00142_n73_β:
 jmp xchain00142_n37_α
# IR_LIT_STRING
 xchain00142_n74_α:
 mov qword ptr [r12 + 2048], 1
 mov rax, qword ptr [rip + .Lx00162_0]
 mov qword ptr [r12 + 2056], rax
 jmp xchain00142_n75_α
 xchain00142_n74_β:
 jmp xchain00142_n78_α
.Lx00162_0:
 .quad .Lx00162_0_s
.Lx00162_0_s:
 .string ""
# IR_LIT_INTEGER
 xchain00142_n75_α:
 mov qword ptr [r12 + 2112], 6
 mov rax, qword ptr [rip + .Lx00163_0]
 mov qword ptr [r12 + 2120], rax
 jmp xchain00142_n76_α
 xchain00142_n75_β:
 jmp xchain00142_n78_α
.Lx00163_0:
 .quad 0
# IR_SCAN_TAB
 xchain00142_n76_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00164_0
 add rax, r15
 add rax, 1
.Lx00164_0:
 cmp rax, 1
 jl xchain00142_n78_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00142_n78_α
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
 jmp xchain00142_n77_α
 xchain00142_n76_β:
 mov r14, qword ptr [r12 + 2096]
 jmp xchain00142_n78_α
 xchain00142_n77_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 2048]
 mov rsi, qword ptr [r12 + 2056]
 mov rdx, qword ptr [r12 + 2080]
 mov rcx, qword ptr [r12 + 2088]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00142_n78_α
 mov rdi, qword ptr [r12 + 2080]
 mov rsi, qword ptr [r12 + 2088]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 jmp xchain00142_n79_α
 xchain00142_n77_β:
 jmp xchain00142_n78_α
# IR_VAR
 xchain00142_n78_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1992], rax
 jmp xchain00142_n80_α
 xchain00142_n78_β:
 jmp xchain00142_n81_α
# IR_MOVE_LABEL
 xchain00142_n79_α:
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 1784], rax
 lea rax, [rip + xchain00142_n78_α]
 mov qword ptr [r12 + 1792], rax
 jmp xchain00142_n82_α
 xchain00142_n79_β:
 jmp xchain00142_n86_α
 xchain00142_n80_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1960], rax
  .section .rodata
  .Lrkfn646: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn646]
 lea rsi, [r12 + 1952]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 cmp eax, 99
 je xchain00142_n81_α
 jmp xchain00142_n84_α
 xchain00142_n80_β:
 jmp xchain00142_n81_α
# IR_LIT_STRING
 xchain00142_n81_α:
 mov qword ptr [r12 + 1872], 1
 mov rax, qword ptr [rip + .Lx00165_0]
 mov qword ptr [r12 + 1880], rax
 jmp xchain00142_n85_α
 xchain00142_n81_β:
 jmp xchain00142_n86_α
.Lx00165_0:
 .quad .Lx00165_0_s
.Lx00165_0_s:
 .string "No parameter following -"
 xchain00142_n82_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1776]
 mov rdx, qword ptr [r12 + 1784]
 mov qword ptr [r12 + 3696], rax
 mov qword ptr [r12 + 3704], rdx
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain00142_n86_α
 xchain00142_n82_β:
 jmp xchain00142_n86_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00142_n83_α:
 jmp qword ptr [r12 + 1792]
 xchain00142_n83_β:
 jmp xchain00142_n86_α
# IR_MOVE_LABEL
 xchain00142_n84_α:
 mov rax, qword ptr [r12 + 1936]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 1784], rax
 lea rax, [rip + xchain00142_n81_α]
 mov qword ptr [r12 + 1792], rax
 jmp xchain00142_n82_α
 xchain00142_n84_β:
 jmp xchain00142_n86_α
# IR_VAR
 xchain00142_n85_α:
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 1904], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 1912], rax
 jmp xchain00142_n87_α
 xchain00142_n85_β:
 jmp xchain00142_n86_α
# IR_VAR
 xchain00142_n86_α:
 mov rax, qword ptr [r12 + 3680]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 3688]
 mov qword ptr [r12 + 792], rax
 jmp xchain00142_n88_α
 xchain00142_n86_β:
 jmp xchain00142_n37_α
 xchain00142_n87_α:
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
  .Lrkfn658: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn658]
 lea rsi, [r12 + 1824]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 cmp eax, 99
 je xchain00142_n86_α
 jmp xchain00142_n89_α
 xchain00142_n87_β:
 jmp xchain00142_n86_α
# IR_LIT_STRING
 xchain00142_n88_α:
 mov qword ptr [r12 + 1616], 1
 mov rax, qword ptr [rip + .Lx00166_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain00142_n90_α
 xchain00142_n88_β:
 jmp xchain00142_n37_α
.Lx00166_0:
 .quad .Lx00166_0_s
.Lx00166_0_s:
 .string ":"
# IR_MOVE_LABEL
 xchain00142_n89_α:
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1784], rax
 lea rax, [rip + xchain00142_n86_α]
 mov qword ptr [r12 + 1792], rax
 jmp xchain00142_n82_α
 xchain00142_n89_β:
 jmp xchain00142_n86_α
 xchain00142_n90_α:
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
  .Lrkfn663: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn663]
 lea rsi, [r12 + 1712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 cmp eax, 99
 je xchain00142_n92_α
 jmp xchain00142_n91_α
 xchain00142_n90_β:
 jmp xchain00142_n92_α
# IR_VAR
 xchain00142_n91_α:
 mov rax, qword ptr [r12 + 3696]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 3704]
 mov qword ptr [r12 + 1656], rax
 jmp xchain00142_n93_α
 xchain00142_n91_β:
 jmp xchain00142_n37_α
# IR_LIT_STRING
 xchain00142_n92_α:
 mov qword ptr [r12 + 1216], 1
 mov rax, qword ptr [rip + .Lx00167_0]
 mov qword ptr [r12 + 1224], rax
 jmp xchain00142_n94_α
 xchain00142_n92_β:
 jmp xchain00142_n37_α
.Lx00167_0:
 .quad .Lx00167_0_s
.Lx00167_0_s:
 .string "+"
 xchain00142_n93_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1648]
 mov rdx, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 3664], rax
 mov qword ptr [r12 + 3672], rdx
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain00142_n95_α
 xchain00142_n93_β:
 jmp xchain00142_n37_α
 xchain00142_n94_α:
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
  .Lrkfn669: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn669]
 lea rsi, [r12 + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 cmp eax, 99
 je xchain00142_n97_α
 jmp xchain00142_n96_α
 xchain00142_n94_β:
 jmp xchain00142_n97_α
# IR_VAR
 xchain00142_n95_α:
 mov rax, qword ptr [r12 + 3664]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 3672]
 mov qword ptr [r12 + 760], rax
 jmp xchain00142_n98_α
 xchain00142_n95_β:
 jmp xchain00142_n37_α
# IR_VAR
 xchain00142_n96_α:
 mov rax, qword ptr [r12 + 3696]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 3704]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00142_n99_α
 xchain00142_n96_β:
 jmp xchain00142_n00026_α
# IR_LIT_STRING
 xchain00142_n97_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx00168_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain00142_n00027_α
 xchain00142_n97_β:
 jmp xchain00142_n37_α
.Lx00168_0:
 .quad .Lx00168_0_s
.Lx00168_0_s:
 .string "."
 xchain00142_n98_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 744], rax
 jmp xchain00142_n00029_α
xchain00142_n98_β:
 jmp xchain00142_n37_α
 xchain00142_n99_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1472]
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1480], rax
  .section .rodata
  .Lrkfn677: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn677]
 lea rsi, [r12 + 1472]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 cmp eax, 99
 je xchain00142_n00026_α
 jmp xchain00142_n00030_α
 xchain00142_n99_β:
 jmp xchain00142_n00026_α
# IR_LIT_STRING
 xchain00142_n00026_α:
 mov qword ptr [r12 + 1360], 1
 mov rax, qword ptr [rip + .Lx00169_0]
 mov qword ptr [r12 + 1368], rax
 jmp xchain00142_n00024_α
 xchain00142_n00026_β:
 jmp xchain00142_n37_α
.Lx00169_0:
 .quad .Lx00169_0_s
.Lx00169_0_s:
 .string "-"
 xchain00142_n00027_α:
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
  .Lrkfn680: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn680]
 lea rsi, [r12 + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain00142_n37_α
 jmp xchain00142_n00032_α
 xchain00142_n00027_β:
 jmp xchain00142_n37_α
# IR_MOVE_LABEL
 xchain00142_n00029_α:
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 712], rax
 lea rax, [rip + xchain00142_n37_α]
 mov qword ptr [r12 + 720], rax
 jmp xchain00142_n70_α
 xchain00142_n00029_β:
 jmp xchain00142_n37_α
# IR_MOVE_LABEL
 xchain00142_n00030_α:
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1256], rax
 lea rax, [rip + xchain00142_n00026_α]
 mov qword ptr [r12 + 1264], rax
 jmp xchain00142_n00039_α
 xchain00142_n00030_β:
 jmp xchain00142_n37_α
# IR_VAR
 xchain00142_n00024_α:
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00142_n00035_α
 xchain00142_n00024_β:
 jmp xchain00142_n37_α
# IR_VAR
 xchain00142_n00032_α:
 mov rax, qword ptr [r12 + 3696]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 3704]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00142_n00037_α
 xchain00142_n00032_β:
 jmp xchain00142_n00038_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00142_n00034_α:
 jmp qword ptr [r12 + 1264]
 xchain00142_n00034_β:
 jmp xchain00142_n37_α
# IR_LIT_STRING
 xchain00142_n00035_α:
 mov qword ptr [r12 + 1424], 1
 mov rax, qword ptr [rip + .Lx00170_0]
 mov qword ptr [r12 + 1432], rax
 jmp xchain00142_n00048_α
 xchain00142_n00035_β:
 jmp xchain00142_n37_α
.Lx00170_0:
 .quad .Lx00170_0_s
.Lx00170_0_s:
 .string " needs numeric parameter"
 xchain00142_n00037_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1072]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn693: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn693]
 lea rsi, [r12 + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00142_n00038_α
 jmp xchain00142_n00001_α
 xchain00142_n00037_β:
 jmp xchain00142_n00038_α
# IR_LIT_STRING
 xchain00142_n00038_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx00171_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain00142_n00043_α
 xchain00142_n00038_β:
 jmp xchain00142_n37_α
.Lx00171_0:
 .quad .Lx00171_0_s
.Lx00171_0_s:
 .string "-"
 xchain00142_n00039_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1248]
 mov rdx, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 3664], rax
 mov qword ptr [r12 + 3672], rdx
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain00142_n95_α
 xchain00142_n00039_β:
 jmp xchain00142_n37_α
 xchain00142_n00048_α:
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
  .Lrkfn697: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn697]
 lea rsi, [r12 + 1296]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xchain00142_n37_α
 jmp xchain00142_n00044_α
 xchain00142_n00048_β:
 jmp xchain00142_n37_α
# IR_MOVE_LABEL
 xchain00142_n00001_α:
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00142_n00038_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00142_n00047_α
 xchain00142_n00001_β:
 jmp xchain00142_n37_α
# IR_VAR
 xchain00142_n00043_α:
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00142_n00002_α
 xchain00142_n00043_β:
 jmp xchain00142_n37_α
# IR_MOVE_LABEL
 xchain00142_n00044_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1256], rax
 lea rax, [rip + xchain00142_n37_α]
 mov qword ptr [r12 + 1264], rax
 jmp xchain00142_n00039_α
 xchain00142_n00044_β:
 jmp xchain00142_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00142_n00045_α:
 jmp qword ptr [r12 + 864]
 xchain00142_n00045_β:
 jmp xchain00142_n37_α
# IR_LIT_STRING
 xchain00142_n00002_α:
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx00172_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00142_n00040_α
 xchain00142_n00002_β:
 jmp xchain00142_n37_α
.Lx00172_0:
 .quad .Lx00172_0_s
.Lx00172_0_s:
 .string " needs numeric parameter"
 xchain00142_n00047_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [r12 + 3664], rax
 mov qword ptr [r12 + 3672], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00142_n95_α
 xchain00142_n00047_β:
 jmp xchain00142_n37_α
 xchain00142_n00040_α:
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
  .Lrkfn709: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn709]
 lea rsi, [r12 + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain00142_n37_α
 jmp xchain00142_n00049_α
 xchain00142_n00040_β:
 jmp xchain00142_n37_α
# IR_MOVE_LABEL
 xchain00142_n00049_α:
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00142_n37_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00142_n00047_α
 xchain00142_n00049_β:
 jmp xchain00142_n37_α
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
 xchain00173_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 520], rax
 jmp xchain00173_n1_α
 xchain00173_n0_β:
 jmp xchain00173_n2_α
# IR_ASSIGN gva
 xchain00173_n1_α:
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00173_n2_α
 xchain00173_n1_β:
 jmp xchain00173_n2_α
 xchain00173_n2_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00174_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00174_1
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
 jmp .Lx00174_2
.Lx00174_1:
 call rt_faildescr@PLT
.Lx00174_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain00173_n3_α
 jmp xchain00173_n3_α
 xchain00173_n2_β:
 jmp xchain00173_n3_α
.Lx00174_0:
 .quad .Lx00174_0_s
.Lx00174_0_s:
 .string "Signature__"
 xchain00173_n3_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00175_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00175_1
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
 jmp .Lx00175_2
.Lx00175_1:
 call rt_faildescr@PLT
.Lx00175_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain00173_n4_α
 jmp xchain00173_n4_α
 xchain00173_n3_β:
 jmp xchain00173_n4_α
.Lx00175_0:
 .quad .Lx00175_0_s
.Lx00175_0_s:
 .string "Regions__"
 xchain00173_n4_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00176_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00176_1
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
 jmp .Lx00176_2
.Lx00176_1:
 call rt_faildescr@PLT
.Lx00176_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00173_n5_α
 jmp xchain00173_n5_α
 xchain00173_n4_β:
 jmp xchain00173_n5_α
.Lx00176_0:
 .quad .Lx00176_0_s
.Lx00176_0_s:
 .string "Time__"
# IR_LIT_STRING
 xchain00173_n5_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx00177_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00173_n6_α
 xchain00173_n5_β:
 jmp xchain00173_n8_α
.Lx00177_0:
 .quad .Lx00177_0_s
.Lx00177_0_s:
 .string "OUTPUT"
 xchain00173_n6_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn724: .string "getenv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn724]
 lea rsi, [r12 + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain00173_n8_α
 jmp xchain00173_n7_α
 xchain00173_n6_β:
 jmp xchain00173_n8_α
# IR_LIT_STRING
 xchain00173_n7_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx00178_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00173_n9_α
 xchain00173_n7_β:
 jmp xchain00173_n12_α
.Lx00178_0:
 .quad .Lx00178_0_s
.Lx00178_0_s:
 .string "*** Benchmarking with output ***"
# IR_VAR
 xchain00173_n8_α:
 mov rdi, qword ptr [rip + .Lx00179_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00173_n11_α
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00173_n10_α
 xchain00173_n8_β:
 jmp xchain00173_n11_α
.Lx00179_0:
 .quad .Lx00179_0_s
.Lx00179_0_s:
 .string "write"
 xchain00173_n9_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn728: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn728]
 lea rsi, [r12 + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain00173_n12_α
 jmp xchain00173_n12_α
 xchain00173_n9_β:
 jmp xchain00173_n12_α
# IR_ASSIGN gva
 xchain00173_n10_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00173_n11_α
 xchain00173_n10_β:
 jmp xchain00173_n11_α
# IR_VAR
 xchain00173_n11_α:
 mov rdi, qword ptr [rip + .Lx00180_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00173_n14_α
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00173_n13_α
 xchain00173_n11_β:
 jmp xchain00173_n14_α
.Lx00180_0:
 .quad .Lx00180_0_s
.Lx00180_0_s:
 .string "writes"
# IR_RETURN
 xchain00173_n12_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Init___γ
# IR_ASSIGN gva
 xchain00173_n13_α:
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [rbx + 240], rax
 mov qword ptr [rbx + 248], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00173_n14_α
 xchain00173_n13_β:
 jmp xchain00173_n14_α
# IR_LIT_INTEGER
 xchain00173_n14_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00181_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00173_n15_α
 xchain00173_n14_β:
 jmp xchain00173_n17_α
.Lx00181_0:
 .quad 1
# IR_ASSIGN global
 xchain00173_n15_α:
 mov rsi, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov rdi, qword ptr [rip + .Lx00182_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00173_n16_α
 xchain00173_n15_β:
 jmp xchain00173_n17_α
.Lx00182_0:
 .quad .Lx00182_0_s
.Lx00182_0_s:
 .string "writes"
# IR_ASSIGN global
 xchain00173_n16_α:
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov rdi, qword ptr [rip + .Lx00183_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00173_n17_α
 xchain00173_n16_β:
 jmp xchain00173_n17_α
.Lx00183_0:
 .quad .Lx00183_0_s
.Lx00183_0_s:
 .string "write"
# IR_RETURN
 xchain00173_n17_α:
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
 xchain00184_n0_α:
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx00185_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00184_n1_α
 xchain00184_n0_β:
 jmp xchain00184_n3_α
.Lx00185_0:
 .quad .Lx00185_0_s
.Lx00185_0_s:
 .string "OUTPUT"
 xchain00184_n1_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn740: .string "getenv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn740]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain00184_n3_α
 jmp xchain00184_n2_α
 xchain00184_n1_β:
 jmp xchain00184_n3_α
# IR_VAR
 xchain00184_n2_α:
 mov rax, qword ptr [rbx + 256]
 mov rdx, qword ptr [rbx + 264]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00184_n4_α
 xchain00184_n2_β:
 jmp xchain00184_n5_α
# KEYWORD_null
 xchain00184_n3_α:
 mov qword ptr [r12 + 432], 0
 mov qword ptr [r12 + 440], 0
 jmp xchain00184_n6_α
 xchain00184_n3_β:
 jmp xchain00184_n2_α
# IR_LIT_STRING
 xchain00184_n4_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx00186_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00184_n7_α
 xchain00184_n4_β:
 jmp xchain00184_n5_α
.Lx00186_0:
 .quad .Lx00186_0_s
.Lx00186_0_s:
 .string " elapsed time = "
 xchain00184_n5_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00187_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00187_1
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
 jmp .Lx00187_2
.Lx00187_1:
 call rt_faildescr@PLT
.Lx00187_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain00184_n8_α
 jmp xchain00184_n8_α
 xchain00184_n5_β:
 jmp xchain00184_n8_α
.Lx00187_0:
 .quad .Lx00187_0_s
.Lx00187_0_s:
 .string "Regions__"
# IR_VAR
 xchain00184_n6_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00184_n9_α
 xchain00184_n6_β:
 jmp xchain00184_n10_α
 xchain00184_n7_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00188_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00188_1
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
 jmp .Lx00188_2
.Lx00188_1:
 call rt_faildescr@PLT
.Lx00188_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain00184_n5_α
 jmp xchain00184_n11_α
 xchain00184_n7_β:
 jmp xchain00184_n5_α
.Lx00188_0:
 .quad .Lx00188_0_s
.Lx00188_0_s:
 .string "Time__"
 xchain00184_n8_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00189_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00189_1
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
 jmp .Lx00189_2
.Lx00189_1:
 call rt_faildescr@PLT
.Lx00189_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain00184_n12_α
 jmp xchain00184_n12_α
 xchain00184_n8_β:
 jmp xchain00184_n12_α
.Lx00189_0:
 .quad .Lx00189_0_s
.Lx00189_0_s:
 .string "Storage__"
# IR_ASSIGN global
 xchain00184_n9_α:
 mov rsi, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 mov rdi, qword ptr [rip + .Lx00190_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00184_n10_α
 xchain00184_n9_β:
 jmp xchain00184_n10_α
.Lx00190_0:
 .quad .Lx00190_0_s
.Lx00190_0_s:
 .string "write"
# IR_VAR
 xchain00184_n10_α:
 mov rax, qword ptr [rbx + 240]
 mov rdx, qword ptr [rbx + 248]
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00184_n13_α
 xchain00184_n10_β:
 jmp xchain00184_n2_α
 xchain00184_n11_α:
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
  .Lrkfn754: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn754]
 lea rsi, [r12 + 128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00184_n5_α
 jmp xchain00184_n5_α
 xchain00184_n11_β:
 jmp xchain00184_n5_α
 xchain00184_n12_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00191_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00191_1
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
 jmp .Lx00191_2
.Lx00191_1:
 call rt_faildescr@PLT
.Lx00191_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain00184_n14_α
 jmp xchain00184_n14_α
 xchain00184_n12_β:
 jmp xchain00184_n14_α
.Lx00191_0:
 .quad .Lx00191_0_s
.Lx00191_0_s:
 .string "Collections__"
# IR_ASSIGN global
 xchain00184_n13_α:
 mov rsi, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov rdi, qword ptr [rip + .Lx00192_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00184_n15_α
 xchain00184_n13_β:
 jmp xchain00184_n2_α
.Lx00192_0:
 .quad .Lx00192_0_s
.Lx00192_0_s:
 .string "writes"
# IR_RETURN
 xchain00184_n14_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Term___γ
 xchain00184_n15_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 328], rax
 jmp xchain00184_n16_α
xchain00184_n15_β:
 jmp xchain00184_n2_α
# IR_MOVE_LABEL
 xchain00184_n16_α:
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 296], rax
 lea rax, [rip + xchain00184_n2_α]
 mov qword ptr [r12 + 304], rax
 jmp xchain00184_n2_α
 xchain00184_n16_β:
 jmp xchain00184_n2_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00184_n17_α:
 jmp qword ptr [r12 + 304]
 xchain00184_n17_β:
 jmp xchain00184_n2_α
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
 xchain00193_n0_α:
 lea rdi, [rbx + 352]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00193_n1_α
 xchain00193_n0_β:
 jmp xchain00193_n3_α
# IR_NULLTEST_VAR
 xchain00193_n1_α:
 mov eax, dword ptr [r12 + 1040]
 cmp eax, 99
 je xchain00193_n3_α
 mov rdi, qword ptr [r12 + 1040]
 mov rsi, qword ptr [r12 + 1048]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00193_n3_α
 cmp eax, 0
 jne xchain00193_n3_α
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00193_n2_α
 xchain00193_n1_β:
 jmp xchain00193_n3_α
# IR_LIT_INTEGER
 xchain00193_n2_α:
 mov qword ptr [r12 + 1120], 6
 mov rax, qword ptr [rip + .Lx00194_0]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00193_n4_α
 xchain00193_n2_β:
 jmp xchain00193_n3_α
.Lx00194_0:
 .quad 1
# IR_MAKE_LIST
 xchain00193_n3_α:
 lea rdi, [r12 + 784]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00193_n5_α
 xchain00193_n3_β:
 jmp xchain00193_n7_α
# IR_ASSIGN_VAR
 xchain00193_n4_α:
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 mov rdx, qword ptr [r12 + 1120]
 mov rcx, qword ptr [r12 + 1128]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00193_n3_α
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain00193_n6_α
 xchain00193_n4_β:
 jmp xchain00193_n3_α
 xchain00193_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00193_n7_α
 xchain00193_n5_β:
 jmp xchain00193_n7_α
# IR_LIT_STRING
 xchain00193_n6_α:
 mov qword ptr [r12 + 912], 1
 mov rax, qword ptr [rip + .Lx00195_0]
 mov qword ptr [r12 + 920], rax
 jmp xchain00193_n8_α
 xchain00193_n6_β:
 jmp xchain00193_n3_α
.Lx00195_0:
 .quad .Lx00195_0_s
.Lx00195_0_s:
 .string "total"
# IR_VAR
 xchain00193_n7_α:
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 696], rax
 jmp xchain00193_n9_α
 xchain00193_n7_β:
 jmp xchain00193_n10_α
# IR_LIT_STRING
 xchain00193_n8_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx00196_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00193_n11_α
 xchain00193_n8_β:
 jmp xchain00193_n3_α
.Lx00196_0:
 .quad .Lx00196_0_s
.Lx00196_0_s:
 .string "static"
# KEYWORD_gen
 xchain00193_n9_α:
 mov qword ptr [r12 + 736], 0
.Lx00197_1:
 mov rdi, qword ptr [rip + .Lx00197_0]
 mov rsi, qword ptr [r12 + 736]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00193_n10_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 mov rax, qword ptr [r12 + 736]
 add rax, 1
 mov qword ptr [r12 + 736], rax
 jmp xchain00193_n12_α
 xchain00193_n9_β:
 jmp .Lx00197_1
.Lx00197_0:
 .quad .Lx00197_0_s
.Lx00197_0_s:
 .string "&collections"
# IR_LIT_STRING
 xchain00193_n10_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx00198_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00193_n13_α
 xchain00193_n10_β:
 jmp xchain00193_n15_α
.Lx00198_0:
 .quad .Lx00198_0_s
.Lx00198_0_s:
 .string "collections"
# IR_LIT_STRING
 xchain00193_n11_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx00199_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain00193_n14_α
 xchain00193_n11_β:
 jmp xchain00193_n3_α
.Lx00199_0:
 .quad .Lx00199_0_s
.Lx00199_0_s:
 .string "string"
 xchain00193_n12_α:
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
  .Lrkfn781: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn781]
 lea rsi, [r12 + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain00193_n10_α
 jmp xchain00193_n9_β
 xchain00193_n12_β:
 jmp xchain00193_n10_α
 xchain00193_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn783: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn783]
 lea rsi, [r12 + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain00193_n15_α
 jmp xchain00193_n15_α
 xchain00193_n13_β:
 jmp xchain00193_n15_α
# IR_LIT_STRING
 xchain00193_n14_α:
 mov qword ptr [r12 + 1008], 1
 mov rax, qword ptr [rip + .Lx00200_0]
 mov qword ptr [r12 + 1016], rax
 jmp xchain00193_n16_α
 xchain00193_n14_β:
 jmp xchain00193_n3_α
.Lx00200_0:
 .quad .Lx00200_0_s
.Lx00200_0_s:
 .string "block"
# IR_LIT_INTEGER
 xchain00193_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00201_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00193_n17_α
 xchain00193_n15_β:
 jmp xchain00193_n20_α
.Lx00201_0:
 .quad 1
# IR_MAKE_LIST
 xchain00193_n16_α:
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
 jmp xchain00193_n18_α
 xchain00193_n16_β:
 jmp xchain00193_n3_α
# IR_VAR
 xchain00193_n17_α:
 mov rax, qword ptr [rbx + 336]
 mov rdx, qword ptr [rbx + 344]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00193_n19_α
 xchain00193_n17_β:
 jmp xchain00193_n20_α
# IR_ASSIGN gva
 xchain00193_n18_α:
 mov rax, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 mov qword ptr [rbx + 336], rax
 mov qword ptr [rbx + 344], rdx
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00193_n21_α
 xchain00193_n18_β:
 jmp xchain00193_n3_α
# IR_UNOP
 xchain00193_n19_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00193_n22_α
 xchain00193_n19_β:
 jmp xchain00193_n20_α
# IR_RETURN
 xchain00193_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Collections___γ
# IR_MOVE_LABEL
 xchain00193_n21_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
 lea rax, [rip + xchain00193_n3_α]
 mov qword ptr [r12 + 800], rax
 jmp xchain00193_n3_α
 xchain00193_n21_β:
 jmp xchain00193_n3_α
# IR_TO
 xchain00193_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00202_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 104]
 cmp rax, rcx
 jg xchain00193_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00193_n24_α
 xchain00193_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00202_0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00193_n23_α:
 jmp qword ptr [r12 + 800]
 xchain00193_n23_β:
 jmp xchain00193_n3_α
 xchain00193_n24_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00193_n25_α
 xchain00193_n24_β:
 jmp xchain00193_n20_α
# IR_VAR_REF
 xchain00193_n25_α:
 lea rdi, [rbx + 336]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00193_n26_α
 xchain00193_n25_β:
 jmp xchain00193_n22_β
# IR_VAR
 xchain00193_n26_α:
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 264], rax
 jmp xchain00193_n27_α
 xchain00193_n26_β:
 jmp xchain00193_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00193_n27_α:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00193_n22_β
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00193_n28_α
 xchain00193_n27_β:
 jmp xchain00193_n22_β
# IR_DEREF variable -> value
 xchain00193_n28_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00193_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00193_n29_α
 xchain00193_n28_β:
 jmp xchain00193_n22_β
# IR_VAR_REF
 xchain00193_n29_α:
 lea rdi, [r12 + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00193_n30_α
 xchain00193_n29_β:
 jmp xchain00193_n22_β
# IR_VAR
 xchain00193_n30_α:
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 440], rax
 jmp xchain00193_n31_α
 xchain00193_n30_β:
 jmp xchain00193_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00193_n31_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00193_n22_β
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00193_n32_α
 xchain00193_n31_β:
 jmp xchain00193_n22_β
# IR_DEREF variable -> value
 xchain00193_n32_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00193_n22_β
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00193_n33_α
 xchain00193_n32_β:
 jmp xchain00193_n22_β
# IR_LIT_INTEGER
 xchain00193_n33_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00203_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00193_n34_α
 xchain00193_n33_β:
 jmp xchain00193_n22_β
.Lx00203_0:
 .quad 8
 xchain00193_n34_α:
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
  .Lrkfn813: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn813]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain00193_n22_β
 jmp xchain00193_n35_α
 xchain00193_n34_β:
 jmp xchain00193_n22_β
 xchain00193_n35_α:
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
  .Lrkfn815: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn815]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00193_n22_β
 jmp xchain00193_n22_β
 xchain00193_n35_β:
 jmp xchain00193_n22_β
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
 xchain00204_n0_α:
 lea rdi, [rbx + 384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain00204_n1_α
 xchain00204_n0_β:
 jmp xchain00204_n3_α
# IR_NULLTEST_VAR
 xchain00204_n1_α:
 mov eax, dword ptr [r12 + 992]
 cmp eax, 99
 je xchain00204_n3_α
 mov rdi, qword ptr [r12 + 992]
 mov rsi, qword ptr [r12 + 1000]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00204_n3_α
 cmp eax, 0
 jne xchain00204_n3_α
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00204_n2_α
 xchain00204_n1_β:
 jmp xchain00204_n3_α
# IR_LIT_INTEGER
 xchain00204_n2_α:
 mov qword ptr [r12 + 1072], 6
 mov rax, qword ptr [rip + .Lx00205_0]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00204_n4_α
 xchain00204_n2_β:
 jmp xchain00204_n3_α
.Lx00205_0:
 .quad 1
# IR_MAKE_LIST
 xchain00204_n3_α:
 lea rdi, [r12 + 784]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00204_n5_α
 xchain00204_n3_β:
 jmp xchain00204_n7_α
# IR_ASSIGN_VAR
 xchain00204_n4_α:
 mov rdi, qword ptr [r12 + 1024]
 mov rsi, qword ptr [r12 + 1032]
 mov rdx, qword ptr [r12 + 1072]
 mov rcx, qword ptr [r12 + 1080]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00204_n3_α
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain00204_n6_α
 xchain00204_n4_β:
 jmp xchain00204_n3_α
 xchain00204_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00204_n7_α
 xchain00204_n5_β:
 jmp xchain00204_n7_α
# IR_LIT_STRING
 xchain00204_n6_α:
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx00206_0]
 mov qword ptr [r12 + 904], rax
 jmp xchain00204_n8_α
 xchain00204_n6_β:
 jmp xchain00204_n3_α
.Lx00206_0:
 .quad .Lx00206_0_s
.Lx00206_0_s:
 .string "static"
# IR_VAR
 xchain00204_n7_α:
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 696], rax
 jmp xchain00204_n9_α
 xchain00204_n7_β:
 jmp xchain00204_n10_α
# IR_LIT_STRING
 xchain00204_n8_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx00207_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain00204_n11_α
 xchain00204_n8_β:
 jmp xchain00204_n3_α
.Lx00207_0:
 .quad .Lx00207_0_s
.Lx00207_0_s:
 .string "string"
# KEYWORD_gen
 xchain00204_n9_α:
 mov qword ptr [r12 + 736], 0
.Lx00208_1:
 mov rdi, qword ptr [rip + .Lx00208_0]
 mov rsi, qword ptr [r12 + 736]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00204_n10_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 mov rax, qword ptr [r12 + 736]
 add rax, 1
 mov qword ptr [r12 + 736], rax
 jmp xchain00204_n12_α
 xchain00204_n9_β:
 jmp .Lx00208_1
.Lx00208_0:
 .quad .Lx00208_0_s
.Lx00208_0_s:
 .string "&regions"
# IR_LIT_STRING
 xchain00204_n10_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx00209_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00204_n13_α
 xchain00204_n10_β:
 jmp xchain00204_n15_α
.Lx00209_0:
 .quad .Lx00209_0_s
.Lx00209_0_s:
 .string "regions"
# IR_LIT_STRING
 xchain00204_n11_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx00210_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain00204_n14_α
 xchain00204_n11_β:
 jmp xchain00204_n3_α
.Lx00210_0:
 .quad .Lx00210_0_s
.Lx00210_0_s:
 .string "block"
 xchain00204_n12_α:
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
  .Lrkfn833: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn833]
 lea rsi, [r12 + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain00204_n10_α
 jmp xchain00204_n9_β
 xchain00204_n12_β:
 jmp xchain00204_n10_α
 xchain00204_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn835: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn835]
 lea rsi, [r12 + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain00204_n15_α
 jmp xchain00204_n15_α
 xchain00204_n13_β:
 jmp xchain00204_n15_α
# IR_MAKE_LIST
 xchain00204_n14_α:
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
 jmp xchain00204_n16_α
 xchain00204_n14_β:
 jmp xchain00204_n3_α
# IR_LIT_INTEGER
 xchain00204_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00211_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00204_n17_α
 xchain00204_n15_β:
 jmp xchain00204_n20_α
.Lx00211_0:
 .quad 1
# IR_ASSIGN gva
 xchain00204_n16_α:
 mov rax, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 mov qword ptr [rbx + 368], rax
 mov qword ptr [rbx + 376], rdx
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00204_n18_α
 xchain00204_n16_β:
 jmp xchain00204_n3_α
# IR_VAR
 xchain00204_n17_α:
 mov rax, qword ptr [rbx + 368]
 mov rdx, qword ptr [rbx + 376]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00204_n19_α
 xchain00204_n17_β:
 jmp xchain00204_n20_α
# IR_MOVE_LABEL
 xchain00204_n18_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
 lea rax, [rip + xchain00204_n3_α]
 mov qword ptr [r12 + 800], rax
 jmp xchain00204_n3_α
 xchain00204_n18_β:
 jmp xchain00204_n3_α
# IR_UNOP
 xchain00204_n19_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00204_n22_α
 xchain00204_n19_β:
 jmp xchain00204_n20_α
# IR_RETURN
 xchain00204_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Regions___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00204_n21_α:
 jmp qword ptr [r12 + 800]
 xchain00204_n21_β:
 jmp xchain00204_n3_α
# IR_TO
 xchain00204_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00212_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 104]
 cmp rax, rcx
 jg xchain00204_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00204_n23_α
 xchain00204_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00212_0
 xchain00204_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00204_n24_α
 xchain00204_n23_β:
 jmp xchain00204_n20_α
# IR_VAR_REF
 xchain00204_n24_α:
 lea rdi, [rbx + 368]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00204_n25_α
 xchain00204_n24_β:
 jmp xchain00204_n22_β
# IR_VAR
 xchain00204_n25_α:
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 264], rax
 jmp xchain00204_n26_α
 xchain00204_n25_β:
 jmp xchain00204_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00204_n26_α:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00204_n22_β
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00204_n27_α
 xchain00204_n26_β:
 jmp xchain00204_n22_β
# IR_DEREF variable -> value
 xchain00204_n27_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00204_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00204_n28_α
 xchain00204_n27_β:
 jmp xchain00204_n22_β
# IR_VAR_REF
 xchain00204_n28_α:
 lea rdi, [r12 + 1136]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00204_n29_α
 xchain00204_n28_β:
 jmp xchain00204_n22_β
# IR_VAR
 xchain00204_n29_α:
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 440], rax
 jmp xchain00204_n30_α
 xchain00204_n29_β:
 jmp xchain00204_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00204_n30_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00204_n22_β
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00204_n31_α
 xchain00204_n30_β:
 jmp xchain00204_n22_β
# IR_DEREF variable -> value
 xchain00204_n31_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00204_n22_β
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00204_n32_α
 xchain00204_n31_β:
 jmp xchain00204_n22_β
# IR_LIT_INTEGER
 xchain00204_n32_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00213_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00204_n33_α
 xchain00204_n32_β:
 jmp xchain00204_n22_β
.Lx00213_0:
 .quad 8
 xchain00204_n33_α:
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
  .Lrkfn864: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn864]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain00204_n22_β
 jmp xchain00204_n34_α
 xchain00204_n33_β:
 jmp xchain00204_n22_β
 xchain00204_n34_α:
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
  .Lrkfn866: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn866]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00204_n22_β
 jmp xchain00204_n22_β
 xchain00204_n34_β:
 jmp xchain00204_n22_β
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
 xchain00214_n0_α:
 mov rdi, qword ptr [rip + .Lx00215_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00214_n1_α
 xchain00214_n0_β:
 jmp xchain00214_n2_α
.Lx00215_0:
 .quad .Lx00215_0_s
.Lx00215_0_s:
 .string "&version"
 xchain00214_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn870: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn870]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain00214_n2_α
 jmp xchain00214_n2_α
 xchain00214_n1_β:
 jmp xchain00214_n2_α
# KEYWORD_read
 xchain00214_n2_α:
 mov rdi, qword ptr [rip + .Lx00216_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00214_n3_α
 xchain00214_n2_β:
 jmp xchain00214_n4_α
.Lx00216_0:
 .quad .Lx00216_0_s
.Lx00216_0_s:
 .string "&host"
 xchain00214_n3_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn873: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn873]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00214_n4_α
 jmp xchain00214_n4_α
 xchain00214_n3_β:
 jmp xchain00214_n4_α
# KEYWORD_gen
 xchain00214_n4_α:
 mov qword ptr [r12 + 80], 0
.Lx00217_1:
 mov rdi, qword ptr [rip + .Lx00217_0]
 mov rsi, qword ptr [r12 + 80]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00214_n6_α
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov rax, qword ptr [r12 + 80]
 add rax, 1
 mov qword ptr [r12 + 80], rax
 jmp xchain00214_n5_α
 xchain00214_n4_β:
 jmp .Lx00217_1
.Lx00217_0:
 .quad .Lx00217_0_s
.Lx00217_0_s:
 .string "&features"
 xchain00214_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+32]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lrkfn876: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn876]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain00214_n6_α
 jmp xchain00214_n4_β
 xchain00214_n5_β:
 jmp xchain00214_n6_α
# IR_RETURN
 xchain00214_n6_α:
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
 xchain00218_n0_α:
 lea rdi, [rbx + 416]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain00218_n1_α
 xchain00218_n0_β:
 jmp xchain00218_n3_α
# IR_NULLTEST_VAR
 xchain00218_n1_α:
 mov eax, dword ptr [r12 + 992]
 cmp eax, 99
 je xchain00218_n3_α
 mov rdi, qword ptr [r12 + 992]
 mov rsi, qword ptr [r12 + 1000]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00218_n3_α
 cmp eax, 0
 jne xchain00218_n3_α
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00218_n2_α
 xchain00218_n1_β:
 jmp xchain00218_n3_α
# IR_LIT_INTEGER
 xchain00218_n2_α:
 mov qword ptr [r12 + 1072], 6
 mov rax, qword ptr [rip + .Lx00219_0]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00218_n4_α
 xchain00218_n2_β:
 jmp xchain00218_n3_α
.Lx00219_0:
 .quad 1
# IR_MAKE_LIST
 xchain00218_n3_α:
 lea rdi, [r12 + 784]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00218_n5_α
 xchain00218_n3_β:
 jmp xchain00218_n7_α
# IR_ASSIGN_VAR
 xchain00218_n4_α:
 mov rdi, qword ptr [r12 + 1024]
 mov rsi, qword ptr [r12 + 1032]
 mov rdx, qword ptr [r12 + 1072]
 mov rcx, qword ptr [r12 + 1080]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00218_n3_α
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain00218_n6_α
 xchain00218_n4_β:
 jmp xchain00218_n3_α
 xchain00218_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00218_n7_α
 xchain00218_n5_β:
 jmp xchain00218_n7_α
# IR_LIT_STRING
 xchain00218_n6_α:
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx00220_0]
 mov qword ptr [r12 + 904], rax
 jmp xchain00218_n8_α
 xchain00218_n6_β:
 jmp xchain00218_n3_α
.Lx00220_0:
 .quad .Lx00220_0_s
.Lx00220_0_s:
 .string "static"
# IR_VAR
 xchain00218_n7_α:
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 696], rax
 jmp xchain00218_n9_α
 xchain00218_n7_β:
 jmp xchain00218_n10_α
# IR_LIT_STRING
 xchain00218_n8_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx00221_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain00218_n11_α
 xchain00218_n8_β:
 jmp xchain00218_n3_α
.Lx00221_0:
 .quad .Lx00221_0_s
.Lx00221_0_s:
 .string "string"
# KEYWORD_gen
 xchain00218_n9_α:
 mov qword ptr [r12 + 736], 0
.Lx00222_1:
 mov rdi, qword ptr [rip + .Lx00222_0]
 mov rsi, qword ptr [r12 + 736]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00218_n10_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 mov rax, qword ptr [r12 + 736]
 add rax, 1
 mov qword ptr [r12 + 736], rax
 jmp xchain00218_n12_α
 xchain00218_n9_β:
 jmp .Lx00222_1
.Lx00222_0:
 .quad .Lx00222_0_s
.Lx00222_0_s:
 .string "&storage"
# IR_LIT_STRING
 xchain00218_n10_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx00223_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00218_n13_α
 xchain00218_n10_β:
 jmp xchain00218_n15_α
.Lx00223_0:
 .quad .Lx00223_0_s
.Lx00223_0_s:
 .string "storage"
# IR_LIT_STRING
 xchain00218_n11_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx00224_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain00218_n14_α
 xchain00218_n11_β:
 jmp xchain00218_n3_α
.Lx00224_0:
 .quad .Lx00224_0_s
.Lx00224_0_s:
 .string "block"
 xchain00218_n12_α:
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
  .Lrkfn895: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn895]
 lea rsi, [r12 + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain00218_n10_α
 jmp xchain00218_n9_β
 xchain00218_n12_β:
 jmp xchain00218_n10_α
 xchain00218_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn897: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn897]
 lea rsi, [r12 + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain00218_n15_α
 jmp xchain00218_n15_α
 xchain00218_n13_β:
 jmp xchain00218_n15_α
# IR_MAKE_LIST
 xchain00218_n14_α:
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
 jmp xchain00218_n16_α
 xchain00218_n14_β:
 jmp xchain00218_n3_α
# IR_LIT_INTEGER
 xchain00218_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00225_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00218_n17_α
 xchain00218_n15_β:
 jmp xchain00218_n20_α
.Lx00225_0:
 .quad 1
# IR_ASSIGN gva
 xchain00218_n16_α:
 mov rax, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 mov qword ptr [rbx + 400], rax
 mov qword ptr [rbx + 408], rdx
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00218_n18_α
 xchain00218_n16_β:
 jmp xchain00218_n3_α
# IR_VAR
 xchain00218_n17_α:
 mov rax, qword ptr [rbx + 400]
 mov rdx, qword ptr [rbx + 408]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00218_n19_α
 xchain00218_n17_β:
 jmp xchain00218_n20_α
# IR_MOVE_LABEL
 xchain00218_n18_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
 lea rax, [rip + xchain00218_n3_α]
 mov qword ptr [r12 + 800], rax
 jmp xchain00218_n3_α
 xchain00218_n18_β:
 jmp xchain00218_n3_α
# IR_UNOP
 xchain00218_n19_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00218_n22_α
 xchain00218_n19_β:
 jmp xchain00218_n20_α
# IR_RETURN
 xchain00218_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Storage___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00218_n21_α:
 jmp qword ptr [r12 + 800]
 xchain00218_n21_β:
 jmp xchain00218_n3_α
# IR_TO
 xchain00218_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00226_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 104]
 cmp rax, rcx
 jg xchain00218_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00218_n23_α
 xchain00218_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00226_0
 xchain00218_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00218_n24_α
 xchain00218_n23_β:
 jmp xchain00218_n20_α
# IR_VAR_REF
 xchain00218_n24_α:
 lea rdi, [rbx + 400]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00218_n25_α
 xchain00218_n24_β:
 jmp xchain00218_n22_β
# IR_VAR
 xchain00218_n25_α:
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 264], rax
 jmp xchain00218_n26_α
 xchain00218_n25_β:
 jmp xchain00218_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00218_n26_α:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00218_n22_β
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00218_n27_α
 xchain00218_n26_β:
 jmp xchain00218_n22_β
# IR_DEREF variable -> value
 xchain00218_n27_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00218_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00218_n28_α
 xchain00218_n27_β:
 jmp xchain00218_n22_β
# IR_VAR_REF
 xchain00218_n28_α:
 lea rdi, [r12 + 1136]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00218_n29_α
 xchain00218_n28_β:
 jmp xchain00218_n22_β
# IR_VAR
 xchain00218_n29_α:
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 440], rax
 jmp xchain00218_n30_α
 xchain00218_n29_β:
 jmp xchain00218_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00218_n30_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00218_n22_β
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00218_n31_α
 xchain00218_n30_β:
 jmp xchain00218_n22_β
# IR_DEREF variable -> value
 xchain00218_n31_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00218_n22_β
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00218_n32_α
 xchain00218_n31_β:
 jmp xchain00218_n22_β
# IR_LIT_INTEGER
 xchain00218_n32_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00227_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00218_n33_α
 xchain00218_n32_β:
 jmp xchain00218_n22_β
.Lx00227_0:
 .quad 8
 xchain00218_n33_α:
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
  .Lrkfn926: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn926]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain00218_n22_β
 jmp xchain00218_n34_α
 xchain00218_n33_β:
 jmp xchain00218_n22_β
 xchain00218_n34_α:
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
  .Lrkfn928: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn928]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00218_n22_β
 jmp xchain00218_n22_β
 xchain00218_n34_β:
 jmp xchain00218_n22_β
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
 xchain00228_n0_α:
 lea rdi, [rbx + 448]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00228_n1_α
 xchain00228_n0_β:
 jmp xchain00228_n3_α
# IR_NULLTEST_VAR
 xchain00228_n1_α:
 mov eax, dword ptr [r12 + 256]
 cmp eax, 99
 je xchain00228_n3_α
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00228_n3_α
 cmp eax, 0
 jne xchain00228_n3_α
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 296], rax
 jmp xchain00228_n2_α
 xchain00228_n1_β:
 jmp xchain00228_n3_α
# IR_LIT_INTEGER
 xchain00228_n2_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00229_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00228_n4_α
 xchain00228_n2_β:
 jmp xchain00228_n3_α
.Lx00229_0:
 .quad 1
# KEYWORD_read
 xchain00228_n3_α:
 mov rdi, qword ptr [rip + .Lx00230_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00228_n5_α
 xchain00228_n3_β:
 jmp proc_Time___ω
.Lx00230_0:
 .quad .Lx00230_0_s
.Lx00230_0_s:
 .string "&time"
# IR_ASSIGN_VAR
 xchain00228_n4_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00228_n3_α
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00228_n6_α
 xchain00228_n4_β:
 jmp xchain00228_n3_α
# IR_VAR
 xchain00228_n5_α:
 mov rax, qword ptr [rbx + 432]
 mov rdx, qword ptr [rbx + 440]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00228_n7_α
 xchain00228_n5_β:
 jmp proc_Time___ω
# KEYWORD_read
 xchain00228_n6_α:
 mov rdi, qword ptr [rip + .Lx00231_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00228_n8_α
 xchain00228_n6_β:
 jmp xchain00228_n3_α
.Lx00231_0:
 .quad .Lx00231_0_s
.Lx00231_0_s:
 .string "&time"
# IR_COERCE_NUMERIC
 xchain00228_n7_α:
 mov eax, dword ptr [r12 + 112]
 cmp eax, 7
 je .Lx00232_1
 cmp eax, 6
 jne .Lx00232_0
 mov eax, dword ptr [r12 + 144]
 cmp eax, 6
 jne .Lx00232_0
.Lx00232_1:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
 jmp .Lx00232_2
.Lx00232_0:
 lea rdi, [r12 + 112]
 lea rsi, [r12 + 144]
 lea rdx, [r12 + 80]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00232_2:
 jmp xchain00228_n9_α
 xchain00228_n7_β:
 jmp proc_Time___ω
# IR_ASSIGN gva
 xchain00228_n8_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [rbx + 432], rax
 mov qword ptr [rbx + 440], rdx
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00228_n10_α
 xchain00228_n8_β:
 jmp xchain00228_n3_α
# IR_COERCE_NUMERIC
 xchain00228_n9_α:
 mov eax, dword ptr [r12 + 144]
 cmp eax, 7
 je .Lx00233_1
 cmp eax, 6
 jne .Lx00233_0
 mov eax, dword ptr [r12 + 112]
 cmp eax, 6
 jne .Lx00233_0
.Lx00233_1:
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 56], rax
 jmp .Lx00233_2
.Lx00233_0:
 lea rdi, [r12 + 144]
 lea rsi, [r12 + 112]
 lea rdx, [r12 + 48]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00233_2:
 jmp xchain00228_n11_α
 xchain00228_n9_β:
 jmp proc_Time___ω
# IR_MOVE_LABEL
 xchain00228_n10_α:
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
 lea rax, [rip + xchain00228_n3_α]
 mov qword ptr [r12 + 192], rax
 jmp xchain00228_n3_α
 xchain00228_n10_β:
 jmp xchain00228_n3_α
 xchain00228_n11_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 80]
 cmp eax, 100
 je .Lx00234_0
 mov eax, dword ptr [r12 + 48]
 cmp eax, 100
 je .Lx00234_0
 mov eax, dword ptr [r12 + 80]
 cmp eax, 6
 jne .Lx00234_2
 mov eax, dword ptr [r12 + 48]
 cmp eax, 6
 jne .Lx00234_2
.Lx00234_1:
 mov rax, qword ptr [r12 + 88]
 mov rcx, qword ptr [r12 + 56]
 sub rax, rcx
 mov qword ptr [r12 + 16], 6
 mov qword ptr [r12 + 24], rax
 jmp xchain00228_n13_α
.Lx00234_0:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 56]
 mov r8d, 1
 lea r9, [r12 + 16]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00234_3
.Lx00234_2:
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
.Lx00234_3:
 jmp xchain00228_n13_α
 xchain00228_n11_β:
 jmp proc_Time___ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00228_n12_α:
 jmp qword ptr [r12 + 192]
 xchain00228_n12_β:
 jmp xchain00228_n3_α
# IR_RETURN
 xchain00228_n13_α:
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
  .section .bss
  .align 16
__gva: .space 464, 0
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
  mov edx, 29
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
  mov qword ptr [r12 + 9400], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 9392], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain00235_n0_α:
 mov qword ptr [r12 + 9360], 1
 mov rax, qword ptr [rip + .Lx00236_0]
 mov qword ptr [r12 + 9368], rax
 jmp xchain00235_n1_α
 xchain00235_n0_β:
 jmp xchain00235_n2_α
.Lx00236_0:
 .quad .Lx00236_0_s
.Lx00236_0_s:
 .string "ipxref"
 xchain00235_n1_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 9360]
 mov rdx, qword ptr [r12 + 9368]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00237_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00237_1
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
 jmp .Lx00237_2
.Lx00237_1:
 call rt_faildescr@PLT
.Lx00237_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 9312], rax
 mov qword ptr [r12 + 9320], rdx
 cmp eax, 99
 je xchain00235_n2_α
 jmp xchain00235_n2_α
 xchain00235_n1_β:
 jmp xchain00235_n2_α
.Lx00237_0:
 .quad .Lx00237_0_s
.Lx00237_0_s:
 .string "Init__"
# IR_LIT_STRING
 xchain00235_n2_α:
 mov qword ptr [r12 + 8416], 1
 mov rax, qword ptr [rip + .Lx00238_0]
 mov qword ptr [r12 + 8424], rax
 jmp xchain00235_n3_α
 xchain00235_n2_β:
 jmp xchain00235_n32_α
.Lx00238_0:
 .quad .Lx00238_0_s
.Lx00238_0_s:
 .string "break"
# IR_LIT_STRING
 xchain00235_n3_α:
 mov qword ptr [r12 + 8448], 1
 mov rax, qword ptr [rip + .Lx00239_0]
 mov qword ptr [r12 + 8456], rax
 jmp xchain00235_n4_α
 xchain00235_n3_β:
 jmp xchain00235_n32_α
.Lx00239_0:
 .quad .Lx00239_0_s
.Lx00239_0_s:
 .string "by"
# IR_LIT_STRING
 xchain00235_n4_α:
 mov qword ptr [r12 + 8480], 1
 mov rax, qword ptr [rip + .Lx00240_0]
 mov qword ptr [r12 + 8488], rax
 jmp xchain00235_n5_α
 xchain00235_n4_β:
 jmp xchain00235_n32_α
.Lx00240_0:
 .quad .Lx00240_0_s
.Lx00240_0_s:
 .string "case"
# IR_LIT_STRING
 xchain00235_n5_α:
 mov qword ptr [r12 + 8512], 1
 mov rax, qword ptr [rip + .Lx00241_0]
 mov qword ptr [r12 + 8520], rax
 jmp xchain00235_n6_α
 xchain00235_n5_β:
 jmp xchain00235_n32_α
.Lx00241_0:
 .quad .Lx00241_0_s
.Lx00241_0_s:
 .string "default"
# IR_LIT_STRING
 xchain00235_n6_α:
 mov qword ptr [r12 + 8544], 1
 mov rax, qword ptr [rip + .Lx00242_0]
 mov qword ptr [r12 + 8552], rax
 jmp xchain00235_n7_α
 xchain00235_n6_β:
 jmp xchain00235_n32_α
.Lx00242_0:
 .quad .Lx00242_0_s
.Lx00242_0_s:
 .string "do"
# IR_LIT_STRING
 xchain00235_n7_α:
 mov qword ptr [r12 + 8576], 1
 mov rax, qword ptr [rip + .Lx00243_0]
 mov qword ptr [r12 + 8584], rax
 jmp xchain00235_n8_α
 xchain00235_n7_β:
 jmp xchain00235_n32_α
.Lx00243_0:
 .quad .Lx00243_0_s
.Lx00243_0_s:
 .string "dynamic"
# IR_LIT_STRING
 xchain00235_n8_α:
 mov qword ptr [r12 + 8608], 1
 mov rax, qword ptr [rip + .Lx00244_0]
 mov qword ptr [r12 + 8616], rax
 jmp xchain00235_n9_α
 xchain00235_n8_β:
 jmp xchain00235_n32_α
.Lx00244_0:
 .quad .Lx00244_0_s
.Lx00244_0_s:
 .string "else"
# IR_LIT_STRING
 xchain00235_n9_α:
 mov qword ptr [r12 + 8640], 1
 mov rax, qword ptr [rip + .Lx00245_0]
 mov qword ptr [r12 + 8648], rax
 jmp xchain00235_n10_α
 xchain00235_n9_β:
 jmp xchain00235_n32_α
.Lx00245_0:
 .quad .Lx00245_0_s
.Lx00245_0_s:
 .string "end"
# IR_LIT_STRING
 xchain00235_n10_α:
 mov qword ptr [r12 + 8672], 1
 mov rax, qword ptr [rip + .Lx00246_0]
 mov qword ptr [r12 + 8680], rax
 jmp xchain00235_n11_α
 xchain00235_n10_β:
 jmp xchain00235_n32_α
.Lx00246_0:
 .quad .Lx00246_0_s
.Lx00246_0_s:
 .string "every"
# IR_LIT_STRING
 xchain00235_n11_α:
 mov qword ptr [r12 + 8704], 1
 mov rax, qword ptr [rip + .Lx00247_0]
 mov qword ptr [r12 + 8712], rax
 jmp xchain00235_n12_α
 xchain00235_n11_β:
 jmp xchain00235_n32_α
.Lx00247_0:
 .quad .Lx00247_0_s
.Lx00247_0_s:
 .string "fail"
# IR_LIT_STRING
 xchain00235_n12_α:
 mov qword ptr [r12 + 8736], 1
 mov rax, qword ptr [rip + .Lx00248_0]
 mov qword ptr [r12 + 8744], rax
 jmp xchain00235_n13_α
 xchain00235_n12_β:
 jmp xchain00235_n32_α
.Lx00248_0:
 .quad .Lx00248_0_s
.Lx00248_0_s:
 .string "global"
# IR_LIT_STRING
 xchain00235_n13_α:
 mov qword ptr [r12 + 8768], 1
 mov rax, qword ptr [rip + .Lx00249_0]
 mov qword ptr [r12 + 8776], rax
 jmp xchain00235_n14_α
 xchain00235_n13_β:
 jmp xchain00235_n32_α
.Lx00249_0:
 .quad .Lx00249_0_s
.Lx00249_0_s:
 .string "if"
# IR_LIT_STRING
 xchain00235_n14_α:
 mov qword ptr [r12 + 8800], 1
 mov rax, qword ptr [rip + .Lx00250_0]
 mov qword ptr [r12 + 8808], rax
 jmp xchain00235_n15_α
 xchain00235_n14_β:
 jmp xchain00235_n32_α
.Lx00250_0:
 .quad .Lx00250_0_s
.Lx00250_0_s:
 .string "initial"
# IR_LIT_STRING
 xchain00235_n15_α:
 mov qword ptr [r12 + 8832], 1
 mov rax, qword ptr [rip + .Lx00251_0]
 mov qword ptr [r12 + 8840], rax
 jmp xchain00235_n16_α
 xchain00235_n15_β:
 jmp xchain00235_n32_α
.Lx00251_0:
 .quad .Lx00251_0_s
.Lx00251_0_s:
 .string "link"
# IR_LIT_STRING
 xchain00235_n16_α:
 mov qword ptr [r12 + 8864], 1
 mov rax, qword ptr [rip + .Lx00252_0]
 mov qword ptr [r12 + 8872], rax
 jmp xchain00235_n17_α
 xchain00235_n16_β:
 jmp xchain00235_n32_α
.Lx00252_0:
 .quad .Lx00252_0_s
.Lx00252_0_s:
 .string "local"
# IR_LIT_STRING
 xchain00235_n17_α:
 mov qword ptr [r12 + 8896], 1
 mov rax, qword ptr [rip + .Lx00253_0]
 mov qword ptr [r12 + 8904], rax
 jmp xchain00235_n18_α
 xchain00235_n17_β:
 jmp xchain00235_n32_α
.Lx00253_0:
 .quad .Lx00253_0_s
.Lx00253_0_s:
 .string "next"
# IR_LIT_STRING
 xchain00235_n18_α:
 mov qword ptr [r12 + 8928], 1
 mov rax, qword ptr [rip + .Lx00254_0]
 mov qword ptr [r12 + 8936], rax
 jmp xchain00235_n19_α
 xchain00235_n18_β:
 jmp xchain00235_n32_α
.Lx00254_0:
 .quad .Lx00254_0_s
.Lx00254_0_s:
 .string "not"
# IR_LIT_STRING
 xchain00235_n19_α:
 mov qword ptr [r12 + 8960], 1
 mov rax, qword ptr [rip + .Lx00255_0]
 mov qword ptr [r12 + 8968], rax
 jmp xchain00235_n20_α
 xchain00235_n19_β:
 jmp xchain00235_n32_α
.Lx00255_0:
 .quad .Lx00255_0_s
.Lx00255_0_s:
 .string "of"
# IR_LIT_STRING
 xchain00235_n20_α:
 mov qword ptr [r12 + 8992], 1
 mov rax, qword ptr [rip + .Lx00256_0]
 mov qword ptr [r12 + 9000], rax
 jmp xchain00235_n21_α
 xchain00235_n20_β:
 jmp xchain00235_n32_α
.Lx00256_0:
 .quad .Lx00256_0_s
.Lx00256_0_s:
 .string "procedure"
# IR_LIT_STRING
 xchain00235_n21_α:
 mov qword ptr [r12 + 9024], 1
 mov rax, qword ptr [rip + .Lx00257_0]
 mov qword ptr [r12 + 9032], rax
 jmp xchain00235_n22_α
 xchain00235_n21_β:
 jmp xchain00235_n32_α
.Lx00257_0:
 .quad .Lx00257_0_s
.Lx00257_0_s:
 .string "record"
# IR_LIT_STRING
 xchain00235_n22_α:
 mov qword ptr [r12 + 9056], 1
 mov rax, qword ptr [rip + .Lx00258_0]
 mov qword ptr [r12 + 9064], rax
 jmp xchain00235_n23_α
 xchain00235_n22_β:
 jmp xchain00235_n32_α
.Lx00258_0:
 .quad .Lx00258_0_s
.Lx00258_0_s:
 .string "repeat"
# IR_LIT_STRING
 xchain00235_n23_α:
 mov qword ptr [r12 + 9088], 1
 mov rax, qword ptr [rip + .Lx00259_0]
 mov qword ptr [r12 + 9096], rax
 jmp xchain00235_n24_α
 xchain00235_n23_β:
 jmp xchain00235_n32_α
.Lx00259_0:
 .quad .Lx00259_0_s
.Lx00259_0_s:
 .string "return"
# IR_LIT_STRING
 xchain00235_n24_α:
 mov qword ptr [r12 + 9120], 1
 mov rax, qword ptr [rip + .Lx00260_0]
 mov qword ptr [r12 + 9128], rax
 jmp xchain00235_n25_α
 xchain00235_n24_β:
 jmp xchain00235_n32_α
.Lx00260_0:
 .quad .Lx00260_0_s
.Lx00260_0_s:
 .string "static"
# IR_LIT_STRING
 xchain00235_n25_α:
 mov qword ptr [r12 + 9152], 1
 mov rax, qword ptr [rip + .Lx00261_0]
 mov qword ptr [r12 + 9160], rax
 jmp xchain00235_n26_α
 xchain00235_n25_β:
 jmp xchain00235_n32_α
.Lx00261_0:
 .quad .Lx00261_0_s
.Lx00261_0_s:
 .string "suspend"
# IR_LIT_STRING
 xchain00235_n26_α:
 mov qword ptr [r12 + 9184], 1
 mov rax, qword ptr [rip + .Lx00262_0]
 mov qword ptr [r12 + 9192], rax
 jmp xchain00235_n27_α
 xchain00235_n26_β:
 jmp xchain00235_n32_α
.Lx00262_0:
 .quad .Lx00262_0_s
.Lx00262_0_s:
 .string "then"
# IR_LIT_STRING
 xchain00235_n27_α:
 mov qword ptr [r12 + 9216], 1
 mov rax, qword ptr [rip + .Lx00263_0]
 mov qword ptr [r12 + 9224], rax
 jmp xchain00235_n28_α
 xchain00235_n27_β:
 jmp xchain00235_n32_α
.Lx00263_0:
 .quad .Lx00263_0_s
.Lx00263_0_s:
 .string "to"
# IR_LIT_STRING
 xchain00235_n28_α:
 mov qword ptr [r12 + 9248], 1
 mov rax, qword ptr [rip + .Lx00264_0]
 mov qword ptr [r12 + 9256], rax
 jmp xchain00235_n29_α
 xchain00235_n28_β:
 jmp xchain00235_n32_α
.Lx00264_0:
 .quad .Lx00264_0_s
.Lx00264_0_s:
 .string "until"
# IR_LIT_STRING
 xchain00235_n29_α:
 mov qword ptr [r12 + 9280], 1
 mov rax, qword ptr [rip + .Lx00265_0]
 mov qword ptr [r12 + 9288], rax
 jmp xchain00235_n30_α
 xchain00235_n29_β:
 jmp xchain00235_n32_α
.Lx00265_0:
 .quad .Lx00265_0_s
.Lx00265_0_s:
 .string "while"
# IR_MAKE_LIST
 xchain00235_n30_α:
 mov rax, qword ptr [r12 + 8416]
 mov qword ptr [r12 + 7968], rax
 mov rax, qword ptr [r12 + 8424]
 mov qword ptr [r12 + 7976], rax
 mov rax, qword ptr [r12 + 8448]
 mov qword ptr [r12 + 7984], rax
 mov rax, qword ptr [r12 + 8456]
 mov qword ptr [r12 + 7992], rax
 mov rax, qword ptr [r12 + 8480]
 mov qword ptr [r12 + 8000], rax
 mov rax, qword ptr [r12 + 8488]
 mov qword ptr [r12 + 8008], rax
 mov rax, qword ptr [r12 + 8512]
 mov qword ptr [r12 + 8016], rax
 mov rax, qword ptr [r12 + 8520]
 mov qword ptr [r12 + 8024], rax
 mov rax, qword ptr [r12 + 8544]
 mov qword ptr [r12 + 8032], rax
 mov rax, qword ptr [r12 + 8552]
 mov qword ptr [r12 + 8040], rax
 mov rax, qword ptr [r12 + 8576]
 mov qword ptr [r12 + 8048], rax
 mov rax, qword ptr [r12 + 8584]
 mov qword ptr [r12 + 8056], rax
 mov rax, qword ptr [r12 + 8608]
 mov qword ptr [r12 + 8064], rax
 mov rax, qword ptr [r12 + 8616]
 mov qword ptr [r12 + 8072], rax
 mov rax, qword ptr [r12 + 8640]
 mov qword ptr [r12 + 8080], rax
 mov rax, qword ptr [r12 + 8648]
 mov qword ptr [r12 + 8088], rax
 mov rax, qword ptr [r12 + 8672]
 mov qword ptr [r12 + 8096], rax
 mov rax, qword ptr [r12 + 8680]
 mov qword ptr [r12 + 8104], rax
 mov rax, qword ptr [r12 + 8704]
 mov qword ptr [r12 + 8112], rax
 mov rax, qword ptr [r12 + 8712]
 mov qword ptr [r12 + 8120], rax
 mov rax, qword ptr [r12 + 8736]
 mov qword ptr [r12 + 8128], rax
 mov rax, qword ptr [r12 + 8744]
 mov qword ptr [r12 + 8136], rax
 mov rax, qword ptr [r12 + 8768]
 mov qword ptr [r12 + 8144], rax
 mov rax, qword ptr [r12 + 8776]
 mov qword ptr [r12 + 8152], rax
 mov rax, qword ptr [r12 + 8800]
 mov qword ptr [r12 + 8160], rax
 mov rax, qword ptr [r12 + 8808]
 mov qword ptr [r12 + 8168], rax
 mov rax, qword ptr [r12 + 8832]
 mov qword ptr [r12 + 8176], rax
 mov rax, qword ptr [r12 + 8840]
 mov qword ptr [r12 + 8184], rax
 mov rax, qword ptr [r12 + 8864]
 mov qword ptr [r12 + 8192], rax
 mov rax, qword ptr [r12 + 8872]
 mov qword ptr [r12 + 8200], rax
 mov rax, qword ptr [r12 + 8896]
 mov qword ptr [r12 + 8208], rax
 mov rax, qword ptr [r12 + 8904]
 mov qword ptr [r12 + 8216], rax
 mov rax, qword ptr [r12 + 8928]
 mov qword ptr [r12 + 8224], rax
 mov rax, qword ptr [r12 + 8936]
 mov qword ptr [r12 + 8232], rax
 mov rax, qword ptr [r12 + 8960]
 mov qword ptr [r12 + 8240], rax
 mov rax, qword ptr [r12 + 8968]
 mov qword ptr [r12 + 8248], rax
 mov rax, qword ptr [r12 + 8992]
 mov qword ptr [r12 + 8256], rax
 mov rax, qword ptr [r12 + 9000]
 mov qword ptr [r12 + 8264], rax
 mov rax, qword ptr [r12 + 9024]
 mov qword ptr [r12 + 8272], rax
 mov rax, qword ptr [r12 + 9032]
 mov qword ptr [r12 + 8280], rax
 mov rax, qword ptr [r12 + 9056]
 mov qword ptr [r12 + 8288], rax
 mov rax, qword ptr [r12 + 9064]
 mov qword ptr [r12 + 8296], rax
 mov rax, qword ptr [r12 + 9088]
 mov qword ptr [r12 + 8304], rax
 mov rax, qword ptr [r12 + 9096]
 mov qword ptr [r12 + 8312], rax
 mov rax, qword ptr [r12 + 9120]
 mov qword ptr [r12 + 8320], rax
 mov rax, qword ptr [r12 + 9128]
 mov qword ptr [r12 + 8328], rax
 mov rax, qword ptr [r12 + 9152]
 mov qword ptr [r12 + 8336], rax
 mov rax, qword ptr [r12 + 9160]
 mov qword ptr [r12 + 8344], rax
 mov rax, qword ptr [r12 + 9184]
 mov qword ptr [r12 + 8352], rax
 mov rax, qword ptr [r12 + 9192]
 mov qword ptr [r12 + 8360], rax
 mov rax, qword ptr [r12 + 9216]
 mov qword ptr [r12 + 8368], rax
 mov rax, qword ptr [r12 + 9224]
 mov qword ptr [r12 + 8376], rax
 mov rax, qword ptr [r12 + 9248]
 mov qword ptr [r12 + 8384], rax
 mov rax, qword ptr [r12 + 9256]
 mov qword ptr [r12 + 8392], rax
 mov rax, qword ptr [r12 + 9280]
 mov qword ptr [r12 + 8400], rax
 mov rax, qword ptr [r12 + 9288]
 mov qword ptr [r12 + 8408], rax
 lea rdi, [r12 + 7968]
 mov esi, 28
 call rt_make_list@PLT
 mov qword ptr [r12 + 7952], rax
 mov qword ptr [r12 + 7960], rdx
 jmp xchain00235_n31_α
 xchain00235_n30_β:
 jmp xchain00235_n32_α
# IR_ASSIGN gva
 xchain00235_n31_α:
 mov rax, qword ptr [r12 + 7952]
 mov rdx, qword ptr [r12 + 7960]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 7936], rax
 mov qword ptr [r12 + 7944], rdx
 jmp xchain00235_n32_α
 xchain00235_n31_β:
 jmp xchain00235_n32_α
# IR_LIT_INTEGER
 xchain00235_n32_α:
 mov qword ptr [r12 + 7904], 6
 mov rax, qword ptr [rip + .Lx00266_0]
 mov qword ptr [r12 + 7912], rax
 jmp xchain00235_n33_α
 xchain00235_n32_β:
 jmp xchain00235_n34_α
.Lx00266_0:
 .quad 0
# IR_ASSIGN gva
 xchain00235_n33_α:
 mov rax, qword ptr [r12 + 7904]
 mov rdx, qword ptr [r12 + 7912]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 7888], rax
 mov qword ptr [r12 + 7896], rdx
 jmp xchain00235_n34_α
 xchain00235_n33_β:
 jmp xchain00235_n34_α
 xchain00235_n34_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn987: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn987]
 lea rsi, [r12 + 7872]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7856], rax
 mov qword ptr [r12 + 7864], rdx
 cmp eax, 99
 je xchain00235_n36_α
 jmp xchain00235_n35_α
 xchain00235_n34_β:
 jmp xchain00235_n36_α
# IR_ASSIGN gva
 xchain00235_n35_α:
 mov rax, qword ptr [r12 + 7856]
 mov rdx, qword ptr [r12 + 7864]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 7840], rax
 mov qword ptr [r12 + 7848], rdx
 jmp xchain00235_n36_α
 xchain00235_n35_β:
 jmp xchain00235_n36_α
# IR_MAKE_LIST
 xchain00235_n36_α:
 lea rdi, [r12 + 7840]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 7824], rax
 mov qword ptr [r12 + 7832], rdx
 jmp xchain00235_n37_α
 xchain00235_n36_β:
 jmp xchain00235_n38_α
 xchain00235_n37_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 7824]
 mov rdx, qword ptr [r12 + 7832]
 mov qword ptr [r12 + 9440], rax
 mov qword ptr [r12 + 9448], rdx
 mov qword ptr [r12 + 7808], rax
 mov qword ptr [r12 + 7816], rdx
 jmp xchain00235_n38_α
 xchain00235_n37_β:
 jmp xchain00235_n38_α
# IR_MAKE_LIST
 xchain00235_n38_α:
 lea rdi, [r12 + 7808]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 7792], rax
 mov qword ptr [r12 + 7800], rdx
 jmp xchain00235_n39_α
 xchain00235_n38_β:
 jmp xchain00235_n40_α
# IR_ASSIGN gva
 xchain00235_n39_α:
 mov rax, qword ptr [r12 + 7792]
 mov rdx, qword ptr [r12 + 7800]
 mov qword ptr [rbx + 192], rax
 mov qword ptr [rbx + 200], rdx
 mov qword ptr [r12 + 7776], rax
 mov qword ptr [r12 + 7784], rdx
 jmp xchain00235_n40_α
 xchain00235_n39_β:
 jmp xchain00235_n40_α
# IR_MAKE_LIST
 xchain00235_n40_α:
 lea rdi, [r12 + 7776]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 7760], rax
 mov qword ptr [r12 + 7768], rdx
 jmp xchain00235_n41_α
 xchain00235_n40_β:
 jmp xchain00235_n42_α
# IR_ASSIGN gva
 xchain00235_n41_α:
 mov rax, qword ptr [r12 + 7760]
 mov rdx, qword ptr [r12 + 7768]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 7744], rax
 mov qword ptr [r12 + 7752], rdx
 jmp xchain00235_n42_α
 xchain00235_n41_β:
 jmp xchain00235_n42_α
# IR_LIT_STRING
 xchain00235_n42_α:
 mov qword ptr [r12 + 7712], 1
 mov rax, qword ptr [rip + .Lx00267_0]
 mov qword ptr [r12 + 7720], rax
 jmp xchain00235_n43_α
 xchain00235_n42_β:
 jmp xchain00235_n44_α
.Lx00267_0:
 .quad .Lx00267_0_s
.Lx00267_0_s:
 .string "global"
 xchain00235_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 7712]
 mov rdx, qword ptr [r12 + 7720]
 mov qword ptr [r12 + 9472], rax
 mov qword ptr [r12 + 9480], rdx
 mov qword ptr [r12 + 7696], rax
 mov qword ptr [r12 + 7704], rdx
 jmp xchain00235_n44_α
 xchain00235_n43_β:
 jmp xchain00235_n44_α
# IR_LIT_CHARSET
 xchain00235_n44_α:
 mov qword ptr [r12 + 7632], 1
 mov dword ptr [r12 + 7636], -1
 mov rax, qword ptr [rip + .Lx00268_0]
 mov qword ptr [r12 + 7640], rax
 jmp xchain00235_n45_α
 xchain00235_n44_β:
 jmp xchain00235_n48_α
.Lx00268_0:
 .quad .Lx00268_0_s
.Lx00268_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
# IR_LIT_CHARSET
 xchain00235_n45_α:
 mov qword ptr [r12 + 7664], 1
 mov dword ptr [r12 + 7668], -1
 mov rax, qword ptr [rip + .Lx00269_0]
 mov qword ptr [r12 + 7672], rax
 jmp xchain00235_n46_α
 xchain00235_n45_β:
 jmp xchain00235_n48_α
.Lx00269_0:
 .quad .Lx00269_0_s
.Lx00269_0_s:
 .string "_"
 xchain00235_n46_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 7632]
 mov rsi, qword ptr [r12 + 7640]
 mov rdx, qword ptr [r12 + 7664]
 mov rcx, qword ptr [r12 + 7672]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00235_n48_α
 mov qword ptr [r12 + 7600], rax
 mov qword ptr [r12 + 7608], rdx
 jmp xchain00235_n47_α
 xchain00235_n46_β:
 jmp xchain00235_n48_α
# IR_ASSIGN gva
 xchain00235_n47_α:
 mov rax, qword ptr [r12 + 7600]
 mov rdx, qword ptr [r12 + 7608]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 7584], rax
 mov qword ptr [r12 + 7592], rdx
 jmp xchain00235_n48_α
 xchain00235_n47_β:
 jmp xchain00235_n48_α
# IR_VAR
 xchain00235_n48_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 7520], rax
 mov qword ptr [r12 + 7528], rdx
 jmp xchain00235_n49_α
 xchain00235_n48_β:
 jmp xchain00235_n50_α
# IR_LIT_CHARSET
 xchain00235_n49_α:
 mov qword ptr [r12 + 7552], 1
 mov dword ptr [r12 + 7556], -1
 mov rax, qword ptr [rip + .Lx00270_0]
 mov qword ptr [r12 + 7560], rax
 jmp xchain00235_n51_α
 xchain00235_n49_β:
 jmp xchain00235_n50_α
.Lx00270_0:
 .quad .Lx00270_0_s
.Lx00270_0_s:
 .string "0123456789"
# IR_VAR
 xchain00235_n50_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 7408], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 7416], rax
 jmp xchain00235_n52_α
 xchain00235_n50_β:
 jmp xchain00235_n53_α
 xchain00235_n51_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 7520]
 mov rsi, qword ptr [r12 + 7528]
 mov rdx, qword ptr [r12 + 7552]
 mov rcx, qword ptr [r12 + 7560]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00235_n50_α
 mov qword ptr [r12 + 7488], rax
 mov qword ptr [r12 + 7496], rdx
 jmp xchain00235_n54_α
 xchain00235_n51_β:
 jmp xchain00235_n50_α
# IR_LIT_STRING
 xchain00235_n52_α:
 mov qword ptr [r12 + 7440], 1
 mov rax, qword ptr [rip + .Lx00271_0]
 mov qword ptr [r12 + 7448], rax
 jmp xchain00235_n55_α
 xchain00235_n52_β:
 jmp xchain00235_n53_α
.Lx00271_0:
 .quad .Lx00271_0_s
.Lx00271_0_s:
 .string "qxw+l+c+"
# IR_VAR_REF
 xchain00235_n53_α:
 lea rdi, [r12 + 9520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 7216], rax
 mov qword ptr [r12 + 7224], rdx
 jmp xchain00235_n56_α
 xchain00235_n53_β:
 jmp xchain00235_n60_α
# IR_ASSIGN gva
 xchain00235_n54_α:
 mov rax, qword ptr [r12 + 7488]
 mov rdx, qword ptr [r12 + 7496]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 7472], rax
 mov qword ptr [r12 + 7480], rdx
 jmp xchain00235_n50_α
 xchain00235_n54_β:
 jmp xchain00235_n50_α
 xchain00235_n55_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 7408]
 mov rdx, qword ptr [r12 + 7416]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 7440]
 mov rdx, qword ptr [r12 + 7448]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00272_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00272_1
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
 jmp .Lx00272_2
.Lx00272_1:
 call rt_faildescr@PLT
.Lx00272_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 7344], rax
 mov qword ptr [r12 + 7352], rdx
 cmp eax, 99
 je xchain00235_n53_α
 jmp xchain00235_n57_α
 xchain00235_n55_β:
 jmp xchain00235_n53_α
.Lx00272_0:
 .quad .Lx00272_0_s
.Lx00272_0_s:
 .string "options"
# IR_LIT_STRING
 xchain00235_n56_α:
 mov qword ptr [r12 + 7248], 1
 mov rax, qword ptr [rip + .Lx00273_0]
 mov qword ptr [r12 + 7256], rax
 jmp xchain00235_n58_α
 xchain00235_n56_β:
 jmp xchain00235_n60_α
.Lx00273_0:
 .quad .Lx00273_0_s
.Lx00273_0_s:
 .string "q"
 xchain00235_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 7344]
 mov rdx, qword ptr [r12 + 7352]
 mov qword ptr [r12 + 9520], rax
 mov qword ptr [r12 + 9528], rdx
 mov qword ptr [r12 + 7328], rax
 mov qword ptr [r12 + 7336], rdx
 jmp xchain00235_n53_α
 xchain00235_n57_β:
 jmp xchain00235_n53_α
# IR_SUBSCRIPT x[i] variable
 xchain00235_n58_α:
 mov rdi, qword ptr [r12 + 7216]
 mov rsi, qword ptr [r12 + 7224]
 mov rdx, qword ptr [r12 + 7248]
 mov rcx, qword ptr [r12 + 7256]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00235_n60_α
 mov qword ptr [r12 + 7280], rax
 mov qword ptr [r12 + 7288], rdx
 jmp xchain00235_n59_α
 xchain00235_n58_β:
 jmp xchain00235_n60_α
# IR_DEREF variable -> value
 xchain00235_n59_α:
 mov rdi, qword ptr [r12 + 7280]
 mov rsi, qword ptr [r12 + 7288]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00235_n60_α
 mov qword ptr [r12 + 7312], rax
 mov qword ptr [r12 + 7320], rdx
 jmp xchain00235_n61_α
 xchain00235_n59_β:
 jmp xchain00235_n60_α
# IR_VAR_REF
 xchain00235_n60_α:
 lea rdi, [r12 + 9520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6992], rax
 mov qword ptr [r12 + 7000], rdx
 jmp xchain00235_n62_α
 xchain00235_n60_β:
 jmp xchain00235_n67_α
# IR_UNOP
 xchain00235_n61_α:
 mov eax, dword ptr [r12 + 7312]
 cmp eax, 99
 je xchain00235_n60_α
 cmp eax, 0
 je xchain00235_n60_α
 mov rax, qword ptr [r12 + 7312]
 mov qword ptr [r12 + 7184], rax
 mov rax, qword ptr [r12 + 7320]
 mov qword ptr [r12 + 7192], rax
 jmp xchain00235_n63_α
 xchain00235_n61_β:
 jmp xchain00235_n60_α
# IR_LIT_STRING
 xchain00235_n62_α:
 mov qword ptr [r12 + 7024], 1
 mov rax, qword ptr [rip + .Lx00274_0]
 mov qword ptr [r12 + 7032], rax
 jmp xchain00235_n64_α
 xchain00235_n62_β:
 jmp xchain00235_n67_α
.Lx00274_0:
 .quad .Lx00274_0_s
.Lx00274_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain00235_n63_α:
 mov qword ptr [r12 + 7152], 6
 mov rax, qword ptr [rip + .Lx00275_0]
 mov qword ptr [r12 + 7160], rax
 jmp xchain00235_n65_α
 xchain00235_n63_β:
 jmp xchain00235_n60_α
.Lx00275_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00235_n64_α:
 mov rdi, qword ptr [r12 + 6992]
 mov rsi, qword ptr [r12 + 7000]
 mov rdx, qword ptr [r12 + 7024]
 mov rcx, qword ptr [r12 + 7032]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00235_n67_α
 mov qword ptr [r12 + 7056], rax
 mov qword ptr [r12 + 7064], rdx
 jmp xchain00235_n66_α
 xchain00235_n64_β:
 jmp xchain00235_n67_α
# IR_ASSIGN gva
 xchain00235_n65_α:
 mov rax, qword ptr [r12 + 7152]
 mov rdx, qword ptr [r12 + 7160]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 7136], rax
 mov qword ptr [r12 + 7144], rdx
 jmp xchain00235_n68_α
 xchain00235_n65_β:
 jmp xchain00235_n60_α
# IR_DEREF variable -> value
 xchain00235_n66_α:
 mov rdi, qword ptr [r12 + 7056]
 mov rsi, qword ptr [r12 + 7064]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00235_n67_α
 mov qword ptr [r12 + 7088], rax
 mov qword ptr [r12 + 7096], rdx
 jmp xchain00235_n69_α
 xchain00235_n66_β:
 jmp xchain00235_n67_α
# IR_VAR_REF
 xchain00235_n67_α:
 lea rdi, [r12 + 9520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6768], rax
 mov qword ptr [r12 + 6776], rdx
 jmp xchain00235_n70_α
 xchain00235_n67_β:
 jmp xchain00235_n76_α
# IR_MOVE_LABEL
 xchain00235_n68_α:
 mov rax, qword ptr [r12 + 7136]
 mov qword ptr [r12 + 7104], rax
 mov rax, qword ptr [r12 + 7144]
 mov qword ptr [r12 + 7112], rax
 lea rax, [rip + xchain00235_n60_α]
 mov qword ptr [r12 + 7120], rax
 jmp xchain00235_n60_α
 xchain00235_n68_β:
 jmp xchain00235_n60_α
# IR_UNOP
 xchain00235_n69_α:
 mov eax, dword ptr [r12 + 7088]
 cmp eax, 99
 je xchain00235_n67_α
 cmp eax, 0
 je xchain00235_n67_α
 mov rax, qword ptr [r12 + 7088]
 mov qword ptr [r12 + 6960], rax
 mov rax, qword ptr [r12 + 7096]
 mov qword ptr [r12 + 6968], rax
 jmp xchain00235_n72_α
 xchain00235_n69_β:
 jmp xchain00235_n67_α
# IR_LIT_STRING
 xchain00235_n70_α:
 mov qword ptr [r12 + 6800], 1
 mov rax, qword ptr [rip + .Lx00276_0]
 mov qword ptr [r12 + 6808], rax
 jmp xchain00235_n73_α
 xchain00235_n70_β:
 jmp xchain00235_n76_α
.Lx00276_0:
 .quad .Lx00276_0_s
.Lx00276_0_s:
 .string "w"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00235_n71_α:
 jmp qword ptr [r12 + 7120]
 xchain00235_n71_β:
 jmp xchain00235_n60_α
# IR_LIT_INTEGER
 xchain00235_n72_α:
 mov qword ptr [r12 + 6928], 6
 mov rax, qword ptr [rip + .Lx00277_0]
 mov qword ptr [r12 + 6936], rax
 jmp xchain00235_n74_α
 xchain00235_n72_β:
 jmp xchain00235_n67_α
.Lx00277_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00235_n73_α:
 mov rdi, qword ptr [r12 + 6768]
 mov rsi, qword ptr [r12 + 6776]
 mov rdx, qword ptr [r12 + 6800]
 mov rcx, qword ptr [r12 + 6808]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00235_n76_α
 mov qword ptr [r12 + 6832], rax
 mov qword ptr [r12 + 6840], rdx
 jmp xchain00235_n75_α
 xchain00235_n73_β:
 jmp xchain00235_n76_α
# IR_ASSIGN gva
 xchain00235_n74_α:
 mov rax, qword ptr [r12 + 6928]
 mov rdx, qword ptr [r12 + 6936]
 mov qword ptr [rbx + 128], rax
 mov qword ptr [rbx + 136], rdx
 mov qword ptr [r12 + 6912], rax
 mov qword ptr [r12 + 6920], rdx
 jmp xchain00235_n77_α
 xchain00235_n74_β:
 jmp xchain00235_n67_α
# IR_DEREF variable -> value
 xchain00235_n75_α:
 mov rdi, qword ptr [r12 + 6832]
 mov rsi, qword ptr [r12 + 6840]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00235_n76_α
 mov qword ptr [r12 + 6864], rax
 mov qword ptr [r12 + 6872], rdx
 jmp xchain00235_n78_α
 xchain00235_n75_β:
 jmp xchain00235_n76_α
# IR_VAR_REF
 xchain00235_n76_α:
 lea rdi, [r12 + 9520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6608], rax
 mov qword ptr [r12 + 6616], rdx
 jmp xchain00235_n79_α
 xchain00235_n76_β:
 jmp xchain00235_n84_α
# IR_MOVE_LABEL
 xchain00235_n77_α:
 mov rax, qword ptr [r12 + 6912]
 mov qword ptr [r12 + 6880], rax
 mov rax, qword ptr [r12 + 6920]
 mov qword ptr [r12 + 6888], rax
 lea rax, [rip + xchain00235_n67_α]
 mov qword ptr [r12 + 6896], rax
 jmp xchain00235_n67_α
 xchain00235_n77_β:
 jmp xchain00235_n67_α
# IR_UNOP
 xchain00235_n78_α:
 mov eax, dword ptr [r12 + 6864]
 cmp eax, 99
 je xchain00235_n76_α
 cmp eax, 0
 je xchain00235_n76_α
 mov rax, qword ptr [r12 + 6864]
 mov qword ptr [r12 + 6736], rax
 mov rax, qword ptr [r12 + 6872]
 mov qword ptr [r12 + 6744], rax
 jmp xchain00235_n81_α
 xchain00235_n78_β:
 jmp xchain00235_n76_α
# IR_LIT_STRING
 xchain00235_n79_α:
 mov qword ptr [r12 + 6640], 1
 mov rax, qword ptr [rip + .Lx00278_0]
 mov qword ptr [r12 + 6648], rax
 jmp xchain00235_n82_α
 xchain00235_n79_β:
 jmp xchain00235_n84_α
.Lx00278_0:
 .quad .Lx00278_0_s
.Lx00278_0_s:
 .string "l"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00235_n80_α:
 jmp qword ptr [r12 + 6896]
 xchain00235_n80_β:
 jmp xchain00235_n67_α
# IR_ASSIGN gva
 xchain00235_n81_α:
 mov rax, qword ptr [r12 + 6736]
 mov rdx, qword ptr [r12 + 6744]
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rdx
 mov qword ptr [r12 + 6720], rax
 mov qword ptr [r12 + 6728], rdx
 jmp xchain00235_n76_α
 xchain00235_n81_β:
 jmp xchain00235_n76_α
# IR_SUBSCRIPT x[i] variable
 xchain00235_n82_α:
 mov rdi, qword ptr [r12 + 6608]
 mov rsi, qword ptr [r12 + 6616]
 mov rdx, qword ptr [r12 + 6640]
 mov rcx, qword ptr [r12 + 6648]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00235_n84_α
 mov qword ptr [r12 + 6672], rax
 mov qword ptr [r12 + 6680], rdx
 jmp xchain00235_n83_α
 xchain00235_n82_β:
 jmp xchain00235_n84_α
# IR_DEREF variable -> value
 xchain00235_n83_α:
 mov rdi, qword ptr [r12 + 6672]
 mov rsi, qword ptr [r12 + 6680]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00235_n84_α
 mov qword ptr [r12 + 6704], rax
 mov qword ptr [r12 + 6712], rdx
 jmp xchain00235_n85_α
 xchain00235_n83_β:
 jmp xchain00235_n84_α
# IR_VAR_REF
 xchain00235_n84_α:
 lea rdi, [r12 + 9520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6448], rax
 mov qword ptr [r12 + 6456], rdx
 jmp xchain00235_n86_α
 xchain00235_n84_β:
 jmp xchain00235_n90_α
# IR_UNOP
 xchain00235_n85_α:
 mov eax, dword ptr [r12 + 6704]
 cmp eax, 99
 je xchain00235_n84_α
 cmp eax, 0
 je xchain00235_n84_α
 mov rax, qword ptr [r12 + 6704]
 mov qword ptr [r12 + 6576], rax
 mov rax, qword ptr [r12 + 6712]
 mov qword ptr [r12 + 6584], rax
 jmp xchain00235_n87_α
 xchain00235_n85_β:
 jmp xchain00235_n84_α
# IR_LIT_STRING
 xchain00235_n86_α:
 mov qword ptr [r12 + 6480], 1
 mov rax, qword ptr [rip + .Lx00279_0]
 mov qword ptr [r12 + 6488], rax
 jmp xchain00235_n88_α
 xchain00235_n86_β:
 jmp xchain00235_n90_α
.Lx00279_0:
 .quad .Lx00279_0_s
.Lx00279_0_s:
 .string "c"
# IR_ASSIGN gva
 xchain00235_n87_α:
 mov rax, qword ptr [r12 + 6576]
 mov rdx, qword ptr [r12 + 6584]
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rdx
 mov qword ptr [r12 + 6560], rax
 mov qword ptr [r12 + 6568], rdx
 jmp xchain00235_n84_α
 xchain00235_n87_β:
 jmp xchain00235_n84_α
# IR_SUBSCRIPT x[i] variable
 xchain00235_n88_α:
 mov rdi, qword ptr [r12 + 6448]
 mov rsi, qword ptr [r12 + 6456]
 mov rdx, qword ptr [r12 + 6480]
 mov rcx, qword ptr [r12 + 6488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00235_n90_α
 mov qword ptr [r12 + 6512], rax
 mov qword ptr [r12 + 6520], rdx
 jmp xchain00235_n89_α
 xchain00235_n88_β:
 jmp xchain00235_n90_α
# IR_DEREF variable -> value
 xchain00235_n89_α:
 mov rdi, qword ptr [r12 + 6512]
 mov rsi, qword ptr [r12 + 6520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00235_n90_α
 mov qword ptr [r12 + 6544], rax
 mov qword ptr [r12 + 6552], rdx
 jmp xchain00235_n91_α
 xchain00235_n89_β:
 jmp xchain00235_n90_α
# IR_VAR_REF
 xchain00235_n90_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6256], rax
 mov qword ptr [r12 + 6264], rdx
 jmp xchain00235_n92_α
 xchain00235_n90_β:
 jmp xchain00235_n96_α
# IR_UNOP
 xchain00235_n91_α:
 mov eax, dword ptr [r12 + 6544]
 cmp eax, 99
 je xchain00235_n90_α
 cmp eax, 0
 je xchain00235_n90_α
 mov rax, qword ptr [r12 + 6544]
 mov qword ptr [r12 + 6416], rax
 mov rax, qword ptr [r12 + 6552]
 mov qword ptr [r12 + 6424], rax
 jmp xchain00235_n93_α
 xchain00235_n91_β:
 jmp xchain00235_n90_α
# IR_LIT_INTEGER
 xchain00235_n92_α:
 mov qword ptr [r12 + 6288], 6
 mov rax, qword ptr [rip + .Lx00280_0]
 mov qword ptr [r12 + 6296], rax
 jmp xchain00235_n94_α
 xchain00235_n92_β:
 jmp xchain00235_n96_α
.Lx00280_0:
 .quad 1
# IR_ASSIGN gva
 xchain00235_n93_α:
 mov rax, qword ptr [r12 + 6416]
 mov rdx, qword ptr [r12 + 6424]
 mov qword ptr [rbx + 176], rax
 mov qword ptr [rbx + 184], rdx
 mov qword ptr [r12 + 6400], rax
 mov qword ptr [r12 + 6408], rdx
 jmp xchain00235_n90_α
 xchain00235_n93_β:
 jmp xchain00235_n90_α
# IR_SUBSCRIPT x[i] variable
 xchain00235_n94_α:
 mov rdi, qword ptr [r12 + 6256]
 mov rsi, qword ptr [r12 + 6264]
 mov rdx, qword ptr [r12 + 6288]
 mov rcx, qword ptr [r12 + 6296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00235_n96_α
 mov qword ptr [r12 + 6320], rax
 mov qword ptr [r12 + 6328], rdx
 jmp xchain00235_n95_α
 xchain00235_n94_β:
 jmp xchain00235_n96_α
# IR_DEREF variable -> value
 xchain00235_n95_α:
 mov rdi, qword ptr [r12 + 6320]
 mov rsi, qword ptr [r12 + 6328]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00235_n96_α
 mov qword ptr [r12 + 6352], rax
 mov qword ptr [r12 + 6360], rdx
 jmp xchain00235_n97_α
 xchain00235_n95_β:
 jmp xchain00235_n96_α
 xchain00235_n96_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00281_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00281_1
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
 jmp .Lx00281_2
.Lx00281_1:
 call rt_faildescr@PLT
.Lx00281_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain00235_n99_α
 jmp xchain00235_n98_α
 xchain00235_n96_β:
 jmp xchain00235_n99_α
.Lx00281_0:
 .quad .Lx00281_0_s
.Lx00281_0_s:
 .string "getword"
# IR_LIT_STRING
 xchain00235_n97_α:
 mov qword ptr [r12 + 6368], 1
 mov rax, qword ptr [rip + .Lx00282_0]
 mov qword ptr [r12 + 6376], rax
 jmp xchain00235_n00026_α
 xchain00235_n97_β:
 jmp xchain00235_n96_α
.Lx00282_0:
 .quad .Lx00282_0_s
.Lx00282_0_s:
 .string "r"
 xchain00235_n98_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1152]
 mov rdx, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 9456], rax
 mov qword ptr [r12 + 9464], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00235_n00027_α
 xchain00235_n98_β:
 jmp xchain00235_n99_α
# IR_VAR
 xchain00235_n99_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain00235_n00029_α
 xchain00235_n99_β:
 jmp xchain00235_n00030_α
 xchain00235_n00026_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6352] -> [zr+6208]
 mov rax, qword ptr [r12 + 6352]
 mov qword ptr [r12 + 6208], rax
 mov rax, qword ptr [r12 + 6360]
 mov qword ptr [r12 + 6216], rax
# marshal arg1 = producer-box slot [zr+6368] -> [zr+6224]
 mov rax, qword ptr [r12 + 6368]
 mov qword ptr [r12 + 6224], rax
 mov rax, qword ptr [r12 + 6376]
 mov qword ptr [r12 + 6232], rax
  .section .rodata
  .Lrkfn1070: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1070]
 lea rsi, [r12 + 6208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6192], rax
 mov qword ptr [r12 + 6200], rdx
 cmp eax, 99
 je xchain00235_n96_α
 jmp xchain00235_n00024_α
 xchain00235_n00026_β:
 jmp xchain00235_n96_α
# IR_VAR
 xchain00235_n00027_α:
 mov rax, qword ptr [r12 + 9456]
 mov qword ptr [r12 + 6112], rax
 mov rax, qword ptr [r12 + 9464]
 mov qword ptr [r12 + 6120], rax
 jmp xchain00235_n00032_α
 xchain00235_n00027_β:
 jmp xchain00235_n00034_α
 xchain00235_n00029_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 1104]
 mov rdx, qword ptr [r12 + 1112]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00283_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00283_1
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
 jmp .Lx00283_2
.Lx00283_1:
 call rt_faildescr@PLT
.Lx00283_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00235_n00030_α
 jmp xchain00235_n00035_α
 xchain00235_n00029_β:
 jmp xchain00235_n00030_α
.Lx00283_0:
 .quad .Lx00283_0_s
.Lx00283_0_s:
 .string "format"
# IR_LIT_STRING
 xchain00235_n00030_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx00284_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00235_n00037_α
 xchain00235_n00030_β:
 jmp xchain00235_n00043_α
.Lx00284_0:
 .quad .Lx00284_0_s
.Lx00284_0_s:
 .string "\n\nprocedures:\tlines:\n"
# IR_ASSIGN gva
 xchain00235_n00024_α:
 mov rax, qword ptr [r12 + 6192]
 mov rdx, qword ptr [r12 + 6200]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 6176], rax
 mov qword ptr [r12 + 6184], rdx
 jmp xchain00235_n96_α
 xchain00235_n00024_β:
 jmp xchain00235_n96_α
# IR_LIT_STRING
 xchain00235_n00032_α:
 mov qword ptr [r12 + 6144], 1
 mov rax, qword ptr [rip + .Lx00285_0]
 mov qword ptr [r12 + 6152], rax
 jmp xchain00235_n00038_α
 xchain00235_n00032_β:
 jmp xchain00235_n00034_α
.Lx00285_0:
 .quad .Lx00285_0_s
.Lx00285_0_s:
 .string "link"
# IR_VAR
 xchain00235_n00034_α:
 mov rax, qword ptr [r12 + 9456]
 mov qword ptr [r12 + 6016], rax
 mov rax, qword ptr [r12 + 9464]
 mov qword ptr [r12 + 6024], rax
 jmp xchain00235_n00039_α
 xchain00235_n00034_β:
 jmp xchain00235_n00048_α
# IR_LIST_BANG
 xchain00235_n00035_α:
 mov qword ptr [r12 + 1040], 0
.Lx00286_0:
 mov rdi, qword ptr [r12 + 1056]
 mov rsi, qword ptr [r12 + 1064]
 mov rdx, qword ptr [r12 + 1040]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 cmp rax, 99
 je xchain00235_n00030_α
 jmp xchain00235_n00001_α
 xchain00235_n00035_β:
 inc qword ptr [r12 + 1040]
 jmp .Lx00286_0
 xchain00235_n00037_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+912]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 920], rax
  .section .rodata
  .Lrkfn1083: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1083]
 lea rsi, [r12 + 912]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain00235_n00043_α
 jmp xchain00235_n00043_α
 xchain00235_n00037_β:
 jmp xchain00235_n00043_α
 xchain00235_n00038_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 9456]
 mov rsi, qword ptr [r12 + 9464]
 mov rdx, qword ptr [r12 + 6144]
 mov rcx, qword ptr [r12 + 6152]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00235_n00034_α
 mov rdi, qword ptr [r12 + 6144]
 mov rsi, qword ptr [r12 + 6152]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 6080], rax
 mov qword ptr [r12 + 6088], rdx
 jmp xchain00235_n00044_α
 xchain00235_n00038_β:
 jmp xchain00235_n00034_α
# IR_LIT_STRING
 xchain00235_n00039_α:
 mov qword ptr [r12 + 6048], 1
 mov rax, qword ptr [rip + .Lx00287_0]
 mov qword ptr [r12 + 6056], rax
 jmp xchain00235_n00045_α
 xchain00235_n00039_β:
 jmp xchain00235_n00048_α
.Lx00287_0:
 .quad .Lx00287_0_s
.Lx00287_0_s:
 .string "procedure"
# IR_VAR
 xchain00235_n00048_α:
 mov rax, qword ptr [r12 + 9456]
 mov qword ptr [r12 + 5824], rax
 mov rax, qword ptr [r12 + 9464]
 mov qword ptr [r12 + 5832], rax
 jmp xchain00235_n00002_α
 xchain00235_n00048_β:
 jmp xchain00235_n00047_α
 xchain00235_n00001_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+992]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
  .section .rodata
  .Lrkfn1089: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1089]
 lea rsi, [r12 + 992]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain00235_n00030_α
 jmp xchain00235_n00035_β
 xchain00235_n00001_β:
 jmp xchain00235_n00030_α
# IR_MAKE_LIST
 xchain00235_n00043_α:
 lea rdi, [r12 + 896]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00235_n00040_α
 xchain00235_n00043_β:
 jmp xchain00235_n00004_α
# IR_MAKE_LIST
 xchain00235_n00044_α:
 lea rdi, [r12 + 1312]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain00235_n00049_α
 xchain00235_n00044_β:
 jmp xchain00235_n00055_α
 xchain00235_n00045_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 9456]
 mov rsi, qword ptr [r12 + 9464]
 mov rdx, qword ptr [r12 + 6048]
 mov rcx, qword ptr [r12 + 6056]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00235_n00048_α
 mov rdi, qword ptr [r12 + 6048]
 mov rsi, qword ptr [r12 + 6056]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 5984], rax
 mov qword ptr [r12 + 5992], rdx
 jmp xchain00235_n00003_α
 xchain00235_n00045_β:
 jmp xchain00235_n00048_α
# IR_LIT_STRING
 xchain00235_n00002_α:
 mov qword ptr [r12 + 5952], 1
 mov rax, qword ptr [rip + .Lx00288_0]
 mov qword ptr [r12 + 5960], rax
 jmp xchain00235_n00051_α
 xchain00235_n00002_β:
 jmp xchain00235_n00058_α
.Lx00288_0:
 .quad .Lx00288_0_s
.Lx00288_0_s:
 .string "global"
# IR_VAR
 xchain00235_n00047_α:
 mov rax, qword ptr [r12 + 9456]
 mov qword ptr [r12 + 5632], rax
 mov rax, qword ptr [r12 + 9464]
 mov qword ptr [r12 + 5640], rax
 jmp xchain00235_n00052_α
 xchain00235_n00047_β:
 jmp xchain00235_n00054_α
 xchain00235_n00040_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 880]
 mov rdx, qword ptr [r12 + 888]
 mov qword ptr [r12 + 9408], rax
 mov qword ptr [r12 + 9416], rdx
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00235_n00004_α
 xchain00235_n00040_β:
 jmp xchain00235_n00004_α
# IR_ASSIGN gva
 xchain00235_n00049_α:
 mov rax, qword ptr [r12 + 1296]
 mov rdx, qword ptr [r12 + 1304]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain00235_n00055_α
 xchain00235_n00049_β:
 jmp xchain00235_n00055_α
# IR_VAR
 xchain00235_n00003_α:
 mov rax, qword ptr [r12 + 9440]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 9448]
 mov qword ptr [r12 + 1848], rax
 jmp xchain00235_n00056_α
 xchain00235_n00003_β:
 jmp xchain00235_n00064_α
# IR_MOVE_LABEL
 xchain00235_n00051_α:
 mov rax, qword ptr [r12 + 5952]
 mov qword ptr [r12 + 5856], rax
 mov rax, qword ptr [r12 + 5960]
 mov qword ptr [r12 + 5864], rax
 lea rax, [rip + xchain00235_n00058_α]
 mov qword ptr [r12 + 5872], rax
 jmp xchain00235_n00005_α
 xchain00235_n00051_β:
 jmp xchain00235_n00047_α
# IR_LIT_STRING
 xchain00235_n00052_α:
 mov qword ptr [r12 + 5760], 1
 mov rax, qword ptr [rip + .Lx00289_0]
 mov qword ptr [r12 + 5768], rax
 jmp xchain00235_n00062_α
 xchain00235_n00052_β:
 jmp xchain00235_n00076_α
.Lx00289_0:
 .quad .Lx00289_0_s
.Lx00289_0_s:
 .string "local"
# IR_VAR
 xchain00235_n00054_α:
 mov rax, qword ptr [r12 + 9456]
 mov qword ptr [r12 + 5536], rax
 mov rax, qword ptr [r12 + 9464]
 mov qword ptr [r12 + 5544], rax
 jmp xchain00235_n00065_α
 xchain00235_n00054_β:
 jmp xchain00235_n00069_α
# IR_VAR
 xchain00235_n00004_α:
 mov rax, qword ptr [r12 + 9440]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 9448]
 mov qword ptr [r12 + 280], rax
 jmp xchain00235_n00066_α
 xchain00235_n00004_β:
 jmp xchain00235_n00070_α
# IR_LIT_STRING
 xchain00235_n00055_α:
 mov qword ptr [r12 + 1248], 1
 mov rax, qword ptr [rip + .Lx00290_0]
 mov qword ptr [r12 + 1256], rax
 jmp xchain00235_n00067_α
 xchain00235_n00055_β:
 jmp xchain00235_n96_α
.Lx00290_0:
 .quad .Lx00290_0_s
.Lx00290_0_s:
 .string ""
# IR_LIT_STRING
 xchain00235_n00056_α:
 mov qword ptr [r12 + 1952], 1
 mov rax, qword ptr [rip + .Lx00291_0]
 mov qword ptr [r12 + 1960], rax
 jmp xchain00235_n00063_α
 xchain00235_n00056_β:
 jmp xchain00235_n00064_α
.Lx00291_0:
 .quad .Lx00291_0_s
.Lx00291_0_s:
 .string ""
 xchain00235_n00064_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00292_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00292_1
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
 jmp .Lx00292_2
.Lx00292_1:
 call rt_faildescr@PLT
.Lx00292_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 cmp eax, 99
 je xchain00235_n99_α
 jmp xchain00235_n00068_α
 xchain00235_n00064_β:
 jmp xchain00235_n99_α
.Lx00292_0:
 .quad .Lx00292_0_s
.Lx00292_0_s:
 .string "getword"
 xchain00235_n00005_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 9456]
 mov rsi, qword ptr [r12 + 9464]
 mov rdx, qword ptr [r12 + 5856]
 mov rcx, qword ptr [r12 + 5864]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00235_n00060_α
 mov rdi, qword ptr [r12 + 5856]
 mov rsi, qword ptr [r12 + 5864]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 5792], rax
 mov qword ptr [r12 + 5800], rdx
 jmp xchain00235_n00072_α
 xchain00235_n00005_β:
 jmp xchain00235_n00060_α
# IR_LIT_STRING
 xchain00235_n00058_α:
 mov qword ptr [r12 + 5920], 1
 mov rax, qword ptr [rip + .Lx00293_0]
 mov qword ptr [r12 + 5928], rax
 jmp xchain00235_n00073_α
 xchain00235_n00058_β:
 jmp xchain00235_n00009_α
.Lx00293_0:
 .quad .Lx00293_0_s
.Lx00293_0_s:
 .string "link"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00235_n00060_α:
 jmp qword ptr [r12 + 5872]
 xchain00235_n00060_β:
 jmp xchain00235_n00047_α
# IR_MOVE_LABEL
 xchain00235_n00062_α:
 mov rax, qword ptr [r12 + 5760]
 mov qword ptr [r12 + 5664], rax
 mov rax, qword ptr [r12 + 5768]
 mov qword ptr [r12 + 5672], rax
 lea rax, [rip + xchain00235_n00076_α]
 mov qword ptr [r12 + 5680], rax
 jmp xchain00235_n00074_α
 xchain00235_n00062_β:
 jmp xchain00235_n00054_α
# IR_LIT_STRING
 xchain00235_n00065_α:
 mov qword ptr [r12 + 5568], 1
 mov rax, qword ptr [rip + .Lx00294_0]
 mov qword ptr [r12 + 5576], rax
 jmp xchain00235_n00078_α
 xchain00235_n00065_β:
 jmp xchain00235_n00069_α
.Lx00294_0:
 .quad .Lx00294_0_s
.Lx00294_0_s:
 .string "end"
# IR_VAR
 xchain00235_n00069_α:
 mov rax, qword ptr [r12 + 9456]
 mov qword ptr [r12 + 5408], rax
 mov rax, qword ptr [r12 + 9464]
 mov qword ptr [r12 + 5416], rax
 jmp xchain00235_n00080_α
 xchain00235_n00069_β:
 jmp xchain00235_n00081_α
# IR_LIST_BANG
 xchain00235_n00066_α:
 mov qword ptr [r12 + 256], 0
.Lx00295_0:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 256]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp rax, 99
 je xchain00235_n00070_α
 jmp xchain00235_n00006_α
 xchain00235_n00066_β:
 inc qword ptr [r12 + 256]
 jmp .Lx00295_0
# IR_VAR
 xchain00235_n00070_α:
 mov rax, qword ptr [r12 + 9408]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 9416]
 mov qword ptr [r12 + 200], rax
 jmp xchain00235_n00084_α
 xchain00235_n00070_β:
 jmp xchain00235_n00085_α
# IR_ASSIGN gva
 xchain00235_n00067_α:
 mov rax, qword ptr [r12 + 1248]
 mov rdx, qword ptr [r12 + 1256]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain00235_n96_α
 xchain00235_n00067_β:
 jmp xchain00235_n96_α
# IR_VAR
 xchain00235_n00063_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xchain00235_n00087_α
 xchain00235_n00063_β:
 jmp xchain00235_n00064_α
# IR_MOVE_LABEL
 xchain00235_n00068_α:
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 1720], rax
 lea rax, [rip + xchain00235_n00071_α]
 mov qword ptr [r12 + 1728], rax
 jmp xchain00235_n00088_α
 xchain00235_n00068_β:
 jmp xchain00235_n00102_α
 xchain00235_n00071_α:
 jmp xchain00235_n99_α
xchain00235_n00071_β:
 jmp xchain00235_n99_α
 xchain00235_n00072_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00296_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00296_1
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
 jmp .Lx00296_2
.Lx00296_1:
 call rt_faildescr@PLT
.Lx00296_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 2992], rax
 mov qword ptr [r12 + 3000], rdx
 cmp eax, 99
 je xchain00235_n99_α
 jmp xchain00235_n00091_α
 xchain00235_n00072_β:
 jmp xchain00235_n99_α
.Lx00296_0:
 .quad .Lx00296_0_s
.Lx00296_0_s:
 .string "getword"
# IR_MOVE_LABEL
 xchain00235_n00073_α:
 mov rax, qword ptr [r12 + 5920]
 mov qword ptr [r12 + 5856], rax
 mov rax, qword ptr [r12 + 5928]
 mov qword ptr [r12 + 5864], rax
 lea rax, [rip + xchain00235_n00009_α]
 mov qword ptr [r12 + 5872], rax
 jmp xchain00235_n00005_α
 xchain00235_n00073_β:
 jmp xchain00235_n00047_α
 xchain00235_n00074_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 9456]
 mov rsi, qword ptr [r12 + 9464]
 mov rdx, qword ptr [r12 + 5664]
 mov rcx, qword ptr [r12 + 5672]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00235_n00077_α
 mov rdi, qword ptr [r12 + 5664]
 mov rsi, qword ptr [r12 + 5672]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 5600], rax
 mov qword ptr [r12 + 5608], rdx
 jmp xchain00235_n00010_α
 xchain00235_n00074_β:
 jmp xchain00235_n00077_α
# IR_LIT_STRING
 xchain00235_n00076_α:
 mov qword ptr [r12 + 5728], 1
 mov rax, qword ptr [rip + .Lx00297_0]
 mov qword ptr [r12 + 5736], rax
 jmp xchain00235_n00093_α
 xchain00235_n00076_β:
 jmp xchain00235_n00014_α
.Lx00297_0:
 .quad .Lx00297_0_s
.Lx00297_0_s:
 .string "dynamic"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00235_n00077_α:
 jmp qword ptr [r12 + 5680]
 xchain00235_n00077_β:
 jmp xchain00235_n00054_α
 xchain00235_n00078_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 9456]
 mov rsi, qword ptr [r12 + 9464]
 mov rdx, qword ptr [r12 + 5568]
 mov rcx, qword ptr [r12 + 5576]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00235_n00069_α
 mov rdi, qword ptr [r12 + 5568]
 mov rsi, qword ptr [r12 + 5576]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 5504], rax
 mov qword ptr [r12 + 5512], rdx
 jmp xchain00235_n00092_α
 xchain00235_n00078_β:
 jmp xchain00235_n00069_α
# IR_VAR
 xchain00235_n00080_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 5472], rax
 mov qword ptr [r12 + 5480], rdx
 jmp xchain00235_n00011_α
 xchain00235_n00080_β:
 jmp xchain00235_n00081_α
# IR_VAR
 xchain00235_n00081_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 5344], rax
 mov qword ptr [r12 + 5352], rdx
 jmp xchain00235_n00095_α
 xchain00235_n00081_β:
 jmp xchain00235_n00012_α
 xchain00235_n00006_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 9424], rax
 mov qword ptr [r12 + 9432], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00235_n00098_α
 xchain00235_n00006_β:
 jmp xchain00235_n00070_α
 xchain00235_n00084_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn1144: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1144]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00235_n00085_α
 jmp xchain00235_n00013_α
 xchain00235_n00084_β:
 jmp xchain00235_n00085_α
 xchain00235_n00085_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00298_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00298_1
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
 jmp .Lx00298_2
.Lx00298_1:
 call rt_faildescr@PLT
.Lx00298_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain00235_n00085_β:
 jmp main_ω
.Lx00298_0:
 .quad .Lx00298_0_s
.Lx00298_0_s:
 .string "Term__"
 xchain00235_n00089_α:
 jmp xchain00235_n96_α
xchain00235_n00089_β:
 jmp xchain00235_n96_α
# IR_LIT_INTEGER
 xchain00235_n00087_α:
 mov qword ptr [r12 + 2016], 6
 mov rax, qword ptr [rip + .Lx00299_0]
 mov qword ptr [r12 + 2024], rax
 jmp xchain00235_n00101_α
 xchain00235_n00087_β:
 jmp xchain00235_n00064_α
.Lx00299_0:
 .quad 0
 xchain00235_n00088_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1712]
 mov rdx, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 9472], rax
 mov qword ptr [r12 + 9480], rdx
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain00235_n00102_α
 xchain00235_n00088_β:
 jmp xchain00235_n00102_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00235_n00007_α:
 jmp qword ptr [r12 + 1728]
 xchain00235_n00007_β:
 jmp xchain00235_n00102_α
# IR_MOVE_LABEL
 xchain00235_n00091_α:
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 2960], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 2968], rax
 lea rax, [rip + xchain00235_n00008_α]
 mov qword ptr [r12 + 2976], rax
 jmp xchain00235_n00104_α
 xchain00235_n00091_β:
 jmp xchain00235_n00300_α
 xchain00235_n00008_α:
 jmp xchain00235_n99_α
xchain00235_n00008_β:
 jmp xchain00235_n99_α
# IR_LIT_STRING
 xchain00235_n00009_α:
 mov qword ptr [r12 + 5888], 1
 mov rax, qword ptr [rip + .Lx00301_0]
 mov qword ptr [r12 + 5896], rax
 jmp xchain00235_n00106_α
 xchain00235_n00009_β:
 jmp xchain00235_n00047_α
.Lx00301_0:
 .quad .Lx00301_0_s
.Lx00301_0_s:
 .string "record"
 xchain00235_n00010_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00302_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00302_1
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
 jmp .Lx00302_2
.Lx00302_1:
 call rt_faildescr@PLT
.Lx00302_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 4224], rax
 mov qword ptr [r12 + 4232], rdx
 cmp eax, 99
 je xchain00235_n99_α
 jmp xchain00235_n00107_α
 xchain00235_n00010_β:
 jmp xchain00235_n99_α
.Lx00302_0:
 .quad .Lx00302_0_s
.Lx00302_0_s:
 .string "getword"
# IR_MOVE_LABEL
 xchain00235_n00093_α:
 mov rax, qword ptr [r12 + 5728]
 mov qword ptr [r12 + 5664], rax
 mov rax, qword ptr [r12 + 5736]
 mov qword ptr [r12 + 5672], rax
 lea rax, [rip + xchain00235_n00014_α]
 mov qword ptr [r12 + 5680], rax
 jmp xchain00235_n00074_α
 xchain00235_n00093_β:
 jmp xchain00235_n00054_α
# IR_LIT_STRING
 xchain00235_n00092_α:
 mov qword ptr [r12 + 4688], 1
 mov rax, qword ptr [rip + .Lx00303_0]
 mov qword ptr [r12 + 4696], rax
 jmp xchain00235_n00110_α
 xchain00235_n00092_β:
 jmp xchain00235_n00304_α
.Lx00303_0:
 .quad .Lx00303_0_s
.Lx00303_0_s:
 .string "global"
# IR_LIST_BANG
 xchain00235_n00011_α:
 mov qword ptr [r12 + 5456], 0
.Lx00305_0:
 mov rdi, qword ptr [r12 + 5472]
 mov rsi, qword ptr [r12 + 5480]
 mov rdx, qword ptr [r12 + 5456]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 5440], rax
 mov qword ptr [r12 + 5448], rdx
 cmp rax, 99
 je xchain00235_n00081_α
 jmp xchain00235_n00109_α
 xchain00235_n00011_β:
 inc qword ptr [r12 + 5456]
 jmp .Lx00305_0
 xchain00235_n00095_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 5344]
 mov rdx, qword ptr [r12 + 5352]
 mov qword ptr [r12 + 9504], rax
 mov qword ptr [r12 + 9512], rdx
 mov qword ptr [r12 + 5328], rax
 mov qword ptr [r12 + 5336], rdx
 jmp xchain00235_n00012_α
 xchain00235_n00095_β:
 jmp xchain00235_n00012_α
 xchain00235_n00012_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00306_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00306_1
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
 jmp .Lx00306_2
.Lx00306_1:
 call rt_faildescr@PLT
.Lx00306_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 5264], rax
 mov qword ptr [r12 + 5272], rdx
 cmp eax, 99
 je xchain00235_n00307_α
 jmp xchain00235_n00111_α
 xchain00235_n00012_β:
 jmp xchain00235_n00307_α
.Lx00306_0:
 .quad .Lx00306_0_s
.Lx00306_0_s:
 .string "getword"
# IR_VAR
 xchain00235_n00098_α:
 mov rax, qword ptr [r12 + 9408]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 9416]
 mov qword ptr [r12 + 376], rax
 jmp xchain00235_n00015_α
 xchain00235_n00098_β:
 jmp xchain00235_n00066_β
# IR_LIST_BANG
 xchain00235_n00013_α:
 mov qword ptr [r12 + 128], 0
.Lx00308_0:
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 mov rdx, qword ptr [r12 + 128]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp rax, 99
 je xchain00235_n00085_α
 jmp xchain00235_n00309_α
 xchain00235_n00013_β:
 inc qword ptr [r12 + 128]
 jmp .Lx00308_0
 xchain00235_n00101_α:
# BOX IR_CALL procrec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1952] -> [zr+1888]
 mov rax, qword ptr [r12 + 1952]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 1960]
 mov qword ptr [r12 + 1896], rax
# marshal arg1 = producer-box slot [zr+1984] -> [zr+1904]
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1904], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1912], rax
# marshal arg2 = producer-box slot [zr+2016] -> [zr+1920]
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 1920], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 1928], rax
  .section .rodata
  .Lrkfn1171: .string "procrec"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1171]
 lea rsi, [r12 + 1888]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 cmp eax, 99
 je xchain00235_n00064_α
 jmp xchain00235_n00310_α
 xchain00235_n00101_β:
 jmp xchain00235_n00064_α
# IR_VAR
 xchain00235_n00102_α:
 mov rax, qword ptr [r12 + 9440]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 9448]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00235_n00311_α
 xchain00235_n00102_β:
 jmp xchain00235_n00312_α
 xchain00235_n00104_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2960]
 mov rdx, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 9456], rax
 mov qword ptr [r12 + 9464], rdx
 mov qword ptr [r12 + 2944], rax
 mov qword ptr [r12 + 2952], rdx
 jmp xchain00235_n00300_α
 xchain00235_n00104_β:
 jmp xchain00235_n00300_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00235_n00105_α:
 jmp qword ptr [r12 + 2976]
 xchain00235_n00105_β:
 jmp xchain00235_n00300_α
# IR_MOVE_LABEL
 xchain00235_n00106_α:
 mov rax, qword ptr [r12 + 5888]
 mov qword ptr [r12 + 5856], rax
 mov rax, qword ptr [r12 + 5896]
 mov qword ptr [r12 + 5864], rax
 lea rax, [rip + xchain00235_n00047_α]
 mov qword ptr [r12 + 5872], rax
 jmp xchain00235_n00005_α
 xchain00235_n00106_β:
 jmp xchain00235_n00047_α
# IR_MOVE_LABEL
 xchain00235_n00107_α:
 mov rax, qword ptr [r12 + 4224]
 mov qword ptr [r12 + 4192], rax
 mov rax, qword ptr [r12 + 4232]
 mov qword ptr [r12 + 4200], rax
 lea rax, [rip + xchain00235_n00108_α]
 mov qword ptr [r12 + 4208], rax
 jmp xchain00235_n00313_α
 xchain00235_n00107_β:
 jmp xchain00235_n00314_α
 xchain00235_n00108_α:
 jmp xchain00235_n99_α
xchain00235_n00108_β:
 jmp xchain00235_n99_α
# IR_LIT_STRING
 xchain00235_n00014_α:
 mov qword ptr [r12 + 5696], 1
 mov rax, qword ptr [rip + .Lx00315_0]
 mov qword ptr [r12 + 5704], rax
 jmp xchain00235_n00316_α
 xchain00235_n00014_β:
 jmp xchain00235_n00054_α
.Lx00315_0:
 .quad .Lx00315_0_s
.Lx00315_0_s:
 .string "static"
 xchain00235_n00110_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 4688]
 mov rdx, qword ptr [r12 + 4696]
 mov qword ptr [r12 + 9472], rax
 mov qword ptr [r12 + 9480], rdx
 mov qword ptr [r12 + 4672], rax
 mov qword ptr [r12 + 4680], rdx
 jmp xchain00235_n00304_α
 xchain00235_n00110_β:
 jmp xchain00235_n00304_α
 xchain00235_n00109_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 9456]
 mov rsi, qword ptr [r12 + 9464]
 mov rdx, qword ptr [r12 + 5440]
 mov rcx, qword ptr [r12 + 5448]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00235_n00011_β
 mov rdi, qword ptr [r12 + 5440]
 mov rsi, qword ptr [r12 + 5448]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 5376], rax
 mov qword ptr [r12 + 5384], rdx
 jmp xchain00235_n96_α
 xchain00235_n00109_β:
 jmp xchain00235_n00011_β
 xchain00235_n00111_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 5264]
 mov rdx, qword ptr [r12 + 5272]
 mov qword ptr [r12 + 9488], rax
 mov qword ptr [r12 + 9496], rdx
 mov qword ptr [r12 + 5248], rax
 mov qword ptr [r12 + 5256], rdx
 jmp xchain00235_n00017_α
 xchain00235_n00111_β:
 jmp xchain00235_n00307_α
# IR_VAR
 xchain00235_n00307_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 5152], rax
 mov qword ptr [r12 + 5160], rdx
 jmp xchain00235_n00317_α
 xchain00235_n00307_β:
 jmp xchain00235_n00318_α
# IR_VAR
 xchain00235_n00015_α:
 mov rax, qword ptr [r12 + 9424]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 9432]
 mov qword ptr [r12 + 616], rax
 jmp xchain00235_n00319_α
 xchain00235_n00015_β:
 jmp xchain00235_n00066_β
 xchain00235_n00309_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+80]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn1190: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1190]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00235_n00085_α
 jmp xchain00235_n00013_β
 xchain00235_n00309_β:
 jmp xchain00235_n00085_α
 xchain00235_n00310_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1840] -> [zr+1792]
 mov rax, qword ptr [r12 + 1840]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 1848]
 mov qword ptr [r12 + 1800], rax
# marshal arg1 = producer-box slot [zr+1872] -> [zr+1808]
 mov rax, qword ptr [r12 + 1872]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 1816], rax
  .section .rodata
  .Lrkfn1192: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1192]
 lea rsi, [r12 + 1792]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 cmp eax, 99
 je xchain00235_n00064_α
 jmp xchain00235_n00064_α
 xchain00235_n00310_β:
 jmp xchain00235_n00064_α
 xchain00235_n00311_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1632]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1640], rax
  .section .rodata
  .Lrkfn1194: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1194]
 lea rsi, [r12 + 1632]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 cmp eax, 99
 je xchain00235_n00312_α
 jmp xchain00235_n00320_α
 xchain00235_n00311_β:
 jmp xchain00235_n00312_α
# IR_VAR
 xchain00235_n00312_α:
 mov rax, qword ptr [r12 + 9424]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 9432]
 mov qword ptr [r12 + 1528], rax
 jmp xchain00235_n00321_α
 xchain00235_n00312_β:
 jmp xchain00235_n00322_α
# IR_VAR
 xchain00235_n00300_α:
 mov rax, qword ptr [r12 + 9456]
 mov qword ptr [r12 + 2848], rax
 mov rax, qword ptr [r12 + 9464]
 mov qword ptr [r12 + 2856], rax
 jmp xchain00235_n00323_α
 xchain00235_n00300_β:
 jmp xchain00235_n00324_α
 xchain00235_n00313_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 4192]
 mov rdx, qword ptr [r12 + 4200]
 mov qword ptr [r12 + 9456], rax
 mov qword ptr [r12 + 9464], rdx
 mov qword ptr [r12 + 4176], rax
 mov qword ptr [r12 + 4184], rdx
 jmp xchain00235_n00314_α
 xchain00235_n00313_β:
 jmp xchain00235_n00314_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00235_n00016_α:
 jmp qword ptr [r12 + 4208]
 xchain00235_n00016_β:
 jmp xchain00235_n00314_α
# IR_MOVE_LABEL
 xchain00235_n00316_α:
 mov rax, qword ptr [r12 + 5696]
 mov qword ptr [r12 + 5664], rax
 mov rax, qword ptr [r12 + 5704]
 mov qword ptr [r12 + 5672], rax
 lea rax, [rip + xchain00235_n00054_α]
 mov qword ptr [r12 + 5680], rax
 jmp xchain00235_n00074_α
 xchain00235_n00316_β:
 jmp xchain00235_n00054_α
# IR_MAKE_LIST
 xchain00235_n00304_α:
 lea rdi, [r12 + 4672]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 4656], rax
 mov qword ptr [r12 + 4664], rdx
 jmp xchain00235_n00325_α
 xchain00235_n00304_β:
 jmp xchain00235_n00326_α
 xchain00235_n00327_α:
 jmp xchain00235_n96_α
xchain00235_n00327_β:
 jmp xchain00235_n96_α
# IR_LIT_STRING
 xchain00235_n00017_α:
 mov qword ptr [r12 + 5296], 1
 mov rax, qword ptr [rip + .Lx00328_0]
 mov qword ptr [r12 + 5304], rax
 jmp xchain00235_n00329_α
 xchain00235_n00017_β:
 jmp xchain00235_n00307_α
.Lx00328_0:
 .quad .Lx00328_0_s
.Lx00328_0_s:
 .string "("
# IR_VAR
 xchain00235_n00317_α:
 mov rax, qword ptr [r12 + 9488]
 mov qword ptr [r12 + 5184], rax
 mov rax, qword ptr [r12 + 9496]
 mov qword ptr [r12 + 5192], rax
 jmp xchain00235_n00018_α
 xchain00235_n00317_β:
 jmp xchain00235_n00318_α
# IR_VAR
 xchain00235_n00318_α:
 mov rax, qword ptr [r12 + 9456]
 mov qword ptr [r12 + 4848], rax
 mov rax, qword ptr [r12 + 9464]
 mov qword ptr [r12 + 4856], rax
 jmp xchain00235_n00330_α
 xchain00235_n00318_β:
 jmp xchain00235_n96_α
# IR_FIELD_GET
 xchain00235_n00319_α:
 mov rdi, qword ptr [rip + .Lx00331_0]
 mov rsi, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00235_n00066_β
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00235_n00332_α
 xchain00235_n00319_β:
 jmp xchain00235_n00066_β
.Lx00331_0:
 .quad .Lx00331_0_s
.Lx00331_0_s:
 .string "pname"
 xchain00235_n00320_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1616]
 mov rdx, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 9424], rax
 mov qword ptr [r12 + 9432], rdx
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00235_n00312_α
 xchain00235_n00320_β:
 jmp xchain00235_n00312_α
# IR_FIELD_GET lv
 xchain00235_n00321_α:
 mov rdi, qword ptr [rip + .Lx00333_0]
 mov rsi, qword ptr [r12 + 1520]
 mov rdx, qword ptr [r12 + 1528]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00235_n00322_α
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 jmp xchain00235_n00019_α
 xchain00235_n00321_β:
 jmp xchain00235_n00322_α
.Lx00333_0:
 .quad .Lx00333_0_s
.Lx00333_0_s:
 .string "pname"
# IR_VAR
 xchain00235_n00322_α:
 mov rax, qword ptr [r12 + 9440]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 9448]
 mov qword ptr [r12 + 1432], rax
 jmp xchain00235_n00334_α
 xchain00235_n00322_β:
 jmp xchain00235_n96_α
# IR_LIT_STRING
 xchain00235_n00323_α:
 mov qword ptr [r12 + 2880], 1
 mov rax, qword ptr [rip + .Lx00335_0]
 mov qword ptr [r12 + 2888], rax
 jmp xchain00235_n00020_α
 xchain00235_n00323_β:
 jmp xchain00235_n00324_α
.Lx00335_0:
 .quad .Lx00335_0_s
.Lx00335_0_s:
 .string "global"
 xchain00235_n00324_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00336_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00336_1
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
 jmp .Lx00336_2
.Lx00336_1:
 call rt_faildescr@PLT
.Lx00336_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 cmp eax, 99
 je xchain00235_n00337_α
 jmp xchain00235_n00338_α
 xchain00235_n00324_β:
 jmp xchain00235_n00337_α
.Lx00336_0:
 .quad .Lx00336_0_s
.Lx00336_0_s:
 .string "getword"
# IR_VAR
 xchain00235_n00314_α:
 mov rax, qword ptr [rbx + 192]
 mov rdx, qword ptr [rbx + 200]
 mov qword ptr [r12 + 4112], rax
 mov qword ptr [r12 + 4120], rdx
 jmp xchain00235_n00339_α
 xchain00235_n00314_β:
 jmp xchain00235_n00340_α
# IR_ASSIGN gva
 xchain00235_n00325_α:
 mov rax, qword ptr [r12 + 4656]
 mov rdx, qword ptr [r12 + 4664]
 mov qword ptr [rbx + 192], rax
 mov qword ptr [rbx + 200], rdx
 mov qword ptr [r12 + 4640], rax
 mov qword ptr [r12 + 4648], rdx
 jmp xchain00235_n00326_α
 xchain00235_n00325_β:
 jmp xchain00235_n00326_α
 xchain00235_n00329_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 5248]
 mov rsi, qword ptr [r12 + 5256]
 mov rdx, qword ptr [r12 + 5296]
 mov rcx, qword ptr [r12 + 5304]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00235_n00307_α
 mov rdi, qword ptr [r12 + 5296]
 mov rsi, qword ptr [r12 + 5304]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 5216], rax
 mov qword ptr [r12 + 5224], rdx
 jmp xchain00235_n00341_α
 xchain00235_n00329_β:
 jmp xchain00235_n00307_α
 xchain00235_n00018_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5152] -> [zr+5104]
 mov rax, qword ptr [r12 + 5152]
 mov qword ptr [r12 + 5104], rax
 mov rax, qword ptr [r12 + 5160]
 mov qword ptr [r12 + 5112], rax
# marshal arg1 = producer-box slot [zr+5184] -> [zr+5120]
 mov rax, qword ptr [r12 + 5184]
 mov qword ptr [r12 + 5120], rax
 mov rax, qword ptr [r12 + 5192]
 mov qword ptr [r12 + 5128], rax
  .section .rodata
  .Lrkfn1224: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1224]
 lea rsi, [r12 + 5104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5088], rax
 mov qword ptr [r12 + 5096], rdx
 cmp eax, 99
 je xchain00235_n00318_α
 jmp xchain00235_n00342_α
 xchain00235_n00018_β:
 jmp xchain00235_n00318_α
# IR_VAR
 xchain00235_n00330_α:
 mov rax, qword ptr [r12 + 9472]
 mov qword ptr [r12 + 4880], rax
 mov rax, qword ptr [r12 + 9480]
 mov qword ptr [r12 + 4888], rax
 jmp xchain00235_n00343_α
 xchain00235_n00330_β:
 jmp xchain00235_n96_α
# IR_LIT_INTEGER
 xchain00235_n00332_α:
 mov qword ptr [r12 + 640], 6
 mov rax, qword ptr [rip + .Lx00344_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00235_n00345_α
 xchain00235_n00332_β:
 jmp xchain00235_n00066_β
.Lx00344_0:
 .quad 16
# IR_VAR
 xchain00235_n00019_α:
 mov rax, qword ptr [r12 + 9472]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 9480]
 mov qword ptr [r12 + 1576], rax
 jmp xchain00235_n00346_α
 xchain00235_n00019_β:
 jmp xchain00235_n00322_α
# IR_VAR
 xchain00235_n00334_α:
 mov rax, qword ptr [r12 + 9424]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 9432]
 mov qword ptr [r12 + 1464], rax
 jmp xchain00235_n00347_α
 xchain00235_n00334_β:
 jmp xchain00235_n96_α
# IR_VAR
 xchain00235_n00020_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 jmp xchain00235_n00348_α
 xchain00235_n00020_β:
 jmp xchain00235_n00324_α
 xchain00235_n00338_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2272]
 mov rdx, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 9488], rax
 mov qword ptr [r12 + 9496], rdx
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 jmp xchain00235_n00021_α
 xchain00235_n00338_β:
 jmp xchain00235_n00337_α
# IR_VAR
 xchain00235_n00337_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 jmp xchain00235_n00349_α
 xchain00235_n00337_β:
 jmp xchain00235_n96_α
# IR_VAR
 xchain00235_n00339_α:
 mov rax, qword ptr [r12 + 9456]
 mov qword ptr [r12 + 4144], rax
 mov rax, qword ptr [r12 + 9464]
 mov qword ptr [r12 + 4152], rax
 jmp xchain00235_n00350_α
 xchain00235_n00339_β:
 jmp xchain00235_n00340_α
# IR_VAR
 xchain00235_n00340_α:
 mov rax, qword ptr [r12 + 9456]
 mov qword ptr [r12 + 3952], rax
 mov rax, qword ptr [r12 + 9464]
 mov qword ptr [r12 + 3960], rax
 jmp xchain00235_n00351_α
 xchain00235_n00340_β:
 jmp xchain00235_n00352_α
# IR_VAR
 xchain00235_n00326_α:
 mov rax, qword ptr [r12 + 9440]
 mov qword ptr [r12 + 4608], rax
 mov rax, qword ptr [r12 + 9448]
 mov qword ptr [r12 + 4616], rax
 jmp xchain00235_n00353_α
 xchain00235_n00326_β:
 jmp xchain00235_n00354_α
# IR_VAR
 xchain00235_n00341_α:
 mov rax, qword ptr [r12 + 9456]
 mov qword ptr [r12 + 5024], rax
 mov rax, qword ptr [r12 + 9464]
 mov qword ptr [r12 + 5032], rax
 jmp xchain00235_n00355_α
 xchain00235_n00341_β:
 jmp xchain00235_n00318_α
# IR_MOVE_LABEL
 xchain00235_n00342_α:
 mov rax, qword ptr [r12 + 5088]
 mov qword ptr [r12 + 4944], rax
 mov rax, qword ptr [r12 + 5096]
 mov qword ptr [r12 + 4952], rax
 lea rax, [rip + xchain00235_n00318_α]
 mov qword ptr [r12 + 4960], rax
 jmp xchain00235_n00318_α
 xchain00235_n00342_β:
 jmp xchain00235_n00318_α
# IR_VAR
 xchain00235_n00343_α:
 mov rax, qword ptr [r12 + 9504]
 mov qword ptr [r12 + 4912], rax
 mov rax, qword ptr [r12 + 9512]
 mov qword ptr [r12 + 4920], rax
 jmp xchain00235_n00023_α
 xchain00235_n00343_β:
 jmp xchain00235_n96_α
# IR_LIT_STRING
 xchain00235_n00345_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00356_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00235_n00357_α
 xchain00235_n00345_β:
 jmp xchain00235_n00066_β
.Lx00356_0:
 .quad .Lx00356_0_s
.Lx00356_0_s:
 .string " "
# IR_ASSIGN_VAR
 xchain00235_n00346_α:
 mov rdi, qword ptr [r12 + 1488]
 mov rsi, qword ptr [r12 + 1496]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00235_n00322_α
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain00235_n00322_α
 xchain00235_n00346_β:
 jmp xchain00235_n00322_α
 xchain00235_n00347_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1376]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1384], rax
# marshal arg1 = producer-box slot [zr+1456] -> [zr+1392]
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1400], rax
  .section .rodata
  .Lrkfn1250: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1250]
 lea rsi, [r12 + 1376]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 cmp eax, 99
 je xchain00235_n96_α
 jmp xchain00235_n00358_α
 xchain00235_n00347_β:
 jmp xchain00235_n96_α
 xchain00235_n00348_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 2848]
 mov rdx, qword ptr [r12 + 2856]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 2880]
 mov rdx, qword ptr [r12 + 2888]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 2912]
 mov rdx, qword ptr [r12 + 2920]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00359_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00359_1
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
 jmp .Lx00359_2
.Lx00359_1:
 call rt_faildescr@PLT
.Lx00359_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 cmp eax, 99
 je xchain00235_n00324_α
 jmp xchain00235_n00324_α
 xchain00235_n00348_β:
 jmp xchain00235_n00324_α
.Lx00359_0:
 .quad .Lx00359_0_s
.Lx00359_0_s:
 .string "addword"
# IR_LIT_STRING
 xchain00235_n00021_α:
 mov qword ptr [r12 + 2304], 1
 mov rax, qword ptr [rip + .Lx00360_0]
 mov qword ptr [r12 + 2312], rax
 jmp xchain00235_n00025_α
 xchain00235_n00021_β:
 jmp xchain00235_n00337_α
.Lx00360_0:
 .quad .Lx00360_0_s
.Lx00360_0_s:
 .string ","
# IR_VAR
 xchain00235_n00349_α:
 mov rax, qword ptr [r12 + 9488]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 9496]
 mov qword ptr [r12 + 2200], rax
 jmp xchain00235_n00361_α
 xchain00235_n00349_β:
 jmp xchain00235_n96_α
 xchain00235_n00350_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4112] -> [zr+4064]
 mov rax, qword ptr [r12 + 4112]
 mov qword ptr [r12 + 4064], rax
 mov rax, qword ptr [r12 + 4120]
 mov qword ptr [r12 + 4072], rax
# marshal arg1 = producer-box slot [zr+4144] -> [zr+4080]
 mov rax, qword ptr [r12 + 4144]
 mov qword ptr [r12 + 4080], rax
 mov rax, qword ptr [r12 + 4152]
 mov qword ptr [r12 + 4088], rax
  .section .rodata
  .Lrkfn1257: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1257]
 lea rsi, [r12 + 4064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4048], rax
 mov qword ptr [r12 + 4056], rdx
 cmp eax, 99
 je xchain00235_n00340_α
 jmp xchain00235_n00340_α
 xchain00235_n00350_β:
 jmp xchain00235_n00340_α
# IR_VAR
 xchain00235_n00351_α:
 mov rax, qword ptr [r12 + 9472]
 mov qword ptr [r12 + 3984], rax
 mov rax, qword ptr [r12 + 9480]
 mov qword ptr [r12 + 3992], rax
 jmp xchain00235_n00362_α
 xchain00235_n00351_β:
 jmp xchain00235_n00352_α
 xchain00235_n00352_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00363_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00363_1
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
 jmp .Lx00363_2
.Lx00363_1:
 call rt_faildescr@PLT
.Lx00363_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 3248], rax
 mov qword ptr [r12 + 3256], rdx
 cmp eax, 99
 je xchain00235_n00364_α
 jmp xchain00235_n00365_α
 xchain00235_n00352_β:
 jmp xchain00235_n00364_α
.Lx00363_0:
 .quad .Lx00363_0_s
.Lx00363_0_s:
 .string "getword"
 xchain00235_n00353_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4608] -> [zr+4576]
 mov rax, qword ptr [r12 + 4608]
 mov qword ptr [r12 + 4576], rax
 mov rax, qword ptr [r12 + 4616]
 mov qword ptr [r12 + 4584], rax
  .section .rodata
  .Lrkfn1263: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1263]
 lea rsi, [r12 + 4576]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4560], rax
 mov qword ptr [r12 + 4568], rdx
 cmp eax, 99
 je xchain00235_n00354_α
 jmp xchain00235_n00028_α
 xchain00235_n00353_β:
 jmp xchain00235_n00354_α
# IR_VAR
 xchain00235_n00354_α:
 mov rax, qword ptr [r12 + 9424]
 mov qword ptr [r12 + 4464], rax
 mov rax, qword ptr [r12 + 9432]
 mov qword ptr [r12 + 4472], rax
 jmp xchain00235_n00366_α
 xchain00235_n00354_β:
 jmp xchain00235_n00367_α
# IR_LIT_STRING
 xchain00235_n00355_α:
 mov qword ptr [r12 + 5056], 1
 mov rax, qword ptr [rip + .Lx00368_0]
 mov qword ptr [r12 + 5064], rax
 jmp xchain00235_n00031_α
 xchain00235_n00355_β:
 jmp xchain00235_n00318_α
.Lx00368_0:
 .quad .Lx00368_0_s
.Lx00368_0_s:
 .string " *"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00235_n00022_α:
 jmp qword ptr [r12 + 4960]
 xchain00235_n00022_β:
 jmp xchain00235_n00318_α
 xchain00235_n00023_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 4848]
 mov rdx, qword ptr [r12 + 4856]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 4880]
 mov rdx, qword ptr [r12 + 4888]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 4912]
 mov rdx, qword ptr [r12 + 4920]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00369_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00369_1
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
 jmp .Lx00369_2
.Lx00369_1:
 call rt_faildescr@PLT
.Lx00369_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 4768], rax
 mov qword ptr [r12 + 4776], rdx
 cmp eax, 99
 je xchain00235_n96_α
 jmp xchain00235_n00033_α
 xchain00235_n00023_β:
 jmp xchain00235_n96_α
.Lx00369_0:
 .quad .Lx00369_0_s
.Lx00369_0_s:
 .string "addword"
 xchain00235_n00357_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+512]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+528]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 536], rax
# marshal arg2 = producer-box slot [zr+672] -> [zr+544]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn1272: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1272]
 lea rsi, [r12 + 512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain00235_n00066_β
 jmp xchain00235_n00370_α
 xchain00235_n00357_β:
 jmp xchain00235_n00066_β
 xchain00235_n00358_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1352], rax
 jmp xchain00235_n00371_α
xchain00235_n00358_β:
 jmp xchain00235_n96_α
 xchain00235_n00025_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 2256]
 mov rsi, qword ptr [r12 + 2264]
 mov rdx, qword ptr [r12 + 2304]
 mov rcx, qword ptr [r12 + 2312]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00235_n00337_α
 mov rdi, qword ptr [r12 + 2304]
 mov rsi, qword ptr [r12 + 2312]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 jmp xchain00235_n00036_α
 xchain00235_n00025_β:
 jmp xchain00235_n00337_α
 xchain00235_n00361_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2160] -> [zr+2112]
 mov rax, qword ptr [r12 + 2160]
 mov qword ptr [r12 + 2112], rax
 mov rax, qword ptr [r12 + 2168]
 mov qword ptr [r12 + 2120], rax
# marshal arg1 = producer-box slot [zr+2192] -> [zr+2128]
 mov rax, qword ptr [r12 + 2192]
 mov qword ptr [r12 + 2128], rax
 mov rax, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 2136], rax
  .section .rodata
  .Lrkfn1276: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1276]
 lea rsi, [r12 + 2112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 cmp eax, 99
 je xchain00235_n96_α
 jmp xchain00235_n00372_α
 xchain00235_n00361_β:
 jmp xchain00235_n96_α
# IR_VAR
 xchain00235_n00362_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 4016], rax
 mov qword ptr [r12 + 4024], rdx
 jmp xchain00235_n00373_α
 xchain00235_n00362_β:
 jmp xchain00235_n00352_α
 xchain00235_n00365_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3248]
 mov rdx, qword ptr [r12 + 3256]
 mov qword ptr [r12 + 9488], rax
 mov qword ptr [r12 + 9496], rdx
 mov qword ptr [r12 + 3232], rax
 mov qword ptr [r12 + 3240], rdx
 jmp xchain00235_n00041_α
 xchain00235_n00365_β:
 jmp xchain00235_n00364_α
# IR_VAR
 xchain00235_n00364_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
 jmp xchain00235_n00374_α
 xchain00235_n00364_β:
 jmp xchain00235_n96_α
 xchain00235_n00028_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 4560]
 mov rdx, qword ptr [r12 + 4568]
 mov qword ptr [r12 + 9424], rax
 mov qword ptr [r12 + 9432], rdx
 mov qword ptr [r12 + 4544], rax
 mov qword ptr [r12 + 4552], rdx
 jmp xchain00235_n00354_α
 xchain00235_n00028_β:
 jmp xchain00235_n00354_α
# IR_FIELD_GET lv
 xchain00235_n00366_α:
 mov rdi, qword ptr [rip + .Lx00375_0]
 mov rsi, qword ptr [r12 + 4464]
 mov rdx, qword ptr [r12 + 4472]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00235_n00367_α
 mov qword ptr [r12 + 4432], rax
 mov qword ptr [r12 + 4440], rdx
 jmp xchain00235_n00042_α
 xchain00235_n00366_β:
 jmp xchain00235_n00367_α
.Lx00375_0:
 .quad .Lx00375_0_s
.Lx00375_0_s:
 .string "lastline"
# IR_VAR
 xchain00235_n00367_α:
 mov rax, qword ptr [r12 + 9440]
 mov qword ptr [r12 + 4368], rax
 mov rax, qword ptr [r12 + 9448]
 mov qword ptr [r12 + 4376], rax
 jmp xchain00235_n00376_α
 xchain00235_n00367_β:
 jmp xchain00235_n96_α
 xchain00235_n00031_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 9456]
 mov rsi, qword ptr [r12 + 9464]
 mov rdx, qword ptr [r12 + 5056]
 mov rcx, qword ptr [r12 + 5064]
 call str_concat_d@PLT
 mov qword ptr [r12 + 4992], rax
 mov qword ptr [r12 + 5000], rdx
 jmp xchain00235_n00377_α
 xchain00235_n00031_β:
 jmp xchain00235_n00318_α
 xchain00235_n00033_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 4768]
 mov qword ptr [r12 + 4752], rax
 mov rax, qword ptr [r12 + 4776]
 mov qword ptr [r12 + 4760], rax
 jmp xchain00235_n00378_α
xchain00235_n00033_β:
 jmp xchain00235_n96_α
# IR_VAR
 xchain00235_n00370_α:
 mov rax, qword ptr [r12 + 9424]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 9432]
 mov qword ptr [r12 + 744], rax
 jmp xchain00235_n00046_α
 xchain00235_n00370_β:
 jmp xchain00235_n00066_β
# IR_MOVE_LABEL
 xchain00235_n00371_α:
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1320], rax
 lea rax, [rip + xchain00235_n96_α]
 mov qword ptr [r12 + 1328], rax
 jmp xchain00235_n00379_α
 xchain00235_n00371_β:
 jmp xchain00235_n96_α
# IR_VAR
 xchain00235_n00036_α:
 mov rax, qword ptr [r12 + 9456]
 mov qword ptr [r12 + 2672], rax
 mov rax, qword ptr [r12 + 9464]
 mov qword ptr [r12 + 2680], rax
 jmp xchain00235_n00050_α
 xchain00235_n00036_β:
 jmp xchain00235_n00380_α
 xchain00235_n00372_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2088], rax
 jmp xchain00235_n00381_α
xchain00235_n00372_β:
 jmp xchain00235_n96_α
 xchain00235_n00373_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 3952]
 mov rdx, qword ptr [r12 + 3960]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 3984]
 mov rdx, qword ptr [r12 + 3992]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 4016]
 mov rdx, qword ptr [r12 + 4024]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00382_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00382_1
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
 jmp .Lx00382_2
.Lx00382_1:
 call rt_faildescr@PLT
.Lx00382_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 3872], rax
 mov qword ptr [r12 + 3880], rdx
 cmp eax, 99
 je xchain00235_n00352_α
 jmp xchain00235_n00352_α
 xchain00235_n00373_β:
 jmp xchain00235_n00352_α
.Lx00382_0:
 .quad .Lx00382_0_s
.Lx00382_0_s:
 .string "addword"
# IR_LIT_STRING
 xchain00235_n00041_α:
 mov qword ptr [r12 + 3280], 1
 mov rax, qword ptr [rip + .Lx00383_0]
 mov qword ptr [r12 + 3288], rax
 jmp xchain00235_n00384_α
 xchain00235_n00041_β:
 jmp xchain00235_n00364_α
.Lx00383_0:
 .quad .Lx00383_0_s
.Lx00383_0_s:
 .string ","
# IR_VAR
 xchain00235_n00374_α:
 mov rax, qword ptr [r12 + 9488]
 mov qword ptr [r12 + 3168], rax
 mov rax, qword ptr [r12 + 9496]
 mov qword ptr [r12 + 3176], rax
 jmp xchain00235_n00385_α
 xchain00235_n00374_β:
 jmp xchain00235_n96_α
# IR_VAR
 xchain00235_n00042_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 4512], rax
 mov qword ptr [r12 + 4520], rdx
 jmp xchain00235_n00053_α
 xchain00235_n00042_β:
 jmp xchain00235_n00367_α
# IR_VAR
 xchain00235_n00376_α:
 mov rax, qword ptr [r12 + 9424]
 mov qword ptr [r12 + 4400], rax
 mov rax, qword ptr [r12 + 9432]
 mov qword ptr [r12 + 4408], rax
 jmp xchain00235_n00386_α
 xchain00235_n00376_β:
 jmp xchain00235_n96_α
 xchain00235_n00377_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 4992]
 mov rdx, qword ptr [r12 + 5000]
 mov qword ptr [r12 + 9456], rax
 mov qword ptr [r12 + 9464], rdx
 mov qword ptr [r12 + 4976], rax
 mov qword ptr [r12 + 4984], rdx
 jmp xchain00235_n00387_α
 xchain00235_n00377_β:
 jmp xchain00235_n00318_α
# IR_MOVE_LABEL
 xchain00235_n00378_α:
 mov rax, qword ptr [r12 + 4768]
 mov qword ptr [r12 + 4720], rax
 mov rax, qword ptr [r12 + 4776]
 mov qword ptr [r12 + 4728], rax
 lea rax, [rip + xchain00235_n96_α]
 mov qword ptr [r12 + 4736], rax
 jmp xchain00235_n00388_α
 xchain00235_n00378_β:
 jmp xchain00235_n96_α
# IR_FIELD_GET
 xchain00235_n00046_α:
 mov rdi, qword ptr [rip + .Lx00389_0]
 mov rsi, qword ptr [r12 + 736]
 mov rdx, qword ptr [r12 + 744]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00235_n00066_β
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00235_n00390_α
 xchain00235_n00046_β:
 jmp xchain00235_n00066_β
.Lx00389_0:
 .quad .Lx00389_0_s
.Lx00389_0_s:
 .string "begline"
# IR_MOVE_LABEL
 xchain00235_n00379_α:
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1192], rax
 lea rax, [rip + xchain00235_n00391_α]
 mov qword ptr [r12 + 1200], rax
 jmp xchain00235_n96_α
 xchain00235_n00379_β:
 jmp xchain00235_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00235_n00391_α:
 jmp qword ptr [r12 + 1328]
 xchain00235_n00391_β:
 jmp xchain00235_n96_α
# IR_VAR
 xchain00235_n00050_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 2736], rax
 mov qword ptr [r12 + 2744], rdx
 jmp xchain00235_n00392_α
 xchain00235_n00050_β:
 jmp xchain00235_n00380_α
 xchain00235_n00380_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00393_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00393_1
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
 jmp .Lx00393_2
.Lx00393_1:
 call rt_faildescr@PLT
.Lx00393_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 cmp eax, 99
 je xchain00235_n00337_α
 jmp xchain00235_n00057_α
 xchain00235_n00380_β:
 jmp xchain00235_n00337_α
.Lx00393_0:
 .quad .Lx00393_0_s
.Lx00393_0_s:
 .string "getword"
# IR_MOVE_LABEL
 xchain00235_n00381_α:
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2056], rax
 lea rax, [rip + xchain00235_n96_α]
 mov qword ptr [r12 + 2064], rax
 jmp xchain00235_n00061_α
 xchain00235_n00381_β:
 jmp xchain00235_n96_α
 xchain00235_n00384_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 3232]
 mov rsi, qword ptr [r12 + 3240]
 mov rdx, qword ptr [r12 + 3280]
 mov rcx, qword ptr [r12 + 3288]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00235_n00364_α
 mov rdi, qword ptr [r12 + 3280]
 mov rsi, qword ptr [r12 + 3288]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3200], rax
 mov qword ptr [r12 + 3208], rdx
 jmp xchain00235_n00394_α
 xchain00235_n00384_β:
 jmp xchain00235_n00364_α
 xchain00235_n00385_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3136] -> [zr+3088]
 mov rax, qword ptr [r12 + 3136]
 mov qword ptr [r12 + 3088], rax
 mov rax, qword ptr [r12 + 3144]
 mov qword ptr [r12 + 3096], rax
# marshal arg1 = producer-box slot [zr+3168] -> [zr+3104]
 mov rax, qword ptr [r12 + 3168]
 mov qword ptr [r12 + 3104], rax
 mov rax, qword ptr [r12 + 3176]
 mov qword ptr [r12 + 3112], rax
  .section .rodata
  .Lrkfn1316: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1316]
 lea rsi, [r12 + 3088]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3072], rax
 mov qword ptr [r12 + 3080], rdx
 cmp eax, 99
 je xchain00235_n96_α
 jmp xchain00235_n00395_α
 xchain00235_n00385_β:
 jmp xchain00235_n96_α
# IR_ASSIGN_VAR
 xchain00235_n00053_α:
 mov rdi, qword ptr [r12 + 4432]
 mov rsi, qword ptr [r12 + 4440]
 mov rdx, qword ptr [r12 + 4512]
 mov rcx, qword ptr [r12 + 4520]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00235_n00367_α
 mov qword ptr [r12 + 4496], rax
 mov qword ptr [r12 + 4504], rdx
 jmp xchain00235_n00367_α
 xchain00235_n00053_β:
 jmp xchain00235_n00367_α
 xchain00235_n00386_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4368] -> [zr+4320]
 mov rax, qword ptr [r12 + 4368]
 mov qword ptr [r12 + 4320], rax
 mov rax, qword ptr [r12 + 4376]
 mov qword ptr [r12 + 4328], rax
# marshal arg1 = producer-box slot [zr+4400] -> [zr+4336]
 mov rax, qword ptr [r12 + 4400]
 mov qword ptr [r12 + 4336], rax
 mov rax, qword ptr [r12 + 4408]
 mov qword ptr [r12 + 4344], rax
  .section .rodata
  .Lrkfn1319: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1319]
 lea rsi, [r12 + 4320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4304], rax
 mov qword ptr [r12 + 4312], rdx
 cmp eax, 99
 je xchain00235_n96_α
 jmp xchain00235_n00396_α
 xchain00235_n00386_β:
 jmp xchain00235_n96_α
# IR_MOVE_LABEL
 xchain00235_n00387_α:
 mov rax, qword ptr [r12 + 4976]
 mov qword ptr [r12 + 4944], rax
 mov rax, qword ptr [r12 + 4984]
 mov qword ptr [r12 + 4952], rax
 lea rax, [rip + xchain00235_n00318_α]
 mov qword ptr [r12 + 4960], rax
 jmp xchain00235_n00318_α
 xchain00235_n00387_β:
 jmp xchain00235_n00318_α
# IR_MOVE_LABEL
 xchain00235_n00388_α:
 mov rax, qword ptr [r12 + 4720]
 mov qword ptr [r12 + 4256], rax
 mov rax, qword ptr [r12 + 4728]
 mov qword ptr [r12 + 4264], rax
 lea rax, [rip + xchain00235_n00397_α]
 mov qword ptr [r12 + 4272], rax
 jmp xchain00235_n00398_α
 xchain00235_n00388_β:
 jmp xchain00235_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00235_n00397_α:
 jmp qword ptr [r12 + 4736]
 xchain00235_n00397_β:
 jmp xchain00235_n96_α
 xchain00235_n00390_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 704]
 mov rcx, qword ptr [r12 + 712]
 call str_concat_d@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00235_n00399_α
 xchain00235_n00390_β:
 jmp xchain00235_n00066_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00235_n00400_α:
 jmp qword ptr [r12 + 1200]
 xchain00235_n00400_β:
 jmp xchain00235_n96_α
# IR_LIST_BANG
 xchain00235_n00392_α:
 mov qword ptr [r12 + 2720], 0
.Lx00401_0:
 mov rdi, qword ptr [r12 + 2736]
 mov rsi, qword ptr [r12 + 2744]
 mov rdx, qword ptr [r12 + 2720]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 2704], rax
 mov qword ptr [r12 + 2712], rdx
 cmp rax, 99
 je xchain00235_n00380_α
 jmp xchain00235_n00402_α
 xchain00235_n00392_β:
 inc qword ptr [r12 + 2720]
 jmp .Lx00401_0
# IR_MOVE_LABEL
 xchain00235_n00057_α:
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 2544], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 2552], rax
 lea rax, [rip + xchain00235_n00059_α]
 mov qword ptr [r12 + 2560], rax
 jmp xchain00235_n00403_α
 xchain00235_n00057_β:
 jmp xchain00235_n00404_α
 xchain00235_n00059_α:
 jmp xchain00235_n00337_α
xchain00235_n00059_β:
 jmp xchain00235_n00337_α
# IR_MOVE_LABEL
 xchain00235_n00061_α:
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 1320], rax
 lea rax, [rip + xchain00235_n00405_α]
 mov qword ptr [r12 + 1328], rax
 jmp xchain00235_n00379_α
 xchain00235_n00061_β:
 jmp xchain00235_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00235_n00405_α:
 jmp qword ptr [r12 + 2064]
 xchain00235_n00405_β:
 jmp xchain00235_n96_α
# IR_VAR
 xchain00235_n00394_α:
 mov rax, qword ptr [r12 + 9456]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 9464]
 mov qword ptr [r12 + 3784], rax
 jmp xchain00235_n00406_α
 xchain00235_n00394_β:
 jmp xchain00235_n00407_α
 xchain00235_n00395_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 3056], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 3064], rax
 jmp xchain00235_n00408_α
xchain00235_n00395_β:
 jmp xchain00235_n96_α
 xchain00235_n00396_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 4304]
 mov qword ptr [r12 + 4288], rax
 mov rax, qword ptr [r12 + 4312]
 mov qword ptr [r12 + 4296], rax
 jmp xchain00235_n00409_α
xchain00235_n00396_β:
 jmp xchain00235_n96_α
# IR_MOVE_LABEL
 xchain00235_n00398_α:
 mov rax, qword ptr [r12 + 4256]
 mov qword ptr [r12 + 3024], rax
 mov rax, qword ptr [r12 + 4264]
 mov qword ptr [r12 + 3032], rax
 lea rax, [rip + xchain00235_n00410_α]
 mov qword ptr [r12 + 3040], rax
 jmp xchain00235_n00411_α
 xchain00235_n00398_β:
 jmp xchain00235_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00235_n00410_α:
 jmp qword ptr [r12 + 4272]
 xchain00235_n00410_β:
 jmp xchain00235_n96_α
# IR_LIT_STRING
 xchain00235_n00399_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx00412_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain00235_n00413_α
 xchain00235_n00399_β:
 jmp xchain00235_n00066_β
.Lx00412_0:
 .quad .Lx00412_0_s
.Lx00412_0_s:
 .string "-"
 xchain00235_n00402_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 9456]
 mov rsi, qword ptr [r12 + 9464]
 mov rdx, qword ptr [r12 + 2704]
 mov rcx, qword ptr [r12 + 2712]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00235_n00392_β
 mov rdi, qword ptr [r12 + 2704]
 mov rsi, qword ptr [r12 + 2712]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 jmp xchain00235_n00337_α
 xchain00235_n00402_β:
 jmp xchain00235_n00392_β
 xchain00235_n00403_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2544]
 mov rdx, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 9456], rax
 mov qword ptr [r12 + 9464], rdx
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 jmp xchain00235_n00404_α
 xchain00235_n00403_β:
 jmp xchain00235_n00404_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00235_n00414_α:
 jmp qword ptr [r12 + 2560]
 xchain00235_n00414_β:
 jmp xchain00235_n00404_α
# IR_VAR
 xchain00235_n00406_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 3840], rax
 mov qword ptr [r12 + 3848], rdx
 jmp xchain00235_n00415_α
 xchain00235_n00406_β:
 jmp xchain00235_n00407_α
 xchain00235_n00407_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00416_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00416_1
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
 jmp .Lx00416_2
.Lx00416_1:
 call rt_faildescr@PLT
.Lx00416_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 3680], rax
 mov qword ptr [r12 + 3688], rdx
 cmp eax, 99
 je xchain00235_n00364_α
 jmp xchain00235_n00417_α
 xchain00235_n00407_β:
 jmp xchain00235_n00364_α
.Lx00416_0:
 .quad .Lx00416_0_s
.Lx00416_0_s:
 .string "getword"
# IR_MOVE_LABEL
 xchain00235_n00408_α:
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 3024], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 3032], rax
 lea rax, [rip + xchain00235_n96_α]
 mov qword ptr [r12 + 3040], rax
 jmp xchain00235_n00411_α
 xchain00235_n00408_β:
 jmp xchain00235_n96_α
# IR_MOVE_LABEL
 xchain00235_n00409_α:
 mov rax, qword ptr [r12 + 4304]
 mov qword ptr [r12 + 4256], rax
 mov rax, qword ptr [r12 + 4312]
 mov qword ptr [r12 + 4264], rax
 lea rax, [rip + xchain00235_n96_α]
 mov qword ptr [r12 + 4272], rax
 jmp xchain00235_n00398_α
 xchain00235_n00409_β:
 jmp xchain00235_n96_α
# IR_MOVE_LABEL
 xchain00235_n00411_α:
 mov rax, qword ptr [r12 + 3024]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 3032]
 mov qword ptr [r12 + 2056], rax
 lea rax, [rip + xchain00235_n00418_α]
 mov qword ptr [r12 + 2064], rax
 jmp xchain00235_n00061_α
 xchain00235_n00411_β:
 jmp xchain00235_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00235_n00418_α:
 jmp qword ptr [r12 + 3040]
 xchain00235_n00418_β:
 jmp xchain00235_n96_α
 xchain00235_n00413_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 call str_concat_d@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00235_n00419_α
 xchain00235_n00413_β:
 jmp xchain00235_n00066_β
 xchain00235_n00420_α:
 jmp xchain00235_n00337_α
xchain00235_n00420_β:
 jmp xchain00235_n00337_α
# IR_VAR
 xchain00235_n00404_α:
 mov rax, qword ptr [r12 + 9456]
 mov qword ptr [r12 + 2432], rax
 mov rax, qword ptr [r12 + 9464]
 mov qword ptr [r12 + 2440], rax
 jmp xchain00235_n00421_α
 xchain00235_n00404_β:
 jmp xchain00235_n00324_α
# IR_LIST_BANG
 xchain00235_n00415_α:
 mov qword ptr [r12 + 3824], 0
.Lx00422_0:
 mov rdi, qword ptr [r12 + 3840]
 mov rsi, qword ptr [r12 + 3848]
 mov rdx, qword ptr [r12 + 3824]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 3808], rax
 mov qword ptr [r12 + 3816], rdx
 cmp rax, 99
 je xchain00235_n00407_α
 jmp xchain00235_n00423_α
 xchain00235_n00415_β:
 inc qword ptr [r12 + 3824]
 jmp .Lx00422_0
# IR_MOVE_LABEL
 xchain00235_n00417_α:
 mov rax, qword ptr [r12 + 3680]
 mov qword ptr [r12 + 3648], rax
 mov rax, qword ptr [r12 + 3688]
 mov qword ptr [r12 + 3656], rax
 lea rax, [rip + xchain00235_n00075_α]
 mov qword ptr [r12 + 3664], rax
 jmp xchain00235_n00079_α
 xchain00235_n00417_β:
 jmp xchain00235_n00424_α
 xchain00235_n00075_α:
 jmp xchain00235_n00364_α
xchain00235_n00075_β:
 jmp xchain00235_n00364_α
# IR_VAR
 xchain00235_n00419_α:
 mov rax, qword ptr [r12 + 9424]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 9432]
 mov qword ptr [r12 + 840], rax
 jmp xchain00235_n00425_α
 xchain00235_n00419_β:
 jmp xchain00235_n00066_β
# IR_LIT_STRING
 xchain00235_n00421_α:
 mov qword ptr [r12 + 2464], 1
 mov rax, qword ptr [rip + .Lx00426_0]
 mov qword ptr [r12 + 2472], rax
 jmp xchain00235_n00082_α
 xchain00235_n00421_β:
 jmp xchain00235_n00324_α
.Lx00426_0:
 .quad .Lx00426_0_s
.Lx00426_0_s:
 .string "global"
 xchain00235_n00423_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 9456]
 mov rsi, qword ptr [r12 + 9464]
 mov rdx, qword ptr [r12 + 3808]
 mov rcx, qword ptr [r12 + 3816]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00235_n00415_β
 mov rdi, qword ptr [r12 + 3808]
 mov rsi, qword ptr [r12 + 3816]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3744], rax
 mov qword ptr [r12 + 3752], rdx
 jmp xchain00235_n00364_α
 xchain00235_n00423_β:
 jmp xchain00235_n00415_β
 xchain00235_n00079_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3648]
 mov rdx, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 9456], rax
 mov qword ptr [r12 + 9464], rdx
 mov qword ptr [r12 + 3632], rax
 mov qword ptr [r12 + 3640], rdx
 jmp xchain00235_n00424_α
 xchain00235_n00079_β:
 jmp xchain00235_n00424_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00235_n00427_α:
 jmp qword ptr [r12 + 3664]
 xchain00235_n00427_β:
 jmp xchain00235_n00424_α
# IR_FIELD_GET
 xchain00235_n00425_α:
 mov rdi, qword ptr [rip + .Lx00428_0]
 mov rsi, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00235_n00066_β
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00235_n00429_α
 xchain00235_n00425_β:
 jmp xchain00235_n00066_β
.Lx00428_0:
 .quad .Lx00428_0_s
.Lx00428_0_s:
 .string "lastline"
# IR_VAR
 xchain00235_n00082_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 jmp xchain00235_n00430_α
 xchain00235_n00082_β:
 jmp xchain00235_n00324_α
 xchain00235_n00083_α:
 jmp xchain00235_n00364_α
xchain00235_n00083_β:
 jmp xchain00235_n00364_α
# IR_VAR
 xchain00235_n00424_α:
 mov rax, qword ptr [rbx + 192]
 mov rdx, qword ptr [rbx + 200]
 mov qword ptr [r12 + 3568], rax
 mov qword ptr [r12 + 3576], rdx
 jmp xchain00235_n00086_α
 xchain00235_n00424_β:
 jmp xchain00235_n00431_α
 xchain00235_n00429_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 call str_concat_d@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00235_n00432_α
 xchain00235_n00429_β:
 jmp xchain00235_n00066_β
 xchain00235_n00430_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 2432]
 mov rdx, qword ptr [r12 + 2440]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 2464]
 mov rdx, qword ptr [r12 + 2472]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 2496]
 mov rdx, qword ptr [r12 + 2504]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00433_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00433_1
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
 jmp .Lx00433_2
.Lx00433_1:
 call rt_faildescr@PLT
.Lx00433_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 cmp eax, 99
 je xchain00235_n00324_α
 jmp xchain00235_n00434_α
 xchain00235_n00430_β:
 jmp xchain00235_n00324_α
.Lx00433_0:
 .quad .Lx00433_0_s
.Lx00433_0_s:
 .string "addword"
# IR_VAR
 xchain00235_n00086_α:
 mov rax, qword ptr [r12 + 9456]
 mov qword ptr [r12 + 3600], rax
 mov rax, qword ptr [r12 + 9464]
 mov qword ptr [r12 + 3608], rax
 jmp xchain00235_n00435_α
 xchain00235_n00086_β:
 jmp xchain00235_n00431_α
# IR_VAR
 xchain00235_n00431_α:
 mov rax, qword ptr [r12 + 9456]
 mov qword ptr [r12 + 3408], rax
 mov rax, qword ptr [r12 + 9464]
 mov qword ptr [r12 + 3416], rax
 jmp xchain00235_n00090_α
 xchain00235_n00431_β:
 jmp xchain00235_n00352_α
 xchain00235_n00432_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+336]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn1390: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1390]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain00235_n00066_β
 jmp xchain00235_n00066_β
 xchain00235_n00432_β:
 jmp xchain00235_n00066_β
 xchain00235_n00434_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 2352]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 2360]
 mov qword ptr [r12 + 2344], rax
 jmp xchain00235_n00324_α
xchain00235_n00434_β:
 jmp xchain00235_n00324_α
 xchain00235_n00435_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3568] -> [zr+3520]
 mov rax, qword ptr [r12 + 3568]
 mov qword ptr [r12 + 3520], rax
 mov rax, qword ptr [r12 + 3576]
 mov qword ptr [r12 + 3528], rax
# marshal arg1 = producer-box slot [zr+3600] -> [zr+3536]
 mov rax, qword ptr [r12 + 3600]
 mov qword ptr [r12 + 3536], rax
 mov rax, qword ptr [r12 + 3608]
 mov qword ptr [r12 + 3544], rax
  .section .rodata
  .Lrkfn1393: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1393]
 lea rsi, [r12 + 3520]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 cmp eax, 99
 je xchain00235_n00431_α
 jmp xchain00235_n00431_α
 xchain00235_n00435_β:
 jmp xchain00235_n00431_α
# IR_VAR
 xchain00235_n00090_α:
 mov rax, qword ptr [r12 + 9472]
 mov qword ptr [r12 + 3440], rax
 mov rax, qword ptr [r12 + 9480]
 mov qword ptr [r12 + 3448], rax
 jmp xchain00235_n00436_α
 xchain00235_n00090_β:
 jmp xchain00235_n00352_α
# IR_VAR
 xchain00235_n00436_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], rdx
 jmp xchain00235_n00437_α
 xchain00235_n00436_β:
 jmp xchain00235_n00352_α
 xchain00235_n00437_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 3408]
 mov rdx, qword ptr [r12 + 3416]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 3440]
 mov rdx, qword ptr [r12 + 3448]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 3472]
 mov rdx, qword ptr [r12 + 3480]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00438_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00438_1
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
 jmp .Lx00438_2
.Lx00438_1:
 call rt_faildescr@PLT
.Lx00438_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 3328], rax
 mov qword ptr [r12 + 3336], rdx
 cmp eax, 99
 je xchain00235_n00352_α
 jmp xchain00235_n00439_α
 xchain00235_n00437_β:
 jmp xchain00235_n00352_α
.Lx00438_0:
 .quad .Lx00438_0_s
.Lx00438_0_s:
 .string "addword"
 xchain00235_n00439_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 3328]
 mov qword ptr [r12 + 3312], rax
 mov rax, qword ptr [r12 + 3336]
 mov qword ptr [r12 + 3320], rax
 jmp xchain00235_n00352_α
xchain00235_n00439_β:
 jmp xchain00235_n00352_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 9400]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 9392]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 9400]
pop r12
ret
