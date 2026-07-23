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
  mov qword ptr [rsp + 2168], rsp
  mov rdi, rsp
  mov esi, 2160
  mov edx, 2176
  call rt_jmp_frame_lexprep2@PLT
proc_addword_α_body:
# IR_DISJUNCTION_NARY
 xchain0_n0_α:
 mov qword ptr [rbp + 64], 0
 mov qword ptr [rbp + 72], 0
 mov dword ptr [rbp + 80], 0
 jmp xchain0_n1_α
xchain0_n0_as:
 mov eax, dword ptr [rbp + 80]
 cmp eax, 0
 jne .Lx2_0
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 72], rax
 jmp proc_addword_ω
.Lx2_0:
 jmp proc_addword_ω
 xchain0_n0_β:
 mov eax, dword ptr [rbp + 80]
 jmp xchain0_n2_β
xchain0_n0_af:
 add dword ptr [rbp + 80], 1
 mov eax, dword ptr [rbp + 80]
 jmp proc_addword_ω
# IR_DISJUNCTION_NARY
 xchain0_n1_α:
 mov qword ptr [rbp + 1936], 0
 mov qword ptr [rbp + 1944], 0
 mov dword ptr [rbp + 1952], 0
 jmp xchain0_n5_α
xchain0_n1_as:
 mov eax, dword ptr [rbp + 1952]
 cmp eax, 0
 jne .Lx4_0
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1944], rax
 jmp xchain0_n4_α
.Lx4_0:
 cmp eax, 1
 jne .Lx4_1
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 1944], rax
 jmp xchain0_n4_α
.Lx4_1:
 jmp xchain0_n4_α
 xchain0_n1_β:
 mov eax, dword ptr [rbp + 1952]
 cmp eax, 0
 je xchain0_n1_af
 jmp xchain0_n1_af
xchain0_n1_af:
 add dword ptr [rbp + 1952], 1
 mov eax, dword ptr [rbp + 1952]
 cmp eax, 1
 je xchain0_n6_α
 jmp xchain0_n0_af
# IR_DISJUNCTION_NARY
 xchain0_n2_α:
 mov qword ptr [rbp + 112], 0
 mov qword ptr [rbp + 120], 0
 mov dword ptr [rbp + 128], 0
 jmp xchain0_n9_α
xchain0_n2_as:
 mov eax, dword ptr [rbp + 128]
 cmp eax, 0
 jne .Lx6_0
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 120], rax
 jmp xchain0_n3_α
.Lx6_0:
 cmp eax, 1
 jne .Lx6_1
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 120], rax
 jmp xchain0_n3_α
.Lx6_1:
 jmp xchain0_n3_α
 xchain0_n2_β:
 mov eax, dword ptr [rbp + 128]
 cmp eax, 0
 je proc_addword_ω
 jmp proc_addword_ω
xchain0_n2_af:
 add dword ptr [rbp + 128], 1
 mov eax, dword ptr [rbp + 128]
 cmp eax, 1
 je xchain0_n10_α
 jmp proc_addword_ω
 xchain0_n3_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 104], rax
 jmp xchain0_n0_as
xchain0_n3_β:
 jmp proc_addword_ω
# IR_VAR_REF
 xchain0_n4_α:
 mov rax, 4294967305
 mov rdx, 1879052352
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain0_n13_α
# IR_VAR
 xchain0_n5_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 jmp xchain0_n14_α
 xchain0_n5_β:
 jmp xchain0_n1_af
# IR_VAR
 xchain0_n6_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n1_af
 xchain0_n7_α:
# BOX CALL any(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+2032] -> [zr+1984]
 mov rax, qword ptr [rbp + 2032]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 2040]
 mov qword ptr [rbp + 1992], rax
# marshal arg1 = producer-box slot [zr+2064] -> [zr+2000]
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 2008], rax
 mov rdi, r14
 call rt_scan_sync_out@PLT
  .section .rodata
  .Lbynamefn8: .string "any"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn8]
 lea rsi, [rbp + 1984]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 cmp eax, 99
 je xchain0_n1_af
 jmp xchain0_n1_as
 xchain0_n7_β:
 jmp xchain0_n1_af
# IR_UNOP
 xchain0_n8_α:
 mov eax, dword ptr [rbp + 2128]
 cmp eax, 99
 je xchain0_n1_af
 cmp eax, 0
 je xchain0_n1_af
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2104], rax
 jmp xchain0_n1_as
 xchain0_n8_β:
 jmp xchain0_n1_af
# IR_DISJUNCTION_NARY
 xchain0_n9_α:
 mov qword ptr [rbp + 752], 0
 mov qword ptr [rbp + 760], 0
 mov dword ptr [rbp + 768], 0
 jmp xchain0_n16_α
xchain0_n9_as:
 mov eax, dword ptr [rbp + 768]
 cmp eax, 0
 jne .Lx15_0
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 760], rax
 jmp xchain0_n15_α
.Lx15_0:
 cmp eax, 1
 jne .Lx15_1
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 760], rax
 jmp xchain0_n15_α
.Lx15_1:
 jmp xchain0_n15_α
 xchain0_n9_β:
 mov eax, dword ptr [rbp + 768]
 cmp eax, 0
 je xchain0_n9_af
 jmp xchain0_n18_β
xchain0_n9_af:
 add dword ptr [rbp + 768], 1
 mov eax, dword ptr [rbp + 768]
 cmp eax, 1
 je xchain0_n17_α
 jmp xchain0_n2_af
# IR_VAR_REF
 xchain0_n10_α:
 mov rax, 4294967305
 mov rdx, 1879052352
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain0_n21_α
 xchain0_n10_β:
 jmp xchain0_n27_α
 xchain0_n11_α:
 jmp xchain0_n2_as
xchain0_n11_β:
 jmp proc_addword_ω
 xchain0_n12_α:
 jmp xchain0_n2_as
xchain0_n12_β:
 jmp proc_addword_ω
# IR_VAR
 xchain0_n13_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1800], rax
 jmp xchain0_n22_α
# IR_VAR
 xchain0_n14_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2072], rax
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 mov rdx, 1879052352
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain0_n23_α
# IR_VAR_REF
 xchain0_n16_α:
 mov rax, 4294967305
 mov rdx, 1879052352
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain0_n24_α
 xchain0_n16_β:
 jmp xchain0_n9_af
# IR_VAR
 xchain0_n17_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1032], rax
 jmp xchain0_n25_α
 xchain0_n17_β:
 jmp xchain0_n9_af
# IR_LIST_BANG
 xchain0_n18_α:
 mov qword ptr [rbp + 1072], 0
.Lx31_0:
 mov rdi, qword ptr [rbp + 1088]
 mov rsi, qword ptr [rbp + 1096]
 mov rdx, qword ptr [rbp + 1072]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp rax, 99
 je xchain0_n9_af
 jmp xchain0_n20_α
 xchain0_n18_β:
 inc qword ptr [rbp + 1072]
 jmp .Lx31_0
# IR_UNOP
 xchain0_n19_α:
 mov eax, dword ptr [rbp + 976]
 cmp eax, 99
 je xchain0_n9_af
 cmp eax, 0
 jne xchain0_n9_af
 mov qword ptr [rbp + 784], 0
 mov qword ptr [rbp + 792], 0
 jmp xchain0_n9_as
 xchain0_n19_β:
 jmp xchain0_n9_af
 xchain0_n20_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 mov rdx, qword ptr [rbp + 1056]
 mov rcx, qword ptr [rbp + 1064]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n18_β
 mov rdi, qword ptr [rbp + 1056]
 mov rsi, qword ptr [rbp + 1064]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain0_n9_as
 xchain0_n20_β:
 jmp xchain0_n18_β
# IR_VAR
 xchain0_n21_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1480], rax
 jmp xchain0_n26_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n22_α:
 mov rdi, qword ptr [rbp + 1760]
 mov rsi, qword ptr [rbp + 1768]
 mov rdx, qword ptr [rbp + 1792]
 mov rcx, qword ptr [rbp + 1800]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n2_α
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain0_n28_α
# IR_VAR
 xchain0_n23_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 472], rax
 jmp xchain0_n29_α
# IR_VAR
 xchain0_n24_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 856], rax
 jmp xchain0_n31_α
# IR_VAR
 xchain0_n25_α:
 mov rax, qword ptr [1879052480]
 mov rdx, qword ptr [1879052488]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain0_n32_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n26_α:
 mov rdi, qword ptr [rbp + 1440]
 mov rsi, qword ptr [rbp + 1448]
 mov rdx, qword ptr [rbp + 1472]
 mov rcx, qword ptr [rbp + 1480]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n27_α
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain0_n33_α
# IR_VAR_REF
 xchain0_n27_α:
 mov rax, 4294967305
 mov rdx, 1879052352
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain0_n34_α
# IR_NULLTEST_VAR
 xchain0_n28_α:
 mov eax, dword ptr [rbp + 1824]
 cmp eax, 99
 je xchain0_n2_α
 mov rdi, qword ptr [rbp + 1824]
 mov rsi, qword ptr [rbp + 1832]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n2_α
 cmp eax, 0
 jne xchain0_n2_α
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1864], rax
 jmp xchain0_n35_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n29_α:
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 mov rdx, qword ptr [rbp + 464]
 mov rcx, qword ptr [rbp + 472]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n30_α
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain0_n36_α
# IR_VAR_REF
 xchain0_n30_α:
 mov rax, 4294967305
 mov rdx, 1879052352
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain0_n37_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n31_α:
 mov rdi, qword ptr [rbp + 816]
 mov rsi, qword ptr [rbp + 824]
 mov rdx, qword ptr [rbp + 848]
 mov rcx, qword ptr [rbp + 856]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n9_af
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain0_n38_α
# IR_UNOP
 xchain0_n32_α:
 mov eax, dword ptr [rbp + 1120]
 cmp eax, 99
 je xchain0_n9_af
 cmp eax, 0
 je xchain0_n9_af
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1096], rax
 jmp xchain0_n18_α
# IR_LIT_STRING
 xchain0_n33_α:
 mov qword ptr [rbp + 1536], 1
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [rbp + 1544], rax
 jmp xchain0_n39_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "global"
# IR_VAR
 xchain0_n34_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1272], rax
 jmp xchain0_n40_α
 xchain0_n35_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn55: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn55]
 lea rsi, [rbp + 1920]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n41_α
 xchain0_n35_β:
 jmp xchain0_n2_α
# IR_VAR
 xchain0_n36_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 536], rax
 jmp xchain0_n42_α
# IR_VAR
 xchain0_n37_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 264], rax
 jmp xchain0_n43_α
# IR_LIT_STRING
 xchain0_n38_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain0_n44_α
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
 .string "global"
# IR_SUBSCRIPT x[i] variable
 xchain0_n39_α:
 mov rdi, qword ptr [rbp + 1504]
 mov rsi, qword ptr [rbp + 1512]
 mov rdx, qword ptr [rbp + 1536]
 mov rcx, qword ptr [rbp + 1544]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n27_α
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain0_n45_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n40_α:
 mov rdi, qword ptr [rbp + 1232]
 mov rsi, qword ptr [rbp + 1240]
 mov rdx, qword ptr [rbp + 1264]
 mov rcx, qword ptr [rbp + 1272]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain0_n46_α
# IR_ASSIGN_VAR
 xchain0_n41_α:
 mov rdi, qword ptr [rbp + 1856]
 mov rsi, qword ptr [rbp + 1864]
 mov rdx, qword ptr [rbp + 1904]
 mov rcx, qword ptr [rbp + 1912]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n2_α
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain0_n2_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n42_α:
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n30_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain0_n47_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n43_α:
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 256]
 mov rcx, qword ptr [rbp + 264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain0_n48_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n44_α:
 mov rdi, qword ptr [rbp + 880]
 mov rsi, qword ptr [rbp + 888]
 mov rdx, qword ptr [rbp + 912]
 mov rcx, qword ptr [rbp + 920]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n9_af
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain0_n49_α
# IR_NULLTEST_VAR
 xchain0_n45_α:
 mov eax, dword ptr [rbp + 1568]
 cmp eax, 99
 je xchain0_n27_α
 mov rdi, qword ptr [rbp + 1568]
 mov rsi, qword ptr [rbp + 1576]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n27_α
 cmp eax, 0
 jne xchain0_n27_α
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1608], rax
 jmp xchain0_n50_α
# IR_LIT_STRING
 xchain0_n46_α:
 mov qword ptr [rbp + 1328], 1
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain0_n51_α
.Lx68_0:
 .quad .Lx68_0_s
.Lx68_0_s:
 .string "global"
# IR_NULLTEST_VAR
 xchain0_n47_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain0_n30_α
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n30_α
 cmp eax, 0
 jne xchain0_n30_α
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain0_n52_α
# IR_VAR
 xchain0_n48_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 328], rax
 jmp xchain0_n53_α
# IR_DEREF variable -> value
 xchain0_n49_α:
 mov rdi, qword ptr [rbp + 944]
 mov rsi, qword ptr [rbp + 952]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n9_af
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain0_n19_α
# IR_VAR
 xchain0_n50_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1704], rax
 jmp xchain0_n54_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n51_α:
 mov rdi, qword ptr [rbp + 1296]
 mov rsi, qword ptr [rbp + 1304]
 mov rdx, qword ptr [rbp + 1328]
 mov rcx, qword ptr [rbp + 1336]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain0_n55_α
# IR_VAR
 xchain0_n52_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 696], rax
 jmp xchain0_n56_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n53_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 mov rdx, qword ptr [rbp + 320]
 mov rcx, qword ptr [rbp + 328]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain0_n57_α
# IR_LIT_STRING
 xchain0_n54_α:
 mov qword ptr [rbp + 1728], 1
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [rbp + 1736], rax
 jmp xchain0_n58_α
.Lx79_0:
 .quad .Lx79_0_s
.Lx79_0_s:
 .string "global"
# IR_DEREF variable -> value
 xchain0_n55_α:
 mov rdi, qword ptr [rbp + 1360]
 mov rsi, qword ptr [rbp + 1368]
 call rt_deref@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain0_n59_α
# IR_VAR
 xchain0_n56_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 728], rax
 jmp xchain0_n60_α
# IR_DEREF variable -> value
 xchain0_n57_α:
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 call rt_deref@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain0_n61_α
# IR_MAKE_LIST
 xchain0_n58_α:
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1672], rax
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1688], rax
 lea rdi, [rbp + 1664]
 mov esi, 2
 call rt_make_list@PLT
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain0_n62_α
# IR_VAR
 xchain0_n59_α:
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 1416], rax
 jmp xchain0_n63_α
# IR_MAKE_LIST
 xchain0_n60_α:
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
 jmp xchain0_n64_α
# IR_VAR
 xchain0_n61_α:
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 408], rax
 jmp xchain0_n65_α
# IR_ASSIGN_VAR
 xchain0_n62_α:
 mov rdi, qword ptr [rbp + 1600]
 mov rsi, qword ptr [rbp + 1608]
 mov rdx, qword ptr [rbp + 1648]
 mov rcx, qword ptr [rbp + 1656]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n27_α
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain0_n27_α
 xchain0_n63_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1392] -> [zr+1184]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1192], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1200]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1208], rax
  .section .rodata
  .Lrkfn94: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn94]
 lea rsi, [rbp + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je proc_addword_ω
 jmp xchain0_n12_α
 xchain0_n63_β:
 jmp proc_addword_ω
# IR_ASSIGN_VAR
 xchain0_n64_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n30_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain0_n30_α
 xchain0_n65_α:
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
  .Lrkfn97: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn97]
 lea rsi, [rbp + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je proc_addword_ω
 jmp xchain0_n11_α
 xchain0_n65_β:
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
proc_addword_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 2224
 mov qword ptr [rsp + 2216], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 2176], r11
 lea rax, [rip + .Lx98_2]
 mov qword ptr [rbp + 2184], rax
 lea rax, [rip + .Lx98_3]
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2168], rbp
 mov qword ptr [rbp + 16], rsi
 mov qword ptr [rbp + 24], rdx
 mov qword ptr [rbp + 32], rcx
 mov rdi, rbp
 mov esi, 2160
 mov edx, 2176
 mov ecx, 3
 mov r8d, 3
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_addword_α_body
.Lx98_2:
 mov rdx, qword ptr [rsp + -2224]
 mov rcx, rsp
 add rcx, -2208
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx98_3:
 mov rdi, qword ptr [rsp + -2224]
 mov rsi, rsp
 add rsi, -2208
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 4728], rsp
  mov rdi, rsp
  mov esi, 4720
  mov edx, 4768
  call rt_jmp_frame_lexprep2@PLT
proc_getword_α_body:
# IR_DISJUNCTION_NARY
 xchain99_n0_α:
 mov qword ptr [rbp + 4496], 0
 mov qword ptr [rbp + 4504], 0
 mov dword ptr [rbp + 4512], 0
 jmp xchain99_n2_α
xchain99_n0_as:
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 0
 jne .Lx00001_0
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 4496], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 4504], rax
 jmp xchain99_n1_α
.Lx00001_0:
 jmp xchain99_n1_α
 xchain99_n0_β:
 mov eax, dword ptr [rbp + 4512]
 jmp xchain99_n1_α
xchain99_n0_af:
 add dword ptr [rbp + 4512], 1
 mov eax, dword ptr [rbp + 4512]
 jmp xchain99_n1_α
# IR_DISJUNCTION_NARY
 xchain99_n1_α:
 mov qword ptr [rbp + 4256], 0
 mov qword ptr [rbp + 4264], 0
 mov dword ptr [rbp + 4272], 0
 jmp xchain99_n5_α
xchain99_n1_as:
 mov eax, dword ptr [rbp + 4272]
 cmp eax, 0
 jne .Lx00002_0
 jmp xchain99_n4_α
.Lx00002_0:
 jmp xchain99_n4_α
 xchain99_n1_β:
 mov eax, dword ptr [rbp + 4272]
 jmp xchain99_n4_α
xchain99_n1_af:
 add dword ptr [rbp + 4272], 1
 mov eax, dword ptr [rbp + 4272]
 jmp xchain99_n4_α
# IR_VAR_REF
 xchain99_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052592
 mov qword ptr [rbp + 4608], rax
 mov qword ptr [rbp + 4616], rdx
 jmp xchain99_n6_α
 xchain99_n2_β:
 jmp xchain99_n0_af
# IR_ASSIGN gva
 xchain99_n3_α:
 mov rax, qword ptr [rbp + 4544]
 mov rdx, qword ptr [rbp + 4552]
 mov qword ptr [1879052576], rax
 mov qword ptr [1879052584], rdx
 mov qword ptr [rbp + 4528], rax
 mov qword ptr [rbp + 4536], rdx
 jmp xchain99_n0_as
 xchain99_n3_β:
 jmp xchain99_n1_α
# IR_DISJUNCTION_NARY
 xchain99_n4_α:
 mov qword ptr [rbp + 3568], 0
 mov qword ptr [rbp + 3576], 0
 mov dword ptr [rbp + 3584], 0
 jmp xchain99_n8_α
xchain99_n4_as:
 mov eax, dword ptr [rbp + 3584]
 cmp eax, 0
 jne .Lx00003_0
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 3568], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 3576], rax
 jmp xchain99_n7_α
.Lx00003_0:
 jmp xchain99_n7_α
 xchain99_n4_β:
 mov eax, dword ptr [rbp + 3584]
 jmp xchain99_n9_β
xchain99_n4_af:
 add dword ptr [rbp + 3584], 1
 mov eax, dword ptr [rbp + 3584]
 jmp xchain99_n7_α
# IR_VAR
 xchain99_n5_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 jmp xchain99_n10_α
 xchain99_n5_β:
 jmp xchain99_n1_af
# IR_NULLTEST_VAR
 xchain99_n6_α:
 mov eax, dword ptr [rbp + 4608]
 cmp eax, 99
 je xchain99_n0_af
 mov rdi, qword ptr [rbp + 4608]
 mov rsi, qword ptr [rbp + 4616]
 call rt_deref@PLT
 cmp eax, 99
 je xchain99_n0_af
 cmp eax, 0
 jne xchain99_n0_af
 mov rax, qword ptr [rbp + 4608]
 mov qword ptr [rbp + 4640], rax
 mov rax, qword ptr [rbp + 4616]
 mov qword ptr [rbp + 4648], rax
 jmp xchain99_n11_α
# IR_DISJUNCTION_NARY
 xchain99_n7_α:
 mov qword ptr [rbp + 32], 0
 mov qword ptr [rbp + 40], 0
 mov dword ptr [rbp + 48], 0
 jmp xchain99_n13_α
xchain99_n7_as:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 jne .Lx00004_0
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 40], rax
 jmp xchain99_n12_α
.Lx00004_0:
 cmp eax, 1
 jne .Lx00004_1
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 40], rax
 jmp xchain99_n12_α
.Lx00004_1:
 jmp xchain99_n12_α
 xchain99_n7_β:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 je xchain99_n14_β
 jmp xchain99_n1_α
xchain99_n7_af:
 add dword ptr [rbp + 48], 1
 mov eax, dword ptr [rbp + 48]
 cmp eax, 1
 je xchain99_n15_α
 jmp xchain99_n1_α
# IR_DISJUNCTION_NARY
 xchain99_n8_α:
 mov qword ptr [rbp + 3936], 0
 mov qword ptr [rbp + 3944], 0
 mov dword ptr [rbp + 3952], 0
 jmp xchain99_n18_α
xchain99_n8_as:
 mov eax, dword ptr [rbp + 3952]
 cmp eax, 0
 jne .Lx00005_0
 mov rax, qword ptr [rbp + 3968]
 mov qword ptr [rbp + 3936], rax
 mov rax, qword ptr [rbp + 3976]
 mov qword ptr [rbp + 3944], rax
 jmp xchain99_n9_α
.Lx00005_0:
 cmp eax, 1
 jne .Lx00005_1
 mov rax, qword ptr [rbp + 4032]
 mov qword ptr [rbp + 3936], rax
 mov rax, qword ptr [rbp + 4040]
 mov qword ptr [rbp + 3944], rax
 jmp xchain99_n9_α
.Lx00005_1:
 jmp xchain99_n9_α
 xchain99_n8_β:
 mov eax, dword ptr [rbp + 3952]
 cmp eax, 0
 je xchain99_n8_af
 jmp xchain99_n8_af
xchain99_n8_af:
 add dword ptr [rbp + 3952], 1
 mov eax, dword ptr [rbp + 3952]
 cmp eax, 1
 je xchain99_n19_α
 jmp xchain99_n4_af
# IR_DISJUNCTION_NARY
 xchain99_n9_α:
 mov qword ptr [rbp + 3600], 0
 mov qword ptr [rbp + 3608], 0
 mov dword ptr [rbp + 3616], 0
 jmp xchain99_n22_α
xchain99_n9_as:
 mov eax, dword ptr [rbp + 3616]
 cmp eax, 0
 jne .Lx00006_0
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 3608], rax
 jmp xchain99_n4_as
.Lx00006_0:
 cmp eax, 1
 jne .Lx00006_1
 jmp xchain99_n4_as
.Lx00006_1:
 jmp xchain99_n4_as
 xchain99_n9_β:
 mov eax, dword ptr [rbp + 3616]
 cmp eax, 0
 je xchain99_n7_α
 jmp xchain99_n7_α
xchain99_n9_af:
 add dword ptr [rbp + 3616], 1
 mov eax, dword ptr [rbp + 3616]
 cmp eax, 1
 je proc_getword_ω
 jmp xchain99_n7_α
# IR_UNOP
 xchain99_n10_α:
 mov rdi, qword ptr [rbp + 4432]
 mov rsi, qword ptr [rbp + 4440]
 call rt_size_d@PLT
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 jmp xchain99_n24_α
# IR_LIT_INTEGER
 xchain99_n11_α:
 mov qword ptr [rbp + 4688], 6
 mov rax, qword ptr [rip + .Lx00007_0]
 mov qword ptr [rbp + 4696], rax
 jmp xchain99_n25_α
.Lx00007_0:
 .quad 1
 xchain99_n12_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 16], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 24], rax
 jmp xchain99_n1_α
xchain99_n12_β:
 jmp xchain99_n1_α
# IR_VAR
 xchain99_n13_α:
 mov rax, qword ptr [1879052576]
 mov rdx, qword ptr [1879052584]
 mov qword ptr [rbp + 3296], rax
 mov qword ptr [rbp + 3304], rdx
 jmp xchain99_n26_α
 xchain99_n13_β:
 jmp xchain99_n7_af
# IR_DISJUNCTION_NARY
 xchain99_n14_α:
 mov qword ptr [rbp + 80], 0
 mov qword ptr [rbp + 88], 0
 mov dword ptr [rbp + 96], 0
 jmp xchain99_n27_α
xchain99_n14_as:
 mov eax, dword ptr [rbp + 96]
 cmp eax, 0
 jne .Lx00008_0
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 88], rax
 jmp xchain99_n16_α
.Lx00008_0:
 cmp eax, 1
 jne .Lx00008_1
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 88], rax
 jmp xchain99_n16_α
.Lx00008_1:
 jmp xchain99_n16_α
 xchain99_n14_β:
 mov eax, dword ptr [rbp + 96]
 cmp eax, 0
 je xchain99_n28_β
 jmp xchain99_n29_β
xchain99_n14_af:
 add dword ptr [rbp + 96], 1
 mov eax, dword ptr [rbp + 96]
 cmp eax, 1
 je xchain99_n29_α
 jmp xchain99_n1_α
# IR_VAR
 xchain99_n15_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 jmp xchain99_n30_α
 xchain99_n15_β:
 jmp xchain99_n1_α
 xchain99_n16_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 72], rax
 jmp xchain99_n7_as
xchain99_n16_β:
 jmp xchain99_n1_α
# IR_ASSIGN gva
 xchain99_n17_α:
 mov rax, qword ptr [rbp + 3408]
 mov rdx, qword ptr [rbp + 3416]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 jmp xchain99_n7_as
 xchain99_n17_β:
 jmp xchain99_n1_α
# IR_VAR
 xchain99_n18_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 jmp xchain99_n20_α
 xchain99_n18_β:
 jmp xchain99_n8_af
# IR_VAR
 xchain99_n19_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 4064], rax
 mov qword ptr [rbp + 4072], rdx
 jmp xchain99_n31_α
 xchain99_n19_β:
 jmp xchain99_n8_af
# IR_UNOP
 xchain99_n20_α:
 mov eax, dword ptr [rbp + 4000]
 cmp eax, 99
 je xchain99_n8_af
 cmp eax, 0
 jne xchain99_n8_af
 mov qword ptr [rbp + 3968], 0
 mov qword ptr [rbp + 3976], 0
 jmp xchain99_n8_as
 xchain99_n20_β:
 jmp xchain99_n8_af
 xchain99_n21_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 4064]
 cmp eax, 100
 je .Lx00009_0
 mov eax, dword ptr [rbp + 4096]
 cmp eax, 100
 je .Lx00009_0
 mov eax, dword ptr [rbp + 4064]
 cmp eax, 6
 jne .Lx00009_2
 mov eax, dword ptr [rbp + 4096]
 cmp eax, 6
 jne .Lx00009_2
.Lx00009_1:
 mov rax, qword ptr [rbp + 4072]
 mov rcx, qword ptr [rbp + 4104]
 cmp rax, rcx
 jne xchain99_n8_af
 mov rcx, qword ptr [rbp + 4096]
 mov qword ptr [rbp + 4032], rcx
 mov rcx, qword ptr [rbp + 4104]
 mov qword ptr [rbp + 4040], rcx
 jmp xchain99_n8_as
.Lx00009_0:
 mov rdi, qword ptr [rbp + 4064]
 mov rsi, qword ptr [rbp + 4072]
 mov rdx, qword ptr [rbp + 4096]
 mov rcx, qword ptr [rbp + 4104]
 mov r8d, 9
 lea r9, [rbp + 4032]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00009_1
 cmp eax, 1
 je xchain99_n8_af
 jmp xchain99_n8_as
.Lx00009_2:
 mov rdi, qword ptr [rbp + 4064]
 mov rsi, qword ptr [rbp + 4072]
 mov rdx, qword ptr [rbp + 4096]
 mov rcx, qword ptr [rbp + 4104]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain99_n8_af
 mov rax, qword ptr [rbp + 4096]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 4104]
 mov qword ptr [rbp + 4040], rax
 jmp xchain99_n8_as
 xchain99_n21_β:
 jmp xchain99_n8_af
# IR_VAR
 xchain99_n22_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 jmp xchain99_n32_α
 xchain99_n22_β:
 jmp xchain99_n9_af
 xchain99_n23_α:
 jmp xchain99_n9_as
xchain99_n23_β:
 jmp xchain99_n7_α
# IR_LIT_INTEGER
 xchain99_n24_α:
 mov qword ptr [rbp + 4464], 6
 mov rax, qword ptr [rip + .Lx00010_0]
 mov qword ptr [rbp + 4472], rax
 jmp xchain99_n33_α
.Lx00010_0:
 .quad 0
# IR_ASSIGN_VAR
 xchain99_n25_α:
 mov rdi, qword ptr [rbp + 4640]
 mov rsi, qword ptr [rbp + 4648]
 mov rdx, qword ptr [rbp + 4688]
 mov rcx, qword ptr [rbp + 4696]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain99_n0_af
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 jmp xchain99_n34_α
# IR_VAR
 xchain99_n26_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 jmp xchain99_n35_α
# IR_VAR_REF
 xchain99_n27_α:
 mov rax, 4294967305
 mov rdx, 1879052496
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain99_n36_α
 xchain99_n27_β:
 jmp xchain99_n14_af
# IR_DISJUNCTION_NARY
 xchain99_n28_α:
 mov qword ptr [rbp + 112], 0
 mov qword ptr [rbp + 120], 0
 mov dword ptr [rbp + 128], 0
 jmp xchain99_n37_α
xchain99_n28_as:
 mov eax, dword ptr [rbp + 128]
 cmp eax, 0
 jne .Lx00011_0
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 120], rax
 jmp xchain99_n14_as
.Lx00011_0:
 cmp eax, 1
 jne .Lx00011_1
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 120], rax
 jmp xchain99_n14_as
.Lx00011_1:
 jmp xchain99_n14_as
 xchain99_n28_β:
 mov eax, dword ptr [rbp + 128]
 cmp eax, 0
 je xchain99_n38_β
 jmp xchain99_n1_α
xchain99_n28_af:
 add dword ptr [rbp + 128], 1
 mov eax, dword ptr [rbp + 128]
 cmp eax, 1
 je xchain99_n39_α
 jmp xchain99_n1_α
# IR_DISJUNCTION_NARY
 xchain99_n29_α:
 mov qword ptr [rbp + 2048], 0
 mov qword ptr [rbp + 2056], 0
 mov dword ptr [rbp + 2064], 0
 jmp xchain99_n41_α
xchain99_n29_as:
 mov eax, dword ptr [rbp + 2064]
 cmp eax, 0
 jne .Lx00012_0
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2056], rax
 jmp xchain99_n14_as
.Lx00012_0:
 cmp eax, 1
 jne .Lx00012_1
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 2056], rax
 jmp xchain99_n14_as
.Lx00012_1:
 jmp xchain99_n14_as
 xchain99_n29_β:
 mov eax, dword ptr [rbp + 2064]
 cmp eax, 0
 je xchain99_n1_α
 jmp xchain99_n42_β
xchain99_n29_af:
 add dword ptr [rbp + 2064], 1
 mov eax, dword ptr [rbp + 2064]
 cmp eax, 1
 je xchain99_n42_α
 jmp xchain99_n1_α
# IR_UNOP
 xchain99_n30_α:
 mov rdi, qword ptr [rbp + 3504]
 mov rsi, qword ptr [rbp + 3512]
 call rt_size_d@PLT
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 jmp xchain99_n44_α
# IR_VAR
 xchain99_n31_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 jmp xchain99_n45_α
 xchain99_n32_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3904] -> [zr+3872]
 mov rax, qword ptr [rbp + 3904]
 mov qword ptr [rbp + 3872], rax
 mov rax, qword ptr [rbp + 3912]
 mov qword ptr [rbp + 3880], rax
  .section .rodata
  .Lrkfn144: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn144]
 lea rsi, [rbp + 3872]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 cmp eax, 99
 je xchain99_n9_af
 jmp xchain99_n46_α
 xchain99_n32_β:
 jmp xchain99_n9_af
 xchain99_n33_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 4400]
 cmp eax, 100
 je .Lx00013_0
 mov eax, dword ptr [rbp + 4464]
 cmp eax, 100
 je .Lx00013_0
 mov eax, dword ptr [rbp + 4400]
 cmp eax, 6
 jne .Lx00013_2
 mov eax, dword ptr [rbp + 4464]
 cmp eax, 6
 jne .Lx00013_2
.Lx00013_1:
 mov rax, qword ptr [rbp + 4408]
 mov rcx, qword ptr [rbp + 4472]
 cmp rax, rcx
 jle xchain99_n1_af
 mov rcx, qword ptr [rbp + 4464]
 mov qword ptr [rbp + 4368], rcx
 mov rcx, qword ptr [rbp + 4472]
 mov qword ptr [rbp + 4376], rcx
 jmp xchain99_n47_α
.Lx00013_0:
 mov rdi, qword ptr [rbp + 4400]
 mov rsi, qword ptr [rbp + 4408]
 mov rdx, qword ptr [rbp + 4464]
 mov rcx, qword ptr [rbp + 4472]
 mov r8d, 7
 lea r9, [rbp + 4368]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00013_1
 cmp eax, 1
 je xchain99_n1_af
 jmp xchain99_n47_α
.Lx00013_2:
 mov rdi, qword ptr [rbp + 4400]
 mov rsi, qword ptr [rbp + 4408]
 mov rdx, qword ptr [rbp + 4464]
 mov rcx, qword ptr [rbp + 4472]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain99_n1_af
 mov rax, qword ptr [rbp + 4464]
 mov qword ptr [rbp + 4368], rax
 mov rax, qword ptr [rbp + 4472]
 mov qword ptr [rbp + 4376], rax
 jmp xchain99_n47_α
# IR_LIT_CHARSET
 xchain99_n34_α:
 mov qword ptr [rbp + 4576], 1
 mov dword ptr [rbp + 4580], -1
 mov rax, qword ptr [rip + .Lx00014_0]
 mov qword ptr [rbp + 4584], rax
 jmp xchain99_n48_α
.Lx00014_0:
 .quad .Lx00014_0_s
.Lx00014_0_s:
 .string "\t\n "
# IR_VAR
 xchain99_n35_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain99_n49_α
# IR_VAR
 xchain99_n36_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain99_n50_α
# IR_VAR
 xchain99_n37_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain99_n51_α
 xchain99_n37_β:
 jmp xchain99_n28_af
 xchain99_n38_α:
 jmp xchain99_n28_as
xchain99_n38_β:
 jmp xchain99_n1_α
# IR_VAR
 xchain99_n39_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain99_n52_α
 xchain99_n39_β:
 jmp xchain99_n1_α
# IR_ASSIGN gva
 xchain99_n40_α:
 mov rax, qword ptr [rbp + 1680]
 mov rdx, qword ptr [rbp + 1688]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain99_n28_as
 xchain99_n40_β:
 jmp xchain99_n1_α
# IR_VAR_REF
 xchain99_n41_α:
 mov rax, 4294967305
 mov rdx, 1879052496
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain99_n53_α
 xchain99_n41_β:
 jmp xchain99_n29_af
# IR_DISJUNCTION_NARY
 xchain99_n42_α:
 mov qword ptr [rbp + 2432], 0
 mov qword ptr [rbp + 2440], 0
 mov dword ptr [rbp + 2448], 0
 jmp xchain99_n54_α
xchain99_n42_as:
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 0
 jne .Lx00015_0
 jmp xchain99_n29_as
.Lx00015_0:
 cmp eax, 1
 jne .Lx00015_1
 jmp xchain99_n29_as
.Lx00015_1:
 jmp xchain99_n29_as
 xchain99_n42_β:
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 0
 je xchain99_n1_α
 jmp xchain99_n1_α
xchain99_n42_af:
 add dword ptr [rbp + 2448], 1
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 1
 je xchain99_n55_α
 jmp xchain99_n1_α
# IR_ASSIGN gva
 xchain99_n43_α:
 mov rax, qword ptr [rbp + 2096]
 mov rdx, qword ptr [rbp + 2104]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain99_n29_as
 xchain99_n43_β:
 jmp xchain99_n1_α
# IR_LIT_INTEGER
 xchain99_n44_α:
 mov qword ptr [rbp + 3536], 6
 mov rax, qword ptr [rip + .Lx00016_0]
 mov qword ptr [rbp + 3544], rax
 jmp xchain99_n57_α
.Lx00016_0:
 .quad 1
# IR_UNOP
 xchain99_n45_α:
 mov rdi, qword ptr [rbp + 4192]
 mov rsi, qword ptr [rbp + 4200]
 call rt_size_d@PLT
 mov qword ptr [rbp + 4160], rax
 mov qword ptr [rbp + 4168], rdx
 jmp xchain99_n58_α
# IR_ASSIGN gva
 xchain99_n46_α:
 mov rax, qword ptr [rbp + 3856]
 mov rdx, qword ptr [rbp + 3864]
 mov qword ptr [1879052496], rax
 mov qword ptr [1879052504], rdx
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 jmp xchain99_n59_α
# IR_VAR
 xchain99_n47_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 jmp xchain99_n60_α
# IR_UNOP
 xchain99_n48_α:
 mov rdi, qword ptr [rbp + 4576]
 mov rsi, qword ptr [rbp + 4584]
 call rt_cset_compl@PLT
 mov qword ptr [rbp + 4544], rax
 mov qword ptr [rbp + 4552], rdx
 jmp xchain99_n3_α
 xchain99_n49_α:
# BOX CALL_GEN upto(...) -> rt_call_arr_gen by-name [four-port generator; alpha zeroes resume cell, beta re-pumps invoke with persisted cell]
# marshal arg0 = producer-box slot [zr+3296] -> [zr+3232]
 mov rax, qword ptr [rbp + 3296]
 mov qword ptr [rbp + 3232], rax
 mov rax, qword ptr [rbp + 3304]
 mov qword ptr [rbp + 3240], rax
# marshal arg1 = producer-box slot [zr+3328] -> [zr+3248]
 mov rax, qword ptr [rbp + 3328]
 mov qword ptr [rbp + 3248], rax
 mov rax, qword ptr [rbp + 3336]
 mov qword ptr [rbp + 3256], rax
# marshal arg2 = producer-box slot [zr+3360] -> [zr+3264]
 mov rax, qword ptr [rbp + 3360]
 mov qword ptr [rbp + 3264], rax
 mov rax, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 3272], rax
 mov qword ptr [rbp + 3280], 0
 mov rdi, r14
 call rt_scan_sync_out@PLT
.Lx00017_60:
  .section .rodata
  .Lbynamegenfn116: .string "upto"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn116]
 lea rsi, [rbp + 3232]
 mov edx, 3
 lea rcx, [rbp + 3280]
 call rt_call_arr_gen@PLT
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 cmp eax, 99
 je xchain99_n7_af
 jmp xchain99_n61_α
 xchain99_n49_β:
 jmp .Lx00017_60
# IR_SUBSCRIPT x[i] variable
 xchain99_n50_α:
 mov rdi, qword ptr [rbp + 1840]
 mov rsi, qword ptr [rbp + 1848]
 mov rdx, qword ptr [rbp + 1872]
 mov rcx, qword ptr [rbp + 1880]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain99_n14_af
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 jmp xchain99_n62_α
# IR_UNOP
 xchain99_n51_α:
 mov eax, dword ptr [rbp + 1632]
 cmp eax, 99
 je xchain99_n28_af
 cmp eax, 0
 jne xchain99_n28_af
 mov qword ptr [rbp + 1600], 0
 mov qword ptr [rbp + 1608], 0
 jmp xchain99_n63_α
# IR_LIT_INTEGER
 xchain99_n52_α:
 mov qword ptr [rbp + 1776], 6
 mov rax, qword ptr [rip + .Lx00018_0]
 mov qword ptr [rbp + 1784], rax
 jmp xchain99_n64_α
.Lx00018_0:
 .quad 1
# IR_VAR
 xchain99_n53_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain99_n65_α
# IR_VAR
 xchain99_n54_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 jmp xchain99_n66_α
 xchain99_n54_β:
 jmp xchain99_n42_af
# IR_VAR
 xchain99_n55_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain99_n67_α
 xchain99_n55_β:
 jmp xchain99_n68_α
 xchain99_n56_α:
 jmp xchain99_n42_as
xchain99_n56_β:
 jmp xchain99_n1_α
# IR_COERCE_NUMERIC
 xchain99_n57_α:
 mov eax, dword ptr [rbp + 3472]
 cmp eax, 7
 je .Lx00019_1
 cmp eax, 6
 jne .Lx00019_0
 mov eax, dword ptr [rbp + 3536]
 cmp eax, 6
 jne .Lx00019_0
.Lx00019_1:
 mov rax, qword ptr [rbp + 3472]
 mov qword ptr [rbp + 3440], rax
 mov rax, qword ptr [rbp + 3480]
 mov qword ptr [rbp + 3448], rax
 jmp xchain99_n69_α
.Lx00019_0:
 lea rdi, [rbp + 3472]
 lea rsi, [rbp + 3536]
 lea rdx, [rbp + 3440]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain99_n69_α
# IR_LIT_INTEGER
 xchain99_n58_α:
 mov qword ptr [rbp + 4224], 6
 mov rax, qword ptr [rip + .Lx00020_0]
 mov qword ptr [rbp + 4232], rax
 jmp xchain99_n70_α
.Lx00020_0:
 .quad 1
# IR_LIT_INTEGER
 xchain99_n59_α:
 mov qword ptr [rbp + 3808], 6
 mov rax, qword ptr [rip + .Lx00021_0]
 mov qword ptr [rbp + 3816], rax
 jmp xchain99_n71_α
.Lx00021_0:
 .quad 1
 xchain99_n60_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4336] -> [zr+4304]
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [rbp + 4304], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [rbp + 4312], rax
  .section .rodata
  .Lrkfn176: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn176]
 lea rsi, [rbp + 4304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 cmp eax, 99
 je proc_getword_ω
 jmp xchain99_n72_α
 xchain99_n60_β:
 jmp proc_getword_ω
# IR_ASSIGN gva
 xchain99_n61_α:
 mov rax, qword ptr [rbp + 3216]
 mov rdx, qword ptr [rbp + 3224]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 jmp xchain99_n73_α
# IR_DEREF variable -> value
 xchain99_n62_α:
 mov rdi, qword ptr [rbp + 1904]
 mov rsi, qword ptr [rbp + 1912]
 call rt_deref@PLT
 cmp eax, 99
 je xchain99_n14_af
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain99_n74_α
# IR_VAR_REF
 xchain99_n63_α:
 mov rax, 4294967305
 mov rdx, 1879052496
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain99_n75_α
# IR_COERCE_NUMERIC
 xchain99_n64_α:
 mov eax, dword ptr [rbp + 1744]
 cmp eax, 7
 je .Lx00022_1
 cmp eax, 6
 jne .Lx00022_0
 mov eax, dword ptr [rbp + 1776]
 cmp eax, 6
 jne .Lx00022_0
.Lx00022_1:
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1720], rax
 jmp xchain99_n76_α
.Lx00022_0:
 lea rdi, [rbp + 1744]
 lea rsi, [rbp + 1776]
 lea rdx, [rbp + 1712]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain99_n76_α
# IR_SUBSCRIPT x[i] variable
 xchain99_n65_α:
 mov rdi, qword ptr [rbp + 2288]
 mov rsi, qword ptr [rbp + 2296]
 mov rdx, qword ptr [rbp + 2320]
 mov rcx, qword ptr [rbp + 2328]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain99_n29_af
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain99_n77_α
# IR_VAR
 xchain99_n66_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 jmp xchain99_n78_α
# IR_LIT_INTEGER
 xchain99_n67_α:
 mov qword ptr [rbp + 3120], 6
 mov rax, qword ptr [rip + .Lx00023_0]
 mov qword ptr [rbp + 3128], rax
 jmp xchain99_n79_α
.Lx00023_0:
 .quad 1
# IR_VAR_REF
 xchain99_n68_α:
 mov rax, 4294967305
 mov rdx, 1879052496
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 jmp xchain99_n80_α
 xchain99_n69_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3440]
 cmp eax, 100
 je .Lx00024_0
 mov eax, dword ptr [rbp + 3440]
 cmp eax, 6
 jne .Lx00024_2
.Lx00024_1:
 mov rax, qword ptr [rbp + 3448]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 3408], 6
 mov qword ptr [rbp + 3416], rax
 jmp xchain99_n17_α
.Lx00024_0:
 mov rdi, qword ptr [rbp + 3440]
 mov rsi, qword ptr [rbp + 3448]
 mov rdx, qword ptr [rbp + 3536]
 mov rcx, qword ptr [rbp + 3544]
 mov r8d, 0
 lea r9, [rbp + 3408]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain99_n17_α
.Lx00024_2:
 mov rdi, qword ptr [rbp + 3440]
 mov rsi, qword ptr [rbp + 3448]
 mov rdx, qword ptr [rbp + 3536]
 mov rcx, qword ptr [rbp + 3544]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain99_n1_α
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 jmp xchain99_n17_α
 xchain99_n69_β:
 jmp xchain99_n1_α
# IR_COERCE_NUMERIC
 xchain99_n70_α:
 mov eax, dword ptr [rbp + 4160]
 cmp eax, 7
 je .Lx00025_1
 cmp eax, 6
 jne .Lx00025_0
 mov eax, dword ptr [rbp + 4224]
 cmp eax, 6
 jne .Lx00025_0
.Lx00025_1:
 mov rax, qword ptr [rbp + 4160]
 mov qword ptr [rbp + 4128], rax
 mov rax, qword ptr [rbp + 4168]
 mov qword ptr [rbp + 4136], rax
 jmp xchain99_n81_α
.Lx00025_0:
 lea rdi, [rbp + 4160]
 lea rsi, [rbp + 4224]
 lea rdx, [rbp + 4128]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain99_n81_α
# IR_ASSIGN gva
 xchain99_n71_α:
 mov rax, qword ptr [rbp + 3808]
 mov rdx, qword ptr [rbp + 3816]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 jmp xchain99_n82_α
# IR_RETURN
 xchain99_n72_α:
 mov rax, qword ptr [rbp + 4288]
 mov rdx, qword ptr [rbp + 4296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_getword_γ
# IR_VAR
 xchain99_n73_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 jmp xchain99_n83_α
# IR_DISJUNCTION_NARY
 xchain99_n74_α:
 mov qword ptr [rbp + 1952], 0
 mov qword ptr [rbp + 1960], 0
 mov dword ptr [rbp + 1968], 0
 jmp xchain99_n85_α
xchain99_n74_as:
 mov eax, dword ptr [rbp + 1968]
 cmp eax, 0
 jne .Lx00026_0
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1960], rax
 jmp xchain99_n84_α
.Lx00026_0:
 cmp eax, 1
 jne .Lx00026_1
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1960], rax
 jmp xchain99_n84_α
.Lx00026_1:
 jmp xchain99_n84_α
 xchain99_n74_β:
 mov eax, dword ptr [rbp + 1968]
 cmp eax, 0
 je xchain99_n74_af
 jmp xchain99_n74_af
xchain99_n74_af:
 add dword ptr [rbp + 1968], 1
 mov eax, dword ptr [rbp + 1968]
 cmp eax, 1
 je xchain99_n86_α
 jmp xchain99_n14_af
# IR_VAR
 xchain99_n75_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain99_n87_α
 xchain99_n76_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1712]
 cmp eax, 100
 je .Lx00027_0
 mov eax, dword ptr [rbp + 1712]
 cmp eax, 6
 jne .Lx00027_2
.Lx00027_1:
 mov rax, qword ptr [rbp + 1720]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 1680], 6
 mov qword ptr [rbp + 1688], rax
 jmp xchain99_n40_α
.Lx00027_0:
 mov rdi, qword ptr [rbp + 1712]
 mov rsi, qword ptr [rbp + 1720]
 mov rdx, qword ptr [rbp + 1776]
 mov rcx, qword ptr [rbp + 1784]
 mov r8d, 0
 lea r9, [rbp + 1680]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain99_n40_α
.Lx00027_2:
 mov rdi, qword ptr [rbp + 1712]
 mov rsi, qword ptr [rbp + 1720]
 mov rdx, qword ptr [rbp + 1776]
 mov rcx, qword ptr [rbp + 1784]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain99_n1_α
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain99_n40_α
 xchain99_n76_β:
 jmp xchain99_n1_α
# IR_DEREF variable -> value
 xchain99_n77_α:
 mov rdi, qword ptr [rbp + 2352]
 mov rsi, qword ptr [rbp + 2360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain99_n29_af
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 jmp xchain99_n89_α
# IR_VAR
 xchain99_n78_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain99_n90_α
# IR_COERCE_NUMERIC
 xchain99_n79_α:
 mov eax, dword ptr [rbp + 3088]
 cmp eax, 7
 je .Lx00028_1
 cmp eax, 6
 jne .Lx00028_0
 mov eax, dword ptr [rbp + 3120]
 cmp eax, 6
 jne .Lx00028_0
.Lx00028_1:
 mov rax, qword ptr [rbp + 3088]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 3096]
 mov qword ptr [rbp + 3064], rax
 jmp xchain99_n91_α
.Lx00028_0:
 lea rdi, [rbp + 3088]
 lea rsi, [rbp + 3120]
 lea rdx, [rbp + 3056]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain99_n91_α
# IR_VAR
 xchain99_n80_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain99_n92_α
 xchain99_n81_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 4128]
 cmp eax, 100
 je .Lx00029_0
 mov eax, dword ptr [rbp + 4128]
 cmp eax, 6
 jne .Lx00029_2
.Lx00029_1:
 mov rax, qword ptr [rbp + 4136]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 4096], 6
 mov qword ptr [rbp + 4104], rax
 jmp xchain99_n21_α
.Lx00029_0:
 mov rdi, qword ptr [rbp + 4128]
 mov rsi, qword ptr [rbp + 4136]
 mov rdx, qword ptr [rbp + 4224]
 mov rcx, qword ptr [rbp + 4232]
 mov r8d, 0
 lea r9, [rbp + 4096]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain99_n21_α
.Lx00029_2:
 mov rdi, qword ptr [rbp + 4128]
 mov rsi, qword ptr [rbp + 4136]
 mov rdx, qword ptr [rbp + 4224]
 mov rcx, qword ptr [rbp + 4232]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain99_n8_af
 mov qword ptr [rbp + 4096], rax
 mov qword ptr [rbp + 4104], rdx
 jmp xchain99_n21_α
 xchain99_n81_β:
 jmp xchain99_n8_af
# IR_VAR
 xchain99_n82_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 3728], rax
 mov qword ptr [rbp + 3736], rdx
 jmp xchain99_n93_α
 xchain99_n83_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3168]
 mov rdx, qword ptr [rbp + 3176]
 mov qword ptr [rbp + 4752], rax
 mov qword ptr [rbp + 4760], rdx
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 jmp xchain99_n14_α
 xchain99_n84_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 1936]
 mov rsi, qword ptr [rbp + 1944]
 mov rdx, qword ptr [rbp + 1952]
 mov rcx, qword ptr [rbp + 1960]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain99_n74_β
 mov rdi, qword ptr [rbp + 1952]
 mov rsi, qword ptr [rbp + 1960]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain99_n28_α
# IR_LIT_STRING
 xchain99_n85_α:
 mov qword ptr [rbp + 1984], 1
 mov rax, qword ptr [rip + .Lx00030_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain99_n74_as
 xchain99_n85_β:
 jmp xchain99_n74_af
.Lx00030_0:
 .quad .Lx00030_0_s
.Lx00030_0_s:
 .string "'"
# IR_LIT_STRING
 xchain99_n86_α:
 mov qword ptr [rbp + 2016], 1
 mov rax, qword ptr [rip + .Lx00031_0]
 mov qword ptr [rbp + 2024], rax
 jmp xchain99_n74_as
 xchain99_n86_β:
 jmp xchain99_n74_af
.Lx00031_0:
 .quad .Lx00031_0_s
.Lx00031_0_s:
 .string "\""
# IR_SUBSCRIPT x[i] variable
 xchain99_n87_α:
 mov rdi, qword ptr [rbp + 1488]
 mov rsi, qword ptr [rbp + 1496]
 mov rdx, qword ptr [rbp + 1520]
 mov rcx, qword ptr [rbp + 1528]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain99_n88_α
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain99_n94_α
# IR_VAR
 xchain99_n88_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain99_n95_α
# IR_LIT_STRING
 xchain99_n89_α:
 mov qword ptr [rbp + 2400], 1
 mov rax, qword ptr [rip + .Lx00032_0]
 mov qword ptr [rbp + 2408], rax
 jmp xchain99_n97_α
.Lx00032_0:
 .quad .Lx00032_0_s
.Lx00032_0_s:
 .string "#"
 xchain99_n90_α:
# BOX CALL many(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+2688] -> [zr+2624]
 mov rax, qword ptr [rbp + 2688]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 2632], rax
# marshal arg1 = producer-box slot [zr+2720] -> [zr+2640]
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 2648], rax
# marshal arg2 = producer-box slot [zr+2752] -> [zr+2656]
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2664], rax
 mov rdi, r14
 call rt_scan_sync_out@PLT
  .section .rodata
  .Lbynamefn157: .string "many"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn157]
 lea rsi, [rbp + 2624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 cmp eax, 99
 je xchain99_n42_af
 jmp xchain99_n98_α
 xchain99_n90_β:
 jmp xchain99_n42_af
 xchain99_n91_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3056]
 cmp eax, 100
 je .Lx00033_0
 mov eax, dword ptr [rbp + 3056]
 cmp eax, 6
 jne .Lx00033_2
.Lx00033_1:
 mov rax, qword ptr [rbp + 3064]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 3024], 6
 mov qword ptr [rbp + 3032], rax
 jmp xchain99_n99_α
.Lx00033_0:
 mov rdi, qword ptr [rbp + 3056]
 mov rsi, qword ptr [rbp + 3064]
 mov rdx, qword ptr [rbp + 3120]
 mov rcx, qword ptr [rbp + 3128]
 mov r8d, 0
 lea r9, [rbp + 3024]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain99_n99_α
.Lx00033_2:
 mov rdi, qword ptr [rbp + 3056]
 mov rsi, qword ptr [rbp + 3064]
 mov rdx, qword ptr [rbp + 3120]
 mov rcx, qword ptr [rbp + 3128]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain99_n68_α
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain99_n99_α
 xchain99_n91_β:
 jmp xchain99_n68_α
# IR_LIT_INTEGER
 xchain99_n92_α:
 mov qword ptr [rbp + 2928], 6
 mov rax, qword ptr [rip + .Lx00034_0]
 mov qword ptr [rbp + 2936], rax
 jmp xchain99_n00035_α
.Lx00034_0:
 .quad 1
# IR_LIT_INTEGER
 xchain99_n93_α:
 mov qword ptr [rbp + 3760], 6
 mov rax, qword ptr [rip + .Lx00036_0]
 mov qword ptr [rbp + 3768], rax
 jmp xchain99_n00001_α
.Lx00036_0:
 .quad 1
# IR_DEREF variable -> value
 xchain99_n94_α:
 mov rdi, qword ptr [rbp + 1552]
 mov rsi, qword ptr [rbp + 1560]
 call rt_deref@PLT
 cmp eax, 99
 je xchain99_n88_α
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain99_n00037_α
# IR_LIT_INTEGER
 xchain99_n95_α:
 mov qword ptr [rbp + 1440], 6
 mov rax, qword ptr [rip + .Lx00038_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain99_n00002_α
.Lx00038_0:
 .quad 1
# IR_DISJUNCTION_NARY
 xchain99_n96_α:
 mov qword ptr [rbp + 160], 0
 mov qword ptr [rbp + 168], 0
 mov dword ptr [rbp + 176], 0
 jmp xchain99_n00039_α
xchain99_n96_as:
 mov eax, dword ptr [rbp + 176]
 cmp eax, 0
 jne .Lx00040_0
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
 jmp xchain99_n96_α
.Lx00040_0:
 cmp eax, 1
 jne .Lx00040_1
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 168], rax
 jmp xchain99_n96_α
.Lx00040_1:
 jmp xchain99_n96_α
 xchain99_n96_β:
 mov eax, dword ptr [rbp + 176]
 cmp eax, 0
 je xchain99_n00041_β
 jmp xchain99_n00042_β
xchain99_n96_af:
 add dword ptr [rbp + 176], 1
 mov eax, dword ptr [rbp + 176]
 cmp eax, 1
 je xchain99_n00043_α
 jmp xchain99_n96_α
 xchain99_n97_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 2384]
 mov rsi, qword ptr [rbp + 2392]
 mov rdx, qword ptr [rbp + 2400]
 mov rcx, qword ptr [rbp + 2408]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain99_n29_af
 mov rdi, qword ptr [rbp + 2400]
 mov rsi, qword ptr [rbp + 2408]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain99_n00044_α
# IR_ASSIGN gva
 xchain99_n98_α:
 mov rax, qword ptr [rbp + 2608]
 mov rdx, qword ptr [rbp + 2616]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain99_n00045_α
# IR_ASSIGN gva
 xchain99_n99_α:
 mov rax, qword ptr [rbp + 3024]
 mov rdx, qword ptr [rbp + 3032]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 jmp xchain99_n68_α
# IR_COERCE_NUMERIC
 xchain99_n00035_α:
 mov eax, dword ptr [rbp + 2896]
 cmp eax, 7
 je .Lx00046_1
 cmp eax, 6
 jne .Lx00046_0
 mov eax, dword ptr [rbp + 2928]
 cmp eax, 6
 jne .Lx00046_0
.Lx00046_1:
 mov rax, qword ptr [rbp + 2896]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 2904]
 mov qword ptr [rbp + 2872], rax
 jmp xchain99_n00047_α
.Lx00046_0:
 lea rdi, [rbp + 2896]
 lea rsi, [rbp + 2928]
 lea rdx, [rbp + 2864]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain99_n00047_α
# IR_COERCE_NUMERIC
 xchain99_n00001_α:
 mov eax, dword ptr [rbp + 3728]
 cmp eax, 7
 je .Lx00048_1
 cmp eax, 6
 jne .Lx00048_0
 mov eax, dword ptr [rbp + 3760]
 cmp eax, 6
 jne .Lx00048_0
.Lx00048_1:
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 3696], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 3704], rax
 jmp xchain99_n00004_α
.Lx00048_0:
 lea rdi, [rbp + 3728]
 lea rsi, [rbp + 3760]
 lea rdx, [rbp + 3696]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain99_n00004_α
 xchain99_n00037_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1584]
 mov rdx, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 4736], rax
 mov qword ptr [rbp + 4744], rdx
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain99_n88_α
# IR_COERCE_NUMERIC
 xchain99_n00002_α:
 mov eax, dword ptr [rbp + 1408]
 cmp eax, 7
 je .Lx00049_1
 cmp eax, 6
 jne .Lx00049_0
 mov eax, dword ptr [rbp + 1440]
 cmp eax, 6
 jne .Lx00049_0
.Lx00049_1:
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1384], rax
 jmp xchain99_n00050_α
.Lx00049_0:
 lea rdi, [rbp + 1408]
 lea rsi, [rbp + 1440]
 lea rdx, [rbp + 1376]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain99_n00050_α
# IR_VAR
 xchain99_n00039_α:
 mov rax, qword ptr [rbp + 4736]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 4744]
 mov qword ptr [rbp + 840], rax
 jmp xchain99_n00005_α
 xchain99_n00039_β:
 jmp xchain99_n96_af
# IR_DISJUNCTION_NARY
 xchain99_n00041_α:
 mov qword ptr [rbp + 192], 0
 mov qword ptr [rbp + 200], 0
 mov dword ptr [rbp + 208], 0
 jmp xchain99_n00051_α
xchain99_n00041_as:
 mov eax, dword ptr [rbp + 208]
 cmp eax, 0
 jne .Lx00052_0
 jmp xchain99_n96_as
.Lx00052_0:
 cmp eax, 1
 jne .Lx00052_1
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 200], rax
 jmp xchain99_n96_as
.Lx00052_1:
 jmp xchain99_n96_as
 xchain99_n00041_β:
 mov eax, dword ptr [rbp + 208]
 cmp eax, 0
 je xchain99_n96_α
 jmp xchain99_n96_α
xchain99_n00041_af:
 add dword ptr [rbp + 208], 1
 mov eax, dword ptr [rbp + 208]
 cmp eax, 1
 je xchain99_n00006_α
 jmp xchain99_n96_α
# IR_LIT_INTEGER
 xchain99_n00043_α:
 mov qword ptr [rbp + 1296], 6
 mov rax, qword ptr [rip + .Lx00053_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain99_n00007_α
 xchain99_n00043_β:
 jmp xchain99_n00054_α
.Lx00053_0:
 .quad 1
# IR_DISJUNCTION_NARY
 xchain99_n00042_α:
 mov qword ptr [rbp + 1024], 0
 mov qword ptr [rbp + 1032], 0
 mov dword ptr [rbp + 1040], 0
 jmp xchain99_n00055_α
xchain99_n00042_as:
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 0
 jne .Lx00056_0
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1032], rax
 jmp xchain99_n00057_α
.Lx00056_0:
 cmp eax, 1
 jne .Lx00056_1
 jmp xchain99_n00057_α
.Lx00056_1:
 jmp xchain99_n00057_α
 xchain99_n00042_β:
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 0
 je xchain99_n00042_af
 jmp xchain99_n00042_af
xchain99_n00042_af:
 add dword ptr [rbp + 1040], 1
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 1
 je proc_getword_ω
 jmp xchain99_n96_α
 xchain99_n00003_α:
 jmp xchain99_n96_as
xchain99_n00003_β:
 jmp xchain99_n96_α
# IR_VAR
 xchain99_n00044_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain99_n00008_α
# IR_VAR
 xchain99_n00045_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 jmp xchain99_n00058_α
 xchain99_n00047_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 100
 je .Lx00059_0
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 6
 jne .Lx00059_2
.Lx00059_1:
 mov rax, qword ptr [rbp + 2872]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 2832], 6
 mov qword ptr [rbp + 2840], rax
 jmp xchain99_n00060_α
.Lx00059_0:
 mov rdi, qword ptr [rbp + 2864]
 mov rsi, qword ptr [rbp + 2872]
 mov rdx, qword ptr [rbp + 2928]
 mov rcx, qword ptr [rbp + 2936]
 mov r8d, 1
 lea r9, [rbp + 2832]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain99_n00060_α
.Lx00059_2:
 mov rdi, qword ptr [rbp + 2864]
 mov rsi, qword ptr [rbp + 2872]
 mov rdx, qword ptr [rbp + 2928]
 mov rcx, qword ptr [rbp + 2936]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_getword_ω
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 jmp xchain99_n00060_α
 xchain99_n00047_β:
 jmp proc_getword_ω
 xchain99_n00004_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3696]
 cmp eax, 100
 je .Lx00061_0
 mov eax, dword ptr [rbp + 3696]
 cmp eax, 6
 jne .Lx00061_2
.Lx00061_1:
 mov rax, qword ptr [rbp + 3704]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 3664], 6
 mov qword ptr [rbp + 3672], rax
 jmp xchain99_n00062_α
.Lx00061_0:
 mov rdi, qword ptr [rbp + 3696]
 mov rsi, qword ptr [rbp + 3704]
 mov rdx, qword ptr [rbp + 3760]
 mov rcx, qword ptr [rbp + 3768]
 mov r8d, 0
 lea r9, [rbp + 3664]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain99_n00062_α
.Lx00061_2:
 mov rdi, qword ptr [rbp + 3696]
 mov rsi, qword ptr [rbp + 3704]
 mov rdx, qword ptr [rbp + 3760]
 mov rcx, qword ptr [rbp + 3768]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain99_n7_α
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 jmp xchain99_n00062_α
 xchain99_n00004_β:
 jmp xchain99_n7_α
 xchain99_n00050_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1376]
 cmp eax, 100
 je .Lx00063_0
 mov eax, dword ptr [rbp + 1376]
 cmp eax, 6
 jne .Lx00063_2
.Lx00063_1:
 mov rax, qword ptr [rbp + 1384]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 1344], 6
 mov qword ptr [rbp + 1352], rax
 jmp xchain99_n00064_α
.Lx00063_0:
 mov rdi, qword ptr [rbp + 1376]
 mov rsi, qword ptr [rbp + 1384]
 mov rdx, qword ptr [rbp + 1440]
 mov rcx, qword ptr [rbp + 1448]
 mov r8d, 0
 lea r9, [rbp + 1344]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain99_n00064_α
.Lx00063_2:
 mov rdi, qword ptr [rbp + 1376]
 mov rsi, qword ptr [rbp + 1384]
 mov rdx, qword ptr [rbp + 1440]
 mov rcx, qword ptr [rbp + 1448]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain99_n96_α
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain99_n00064_α
 xchain99_n00050_β:
 jmp xchain99_n96_α
# IR_LIT_CHARSET
 xchain99_n00005_α:
 mov qword ptr [rbp + 864], 1
 mov dword ptr [rbp + 868], -1
 mov rax, qword ptr [rip + .Lx00065_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain99_n00066_α
.Lx00065_0:
 .quad .Lx00065_0_s
.Lx00065_0_s:
 .string "\\"
# IR_VAR_REF
 xchain99_n00051_α:
 mov rax, 4294967305
 mov rdx, 1879052496
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain99_n00067_α
 xchain99_n00051_β:
 jmp xchain99_n00041_af
# IR_VAR
 xchain99_n00006_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain99_n00009_α
 xchain99_n00006_β:
 jmp xchain99_n96_α
# IR_ASSIGN gva
 xchain99_n00068_α:
 mov rax, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain99_n00041_as
 xchain99_n00068_β:
 jmp xchain99_n96_α
# IR_ASSIGN gva
 xchain99_n00007_α:
 mov rax, qword ptr [rbp + 1296]
 mov rdx, qword ptr [rbp + 1304]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain99_n00054_α
# IR_ASSIGN gva
 xchain99_n00057_α:
 mov rax, qword ptr [rbp + 1024]
 mov rdx, qword ptr [rbp + 1032]
 mov qword ptr [1879052496], rax
 mov qword ptr [1879052504], rdx
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain99_n00003_α
# IR_VAR
 xchain99_n00055_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain99_n00069_α
 xchain99_n00055_β:
 jmp xchain99_n00042_af
 xchain99_n00069_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1072]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1080], rax
  .section .rodata
  .Lrkfn252: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn252]
 lea rsi, [rbp + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain99_n00042_af
 jmp xchain99_n00042_as
 xchain99_n00069_β:
 jmp xchain99_n00042_af
# IR_UNOP
 xchain99_n00008_α:
 mov rdi, qword ptr [rbp + 2192]
 mov rsi, qword ptr [rbp + 2200]
 call rt_size_d@PLT
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain99_n00070_α
# IR_VAR
 xchain99_n00058_α:
 mov rax, qword ptr [rbp + 4752]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 4760]
 mov qword ptr [rbp + 2536], rax
 jmp xchain99_n00010_α
# IR_SUBSCRIPT x[i] variable
 xchain99_n00060_α:
 mov rdi, qword ptr [rbp + 2800]
 mov rsi, qword ptr [rbp + 2808]
 mov rdx, qword ptr [rbp + 2832]
 mov rcx, qword ptr [rbp + 2840]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_getword_ω
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain99_n00071_α
# IR_ASSIGN gva
 xchain99_n00062_α:
 mov rax, qword ptr [rbp + 3664]
 mov rdx, qword ptr [rbp + 3672]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 jmp xchain99_n23_α
# IR_ASSIGN gva
 xchain99_n00064_α:
 mov rax, qword ptr [rbp + 1344]
 mov rdx, qword ptr [rbp + 1352]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain99_n96_α
 xchain99_n00066_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 832]
 mov rsi, qword ptr [rbp + 840]
 mov rdx, qword ptr [rbp + 864]
 mov rcx, qword ptr [rbp + 872]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain99_n96_af
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain99_n00072_α
# IR_VAR
 xchain99_n00067_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain99_n00073_α
# IR_LIT_INTEGER
 xchain99_n00009_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00074_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain99_n00075_α
.Lx00074_0:
 .quad 1
# IR_VAR
 xchain99_n00054_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain99_n00076_α
# IR_LIT_INTEGER
 xchain99_n00070_α:
 mov qword ptr [rbp + 2224], 6
 mov rax, qword ptr [rip + .Lx00077_0]
 mov qword ptr [rbp + 2232], rax
 jmp xchain99_n00011_α
.Lx00077_0:
 .quad 1
# IR_VAR
 xchain99_n00010_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain99_n00078_α
# IR_DEREF variable -> value
 xchain99_n00071_α:
 mov rdi, qword ptr [rbp + 2960]
 mov rsi, qword ptr [rbp + 2968]
 call rt_deref@PLT
 cmp eax, 99
 je proc_getword_ω
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain99_n00012_α
# IR_VAR
 xchain99_n00072_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain99_n00079_α
# IR_LIT_INTEGER
 xchain99_n00073_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx00080_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain99_n00081_α
.Lx00080_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain99_n00075_α:
 mov eax, dword ptr [rbp + 576]
 cmp eax, 7
 je .Lx00082_1
 cmp eax, 6
 jne .Lx00082_0
 mov eax, dword ptr [rbp + 608]
 cmp eax, 6
 jne .Lx00082_0
.Lx00082_1:
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 552], rax
 jmp xchain99_n00083_α
.Lx00082_0:
 lea rdi, [rbp + 576]
 lea rsi, [rbp + 608]
 lea rdx, [rbp + 544]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain99_n00083_α
# IR_LIT_INTEGER
 xchain99_n00076_α:
 mov qword ptr [rbp + 1248], 6
 mov rax, qword ptr [rip + .Lx00084_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain99_n00085_α
.Lx00084_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain99_n00011_α:
 mov eax, dword ptr [rbp + 2160]
 cmp eax, 7
 je .Lx00086_1
 cmp eax, 6
 jne .Lx00086_0
 mov eax, dword ptr [rbp + 2224]
 cmp eax, 6
 jne .Lx00086_0
.Lx00086_1:
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2136], rax
 jmp xchain99_n00013_α
.Lx00086_0:
 lea rdi, [rbp + 2160]
 lea rsi, [rbp + 2224]
 lea rdx, [rbp + 2128]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain99_n00013_α
# IR_SUBSCRIPT section
 xchain99_n00078_α:
 mov rdi, qword ptr [rbp + 2496]
 mov rsi, qword ptr [rbp + 2504]
 mov rdx, qword ptr [rbp + 2528]
 mov rcx, qword ptr [rbp + 2536]
 mov r8, qword ptr [rbp + 2560]
 mov r9, qword ptr [rbp + 2568]
 call subscript_get2@PLT
 cmp eax, 99
 je proc_getword_ω
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 jmp xchain99_n00014_α
# IR_RETURN
 xchain99_n00012_α:
 mov rax, qword ptr [rbp + 2992]
 mov rdx, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_getword_γ
# IR_VAR
 xchain99_n00079_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain99_n00087_α
# IR_COERCE_NUMERIC
 xchain99_n00081_α:
 mov eax, dword ptr [rbp + 352]
 cmp eax, 7
 je .Lx00088_1
 cmp eax, 6
 jne .Lx00088_0
 mov eax, dword ptr [rbp + 384]
 cmp eax, 6
 jne .Lx00088_0
.Lx00088_1:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 jmp xchain99_n00089_α
.Lx00088_0:
 lea rdi, [rbp + 352]
 lea rsi, [rbp + 384]
 lea rdx, [rbp + 320]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain99_n00089_α
 xchain99_n00083_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 544]
 cmp eax, 100
 je .Lx00090_0
 mov eax, dword ptr [rbp + 544]
 cmp eax, 6
 jne .Lx00090_2
.Lx00090_1:
 mov rax, qword ptr [rbp + 552]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 512], 6
 mov qword ptr [rbp + 520], rax
 jmp xchain99_n00068_α
.Lx00090_0:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 0
 lea r9, [rbp + 512]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain99_n00068_α
.Lx00090_2:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain99_n96_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain99_n00068_α
 xchain99_n00083_β:
 jmp xchain99_n96_α
# IR_COERCE_NUMERIC
 xchain99_n00085_α:
 mov eax, dword ptr [rbp + 1216]
 cmp eax, 7
 je .Lx00091_1
 cmp eax, 6
 jne .Lx00091_0
 mov eax, dword ptr [rbp + 1248]
 cmp eax, 6
 jne .Lx00091_0
.Lx00091_1:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1192], rax
 jmp xchain99_n00092_α
.Lx00091_0:
 lea rdi, [rbp + 1216]
 lea rsi, [rbp + 1248]
 lea rdx, [rbp + 1184]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain99_n00092_α
 xchain99_n00013_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2128]
 cmp eax, 100
 je .Lx00093_0
 mov eax, dword ptr [rbp + 2128]
 cmp eax, 6
 jne .Lx00093_2
.Lx00093_1:
 mov rax, qword ptr [rbp + 2136]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 2096], 6
 mov qword ptr [rbp + 2104], rax
 jmp xchain99_n43_α
.Lx00093_0:
 mov rdi, qword ptr [rbp + 2128]
 mov rsi, qword ptr [rbp + 2136]
 mov rdx, qword ptr [rbp + 2224]
 mov rcx, qword ptr [rbp + 2232]
 mov r8d, 0
 lea r9, [rbp + 2096]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain99_n43_α
.Lx00093_2:
 mov rdi, qword ptr [rbp + 2128]
 mov rsi, qword ptr [rbp + 2136]
 mov rdx, qword ptr [rbp + 2224]
 mov rcx, qword ptr [rbp + 2232]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain99_n1_α
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain99_n43_α
 xchain99_n00013_β:
 jmp xchain99_n1_α
# IR_RETURN
 xchain99_n00014_α:
 mov rax, qword ptr [rbp + 2464]
 mov rdx, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_getword_γ
 xchain99_n00087_α:
# BOX CALL_GEN upto(...) -> rt_call_arr_gen by-name [four-port generator; alpha zeroes resume cell, beta re-pumps invoke with persisted cell]
# marshal arg0 = producer-box slot [zr+800] -> [zr+736]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 744], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+752]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 760], rax
# marshal arg2 = producer-box slot [zr+928] -> [zr+768]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 776], rax
 mov qword ptr [rbp + 784], 0
 mov rdi, r14
 call rt_scan_sync_out@PLT
.Lx00094_60:
  .section .rodata
  .Lbynamegenfn214: .string "upto"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn214]
 lea rsi, [rbp + 736]
 mov edx, 3
 lea rcx, [rbp + 784]
 call rt_call_arr_gen@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je xchain99_n96_af
 jmp xchain99_n00095_α
 xchain99_n00087_β:
 jmp .Lx00094_60
 xchain99_n00089_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 320]
 cmp eax, 100
 je .Lx00096_0
 mov eax, dword ptr [rbp + 320]
 cmp eax, 6
 jne .Lx00096_2
.Lx00096_1:
 mov rax, qword ptr [rbp + 328]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 288], 6
 mov qword ptr [rbp + 296], rax
 jmp xchain99_n00097_α
.Lx00096_0:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, qword ptr [rbp + 384]
 mov rcx, qword ptr [rbp + 392]
 mov r8d, 1
 lea r9, [rbp + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain99_n00097_α
.Lx00096_2:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, qword ptr [rbp + 384]
 mov rcx, qword ptr [rbp + 392]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain99_n00041_af
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain99_n00097_α
 xchain99_n00089_β:
 jmp xchain99_n00041_af
 xchain99_n00092_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 100
 je .Lx00098_0
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 6
 jne .Lx00098_2
.Lx00098_1:
 mov rax, qword ptr [rbp + 1192]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 1152], 6
 mov qword ptr [rbp + 1160], rax
 jmp xchain99_n00099_α
.Lx00098_0:
 mov rdi, qword ptr [rbp + 1184]
 mov rsi, qword ptr [rbp + 1192]
 mov rdx, qword ptr [rbp + 1248]
 mov rcx, qword ptr [rbp + 1256]
 mov r8d, 0
 lea r9, [rbp + 1152]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain99_n00099_α
.Lx00098_2:
 mov rdi, qword ptr [rbp + 1184]
 mov rsi, qword ptr [rbp + 1192]
 mov rdx, qword ptr [rbp + 1248]
 mov rcx, qword ptr [rbp + 1256]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain99_n00042_α
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain99_n00099_α
 xchain99_n00092_β:
 jmp xchain99_n00042_α
# IR_LIT_INTEGER
 xchain99_n00095_α:
 mov qword ptr [rbp + 960], 6
 mov rax, qword ptr [rip + .Lx00100_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain99_n00101_α
.Lx00100_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain99_n00097_α:
 mov rdi, qword ptr [rbp + 256]
 mov rsi, qword ptr [rbp + 264]
 mov rdx, qword ptr [rbp + 288]
 mov rcx, qword ptr [rbp + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain99_n00041_af
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain99_n00102_α
# IR_ASSIGN gva
 xchain99_n00099_α:
 mov rax, qword ptr [rbp + 1152]
 mov rdx, qword ptr [rbp + 1160]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain99_n00042_α
# IR_COERCE_NUMERIC
 xchain99_n00101_α:
 mov eax, dword ptr [rbp + 720]
 cmp eax, 7
 je .Lx00103_1
 cmp eax, 6
 jne .Lx00103_0
 mov eax, dword ptr [rbp + 960]
 cmp eax, 6
 jne .Lx00103_0
.Lx00103_1:
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 696], rax
 jmp xchain99_n00104_α
.Lx00103_0:
 lea rdi, [rbp + 720]
 lea rsi, [rbp + 960]
 lea rdx, [rbp + 688]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain99_n00104_α
# IR_DEREF variable -> value
 xchain99_n00102_α:
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 call rt_deref@PLT
 cmp eax, 99
 je xchain99_n00041_af
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain99_n00015_α
 xchain99_n00104_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 688]
 cmp eax, 100
 je .Lx00105_0
 mov eax, dword ptr [rbp + 688]
 cmp eax, 6
 jne .Lx00105_2
.Lx00105_1:
 mov rax, qword ptr [rbp + 696]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 656], 6
 mov qword ptr [rbp + 664], rax
 jmp xchain99_n00106_α
.Lx00105_0:
 mov rdi, qword ptr [rbp + 688]
 mov rsi, qword ptr [rbp + 696]
 mov rdx, qword ptr [rbp + 960]
 mov rcx, qword ptr [rbp + 968]
 mov r8d, 0
 lea r9, [rbp + 656]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain99_n00106_α
.Lx00105_2:
 mov rdi, qword ptr [rbp + 688]
 mov rsi, qword ptr [rbp + 696]
 mov rdx, qword ptr [rbp + 960]
 mov rcx, qword ptr [rbp + 968]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain99_n96_af
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain99_n00106_α
 xchain99_n00104_β:
 jmp xchain99_n96_af
# IR_VAR
 xchain99_n00015_α:
 mov rax, qword ptr [rbp + 4736]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 4744]
 mov qword ptr [rbp + 472], rax
 jmp xchain99_n00016_α
# IR_ASSIGN gva
 xchain99_n00106_α:
 mov rax, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain99_n00041_α
 xchain99_n00016_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 4736]
 mov rcx, qword ptr [rbp + 4744]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain99_n00041_af
 mov rdi, qword ptr [rbp + 4736]
 mov rsi, qword ptr [rbp + 4744]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain99_n38_α
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
proc_getword_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 4816
 mov qword ptr [rsp + 4808], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 4768], r11
 lea rax, [rip + .Lx00107_2]
 mov qword ptr [rbp + 4776], rax
 lea rax, [rip + .Lx00107_3]
 mov qword ptr [rbp + 4784], rax
 mov qword ptr [rbp + 4728], rbp
 mov rdi, rbp
 mov esi, 4720
 mov edx, 4768
 mov ecx, 0
 mov r8d, 0
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_getword_α_body
.Lx00107_2:
 mov rdx, qword ptr [rsp + -4816]
 mov rcx, rsp
 add rcx, -4800
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00107_3:
 mov rdi, qword ptr [rsp + -4816]
 mov rsi, rsp
 add rsi, -4800
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
  sub rsp, 3616
  mov [rsp + 3592], rcx
  mov [rsp + 3600], rdx
  mov [rsp + 3608], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 3448], rsp
  mov rdi, rsp
  mov esi, 3440
  mov edx, 3584
  call rt_jmp_frame_lexprep2@PLT
proc_format_α_body:
# IR_DISJUNCTION_NARY
 xchain00108_n0_α:
 mov qword ptr [rbp + 2848], 0
 mov qword ptr [rbp + 2856], 0
 mov dword ptr [rbp + 2864], 0
 jmp xchain00108_n2_α
xchain00108_n0_as:
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 0
 jne .Lx00109_0
 mov rax, qword ptr [rbp + 2896]
 mov qword ptr [rbp + 2848], rax
 mov rax, qword ptr [rbp + 2904]
 mov qword ptr [rbp + 2856], rax
 jmp xchain00108_n1_α
.Lx00109_0:
 jmp xchain00108_n1_α
 xchain00108_n0_β:
 mov eax, dword ptr [rbp + 2864]
 jmp xchain00108_n3_β
xchain00108_n0_af:
 add dword ptr [rbp + 2864], 1
 mov eax, dword ptr [rbp + 2864]
 jmp xchain00108_n1_α
# IR_MAKE_LIST
 xchain00108_n1_α:
 lea rdi, [rbp + 2848]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 jmp xchain00108_n5_α
# IR_VAR_REF
 xchain00108_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052608
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 jmp xchain00108_n6_α
 xchain00108_n2_β:
 jmp xchain00108_n0_af
# IR_DISJUNCTION_NARY
 xchain00108_n3_α:
 mov qword ptr [rbp + 2912], 0
 mov qword ptr [rbp + 2920], 0
 mov dword ptr [rbp + 2928], 0
 jmp xchain00108_n8_α
xchain00108_n3_as:
 mov eax, dword ptr [rbp + 2928]
 cmp eax, 0
 jne .Lx00110_0
 mov rax, qword ptr [rbp + 2944]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 2952]
 mov qword ptr [rbp + 2920], rax
 jmp xchain00108_n7_α
.Lx00110_0:
 cmp eax, 1
 jne .Lx00110_1
 mov rax, qword ptr [rbp + 3008]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 3016]
 mov qword ptr [rbp + 2920], rax
 jmp xchain00108_n7_α
.Lx00110_1:
 jmp xchain00108_n7_α
 xchain00108_n3_β:
 mov eax, dword ptr [rbp + 2928]
 cmp eax, 0
 je xchain00108_n3_af
 jmp xchain00108_n3_af
xchain00108_n3_af:
 add dword ptr [rbp + 2928], 1
 mov eax, dword ptr [rbp + 2928]
 cmp eax, 1
 je xchain00108_n9_α
 jmp xchain00108_n1_α
 xchain00108_n4_α:
 jmp xchain00108_n0_as
xchain00108_n4_β:
 jmp xchain00108_n1_α
 xchain00108_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2832]
 mov rdx, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 jmp xchain00108_n11_α
# IR_NULLTEST_VAR
 xchain00108_n6_α:
 mov eax, dword ptr [rbp + 3328]
 cmp eax, 99
 je xchain00108_n0_af
 mov rdi, qword ptr [rbp + 3328]
 mov rsi, qword ptr [rbp + 3336]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00108_n0_af
 cmp eax, 0
 jne xchain00108_n0_af
 mov rax, qword ptr [rbp + 3328]
 mov qword ptr [rbp + 3360], rax
 mov rax, qword ptr [rbp + 3336]
 mov qword ptr [rbp + 3368], rax
 jmp xchain00108_n12_α
 xchain00108_n7_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2912]
 mov rdx, qword ptr [rbp + 2920]
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain00108_n4_α
# IR_VAR
 xchain00108_n8_α:
 mov rax, qword ptr [1879052464]
 mov rdx, qword ptr [1879052472]
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 jmp xchain00108_n10_α
 xchain00108_n8_β:
 jmp xchain00108_n3_af
# IR_LIT_INTEGER
 xchain00108_n9_α:
 mov qword ptr [rbp + 3008], 6
 mov rax, qword ptr [rip + .Lx00111_0]
 mov qword ptr [rbp + 3016], rax
 jmp xchain00108_n3_as
 xchain00108_n9_β:
 jmp xchain00108_n3_af
.Lx00111_0:
 .quad 4
# IR_UNOP
 xchain00108_n10_α:
 mov eax, dword ptr [rbp + 2976]
 cmp eax, 99
 je xchain00108_n3_af
 cmp eax, 0
 je xchain00108_n3_af
 mov rax, qword ptr [rbp + 2976]
 mov qword ptr [rbp + 2944], rax
 mov rax, qword ptr [rbp + 2984]
 mov qword ptr [rbp + 2952], rax
 jmp xchain00108_n3_as
 xchain00108_n10_β:
 jmp xchain00108_n3_af
# IR_VAR
 xchain00108_n11_α:
 mov rax, qword ptr [rbp + 3520]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 3528]
 mov qword ptr [rbp + 2792], rax
 jmp xchain00108_n13_α
# IR_LIT_INTEGER
 xchain00108_n12_α:
 mov qword ptr [rbp + 3408], 6
 mov rax, qword ptr [rip + .Lx00112_0]
 mov qword ptr [rbp + 3416], rax
 jmp xchain00108_n15_α
.Lx00112_0:
 .quad 1
 xchain00108_n13_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2784]
 mov rdx, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 jmp xchain00108_n14_α
# IR_VAR
 xchain00108_n14_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00108_n16_α
# IR_ASSIGN_VAR
 xchain00108_n15_α:
 mov rdi, qword ptr [rbp + 3360]
 mov rsi, qword ptr [rbp + 3368]
 mov rdx, qword ptr [rbp + 3408]
 mov rcx, qword ptr [rbp + 3416]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00108_n0_af
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 jmp xchain00108_n18_α
# IR_LIST_BANG
 xchain00108_n16_α:
 mov qword ptr [rbp + 320], 0
.Lx00113_0:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 mov rdx, qword ptr [rbp + 320]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp rax, 99
 je xchain00108_n17_α
 jmp xchain00108_n19_α
 xchain00108_n16_β:
 inc qword ptr [rbp + 320]
 jmp .Lx00113_0
# IR_VAR
 xchain00108_n17_α:
 mov rax, qword ptr [rbp + 3456]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 3464]
 mov qword ptr [rbp + 264], rax
 jmp xchain00108_n20_α
# IR_DISJUNCTION_NARY
 xchain00108_n18_α:
 mov qword ptr [rbp + 3200], 0
 mov qword ptr [rbp + 3208], 0
 mov dword ptr [rbp + 3216], 0
 jmp xchain00108_n23_α
xchain00108_n18_as:
 mov eax, dword ptr [rbp + 3216]
 cmp eax, 0
 jne .Lx00114_0
 mov rax, qword ptr [rbp + 3232]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 3240]
 mov qword ptr [rbp + 3208], rax
 jmp xchain00108_n22_α
.Lx00114_0:
 cmp eax, 1
 jne .Lx00114_1
 mov rax, qword ptr [rbp + 3296]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 3304]
 mov qword ptr [rbp + 3208], rax
 jmp xchain00108_n22_α
.Lx00114_1:
 jmp xchain00108_n22_α
 xchain00108_n18_β:
 mov eax, dword ptr [rbp + 3216]
 cmp eax, 0
 je xchain00108_n18_af
 jmp xchain00108_n18_af
xchain00108_n18_af:
 add dword ptr [rbp + 3216], 1
 mov eax, dword ptr [rbp + 3216]
 cmp eax, 1
 je xchain00108_n24_α
 jmp xchain00108_n30_α
 xchain00108_n19_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00108_n26_α
 xchain00108_n20_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn329: .string "sort"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn329]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00108_n21_α
 jmp xchain00108_n27_α
 xchain00108_n20_β:
 jmp xchain00108_n21_α
# IR_VAR
 xchain00108_n21_α:
 mov rax, qword ptr [rbp + 3456]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 3464]
 mov qword ptr [rbp + 136], rax
 jmp xchain00108_n28_α
 xchain00108_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3200]
 mov rdx, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain00108_n30_α
# IR_VAR
 xchain00108_n23_α:
 mov rax, qword ptr [1879052432]
 mov rdx, qword ptr [1879052440]
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 jmp xchain00108_n25_α
 xchain00108_n23_β:
 jmp xchain00108_n18_af
# IR_LIT_INTEGER
 xchain00108_n24_α:
 mov qword ptr [rbp + 3296], 6
 mov rax, qword ptr [rip + .Lx00115_0]
 mov qword ptr [rbp + 3304], rax
 jmp xchain00108_n18_as
 xchain00108_n24_β:
 jmp xchain00108_n18_af
.Lx00115_0:
 .quad 80
# IR_UNOP
 xchain00108_n25_α:
 mov eax, dword ptr [rbp + 3264]
 cmp eax, 99
 je xchain00108_n18_af
 cmp eax, 0
 je xchain00108_n18_af
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 3232], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 3240], rax
 jmp xchain00108_n18_as
 xchain00108_n25_β:
 jmp xchain00108_n18_af
# IR_BOUND
 xchain00108_n26_α:
 mov qword ptr [rbp + 368], rsp
 jmp xchain00108_n31_α
 xchain00108_n27_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00108_n21_α
# IR_LIT_STRING
 xchain00108_n28_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00116_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00108_n32_α
.Lx00116_0:
 .quad .Lx00116_0_s
.Lx00116_0_s:
 .string "variable\tprocedure\t\tline numbers\n"
# IR_VAR
 xchain00108_n29_α:
 mov rax, qword ptr [rbp + 3456]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 3464]
 mov qword ptr [rbp + 40], rax
 jmp xchain00108_n33_α
# IR_DISJUNCTION_NARY
 xchain00108_n30_α:
 mov qword ptr [rbp + 3056], 0
 mov qword ptr [rbp + 3064], 0
 mov dword ptr [rbp + 3072], 0
 jmp xchain00108_n35_α
xchain00108_n30_as:
 mov eax, dword ptr [rbp + 3072]
 cmp eax, 0
 jne .Lx00117_0
 mov rax, qword ptr [rbp + 3088]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 3096]
 mov qword ptr [rbp + 3064], rax
 jmp xchain00108_n34_α
.Lx00117_0:
 cmp eax, 1
 jne .Lx00117_1
 mov rax, qword ptr [rbp + 3152]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 3160]
 mov qword ptr [rbp + 3064], rax
 jmp xchain00108_n34_α
.Lx00117_1:
 jmp xchain00108_n34_α
 xchain00108_n30_β:
 mov eax, dword ptr [rbp + 3072]
 cmp eax, 0
 je xchain00108_n30_af
 jmp xchain00108_n30_af
xchain00108_n30_af:
 add dword ptr [rbp + 3072], 1
 mov eax, dword ptr [rbp + 3072]
 cmp eax, 1
 je xchain00108_n36_α
 jmp xchain00108_n3_α
# IR_VAR
 xchain00108_n31_α:
 mov rax, qword ptr [rbp + 3472]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 3480]
 mov qword ptr [rbp + 472], rax
 jmp xchain00108_n38_α
 xchain00108_n32_α:
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
  .Lrkfn347: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn347]
 lea rsi, [rbp + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je xchain00108_n29_α
 jmp xchain00108_n29_α
 xchain00108_n32_β:
 jmp xchain00108_n29_α
# IR_RETURN
 xchain00108_n33_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_format_γ
 xchain00108_n34_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3056]
 mov rdx, qword ptr [rbp + 3064]
 mov qword ptr [rbp + 3520], rax
 mov qword ptr [rbp + 3528], rdx
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain00108_n3_α
# IR_VAR
 xchain00108_n35_α:
 mov rax, qword ptr [1879052448]
 mov rdx, qword ptr [1879052456]
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain00108_n37_α
 xchain00108_n35_β:
 jmp xchain00108_n30_af
# IR_LIT_INTEGER
 xchain00108_n36_α:
 mov qword ptr [rbp + 3152], 6
 mov rax, qword ptr [rip + .Lx00118_0]
 mov qword ptr [rbp + 3160], rax
 jmp xchain00108_n30_as
 xchain00108_n36_β:
 jmp xchain00108_n30_af
.Lx00118_0:
 .quad 40
# IR_UNOP
 xchain00108_n37_α:
 mov eax, dword ptr [rbp + 3120]
 cmp eax, 99
 je xchain00108_n30_af
 cmp eax, 0
 je xchain00108_n30_af
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 3088], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3096], rax
 jmp xchain00108_n30_as
 xchain00108_n37_β:
 jmp xchain00108_n30_af
# IR_LIST_BANG
 xchain00108_n38_α:
 mov qword ptr [rbp + 448], 0
.Lx00119_0:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 mov rdx, qword ptr [rbp + 448]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp rax, 99
 je xchain00108_n39_α
 jmp xchain00108_n40_α
 xchain00108_n38_β:
 inc qword ptr [rbp + 448]
 jmp .Lx00119_0
# IR_UNMARK
 xchain00108_n39_α:
 mov rsp, qword ptr [rbp + 368]
 jmp xchain00108_n16_β
 xchain00108_n40_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [rbp + 3488], rax
 mov qword ptr [rbp + 3496], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00108_n41_α
# IR_BOUND
 xchain00108_n41_α:
 mov qword ptr [rbp + 496], rsp
 jmp xchain00108_n42_α
# IR_VAR_REF
 xchain00108_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3488]
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain00108_n43_α
# IR_LIT_INTEGER
 xchain00108_n43_α:
 mov qword ptr [rbp + 2272], 6
 mov rax, qword ptr [rip + .Lx00120_0]
 mov qword ptr [rbp + 2280], rax
 jmp xchain00108_n44_α
.Lx00120_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00108_n44_α:
 mov rdi, qword ptr [rbp + 2240]
 mov rsi, qword ptr [rbp + 2248]
 mov rdx, qword ptr [rbp + 2272]
 mov rcx, qword ptr [rbp + 2280]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00108_n46_α
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 jmp xchain00108_n45_α
# IR_DEREF variable -> value
 xchain00108_n45_α:
 mov rdi, qword ptr [rbp + 2304]
 mov rsi, qword ptr [rbp + 2312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00108_n46_α
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 jmp xchain00108_n47_α
# IR_VAR
 xchain00108_n46_α:
 mov rax, qword ptr [rbp + 3536]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 1064], rax
 jmp xchain00108_n48_α
# IR_LIT_INTEGER
 xchain00108_n47_α:
 mov qword ptr [rbp + 2352], 6
 mov rax, qword ptr [rip + .Lx00121_0]
 mov qword ptr [rbp + 2360], rax
 jmp xchain00108_n50_α
.Lx00121_0:
 .quad 16
# IR_VAR_REF
 xchain00108_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3488]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain00108_n51_α
# IR_DISJUNCTION_NARY
 xchain00108_n49_α:
 mov qword ptr [rbp + 736], 0
 mov qword ptr [rbp + 744], 0
 mov dword ptr [rbp + 752], 0
 jmp xchain00108_n53_α
xchain00108_n49_as:
 mov eax, dword ptr [rbp + 752]
 cmp eax, 0
 jne .Lx00122_0
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 744], rax
 jmp xchain00108_n52_α
.Lx00122_0:
 jmp xchain00108_n52_α
 xchain00108_n49_β:
 mov eax, dword ptr [rbp + 752]
 jmp xchain00108_n52_α
xchain00108_n49_af:
 add dword ptr [rbp + 752], 1
 mov eax, dword ptr [rbp + 752]
 jmp xchain00108_n52_α
# IR_LIT_STRING
 xchain00108_n50_α:
 mov qword ptr [rbp + 2384], 1
 mov rax, qword ptr [rip + .Lx00123_0]
 mov qword ptr [rbp + 2392], rax
 jmp xchain00108_n55_α
.Lx00123_0:
 .quad .Lx00123_0_s
.Lx00123_0_s:
 .string " "
# IR_LIT_INTEGER
 xchain00108_n51_α:
 mov qword ptr [rbp + 1232], 6
 mov rax, qword ptr [rip + .Lx00124_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain00108_n56_α
.Lx00124_0:
 .quad 3
# IR_VAR
 xchain00108_n52_α:
 mov rax, qword ptr [rbp + 3456]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 3464]
 mov qword ptr [rbp + 680], rax
 jmp xchain00108_n57_α
# IR_VAR
 xchain00108_n53_α:
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 952], rax
 jmp xchain00108_n59_α
 xchain00108_n53_β:
 jmp xchain00108_n49_af
 xchain00108_n54_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 784]
 mov rdx, qword ptr [rbp + 792]
 mov qword ptr [rbp + 3536], rax
 mov qword ptr [rbp + 3544], rdx
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00108_n49_as
 xchain00108_n54_β:
 jmp xchain00108_n52_α
 xchain00108_n55_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2336] -> [zr+2176]
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 2184], rax
# marshal arg1 = producer-box slot [zr+2352] -> [zr+2192]
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2200], rax
# marshal arg2 = producer-box slot [zr+2384] -> [zr+2208]
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 2216], rax
  .section .rodata
  .Lrkfn380: .string "left"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn380]
 lea rsi, [rbp + 2176]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 cmp eax, 99
 je xchain00108_n46_α
 jmp xchain00108_n60_α
 xchain00108_n55_β:
 jmp xchain00108_n46_α
# IR_VAR
 xchain00108_n56_α:
 mov rax, qword ptr [rbp + 3488]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 3496]
 mov qword ptr [rbp + 1304], rax
 jmp xchain00108_n61_α
# IR_VAR
 xchain00108_n57_α:
 mov rax, qword ptr [rbp + 3536]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 712], rax
 jmp xchain00108_n62_α
# IR_VAR
 xchain00108_n58_α:
 mov rax, qword ptr [rbp + 3520]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 3528]
 mov qword ptr [rbp + 584], rax
 jmp xchain00108_n63_α
# IR_VAR
 xchain00108_n59_α:
 mov rax, qword ptr [rbp + 3520]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 3528]
 mov qword ptr [rbp + 984], rax
 jmp xchain00108_n65_α
# IR_VAR_REF
 xchain00108_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3488]
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 jmp xchain00108_n66_α
# IR_UNOP
 xchain00108_n61_α:
 mov rdi, qword ptr [rbp + 3488]
 mov rsi, qword ptr [rbp + 3496]
 call rt_size_d@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain00108_n67_α
 xchain00108_n62_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+640]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 648], rax
  .section .rodata
  .Lrkfn393: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn393]
 lea rsi, [rbp + 624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain00108_n58_α
 jmp xchain00108_n58_α
 xchain00108_n62_β:
 jmp xchain00108_n58_α
 xchain00108_n63_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00108_n68_α
# IR_UNMARK
 xchain00108_n64_α:
 mov rsp, qword ptr [rbp + 496]
 jmp xchain00108_n38_β
 xchain00108_n65_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 3504]
 cmp eax, 100
 je .Lx00125_0
 mov eax, dword ptr [rbp + 3520]
 cmp eax, 100
 je .Lx00125_0
 mov eax, dword ptr [rbp + 3504]
 cmp eax, 6
 jne .Lx00125_2
 mov eax, dword ptr [rbp + 3520]
 cmp eax, 6
 jne .Lx00125_2
.Lx00125_1:
 mov rax, qword ptr [rbp + 3512]
 mov rcx, qword ptr [rbp + 3528]
 cmp rax, rcx
 jne xchain00108_n49_af
 mov rcx, qword ptr [rbp + 3520]
 mov qword ptr [rbp + 912], rcx
 mov rcx, qword ptr [rbp + 3528]
 mov qword ptr [rbp + 920], rcx
 jmp xchain00108_n69_α
.Lx00125_0:
 mov rdi, qword ptr [rbp + 3504]
 mov rsi, qword ptr [rbp + 3512]
 mov rdx, qword ptr [rbp + 3520]
 mov rcx, qword ptr [rbp + 3528]
 mov r8d, 9
 lea r9, [rbp + 912]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00125_1
 cmp eax, 1
 je xchain00108_n49_af
 jmp xchain00108_n69_α
.Lx00125_2:
 mov rdi, qword ptr [rbp + 3504]
 mov rsi, qword ptr [rbp + 3512]
 mov rdx, qword ptr [rbp + 3520]
 mov rcx, qword ptr [rbp + 3528]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00108_n49_af
 mov rax, qword ptr [rbp + 3520]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 3528]
 mov qword ptr [rbp + 920], rax
 jmp xchain00108_n69_α
# IR_LIT_INTEGER
 xchain00108_n66_α:
 mov qword ptr [rbp + 2528], 6
 mov rax, qword ptr [rip + .Lx00126_0]
 mov qword ptr [rbp + 2536], rax
 jmp xchain00108_n70_α
.Lx00126_0:
 .quad 2
# IR_TO
 xchain00108_n67_α:
 mov rdi, qword ptr [rbp + 1232]
 mov rsi, qword ptr [rbp + 1240]
 call to_int@PLT
 mov qword ptr [rbp + 1232], 6
 mov qword ptr [rbp + 1240], rax
 mov rdi, qword ptr [rbp + 1264]
 mov rsi, qword ptr [rbp + 1272]
 call to_int@PLT
 mov qword ptr [rbp + 1264], 6
 mov qword ptr [rbp + 1272], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1216], rax
.Lx00127_0:
 mov rax, qword ptr [rbp + 1216]
 mov rcx, qword ptr [rbp + 1272]
 cmp rax, rcx
 jg xchain00108_n49_α
 mov qword ptr [rbp + 1200], 6
 mov qword ptr [rbp + 1208], rax
 jmp xchain00108_n71_α
 xchain00108_n67_β:
 inc qword ptr [rbp + 1216]
 jmp .Lx00127_0
 xchain00108_n68_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 552], rax
 jmp xchain00108_n64_α
xchain00108_n68_β:
 jmp xchain00108_n64_α
# IR_VAR
 xchain00108_n69_α:
 mov rax, qword ptr [rbp + 3536]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 824], rax
 jmp xchain00108_n72_α
# IR_SUBSCRIPT x[i] variable
 xchain00108_n70_α:
 mov rdi, qword ptr [rbp + 2496]
 mov rsi, qword ptr [rbp + 2504]
 mov rdx, qword ptr [rbp + 2528]
 mov rcx, qword ptr [rbp + 2536]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00108_n46_α
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain00108_n73_α
# IR_SUBSCRIPT x[i] variable
 xchain00108_n71_α:
 mov rdi, qword ptr [rbp + 1168]
 mov rsi, qword ptr [rbp + 1176]
 mov rdx, qword ptr [rbp + 1200]
 mov rcx, qword ptr [rbp + 1208]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00108_n67_β
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain00108_n74_α
# IR_LIT_INTEGER
 xchain00108_n72_α:
 mov qword ptr [rbp + 848], 6
 mov rax, qword ptr [rip + .Lx00128_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain00108_n75_α
.Lx00128_0:
 .quad 1
# IR_DEREF variable -> value
 xchain00108_n73_α:
 mov rdi, qword ptr [rbp + 2560]
 mov rsi, qword ptr [rbp + 2568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00108_n46_α
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain00108_n76_α
# IR_DEREF variable -> value
 xchain00108_n74_α:
 mov rdi, qword ptr [rbp + 1328]
 mov rsi, qword ptr [rbp + 1336]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00108_n67_β
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain00108_n77_α
# IR_LIT_INTEGER
 xchain00108_n75_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain00108_n78_α
.Lx00129_0:
 .quad 18446744073709551610
# IR_VAR
 xchain00108_n76_α:
 mov rax, qword ptr [rbp + 3520]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 3528]
 mov qword ptr [rbp + 2680], rax
 jmp xchain00108_n79_α
# IR_VAR
 xchain00108_n77_α:
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 1384], rax
 jmp xchain00108_n80_α
# IR_SUBSCRIPT section
 xchain00108_n78_α:
 mov rdi, qword ptr [rbp + 816]
 mov rsi, qword ptr [rbp + 824]
 mov rdx, qword ptr [rbp + 848]
 mov rcx, qword ptr [rbp + 856]
 mov r8, qword ptr [rbp + 880]
 mov r9, qword ptr [rbp + 888]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00108_n52_α
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain00108_n54_α
# IR_LIT_INTEGER
 xchain00108_n79_α:
 mov qword ptr [rbp + 2704], 6
 mov rax, qword ptr [rip + .Lx00130_0]
 mov qword ptr [rbp + 2712], rax
 jmp xchain00108_n81_α
.Lx00130_0:
 .quad 16
# IR_LIT_STRING
 xchain00108_n80_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx00131_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain00108_n82_α
.Lx00131_0:
 .quad .Lx00131_0_s
.Lx00131_0_s:
 .string " "
# IR_COERCE_NUMERIC
 xchain00108_n81_α:
 mov eax, dword ptr [rbp + 3520]
 cmp eax, 7
 je .Lx00132_1
 cmp eax, 6
 jne .Lx00132_0
 mov eax, dword ptr [rbp + 2704]
 cmp eax, 6
 jne .Lx00132_0
.Lx00132_1:
 mov rax, qword ptr [rbp + 3520]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 3528]
 mov qword ptr [rbp + 2648], rax
 jmp xchain00108_n83_α
.Lx00132_0:
 lea rdi, [rbp + 3520]
 lea rsi, [rbp + 2704]
 lea rdx, [rbp + 2640]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00108_n83_α
 xchain00108_n82_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1104]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1112], rax
# marshal arg1 = producer-box slot [zr+1376] -> [zr+1120]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1128], rax
# marshal arg2 = producer-box slot [zr+1408] -> [zr+1136]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1144], rax
  .section .rodata
  .Lrkfn420: .string "center"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn420]
 lea rsi, [rbp + 1104]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain00108_n67_β
 jmp xchain00108_n84_α
 xchain00108_n82_β:
 jmp xchain00108_n67_β
 xchain00108_n83_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2640]
 cmp eax, 100
 je .Lx00133_0
 mov eax, dword ptr [rbp + 2640]
 cmp eax, 6
 jne .Lx00133_2
.Lx00133_1:
 mov rax, qword ptr [rbp + 2648]
 mov rcx, 16
 sub rax, rcx
 mov qword ptr [rbp + 2608], 6
 mov qword ptr [rbp + 2616], rax
 jmp xchain00108_n85_α
.Lx00133_0:
 mov rdi, qword ptr [rbp + 2640]
 mov rsi, qword ptr [rbp + 2648]
 mov rdx, qword ptr [rbp + 2704]
 mov rcx, qword ptr [rbp + 2712]
 mov r8d, 1
 lea r9, [rbp + 2608]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00108_n85_α
.Lx00133_2:
 mov rdi, qword ptr [rbp + 2640]
 mov rsi, qword ptr [rbp + 2648]
 mov rdx, qword ptr [rbp + 2704]
 mov rcx, qword ptr [rbp + 2712]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00108_n46_α
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 jmp xchain00108_n85_α
 xchain00108_n83_β:
 jmp xchain00108_n46_α
 xchain00108_n84_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 3536]
 mov rsi, qword ptr [rbp + 3544]
 mov rdx, qword ptr [rbp + 1088]
 mov rcx, qword ptr [rbp + 1096]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain00108_n86_α
# IR_LIT_STRING
 xchain00108_n85_α:
 mov qword ptr [rbp + 2736], 1
 mov rax, qword ptr [rip + .Lx00134_0]
 mov qword ptr [rbp + 2744], rax
 jmp xchain00108_n87_α
.Lx00134_0:
 .quad .Lx00134_0_s
.Lx00134_0_s:
 .string " "
 xchain00108_n86_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1024]
 mov rdx, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 3536], rax
 mov qword ptr [rbp + 3544], rdx
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain00108_n88_α
 xchain00108_n87_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2592] -> [zr+2432]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2440], rax
# marshal arg1 = producer-box slot [zr+2608] -> [zr+2448]
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2456], rax
# marshal arg2 = producer-box slot [zr+2736] -> [zr+2464]
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 2472], rax
  .section .rodata
  .Lrkfn426: .string "left"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn426]
 lea rsi, [rbp + 2432]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 cmp eax, 99
 je xchain00108_n46_α
 jmp xchain00108_n89_α
 xchain00108_n87_β:
 jmp xchain00108_n46_α
# IR_BOUND
 xchain00108_n88_α:
 mov qword ptr [rbp + 1440], rsp
 jmp xchain00108_n90_α
 xchain00108_n89_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 2160]
 mov rsi, qword ptr [rbp + 2168]
 mov rdx, qword ptr [rbp + 2416]
 mov rcx, qword ptr [rbp + 2424]
 call str_concat_d@PLT
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 jmp xchain00108_n91_α
# IR_VAR
 xchain00108_n90_α:
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 2056], rax
 jmp xchain00108_n92_α
 xchain00108_n91_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2128]
 mov rdx, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 3536], rax
 mov qword ptr [rbp + 3544], rdx
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain00108_n46_α
# IR_VAR
 xchain00108_n92_α:
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 2088], rax
 jmp xchain00108_n94_α
# IR_DISJUNCTION_NARY
 xchain00108_n93_α:
 mov qword ptr [rbp + 1504], 0
 mov qword ptr [rbp + 1512], 0
 mov dword ptr [rbp + 1520], 0
 jmp xchain00108_n96_α
xchain00108_n93_as:
 mov eax, dword ptr [rbp + 1520]
 cmp eax, 0
 jne .Lx00135_0
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1512], rax
 jmp xchain00108_n95_α
.Lx00135_0:
 jmp xchain00108_n95_α
 xchain00108_n93_β:
 mov eax, dword ptr [rbp + 1520]
 jmp xchain00108_n99_α
xchain00108_n93_af:
 add dword ptr [rbp + 1520], 1
 mov eax, dword ptr [rbp + 1520]
 jmp xchain00108_n99_α
# IR_COERCE_NUMERIC
 xchain00108_n94_α:
 mov eax, dword ptr [rbp + 3504]
 cmp eax, 7
 je .Lx00136_1
 cmp eax, 6
 jne .Lx00136_0
 mov eax, dword ptr [rbp + 3552]
 cmp eax, 6
 jne .Lx00136_0
.Lx00136_1:
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 2024], rax
 jmp xchain00108_n98_α
.Lx00136_0:
 lea rdi, [rbp + 3504]
 lea rsi, [rbp + 3552]
 lea rdx, [rbp + 2016]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00108_n98_α
 xchain00108_n95_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1496], rax
 jmp xchain00108_n99_α
xchain00108_n95_β:
 jmp xchain00108_n99_α
# IR_VAR
 xchain00108_n96_α:
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 1752], rax
 jmp xchain00108_n00035_α
 xchain00108_n96_β:
 jmp xchain00108_n93_af
 xchain00108_n97_α:
 jmp xchain00108_n93_as
xchain00108_n97_β:
 jmp xchain00108_n99_α
# IR_COERCE_NUMERIC
 xchain00108_n98_α:
 mov eax, dword ptr [rbp + 3552]
 cmp eax, 7
 je .Lx00137_1
 cmp eax, 6
 jne .Lx00137_0
 mov eax, dword ptr [rbp + 3504]
 cmp eax, 6
 jne .Lx00137_0
.Lx00137_1:
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 1992], rax
 jmp xchain00108_n00001_α
.Lx00137_0:
 lea rdi, [rbp + 3552]
 lea rsi, [rbp + 3504]
 lea rdx, [rbp + 1984]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00108_n00001_α
# IR_UNMARK
 xchain00108_n99_α:
 mov rsp, qword ptr [rbp + 1440]
 jmp xchain00108_n67_β
# IR_VAR
 xchain00108_n00035_α:
 mov rax, qword ptr [rbp + 3568]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 3576]
 mov qword ptr [rbp + 1880], rax
 jmp xchain00108_n00037_α
 xchain00108_n00001_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2016]
 cmp eax, 100
 je .Lx00138_0
 mov eax, dword ptr [rbp + 1984]
 cmp eax, 100
 je .Lx00138_0
 mov eax, dword ptr [rbp + 2016]
 cmp eax, 6
 jne .Lx00138_2
 mov eax, dword ptr [rbp + 1984]
 cmp eax, 6
 jne .Lx00138_2
.Lx00138_1:
 mov rax, qword ptr [rbp + 2024]
 mov rcx, qword ptr [rbp + 1992]
 add rax, rcx
 mov qword ptr [rbp + 1952], 6
 mov qword ptr [rbp + 1960], rax
 jmp xchain00108_n00002_α
.Lx00138_0:
 mov rdi, qword ptr [rbp + 2016]
 mov rsi, qword ptr [rbp + 2024]
 mov rdx, qword ptr [rbp + 1984]
 mov rcx, qword ptr [rbp + 1992]
 mov r8d, 0
 lea r9, [rbp + 1952]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00108_n00002_α
.Lx00138_2:
 mov rdi, qword ptr [rbp + 2016]
 mov rsi, qword ptr [rbp + 2024]
 mov rdx, qword ptr [rbp + 1984]
 mov rcx, qword ptr [rbp + 1992]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00108_n93_α
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain00108_n00002_α
 xchain00108_n00001_β:
 jmp xchain00108_n93_α
# IR_VAR
 xchain00108_n00037_α:
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 1912], rax
 jmp xchain00108_n00039_α
 xchain00108_n00002_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1952]
 mov rdx, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain00108_n93_α
# IR_COERCE_NUMERIC
 xchain00108_n00039_α:
 mov eax, dword ptr [rbp + 3568]
 cmp eax, 7
 je .Lx00139_1
 cmp eax, 6
 jne .Lx00139_0
 mov eax, dword ptr [rbp + 3552]
 cmp eax, 6
 jne .Lx00139_0
.Lx00139_1:
 mov rax, qword ptr [rbp + 3568]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 3576]
 mov qword ptr [rbp + 1848], rax
 jmp xchain00108_n00041_α
.Lx00139_0:
 lea rdi, [rbp + 3568]
 lea rsi, [rbp + 3552]
 lea rdx, [rbp + 1840]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00108_n00041_α
# IR_COERCE_NUMERIC
 xchain00108_n00041_α:
 mov eax, dword ptr [rbp + 3552]
 cmp eax, 7
 je .Lx00140_1
 cmp eax, 6
 jne .Lx00140_0
 mov eax, dword ptr [rbp + 3568]
 cmp eax, 6
 jne .Lx00140_0
.Lx00140_1:
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 1816], rax
 jmp xchain00108_n00043_α
.Lx00140_0:
 lea rdi, [rbp + 3552]
 lea rsi, [rbp + 3568]
 lea rdx, [rbp + 1808]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00108_n00043_α
 xchain00108_n00043_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1840]
 cmp eax, 100
 je .Lx00141_0
 mov eax, dword ptr [rbp + 1808]
 cmp eax, 100
 je .Lx00141_0
 mov eax, dword ptr [rbp + 1840]
 cmp eax, 6
 jne .Lx00141_2
 mov eax, dword ptr [rbp + 1808]
 cmp eax, 6
 jne .Lx00141_2
.Lx00141_1:
 mov rax, qword ptr [rbp + 1848]
 mov rcx, qword ptr [rbp + 1816]
 sub rax, rcx
 mov qword ptr [rbp + 1776], 6
 mov qword ptr [rbp + 1784], rax
 jmp xchain00108_n00042_α
.Lx00141_0:
 mov rdi, qword ptr [rbp + 1840]
 mov rsi, qword ptr [rbp + 1848]
 mov rdx, qword ptr [rbp + 1808]
 mov rcx, qword ptr [rbp + 1816]
 mov r8d, 1
 lea r9, [rbp + 1776]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00108_n00042_α
.Lx00141_2:
 mov rdi, qword ptr [rbp + 1840]
 mov rsi, qword ptr [rbp + 1848]
 mov rdx, qword ptr [rbp + 1808]
 mov rcx, qword ptr [rbp + 1816]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00108_n93_af
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain00108_n00042_α
 xchain00108_n00043_β:
 jmp xchain00108_n93_af
 xchain00108_n00042_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 3504]
 cmp eax, 100
 je .Lx00142_0
 mov eax, dword ptr [rbp + 1776]
 cmp eax, 100
 je .Lx00142_0
 mov eax, dword ptr [rbp + 3504]
 cmp eax, 6
 jne .Lx00142_2
 mov eax, dword ptr [rbp + 1776]
 cmp eax, 6
 jne .Lx00142_2
.Lx00142_1:
 mov rax, qword ptr [rbp + 3512]
 mov rcx, qword ptr [rbp + 1784]
 cmp rax, rcx
 jl xchain00108_n93_af
 mov rcx, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1712], rcx
 mov rcx, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1720], rcx
 jmp xchain00108_n00003_α
.Lx00142_0:
 mov rdi, qword ptr [rbp + 3504]
 mov rsi, qword ptr [rbp + 3512]
 mov rdx, qword ptr [rbp + 1776]
 mov rcx, qword ptr [rbp + 1784]
 mov r8d, 8
 lea r9, [rbp + 1712]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00142_1
 cmp eax, 1
 je xchain00108_n93_af
 jmp xchain00108_n00003_α
.Lx00142_2:
 mov rdi, qword ptr [rbp + 3504]
 mov rsi, qword ptr [rbp + 3512]
 mov rdx, qword ptr [rbp + 1776]
 mov rcx, qword ptr [rbp + 1784]
 mov r8d, 8
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00108_n93_af
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1720], rax
 jmp xchain00108_n00003_α
# IR_VAR
 xchain00108_n00003_α:
 mov rax, qword ptr [rbp + 3536]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 1656], rax
 jmp xchain00108_n00044_α
# IR_LIT_STRING
 xchain00108_n00044_α:
 mov qword ptr [rbp + 1680], 1
 mov rax, qword ptr [rip + .Lx00143_0]
 mov qword ptr [rbp + 1688], rax
 jmp xchain00108_n00047_α
.Lx00143_0:
 .quad .Lx00143_0_s
.Lx00143_0_s:
 .string "\n\t\t\t\t\t"
# IR_VAR
 xchain00108_n00045_α:
 mov rax, qword ptr [rbp + 3520]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 3528]
 mov qword ptr [rbp + 1576], rax
 jmp xchain00108_n00004_α
 xchain00108_n00047_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 3536]
 mov rsi, qword ptr [rbp + 3544]
 mov rdx, qword ptr [rbp + 1680]
 mov rcx, qword ptr [rbp + 1688]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain00108_n00050_α
 xchain00108_n00004_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1568]
 mov rdx, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain00108_n97_α
 xchain00108_n00050_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1616]
 mov rdx, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 3536], rax
 mov qword ptr [rbp + 3544], rdx
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain00108_n00045_α
proc_format_res:
add rsp, 8
pop rbp
proc_format_β:
jmp proc_format_ω
proc_format_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 3592]
lea rsp, [rbp + 3616]
mov rbp, [rbp + 3608]
jmp rax
proc_format_ω:
mov rax, [rbp + 3600]
lea rsp, [rbp + 3616]
mov rbp, [rbp + 3608]
jmp rax
proc_format_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 3632
 mov qword ptr [rsp + 3624], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 3584], r11
 lea rax, [rip + .Lx00144_2]
 mov qword ptr [rbp + 3592], rax
 lea rax, [rip + .Lx00144_3]
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3448], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 3440
 mov edx, 3584
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_format_α_body
.Lx00144_2:
 mov rdx, qword ptr [rsp + -3632]
 mov rcx, rsp
 add rcx, -3616
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00144_3:
 mov rdi, qword ptr [rsp + -3632]
 mov rsi, rsp
 add rsi, -3616
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
 xchain00145_n0_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain00145_n1_α
# IR_NULLTEST_VAR
 xchain00145_n1_α:
 mov eax, dword ptr [rbp + 3424]
 cmp eax, 99
 je xchain00145_n3_α
 mov rdi, qword ptr [rbp + 3424]
 mov rsi, qword ptr [rbp + 3432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00145_n3_α
 cmp eax, 0
 jne xchain00145_n3_α
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3464], rax
 jmp xchain00145_n2_α
# IR_LIT_CHARSET
 xchain00145_n2_α:
 mov qword ptr [rbp + 3552], 1
 mov dword ptr [rbp + 3556], -1
 mov rax, qword ptr [rip + .Lx00146_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain00145_n4_α
.Lx00146_0:
 .quad .Lx00146_0_s
.Lx00146_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00145_n3_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn474: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn474]
 lea rsi, [rbp + 3408]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 cmp eax, 99
 je xchain00145_n6_α
 jmp xchain00145_n5_α
 xchain00145_n3_β:
 jmp xchain00145_n6_α
 xchain00145_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3552] -> [zr+3520]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3520], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3528], rax
  .section .rodata
  .Lrkfn476: .string "string"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn476]
 lea rsi, [rbp + 3520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 cmp eax, 99
 je xchain00145_n3_α
 jmp xchain00145_n7_α
 xchain00145_n4_β:
 jmp xchain00145_n3_α
 xchain00145_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3392]
 mov rdx, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain00145_n6_α
# IR_MAKE_LIST
 xchain00145_n6_α:
 lea rdi, [rbp + 3376]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain00145_n8_α
# IR_ASSIGN_VAR
 xchain00145_n7_α:
 mov rdi, qword ptr [rbp + 3456]
 mov rsi, qword ptr [rbp + 3464]
 mov rdx, qword ptr [rbp + 3504]
 mov rcx, qword ptr [rbp + 3512]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00145_n3_α
 mov qword ptr [rbp + 3488], rax
 mov qword ptr [rbp + 3496], rdx
 jmp xchain00145_n3_α
 xchain00145_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3360]
 mov rdx, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain00145_n9_α
# IR_VAR
 xchain00145_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00145_n10_α
 xchain00145_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn485: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn485]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00145_n11_α
 jmp xchain00145_n12_α
 xchain00145_n10_β:
 jmp xchain00145_n11_α
# IR_VAR
 xchain00145_n11_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 152], rax
 jmp xchain00145_n13_α
 xchain00145_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00145_n15_α
# IR_VAR
 xchain00145_n13_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 232], rax
 jmp xchain00145_n16_α
# IR_VAR
 xchain00145_n14_α:
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 56], rax
 jmp xchain00145_n17_α
# IR_VAR
 xchain00145_n15_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3320], rax
 jmp xchain00145_n18_α
 xchain00145_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn496: .string "pull"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn496]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00145_n14_α
 jmp xchain00145_n19_α
 xchain00145_n16_β:
 jmp xchain00145_n14_α
# IR_RETURN
 xchain00145_n17_α:
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_options_γ
# IR_GEN_SCAN
 xchain00145_n18_α:
 mov rdi, qword ptr [rbp + 3312]
 mov rsi, qword ptr [rbp + 3320]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00145_n20_α
 xchain00145_n19_α:
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
  .Lrkfn501: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn501]
 lea rsi, [rbp + 96]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00145_n14_α
 jmp xchain00145_n11_α
 xchain00145_n19_β:
 jmp xchain00145_n14_α
# IR_DISJUNCTION_NARY
 xchain00145_n20_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 mov dword ptr [rbp + 448], 0
 jmp xchain00145_n22_α
xchain00145_n20_as:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 jne .Lx00147_0
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 jmp xchain00145_n21_α
.Lx00147_0:
 cmp eax, 1
 jne .Lx00147_1
 mov rax, qword ptr [rbp + 3184]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 440], rax
 jmp xchain00145_n21_α
.Lx00147_1:
 jmp xchain00145_n21_α
 xchain00145_n20_β:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 je xchain00145_n23_β
 jmp xchain00145_n35_α
xchain00145_n20_af:
 add dword ptr [rbp + 448], 1
 mov eax, dword ptr [rbp + 448]
 cmp eax, 1
 je xchain00145_n24_α
 jmp xchain00145_n35_α
# IR_GEN_SCAN
 xchain00145_n21_α:
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 408], rax
 lea rdi, [rbp + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 368]
 mov r14, qword ptr [rbp + 376]
 mov r15, qword ptr [rbp + 384]
 jmp xchain00145_n9_α
 xchain00145_n21_β:
 call rt_scan_reenter@PLT
 mov r13, rax
 mov r15, rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 jmp xchain00145_n20_β
 jmp xchain00145_n9_α
# IR_LIT_STRING
 xchain00145_n22_α:
 mov qword ptr [rbp + 3152], 1
 mov rax, qword ptr [rip + .Lx00148_0]
 mov qword ptr [rbp + 3160], rax
 jmp xchain00145_n27_α
 xchain00145_n22_β:
 jmp xchain00145_n20_af
.Lx00148_0:
 .quad .Lx00148_0_s
.Lx00148_0_s:
 .string "-"
# IR_DISJUNCTION_NARY
 xchain00145_n23_α:
 mov qword ptr [rbp + 560], 0
 mov qword ptr [rbp + 568], 0
 mov dword ptr [rbp + 576], 0
 jmp xchain00145_n29_α
xchain00145_n23_as:
 mov eax, dword ptr [rbp + 576]
 cmp eax, 0
 jne .Lx00149_0
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 568], rax
 jmp xchain00145_n28_α
.Lx00149_0:
 cmp eax, 1
 jne .Lx00149_1
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 568], rax
 jmp xchain00145_n28_α
.Lx00149_1:
 jmp xchain00145_n28_α
 xchain00145_n23_β:
 mov eax, dword ptr [rbp + 576]
 cmp eax, 0
 je xchain00145_n30_β
 jmp xchain00145_n28_α
xchain00145_n23_af:
 add dword ptr [rbp + 576], 1
 mov eax, dword ptr [rbp + 576]
 cmp eax, 1
 je xchain00145_n31_α
 jmp xchain00145_n28_α
# IR_VAR
 xchain00145_n24_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 3248], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 3256], rax
 jmp xchain00145_n34_α
 xchain00145_n24_β:
 jmp xchain00145_n35_α
 xchain00145_n25_α:
 jmp xchain00145_n20_as
xchain00145_n25_β:
 jmp xchain00145_n35_α
 xchain00145_n26_α:
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
  .Lrkfn513: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn513]
 lea rsi, [rbp + 3200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 cmp eax, 99
 je xchain00145_n35_α
 jmp xchain00145_n20_as
 xchain00145_n26_β:
 jmp xchain00145_n35_α
# IR_SCAN_MATCH
 xchain00145_n27_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00150_239
 add rsp, 16
 jmp xchain00145_n20_af
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
 jmp xchain00145_n20_af
.Lx00150_240:
 mov qword ptr [rbp + 3120], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 3128], rax
 jmp xchain00145_n36_α
.Lx00150_0:
 .quad .Lx00150_0_s
.Lx00150_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain00145_n28_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00151_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00145_n37_α
.Lx00151_0:
 .quad 1
# IR_VAR
 xchain00145_n29_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2552], rax
 jmp xchain00145_n38_α
 xchain00145_n29_β:
 jmp xchain00145_n23_af
# IR_DISJUNCTION_NARY
 xchain00145_n30_α:
 mov qword ptr [rbp + 704], 0
 mov qword ptr [rbp + 712], 0
 mov dword ptr [rbp + 720], 0
 jmp xchain00145_n39_α
xchain00145_n30_as:
 mov eax, dword ptr [rbp + 720]
 cmp eax, 0
 jne .Lx00152_0
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 712], rax
 jmp xchain00145_n32_α
.Lx00152_0:
 cmp eax, 1
 jne .Lx00152_1
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 712], rax
 jmp xchain00145_n32_α
.Lx00152_1:
 jmp xchain00145_n32_α
 xchain00145_n30_β:
 mov eax, dword ptr [rbp + 720]
 cmp eax, 0
 je xchain00145_n28_α
 jmp xchain00145_n28_α
xchain00145_n30_af:
 add dword ptr [rbp + 720], 1
 mov eax, dword ptr [rbp + 720]
 cmp eax, 1
 je xchain00145_n40_α
 jmp xchain00145_n28_α
# IR_LIT_STRING
 xchain00145_n31_α:
 mov qword ptr [rbp + 2704], 1
 mov rax, qword ptr [rip + .Lx00153_0]
 mov qword ptr [rbp + 2712], rax
 jmp xchain00145_n42_α
 xchain00145_n31_β:
 jmp xchain00145_n28_α
.Lx00153_0:
 .quad .Lx00153_0_s
.Lx00153_0_s:
 .string "Unrecognized option: -"
# IR_ASSIGN_VAR
 xchain00145_n32_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00145_n28_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00145_n23_as
 xchain00145_n32_β:
 jmp xchain00145_n28_α
 xchain00145_n33_α:
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
  .Lrkfn524: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn524]
 lea rsi, [rbp + 2656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 cmp eax, 99
 je xchain00145_n28_α
 jmp xchain00145_n23_as
 xchain00145_n33_β:
 jmp xchain00145_n28_α
# IR_VAR
 xchain00145_n34_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3280], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3288], rax
 jmp xchain00145_n26_α
# IR_GEN_SCAN
 xchain00145_n35_α:
 lea rdi, [rbp + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 368]
 mov r14, qword ptr [rbp + 376]
 mov r15, qword ptr [rbp + 384]
 jmp xchain00145_n9_α
 xchain00145_n35_β:
 jmp xchain00145_n9_α
# IR_SCAN_TAB
 xchain00145_n36_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 3128]
 cmp rax, 1
 jge .Lx00154_0
 add rax, r15
 add rax, 1
.Lx00154_0:
 cmp rax, 1
 jge .Lx00154_239
 add rsp, 16
 jmp xchain00145_n20_af
.Lx00154_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00154_240
 add rsp, 16
 jmp xchain00145_n20_af
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
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain00145_n43_α
 xchain00145_n36_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00145_n20_af
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00145_n37_α:
 sub rsp, 16
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00155_239
 add rsp, 16
 jmp xchain00145_n35_α
.Lx00155_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00155_240
 add rsp, 16
 jmp xchain00145_n35_α
.Lx00155_240:
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
 jmp xchain00145_n44_α
 xchain00145_n37_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00145_n35_α
# IR_VAR
 xchain00145_n38_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 2584], rax
 jmp xchain00145_n45_α
# IR_LIT_CHARSET
 xchain00145_n39_α:
 mov qword ptr [rbp + 2208], 1
 mov dword ptr [rbp + 2212], -1
 mov rax, qword ptr [rip + .Lx00156_0]
 mov qword ptr [rbp + 2216], rax
 jmp xchain00145_n46_α
 xchain00145_n39_β:
 jmp xchain00145_n30_af
.Lx00156_0:
 .quad .Lx00156_0_s
.Lx00156_0_s:
 .string "+.:"
# IR_LIT_INTEGER
 xchain00145_n40_α:
 mov qword ptr [rbp + 2368], 6
 mov rax, qword ptr [rip + .Lx00157_0]
 mov qword ptr [rbp + 2376], rax
 jmp xchain00145_n30_as
 xchain00145_n40_β:
 jmp xchain00145_n28_α
.Lx00157_0:
 .quad 1
 xchain00145_n41_α:
 jmp xchain00145_n30_as
xchain00145_n41_β:
 jmp xchain00145_n28_α
# IR_VAR
 xchain00145_n42_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2744], rax
 jmp xchain00145_n33_α
# IR_LIT_INTEGER
 xchain00145_n43_α:
 mov qword ptr [rbp + 3056], 6
 mov rax, qword ptr [rip + .Lx00158_0]
 mov qword ptr [rbp + 3064], rax
 jmp xchain00145_n47_α
.Lx00158_0:
 .quad 0
 xchain00145_n44_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00145_n23_α
 xchain00145_n45_α:
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
.Lx00159_60:
  .section .rodata
  .Lbynamegenfn385: .string "find"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn385]
 lea rsi, [rbp + 2496]
 mov edx, 2
 lea rcx, [rbp + 2528]
 call rt_call_arr_gen@PLT
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 cmp eax, 99
 je xchain00145_n23_af
 jmp xchain00145_n48_α
 xchain00145_n45_β:
 jmp .Lx00159_60
# IR_VAR_REF
 xchain00145_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain00145_n49_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00145_n47_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00160_0
 add rax, r15
 add rax, 1
.Lx00160_0:
 cmp rax, 1
 jl xchain00145_n50_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00145_n50_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00145_n50_α
 mov qword ptr [rbp + 3024], 6
 mov qword ptr [rbp + 3032], rax
 jmp xchain00145_n36_α
# IR_LIT_INTEGER
 xchain00145_n48_α:
 mov qword ptr [rbp + 2608], 6
 mov rax, qword ptr [rip + .Lx00161_0]
 mov qword ptr [rbp + 2616], rax
 jmp xchain00145_n51_α
.Lx00161_0:
 .quad 1
# IR_VAR
 xchain00145_n49_α:
 mov rax, qword ptr [rbp + 3712]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 2296], rax
 jmp xchain00145_n52_α
# KEYWORD_null
 xchain00145_n50_α:
 mov qword ptr [rbp + 2992], 0
 mov qword ptr [rbp + 3000], 0
 jmp xchain00145_n53_α
 xchain00145_n50_β:
 jmp xchain00145_n36_α
# IR_COERCE_NUMERIC
 xchain00145_n51_α:
 mov eax, dword ptr [rbp + 2480]
 cmp eax, 7
 je .Lx00162_1
 cmp eax, 6
 jne .Lx00162_0
 mov eax, dword ptr [rbp + 2608]
 cmp eax, 6
 jne .Lx00162_0
.Lx00162_1:
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2456], rax
 jmp xchain00145_n54_α
.Lx00162_0:
 lea rdi, [rbp + 2480]
 lea rsi, [rbp + 2608]
 lea rdx, [rbp + 2448]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00145_n54_α
# IR_SUBSCRIPT x[i] variable
 xchain00145_n52_α:
 mov rdi, qword ptr [rbp + 2256]
 mov rsi, qword ptr [rbp + 2264]
 mov rdx, qword ptr [rbp + 2288]
 mov rcx, qword ptr [rbp + 2296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00145_n30_af
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain00145_n55_α
 xchain00145_n53_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 2984], rax
 jmp xchain00145_n56_α
xchain00145_n53_β:
 jmp xchain00145_n20_af
 xchain00145_n54_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 100
 je .Lx00163_0
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 6
 jne .Lx00163_2
.Lx00163_1:
 mov rax, qword ptr [rbp + 2456]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 2416], 6
 mov qword ptr [rbp + 2424], rax
 jmp xchain00145_n57_α
.Lx00163_0:
 mov rdi, qword ptr [rbp + 2448]
 mov rsi, qword ptr [rbp + 2456]
 mov rdx, qword ptr [rbp + 2608]
 mov rcx, qword ptr [rbp + 2616]
 mov r8d, 0
 lea r9, [rbp + 2416]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00145_n57_α
.Lx00163_2:
 mov rdi, qword ptr [rbp + 2448]
 mov rsi, qword ptr [rbp + 2456]
 mov rdx, qword ptr [rbp + 2608]
 mov rcx, qword ptr [rbp + 2616]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00145_n23_af
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain00145_n57_α
 xchain00145_n54_β:
 jmp xchain00145_n23_af
# IR_DEREF variable -> value
 xchain00145_n55_α:
 mov rdi, qword ptr [rbp + 2320]
 mov rsi, qword ptr [rbp + 2328]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00145_n30_af
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain00145_n58_α
# IR_DISJUNCTION_NARY
 xchain00145_n56_α:
 mov qword ptr [rbp + 2768], 0
 mov qword ptr [rbp + 2776], 0
 mov dword ptr [rbp + 2784], 0
 jmp xchain00145_n59_α
xchain00145_n56_as:
 mov eax, dword ptr [rbp + 2784]
 cmp eax, 0
 jne .Lx00164_0
 jmp xchain00145_n28_α
.Lx00164_0:
 jmp xchain00145_n28_α
 xchain00145_n56_β:
 mov eax, dword ptr [rbp + 2784]
 jmp xchain00145_n28_α
xchain00145_n56_af:
 add dword ptr [rbp + 2784], 1
 mov eax, dword ptr [rbp + 2784]
 jmp xchain00145_n28_α
 xchain00145_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2416]
 mov rdx, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain00145_n60_α
 xchain00145_n58_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2352]
 mov rdx, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain00145_n61_α
# IR_LIT_STRING
 xchain00145_n59_α:
 mov qword ptr [rbp + 2944], 1
 mov rax, qword ptr [rip + .Lx00165_0]
 mov qword ptr [rbp + 2952], rax
 jmp xchain00145_n62_α
 xchain00145_n59_β:
 jmp xchain00145_n56_af
.Lx00165_0:
 .quad .Lx00165_0_s
.Lx00165_0_s:
 .string "-"
# IR_VAR_REF
 xchain00145_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3600]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00145_n63_α
 xchain00145_n61_α:
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
  .Lbynamefn401: .string "any"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn401]
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
 je xchain00145_n30_af
 jmp xchain00145_n64_α
 xchain00145_n61_β:
 jmp xchain00145_n30_af
# IR_SCAN_MATCH
 xchain00145_n62_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00166_239
 add rsp, 16
 jmp xchain00145_n56_af
.Lx00166_239:
 mov rdi, qword ptr [rip + .Lx00166_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00166_240
 add rsp, 16
 jmp xchain00145_n56_af
.Lx00166_240:
 mov qword ptr [rbp + 2912], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 2920], rax
 jmp xchain00145_n65_α
.Lx00166_0:
 .quad .Lx00166_0_s
.Lx00166_0_s:
 .string "-"
# IR_VAR
 xchain00145_n63_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 632], rax
 jmp xchain00145_n66_α
# IR_DISJUNCTION_NARY
 xchain00145_n64_α:
 mov qword ptr [rbp + 1776], 0
 mov qword ptr [rbp + 1784], 0
 mov dword ptr [rbp + 1792], 0
 jmp xchain00145_n68_α
xchain00145_n64_as:
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 0
 jne .Lx00167_0
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00145_n67_α
.Lx00167_0:
 cmp eax, 1
 jne .Lx00167_1
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00145_n67_α
.Lx00167_1:
 cmp eax, 2
 jne .Lx00167_2
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00145_n67_α
.Lx00167_2:
 jmp xchain00145_n67_α
 xchain00145_n64_β:
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 0
 je xchain00145_n64_af
 cmp eax, 1
 je xchain00145_n64_af
 jmp xchain00145_n64_af
xchain00145_n64_af:
 add dword ptr [rbp + 1792], 1
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 1
 je xchain00145_n69_α
 cmp eax, 2
 je xchain00145_n70_α
 jmp xchain00145_n75_α
# IR_SCAN_TAB
 xchain00145_n65_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 2920]
 cmp rax, 1
 jge .Lx00168_0
 add rax, r15
 add rax, 1
.Lx00168_0:
 cmp rax, 1
 jge .Lx00168_239
 add rsp, 16
 jmp xchain00145_n56_af
.Lx00168_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00168_240
 add rsp, 16
 jmp xchain00145_n56_af
.Lx00168_240:
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
 jmp xchain00145_n74_α
 xchain00145_n65_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00145_n56_af
# IR_SUBSCRIPT x[i] variable
 xchain00145_n66_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00145_n28_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00145_n30_α
 xchain00145_n67_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1776]
 mov rdx, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain00145_n75_α
# IR_LIT_STRING
 xchain00145_n68_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx00169_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain00145_n76_α
 xchain00145_n68_β:
 jmp xchain00145_n64_af
.Lx00169_0:
 .quad .Lx00169_0_s
.Lx00169_0_s:
 .string ""
# IR_VAR
 xchain00145_n69_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1992], rax
 jmp xchain00145_n72_α
 xchain00145_n69_β:
 jmp xchain00145_n64_af
# IR_LIT_STRING
 xchain00145_n70_α:
 mov qword ptr [rbp + 2080], 1
 mov rax, qword ptr [rip + .Lx00170_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain00145_n77_α
 xchain00145_n70_β:
 jmp xchain00145_n64_af
.Lx00170_0:
 .quad .Lx00170_0_s
.Lx00170_0_s:
 .string "No parameter following -"
 xchain00145_n71_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 1840]
 mov rsi, qword ptr [rbp + 1848]
 mov rdx, qword ptr [rbp + 1872]
 mov rcx, qword ptr [rbp + 1880]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00145_n64_af
 mov rdi, qword ptr [rbp + 1872]
 mov rsi, qword ptr [rbp + 1880]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain00145_n64_as
 xchain00145_n71_β:
 jmp xchain00145_n64_af
 xchain00145_n72_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1960], rax
  .section .rodata
  .Lrkfn581: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn581]
 lea rsi, [rbp + 1952]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je xchain00145_n64_af
 jmp xchain00145_n64_as
 xchain00145_n72_β:
 jmp xchain00145_n64_af
 xchain00145_n73_α:
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
  .Lrkfn583: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn583]
 lea rsi, [rbp + 2032]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain00145_n64_af
 jmp xchain00145_n64_as
 xchain00145_n73_β:
 jmp xchain00145_n64_af
# IR_LIT_INTEGER
 xchain00145_n74_α:
 mov qword ptr [rbp + 2848], 6
 mov rax, qword ptr [rip + .Lx00171_0]
 mov qword ptr [rbp + 2856], rax
 jmp xchain00145_n78_α
.Lx00171_0:
 .quad 0
# IR_VAR
 xchain00145_n75_α:
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 792], rax
 jmp xchain00145_n79_α
# IR_LIT_INTEGER
 xchain00145_n76_α:
 mov qword ptr [rbp + 1904], 6
 mov rax, qword ptr [rip + .Lx00172_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain00145_n80_α
.Lx00172_0:
 .quad 0
# IR_VAR
 xchain00145_n77_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2120], rax
 jmp xchain00145_n73_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00145_n78_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00173_0
 add rax, r15
 add rax, 1
.Lx00173_0:
 cmp rax, 1
 jl xchain00145_n65_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00145_n65_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00145_n65_α
 mov qword ptr [rbp + 2816], 6
 mov qword ptr [rbp + 2824], rax
 jmp xchain00145_n81_α
# IR_LIT_STRING
 xchain00145_n79_α:
 mov qword ptr [rbp + 1616], 1
 mov rax, qword ptr [rip + .Lx00174_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00145_n82_α
.Lx00174_0:
 .quad .Lx00174_0_s
.Lx00174_0_s:
 .string ":"
# IR_SCAN_TAB
 xchain00145_n80_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00175_0
 add rax, r15
 add rax, 1
.Lx00175_0:
 cmp rax, 1
 jge .Lx00175_239
 add rsp, 16
 jmp xchain00145_n64_af
.Lx00175_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00175_240
 add rsp, 16
 jmp xchain00145_n64_af
.Lx00175_240:
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
 jmp xchain00145_n71_α
 xchain00145_n80_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00145_n64_af
 xchain00145_n81_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2808], rax
 jmp xchain00145_n11_α
xchain00145_n81_β:
 jmp xchain00145_n56_af
 xchain00145_n82_α:
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
  .Lrkfn597: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn597]
 lea rsi, [rbp + 1712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je xchain00145_n84_α
 jmp xchain00145_n83_α
 xchain00145_n82_β:
 jmp xchain00145_n84_α
# IR_VAR
 xchain00145_n83_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1656], rax
 jmp xchain00145_n85_α
# IR_LIT_STRING
 xchain00145_n84_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx00176_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain00145_n86_α
.Lx00176_0:
 .quad .Lx00176_0_s
.Lx00176_0_s:
 .string "+"
 xchain00145_n85_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1648]
 mov rdx, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00145_n87_α
 xchain00145_n86_α:
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
  .Lrkfn603: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn603]
 lea rsi, [rbp + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain00145_n89_α
 jmp xchain00145_n88_α
 xchain00145_n86_β:
 jmp xchain00145_n89_α
# IR_VAR
 xchain00145_n87_α:
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 760], rax
 jmp xchain00145_n41_α
# IR_DISJUNCTION_NARY
 xchain00145_n88_α:
 mov qword ptr [rbp + 1248], 0
 mov qword ptr [rbp + 1256], 0
 mov dword ptr [rbp + 1264], 0
 jmp xchain00145_n91_α
xchain00145_n88_as:
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 0
 jne .Lx00177_0
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00145_n90_α
.Lx00177_0:
 cmp eax, 1
 jne .Lx00177_1
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00145_n90_α
.Lx00177_1:
 jmp xchain00145_n90_α
 xchain00145_n88_β:
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 0
 je xchain00145_n88_af
 jmp xchain00145_n88_af
xchain00145_n88_af:
 add dword ptr [rbp + 1264], 1
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 1
 je xchain00145_n92_α
 jmp xchain00145_n28_α
# IR_LIT_STRING
 xchain00145_n89_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx00178_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00145_n95_α
.Lx00178_0:
 .quad .Lx00178_0_s
.Lx00178_0_s:
 .string "."
 xchain00145_n90_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain00145_n87_α
# IR_VAR
 xchain00145_n91_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1336], rax
 jmp xchain00145_n93_α
 xchain00145_n91_β:
 jmp xchain00145_n88_af
# IR_LIT_STRING
 xchain00145_n92_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx00179_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain00145_n96_α
 xchain00145_n92_β:
 jmp xchain00145_n88_af
.Lx00179_0:
 .quad .Lx00179_0_s
.Lx00179_0_s:
 .string "-"
 xchain00145_n93_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1296]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1304], rax
  .section .rodata
  .Lrkfn614: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn614]
 lea rsi, [rbp + 1296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain00145_n88_af
 jmp xchain00145_n88_as
 xchain00145_n93_β:
 jmp xchain00145_n88_af
 xchain00145_n94_α:
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
  .Lrkfn616: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn616]
 lea rsi, [rbp + 1376]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain00145_n88_af
 jmp xchain00145_n88_as
 xchain00145_n94_β:
 jmp xchain00145_n88_af
 xchain00145_n95_α:
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
  .Lrkfn618: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn618]
 lea rsi, [rbp + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain00145_n28_α
 jmp xchain00145_n97_α
 xchain00145_n95_β:
 jmp xchain00145_n28_α
# IR_VAR
 xchain00145_n96_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1480], rax
 jmp xchain00145_n98_α
# IR_DISJUNCTION_NARY
 xchain00145_n97_α:
 mov qword ptr [rbp + 848], 0
 mov qword ptr [rbp + 856], 0
 mov dword ptr [rbp + 864], 0
 jmp xchain00145_n00035_α
xchain00145_n97_as:
 mov eax, dword ptr [rbp + 864]
 cmp eax, 0
 jne .Lx00180_0
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 856], rax
 jmp xchain00145_n99_α
.Lx00180_0:
 cmp eax, 1
 jne .Lx00180_1
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 856], rax
 jmp xchain00145_n99_α
.Lx00180_1:
 jmp xchain00145_n99_α
 xchain00145_n97_β:
 mov eax, dword ptr [rbp + 864]
 cmp eax, 0
 je xchain00145_n97_af
 jmp xchain00145_n97_af
xchain00145_n97_af:
 add dword ptr [rbp + 864], 1
 mov eax, dword ptr [rbp + 864]
 cmp eax, 1
 je xchain00145_n00001_α
 jmp xchain00145_n28_α
# IR_LIT_STRING
 xchain00145_n98_α:
 mov qword ptr [rbp + 1504], 1
 mov rax, qword ptr [rip + .Lx00181_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain00145_n94_α
.Lx00181_0:
 .quad .Lx00181_0_s
.Lx00181_0_s:
 .string " needs numeric parameter"
 xchain00145_n99_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00145_n87_α
# IR_VAR
 xchain00145_n00035_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 936], rax
 jmp xchain00145_n00037_α
 xchain00145_n00035_β:
 jmp xchain00145_n97_af
# IR_LIT_STRING
 xchain00145_n00001_α:
 mov qword ptr [rbp + 1040], 1
 mov rax, qword ptr [rip + .Lx00182_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00145_n00039_α
 xchain00145_n00001_β:
 jmp xchain00145_n97_af
.Lx00182_0:
 .quad .Lx00182_0_s
.Lx00182_0_s:
 .string "-"
 xchain00145_n00037_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+896]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 904], rax
  .section .rodata
  .Lrkfn629: .string "real"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn629]
 lea rsi, [rbp + 896]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 cmp eax, 99
 je xchain00145_n97_af
 jmp xchain00145_n97_as
 xchain00145_n00037_β:
 jmp xchain00145_n97_af
 xchain00145_n00002_α:
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
  .Lrkfn631: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn631]
 lea rsi, [rbp + 976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain00145_n97_af
 jmp xchain00145_n97_as
 xchain00145_n00002_β:
 jmp xchain00145_n97_af
# IR_VAR
 xchain00145_n00039_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00145_n00041_α
# IR_LIT_STRING
 xchain00145_n00041_α:
 mov qword ptr [rbp + 1104], 1
 mov rax, qword ptr [rip + .Lx00183_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00145_n00002_α
.Lx00183_0:
 .quad .Lx00183_0_s
.Lx00183_0_s:
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
 lea rax, [rip + .Lx00184_2]
 mov qword ptr [rbp + 3736], rax
 lea rax, [rip + .Lx00184_3]
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
.Lx00184_2:
 mov rdx, qword ptr [rsp + -3776]
 mov rcx, rsp
 add rcx, -3760
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00184_3:
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
 xchain00185_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 520], rax
 jmp xchain00185_n1_α
# IR_ASSIGN gva
 xchain00185_n1_α:
 mov rax, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 mov qword ptr [1879052544], rax
 mov qword ptr [1879052552], rdx
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00185_n2_α
 xchain00185_n2_α:
 call proc_Signature___dcα
 jmp .Lx00186_2
.Lx00186_2:
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00185_n3_α
 jmp xchain00185_n3_α
 xchain00185_n2_β:
 jmp xchain00185_n3_α
.Lx00186_0:
 .quad .Lx00186_0_s
.Lx00186_0_s:
 .string "Signature__"
 xchain00185_n3_α:
 call proc_Regions___dcα
 jmp .Lx00187_2
.Lx00187_2:
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00185_n4_α
 jmp xchain00185_n4_α
 xchain00185_n3_β:
 jmp xchain00185_n4_α
.Lx00187_0:
 .quad .Lx00187_0_s
.Lx00187_0_s:
 .string "Regions__"
 xchain00185_n4_α:
 call proc_Time___dcα
 jmp .Lx00188_2
.Lx00188_2:
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain00185_n5_α
 jmp xchain00185_n5_α
 xchain00185_n4_β:
 jmp xchain00185_n5_α
.Lx00188_0:
 .quad .Lx00188_0_s
.Lx00188_0_s:
 .string "Time__"
# IR_DISJUNCTION_NARY
 xchain00185_n5_α:
 mov qword ptr [rbp + 192], 0
 mov qword ptr [rbp + 200], 0
 mov dword ptr [rbp + 208], 0
 jmp xchain00185_n7_α
xchain00185_n5_as:
 mov eax, dword ptr [rbp + 208]
 cmp eax, 0
 jne .Lx00189_0
 jmp xchain00185_n6_α
.Lx00189_0:
 jmp xchain00185_n6_α
 xchain00185_n5_β:
 mov eax, dword ptr [rbp + 208]
 jmp xchain00185_n6_α
xchain00185_n5_af:
 add dword ptr [rbp + 208], 1
 mov eax, dword ptr [rbp + 208]
 jmp xchain00185_n6_α
# IR_VAR
 xchain00185_n6_α:
 mov rdi, qword ptr [rip + .Lx00190_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00185_n10_α
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00185_n9_α
.Lx00190_0:
 .quad .Lx00190_0_s
.Lx00190_0_s:
 .string "write"
# IR_LIT_STRING
 xchain00185_n7_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx00191_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00185_n11_α
 xchain00185_n7_β:
 jmp xchain00185_n5_af
.Lx00191_0:
 .quad .Lx00191_0_s
.Lx00191_0_s:
 .string "OUTPUT"
 xchain00185_n8_α:
 jmp xchain00185_n5_as
xchain00185_n8_β:
 jmp xchain00185_n6_α
# IR_ASSIGN gva
 xchain00185_n9_α:
 mov rax, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 mov qword ptr [1879052512], rax
 mov qword ptr [1879052520], rdx
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00185_n10_α
# IR_VAR
 xchain00185_n10_α:
 mov rdi, qword ptr [rip + .Lx00192_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00185_n13_α
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain00185_n12_α
.Lx00192_0:
 .quad .Lx00192_0_s
.Lx00192_0_s:
 .string "writes"
 xchain00185_n11_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn654: .string "getenv"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn654]
 lea rsi, [rbp + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain00185_n5_af
 jmp xchain00185_n14_α
 xchain00185_n11_β:
 jmp xchain00185_n5_af
# IR_ASSIGN gva
 xchain00185_n12_α:
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [1879052528], rax
 mov qword ptr [1879052536], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00185_n13_α
# IR_LIT_INTEGER
 xchain00185_n13_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00193_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00185_n15_α
.Lx00193_0:
 .quad 1
# IR_LIT_STRING
 xchain00185_n14_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00194_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00185_n16_α
.Lx00194_0:
 .quad .Lx00194_0_s
.Lx00194_0_s:
 .string "*** Benchmarking with output ***"
# IR_ASSIGN global
 xchain00185_n15_α:
 mov rsi, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov rdi, qword ptr [rip + .Lx00195_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 jmp xchain00185_n17_α
.Lx00195_0:
 .quad .Lx00195_0_s
.Lx00195_0_s:
 .string "writes"
 xchain00185_n16_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn660: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn660]
 lea rsi, [rbp + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain00185_n18_α
 jmp xchain00185_n18_α
 xchain00185_n16_β:
 jmp xchain00185_n18_α
# IR_ASSIGN global
 xchain00185_n17_α:
 mov rsi, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov rdi, qword ptr [rip + .Lx00196_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00185_n19_α
.Lx00196_0:
 .quad .Lx00196_0_s
.Lx00196_0_s:
 .string "write"
# IR_RETURN
 xchain00185_n18_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Init___γ
# IR_RETURN
 xchain00185_n19_α:
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
 lea rax, [rip + .Lx00197_2]
 mov qword ptr [rbp + 600], rax
 lea rax, [rip + .Lx00197_3]
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
.Lx00197_2:
 mov rdx, qword ptr [rsp + -640]
 mov rcx, rsp
 add rcx, -624
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00197_3:
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
 xchain00198_n0_α:
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 mov dword ptr [rbp + 304], 0
 jmp xchain00198_n2_α
xchain00198_n0_as:
 mov eax, dword ptr [rbp + 304]
 cmp eax, 0
 jne .Lx00199_0
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 296], rax
 jmp xchain00198_n1_α
.Lx00199_0:
 jmp xchain00198_n1_α
 xchain00198_n0_β:
 mov eax, dword ptr [rbp + 304]
 jmp xchain00198_n1_α
xchain00198_n0_af:
 add dword ptr [rbp + 304], 1
 mov eax, dword ptr [rbp + 304]
 jmp xchain00198_n1_α
# IR_VAR
 xchain00198_n1_α:
 mov rax, qword ptr [1879052544]
 mov rdx, qword ptr [1879052552]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00198_n4_α
# IR_LIT_STRING
 xchain00198_n2_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx00200_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00198_n6_α
 xchain00198_n2_β:
 jmp xchain00198_n9_α
.Lx00200_0:
 .quad .Lx00200_0_s
.Lx00200_0_s:
 .string "OUTPUT"
 xchain00198_n3_α:
 jmp xchain00198_n0_as
xchain00198_n3_β:
 jmp xchain00198_n1_α
# IR_LIT_STRING
 xchain00198_n4_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00201_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00198_n7_α
.Lx00201_0:
 .quad .Lx00201_0_s
.Lx00201_0_s:
 .string " elapsed time = "
 xchain00198_n5_α:
 call proc_Regions___dcα
 jmp .Lx00202_2
.Lx00202_2:
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00198_n8_α
 jmp xchain00198_n8_α
 xchain00198_n5_β:
 jmp xchain00198_n8_α
.Lx00202_0:
 .quad .Lx00202_0_s
.Lx00202_0_s:
 .string "Regions__"
 xchain00198_n6_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
  .section .rodata
  .Lrkfn675: .string "getenv"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn675]
 lea rsi, [rbp + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00198_n9_α
 jmp xchain00198_n0_as
 xchain00198_n6_β:
 jmp xchain00198_n9_α
 xchain00198_n7_α:
 call proc_Time___dcα
 jmp .Lx00203_2
.Lx00203_2:
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain00198_n5_α
 jmp xchain00198_n10_α
 xchain00198_n7_β:
 jmp xchain00198_n5_α
.Lx00203_0:
 .quad .Lx00203_0_s
.Lx00203_0_s:
 .string "Time__"
 xchain00198_n8_α:
 call proc_Storage___dcα
 jmp .Lx00204_2
.Lx00204_2:
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je xchain00198_n11_α
 jmp xchain00198_n11_α
 xchain00198_n8_β:
 jmp xchain00198_n11_α
.Lx00204_0:
 .quad .Lx00204_0_s
.Lx00204_0_s:
 .string "Storage__"
# KEYWORD_null
 xchain00198_n9_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 jmp xchain00198_n12_α
 xchain00198_n9_β:
 jmp xchain00198_n0_af
 xchain00198_n10_α:
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
  .Lrkfn682: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn682]
 lea rsi, [rbp + 128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain00198_n5_α
 jmp xchain00198_n5_α
 xchain00198_n10_β:
 jmp xchain00198_n5_α
 xchain00198_n11_α:
 call proc_Collections___dcα
 jmp .Lx00205_2
.Lx00205_2:
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 cmp eax, 99
 je xchain00198_n13_α
 jmp xchain00198_n13_α
 xchain00198_n11_β:
 jmp xchain00198_n13_α
.Lx00205_0:
 .quad .Lx00205_0_s
.Lx00205_0_s:
 .string "Collections__"
# IR_VAR
 xchain00198_n12_α:
 mov rax, qword ptr [1879052512]
 mov rdx, qword ptr [1879052520]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00198_n14_α
# IR_RETURN
 xchain00198_n13_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Term___γ
# IR_ASSIGN global
 xchain00198_n14_α:
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 mov rdi, qword ptr [rip + .Lx00206_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain00198_n15_α
.Lx00206_0:
 .quad .Lx00206_0_s
.Lx00206_0_s:
 .string "write"
# IR_VAR
 xchain00198_n15_α:
 mov rax, qword ptr [1879052528]
 mov rdx, qword ptr [1879052536]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00198_n16_α
# IR_ASSIGN global
 xchain00198_n16_α:
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov rdi, qword ptr [rip + .Lx00207_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00198_n3_α
.Lx00207_0:
 .quad .Lx00207_0_s
.Lx00207_0_s:
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
 lea rax, [rip + .Lx00208_2]
 mov qword ptr [rbp + 600], rax
 lea rax, [rip + .Lx00208_3]
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
.Lx00208_2:
 mov rdx, qword ptr [rsp + -640]
 mov rcx, rsp
 add rcx, -624
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00208_3:
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
 xchain00209_n0_α:
 mov qword ptr [rbp + 832], 0
 mov qword ptr [rbp + 840], 0
 mov dword ptr [rbp + 848], 0
 jmp xchain00209_n2_α
xchain00209_n0_as:
 mov eax, dword ptr [rbp + 848]
 cmp eax, 0
 jne .Lx00210_0
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
 jmp xchain00209_n1_α
.Lx00210_0:
 jmp xchain00209_n1_α
 xchain00209_n0_β:
 mov eax, dword ptr [rbp + 848]
 jmp xchain00209_n1_α
xchain00209_n0_af:
 add dword ptr [rbp + 848], 1
 mov eax, dword ptr [rbp + 848]
 jmp xchain00209_n1_α
# IR_MAKE_LIST
 xchain00209_n1_α:
 lea rdi, [rbp + 832]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00209_n4_α
# IR_VAR_REF
 xchain00209_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052640
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain00209_n5_α
 xchain00209_n2_β:
 jmp xchain00209_n0_af
# IR_ASSIGN gva
 xchain00209_n3_α:
 mov rax, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 mov qword ptr [1879052624], rax
 mov qword ptr [1879052632], rdx
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00209_n0_as
 xchain00209_n3_β:
 jmp xchain00209_n1_α
 xchain00209_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00209_n6_α
# IR_NULLTEST_VAR
 xchain00209_n5_α:
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 99
 je xchain00209_n0_af
 mov rdi, qword ptr [rbp + 1088]
 mov rsi, qword ptr [rbp + 1096]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00209_n0_af
 cmp eax, 0
 jne xchain00209_n0_af
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00209_n7_α
# IR_VAR
 xchain00209_n6_α:
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 744], rax
 jmp xchain00209_n8_α
# IR_LIT_INTEGER
 xchain00209_n7_α:
 mov qword ptr [rbp + 1168], 6
 mov rax, qword ptr [rip + .Lx00211_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain00209_n10_α
.Lx00211_0:
 .quad 1
# KEYWORD_gen
 xchain00209_n8_α:
 mov qword ptr [rbp + 784], 0
.Lx00212_1:
 mov rdi, qword ptr [rip + .Lx00212_0]
 mov rsi, qword ptr [rbp + 784]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00209_n9_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 mov rax, qword ptr [rbp + 784]
 add rax, 1
 mov qword ptr [rbp + 784], rax
 jmp xchain00209_n11_α
 xchain00209_n8_β:
 jmp .Lx00212_1
.Lx00212_0:
 .quad .Lx00212_0_s
.Lx00212_0_s:
 .string "&collections"
# IR_LIT_STRING
 xchain00209_n9_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00213_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00209_n12_α
.Lx00213_0:
 .quad .Lx00213_0_s
.Lx00213_0_s:
 .string "collections"
# IR_ASSIGN_VAR
 xchain00209_n10_α:
 mov rdi, qword ptr [rbp + 1120]
 mov rsi, qword ptr [rbp + 1128]
 mov rdx, qword ptr [rbp + 1168]
 mov rcx, qword ptr [rbp + 1176]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00209_n0_af
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain00209_n13_α
 xchain00209_n11_α:
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
  .Lrkfn708: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn708]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain00209_n8_β
 jmp xchain00209_n8_β
 xchain00209_n11_β:
 jmp xchain00209_n8_β
 xchain00209_n12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn710: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn710]
 lea rsi, [rbp + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00209_n14_α
 jmp xchain00209_n14_α
 xchain00209_n12_β:
 jmp xchain00209_n14_α
# IR_LIT_STRING
 xchain00209_n13_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx00214_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00209_n15_α
.Lx00214_0:
 .quad .Lx00214_0_s
.Lx00214_0_s:
 .string "total"
# IR_LIT_INTEGER
 xchain00209_n14_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00215_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00209_n16_α
.Lx00215_0:
 .quad 1
# IR_LIT_STRING
 xchain00209_n15_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx00216_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00209_n17_α
.Lx00216_0:
 .quad .Lx00216_0_s
.Lx00216_0_s:
 .string "static"
# IR_VAR
 xchain00209_n16_α:
 mov rax, qword ptr [1879052624]
 mov rdx, qword ptr [1879052632]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00209_n18_α
# IR_LIT_STRING
 xchain00209_n17_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx00217_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00209_n20_α
.Lx00217_0:
 .quad .Lx00217_0_s
.Lx00217_0_s:
 .string "string"
# IR_UNOP
 xchain00209_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00209_n21_α
# IR_RETURN
 xchain00209_n19_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Collections___γ
# IR_LIT_STRING
 xchain00209_n20_α:
 mov qword ptr [rbp + 1056], 1
 mov rax, qword ptr [rip + .Lx00218_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain00209_n22_α
.Lx00218_0:
 .quad .Lx00218_0_s
.Lx00218_0_s:
 .string "block"
# IR_TO
 xchain00209_n21_α:
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
.Lx00219_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00209_n19_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00209_n23_α
 xchain00209_n21_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00219_0
# IR_MAKE_LIST
 xchain00209_n22_α:
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
 jmp xchain00209_n3_α
 xchain00209_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00209_n24_α
# IR_BOUND
 xchain00209_n24_α:
 mov qword ptr [rbp + 160], rsp
 jmp xchain00209_n25_α
# IR_VAR_REF
 xchain00209_n25_α:
 mov rax, 4294967305
 mov rdx, 1879052624
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00209_n26_α
# IR_VAR
 xchain00209_n26_α:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 312], rax
 jmp xchain00209_n27_α
# IR_SUBSCRIPT x[i] variable
 xchain00209_n27_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00209_n28_α
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00209_n29_α
# IR_UNMARK
 xchain00209_n28_α:
 mov rsp, qword ptr [rbp + 160]
 jmp xchain00209_n21_β
# IR_DEREF variable -> value
 xchain00209_n29_α:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00209_n28_α
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00209_n30_α
# IR_VAR_REF
 xchain00209_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1232]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00209_n31_α
# IR_VAR
 xchain00209_n31_α:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 488], rax
 jmp xchain00209_n32_α
# IR_SUBSCRIPT x[i] variable
 xchain00209_n32_α:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00209_n28_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00209_n33_α
# IR_DEREF variable -> value
 xchain00209_n33_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00209_n28_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00209_n34_α
# IR_LIT_INTEGER
 xchain00209_n34_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00220_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00209_n35_α
.Lx00220_0:
 .quad 8
 xchain00209_n35_α:
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
  .Lrkfn742: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn742]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00209_n28_α
 jmp xchain00209_n36_α
 xchain00209_n35_β:
 jmp xchain00209_n28_α
 xchain00209_n36_α:
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
  .Lrkfn744: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn744]
 lea rsi, [rbp + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00209_n28_α
 jmp xchain00209_n28_α
 xchain00209_n36_β:
 jmp xchain00209_n28_α
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
 lea rax, [rip + .Lx00221_2]
 mov qword ptr [rbp + 1256], rax
 lea rax, [rip + .Lx00221_3]
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
.Lx00221_2:
 mov rdx, qword ptr [rsp + -1296]
 mov rcx, rsp
 add rcx, -1280
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00221_3:
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
 xchain00222_n0_α:
 mov qword ptr [rbp + 832], 0
 mov qword ptr [rbp + 840], 0
 mov dword ptr [rbp + 848], 0
 jmp xchain00222_n2_α
xchain00222_n0_as:
 mov eax, dword ptr [rbp + 848]
 cmp eax, 0
 jne .Lx00223_0
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
 jmp xchain00222_n1_α
.Lx00223_0:
 jmp xchain00222_n1_α
 xchain00222_n0_β:
 mov eax, dword ptr [rbp + 848]
 jmp xchain00222_n1_α
xchain00222_n0_af:
 add dword ptr [rbp + 848], 1
 mov eax, dword ptr [rbp + 848]
 jmp xchain00222_n1_α
# IR_MAKE_LIST
 xchain00222_n1_α:
 lea rdi, [rbp + 832]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00222_n4_α
# IR_VAR_REF
 xchain00222_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052672
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00222_n5_α
 xchain00222_n2_β:
 jmp xchain00222_n0_af
# IR_ASSIGN gva
 xchain00222_n3_α:
 mov rax, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 mov qword ptr [1879052656], rax
 mov qword ptr [1879052664], rdx
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00222_n0_as
 xchain00222_n3_β:
 jmp xchain00222_n1_α
 xchain00222_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00222_n6_α
# IR_NULLTEST_VAR
 xchain00222_n5_α:
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 99
 je xchain00222_n0_af
 mov rdi, qword ptr [rbp + 1040]
 mov rsi, qword ptr [rbp + 1048]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00222_n0_af
 cmp eax, 0
 jne xchain00222_n0_af
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00222_n7_α
# IR_VAR
 xchain00222_n6_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 744], rax
 jmp xchain00222_n8_α
# IR_LIT_INTEGER
 xchain00222_n7_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx00224_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00222_n10_α
.Lx00224_0:
 .quad 1
# KEYWORD_gen
 xchain00222_n8_α:
 mov qword ptr [rbp + 784], 0
.Lx00225_1:
 mov rdi, qword ptr [rip + .Lx00225_0]
 mov rsi, qword ptr [rbp + 784]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00222_n9_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 mov rax, qword ptr [rbp + 784]
 add rax, 1
 mov qword ptr [rbp + 784], rax
 jmp xchain00222_n11_α
 xchain00222_n8_β:
 jmp .Lx00225_1
.Lx00225_0:
 .quad .Lx00225_0_s
.Lx00225_0_s:
 .string "&regions"
# IR_LIT_STRING
 xchain00222_n9_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00226_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00222_n12_α
.Lx00226_0:
 .quad .Lx00226_0_s
.Lx00226_0_s:
 .string "regions"
# IR_ASSIGN_VAR
 xchain00222_n10_α:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, qword ptr [rbp + 1120]
 mov rcx, qword ptr [rbp + 1128]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00222_n0_af
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00222_n13_α
 xchain00222_n11_α:
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
  .Lrkfn763: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn763]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain00222_n8_β
 jmp xchain00222_n8_β
 xchain00222_n11_β:
 jmp xchain00222_n8_β
 xchain00222_n12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn765: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn765]
 lea rsi, [rbp + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00222_n14_α
 jmp xchain00222_n14_α
 xchain00222_n12_β:
 jmp xchain00222_n14_α
# IR_LIT_STRING
 xchain00222_n13_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx00227_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00222_n15_α
.Lx00227_0:
 .quad .Lx00227_0_s
.Lx00227_0_s:
 .string "static"
# IR_LIT_INTEGER
 xchain00222_n14_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00228_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00222_n16_α
.Lx00228_0:
 .quad 1
# IR_LIT_STRING
 xchain00222_n15_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx00229_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00222_n17_α
.Lx00229_0:
 .quad .Lx00229_0_s
.Lx00229_0_s:
 .string "string"
# IR_VAR
 xchain00222_n16_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00222_n18_α
# IR_LIT_STRING
 xchain00222_n17_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx00230_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00222_n20_α
.Lx00230_0:
 .quad .Lx00230_0_s
.Lx00230_0_s:
 .string "block"
# IR_UNOP
 xchain00222_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00222_n21_α
# IR_RETURN
 xchain00222_n19_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Regions___γ
# IR_MAKE_LIST
 xchain00222_n20_α:
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
 jmp xchain00222_n3_α
# IR_TO
 xchain00222_n21_α:
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
.Lx00231_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00222_n19_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00222_n22_α
 xchain00222_n21_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00231_0
 xchain00222_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00222_n23_α
# IR_BOUND
 xchain00222_n23_α:
 mov qword ptr [rbp + 160], rsp
 jmp xchain00222_n24_α
# IR_VAR_REF
 xchain00222_n24_α:
 mov rax, 4294967305
 mov rdx, 1879052656
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00222_n25_α
# IR_VAR
 xchain00222_n25_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 312], rax
 jmp xchain00222_n26_α
# IR_SUBSCRIPT x[i] variable
 xchain00222_n26_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00222_n27_α
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00222_n28_α
# IR_UNMARK
 xchain00222_n27_α:
 mov rsp, qword ptr [rbp + 160]
 jmp xchain00222_n21_β
# IR_DEREF variable -> value
 xchain00222_n28_α:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00222_n27_α
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00222_n29_α
# IR_VAR_REF
 xchain00222_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00222_n30_α
# IR_VAR
 xchain00222_n30_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 488], rax
 jmp xchain00222_n31_α
# IR_SUBSCRIPT x[i] variable
 xchain00222_n31_α:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00222_n27_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00222_n32_α
# IR_DEREF variable -> value
 xchain00222_n32_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00222_n27_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00222_n33_α
# IR_LIT_INTEGER
 xchain00222_n33_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00232_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00222_n34_α
.Lx00232_0:
 .quad 8
 xchain00222_n34_α:
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
  .Lrkfn796: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn796]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00222_n27_α
 jmp xchain00222_n35_α
 xchain00222_n34_β:
 jmp xchain00222_n27_α
 xchain00222_n35_α:
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
  .Lrkfn798: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn798]
 lea rsi, [rbp + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00222_n27_α
 jmp xchain00222_n27_α
 xchain00222_n35_β:
 jmp xchain00222_n27_α
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
 lea rax, [rip + .Lx00233_2]
 mov qword ptr [rbp + 1208], rax
 lea rax, [rip + .Lx00233_3]
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
.Lx00233_2:
 mov rdx, qword ptr [rsp + -1248]
 mov rcx, rsp
 add rcx, -1232
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00233_3:
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
 xchain00234_n0_α:
 mov rdi, qword ptr [rip + .Lx00235_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00234_n2_α
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00234_n1_α
 xchain00234_n0_β:
 jmp xchain00234_n2_α
.Lx00235_0:
 .quad .Lx00235_0_s
.Lx00235_0_s:
 .string "&version"
 xchain00234_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn803: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn803]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00234_n2_α
 jmp xchain00234_n2_α
 xchain00234_n1_β:
 jmp xchain00234_n2_α
# KEYWORD_read
 xchain00234_n2_α:
 mov rdi, qword ptr [rip + .Lx00236_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00234_n4_α
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00234_n3_α
 xchain00234_n2_β:
 jmp xchain00234_n4_α
.Lx00236_0:
 .quad .Lx00236_0_s
.Lx00236_0_s:
 .string "&host"
 xchain00234_n3_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn806: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn806]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je xchain00234_n4_α
 jmp xchain00234_n4_α
 xchain00234_n3_β:
 jmp xchain00234_n4_α
# KEYWORD_gen
 xchain00234_n4_α:
 mov qword ptr [rbp + 80], 0
.Lx00237_1:
 mov rdi, qword ptr [rip + .Lx00237_0]
 mov rsi, qword ptr [rbp + 80]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00234_n6_α
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 mov rax, qword ptr [rbp + 80]
 add rax, 1
 mov qword ptr [rbp + 80], rax
 jmp xchain00234_n5_α
 xchain00234_n4_β:
 jmp .Lx00237_1
.Lx00237_0:
 .quad .Lx00237_0_s
.Lx00237_0_s:
 .string "&features"
 xchain00234_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+32]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 40], rax
  .section .rodata
  .Lrkfn809: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn809]
 lea rsi, [rbp + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 cmp eax, 99
 je xchain00234_n4_β
 jmp xchain00234_n4_β
 xchain00234_n5_β:
 jmp xchain00234_n4_β
# IR_RETURN
 xchain00234_n6_α:
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
 lea rax, [rip + .Lx00238_2]
 mov qword ptr [rbp + 280], rax
 lea rax, [rip + .Lx00238_3]
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
.Lx00238_2:
 mov rdx, qword ptr [rsp + -320]
 mov rcx, rsp
 add rcx, -304
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00238_3:
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
 xchain00239_n0_α:
 mov qword ptr [rbp + 832], 0
 mov qword ptr [rbp + 840], 0
 mov dword ptr [rbp + 848], 0
 jmp xchain00239_n2_α
xchain00239_n0_as:
 mov eax, dword ptr [rbp + 848]
 cmp eax, 0
 jne .Lx00240_0
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
 jmp xchain00239_n1_α
.Lx00240_0:
 jmp xchain00239_n1_α
 xchain00239_n0_β:
 mov eax, dword ptr [rbp + 848]
 jmp xchain00239_n1_α
xchain00239_n0_af:
 add dword ptr [rbp + 848], 1
 mov eax, dword ptr [rbp + 848]
 jmp xchain00239_n1_α
# IR_MAKE_LIST
 xchain00239_n1_α:
 lea rdi, [rbp + 832]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00239_n4_α
# IR_VAR_REF
 xchain00239_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052704
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00239_n5_α
 xchain00239_n2_β:
 jmp xchain00239_n0_af
# IR_ASSIGN gva
 xchain00239_n3_α:
 mov rax, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00239_n0_as
 xchain00239_n3_β:
 jmp xchain00239_n1_α
 xchain00239_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00239_n6_α
# IR_NULLTEST_VAR
 xchain00239_n5_α:
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 99
 je xchain00239_n0_af
 mov rdi, qword ptr [rbp + 1040]
 mov rsi, qword ptr [rbp + 1048]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00239_n0_af
 cmp eax, 0
 jne xchain00239_n0_af
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00239_n7_α
# IR_VAR
 xchain00239_n6_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 744], rax
 jmp xchain00239_n8_α
# IR_LIT_INTEGER
 xchain00239_n7_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx00241_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00239_n10_α
.Lx00241_0:
 .quad 1
# KEYWORD_gen
 xchain00239_n8_α:
 mov qword ptr [rbp + 784], 0
.Lx00242_1:
 mov rdi, qword ptr [rip + .Lx00242_0]
 mov rsi, qword ptr [rbp + 784]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00239_n9_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 mov rax, qword ptr [rbp + 784]
 add rax, 1
 mov qword ptr [rbp + 784], rax
 jmp xchain00239_n11_α
 xchain00239_n8_β:
 jmp .Lx00242_1
.Lx00242_0:
 .quad .Lx00242_0_s
.Lx00242_0_s:
 .string "&storage"
# IR_LIT_STRING
 xchain00239_n9_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00243_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00239_n12_α
.Lx00243_0:
 .quad .Lx00243_0_s
.Lx00243_0_s:
 .string "storage"
# IR_ASSIGN_VAR
 xchain00239_n10_α:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, qword ptr [rbp + 1120]
 mov rcx, qword ptr [rbp + 1128]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00239_n0_af
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00239_n13_α
 xchain00239_n11_α:
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
  .Lrkfn829: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn829]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain00239_n8_β
 jmp xchain00239_n8_β
 xchain00239_n11_β:
 jmp xchain00239_n8_β
 xchain00239_n12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn831: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn831]
 lea rsi, [rbp + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00239_n14_α
 jmp xchain00239_n14_α
 xchain00239_n12_β:
 jmp xchain00239_n14_α
# IR_LIT_STRING
 xchain00239_n13_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx00244_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00239_n15_α
.Lx00244_0:
 .quad .Lx00244_0_s
.Lx00244_0_s:
 .string "static"
# IR_LIT_INTEGER
 xchain00239_n14_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00245_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00239_n16_α
.Lx00245_0:
 .quad 1
# IR_LIT_STRING
 xchain00239_n15_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx00246_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00239_n17_α
.Lx00246_0:
 .quad .Lx00246_0_s
.Lx00246_0_s:
 .string "string"
# IR_VAR
 xchain00239_n16_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00239_n18_α
# IR_LIT_STRING
 xchain00239_n17_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx00247_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00239_n20_α
.Lx00247_0:
 .quad .Lx00247_0_s
.Lx00247_0_s:
 .string "block"
# IR_UNOP
 xchain00239_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00239_n21_α
# IR_RETURN
 xchain00239_n19_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Storage___γ
# IR_MAKE_LIST
 xchain00239_n20_α:
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
 jmp xchain00239_n3_α
# IR_TO
 xchain00239_n21_α:
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
.Lx00248_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00239_n19_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00239_n22_α
 xchain00239_n21_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00248_0
 xchain00239_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00239_n23_α
# IR_BOUND
 xchain00239_n23_α:
 mov qword ptr [rbp + 160], rsp
 jmp xchain00239_n24_α
# IR_VAR_REF
 xchain00239_n24_α:
 mov rax, 4294967305
 mov rdx, 1879052688
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00239_n25_α
# IR_VAR
 xchain00239_n25_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 312], rax
 jmp xchain00239_n26_α
# IR_SUBSCRIPT x[i] variable
 xchain00239_n26_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00239_n27_α
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00239_n28_α
# IR_UNMARK
 xchain00239_n27_α:
 mov rsp, qword ptr [rbp + 160]
 jmp xchain00239_n21_β
# IR_DEREF variable -> value
 xchain00239_n28_α:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00239_n27_α
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00239_n29_α
# IR_VAR_REF
 xchain00239_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00239_n30_α
# IR_VAR
 xchain00239_n30_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 488], rax
 jmp xchain00239_n31_α
# IR_SUBSCRIPT x[i] variable
 xchain00239_n31_α:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00239_n27_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00239_n32_α
# IR_DEREF variable -> value
 xchain00239_n32_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00239_n27_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00239_n33_α
# IR_LIT_INTEGER
 xchain00239_n33_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00249_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00239_n34_α
.Lx00249_0:
 .quad 8
 xchain00239_n34_α:
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
  .Lrkfn862: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn862]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00239_n27_α
 jmp xchain00239_n35_α
 xchain00239_n34_β:
 jmp xchain00239_n27_α
 xchain00239_n35_α:
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
  .Lrkfn864: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn864]
 lea rsi, [rbp + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00239_n27_α
 jmp xchain00239_n27_α
 xchain00239_n35_β:
 jmp xchain00239_n27_α
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
 lea rax, [rip + .Lx00250_2]
 mov qword ptr [rbp + 1208], rax
 lea rax, [rip + .Lx00250_3]
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
.Lx00250_2:
 mov rdx, qword ptr [rsp + -1248]
 mov rcx, rsp
 add rcx, -1232
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00250_3:
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
 xchain00251_n0_α:
 mov qword ptr [rbp + 176], 0
 mov qword ptr [rbp + 184], 0
 mov dword ptr [rbp + 192], 0
 jmp xchain00251_n2_α
xchain00251_n0_as:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 0
 jne .Lx00252_0
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
 jmp xchain00251_n1_α
.Lx00252_0:
 jmp xchain00251_n1_α
 xchain00251_n0_β:
 mov eax, dword ptr [rbp + 192]
 jmp xchain00251_n1_α
xchain00251_n0_af:
 add dword ptr [rbp + 192], 1
 mov eax, dword ptr [rbp + 192]
 jmp xchain00251_n1_α
# KEYWORD_read
 xchain00251_n1_α:
 mov rdi, qword ptr [rip + .Lx00253_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je proc_Time___ω
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain00251_n4_α
 xchain00251_n1_β:
 jmp proc_Time___ω
.Lx00253_0:
 .quad .Lx00253_0_s
.Lx00253_0_s:
 .string "&time"
# IR_VAR_REF
 xchain00251_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052736
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00251_n5_α
 xchain00251_n2_β:
 jmp xchain00251_n0_af
# IR_ASSIGN gva
 xchain00251_n3_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [1879052720], rax
 mov qword ptr [1879052728], rdx
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00251_n0_as
 xchain00251_n3_β:
 jmp xchain00251_n1_α
# IR_VAR
 xchain00251_n4_α:
 mov rax, qword ptr [1879052720]
 mov rdx, qword ptr [1879052728]
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00251_n6_α
# IR_NULLTEST_VAR
 xchain00251_n5_α:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 99
 je xchain00251_n0_af
 mov rdi, qword ptr [rbp + 256]
 mov rsi, qword ptr [rbp + 264]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00251_n0_af
 cmp eax, 0
 jne xchain00251_n0_af
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 296], rax
 jmp xchain00251_n7_α
# IR_COERCE_NUMERIC
 xchain00251_n6_α:
 mov eax, dword ptr [rbp + 112]
 cmp eax, 7
 je .Lx00254_1
 cmp eax, 6
 jne .Lx00254_0
 mov eax, dword ptr [rbp + 144]
 cmp eax, 6
 jne .Lx00254_0
.Lx00254_1:
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 88], rax
 jmp xchain00251_n8_α
.Lx00254_0:
 lea rdi, [rbp + 112]
 lea rsi, [rbp + 144]
 lea rdx, [rbp + 80]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00251_n8_α
# IR_LIT_INTEGER
 xchain00251_n7_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00255_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00251_n9_α
.Lx00255_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00251_n8_α:
 mov eax, dword ptr [rbp + 144]
 cmp eax, 7
 je .Lx00256_1
 cmp eax, 6
 jne .Lx00256_0
 mov eax, dword ptr [rbp + 112]
 cmp eax, 6
 jne .Lx00256_0
.Lx00256_1:
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 56], rax
 jmp xchain00251_n10_α
.Lx00256_0:
 lea rdi, [rbp + 144]
 lea rsi, [rbp + 112]
 lea rdx, [rbp + 48]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00251_n10_α
# IR_ASSIGN_VAR
 xchain00251_n9_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00251_n0_af
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00251_n11_α
 xchain00251_n10_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 80]
 cmp eax, 100
 je .Lx00257_0
 mov eax, dword ptr [rbp + 48]
 cmp eax, 100
 je .Lx00257_0
 mov eax, dword ptr [rbp + 80]
 cmp eax, 6
 jne .Lx00257_2
 mov eax, dword ptr [rbp + 48]
 cmp eax, 6
 jne .Lx00257_2
.Lx00257_1:
 mov rax, qword ptr [rbp + 88]
 mov rcx, qword ptr [rbp + 56]
 sub rax, rcx
 mov qword ptr [rbp + 16], 6
 mov qword ptr [rbp + 24], rax
 jmp xchain00251_n12_α
.Lx00257_0:
 mov rdi, qword ptr [rbp + 80]
 mov rsi, qword ptr [rbp + 88]
 mov rdx, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 56]
 mov r8d, 1
 lea r9, [rbp + 16]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00251_n12_α
.Lx00257_2:
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
 jmp xchain00251_n12_α
 xchain00251_n10_β:
 jmp proc_Time___ω
# KEYWORD_read
 xchain00251_n11_α:
 mov rdi, qword ptr [rip + .Lx00258_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00251_n1_α
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00251_n3_α
 xchain00251_n11_β:
 jmp xchain00251_n1_α
.Lx00258_0:
 .quad .Lx00258_0_s
.Lx00258_0_s:
 .string "&time"
# IR_RETURN
 xchain00251_n12_α:
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
 lea rax, [rip + .Lx00259_2]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + .Lx00259_3]
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
.Lx00259_2:
 mov rdx, qword ptr [rsp + -432]
 mov rcx, rsp
 add rcx, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00259_3:
 mov rdi, qword ptr [rsp + -432]
 mov rsi, rsp
 add rsi, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_addword_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_getword_dcα]
  call rt_proc_set_dcfn@PLT
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
  mov esi, 3584
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_format_dcα]
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
  mov qword ptr [rsp + 9448], rsp
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
 xchain00260_n0_α:
 mov qword ptr [rbp + 9408], 1
 mov rax, qword ptr [rip + .Lx00261_0]
 mov qword ptr [rbp + 9416], rax
 jmp xchain00260_n1_α
.Lx00261_0:
 .quad .Lx00261_0_s
.Lx00261_0_s:
 .string "ipxref"
 xchain00260_n1_α:
 lea rsi, [rbp + 9408]
 call proc_Init___dcα
 jmp .Lx00262_2
.Lx00262_2:
 mov qword ptr [rbp + 9360], rax
 mov qword ptr [rbp + 9368], rdx
 cmp eax, 99
 je xchain00260_n2_α
 jmp xchain00260_n2_α
 xchain00260_n1_β:
 jmp xchain00260_n2_α
.Lx00262_0:
 .quad .Lx00262_0_s
.Lx00262_0_s:
 .string "Init__"
# IR_LIT_STRING
 xchain00260_n2_α:
 mov qword ptr [rbp + 8464], 1
 mov rax, qword ptr [rip + .Lx00263_0]
 mov qword ptr [rbp + 8472], rax
 jmp xchain00260_n3_α
.Lx00263_0:
 .quad .Lx00263_0_s
.Lx00263_0_s:
 .string "break"
# IR_LIT_STRING
 xchain00260_n3_α:
 mov qword ptr [rbp + 8496], 1
 mov rax, qword ptr [rip + .Lx00264_0]
 mov qword ptr [rbp + 8504], rax
 jmp xchain00260_n4_α
.Lx00264_0:
 .quad .Lx00264_0_s
.Lx00264_0_s:
 .string "by"
# IR_LIT_STRING
 xchain00260_n4_α:
 mov qword ptr [rbp + 8528], 1
 mov rax, qword ptr [rip + .Lx00265_0]
 mov qword ptr [rbp + 8536], rax
 jmp xchain00260_n5_α
.Lx00265_0:
 .quad .Lx00265_0_s
.Lx00265_0_s:
 .string "case"
# IR_LIT_STRING
 xchain00260_n5_α:
 mov qword ptr [rbp + 8560], 1
 mov rax, qword ptr [rip + .Lx00266_0]
 mov qword ptr [rbp + 8568], rax
 jmp xchain00260_n6_α
.Lx00266_0:
 .quad .Lx00266_0_s
.Lx00266_0_s:
 .string "default"
# IR_LIT_STRING
 xchain00260_n6_α:
 mov qword ptr [rbp + 8592], 1
 mov rax, qword ptr [rip + .Lx00267_0]
 mov qword ptr [rbp + 8600], rax
 jmp xchain00260_n7_α
.Lx00267_0:
 .quad .Lx00267_0_s
.Lx00267_0_s:
 .string "do"
# IR_LIT_STRING
 xchain00260_n7_α:
 mov qword ptr [rbp + 8624], 1
 mov rax, qword ptr [rip + .Lx00268_0]
 mov qword ptr [rbp + 8632], rax
 jmp xchain00260_n8_α
.Lx00268_0:
 .quad .Lx00268_0_s
.Lx00268_0_s:
 .string "dynamic"
# IR_LIT_STRING
 xchain00260_n8_α:
 mov qword ptr [rbp + 8656], 1
 mov rax, qword ptr [rip + .Lx00269_0]
 mov qword ptr [rbp + 8664], rax
 jmp xchain00260_n9_α
.Lx00269_0:
 .quad .Lx00269_0_s
.Lx00269_0_s:
 .string "else"
# IR_LIT_STRING
 xchain00260_n9_α:
 mov qword ptr [rbp + 8688], 1
 mov rax, qword ptr [rip + .Lx00270_0]
 mov qword ptr [rbp + 8696], rax
 jmp xchain00260_n10_α
.Lx00270_0:
 .quad .Lx00270_0_s
.Lx00270_0_s:
 .string "end"
# IR_LIT_STRING
 xchain00260_n10_α:
 mov qword ptr [rbp + 8720], 1
 mov rax, qword ptr [rip + .Lx00271_0]
 mov qword ptr [rbp + 8728], rax
 jmp xchain00260_n11_α
.Lx00271_0:
 .quad .Lx00271_0_s
.Lx00271_0_s:
 .string "every"
# IR_LIT_STRING
 xchain00260_n11_α:
 mov qword ptr [rbp + 8752], 1
 mov rax, qword ptr [rip + .Lx00272_0]
 mov qword ptr [rbp + 8760], rax
 jmp xchain00260_n12_α
.Lx00272_0:
 .quad .Lx00272_0_s
.Lx00272_0_s:
 .string "fail"
# IR_LIT_STRING
 xchain00260_n12_α:
 mov qword ptr [rbp + 8784], 1
 mov rax, qword ptr [rip + .Lx00273_0]
 mov qword ptr [rbp + 8792], rax
 jmp xchain00260_n13_α
.Lx00273_0:
 .quad .Lx00273_0_s
.Lx00273_0_s:
 .string "global"
# IR_LIT_STRING
 xchain00260_n13_α:
 mov qword ptr [rbp + 8816], 1
 mov rax, qword ptr [rip + .Lx00274_0]
 mov qword ptr [rbp + 8824], rax
 jmp xchain00260_n14_α
.Lx00274_0:
 .quad .Lx00274_0_s
.Lx00274_0_s:
 .string "if"
# IR_LIT_STRING
 xchain00260_n14_α:
 mov qword ptr [rbp + 8848], 1
 mov rax, qword ptr [rip + .Lx00275_0]
 mov qword ptr [rbp + 8856], rax
 jmp xchain00260_n15_α
.Lx00275_0:
 .quad .Lx00275_0_s
.Lx00275_0_s:
 .string "initial"
# IR_LIT_STRING
 xchain00260_n15_α:
 mov qword ptr [rbp + 8880], 1
 mov rax, qword ptr [rip + .Lx00276_0]
 mov qword ptr [rbp + 8888], rax
 jmp xchain00260_n16_α
.Lx00276_0:
 .quad .Lx00276_0_s
.Lx00276_0_s:
 .string "link"
# IR_LIT_STRING
 xchain00260_n16_α:
 mov qword ptr [rbp + 8912], 1
 mov rax, qword ptr [rip + .Lx00277_0]
 mov qword ptr [rbp + 8920], rax
 jmp xchain00260_n17_α
.Lx00277_0:
 .quad .Lx00277_0_s
.Lx00277_0_s:
 .string "local"
# IR_LIT_STRING
 xchain00260_n17_α:
 mov qword ptr [rbp + 8944], 1
 mov rax, qword ptr [rip + .Lx00278_0]
 mov qword ptr [rbp + 8952], rax
 jmp xchain00260_n18_α
.Lx00278_0:
 .quad .Lx00278_0_s
.Lx00278_0_s:
 .string "next"
# IR_LIT_STRING
 xchain00260_n18_α:
 mov qword ptr [rbp + 8976], 1
 mov rax, qword ptr [rip + .Lx00279_0]
 mov qword ptr [rbp + 8984], rax
 jmp xchain00260_n19_α
.Lx00279_0:
 .quad .Lx00279_0_s
.Lx00279_0_s:
 .string "not"
# IR_LIT_STRING
 xchain00260_n19_α:
 mov qword ptr [rbp + 9008], 1
 mov rax, qword ptr [rip + .Lx00280_0]
 mov qword ptr [rbp + 9016], rax
 jmp xchain00260_n20_α
.Lx00280_0:
 .quad .Lx00280_0_s
.Lx00280_0_s:
 .string "of"
# IR_LIT_STRING
 xchain00260_n20_α:
 mov qword ptr [rbp + 9040], 1
 mov rax, qword ptr [rip + .Lx00281_0]
 mov qword ptr [rbp + 9048], rax
 jmp xchain00260_n21_α
.Lx00281_0:
 .quad .Lx00281_0_s
.Lx00281_0_s:
 .string "procedure"
# IR_LIT_STRING
 xchain00260_n21_α:
 mov qword ptr [rbp + 9072], 1
 mov rax, qword ptr [rip + .Lx00282_0]
 mov qword ptr [rbp + 9080], rax
 jmp xchain00260_n22_α
.Lx00282_0:
 .quad .Lx00282_0_s
.Lx00282_0_s:
 .string "record"
# IR_LIT_STRING
 xchain00260_n22_α:
 mov qword ptr [rbp + 9104], 1
 mov rax, qword ptr [rip + .Lx00283_0]
 mov qword ptr [rbp + 9112], rax
 jmp xchain00260_n23_α
.Lx00283_0:
 .quad .Lx00283_0_s
.Lx00283_0_s:
 .string "repeat"
# IR_LIT_STRING
 xchain00260_n23_α:
 mov qword ptr [rbp + 9136], 1
 mov rax, qword ptr [rip + .Lx00284_0]
 mov qword ptr [rbp + 9144], rax
 jmp xchain00260_n24_α
.Lx00284_0:
 .quad .Lx00284_0_s
.Lx00284_0_s:
 .string "return"
# IR_LIT_STRING
 xchain00260_n24_α:
 mov qword ptr [rbp + 9168], 1
 mov rax, qword ptr [rip + .Lx00285_0]
 mov qword ptr [rbp + 9176], rax
 jmp xchain00260_n25_α
.Lx00285_0:
 .quad .Lx00285_0_s
.Lx00285_0_s:
 .string "static"
# IR_LIT_STRING
 xchain00260_n25_α:
 mov qword ptr [rbp + 9200], 1
 mov rax, qword ptr [rip + .Lx00286_0]
 mov qword ptr [rbp + 9208], rax
 jmp xchain00260_n26_α
.Lx00286_0:
 .quad .Lx00286_0_s
.Lx00286_0_s:
 .string "suspend"
# IR_LIT_STRING
 xchain00260_n26_α:
 mov qword ptr [rbp + 9232], 1
 mov rax, qword ptr [rip + .Lx00287_0]
 mov qword ptr [rbp + 9240], rax
 jmp xchain00260_n27_α
.Lx00287_0:
 .quad .Lx00287_0_s
.Lx00287_0_s:
 .string "then"
# IR_LIT_STRING
 xchain00260_n27_α:
 mov qword ptr [rbp + 9264], 1
 mov rax, qword ptr [rip + .Lx00288_0]
 mov qword ptr [rbp + 9272], rax
 jmp xchain00260_n28_α
.Lx00288_0:
 .quad .Lx00288_0_s
.Lx00288_0_s:
 .string "to"
# IR_LIT_STRING
 xchain00260_n28_α:
 mov qword ptr [rbp + 9296], 1
 mov rax, qword ptr [rip + .Lx00289_0]
 mov qword ptr [rbp + 9304], rax
 jmp xchain00260_n29_α
.Lx00289_0:
 .quad .Lx00289_0_s
.Lx00289_0_s:
 .string "until"
# IR_LIT_STRING
 xchain00260_n29_α:
 mov qword ptr [rbp + 9328], 1
 mov rax, qword ptr [rip + .Lx00290_0]
 mov qword ptr [rbp + 9336], rax
 jmp xchain00260_n30_α
.Lx00290_0:
 .quad .Lx00290_0_s
.Lx00290_0_s:
 .string "while"
# IR_MAKE_LIST
 xchain00260_n30_α:
 mov rax, qword ptr [rbp + 8464]
 mov qword ptr [rbp + 8016], rax
 mov rax, qword ptr [rbp + 8472]
 mov qword ptr [rbp + 8024], rax
 mov rax, qword ptr [rbp + 8496]
 mov qword ptr [rbp + 8032], rax
 mov rax, qword ptr [rbp + 8504]
 mov qword ptr [rbp + 8040], rax
 mov rax, qword ptr [rbp + 8528]
 mov qword ptr [rbp + 8048], rax
 mov rax, qword ptr [rbp + 8536]
 mov qword ptr [rbp + 8056], rax
 mov rax, qword ptr [rbp + 8560]
 mov qword ptr [rbp + 8064], rax
 mov rax, qword ptr [rbp + 8568]
 mov qword ptr [rbp + 8072], rax
 mov rax, qword ptr [rbp + 8592]
 mov qword ptr [rbp + 8080], rax
 mov rax, qword ptr [rbp + 8600]
 mov qword ptr [rbp + 8088], rax
 mov rax, qword ptr [rbp + 8624]
 mov qword ptr [rbp + 8096], rax
 mov rax, qword ptr [rbp + 8632]
 mov qword ptr [rbp + 8104], rax
 mov rax, qword ptr [rbp + 8656]
 mov qword ptr [rbp + 8112], rax
 mov rax, qword ptr [rbp + 8664]
 mov qword ptr [rbp + 8120], rax
 mov rax, qword ptr [rbp + 8688]
 mov qword ptr [rbp + 8128], rax
 mov rax, qword ptr [rbp + 8696]
 mov qword ptr [rbp + 8136], rax
 mov rax, qword ptr [rbp + 8720]
 mov qword ptr [rbp + 8144], rax
 mov rax, qword ptr [rbp + 8728]
 mov qword ptr [rbp + 8152], rax
 mov rax, qword ptr [rbp + 8752]
 mov qword ptr [rbp + 8160], rax
 mov rax, qword ptr [rbp + 8760]
 mov qword ptr [rbp + 8168], rax
 mov rax, qword ptr [rbp + 8784]
 mov qword ptr [rbp + 8176], rax
 mov rax, qword ptr [rbp + 8792]
 mov qword ptr [rbp + 8184], rax
 mov rax, qword ptr [rbp + 8816]
 mov qword ptr [rbp + 8192], rax
 mov rax, qword ptr [rbp + 8824]
 mov qword ptr [rbp + 8200], rax
 mov rax, qword ptr [rbp + 8848]
 mov qword ptr [rbp + 8208], rax
 mov rax, qword ptr [rbp + 8856]
 mov qword ptr [rbp + 8216], rax
 mov rax, qword ptr [rbp + 8880]
 mov qword ptr [rbp + 8224], rax
 mov rax, qword ptr [rbp + 8888]
 mov qword ptr [rbp + 8232], rax
 mov rax, qword ptr [rbp + 8912]
 mov qword ptr [rbp + 8240], rax
 mov rax, qword ptr [rbp + 8920]
 mov qword ptr [rbp + 8248], rax
 mov rax, qword ptr [rbp + 8944]
 mov qword ptr [rbp + 8256], rax
 mov rax, qword ptr [rbp + 8952]
 mov qword ptr [rbp + 8264], rax
 mov rax, qword ptr [rbp + 8976]
 mov qword ptr [rbp + 8272], rax
 mov rax, qword ptr [rbp + 8984]
 mov qword ptr [rbp + 8280], rax
 mov rax, qword ptr [rbp + 9008]
 mov qword ptr [rbp + 8288], rax
 mov rax, qword ptr [rbp + 9016]
 mov qword ptr [rbp + 8296], rax
 mov rax, qword ptr [rbp + 9040]
 mov qword ptr [rbp + 8304], rax
 mov rax, qword ptr [rbp + 9048]
 mov qword ptr [rbp + 8312], rax
 mov rax, qword ptr [rbp + 9072]
 mov qword ptr [rbp + 8320], rax
 mov rax, qword ptr [rbp + 9080]
 mov qword ptr [rbp + 8328], rax
 mov rax, qword ptr [rbp + 9104]
 mov qword ptr [rbp + 8336], rax
 mov rax, qword ptr [rbp + 9112]
 mov qword ptr [rbp + 8344], rax
 mov rax, qword ptr [rbp + 9136]
 mov qword ptr [rbp + 8352], rax
 mov rax, qword ptr [rbp + 9144]
 mov qword ptr [rbp + 8360], rax
 mov rax, qword ptr [rbp + 9168]
 mov qword ptr [rbp + 8368], rax
 mov rax, qword ptr [rbp + 9176]
 mov qword ptr [rbp + 8376], rax
 mov rax, qword ptr [rbp + 9200]
 mov qword ptr [rbp + 8384], rax
 mov rax, qword ptr [rbp + 9208]
 mov qword ptr [rbp + 8392], rax
 mov rax, qword ptr [rbp + 9232]
 mov qword ptr [rbp + 8400], rax
 mov rax, qword ptr [rbp + 9240]
 mov qword ptr [rbp + 8408], rax
 mov rax, qword ptr [rbp + 9264]
 mov qword ptr [rbp + 8416], rax
 mov rax, qword ptr [rbp + 9272]
 mov qword ptr [rbp + 8424], rax
 mov rax, qword ptr [rbp + 9296]
 mov qword ptr [rbp + 8432], rax
 mov rax, qword ptr [rbp + 9304]
 mov qword ptr [rbp + 8440], rax
 mov rax, qword ptr [rbp + 9328]
 mov qword ptr [rbp + 8448], rax
 mov rax, qword ptr [rbp + 9336]
 mov qword ptr [rbp + 8456], rax
 lea rdi, [rbp + 8016]
 mov esi, 28
 call rt_make_list@PLT
 mov qword ptr [rbp + 8000], rax
 mov qword ptr [rbp + 8008], rdx
 jmp xchain00260_n31_α
# IR_ASSIGN gva
 xchain00260_n31_α:
 mov rax, qword ptr [rbp + 8000]
 mov rdx, qword ptr [rbp + 8008]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 7984], rax
 mov qword ptr [rbp + 7992], rdx
 jmp xchain00260_n32_α
# IR_LIT_INTEGER
 xchain00260_n32_α:
 mov qword ptr [rbp + 7952], 6
 mov rax, qword ptr [rip + .Lx00291_0]
 mov qword ptr [rbp + 7960], rax
 jmp xchain00260_n33_α
.Lx00291_0:
 .quad 0
# IR_ASSIGN gva
 xchain00260_n33_α:
 mov rax, qword ptr [rbp + 7952]
 mov rdx, qword ptr [rbp + 7960]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 7936], rax
 mov qword ptr [rbp + 7944], rdx
 jmp xchain00260_n34_α
 xchain00260_n34_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn923: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn923]
 lea rsi, [rbp + 7920]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7904], rax
 mov qword ptr [rbp + 7912], rdx
 cmp eax, 99
 je xchain00260_n36_α
 jmp xchain00260_n35_α
 xchain00260_n34_β:
 jmp xchain00260_n36_α
# IR_ASSIGN gva
 xchain00260_n35_α:
 mov rax, qword ptr [rbp + 7904]
 mov rdx, qword ptr [rbp + 7912]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 7888], rax
 mov qword ptr [rbp + 7896], rdx
 jmp xchain00260_n36_α
# IR_MAKE_LIST
 xchain00260_n36_α:
 lea rdi, [rbp + 7888]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 7872], rax
 mov qword ptr [rbp + 7880], rdx
 jmp xchain00260_n37_α
 xchain00260_n37_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 7872]
 mov rdx, qword ptr [rbp + 7880]
 mov qword ptr [rbp + 9488], rax
 mov qword ptr [rbp + 9496], rdx
 mov qword ptr [rbp + 7856], rax
 mov qword ptr [rbp + 7864], rdx
 jmp xchain00260_n38_α
# IR_MAKE_LIST
 xchain00260_n38_α:
 lea rdi, [rbp + 7856]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 7840], rax
 mov qword ptr [rbp + 7848], rdx
 jmp xchain00260_n39_α
# IR_ASSIGN gva
 xchain00260_n39_α:
 mov rax, qword ptr [rbp + 7840]
 mov rdx, qword ptr [rbp + 7848]
 mov qword ptr [1879052480], rax
 mov qword ptr [1879052488], rdx
 mov qword ptr [rbp + 7824], rax
 mov qword ptr [rbp + 7832], rdx
 jmp xchain00260_n40_α
# IR_MAKE_LIST
 xchain00260_n40_α:
 lea rdi, [rbp + 7824]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 7808], rax
 mov qword ptr [rbp + 7816], rdx
 jmp xchain00260_n41_α
# IR_ASSIGN gva
 xchain00260_n41_α:
 mov rax, qword ptr [rbp + 7808]
 mov rdx, qword ptr [rbp + 7816]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rbp + 7792], rax
 mov qword ptr [rbp + 7800], rdx
 jmp xchain00260_n42_α
# IR_LIT_STRING
 xchain00260_n42_α:
 mov qword ptr [rbp + 7760], 1
 mov rax, qword ptr [rip + .Lx00292_0]
 mov qword ptr [rbp + 7768], rax
 jmp xchain00260_n43_α
.Lx00292_0:
 .quad .Lx00292_0_s
.Lx00292_0_s:
 .string "global"
 xchain00260_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 7760]
 mov rdx, qword ptr [rbp + 7768]
 mov qword ptr [rbp + 9520], rax
 mov qword ptr [rbp + 9528], rdx
 mov qword ptr [rbp + 7744], rax
 mov qword ptr [rbp + 7752], rdx
 jmp xchain00260_n44_α
# IR_LIT_CHARSET
 xchain00260_n44_α:
 mov qword ptr [rbp + 7680], 1
 mov dword ptr [rbp + 7684], -1
 mov rax, qword ptr [rip + .Lx00293_0]
 mov qword ptr [rbp + 7688], rax
 jmp xchain00260_n45_α
.Lx00293_0:
 .quad .Lx00293_0_s
.Lx00293_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
# IR_LIT_CHARSET
 xchain00260_n45_α:
 mov qword ptr [rbp + 7712], 1
 mov dword ptr [rbp + 7716], -1
 mov rax, qword ptr [rip + .Lx00294_0]
 mov qword ptr [rbp + 7720], rax
 jmp xchain00260_n46_α
.Lx00294_0:
 .quad .Lx00294_0_s
.Lx00294_0_s:
 .string "_"
 xchain00260_n46_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 7680]
 mov rsi, qword ptr [rbp + 7688]
 mov rdx, qword ptr [rbp + 7712]
 mov rcx, qword ptr [rbp + 7720]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00260_n48_α
 mov qword ptr [rbp + 7648], rax
 mov qword ptr [rbp + 7656], rdx
 jmp xchain00260_n47_α
# IR_ASSIGN gva
 xchain00260_n47_α:
 mov rax, qword ptr [rbp + 7648]
 mov rdx, qword ptr [rbp + 7656]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 7632], rax
 mov qword ptr [rbp + 7640], rdx
 jmp xchain00260_n48_α
# IR_VAR
 xchain00260_n48_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 7568], rax
 mov qword ptr [rbp + 7576], rdx
 jmp xchain00260_n49_α
# IR_LIT_CHARSET
 xchain00260_n49_α:
 mov qword ptr [rbp + 7600], 1
 mov dword ptr [rbp + 7604], -1
 mov rax, qword ptr [rip + .Lx00295_0]
 mov qword ptr [rbp + 7608], rax
 jmp xchain00260_n51_α
.Lx00295_0:
 .quad .Lx00295_0_s
.Lx00295_0_s:
 .string "0123456789"
# IR_VAR
 xchain00260_n50_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 7456], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 7464], rax
 jmp xchain00260_n52_α
 xchain00260_n51_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 7568]
 mov rsi, qword ptr [rbp + 7576]
 mov rdx, qword ptr [rbp + 7600]
 mov rcx, qword ptr [rbp + 7608]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00260_n50_α
 mov qword ptr [rbp + 7536], rax
 mov qword ptr [rbp + 7544], rdx
 jmp xchain00260_n54_α
# IR_LIT_STRING
 xchain00260_n52_α:
 mov qword ptr [rbp + 7488], 1
 mov rax, qword ptr [rip + .Lx00296_0]
 mov qword ptr [rbp + 7496], rax
 jmp xchain00260_n55_α
.Lx00296_0:
 .quad .Lx00296_0_s
.Lx00296_0_s:
 .string "qxw+l+c+"
# IR_DISJUNCTION_NARY
 xchain00260_n53_α:
 mov qword ptr [rbp + 7152], 0
 mov qword ptr [rbp + 7160], 0
 mov dword ptr [rbp + 7168], 0
 jmp xchain00260_n57_α
xchain00260_n53_as:
 mov eax, dword ptr [rbp + 7168]
 cmp eax, 0
 jne .Lx00297_0
 mov rax, qword ptr [rbp + 7184]
 mov qword ptr [rbp + 7152], rax
 mov rax, qword ptr [rbp + 7192]
 mov qword ptr [rbp + 7160], rax
 jmp xchain00260_n56_α
.Lx00297_0:
 jmp xchain00260_n56_α
 xchain00260_n53_β:
 mov eax, dword ptr [rbp + 7168]
 jmp xchain00260_n56_α
xchain00260_n53_af:
 add dword ptr [rbp + 7168], 1
 mov eax, dword ptr [rbp + 7168]
 jmp xchain00260_n56_α
# IR_ASSIGN gva
 xchain00260_n54_α:
 mov rax, qword ptr [rbp + 7536]
 mov rdx, qword ptr [rbp + 7544]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 7520], rax
 mov qword ptr [rbp + 7528], rdx
 jmp xchain00260_n50_α
 xchain00260_n55_α:
 lea rsi, [rbp + 7456]
 lea rdx, [rbp + 7488]
 call proc_options_dcα
 jmp .Lx00298_2
.Lx00298_2:
 mov qword ptr [rbp + 7392], rax
 mov qword ptr [rbp + 7400], rdx
 cmp eax, 99
 je xchain00260_n53_α
 jmp xchain00260_n59_α
 xchain00260_n55_β:
 jmp xchain00260_n53_α
.Lx00298_0:
 .quad .Lx00298_0_s
.Lx00298_0_s:
 .string "options"
# IR_DISJUNCTION_NARY
 xchain00260_n56_α:
 mov qword ptr [rbp + 6928], 0
 mov qword ptr [rbp + 6936], 0
 mov dword ptr [rbp + 6944], 0
 jmp xchain00260_n61_α
xchain00260_n56_as:
 mov eax, dword ptr [rbp + 6944]
 cmp eax, 0
 jne .Lx00299_0
 mov rax, qword ptr [rbp + 6960]
 mov qword ptr [rbp + 6928], rax
 mov rax, qword ptr [rbp + 6968]
 mov qword ptr [rbp + 6936], rax
 jmp xchain00260_n60_α
.Lx00299_0:
 jmp xchain00260_n60_α
 xchain00260_n56_β:
 mov eax, dword ptr [rbp + 6944]
 jmp xchain00260_n60_α
xchain00260_n56_af:
 add dword ptr [rbp + 6944], 1
 mov eax, dword ptr [rbp + 6944]
 jmp xchain00260_n60_α
# IR_VAR_REF
 xchain00260_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9568]
 mov qword ptr [rbp + 7264], rax
 mov qword ptr [rbp + 7272], rdx
 jmp xchain00260_n63_α
 xchain00260_n57_β:
 jmp xchain00260_n53_af
# IR_ASSIGN gva
 xchain00260_n58_α:
 mov rax, qword ptr [rbp + 7200]
 mov rdx, qword ptr [rbp + 7208]
 mov qword ptr [1879052384], rax
 mov qword ptr [1879052392], rdx
 mov qword ptr [rbp + 7184], rax
 mov qword ptr [rbp + 7192], rdx
 jmp xchain00260_n53_as
 xchain00260_n58_β:
 jmp xchain00260_n56_α
 xchain00260_n59_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 7392]
 mov rdx, qword ptr [rbp + 7400]
 mov qword ptr [rbp + 9568], rax
 mov qword ptr [rbp + 9576], rdx
 mov qword ptr [rbp + 7376], rax
 mov qword ptr [rbp + 7384], rdx
 jmp xchain00260_n53_α
# IR_VAR_REF
 xchain00260_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9568]
 mov qword ptr [rbp + 6816], rax
 mov qword ptr [rbp + 6824], rdx
 jmp xchain00260_n64_α
# IR_VAR_REF
 xchain00260_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9568]
 mov qword ptr [rbp + 7040], rax
 mov qword ptr [rbp + 7048], rdx
 jmp xchain00260_n65_α
 xchain00260_n61_β:
 jmp xchain00260_n56_af
# IR_ASSIGN gva
 xchain00260_n62_α:
 mov rax, qword ptr [rbp + 6976]
 mov rdx, qword ptr [rbp + 6984]
 mov qword ptr [1879052416], rax
 mov qword ptr [1879052424], rdx
 mov qword ptr [rbp + 6960], rax
 mov qword ptr [rbp + 6968], rdx
 jmp xchain00260_n56_as
 xchain00260_n62_β:
 jmp xchain00260_n60_α
# IR_LIT_STRING
 xchain00260_n63_α:
 mov qword ptr [rbp + 7296], 1
 mov rax, qword ptr [rip + .Lx00300_0]
 mov qword ptr [rbp + 7304], rax
 jmp xchain00260_n66_α
.Lx00300_0:
 .quad .Lx00300_0_s
.Lx00300_0_s:
 .string "q"
# IR_LIT_STRING
 xchain00260_n64_α:
 mov qword ptr [rbp + 6848], 1
 mov rax, qword ptr [rip + .Lx00301_0]
 mov qword ptr [rbp + 6856], rax
 jmp xchain00260_n67_α
.Lx00301_0:
 .quad .Lx00301_0_s
.Lx00301_0_s:
 .string "w"
# IR_LIT_STRING
 xchain00260_n65_α:
 mov qword ptr [rbp + 7072], 1
 mov rax, qword ptr [rip + .Lx00302_0]
 mov qword ptr [rbp + 7080], rax
 jmp xchain00260_n68_α
.Lx00302_0:
 .quad .Lx00302_0_s
.Lx00302_0_s:
 .string "x"
# IR_SUBSCRIPT x[i] variable
 xchain00260_n66_α:
 mov rdi, qword ptr [rbp + 7264]
 mov rsi, qword ptr [rbp + 7272]
 mov rdx, qword ptr [rbp + 7296]
 mov rcx, qword ptr [rbp + 7304]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00260_n53_af
 mov qword ptr [rbp + 7328], rax
 mov qword ptr [rbp + 7336], rdx
 jmp xchain00260_n69_α
# IR_SUBSCRIPT x[i] variable
 xchain00260_n67_α:
 mov rdi, qword ptr [rbp + 6816]
 mov rsi, qword ptr [rbp + 6824]
 mov rdx, qword ptr [rbp + 6848]
 mov rcx, qword ptr [rbp + 6856]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00260_n71_α
 mov qword ptr [rbp + 6880], rax
 mov qword ptr [rbp + 6888], rdx
 jmp xchain00260_n70_α
# IR_SUBSCRIPT x[i] variable
 xchain00260_n68_α:
 mov rdi, qword ptr [rbp + 7040]
 mov rsi, qword ptr [rbp + 7048]
 mov rdx, qword ptr [rbp + 7072]
 mov rcx, qword ptr [rbp + 7080]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00260_n56_af
 mov qword ptr [rbp + 7104], rax
 mov qword ptr [rbp + 7112], rdx
 jmp xchain00260_n72_α
# IR_DEREF variable -> value
 xchain00260_n69_α:
 mov rdi, qword ptr [rbp + 7328]
 mov rsi, qword ptr [rbp + 7336]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00260_n53_af
 mov qword ptr [rbp + 7360], rax
 mov qword ptr [rbp + 7368], rdx
 jmp xchain00260_n73_α
# IR_DEREF variable -> value
 xchain00260_n70_α:
 mov rdi, qword ptr [rbp + 6880]
 mov rsi, qword ptr [rbp + 6888]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00260_n71_α
 mov qword ptr [rbp + 6912], rax
 mov qword ptr [rbp + 6920], rdx
 jmp xchain00260_n74_α
# IR_VAR_REF
 xchain00260_n71_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9568]
 mov qword ptr [rbp + 6656], rax
 mov qword ptr [rbp + 6664], rdx
 jmp xchain00260_n75_α
# IR_DEREF variable -> value
 xchain00260_n72_α:
 mov rdi, qword ptr [rbp + 7104]
 mov rsi, qword ptr [rbp + 7112]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00260_n56_af
 mov qword ptr [rbp + 7136], rax
 mov qword ptr [rbp + 7144], rdx
 jmp xchain00260_n76_α
# IR_UNOP
 xchain00260_n73_α:
 mov eax, dword ptr [rbp + 7360]
 cmp eax, 99
 je xchain00260_n53_af
 cmp eax, 0
 je xchain00260_n53_af
 mov rax, qword ptr [rbp + 7360]
 mov qword ptr [rbp + 7232], rax
 mov rax, qword ptr [rbp + 7368]
 mov qword ptr [rbp + 7240], rax
 jmp xchain00260_n77_α
# IR_UNOP
 xchain00260_n74_α:
 mov eax, dword ptr [rbp + 6912]
 cmp eax, 99
 je xchain00260_n71_α
 cmp eax, 0
 je xchain00260_n71_α
 mov rax, qword ptr [rbp + 6912]
 mov qword ptr [rbp + 6784], rax
 mov rax, qword ptr [rbp + 6920]
 mov qword ptr [rbp + 6792], rax
 jmp xchain00260_n78_α
# IR_LIT_STRING
 xchain00260_n75_α:
 mov qword ptr [rbp + 6688], 1
 mov rax, qword ptr [rip + .Lx00303_0]
 mov qword ptr [rbp + 6696], rax
 jmp xchain00260_n79_α
.Lx00303_0:
 .quad .Lx00303_0_s
.Lx00303_0_s:
 .string "l"
# IR_UNOP
 xchain00260_n76_α:
 mov eax, dword ptr [rbp + 7136]
 cmp eax, 99
 je xchain00260_n56_af
 cmp eax, 0
 je xchain00260_n56_af
 mov rax, qword ptr [rbp + 7136]
 mov qword ptr [rbp + 7008], rax
 mov rax, qword ptr [rbp + 7144]
 mov qword ptr [rbp + 7016], rax
 jmp xchain00260_n80_α
# IR_LIT_INTEGER
 xchain00260_n77_α:
 mov qword ptr [rbp + 7200], 6
 mov rax, qword ptr [rip + .Lx00304_0]
 mov qword ptr [rbp + 7208], rax
 jmp xchain00260_n58_α
.Lx00304_0:
 .quad 1
# IR_ASSIGN gva
 xchain00260_n78_α:
 mov rax, qword ptr [rbp + 6784]
 mov rdx, qword ptr [rbp + 6792]
 mov qword ptr [1879052432], rax
 mov qword ptr [1879052440], rdx
 mov qword ptr [rbp + 6768], rax
 mov qword ptr [rbp + 6776], rdx
 jmp xchain00260_n71_α
# IR_SUBSCRIPT x[i] variable
 xchain00260_n79_α:
 mov rdi, qword ptr [rbp + 6656]
 mov rsi, qword ptr [rbp + 6664]
 mov rdx, qword ptr [rbp + 6688]
 mov rcx, qword ptr [rbp + 6696]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00260_n82_α
 mov qword ptr [rbp + 6720], rax
 mov qword ptr [rbp + 6728], rdx
 jmp xchain00260_n81_α
# IR_LIT_INTEGER
 xchain00260_n80_α:
 mov qword ptr [rbp + 6976], 6
 mov rax, qword ptr [rip + .Lx00305_0]
 mov qword ptr [rbp + 6984], rax
 jmp xchain00260_n62_α
.Lx00305_0:
 .quad 1
# IR_DEREF variable -> value
 xchain00260_n81_α:
 mov rdi, qword ptr [rbp + 6720]
 mov rsi, qword ptr [rbp + 6728]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00260_n82_α
 mov qword ptr [rbp + 6752], rax
 mov qword ptr [rbp + 6760], rdx
 jmp xchain00260_n83_α
# IR_VAR_REF
 xchain00260_n82_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9568]
 mov qword ptr [rbp + 6496], rax
 mov qword ptr [rbp + 6504], rdx
 jmp xchain00260_n84_α
# IR_UNOP
 xchain00260_n83_α:
 mov eax, dword ptr [rbp + 6752]
 cmp eax, 99
 je xchain00260_n82_α
 cmp eax, 0
 je xchain00260_n82_α
 mov rax, qword ptr [rbp + 6752]
 mov qword ptr [rbp + 6624], rax
 mov rax, qword ptr [rbp + 6760]
 mov qword ptr [rbp + 6632], rax
 jmp xchain00260_n85_α
# IR_LIT_STRING
 xchain00260_n84_α:
 mov qword ptr [rbp + 6528], 1
 mov rax, qword ptr [rip + .Lx00306_0]
 mov qword ptr [rbp + 6536], rax
 jmp xchain00260_n86_α
.Lx00306_0:
 .quad .Lx00306_0_s
.Lx00306_0_s:
 .string "c"
# IR_ASSIGN gva
 xchain00260_n85_α:
 mov rax, qword ptr [rbp + 6624]
 mov rdx, qword ptr [rbp + 6632]
 mov qword ptr [1879052448], rax
 mov qword ptr [1879052456], rdx
 mov qword ptr [rbp + 6608], rax
 mov qword ptr [rbp + 6616], rdx
 jmp xchain00260_n82_α
# IR_SUBSCRIPT x[i] variable
 xchain00260_n86_α:
 mov rdi, qword ptr [rbp + 6496]
 mov rsi, qword ptr [rbp + 6504]
 mov rdx, qword ptr [rbp + 6528]
 mov rcx, qword ptr [rbp + 6536]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00260_n88_α
 mov qword ptr [rbp + 6560], rax
 mov qword ptr [rbp + 6568], rdx
 jmp xchain00260_n87_α
# IR_DEREF variable -> value
 xchain00260_n87_α:
 mov rdi, qword ptr [rbp + 6560]
 mov rsi, qword ptr [rbp + 6568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00260_n88_α
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 jmp xchain00260_n89_α
# IR_VAR_REF
 xchain00260_n88_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6304], rax
 mov qword ptr [rbp + 6312], rdx
 jmp xchain00260_n90_α
# IR_UNOP
 xchain00260_n89_α:
 mov eax, dword ptr [rbp + 6592]
 cmp eax, 99
 je xchain00260_n88_α
 cmp eax, 0
 je xchain00260_n88_α
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 6464], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 6472], rax
 jmp xchain00260_n91_α
# IR_LIT_INTEGER
 xchain00260_n90_α:
 mov qword ptr [rbp + 6336], 6
 mov rax, qword ptr [rip + .Lx00307_0]
 mov qword ptr [rbp + 6344], rax
 jmp xchain00260_n92_α
.Lx00307_0:
 .quad 1
# IR_ASSIGN gva
 xchain00260_n91_α:
 mov rax, qword ptr [rbp + 6464]
 mov rdx, qword ptr [rbp + 6472]
 mov qword ptr [1879052464], rax
 mov qword ptr [1879052472], rdx
 mov qword ptr [rbp + 6448], rax
 mov qword ptr [rbp + 6456], rdx
 jmp xchain00260_n88_α
# IR_SUBSCRIPT x[i] variable
 xchain00260_n92_α:
 mov rdi, qword ptr [rbp + 6304]
 mov rsi, qword ptr [rbp + 6312]
 mov rdx, qword ptr [rbp + 6336]
 mov rcx, qword ptr [rbp + 6344]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00260_n94_α
 mov qword ptr [rbp + 6368], rax
 mov qword ptr [rbp + 6376], rdx
 jmp xchain00260_n93_α
# IR_DEREF variable -> value
 xchain00260_n93_α:
 mov rdi, qword ptr [rbp + 6368]
 mov rsi, qword ptr [rbp + 6376]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00260_n94_α
 mov qword ptr [rbp + 6400], rax
 mov qword ptr [rbp + 6408], rdx
 jmp xchain00260_n95_α
 xchain00260_n94_α:
 call proc_getword_dcα
 jmp .Lx00308_2
.Lx00308_2:
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain00260_n97_α
 jmp xchain00260_n96_α
 xchain00260_n94_β:
 jmp xchain00260_n97_α
.Lx00308_0:
 .quad .Lx00308_0_s
.Lx00308_0_s:
 .string "getword"
# IR_LIT_STRING
 xchain00260_n95_α:
 mov qword ptr [rbp + 6416], 1
 mov rax, qword ptr [rip + .Lx00309_0]
 mov qword ptr [rbp + 6424], rax
 jmp xchain00260_n98_α
.Lx00309_0:
 .quad .Lx00309_0_s
.Lx00309_0_s:
 .string "r"
 xchain00260_n96_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1200]
 mov rdx, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 9504], rax
 mov qword ptr [rbp + 9512], rdx
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain00260_n99_α
# IR_VAR
 xchain00260_n97_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain00260_n00035_α
 xchain00260_n98_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6400] -> [zr+6256]
 mov rax, qword ptr [rbp + 6400]
 mov qword ptr [rbp + 6256], rax
 mov rax, qword ptr [rbp + 6408]
 mov qword ptr [rbp + 6264], rax
# marshal arg1 = producer-box slot [zr+6416] -> [zr+6272]
 mov rax, qword ptr [rbp + 6416]
 mov qword ptr [rbp + 6272], rax
 mov rax, qword ptr [rbp + 6424]
 mov qword ptr [rbp + 6280], rax
  .section .rodata
  .Lrkfn1002: .string "open"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1002]
 lea rsi, [rbp + 6256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6240], rax
 mov qword ptr [rbp + 6248], rdx
 cmp eax, 99
 je xchain00260_n94_α
 jmp xchain00260_n00037_α
 xchain00260_n98_β:
 jmp xchain00260_n94_α
# IR_DISJUNCTION_NARY
 xchain00260_n99_α:
 mov qword ptr [rbp + 1232], 0
 mov qword ptr [rbp + 1240], 0
 mov dword ptr [rbp + 1248], 0
 jmp xchain00260_n00002_α
xchain00260_n99_as:
 mov eax, dword ptr [rbp + 1248]
 cmp eax, 0
 jne .Lx00310_0
 jmp xchain00260_n94_α
.Lx00310_0:
 cmp eax, 1
 jne .Lx00310_1
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1240], rax
 jmp xchain00260_n94_α
.Lx00310_1:
 jmp xchain00260_n94_α
 xchain00260_n99_β:
 mov eax, dword ptr [rbp + 1248]
 cmp eax, 0
 je xchain00260_n94_α
 jmp xchain00260_n00039_β
xchain00260_n99_af:
 add dword ptr [rbp + 1248], 1
 mov eax, dword ptr [rbp + 1248]
 cmp eax, 1
 je xchain00260_n00039_α
 jmp xchain00260_n94_α
 xchain00260_n00035_α:
 lea rsi, [rbp + 1152]
 call proc_format_dcα
 jmp .Lx00311_2
.Lx00311_2:
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain00260_n00001_α
 jmp xchain00260_n00043_α
 xchain00260_n00035_β:
 jmp xchain00260_n00001_α
.Lx00311_0:
 .quad .Lx00311_0_s
.Lx00311_0_s:
 .string "format"
# IR_LIT_STRING
 xchain00260_n00001_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx00312_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00260_n00042_α
.Lx00312_0:
 .quad .Lx00312_0_s
.Lx00312_0_s:
 .string "\n\nprocedures:\tlines:\n"
# IR_ASSIGN gva
 xchain00260_n00037_α:
 mov rax, qword ptr [rbp + 6240]
 mov rdx, qword ptr [rbp + 6248]
 mov qword ptr [1879052400], rax
 mov qword ptr [1879052408], rdx
 mov qword ptr [rbp + 6224], rax
 mov qword ptr [rbp + 6232], rdx
 jmp xchain00260_n94_α
# IR_VAR
 xchain00260_n00002_α:
 mov rax, qword ptr [rbp + 9504]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 9512]
 mov qword ptr [rbp + 1400], rax
 jmp xchain00260_n00003_α
 xchain00260_n00002_β:
 jmp xchain00260_n99_af
# IR_DISJUNCTION_NARY
 xchain00260_n00039_α:
 mov qword ptr [rbp + 1456], 0
 mov qword ptr [rbp + 1464], 0
 mov dword ptr [rbp + 1472], 0
 jmp xchain00260_n00044_α
xchain00260_n00039_as:
 mov eax, dword ptr [rbp + 1472]
 cmp eax, 0
 jne .Lx00313_0
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1464], rax
 jmp xchain00260_n99_as
.Lx00313_0:
 cmp eax, 1
 jne .Lx00313_1
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 1464], rax
 jmp xchain00260_n99_as
.Lx00313_1:
 jmp xchain00260_n99_as
 xchain00260_n00039_β:
 mov eax, dword ptr [rbp + 1472]
 cmp eax, 0
 je xchain00260_n94_α
 jmp xchain00260_n00045_β
xchain00260_n00039_af:
 add dword ptr [rbp + 1472], 1
 mov eax, dword ptr [rbp + 1472]
 cmp eax, 1
 je xchain00260_n00045_α
 jmp xchain00260_n94_α
 xchain00260_n00041_α:
 jmp xchain00260_n99_as
xchain00260_n00041_β:
 jmp xchain00260_n94_α
# IR_LIST_BANG
 xchain00260_n00043_α:
 mov qword ptr [rbp + 1088], 0
.Lx00314_0:
 mov rdi, qword ptr [rbp + 1104]
 mov rsi, qword ptr [rbp + 1112]
 mov rdx, qword ptr [rbp + 1088]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp rax, 99
 je xchain00260_n00001_α
 jmp xchain00260_n00004_α
 xchain00260_n00043_β:
 inc qword ptr [rbp + 1088]
 jmp .Lx00314_0
 xchain00260_n00042_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+992] -> [zr+960]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 968], rax
  .section .rodata
  .Lrkfn1017: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1017]
 lea rsi, [rbp + 960]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain00260_n00050_α
 jmp xchain00260_n00050_α
 xchain00260_n00042_β:
 jmp xchain00260_n00050_α
# IR_LIT_STRING
 xchain00260_n00003_α:
 mov qword ptr [rbp + 1424], 1
 mov rax, qword ptr [rip + .Lx00315_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain00260_n00005_α
.Lx00315_0:
 .quad .Lx00315_0_s
.Lx00315_0_s:
 .string "link"
# IR_VAR
 xchain00260_n00044_α:
 mov rax, qword ptr [rbp + 9504]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 9512]
 mov qword ptr [rbp + 2232], rax
 jmp xchain00260_n00051_α
 xchain00260_n00044_β:
 jmp xchain00260_n00039_af
# IR_DISJUNCTION_NARY
 xchain00260_n00045_α:
 mov qword ptr [rbp + 2288], 0
 mov qword ptr [rbp + 2296], 0
 mov dword ptr [rbp + 2304], 0
 jmp xchain00260_n00006_α
xchain00260_n00045_as:
 mov eax, dword ptr [rbp + 2304]
 cmp eax, 0
 jne .Lx00316_0
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 2296], rax
 jmp xchain00260_n00039_as
.Lx00316_0:
 cmp eax, 1
 jne .Lx00316_1
 mov rax, qword ptr [rbp + 3456]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 3464]
 mov qword ptr [rbp + 2296], rax
 jmp xchain00260_n00039_as
.Lx00316_1:
 jmp xchain00260_n00039_as
 xchain00260_n00045_β:
 mov eax, dword ptr [rbp + 2304]
 cmp eax, 0
 je xchain00260_n94_α
 jmp xchain00260_n00068_β
xchain00260_n00045_af:
 add dword ptr [rbp + 2304], 1
 mov eax, dword ptr [rbp + 2304]
 cmp eax, 1
 je xchain00260_n00068_α
 jmp xchain00260_n94_α
 xchain00260_n00047_α:
 jmp xchain00260_n00039_as
xchain00260_n00047_β:
 jmp xchain00260_n94_α
 xchain00260_n00004_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1040]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1048], rax
  .section .rodata
  .Lrkfn1025: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1025]
 lea rsi, [rbp + 1040]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain00260_n00043_β
 jmp xchain00260_n00043_β
 xchain00260_n00004_β:
 jmp xchain00260_n00043_β
# IR_MAKE_LIST
 xchain00260_n00050_α:
 lea rdi, [rbp + 944]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain00260_n00057_α
 xchain00260_n00005_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 9504]
 mov rsi, qword ptr [rbp + 9512]
 mov rdx, qword ptr [rbp + 1424]
 mov rcx, qword ptr [rbp + 1432]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00260_n99_af
 mov rdi, qword ptr [rbp + 1424]
 mov rsi, qword ptr [rbp + 1432]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain00260_n00055_α
# IR_LIT_STRING
 xchain00260_n00051_α:
 mov qword ptr [rbp + 2256], 1
 mov rax, qword ptr [rip + .Lx00317_0]
 mov qword ptr [rbp + 2264], rax
 jmp xchain00260_n00069_α
.Lx00317_0:
 .quad .Lx00317_0_s
.Lx00317_0_s:
 .string "procedure"
# IR_VAR
 xchain00260_n00006_α:
 mov rax, qword ptr [rbp + 9504]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 9512]
 mov qword ptr [rbp + 3304], rax
 jmp xchain00260_n00008_α
 xchain00260_n00006_β:
 jmp xchain00260_n00045_af
# IR_DISJUNCTION_NARY
 xchain00260_n00068_α:
 mov qword ptr [rbp + 3456], 0
 mov qword ptr [rbp + 3464], 0
 mov dword ptr [rbp + 3472], 0
 jmp xchain00260_n00058_α
xchain00260_n00068_as:
 mov eax, dword ptr [rbp + 3472]
 cmp eax, 0
 jne .Lx00318_0
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 3464], rax
 jmp xchain00260_n00045_as
.Lx00318_0:
 cmp eax, 1
 jne .Lx00318_1
 mov rax, qword ptr [rbp + 4880]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 4888]
 mov qword ptr [rbp + 3464], rax
 jmp xchain00260_n00045_as
.Lx00318_1:
 jmp xchain00260_n00045_as
 xchain00260_n00068_β:
 mov eax, dword ptr [rbp + 3472]
 cmp eax, 0
 je xchain00260_n94_α
 jmp xchain00260_n00060_β
xchain00260_n00068_af:
 add dword ptr [rbp + 3472], 1
 mov eax, dword ptr [rbp + 3472]
 cmp eax, 1
 je xchain00260_n00060_α
 jmp xchain00260_n94_α
 xchain00260_n00007_α:
 jmp xchain00260_n00045_as
xchain00260_n00007_β:
 jmp xchain00260_n94_α
 xchain00260_n00057_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 mov qword ptr [rbp + 9456], rax
 mov qword ptr [rbp + 9464], rdx
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain00260_n00064_α
# IR_MAKE_LIST
 xchain00260_n00055_α:
 lea rdi, [rbp + 1360]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain00260_n00066_α
 xchain00260_n00069_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 9504]
 mov rsi, qword ptr [rbp + 9512]
 mov rdx, qword ptr [rbp + 2256]
 mov rcx, qword ptr [rbp + 2264]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00260_n00039_af
 mov rdi, qword ptr [rbp + 2256]
 mov rsi, qword ptr [rbp + 2264]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain00260_n00067_α
# IR_DISJUNCTION_NARY
 xchain00260_n00008_α:
 mov qword ptr [rbp + 3328], 0
 mov qword ptr [rbp + 3336], 0
 mov dword ptr [rbp + 3344], 0
 jmp xchain00260_n00054_α
xchain00260_n00008_as:
 mov eax, dword ptr [rbp + 3344]
 cmp eax, 0
 jne .Lx00319_0
 mov rax, qword ptr [rbp + 3360]
 mov qword ptr [rbp + 3328], rax
 mov rax, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 3336], rax
 jmp xchain00260_n00009_α
.Lx00319_0:
 cmp eax, 1
 jne .Lx00319_1
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 3328], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3336], rax
 jmp xchain00260_n00009_α
.Lx00319_1:
 cmp eax, 2
 jne .Lx00319_2
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3328], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3336], rax
 jmp xchain00260_n00009_α
.Lx00319_2:
 jmp xchain00260_n00009_α
 xchain00260_n00008_β:
 mov eax, dword ptr [rbp + 3344]
 cmp eax, 0
 je xchain00260_n00008_af
 cmp eax, 1
 je xchain00260_n00008_af
 jmp xchain00260_n00008_af
xchain00260_n00008_af:
 add dword ptr [rbp + 3344], 1
 mov eax, dword ptr [rbp + 3344]
 cmp eax, 1
 je xchain00260_n00070_α
 cmp eax, 2
 je xchain00260_n00010_α
 jmp xchain00260_n00045_af
# IR_VAR
 xchain00260_n00058_α:
 mov rax, qword ptr [rbp + 9504]
 mov qword ptr [rbp + 4720], rax
 mov rax, qword ptr [rbp + 9512]
 mov qword ptr [rbp + 4728], rax
 jmp xchain00260_n00071_α
 xchain00260_n00058_β:
 jmp xchain00260_n00068_af
# IR_DISJUNCTION_NARY
 xchain00260_n00060_α:
 mov qword ptr [rbp + 4880], 0
 mov qword ptr [rbp + 4888], 0
 mov dword ptr [rbp + 4896], 0
 jmp xchain00260_n00072_α
xchain00260_n00060_as:
 mov eax, dword ptr [rbp + 4896]
 cmp eax, 0
 jne .Lx00320_0
 mov rax, qword ptr [rbp + 4928]
 mov qword ptr [rbp + 4880], rax
 mov rax, qword ptr [rbp + 4936]
 mov qword ptr [rbp + 4888], rax
 jmp xchain00260_n00068_as
.Lx00320_0:
 cmp eax, 1
 jne .Lx00320_1
 mov rax, qword ptr [rbp + 5440]
 mov qword ptr [rbp + 4880], rax
 mov rax, qword ptr [rbp + 5448]
 mov qword ptr [rbp + 4888], rax
 jmp xchain00260_n00068_as
.Lx00320_1:
 jmp xchain00260_n00068_as
 xchain00260_n00060_β:
 mov eax, dword ptr [rbp + 4896]
 cmp eax, 0
 je xchain00260_n94_α
 jmp xchain00260_n00073_β
xchain00260_n00060_af:
 add dword ptr [rbp + 4896], 1
 mov eax, dword ptr [rbp + 4896]
 cmp eax, 1
 je xchain00260_n00073_α
 jmp xchain00260_n94_α
 xchain00260_n00062_α:
 jmp xchain00260_n00068_as
xchain00260_n00062_β:
 jmp xchain00260_n94_α
# IR_VAR
 xchain00260_n00064_α:
 mov rax, qword ptr [rbp + 9488]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 9496]
 mov qword ptr [rbp + 280], rax
 jmp xchain00260_n00076_α
# IR_ASSIGN gva
 xchain00260_n00066_α:
 mov rax, qword ptr [rbp + 1344]
 mov rdx, qword ptr [rbp + 1352]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain00260_n00078_α
# IR_VAR
 xchain00260_n00067_α:
 mov rax, qword ptr [rbp + 9488]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 9496]
 mov qword ptr [rbp + 1992], rax
 jmp xchain00260_n00012_α
 xchain00260_n00009_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 9504]
 mov rsi, qword ptr [rbp + 9512]
 mov rdx, qword ptr [rbp + 3328]
 mov rcx, qword ptr [rbp + 3336]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00260_n00008_β
 mov rdi, qword ptr [rbp + 3328]
 mov rsi, qword ptr [rbp + 3336]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 jmp xchain00260_n00081_α
# IR_LIT_STRING
 xchain00260_n00054_α:
 mov qword ptr [rbp + 3360], 1
 mov rax, qword ptr [rip + .Lx00321_0]
 mov qword ptr [rbp + 3368], rax
 jmp xchain00260_n00008_as
 xchain00260_n00054_β:
 jmp xchain00260_n00008_af
.Lx00321_0:
 .quad .Lx00321_0_s
.Lx00321_0_s:
 .string "global"
# IR_LIT_STRING
 xchain00260_n00070_α:
 mov qword ptr [rbp + 3392], 1
 mov rax, qword ptr [rip + .Lx00322_0]
 mov qword ptr [rbp + 3400], rax
 jmp xchain00260_n00008_as
 xchain00260_n00070_β:
 jmp xchain00260_n00008_af
.Lx00322_0:
 .quad .Lx00322_0_s
.Lx00322_0_s:
 .string "link"
# IR_LIT_STRING
 xchain00260_n00010_α:
 mov qword ptr [rbp + 3424], 1
 mov rax, qword ptr [rip + .Lx00323_0]
 mov qword ptr [rbp + 3432], rax
 jmp xchain00260_n00008_as
 xchain00260_n00010_β:
 jmp xchain00260_n00008_af
.Lx00323_0:
 .quad .Lx00323_0_s
.Lx00323_0_s:
 .string "record"
# IR_DISJUNCTION_NARY
 xchain00260_n00071_α:
 mov qword ptr [rbp + 4752], 0
 mov qword ptr [rbp + 4760], 0
 mov dword ptr [rbp + 4768], 0
 jmp xchain00260_n00085_α
xchain00260_n00071_as:
 mov eax, dword ptr [rbp + 4768]
 cmp eax, 0
 jne .Lx00324_0
 mov rax, qword ptr [rbp + 4784]
 mov qword ptr [rbp + 4752], rax
 mov rax, qword ptr [rbp + 4792]
 mov qword ptr [rbp + 4760], rax
 jmp xchain00260_n00083_α
.Lx00324_0:
 cmp eax, 1
 jne .Lx00324_1
 mov rax, qword ptr [rbp + 4816]
 mov qword ptr [rbp + 4752], rax
 mov rax, qword ptr [rbp + 4824]
 mov qword ptr [rbp + 4760], rax
 jmp xchain00260_n00083_α
.Lx00324_1:
 cmp eax, 2
 jne .Lx00324_2
 mov rax, qword ptr [rbp + 4848]
 mov qword ptr [rbp + 4752], rax
 mov rax, qword ptr [rbp + 4856]
 mov qword ptr [rbp + 4760], rax
 jmp xchain00260_n00083_α
.Lx00324_2:
 jmp xchain00260_n00083_α
 xchain00260_n00071_β:
 mov eax, dword ptr [rbp + 4768]
 cmp eax, 0
 je xchain00260_n00071_af
 cmp eax, 1
 je xchain00260_n00071_af
 jmp xchain00260_n00071_af
xchain00260_n00071_af:
 add dword ptr [rbp + 4768], 1
 mov eax, dword ptr [rbp + 4768]
 cmp eax, 1
 je xchain00260_n00013_α
 cmp eax, 2
 je xchain00260_n00014_α
 jmp xchain00260_n00068_af
# IR_VAR
 xchain00260_n00072_α:
 mov rax, qword ptr [rbp + 9504]
 mov qword ptr [rbp + 5376], rax
 mov rax, qword ptr [rbp + 9512]
 mov qword ptr [rbp + 5384], rax
 jmp xchain00260_n00087_α
 xchain00260_n00072_β:
 jmp xchain00260_n00060_af
# IR_DISJUNCTION_NARY
 xchain00260_n00073_α:
 mov qword ptr [rbp + 5440], 0
 mov qword ptr [rbp + 5448], 0
 mov dword ptr [rbp + 5456], 0
 jmp xchain00260_n00089_α
xchain00260_n00073_as:
 mov eax, dword ptr [rbp + 5456]
 cmp eax, 0
 jne .Lx00325_0
 jmp xchain00260_n00060_as
.Lx00325_0:
 cmp eax, 1
 jne .Lx00325_1
 mov rax, qword ptr [rbp + 5616]
 mov qword ptr [rbp + 5440], rax
 mov rax, qword ptr [rbp + 5624]
 mov qword ptr [rbp + 5448], rax
 jmp xchain00260_n00060_as
.Lx00325_1:
 jmp xchain00260_n00060_as
 xchain00260_n00073_β:
 mov eax, dword ptr [rbp + 5456]
 cmp eax, 0
 je xchain00260_n94_α
 jmp xchain00260_n94_α
xchain00260_n00073_af:
 add dword ptr [rbp + 5456], 1
 mov eax, dword ptr [rbp + 5456]
 cmp eax, 1
 je xchain00260_n00092_α
 jmp xchain00260_n94_α
 xchain00260_n00075_α:
 jmp xchain00260_n00060_as
xchain00260_n00075_β:
 jmp xchain00260_n94_α
# IR_LIST_BANG
 xchain00260_n00076_α:
 mov qword ptr [rbp + 256], 0
.Lx00326_0:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 256]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp rax, 99
 je xchain00260_n00011_α
 jmp xchain00260_n00097_α
 xchain00260_n00076_β:
 inc qword ptr [rbp + 256]
 jmp .Lx00326_0
# IR_VAR
 xchain00260_n00011_α:
 mov rax, qword ptr [rbp + 9456]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 9464]
 mov qword ptr [rbp + 200], rax
 jmp xchain00260_n00099_α
# IR_LIT_STRING
 xchain00260_n00078_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx00327_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain00260_n00102_α
.Lx00327_0:
 .quad .Lx00327_0_s
.Lx00327_0_s:
 .string ""
# IR_LIT_STRING
 xchain00260_n00012_α:
 mov qword ptr [rbp + 2096], 1
 mov rax, qword ptr [rip + .Lx00328_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain00260_n00104_α
.Lx00328_0:
 .quad .Lx00328_0_s
.Lx00328_0_s:
 .string ""
# IR_DISJUNCTION_NARY
 xchain00260_n00079_α:
 mov qword ptr [rbp + 1856], 0
 mov qword ptr [rbp + 1864], 0
 mov dword ptr [rbp + 1872], 0
 jmp xchain00260_n00106_α
xchain00260_n00079_as:
 mov eax, dword ptr [rbp + 1872]
 cmp eax, 0
 jne .Lx00329_0
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 1864], rax
 jmp xchain00260_n00015_α
.Lx00329_0:
 cmp eax, 1
 jne .Lx00329_1
 jmp xchain00260_n00015_α
.Lx00329_1:
 jmp xchain00260_n00015_α
 xchain00260_n00079_β:
 mov eax, dword ptr [rbp + 1872]
 cmp eax, 0
 je xchain00260_n00079_af
 jmp xchain00260_n00079_af
xchain00260_n00079_af:
 add dword ptr [rbp + 1872], 1
 mov eax, dword ptr [rbp + 1872]
 cmp eax, 1
 je xchain00260_n00016_α
 jmp xchain00260_n00330_α
# IR_DISJUNCTION_NARY
 xchain00260_n00081_α:
 mov qword ptr [rbp + 3200], 0
 mov qword ptr [rbp + 3208], 0
 mov dword ptr [rbp + 3216], 0
 jmp xchain00260_n00331_α
xchain00260_n00081_as:
 mov eax, dword ptr [rbp + 3216]
 cmp eax, 0
 jne .Lx00332_0
 mov rax, qword ptr [rbp + 3232]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 3240]
 mov qword ptr [rbp + 3208], rax
 jmp xchain00260_n00333_α
.Lx00332_0:
 cmp eax, 1
 jne .Lx00332_1
 jmp xchain00260_n00333_α
.Lx00332_1:
 jmp xchain00260_n00333_α
 xchain00260_n00081_β:
 mov eax, dword ptr [rbp + 3216]
 cmp eax, 0
 je xchain00260_n00081_af
 jmp xchain00260_n00081_af
xchain00260_n00081_af:
 add dword ptr [rbp + 3216], 1
 mov eax, dword ptr [rbp + 3216]
 cmp eax, 1
 je xchain00260_n00334_α
 jmp xchain00260_n00019_α
 xchain00260_n00083_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 9504]
 mov rsi, qword ptr [rbp + 9512]
 mov rdx, qword ptr [rbp + 4752]
 mov rcx, qword ptr [rbp + 4760]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00260_n00071_β
 mov rdi, qword ptr [rbp + 4752]
 mov rsi, qword ptr [rbp + 4760]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 4688], rax
 mov qword ptr [rbp + 4696], rdx
 jmp xchain00260_n00335_α
# IR_LIT_STRING
 xchain00260_n00085_α:
 mov qword ptr [rbp + 4784], 1
 mov rax, qword ptr [rip + .Lx00336_0]
 mov qword ptr [rbp + 4792], rax
 jmp xchain00260_n00071_as
 xchain00260_n00085_β:
 jmp xchain00260_n00071_af
.Lx00336_0:
 .quad .Lx00336_0_s
.Lx00336_0_s:
 .string "local"
# IR_LIT_STRING
 xchain00260_n00013_α:
 mov qword ptr [rbp + 4816], 1
 mov rax, qword ptr [rip + .Lx00337_0]
 mov qword ptr [rbp + 4824], rax
 jmp xchain00260_n00071_as
 xchain00260_n00013_β:
 jmp xchain00260_n00071_af
.Lx00337_0:
 .quad .Lx00337_0_s
.Lx00337_0_s:
 .string "dynamic"
# IR_LIT_STRING
 xchain00260_n00014_α:
 mov qword ptr [rbp + 4848], 1
 mov rax, qword ptr [rip + .Lx00338_0]
 mov qword ptr [rbp + 4856], rax
 jmp xchain00260_n00071_as
 xchain00260_n00014_β:
 jmp xchain00260_n00071_af
.Lx00338_0:
 .quad .Lx00338_0_s
.Lx00338_0_s:
 .string "static"
# IR_LIT_STRING
 xchain00260_n00087_α:
 mov qword ptr [rbp + 5408], 1
 mov rax, qword ptr [rip + .Lx00339_0]
 mov qword ptr [rbp + 5416], rax
 jmp xchain00260_n00017_α
.Lx00339_0:
 .quad .Lx00339_0_s
.Lx00339_0_s:
 .string "end"
# IR_VAR
 xchain00260_n00089_α:
 mov rax, qword ptr [rbp + 9504]
 mov qword ptr [rbp + 5504], rax
 mov rax, qword ptr [rbp + 9512]
 mov qword ptr [rbp + 5512], rax
 jmp xchain00260_n00340_α
 xchain00260_n00089_β:
 jmp xchain00260_n00073_af
# IR_VAR
 xchain00260_n00092_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 6192], rax
 mov qword ptr [rbp + 6200], rdx
 jmp xchain00260_n00341_α
 xchain00260_n00092_β:
 jmp xchain00260_n00018_α
 xchain00260_n00095_α:
 jmp xchain00260_n00073_as
xchain00260_n00095_β:
 jmp xchain00260_n94_α
 xchain00260_n00097_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 9472], rax
 mov qword ptr [rbp + 9480], rdx
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00260_n00342_α
 xchain00260_n00099_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn1083: .string "sort"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1083]
 lea rsi, [rbp + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain00260_n00101_α
 jmp xchain00260_n00343_α
 xchain00260_n00099_β:
 jmp xchain00260_n00101_α
 xchain00260_n00101_α:
 call proc_Term___dcα
 jmp .Lx00344_2
.Lx00344_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain00260_n00101_β:
 jmp main_ω
.Lx00344_0:
 .quad .Lx00344_0_s
.Lx00344_0_s:
 .string "Term__"
# IR_ASSIGN gva
 xchain00260_n00102_α:
 mov rax, qword ptr [rbp + 1296]
 mov rdx, qword ptr [rbp + 1304]
 mov qword ptr [1879052496], rax
 mov qword ptr [1879052504], rdx
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain00260_n94_α
# IR_VAR
 xchain00260_n00104_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 jmp xchain00260_n00345_α
 xchain00260_n00015_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1856]
 mov rdx, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 9520], rax
 mov qword ptr [rbp + 9528], rdx
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain00260_n00330_α
 xchain00260_n00106_α:
 call proc_getword_dcα
 jmp .Lx00346_2
.Lx00346_2:
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 cmp eax, 99
 je xchain00260_n00079_af
 jmp xchain00260_n00079_as
 xchain00260_n00106_β:
 jmp xchain00260_n00079_af
.Lx00346_0:
 .quad .Lx00346_0_s
.Lx00346_0_s:
 .string "getword"
 xchain00260_n00016_α:
 jmp xchain00260_n97_α
xchain00260_n00016_β:
 jmp xchain00260_n97_α
 xchain00260_n00333_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3200]
 mov rdx, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 9504], rax
 mov qword ptr [rbp + 9512], rdx
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain00260_n00019_α
 xchain00260_n00331_α:
 call proc_getword_dcα
 jmp .Lx00347_2
.Lx00347_2:
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 cmp eax, 99
 je xchain00260_n00081_af
 jmp xchain00260_n00081_as
 xchain00260_n00331_β:
 jmp xchain00260_n00081_af
.Lx00347_0:
 .quad .Lx00347_0_s
.Lx00347_0_s:
 .string "getword"
 xchain00260_n00334_α:
 jmp xchain00260_n97_α
xchain00260_n00334_β:
 jmp xchain00260_n97_α
# IR_DISJUNCTION_NARY
 xchain00260_n00335_α:
 mov qword ptr [rbp + 4624], 0
 mov qword ptr [rbp + 4632], 0
 mov dword ptr [rbp + 4640], 0
 jmp xchain00260_n00021_α
xchain00260_n00335_as:
 mov eax, dword ptr [rbp + 4640]
 cmp eax, 0
 jne .Lx00348_0
 mov rax, qword ptr [rbp + 4656]
 mov qword ptr [rbp + 4624], rax
 mov rax, qword ptr [rbp + 4664]
 mov qword ptr [rbp + 4632], rax
 jmp xchain00260_n00020_α
.Lx00348_0:
 cmp eax, 1
 jne .Lx00348_1
 jmp xchain00260_n00020_α
.Lx00348_1:
 jmp xchain00260_n00020_α
 xchain00260_n00335_β:
 mov eax, dword ptr [rbp + 4640]
 cmp eax, 0
 je xchain00260_n00335_af
 jmp xchain00260_n00335_af
xchain00260_n00335_af:
 add dword ptr [rbp + 4640], 1
 mov eax, dword ptr [rbp + 4640]
 cmp eax, 1
 je xchain00260_n00349_α
 jmp xchain00260_n00025_α
 xchain00260_n00017_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 9504]
 mov rsi, qword ptr [rbp + 9512]
 mov rdx, qword ptr [rbp + 5408]
 mov rcx, qword ptr [rbp + 5416]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00260_n00060_af
 mov rdi, qword ptr [rbp + 5408]
 mov rsi, qword ptr [rbp + 5416]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 5344], rax
 mov qword ptr [rbp + 5352], rdx
 jmp xchain00260_n00350_α
# IR_VAR
 xchain00260_n00340_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 5568], rax
 mov qword ptr [rbp + 5576], rdx
 jmp xchain00260_n00351_α
 xchain00260_n00341_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 6192]
 mov rdx, qword ptr [rbp + 6200]
 mov qword ptr [rbp + 9552], rax
 mov qword ptr [rbp + 9560], rdx
 mov qword ptr [rbp + 6176], rax
 mov qword ptr [rbp + 6184], rdx
 jmp xchain00260_n00018_α
# IR_DISJUNCTION_NARY
 xchain00260_n00018_α:
 mov qword ptr [rbp + 5792], 0
 mov qword ptr [rbp + 5800], 0
 mov dword ptr [rbp + 5808], 0
 jmp xchain00260_n00352_α
xchain00260_n00018_as:
 mov eax, dword ptr [rbp + 5808]
 cmp eax, 0
 jne .Lx00353_0
 mov rax, qword ptr [rbp + 5824]
 mov qword ptr [rbp + 5792], rax
 mov rax, qword ptr [rbp + 5832]
 mov qword ptr [rbp + 5800], rax
 jmp xchain00260_n00354_α
.Lx00353_0:
 cmp eax, 1
 jne .Lx00353_1
 mov rax, qword ptr [rbp + 6048]
 mov qword ptr [rbp + 5792], rax
 mov rax, qword ptr [rbp + 6056]
 mov qword ptr [rbp + 5800], rax
 jmp xchain00260_n00354_α
.Lx00353_1:
 jmp xchain00260_n00354_α
 xchain00260_n00018_β:
 mov eax, dword ptr [rbp + 5808]
 cmp eax, 0
 je xchain00260_n00354_α
 jmp xchain00260_n00354_α
xchain00260_n00018_af:
 add dword ptr [rbp + 5808], 1
 mov eax, dword ptr [rbp + 5808]
 cmp eax, 1
 je xchain00260_n00355_α
 jmp xchain00260_n00354_α
# IR_BOUND
 xchain00260_n00342_α:
 mov qword ptr [rbp + 304], rsp
 jmp xchain00260_n00356_α
# IR_LIST_BANG
 xchain00260_n00343_α:
 mov qword ptr [rbp + 128], 0
.Lx00357_0:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 mov rdx, qword ptr [rbp + 128]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp rax, 99
 je xchain00260_n00101_α
 jmp xchain00260_n00358_α
 xchain00260_n00343_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00357_0
 xchain00260_n00359_α:
 jmp xchain00260_n94_α
xchain00260_n00359_β:
 jmp xchain00260_n94_α
# IR_LIT_INTEGER
 xchain00260_n00345_α:
 mov qword ptr [rbp + 2160], 6
 mov rax, qword ptr [rip + .Lx00360_0]
 mov qword ptr [rbp + 2168], rax
 jmp xchain00260_n00023_α
.Lx00360_0:
 .quad 0
# IR_VAR
 xchain00260_n00330_α:
 mov rax, qword ptr [rbp + 9488]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 9496]
 mov qword ptr [rbp + 1816], rax
 jmp xchain00260_n00361_α
# IR_VAR
 xchain00260_n00019_α:
 mov rax, qword ptr [rbp + 9504]
 mov qword ptr [rbp + 3088], rax
 mov rax, qword ptr [rbp + 9512]
 mov qword ptr [rbp + 3096], rax
 jmp xchain00260_n00024_α
 xchain00260_n00020_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4624]
 mov rdx, qword ptr [rbp + 4632]
 mov qword ptr [rbp + 9504], rax
 mov qword ptr [rbp + 9512], rdx
 mov qword ptr [rbp + 4608], rax
 mov qword ptr [rbp + 4616], rdx
 jmp xchain00260_n00025_α
 xchain00260_n00021_α:
 call proc_getword_dcα
 jmp .Lx00362_2
.Lx00362_2:
 mov qword ptr [rbp + 4656], rax
 mov qword ptr [rbp + 4664], rdx
 cmp eax, 99
 je xchain00260_n00335_af
 jmp xchain00260_n00335_as
 xchain00260_n00021_β:
 jmp xchain00260_n00335_af
.Lx00362_0:
 .quad .Lx00362_0_s
.Lx00362_0_s:
 .string "getword"
 xchain00260_n00349_α:
 jmp xchain00260_n97_α
xchain00260_n00349_β:
 jmp xchain00260_n97_α
# IR_LIT_STRING
 xchain00260_n00350_α:
 mov qword ptr [rbp + 5312], 1
 mov rax, qword ptr [rip + .Lx00363_0]
 mov qword ptr [rbp + 5320], rax
 jmp xchain00260_n00364_α
.Lx00363_0:
 .quad .Lx00363_0_s
.Lx00363_0_s:
 .string "global"
# IR_LIST_BANG
 xchain00260_n00351_α:
 mov qword ptr [rbp + 5552], 0
.Lx00365_0:
 mov rdi, qword ptr [rbp + 5568]
 mov rsi, qword ptr [rbp + 5576]
 mov rdx, qword ptr [rbp + 5552]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 5536], rax
 mov qword ptr [rbp + 5544], rdx
 cmp rax, 99
 je xchain00260_n00073_af
 jmp xchain00260_n00366_α
 xchain00260_n00351_β:
 inc qword ptr [rbp + 5552]
 jmp .Lx00365_0
# IR_VAR
 xchain00260_n00354_α:
 mov rax, qword ptr [rbp + 9504]
 mov qword ptr [rbp + 5696], rax
 mov rax, qword ptr [rbp + 9512]
 mov qword ptr [rbp + 5704], rax
 jmp xchain00260_n00367_α
 xchain00260_n00352_α:
 call proc_getword_dcα
 jmp .Lx00368_2
.Lx00368_2:
 mov qword ptr [rbp + 5984], rax
 mov qword ptr [rbp + 5992], rdx
 cmp eax, 99
 je xchain00260_n00018_af
 jmp xchain00260_n00369_α
 xchain00260_n00352_β:
 jmp xchain00260_n00018_af
.Lx00368_0:
 .quad .Lx00368_0_s
.Lx00368_0_s:
 .string "getword"
# IR_VAR
 xchain00260_n00355_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 6112], rax
 mov qword ptr [rbp + 6120], rdx
 jmp xchain00260_n00026_α
 xchain00260_n00355_β:
 jmp xchain00260_n00354_α
 xchain00260_n00370_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 5840]
 mov rdx, qword ptr [rbp + 5848]
 mov qword ptr [rbp + 9504], rax
 mov qword ptr [rbp + 9512], rdx
 mov qword ptr [rbp + 5824], rax
 mov qword ptr [rbp + 5832], rdx
 jmp xchain00260_n00018_as
 xchain00260_n00370_β:
 jmp xchain00260_n00354_α
 xchain00260_n00022_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6112] -> [zr+6064]
 mov rax, qword ptr [rbp + 6112]
 mov qword ptr [rbp + 6064], rax
 mov rax, qword ptr [rbp + 6120]
 mov qword ptr [rbp + 6072], rax
# marshal arg1 = producer-box slot [zr+6144] -> [zr+6080]
 mov rax, qword ptr [rbp + 6144]
 mov qword ptr [rbp + 6080], rax
 mov rax, qword ptr [rbp + 6152]
 mov qword ptr [rbp + 6088], rax
  .section .rodata
  .Lrkfn1127: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1127]
 lea rsi, [rbp + 6064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6048], rax
 mov qword ptr [rbp + 6056], rdx
 cmp eax, 99
 je xchain00260_n00354_α
 jmp xchain00260_n00018_as
 xchain00260_n00022_β:
 jmp xchain00260_n00354_α
# IR_VAR
 xchain00260_n00356_α:
 mov rax, qword ptr [rbp + 9456]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 9464]
 mov qword ptr [rbp + 424], rax
 jmp xchain00260_n00371_α
 xchain00260_n00358_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+80]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 88], rax
  .section .rodata
  .Lrkfn1131: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1131]
 lea rsi, [rbp + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je xchain00260_n00343_β
 jmp xchain00260_n00343_β
 xchain00260_n00358_β:
 jmp xchain00260_n00343_β
 xchain00260_n00023_α:
# BOX IR_CALL procrec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2096] -> [zr+2032]
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2040], rax
# marshal arg1 = producer-box slot [zr+2128] -> [zr+2048]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2056], rax
# marshal arg2 = producer-box slot [zr+2160] -> [zr+2064]
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2072], rax
  .section .rodata
  .Lrkfn1133: .string "procrec"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1133]
 lea rsi, [rbp + 2032]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain00260_n00079_α
 jmp xchain00260_n00372_α
 xchain00260_n00023_β:
 jmp xchain00260_n00079_α
 xchain00260_n00361_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1808] -> [zr+1776]
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1784], rax
  .section .rodata
  .Lrkfn1135: .string "pull"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1135]
 lea rsi, [rbp + 1776]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 cmp eax, 99
 je xchain00260_n00373_α
 jmp xchain00260_n00374_α
 xchain00260_n00361_β:
 jmp xchain00260_n00373_α
# IR_VAR
 xchain00260_n00373_α:
 mov rax, qword ptr [rbp + 9472]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 9480]
 mov qword ptr [rbp + 1672], rax
 jmp xchain00260_n00375_α
# IR_LIT_STRING
 xchain00260_n00024_α:
 mov qword ptr [rbp + 3120], 1
 mov rax, qword ptr [rip + .Lx00376_0]
 mov qword ptr [rbp + 3128], rax
 jmp xchain00260_n00377_α
.Lx00376_0:
 .quad .Lx00376_0_s
.Lx00376_0_s:
 .string "global"
 xchain00260_n00378_α:
 call proc_getword_dcα
 jmp .Lx00379_2
.Lx00379_2:
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 cmp eax, 99
 je xchain00260_n00380_α
 jmp xchain00260_n00029_α
 xchain00260_n00378_β:
 jmp xchain00260_n00380_α
.Lx00379_0:
 .quad .Lx00379_0_s
.Lx00379_0_s:
 .string "getword"
# IR_VAR
 xchain00260_n00025_α:
 mov rax, qword ptr [1879052480]
 mov rdx, qword ptr [1879052488]
 mov qword ptr [rbp + 4544], rax
 mov qword ptr [rbp + 4552], rdx
 jmp xchain00260_n00381_α
 xchain00260_n00364_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 5312]
 mov rdx, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 9520], rax
 mov qword ptr [rbp + 9528], rdx
 mov qword ptr [rbp + 5296], rax
 mov qword ptr [rbp + 5304], rdx
 jmp xchain00260_n00030_α
 xchain00260_n00366_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 9504]
 mov rsi, qword ptr [rbp + 9512]
 mov rdx, qword ptr [rbp + 5536]
 mov rcx, qword ptr [rbp + 5544]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00260_n00351_β
 mov rdi, qword ptr [rbp + 5536]
 mov rsi, qword ptr [rbp + 5544]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 jmp xchain00260_n94_α
# IR_VAR
 xchain00260_n00367_α:
 mov rax, qword ptr [rbp + 9520]
 mov qword ptr [rbp + 5728], rax
 mov rax, qword ptr [rbp + 9528]
 mov qword ptr [rbp + 5736], rax
 jmp xchain00260_n00031_α
 xchain00260_n00369_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 5984]
 mov rdx, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 9536], rax
 mov qword ptr [rbp + 9544], rdx
 mov qword ptr [rbp + 5968], rax
 mov qword ptr [rbp + 5976], rdx
 jmp xchain00260_n00382_α
# IR_VAR
 xchain00260_n00026_α:
 mov rax, qword ptr [rbp + 9536]
 mov qword ptr [rbp + 6144], rax
 mov rax, qword ptr [rbp + 9544]
 mov qword ptr [rbp + 6152], rax
 jmp xchain00260_n00022_α
# IR_VAR
 xchain00260_n00371_α:
 mov rax, qword ptr [rbp + 9472]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 9480]
 mov qword ptr [rbp + 664], rax
 jmp xchain00260_n00383_α
# IR_UNMARK
 xchain00260_n00027_α:
 mov rsp, qword ptr [rbp + 304]
 jmp xchain00260_n00076_β
 xchain00260_n00372_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1936]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1944], rax
# marshal arg1 = producer-box slot [zr+2016] -> [zr+1952]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1960], rax
  .section .rodata
  .Lrkfn1154: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1154]
 lea rsi, [rbp + 1936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 cmp eax, 99
 je xchain00260_n00079_α
 jmp xchain00260_n00079_α
 xchain00260_n00372_β:
 jmp xchain00260_n00079_α
 xchain00260_n00374_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1760]
 mov rdx, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 9472], rax
 mov qword ptr [rbp + 9480], rdx
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain00260_n00373_α
# IR_FIELD_GET lv
 xchain00260_n00375_α:
 mov rdi, qword ptr [rip + .Lx00384_0]
 mov rsi, qword ptr [rbp + 1664]
 mov rdx, qword ptr [rbp + 1672]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00260_n00028_α
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain00260_n00032_α
.Lx00384_0:
 .quad .Lx00384_0_s
.Lx00384_0_s:
 .string "pname"
# IR_VAR
 xchain00260_n00028_α:
 mov rax, qword ptr [rbp + 9488]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 9496]
 mov qword ptr [rbp + 1576], rax
 jmp xchain00260_n00385_α
# IR_VAR
 xchain00260_n00377_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 jmp xchain00260_n00033_α
 xchain00260_n00029_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2512]
 mov rdx, qword ptr [rbp + 2520]
 mov qword ptr [rbp + 9536], rax
 mov qword ptr [rbp + 9544], rdx
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 jmp xchain00260_n00034_α
# IR_VAR
 xchain00260_n00380_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain00260_n00036_α
# IR_VAR
 xchain00260_n00381_α:
 mov rax, qword ptr [rbp + 9504]
 mov qword ptr [rbp + 4576], rax
 mov rax, qword ptr [rbp + 9512]
 mov qword ptr [rbp + 4584], rax
 jmp xchain00260_n00386_α
# IR_VAR
 xchain00260_n00387_α:
 mov rax, qword ptr [rbp + 9504]
 mov qword ptr [rbp + 4384], rax
 mov rax, qword ptr [rbp + 9512]
 mov qword ptr [rbp + 4392], rax
 jmp xchain00260_n00038_α
# IR_MAKE_LIST
 xchain00260_n00030_α:
 lea rdi, [rbp + 5296]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 jmp xchain00260_n00040_α
# IR_VAR
 xchain00260_n00031_α:
 mov rax, qword ptr [rbp + 9552]
 mov qword ptr [rbp + 5760], rax
 mov rax, qword ptr [rbp + 9560]
 mov qword ptr [rbp + 5768], rax
 jmp xchain00260_n00388_α
# IR_LIT_STRING
 xchain00260_n00382_α:
 mov qword ptr [rbp + 6016], 1
 mov rax, qword ptr [rip + .Lx00389_0]
 mov qword ptr [rbp + 6024], rax
 jmp xchain00260_n00390_α
.Lx00389_0:
 .quad .Lx00389_0_s
.Lx00389_0_s:
 .string "("
# IR_FIELD_GET
 xchain00260_n00383_α:
 mov rdi, qword ptr [rip + .Lx00391_0]
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00260_n00027_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00260_n00392_α
.Lx00391_0:
 .quad .Lx00391_0_s
.Lx00391_0_s:
 .string "pname"
# IR_VAR
 xchain00260_n00032_α:
 mov rax, qword ptr [rbp + 9520]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 9528]
 mov qword ptr [rbp + 1720], rax
 jmp xchain00260_n00393_α
# IR_VAR
 xchain00260_n00385_α:
 mov rax, qword ptr [rbp + 9472]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 9480]
 mov qword ptr [rbp + 1608], rax
 jmp xchain00260_n00046_α
 xchain00260_n00033_α:
 lea rsi, [rbp + 3088]
 lea rdx, [rbp + 3120]
 lea rcx, [rbp + 3152]
 call proc_addword_dcα
 jmp .Lx00394_2
.Lx00394_2:
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 cmp eax, 99
 je xchain00260_n00378_α
 jmp xchain00260_n00378_α
 xchain00260_n00033_β:
 jmp xchain00260_n00378_α
.Lx00394_0:
 .quad .Lx00394_0_s
.Lx00394_0_s:
 .string "addword"
# IR_LIT_STRING
 xchain00260_n00034_α:
 mov qword ptr [rbp + 2544], 1
 mov rax, qword ptr [rip + .Lx00395_0]
 mov qword ptr [rbp + 2552], rax
 jmp xchain00260_n00396_α
.Lx00395_0:
 .quad .Lx00395_0_s
.Lx00395_0_s:
 .string ","
# IR_VAR
 xchain00260_n00036_α:
 mov rax, qword ptr [rbp + 9536]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 9544]
 mov qword ptr [rbp + 2440], rax
 jmp xchain00260_n00048_α
 xchain00260_n00386_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4544] -> [zr+4496]
 mov rax, qword ptr [rbp + 4544]
 mov qword ptr [rbp + 4496], rax
 mov rax, qword ptr [rbp + 4552]
 mov qword ptr [rbp + 4504], rax
# marshal arg1 = producer-box slot [zr+4576] -> [zr+4512]
 mov rax, qword ptr [rbp + 4576]
 mov qword ptr [rbp + 4512], rax
 mov rax, qword ptr [rbp + 4584]
 mov qword ptr [rbp + 4520], rax
  .section .rodata
  .Lrkfn1182: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1182]
 lea rsi, [rbp + 4496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 cmp eax, 99
 je xchain00260_n00387_α
 jmp xchain00260_n00387_α
 xchain00260_n00386_β:
 jmp xchain00260_n00387_α
# IR_VAR
 xchain00260_n00038_α:
 mov rax, qword ptr [rbp + 9520]
 mov qword ptr [rbp + 4416], rax
 mov rax, qword ptr [rbp + 9528]
 mov qword ptr [rbp + 4424], rax
 jmp xchain00260_n00397_α
 xchain00260_n00398_α:
 call proc_getword_dcα
 jmp .Lx00399_2
.Lx00399_2:
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 cmp eax, 99
 je xchain00260_n00049_α
 jmp xchain00260_n00400_α
 xchain00260_n00398_β:
 jmp xchain00260_n00049_α
.Lx00399_0:
 .quad .Lx00399_0_s
.Lx00399_0_s:
 .string "getword"
# IR_ASSIGN gva
 xchain00260_n00040_α:
 mov rax, qword ptr [rbp + 5280]
 mov rdx, qword ptr [rbp + 5288]
 mov qword ptr [1879052480], rax
 mov qword ptr [1879052488], rdx
 mov qword ptr [rbp + 5264], rax
 mov qword ptr [rbp + 5272], rdx
 jmp xchain00260_n00401_α
 xchain00260_n00388_α:
 lea rsi, [rbp + 5696]
 lea rdx, [rbp + 5728]
 lea rcx, [rbp + 5760]
 call proc_addword_dcα
 jmp .Lx00402_2
.Lx00402_2:
 mov qword ptr [rbp + 5616], rax
 mov qword ptr [rbp + 5624], rdx
 cmp eax, 99
 je xchain00260_n94_α
 jmp xchain00260_n00095_α
 xchain00260_n00388_β:
 jmp xchain00260_n94_α
.Lx00402_0:
 .quad .Lx00402_0_s
.Lx00402_0_s:
 .string "addword"
 xchain00260_n00390_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 5968]
 mov rsi, qword ptr [rbp + 5976]
 mov rdx, qword ptr [rbp + 6016]
 mov rcx, qword ptr [rbp + 6024]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00260_n00018_af
 mov rdi, qword ptr [rbp + 6016]
 mov rsi, qword ptr [rbp + 6024]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 5936], rax
 mov qword ptr [rbp + 5944], rdx
 jmp xchain00260_n00403_α
# IR_LIT_INTEGER
 xchain00260_n00392_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00404_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00260_n00405_α
.Lx00404_0:
 .quad 16
# IR_ASSIGN_VAR
 xchain00260_n00393_α:
 mov rdi, qword ptr [rbp + 1632]
 mov rsi, qword ptr [rbp + 1640]
 mov rdx, qword ptr [rbp + 1712]
 mov rcx, qword ptr [rbp + 1720]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00260_n00028_α
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain00260_n00028_α
 xchain00260_n00046_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1568] -> [zr+1520]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1528], rax
# marshal arg1 = producer-box slot [zr+1600] -> [zr+1536]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1544], rax
  .section .rodata
  .Lrkfn1194: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1194]
 lea rsi, [rbp + 1520]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je xchain00260_n94_α
 jmp xchain00260_n00047_α
 xchain00260_n00046_β:
 jmp xchain00260_n94_α
 xchain00260_n00396_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 2496]
 mov rsi, qword ptr [rbp + 2504]
 mov rdx, qword ptr [rbp + 2544]
 mov rcx, qword ptr [rbp + 2552]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00260_n00380_α
 mov rdi, qword ptr [rbp + 2544]
 mov rsi, qword ptr [rbp + 2552]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 jmp xchain00260_n00052_α
 xchain00260_n00048_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn1197: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1197]
 lea rsi, [rbp + 2352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 cmp eax, 99
 je xchain00260_n94_α
 jmp xchain00260_n00007_α
 xchain00260_n00048_β:
 jmp xchain00260_n94_α
# IR_VAR
 xchain00260_n00397_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 4448], rax
 mov qword ptr [rbp + 4456], rdx
 jmp xchain00260_n00053_α
 xchain00260_n00400_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3680]
 mov rdx, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 9536], rax
 mov qword ptr [rbp + 9544], rdx
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 jmp xchain00260_n00406_α
# IR_VAR
 xchain00260_n00049_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 jmp xchain00260_n00056_α
# IR_VAR
 xchain00260_n00401_α:
 mov rax, qword ptr [rbp + 9488]
 mov qword ptr [rbp + 5232], rax
 mov rax, qword ptr [rbp + 9496]
 mov qword ptr [rbp + 5240], rax
 jmp xchain00260_n00407_α
# IR_VAR
 xchain00260_n00403_α:
 mov rax, qword ptr [rbp + 9504]
 mov qword ptr [rbp + 5872], rax
 mov rax, qword ptr [rbp + 9512]
 mov qword ptr [rbp + 5880], rax
 jmp xchain00260_n00408_α
# IR_LIT_STRING
 xchain00260_n00405_α:
 mov qword ptr [rbp + 720], 1
 mov rax, qword ptr [rip + .Lx00409_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00260_n00059_α
.Lx00409_0:
 .quad .Lx00409_0_s
.Lx00409_0_s:
 .string " "
# IR_DISJUNCTION_NARY
 xchain00260_n00052_α:
 mov qword ptr [rbp + 2848], 0
 mov qword ptr [rbp + 2856], 0
 mov dword ptr [rbp + 2864], 0
 jmp xchain00260_n00063_α
xchain00260_n00052_as:
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 0
 jne .Lx00410_0
 jmp xchain00260_n00061_α
.Lx00410_0:
 jmp xchain00260_n00061_α
 xchain00260_n00052_β:
 mov eax, dword ptr [rbp + 2864]
 jmp xchain00260_n00061_α
xchain00260_n00052_af:
 add dword ptr [rbp + 2864], 1
 mov eax, dword ptr [rbp + 2864]
 jmp xchain00260_n00061_α
 xchain00260_n00053_α:
 lea rsi, [rbp + 4384]
 lea rdx, [rbp + 4416]
 lea rcx, [rbp + 4448]
 call proc_addword_dcα
 jmp .Lx00411_2
.Lx00411_2:
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 cmp eax, 99
 je xchain00260_n00398_α
 jmp xchain00260_n00398_α
 xchain00260_n00053_β:
 jmp xchain00260_n00398_α
.Lx00411_0:
 .quad .Lx00411_0_s
.Lx00411_0_s:
 .string "addword"
# IR_LIT_STRING
 xchain00260_n00406_α:
 mov qword ptr [rbp + 3712], 1
 mov rax, qword ptr [rip + .Lx00412_0]
 mov qword ptr [rbp + 3720], rax
 jmp xchain00260_n00065_α
.Lx00412_0:
 .quad .Lx00412_0_s
.Lx00412_0_s:
 .string ","
# IR_VAR
 xchain00260_n00056_α:
 mov rax, qword ptr [rbp + 9536]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 9544]
 mov qword ptr [rbp + 3608], rax
 jmp xchain00260_n00413_α
 xchain00260_n00407_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5232] -> [zr+5200]
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 5200], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 5208], rax
  .section .rodata
  .Lrkfn1214: .string "pull"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1214]
 lea rsi, [rbp + 5200]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5184], rax
 mov qword ptr [rbp + 5192], rdx
 cmp eax, 99
 je xchain00260_n00414_α
 jmp xchain00260_n00415_α
 xchain00260_n00407_β:
 jmp xchain00260_n00414_α
# IR_VAR
 xchain00260_n00414_α:
 mov rax, qword ptr [rbp + 9472]
 mov qword ptr [rbp + 5088], rax
 mov rax, qword ptr [rbp + 9480]
 mov qword ptr [rbp + 5096], rax
 jmp xchain00260_n00416_α
# IR_LIT_STRING
 xchain00260_n00408_α:
 mov qword ptr [rbp + 5904], 1
 mov rax, qword ptr [rip + .Lx00417_0]
 mov qword ptr [rbp + 5912], rax
 jmp xchain00260_n00418_α
.Lx00417_0:
 .quad .Lx00417_0_s
.Lx00417_0_s:
 .string " *"
 xchain00260_n00059_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+560]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 568], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+576]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 584], rax
# marshal arg2 = producer-box slot [zr+720] -> [zr+592]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 600], rax
  .section .rodata
  .Lrkfn1219: .string "left"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1219]
 lea rsi, [rbp + 560]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain00260_n00027_α
 jmp xchain00260_n00419_α
 xchain00260_n00059_β:
 jmp xchain00260_n00027_α
# IR_DISJUNCTION_NARY
 xchain00260_n00061_α:
 mov qword ptr [rbp + 2784], 0
 mov qword ptr [rbp + 2792], 0
 mov dword ptr [rbp + 2800], 0
 jmp xchain00260_n00420_α
xchain00260_n00061_as:
 mov eax, dword ptr [rbp + 2800]
 cmp eax, 0
 jne .Lx00421_0
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2792], rax
 jmp xchain00260_n00422_α
.Lx00421_0:
 cmp eax, 1
 jne .Lx00421_1
 jmp xchain00260_n00422_α
.Lx00421_1:
 jmp xchain00260_n00422_α
 xchain00260_n00061_β:
 mov eax, dword ptr [rbp + 2800]
 cmp eax, 0
 je xchain00260_n00061_af
 jmp xchain00260_n00061_af
xchain00260_n00061_af:
 add dword ptr [rbp + 2800], 1
 mov eax, dword ptr [rbp + 2800]
 cmp eax, 1
 je xchain00260_n00423_α
 jmp xchain00260_n00424_α
# IR_VAR
 xchain00260_n00063_α:
 mov rax, qword ptr [rbp + 9504]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 9512]
 mov qword ptr [rbp + 2920], rax
 jmp xchain00260_n00425_α
 xchain00260_n00063_β:
 jmp xchain00260_n00052_af
 xchain00260_n00065_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 3664]
 mov rsi, qword ptr [rbp + 3672]
 mov rdx, qword ptr [rbp + 3712]
 mov rcx, qword ptr [rbp + 3720]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00260_n00049_α
 mov rdi, qword ptr [rbp + 3712]
 mov rsi, qword ptr [rbp + 3720]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 jmp xchain00260_n00426_α
 xchain00260_n00413_α:
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
  .Lrkfn1226: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1226]
 lea rsi, [rbp + 3520]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 cmp eax, 99
 je xchain00260_n94_α
 jmp xchain00260_n00062_α
 xchain00260_n00413_β:
 jmp xchain00260_n94_α
 xchain00260_n00415_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 5184]
 mov rdx, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 9472], rax
 mov qword ptr [rbp + 9480], rdx
 mov qword ptr [rbp + 5168], rax
 mov qword ptr [rbp + 5176], rdx
 jmp xchain00260_n00414_α
# IR_FIELD_GET lv
 xchain00260_n00416_α:
 mov rdi, qword ptr [rip + .Lx00427_0]
 mov rsi, qword ptr [rbp + 5088]
 mov rdx, qword ptr [rbp + 5096]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00260_n00428_α
 mov qword ptr [rbp + 5056], rax
 mov qword ptr [rbp + 5064], rdx
 jmp xchain00260_n00429_α
.Lx00427_0:
 .quad .Lx00427_0_s
.Lx00427_0_s:
 .string "lastline"
# IR_VAR
 xchain00260_n00428_α:
 mov rax, qword ptr [rbp + 9488]
 mov qword ptr [rbp + 4992], rax
 mov rax, qword ptr [rbp + 9496]
 mov qword ptr [rbp + 5000], rax
 jmp xchain00260_n00430_α
 xchain00260_n00418_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 9504]
 mov rsi, qword ptr [rbp + 9512]
 mov rdx, qword ptr [rbp + 5904]
 mov rcx, qword ptr [rbp + 5912]
 call str_concat_d@PLT
 mov qword ptr [rbp + 5840], rax
 mov qword ptr [rbp + 5848], rdx
 jmp xchain00260_n00370_α
# IR_VAR
 xchain00260_n00419_α:
 mov rax, qword ptr [rbp + 9472]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 9480]
 mov qword ptr [rbp + 792], rax
 jmp xchain00260_n00431_α
 xchain00260_n00422_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2784]
 mov rdx, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 9504], rax
 mov qword ptr [rbp + 9512], rdx
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 jmp xchain00260_n00424_α
 xchain00260_n00420_α:
 call proc_getword_dcα
 jmp .Lx00432_2
.Lx00432_2:
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 cmp eax, 99
 je xchain00260_n00061_af
 jmp xchain00260_n00061_as
 xchain00260_n00420_β:
 jmp xchain00260_n00061_af
.Lx00432_0:
 .quad .Lx00432_0_s
.Lx00432_0_s:
 .string "getword"
 xchain00260_n00423_α:
 jmp xchain00260_n00380_α
xchain00260_n00423_β:
 jmp xchain00260_n00380_α
# IR_VAR
 xchain00260_n00425_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 jmp xchain00260_n00433_α
# IR_DISJUNCTION_NARY
 xchain00260_n00426_α:
 mov qword ptr [rbp + 4144], 0
 mov qword ptr [rbp + 4152], 0
 mov dword ptr [rbp + 4160], 0
 jmp xchain00260_n00074_α
xchain00260_n00426_as:
 mov eax, dword ptr [rbp + 4160]
 cmp eax, 0
 jne .Lx00434_0
 jmp xchain00260_n00435_α
.Lx00434_0:
 jmp xchain00260_n00435_α
 xchain00260_n00426_β:
 mov eax, dword ptr [rbp + 4160]
 jmp xchain00260_n00435_α
xchain00260_n00426_af:
 add dword ptr [rbp + 4160], 1
 mov eax, dword ptr [rbp + 4160]
 jmp xchain00260_n00435_α
# IR_VAR
 xchain00260_n00429_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 5136], rax
 mov qword ptr [rbp + 5144], rdx
 jmp xchain00260_n00436_α
# IR_VAR
 xchain00260_n00430_α:
 mov rax, qword ptr [rbp + 9472]
 mov qword ptr [rbp + 5024], rax
 mov rax, qword ptr [rbp + 9480]
 mov qword ptr [rbp + 5032], rax
 jmp xchain00260_n00077_α
# IR_FIELD_GET
 xchain00260_n00431_α:
 mov rdi, qword ptr [rip + .Lx00437_0]
 mov rsi, qword ptr [rbp + 784]
 mov rdx, qword ptr [rbp + 792]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00260_n00027_α
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00260_n00438_α
.Lx00437_0:
 .quad .Lx00437_0_s
.Lx00437_0_s:
 .string "begline"
# IR_VAR
 xchain00260_n00424_α:
 mov rax, qword ptr [rbp + 9504]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 9512]
 mov qword ptr [rbp + 2680], rax
 jmp xchain00260_n00439_α
# IR_LIST_BANG
 xchain00260_n00433_α:
 mov qword ptr [rbp + 2960], 0
.Lx00440_0:
 mov rdi, qword ptr [rbp + 2976]
 mov rsi, qword ptr [rbp + 2984]
 mov rdx, qword ptr [rbp + 2960]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 cmp rax, 99
 je xchain00260_n00052_af
 jmp xchain00260_n00441_α
 xchain00260_n00433_β:
 inc qword ptr [rbp + 2960]
 jmp .Lx00440_0
# IR_DISJUNCTION_NARY
 xchain00260_n00435_α:
 mov qword ptr [rbp + 4080], 0
 mov qword ptr [rbp + 4088], 0
 mov dword ptr [rbp + 4096], 0
 jmp xchain00260_n00442_α
xchain00260_n00435_as:
 mov eax, dword ptr [rbp + 4096]
 cmp eax, 0
 jne .Lx00443_0
 mov rax, qword ptr [rbp + 4112]
 mov qword ptr [rbp + 4080], rax
 mov rax, qword ptr [rbp + 4120]
 mov qword ptr [rbp + 4088], rax
 jmp xchain00260_n00080_α
.Lx00443_0:
 cmp eax, 1
 jne .Lx00443_1
 jmp xchain00260_n00080_α
.Lx00443_1:
 jmp xchain00260_n00080_α
 xchain00260_n00435_β:
 mov eax, dword ptr [rbp + 4096]
 cmp eax, 0
 je xchain00260_n00435_af
 jmp xchain00260_n00435_af
xchain00260_n00435_af:
 add dword ptr [rbp + 4096], 1
 mov eax, dword ptr [rbp + 4096]
 cmp eax, 1
 je xchain00260_n00082_α
 jmp xchain00260_n00444_α
# IR_VAR
 xchain00260_n00074_α:
 mov rax, qword ptr [rbp + 9504]
 mov qword ptr [rbp + 4208], rax
 mov rax, qword ptr [rbp + 9512]
 mov qword ptr [rbp + 4216], rax
 jmp xchain00260_n00084_α
 xchain00260_n00074_β:
 jmp xchain00260_n00426_af
# IR_ASSIGN_VAR
 xchain00260_n00436_α:
 mov rdi, qword ptr [rbp + 5056]
 mov rsi, qword ptr [rbp + 5064]
 mov rdx, qword ptr [rbp + 5136]
 mov rcx, qword ptr [rbp + 5144]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00260_n00428_α
 mov qword ptr [rbp + 5120], rax
 mov qword ptr [rbp + 5128], rdx
 jmp xchain00260_n00428_α
 xchain00260_n00077_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4992] -> [zr+4944]
 mov rax, qword ptr [rbp + 4992]
 mov qword ptr [rbp + 4944], rax
 mov rax, qword ptr [rbp + 5000]
 mov qword ptr [rbp + 4952], rax
# marshal arg1 = producer-box slot [zr+5024] -> [zr+4960]
 mov rax, qword ptr [rbp + 5024]
 mov qword ptr [rbp + 4960], rax
 mov rax, qword ptr [rbp + 5032]
 mov qword ptr [rbp + 4968], rax
  .section .rodata
  .Lrkfn1255: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1255]
 lea rsi, [rbp + 4944]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4928], rax
 mov qword ptr [rbp + 4936], rdx
 cmp eax, 99
 je xchain00260_n94_α
 jmp xchain00260_n00075_α
 xchain00260_n00077_β:
 jmp xchain00260_n94_α
 xchain00260_n00438_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 call str_concat_d@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00260_n00445_α
# IR_LIT_STRING
 xchain00260_n00439_α:
 mov qword ptr [rbp + 2704], 1
 mov rax, qword ptr [rip + .Lx00446_0]
 mov qword ptr [rbp + 2712], rax
 jmp xchain00260_n00086_α
.Lx00446_0:
 .quad .Lx00446_0_s
.Lx00446_0_s:
 .string "global"
 xchain00260_n00441_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 9504]
 mov rsi, qword ptr [rbp + 9512]
 mov rdx, qword ptr [rbp + 2944]
 mov rcx, qword ptr [rbp + 2952]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00260_n00433_β
 mov rdi, qword ptr [rbp + 2944]
 mov rsi, qword ptr [rbp + 2952]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 jmp xchain00260_n00380_α
 xchain00260_n00080_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4080]
 mov rdx, qword ptr [rbp + 4088]
 mov qword ptr [rbp + 9504], rax
 mov qword ptr [rbp + 9512], rdx
 mov qword ptr [rbp + 4064], rax
 mov qword ptr [rbp + 4072], rdx
 jmp xchain00260_n00444_α
 xchain00260_n00442_α:
 call proc_getword_dcα
 jmp .Lx00447_2
.Lx00447_2:
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 cmp eax, 99
 je xchain00260_n00435_af
 jmp xchain00260_n00435_as
 xchain00260_n00442_β:
 jmp xchain00260_n00435_af
.Lx00447_0:
 .quad .Lx00447_0_s
.Lx00447_0_s:
 .string "getword"
 xchain00260_n00082_α:
 jmp xchain00260_n00049_α
xchain00260_n00082_β:
 jmp xchain00260_n00049_α
# IR_VAR
 xchain00260_n00084_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 jmp xchain00260_n00448_α
# IR_LIT_STRING
 xchain00260_n00445_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx00449_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00260_n00450_α
.Lx00449_0:
 .quad .Lx00449_0_s
.Lx00449_0_s:
 .string "-"
# IR_VAR
 xchain00260_n00086_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 jmp xchain00260_n00451_α
# IR_VAR
 xchain00260_n00444_α:
 mov rax, qword ptr [1879052480]
 mov rdx, qword ptr [1879052488]
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 jmp xchain00260_n00088_α
# IR_LIST_BANG
 xchain00260_n00448_α:
 mov qword ptr [rbp + 4256], 0
.Lx00452_0:
 mov rdi, qword ptr [rbp + 4272]
 mov rsi, qword ptr [rbp + 4280]
 mov rdx, qword ptr [rbp + 4256]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 cmp rax, 99
 je xchain00260_n00426_af
 jmp xchain00260_n00453_α
 xchain00260_n00448_β:
 inc qword ptr [rbp + 4256]
 jmp .Lx00452_0
 xchain00260_n00450_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 816]
 mov rcx, qword ptr [rbp + 824]
 call str_concat_d@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00260_n00091_α
 xchain00260_n00451_α:
 lea rsi, [rbp + 2672]
 lea rdx, [rbp + 2704]
 lea rcx, [rbp + 2736]
 call proc_addword_dcα
 jmp .Lx00454_2
.Lx00454_2:
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je xchain00260_n00378_α
 jmp xchain00260_n00093_α
 xchain00260_n00451_β:
 jmp xchain00260_n00378_α
.Lx00454_0:
 .quad .Lx00454_0_s
.Lx00454_0_s:
 .string "addword"
# IR_VAR
 xchain00260_n00088_α:
 mov rax, qword ptr [rbp + 9504]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 9512]
 mov qword ptr [rbp + 4040], rax
 jmp xchain00260_n00455_α
# IR_VAR
 xchain00260_n00090_α:
 mov rax, qword ptr [rbp + 9504]
 mov qword ptr [rbp + 3840], rax
 mov rax, qword ptr [rbp + 9512]
 mov qword ptr [rbp + 3848], rax
 jmp xchain00260_n00094_α
 xchain00260_n00453_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 9504]
 mov rsi, qword ptr [rbp + 9512]
 mov rdx, qword ptr [rbp + 4240]
 mov rcx, qword ptr [rbp + 4248]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00260_n00448_β
 mov rdi, qword ptr [rbp + 4240]
 mov rsi, qword ptr [rbp + 4248]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 jmp xchain00260_n00049_α
# IR_VAR
 xchain00260_n00091_α:
 mov rax, qword ptr [rbp + 9472]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 9480]
 mov qword ptr [rbp + 888], rax
 jmp xchain00260_n00096_α
 xchain00260_n00093_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2584], rax
 jmp xchain00260_n00378_α
xchain00260_n00093_β:
 jmp xchain00260_n00378_α
 xchain00260_n00455_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4000] -> [zr+3952]
 mov rax, qword ptr [rbp + 4000]
 mov qword ptr [rbp + 3952], rax
 mov rax, qword ptr [rbp + 4008]
 mov qword ptr [rbp + 3960], rax
# marshal arg1 = producer-box slot [zr+4032] -> [zr+3968]
 mov rax, qword ptr [rbp + 4032]
 mov qword ptr [rbp + 3968], rax
 mov rax, qword ptr [rbp + 4040]
 mov qword ptr [rbp + 3976], rax
  .section .rodata
  .Lrkfn1281: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1281]
 lea rsi, [rbp + 3952]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3936], rax
 mov qword ptr [rbp + 3944], rdx
 cmp eax, 99
 je xchain00260_n00090_α
 jmp xchain00260_n00090_α
 xchain00260_n00455_β:
 jmp xchain00260_n00090_α
# IR_VAR
 xchain00260_n00094_α:
 mov rax, qword ptr [rbp + 9520]
 mov qword ptr [rbp + 3872], rax
 mov rax, qword ptr [rbp + 9528]
 mov qword ptr [rbp + 3880], rax
 jmp xchain00260_n00098_α
# IR_FIELD_GET
 xchain00260_n00096_α:
 mov rdi, qword ptr [rip + .Lx00456_0]
 mov rsi, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00260_n00027_α
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain00260_n00100_α
.Lx00456_0:
 .quad .Lx00456_0_s
.Lx00456_0_s:
 .string "lastline"
# IR_VAR
 xchain00260_n00098_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 jmp xchain00260_n00457_α
 xchain00260_n00100_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 848]
 mov rcx, qword ptr [rbp + 856]
 call str_concat_d@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00260_n00458_α
 xchain00260_n00457_α:
 lea rsi, [rbp + 3840]
 lea rdx, [rbp + 3872]
 lea rcx, [rbp + 3904]
 call proc_addword_dcα
 jmp .Lx00459_2
.Lx00459_2:
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 cmp eax, 99
 je xchain00260_n00398_α
 jmp xchain00260_n00460_α
 xchain00260_n00457_β:
 jmp xchain00260_n00398_α
.Lx00459_0:
 .quad .Lx00459_0_s
.Lx00459_0_s:
 .string "addword"
 xchain00260_n00458_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+384]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 392], rax
  .section .rodata
  .Lrkfn1290: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1290]
 lea rsi, [rbp + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain00260_n00027_α
 jmp xchain00260_n00027_α
 xchain00260_n00458_β:
 jmp xchain00260_n00027_α
 xchain00260_n00460_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 3760]
 mov qword ptr [rbp + 3744], rax
 mov rax, qword ptr [rbp + 3768]
 mov qword ptr [rbp + 3752], rax
 jmp xchain00260_n00398_α
xchain00260_n00460_β:
 jmp xchain00260_n00398_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 9448]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 9448]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
