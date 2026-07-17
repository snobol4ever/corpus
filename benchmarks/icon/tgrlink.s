  .intel_syntax noprefix
  .text
  .globl proc_loadfile_α
proc_loadfile_α:
#=======================================================================================================================
    .global proc_loadfile_α
    .global proc_loadfile_β
    .global proc_loadfile_γ
    .global proc_loadfile_ω
  sub rsp, 2480
  mov [rsp + 2456], rcx
  mov [rsp + 2464], rdx
  mov [rsp + 2472], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 2448
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 2344], rsp
  mov rdi, rsp
  mov esi, 2448
  call rt_jmp_frame_lexprep@PLT
proc_loadfile_α_body:
 xchain0_n0_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2]
 lea rsi, [rbp + 2320]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n3_α
# IR_ASSIGN gva
 xchain0_n1_α:
 mov rax, qword ptr [rbp + 2304]
 mov rdx, qword ptr [rbp + 2312]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain0_n3_α
 xchain0_n1_β:
 jmp xchain0_n3_α
 xchain0_n2_α:
 jmp xchain0_n3_α
xchain0_n2_β:
 jmp xchain0_n3_α
# IR_VAR
 xchain0_n3_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
 xchain0_n4_α:
# BOX IR_CALL where(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2256] -> [zr+2224]
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2232], rax
  .section .rodata
  .Lrkfn7: .string "where"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn7]
 lea rsi, [rbp + 2224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
# KEYWORD_read
 xchain0_n5_α:
 mov rdi, qword ptr [rip + .Lx8_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp xchain0_n11_α
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "&progname"
# IR_MOVE_LABEL
 xchain0_n6_α:
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2056], rax
 lea rax, [rip + xchain0_n5_α]
 mov qword ptr [rbp + 2064], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n11_α
# IR_LIT_STRING
 xchain0_n7_α:
 mov qword ptr [rbp + 2176], 1
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [rbp + 2184], rax
 jmp xchain0_n10_α
 xchain0_n7_β:
 jmp xchain0_n11_α
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string ": input file is not seekable"
 xchain0_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2048]
 mov rdx, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 jmp xchain0_n11_α
 xchain0_n8_β:
 jmp xchain0_n11_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n9_α:
 jmp qword ptr [rbp + 2064]
 xchain0_n9_β:
 jmp xchain0_n11_α
 xchain0_n10_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2144] -> [zr+2096]
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2104], rax
# marshal arg1 = producer-box slot [zr+2176] -> [zr+2112]
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2120], rax
  .section .rodata
  .Lrkfn16: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn16]
 lea rsi, [rbp + 2096]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 cmp eax, 99
 je xchain0_n11_α
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n11_α
# IR_VAR
 xchain0_n11_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n16_α
# IR_MOVE_LABEL
 xchain0_n12_α:
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2056], rax
 lea rax, [rip + xchain0_n11_α]
 mov qword ptr [rbp + 2064], rax
 jmp xchain0_n8_α
 xchain0_n12_β:
 jmp xchain0_n11_α
 xchain0_n13_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2000] -> [zr+1968]
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 1968], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 1976], rax
  .section .rodata
  .Lrkfn21: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn21]
 lea rsi, [rbp + 1968]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n16_α
 xchain0_n14_α:
 jmp xchain0_n16_α
xchain0_n14_β:
 jmp xchain0_n16_α
# IR_MOVE_LABEL
 xchain0_n15_α:
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1928], rax
 lea rax, [rip + xchain0_n14_α]
 mov qword ptr [rbp + 1936], rax
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n19_α
# IR_RETURN
 xchain0_n16_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_loadfile_γ
 xchain0_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1920]
 mov rdx, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n19_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n18_α:
 jmp qword ptr [rbp + 1936]
 xchain0_n18_β:
 jmp xchain0_n19_α
# IR_VAR
 xchain0_n19_α:
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 1880], rax
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp xchain0_n21_α
 xchain0_n20_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1872]
 mov rdx, qword ptr [rbp + 1880]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx32_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx32_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx32_3]
 lea rdx, [rip + .Lx32_4]
 jmp rax
.Lx32_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx32_2
.Lx32_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx32_2
.Lx32_1:
 call rt_faildescr@PLT
.Lx32_2:
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 cmp eax, 99
 je xchain0_n21_α
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n21_α
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "crack"
# IR_VAR_REF
 xchain0_n21_α:
 mov rdi, 1879052352
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n25_α
 xchain0_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1824]
 mov rdx, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain0_n21_α
 xchain0_n22_β:
 jmp xchain0_n21_α
# IR_VAR
 xchain0_n23_α:
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 1736], rax
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n25_α
# IR_FIELD_GET
 xchain0_n24_α:
 mov rdi, qword ptr [rip + .Lx38_0]
 mov rsi, qword ptr [rbp + 1728]
 mov rdx, qword ptr [rbp + 1736]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n25_α
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n25_α
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "code"
# IR_VAR_REF
 xchain0_n25_α:
 lea rdi, [rbp + 2416]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp xchain0_n30_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n26_α:
 mov rdi, qword ptr [rbp + 1664]
 mov rsi, qword ptr [rbp + 1672]
 mov rdx, qword ptr [rbp + 1696]
 mov rcx, qword ptr [rbp + 1704]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n25_α
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp xchain0_n25_α
# IR_VAR
 xchain0_n27_α:
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 1144], rax
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp xchain0_n30_α
# IR_DEREF variable -> value
 xchain0_n28_α:
 mov rdi, qword ptr [rbp + 1760]
 mov rsi, qword ptr [rbp + 1768]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n25_α
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain0_n31_α
 xchain0_n28_β:
 jmp xchain0_n25_α
# IR_FIELD_GET
 xchain0_n29_α:
 mov rdi, qword ptr [rip + .Lx45_0]
 mov rsi, qword ptr [rbp + 1136]
 mov rdx, qword ptr [rbp + 1144]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n30_α
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain0_n32_α
 xchain0_n29_β:
 jmp xchain0_n30_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "aindex"
# IR_VAR_REF
 xchain0_n30_α:
 lea rdi, [rbp + 2384]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain0_n33_α
 xchain0_n30_β:
 jmp xchain0_n37_α
 xchain0_n31_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1792]
 mov rdx, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain0_n34_α
 xchain0_n31_β:
 jmp xchain0_n25_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n32_α:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, qword ptr [rbp + 1104]
 mov rcx, qword ptr [rbp + 1112]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n30_α
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain0_n35_α
 xchain0_n32_β:
 jmp xchain0_n30_α
# IR_VAR
 xchain0_n33_α:
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 920], rax
 jmp xchain0_n36_α
 xchain0_n33_β:
 jmp xchain0_n37_α
# IR_UNOP
 xchain0_n34_α:
 mov eax, dword ptr [rbp + 1648]
 cmp eax, 99
 je xchain0_n25_α
 cmp eax, 0
 jne xchain0_n25_α
 mov qword ptr [rbp + 1616], 0
 mov qword ptr [rbp + 1624], 0
 jmp xchain0_n38_α
 xchain0_n34_β:
 jmp xchain0_n25_α
# IR_DEREF variable -> value
 xchain0_n35_α:
 mov rdi, qword ptr [rbp + 1168]
 mov rsi, qword ptr [rbp + 1176]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n30_α
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain0_n39_α
 xchain0_n35_β:
 jmp xchain0_n30_α
# IR_FIELD_GET
 xchain0_n36_α:
 mov rdi, qword ptr [rip + .Lx54_0]
 mov rsi, qword ptr [rbp + 912]
 mov rdx, qword ptr [rbp + 920]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n37_α
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain0_n40_α
 xchain0_n36_β:
 jmp xchain0_n37_α
.Lx54_0:
 .quad .Lx54_0_s
.Lx54_0_s:
 .string "key"
# IR_VAR_REF
 xchain0_n37_α:
 lea rdi, [rbp + 2384]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain0_n41_α
 xchain0_n37_β:
 jmp xchain0_n45_α
# IR_VAR_REF
 xchain0_n38_α:
 mov rdi, 1879052352
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain0_n42_α
 xchain0_n38_β:
 jmp xchain0_n47_α
 xchain0_n39_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1200]
 mov rdx, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain0_n30_α
 xchain0_n39_β:
 jmp xchain0_n30_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n40_α:
 mov rdi, qword ptr [rbp + 848]
 mov rsi, qword ptr [rbp + 856]
 mov rdx, qword ptr [rbp + 880]
 mov rcx, qword ptr [rbp + 888]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n37_α
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain0_n43_α
 xchain0_n40_β:
 jmp xchain0_n37_α
# IR_VAR
 xchain0_n41_α:
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 744], rax
 jmp xchain0_n44_α
 xchain0_n41_β:
 jmp xchain0_n45_α
# IR_VAR
 xchain0_n42_α:
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 1464], rax
 jmp xchain0_n46_α
 xchain0_n42_β:
 jmp xchain0_n47_α
# IR_NULLTEST_VAR
 xchain0_n43_α:
 mov eax, dword ptr [rbp + 944]
 cmp eax, 99
 je xchain0_n37_α
 mov rdi, qword ptr [rbp + 944]
 mov rsi, qword ptr [rbp + 952]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n37_α
 cmp eax, 0
 jne xchain0_n37_α
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 984], rax
 jmp xchain0_n48_α
 xchain0_n43_β:
 jmp xchain0_n37_α
# IR_FIELD_GET
 xchain0_n44_α:
 mov rdi, qword ptr [rip + .Lx66_0]
 mov rsi, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n45_α
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain0_n49_α
 xchain0_n44_β:
 jmp xchain0_n45_α
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "key"
# IR_VAR
 xchain0_n45_α:
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 152], rax
 jmp xchain0_n50_α
 xchain0_n45_β:
 jmp xchain0_n3_α
# IR_FIELD_GET
 xchain0_n46_α:
 mov rdi, qword ptr [rip + .Lx69_0]
 mov rsi, qword ptr [rbp + 1456]
 mov rdx, qword ptr [rbp + 1464]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n47_α
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain0_n51_α
 xchain0_n46_β:
 jmp xchain0_n47_α
.Lx69_0:
 .quad .Lx69_0_s
.Lx69_0_s:
 .string "code"
# IR_VAR_REF
 xchain0_n47_α:
 lea rdi, [rbp + 2416]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain0_n52_α
 xchain0_n47_β:
 jmp xchain0_n25_α
# IR_VAR
 xchain0_n48_α:
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 1032], rax
 jmp xchain0_n53_α
 xchain0_n48_β:
 jmp xchain0_n37_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n49_α:
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n45_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain0_n54_α
 xchain0_n49_β:
 jmp xchain0_n45_α
# IR_VAR
 xchain0_n50_α:
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 184], rax
 jmp xchain0_n55_α
 xchain0_n50_β:
 jmp xchain0_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n51_α:
 mov rdi, qword ptr [rbp + 1392]
 mov rsi, qword ptr [rbp + 1400]
 mov rdx, qword ptr [rbp + 1424]
 mov rcx, qword ptr [rbp + 1432]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n47_α
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain0_n56_α
 xchain0_n51_β:
 jmp xchain0_n47_α
# IR_LIST_BANG
 xchain0_n52_α:
 mov qword ptr [rbp + 1280], 0
.Lx79_0:
 mov rdi, qword ptr [rbp + 1296]
 mov rsi, qword ptr [rbp + 1304]
 mov rdx, qword ptr [rbp + 1280]
 call rt_list_bang_var_at@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 cmp rax, 99
 je xchain0_n25_α
 jmp xchain0_n57_α
 xchain0_n52_β:
 inc qword ptr [rbp + 1280]
 jmp .Lx79_0
# IR_ASSIGN_VAR
 xchain0_n53_α:
 mov rdi, qword ptr [rbp + 976]
 mov rsi, qword ptr [rbp + 984]
 mov rdx, qword ptr [rbp + 1024]
 mov rcx, qword ptr [rbp + 1032]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n37_α
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain0_n58_α
 xchain0_n53_β:
 jmp xchain0_n37_α
# IR_DEREF variable -> value
 xchain0_n54_α:
 mov rdi, qword ptr [rbp + 768]
 mov rsi, qword ptr [rbp + 776]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n45_α
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain0_n59_α
 xchain0_n54_β:
 jmp xchain0_n45_α
 xchain0_n55_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn83: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn83]
 lea rsi, [rbp + 96]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n60_α
 xchain0_n55_β:
 jmp xchain0_n3_α
# IR_LIT_INTEGER
 xchain0_n56_α:
 mov qword ptr [rbp + 1584], 6
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [rbp + 1592], rax
 jmp xchain0_n61_α
 xchain0_n56_β:
 jmp xchain0_n47_α
.Lx84_0:
 .quad 5
 xchain0_n57_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn86: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn86]
 lea rsi, [rbp + 1360]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je xchain0_n52_β
 jmp xchain0_n62_α
 xchain0_n57_β:
 jmp xchain0_n52_β
# IR_MOVE_LABEL
 xchain0_n58_α:
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 40], rax
 lea rax, [rip + xchain0_n37_α]
 mov qword ptr [rbp + 48], rax
 jmp xchain0_n63_α
 xchain0_n58_β:
 jmp xchain0_n3_α
 xchain0_n59_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain0_n65_α
 xchain0_n59_β:
 jmp xchain0_n45_α
 xchain0_n60_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 72], rax
 jmp xchain0_n66_α
xchain0_n60_β:
 jmp xchain0_n3_α
 xchain0_n61_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1584] -> [zr+1552]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1560], rax
  .section .rodata
  .Lrkfn92: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn92]
 lea rsi, [rbp + 1552]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je xchain0_n47_α
 jmp xchain0_n67_α
 xchain0_n61_β:
 jmp xchain0_n47_α
# IR_ASSIGN_VAR
 xchain0_n62_α:
 mov rdi, qword ptr [rbp + 1264]
 mov rsi, qword ptr [rbp + 1272]
 mov rdx, qword ptr [rbp + 1344]
 mov rcx, qword ptr [rbp + 1352]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n25_α
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain0_n52_β
 xchain0_n62_β:
 jmp xchain0_n25_α
 xchain0_n63_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 16], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 24], rax
 jmp xchain0_n3_α
xchain0_n63_β:
 jmp xchain0_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n64_α:
 jmp qword ptr [rbp + 48]
 xchain0_n64_β:
 jmp xchain0_n3_α
 xchain0_n65_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+624]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 632], rax
  .section .rodata
  .Lrkfn98: .string "type"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn98]
 lea rsi, [rbp + 624]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain0_n45_α
 jmp xchain0_n68_α
 xchain0_n65_β:
 jmp xchain0_n45_α
# IR_MOVE_LABEL
 xchain0_n66_α:
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 40], rax
 lea rax, [rip + xchain0_n2_α]
 mov qword ptr [rbp + 48], rax
 jmp xchain0_n63_α
 xchain0_n66_β:
 jmp xchain0_n3_α
# IR_ASSIGN_VAR
 xchain0_n67_α:
 mov rdi, qword ptr [rbp + 1488]
 mov rsi, qword ptr [rbp + 1496]
 mov rdx, qword ptr [rbp + 1536]
 mov rcx, qword ptr [rbp + 1544]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n47_α
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain0_n69_α
 xchain0_n67_β:
 jmp xchain0_n47_α
# IR_LIT_STRING
 xchain0_n68_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx00001_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain0_n70_α
 xchain0_n68_β:
 jmp xchain0_n45_α
.Lx00001_0:
 .quad .Lx00001_0_s
.Lx00001_0_s:
 .string "list"
 xchain0_n69_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1520]
 mov rdx, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain0_n47_α
 xchain0_n69_β:
 jmp xchain0_n47_α
 xchain0_n70_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 608]
 mov rsi, qword ptr [rbp + 616]
 mov rdx, qword ptr [rbp + 816]
 mov rcx, qword ptr [rbp + 824]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n45_α
 mov rdi, qword ptr [rbp + 816]
 mov rsi, qword ptr [rbp + 824]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain0_n71_α
 xchain0_n70_β:
 jmp xchain0_n45_α
# IR_VAR_REF
 xchain0_n71_α:
 lea rdi, [rbp + 2384]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain0_n72_α
 xchain0_n71_β:
 jmp xchain0_n45_α
# IR_VAR
 xchain0_n72_α:
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 328], rax
 jmp xchain0_n73_α
 xchain0_n72_β:
 jmp xchain0_n45_α
# IR_FIELD_GET
 xchain0_n73_α:
 mov rdi, qword ptr [rip + .Lx00002_0]
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n45_α
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain0_n74_α
 xchain0_n73_β:
 jmp xchain0_n45_α
.Lx00002_0:
 .quad .Lx00002_0_s
.Lx00002_0_s:
 .string "key"
# IR_SUBSCRIPT x[i] variable
 xchain0_n74_α:
 mov rdi, qword ptr [rbp + 256]
 mov rsi, qword ptr [rbp + 264]
 mov rdx, qword ptr [rbp + 288]
 mov rcx, qword ptr [rbp + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n45_α
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain0_n75_α
 xchain0_n74_β:
 jmp xchain0_n45_α
# IR_VAR_REF
 xchain0_n75_α:
 lea rdi, [rbp + 2384]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain0_n76_α
 xchain0_n75_β:
 jmp xchain0_n45_α
# IR_VAR
 xchain0_n76_α:
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 504], rax
 jmp xchain0_n77_α
 xchain0_n76_β:
 jmp xchain0_n45_α
# IR_FIELD_GET
 xchain0_n77_α:
 mov rdi, qword ptr [rip + .Lx00003_0]
 mov rsi, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n45_α
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain0_n78_α
 xchain0_n77_β:
 jmp xchain0_n45_α
.Lx00003_0:
 .quad .Lx00003_0_s
.Lx00003_0_s:
 .string "key"
# IR_SUBSCRIPT x[i] variable
 xchain0_n78_α:
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 mov rdx, qword ptr [rbp + 464]
 mov rcx, qword ptr [rbp + 472]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n45_α
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain0_n79_α
 xchain0_n78_β:
 jmp xchain0_n45_α
# IR_DEREF variable -> value
 xchain0_n79_α:
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n45_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain0_n80_α
 xchain0_n79_β:
 jmp xchain0_n45_α
# IR_MAKE_LIST
 xchain0_n80_α:
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 424], rax
 lea rdi, [rbp + 416]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain0_n81_α
 xchain0_n80_β:
 jmp xchain0_n45_α
# IR_ASSIGN_VAR
 xchain0_n81_α:
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 mov rdx, qword ptr [rbp + 400]
 mov rcx, qword ptr [rbp + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n45_α
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain0_n82_α
 xchain0_n81_β:
 jmp xchain0_n45_α
 xchain0_n82_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain0_n83_α
 xchain0_n82_β:
 jmp xchain0_n45_α
# IR_MOVE_LABEL
 xchain0_n83_α:
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 216], rax
 lea rax, [rip + xchain0_n45_α]
 mov qword ptr [rbp + 224], rax
 jmp xchain0_n45_α
 xchain0_n83_β:
 jmp xchain0_n45_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n84_α:
 jmp qword ptr [rbp + 224]
 xchain0_n84_β:
 jmp xchain0_n45_α
proc_loadfile_res:
add rsp, 8
pop rbp
proc_loadfile_β:
jmp proc_loadfile_ω
proc_loadfile_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 2456]
lea rsp, [rbp + 2480]
mov rbp, [rbp + 2472]
jmp rax
proc_loadfile_ω:
mov rax, [rbp + 2464]
lea rsp, [rbp + 2480]
mov rbp, [rbp + 2472]
jmp rax
  .globl proc_kgen_α
proc_kgen_α:
#=======================================================================================================================
    .global proc_kgen_α
    .global proc_kgen_β
    .global proc_kgen_γ
    .global proc_kgen_ω
  sub rsp, 65544
  mov rdi, rsp
  mov ecx, 65544
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 920], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
  cmp esi, 0
  jne proc_kgen_β
proc_kgen_α_body:
lea rax, [rip + xchain00004_n22_β]
mov qword ptr [rbp + 896], rax
 xchain00004_n0_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn128: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn128]
 lea rsi, [rbp + 880]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain00004_n2_α
 jmp xchain00004_n1_α
 xchain00004_n0_β:
 jmp xchain00004_n2_α
 xchain00004_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 864]
 mov rdx, qword ptr [rbp + 872]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain00004_n2_α
 xchain00004_n1_β:
 jmp xchain00004_n2_α
# IR_VAR
 xchain00004_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00004_n3_α
 xchain00004_n2_β:
 jmp xchain00004_n4_α
# IR_ITERATE(key)
 xchain00004_n3_α:
 mov qword ptr [rbp + 384], 0
.Lx00005_0:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 384]
 call rt_list_bang_key_at@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp rax, 99
 je xchain00004_n4_α
 jmp xchain00004_n5_α
 xchain00004_n3_β:
 inc qword ptr [rbp + 384]
 jmp .Lx00005_0
# IR_VAR
 xchain00004_n4_α:
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 328], rax
 jmp xchain00004_n6_α
 xchain00004_n4_β:
 jmp xchain00004_n7_α
 xchain00004_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00004_n8_α
 xchain00004_n5_β:
 jmp xchain00004_n4_α
 xchain00004_n6_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn138: .string "sort"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn138]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00004_n7_α
 jmp xchain00004_n9_α
 xchain00004_n6_β:
 jmp xchain00004_n7_α
# IR_VAR
 xchain00004_n7_α:
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 104], rax
 jmp xchain00004_n10_α
 xchain00004_n7_β:
 jmp proc_kgen_ω
# IR_VAR
 xchain00004_n8_α:
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 504], rax
 jmp xchain00004_n11_α
 xchain00004_n8_β:
 jmp xchain00004_n3_β
 xchain00004_n9_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00004_n7_α
 xchain00004_n9_β:
 jmp xchain00004_n7_α
 xchain00004_n10_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+64]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 72], rax
  .section .rodata
  .Lrkfn145: .string "pull"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn145]
 lea rsi, [rbp + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_kgen_ω
 jmp xchain00004_n12_α
 xchain00004_n10_β:
 jmp proc_kgen_ω
# IR_VAR_REF
 xchain00004_n11_α:
 lea rdi, [rbp + 928]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00004_n13_α
 xchain00004_n11_β:
 jmp xchain00004_n3_β
 xchain00004_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00004_n14_α
 xchain00004_n12_β:
 jmp proc_kgen_ω
# IR_LIT_INTEGER
 xchain00004_n13_α:
 mov qword ptr [rbp + 672], 6
 mov rax, qword ptr [rip + .Lx00006_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain00004_n15_α
 xchain00004_n13_β:
 jmp xchain00004_n3_β
.Lx00006_0:
 .quad 1
# IR_VAR
 xchain00004_n14_α:
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 168], rax
 jmp xchain00004_n16_α
 xchain00004_n14_β:
 jmp xchain00004_n7_α
# IR_SUBSCRIPT x[i] variable
 xchain00004_n15_α:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 672]
 mov rcx, qword ptr [rbp + 680]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00004_n3_β
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00004_n17_α
 xchain00004_n15_β:
 jmp xchain00004_n3_β
# IR_LIT_INTEGER
 xchain00004_n16_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00007_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00004_n18_α
 xchain00004_n16_β:
 jmp xchain00004_n7_α
.Lx00007_0:
 .quad 2
# IR_DEREF variable -> value
 xchain00004_n17_α:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00004_n3_β
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00004_n19_α
 xchain00004_n17_β:
 jmp xchain00004_n3_β
# IR_LIT_INTEGER
 xchain00004_n18_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00008_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00004_n20_α
 xchain00004_n18_β:
 jmp xchain00004_n7_α
.Lx00008_0:
 .quad 0
# IR_LIT_STRING
 xchain00004_n19_α:
 mov qword ptr [rbp + 752], 1
 mov rax, qword ptr [rip + .Lx00009_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00004_n21_α
 xchain00004_n19_β:
 jmp xchain00004_n3_β
.Lx00009_0:
 .quad .Lx00009_0_s
.Lx00009_0_s:
 .string "FHEABCDX"
# IR_SUBSCRIPT section
 xchain00004_n20_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8, qword ptr [rbp + 224]
 mov r9, qword ptr [rbp + 232]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00004_n7_α
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00004_n22_α
 xchain00004_n20_β:
 jmp xchain00004_n7_α
# IR_LIT_STRING
 xchain00004_n21_α:
 mov qword ptr [rbp + 784], 1
 mov rax, qword ptr [rip + .Lx00010_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain00004_n23_α
 xchain00004_n21_β:
 jmp xchain00004_n3_β
.Lx00010_0:
 .quad .Lx00010_0_s
.Lx00010_0_s:
 .string "ZYXWVUTS"
# IR_SUSPEND yield+resume
 xchain00004_n22_α:
 lea rax, [rip + xchain00004_n22_β]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 8], rax
 jmp proc_kgen_γ
 xchain00004_n22_β:
 jmp xchain00004_n7_α
 xchain00004_n23_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+576]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 584], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+592]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 600], rax
# marshal arg2 = producer-box slot [zr+784] -> [zr+608]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn162: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn162]
 lea rsi, [rbp + 576]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain00004_n3_β
 jmp xchain00004_n24_α
 xchain00004_n23_β:
 jmp xchain00004_n3_β
# IR_VAR
 xchain00004_n24_α:
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 824], rax
 jmp xchain00004_n25_α
 xchain00004_n24_β:
 jmp xchain00004_n3_β
 xchain00004_n25_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 mov rdx, qword ptr [rbp + 928]
 mov rcx, qword ptr [rbp + 936]
 call str_concat_d@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00004_n26_α
 xchain00004_n25_β:
 jmp xchain00004_n3_β
 xchain00004_n26_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+448]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 456], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+464]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 472], rax
  .section .rodata
  .Lrkfn167: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn167]
 lea rsi, [rbp + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00004_n3_β
 jmp xchain00004_n3_β
 xchain00004_n26_β:
 jmp xchain00004_n3_β
proc_kgen_β:
jmp qword ptr [rbp + 896]
proc_kgen_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 920]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
proc_kgen_ω:
mov rsp, qword ptr [rbp + 920]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
  .globl proc_dumpcode_α
proc_dumpcode_α:
#=======================================================================================================================
    .global proc_dumpcode_α
    .global proc_dumpcode_β
    .global proc_dumpcode_γ
    .global proc_dumpcode_ω
  sub rsp, 1280
  mov [rsp + 1256], rcx
  mov [rsp + 1264], rdx
  mov [rsp + 1272], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1248
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1176], rsp
  mov rdi, rsp
  mov esi, 1248
  call rt_jmp_frame_lexprep@PLT
proc_dumpcode_α_body:
# IR_VAR_REF
 xchain00011_n0_α:
 mov rdi, 1879052352
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain00011_n1_α
 xchain00011_n0_β:
 jmp xchain00011_n3_α
# IR_VAR
 xchain00011_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1096], rax
 jmp xchain00011_n2_α
 xchain00011_n1_β:
 jmp xchain00011_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00011_n2_α:
 mov rdi, qword ptr [rbp + 1056]
 mov rsi, qword ptr [rbp + 1064]
 mov rdx, qword ptr [rbp + 1088]
 mov rcx, qword ptr [rbp + 1096]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00011_n3_α
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain00011_n4_α
 xchain00011_n2_β:
 jmp xchain00011_n3_α
 xchain00011_n3_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn175: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn175]
 lea rsi, [rbp + 1024]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je xchain00011_n6_α
 jmp xchain00011_n5_α
 xchain00011_n3_β:
 jmp xchain00011_n6_α
# IR_DEREF variable -> value
 xchain00011_n4_α:
 mov rdi, qword ptr [rbp + 1120]
 mov rsi, qword ptr [rbp + 1128]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00011_n3_α
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain00011_n7_α
 xchain00011_n4_β:
 jmp xchain00011_n3_α
# IR_ASSIGN gva
 xchain00011_n5_α:
 mov rax, qword ptr [rbp + 1008]
 mov rdx, qword ptr [rbp + 1016]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00011_n6_α
 xchain00011_n5_β:
 jmp xchain00011_n6_α
# IR_VAR_REF
 xchain00011_n6_α:
 lea rdi, [rbp + 1200]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain00011_n8_β
 xchain00011_n6_β:
 jmp xchain00011_n10_α
 xchain00011_n7_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1152]
 mov rdx, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00011_n3_α
 xchain00011_n7_β:
 jmp xchain00011_n3_α
 xchain00011_n8_α:
  .section .rodata
  .Lcall00012_pname: .string "aseq"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00012_pname]
 mov esi, 0
 lea rdx, [rbp + 160]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain00011_n10_α
 jmp xchain00011_n9_α
xchain00011_n8_β:
 lea rdi, [rbp + 160]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain00011_n10_α
 jmp xchain00011_n9_α
# IR_SUBSCRIPT x[i] variable
 xchain00011_n9_α:
 mov rdi, qword ptr [rbp + 112]
 mov rsi, qword ptr [rbp + 120]
 mov rdx, qword ptr [rbp + 144]
 mov rcx, qword ptr [rbp + 152]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00011_n8_β
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00011_n11_α
 xchain00011_n9_β:
 jmp xchain00011_n8_β
# IR_RETURN
 xchain00011_n10_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_dumpcode_γ
# IR_DEREF variable -> value
 xchain00011_n11_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00011_n8_β
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00011_n12_α
 xchain00011_n11_β:
 jmp xchain00011_n8_β
# IR_LIT_INTEGER
 xchain00011_n12_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00013_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00011_n13_α
 xchain00011_n12_β:
 jmp xchain00011_n8_β
.Lx00013_0:
 .quad 3
 xchain00011_n13_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+64]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 72], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+80]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 88], rax
  .section .rodata
  .Lrkfn187: .string "sort"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn187]
 lea rsi, [rbp + 64]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je xchain00011_n10_α
 jmp xchain00011_n14_α
 xchain00011_n13_β:
 jmp xchain00011_n10_α
 xchain00011_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00011_n15_α
 xchain00011_n14_β:
 jmp xchain00011_n10_α
# IR_VAR
 xchain00011_n15_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 296], rax
 jmp xchain00011_n16_α
 xchain00011_n15_β:
 jmp xchain00011_n8_β
 xchain00011_n16_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn192: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn192]
 lea rsi, [rbp + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain00011_n8_β
 jmp xchain00011_n17_α
 xchain00011_n16_β:
 jmp xchain00011_n8_β
 xchain00011_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00011_n18_α
 xchain00011_n17_β:
 jmp xchain00011_n8_β
# IR_VAR
 xchain00011_n18_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 968], rax
 jmp xchain00011_n19_α
 xchain00011_n18_β:
 jmp xchain00011_n20_α
 xchain00011_n19_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+928]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 936], rax
  .section .rodata
  .Lrkfn197: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn197]
 lea rsi, [rbp + 928]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain00011_n20_α
 jmp xchain00011_n21_α
 xchain00011_n19_β:
 jmp xchain00011_n20_α
# IR_VAR
 xchain00011_n20_α:
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 840], rax
 jmp xchain00011_n22_α
 xchain00011_n20_β:
 jmp xchain00011_n23_α
 xchain00011_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 912]
 mov rdx, qword ptr [rbp + 920]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain00011_n20_α
 xchain00011_n21_β:
 jmp xchain00011_n20_α
 xchain00011_n22_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 808], rax
  .section .rodata
  .Lrkfn202: .string "type"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn202]
 lea rsi, [rbp + 800]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain00011_n23_α
 jmp xchain00011_n24_α
 xchain00011_n22_β:
 jmp xchain00011_n23_α
# IR_VAR
 xchain00011_n23_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 664], rax
 jmp xchain00011_n25_α
 xchain00011_n23_β:
 jmp xchain00011_n15_α
# IR_LIT_STRING
 xchain00011_n24_α:
 mov qword ptr [rbp + 864], 1
 mov rax, qword ptr [rip + .Lx00014_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain00011_n26_α
 xchain00011_n24_β:
 jmp xchain00011_n23_α
.Lx00014_0:
 .quad .Lx00014_0_s
.Lx00014_0_s:
 .string "list"
# IR_VAR
 xchain00011_n25_α:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 696], rax
 jmp xchain00011_n27_α
 xchain00011_n25_β:
 jmp xchain00011_n15_α
 xchain00011_n26_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 784]
 mov rsi, qword ptr [rbp + 792]
 mov rdx, qword ptr [rbp + 864]
 mov rcx, qword ptr [rbp + 872]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00011_n23_α
 mov rdi, qword ptr [rbp + 864]
 mov rsi, qword ptr [rbp + 872]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00011_n28_α
 xchain00011_n26_β:
 jmp xchain00011_n23_α
# IR_VAR
 xchain00011_n27_α:
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 728], rax
 jmp xchain00011_n29_α
 xchain00011_n27_β:
 jmp xchain00011_n15_α
# IR_VAR
 xchain00011_n28_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00011_n30_α
 xchain00011_n28_β:
 jmp xchain00011_n15_α
 xchain00011_n29_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 688]
 mov rdx, qword ptr [rbp + 696]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 720]
 mov rdx, qword ptr [rbp + 728]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00015_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00015_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00015_3]
 lea rdx, [rip + .Lx00015_4]
 jmp rax
.Lx00015_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00015_2
.Lx00015_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00015_2
.Lx00015_1:
 call rt_faildescr@PLT
.Lx00015_2:
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain00011_n15_α
 jmp xchain00011_n31_α
 xchain00011_n29_β:
 jmp xchain00011_n15_α
.Lx00015_0:
 .quad .Lx00015_0_s
.Lx00015_0_s:
 .string "putchain"
# IR_VAR
 xchain00011_n30_α:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 488], rax
 jmp xchain00011_n32_α
 xchain00011_n30_β:
 jmp xchain00011_n15_α
# IR_MOVE_LABEL
 xchain00011_n31_α:
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 344], rax
 lea rax, [rip + xchain00011_n15_α]
 mov qword ptr [rbp + 352], rax
 jmp xchain00011_n33_α
 xchain00011_n31_β:
 jmp xchain00011_n15_α
# IR_VAR
 xchain00011_n32_α:
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 552], rax
 jmp xchain00011_n35_α
 xchain00011_n32_β:
 jmp xchain00011_n15_α
 xchain00011_n33_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 328], rax
 jmp xchain00011_n15_α
xchain00011_n33_β:
 jmp xchain00011_n15_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00011_n34_α:
 jmp qword ptr [rbp + 352]
 xchain00011_n34_β:
 jmp xchain00011_n15_α
# IR_LIST_BANG
 xchain00011_n35_α:
 mov qword ptr [rbp + 528], 0
.Lx00016_0:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 528]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp rax, 99
 je xchain00011_n15_α
 jmp xchain00011_n36_α
 xchain00011_n35_β:
 inc qword ptr [rbp + 528]
 jmp .Lx00016_0
 xchain00011_n36_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00017_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00017_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00017_3]
 lea rdx, [rip + .Lx00017_4]
 jmp rax
.Lx00017_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00017_2
.Lx00017_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00017_2
.Lx00017_1:
 call rt_faildescr@PLT
.Lx00017_2:
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain00011_n15_α
 jmp xchain00011_n35_β
 xchain00011_n36_β:
 jmp xchain00011_n15_α
.Lx00017_0:
 .quad .Lx00017_0_s
.Lx00017_0_s:
 .string "putchain"
proc_dumpcode_res:
add rsp, 8
pop rbp
proc_dumpcode_β:
jmp proc_dumpcode_ω
proc_dumpcode_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1256]
lea rsp, [rbp + 1280]
mov rbp, [rbp + 1272]
jmp rax
proc_dumpcode_ω:
mov rax, [rbp + 1264]
lea rsp, [rbp + 1280]
mov rbp, [rbp + 1272]
jmp rax
  .globl proc_aseq_α
proc_aseq_α:
#=======================================================================================================================
    .global proc_aseq_α
    .global proc_aseq_β
    .global proc_aseq_γ
    .global proc_aseq_ω
  sub rsp, 65544
  mov rdi, rsp
  mov ecx, 65544
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1160], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
  cmp esi, 0
  jne proc_aseq_β
proc_aseq_α_body:
lea rax, [rip + xchain00018_n12_β]
mov qword ptr [rbp + 1136], rax
# IR_LIT_INTEGER
 xchain00018_n0_α:
 mov qword ptr [rbp + 1024], 6
 mov rax, qword ptr [rip + .Lx00019_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00018_n1_α
 xchain00018_n0_β:
 jmp xchain00018_n4_α
.Lx00019_0:
 .quad 1
# IR_LIT_REAL
 xchain00018_n1_α:
 mov qword ptr [rbp + 1104], 7
 mov rax, qword ptr [rip + .Lx00020_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00018_n2_α
 xchain00018_n1_β:
 jmp xchain00018_n4_α
.Lx00020_0:
 .quad 4608308318706860032
 xchain00018_n2_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1072]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1080], rax
  .section .rodata
  .Lrkfn232: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn232]
 lea rsi, [rbp + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain00018_n4_α
 jmp xchain00018_n3_α
 xchain00018_n2_β:
 jmp xchain00018_n4_α
# IR_COERCE_NUMERIC
 xchain00018_n3_α:
 mov eax, dword ptr [rbp + 1056]
 cmp eax, 7
 je .Lx00021_1
 cmp eax, 6
 jne .Lx00021_0
 mov eax, dword ptr [rbp + 1024]
 cmp eax, 6
 jne .Lx00021_0
.Lx00021_1:
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1000], rax
 jmp .Lx00021_2
.Lx00021_0:
 lea rdi, [rbp + 1056]
 lea rsi, [rbp + 1024]
 lea rdx, [rbp + 992]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00021_2:
 jmp xchain00018_n5_α
 xchain00018_n3_β:
 jmp xchain00018_n4_α
# IR_LIT_INTEGER
 xchain00018_n4_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx00022_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain00018_n6_α
 xchain00018_n4_β:
 jmp xchain00018_n10_α
.Lx00022_0:
 .quad 1
 xchain00018_n5_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 992]
 cmp eax, 100
 je .Lx00023_0
 mov eax, dword ptr [rbp + 992]
 cmp eax, 6
 jne .Lx00023_2
.Lx00023_1:
 mov rax, 1
 mov rcx, qword ptr [rbp + 1000]
 add rax, rcx
 mov qword ptr [rbp + 960], 6
 mov qword ptr [rbp + 968], rax
 jmp xchain00018_n7_α
.Lx00023_0:
 mov rdi, qword ptr [rbp + 1024]
 mov rsi, qword ptr [rbp + 1032]
 mov rdx, qword ptr [rbp + 992]
 mov rcx, qword ptr [rbp + 1000]
 mov r8d, 0
 lea r9, [rbp + 960]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00023_3
.Lx00023_2:
 mov rdi, qword ptr [rbp + 1024]
 mov rsi, qword ptr [rbp + 1032]
 mov rdx, qword ptr [rbp + 992]
 mov rcx, qword ptr [rbp + 1000]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00018_n4_α
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
.Lx00023_3:
 jmp xchain00018_n7_α
 xchain00018_n5_β:
 jmp xchain00018_n4_α
# IR_LIT_REAL
 xchain00018_n6_α:
 mov qword ptr [rbp + 912], 7
 mov rax, qword ptr [rip + .Lx00024_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00018_n8_α
 xchain00018_n6_β:
 jmp xchain00018_n10_α
.Lx00024_0:
 .quad 4615626668101337088
 xchain00018_n7_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 960]
 mov rdx, qword ptr [rbp + 968]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain00018_n4_α
 xchain00018_n7_β:
 jmp xchain00018_n4_α
 xchain00018_n8_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+880]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 888], rax
  .section .rodata
  .Lrkfn240: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn240]
 lea rsi, [rbp + 880]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain00018_n10_α
 jmp xchain00018_n9_α
 xchain00018_n8_β:
 jmp xchain00018_n10_α
# IR_COERCE_NUMERIC
 xchain00018_n9_α:
 mov eax, dword ptr [rbp + 864]
 cmp eax, 7
 je .Lx00025_1
 cmp eax, 6
 jne .Lx00025_0
 mov eax, dword ptr [rbp + 832]
 cmp eax, 6
 jne .Lx00025_0
.Lx00025_1:
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 808], rax
 jmp .Lx00025_2
.Lx00025_0:
 lea rdi, [rbp + 864]
 lea rsi, [rbp + 832]
 lea rdx, [rbp + 800]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00025_2:
 jmp xchain00018_n11_α
 xchain00018_n9_β:
 jmp xchain00018_n10_α
# IR_VAR
 xchain00018_n10_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 728], rax
 jmp xchain00018_n12_α
 xchain00018_n10_β:
 jmp xchain00018_n13_α
 xchain00018_n11_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 800]
 cmp eax, 100
 je .Lx00026_0
 mov eax, dword ptr [rbp + 800]
 cmp eax, 6
 jne .Lx00026_2
.Lx00026_1:
 mov rax, 1
 mov rcx, qword ptr [rbp + 808]
 add rax, rcx
 mov qword ptr [rbp + 768], 6
 mov qword ptr [rbp + 776], rax
 jmp xchain00018_n14_α
.Lx00026_0:
 mov rdi, qword ptr [rbp + 832]
 mov rsi, qword ptr [rbp + 840]
 mov rdx, qword ptr [rbp + 800]
 mov rcx, qword ptr [rbp + 808]
 mov r8d, 0
 lea r9, [rbp + 768]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00026_3
.Lx00026_2:
 mov rdi, qword ptr [rbp + 832]
 mov rsi, qword ptr [rbp + 840]
 mov rdx, qword ptr [rbp + 800]
 mov rcx, qword ptr [rbp + 808]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00018_n10_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
.Lx00026_3:
 jmp xchain00018_n14_α
 xchain00018_n11_β:
 jmp xchain00018_n10_α
# IR_SUSPEND yield+resume
 xchain00018_n12_α:
 lea rax, [rip + xchain00018_n12_β]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 8], rax
 jmp proc_aseq_γ
 xchain00018_n12_β:
 jmp xchain00018_n13_α
# IR_VAR
 xchain00018_n13_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 696], rax
 jmp xchain00018_n15_α
 xchain00018_n13_β:
 jmp xchain00018_n16_α
 xchain00018_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00018_n10_α
 xchain00018_n14_β:
 jmp xchain00018_n10_α
# IR_SUSPEND yield+resume
 xchain00018_n15_α:
 lea rax, [rip + xchain00018_n15_β]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 8], rax
 jmp proc_aseq_γ
 xchain00018_n15_β:
 jmp xchain00018_n16_α
# IR_VAR
 xchain00018_n16_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 504], rax
 jmp xchain00018_n17_α
 xchain00018_n16_β:
 jmp xchain00018_n18_α
# IR_LIT_INTEGER
 xchain00018_n17_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00027_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00018_n19_α
 xchain00018_n17_β:
 jmp xchain00018_n18_α
.Lx00027_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00018_n18_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00028_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00018_n20_α
 xchain00018_n18_β:
 jmp xchain00018_n23_α
.Lx00028_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00018_n19_α:
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 7
 je .Lx00029_1
 cmp eax, 6
 jne .Lx00029_0
 mov eax, dword ptr [rbp + 528]
 cmp eax, 6
 jne .Lx00029_0
.Lx00029_1:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 472], rax
 jmp .Lx00029_2
.Lx00029_0:
 lea rdi, [rbp + 1184]
 lea rsi, [rbp + 528]
 lea rdx, [rbp + 464]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00029_2:
 jmp xchain00018_n21_α
 xchain00018_n19_β:
 jmp xchain00018_n18_α
# IR_VAR
 xchain00018_n20_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 344], rax
 jmp xchain00018_n22_α
 xchain00018_n20_β:
 jmp xchain00018_n23_α
 xchain00018_n21_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 464]
 cmp eax, 100
 je .Lx00030_0
 mov eax, dword ptr [rbp + 464]
 cmp eax, 6
 jne .Lx00030_2
.Lx00030_1:
 mov rax, qword ptr [rbp + 472]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 432], 6
 mov qword ptr [rbp + 440], rax
 jmp xchain00018_n24_α
.Lx00030_0:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 mov r8d, 0
 lea r9, [rbp + 432]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00030_3
.Lx00030_2:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00018_n18_α
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
.Lx00030_3:
 jmp xchain00018_n24_α
 xchain00018_n21_β:
 jmp xchain00018_n18_α
# IR_LIT_INTEGER
 xchain00018_n22_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx00031_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00018_n25_α
 xchain00018_n22_β:
 jmp xchain00018_n23_α
.Lx00031_0:
 .quad 1
# IR_VAR
 xchain00018_n23_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 120], rax
 jmp xchain00018_n26_α
 xchain00018_n23_β:
 jmp proc_aseq_ω
# IR_VAR
 xchain00018_n24_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 632], rax
 jmp xchain00018_n27_α
 xchain00018_n24_β:
 jmp xchain00018_n18_α
# IR_COERCE_NUMERIC
 xchain00018_n25_α:
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 7
 je .Lx00032_1
 cmp eax, 6
 jne .Lx00032_0
 mov eax, dword ptr [rbp + 368]
 cmp eax, 6
 jne .Lx00032_0
.Lx00032_1:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 312], rax
 jmp .Lx00032_2
.Lx00032_0:
 lea rdi, [rbp + 1184]
 lea rsi, [rbp + 368]
 lea rdx, [rbp + 304]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00032_2:
 jmp xchain00018_n28_α
 xchain00018_n25_β:
 jmp xchain00018_n23_α
# IR_LIT_INTEGER
 xchain00018_n26_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00033_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00018_n29_α
 xchain00018_n26_β:
 jmp proc_aseq_ω
.Lx00033_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00018_n27_α:
 mov qword ptr [rbp + 656], 6
 mov rax, qword ptr [rip + .Lx00034_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain00018_n30_α
 xchain00018_n27_β:
 jmp xchain00018_n18_α
.Lx00034_0:
 .quad 1
 xchain00018_n28_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 304]
 cmp eax, 100
 je .Lx00035_0
 mov eax, dword ptr [rbp + 304]
 cmp eax, 6
 jne .Lx00035_2
.Lx00035_1:
 mov rax, qword ptr [rbp + 312]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 272], 6
 mov qword ptr [rbp + 280], rax
 jmp xchain00018_n31_α
.Lx00035_0:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 368]
 mov rcx, qword ptr [rbp + 376]
 mov r8d, 1
 lea r9, [rbp + 272]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00035_3
.Lx00035_2:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 368]
 mov rcx, qword ptr [rbp + 376]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00018_n23_α
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
.Lx00035_3:
 jmp xchain00018_n31_α
 xchain00018_n28_β:
 jmp xchain00018_n23_α
# IR_COERCE_NUMERIC
 xchain00018_n29_α:
 mov eax, dword ptr [rbp + 1168]
 cmp eax, 7
 je .Lx00036_1
 cmp eax, 6
 jne .Lx00036_0
 mov eax, dword ptr [rbp + 144]
 cmp eax, 6
 jne .Lx00036_0
.Lx00036_1:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 88], rax
 jmp .Lx00036_2
.Lx00036_0:
 lea rdi, [rbp + 1168]
 lea rsi, [rbp + 144]
 lea rdx, [rbp + 80]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00036_2:
 jmp xchain00018_n32_α
 xchain00018_n29_β:
 jmp proc_aseq_ω
# IR_COERCE_NUMERIC
 xchain00018_n30_α:
 mov eax, dword ptr [rbp + 1168]
 cmp eax, 7
 je .Lx00037_1
 cmp eax, 6
 jne .Lx00037_0
 mov eax, dword ptr [rbp + 656]
 cmp eax, 6
 jne .Lx00037_0
.Lx00037_1:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 600], rax
 jmp .Lx00037_2
.Lx00037_0:
 lea rdi, [rbp + 1168]
 lea rsi, [rbp + 656]
 lea rdx, [rbp + 592]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00037_2:
 jmp xchain00018_n33_α
 xchain00018_n30_β:
 jmp xchain00018_n18_α
# IR_TO
 xchain00018_n31_α:
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 224], rax
.Lx00038_0:
 mov rax, qword ptr [rbp + 224]
 mov rcx, qword ptr [rbp + 280]
 cmp rax, rcx
 jg xchain00018_n23_α
 mov qword ptr [rbp + 208], 6
 mov qword ptr [rbp + 216], rax
 jmp xchain00018_n34_α
 xchain00018_n31_β:
 inc qword ptr [rbp + 224]
 jmp .Lx00038_0
 xchain00018_n32_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 80]
 cmp eax, 100
 je .Lx00039_0
 mov eax, dword ptr [rbp + 80]
 cmp eax, 6
 jne .Lx00039_2
.Lx00039_1:
 mov rax, qword ptr [rbp + 88]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 48], 6
 mov qword ptr [rbp + 56], rax
 jmp xchain00018_n35_α
.Lx00039_0:
 mov rdi, qword ptr [rbp + 80]
 mov rsi, qword ptr [rbp + 88]
 mov rdx, qword ptr [rbp + 144]
 mov rcx, qword ptr [rbp + 152]
 mov r8d, 0
 lea r9, [rbp + 48]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00039_3
.Lx00039_2:
 mov rdi, qword ptr [rbp + 80]
 mov rsi, qword ptr [rbp + 88]
 mov rdx, qword ptr [rbp + 144]
 mov rcx, qword ptr [rbp + 152]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_aseq_ω
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
.Lx00039_3:
 jmp xchain00018_n35_α
 xchain00018_n32_β:
 jmp proc_aseq_ω
 xchain00018_n33_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 592]
 cmp eax, 100
 je .Lx00040_0
 mov eax, dword ptr [rbp + 592]
 cmp eax, 6
 jne .Lx00040_2
.Lx00040_1:
 mov rax, qword ptr [rbp + 600]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 560], 6
 mov qword ptr [rbp + 568], rax
 jmp xchain00018_n36_α
.Lx00040_0:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 656]
 mov rcx, qword ptr [rbp + 664]
 mov r8d, 1
 lea r9, [rbp + 560]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00040_3
.Lx00040_2:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 656]
 mov rcx, qword ptr [rbp + 664]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00018_n18_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
.Lx00040_3:
 jmp xchain00018_n36_α
 xchain00018_n33_β:
 jmp xchain00018_n18_α
# IR_SUSPEND yield+resume
 xchain00018_n34_α:
 lea rax, [rip + xchain00018_n34_β]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 8], rax
 jmp proc_aseq_γ
 xchain00018_n34_β:
 jmp xchain00018_n31_β
# IR_LIT_INTEGER
 xchain00018_n35_α:
 mov qword ptr [rbp + 176], 6
 mov rax, qword ptr [rip + .Lx00041_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00018_n37_α
 xchain00018_n35_β:
 jmp proc_aseq_ω
.Lx00041_0:
 .quad 5
# IR_TO
 xchain00018_n36_α:
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 416], rax
.Lx00042_0:
 mov rax, qword ptr [rbp + 416]
 mov rcx, qword ptr [rbp + 568]
 cmp rax, rcx
 jg xchain00018_n18_α
 mov qword ptr [rbp + 400], 6
 mov qword ptr [rbp + 408], rax
 jmp xchain00018_n38_α
 xchain00018_n36_β:
 inc qword ptr [rbp + 416]
 jmp .Lx00042_0
# IR_TO
 xchain00018_n37_α:
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 32], rax
.Lx00043_0:
 mov rax, qword ptr [rbp + 32]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg proc_aseq_ω
 mov qword ptr [rbp + 16], 6
 mov qword ptr [rbp + 24], rax
 jmp xchain00018_n39_α
 xchain00018_n37_β:
 inc qword ptr [rbp + 32]
 jmp .Lx00043_0
# IR_SUSPEND yield+resume
 xchain00018_n38_α:
 lea rax, [rip + xchain00018_n38_β]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 8], rax
 jmp proc_aseq_γ
 xchain00018_n38_β:
 jmp xchain00018_n36_β
# IR_SUSPEND yield+resume
 xchain00018_n39_α:
 lea rax, [rip + xchain00018_n39_β]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 8], rax
 jmp proc_aseq_γ
 xchain00018_n39_β:
 jmp xchain00018_n37_β
proc_aseq_β:
jmp qword ptr [rbp + 1136]
proc_aseq_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 1160]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
proc_aseq_ω:
mov rsp, qword ptr [rbp + 1160]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
  .globl proc_putchain_α
proc_putchain_α:
#=======================================================================================================================
    .global proc_putchain_α
    .global proc_putchain_β
    .global proc_putchain_γ
    .global proc_putchain_ω
  sub rsp, 5408
  mov [rsp + 5384], rcx
  mov [rsp + 5392], rdx
  mov [rsp + 5400], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 5376
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 5176], rsp
  mov rdi, rsp
  mov esi, 5376
  call rt_jmp_frame_lexprep@PLT
proc_putchain_α_body:
# IR_VAR
 xchain00044_n0_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 5104], rax
 mov qword ptr [rbp + 5112], rdx
 jmp xchain00044_n1_α
 xchain00044_n0_β:
 jmp xchain00044_n2_α
# IR_VAR
 xchain00044_n1_α:
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 5136], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 5144], rax
 jmp xchain00044_n3_α
 xchain00044_n1_β:
 jmp xchain00044_n2_α
# IR_VAR
 xchain00044_n2_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 4944], rax
 mov qword ptr [rbp + 4952], rdx
 jmp xchain00044_n4_α
 xchain00044_n2_β:
 jmp xchain00044_n5_α
 xchain00044_n3_α:
# BOX IR_CALL member(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5104] -> [zr+5056]
 mov rax, qword ptr [rbp + 5104]
 mov qword ptr [rbp + 5056], rax
 mov rax, qword ptr [rbp + 5112]
 mov qword ptr [rbp + 5064], rax
# marshal arg1 = producer-box slot [zr+5136] -> [zr+5072]
 mov rax, qword ptr [rbp + 5136]
 mov qword ptr [rbp + 5072], rax
 mov rax, qword ptr [rbp + 5144]
 mov qword ptr [rbp + 5080], rax
  .section .rodata
  .Lrkfn297: .string "member"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn297]
 lea rsi, [rbp + 5056]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5040], rax
 mov qword ptr [rbp + 5048], rdx
 cmp eax, 99
 je xchain00044_n2_α
 jmp xchain00044_n6_α
 xchain00044_n3_β:
 jmp xchain00044_n2_α
# IR_VAR
 xchain00044_n4_α:
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 4976], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 4984], rax
 jmp xchain00044_n7_α
 xchain00044_n4_β:
 jmp xchain00044_n5_α
# IR_VAR
 xchain00044_n5_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 4848], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 4856], rax
 jmp xchain00044_n8_α
 xchain00044_n5_β:
 jmp xchain00044_n9_α
# IR_RETURN
 xchain00044_n6_α:
 mov rax, qword ptr [rbp + 5040]
 mov rdx, qword ptr [rbp + 5048]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_putchain_γ
 xchain00044_n7_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4944] -> [zr+4896]
 mov rax, qword ptr [rbp + 4944]
 mov qword ptr [rbp + 4896], rax
 mov rax, qword ptr [rbp + 4952]
 mov qword ptr [rbp + 4904], rax
# marshal arg1 = producer-box slot [zr+4976] -> [zr+4912]
 mov rax, qword ptr [rbp + 4976]
 mov qword ptr [rbp + 4912], rax
 mov rax, qword ptr [rbp + 4984]
 mov qword ptr [rbp + 4920], rax
  .section .rodata
  .Lrkfn304: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn304]
 lea rsi, [rbp + 4896]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
 cmp eax, 99
 je xchain00044_n5_α
 jmp xchain00044_n5_α
 xchain00044_n7_β:
 jmp xchain00044_n5_α
# IR_GEN_SCAN
 xchain00044_n8_α:
 mov rdi, qword ptr [rbp + 4848]
 mov rsi, qword ptr [rbp + 4856]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00044_n10_α
 xchain00044_n8_β:
 jmp xchain00044_n9_α
# IR_MAKE_LIST
 xchain00044_n9_α:
 lea rdi, [rbp + 4368]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 4352], rax
 mov qword ptr [rbp + 4360], rdx
 jmp xchain00044_n11_α
 xchain00044_n9_β:
 jmp xchain00044_n13_α
# IR_LIT_INTEGER
 xchain00044_n10_α:
 mov qword ptr [rbp + 4816], 6
 mov rax, qword ptr [rip + .Lx00045_0]
 mov qword ptr [rbp + 4824], rax
 jmp xchain00044_n12_α
 xchain00044_n10_β:
 jmp xchain00044_n15_α
.Lx00045_0:
 .quad 8
# IR_ASSIGN gva
 xchain00044_n11_α:
 mov rax, qword ptr [rbp + 4352]
 mov rdx, qword ptr [rbp + 4360]
 mov qword ptr [1879052384], rax
 mov qword ptr [1879052392], rdx
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 jmp xchain00044_n13_α
 xchain00044_n11_β:
 jmp xchain00044_n13_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00044_n12_α:
 sub rsp, 16
 mov rax, 8
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00046_239
 add rsp, 16
 jmp xchain00044_n15_α
.Lx00046_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00046_240
 add rsp, 16
 jmp xchain00044_n15_α
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
 mov qword ptr [rbp + 4784], rax
 mov qword ptr [rbp + 4792], rdx
 jmp xchain00044_n14_α
 xchain00044_n12_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00044_n15_α
# IR_MAKE_LIST
 xchain00044_n13_α:
 lea rdi, [rbp + 4336]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 4320], rax
 mov qword ptr [rbp + 4328], rdx
 jmp xchain00044_n16_α
 xchain00044_n13_β:
 jmp xchain00044_n18_α
 xchain00044_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4784]
 mov rdx, qword ptr [rbp + 4792]
 mov qword ptr [rbp + 5360], rax
 mov qword ptr [rbp + 5368], rdx
 mov qword ptr [rbp + 4768], rax
 mov qword ptr [rbp + 4776], rdx
 jmp xchain00044_n15_α
 xchain00044_n14_β:
 jmp xchain00044_n15_α
# IR_LIT_INTEGER
 xchain00044_n15_α:
 mov qword ptr [rbp + 4736], 6
 mov rax, qword ptr [rip + .Lx00047_0]
 mov qword ptr [rbp + 4744], rax
 jmp xchain00044_n17_α
 xchain00044_n15_β:
 jmp xchain00044_n20_α
.Lx00047_0:
 .quad 7
# IR_ASSIGN gva
 xchain00044_n16_α:
 mov rax, qword ptr [rbp + 4320]
 mov rdx, qword ptr [rbp + 4328]
 mov qword ptr [1879052400], rax
 mov qword ptr [1879052408], rdx
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 jmp xchain00044_n18_α
 xchain00044_n16_β:
 jmp xchain00044_n18_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00044_n17_α:
 sub rsp, 16
 mov rax, 7
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00048_239
 add rsp, 16
 jmp xchain00044_n20_α
.Lx00048_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00048_240
 add rsp, 16
 jmp xchain00044_n20_α
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
 mov qword ptr [rbp + 4704], rax
 mov qword ptr [rbp + 4712], rdx
 jmp xchain00044_n19_α
 xchain00044_n17_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00044_n20_α
# IR_VAR
 xchain00044_n18_α:
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 4272], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 4280], rax
 jmp xchain00044_n21_α
 xchain00044_n18_β:
 jmp xchain00044_n22_α
 xchain00044_n19_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4704] -> [zr+4672]
 mov rax, qword ptr [rbp + 4704]
 mov qword ptr [rbp + 4672], rax
 mov rax, qword ptr [rbp + 4712]
 mov qword ptr [rbp + 4680], rax
  .section .rodata
  .Lrkfn323: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn323]
 lea rsi, [rbp + 4672]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4656], rax
 mov qword ptr [rbp + 4664], rdx
 cmp eax, 99
 je xchain00044_n20_α
 jmp xchain00044_n23_α
 xchain00044_n19_β:
 jmp xchain00044_n20_α
# IR_VAR
 xchain00044_n20_α:
 mov rax, qword ptr [rbp + 5360]
 mov qword ptr [rbp + 4576], rax
 mov rax, qword ptr [rbp + 5368]
 mov qword ptr [rbp + 4584], rax
 jmp xchain00044_n24_α
 xchain00044_n20_β:
 jmp xchain00044_n25_α
 xchain00044_n21_α:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 mov edi, 0
 mov rsi, qword ptr [rbp + 4272]
 mov rdx, qword ptr [rbp + 4280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00049_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00049_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00049_3]
 lea rdx, [rip + .Lx00049_4]
 jmp rax
.Lx00049_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00049_2
.Lx00049_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00049_2
.Lx00049_1:
 call rt_faildescr@PLT
.Lx00049_2:
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 4224], rax
 mov qword ptr [rbp + 4232], rdx
 cmp eax, 99
 je xchain00044_n22_α
 jmp xchain00044_n26_α
 xchain00044_n21_β:
 jmp xchain00044_n22_α
.Lx00049_0:
 .quad .Lx00049_0_s
.Lx00049_0_s:
 .string "putdel"
# IR_VAR
 xchain00044_n22_α:
 mov rax, qword ptr [rbp + 5344]
 mov qword ptr [rbp + 3936], rax
 mov rax, qword ptr [rbp + 5352]
 mov qword ptr [rbp + 3944], rax
 jmp xchain00044_n27_α
 xchain00044_n22_β:
 jmp xchain00044_n28_α
 xchain00044_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4656]
 mov rdx, qword ptr [rbp + 4664]
 mov qword ptr [rbp + 5248], rax
 mov qword ptr [rbp + 5256], rdx
 mov qword ptr [rbp + 4640], rax
 mov qword ptr [rbp + 4648], rdx
 jmp xchain00044_n20_α
 xchain00044_n23_β:
 jmp xchain00044_n20_α
# IR_VAR
 xchain00044_n24_α:
 mov rax, qword ptr [rbp + 5248]
 mov qword ptr [rbp + 4608], rax
 mov rax, qword ptr [rbp + 5256]
 mov qword ptr [rbp + 4616], rax
 jmp xchain00044_n29_α
 xchain00044_n24_β:
 jmp xchain00044_n25_α
# IR_GEN_SCAN
 xchain00044_n25_α:
 lea rdi, [rbp + 4384]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 4384]
 mov r14, qword ptr [rbp + 4392]
 mov r15, qword ptr [rbp + 4400]
 jmp xchain00044_n9_α
 xchain00044_n25_β:
 jmp xchain00044_n9_α
 xchain00044_n26_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4224]
 mov rdx, qword ptr [rbp + 4232]
 mov qword ptr [rbp + 5344], rax
 mov qword ptr [rbp + 5352], rdx
 mov qword ptr [rbp + 4208], rax
 mov qword ptr [rbp + 4216], rdx
 jmp xchain00044_n22_α
 xchain00044_n26_β:
 jmp xchain00044_n22_α
 xchain00044_n27_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3936]
 mov rdx, qword ptr [rbp + 3944]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00050_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00050_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00050_3]
 lea rdx, [rip + .Lx00050_4]
 jmp rax
.Lx00050_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00050_2
.Lx00050_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00050_2
.Lx00050_1:
 call rt_faildescr@PLT
.Lx00050_2:
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 cmp eax, 99
 je xchain00044_n28_α
 jmp xchain00044_n30_α
 xchain00044_n27_β:
 jmp xchain00044_n28_α
.Lx00050_0:
 .quad .Lx00050_0_s
.Lx00050_0_s:
 .string "successor"
 xchain00044_n28_α:
 mov rdi, qword ptr [rip + .Lx00051_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00051_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00051_3]
 lea rdx, [rip + .Lx00051_4]
 jmp rax
.Lx00051_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00051_2
.Lx00051_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00051_2
.Lx00051_1:
 call rt_faildescr@PLT
.Lx00051_2:
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 cmp eax, 99
 je xchain00044_n31_α
 jmp xchain00044_n31_α
 xchain00044_n28_β:
 jmp xchain00044_n31_α
.Lx00051_0:
 .quad .Lx00051_0_s
.Lx00051_0_s:
 .string "collapse"
# IR_COERCE_NUMERIC
 xchain00044_n29_α:
 mov eax, dword ptr [rbp + 5360]
 cmp eax, 7
 je .Lx00052_1
 cmp eax, 6
 jne .Lx00052_0
 mov eax, dword ptr [rbp + 5248]
 cmp eax, 6
 jne .Lx00052_0
.Lx00052_1:
 mov rax, qword ptr [rbp + 5360]
 mov qword ptr [rbp + 4544], rax
 mov rax, qword ptr [rbp + 5368]
 mov qword ptr [rbp + 4552], rax
 jmp .Lx00052_2
.Lx00052_0:
 lea rdi, [rbp + 5360]
 lea rsi, [rbp + 5248]
 lea rdx, [rbp + 4544]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00052_2:
 jmp xchain00044_n32_α
 xchain00044_n29_β:
 jmp xchain00044_n25_α
 xchain00044_n30_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3888]
 mov rdx, qword ptr [rbp + 3896]
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 jmp xchain00044_n33_α
 xchain00044_n30_β:
 jmp xchain00044_n28_α
# IR_VAR
 xchain00044_n31_α:
 mov rax, qword ptr [rbp + 5248]
 mov qword ptr [rbp + 3808], rax
 mov rax, qword ptr [rbp + 5256]
 mov qword ptr [rbp + 3816], rax
 jmp xchain00044_n34_α
 xchain00044_n31_β:
 jmp xchain00044_n35_α
# IR_COERCE_NUMERIC
 xchain00044_n32_α:
 mov eax, dword ptr [rbp + 5248]
 cmp eax, 7
 je .Lx00053_1
 cmp eax, 6
 jne .Lx00053_0
 mov eax, dword ptr [rbp + 5360]
 cmp eax, 6
 jne .Lx00053_0
.Lx00053_1:
 mov rax, qword ptr [rbp + 5248]
 mov qword ptr [rbp + 4512], rax
 mov rax, qword ptr [rbp + 5256]
 mov qword ptr [rbp + 4520], rax
 jmp .Lx00053_2
.Lx00053_0:
 lea rdi, [rbp + 5248]
 lea rsi, [rbp + 5360]
 lea rdx, [rbp + 4512]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00053_2:
 jmp xchain00044_n36_α
 xchain00044_n32_β:
 jmp xchain00044_n25_α
# IR_VAR
 xchain00044_n33_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 4144], rax
 mov qword ptr [rbp + 4152], rdx
 jmp xchain00044_n37_α
 xchain00044_n33_β:
 jmp xchain00044_n38_α
 xchain00044_n34_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3808]
 mov rdx, qword ptr [rbp + 3816]
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 jmp xchain00044_n39_α
 xchain00044_n34_β:
 jmp xchain00044_n35_α
# IR_VAR
 xchain00044_n35_α:
 mov rax, qword ptr [rbp + 5264]
 mov qword ptr [rbp + 3728], rax
 mov rax, qword ptr [rbp + 5272]
 mov qword ptr [rbp + 3736], rax
 jmp xchain00044_n40_α
 xchain00044_n35_β:
 jmp xchain00044_n41_α
 xchain00044_n36_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 4544]
 cmp eax, 100
 je .Lx00054_0
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 100
 je .Lx00054_0
 mov eax, dword ptr [rbp + 4544]
 cmp eax, 6
 jne .Lx00054_2
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 6
 jne .Lx00054_2
.Lx00054_1:
 mov rax, qword ptr [rbp + 4552]
 mov rcx, qword ptr [rbp + 4520]
 sub rax, rcx
 mov qword ptr [rbp + 4480], 6
 mov qword ptr [rbp + 4488], rax
 jmp xchain00044_n42_α
.Lx00054_0:
 mov rdi, qword ptr [rbp + 4544]
 mov rsi, qword ptr [rbp + 4552]
 mov rdx, qword ptr [rbp + 4512]
 mov rcx, qword ptr [rbp + 4520]
 mov r8d, 1
 lea r9, [rbp + 4480]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00054_3
.Lx00054_2:
 mov rdi, qword ptr [rbp + 4544]
 mov rsi, qword ptr [rbp + 4552]
 mov rdx, qword ptr [rbp + 4512]
 mov rcx, qword ptr [rbp + 4520]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00044_n25_α
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
.Lx00054_3:
 jmp xchain00044_n42_α
 xchain00044_n36_β:
 jmp xchain00044_n25_α
# IR_VAR
 xchain00044_n37_α:
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 4176], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 4184], rax
 jmp xchain00044_n43_α
 xchain00044_n37_β:
 jmp xchain00044_n38_α
# IR_VAR
 xchain00044_n38_α:
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 4048], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 4056], rax
 jmp xchain00044_n44_α
 xchain00044_n38_β:
 jmp xchain00044_n22_α
 xchain00044_n39_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3792]
 mov rdx, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 jmp xchain00044_n45_α
 xchain00044_n39_β:
 jmp xchain00044_n35_α
 xchain00044_n40_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3728]
 mov rdx, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 jmp xchain00044_n46_α
 xchain00044_n40_β:
 jmp xchain00044_n41_α
# IR_VAR
 xchain00044_n41_α:
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 3344], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 3352], rax
 jmp xchain00044_n47_α
 xchain00044_n41_β:
 jmp xchain00044_n48_α
 xchain00044_n42_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4480]
 mov rdx, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 5264], rax
 mov qword ptr [rbp + 5272], rdx
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 jmp xchain00044_n49_α
 xchain00044_n42_β:
 jmp xchain00044_n25_α
 xchain00044_n43_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4144] -> [zr+4096]
 mov rax, qword ptr [rbp + 4144]
 mov qword ptr [rbp + 4096], rax
 mov rax, qword ptr [rbp + 4152]
 mov qword ptr [rbp + 4104], rax
# marshal arg1 = producer-box slot [zr+4176] -> [zr+4112]
 mov rax, qword ptr [rbp + 4176]
 mov qword ptr [rbp + 4112], rax
 mov rax, qword ptr [rbp + 4184]
 mov qword ptr [rbp + 4120], rax
  .section .rodata
  .Lrkfn362: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn362]
 lea rsi, [rbp + 4096]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
 cmp eax, 99
 je xchain00044_n38_α
 jmp xchain00044_n38_α
 xchain00044_n43_β:
 jmp xchain00044_n38_α
 xchain00044_n44_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4048]
 mov rdx, qword ptr [rbp + 4056]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00055_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00055_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00055_3]
 lea rdx, [rip + .Lx00055_4]
 jmp rax
.Lx00055_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00055_2
.Lx00055_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00055_2
.Lx00055_1:
 call rt_faildescr@PLT
.Lx00055_2:
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 cmp eax, 99
 je xchain00044_n22_α
 jmp xchain00044_n50_α
 xchain00044_n44_β:
 jmp xchain00044_n22_α
.Lx00055_0:
 .quad .Lx00055_0_s
.Lx00055_0_s:
 .string "putdel"
 xchain00044_n45_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3776]
 mov rdx, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 jmp xchain00044_n35_α
 xchain00044_n45_β:
 jmp xchain00044_n35_α
 xchain00044_n46_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3712]
 mov rdx, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 5296], rax
 mov qword ptr [rbp + 5304], rdx
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 jmp xchain00044_n51_α
 xchain00044_n46_β:
 jmp xchain00044_n41_α
# IR_VAR
 xchain00044_n47_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 jmp xchain00044_n52_α
 xchain00044_n47_β:
 jmp xchain00044_n48_α
# IR_VAR
 xchain00044_n48_α:
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 2896], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 2904], rax
 jmp xchain00044_n53_α
 xchain00044_n48_β:
 jmp xchain00044_n54_α
 xchain00044_n49_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 4464]
 mov qword ptr [rbp + 4448], rax
 mov rax, qword ptr [rbp + 4472]
 mov qword ptr [rbp + 4456], rax
 jmp xchain00044_n55_α
xchain00044_n49_β:
 jmp xchain00044_n25_α
 xchain00044_n50_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4000]
 mov rdx, qword ptr [rbp + 4008]
 mov qword ptr [rbp + 5344], rax
 mov qword ptr [rbp + 5352], rdx
 mov qword ptr [rbp + 3984], rax
 mov qword ptr [rbp + 3992], rdx
 jmp xchain00044_n56_α
 xchain00044_n50_β:
 jmp xchain00044_n22_α
 xchain00044_n51_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3696]
 mov rdx, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 jmp xchain00044_n41_α
 xchain00044_n51_β:
 jmp xchain00044_n41_α
# IR_LIST_BANG
 xchain00044_n52_α:
 mov qword ptr [rbp + 3392], 0
.Lx00056_0:
 mov rdi, qword ptr [rbp + 3408]
 mov rsi, qword ptr [rbp + 3416]
 mov rdx, qword ptr [rbp + 3392]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 cmp rax, 99
 je xchain00044_n48_α
 jmp xchain00044_n57_α
 xchain00044_n52_β:
 inc qword ptr [rbp + 3392]
 jmp .Lx00056_0
# IR_VAR
 xchain00044_n53_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain00044_n58_α
 xchain00044_n53_β:
 jmp xchain00044_n54_α
# IR_VAR
 xchain00044_n54_α:
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 2728], rax
 jmp xchain00044_n59_α
 xchain00044_n54_β:
 jmp xchain00044_n60_α
# IR_GEN_SCAN
 xchain00044_n55_α:
 mov rax, qword ptr [rbp + 4448]
 mov qword ptr [rbp + 4416], rax
 mov rax, qword ptr [rbp + 4456]
 mov qword ptr [rbp + 4424], rax
 lea rdi, [rbp + 4384]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 4384]
 mov r14, qword ptr [rbp + 4392]
 mov r15, qword ptr [rbp + 4400]
 jmp xchain00044_n9_α
 xchain00044_n55_β:
 jmp xchain00044_n9_α
 xchain00044_n56_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 3984]
 mov qword ptr [rbp + 3968], rax
 mov rax, qword ptr [rbp + 3992]
 mov qword ptr [rbp + 3976], rax
 jmp xchain00044_n22_α
xchain00044_n56_β:
 jmp xchain00044_n22_α
# IR_COERCE_NUMERIC
 xchain00044_n57_α:
 mov eax, dword ptr [rbp + 5216]
 cmp eax, 7
 je .Lx00057_1
 cmp eax, 6
 jne .Lx00057_0
 mov eax, dword ptr [rbp + 3376]
 cmp eax, 6
 jne .Lx00057_0
.Lx00057_1:
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 3320], rax
 jmp .Lx00057_2
.Lx00057_0:
 lea rdi, [rbp + 5216]
 lea rsi, [rbp + 3376]
 lea rdx, [rbp + 3312]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00057_2:
 jmp xchain00044_n61_α
 xchain00044_n57_β:
 jmp xchain00044_n48_α
# IR_LIST_BANG
 xchain00044_n58_α:
 mov qword ptr [rbp + 2944], 0
.Lx00058_0:
 mov rdi, qword ptr [rbp + 2960]
 mov rsi, qword ptr [rbp + 2968]
 mov rdx, qword ptr [rbp + 2944]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 cmp rax, 99
 je xchain00044_n54_α
 jmp xchain00044_n62_α
 xchain00044_n58_β:
 inc qword ptr [rbp + 2944]
 jmp .Lx00058_0
# IR_VAR
 xchain00044_n59_α:
 mov rax, qword ptr [rbp + 5328]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 5336]
 mov qword ptr [rbp + 2760], rax
 jmp xchain00044_n63_α
 xchain00044_n59_β:
 jmp xchain00044_n60_α
# IR_VAR
 xchain00044_n60_α:
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 2416], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 2424], rax
 jmp xchain00044_n64_α
 xchain00044_n60_β:
 jmp xchain00044_n65_α
# IR_COERCE_NUMERIC
 xchain00044_n61_α:
 mov eax, dword ptr [rbp + 3376]
 cmp eax, 7
 je .Lx00059_1
 cmp eax, 6
 jne .Lx00059_0
 mov eax, dword ptr [rbp + 5216]
 cmp eax, 6
 jne .Lx00059_0
.Lx00059_1:
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 3280], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 3288], rax
 jmp .Lx00059_2
.Lx00059_0:
 lea rdi, [rbp + 3376]
 lea rsi, [rbp + 5216]
 lea rdx, [rbp + 3280]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00059_2:
 jmp xchain00044_n66_α
 xchain00044_n61_β:
 jmp xchain00044_n48_α
# IR_COERCE_NUMERIC
 xchain00044_n62_α:
 mov eax, dword ptr [rbp + 5200]
 cmp eax, 7
 je .Lx00060_1
 cmp eax, 6
 jne .Lx00060_0
 mov eax, dword ptr [rbp + 2928]
 cmp eax, 6
 jne .Lx00060_0
.Lx00060_1:
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 2872], rax
 jmp .Lx00060_2
.Lx00060_0:
 lea rdi, [rbp + 5200]
 lea rsi, [rbp + 2928]
 lea rdx, [rbp + 2864]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00060_2:
 jmp xchain00044_n67_α
 xchain00044_n62_β:
 jmp xchain00044_n54_α
# IR_COERCE_NUMERIC
 xchain00044_n63_α:
 mov eax, dword ptr [rbp + 5216]
 cmp eax, 7
 je .Lx00061_1
 cmp eax, 6
 jne .Lx00061_0
 mov eax, dword ptr [rbp + 5328]
 cmp eax, 6
 jne .Lx00061_0
.Lx00061_1:
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 2688], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 2696], rax
 jmp .Lx00061_2
.Lx00061_0:
 lea rdi, [rbp + 5216]
 lea rsi, [rbp + 5328]
 lea rdx, [rbp + 2688]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00061_2:
 jmp xchain00044_n68_α
 xchain00044_n63_β:
 jmp xchain00044_n60_α
# IR_VAR
 xchain00044_n64_α:
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 2552], rax
 jmp xchain00044_n69_α
 xchain00044_n64_β:
 jmp xchain00044_n65_α
# IR_VAR
 xchain00044_n65_α:
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 2184], rax
 jmp xchain00044_n70_α
 xchain00044_n65_β:
 jmp xchain00044_n71_α
 xchain00044_n66_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3312]
 cmp eax, 100
 je .Lx00062_0
 mov eax, dword ptr [rbp + 3280]
 cmp eax, 100
 je .Lx00062_0
 mov eax, dword ptr [rbp + 3312]
 cmp eax, 6
 jne .Lx00062_2
 mov eax, dword ptr [rbp + 3280]
 cmp eax, 6
 jne .Lx00062_2
.Lx00062_1:
 mov rax, qword ptr [rbp + 3320]
 mov rcx, qword ptr [rbp + 3288]
 add rax, rcx
 mov qword ptr [rbp + 3248], 6
 mov qword ptr [rbp + 3256], rax
 jmp xchain00044_n72_α
.Lx00062_0:
 mov rdi, qword ptr [rbp + 3312]
 mov rsi, qword ptr [rbp + 3320]
 mov rdx, qword ptr [rbp + 3280]
 mov rcx, qword ptr [rbp + 3288]
 mov r8d, 0
 lea r9, [rbp + 3248]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00062_3
.Lx00062_2:
 mov rdi, qword ptr [rbp + 3312]
 mov rsi, qword ptr [rbp + 3320]
 mov rdx, qword ptr [rbp + 3280]
 mov rcx, qword ptr [rbp + 3288]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00044_n48_α
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
.Lx00062_3:
 jmp xchain00044_n72_α
 xchain00044_n66_β:
 jmp xchain00044_n48_α
# IR_COERCE_NUMERIC
 xchain00044_n67_α:
 mov eax, dword ptr [rbp + 2928]
 cmp eax, 7
 je .Lx00063_1
 cmp eax, 6
 jne .Lx00063_0
 mov eax, dword ptr [rbp + 5200]
 cmp eax, 6
 jne .Lx00063_0
.Lx00063_1:
 mov rax, qword ptr [rbp + 2928]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 2936]
 mov qword ptr [rbp + 2840], rax
 jmp .Lx00063_2
.Lx00063_0:
 lea rdi, [rbp + 2928]
 lea rsi, [rbp + 5200]
 lea rdx, [rbp + 2832]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00063_2:
 jmp xchain00044_n73_α
 xchain00044_n67_β:
 jmp xchain00044_n54_α
# IR_COERCE_NUMERIC
 xchain00044_n68_α:
 mov eax, dword ptr [rbp + 5328]
 cmp eax, 7
 je .Lx00064_1
 cmp eax, 6
 jne .Lx00064_0
 mov eax, dword ptr [rbp + 5216]
 cmp eax, 6
 jne .Lx00064_0
.Lx00064_1:
 mov rax, qword ptr [rbp + 5328]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 5336]
 mov qword ptr [rbp + 2664], rax
 jmp .Lx00064_2
.Lx00064_0:
 lea rdi, [rbp + 5328]
 lea rsi, [rbp + 5216]
 lea rdx, [rbp + 2656]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00064_2:
 jmp xchain00044_n74_α
 xchain00044_n68_β:
 jmp xchain00044_n60_α
# IR_VAR
 xchain00044_n69_α:
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 2584], rax
 jmp xchain00044_n75_α
 xchain00044_n69_β:
 jmp xchain00044_n65_α
# IR_VAR
 xchain00044_n70_α:
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 2312], rax
 jmp xchain00044_n76_α
 xchain00044_n70_β:
 jmp xchain00044_n71_α
# IR_VAR
 xchain00044_n71_α:
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 1944], rax
 jmp xchain00044_n77_α
 xchain00044_n71_β:
 jmp xchain00044_n78_α
 xchain00044_n72_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3248]
 mov rdx, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 jmp xchain00044_n79_α
 xchain00044_n72_β:
 jmp xchain00044_n48_α
 xchain00044_n73_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 100
 je .Lx00065_0
 mov eax, dword ptr [rbp + 2832]
 cmp eax, 100
 je .Lx00065_0
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 6
 jne .Lx00065_2
 mov eax, dword ptr [rbp + 2832]
 cmp eax, 6
 jne .Lx00065_2
.Lx00065_1:
 mov rax, qword ptr [rbp + 2872]
 mov rcx, qword ptr [rbp + 2840]
 add rax, rcx
 mov qword ptr [rbp + 2800], 6
 mov qword ptr [rbp + 2808], rax
 jmp xchain00044_n80_α
.Lx00065_0:
 mov rdi, qword ptr [rbp + 2864]
 mov rsi, qword ptr [rbp + 2872]
 mov rdx, qword ptr [rbp + 2832]
 mov rcx, qword ptr [rbp + 2840]
 mov r8d, 0
 lea r9, [rbp + 2800]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00065_3
.Lx00065_2:
 mov rdi, qword ptr [rbp + 2864]
 mov rsi, qword ptr [rbp + 2872]
 mov rdx, qword ptr [rbp + 2832]
 mov rcx, qword ptr [rbp + 2840]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00044_n54_α
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
.Lx00065_3:
 jmp xchain00044_n80_α
 xchain00044_n73_β:
 jmp xchain00044_n54_α
 xchain00044_n74_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2688]
 cmp eax, 100
 je .Lx00066_0
 mov eax, dword ptr [rbp + 2656]
 cmp eax, 100
 je .Lx00066_0
 mov eax, dword ptr [rbp + 2688]
 cmp eax, 6
 jne .Lx00066_2
 mov eax, dword ptr [rbp + 2656]
 cmp eax, 6
 jne .Lx00066_2
.Lx00066_1:
 mov rax, qword ptr [rbp + 2696]
 mov rcx, qword ptr [rbp + 2664]
 sub rax, rcx
 mov qword ptr [rbp + 2624], 6
 mov qword ptr [rbp + 2632], rax
 jmp xchain00044_n81_α
.Lx00066_0:
 mov rdi, qword ptr [rbp + 2688]
 mov rsi, qword ptr [rbp + 2696]
 mov rdx, qword ptr [rbp + 2656]
 mov rcx, qword ptr [rbp + 2664]
 mov r8d, 1
 lea r9, [rbp + 2624]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00066_3
.Lx00066_2:
 mov rdi, qword ptr [rbp + 2688]
 mov rsi, qword ptr [rbp + 2696]
 mov rdx, qword ptr [rbp + 2656]
 mov rcx, qword ptr [rbp + 2664]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00044_n60_α
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
.Lx00066_3:
 jmp xchain00044_n81_α
 xchain00044_n74_β:
 jmp xchain00044_n60_α
# IR_COERCE_NUMERIC
 xchain00044_n75_α:
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 7
 je .Lx00067_1
 cmp eax, 6
 jne .Lx00067_0
 mov eax, dword ptr [rbp + 5216]
 cmp eax, 6
 jne .Lx00067_0
.Lx00067_1:
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 2520], rax
 jmp .Lx00067_2
.Lx00067_0:
 lea rdi, [rbp + 5312]
 lea rsi, [rbp + 5216]
 lea rdx, [rbp + 2512]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00067_2:
 jmp xchain00044_n82_α
 xchain00044_n75_β:
 jmp xchain00044_n65_α
# IR_VAR
 xchain00044_n76_α:
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 2344], rax
 jmp xchain00044_n83_α
 xchain00044_n76_β:
 jmp xchain00044_n71_α
# IR_VAR
 xchain00044_n77_α:
 mov rax, qword ptr [rbp + 5280]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 5288]
 mov qword ptr [rbp + 2072], rax
 jmp xchain00044_n84_α
 xchain00044_n77_β:
 jmp xchain00044_n78_α
# IR_VAR
 xchain00044_n78_α:
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 1832], rax
 jmp xchain00044_n85_α
 xchain00044_n78_β:
 jmp xchain00044_n86_α
# IR_VAR
 xchain00044_n79_α:
 mov rax, qword ptr [rbp + 5328]
 mov qword ptr [rbp + 3616], rax
 mov rax, qword ptr [rbp + 5336]
 mov qword ptr [rbp + 3624], rax
 jmp xchain00044_n87_α
 xchain00044_n79_β:
 jmp xchain00044_n88_α
 xchain00044_n80_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2800]
 mov rdx, qword ptr [rbp + 2808]
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain00044_n89_α
 xchain00044_n80_β:
 jmp xchain00044_n54_α
 xchain00044_n81_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2624]
 mov rdx, qword ptr [rbp + 2632]
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 jmp xchain00044_n60_α
 xchain00044_n81_β:
 jmp xchain00044_n60_α
# IR_COERCE_NUMERIC
 xchain00044_n82_α:
 mov eax, dword ptr [rbp + 5216]
 cmp eax, 7
 je .Lx00068_1
 cmp eax, 6
 jne .Lx00068_0
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 6
 jne .Lx00068_0
.Lx00068_1:
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 2488], rax
 jmp .Lx00068_2
.Lx00068_0:
 lea rdi, [rbp + 5216]
 lea rsi, [rbp + 5312]
 lea rdx, [rbp + 2480]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00068_2:
 jmp xchain00044_n90_α
 xchain00044_n82_β:
 jmp xchain00044_n65_α
# IR_COERCE_NUMERIC
 xchain00044_n83_α:
 mov eax, dword ptr [rbp + 5200]
 cmp eax, 7
 je .Lx00069_1
 cmp eax, 6
 jne .Lx00069_0
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 6
 jne .Lx00069_0
.Lx00069_1:
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 2280], rax
 jmp .Lx00069_2
.Lx00069_0:
 lea rdi, [rbp + 5200]
 lea rsi, [rbp + 5296]
 lea rdx, [rbp + 2272]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00069_2:
 jmp xchain00044_n91_α
 xchain00044_n83_β:
 jmp xchain00044_n71_α
# IR_VAR
 xchain00044_n84_α:
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 2104], rax
 jmp xchain00044_n92_α
 xchain00044_n84_β:
 jmp xchain00044_n78_α
# IR_LIT_INTEGER
 xchain00044_n85_α:
 mov qword ptr [rbp + 1856], 6
 mov rax, qword ptr [rip + .Lx00070_0]
 mov qword ptr [rbp + 1864], rax
 jmp xchain00044_n93_α
 xchain00044_n85_β:
 jmp xchain00044_n86_α
.Lx00070_0:
 .quad 9999
# IR_VAR
 xchain00044_n86_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1368], rax
 jmp xchain00044_n94_α
 xchain00044_n86_β:
 jmp xchain00044_n95_α
# IR_VAR
 xchain00044_n87_α:
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 3648], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 3656], rax
 jmp xchain00044_n96_α
 xchain00044_n87_β:
 jmp xchain00044_n88_α
# IR_VAR
 xchain00044_n88_α:
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 3504], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 3512], rax
 jmp xchain00044_n97_α
 xchain00044_n88_β:
 jmp xchain00044_n52_β
# IR_VAR
 xchain00044_n89_α:
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 3176], rax
 jmp xchain00044_n98_α
 xchain00044_n89_β:
 jmp xchain00044_n99_α
 xchain00044_n90_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2512]
 cmp eax, 100
 je .Lx00071_0
 mov eax, dword ptr [rbp + 2480]
 cmp eax, 100
 je .Lx00071_0
 mov eax, dword ptr [rbp + 2512]
 cmp eax, 6
 jne .Lx00071_2
 mov eax, dword ptr [rbp + 2480]
 cmp eax, 6
 jne .Lx00071_2
.Lx00071_1:
 mov rax, qword ptr [rbp + 2520]
 mov rcx, qword ptr [rbp + 2488]
 sub rax, rcx
 mov qword ptr [rbp + 2448], 6
 mov qword ptr [rbp + 2456], rax
 jmp xchain00044_n00072_α
.Lx00071_0:
 mov rdi, qword ptr [rbp + 2512]
 mov rsi, qword ptr [rbp + 2520]
 mov rdx, qword ptr [rbp + 2480]
 mov rcx, qword ptr [rbp + 2488]
 mov r8d, 1
 lea r9, [rbp + 2448]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00071_3
.Lx00071_2:
 mov rdi, qword ptr [rbp + 2512]
 mov rsi, qword ptr [rbp + 2520]
 mov rdx, qword ptr [rbp + 2480]
 mov rcx, qword ptr [rbp + 2488]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00044_n65_α
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
.Lx00071_3:
 jmp xchain00044_n00072_α
 xchain00044_n90_β:
 jmp xchain00044_n65_α
# IR_COERCE_NUMERIC
 xchain00044_n91_α:
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 7
 je .Lx00073_1
 cmp eax, 6
 jne .Lx00073_0
 mov eax, dword ptr [rbp + 5200]
 cmp eax, 6
 jne .Lx00073_0
.Lx00073_1:
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 2248], rax
 jmp .Lx00073_2
.Lx00073_0:
 lea rdi, [rbp + 5296]
 lea rsi, [rbp + 5200]
 lea rdx, [rbp + 2240]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00073_2:
 jmp xchain00044_n00074_α
 xchain00044_n91_β:
 jmp xchain00044_n71_α
# IR_COERCE_NUMERIC
 xchain00044_n92_α:
 mov eax, dword ptr [rbp + 5280]
 cmp eax, 7
 je .Lx00075_1
 cmp eax, 6
 jne .Lx00075_0
 mov eax, dword ptr [rbp + 5200]
 cmp eax, 6
 jne .Lx00075_0
.Lx00075_1:
 mov rax, qword ptr [rbp + 5280]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 5288]
 mov qword ptr [rbp + 2040], rax
 jmp .Lx00075_2
.Lx00075_0:
 lea rdi, [rbp + 5280]
 lea rsi, [rbp + 5200]
 lea rdx, [rbp + 2032]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00075_2:
 jmp xchain00044_n00001_α
 xchain00044_n92_β:
 jmp xchain00044_n78_α
 xchain00044_n93_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5232]
 cmp eax, 100
 je .Lx00076_0
 mov eax, dword ptr [rbp + 1856]
 cmp eax, 100
 je .Lx00076_0
 mov eax, dword ptr [rbp + 5232]
 cmp eax, 6
 jne .Lx00076_2
 mov eax, dword ptr [rbp + 1856]
 cmp eax, 6
 jne .Lx00076_2
.Lx00076_1:
 mov rax, qword ptr [rbp + 5240]
 mov rcx, qword ptr [rbp + 1864]
 cmp rax, rcx
 jle xchain00044_n86_α
 mov rcx, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1792], rcx
 mov rcx, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1800], rcx
 jmp xchain00044_n00077_α
.Lx00076_0:
 mov rdi, qword ptr [rbp + 5232]
 mov rsi, qword ptr [rbp + 5240]
 mov rdx, qword ptr [rbp + 1856]
 mov rcx, qword ptr [rbp + 1864]
 mov r8d, 7
 lea r9, [rbp + 1792]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00076_1
 cmp eax, 1
 je xchain00044_n86_α
 jmp xchain00044_n00077_α
.Lx00076_2:
 mov rdi, qword ptr [rbp + 5232]
 mov rsi, qword ptr [rbp + 5240]
 mov rdx, qword ptr [rbp + 1856]
 mov rcx, qword ptr [rbp + 1864]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00044_n86_α
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1800], rax
 jmp xchain00044_n00077_α
 xchain00044_n93_β:
 jmp xchain00044_n86_α
# IR_VAR
 xchain00044_n94_α:
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 1464], rax
 jmp xchain00044_n00078_α
 xchain00044_n94_β:
 jmp xchain00044_n95_α
# IR_VAR
 xchain00044_n95_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00044_n00079_α
 xchain00044_n95_β:
 jmp xchain00044_n00080_α
 xchain00044_n96_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5328]
 cmp eax, 100
 je .Lx00081_0
 mov eax, dword ptr [rbp + 5216]
 cmp eax, 100
 je .Lx00081_0
 mov eax, dword ptr [rbp + 5328]
 cmp eax, 6
 jne .Lx00081_2
 mov eax, dword ptr [rbp + 5216]
 cmp eax, 6
 jne .Lx00081_2
.Lx00081_1:
 mov rax, qword ptr [rbp + 5336]
 mov rcx, qword ptr [rbp + 5224]
 cmp rax, rcx
 jle xchain00044_n88_α
 mov rcx, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 3584], rcx
 mov rcx, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 3592], rcx
 jmp xchain00044_n00082_α
.Lx00081_0:
 mov rdi, qword ptr [rbp + 5328]
 mov rsi, qword ptr [rbp + 5336]
 mov rdx, qword ptr [rbp + 5216]
 mov rcx, qword ptr [rbp + 5224]
 mov r8d, 7
 lea r9, [rbp + 3584]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00081_1
 cmp eax, 1
 je xchain00044_n88_α
 jmp xchain00044_n00082_α
.Lx00081_2:
 mov rdi, qword ptr [rbp + 5328]
 mov rsi, qword ptr [rbp + 5336]
 mov rdx, qword ptr [rbp + 5216]
 mov rcx, qword ptr [rbp + 5224]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00044_n88_α
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 3584], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 3592], rax
 jmp xchain00044_n00082_α
 xchain00044_n96_β:
 jmp xchain00044_n88_α
# IR_VAR
 xchain00044_n97_α:
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 3536], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 3544], rax
 jmp xchain00044_n00083_α
 xchain00044_n97_β:
 jmp xchain00044_n52_β
# IR_VAR
 xchain00044_n98_α:
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 3208], rax
 jmp xchain00044_n00002_α
 xchain00044_n98_β:
 jmp xchain00044_n99_α
# IR_VAR
 xchain00044_n99_α:
 mov rax, qword ptr [rbp + 5280]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 5288]
 mov qword ptr [rbp + 3064], rax
 jmp xchain00044_n00084_α
 xchain00044_n99_β:
 jmp xchain00044_n58_β
 xchain00044_n00072_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5232]
 cmp eax, 100
 je .Lx00085_0
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 100
 je .Lx00085_0
 mov eax, dword ptr [rbp + 5232]
 cmp eax, 6
 jne .Lx00085_2
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 6
 jne .Lx00085_2
.Lx00085_1:
 mov rax, qword ptr [rbp + 5240]
 mov rcx, qword ptr [rbp + 2456]
 cmp rax, rcx
 jge xchain00044_n65_α
 mov rcx, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2384], rcx
 mov rcx, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2392], rcx
 jmp xchain00044_n00086_α
.Lx00085_0:
 mov rdi, qword ptr [rbp + 5232]
 mov rsi, qword ptr [rbp + 5240]
 mov rdx, qword ptr [rbp + 2448]
 mov rcx, qword ptr [rbp + 2456]
 mov r8d, 5
 lea r9, [rbp + 2384]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00085_1
 cmp eax, 1
 je xchain00044_n65_α
 jmp xchain00044_n00086_α
.Lx00085_2:
 mov rdi, qword ptr [rbp + 5232]
 mov rsi, qword ptr [rbp + 5240]
 mov rdx, qword ptr [rbp + 2448]
 mov rcx, qword ptr [rbp + 2456]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00044_n65_α
 mov rax, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2392], rax
 jmp xchain00044_n00086_α
 xchain00044_n00072_β:
 jmp xchain00044_n65_α
 xchain00044_n00074_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2272]
 cmp eax, 100
 je .Lx00087_0
 mov eax, dword ptr [rbp + 2240]
 cmp eax, 100
 je .Lx00087_0
 mov eax, dword ptr [rbp + 2272]
 cmp eax, 6
 jne .Lx00087_2
 mov eax, dword ptr [rbp + 2240]
 cmp eax, 6
 jne .Lx00087_2
.Lx00087_1:
 mov rax, qword ptr [rbp + 2280]
 mov rcx, qword ptr [rbp + 2248]
 sub rax, rcx
 mov qword ptr [rbp + 2208], 6
 mov qword ptr [rbp + 2216], rax
 jmp xchain00044_n00088_α
.Lx00087_0:
 mov rdi, qword ptr [rbp + 2272]
 mov rsi, qword ptr [rbp + 2280]
 mov rdx, qword ptr [rbp + 2240]
 mov rcx, qword ptr [rbp + 2248]
 mov r8d, 1
 lea r9, [rbp + 2208]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00087_3
.Lx00087_2:
 mov rdi, qword ptr [rbp + 2272]
 mov rsi, qword ptr [rbp + 2280]
 mov rdx, qword ptr [rbp + 2240]
 mov rcx, qword ptr [rbp + 2248]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00044_n71_α
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
.Lx00087_3:
 jmp xchain00044_n00088_α
 xchain00044_n00074_β:
 jmp xchain00044_n71_α
# IR_COERCE_NUMERIC
 xchain00044_n00001_α:
 mov eax, dword ptr [rbp + 5200]
 cmp eax, 7
 je .Lx00089_1
 cmp eax, 6
 jne .Lx00089_0
 mov eax, dword ptr [rbp + 5280]
 cmp eax, 6
 jne .Lx00089_0
.Lx00089_1:
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 2008], rax
 jmp .Lx00089_2
.Lx00089_0:
 lea rdi, [rbp + 5200]
 lea rsi, [rbp + 5280]
 lea rdx, [rbp + 2000]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00089_2:
 jmp xchain00044_n00090_α
 xchain00044_n00001_β:
 jmp xchain00044_n78_α
 xchain00044_n00077_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1792]
 mov rdx, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain00044_n86_α
 xchain00044_n00077_β:
 jmp xchain00044_n86_α
# IR_LIT_INTEGER
 xchain00044_n00078_α:
 mov qword ptr [rbp + 1488], 6
 mov rax, qword ptr [rip + .Lx00091_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain00044_n00092_α
 xchain00044_n00078_β:
 jmp xchain00044_n95_α
.Lx00091_0:
 .quad 4
 xchain00044_n00079_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
  .section .rodata
  .Lrkfn463: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn463]
 lea rsi, [rbp + 416]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain00044_n00080_α
 jmp xchain00044_n00003_α
 xchain00044_n00079_β:
 jmp xchain00044_n00080_α
# IR_VAR
 xchain00044_n00080_α:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 248], rax
 jmp xchain00044_n00093_α
 xchain00044_n00080_β:
 jmp xchain00044_n00094_α
 xchain00044_n00082_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3584]
 mov rdx, qword ptr [rbp + 3592]
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 jmp xchain00044_n88_α
 xchain00044_n00082_β:
 jmp xchain00044_n88_α
 xchain00044_n00083_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 100
 je .Lx00095_0
 mov eax, dword ptr [rbp + 5216]
 cmp eax, 100
 je .Lx00095_0
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 6
 jne .Lx00095_2
 mov eax, dword ptr [rbp + 5216]
 cmp eax, 6
 jne .Lx00095_2
.Lx00095_1:
 mov rax, qword ptr [rbp + 5320]
 mov rcx, qword ptr [rbp + 5224]
 cmp rax, rcx
 jge xchain00044_n52_β
 mov rcx, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 3472], rcx
 mov rcx, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 3480], rcx
 jmp xchain00044_n00096_α
.Lx00095_0:
 mov rdi, qword ptr [rbp + 5312]
 mov rsi, qword ptr [rbp + 5320]
 mov rdx, qword ptr [rbp + 5216]
 mov rcx, qword ptr [rbp + 5224]
 mov r8d, 5
 lea r9, [rbp + 3472]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00095_1
 cmp eax, 1
 je xchain00044_n52_β
 jmp xchain00044_n00096_α
.Lx00095_2:
 mov rdi, qword ptr [rbp + 5312]
 mov rsi, qword ptr [rbp + 5320]
 mov rdx, qword ptr [rbp + 5216]
 mov rcx, qword ptr [rbp + 5224]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00044_n52_β
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 3480], rax
 jmp xchain00044_n00096_α
 xchain00044_n00083_β:
 jmp xchain00044_n52_β
 xchain00044_n00002_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 100
 je .Lx00097_0
 mov eax, dword ptr [rbp + 5200]
 cmp eax, 100
 je .Lx00097_0
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 6
 jne .Lx00097_2
 mov eax, dword ptr [rbp + 5200]
 cmp eax, 6
 jne .Lx00097_2
.Lx00097_1:
 mov rax, qword ptr [rbp + 5304]
 mov rcx, qword ptr [rbp + 5208]
 cmp rax, rcx
 jle xchain00044_n99_α
 mov rcx, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 3136], rcx
 mov rcx, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 3144], rcx
 jmp xchain00044_n00098_α
.Lx00097_0:
 mov rdi, qword ptr [rbp + 5296]
 mov rsi, qword ptr [rbp + 5304]
 mov rdx, qword ptr [rbp + 5200]
 mov rcx, qword ptr [rbp + 5208]
 mov r8d, 7
 lea r9, [rbp + 3136]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00097_1
 cmp eax, 1
 je xchain00044_n99_α
 jmp xchain00044_n00098_α
.Lx00097_2:
 mov rdi, qword ptr [rbp + 5296]
 mov rsi, qword ptr [rbp + 5304]
 mov rdx, qword ptr [rbp + 5200]
 mov rcx, qword ptr [rbp + 5208]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00044_n99_α
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 3136], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 3144], rax
 jmp xchain00044_n00098_α
 xchain00044_n00002_β:
 jmp xchain00044_n99_α
# IR_VAR
 xchain00044_n00084_α:
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 3088], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 3096], rax
 jmp xchain00044_n00099_α
 xchain00044_n00084_β:
 jmp xchain00044_n58_β
 xchain00044_n00086_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2384]
 mov rdx, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 jmp xchain00044_n65_α
 xchain00044_n00086_β:
 jmp xchain00044_n65_α
 xchain00044_n00088_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5232]
 cmp eax, 100
 je .Lx00100_0
 mov eax, dword ptr [rbp + 2208]
 cmp eax, 100
 je .Lx00100_0
 mov eax, dword ptr [rbp + 5232]
 cmp eax, 6
 jne .Lx00100_2
 mov eax, dword ptr [rbp + 2208]
 cmp eax, 6
 jne .Lx00100_2
.Lx00100_1:
 mov rax, qword ptr [rbp + 5240]
 mov rcx, qword ptr [rbp + 2216]
 cmp rax, rcx
 jge xchain00044_n71_α
 mov rcx, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2144], rcx
 mov rcx, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2152], rcx
 jmp xchain00044_n00012_α
.Lx00100_0:
 mov rdi, qword ptr [rbp + 5232]
 mov rsi, qword ptr [rbp + 5240]
 mov rdx, qword ptr [rbp + 2208]
 mov rcx, qword ptr [rbp + 2216]
 mov r8d, 5
 lea r9, [rbp + 2144]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00100_1
 cmp eax, 1
 je xchain00044_n71_α
 jmp xchain00044_n00012_α
.Lx00100_2:
 mov rdi, qword ptr [rbp + 5232]
 mov rsi, qword ptr [rbp + 5240]
 mov rdx, qword ptr [rbp + 2208]
 mov rcx, qword ptr [rbp + 2216]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00044_n71_α
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2152], rax
 jmp xchain00044_n00012_α
 xchain00044_n00088_β:
 jmp xchain00044_n71_α
 xchain00044_n00090_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2032]
 cmp eax, 100
 je .Lx00101_0
 mov eax, dword ptr [rbp + 2000]
 cmp eax, 100
 je .Lx00101_0
 mov eax, dword ptr [rbp + 2032]
 cmp eax, 6
 jne .Lx00101_2
 mov eax, dword ptr [rbp + 2000]
 cmp eax, 6
 jne .Lx00101_2
.Lx00101_1:
 mov rax, qword ptr [rbp + 2040]
 mov rcx, qword ptr [rbp + 2008]
 sub rax, rcx
 mov qword ptr [rbp + 1968], 6
 mov qword ptr [rbp + 1976], rax
 jmp xchain00044_n00102_α
.Lx00101_0:
 mov rdi, qword ptr [rbp + 2032]
 mov rsi, qword ptr [rbp + 2040]
 mov rdx, qword ptr [rbp + 2000]
 mov rcx, qword ptr [rbp + 2008]
 mov r8d, 1
 lea r9, [rbp + 1968]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00101_3
.Lx00101_2:
 mov rdi, qword ptr [rbp + 2032]
 mov rsi, qword ptr [rbp + 2040]
 mov rdx, qword ptr [rbp + 2000]
 mov rcx, qword ptr [rbp + 2008]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00044_n78_α
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
.Lx00101_3:
 jmp xchain00044_n00102_α
 xchain00044_n00090_β:
 jmp xchain00044_n78_α
 xchain00044_n00092_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1456] -> [zr+1408]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1416], rax
# marshal arg1 = producer-box slot [zr+1488] -> [zr+1424]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1432], rax
  .section .rodata
  .Lrkfn475: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn475]
 lea rsi, [rbp + 1408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je xchain00044_n95_α
 jmp xchain00044_n00103_α
 xchain00044_n00092_β:
 jmp xchain00044_n95_α
 xchain00044_n00003_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain00044_n00104_α
 xchain00044_n00003_β:
 jmp xchain00044_n00080_α
# IR_UNOP
 xchain00044_n00093_α:
 mov eax, dword ptr [rbp + 5184]
 cmp eax, 99
 je xchain00044_n00094_α
 cmp eax, 0
 jne xchain00044_n00094_α
 mov qword ptr [rbp + 208], 0
 mov qword ptr [rbp + 216], 0
 jmp xchain00044_n00105_α
 xchain00044_n00093_β:
 jmp xchain00044_n00094_α
 xchain00044_n00094_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn479: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn479]
 lea rsi, [rbp + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je xchain00044_n00004_α
 jmp xchain00044_n00004_α
 xchain00044_n00094_β:
 jmp xchain00044_n00004_α
 xchain00044_n00096_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3472]
 mov rdx, qword ptr [rbp + 3480]
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 jmp xchain00044_n00106_α
 xchain00044_n00096_β:
 jmp xchain00044_n52_β
 xchain00044_n00098_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3136]
 mov rdx, qword ptr [rbp + 3144]
 mov qword ptr [rbp + 5296], rax
 mov qword ptr [rbp + 5304], rdx
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain00044_n99_α
 xchain00044_n00098_β:
 jmp xchain00044_n99_α
 xchain00044_n00099_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5280]
 cmp eax, 100
 je .Lx00107_0
 mov eax, dword ptr [rbp + 5200]
 cmp eax, 100
 je .Lx00107_0
 mov eax, dword ptr [rbp + 5280]
 cmp eax, 6
 jne .Lx00107_2
 mov eax, dword ptr [rbp + 5200]
 cmp eax, 6
 jne .Lx00107_2
.Lx00107_1:
 mov rax, qword ptr [rbp + 5288]
 mov rcx, qword ptr [rbp + 5208]
 cmp rax, rcx
 jge xchain00044_n58_β
 mov rcx, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 3024], rcx
 mov rcx, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 3032], rcx
 jmp xchain00044_n00108_α
.Lx00107_0:
 mov rdi, qword ptr [rbp + 5280]
 mov rsi, qword ptr [rbp + 5288]
 mov rdx, qword ptr [rbp + 5200]
 mov rcx, qword ptr [rbp + 5208]
 mov r8d, 5
 lea r9, [rbp + 3024]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00107_1
 cmp eax, 1
 je xchain00044_n58_β
 jmp xchain00044_n00108_α
.Lx00107_2:
 mov rdi, qword ptr [rbp + 5280]
 mov rsi, qword ptr [rbp + 5288]
 mov rdx, qword ptr [rbp + 5200]
 mov rcx, qword ptr [rbp + 5208]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00044_n58_β
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 3032], rax
 jmp xchain00044_n00108_α
 xchain00044_n00099_β:
 jmp xchain00044_n58_β
 xchain00044_n00012_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2144]
 mov rdx, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 jmp xchain00044_n71_α
 xchain00044_n00012_β:
 jmp xchain00044_n71_α
 xchain00044_n00102_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5232]
 cmp eax, 100
 je .Lx00109_0
 mov eax, dword ptr [rbp + 1968]
 cmp eax, 100
 je .Lx00109_0
 mov eax, dword ptr [rbp + 5232]
 cmp eax, 6
 jne .Lx00109_2
 mov eax, dword ptr [rbp + 1968]
 cmp eax, 6
 jne .Lx00109_2
.Lx00109_1:
 mov rax, qword ptr [rbp + 5240]
 mov rcx, qword ptr [rbp + 1976]
 cmp rax, rcx
 jge xchain00044_n78_α
 mov rcx, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1904], rcx
 mov rcx, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1912], rcx
 jmp xchain00044_n00110_α
.Lx00109_0:
 mov rdi, qword ptr [rbp + 5232]
 mov rsi, qword ptr [rbp + 5240]
 mov rdx, qword ptr [rbp + 1968]
 mov rcx, qword ptr [rbp + 1976]
 mov r8d, 5
 lea r9, [rbp + 1904]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00109_1
 cmp eax, 1
 je xchain00044_n78_α
 jmp xchain00044_n00110_α
.Lx00109_2:
 mov rdi, qword ptr [rbp + 5232]
 mov rsi, qword ptr [rbp + 5240]
 mov rdx, qword ptr [rbp + 1968]
 mov rcx, qword ptr [rbp + 1976]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00044_n78_α
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1912], rax
 jmp xchain00044_n00110_α
 xchain00044_n00102_β:
 jmp xchain00044_n78_α
# IR_VAR
 xchain00044_n00103_α:
 mov rax, qword ptr [rbp + 5248]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 5256]
 mov qword ptr [rbp + 1592], rax
 jmp xchain00044_n00111_α
 xchain00044_n00103_β:
 jmp xchain00044_n95_α
# IR_VAR
 xchain00044_n00104_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00044_n00112_α
 xchain00044_n00104_β:
 jmp xchain00044_n00080_α
# IR_LIT_STRING
 xchain00044_n00105_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00113_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00044_n00114_α
 xchain00044_n00105_β:
 jmp xchain00044_n00094_α
.Lx00113_0:
 .quad .Lx00113_0_s
.Lx00113_0_s:
 .string "50005000"
# IR_RETURN
 xchain00044_n00004_α:
 mov rax, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_putchain_γ
 xchain00044_n00106_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 3456]
 mov qword ptr [rbp + 3440], rax
 mov rax, qword ptr [rbp + 3464]
 mov qword ptr [rbp + 3448], rax
 jmp xchain00044_n52_β
xchain00044_n00106_β:
 jmp xchain00044_n52_β
 xchain00044_n00108_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3024]
 mov rdx, qword ptr [rbp + 3032]
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 jmp xchain00044_n00005_α
 xchain00044_n00108_β:
 jmp xchain00044_n58_β
 xchain00044_n00110_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1904]
 mov rdx, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain00044_n78_α
 xchain00044_n00110_β:
 jmp xchain00044_n78_α
# IR_LIT_INTEGER
 xchain00044_n00111_α:
 mov qword ptr [rbp + 1616], 6
 mov rax, qword ptr [rip + .Lx00115_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00044_n00116_α
 xchain00044_n00111_β:
 jmp xchain00044_n95_α
.Lx00115_0:
 .quad 7
 xchain00044_n00112_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
  .section .rodata
  .Lrkfn495: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn495]
 lea rsi, [rbp + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain00044_n00080_α
 jmp xchain00044_n00117_α
 xchain00044_n00112_β:
 jmp xchain00044_n00080_α
 xchain00044_n00114_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn497: .string "writes"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn497]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00044_n00094_α
 jmp xchain00044_n00118_α
 xchain00044_n00114_β:
 jmp xchain00044_n00094_α
 xchain00044_n00005_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 3008]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 3016]
 mov qword ptr [rbp + 3000], rax
 jmp xchain00044_n58_β
xchain00044_n00005_β:
 jmp xchain00044_n58_β
 xchain00044_n00116_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1584] -> [zr+1536]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1544], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1552]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1560], rax
  .section .rodata
  .Lrkfn500: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn500]
 lea rsi, [rbp + 1536]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain00044_n95_α
 jmp xchain00044_n00119_α
 xchain00044_n00116_β:
 jmp xchain00044_n95_α
 xchain00044_n00117_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00044_n00120_α
 xchain00044_n00117_β:
 jmp xchain00044_n00080_α
# IR_MOVE_LABEL
 xchain00044_n00118_α:
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 104], rax
 lea rax, [rip + xchain00044_n00094_α]
 mov qword ptr [rbp + 112], rax
 jmp xchain00044_n00094_α
 xchain00044_n00118_β:
 jmp xchain00044_n00094_α
# IR_VAR
 xchain00044_n00119_α:
 mov rax, qword ptr [rbp + 5264]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 5272]
 mov qword ptr [rbp + 1720], rax
 jmp xchain00044_n00121_α
 xchain00044_n00119_β:
 jmp xchain00044_n95_α
 xchain00044_n00120_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 280], rax
 jmp xchain00044_n00122_α
xchain00044_n00120_β:
 jmp xchain00044_n00080_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00044_n00123_α:
 jmp qword ptr [rbp + 112]
 xchain00044_n00123_β:
 jmp xchain00044_n00094_α
# IR_LIT_INTEGER
 xchain00044_n00121_α:
 mov qword ptr [rbp + 1744], 6
 mov rax, qword ptr [rip + .Lx00124_0]
 mov qword ptr [rbp + 1752], rax
 jmp xchain00044_n00125_α
 xchain00044_n00121_β:
 jmp xchain00044_n95_α
.Lx00124_0:
 .quad 7
# IR_VAR
 xchain00044_n00122_α:
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 1208], rax
 jmp xchain00044_n00126_α
 xchain00044_n00122_β:
 jmp xchain00044_n00127_α
 xchain00044_n00125_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1712] -> [zr+1664]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1672], rax
# marshal arg1 = producer-box slot [zr+1744] -> [zr+1680]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1688], rax
  .section .rodata
  .Lrkfn513: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn513]
 lea rsi, [rbp + 1664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 cmp eax, 99
 je xchain00044_n95_α
 jmp xchain00044_n00128_α
 xchain00044_n00125_β:
 jmp xchain00044_n95_α
# IR_LIT_INTEGER
 xchain00044_n00126_α:
 mov qword ptr [rbp + 1232], 6
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain00044_n00130_α
 xchain00044_n00126_β:
 jmp xchain00044_n00127_α
.Lx00129_0:
 .quad 0
# IR_VAR
 xchain00044_n00127_α:
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00044_n00131_α
 xchain00044_n00127_β:
 jmp xchain00044_n95_α
 xchain00044_n00128_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1280]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1288], rax
# marshal arg1 = producer-box slot [zr+1392] -> [zr+1296]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1304], rax
# marshal arg2 = producer-box slot [zr+1520] -> [zr+1312]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1320], rax
# marshal arg3 = producer-box slot [zr+1648] -> [zr+1328]
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1336], rax
  .section .rodata
  .Lrkfn518: .string "writes"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn518]
 lea rsi, [rbp + 1280]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 cmp eax, 99
 je xchain00044_n95_α
 jmp xchain00044_n95_α
 xchain00044_n00128_β:
 jmp xchain00044_n95_α
 xchain00044_n00130_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5216]
 cmp eax, 100
 je .Lx00132_0
 mov eax, dword ptr [rbp + 1232]
 cmp eax, 100
 je .Lx00132_0
 mov eax, dword ptr [rbp + 5216]
 cmp eax, 6
 jne .Lx00132_2
 mov eax, dword ptr [rbp + 1232]
 cmp eax, 6
 jne .Lx00132_2
.Lx00132_1:
 mov rax, qword ptr [rbp + 5224]
 mov rcx, qword ptr [rbp + 1240]
 cmp rax, rcx
 je xchain00044_n00127_α
 mov rcx, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1168], rcx
 mov rcx, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1176], rcx
 jmp xchain00044_n00133_α
.Lx00132_0:
 mov rdi, qword ptr [rbp + 5216]
 mov rsi, qword ptr [rbp + 5224]
 mov rdx, qword ptr [rbp + 1232]
 mov rcx, qword ptr [rbp + 1240]
 mov r8d, 10
 lea r9, [rbp + 1168]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00132_1
 cmp eax, 1
 je xchain00044_n00127_α
 jmp xchain00044_n00133_α
.Lx00132_2:
 mov rdi, qword ptr [rbp + 5216]
 mov rsi, qword ptr [rbp + 5224]
 mov rdx, qword ptr [rbp + 1232]
 mov rcx, qword ptr [rbp + 1240]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00044_n00127_α
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1176], rax
 jmp xchain00044_n00133_α
 xchain00044_n00130_β:
 jmp xchain00044_n00127_α
# IR_LIT_INTEGER
 xchain00044_n00131_α:
 mov qword ptr [rbp + 1136], 6
 mov rax, qword ptr [rip + .Lx00134_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain00044_n00006_α
 xchain00044_n00131_β:
 jmp xchain00044_n95_α
.Lx00134_0:
 .quad 0
# IR_MOVE_LABEL
 xchain00044_n00133_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1048], rax
 lea rax, [rip + xchain00044_n00127_α]
 mov qword ptr [rbp + 1056], rax
 jmp xchain00044_n00135_α
 xchain00044_n00133_β:
 jmp xchain00044_n95_α
 xchain00044_n00006_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5200]
 cmp eax, 100
 je .Lx00136_0
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 100
 je .Lx00136_0
 mov eax, dword ptr [rbp + 5200]
 cmp eax, 6
 jne .Lx00136_2
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 6
 jne .Lx00136_2
.Lx00136_1:
 mov rax, qword ptr [rbp + 5208]
 mov rcx, qword ptr [rbp + 1144]
 cmp rax, rcx
 je xchain00044_n95_α
 mov rcx, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1072], rcx
 mov rcx, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1080], rcx
 jmp xchain00044_n00137_α
.Lx00136_0:
 mov rdi, qword ptr [rbp + 5200]
 mov rsi, qword ptr [rbp + 5208]
 mov rdx, qword ptr [rbp + 1136]
 mov rcx, qword ptr [rbp + 1144]
 mov r8d, 10
 lea r9, [rbp + 1072]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00136_1
 cmp eax, 1
 je xchain00044_n95_α
 jmp xchain00044_n00137_α
.Lx00136_2:
 mov rdi, qword ptr [rbp + 5200]
 mov rsi, qword ptr [rbp + 5208]
 mov rdx, qword ptr [rbp + 1136]
 mov rcx, qword ptr [rbp + 1144]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00044_n95_α
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00044_n00137_α
 xchain00044_n00006_β:
 jmp xchain00044_n95_α
# IR_LIT_INTEGER
 xchain00044_n00135_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx00138_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00044_n00007_α
 xchain00044_n00135_β:
 jmp xchain00044_n95_α
.Lx00138_0:
 .quad 5000
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00044_n00139_α:
 jmp qword ptr [rbp + 1056]
 xchain00044_n00139_β:
 jmp xchain00044_n95_α
# IR_MOVE_LABEL
 xchain00044_n00137_α:
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1048], rax
 lea rax, [rip + xchain00044_n95_α]
 mov qword ptr [rbp + 1056], rax
 jmp xchain00044_n00135_α
 xchain00044_n00137_β:
 jmp xchain00044_n95_α
# IR_VAR
 xchain00044_n00007_α:
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 760], rax
 jmp xchain00044_n00140_α
 xchain00044_n00007_β:
 jmp xchain00044_n95_α
# IR_COERCE_NUMERIC
 xchain00044_n00140_α:
 mov eax, dword ptr [rbp + 5216]
 cmp eax, 7
 je .Lx00141_1
 cmp eax, 6
 jne .Lx00141_0
 mov eax, dword ptr [rbp + 720]
 cmp eax, 6
 jne .Lx00141_0
.Lx00141_1:
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 696], rax
 jmp .Lx00141_2
.Lx00141_0:
 lea rdi, [rbp + 5216]
 lea rsi, [rbp + 720]
 lea rdx, [rbp + 688]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00141_2:
 jmp xchain00044_n00008_α
 xchain00044_n00140_β:
 jmp xchain00044_n95_α
 xchain00044_n00008_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 688]
 cmp eax, 100
 je .Lx00142_0
 mov eax, dword ptr [rbp + 688]
 cmp eax, 6
 jne .Lx00142_2
.Lx00142_1:
 mov rax, 5000
 mov rcx, qword ptr [rbp + 696]
 add rax, rcx
 mov qword ptr [rbp + 656], 6
 mov qword ptr [rbp + 664], rax
 jmp xchain00044_n00009_α
.Lx00142_0:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 mov r8d, 0
 lea r9, [rbp + 656]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00142_3
.Lx00142_2:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00044_n95_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
.Lx00142_3:
 jmp xchain00044_n00009_α
 xchain00044_n00008_β:
 jmp xchain00044_n95_α
# IR_LIT_INTEGER
 xchain00044_n00009_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx00143_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain00044_n00144_α
 xchain00044_n00009_β:
 jmp xchain00044_n95_α
.Lx00143_0:
 .quad 4
 xchain00044_n00144_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 616], rax
# marshal arg1 = producer-box slot [zr+784] -> [zr+624]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 632], rax
  .section .rodata
  .Lrkfn536: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn536]
 lea rsi, [rbp + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00044_n95_α
 jmp xchain00044_n00010_α
 xchain00044_n00144_β:
 jmp xchain00044_n95_α
# IR_LIT_INTEGER
 xchain00044_n00010_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx00145_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00044_n00146_α
 xchain00044_n00010_β:
 jmp xchain00044_n95_α
.Lx00145_0:
 .quad 5000
# IR_VAR
 xchain00044_n00146_α:
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 984], rax
 jmp xchain00044_n00147_α
 xchain00044_n00146_β:
 jmp xchain00044_n95_α
# IR_COERCE_NUMERIC
 xchain00044_n00147_α:
 mov eax, dword ptr [rbp + 5200]
 cmp eax, 7
 je .Lx00148_1
 cmp eax, 6
 jne .Lx00148_0
 mov eax, dword ptr [rbp + 944]
 cmp eax, 6
 jne .Lx00148_0
.Lx00148_1:
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 920], rax
 jmp .Lx00148_2
.Lx00148_0:
 lea rdi, [rbp + 5200]
 lea rsi, [rbp + 944]
 lea rdx, [rbp + 912]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00148_2:
 jmp xchain00044_n00149_α
 xchain00044_n00147_β:
 jmp xchain00044_n95_α
 xchain00044_n00149_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 912]
 cmp eax, 100
 je .Lx00150_0
 mov eax, dword ptr [rbp + 912]
 cmp eax, 6
 jne .Lx00150_2
.Lx00150_1:
 mov rax, 5000
 mov rcx, qword ptr [rbp + 920]
 add rax, rcx
 mov qword ptr [rbp + 880], 6
 mov qword ptr [rbp + 888], rax
 jmp xchain00044_n00151_α
.Lx00150_0:
 mov rdi, qword ptr [rbp + 944]
 mov rsi, qword ptr [rbp + 952]
 mov rdx, qword ptr [rbp + 912]
 mov rcx, qword ptr [rbp + 920]
 mov r8d, 0
 lea r9, [rbp + 880]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00150_3
.Lx00150_2:
 mov rdi, qword ptr [rbp + 944]
 mov rsi, qword ptr [rbp + 952]
 mov rdx, qword ptr [rbp + 912]
 mov rcx, qword ptr [rbp + 920]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00044_n95_α
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
.Lx00150_3:
 jmp xchain00044_n00151_α
 xchain00044_n00149_β:
 jmp xchain00044_n95_α
# IR_LIT_INTEGER
 xchain00044_n00151_α:
 mov qword ptr [rbp + 1008], 6
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00044_n00153_α
 xchain00044_n00151_β:
 jmp xchain00044_n95_α
.Lx00152_0:
 .quad 4
 xchain00044_n00153_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+832]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 840], rax
# marshal arg1 = producer-box slot [zr+1008] -> [zr+848]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 856], rax
  .section .rodata
  .Lrkfn545: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn545]
 lea rsi, [rbp + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain00044_n95_α
 jmp xchain00044_n00154_α
 xchain00044_n00153_β:
 jmp xchain00044_n95_α
 xchain00044_n00154_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+544]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 552], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+560]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 568], rax
  .section .rodata
  .Lrkfn547: .string "writes"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn547]
 lea rsi, [rbp + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain00044_n95_α
 jmp xchain00044_n00155_α
 xchain00044_n00154_β:
 jmp xchain00044_n95_α
 xchain00044_n00155_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 mov qword ptr [rbp + 5184], rax
 mov qword ptr [rbp + 5192], rdx
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00044_n00156_α
 xchain00044_n00155_β:
 jmp xchain00044_n95_α
# IR_MOVE_LABEL
 xchain00044_n00156_α:
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
 lea rax, [rip + xchain00044_n95_α]
 mov qword ptr [rbp + 496], rax
 jmp xchain00044_n95_α
 xchain00044_n00156_β:
 jmp xchain00044_n95_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00044_n00157_α:
 jmp qword ptr [rbp + 496]
 xchain00044_n00157_β:
 jmp xchain00044_n95_α
proc_putchain_res:
add rsp, 8
pop rbp
proc_putchain_β:
jmp proc_putchain_ω
proc_putchain_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 5384]
lea rsp, [rbp + 5408]
mov rbp, [rbp + 5400]
jmp rax
proc_putchain_ω:
mov rax, [rbp + 5392]
lea rsp, [rbp + 5408]
mov rbp, [rbp + 5400]
jmp rax
  .globl proc_putdel_α
proc_putdel_α:
#=======================================================================================================================
    .global proc_putdel_α
    .global proc_putdel_β
    .global proc_putdel_γ
    .global proc_putdel_ω
  sub rsp, 2224
  mov [rsp + 2200], rcx
  mov [rsp + 2208], rdx
  mov [rsp + 2216], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 2192
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 2152], rsp
  mov rdi, rsp
  mov esi, 2192
  call rt_jmp_frame_lexprep@PLT
proc_putdel_α_body:
# IR_VAR
 xchain00158_n0_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain00158_n1_α
 xchain00158_n0_β:
 jmp xchain00158_n2_α
# IR_VAR
 xchain00158_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2120], rax
 jmp xchain00158_n3_α
 xchain00158_n1_β:
 jmp xchain00158_n2_α
# KEYWORD_read
 xchain00158_n2_α:
 mov rdi, qword ptr [rip + .Lx00159_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain00158_n4_α
 xchain00158_n2_β:
 jmp xchain00158_n7_α
.Lx00159_0:
 .quad .Lx00159_0_s
.Lx00159_0_s:
 .string "&progname"
 xchain00158_n3_α:
# BOX IR_CALL seek(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn559: .string "seek"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn559]
 lea rsi, [rbp + 2032]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain00158_n2_α
 jmp xchain00158_n5_α
 xchain00158_n3_β:
 jmp xchain00158_n2_α
# IR_LIT_STRING
 xchain00158_n4_α:
 mov qword ptr [rbp + 1984], 1
 mov rax, qword ptr [rip + .Lx00160_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain00158_n6_α
 xchain00158_n4_β:
 jmp xchain00158_n7_α
.Lx00160_0:
 .quad .Lx00160_0_s
.Lx00160_0_s:
 .string ":can't reposition input file"
# IR_MOVE_LABEL
 xchain00158_n5_α:
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1864], rax
 lea rax, [rip + xchain00158_n2_α]
 mov qword ptr [rbp + 1872], rax
 jmp xchain00158_n7_α
 xchain00158_n5_β:
 jmp xchain00158_n7_α
 xchain00158_n6_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1952] -> [zr+1904]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1912], rax
# marshal arg1 = producer-box slot [zr+1984] -> [zr+1920]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1928], rax
  .section .rodata
  .Lrkfn564: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn564]
 lea rsi, [rbp + 1904]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 cmp eax, 99
 je xchain00158_n7_α
 jmp xchain00158_n9_α
 xchain00158_n6_β:
 jmp xchain00158_n7_α
# IR_VAR
 xchain00158_n7_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain00158_n10_α
 xchain00158_n7_β:
 jmp xchain00158_n11_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00158_n8_α:
 jmp qword ptr [rbp + 1872]
 xchain00158_n8_β:
 jmp xchain00158_n7_α
# IR_MOVE_LABEL
 xchain00158_n9_α:
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 1864], rax
 lea rax, [rip + xchain00158_n7_α]
 mov qword ptr [rbp + 1872], rax
 jmp xchain00158_n7_α
 xchain00158_n9_β:
 jmp xchain00158_n7_α
 xchain00158_n10_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1824] -> [zr+1792]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1800], rax
  .section .rodata
  .Lrkfn571: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn571]
 lea rsi, [rbp + 1792]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 cmp eax, 99
 je xchain00158_n11_α
 jmp xchain00158_n12_α
 xchain00158_n10_β:
 jmp xchain00158_n11_α
# KEYWORD_read
 xchain00158_n11_α:
 mov rdi, qword ptr [rip + .Lx00161_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain00158_n13_α
 xchain00158_n11_β:
 jmp xchain00158_n17_α
.Lx00161_0:
 .quad .Lx00161_0_s
.Lx00161_0_s:
 .string "&progname"
# IR_MOVE_LABEL
 xchain00158_n12_α:
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1624], rax
 lea rax, [rip + xchain00158_n11_α]
 mov qword ptr [rbp + 1632], rax
 jmp xchain00158_n14_α
 xchain00158_n12_β:
 jmp xchain00158_n17_α
# IR_LIT_STRING
 xchain00158_n13_α:
 mov qword ptr [rbp + 1744], 1
 mov rax, qword ptr [rip + .Lx00162_0]
 mov qword ptr [rbp + 1752], rax
 jmp xchain00158_n16_α
 xchain00158_n13_β:
 jmp xchain00158_n17_α
.Lx00162_0:
 .quad .Lx00162_0_s
.Lx00162_0_s:
 .string ": input file changed during processing"
 xchain00158_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1616]
 mov rdx, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain00158_n17_α
 xchain00158_n14_β:
 jmp xchain00158_n17_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00158_n15_α:
 jmp qword ptr [rbp + 1632]
 xchain00158_n15_β:
 jmp xchain00158_n17_α
 xchain00158_n16_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1712] -> [zr+1664]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1672], rax
# marshal arg1 = producer-box slot [zr+1744] -> [zr+1680]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1688], rax
  .section .rodata
  .Lrkfn580: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn580]
 lea rsi, [rbp + 1664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 cmp eax, 99
 je xchain00158_n17_α
 jmp xchain00158_n18_α
 xchain00158_n16_β:
 jmp xchain00158_n17_α
# IR_VAR
 xchain00158_n17_α:
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 1576], rax
 jmp xchain00158_n19_α
 xchain00158_n17_β:
 jmp xchain00158_n20_α
# IR_MOVE_LABEL
 xchain00158_n18_α:
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1624], rax
 lea rax, [rip + xchain00158_n17_α]
 mov qword ptr [rbp + 1632], rax
 jmp xchain00158_n14_α
 xchain00158_n18_β:
 jmp xchain00158_n17_α
 xchain00158_n19_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1568]
 mov rdx, qword ptr [rbp + 1576]
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
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain00158_n20_α
 jmp xchain00158_n21_α
 xchain00158_n19_β:
 jmp xchain00158_n20_α
.Lx00163_0:
 .quad .Lx00163_0_s
.Lx00163_0_s:
 .string "crack"
# IR_VAR
 xchain00158_n20_α:
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 1416], rax
 jmp xchain00158_n22_α
 xchain00158_n20_β:
 jmp xchain00158_n23_α
 xchain00158_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1520]
 mov rdx, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain00158_n20_α
 xchain00158_n21_β:
 jmp xchain00158_n20_α
# IR_LIT_INTEGER
 xchain00158_n22_α:
 mov qword ptr [rbp + 1440], 6
 mov rax, qword ptr [rip + .Lx00164_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain00158_n24_α
 xchain00158_n22_β:
 jmp xchain00158_n23_α
.Lx00164_0:
 .quad 23
# IR_VAR
 xchain00158_n23_α:
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 40], rax
 jmp xchain00158_n25_α
 xchain00158_n23_β:
 jmp proc_putdel_ω
# IR_LIT_INTEGER
 xchain00158_n24_α:
 mov qword ptr [rbp + 1472], 6
 mov rax, qword ptr [rip + .Lx00165_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain00158_n26_α
 xchain00158_n24_β:
 jmp xchain00158_n23_α
.Lx00165_0:
 .quad 0
# IR_RETURN
 xchain00158_n25_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_putdel_γ
# IR_SUBSCRIPT section
 xchain00158_n26_α:
 mov rdi, qword ptr [rbp + 1408]
 mov rsi, qword ptr [rbp + 1416]
 mov rdx, qword ptr [rbp + 1440]
 mov rcx, qword ptr [rbp + 1448]
 mov r8, qword ptr [rbp + 1472]
 mov r9, qword ptr [rbp + 1480]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00158_n23_α
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain00158_n27_α
 xchain00158_n26_β:
 jmp xchain00158_n23_α
# IR_GEN_SCAN
 xchain00158_n27_α:
 mov rdi, qword ptr [rbp + 1376]
 mov rsi, qword ptr [rbp + 1384]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00158_n28_α
 xchain00158_n27_β:
 jmp xchain00158_n23_α
# IR_VAR
 xchain00158_n28_α:
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 1352], rax
 jmp xchain00158_n29_α
 xchain00158_n28_β:
 jmp xchain00158_n30_α
# IR_FIELD_GET
 xchain00158_n29_α:
 mov rdi, qword ptr [rip + .Lx00166_0]
 mov rsi, qword ptr [rbp + 1344]
 mov rdx, qword ptr [rbp + 1352]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00158_n30_α
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain00158_n31_α
 xchain00158_n29_β:
 jmp xchain00158_n30_α
.Lx00166_0:
 .quad .Lx00166_0_s
.Lx00166_0_s:
 .string "rev"
# IR_LIT_INTEGER
 xchain00158_n30_α:
 mov qword ptr [rbp + 1248], 6
 mov rax, qword ptr [rip + .Lx00167_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00158_n32_α
 xchain00158_n30_β:
 jmp xchain00158_n34_α
.Lx00167_0:
 .quad 0
# IR_UNOP
 xchain00158_n31_α:
 mov eax, dword ptr [rbp + 1312]
 cmp eax, 99
 je xchain00158_n30_α
 cmp eax, 0
 jne xchain00158_n30_α
 mov qword ptr [rbp + 1280], 0
 mov qword ptr [rbp + 1288], 0
 jmp xchain00158_n33_α
 xchain00158_n31_β:
 jmp xchain00158_n30_α
# IR_SCAN_TAB
 xchain00158_n32_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00168_0
 add rax, r15
 add rax, 1
.Lx00168_0:
 cmp rax, 1
 jge .Lx00168_239
 add rsp, 16
 jmp xchain00158_n34_α
.Lx00168_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00168_240
 add rsp, 16
 jmp xchain00158_n34_α
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
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain00158_n34_α
 xchain00158_n32_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00158_n34_α
# IR_VAR
 xchain00158_n33_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00158_n35_α
 xchain00158_n33_β:
 jmp xchain00158_n36_α
# IR_VAR
 xchain00158_n34_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00158_n37_α
 xchain00158_n34_β:
 jmp xchain00158_n36_α
# IR_LIT_INTEGER
 xchain00158_n35_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx00169_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00158_n38_α
 xchain00158_n35_β:
 jmp xchain00158_n36_α
.Lx00169_0:
 .quad 4
# IR_GEN_SCAN
 xchain00158_n36_α:
 lea rdi, [rbp + 80]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 80]
 mov r14, qword ptr [rbp + 88]
 mov r15, qword ptr [rbp + 96]
 jmp xchain00158_n23_α
 xchain00158_n36_β:
 jmp xchain00158_n23_α
# IR_LIT_INTEGER
 xchain00158_n37_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx00170_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain00158_n39_α
 xchain00158_n37_β:
 jmp xchain00158_n36_α
.Lx00170_0:
 .quad 5000
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00158_n38_α:
 sub rsp, 16
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00171_239
 add rsp, 16
 jmp xchain00158_n36_α
.Lx00171_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00171_240
 add rsp, 16
 jmp xchain00158_n36_α
.Lx00171_240:
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
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00158_n40_α
 xchain00158_n38_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00158_n36_α
# IR_LIT_INTEGER
 xchain00158_n39_α:
 mov qword ptr [rbp + 928], 6
 mov rax, qword ptr [rip + .Lx00172_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain00158_n41_α
 xchain00158_n39_β:
 jmp xchain00158_n36_α
.Lx00172_0:
 .quad 18446744073709551612
# IR_LIT_INTEGER
 xchain00158_n40_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx00173_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain00158_n42_α
 xchain00158_n40_β:
 jmp xchain00158_n36_α
.Lx00173_0:
 .quad 5000
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00158_n41_α:
 sub rsp, 16
 mov rax, -4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00174_239
 add rsp, 16
 jmp xchain00158_n36_α
.Lx00174_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00174_240
 add rsp, 16
 jmp xchain00158_n36_α
.Lx00174_240:
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
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain00158_n43_α
 xchain00158_n41_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00158_n36_α
# IR_COERCE_NUMERIC
 xchain00158_n42_α:
 mov eax, dword ptr [rbp + 336]
 cmp eax, 7
 je .Lx00175_1
 cmp eax, 6
 jne .Lx00175_0
 mov eax, dword ptr [rbp + 400]
 cmp eax, 6
 jne .Lx00175_0
.Lx00175_1:
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 312], rax
 jmp .Lx00175_2
.Lx00175_0:
 lea rdi, [rbp + 336]
 lea rsi, [rbp + 400]
 lea rdx, [rbp + 304]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00175_2:
 jmp xchain00158_n44_α
 xchain00158_n42_β:
 jmp xchain00158_n36_α
# IR_COERCE_NUMERIC
 xchain00158_n43_α:
 mov eax, dword ptr [rbp + 896]
 cmp eax, 7
 je .Lx00176_1
 cmp eax, 6
 jne .Lx00176_0
 mov eax, dword ptr [rbp + 864]
 cmp eax, 6
 jne .Lx00176_0
.Lx00176_1:
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 840], rax
 jmp .Lx00176_2
.Lx00176_0:
 lea rdi, [rbp + 896]
 lea rsi, [rbp + 864]
 lea rdx, [rbp + 832]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00176_2:
 jmp xchain00158_n45_α
 xchain00158_n43_β:
 jmp xchain00158_n36_α
 xchain00158_n44_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 304]
 cmp eax, 100
 je .Lx00177_0
 mov eax, dword ptr [rbp + 304]
 cmp eax, 6
 jne .Lx00177_2
.Lx00177_1:
 mov rax, qword ptr [rbp + 312]
 mov rcx, 5000
 sub rax, rcx
 mov qword ptr [rbp + 272], 6
 mov qword ptr [rbp + 280], rax
 jmp xchain00158_n46_α
.Lx00177_0:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 400]
 mov rcx, qword ptr [rbp + 408]
 mov r8d, 1
 lea r9, [rbp + 272]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00177_3
.Lx00177_2:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 400]
 mov rcx, qword ptr [rbp + 408]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00158_n36_α
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
.Lx00177_3:
 jmp xchain00158_n46_α
 xchain00158_n44_β:
 jmp xchain00158_n36_α
 xchain00158_n45_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 832]
 cmp eax, 100
 je .Lx00178_0
 mov eax, dword ptr [rbp + 832]
 cmp eax, 6
 jne .Lx00178_2
.Lx00178_1:
 mov rax, 5000
 mov rcx, qword ptr [rbp + 840]
 sub rax, rcx
 mov qword ptr [rbp + 800], 6
 mov qword ptr [rbp + 808], rax
 jmp xchain00158_n47_α
.Lx00178_0:
 mov rdi, qword ptr [rbp + 864]
 mov rsi, qword ptr [rbp + 872]
 mov rdx, qword ptr [rbp + 832]
 mov rcx, qword ptr [rbp + 840]
 mov r8d, 1
 lea r9, [rbp + 800]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00178_3
.Lx00178_2:
 mov rdi, qword ptr [rbp + 864]
 mov rsi, qword ptr [rbp + 872]
 mov rdx, qword ptr [rbp + 832]
 mov rcx, qword ptr [rbp + 840]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00158_n36_α
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
.Lx00178_3:
 jmp xchain00158_n47_α
 xchain00158_n45_β:
 jmp xchain00158_n36_α
 xchain00158_n46_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+192]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 200], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+208]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 216], rax
  .section .rodata
  .Lrkfn624: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn624]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00158_n36_α
 jmp xchain00158_n48_α
 xchain00158_n46_β:
 jmp xchain00158_n36_α
 xchain00158_n47_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+720]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 728], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+736]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 744], rax
  .section .rodata
  .Lrkfn626: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn626]
 lea rsi, [rbp + 720]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain00158_n36_α
 jmp xchain00158_n49_α
 xchain00158_n47_β:
 jmp xchain00158_n36_α
# IR_VAR
 xchain00158_n48_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00158_n50_α
 xchain00158_n48_β:
 jmp xchain00158_n33_α
# IR_VAR
 xchain00158_n49_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain00158_n51_α
 xchain00158_n49_β:
 jmp xchain00158_n34_α
# IR_LIT_INTEGER
 xchain00158_n50_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx00179_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00158_n52_α
 xchain00158_n50_β:
 jmp xchain00158_n33_α
.Lx00179_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00158_n51_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx00180_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00158_n53_α
 xchain00158_n51_β:
 jmp xchain00158_n34_α
.Lx00180_0:
 .quad 5000
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00158_n52_α:
 sub rsp, 16
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00181_239
 add rsp, 16
 jmp xchain00158_n33_α
.Lx00181_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00181_240
 add rsp, 16
 jmp xchain00158_n33_α
.Lx00181_240:
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
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00158_n54_α
 xchain00158_n52_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00158_n33_α
# IR_LIT_INTEGER
 xchain00158_n53_α:
 mov qword ptr [rbp + 1184], 6
 mov rax, qword ptr [rip + .Lx00182_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain00158_n55_α
 xchain00158_n53_β:
 jmp xchain00158_n34_α
.Lx00182_0:
 .quad 18446744073709551612
# IR_LIT_INTEGER
 xchain00158_n54_α:
 mov qword ptr [rbp + 656], 6
 mov rax, qword ptr [rip + .Lx00183_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain00158_n56_α
 xchain00158_n54_β:
 jmp xchain00158_n33_α
.Lx00183_0:
 .quad 5000
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00158_n55_α:
 sub rsp, 16
 mov rax, -4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00184_239
 add rsp, 16
 jmp xchain00158_n34_α
.Lx00184_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00184_240
 add rsp, 16
 jmp xchain00158_n34_α
.Lx00184_240:
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
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain00158_n57_α
 xchain00158_n55_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00158_n34_α
# IR_COERCE_NUMERIC
 xchain00158_n56_α:
 mov eax, dword ptr [rbp + 592]
 cmp eax, 7
 je .Lx00185_1
 cmp eax, 6
 jne .Lx00185_0
 mov eax, dword ptr [rbp + 656]
 cmp eax, 6
 jne .Lx00185_0
.Lx00185_1:
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
 jmp .Lx00185_2
.Lx00185_0:
 lea rdi, [rbp + 592]
 lea rsi, [rbp + 656]
 lea rdx, [rbp + 560]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00185_2:
 jmp xchain00158_n58_α
 xchain00158_n56_β:
 jmp xchain00158_n33_α
# IR_COERCE_NUMERIC
 xchain00158_n57_α:
 mov eax, dword ptr [rbp + 1152]
 cmp eax, 7
 je .Lx00186_1
 cmp eax, 6
 jne .Lx00186_0
 mov eax, dword ptr [rbp + 1120]
 cmp eax, 6
 jne .Lx00186_0
.Lx00186_1:
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1096], rax
 jmp .Lx00186_2
.Lx00186_0:
 lea rdi, [rbp + 1152]
 lea rsi, [rbp + 1120]
 lea rdx, [rbp + 1088]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00186_2:
 jmp xchain00158_n59_α
 xchain00158_n57_β:
 jmp xchain00158_n34_α
 xchain00158_n58_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 560]
 cmp eax, 100
 je .Lx00187_0
 mov eax, dword ptr [rbp + 560]
 cmp eax, 6
 jne .Lx00187_2
.Lx00187_1:
 mov rax, qword ptr [rbp + 568]
 mov rcx, 5000
 sub rax, rcx
 mov qword ptr [rbp + 528], 6
 mov qword ptr [rbp + 536], rax
 jmp xchain00158_n60_α
.Lx00187_0:
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 mov rdx, qword ptr [rbp + 656]
 mov rcx, qword ptr [rbp + 664]
 mov r8d, 1
 lea r9, [rbp + 528]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00187_3
.Lx00187_2:
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 mov rdx, qword ptr [rbp + 656]
 mov rcx, qword ptr [rbp + 664]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00158_n33_α
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
.Lx00187_3:
 jmp xchain00158_n60_α
 xchain00158_n58_β:
 jmp xchain00158_n33_α
 xchain00158_n59_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 100
 je .Lx00188_0
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 6
 jne .Lx00188_2
.Lx00188_1:
 mov rax, 5000
 mov rcx, qword ptr [rbp + 1096]
 sub rax, rcx
 mov qword ptr [rbp + 1056], 6
 mov qword ptr [rbp + 1064], rax
 jmp xchain00158_n61_α
.Lx00188_0:
 mov rdi, qword ptr [rbp + 1120]
 mov rsi, qword ptr [rbp + 1128]
 mov rdx, qword ptr [rbp + 1088]
 mov rcx, qword ptr [rbp + 1096]
 mov r8d, 1
 lea r9, [rbp + 1056]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00188_3
.Lx00188_2:
 mov rdi, qword ptr [rbp + 1120]
 mov rsi, qword ptr [rbp + 1128]
 mov rdx, qword ptr [rbp + 1088]
 mov rcx, qword ptr [rbp + 1096]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00158_n34_α
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
.Lx00188_3:
 jmp xchain00158_n61_α
 xchain00158_n59_β:
 jmp xchain00158_n34_α
 xchain00158_n60_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+448]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 456], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+464]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 472], rax
  .section .rodata
  .Lrkfn644: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn644]
 lea rsi, [rbp + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00158_n33_α
 jmp xchain00158_n33_α
 xchain00158_n60_β:
 jmp xchain00158_n33_α
 xchain00158_n61_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn646: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn646]
 lea rsi, [rbp + 976]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain00158_n34_α
 jmp xchain00158_n34_α
 xchain00158_n61_β:
 jmp xchain00158_n34_α
proc_putdel_res:
add rsp, 8
pop rbp
proc_putdel_β:
jmp proc_putdel_ω
proc_putdel_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 2200]
lea rsp, [rbp + 2224]
mov rbp, [rbp + 2216]
jmp rax
proc_putdel_ω:
mov rax, [rbp + 2208]
lea rsp, [rbp + 2224]
mov rbp, [rbp + 2216]
jmp rax
  .globl proc_collapse_α
proc_collapse_α:
#=======================================================================================================================
    .global proc_collapse_α
    .global proc_collapse_β
    .global proc_collapse_γ
    .global proc_collapse_ω
  sub rsp, 5424
  mov [rsp + 5400], rcx
  mov [rsp + 5408], rdx
  mov [rsp + 5416], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 5392
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 5176], rsp
  mov rdi, rsp
  mov esi, 5392
  call rt_jmp_frame_lexprep@PLT
proc_collapse_α_body:
# IR_VAR
 xchain00189_n0_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 5104], rax
 mov qword ptr [rbp + 5112], rdx
 jmp xchain00189_n1_α
 xchain00189_n0_β:
 jmp xchain00189_n2_α
# IR_LIT_INTEGER
 xchain00189_n1_α:
 mov qword ptr [rbp + 5136], 6
 mov rax, qword ptr [rip + .Lx00190_0]
 mov qword ptr [rbp + 5144], rax
 jmp xchain00189_n3_α
 xchain00189_n1_β:
 jmp xchain00189_n2_α
.Lx00190_0:
 .quad 0
# IR_VAR
 xchain00189_n2_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 4976], rax
 mov qword ptr [rbp + 4984], rdx
 jmp xchain00189_n4_α
 xchain00189_n2_β:
 jmp xchain00189_n5_α
 xchain00189_n3_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5104]
 cmp eax, 100
 je .Lx00191_0
 mov eax, dword ptr [rbp + 5136]
 cmp eax, 100
 je .Lx00191_0
 mov eax, dword ptr [rbp + 5104]
 cmp eax, 6
 jne .Lx00191_2
 mov eax, dword ptr [rbp + 5136]
 cmp eax, 6
 jne .Lx00191_2
.Lx00191_1:
 mov rax, qword ptr [rbp + 5112]
 mov rcx, qword ptr [rbp + 5144]
 cmp rax, rcx
 jg xchain00189_n2_α
 mov rcx, qword ptr [rbp + 5136]
 mov qword ptr [rbp + 5072], rcx
 mov rcx, qword ptr [rbp + 5144]
 mov qword ptr [rbp + 5080], rcx
 jmp xchain00189_n6_α
.Lx00191_0:
 mov rdi, qword ptr [rbp + 5104]
 mov rsi, qword ptr [rbp + 5112]
 mov rdx, qword ptr [rbp + 5136]
 mov rcx, qword ptr [rbp + 5144]
 mov r8d, 6
 lea r9, [rbp + 5072]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00191_1
 cmp eax, 1
 je xchain00189_n2_α
 jmp xchain00189_n6_α
.Lx00191_2:
 mov rdi, qword ptr [rbp + 5104]
 mov rsi, qword ptr [rbp + 5112]
 mov rdx, qword ptr [rbp + 5136]
 mov rcx, qword ptr [rbp + 5144]
 mov r8d, 6
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00189_n2_α
 mov rax, qword ptr [rbp + 5136]
 mov qword ptr [rbp + 5072], rax
 mov rax, qword ptr [rbp + 5144]
 mov qword ptr [rbp + 5080], rax
 jmp xchain00189_n6_α
 xchain00189_n3_β:
 jmp xchain00189_n2_α
# IR_VAR
 xchain00189_n4_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 5008], rax
 mov qword ptr [rbp + 5016], rdx
 jmp xchain00189_n7_α
 xchain00189_n4_β:
 jmp xchain00189_n5_α
# IR_VAR
 xchain00189_n5_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 4768], rax
 mov qword ptr [rbp + 4776], rdx
 jmp xchain00189_n8_α
 xchain00189_n5_β:
 jmp xchain00189_n9_α
# IR_RETURN
 xchain00189_n6_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_collapse_γ
# IR_COERCE_NUMERIC
 xchain00189_n7_α:
 mov eax, dword ptr [rbp + 4976]
 cmp eax, 7
 je .Lx00192_1
 cmp eax, 6
 jne .Lx00192_0
 mov eax, dword ptr [rbp + 5008]
 cmp eax, 6
 jne .Lx00192_0
.Lx00192_1:
 mov rax, qword ptr [rbp + 4976]
 mov qword ptr [rbp + 4944], rax
 mov rax, qword ptr [rbp + 4984]
 mov qword ptr [rbp + 4952], rax
 jmp .Lx00192_2
.Lx00192_0:
 lea rdi, [rbp + 4976]
 lea rsi, [rbp + 5008]
 lea rdx, [rbp + 4944]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00192_2:
 jmp xchain00189_n10_α
 xchain00189_n7_β:
 jmp xchain00189_n5_α
# KEYWORD_read
 xchain00189_n8_α:
 mov rdi, qword ptr [rip + .Lx00193_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 4800], rax
 mov qword ptr [rbp + 4808], rdx
 jmp xchain00189_n11_α
 xchain00189_n8_β:
 jmp xchain00189_n9_α
.Lx00193_0:
 .quad .Lx00193_0_s
.Lx00193_0_s:
 .string "&pi"
# IR_VAR
 xchain00189_n9_α:
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 4528], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 4536], rax
 jmp xchain00189_n12_α
 xchain00189_n9_β:
 jmp xchain00189_n13_α
# IR_COERCE_NUMERIC
 xchain00189_n10_α:
 mov eax, dword ptr [rbp + 5008]
 cmp eax, 7
 je .Lx00194_1
 cmp eax, 6
 jne .Lx00194_0
 mov eax, dword ptr [rbp + 4976]
 cmp eax, 6
 jne .Lx00194_0
.Lx00194_1:
 mov rax, qword ptr [rbp + 5008]
 mov qword ptr [rbp + 4912], rax
 mov rax, qword ptr [rbp + 5016]
 mov qword ptr [rbp + 4920], rax
 jmp .Lx00194_2
.Lx00194_0:
 lea rdi, [rbp + 5008]
 lea rsi, [rbp + 4976]
 lea rdx, [rbp + 4912]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00194_2:
 jmp xchain00189_n14_α
 xchain00189_n10_β:
 jmp xchain00189_n5_α
# IR_COERCE_NUMERIC
 xchain00189_n11_α:
 mov eax, dword ptr [rbp + 4768]
 cmp eax, 7
 je .Lx00195_1
 cmp eax, 6
 jne .Lx00195_0
 mov eax, dword ptr [rbp + 4800]
 cmp eax, 6
 jne .Lx00195_0
.Lx00195_1:
 mov rax, qword ptr [rbp + 4768]
 mov qword ptr [rbp + 4736], rax
 mov rax, qword ptr [rbp + 4776]
 mov qword ptr [rbp + 4744], rax
 jmp .Lx00195_2
.Lx00195_0:
 lea rdi, [rbp + 4768]
 lea rsi, [rbp + 4800]
 lea rdx, [rbp + 4736]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00195_2:
 jmp xchain00189_n15_α
 xchain00189_n11_β:
 jmp xchain00189_n9_α
# KEYWORD_read
 xchain00189_n12_α:
 mov rdi, qword ptr [rip + .Lx00196_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 jmp xchain00189_n16_α
 xchain00189_n12_β:
 jmp xchain00189_n13_α
.Lx00196_0:
 .quad .Lx00196_0_s
.Lx00196_0_s:
 .string "&pi"
# IR_VAR
 xchain00189_n13_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 jmp xchain00189_n17_α
 xchain00189_n13_β:
 jmp xchain00189_n18_α
 xchain00189_n14_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 4944]
 cmp eax, 100
 je .Lx00197_0
 mov eax, dword ptr [rbp + 4912]
 cmp eax, 100
 je .Lx00197_0
 mov eax, dword ptr [rbp + 4944]
 cmp eax, 6
 jne .Lx00197_2
 mov eax, dword ptr [rbp + 4912]
 cmp eax, 6
 jne .Lx00197_2
.Lx00197_1:
 mov rax, qword ptr [rbp + 4952]
 mov rcx, qword ptr [rbp + 4920]
 imul rax, rcx
 mov qword ptr [rbp + 4880], 6
 mov qword ptr [rbp + 4888], rax
 jmp xchain00189_n19_α
.Lx00197_0:
 mov rdi, qword ptr [rbp + 4944]
 mov rsi, qword ptr [rbp + 4952]
 mov rdx, qword ptr [rbp + 4912]
 mov rcx, qword ptr [rbp + 4920]
 mov r8d, 2
 lea r9, [rbp + 4880]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00197_3
.Lx00197_2:
 mov rdi, qword ptr [rbp + 4944]
 mov rsi, qword ptr [rbp + 4952]
 mov rdx, qword ptr [rbp + 4912]
 mov rcx, qword ptr [rbp + 4920]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00189_n5_α
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
.Lx00197_3:
 jmp xchain00189_n19_α
 xchain00189_n14_β:
 jmp xchain00189_n5_α
# IR_COERCE_NUMERIC
 xchain00189_n15_α:
 mov eax, dword ptr [rbp + 4800]
 cmp eax, 7
 je .Lx00198_1
 cmp eax, 6
 jne .Lx00198_0
 mov eax, dword ptr [rbp + 4768]
 cmp eax, 6
 jne .Lx00198_0
.Lx00198_1:
 mov rax, qword ptr [rbp + 4800]
 mov qword ptr [rbp + 4704], rax
 mov rax, qword ptr [rbp + 4808]
 mov qword ptr [rbp + 4712], rax
 jmp .Lx00198_2
.Lx00198_0:
 lea rdi, [rbp + 4800]
 lea rsi, [rbp + 4768]
 lea rdx, [rbp + 4704]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00198_2:
 jmp xchain00189_n20_α
 xchain00189_n15_β:
 jmp xchain00189_n9_α
 xchain00189_n16_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 100
 je .Lx00199_0
 mov eax, dword ptr [rbp + 4560]
 cmp eax, 100
 je .Lx00199_0
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 6
 jne .Lx00199_2
 mov eax, dword ptr [rbp + 4560]
 cmp eax, 6
 jne .Lx00199_2
.Lx00199_1:
 mov rax, qword ptr [rbp + 5320]
 mov rcx, qword ptr [rbp + 4568]
 cmp rax, rcx
 jle xchain00189_n13_α
 mov rcx, qword ptr [rbp + 4560]
 mov qword ptr [rbp + 4496], rcx
 mov rcx, qword ptr [rbp + 4568]
 mov qword ptr [rbp + 4504], rcx
 jmp xchain00189_n21_α
.Lx00199_0:
 mov rdi, qword ptr [rbp + 5312]
 mov rsi, qword ptr [rbp + 5320]
 mov rdx, qword ptr [rbp + 4560]
 mov rcx, qword ptr [rbp + 4568]
 mov r8d, 7
 lea r9, [rbp + 4496]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00199_1
 cmp eax, 1
 je xchain00189_n13_α
 jmp xchain00189_n21_α
.Lx00199_2:
 mov rdi, qword ptr [rbp + 5312]
 mov rsi, qword ptr [rbp + 5320]
 mov rdx, qword ptr [rbp + 4560]
 mov rcx, qword ptr [rbp + 4568]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00189_n13_α
 mov rax, qword ptr [rbp + 4560]
 mov qword ptr [rbp + 4496], rax
 mov rax, qword ptr [rbp + 4568]
 mov qword ptr [rbp + 4504], rax
 jmp xchain00189_n21_α
 xchain00189_n16_β:
 jmp xchain00189_n13_α
# IR_VAR_REF
 xchain00189_n17_α:
 mov rdi, 1879052384
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4368], rax
 mov qword ptr [rbp + 4376], rdx
 jmp xchain00189_n22_α
 xchain00189_n17_β:
 jmp xchain00189_n18_α
# IR_VAR_REF
 xchain00189_n18_α:
 mov rdi, 1879052400
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 jmp xchain00189_n23_α
 xchain00189_n18_β:
 jmp xchain00189_n30_α
 xchain00189_n19_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4880]
 mov rdx, qword ptr [rbp + 4888]
 mov qword ptr [rbp + 5248], rax
 mov qword ptr [rbp + 5256], rdx
 mov qword ptr [rbp + 4864], rax
 mov qword ptr [rbp + 4872], rdx
 jmp xchain00189_n5_α
 xchain00189_n19_β:
 jmp xchain00189_n5_α
 xchain00189_n20_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 4736]
 cmp eax, 100
 je .Lx00200_0
 mov eax, dword ptr [rbp + 4704]
 cmp eax, 100
 je .Lx00200_0
 mov eax, dword ptr [rbp + 4736]
 cmp eax, 6
 jne .Lx00200_2
 mov eax, dword ptr [rbp + 4704]
 cmp eax, 6
 jne .Lx00200_2
.Lx00200_1:
 mov rax, qword ptr [rbp + 4744]
 mov rcx, qword ptr [rbp + 4712]
 imul rax, rcx
 mov qword ptr [rbp + 4672], 6
 mov qword ptr [rbp + 4680], rax
 jmp xchain00189_n24_α
.Lx00200_0:
 mov rdi, qword ptr [rbp + 4736]
 mov rsi, qword ptr [rbp + 4744]
 mov rdx, qword ptr [rbp + 4704]
 mov rcx, qword ptr [rbp + 4712]
 mov r8d, 2
 lea r9, [rbp + 4672]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00200_3
.Lx00200_2:
 mov rdi, qword ptr [rbp + 4736]
 mov rsi, qword ptr [rbp + 4744]
 mov rdx, qword ptr [rbp + 4704]
 mov rcx, qword ptr [rbp + 4712]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00189_n9_α
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
.Lx00200_3:
 jmp xchain00189_n24_α
 xchain00189_n20_β:
 jmp xchain00189_n9_α
 xchain00189_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4496]
 mov rdx, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 jmp xchain00189_n13_α
 xchain00189_n21_β:
 jmp xchain00189_n13_α
# IR_LIT_INTEGER
 xchain00189_n22_α:
 mov qword ptr [rbp + 4400], 6
 mov rax, qword ptr [rip + .Lx00201_0]
 mov qword ptr [rbp + 4408], rax
 jmp xchain00189_n25_α
 xchain00189_n22_β:
 jmp xchain00189_n18_α
.Lx00201_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00189_n23_α:
 mov qword ptr [rbp + 4144], 6
 mov rax, qword ptr [rip + .Lx00202_0]
 mov qword ptr [rbp + 4152], rax
 jmp xchain00189_n26_α
 xchain00189_n23_β:
 jmp xchain00189_n30_α
.Lx00202_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00189_n24_α:
 mov qword ptr [rbp + 4832], 6
 mov rax, qword ptr [rip + .Lx00203_0]
 mov qword ptr [rbp + 4840], rax
 jmp xchain00189_n27_α
 xchain00189_n24_β:
 jmp xchain00189_n9_α
.Lx00203_0:
 .quad 180
# IR_SUBSCRIPT x[i] variable
 xchain00189_n25_α:
 mov rdi, qword ptr [rbp + 4368]
 mov rsi, qword ptr [rbp + 4376]
 mov rdx, qword ptr [rbp + 4400]
 mov rcx, qword ptr [rbp + 4408]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00189_n18_α
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 jmp xchain00189_n28_α
 xchain00189_n25_β:
 jmp xchain00189_n18_α
# IR_SUBSCRIPT x[i] variable
 xchain00189_n26_α:
 mov rdi, qword ptr [rbp + 4112]
 mov rsi, qword ptr [rbp + 4120]
 mov rdx, qword ptr [rbp + 4144]
 mov rcx, qword ptr [rbp + 4152]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00189_n30_α
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 jmp xchain00189_n29_α
 xchain00189_n26_β:
 jmp xchain00189_n30_α
# IR_COERCE_NUMERIC
 xchain00189_n27_α:
 mov eax, dword ptr [rbp + 4672]
 cmp eax, 7
 je .Lx00204_1
 cmp eax, 6
 jne .Lx00204_0
 mov eax, dword ptr [rbp + 4832]
 cmp eax, 6
 jne .Lx00204_0
.Lx00204_1:
 mov rax, qword ptr [rbp + 4672]
 mov qword ptr [rbp + 4640], rax
 mov rax, qword ptr [rbp + 4680]
 mov qword ptr [rbp + 4648], rax
 jmp .Lx00204_2
.Lx00204_0:
 lea rdi, [rbp + 4672]
 lea rsi, [rbp + 4832]
 lea rdx, [rbp + 4640]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00204_2:
 jmp xchain00189_n31_α
 xchain00189_n27_β:
 jmp xchain00189_n9_α
# IR_DEREF variable -> value
 xchain00189_n28_α:
 mov rdi, qword ptr [rbp + 4432]
 mov rsi, qword ptr [rbp + 4440]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00189_n18_α
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 jmp xchain00189_n32_α
 xchain00189_n28_β:
 jmp xchain00189_n18_α
# IR_DEREF variable -> value
 xchain00189_n29_α:
 mov rdi, qword ptr [rbp + 4176]
 mov rsi, qword ptr [rbp + 4184]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00189_n30_α
 mov qword ptr [rbp + 4208], rax
 mov qword ptr [rbp + 4216], rdx
 jmp xchain00189_n33_α
 xchain00189_n29_β:
 jmp xchain00189_n30_α
# IR_VAR
 xchain00189_n30_α:
 mov rax, qword ptr [rbp + 5360]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 5368]
 mov qword ptr [rbp + 4040], rax
 jmp xchain00189_n34_α
 xchain00189_n30_β:
 jmp xchain00189_n35_α
 xchain00189_n31_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 4640]
 cmp eax, 100
 je .Lx00205_0
 mov eax, dword ptr [rbp + 4640]
 cmp eax, 6
 jne .Lx00205_2
.Lx00205_1:
 mov rax, qword ptr [rbp + 4648]
 mov rcx, 180
 cqo
 idiv rcx
 mov qword ptr [rbp + 4608], 6
 mov qword ptr [rbp + 4616], rax
 jmp xchain00189_n36_α
.Lx00205_0:
 mov rdi, qword ptr [rbp + 4640]
 mov rsi, qword ptr [rbp + 4648]
 mov rdx, qword ptr [rbp + 4832]
 mov rcx, qword ptr [rbp + 4840]
 mov r8d, 3
 lea r9, [rbp + 4608]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00205_3
.Lx00205_2:
 mov rdi, qword ptr [rbp + 4640]
 mov rsi, qword ptr [rbp + 4648]
 mov rdx, qword ptr [rbp + 4832]
 mov rcx, qword ptr [rbp + 4840]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00189_n9_α
 mov qword ptr [rbp + 4608], rax
 mov qword ptr [rbp + 4616], rdx
.Lx00205_3:
 jmp xchain00189_n36_α
 xchain00189_n31_β:
 jmp xchain00189_n9_α
# IR_COERCE_NUMERIC
 xchain00189_n32_α:
 mov eax, dword ptr [rbp + 4336]
 cmp eax, 7
 je .Lx00206_1
 cmp eax, 6
 jne .Lx00206_0
 mov eax, dword ptr [rbp + 4464]
 cmp eax, 6
 jne .Lx00206_0
.Lx00206_1:
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [rbp + 4304], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [rbp + 4312], rax
 jmp .Lx00206_2
.Lx00206_0:
 lea rdi, [rbp + 4336]
 lea rsi, [rbp + 4464]
 lea rdx, [rbp + 4304]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00206_2:
 jmp xchain00189_n37_α
 xchain00189_n32_β:
 jmp xchain00189_n18_α
 xchain00189_n33_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4208]
 mov rdx, qword ptr [rbp + 4216]
 mov qword ptr [rbp + 5360], rax
 mov qword ptr [rbp + 5368], rdx
 mov qword ptr [rbp + 4096], rax
 mov qword ptr [rbp + 4104], rdx
 jmp xchain00189_n30_α
 xchain00189_n33_β:
 jmp xchain00189_n30_α
# IR_VAR
 xchain00189_n34_α:
 mov rax, qword ptr [rbp + 5376]
 mov qword ptr [rbp + 4064], rax
 mov rax, qword ptr [rbp + 5384]
 mov qword ptr [rbp + 4072], rax
 jmp xchain00189_n38_α
 xchain00189_n34_β:
 jmp xchain00189_n35_α
# IR_LIT_INTEGER
 xchain00189_n35_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00207_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00189_n39_α
 xchain00189_n35_β:
 jmp xchain00189_n43_α
.Lx00207_0:
 .quad 2
 xchain00189_n36_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4608]
 mov rdx, qword ptr [rbp + 4616]
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 mov qword ptr [rbp + 4592], rax
 mov qword ptr [rbp + 4600], rdx
 jmp xchain00189_n9_α
 xchain00189_n36_β:
 jmp xchain00189_n9_α
# IR_COERCE_NUMERIC
 xchain00189_n37_α:
 mov eax, dword ptr [rbp + 4464]
 cmp eax, 7
 je .Lx00208_1
 cmp eax, 6
 jne .Lx00208_0
 mov eax, dword ptr [rbp + 4336]
 cmp eax, 6
 jne .Lx00208_0
.Lx00208_1:
 mov rax, qword ptr [rbp + 4464]
 mov qword ptr [rbp + 4272], rax
 mov rax, qword ptr [rbp + 4472]
 mov qword ptr [rbp + 4280], rax
 jmp .Lx00208_2
.Lx00208_0:
 lea rdi, [rbp + 4464]
 lea rsi, [rbp + 4336]
 lea rdx, [rbp + 4272]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00208_2:
 jmp xchain00189_n40_α
 xchain00189_n37_β:
 jmp xchain00189_n18_α
 xchain00189_n38_α:
# BOX IR_CALL atan(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4032] -> [zr+3984]
 mov rax, qword ptr [rbp + 4032]
 mov qword ptr [rbp + 3984], rax
 mov rax, qword ptr [rbp + 4040]
 mov qword ptr [rbp + 3992], rax
# marshal arg1 = producer-box slot [zr+4064] -> [zr+4000]
 mov rax, qword ptr [rbp + 4064]
 mov qword ptr [rbp + 4000], rax
 mov rax, qword ptr [rbp + 4072]
 mov qword ptr [rbp + 4008], rax
  .section .rodata
  .Lrkfn699: .string "atan"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn699]
 lea rsi, [rbp + 3984]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3968], rax
 mov qword ptr [rbp + 3976], rdx
 cmp eax, 99
 je xchain00189_n35_α
 jmp xchain00189_n41_α
 xchain00189_n38_β:
 jmp xchain00189_n35_α
# IR_VAR
 xchain00189_n39_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00189_n42_α
 xchain00189_n39_β:
 jmp xchain00189_n43_α
 xchain00189_n40_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 4304]
 cmp eax, 100
 je .Lx00209_0
 mov eax, dword ptr [rbp + 4272]
 cmp eax, 100
 je .Lx00209_0
 mov eax, dword ptr [rbp + 4304]
 cmp eax, 6
 jne .Lx00209_2
 mov eax, dword ptr [rbp + 4272]
 cmp eax, 6
 jne .Lx00209_2
.Lx00209_1:
 mov rax, qword ptr [rbp + 4312]
 mov rcx, qword ptr [rbp + 4280]
 imul rax, rcx
 mov qword ptr [rbp + 4240], 6
 mov qword ptr [rbp + 4248], rax
 jmp xchain00189_n44_α
.Lx00209_0:
 mov rdi, qword ptr [rbp + 4304]
 mov rsi, qword ptr [rbp + 4312]
 mov rdx, qword ptr [rbp + 4272]
 mov rcx, qword ptr [rbp + 4280]
 mov r8d, 2
 lea r9, [rbp + 4240]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00209_3
.Lx00209_2:
 mov rdi, qword ptr [rbp + 4304]
 mov rsi, qword ptr [rbp + 4312]
 mov rdx, qword ptr [rbp + 4272]
 mov rcx, qword ptr [rbp + 4280]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00189_n18_α
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
.Lx00209_3:
 jmp xchain00189_n44_α
 xchain00189_n40_β:
 jmp xchain00189_n18_α
 xchain00189_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3968]
 mov rdx, qword ptr [rbp + 3976]
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 jmp xchain00189_n35_α
 xchain00189_n41_β:
 jmp xchain00189_n35_α
# IR_UNOP
 xchain00189_n42_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00189_n45_α
 xchain00189_n42_β:
 jmp xchain00189_n43_α
# IR_RETURN
 xchain00189_n43_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_collapse_γ
 xchain00189_n44_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4240]
 mov rdx, qword ptr [rbp + 4248]
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 mov qword ptr [rbp + 4224], rax
 mov qword ptr [rbp + 4232], rdx
 jmp xchain00189_n18_α
 xchain00189_n44_β:
 jmp xchain00189_n18_α
# IR_TO
 xchain00189_n45_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00210_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00189_n43_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00189_n46_α
 xchain00189_n45_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00210_0
 xchain00189_n46_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 5184], rax
 mov qword ptr [rbp + 5192], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00189_n47_α
 xchain00189_n46_β:
 jmp xchain00189_n43_α
# IR_VAR
 xchain00189_n47_α:
 mov rax, qword ptr [rbp + 5376]
 mov qword ptr [rbp + 3920], rax
 mov rax, qword ptr [rbp + 5384]
 mov qword ptr [rbp + 3928], rax
 jmp xchain00189_n48_α
 xchain00189_n47_β:
 jmp xchain00189_n49_α
 xchain00189_n48_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3920]
 mov rdx, qword ptr [rbp + 3928]
 mov qword ptr [rbp + 5264], rax
 mov qword ptr [rbp + 5272], rdx
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 jmp xchain00189_n49_α
 xchain00189_n48_β:
 jmp xchain00189_n49_α
# IR_VAR
 xchain00189_n49_α:
 mov rax, qword ptr [rbp + 5360]
 mov qword ptr [rbp + 3872], rax
 mov rax, qword ptr [rbp + 5368]
 mov qword ptr [rbp + 3880], rax
 jmp xchain00189_n50_α
 xchain00189_n49_β:
 jmp xchain00189_n51_α
 xchain00189_n50_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3872]
 mov rdx, qword ptr [rbp + 3880]
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 jmp xchain00189_n51_α
 xchain00189_n50_β:
 jmp xchain00189_n51_α
# IR_VAR
 xchain00189_n51_α:
 mov rax, qword ptr [rbp + 5328]
 mov qword ptr [rbp + 3824], rax
 mov rax, qword ptr [rbp + 5336]
 mov qword ptr [rbp + 3832], rax
 jmp xchain00189_n52_α
 xchain00189_n51_β:
 jmp xchain00189_n53_α
 xchain00189_n52_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3824]
 mov rdx, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 5344], rax
 mov qword ptr [rbp + 5352], rdx
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 jmp xchain00189_n53_α
 xchain00189_n52_β:
 jmp xchain00189_n53_α
# IR_VAR
 xchain00189_n53_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 jmp xchain00189_n54_α
 xchain00189_n53_β:
 jmp xchain00189_n55_α
# IR_VAR_REF
 xchain00189_n54_α:
 mov rdi, 1879052384
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 jmp xchain00189_n56_α
 xchain00189_n54_β:
 jmp xchain00189_n55_α
# IR_VAR_REF
 xchain00189_n55_α:
 mov rdi, 1879052400
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3440], rax
 mov qword ptr [rbp + 3448], rdx
 jmp xchain00189_n57_α
 xchain00189_n55_β:
 jmp xchain00189_n60_α
# IR_VAR
 xchain00189_n56_α:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 3728], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 3736], rax
 jmp xchain00189_n58_α
 xchain00189_n56_β:
 jmp xchain00189_n55_α
# IR_VAR
 xchain00189_n57_α:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 3480], rax
 jmp xchain00189_n59_α
 xchain00189_n57_β:
 jmp xchain00189_n60_α
# IR_SUBSCRIPT x[i] variable
 xchain00189_n58_α:
 mov rdi, qword ptr [rbp + 3696]
 mov rsi, qword ptr [rbp + 3704]
 mov rdx, qword ptr [rbp + 3728]
 mov rcx, qword ptr [rbp + 3736]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00189_n55_α
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 jmp xchain00189_n61_α
 xchain00189_n58_β:
 jmp xchain00189_n55_α
# IR_SUBSCRIPT x[i] variable
 xchain00189_n59_α:
 mov rdi, qword ptr [rbp + 3440]
 mov rsi, qword ptr [rbp + 3448]
 mov rdx, qword ptr [rbp + 3472]
 mov rcx, qword ptr [rbp + 3480]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00189_n60_α
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 jmp xchain00189_n62_α
 xchain00189_n59_β:
 jmp xchain00189_n60_α
# IR_VAR
 xchain00189_n60_α:
 mov rax, qword ptr [rbp + 5360]
 mov qword ptr [rbp + 3360], rax
 mov rax, qword ptr [rbp + 5368]
 mov qword ptr [rbp + 3368], rax
 jmp xchain00189_n63_α
 xchain00189_n60_β:
 jmp xchain00189_n64_α
# IR_DEREF variable -> value
 xchain00189_n61_α:
 mov rdi, qword ptr [rbp + 3760]
 mov rsi, qword ptr [rbp + 3768]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00189_n55_α
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 jmp xchain00189_n65_α
 xchain00189_n61_β:
 jmp xchain00189_n55_α
# IR_DEREF variable -> value
 xchain00189_n62_α:
 mov rdi, qword ptr [rbp + 3504]
 mov rsi, qword ptr [rbp + 3512]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00189_n60_α
 mov qword ptr [rbp + 3536], rax
 mov qword ptr [rbp + 3544], rdx
 jmp xchain00189_n66_α
 xchain00189_n62_β:
 jmp xchain00189_n60_α
# IR_VAR
 xchain00189_n63_α:
 mov rax, qword ptr [rbp + 5376]
 mov qword ptr [rbp + 3392], rax
 mov rax, qword ptr [rbp + 5384]
 mov qword ptr [rbp + 3400], rax
 jmp xchain00189_n67_α
 xchain00189_n63_β:
 jmp xchain00189_n64_α
# IR_VAR
 xchain00189_n64_α:
 mov rax, qword ptr [rbp + 5328]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 5336]
 mov qword ptr [rbp + 3224], rax
 jmp xchain00189_n68_α
 xchain00189_n64_β:
 jmp xchain00189_n69_α
# IR_COERCE_NUMERIC
 xchain00189_n65_α:
 mov eax, dword ptr [rbp + 3664]
 cmp eax, 7
 je .Lx00211_1
 cmp eax, 6
 jne .Lx00211_0
 mov eax, dword ptr [rbp + 3792]
 cmp eax, 6
 jne .Lx00211_0
.Lx00211_1:
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 3632], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 3640], rax
 jmp .Lx00211_2
.Lx00211_0:
 lea rdi, [rbp + 3664]
 lea rsi, [rbp + 3792]
 lea rdx, [rbp + 3632]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00211_2:
 jmp xchain00189_n70_α
 xchain00189_n65_β:
 jmp xchain00189_n55_α
 xchain00189_n66_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3536]
 mov rdx, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 5360], rax
 mov qword ptr [rbp + 5368], rdx
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain00189_n60_α
 xchain00189_n66_β:
 jmp xchain00189_n60_α
 xchain00189_n67_α:
# BOX IR_CALL atan(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3360] -> [zr+3312]
 mov rax, qword ptr [rbp + 3360]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 3320], rax
# marshal arg1 = producer-box slot [zr+3392] -> [zr+3328]
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 3328], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3336], rax
  .section .rodata
  .Lrkfn741: .string "atan"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn741]
 lea rsi, [rbp + 3312]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3296], rax
 mov qword ptr [rbp + 3304], rdx
 cmp eax, 99
 je xchain00189_n64_α
 jmp xchain00189_n71_α
 xchain00189_n67_β:
 jmp xchain00189_n64_α
# IR_VAR
 xchain00189_n68_α:
 mov rax, qword ptr [rbp + 5344]
 mov qword ptr [rbp + 3248], rax
 mov rax, qword ptr [rbp + 5352]
 mov qword ptr [rbp + 3256], rax
 jmp xchain00189_n72_α
 xchain00189_n68_β:
 jmp xchain00189_n69_α
# IR_VAR
 xchain00189_n69_α:
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 3000], rax
 jmp xchain00189_n73_α
 xchain00189_n69_β:
 jmp xchain00189_n74_α
# IR_COERCE_NUMERIC
 xchain00189_n70_α:
 mov eax, dword ptr [rbp + 3792]
 cmp eax, 7
 je .Lx00212_1
 cmp eax, 6
 jne .Lx00212_0
 mov eax, dword ptr [rbp + 3664]
 cmp eax, 6
 jne .Lx00212_0
.Lx00212_1:
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 3608], rax
 jmp .Lx00212_2
.Lx00212_0:
 lea rdi, [rbp + 3792]
 lea rsi, [rbp + 3664]
 lea rdx, [rbp + 3600]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00212_2:
 jmp xchain00189_n75_α
 xchain00189_n70_β:
 jmp xchain00189_n55_α
 xchain00189_n71_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3296]
 mov rdx, qword ptr [rbp + 3304]
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain00189_n64_α
 xchain00189_n71_β:
 jmp xchain00189_n64_α
# IR_COERCE_NUMERIC
 xchain00189_n72_α:
 mov eax, dword ptr [rbp + 5328]
 cmp eax, 7
 je .Lx00213_1
 cmp eax, 6
 jne .Lx00213_0
 mov eax, dword ptr [rbp + 5344]
 cmp eax, 6
 jne .Lx00213_0
.Lx00213_1:
 mov rax, qword ptr [rbp + 5328]
 mov qword ptr [rbp + 3184], rax
 mov rax, qword ptr [rbp + 5336]
 mov qword ptr [rbp + 3192], rax
 jmp .Lx00213_2
.Lx00213_0:
 lea rdi, [rbp + 5328]
 lea rsi, [rbp + 5344]
 lea rdx, [rbp + 3184]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00213_2:
 jmp xchain00189_n76_α
 xchain00189_n72_β:
 jmp xchain00189_n69_α
# IR_VAR
 xchain00189_n73_α:
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 3032], rax
 jmp xchain00189_n77_α
 xchain00189_n73_β:
 jmp xchain00189_n74_α
# IR_VAR
 xchain00189_n74_α:
 mov rax, qword ptr [rbp + 5264]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 5272]
 mov qword ptr [rbp + 2632], rax
 jmp xchain00189_n78_α
 xchain00189_n74_β:
 jmp xchain00189_n79_α
 xchain00189_n75_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3632]
 cmp eax, 100
 je .Lx00214_0
 mov eax, dword ptr [rbp + 3600]
 cmp eax, 100
 je .Lx00214_0
 mov eax, dword ptr [rbp + 3632]
 cmp eax, 6
 jne .Lx00214_2
 mov eax, dword ptr [rbp + 3600]
 cmp eax, 6
 jne .Lx00214_2
.Lx00214_1:
 mov rax, qword ptr [rbp + 3640]
 mov rcx, qword ptr [rbp + 3608]
 imul rax, rcx
 mov qword ptr [rbp + 3568], 6
 mov qword ptr [rbp + 3576], rax
 jmp xchain00189_n80_α
.Lx00214_0:
 mov rdi, qword ptr [rbp + 3632]
 mov rsi, qword ptr [rbp + 3640]
 mov rdx, qword ptr [rbp + 3600]
 mov rcx, qword ptr [rbp + 3608]
 mov r8d, 2
 lea r9, [rbp + 3568]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00214_3
.Lx00214_2:
 mov rdi, qword ptr [rbp + 3632]
 mov rsi, qword ptr [rbp + 3640]
 mov rdx, qword ptr [rbp + 3600]
 mov rcx, qword ptr [rbp + 3608]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00189_n55_α
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
.Lx00214_3:
 jmp xchain00189_n80_α
 xchain00189_n75_β:
 jmp xchain00189_n55_α
# IR_COERCE_NUMERIC
 xchain00189_n76_α:
 mov eax, dword ptr [rbp + 5344]
 cmp eax, 7
 je .Lx00215_1
 cmp eax, 6
 jne .Lx00215_0
 mov eax, dword ptr [rbp + 5328]
 cmp eax, 6
 jne .Lx00215_0
.Lx00215_1:
 mov rax, qword ptr [rbp + 5344]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 5352]
 mov qword ptr [rbp + 3160], rax
 jmp .Lx00215_2
.Lx00215_0:
 lea rdi, [rbp + 5344]
 lea rsi, [rbp + 5328]
 lea rdx, [rbp + 3152]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00215_2:
 jmp xchain00189_n81_α
 xchain00189_n76_β:
 jmp xchain00189_n69_α
 xchain00189_n77_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 100
 je .Lx00216_0
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 100
 je .Lx00216_0
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 6
 jne .Lx00216_2
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 6
 jne .Lx00216_2
.Lx00216_1:
 mov rax, qword ptr [rbp + 5304]
 mov rcx, qword ptr [rbp + 5320]
 cmp rax, rcx
 jle xchain00189_n74_α
 mov rcx, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 2960], rcx
 mov rcx, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 2968], rcx
 jmp xchain00189_n45_β
.Lx00216_0:
 mov rdi, qword ptr [rbp + 5296]
 mov rsi, qword ptr [rbp + 5304]
 mov rdx, qword ptr [rbp + 5312]
 mov rcx, qword ptr [rbp + 5320]
 mov r8d, 7
 lea r9, [rbp + 2960]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00216_1
 cmp eax, 1
 je xchain00189_n74_α
 jmp xchain00189_n45_β
.Lx00216_2:
 mov rdi, qword ptr [rbp + 5296]
 mov rsi, qword ptr [rbp + 5304]
 mov rdx, qword ptr [rbp + 5312]
 mov rcx, qword ptr [rbp + 5320]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00189_n74_α
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 2960], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 2968], rax
 jmp xchain00189_n45_β
 xchain00189_n77_β:
 jmp xchain00189_n74_α
# IR_VAR
 xchain00189_n78_α:
 mov rax, qword ptr [rbp + 5264]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 5272]
 mov qword ptr [rbp + 2664], rax
 jmp xchain00189_n83_α
 xchain00189_n78_β:
 jmp xchain00189_n79_α
# IR_VAR
 xchain00189_n79_α:
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 2216], rax
 jmp xchain00189_n84_α
 xchain00189_n79_β:
 jmp xchain00189_n45_β
 xchain00189_n80_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3568]
 mov rdx, qword ptr [rbp + 3576]
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 jmp xchain00189_n55_α
 xchain00189_n80_β:
 jmp xchain00189_n55_α
 xchain00189_n81_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3184]
 cmp eax, 100
 je .Lx00217_0
 mov eax, dword ptr [rbp + 3152]
 cmp eax, 100
 je .Lx00217_0
 mov eax, dword ptr [rbp + 3184]
 cmp eax, 6
 jne .Lx00217_2
 mov eax, dword ptr [rbp + 3152]
 cmp eax, 6
 jne .Lx00217_2
.Lx00217_1:
 mov rax, qword ptr [rbp + 3192]
 mov rcx, qword ptr [rbp + 3160]
 sub rax, rcx
 mov qword ptr [rbp + 3120], 6
 mov qword ptr [rbp + 3128], rax
 jmp xchain00189_n85_α
.Lx00217_0:
 mov rdi, qword ptr [rbp + 3184]
 mov rsi, qword ptr [rbp + 3192]
 mov rdx, qword ptr [rbp + 3152]
 mov rcx, qword ptr [rbp + 3160]
 mov r8d, 1
 lea r9, [rbp + 3120]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00217_3
.Lx00217_2:
 mov rdi, qword ptr [rbp + 3184]
 mov rsi, qword ptr [rbp + 3192]
 mov rdx, qword ptr [rbp + 3152]
 mov rcx, qword ptr [rbp + 3160]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00189_n69_α
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
.Lx00217_3:
 jmp xchain00189_n85_α
 xchain00189_n81_β:
 jmp xchain00189_n69_α
 xchain00189_n82_α:
 jmp xchain00189_n45_β
xchain00189_n82_β:
 jmp xchain00189_n45_β
# IR_COERCE_NUMERIC
 xchain00189_n83_α:
 mov eax, dword ptr [rbp + 5264]
 cmp eax, 7
 je .Lx00218_1
 cmp eax, 6
 jne .Lx00218_0
 mov eax, dword ptr [rbp + 5264]
 cmp eax, 6
 jne .Lx00218_0
.Lx00218_1:
 mov rax, qword ptr [rbp + 5264]
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 5272]
 mov qword ptr [rbp + 2600], rax
 jmp .Lx00218_2
.Lx00218_0:
 lea rdi, [rbp + 5264]
 lea rsi, [rbp + 5264]
 lea rdx, [rbp + 2592]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00218_2:
 jmp xchain00189_n86_α
 xchain00189_n83_β:
 jmp xchain00189_n79_α
# IR_VAR
 xchain00189_n84_α:
 mov rax, qword ptr [rbp + 5248]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 5256]
 mov qword ptr [rbp + 2248], rax
 jmp xchain00189_n87_α
 xchain00189_n84_β:
 jmp xchain00189_n45_β
 xchain00189_n85_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3120] -> [zr+3088]
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 3088], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3096], rax
  .section .rodata
  .Lrkfn771: .string "abs"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn771]
 lea rsi, [rbp + 3088]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 cmp eax, 99
 je xchain00189_n69_α
 jmp xchain00189_n88_α
 xchain00189_n85_β:
 jmp xchain00189_n69_α
# IR_COERCE_NUMERIC
 xchain00189_n86_α:
 mov eax, dword ptr [rbp + 5264]
 cmp eax, 7
 je .Lx00219_1
 cmp eax, 6
 jne .Lx00219_0
 mov eax, dword ptr [rbp + 5264]
 cmp eax, 6
 jne .Lx00219_0
.Lx00219_1:
 mov rax, qword ptr [rbp + 5264]
 mov qword ptr [rbp + 2560], rax
 mov rax, qword ptr [rbp + 5272]
 mov qword ptr [rbp + 2568], rax
 jmp .Lx00219_2
.Lx00219_0:
 lea rdi, [rbp + 5264]
 lea rsi, [rbp + 5264]
 lea rdx, [rbp + 2560]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00219_2:
 jmp xchain00189_n89_α
 xchain00189_n86_β:
 jmp xchain00189_n79_α
 xchain00189_n87_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5232]
 cmp eax, 100
 je .Lx00220_0
 mov eax, dword ptr [rbp + 5248]
 cmp eax, 100
 je .Lx00220_0
 mov eax, dword ptr [rbp + 5232]
 cmp eax, 6
 jne .Lx00220_2
 mov eax, dword ptr [rbp + 5248]
 cmp eax, 6
 jne .Lx00220_2
.Lx00220_1:
 mov rax, qword ptr [rbp + 5240]
 mov rcx, qword ptr [rbp + 5256]
 cmp rax, rcx
 jg xchain00189_n45_β
 mov rcx, qword ptr [rbp + 5248]
 mov qword ptr [rbp + 2176], rcx
 mov rcx, qword ptr [rbp + 5256]
 mov qword ptr [rbp + 2184], rcx
 jmp xchain00189_n90_α
.Lx00220_0:
 mov rdi, qword ptr [rbp + 5232]
 mov rsi, qword ptr [rbp + 5240]
 mov rdx, qword ptr [rbp + 5248]
 mov rcx, qword ptr [rbp + 5256]
 mov r8d, 6
 lea r9, [rbp + 2176]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00220_1
 cmp eax, 1
 je xchain00189_n45_β
 jmp xchain00189_n90_α
.Lx00220_2:
 mov rdi, qword ptr [rbp + 5232]
 mov rsi, qword ptr [rbp + 5240]
 mov rdx, qword ptr [rbp + 5248]
 mov rcx, qword ptr [rbp + 5256]
 mov r8d, 6
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00189_n45_β
 mov rax, qword ptr [rbp + 5248]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 5256]
 mov qword ptr [rbp + 2184], rax
 jmp xchain00189_n90_α
 xchain00189_n87_β:
 jmp xchain00189_n45_β
 xchain00189_n88_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3072]
 mov rdx, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 5296], rax
 mov qword ptr [rbp + 5304], rdx
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 jmp xchain00189_n69_α
 xchain00189_n88_β:
 jmp xchain00189_n69_α
 xchain00189_n89_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2592]
 cmp eax, 100
 je .Lx00221_0
 mov eax, dword ptr [rbp + 2560]
 cmp eax, 100
 je .Lx00221_0
 mov eax, dword ptr [rbp + 2592]
 cmp eax, 6
 jne .Lx00221_2
 mov eax, dword ptr [rbp + 2560]
 cmp eax, 6
 jne .Lx00221_2
.Lx00221_1:
 mov rax, qword ptr [rbp + 2600]
 mov rcx, qword ptr [rbp + 2568]
 imul rax, rcx
 mov qword ptr [rbp + 2528], 6
 mov qword ptr [rbp + 2536], rax
 jmp xchain00189_n91_α
.Lx00221_0:
 mov rdi, qword ptr [rbp + 2592]
 mov rsi, qword ptr [rbp + 2600]
 mov rdx, qword ptr [rbp + 2560]
 mov rcx, qword ptr [rbp + 2568]
 mov r8d, 2
 lea r9, [rbp + 2528]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00221_3
.Lx00221_2:
 mov rdi, qword ptr [rbp + 2592]
 mov rsi, qword ptr [rbp + 2600]
 mov rdx, qword ptr [rbp + 2560]
 mov rcx, qword ptr [rbp + 2568]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00189_n79_α
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
.Lx00221_3:
 jmp xchain00189_n91_α
 xchain00189_n89_β:
 jmp xchain00189_n79_α
# IR_VAR_REF
 xchain00189_n90_α:
 mov rdi, 1879052384
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 jmp xchain00189_n92_α
 xchain00189_n90_β:
 jmp xchain00189_n95_α
# IR_VAR
 xchain00189_n91_α:
 mov rax, qword ptr [rbp + 5280]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 5288]
 mov qword ptr [rbp + 2792], rax
 jmp xchain00189_n93_α
 xchain00189_n91_β:
 jmp xchain00189_n79_α
# IR_VAR
 xchain00189_n92_α:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 1896], rax
 jmp xchain00189_n94_α
 xchain00189_n92_β:
 jmp xchain00189_n95_α
# IR_VAR
 xchain00189_n93_α:
 mov rax, qword ptr [rbp + 5280]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 5288]
 mov qword ptr [rbp + 2824], rax
 jmp xchain00189_n96_α
 xchain00189_n93_β:
 jmp xchain00189_n79_α
# IR_SUBSCRIPT x[i] variable
 xchain00189_n94_α:
 mov rdi, qword ptr [rbp + 1856]
 mov rsi, qword ptr [rbp + 1864]
 mov rdx, qword ptr [rbp + 1888]
 mov rcx, qword ptr [rbp + 1896]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00189_n95_α
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain00189_n97_α
 xchain00189_n94_β:
 jmp xchain00189_n95_α
# IR_VAR_REF
 xchain00189_n95_α:
 mov rdi, 1879052400
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain00189_n98_α
 xchain00189_n95_β:
 jmp xchain00189_n00001_α
# IR_COERCE_NUMERIC
 xchain00189_n96_α:
 mov eax, dword ptr [rbp + 5280]
 cmp eax, 7
 je .Lx00222_1
 cmp eax, 6
 jne .Lx00222_0
 mov eax, dword ptr [rbp + 5280]
 cmp eax, 6
 jne .Lx00222_0
.Lx00222_1:
 mov rax, qword ptr [rbp + 5280]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 5288]
 mov qword ptr [rbp + 2760], rax
 jmp .Lx00222_2
.Lx00222_0:
 lea rdi, [rbp + 5280]
 lea rsi, [rbp + 5280]
 lea rdx, [rbp + 2752]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00222_2:
 jmp xchain00189_n99_α
 xchain00189_n96_β:
 jmp xchain00189_n79_α
# IR_DEREF variable -> value
 xchain00189_n97_α:
 mov rdi, qword ptr [rbp + 1920]
 mov rsi, qword ptr [rbp + 1928]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00189_n95_α
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain00189_n00072_α
 xchain00189_n97_β:
 jmp xchain00189_n95_α
# IR_VAR
 xchain00189_n98_α:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 1464], rax
 jmp xchain00189_n00074_α
 xchain00189_n98_β:
 jmp xchain00189_n00001_α
# IR_COERCE_NUMERIC
 xchain00189_n99_α:
 mov eax, dword ptr [rbp + 5280]
 cmp eax, 7
 je .Lx00223_1
 cmp eax, 6
 jne .Lx00223_0
 mov eax, dword ptr [rbp + 5280]
 cmp eax, 6
 jne .Lx00223_0
.Lx00223_1:
 mov rax, qword ptr [rbp + 5280]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 5288]
 mov qword ptr [rbp + 2728], rax
 jmp .Lx00223_2
.Lx00223_0:
 lea rdi, [rbp + 5280]
 lea rsi, [rbp + 5280]
 lea rdx, [rbp + 2720]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00223_2:
 jmp xchain00189_n00077_α
 xchain00189_n99_β:
 jmp xchain00189_n79_α
# IR_VAR_REF
 xchain00189_n00072_α:
 mov rdi, 1879052384
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain00189_n00078_α
 xchain00189_n00072_β:
 jmp xchain00189_n95_α
# IR_SUBSCRIPT x[i] variable
 xchain00189_n00074_α:
 mov rdi, qword ptr [rbp + 1424]
 mov rsi, qword ptr [rbp + 1432]
 mov rdx, qword ptr [rbp + 1456]
 mov rcx, qword ptr [rbp + 1464]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00189_n00001_α
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain00189_n00079_α
 xchain00189_n00074_β:
 jmp xchain00189_n00001_α
# IR_VAR
 xchain00189_n00001_α:
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00189_n00080_α
 xchain00189_n00001_β:
 jmp xchain00189_n45_β
 xchain00189_n00077_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2752]
 cmp eax, 100
 je .Lx00224_0
 mov eax, dword ptr [rbp + 2720]
 cmp eax, 100
 je .Lx00224_0
 mov eax, dword ptr [rbp + 2752]
 cmp eax, 6
 jne .Lx00224_2
 mov eax, dword ptr [rbp + 2720]
 cmp eax, 6
 jne .Lx00224_2
.Lx00224_1:
 mov rax, qword ptr [rbp + 2760]
 mov rcx, qword ptr [rbp + 2728]
 imul rax, rcx
 mov qword ptr [rbp + 2688], 6
 mov qword ptr [rbp + 2696], rax
 jmp xchain00189_n00082_α
.Lx00224_0:
 mov rdi, qword ptr [rbp + 2752]
 mov rsi, qword ptr [rbp + 2760]
 mov rdx, qword ptr [rbp + 2720]
 mov rcx, qword ptr [rbp + 2728]
 mov r8d, 2
 lea r9, [rbp + 2688]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00224_3
.Lx00224_2:
 mov rdi, qword ptr [rbp + 2752]
 mov rsi, qword ptr [rbp + 2760]
 mov rdx, qword ptr [rbp + 2720]
 mov rcx, qword ptr [rbp + 2728]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00189_n79_α
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
.Lx00224_3:
 jmp xchain00189_n00082_α
 xchain00189_n00077_β:
 jmp xchain00189_n79_α
# IR_VAR
 xchain00189_n00078_α:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 2072], rax
 jmp xchain00189_n00083_α
 xchain00189_n00078_β:
 jmp xchain00189_n95_α
# IR_DEREF variable -> value
 xchain00189_n00079_α:
 mov rdi, qword ptr [rbp + 1488]
 mov rsi, qword ptr [rbp + 1496]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00189_n00001_α
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain00189_n00002_α
 xchain00189_n00079_β:
 jmp xchain00189_n00001_α
 xchain00189_n00080_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1248] -> [zr+1216]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1224], rax
  .section .rodata
  .Lrkfn805: .string "abs"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn805]
 lea rsi, [rbp + 1216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain00189_n45_β
 jmp xchain00189_n00084_α
 xchain00189_n00080_β:
 jmp xchain00189_n45_β
# IR_COERCE_NUMERIC
 xchain00189_n00082_α:
 mov eax, dword ptr [rbp + 2528]
 cmp eax, 7
 je .Lx00225_1
 cmp eax, 6
 jne .Lx00225_0
 mov eax, dword ptr [rbp + 2688]
 cmp eax, 6
 jne .Lx00225_0
.Lx00225_1:
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2504], rax
 jmp .Lx00225_2
.Lx00225_0:
 lea rdi, [rbp + 2528]
 lea rsi, [rbp + 2688]
 lea rdx, [rbp + 2496]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00225_2:
 jmp xchain00189_n00086_α
 xchain00189_n00082_β:
 jmp xchain00189_n79_α
# IR_LIT_INTEGER
 xchain00189_n00083_α:
 mov qword ptr [rbp + 2096], 6
 mov rax, qword ptr [rip + .Lx00226_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain00189_n00088_α
 xchain00189_n00083_β:
 jmp xchain00189_n95_α
.Lx00226_0:
 .quad 1
# IR_VAR_REF
 xchain00189_n00002_α:
 mov rdi, 1879052400
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain00189_n00090_α
 xchain00189_n00002_β:
 jmp xchain00189_n00001_α
# IR_LIT_INTEGER
 xchain00189_n00084_α:
 mov qword ptr [rbp + 1280], 6
 mov rax, qword ptr [rip + .Lx00227_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain00189_n00092_α
 xchain00189_n00084_β:
 jmp xchain00189_n45_β
.Lx00227_0:
 .quad 5000
# IR_COERCE_NUMERIC
 xchain00189_n00086_α:
 mov eax, dword ptr [rbp + 2688]
 cmp eax, 7
 je .Lx00228_1
 cmp eax, 6
 jne .Lx00228_0
 mov eax, dword ptr [rbp + 2528]
 cmp eax, 6
 jne .Lx00228_0
.Lx00228_1:
 mov rax, qword ptr [rbp + 2688]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 2472], rax
 jmp .Lx00228_2
.Lx00228_0:
 lea rdi, [rbp + 2688]
 lea rsi, [rbp + 2528]
 lea rdx, [rbp + 2464]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00228_2:
 jmp xchain00189_n00003_α
 xchain00189_n00086_β:
 jmp xchain00189_n79_α
# IR_COERCE_NUMERIC
 xchain00189_n00088_α:
 mov eax, dword ptr [rbp + 5184]
 cmp eax, 7
 je .Lx00229_1
 cmp eax, 6
 jne .Lx00229_0
 mov eax, dword ptr [rbp + 2096]
 cmp eax, 6
 jne .Lx00229_0
.Lx00229_1:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 2040], rax
 jmp .Lx00229_2
.Lx00229_0:
 lea rdi, [rbp + 5184]
 lea rsi, [rbp + 2096]
 lea rdx, [rbp + 2032]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00229_2:
 jmp xchain00189_n00093_α
 xchain00189_n00088_β:
 jmp xchain00189_n95_α
# IR_VAR
 xchain00189_n00090_α:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 1640], rax
 jmp xchain00189_n00094_α
 xchain00189_n00090_β:
 jmp xchain00189_n00001_α
 xchain00189_n00092_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 1200]
 cmp eax, 100
 je .Lx00230_0
 mov eax, dword ptr [rbp + 1280]
 cmp eax, 100
 je .Lx00230_0
 mov eax, dword ptr [rbp + 1200]
 cmp eax, 6
 jne .Lx00230_2
 mov eax, dword ptr [rbp + 1280]
 cmp eax, 6
 jne .Lx00230_2
.Lx00230_1:
 mov rax, qword ptr [rbp + 1208]
 mov rcx, qword ptr [rbp + 1288]
 cmp rax, rcx
 jge xchain00189_n45_β
 mov rcx, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1168], rcx
 mov rcx, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1176], rcx
 jmp xchain00189_n00096_α
.Lx00230_0:
 mov rdi, qword ptr [rbp + 1200]
 mov rsi, qword ptr [rbp + 1208]
 mov rdx, qword ptr [rbp + 1280]
 mov rcx, qword ptr [rbp + 1288]
 mov r8d, 5
 lea r9, [rbp + 1168]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00230_1
 cmp eax, 1
 je xchain00189_n45_β
 jmp xchain00189_n00096_α
.Lx00230_2:
 mov rdi, qword ptr [rbp + 1200]
 mov rsi, qword ptr [rbp + 1208]
 mov rdx, qword ptr [rbp + 1280]
 mov rcx, qword ptr [rbp + 1288]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00189_n45_β
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1176], rax
 jmp xchain00189_n00096_α
 xchain00189_n00092_β:
 jmp xchain00189_n45_β
 xchain00189_n00003_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2496]
 cmp eax, 100
 je .Lx00231_0
 mov eax, dword ptr [rbp + 2464]
 cmp eax, 100
 je .Lx00231_0
 mov eax, dword ptr [rbp + 2496]
 cmp eax, 6
 jne .Lx00231_2
 mov eax, dword ptr [rbp + 2464]
 cmp eax, 6
 jne .Lx00231_2
.Lx00231_1:
 mov rax, qword ptr [rbp + 2504]
 mov rcx, qword ptr [rbp + 2472]
 add rax, rcx
 mov qword ptr [rbp + 2432], 6
 mov qword ptr [rbp + 2440], rax
 jmp xchain00189_n00098_α
.Lx00231_0:
 mov rdi, qword ptr [rbp + 2496]
 mov rsi, qword ptr [rbp + 2504]
 mov rdx, qword ptr [rbp + 2464]
 mov rcx, qword ptr [rbp + 2472]
 mov r8d, 0
 lea r9, [rbp + 2432]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00231_3
.Lx00231_2:
 mov rdi, qword ptr [rbp + 2496]
 mov rsi, qword ptr [rbp + 2504]
 mov rdx, qword ptr [rbp + 2464]
 mov rcx, qword ptr [rbp + 2472]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00189_n79_α
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
.Lx00231_3:
 jmp xchain00189_n00098_α
 xchain00189_n00003_β:
 jmp xchain00189_n79_α
 xchain00189_n00093_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2032]
 cmp eax, 100
 je .Lx00232_0
 mov eax, dword ptr [rbp + 2032]
 cmp eax, 6
 jne .Lx00232_2
.Lx00232_1:
 mov rax, qword ptr [rbp + 2040]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 2000], 6
 mov qword ptr [rbp + 2008], rax
 jmp xchain00189_n00099_α
.Lx00232_0:
 mov rdi, qword ptr [rbp + 2032]
 mov rsi, qword ptr [rbp + 2040]
 mov rdx, qword ptr [rbp + 2096]
 mov rcx, qword ptr [rbp + 2104]
 mov r8d, 1
 lea r9, [rbp + 2000]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00232_3
.Lx00232_2:
 mov rdi, qword ptr [rbp + 2032]
 mov rsi, qword ptr [rbp + 2040]
 mov rdx, qword ptr [rbp + 2096]
 mov rcx, qword ptr [rbp + 2104]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00189_n95_α
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
.Lx00232_3:
 jmp xchain00189_n00099_α
 xchain00189_n00093_β:
 jmp xchain00189_n95_α
# IR_LIT_INTEGER
 xchain00189_n00094_α:
 mov qword ptr [rbp + 1664], 6
 mov rax, qword ptr [rip + .Lx00233_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain00189_n00012_α
 xchain00189_n00094_β:
 jmp xchain00189_n00001_α
.Lx00233_0:
 .quad 1
# IR_VAR
 xchain00189_n00096_α:
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00189_n00102_α
 xchain00189_n00096_β:
 jmp xchain00189_n45_β
# IR_VAR
 xchain00189_n00098_α:
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 2896], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 2904], rax
 jmp xchain00189_n00103_α
 xchain00189_n00098_β:
 jmp xchain00189_n79_α
# IR_SUBSCRIPT x[i] variable
 xchain00189_n00099_α:
 mov rdi, qword ptr [rbp + 1968]
 mov rsi, qword ptr [rbp + 1976]
 mov rdx, qword ptr [rbp + 2000]
 mov rcx, qword ptr [rbp + 2008]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00189_n95_α
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 jmp xchain00189_n00104_α
 xchain00189_n00099_β:
 jmp xchain00189_n95_α
# IR_COERCE_NUMERIC
 xchain00189_n00012_α:
 mov eax, dword ptr [rbp + 5184]
 cmp eax, 7
 je .Lx00234_1
 cmp eax, 6
 jne .Lx00234_0
 mov eax, dword ptr [rbp + 1664]
 cmp eax, 6
 jne .Lx00234_0
.Lx00234_1:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 1608], rax
 jmp .Lx00234_2
.Lx00234_0:
 lea rdi, [rbp + 5184]
 lea rsi, [rbp + 1664]
 lea rdx, [rbp + 1600]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00234_2:
 jmp xchain00189_n00105_α
 xchain00189_n00012_β:
 jmp xchain00189_n00001_α
 xchain00189_n00102_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1072]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1080], rax
  .section .rodata
  .Lrkfn830: .string "abs"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn830]
 lea rsi, [rbp + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain00189_n45_β
 jmp xchain00189_n00004_α
 xchain00189_n00102_β:
 jmp xchain00189_n45_β
 xchain00189_n00103_α:
# BOX IR_CALL sin(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2896] -> [zr+2864]
 mov rax, qword ptr [rbp + 2896]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 2904]
 mov qword ptr [rbp + 2872], rax
  .section .rodata
  .Lrkfn832: .string "sin"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn832]
 lea rsi, [rbp + 2864]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 cmp eax, 99
 je xchain00189_n79_α
 jmp xchain00189_n00106_α
 xchain00189_n00103_β:
 jmp xchain00189_n79_α
# IR_DEREF variable -> value
 xchain00189_n00104_α:
 mov rdi, qword ptr [rbp + 2128]
 mov rsi, qword ptr [rbp + 2136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00189_n95_α
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain00189_n00108_α
 xchain00189_n00104_β:
 jmp xchain00189_n95_α
 xchain00189_n00105_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1600]
 cmp eax, 100
 je .Lx00235_0
 mov eax, dword ptr [rbp + 1600]
 cmp eax, 6
 jne .Lx00235_2
.Lx00235_1:
 mov rax, qword ptr [rbp + 1608]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 1568], 6
 mov qword ptr [rbp + 1576], rax
 jmp xchain00189_n00110_α
.Lx00235_0:
 mov rdi, qword ptr [rbp + 1600]
 mov rsi, qword ptr [rbp + 1608]
 mov rdx, qword ptr [rbp + 1664]
 mov rcx, qword ptr [rbp + 1672]
 mov r8d, 1
 lea r9, [rbp + 1568]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00235_3
.Lx00235_2:
 mov rdi, qword ptr [rbp + 1600]
 mov rsi, qword ptr [rbp + 1608]
 mov rdx, qword ptr [rbp + 1664]
 mov rcx, qword ptr [rbp + 1672]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00189_n00001_α
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
.Lx00235_3:
 jmp xchain00189_n00110_α
 xchain00189_n00105_β:
 jmp xchain00189_n00001_α
# IR_LIT_INTEGER
 xchain00189_n00004_α:
 mov qword ptr [rbp + 1136], 6
 mov rax, qword ptr [rip + .Lx00236_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain00189_n00111_α
 xchain00189_n00004_β:
 jmp xchain00189_n45_β
.Lx00236_0:
 .quad 5000
# IR_COERCE_NUMERIC
 xchain00189_n00106_α:
 mov eax, dword ptr [rbp + 2432]
 cmp eax, 7
 je .Lx00237_1
 cmp eax, 6
 jne .Lx00237_0
 mov eax, dword ptr [rbp + 2848]
 cmp eax, 6
 jne .Lx00237_0
.Lx00237_1:
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 2408], rax
 jmp .Lx00237_2
.Lx00237_0:
 lea rdi, [rbp + 2432]
 lea rsi, [rbp + 2848]
 lea rdx, [rbp + 2400]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00237_2:
 jmp xchain00189_n00112_α
 xchain00189_n00106_β:
 jmp xchain00189_n79_α
# IR_COERCE_NUMERIC
 xchain00189_n00108_α:
 mov eax, dword ptr [rbp + 1952]
 cmp eax, 7
 je .Lx00238_1
 cmp eax, 6
 jne .Lx00238_0
 mov eax, dword ptr [rbp + 2160]
 cmp eax, 6
 jne .Lx00238_0
.Lx00238_1:
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1832], rax
 jmp .Lx00238_2
.Lx00238_0:
 lea rdi, [rbp + 1952]
 lea rsi, [rbp + 2160]
 lea rdx, [rbp + 1824]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00238_2:
 jmp xchain00189_n00114_α
 xchain00189_n00108_β:
 jmp xchain00189_n95_α
# IR_SUBSCRIPT x[i] variable
 xchain00189_n00110_α:
 mov rdi, qword ptr [rbp + 1536]
 mov rsi, qword ptr [rbp + 1544]
 mov rdx, qword ptr [rbp + 1568]
 mov rcx, qword ptr [rbp + 1576]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00189_n00001_α
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain00189_n00005_α
 xchain00189_n00110_β:
 jmp xchain00189_n00001_α
 xchain00189_n00111_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 1056]
 cmp eax, 100
 je .Lx00239_0
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 100
 je .Lx00239_0
 mov eax, dword ptr [rbp + 1056]
 cmp eax, 6
 jne .Lx00239_2
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 6
 jne .Lx00239_2
.Lx00239_1:
 mov rax, qword ptr [rbp + 1064]
 mov rcx, qword ptr [rbp + 1144]
 cmp rax, rcx
 jge xchain00189_n45_β
 mov rcx, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1024], rcx
 mov rcx, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1032], rcx
 jmp xchain00189_n00116_α
.Lx00239_0:
 mov rdi, qword ptr [rbp + 1056]
 mov rsi, qword ptr [rbp + 1064]
 mov rdx, qword ptr [rbp + 1136]
 mov rcx, qword ptr [rbp + 1144]
 mov r8d, 5
 lea r9, [rbp + 1024]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00239_1
 cmp eax, 1
 je xchain00189_n45_β
 jmp xchain00189_n00116_α
.Lx00239_2:
 mov rdi, qword ptr [rbp + 1056]
 mov rsi, qword ptr [rbp + 1064]
 mov rdx, qword ptr [rbp + 1136]
 mov rcx, qword ptr [rbp + 1144]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00189_n45_β
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00189_n00116_α
 xchain00189_n00111_β:
 jmp xchain00189_n45_β
# IR_COERCE_NUMERIC
 xchain00189_n00112_α:
 mov eax, dword ptr [rbp + 2848]
 cmp eax, 7
 je .Lx00240_1
 cmp eax, 6
 jne .Lx00240_0
 mov eax, dword ptr [rbp + 2432]
 cmp eax, 6
 jne .Lx00240_0
.Lx00240_1:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 2376], rax
 jmp .Lx00240_2
.Lx00240_0:
 lea rdi, [rbp + 2848]
 lea rsi, [rbp + 2432]
 lea rdx, [rbp + 2368]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00240_2:
 jmp xchain00189_n00117_α
 xchain00189_n00112_β:
 jmp xchain00189_n79_α
# IR_COERCE_NUMERIC
 xchain00189_n00114_α:
 mov eax, dword ptr [rbp + 2160]
 cmp eax, 7
 je .Lx00241_1
 cmp eax, 6
 jne .Lx00241_0
 mov eax, dword ptr [rbp + 1952]
 cmp eax, 6
 jne .Lx00241_0
.Lx00241_1:
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 1800], rax
 jmp .Lx00241_2
.Lx00241_0:
 lea rdi, [rbp + 2160]
 lea rsi, [rbp + 1952]
 lea rdx, [rbp + 1792]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00241_2:
 jmp xchain00189_n00118_α
 xchain00189_n00114_β:
 jmp xchain00189_n95_α
# IR_DEREF variable -> value
 xchain00189_n00005_α:
 mov rdi, qword ptr [rbp + 1696]
 mov rsi, qword ptr [rbp + 1704]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00189_n00001_α
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain00189_n00119_α
 xchain00189_n00005_β:
 jmp xchain00189_n00001_α
 xchain00189_n00116_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00189_n00120_α
xchain00189_n00116_β:
 jmp xchain00189_n45_β
 xchain00189_n00117_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2400]
 cmp eax, 100
 je .Lx00242_0
 mov eax, dword ptr [rbp + 2368]
 cmp eax, 100
 je .Lx00242_0
 mov eax, dword ptr [rbp + 2400]
 cmp eax, 6
 jne .Lx00242_2
 mov eax, dword ptr [rbp + 2368]
 cmp eax, 6
 jne .Lx00242_2
.Lx00242_1:
 mov rax, qword ptr [rbp + 2408]
 mov rcx, qword ptr [rbp + 2376]
 imul rax, rcx
 mov qword ptr [rbp + 2336], 6
 mov qword ptr [rbp + 2344], rax
 jmp xchain00189_n00123_α
.Lx00242_0:
 mov rdi, qword ptr [rbp + 2400]
 mov rsi, qword ptr [rbp + 2408]
 mov rdx, qword ptr [rbp + 2368]
 mov rcx, qword ptr [rbp + 2376]
 mov r8d, 2
 lea r9, [rbp + 2336]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00242_3
.Lx00242_2:
 mov rdi, qword ptr [rbp + 2400]
 mov rsi, qword ptr [rbp + 2408]
 mov rdx, qword ptr [rbp + 2368]
 mov rcx, qword ptr [rbp + 2376]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00189_n79_α
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
.Lx00242_3:
 jmp xchain00189_n00123_α
 xchain00189_n00117_β:
 jmp xchain00189_n79_α
 xchain00189_n00118_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1824]
 cmp eax, 100
 je .Lx00243_0
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 100
 je .Lx00243_0
 mov eax, dword ptr [rbp + 1824]
 cmp eax, 6
 jne .Lx00243_2
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 6
 jne .Lx00243_2
.Lx00243_1:
 mov rax, qword ptr [rbp + 1832]
 mov rcx, qword ptr [rbp + 1800]
 add rax, rcx
 mov qword ptr [rbp + 1760], 6
 mov qword ptr [rbp + 1768], rax
 jmp xchain00189_n00121_α
.Lx00243_0:
 mov rdi, qword ptr [rbp + 1824]
 mov rsi, qword ptr [rbp + 1832]
 mov rdx, qword ptr [rbp + 1792]
 mov rcx, qword ptr [rbp + 1800]
 mov r8d, 0
 lea r9, [rbp + 1760]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00243_3
.Lx00243_2:
 mov rdi, qword ptr [rbp + 1824]
 mov rsi, qword ptr [rbp + 1832]
 mov rdx, qword ptr [rbp + 1792]
 mov rcx, qword ptr [rbp + 1800]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00189_n95_α
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
.Lx00243_3:
 jmp xchain00189_n00121_α
 xchain00189_n00118_β:
 jmp xchain00189_n95_α
# IR_COERCE_NUMERIC
 xchain00189_n00119_α:
 mov eax, dword ptr [rbp + 1520]
 cmp eax, 7
 je .Lx00244_1
 cmp eax, 6
 jne .Lx00244_0
 mov eax, dword ptr [rbp + 1728]
 cmp eax, 6
 jne .Lx00244_0
.Lx00244_1:
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1400], rax
 jmp .Lx00244_2
.Lx00244_0:
 lea rdi, [rbp + 1520]
 lea rsi, [rbp + 1728]
 lea rdx, [rbp + 1392]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00244_2:
 jmp xchain00189_n00122_α
 xchain00189_n00119_β:
 jmp xchain00189_n00001_α
# IR_VAR_REF
 xchain00189_n00120_α:
 mov rdi, 1879052384
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00189_n00125_α
 xchain00189_n00120_β:
 jmp xchain00189_n00130_α
 xchain00189_n00123_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2336] -> [zr+2304]
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 2312], rax
  .section .rodata
  .Lrkfn855: .string "abs"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn855]
 lea rsi, [rbp + 2304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 cmp eax, 99
 je xchain00189_n79_α
 jmp xchain00189_n00126_α
 xchain00189_n00123_β:
 jmp xchain00189_n79_α
 xchain00189_n00121_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1760]
 mov rdx, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain00189_n95_α
 xchain00189_n00121_β:
 jmp xchain00189_n95_α
# IR_COERCE_NUMERIC
 xchain00189_n00122_α:
 mov eax, dword ptr [rbp + 1728]
 cmp eax, 7
 je .Lx00245_1
 cmp eax, 6
 jne .Lx00245_0
 mov eax, dword ptr [rbp + 1520]
 cmp eax, 6
 jne .Lx00245_0
.Lx00245_1:
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1368], rax
 jmp .Lx00245_2
.Lx00245_0:
 lea rdi, [rbp + 1728]
 lea rsi, [rbp + 1520]
 lea rdx, [rbp + 1360]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00245_2:
 jmp xchain00189_n00127_α
 xchain00189_n00122_β:
 jmp xchain00189_n00001_α
# IR_VAR
 xchain00189_n00125_α:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 904], rax
 jmp xchain00189_n00128_α
 xchain00189_n00125_β:
 jmp xchain00189_n00130_α
 xchain00189_n00126_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2288]
 mov rdx, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 jmp xchain00189_n79_α
 xchain00189_n00126_β:
 jmp xchain00189_n79_α
 xchain00189_n00127_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1392]
 cmp eax, 100
 je .Lx00246_0
 mov eax, dword ptr [rbp + 1360]
 cmp eax, 100
 je .Lx00246_0
 mov eax, dword ptr [rbp + 1392]
 cmp eax, 6
 jne .Lx00246_2
 mov eax, dword ptr [rbp + 1360]
 cmp eax, 6
 jne .Lx00246_2
.Lx00246_1:
 mov rax, qword ptr [rbp + 1400]
 mov rcx, qword ptr [rbp + 1368]
 add rax, rcx
 mov qword ptr [rbp + 1328], 6
 mov qword ptr [rbp + 1336], rax
 jmp xchain00189_n00131_α
.Lx00246_0:
 mov rdi, qword ptr [rbp + 1392]
 mov rsi, qword ptr [rbp + 1400]
 mov rdx, qword ptr [rbp + 1360]
 mov rcx, qword ptr [rbp + 1368]
 mov r8d, 0
 lea r9, [rbp + 1328]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00246_3
.Lx00246_2:
 mov rdi, qword ptr [rbp + 1392]
 mov rsi, qword ptr [rbp + 1400]
 mov rdx, qword ptr [rbp + 1360]
 mov rcx, qword ptr [rbp + 1368]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00189_n00001_α
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
.Lx00246_3:
 jmp xchain00189_n00131_α
 xchain00189_n00127_β:
 jmp xchain00189_n00001_α
# IR_SUBSCRIPT x[i] variable
 xchain00189_n00128_α:
 mov rdi, qword ptr [rbp + 864]
 mov rsi, qword ptr [rbp + 872]
 mov rdx, qword ptr [rbp + 896]
 mov rcx, qword ptr [rbp + 904]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00189_n00130_α
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain00189_n00133_α
 xchain00189_n00128_β:
 jmp xchain00189_n00130_α
# IR_VAR_REF
 xchain00189_n00130_α:
 mov rdi, 1879052400
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00189_n00006_α
 xchain00189_n00130_β:
 jmp xchain00189_n00137_α
 xchain00189_n00131_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1328]
 mov rdx, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain00189_n00001_α
 xchain00189_n00131_β:
 jmp xchain00189_n00001_α
# IR_VAR
 xchain00189_n00133_α:
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 984], rax
 jmp xchain00189_n00135_α
 xchain00189_n00133_β:
 jmp xchain00189_n00130_α
# IR_VAR
 xchain00189_n00006_α:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 760], rax
 jmp xchain00189_n00139_α
 xchain00189_n00006_β:
 jmp xchain00189_n00137_α
# IR_ASSIGN_VAR
 xchain00189_n00135_α:
 mov rdi, qword ptr [rbp + 928]
 mov rsi, qword ptr [rbp + 936]
 mov rdx, qword ptr [rbp + 976]
 mov rcx, qword ptr [rbp + 984]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00189_n00130_α
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain00189_n00130_α
 xchain00189_n00135_β:
 jmp xchain00189_n00130_α
# IR_SUBSCRIPT x[i] variable
 xchain00189_n00139_α:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00189_n00137_α
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain00189_n00007_α
 xchain00189_n00139_β:
 jmp xchain00189_n00137_α
# IR_VAR_REF
 xchain00189_n00137_α:
 mov rdi, 1879052384
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00189_n00140_α
 xchain00189_n00137_β:
 jmp xchain00189_n45_β
# IR_VAR
 xchain00189_n00007_α:
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 840], rax
 jmp xchain00189_n00008_α
 xchain00189_n00007_β:
 jmp xchain00189_n00137_α
# IR_VAR
 xchain00189_n00140_α:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 376], rax
 jmp xchain00189_n00009_α
 xchain00189_n00140_β:
 jmp xchain00189_n45_β
# IR_ASSIGN_VAR
 xchain00189_n00008_α:
 mov rdi, qword ptr [rbp + 784]
 mov rsi, qword ptr [rbp + 792]
 mov rdx, qword ptr [rbp + 832]
 mov rcx, qword ptr [rbp + 840]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00189_n00137_α
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00189_n00137_α
 xchain00189_n00008_β:
 jmp xchain00189_n00137_α
# IR_LIT_INTEGER
 xchain00189_n00009_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx00247_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain00189_n00144_α
 xchain00189_n00009_β:
 jmp xchain00189_n45_β
.Lx00247_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00189_n00144_α:
 mov eax, dword ptr [rbp + 5184]
 cmp eax, 7
 je .Lx00248_1
 cmp eax, 6
 jne .Lx00248_0
 mov eax, dword ptr [rbp + 400]
 cmp eax, 6
 jne .Lx00248_0
.Lx00248_1:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 344], rax
 jmp .Lx00248_2
.Lx00248_0:
 lea rdi, [rbp + 5184]
 lea rsi, [rbp + 400]
 lea rdx, [rbp + 336]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00248_2:
 jmp xchain00189_n00010_α
 xchain00189_n00144_β:
 jmp xchain00189_n45_β
 xchain00189_n00010_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 336]
 cmp eax, 100
 je .Lx00249_0
 mov eax, dword ptr [rbp + 336]
 cmp eax, 6
 jne .Lx00249_2
.Lx00249_1:
 mov rax, qword ptr [rbp + 344]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 304], 6
 mov qword ptr [rbp + 312], rax
 jmp xchain00189_n00146_α
.Lx00249_0:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 mov rdx, qword ptr [rbp + 400]
 mov rcx, qword ptr [rbp + 408]
 mov r8d, 1
 lea r9, [rbp + 304]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00249_3
.Lx00249_2:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 mov rdx, qword ptr [rbp + 400]
 mov rcx, qword ptr [rbp + 408]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00189_n45_β
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
.Lx00249_3:
 jmp xchain00189_n00146_α
 xchain00189_n00010_β:
 jmp xchain00189_n45_β
# IR_SUBSCRIPT x[i] variable
 xchain00189_n00146_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00189_n45_β
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00189_n00147_α
 xchain00189_n00146_β:
 jmp xchain00189_n45_β
# IR_VAR_REF
 xchain00189_n00147_α:
 mov rdi, 1879052400
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00189_n00149_α
 xchain00189_n00147_β:
 jmp xchain00189_n45_β
# IR_VAR
 xchain00189_n00149_α:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 584], rax
 jmp xchain00189_n00151_α
 xchain00189_n00149_β:
 jmp xchain00189_n45_β
# IR_LIT_INTEGER
 xchain00189_n00151_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00250_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00189_n00153_α
 xchain00189_n00151_β:
 jmp xchain00189_n45_β
.Lx00250_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00189_n00153_α:
 mov eax, dword ptr [rbp + 5184]
 cmp eax, 7
 je .Lx00251_1
 cmp eax, 6
 jne .Lx00251_0
 mov eax, dword ptr [rbp + 608]
 cmp eax, 6
 jne .Lx00251_0
.Lx00251_1:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 552], rax
 jmp .Lx00251_2
.Lx00251_0:
 lea rdi, [rbp + 5184]
 lea rsi, [rbp + 608]
 lea rdx, [rbp + 544]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00251_2:
 jmp xchain00189_n00154_α
 xchain00189_n00153_β:
 jmp xchain00189_n45_β
 xchain00189_n00154_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 544]
 cmp eax, 100
 je .Lx00252_0
 mov eax, dword ptr [rbp + 544]
 cmp eax, 6
 jne .Lx00252_2
.Lx00252_1:
 mov rax, qword ptr [rbp + 552]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 512], 6
 mov qword ptr [rbp + 520], rax
 jmp xchain00189_n00155_α
.Lx00252_0:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 1
 lea r9, [rbp + 512]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00252_3
.Lx00252_2:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00189_n45_β
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
.Lx00252_3:
 jmp xchain00189_n00155_α
 xchain00189_n00154_β:
 jmp xchain00189_n45_β
# IR_SUBSCRIPT x[i] variable
 xchain00189_n00155_α:
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 512]
 mov rcx, qword ptr [rbp + 520]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00189_n45_β
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00189_n00156_α
 xchain00189_n00155_β:
 jmp xchain00189_n45_β
# IR_LIT_INTEGER
 xchain00189_n00156_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00253_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00189_n00157_α
 xchain00189_n00156_β:
 jmp xchain00189_n45_β
.Lx00253_0:
 .quad 0
# IR_ASSIGN_VAR
 xchain00189_n00157_α:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00189_n45_β
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00189_n00011_α
 xchain00189_n00157_β:
 jmp xchain00189_n45_β
# IR_ASSIGN_VAR
 xchain00189_n00011_α:
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 mov rdx, qword ptr [rbp + 672]
 mov rcx, qword ptr [rbp + 680]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00189_n45_β
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00189_n00254_α
 xchain00189_n00011_β:
 jmp xchain00189_n45_β
 xchain00189_n00254_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 264], rax
 jmp xchain00189_n00255_α
xchain00189_n00254_β:
 jmp xchain00189_n45_β
# IR_MOVE_LABEL
 xchain00189_n00255_α:
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 232], rax
 lea rax, [rip + xchain00189_n45_β]
 mov qword ptr [rbp + 240], rax
 jmp xchain00189_n00256_α
 xchain00189_n00255_β:
 jmp xchain00189_n45_β
 xchain00189_n00256_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 216], rax
 jmp xchain00189_n00257_α
xchain00189_n00256_β:
 jmp xchain00189_n45_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00189_n00258_α:
 jmp qword ptr [rbp + 240]
 xchain00189_n00258_β:
 jmp xchain00189_n45_β
# IR_MOVE_LABEL
 xchain00189_n00257_α:
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 184], rax
 lea rax, [rip + xchain00189_n00258_α]
 mov qword ptr [rbp + 192], rax
 jmp xchain00189_n00259_α
 xchain00189_n00257_β:
 jmp xchain00189_n45_β
 xchain00189_n00259_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 168], rax
 jmp xchain00189_n45_β
xchain00189_n00259_β:
 jmp xchain00189_n45_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00189_n00260_α:
 jmp qword ptr [rbp + 192]
 xchain00189_n00260_β:
 jmp xchain00189_n45_β
proc_collapse_res:
add rsp, 8
pop rbp
proc_collapse_β:
jmp proc_collapse_ω
proc_collapse_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 5400]
lea rsp, [rbp + 5424]
mov rbp, [rbp + 5416]
jmp rax
proc_collapse_ω:
mov rax, [rbp + 5408]
lea rsp, [rbp + 5424]
mov rbp, [rbp + 5416]
jmp rax
  .globl proc_successor_α
proc_successor_α:
#=======================================================================================================================
    .global proc_successor_α
    .global proc_successor_β
    .global proc_successor_γ
    .global proc_successor_ω
  sub rsp, 2256
  mov [rsp + 2232], rcx
  mov [rsp + 2240], rdx
  mov [rsp + 2248], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 2224
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 2120], rsp
  mov rdi, rsp
  mov esi, 2224
  call rt_jmp_frame_lexprep@PLT
proc_successor_α_body:
# IR_VAR_REF
 xchain00261_n0_α:
 mov rdi, 1879052352
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain00261_n1_α
 xchain00261_n0_β:
 jmp xchain00261_n3_α
# IR_VAR
 xchain00261_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2040], rax
 jmp xchain00261_n2_α
 xchain00261_n1_β:
 jmp xchain00261_n3_α
# IR_FIELD_GET
 xchain00261_n2_α:
 mov rdi, qword ptr [rip + .Lx00262_0]
 mov rsi, qword ptr [rbp + 2032]
 mov rdx, qword ptr [rbp + 2040]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00261_n3_α
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain00261_n4_α
 xchain00261_n2_β:
 jmp xchain00261_n3_α
.Lx00262_0:
 .quad .Lx00262_0_s
.Lx00262_0_s:
 .string "code"
# IR_VAR
 xchain00261_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1672], rax
 jmp xchain00261_n5_α
 xchain00261_n3_β:
 jmp xchain00261_n6_α
# IR_SUBSCRIPT x[i] variable
 xchain00261_n4_α:
 mov rdi, qword ptr [rbp + 1968]
 mov rsi, qword ptr [rbp + 1976]
 mov rdx, qword ptr [rbp + 2000]
 mov rcx, qword ptr [rbp + 2008]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00261_n3_α
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 jmp xchain00261_n7_α
 xchain00261_n4_β:
 jmp xchain00261_n3_α
# IR_FIELD_GET
 xchain00261_n5_α:
 mov rdi, qword ptr [rip + .Lx00263_0]
 mov rsi, qword ptr [rbp + 1664]
 mov rdx, qword ptr [rbp + 1672]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00261_n6_α
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain00261_n8_α
 xchain00261_n5_β:
 jmp xchain00261_n6_α
.Lx00263_0:
 .quad .Lx00263_0_s
.Lx00263_0_s:
 .string "x2"
# IR_LIT_INTEGER
 xchain00261_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00264_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00261_n9_α
 xchain00261_n6_β:
 jmp xchain00261_n13_α
.Lx00264_0:
 .quad 0
# IR_DEREF variable -> value
 xchain00261_n7_α:
 mov rdi, qword ptr [rbp + 2064]
 mov rsi, qword ptr [rbp + 2072]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00261_n3_α
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain00261_n10_α
 xchain00261_n7_β:
 jmp xchain00261_n3_α
# IR_VAR
 xchain00261_n8_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1736], rax
 jmp xchain00261_n11_α
 xchain00261_n8_β:
 jmp xchain00261_n6_α
# IR_MOVE_LABEL
 xchain00261_n9_α:
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 56], rax
 lea rax, [rip + xchain00261_n13_α]
 mov qword ptr [rbp + 64], rax
 jmp xchain00261_n12_α
 xchain00261_n9_β:
 jmp proc_successor_ω
 xchain00261_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2096]
 mov rdx, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain00261_n3_α
 xchain00261_n10_β:
 jmp xchain00261_n3_α
# IR_FIELD_GET
 xchain00261_n11_α:
 mov rdi, qword ptr [rip + .Lx00265_0]
 mov rsi, qword ptr [rbp + 1728]
 mov rdx, qword ptr [rbp + 1736]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00261_n6_α
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain00261_n15_α
 xchain00261_n11_β:
 jmp xchain00261_n6_α
.Lx00265_0:
 .quad .Lx00265_0_s
.Lx00265_0_s:
 .string "y2"
 xchain00261_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00261_n16_α
 xchain00261_n12_β:
 jmp proc_successor_ω
# IR_LIT_INTEGER
 xchain00261_n13_α:
 mov qword ptr [rbp + 112], 6
 mov rax, qword ptr [rip + .Lx00266_0]
 mov qword ptr [rbp + 120], rax
 jmp xchain00261_n17_α
 xchain00261_n13_β:
 jmp xchain00261_n20_α
.Lx00266_0:
 .quad 1
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00261_n14_α:
 jmp qword ptr [rbp + 64]
 xchain00261_n14_β:
 jmp proc_successor_ω
# IR_COERCE_NUMERIC
 xchain00261_n15_α:
 mov eax, dword ptr [rbp + 1632]
 cmp eax, 7
 je .Lx00267_1
 cmp eax, 6
 jne .Lx00267_0
 mov eax, dword ptr [rbp + 1696]
 cmp eax, 6
 jne .Lx00267_0
.Lx00267_1:
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1608], rax
 jmp .Lx00267_2
.Lx00267_0:
 lea rdi, [rbp + 1632]
 lea rsi, [rbp + 1696]
 lea rdx, [rbp + 1600]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00267_2:
 jmp xchain00261_n18_α
 xchain00261_n15_β:
 jmp xchain00261_n6_α
# IR_VAR_REF
 xchain00261_n16_α:
 lea rdi, [rbp + 2208]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain00261_n19_α
 xchain00261_n16_β:
 jmp xchain00261_n14_α
# IR_MOVE_LABEL
 xchain00261_n17_α:
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 56], rax
 lea rax, [rip + xchain00261_n20_α]
 mov qword ptr [rbp + 64], rax
 jmp xchain00261_n12_α
 xchain00261_n17_β:
 jmp proc_successor_ω
# IR_COERCE_NUMERIC
 xchain00261_n18_α:
 mov eax, dword ptr [rbp + 1696]
 cmp eax, 7
 je .Lx00268_1
 cmp eax, 6
 jne .Lx00268_0
 mov eax, dword ptr [rbp + 1632]
 cmp eax, 6
 jne .Lx00268_0
.Lx00268_1:
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1576], rax
 jmp .Lx00268_2
.Lx00268_0:
 lea rdi, [rbp + 1696]
 lea rsi, [rbp + 1632]
 lea rdx, [rbp + 1568]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00268_2:
 jmp xchain00261_n21_α
 xchain00261_n18_β:
 jmp xchain00261_n6_α
# IR_VAR
 xchain00261_n19_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1320], rax
 jmp xchain00261_n22_α
 xchain00261_n19_β:
 jmp xchain00261_n14_α
# IR_LIT_INTEGER
 xchain00261_n20_α:
 mov qword ptr [rbp + 80], 6
 mov rax, qword ptr [rip + .Lx00269_0]
 mov qword ptr [rbp + 88], rax
 jmp xchain00261_n24_α
 xchain00261_n20_β:
 jmp proc_successor_ω
.Lx00269_0:
 .quad 18446744073709551615
 xchain00261_n21_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1600]
 cmp eax, 100
 je .Lx00270_0
 mov eax, dword ptr [rbp + 1568]
 cmp eax, 100
 je .Lx00270_0
 mov eax, dword ptr [rbp + 1600]
 cmp eax, 6
 jne .Lx00270_2
 mov eax, dword ptr [rbp + 1568]
 cmp eax, 6
 jne .Lx00270_2
.Lx00270_1:
 mov rax, qword ptr [rbp + 1608]
 mov rcx, qword ptr [rbp + 1576]
 add rax, rcx
 mov qword ptr [rbp + 1536], 6
 mov qword ptr [rbp + 1544], rax
 jmp xchain00261_n25_α
.Lx00270_0:
 mov rdi, qword ptr [rbp + 1600]
 mov rsi, qword ptr [rbp + 1608]
 mov rdx, qword ptr [rbp + 1568]
 mov rcx, qword ptr [rbp + 1576]
 mov r8d, 0
 lea r9, [rbp + 1536]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00270_3
.Lx00270_2:
 mov rdi, qword ptr [rbp + 1600]
 mov rsi, qword ptr [rbp + 1608]
 mov rdx, qword ptr [rbp + 1568]
 mov rcx, qword ptr [rbp + 1576]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00261_n6_α
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
.Lx00270_3:
 jmp xchain00261_n25_α
 xchain00261_n21_β:
 jmp xchain00261_n6_α
# IR_FIELD_GET
 xchain00261_n22_α:
 mov rdi, qword ptr [rip + .Lx00271_0]
 mov rsi, qword ptr [rbp + 1312]
 mov rdx, qword ptr [rbp + 1320]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00261_n14_α
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain00261_n26_α
 xchain00261_n22_β:
 jmp xchain00261_n14_α
.Lx00271_0:
 .quad .Lx00271_0_s
.Lx00271_0_s:
 .string "aindex"
 xchain00261_n23_α:
 jmp xchain00261_n14_α
xchain00261_n23_β:
 jmp xchain00261_n14_α
# IR_MOVE_LABEL
 xchain00261_n24_α:
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 56], rax
 lea rax, [rip + proc_successor_ω]
 mov qword ptr [rbp + 64], rax
 jmp xchain00261_n12_α
 xchain00261_n24_β:
 jmp proc_successor_ω
# IR_LIT_INTEGER
 xchain00261_n25_α:
 mov qword ptr [rbp + 1760], 6
 mov rax, qword ptr [rip + .Lx00272_0]
 mov qword ptr [rbp + 1768], rax
 jmp xchain00261_n27_α
 xchain00261_n25_β:
 jmp xchain00261_n6_α
.Lx00272_0:
 .quad 8
# IR_VAR
 xchain00261_n26_α:
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 1352], rax
 jmp xchain00261_n28_α
 xchain00261_n26_β:
 jmp xchain00261_n14_α
 xchain00261_n27_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1536] -> [zr+1488]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1496], rax
# marshal arg1 = producer-box slot [zr+1760] -> [zr+1504]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1512], rax
  .section .rodata
  .Lrkfn950: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn950]
 lea rsi, [rbp + 1488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je xchain00261_n6_α
 jmp xchain00261_n29_α
 xchain00261_n27_β:
 jmp xchain00261_n6_α
# IR_COERCE_NUMERIC
 xchain00261_n28_α:
 mov eax, dword ptr [rbp + 1280]
 cmp eax, 7
 je .Lx00273_1
 cmp eax, 6
 jne .Lx00273_0
 mov eax, dword ptr [rbp + 2128]
 cmp eax, 6
 jne .Lx00273_0
.Lx00273_1:
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1256], rax
 jmp .Lx00273_2
.Lx00273_0:
 lea rdi, [rbp + 1280]
 lea rsi, [rbp + 2128]
 lea rdx, [rbp + 1248]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00273_2:
 jmp xchain00261_n30_α
 xchain00261_n28_β:
 jmp xchain00261_n14_α
# IR_VAR
 xchain00261_n29_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1896], rax
 jmp xchain00261_n31_α
 xchain00261_n29_β:
 jmp xchain00261_n6_α
# IR_COERCE_NUMERIC
 xchain00261_n30_α:
 mov eax, dword ptr [rbp + 2128]
 cmp eax, 7
 je .Lx00274_1
 cmp eax, 6
 jne .Lx00274_0
 mov eax, dword ptr [rbp + 1280]
 cmp eax, 6
 jne .Lx00274_0
.Lx00274_1:
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 1224], rax
 jmp .Lx00274_2
.Lx00274_0:
 lea rdi, [rbp + 2128]
 lea rsi, [rbp + 1280]
 lea rdx, [rbp + 1216]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00274_2:
 jmp xchain00261_n32_α
 xchain00261_n30_β:
 jmp xchain00261_n14_α
# IR_FIELD_GET
 xchain00261_n31_α:
 mov rdi, qword ptr [rip + .Lx00275_0]
 mov rsi, qword ptr [rbp + 1888]
 mov rdx, qword ptr [rbp + 1896]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00261_n6_α
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 jmp xchain00261_n33_α
 xchain00261_n31_β:
 jmp xchain00261_n6_α
.Lx00275_0:
 .quad .Lx00275_0_s
.Lx00275_0_s:
 .string "x2"
 xchain00261_n32_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1248]
 cmp eax, 100
 je .Lx00276_0
 mov eax, dword ptr [rbp + 1216]
 cmp eax, 100
 je .Lx00276_0
 mov eax, dword ptr [rbp + 1248]
 cmp eax, 6
 jne .Lx00276_2
 mov eax, dword ptr [rbp + 1216]
 cmp eax, 6
 jne .Lx00276_2
.Lx00276_1:
 mov rax, qword ptr [rbp + 1256]
 mov rcx, qword ptr [rbp + 1224]
 add rax, rcx
 mov qword ptr [rbp + 1184], 6
 mov qword ptr [rbp + 1192], rax
 jmp xchain00261_n34_α
.Lx00276_0:
 mov rdi, qword ptr [rbp + 1248]
 mov rsi, qword ptr [rbp + 1256]
 mov rdx, qword ptr [rbp + 1216]
 mov rcx, qword ptr [rbp + 1224]
 mov r8d, 0
 lea r9, [rbp + 1184]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00276_3
.Lx00276_2:
 mov rdi, qword ptr [rbp + 1248]
 mov rsi, qword ptr [rbp + 1256]
 mov rdx, qword ptr [rbp + 1216]
 mov rcx, qword ptr [rbp + 1224]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00261_n14_α
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
.Lx00276_3:
 jmp xchain00261_n34_α
 xchain00261_n32_β:
 jmp xchain00261_n14_α
# IR_LIT_INTEGER
 xchain00261_n33_α:
 mov qword ptr [rbp + 1920], 6
 mov rax, qword ptr [rip + .Lx00277_0]
 mov qword ptr [rbp + 1928], rax
 jmp xchain00261_n35_α
 xchain00261_n33_β:
 jmp xchain00261_n6_α
.Lx00277_0:
 .quad 7
# IR_SUBSCRIPT x[i] variable
 xchain00261_n34_α:
 mov rdi, qword ptr [rbp + 1152]
 mov rsi, qword ptr [rbp + 1160]
 mov rdx, qword ptr [rbp + 1184]
 mov rcx, qword ptr [rbp + 1192]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00261_n14_α
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain00261_n36_α
 xchain00261_n34_β:
 jmp xchain00261_n14_α
 xchain00261_n35_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1856] -> [zr+1808]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1816], rax
# marshal arg1 = producer-box slot [zr+1920] -> [zr+1824]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1832], rax
  .section .rodata
  .Lrkfn962: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn962]
 lea rsi, [rbp + 1808]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 cmp eax, 99
 je xchain00261_n6_α
 jmp xchain00261_n37_α
 xchain00261_n35_β:
 jmp xchain00261_n6_α
# IR_DEREF variable -> value
 xchain00261_n36_α:
 mov rdi, qword ptr [rbp + 1376]
 mov rsi, qword ptr [rbp + 1384]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00261_n14_α
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain00261_n38_α
 xchain00261_n36_β:
 jmp xchain00261_n14_α
 xchain00261_n37_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1472]
 mov rsi, qword ptr [rbp + 1480]
 mov rdx, qword ptr [rbp + 1792]
 mov rcx, qword ptr [rbp + 1800]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain00261_n39_α
 xchain00261_n37_β:
 jmp xchain00261_n6_α
# IR_MOVE_LABEL
 xchain00261_n38_α:
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1128], rax
 lea rax, [rip + xchain00261_n23_α]
 mov qword ptr [rbp + 1136], rax
 jmp xchain00261_n40_α
 xchain00261_n38_β:
 jmp xchain00261_n42_α
 xchain00261_n39_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1440]
 mov rdx, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain00261_n6_α
 xchain00261_n39_β:
 jmp xchain00261_n6_α
 xchain00261_n40_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1120]
 mov rdx, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00261_n42_α
 xchain00261_n40_β:
 jmp xchain00261_n42_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00261_n41_α:
 jmp qword ptr [rbp + 1136]
 xchain00261_n41_β:
 jmp xchain00261_n42_α
# IR_VAR_REF
 xchain00261_n42_α:
 lea rdi, [rbp + 2176]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00261_n43_α
 xchain00261_n42_β:
 jmp xchain00261_n14_α
# IR_VAR
 xchain00261_n43_α:
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00261_n44_α
 xchain00261_n43_β:
 jmp xchain00261_n14_α
# IR_SUBSCRIPT x[i] variable
 xchain00261_n44_α:
 mov rdi, qword ptr [rbp + 992]
 mov rsi, qword ptr [rbp + 1000]
 mov rdx, qword ptr [rbp + 1024]
 mov rcx, qword ptr [rbp + 1032]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00261_n14_α
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain00261_n45_α
 xchain00261_n44_β:
 jmp xchain00261_n14_α
# IR_DEREF variable -> value
 xchain00261_n45_α:
 mov rdi, qword ptr [rbp + 1056]
 mov rsi, qword ptr [rbp + 1064]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00261_n14_α
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain00261_n46_α
 xchain00261_n45_β:
 jmp xchain00261_n14_α
# IR_UNOP
 xchain00261_n46_α:
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 99
 je xchain00261_n14_α
 cmp eax, 0
 je xchain00261_n14_α
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 968], rax
 jmp xchain00261_n47_α
 xchain00261_n46_β:
 jmp xchain00261_n14_α
 xchain00261_n47_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 960]
 mov rdx, qword ptr [rbp + 968]
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain00261_n48_α
 xchain00261_n47_β:
 jmp xchain00261_n14_α
# IR_VAR
 xchain00261_n48_α:
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 888], rax
 jmp xchain00261_n49_α
 xchain00261_n48_β:
 jmp xchain00261_n50_α
 xchain00261_n49_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+848]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 856], rax
  .section .rodata
  .Lrkfn982: .string "type"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn982]
 lea rsi, [rbp + 848]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain00261_n50_α
 jmp xchain00261_n51_α
 xchain00261_n49_β:
 jmp xchain00261_n50_α
# IR_VAR
 xchain00261_n50_α:
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 776], rax
 jmp xchain00261_n52_α
 xchain00261_n50_β:
 jmp xchain00261_n14_α
# IR_LIT_STRING
 xchain00261_n51_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx00278_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00261_n53_α
 xchain00261_n51_β:
 jmp xchain00261_n50_α
.Lx00278_0:
 .quad .Lx00278_0_s
.Lx00278_0_s:
 .string "list"
# IR_LIST_BANG
 xchain00261_n52_α:
 mov qword ptr [rbp + 752], 0
.Lx00279_0:
 mov rdi, qword ptr [rbp + 768]
 mov rsi, qword ptr [rbp + 776]
 mov rdx, qword ptr [rbp + 752]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp rax, 99
 je xchain00261_n14_α
 jmp xchain00261_n54_α
 xchain00261_n52_β:
 inc qword ptr [rbp + 752]
 jmp .Lx00279_0
 xchain00261_n53_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 832]
 mov rsi, qword ptr [rbp + 840]
 mov rdx, qword ptr [rbp + 912]
 mov rcx, qword ptr [rbp + 920]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00261_n50_α
 mov rdi, qword ptr [rbp + 912]
 mov rsi, qword ptr [rbp + 920]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00261_n55_α
 xchain00261_n53_β:
 jmp xchain00261_n50_α
 xchain00261_n54_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00261_n56_α
 xchain00261_n54_β:
 jmp xchain00261_n14_α
# IR_VAR
 xchain00261_n55_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00261_n57_α
 xchain00261_n55_β:
 jmp xchain00261_n58_α
# IR_VAR
 xchain00261_n56_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00261_n59_α
 xchain00261_n56_β:
 jmp xchain00261_n60_α
# IR_VAR
 xchain00261_n57_α:
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 456], rax
 jmp xchain00261_n61_α
 xchain00261_n57_β:
 jmp xchain00261_n58_α
# KEYWORD_null
 xchain00261_n58_α:
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00261_n62_α
 xchain00261_n58_β:
 jmp xchain00261_n14_α
# IR_VAR
 xchain00261_n59_α:
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 696], rax
 jmp xchain00261_n63_α
 xchain00261_n59_β:
 jmp xchain00261_n60_α
# KEYWORD_null
 xchain00261_n60_α:
 mov qword ptr [rbp + 560], 0
 mov qword ptr [rbp + 568], 0
 jmp xchain00261_n64_α
 xchain00261_n60_β:
 jmp xchain00261_n52_β
 xchain00261_n61_α:
# BOX IR_CALL member(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn999: .string "member"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn999]
 lea rsi, [rbp + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain00261_n58_α
 jmp xchain00261_n14_α
 xchain00261_n61_β:
 jmp xchain00261_n58_α
# IR_VAR
 xchain00261_n62_α:
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 296], rax
 jmp xchain00261_n65_α
 xchain00261_n62_β:
 jmp proc_successor_ω
 xchain00261_n63_α:
# BOX IR_CALL member(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 616], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+624]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 632], rax
  .section .rodata
  .Lrkfn1003: .string "member"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1003]
 lea rsi, [rbp + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00261_n60_α
 jmp xchain00261_n52_β
 xchain00261_n63_β:
 jmp xchain00261_n60_α
 xchain00261_n64_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 552], rax
 jmp xchain00261_n66_α
xchain00261_n64_β:
 jmp xchain00261_n14_α
# IR_RETURN
 xchain00261_n65_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_successor_γ
# IR_VAR
 xchain00261_n66_α:
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 520], rax
 jmp xchain00261_n67_α
 xchain00261_n66_β:
 jmp proc_successor_ω
# IR_RETURN
 xchain00261_n67_α:
 mov rax, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_successor_γ
proc_successor_res:
add rsp, 8
pop rbp
proc_successor_β:
jmp proc_successor_ω
proc_successor_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 2232]
lea rsp, [rbp + 2256]
mov rbp, [rbp + 2248]
jmp rax
proc_successor_ω:
mov rax, [rbp + 2240]
lea rsp, [rbp + 2256]
mov rbp, [rbp + 2248]
jmp rax
  .globl proc_crack_α
proc_crack_α:
#=======================================================================================================================
    .global proc_crack_α
    .global proc_crack_β
    .global proc_crack_γ
    .global proc_crack_ω
  sub rsp, 4576
  mov [rsp + 4552], rcx
  mov [rsp + 4560], rdx
  mov [rsp + 4568], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 4544
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 4456], rsp
  mov rdi, rsp
  mov esi, 4544
  call rt_jmp_frame_lexprep@PLT
proc_crack_α_body:
# IR_VAR_REF
 xchain00280_n0_α:
 mov rdi, 1879052432
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 jmp xchain00280_n1_α
 xchain00280_n0_β:
 jmp xchain00280_n3_α
# IR_NULLTEST_VAR
 xchain00280_n1_α:
 mov eax, dword ptr [rbp + 4336]
 cmp eax, 99
 je xchain00280_n3_α
 mov rdi, qword ptr [rbp + 4336]
 mov rsi, qword ptr [rbp + 4344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00280_n3_α
 cmp eax, 0
 jne xchain00280_n3_α
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [rbp + 4368], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [rbp + 4376], rax
 jmp xchain00280_n2_α
 xchain00280_n1_β:
 jmp xchain00280_n3_α
# IR_LIT_INTEGER
 xchain00280_n2_α:
 mov qword ptr [rbp + 4416], 6
 mov rax, qword ptr [rip + .Lx00281_0]
 mov qword ptr [rbp + 4424], rax
 jmp xchain00280_n4_α
 xchain00280_n2_β:
 jmp xchain00280_n3_α
.Lx00281_0:
 .quad 1
# IR_VAR
 xchain00280_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 4224], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 4232], rax
 jmp xchain00280_n5_α
 xchain00280_n3_β:
 jmp xchain00280_n6_α
# IR_ASSIGN_VAR
 xchain00280_n4_α:
 mov rdi, qword ptr [rbp + 4368]
 mov rsi, qword ptr [rbp + 4376]
 mov rdx, qword ptr [rbp + 4416]
 mov rcx, qword ptr [rbp + 4424]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00280_n3_α
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 jmp xchain00280_n7_α
 xchain00280_n4_β:
 jmp xchain00280_n3_α
# IR_GEN_SCAN
 xchain00280_n5_α:
 mov rdi, qword ptr [rbp + 4224]
 mov rsi, qword ptr [rbp + 4232]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00280_n8_α
 xchain00280_n5_β:
 jmp xchain00280_n6_α
# IR_VAR
 xchain00280_n6_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00280_n9_α
 xchain00280_n6_β:
 jmp proc_crack_ω
 xchain00280_n7_α:
# BOX IR_CALL crec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1021: .string "crec"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1021]
 lea rsi, [rbp + 4320]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 cmp eax, 99
 je xchain00280_n3_α
 jmp xchain00280_n10_α
 xchain00280_n7_β:
 jmp xchain00280_n3_α
# IR_VAR
 xchain00280_n8_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 jmp xchain00280_n11_α
 xchain00280_n8_β:
 jmp xchain00280_n12_α
# IR_RETURN
 xchain00280_n9_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_crack_γ
# IR_ASSIGN gva
 xchain00280_n10_α:
 mov rax, qword ptr [rbp + 4304]
 mov rdx, qword ptr [rbp + 4312]
 mov qword ptr [1879052416], rax
 mov qword ptr [1879052424], rdx
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 jmp xchain00280_n13_α
 xchain00280_n10_β:
 jmp xchain00280_n3_α
# IR_FIELD_GET lv
 xchain00280_n11_α:
 mov rdi, qword ptr [rip + .Lx00282_0]
 mov rsi, qword ptr [rbp + 4112]
 mov rdx, qword ptr [rbp + 4120]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00280_n12_α
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
 jmp xchain00280_n14_α
 xchain00280_n11_β:
 jmp xchain00280_n12_α
.Lx00282_0:
 .quad .Lx00282_0_s
.Lx00282_0_s:
 .string "code"
# IR_LIT_INTEGER
 xchain00280_n12_α:
 mov qword ptr [rbp + 4048], 6
 mov rax, qword ptr [rip + .Lx00283_0]
 mov qword ptr [rbp + 4056], rax
 jmp xchain00280_n15_α
 xchain00280_n12_β:
 jmp xchain00280_n18_α
.Lx00283_0:
 .quad 4
# IR_MOVE_LABEL
 xchain00280_n13_α:
 mov rax, qword ptr [rbp + 4288]
 mov qword ptr [rbp + 4256], rax
 mov rax, qword ptr [rbp + 4296]
 mov qword ptr [rbp + 4264], rax
 lea rax, [rip + xchain00280_n3_α]
 mov qword ptr [rbp + 4272], rax
 jmp xchain00280_n3_α
 xchain00280_n13_β:
 jmp xchain00280_n3_α
# IR_LIT_INTEGER
 xchain00280_n14_α:
 mov qword ptr [rbp + 4192], 6
 mov rax, qword ptr [rip + .Lx00284_0]
 mov qword ptr [rbp + 4200], rax
 jmp xchain00280_n17_α
 xchain00280_n14_β:
 jmp xchain00280_n12_α
.Lx00284_0:
 .quad 4
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00280_n15_α:
 sub rsp, 16
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00285_239
 add rsp, 16
 jmp xchain00280_n18_α
.Lx00285_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00285_240
 add rsp, 16
 jmp xchain00280_n18_α
.Lx00285_240:
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
 mov qword ptr [rbp + 4016], rax
 mov qword ptr [rbp + 4024], rdx
 jmp xchain00280_n18_α
 xchain00280_n15_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00280_n18_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00280_n16_α:
 jmp qword ptr [rbp + 4272]
 xchain00280_n16_β:
 jmp xchain00280_n3_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00280_n17_α:
 sub rsp, 16
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00286_239
 add rsp, 16
 jmp xchain00280_n12_α
.Lx00286_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00286_240
 add rsp, 16
 jmp xchain00280_n12_α
.Lx00286_240:
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
 mov qword ptr [rbp + 4160], rax
 mov qword ptr [rbp + 4168], rdx
 jmp xchain00280_n19_α
 xchain00280_n17_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00280_n12_α
# IR_LIT_INTEGER
 xchain00280_n18_α:
 mov qword ptr [rbp + 3984], 6
 mov rax, qword ptr [rip + .Lx00287_0]
 mov qword ptr [rbp + 3992], rax
 jmp xchain00280_n20_α
 xchain00280_n18_β:
 jmp xchain00280_n22_α
.Lx00287_0:
 .quad 7
# IR_ASSIGN_VAR
 xchain00280_n19_α:
 mov rdi, qword ptr [rbp + 4080]
 mov rsi, qword ptr [rbp + 4088]
 mov rdx, qword ptr [rbp + 4160]
 mov rcx, qword ptr [rbp + 4168]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00280_n12_α
 mov qword ptr [rbp + 4144], rax
 mov qword ptr [rbp + 4152], rdx
 jmp xchain00280_n12_α
 xchain00280_n19_β:
 jmp xchain00280_n12_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00280_n20_α:
 sub rsp, 16
 mov rax, 7
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00288_239
 add rsp, 16
 jmp xchain00280_n22_α
.Lx00288_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00288_240
 add rsp, 16
 jmp xchain00280_n22_α
.Lx00288_240:
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
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 jmp xchain00280_n21_α
 xchain00280_n20_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00280_n22_α
 xchain00280_n21_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3952] -> [zr+3920]
 mov rax, qword ptr [rbp + 3952]
 mov qword ptr [rbp + 3920], rax
 mov rax, qword ptr [rbp + 3960]
 mov qword ptr [rbp + 3928], rax
  .section .rodata
  .Lrkfn1041: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1041]
 lea rsi, [rbp + 3920]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 cmp eax, 99
 je xchain00280_n22_α
 jmp xchain00280_n23_α
 xchain00280_n21_β:
 jmp xchain00280_n22_α
# IR_LIT_INTEGER
 xchain00280_n22_α:
 mov qword ptr [rbp + 3840], 6
 mov rax, qword ptr [rip + .Lx00289_0]
 mov qword ptr [rbp + 3848], rax
 jmp xchain00280_n24_α
 xchain00280_n22_β:
 jmp xchain00280_n27_α
.Lx00289_0:
 .quad 7
 xchain00280_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3904]
 mov rdx, qword ptr [rbp + 3912]
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 jmp xchain00280_n25_α
 xchain00280_n23_β:
 jmp xchain00280_n22_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00280_n24_α:
 sub rsp, 16
 mov rax, 7
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00290_239
 add rsp, 16
 jmp xchain00280_n27_α
.Lx00290_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00290_240
 add rsp, 16
 jmp xchain00280_n27_α
.Lx00290_240:
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
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 jmp xchain00280_n26_α
 xchain00280_n24_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00280_n27_α
 xchain00280_n25_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3888]
 mov rdx, qword ptr [rbp + 3896]
 mov qword ptr [rbp + 4528], rax
 mov qword ptr [rbp + 4536], rdx
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 jmp xchain00280_n22_α
 xchain00280_n25_β:
 jmp xchain00280_n22_α
 xchain00280_n26_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3808] -> [zr+3776]
 mov rax, qword ptr [rbp + 3808]
 mov qword ptr [rbp + 3776], rax
 mov rax, qword ptr [rbp + 3816]
 mov qword ptr [rbp + 3784], rax
  .section .rodata
  .Lrkfn1048: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1048]
 lea rsi, [rbp + 3776]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 cmp eax, 99
 je xchain00280_n27_α
 jmp xchain00280_n28_α
 xchain00280_n26_β:
 jmp xchain00280_n27_α
# IR_VAR
 xchain00280_n27_α:
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 3232], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 3240], rax
 jmp xchain00280_n29_α
 xchain00280_n27_β:
 jmp xchain00280_n30_α
 xchain00280_n28_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3760]
 mov rdx, qword ptr [rbp + 3768]
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3752], rdx
 jmp xchain00280_n31_α
 xchain00280_n28_β:
 jmp xchain00280_n27_α
# IR_LIT_INTEGER
 xchain00280_n29_α:
 mov qword ptr [rbp + 3360], 6
 mov rax, qword ptr [rip + .Lx00291_0]
 mov qword ptr [rbp + 3368], rax
 jmp xchain00280_n32_α
 xchain00280_n29_β:
 jmp xchain00280_n30_α
.Lx00291_0:
 .quad 4
# IR_VAR
 xchain00280_n30_α:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 2896], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 2904], rax
 jmp xchain00280_n33_α
 xchain00280_n30_β:
 jmp xchain00280_n34_α
 xchain00280_n31_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3744]
 mov rdx, qword ptr [rbp + 3752]
 mov qword ptr [rbp + 4496], rax
 mov qword ptr [rbp + 4504], rdx
 mov qword ptr [rbp + 3728], rax
 mov qword ptr [rbp + 3736], rdx
 jmp xchain00280_n27_α
 xchain00280_n31_β:
 jmp xchain00280_n27_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00280_n32_α:
 sub rsp, 16
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00292_239
 add rsp, 16
 jmp xchain00280_n30_α
.Lx00292_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00292_240
 add rsp, 16
 jmp xchain00280_n30_α
.Lx00292_240:
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
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 jmp xchain00280_n35_α
 xchain00280_n32_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00280_n30_α
# IR_VAR
 xchain00280_n33_α:
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 2928], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 2936], rax
 jmp xchain00280_n36_α
 xchain00280_n33_β:
 jmp xchain00280_n34_α
# IR_VAR
 xchain00280_n34_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 jmp xchain00280_n37_α
 xchain00280_n34_β:
 jmp xchain00280_n38_α
# IR_LIT_INTEGER
 xchain00280_n35_α:
 mov qword ptr [rbp + 3392], 6
 mov rax, qword ptr [rip + .Lx00293_0]
 mov qword ptr [rbp + 3400], rax
 jmp xchain00280_n39_α
 xchain00280_n35_β:
 jmp xchain00280_n30_α
.Lx00293_0:
 .quad 5000
# IR_COERCE_NUMERIC
 xchain00280_n36_α:
 mov eax, dword ptr [rbp + 4528]
 cmp eax, 7
 je .Lx00294_1
 cmp eax, 6
 jne .Lx00294_0
 mov eax, dword ptr [rbp + 4496]
 cmp eax, 6
 jne .Lx00294_0
.Lx00294_1:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 2872], rax
 jmp .Lx00294_2
.Lx00294_0:
 lea rdi, [rbp + 4528]
 lea rsi, [rbp + 4496]
 lea rdx, [rbp + 2864]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00294_2:
 jmp xchain00280_n40_α
 xchain00280_n36_β:
 jmp xchain00280_n34_α
# IR_FIELD_GET lv
 xchain00280_n37_α:
 mov rdi, qword ptr [rip + .Lx00295_0]
 mov rsi, qword ptr [rbp + 2688]
 mov rdx, qword ptr [rbp + 2696]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00280_n38_α
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 jmp xchain00280_n41_α
 xchain00280_n37_β:
 jmp xchain00280_n38_α
.Lx00295_0:
 .quad .Lx00295_0_s
.Lx00295_0_s:
 .string "rev"
# IR_VAR
 xchain00280_n38_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain00280_n42_α
 xchain00280_n38_β:
 jmp xchain00280_n43_α
# IR_COERCE_NUMERIC
 xchain00280_n39_α:
 mov eax, dword ptr [rbp + 3328]
 cmp eax, 7
 je .Lx00296_1
 cmp eax, 6
 jne .Lx00296_0
 mov eax, dword ptr [rbp + 3392]
 cmp eax, 6
 jne .Lx00296_0
.Lx00296_1:
 mov rax, qword ptr [rbp + 3328]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 3336]
 mov qword ptr [rbp + 3304], rax
 jmp .Lx00296_2
.Lx00296_0:
 lea rdi, [rbp + 3328]
 lea rsi, [rbp + 3392]
 lea rdx, [rbp + 3296]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00296_2:
 jmp xchain00280_n44_α
 xchain00280_n39_β:
 jmp xchain00280_n30_α
# IR_COERCE_NUMERIC
 xchain00280_n40_α:
 mov eax, dword ptr [rbp + 4496]
 cmp eax, 7
 je .Lx00297_1
 cmp eax, 6
 jne .Lx00297_0
 mov eax, dword ptr [rbp + 4528]
 cmp eax, 6
 jne .Lx00297_0
.Lx00297_1:
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 2840], rax
 jmp .Lx00297_2
.Lx00297_0:
 lea rdi, [rbp + 4496]
 lea rsi, [rbp + 4528]
 lea rdx, [rbp + 2832]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00297_2:
 jmp xchain00280_n45_α
 xchain00280_n40_β:
 jmp xchain00280_n34_α
# KEYWORD_null
 xchain00280_n41_α:
 mov qword ptr [rbp + 2736], 0
 mov qword ptr [rbp + 2744], 0
 jmp xchain00280_n46_α
 xchain00280_n41_β:
 jmp xchain00280_n38_α
# IR_FIELD_GET lv
 xchain00280_n42_α:
 mov rdi, qword ptr [rip + .Lx00298_0]
 mov rsi, qword ptr [rbp + 1840]
 mov rdx, qword ptr [rbp + 1848]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00280_n43_α
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain00280_n47_α
 xchain00280_n42_β:
 jmp xchain00280_n43_α
.Lx00298_0:
 .quad .Lx00298_0_s
.Lx00298_0_s:
 .string "key"
# IR_VAR
 xchain00280_n43_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain00280_n48_α
 xchain00280_n43_β:
 jmp xchain00280_n49_α
 xchain00280_n44_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3296]
 cmp eax, 100
 je .Lx00299_0
 mov eax, dword ptr [rbp + 3296]
 cmp eax, 6
 jne .Lx00299_2
.Lx00299_1:
 mov rax, qword ptr [rbp + 3304]
 mov rcx, 5000
 sub rax, rcx
 mov qword ptr [rbp + 3264], 6
 mov qword ptr [rbp + 3272], rax
 jmp xchain00280_n50_α
.Lx00299_0:
 mov rdi, qword ptr [rbp + 3296]
 mov rsi, qword ptr [rbp + 3304]
 mov rdx, qword ptr [rbp + 3392]
 mov rcx, qword ptr [rbp + 3400]
 mov r8d, 1
 lea r9, [rbp + 3264]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00299_3
.Lx00299_2:
 mov rdi, qword ptr [rbp + 3296]
 mov rsi, qword ptr [rbp + 3304]
 mov rdx, qword ptr [rbp + 3392]
 mov rcx, qword ptr [rbp + 3400]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00280_n30_α
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
.Lx00299_3:
 jmp xchain00280_n50_α
 xchain00280_n44_β:
 jmp xchain00280_n30_α
 xchain00280_n45_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 100
 je .Lx00300_0
 mov eax, dword ptr [rbp + 2832]
 cmp eax, 100
 je .Lx00300_0
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 6
 jne .Lx00300_2
 mov eax, dword ptr [rbp + 2832]
 cmp eax, 6
 jne .Lx00300_2
.Lx00300_1:
 mov rax, qword ptr [rbp + 2872]
 mov rcx, qword ptr [rbp + 2840]
 add rax, rcx
 mov qword ptr [rbp + 2800], 6
 mov qword ptr [rbp + 2808], rax
 jmp xchain00280_n51_α
.Lx00300_0:
 mov rdi, qword ptr [rbp + 2864]
 mov rsi, qword ptr [rbp + 2872]
 mov rdx, qword ptr [rbp + 2832]
 mov rcx, qword ptr [rbp + 2840]
 mov r8d, 0
 lea r9, [rbp + 2800]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00300_3
.Lx00300_2:
 mov rdi, qword ptr [rbp + 2864]
 mov rsi, qword ptr [rbp + 2872]
 mov rdx, qword ptr [rbp + 2832]
 mov rcx, qword ptr [rbp + 2840]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00280_n34_α
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
.Lx00300_3:
 jmp xchain00280_n51_α
 xchain00280_n45_β:
 jmp xchain00280_n34_α
# IR_ASSIGN_VAR
 xchain00280_n46_α:
 mov rdi, qword ptr [rbp + 2656]
 mov rsi, qword ptr [rbp + 2664]
 mov rdx, qword ptr [rbp + 2736]
 mov rcx, qword ptr [rbp + 2744]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00280_n38_α
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 jmp xchain00280_n52_α
 xchain00280_n46_β:
 jmp xchain00280_n38_α
# IR_VAR
 xchain00280_n47_α:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 2088], rax
 jmp xchain00280_n53_α
 xchain00280_n47_β:
 jmp xchain00280_n43_α
# IR_FIELD_GET lv
 xchain00280_n48_α:
 mov rdi, qword ptr [rip + .Lx00301_0]
 mov rsi, qword ptr [rbp + 1728]
 mov rdx, qword ptr [rbp + 1736]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00280_n49_α
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain00280_n54_α
 xchain00280_n48_β:
 jmp xchain00280_n49_α
.Lx00301_0:
 .quad .Lx00301_0_s
.Lx00301_0_s:
 .string "x1"
# IR_VAR
 xchain00280_n49_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain00280_n55_α
 xchain00280_n49_β:
 jmp xchain00280_n56_α
# IR_COERCE_NUMERIC
 xchain00280_n50_α:
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 7
 je .Lx00302_1
 cmp eax, 6
 jne .Lx00302_0
 mov eax, dword ptr [rbp + 3264]
 cmp eax, 6
 jne .Lx00302_0
.Lx00302_1:
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 3208], rax
 jmp .Lx00302_2
.Lx00302_0:
 lea rdi, [rbp + 4512]
 lea rsi, [rbp + 3264]
 lea rdx, [rbp + 3200]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00302_2:
 jmp xchain00280_n57_α
 xchain00280_n50_β:
 jmp xchain00280_n30_α
# IR_VAR
 xchain00280_n51_α:
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 3064], rax
 jmp xchain00280_n58_α
 xchain00280_n51_β:
 jmp xchain00280_n34_α
# IR_MOVE_LABEL
 xchain00280_n52_α:
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 2312], rax
 lea rax, [rip + xchain00280_n38_α]
 mov qword ptr [rbp + 2320], rax
 jmp xchain00280_n38_α
 xchain00280_n52_β:
 jmp xchain00280_n38_α
# IR_VAR
 xchain00280_n53_α:
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 2120], rax
 jmp xchain00280_n60_α
 xchain00280_n53_β:
 jmp xchain00280_n43_α
# IR_VAR
 xchain00280_n54_α:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00280_n61_α
 xchain00280_n54_β:
 jmp xchain00280_n49_α
# IR_FIELD_GET lv
 xchain00280_n55_α:
 mov rdi, qword ptr [rip + .Lx00303_0]
 mov rsi, qword ptr [rbp + 1616]
 mov rdx, qword ptr [rbp + 1624]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00280_n56_α
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain00280_n62_α
 xchain00280_n55_β:
 jmp xchain00280_n56_α
.Lx00303_0:
 .quad .Lx00303_0_s
.Lx00303_0_s:
 .string "y1"
# IR_VAR
 xchain00280_n56_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain00280_n63_α
 xchain00280_n56_β:
 jmp xchain00280_n64_α
# IR_COERCE_NUMERIC
 xchain00280_n57_α:
 mov eax, dword ptr [rbp + 3264]
 cmp eax, 7
 je .Lx00304_1
 cmp eax, 6
 jne .Lx00304_0
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 6
 jne .Lx00304_0
.Lx00304_1:
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 3176], rax
 jmp .Lx00304_2
.Lx00304_0:
 lea rdi, [rbp + 3264]
 lea rsi, [rbp + 4512]
 lea rdx, [rbp + 3168]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00304_2:
 jmp xchain00280_n65_α
 xchain00280_n57_β:
 jmp xchain00280_n30_α
# IR_VAR
 xchain00280_n58_α:
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 3088], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 3096], rax
 jmp xchain00280_n66_α
 xchain00280_n58_β:
 jmp xchain00280_n34_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00280_n59_α:
 jmp qword ptr [rbp + 2320]
 xchain00280_n59_β:
 jmp xchain00280_n38_α
# IR_COERCE_NUMERIC
 xchain00280_n60_α:
 mov eax, dword ptr [rbp + 4528]
 cmp eax, 7
 je .Lx00305_1
 cmp eax, 6
 jne .Lx00305_0
 mov eax, dword ptr [rbp + 4496]
 cmp eax, 6
 jne .Lx00305_0
.Lx00305_1:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 2056], rax
 jmp .Lx00305_2
.Lx00305_0:
 lea rdi, [rbp + 4528]
 lea rsi, [rbp + 4496]
 lea rdx, [rbp + 2048]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00305_2:
 jmp xchain00280_n67_α
 xchain00280_n60_β:
 jmp xchain00280_n43_α
# IR_ASSIGN_VAR
 xchain00280_n61_α:
 mov rdi, qword ptr [rbp + 1696]
 mov rsi, qword ptr [rbp + 1704]
 mov rdx, qword ptr [rbp + 1776]
 mov rcx, qword ptr [rbp + 1784]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00280_n49_α
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain00280_n49_α
 xchain00280_n61_β:
 jmp xchain00280_n49_α
# IR_VAR
 xchain00280_n62_α:
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 1672], rax
 jmp xchain00280_n68_α
 xchain00280_n62_β:
 jmp xchain00280_n56_α
# IR_FIELD_GET lv
 xchain00280_n63_α:
 mov rdi, qword ptr [rip + .Lx00306_0]
 mov rsi, qword ptr [rbp + 1504]
 mov rdx, qword ptr [rbp + 1512]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00280_n64_α
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain00280_n69_α
 xchain00280_n63_β:
 jmp xchain00280_n64_α
.Lx00306_0:
 .quad .Lx00306_0_s
.Lx00306_0_s:
 .string "x2"
# IR_VAR
 xchain00280_n64_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain00280_n70_α
 xchain00280_n64_β:
 jmp xchain00280_n71_α
 xchain00280_n65_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3200]
 cmp eax, 100
 je .Lx00307_0
 mov eax, dword ptr [rbp + 3168]
 cmp eax, 100
 je .Lx00307_0
 mov eax, dword ptr [rbp + 3200]
 cmp eax, 6
 jne .Lx00307_2
 mov eax, dword ptr [rbp + 3168]
 cmp eax, 6
 jne .Lx00307_2
.Lx00307_1:
 mov rax, qword ptr [rbp + 3208]
 mov rcx, qword ptr [rbp + 3176]
 add rax, rcx
 mov qword ptr [rbp + 3136], 6
 mov qword ptr [rbp + 3144], rax
 jmp xchain00280_n72_α
.Lx00307_0:
 mov rdi, qword ptr [rbp + 3200]
 mov rsi, qword ptr [rbp + 3208]
 mov rdx, qword ptr [rbp + 3168]
 mov rcx, qword ptr [rbp + 3176]
 mov r8d, 0
 lea r9, [rbp + 3136]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00307_3
.Lx00307_2:
 mov rdi, qword ptr [rbp + 3200]
 mov rsi, qword ptr [rbp + 3208]
 mov rdx, qword ptr [rbp + 3168]
 mov rcx, qword ptr [rbp + 3176]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00280_n30_α
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
.Lx00307_3:
 jmp xchain00280_n72_α
 xchain00280_n65_β:
 jmp xchain00280_n30_α
# IR_COERCE_NUMERIC
 xchain00280_n66_α:
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 7
 je .Lx00308_1
 cmp eax, 6
 jne .Lx00308_0
 mov eax, dword ptr [rbp + 4480]
 cmp eax, 6
 jne .Lx00308_0
.Lx00308_1:
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 3032], rax
 jmp .Lx00308_2
.Lx00308_0:
 lea rdi, [rbp + 4512]
 lea rsi, [rbp + 4480]
 lea rdx, [rbp + 3024]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00308_2:
 jmp xchain00280_n73_α
 xchain00280_n66_β:
 jmp xchain00280_n34_α
# IR_COERCE_NUMERIC
 xchain00280_n67_α:
 mov eax, dword ptr [rbp + 4496]
 cmp eax, 7
 je .Lx00309_1
 cmp eax, 6
 jne .Lx00309_0
 mov eax, dword ptr [rbp + 4528]
 cmp eax, 6
 jne .Lx00309_0
.Lx00309_1:
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 2024], rax
 jmp .Lx00309_2
.Lx00309_0:
 lea rdi, [rbp + 4496]
 lea rsi, [rbp + 4528]
 lea rdx, [rbp + 2016]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00309_2:
 jmp xchain00280_n74_α
 xchain00280_n67_β:
 jmp xchain00280_n43_α
# IR_ASSIGN_VAR
 xchain00280_n68_α:
 mov rdi, qword ptr [rbp + 1584]
 mov rsi, qword ptr [rbp + 1592]
 mov rdx, qword ptr [rbp + 1664]
 mov rcx, qword ptr [rbp + 1672]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00280_n56_α
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain00280_n56_α
 xchain00280_n68_β:
 jmp xchain00280_n56_α
# IR_VAR
 xchain00280_n69_α:
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 1560], rax
 jmp xchain00280_n75_α
 xchain00280_n69_β:
 jmp xchain00280_n64_α
# IR_FIELD_GET lv
 xchain00280_n70_α:
 mov rdi, qword ptr [rip + .Lx00310_0]
 mov rsi, qword ptr [rbp + 1392]
 mov rdx, qword ptr [rbp + 1400]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00280_n71_α
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain00280_n76_α
 xchain00280_n70_β:
 jmp xchain00280_n71_α
.Lx00310_0:
 .quad .Lx00310_0_s
.Lx00310_0_s:
 .string "y2"
# IR_VAR
 xchain00280_n71_α:
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00280_n77_α
 xchain00280_n71_β:
 jmp xchain00280_n78_α
 xchain00280_n72_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3136]
 mov rdx, qword ptr [rbp + 3144]
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain00280_n79_α
 xchain00280_n72_β:
 jmp xchain00280_n30_α
# IR_COERCE_NUMERIC
 xchain00280_n73_α:
 mov eax, dword ptr [rbp + 4480]
 cmp eax, 7
 je .Lx00311_1
 cmp eax, 6
 jne .Lx00311_0
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 6
 jne .Lx00311_0
.Lx00311_1:
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 3000], rax
 jmp .Lx00311_2
.Lx00311_0:
 lea rdi, [rbp + 4480]
 lea rsi, [rbp + 4512]
 lea rdx, [rbp + 2992]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00311_2:
 jmp xchain00280_n80_α
 xchain00280_n73_β:
 jmp xchain00280_n34_α
 xchain00280_n74_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2048]
 cmp eax, 100
 je .Lx00312_0
 mov eax, dword ptr [rbp + 2016]
 cmp eax, 100
 je .Lx00312_0
 mov eax, dword ptr [rbp + 2048]
 cmp eax, 6
 jne .Lx00312_2
 mov eax, dword ptr [rbp + 2016]
 cmp eax, 6
 jne .Lx00312_2
.Lx00312_1:
 mov rax, qword ptr [rbp + 2056]
 mov rcx, qword ptr [rbp + 2024]
 add rax, rcx
 mov qword ptr [rbp + 1984], 6
 mov qword ptr [rbp + 1992], rax
 jmp xchain00280_n81_α
.Lx00312_0:
 mov rdi, qword ptr [rbp + 2048]
 mov rsi, qword ptr [rbp + 2056]
 mov rdx, qword ptr [rbp + 2016]
 mov rcx, qword ptr [rbp + 2024]
 mov r8d, 0
 lea r9, [rbp + 1984]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00312_3
.Lx00312_2:
 mov rdi, qword ptr [rbp + 2048]
 mov rsi, qword ptr [rbp + 2056]
 mov rdx, qword ptr [rbp + 2016]
 mov rcx, qword ptr [rbp + 2024]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00280_n43_α
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
.Lx00312_3:
 jmp xchain00280_n81_α
 xchain00280_n74_β:
 jmp xchain00280_n43_α
# IR_ASSIGN_VAR
 xchain00280_n75_α:
 mov rdi, qword ptr [rbp + 1472]
 mov rsi, qword ptr [rbp + 1480]
 mov rdx, qword ptr [rbp + 1552]
 mov rcx, qword ptr [rbp + 1560]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00280_n64_α
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain00280_n64_α
 xchain00280_n75_β:
 jmp xchain00280_n64_α
# IR_VAR
 xchain00280_n76_α:
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 1448], rax
 jmp xchain00280_n82_α
 xchain00280_n76_β:
 jmp xchain00280_n71_α
# IR_VAR
 xchain00280_n77_α:
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00280_n83_α
 xchain00280_n77_β:
 jmp xchain00280_n78_α
# IR_VAR
 xchain00280_n78_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00280_n84_α
 xchain00280_n78_β:
 jmp xchain00280_n85_α
# IR_VAR
 xchain00280_n79_α:
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 3536], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 3544], rax
 jmp xchain00280_n86_α
 xchain00280_n79_β:
 jmp xchain00280_n27_α
 xchain00280_n80_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3024]
 cmp eax, 100
 je .Lx00313_0
 mov eax, dword ptr [rbp + 2992]
 cmp eax, 100
 je .Lx00313_0
 mov eax, dword ptr [rbp + 3024]
 cmp eax, 6
 jne .Lx00313_2
 mov eax, dword ptr [rbp + 2992]
 cmp eax, 6
 jne .Lx00313_2
.Lx00313_1:
 mov rax, qword ptr [rbp + 3032]
 mov rcx, qword ptr [rbp + 3000]
 add rax, rcx
 mov qword ptr [rbp + 2960], 6
 mov qword ptr [rbp + 2968], rax
 jmp xchain00280_n87_α
.Lx00313_0:
 mov rdi, qword ptr [rbp + 3024]
 mov rsi, qword ptr [rbp + 3032]
 mov rdx, qword ptr [rbp + 2992]
 mov rcx, qword ptr [rbp + 3000]
 mov r8d, 0
 lea r9, [rbp + 2960]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00313_3
.Lx00313_2:
 mov rdi, qword ptr [rbp + 3024]
 mov rsi, qword ptr [rbp + 3032]
 mov rdx, qword ptr [rbp + 2992]
 mov rcx, qword ptr [rbp + 3000]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00280_n34_α
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
.Lx00313_3:
 jmp xchain00280_n87_α
 xchain00280_n80_β:
 jmp xchain00280_n34_α
# IR_LIT_INTEGER
 xchain00280_n81_α:
 mov qword ptr [rbp + 2144], 6
 mov rax, qword ptr [rip + .Lx00314_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain00280_n88_α
 xchain00280_n81_β:
 jmp xchain00280_n43_α
.Lx00314_0:
 .quad 8
# IR_ASSIGN_VAR
 xchain00280_n82_α:
 mov rdi, qword ptr [rbp + 1360]
 mov rsi, qword ptr [rbp + 1368]
 mov rdx, qword ptr [rbp + 1440]
 mov rcx, qword ptr [rbp + 1448]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00280_n71_α
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain00280_n71_α
 xchain00280_n82_β:
 jmp xchain00280_n71_α
# IR_COERCE_NUMERIC
 xchain00280_n83_α:
 mov eax, dword ptr [rbp + 4480]
 cmp eax, 7
 je .Lx00315_1
 cmp eax, 6
 jne .Lx00315_0
 mov eax, dword ptr [rbp + 4496]
 cmp eax, 6
 jne .Lx00315_0
.Lx00315_1:
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 984], rax
 jmp .Lx00315_2
.Lx00315_0:
 lea rdi, [rbp + 4480]
 lea rsi, [rbp + 4496]
 lea rdx, [rbp + 976]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00315_2:
 jmp xchain00280_n89_α
 xchain00280_n83_β:
 jmp xchain00280_n78_α
# IR_FIELD_GET lv
 xchain00280_n84_α:
 mov rdi, qword ptr [rip + .Lx00316_0]
 mov rsi, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00280_n85_α
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00280_n90_α
 xchain00280_n84_β:
 jmp xchain00280_n85_α
.Lx00316_0:
 .quad .Lx00316_0_s
.Lx00316_0_s:
 .string "aindex"
# IR_GEN_SCAN
 xchain00280_n85_α:
 lea rdi, [rbp + 80]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 80]
 mov r14, qword ptr [rbp + 88]
 mov r15, qword ptr [rbp + 96]
 jmp xchain00280_n6_α
 xchain00280_n85_β:
 jmp xchain00280_n6_α
# IR_LIT_INTEGER
 xchain00280_n86_α:
 mov qword ptr [rbp + 3664], 6
 mov rax, qword ptr [rip + .Lx00317_0]
 mov qword ptr [rbp + 3672], rax
 jmp xchain00280_n91_α
 xchain00280_n86_β:
 jmp xchain00280_n27_α
.Lx00317_0:
 .quad 4
 xchain00280_n87_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 2800]
 cmp eax, 100
 je .Lx00318_0
 mov eax, dword ptr [rbp + 2960]
 cmp eax, 100
 je .Lx00318_0
 mov eax, dword ptr [rbp + 2800]
 cmp eax, 6
 jne .Lx00318_2
 mov eax, dword ptr [rbp + 2960]
 cmp eax, 6
 jne .Lx00318_2
.Lx00318_1:
 mov rax, qword ptr [rbp + 2808]
 mov rcx, qword ptr [rbp + 2968]
 cmp rax, rcx
 jle xchain00280_n34_α
 mov rcx, qword ptr [rbp + 2960]
 mov qword ptr [rbp + 2768], rcx
 mov rcx, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 2776], rcx
 jmp xchain00280_n92_α
.Lx00318_0:
 mov rdi, qword ptr [rbp + 2800]
 mov rsi, qword ptr [rbp + 2808]
 mov rdx, qword ptr [rbp + 2960]
 mov rcx, qword ptr [rbp + 2968]
 mov r8d, 7
 lea r9, [rbp + 2768]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00318_1
 cmp eax, 1
 je xchain00280_n34_α
 jmp xchain00280_n92_α
.Lx00318_2:
 mov rdi, qword ptr [rbp + 2800]
 mov rsi, qword ptr [rbp + 2808]
 mov rdx, qword ptr [rbp + 2960]
 mov rcx, qword ptr [rbp + 2968]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00280_n34_α
 mov rax, qword ptr [rbp + 2960]
 mov qword ptr [rbp + 2768], rax
 mov rax, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 2776], rax
 jmp xchain00280_n92_α
 xchain00280_n87_β:
 jmp xchain00280_n34_α
 xchain00280_n88_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1936]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1944], rax
# marshal arg1 = producer-box slot [zr+2144] -> [zr+1952]
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 1960], rax
  .section .rodata
  .Lrkfn1139: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1139]
 lea rsi, [rbp + 1936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 cmp eax, 99
 je xchain00280_n43_α
 jmp xchain00280_n93_α
 xchain00280_n88_β:
 jmp xchain00280_n43_α
# IR_COERCE_NUMERIC
 xchain00280_n89_α:
 mov eax, dword ptr [rbp + 4496]
 cmp eax, 7
 je .Lx00319_1
 cmp eax, 6
 jne .Lx00319_0
 mov eax, dword ptr [rbp + 4480]
 cmp eax, 6
 jne .Lx00319_0
.Lx00319_1:
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 952], rax
 jmp .Lx00319_2
.Lx00319_0:
 lea rdi, [rbp + 4496]
 lea rsi, [rbp + 4480]
 lea rdx, [rbp + 944]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00319_2:
 jmp xchain00280_n94_α
 xchain00280_n89_β:
 jmp xchain00280_n78_α
# IR_LIT_INTEGER
 xchain00280_n90_α:
 mov qword ptr [rbp + 304], 6
 mov rax, qword ptr [rip + .Lx00320_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00280_n95_α
 xchain00280_n90_β:
 jmp xchain00280_n85_α
.Lx00320_0:
 .quad 1
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00280_n91_α:
 sub rsp, 16
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00321_239
 add rsp, 16
 jmp xchain00280_n27_α
.Lx00321_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00321_240
 add rsp, 16
 jmp xchain00280_n27_α
.Lx00321_240:
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
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 jmp xchain00280_n96_α
 xchain00280_n91_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00280_n27_α
# IR_VAR
 xchain00280_n92_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 jmp xchain00280_n97_α
 xchain00280_n92_β:
 jmp xchain00280_n98_α
# IR_VAR
 xchain00280_n93_α:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 2248], rax
 jmp xchain00280_n99_α
 xchain00280_n93_β:
 jmp xchain00280_n43_α
 xchain00280_n94_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 976]
 cmp eax, 100
 je .Lx00322_0
 mov eax, dword ptr [rbp + 944]
 cmp eax, 100
 je .Lx00322_0
 mov eax, dword ptr [rbp + 976]
 cmp eax, 6
 jne .Lx00322_2
 mov eax, dword ptr [rbp + 944]
 cmp eax, 6
 jne .Lx00322_2
.Lx00322_1:
 mov rax, qword ptr [rbp + 984]
 mov rcx, qword ptr [rbp + 952]
 sub rax, rcx
 mov qword ptr [rbp + 912], 6
 mov qword ptr [rbp + 920], rax
 jmp xchain00280_n00072_α
.Lx00322_0:
 mov rdi, qword ptr [rbp + 976]
 mov rsi, qword ptr [rbp + 984]
 mov rdx, qword ptr [rbp + 944]
 mov rcx, qword ptr [rbp + 952]
 mov r8d, 1
 lea r9, [rbp + 912]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00322_3
.Lx00322_2:
 mov rdi, qword ptr [rbp + 976]
 mov rsi, qword ptr [rbp + 984]
 mov rdx, qword ptr [rbp + 944]
 mov rcx, qword ptr [rbp + 952]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00280_n78_α
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
.Lx00322_3:
 jmp xchain00280_n00072_α
 xchain00280_n94_β:
 jmp xchain00280_n78_α
# IR_LIT_INTEGER
 xchain00280_n95_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00323_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00280_n00074_α
 xchain00280_n95_β:
 jmp xchain00280_n85_α
.Lx00323_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00280_n96_α:
 mov qword ptr [rbp + 3696], 6
 mov rax, qword ptr [rip + .Lx00324_0]
 mov qword ptr [rbp + 3704], rax
 jmp xchain00280_n00001_α
 xchain00280_n96_β:
 jmp xchain00280_n27_α
.Lx00324_0:
 .quad 5000
# IR_FIELD_GET lv
 xchain00280_n97_α:
 mov rdi, qword ptr [rip + .Lx00325_0]
 mov rsi, qword ptr [rbp + 2576]
 mov rdx, qword ptr [rbp + 2584]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00280_n98_α
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 jmp xchain00280_n00077_α
 xchain00280_n97_β:
 jmp xchain00280_n98_α
.Lx00325_0:
 .quad .Lx00325_0_s
.Lx00325_0_s:
 .string "rev"
 xchain00280_n98_α:
# IR_SWAP x:=:y
 mov rax, qword ptr [rbp + 4528]
 mov rdx, qword ptr [rbp + 4536]
 mov rcx, qword ptr [rbp + 4512]
 mov rsi, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 4528], rcx
 mov qword ptr [rbp + 4536], rsi
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 mov qword ptr [rbp + 2448], rcx
 mov qword ptr [rbp + 2456], rsi
 jmp xchain00280_n00078_α
 xchain00280_n98_β:
 jmp xchain00280_n00078_α
# IR_LIT_INTEGER
 xchain00280_n99_α:
 mov qword ptr [rbp + 2272], 6
 mov rax, qword ptr [rip + .Lx00326_0]
 mov qword ptr [rbp + 2280], rax
 jmp xchain00280_n00079_α
 xchain00280_n99_β:
 jmp xchain00280_n43_α
.Lx00326_0:
 .quad 7
# IR_VAR
 xchain00280_n00072_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain00280_n00080_α
 xchain00280_n00072_β:
 jmp xchain00280_n78_α
# IR_VAR
 xchain00280_n00074_α:
 mov rax, qword ptr [rbp + 4464]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 4472]
 mov qword ptr [rbp + 712], rax
 jmp xchain00280_n00082_α
 xchain00280_n00074_β:
 jmp xchain00280_n85_α
# IR_COERCE_NUMERIC
 xchain00280_n00001_α:
 mov eax, dword ptr [rbp + 3632]
 cmp eax, 7
 je .Lx00327_1
 cmp eax, 6
 jne .Lx00327_0
 mov eax, dword ptr [rbp + 3696]
 cmp eax, 6
 jne .Lx00327_0
.Lx00327_1:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3608], rax
 jmp .Lx00327_2
.Lx00327_0:
 lea rdi, [rbp + 3632]
 lea rsi, [rbp + 3696]
 lea rdx, [rbp + 3600]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00327_2:
 jmp xchain00280_n00083_α
 xchain00280_n00001_β:
 jmp xchain00280_n27_α
# IR_LIT_INTEGER
 xchain00280_n00077_α:
 mov qword ptr [rbp + 2624], 6
 mov rax, qword ptr [rip + .Lx00328_0]
 mov qword ptr [rbp + 2632], rax
 jmp xchain00280_n00002_α
 xchain00280_n00077_β:
 jmp xchain00280_n98_α
.Lx00328_0:
 .quad 1
 xchain00280_n00078_α:
# IR_SWAP x:=:y
 mov rax, qword ptr [rbp + 4496]
 mov rdx, qword ptr [rbp + 4504]
 mov rcx, qword ptr [rbp + 4480]
 mov rsi, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 4496], rcx
 mov qword ptr [rbp + 4504], rsi
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 mov qword ptr [rbp + 2352], rcx
 mov qword ptr [rbp + 2360], rsi
 jmp xchain00280_n00084_α
 xchain00280_n00078_β:
 jmp xchain00280_n38_α
 xchain00280_n00079_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn1162: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1162]
 lea rsi, [rbp + 2192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je xchain00280_n43_α
 jmp xchain00280_n00086_α
 xchain00280_n00079_β:
 jmp xchain00280_n43_α
# IR_VAR
 xchain00280_n00080_α:
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 1304], rax
 jmp xchain00280_n00088_α
 xchain00280_n00080_β:
 jmp xchain00280_n78_α
# KEYWORD_read
 xchain00280_n00082_α:
 mov rdi, qword ptr [rip + .Lx00329_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00280_n00090_α
 xchain00280_n00082_β:
 jmp xchain00280_n85_α
.Lx00329_0:
 .quad .Lx00329_0_s
.Lx00329_0_s:
 .string "&pi"
 xchain00280_n00083_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3600]
 cmp eax, 100
 je .Lx00330_0
 mov eax, dword ptr [rbp + 3600]
 cmp eax, 6
 jne .Lx00330_2
.Lx00330_1:
 mov rax, qword ptr [rbp + 3608]
 mov rcx, 5000
 sub rax, rcx
 mov qword ptr [rbp + 3568], 6
 mov qword ptr [rbp + 3576], rax
 jmp xchain00280_n00092_α
.Lx00330_0:
 mov rdi, qword ptr [rbp + 3600]
 mov rsi, qword ptr [rbp + 3608]
 mov rdx, qword ptr [rbp + 3696]
 mov rcx, qword ptr [rbp + 3704]
 mov r8d, 1
 lea r9, [rbp + 3568]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00330_3
.Lx00330_2:
 mov rdi, qword ptr [rbp + 3600]
 mov rsi, qword ptr [rbp + 3608]
 mov rdx, qword ptr [rbp + 3696]
 mov rcx, qword ptr [rbp + 3704]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00280_n27_α
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
.Lx00330_3:
 jmp xchain00280_n00092_α
 xchain00280_n00083_β:
 jmp xchain00280_n27_α
# IR_ASSIGN_VAR
 xchain00280_n00002_α:
 mov rdi, qword ptr [rbp + 2544]
 mov rsi, qword ptr [rbp + 2552]
 mov rdx, qword ptr [rbp + 2624]
 mov rcx, qword ptr [rbp + 2632]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00280_n98_α
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 jmp xchain00280_n98_α
 xchain00280_n00002_β:
 jmp xchain00280_n98_α
 xchain00280_n00084_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2344], rax
 jmp xchain00280_n00003_α
xchain00280_n00084_β:
 jmp xchain00280_n38_α
 xchain00280_n00086_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1920]
 mov rsi, qword ptr [rbp + 1928]
 mov rdx, qword ptr [rbp + 2176]
 mov rcx, qword ptr [rbp + 2184]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain00280_n00093_α
 xchain00280_n00086_β:
 jmp xchain00280_n43_α
# IR_VAR
 xchain00280_n00088_α:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 1336], rax
 jmp xchain00280_n00094_α
 xchain00280_n00088_β:
 jmp xchain00280_n78_α
# IR_COERCE_NUMERIC
 xchain00280_n00090_α:
 mov eax, dword ptr [rbp + 4464]
 cmp eax, 7
 je .Lx00331_1
 cmp eax, 6
 jne .Lx00331_0
 mov eax, dword ptr [rbp + 736]
 cmp eax, 6
 jne .Lx00331_0
.Lx00331_1:
 mov rax, qword ptr [rbp + 4464]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 4472]
 mov qword ptr [rbp + 680], rax
 jmp .Lx00331_2
.Lx00331_0:
 lea rdi, [rbp + 4464]
 lea rsi, [rbp + 736]
 lea rdx, [rbp + 672]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00331_2:
 jmp xchain00280_n00096_α
 xchain00280_n00090_β:
 jmp xchain00280_n85_α
# IR_COERCE_NUMERIC
 xchain00280_n00092_α:
 mov eax, dword ptr [rbp + 4480]
 cmp eax, 7
 je .Lx00332_1
 cmp eax, 6
 jne .Lx00332_0
 mov eax, dword ptr [rbp + 3568]
 cmp eax, 6
 jne .Lx00332_0
.Lx00332_1:
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 3504], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 3512], rax
 jmp .Lx00332_2
.Lx00332_0:
 lea rdi, [rbp + 4480]
 lea rsi, [rbp + 3568]
 lea rdx, [rbp + 3504]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00332_2:
 jmp xchain00280_n00098_α
 xchain00280_n00092_β:
 jmp xchain00280_n27_α
# IR_MOVE_LABEL
 xchain00280_n00003_α:
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2312], rax
 lea rax, [rip + xchain00280_n38_α]
 mov qword ptr [rbp + 2320], rax
 jmp xchain00280_n38_α
 xchain00280_n00003_β:
 jmp xchain00280_n38_α
# IR_ASSIGN_VAR
 xchain00280_n00093_α:
 mov rdi, qword ptr [rbp + 1808]
 mov rsi, qword ptr [rbp + 1816]
 mov rdx, qword ptr [rbp + 1888]
 mov rcx, qword ptr [rbp + 1896]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00280_n43_α
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain00280_n43_α
 xchain00280_n00093_β:
 jmp xchain00280_n43_α
# IR_COERCE_NUMERIC
 xchain00280_n00094_α:
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 7
 je .Lx00333_1
 cmp eax, 6
 jne .Lx00333_0
 mov eax, dword ptr [rbp + 4528]
 cmp eax, 6
 jne .Lx00333_0
.Lx00333_1:
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 1272], rax
 jmp .Lx00333_2
.Lx00333_0:
 lea rdi, [rbp + 4512]
 lea rsi, [rbp + 4528]
 lea rdx, [rbp + 1264]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00333_2:
 jmp xchain00280_n00099_α
 xchain00280_n00094_β:
 jmp xchain00280_n78_α
# IR_COERCE_NUMERIC
 xchain00280_n00096_α:
 mov eax, dword ptr [rbp + 736]
 cmp eax, 7
 je .Lx00334_1
 cmp eax, 6
 jne .Lx00334_0
 mov eax, dword ptr [rbp + 4464]
 cmp eax, 6
 jne .Lx00334_0
.Lx00334_1:
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 648], rax
 jmp .Lx00334_2
.Lx00334_0:
 lea rdi, [rbp + 736]
 lea rsi, [rbp + 4464]
 lea rdx, [rbp + 640]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00334_2:
 jmp xchain00280_n00012_α
 xchain00280_n00096_β:
 jmp xchain00280_n85_α
# IR_COERCE_NUMERIC
 xchain00280_n00098_α:
 mov eax, dword ptr [rbp + 3568]
 cmp eax, 7
 je .Lx00335_1
 cmp eax, 6
 jne .Lx00335_0
 mov eax, dword ptr [rbp + 4480]
 cmp eax, 6
 jne .Lx00335_0
.Lx00335_1:
 mov rax, qword ptr [rbp + 3568]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 3576]
 mov qword ptr [rbp + 3480], rax
 jmp .Lx00335_2
.Lx00335_0:
 lea rdi, [rbp + 3568]
 lea rsi, [rbp + 4480]
 lea rdx, [rbp + 3472]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00335_2:
 jmp xchain00280_n00102_α
 xchain00280_n00098_β:
 jmp xchain00280_n27_α
# IR_COERCE_NUMERIC
 xchain00280_n00099_α:
 mov eax, dword ptr [rbp + 4528]
 cmp eax, 7
 je .Lx00336_1
 cmp eax, 6
 jne .Lx00336_0
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 6
 jne .Lx00336_0
.Lx00336_1:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 1240], rax
 jmp .Lx00336_2
.Lx00336_0:
 lea rdi, [rbp + 4528]
 lea rsi, [rbp + 4512]
 lea rdx, [rbp + 1232]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00336_2:
 jmp xchain00280_n00103_α
 xchain00280_n00099_β:
 jmp xchain00280_n78_α
 xchain00280_n00012_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 672]
 cmp eax, 100
 je .Lx00337_0
 mov eax, dword ptr [rbp + 640]
 cmp eax, 100
 je .Lx00337_0
 mov eax, dword ptr [rbp + 672]
 cmp eax, 6
 jne .Lx00337_2
 mov eax, dword ptr [rbp + 640]
 cmp eax, 6
 jne .Lx00337_2
.Lx00337_1:
 mov rax, qword ptr [rbp + 680]
 mov rcx, qword ptr [rbp + 648]
 cqo
 idiv rcx
 mov qword ptr [rbp + 608], 6
 mov qword ptr [rbp + 616], rax
 jmp xchain00280_n00104_α
.Lx00337_0:
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 mov r8d, 3
 lea r9, [rbp + 608]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00337_3
.Lx00337_2:
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00280_n85_α
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
.Lx00337_3:
 jmp xchain00280_n00104_α
 xchain00280_n00012_β:
 jmp xchain00280_n85_α
 xchain00280_n00102_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3504]
 cmp eax, 100
 je .Lx00338_0
 mov eax, dword ptr [rbp + 3472]
 cmp eax, 100
 je .Lx00338_0
 mov eax, dword ptr [rbp + 3504]
 cmp eax, 6
 jne .Lx00338_2
 mov eax, dword ptr [rbp + 3472]
 cmp eax, 6
 jne .Lx00338_2
.Lx00338_1:
 mov rax, qword ptr [rbp + 3512]
 mov rcx, qword ptr [rbp + 3480]
 add rax, rcx
 mov qword ptr [rbp + 3440], 6
 mov qword ptr [rbp + 3448], rax
 jmp xchain00280_n00105_α
.Lx00338_0:
 mov rdi, qword ptr [rbp + 3504]
 mov rsi, qword ptr [rbp + 3512]
 mov rdx, qword ptr [rbp + 3472]
 mov rcx, qword ptr [rbp + 3480]
 mov r8d, 0
 lea r9, [rbp + 3440]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00338_3
.Lx00338_2:
 mov rdi, qword ptr [rbp + 3504]
 mov rsi, qword ptr [rbp + 3512]
 mov rdx, qword ptr [rbp + 3472]
 mov rcx, qword ptr [rbp + 3480]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00280_n27_α
 mov qword ptr [rbp + 3440], rax
 mov qword ptr [rbp + 3448], rdx
.Lx00338_3:
 jmp xchain00280_n00105_α
 xchain00280_n00102_β:
 jmp xchain00280_n27_α
 xchain00280_n00103_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 100
 je .Lx00339_0
 mov eax, dword ptr [rbp + 1232]
 cmp eax, 100
 je .Lx00339_0
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 6
 jne .Lx00339_2
 mov eax, dword ptr [rbp + 1232]
 cmp eax, 6
 jne .Lx00339_2
.Lx00339_1:
 mov rax, qword ptr [rbp + 1272]
 mov rcx, qword ptr [rbp + 1240]
 sub rax, rcx
 mov qword ptr [rbp + 1200], 6
 mov qword ptr [rbp + 1208], rax
 jmp xchain00280_n00004_α
.Lx00339_0:
 mov rdi, qword ptr [rbp + 1264]
 mov rsi, qword ptr [rbp + 1272]
 mov rdx, qword ptr [rbp + 1232]
 mov rcx, qword ptr [rbp + 1240]
 mov r8d, 1
 lea r9, [rbp + 1200]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00339_3
.Lx00339_2:
 mov rdi, qword ptr [rbp + 1264]
 mov rsi, qword ptr [rbp + 1272]
 mov rdx, qword ptr [rbp + 1232]
 mov rcx, qword ptr [rbp + 1240]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00280_n78_α
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
.Lx00339_3:
 jmp xchain00280_n00004_α
 xchain00280_n00103_β:
 jmp xchain00280_n78_α
# IR_LIT_REAL
 xchain00280_n00104_α:
 mov qword ptr [rbp + 768], 7
 mov rax, qword ptr [rip + .Lx00340_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00280_n00106_α
 xchain00280_n00104_β:
 jmp xchain00280_n85_α
.Lx00340_0:
 .quad 4612248968380809216
 xchain00280_n00105_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3440]
 mov rdx, qword ptr [rbp + 3448]
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain00280_n27_α
 xchain00280_n00105_β:
 jmp xchain00280_n27_α
# IR_COERCE_NUMERIC
 xchain00280_n00004_α:
 mov eax, dword ptr [rbp + 1168]
 cmp eax, 7
 je .Lx00341_1
 cmp eax, 6
 jne .Lx00341_0
 mov eax, dword ptr [rbp + 1200]
 cmp eax, 6
 jne .Lx00341_0
.Lx00341_1:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1144], rax
 jmp .Lx00341_2
.Lx00341_0:
 lea rdi, [rbp + 1168]
 lea rsi, [rbp + 1200]
 lea rdx, [rbp + 1136]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00341_2:
 jmp xchain00280_n00108_α
 xchain00280_n00004_β:
 jmp xchain00280_n78_α
# IR_COERCE_NUMERIC
 xchain00280_n00106_α:
 mov eax, dword ptr [rbp + 608]
 cmp eax, 7
 je .Lx00342_1
 cmp eax, 6
 jne .Lx00342_0
 mov eax, dword ptr [rbp + 768]
 cmp eax, 6
 jne .Lx00342_0
.Lx00342_1:
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 584], rax
 jmp .Lx00342_2
.Lx00342_0:
 lea rdi, [rbp + 608]
 lea rsi, [rbp + 768]
 lea rdx, [rbp + 576]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00342_2:
 jmp xchain00280_n00110_α
 xchain00280_n00106_β:
 jmp xchain00280_n85_α
# IR_COERCE_NUMERIC
 xchain00280_n00108_α:
 mov eax, dword ptr [rbp + 1200]
 cmp eax, 7
 je .Lx00343_1
 cmp eax, 6
 jne .Lx00343_0
 mov eax, dword ptr [rbp + 1168]
 cmp eax, 6
 jne .Lx00343_0
.Lx00343_1:
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1112], rax
 jmp .Lx00343_2
.Lx00343_0:
 lea rdi, [rbp + 1200]
 lea rsi, [rbp + 1168]
 lea rdx, [rbp + 1104]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00343_2:
 jmp xchain00280_n00111_α
 xchain00280_n00108_β:
 jmp xchain00280_n78_α
 xchain00280_n00110_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 768]
 mov rcx, qword ptr [rbp + 776]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00280_n85_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00280_n00112_α
 xchain00280_n00110_β:
 jmp xchain00280_n85_α
 xchain00280_n00111_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 100
 je .Lx00344_0
 mov eax, dword ptr [rbp + 1104]
 cmp eax, 100
 je .Lx00344_0
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 6
 jne .Lx00344_2
 mov eax, dword ptr [rbp + 1104]
 cmp eax, 6
 jne .Lx00344_2
.Lx00344_1:
 mov rax, qword ptr [rbp + 1144]
 mov rcx, qword ptr [rbp + 1112]
 imul rax, rcx
 mov qword ptr [rbp + 1072], 6
 mov qword ptr [rbp + 1080], rax
 jmp xchain00280_n00114_α
.Lx00344_0:
 mov rdi, qword ptr [rbp + 1136]
 mov rsi, qword ptr [rbp + 1144]
 mov rdx, qword ptr [rbp + 1104]
 mov rcx, qword ptr [rbp + 1112]
 mov r8d, 2
 lea r9, [rbp + 1072]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00344_3
.Lx00344_2:
 mov rdi, qword ptr [rbp + 1136]
 mov rsi, qword ptr [rbp + 1144]
 mov rdx, qword ptr [rbp + 1104]
 mov rcx, qword ptr [rbp + 1112]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00280_n78_α
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
.Lx00344_3:
 jmp xchain00280_n00114_α
 xchain00280_n00111_β:
 jmp xchain00280_n78_α
# IR_COERCE_NUMERIC
 xchain00280_n00112_α:
 mov eax, dword ptr [rbp + 544]
 cmp eax, 7
 je .Lx00345_1
 cmp eax, 6
 jne .Lx00345_0
 mov eax, dword ptr [rbp + 512]
 cmp eax, 6
 jne .Lx00345_0
.Lx00345_1:
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 488], rax
 jmp .Lx00345_2
.Lx00345_0:
 lea rdi, [rbp + 544]
 lea rsi, [rbp + 512]
 lea rdx, [rbp + 480]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00345_2:
 jmp xchain00280_n00005_α
 xchain00280_n00112_β:
 jmp xchain00280_n85_α
 xchain00280_n00114_α:
# BOX IR_CALL atan(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+864]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 872], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+880]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 888], rax
  .section .rodata
  .Lrkfn1203: .string "atan"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1203]
 lea rsi, [rbp + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain00280_n78_α
 jmp xchain00280_n00116_α
 xchain00280_n00114_β:
 jmp xchain00280_n78_α
 xchain00280_n00005_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 480]
 cmp eax, 100
 je .Lx00346_0
 mov eax, dword ptr [rbp + 480]
 cmp eax, 6
 jne .Lx00346_2
.Lx00346_1:
 mov rax, 5
 mov rcx, qword ptr [rbp + 488]
 imul rax, rcx
 mov qword ptr [rbp + 448], 6
 mov qword ptr [rbp + 456], rax
 jmp xchain00280_n00117_α
.Lx00346_0:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 mov r8d, 2
 lea r9, [rbp + 448]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00346_3
.Lx00346_2:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00280_n85_α
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
.Lx00346_3:
 jmp xchain00280_n00117_α
 xchain00280_n00005_β:
 jmp xchain00280_n85_α
 xchain00280_n00116_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00280_n78_α
 xchain00280_n00116_β:
 jmp xchain00280_n78_α
 xchain00280_n00117_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
  .section .rodata
  .Lrkfn1207: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1207]
 lea rsi, [rbp + 416]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain00280_n85_α
 jmp xchain00280_n00118_α
 xchain00280_n00117_β:
 jmp xchain00280_n85_α
# IR_LIT_INTEGER
 xchain00280_n00118_α:
 mov qword ptr [rbp + 800], 6
 mov rax, qword ptr [rip + .Lx00347_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain00280_n00119_α
 xchain00280_n00118_β:
 jmp xchain00280_n85_α
.Lx00347_0:
 .quad 5
# IR_COERCE_NUMERIC
 xchain00280_n00119_α:
 mov eax, dword ptr [rbp + 400]
 cmp eax, 7
 je .Lx00348_1
 cmp eax, 6
 jne .Lx00348_0
 mov eax, dword ptr [rbp + 800]
 cmp eax, 6
 jne .Lx00348_0
.Lx00348_1:
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 jmp .Lx00348_2
.Lx00348_0:
 lea rdi, [rbp + 400]
 lea rsi, [rbp + 800]
 lea rdx, [rbp + 368]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00348_2:
 jmp xchain00280_n00120_α
 xchain00280_n00119_β:
 jmp xchain00280_n85_α
 xchain00280_n00120_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 368]
 cmp eax, 100
 je .Lx00349_0
 mov eax, dword ptr [rbp + 368]
 cmp eax, 6
 jne .Lx00349_2
.Lx00349_1:
 mov rax, qword ptr [rbp + 376]
 mov rcx, 5
 cqo
 idiv rcx
 mov rax, rdx
 mov qword ptr [rbp + 336], 6
 mov qword ptr [rbp + 344], rax
 jmp xchain00280_n00123_α
.Lx00349_0:
 mov rdi, qword ptr [rbp + 368]
 mov rsi, qword ptr [rbp + 376]
 mov rdx, qword ptr [rbp + 800]
 mov rcx, qword ptr [rbp + 808]
 mov r8d, 4
 lea r9, [rbp + 336]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00349_3
.Lx00349_2:
 mov rdi, qword ptr [rbp + 368]
 mov rsi, qword ptr [rbp + 376]
 mov rdx, qword ptr [rbp + 800]
 mov rcx, qword ptr [rbp + 808]
 mov r8d, 4
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00280_n85_α
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
.Lx00349_3:
 jmp xchain00280_n00123_α
 xchain00280_n00120_β:
 jmp xchain00280_n85_α
# IR_COERCE_NUMERIC
 xchain00280_n00123_α:
 mov eax, dword ptr [rbp + 336]
 cmp eax, 7
 je .Lx00350_1
 cmp eax, 6
 jne .Lx00350_0
 mov eax, dword ptr [rbp + 304]
 cmp eax, 6
 jne .Lx00350_0
.Lx00350_1:
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 280], rax
 jmp .Lx00350_2
.Lx00350_0:
 lea rdi, [rbp + 336]
 lea rsi, [rbp + 304]
 lea rdx, [rbp + 272]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00350_2:
 jmp xchain00280_n00121_α
 xchain00280_n00123_β:
 jmp xchain00280_n85_α
 xchain00280_n00121_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 272]
 cmp eax, 100
 je .Lx00351_0
 mov eax, dword ptr [rbp + 272]
 cmp eax, 6
 jne .Lx00351_2
.Lx00351_1:
 mov rax, 1
 mov rcx, qword ptr [rbp + 280]
 add rax, rcx
 mov qword ptr [rbp + 240], 6
 mov qword ptr [rbp + 248], rax
 jmp xchain00280_n00122_α
.Lx00351_0:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 272]
 mov rcx, qword ptr [rbp + 280]
 mov r8d, 0
 lea r9, [rbp + 240]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00351_3
.Lx00351_2:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 272]
 mov rcx, qword ptr [rbp + 280]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00280_n85_α
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
.Lx00351_3:
 jmp xchain00280_n00122_α
 xchain00280_n00121_β:
 jmp xchain00280_n85_α
# IR_ASSIGN_VAR
 xchain00280_n00122_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00280_n85_α
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00280_n00125_α
 xchain00280_n00122_β:
 jmp xchain00280_n85_α
 xchain00280_n00125_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 152], rax
 jmp xchain00280_n00126_α
xchain00280_n00125_β:
 jmp xchain00280_n85_α
# IR_GEN_SCAN
 xchain00280_n00126_α:
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 120], rax
 lea rdi, [rbp + 80]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 80]
 mov r14, qword ptr [rbp + 88]
 mov r15, qword ptr [rbp + 96]
 jmp xchain00280_n6_α
 xchain00280_n00126_β:
 jmp xchain00280_n6_α
proc_crack_res:
add rsp, 8
pop rbp
proc_crack_β:
jmp proc_crack_ω
proc_crack_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 4552]
lea rsp, [rbp + 4576]
mov rbp, [rbp + 4568]
jmp rax
proc_crack_ω:
mov rax, [rbp + 4560]
lea rsp, [rbp + 4576]
mov rbp, [rbp + 4568]
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
 xchain00352_n0_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain00352_n1_α
 xchain00352_n0_β:
 jmp xchain00352_n3_α
# IR_NULLTEST_VAR
 xchain00352_n1_α:
 mov eax, dword ptr [rbp + 3424]
 cmp eax, 99
 je xchain00352_n3_α
 mov rdi, qword ptr [rbp + 3424]
 mov rsi, qword ptr [rbp + 3432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00352_n3_α
 cmp eax, 0
 jne xchain00352_n3_α
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3464], rax
 jmp xchain00352_n2_α
 xchain00352_n1_β:
 jmp xchain00352_n3_α
# IR_LIT_CHARSET
 xchain00352_n2_α:
 mov qword ptr [rbp + 3552], 1
 mov dword ptr [rbp + 3556], -1
 mov rax, qword ptr [rip + .Lx00353_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain00352_n4_α
 xchain00352_n2_β:
 jmp xchain00352_n3_α
.Lx00353_0:
 .quad .Lx00353_0_s
.Lx00353_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00352_n3_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1225: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1225]
 lea rsi, [rbp + 3408]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 cmp eax, 99
 je xchain00352_n6_α
 jmp xchain00352_n5_α
 xchain00352_n3_β:
 jmp xchain00352_n6_α
 xchain00352_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3552] -> [zr+3520]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3520], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3528], rax
  .section .rodata
  .Lrkfn1227: .string "string"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1227]
 lea rsi, [rbp + 3520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 cmp eax, 99
 je xchain00352_n3_α
 jmp xchain00352_n7_α
 xchain00352_n4_β:
 jmp xchain00352_n3_α
 xchain00352_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3392]
 mov rdx, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain00352_n6_α
 xchain00352_n5_β:
 jmp xchain00352_n6_α
# IR_MAKE_LIST
 xchain00352_n6_α:
 lea rdi, [rbp + 3376]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain00352_n8_α
 xchain00352_n6_β:
 jmp xchain00352_n9_α
# IR_ASSIGN_VAR
 xchain00352_n7_α:
 mov rdi, qword ptr [rbp + 3456]
 mov rsi, qword ptr [rbp + 3464]
 mov rdx, qword ptr [rbp + 3504]
 mov rcx, qword ptr [rbp + 3512]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00352_n3_α
 mov qword ptr [rbp + 3488], rax
 mov qword ptr [rbp + 3496], rdx
 jmp xchain00352_n3_α
 xchain00352_n7_β:
 jmp xchain00352_n3_α
 xchain00352_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3360]
 mov rdx, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain00352_n9_α
 xchain00352_n8_β:
 jmp xchain00352_n9_α
# IR_VAR
 xchain00352_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00352_n10_α
 xchain00352_n9_β:
 jmp xchain00352_n11_α
 xchain00352_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn1236: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1236]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00352_n11_α
 jmp xchain00352_n12_α
 xchain00352_n10_β:
 jmp xchain00352_n11_α
# IR_VAR
 xchain00352_n11_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 152], rax
 jmp xchain00352_n13_α
 xchain00352_n11_β:
 jmp xchain00352_n14_α
 xchain00352_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00352_n15_α
 xchain00352_n12_β:
 jmp xchain00352_n11_α
# IR_VAR
 xchain00352_n13_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 232], rax
 jmp xchain00352_n16_α
 xchain00352_n13_β:
 jmp xchain00352_n14_α
# IR_VAR
 xchain00352_n14_α:
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 56], rax
 jmp xchain00352_n17_α
 xchain00352_n14_β:
 jmp proc_options_ω
# IR_VAR
 xchain00352_n15_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3320], rax
 jmp xchain00352_n18_α
 xchain00352_n15_β:
 jmp xchain00352_n9_α
 xchain00352_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1247: .string "pull"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1247]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00352_n14_α
 jmp xchain00352_n19_α
 xchain00352_n16_β:
 jmp xchain00352_n14_α
# IR_RETURN
 xchain00352_n17_α:
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_options_γ
# IR_GEN_SCAN
 xchain00352_n18_α:
 mov rdi, qword ptr [rbp + 3312]
 mov rsi, qword ptr [rbp + 3320]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00352_n20_α
 xchain00352_n18_β:
 jmp xchain00352_n9_α
 xchain00352_n19_α:
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
  .Lrkfn1252: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1252]
 lea rsi, [rbp + 96]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00352_n14_α
 jmp xchain00352_n11_α
 xchain00352_n19_β:
 jmp xchain00352_n14_α
# IR_LIT_STRING
 xchain00352_n20_α:
 mov qword ptr [rbp + 3280], 1
 mov rax, qword ptr [rip + .Lx00354_0]
 mov qword ptr [rbp + 3288], rax
 jmp xchain00352_n21_α
 xchain00352_n20_β:
 jmp xchain00352_n23_α
.Lx00354_0:
 .quad .Lx00354_0_s
.Lx00354_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00352_n21_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00355_239
 add rsp, 16
 jmp xchain00352_n23_α
.Lx00355_239:
 mov rdi, qword ptr [rip + .Lx00355_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00355_240
 add rsp, 16
 jmp xchain00352_n23_α
.Lx00355_240:
 mov qword ptr [rbp + 3248], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 3256], rax
 jmp xchain00352_n22_α
 xchain00352_n21_β:
 add rsp, 16
 jmp xchain00352_n23_α
.Lx00355_0:
 .quad .Lx00355_0_s
.Lx00355_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00352_n22_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 3256]
 cmp rax, 1
 jge .Lx00356_0
 add rax, r15
 add rax, 1
.Lx00356_0:
 cmp rax, 1
 jge .Lx00356_239
 add rsp, 16
 jmp xchain00352_n23_α
.Lx00356_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00356_240
 add rsp, 16
 jmp xchain00352_n23_α
.Lx00356_240:
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
 jmp xchain00352_n24_α
 xchain00352_n22_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00352_n23_α
# IR_VAR
 xchain00352_n23_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 3048], rax
 jmp xchain00352_n25_α
 xchain00352_n23_β:
 jmp xchain00352_n29_α
# IR_LIT_INTEGER
 xchain00352_n24_α:
 mov qword ptr [rbp + 3184], 6
 mov rax, qword ptr [rip + .Lx00357_0]
 mov qword ptr [rbp + 3192], rax
 jmp xchain00352_n27_α
 xchain00352_n24_β:
 jmp xchain00352_n30_α
.Lx00357_0:
 .quad 0
# IR_VAR
 xchain00352_n25_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3072], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3080], rax
 jmp xchain00352_n28_α
 xchain00352_n25_β:
 jmp xchain00352_n29_α
 xchain00352_n26_α:
 jmp xchain00352_n29_α
xchain00352_n26_β:
 jmp xchain00352_n29_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00352_n27_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00358_0
 add rax, r15
 add rax, 1
.Lx00358_0:
 cmp rax, 1
 jl xchain00352_n30_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00352_n30_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00352_n30_α
 mov qword ptr [rbp + 3152], 6
 mov qword ptr [rbp + 3160], rax
 jmp xchain00352_n23_α
 xchain00352_n27_β:
 jmp xchain00352_n30_α
 xchain00352_n28_α:
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
  .Lrkfn1267: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1267]
 lea rsi, [rbp + 2992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 cmp eax, 99
 je xchain00352_n29_α
 jmp xchain00352_n31_α
 xchain00352_n28_β:
 jmp xchain00352_n29_α
# IR_GEN_SCAN
 xchain00352_n29_α:
 lea rdi, [rbp + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 368]
 mov r14, qword ptr [rbp + 376]
 mov r15, qword ptr [rbp + 384]
 jmp xchain00352_n9_α
 xchain00352_n29_β:
 jmp xchain00352_n9_α
# KEYWORD_null
 xchain00352_n30_α:
 mov qword ptr [rbp + 3120], 0
 mov qword ptr [rbp + 3128], 0
 jmp xchain00352_n32_α
 xchain00352_n30_β:
 jmp xchain00352_n23_α
# IR_MOVE_LABEL
 xchain00352_n31_α:
 mov rax, qword ptr [rbp + 2976]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 2984]
 mov qword ptr [rbp + 440], rax
 lea rax, [rip + xchain00352_n26_α]
 mov qword ptr [rbp + 448], rax
 jmp xchain00352_n33_α
 xchain00352_n31_β:
 jmp xchain00352_n29_α
 xchain00352_n32_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 3104], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3112], rax
 jmp xchain00352_n35_α
xchain00352_n32_β:
 jmp xchain00352_n23_α
 xchain00352_n33_α:
 jmp xchain00352_n36_α
xchain00352_n33_β:
 jmp xchain00352_n36_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00352_n34_α:
 jmp qword ptr [rbp + 448]
 xchain00352_n34_β:
 jmp xchain00352_n29_α
# IR_LIT_STRING
 xchain00352_n35_α:
 mov qword ptr [rbp + 2944], 1
 mov rax, qword ptr [rip + .Lx00359_0]
 mov qword ptr [rbp + 2952], rax
 jmp xchain00352_n37_α
 xchain00352_n35_β:
 jmp xchain00352_n39_α
.Lx00359_0:
 .quad .Lx00359_0_s
.Lx00359_0_s:
 .string "-"
# IR_GEN_SCAN
 xchain00352_n36_α:
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 408], rax
 lea rdi, [rbp + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 368]
 mov r14, qword ptr [rbp + 376]
 mov r15, qword ptr [rbp + 384]
 jmp xchain00352_n9_α
 xchain00352_n36_β:
 jmp xchain00352_n9_α
# IR_SCAN_MATCH
 xchain00352_n37_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00360_239
 add rsp, 16
 jmp xchain00352_n39_α
.Lx00360_239:
 mov rdi, qword ptr [rip + .Lx00360_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00360_240
 add rsp, 16
 jmp xchain00352_n39_α
.Lx00360_240:
 mov qword ptr [rbp + 2912], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 2920], rax
 jmp xchain00352_n38_α
 xchain00352_n37_β:
 add rsp, 16
 jmp xchain00352_n39_α
.Lx00360_0:
 .quad .Lx00360_0_s
.Lx00360_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00352_n38_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 2920]
 cmp rax, 1
 jge .Lx00361_0
 add rax, r15
 add rax, 1
.Lx00361_0:
 cmp rax, 1
 jge .Lx00361_239
 add rsp, 16
 jmp xchain00352_n39_α
.Lx00361_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00361_240
 add rsp, 16
 jmp xchain00352_n39_α
.Lx00361_240:
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
 jmp xchain00352_n40_α
 xchain00352_n38_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00352_n39_α
# IR_LIT_INTEGER
 xchain00352_n39_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00362_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00352_n41_α
 xchain00352_n39_β:
 jmp xchain00352_n29_α
.Lx00362_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00352_n40_α:
 mov qword ptr [rbp + 2848], 6
 mov rax, qword ptr [rip + .Lx00363_0]
 mov qword ptr [rbp + 2856], rax
 jmp xchain00352_n42_α
 xchain00352_n40_β:
 jmp xchain00352_n39_α
.Lx00363_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00352_n41_α:
 sub rsp, 16
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00364_239
 add rsp, 16
 jmp xchain00352_n29_α
.Lx00364_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00364_240
 add rsp, 16
 jmp xchain00352_n29_α
.Lx00364_240:
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
 jmp xchain00352_n43_α
 xchain00352_n41_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00352_n29_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00352_n42_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00365_0
 add rax, r15
 add rax, 1
.Lx00365_0:
 cmp rax, 1
 jl xchain00352_n39_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00352_n39_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00352_n39_α
 mov qword ptr [rbp + 2816], 6
 mov qword ptr [rbp + 2824], rax
 jmp xchain00352_n44_α
 xchain00352_n42_β:
 jmp xchain00352_n39_α
 xchain00352_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00352_n45_α
 xchain00352_n43_β:
 jmp xchain00352_n29_α
 xchain00352_n44_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2808], rax
 jmp xchain00352_n11_α
xchain00352_n44_β:
 jmp xchain00352_n39_α
# IR_VAR
 xchain00352_n45_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2680], rax
 jmp xchain00352_n47_α
 xchain00352_n45_β:
 jmp xchain00352_n48_α
 xchain00352_n46_α:
 jmp xchain00352_n11_α
xchain00352_n46_β:
 jmp xchain00352_n11_α
# IR_VAR
 xchain00352_n47_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 2712], rax
 jmp xchain00352_n49_α
 xchain00352_n47_β:
 jmp xchain00352_n48_α
# IR_LIT_STRING
 xchain00352_n48_α:
 mov qword ptr [rbp + 2464], 1
 mov rax, qword ptr [rip + .Lx00366_0]
 mov qword ptr [rbp + 2472], rax
 jmp xchain00352_n50_α
 xchain00352_n48_β:
 jmp xchain00352_n39_α
.Lx00366_0:
 .quad .Lx00366_0_s
.Lx00366_0_s:
 .string "Unrecognized option: -"
 xchain00352_n49_α:
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
.Lx00367_60:
  .section .rodata
  .Lbynamegenfn857: .string "find"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn857]
 lea rsi, [rbp + 2624]
 mov edx, 2
 lea rcx, [rbp + 2656]
 call rt_call_arr_gen@PLT
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 cmp eax, 99
 je xchain00352_n48_α
 jmp xchain00352_n51_α
 xchain00352_n49_β:
 jmp .Lx00367_60
# IR_VAR
 xchain00352_n50_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2504], rax
 jmp xchain00352_n52_α
 xchain00352_n50_β:
 jmp xchain00352_n39_α
# IR_LIT_INTEGER
 xchain00352_n51_α:
 mov qword ptr [rbp + 2736], 6
 mov rax, qword ptr [rip + .Lx00368_0]
 mov qword ptr [rbp + 2744], rax
 jmp xchain00352_n53_α
 xchain00352_n51_β:
 jmp xchain00352_n49_β
.Lx00368_0:
 .quad 1
 xchain00352_n52_α:
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
  .Lrkfn1303: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1303]
 lea rsi, [rbp + 2416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 cmp eax, 99
 je xchain00352_n39_α
 jmp xchain00352_n54_α
 xchain00352_n52_β:
 jmp xchain00352_n39_α
# IR_COERCE_NUMERIC
 xchain00352_n53_α:
 mov eax, dword ptr [rbp + 2608]
 cmp eax, 7
 je .Lx00369_1
 cmp eax, 6
 jne .Lx00369_0
 mov eax, dword ptr [rbp + 2736]
 cmp eax, 6
 jne .Lx00369_0
.Lx00369_1:
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2584], rax
 jmp .Lx00369_2
.Lx00369_0:
 lea rdi, [rbp + 2608]
 lea rsi, [rbp + 2736]
 lea rdx, [rbp + 2576]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00369_2:
 jmp xchain00352_n55_α
 xchain00352_n53_β:
 jmp xchain00352_n48_α
# IR_MOVE_LABEL
 xchain00352_n54_α:
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 568], rax
 lea rax, [rip + xchain00352_n39_α]
 mov qword ptr [rbp + 576], rax
 jmp xchain00352_n39_α
 xchain00352_n54_β:
 jmp xchain00352_n39_α
 xchain00352_n55_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2576]
 cmp eax, 100
 je .Lx00370_0
 mov eax, dword ptr [rbp + 2576]
 cmp eax, 6
 jne .Lx00370_2
.Lx00370_1:
 mov rax, qword ptr [rbp + 2584]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 2544], 6
 mov qword ptr [rbp + 2552], rax
 jmp xchain00352_n57_α
.Lx00370_0:
 mov rdi, qword ptr [rbp + 2576]
 mov rsi, qword ptr [rbp + 2584]
 mov rdx, qword ptr [rbp + 2736]
 mov rcx, qword ptr [rbp + 2744]
 mov r8d, 0
 lea r9, [rbp + 2544]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00370_3
.Lx00370_2:
 mov rdi, qword ptr [rbp + 2576]
 mov rsi, qword ptr [rbp + 2584]
 mov rdx, qword ptr [rbp + 2736]
 mov rcx, qword ptr [rbp + 2744]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00352_n48_α
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
.Lx00370_3:
 jmp xchain00352_n57_α
 xchain00352_n55_β:
 jmp xchain00352_n48_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00352_n56_α:
 jmp qword ptr [rbp + 576]
 xchain00352_n56_β:
 jmp xchain00352_n39_α
 xchain00352_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2544]
 mov rdx, qword ptr [rbp + 2552]
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain00352_n58_α
 xchain00352_n57_β:
 jmp xchain00352_n48_α
# IR_VAR_REF
 xchain00352_n58_α:
 lea rdi, [rbp + 3600]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00352_n59_α
 xchain00352_n58_β:
 jmp xchain00352_n39_α
# IR_VAR
 xchain00352_n59_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 632], rax
 jmp xchain00352_n60_α
 xchain00352_n59_β:
 jmp xchain00352_n39_α
# IR_SUBSCRIPT x[i] variable
 xchain00352_n60_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00352_n39_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00352_n61_α
 xchain00352_n60_β:
 jmp xchain00352_n39_α
# IR_LIT_CHARSET
 xchain00352_n61_α:
 mov qword ptr [rbp + 2240], 1
 mov dword ptr [rbp + 2244], -1
 mov rax, qword ptr [rip + .Lx00371_0]
 mov qword ptr [rbp + 2248], rax
 jmp xchain00352_n62_α
 xchain00352_n61_β:
 jmp xchain00352_n65_α
.Lx00371_0:
 .quad .Lx00371_0_s
.Lx00371_0_s:
 .string "+.:"
# IR_VAR_REF
 xchain00352_n62_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain00352_n63_α
 xchain00352_n62_β:
 jmp xchain00352_n65_α
# IR_VAR
 xchain00352_n63_α:
 mov rax, qword ptr [rbp + 3712]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 2328], rax
 jmp xchain00352_n64_α
 xchain00352_n63_β:
 jmp xchain00352_n65_α
# IR_SUBSCRIPT x[i] variable
 xchain00352_n64_α:
 mov rdi, qword ptr [rbp + 2288]
 mov rsi, qword ptr [rbp + 2296]
 mov rdx, qword ptr [rbp + 2320]
 mov rcx, qword ptr [rbp + 2328]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00352_n65_α
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain00352_n66_α
 xchain00352_n64_β:
 jmp xchain00352_n65_α
# IR_LIT_INTEGER
 xchain00352_n65_α:
 mov qword ptr [rbp + 2144], 6
 mov rax, qword ptr [rip + .Lx00372_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain00352_n67_α
 xchain00352_n65_β:
 jmp xchain00352_n39_α
.Lx00372_0:
 .quad 1
# IR_DEREF variable -> value
 xchain00352_n66_α:
 mov rdi, qword ptr [rbp + 2352]
 mov rsi, qword ptr [rbp + 2360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00352_n65_α
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 jmp xchain00352_n68_α
 xchain00352_n66_β:
 jmp xchain00352_n65_α
# IR_MOVE_LABEL
 xchain00352_n67_α:
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 712], rax
 lea rax, [rip + xchain00352_n39_α]
 mov qword ptr [rbp + 720], rax
 jmp xchain00352_n69_α
 xchain00352_n67_β:
 jmp xchain00352_n39_α
 xchain00352_n68_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2384]
 mov rdx, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 jmp xchain00352_n71_α
 xchain00352_n68_β:
 jmp xchain00352_n65_α
# IR_ASSIGN_VAR
 xchain00352_n69_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00352_n39_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00352_n72_α
 xchain00352_n69_β:
 jmp xchain00352_n39_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00352_n70_α:
 jmp qword ptr [rbp + 720]
 xchain00352_n70_β:
 jmp xchain00352_n39_α
 xchain00352_n71_α:
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
  .Lbynamefn879: .string "any"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn879]
 lea rsi, [rbp + 2192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je xchain00352_n65_α
 jmp xchain00352_n73_α
 xchain00352_n71_β:
 jmp xchain00352_n65_α
# IR_MOVE_LABEL
 xchain00352_n72_α:
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 568], rax
 lea rax, [rip + xchain00352_n70_α]
 mov qword ptr [rbp + 576], rax
 jmp xchain00352_n39_α
 xchain00352_n72_β:
 jmp xchain00352_n39_α
# IR_LIT_STRING
 xchain00352_n73_α:
 mov qword ptr [rbp + 2048], 1
 mov rax, qword ptr [rip + .Lx00373_0]
 mov qword ptr [rbp + 2056], rax
 jmp xchain00352_n74_α
 xchain00352_n73_β:
 jmp xchain00352_n77_α
.Lx00373_0:
 .quad .Lx00373_0_s
.Lx00373_0_s:
 .string ""
# IR_LIT_INTEGER
 xchain00352_n74_α:
 mov qword ptr [rbp + 2112], 6
 mov rax, qword ptr [rip + .Lx00374_0]
 mov qword ptr [rbp + 2120], rax
 jmp xchain00352_n75_α
 xchain00352_n74_β:
 jmp xchain00352_n77_α
.Lx00374_0:
 .quad 0
# IR_SCAN_TAB
 xchain00352_n75_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00375_0
 add rax, r15
 add rax, 1
.Lx00375_0:
 cmp rax, 1
 jge .Lx00375_239
 add rsp, 16
 jmp xchain00352_n77_α
.Lx00375_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00375_240
 add rsp, 16
 jmp xchain00352_n77_α
.Lx00375_240:
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
 jmp xchain00352_n76_α
 xchain00352_n75_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00352_n77_α
 xchain00352_n76_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 2048]
 mov rsi, qword ptr [rbp + 2056]
 mov rdx, qword ptr [rbp + 2080]
 mov rcx, qword ptr [rbp + 2088]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00352_n77_α
 mov rdi, qword ptr [rbp + 2080]
 mov rsi, qword ptr [rbp + 2088]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain00352_n78_α
 xchain00352_n76_β:
 jmp xchain00352_n77_α
# IR_VAR
 xchain00352_n77_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1992], rax
 jmp xchain00352_n79_α
 xchain00352_n77_β:
 jmp xchain00352_n80_α
# IR_MOVE_LABEL
 xchain00352_n78_α:
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1784], rax
 lea rax, [rip + xchain00352_n77_α]
 mov qword ptr [rbp + 1792], rax
 jmp xchain00352_n81_α
 xchain00352_n78_β:
 jmp xchain00352_n85_α
 xchain00352_n79_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1960], rax
  .section .rodata
  .Lrkfn1344: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1344]
 lea rsi, [rbp + 1952]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je xchain00352_n80_α
 jmp xchain00352_n83_α
 xchain00352_n79_β:
 jmp xchain00352_n80_α
# IR_LIT_STRING
 xchain00352_n80_α:
 mov qword ptr [rbp + 1872], 1
 mov rax, qword ptr [rip + .Lx00376_0]
 mov qword ptr [rbp + 1880], rax
 jmp xchain00352_n84_α
 xchain00352_n80_β:
 jmp xchain00352_n85_α
.Lx00376_0:
 .quad .Lx00376_0_s
.Lx00376_0_s:
 .string "No parameter following -"
 xchain00352_n81_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1776]
 mov rdx, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain00352_n85_α
 xchain00352_n81_β:
 jmp xchain00352_n85_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00352_n82_α:
 jmp qword ptr [rbp + 1792]
 xchain00352_n82_β:
 jmp xchain00352_n85_α
# IR_MOVE_LABEL
 xchain00352_n83_α:
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1784], rax
 lea rax, [rip + xchain00352_n80_α]
 mov qword ptr [rbp + 1792], rax
 jmp xchain00352_n81_α
 xchain00352_n83_β:
 jmp xchain00352_n85_α
# IR_VAR
 xchain00352_n84_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1912], rax
 jmp xchain00352_n86_α
 xchain00352_n84_β:
 jmp xchain00352_n85_α
# IR_VAR
 xchain00352_n85_α:
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 792], rax
 jmp xchain00352_n87_α
 xchain00352_n85_β:
 jmp xchain00352_n39_α
 xchain00352_n86_α:
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
  .Lrkfn1356: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1356]
 lea rsi, [rbp + 1824]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 cmp eax, 99
 je xchain00352_n85_α
 jmp xchain00352_n88_α
 xchain00352_n86_β:
 jmp xchain00352_n85_α
# IR_LIT_STRING
 xchain00352_n87_α:
 mov qword ptr [rbp + 1616], 1
 mov rax, qword ptr [rip + .Lx00377_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00352_n89_α
 xchain00352_n87_β:
 jmp xchain00352_n39_α
.Lx00377_0:
 .quad .Lx00377_0_s
.Lx00377_0_s:
 .string ":"
# IR_MOVE_LABEL
 xchain00352_n88_α:
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1784], rax
 lea rax, [rip + xchain00352_n85_α]
 mov qword ptr [rbp + 1792], rax
 jmp xchain00352_n81_α
 xchain00352_n88_β:
 jmp xchain00352_n85_α
 xchain00352_n89_α:
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
  .Lrkfn1361: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1361]
 lea rsi, [rbp + 1712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je xchain00352_n91_α
 jmp xchain00352_n90_α
 xchain00352_n89_β:
 jmp xchain00352_n91_α
# IR_VAR
 xchain00352_n90_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1656], rax
 jmp xchain00352_n92_α
 xchain00352_n90_β:
 jmp xchain00352_n39_α
# IR_LIT_STRING
 xchain00352_n91_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx00378_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain00352_n93_α
 xchain00352_n91_β:
 jmp xchain00352_n39_α
.Lx00378_0:
 .quad .Lx00378_0_s
.Lx00378_0_s:
 .string "+"
 xchain00352_n92_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1648]
 mov rdx, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00352_n94_α
 xchain00352_n92_β:
 jmp xchain00352_n39_α
 xchain00352_n93_α:
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
  .Lrkfn1367: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1367]
 lea rsi, [rbp + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain00352_n96_α
 jmp xchain00352_n95_α
 xchain00352_n93_β:
 jmp xchain00352_n96_α
# IR_VAR
 xchain00352_n94_α:
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 760], rax
 jmp xchain00352_n97_α
 xchain00352_n94_β:
 jmp xchain00352_n39_α
# IR_VAR
 xchain00352_n95_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1512], rax
 jmp xchain00352_n98_α
 xchain00352_n95_β:
 jmp xchain00352_n99_α
# IR_LIT_STRING
 xchain00352_n96_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx00379_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00352_n00072_α
 xchain00352_n96_β:
 jmp xchain00352_n39_α
.Lx00379_0:
 .quad .Lx00379_0_s
.Lx00379_0_s:
 .string "."
 xchain00352_n97_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 744], rax
 jmp xchain00352_n00074_α
xchain00352_n97_β:
 jmp xchain00352_n39_α
 xchain00352_n98_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1472]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1480], rax
  .section .rodata
  .Lrkfn1375: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1375]
 lea rsi, [rbp + 1472]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain00352_n99_α
 jmp xchain00352_n00001_α
 xchain00352_n98_β:
 jmp xchain00352_n99_α
# IR_LIT_STRING
 xchain00352_n99_α:
 mov qword ptr [rbp + 1360], 1
 mov rax, qword ptr [rip + .Lx00380_0]
 mov qword ptr [rbp + 1368], rax
 jmp xchain00352_n00077_α
 xchain00352_n99_β:
 jmp xchain00352_n39_α
.Lx00380_0:
 .quad .Lx00380_0_s
.Lx00380_0_s:
 .string "-"
 xchain00352_n00072_α:
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
  .Lrkfn1378: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1378]
 lea rsi, [rbp + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain00352_n39_α
 jmp xchain00352_n00078_α
 xchain00352_n00072_β:
 jmp xchain00352_n39_α
# IR_MOVE_LABEL
 xchain00352_n00074_α:
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 712], rax
 lea rax, [rip + xchain00352_n39_α]
 mov qword ptr [rbp + 720], rax
 jmp xchain00352_n69_α
 xchain00352_n00074_β:
 jmp xchain00352_n39_α
# IR_MOVE_LABEL
 xchain00352_n00001_α:
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1256], rax
 lea rax, [rip + xchain00352_n99_α]
 mov qword ptr [rbp + 1264], rax
 jmp xchain00352_n00002_α
 xchain00352_n00001_β:
 jmp xchain00352_n39_α
# IR_VAR
 xchain00352_n00077_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1400], rax
 jmp xchain00352_n00080_α
 xchain00352_n00077_β:
 jmp xchain00352_n39_α
# IR_VAR
 xchain00352_n00078_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00352_n00082_α
 xchain00352_n00078_β:
 jmp xchain00352_n00083_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00352_n00079_α:
 jmp qword ptr [rbp + 1264]
 xchain00352_n00079_β:
 jmp xchain00352_n39_α
# IR_LIT_STRING
 xchain00352_n00080_α:
 mov qword ptr [rbp + 1424], 1
 mov rax, qword ptr [rip + .Lx00381_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain00352_n00084_α
 xchain00352_n00080_β:
 jmp xchain00352_n39_α
.Lx00381_0:
 .quad .Lx00381_0_s
.Lx00381_0_s:
 .string " needs numeric parameter"
 xchain00352_n00082_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1072]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1080], rax
  .section .rodata
  .Lrkfn1391: .string "real"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1391]
 lea rsi, [rbp + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain00352_n00083_α
 jmp xchain00352_n00086_α
 xchain00352_n00082_β:
 jmp xchain00352_n00083_α
# IR_LIT_STRING
 xchain00352_n00083_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx00382_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00352_n00088_α
 xchain00352_n00083_β:
 jmp xchain00352_n39_α
.Lx00382_0:
 .quad .Lx00382_0_s
.Lx00382_0_s:
 .string "-"
 xchain00352_n00002_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain00352_n94_α
 xchain00352_n00002_β:
 jmp xchain00352_n39_α
 xchain00352_n00084_α:
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
  .Lrkfn1395: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1395]
 lea rsi, [rbp + 1296]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain00352_n39_α
 jmp xchain00352_n00090_α
 xchain00352_n00084_β:
 jmp xchain00352_n39_α
# IR_MOVE_LABEL
 xchain00352_n00086_α:
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 856], rax
 lea rax, [rip + xchain00352_n00083_α]
 mov qword ptr [rbp + 864], rax
 jmp xchain00352_n00093_α
 xchain00352_n00086_β:
 jmp xchain00352_n39_α
# IR_VAR
 xchain00352_n00088_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00352_n00003_α
 xchain00352_n00088_β:
 jmp xchain00352_n39_α
# IR_MOVE_LABEL
 xchain00352_n00090_α:
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1256], rax
 lea rax, [rip + xchain00352_n39_α]
 mov qword ptr [rbp + 1264], rax
 jmp xchain00352_n00002_α
 xchain00352_n00090_β:
 jmp xchain00352_n39_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00352_n00092_α:
 jmp qword ptr [rbp + 864]
 xchain00352_n00092_β:
 jmp xchain00352_n39_α
# IR_LIT_STRING
 xchain00352_n00003_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx00383_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00352_n00094_α
 xchain00352_n00003_β:
 jmp xchain00352_n39_α
.Lx00383_0:
 .quad .Lx00383_0_s
.Lx00383_0_s:
 .string " needs numeric parameter"
 xchain00352_n00093_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00352_n94_α
 xchain00352_n00093_β:
 jmp xchain00352_n39_α
 xchain00352_n00094_α:
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
  .Lrkfn1407: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1407]
 lea rsi, [rbp + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 cmp eax, 99
 je xchain00352_n39_α
 jmp xchain00352_n00096_α
 xchain00352_n00094_β:
 jmp xchain00352_n39_α
# IR_MOVE_LABEL
 xchain00352_n00096_α:
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 856], rax
 lea rax, [rip + xchain00352_n39_α]
 mov qword ptr [rbp + 864], rax
 jmp xchain00352_n00093_α
 xchain00352_n00096_β:
 jmp xchain00352_n39_α
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
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lclassspec0: .string "crec(code,key,x1,x2,y1,y2,rev,aindex)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec0]
  call record_register@PLT
  .section .rodata
  .Lstartup_pname0: .string "loadfile"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_loadfile_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2448
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname1: .string "kgen"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_kgen_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 960
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 0
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname2: .string "dumpcode"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_dumpcode_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1248
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname3: .string "aseq"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_aseq_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1200
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 0
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname4: .string "putchain"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_putchain_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 5376
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname5: .string "putdel"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_putdel_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 2192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname6: .string "collapse"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_collapse_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 5392
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname7: .string "successor"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_successor_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 2224
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname8: .string "crack"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + proc_crack_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 4544
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname9: .string "options"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname9]
  lea rsi, [rip + proc_options_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 3728
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  add rsp, 8
  ret
  .section .rodata
  .Lgvan0: .string "ifile"
  .Lgvan1: .string "maxerr"
  .Lgvan2: .string "maxangle"
  .Lgvan3: .string "latsin"
  .Lgvan4: .string "chtab"
  .Lgvan5: .string "done"
  .Lgvan6: .string "xoff"
  .Lgvan7: .string "yoff"
  .Lgvan8: .string "crack__STATIC__o"
  .Lgvan9: .string "crack__INITFLAG__0"
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
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 10
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 10
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
  mov qword ptr [rsp + 3336], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
# IR_VAR
 xchain00384_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 3264], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 3272], rax
 jmp xchain00384_n1_α
 xchain00384_n0_β:
 jmp xchain00384_n2_α
# IR_LIT_STRING
 xchain00384_n1_α:
 mov qword ptr [rbp + 3296], 1
 mov rax, qword ptr [rip + .Lx00385_0]
 mov qword ptr [rbp + 3304], rax
 jmp xchain00384_n3_α
 xchain00384_n1_β:
 jmp xchain00384_n2_α
.Lx00385_0:
 .quad .Lx00385_0_s
.Lx00385_0_s:
 .string "a.e."
# IR_VAR_REF
 xchain00384_n2_α:
 lea rdi, [rbp + 3408]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp xchain00384_n4_α
 xchain00384_n2_β:
 jmp xchain00384_n8_α
 xchain00384_n3_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3264]
 mov rdx, qword ptr [rbp + 3272]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3296]
 mov rdx, qword ptr [rbp + 3304]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00386_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00386_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00386_3]
 lea rdx, [rip + .Lx00386_4]
 jmp rax
.Lx00386_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00386_2
.Lx00386_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00386_2
.Lx00386_1:
 call rt_faildescr@PLT
.Lx00386_2:
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 cmp eax, 99
 je xchain00384_n2_α
 jmp xchain00384_n5_α
 xchain00384_n3_β:
 jmp xchain00384_n2_α
.Lx00386_0:
 .quad .Lx00386_0_s
.Lx00386_0_s:
 .string "options"
# IR_LIT_STRING
 xchain00384_n4_α:
 mov qword ptr [rbp + 3104], 1
 mov rax, qword ptr [rip + .Lx00387_0]
 mov qword ptr [rbp + 3112], rax
 jmp xchain00384_n6_α
 xchain00384_n4_β:
 jmp xchain00384_n8_α
.Lx00387_0:
 .quad .Lx00387_0_s
.Lx00387_0_s:
 .string "a"
 xchain00384_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3200]
 mov rdx, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain00384_n2_α
 xchain00384_n5_β:
 jmp xchain00384_n2_α
# IR_SUBSCRIPT x[i] variable
 xchain00384_n6_α:
 mov rdi, qword ptr [rbp + 3072]
 mov rsi, qword ptr [rbp + 3080]
 mov rdx, qword ptr [rbp + 3104]
 mov rcx, qword ptr [rbp + 3112]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00384_n8_α
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 jmp xchain00384_n7_α
 xchain00384_n6_β:
 jmp xchain00384_n8_α
# IR_DEREF variable -> value
 xchain00384_n7_α:
 mov rdi, qword ptr [rbp + 3136]
 mov rsi, qword ptr [rbp + 3144]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00384_n8_α
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 jmp xchain00384_n9_α
 xchain00384_n7_β:
 jmp xchain00384_n8_α
# IR_LIT_INTEGER
 xchain00384_n8_α:
 mov qword ptr [rbp + 3008], 6
 mov rax, qword ptr [rip + .Lx00388_0]
 mov qword ptr [rbp + 3016], rax
 jmp xchain00384_n10_α
 xchain00384_n8_β:
 jmp xchain00384_n13_α
.Lx00388_0:
 .quad 30
# IR_UNOP
 xchain00384_n9_α:
 mov eax, dword ptr [rbp + 3168]
 cmp eax, 99
 je xchain00384_n8_α
 cmp eax, 0
 je xchain00384_n8_α
 mov rax, qword ptr [rbp + 3168]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3176]
 mov qword ptr [rbp + 3048], rax
 jmp xchain00384_n11_α
 xchain00384_n9_β:
 jmp xchain00384_n8_α
# IR_MOVE_LABEL
 xchain00384_n10_α:
 mov rax, qword ptr [rbp + 3008]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 3016]
 mov qword ptr [rbp + 2984], rax
 lea rax, [rip + xchain00384_n13_α]
 mov qword ptr [rbp + 2992], rax
 jmp xchain00384_n12_α
 xchain00384_n10_β:
 jmp xchain00384_n13_α
# IR_MOVE_LABEL
 xchain00384_n11_α:
 mov rax, qword ptr [rbp + 3040]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 3048]
 mov qword ptr [rbp + 2984], rax
 lea rax, [rip + xchain00384_n8_α]
 mov qword ptr [rbp + 2992], rax
 jmp xchain00384_n12_α
 xchain00384_n11_β:
 jmp xchain00384_n13_α
# IR_ASSIGN gva
 xchain00384_n12_α:
 mov rax, qword ptr [rbp + 2976]
 mov rdx, qword ptr [rbp + 2984]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain00384_n13_α
 xchain00384_n12_β:
 jmp xchain00384_n13_α
# IR_VAR_REF
 xchain00384_n13_α:
 lea rdi, [rbp + 3408]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 jmp xchain00384_n15_α
 xchain00384_n13_β:
 jmp xchain00384_n18_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00384_n14_α:
 jmp qword ptr [rbp + 2992]
 xchain00384_n14_β:
 jmp xchain00384_n13_α
# IR_LIT_STRING
 xchain00384_n15_α:
 mov qword ptr [rbp + 2880], 1
 mov rax, qword ptr [rip + .Lx00389_0]
 mov qword ptr [rbp + 2888], rax
 jmp xchain00384_n16_α
 xchain00384_n15_β:
 jmp xchain00384_n18_α
.Lx00389_0:
 .quad .Lx00389_0_s
.Lx00389_0_s:
 .string "e"
# IR_SUBSCRIPT x[i] variable
 xchain00384_n16_α:
 mov rdi, qword ptr [rbp + 2848]
 mov rsi, qword ptr [rbp + 2856]
 mov rdx, qword ptr [rbp + 2880]
 mov rcx, qword ptr [rbp + 2888]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00384_n18_α
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 jmp xchain00384_n17_α
 xchain00384_n16_β:
 jmp xchain00384_n18_α
# IR_DEREF variable -> value
 xchain00384_n17_α:
 mov rdi, qword ptr [rbp + 2912]
 mov rsi, qword ptr [rbp + 2920]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00384_n18_α
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 jmp xchain00384_n19_α
 xchain00384_n17_β:
 jmp xchain00384_n18_α
# IR_LIT_INTEGER
 xchain00384_n18_α:
 mov qword ptr [rbp + 2784], 6
 mov rax, qword ptr [rip + .Lx00390_0]
 mov qword ptr [rbp + 2792], rax
 jmp xchain00384_n20_α
 xchain00384_n18_β:
 jmp xchain00384_n23_α
.Lx00390_0:
 .quad 4
# IR_UNOP
 xchain00384_n19_α:
 mov eax, dword ptr [rbp + 2944]
 cmp eax, 99
 je xchain00384_n18_α
 cmp eax, 0
 je xchain00384_n18_α
 mov rax, qword ptr [rbp + 2944]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 2952]
 mov qword ptr [rbp + 2824], rax
 jmp xchain00384_n21_α
 xchain00384_n19_β:
 jmp xchain00384_n18_α
# IR_MOVE_LABEL
 xchain00384_n20_α:
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2760], rax
 lea rax, [rip + xchain00384_n23_α]
 mov qword ptr [rbp + 2768], rax
 jmp xchain00384_n22_α
 xchain00384_n20_β:
 jmp xchain00384_n23_α
# IR_MOVE_LABEL
 xchain00384_n21_α:
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2760], rax
 lea rax, [rip + xchain00384_n18_α]
 mov qword ptr [rbp + 2768], rax
 jmp xchain00384_n22_α
 xchain00384_n21_β:
 jmp xchain00384_n23_α
# IR_ASSIGN gva
 xchain00384_n22_α:
 mov rax, qword ptr [rbp + 2752]
 mov rdx, qword ptr [rbp + 2760]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 jmp xchain00384_n23_α
 xchain00384_n22_β:
 jmp xchain00384_n23_α
# IR_VAR
 xchain00384_n23_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2680], rax
 jmp xchain00384_n25_α
 xchain00384_n23_β:
 jmp xchain00384_n26_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00384_n24_α:
 jmp qword ptr [rbp + 2768]
 xchain00384_n24_β:
 jmp xchain00384_n23_α
# IR_UNOP
 xchain00384_n25_α:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 call rt_size_d@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain00384_n27_α
 xchain00384_n25_β:
 jmp xchain00384_n26_α
# IR_VAR
 xchain00384_n26_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2552], rax
 jmp xchain00384_n28_α
 xchain00384_n26_β:
 jmp xchain00384_n29_α
# IR_LIT_INTEGER
 xchain00384_n27_α:
 mov qword ptr [rbp + 2704], 6
 mov rax, qword ptr [rip + .Lx00391_0]
 mov qword ptr [rbp + 2712], rax
 jmp xchain00384_n30_α
 xchain00384_n27_β:
 jmp xchain00384_n26_α
.Lx00391_0:
 .quad 1
# IR_UNOP
 xchain00384_n28_α:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 call rt_size_d@PLT
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 jmp xchain00384_n31_α
 xchain00384_n28_β:
 jmp xchain00384_n29_α
# KEYWORD_read
 xchain00384_n29_α:
 mov rdi, qword ptr [rip + .Lx00392_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain00384_n32_α
 xchain00384_n29_β:
 jmp xchain00384_n39_α
.Lx00392_0:
 .quad .Lx00392_0_s
.Lx00392_0_s:
 .string "&input"
 xchain00384_n30_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 2640]
 cmp eax, 100
 je .Lx00393_0
 mov eax, dword ptr [rbp + 2704]
 cmp eax, 100
 je .Lx00393_0
 mov eax, dword ptr [rbp + 2640]
 cmp eax, 6
 jne .Lx00393_2
 mov eax, dword ptr [rbp + 2704]
 cmp eax, 6
 jne .Lx00393_2
.Lx00393_1:
 mov rax, qword ptr [rbp + 2648]
 mov rcx, qword ptr [rbp + 2712]
 cmp rax, rcx
 jle xchain00384_n26_α
 mov rcx, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2608], rcx
 mov rcx, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2616], rcx
 jmp xchain00384_n33_α
.Lx00393_0:
 mov rdi, qword ptr [rbp + 2640]
 mov rsi, qword ptr [rbp + 2648]
 mov rdx, qword ptr [rbp + 2704]
 mov rcx, qword ptr [rbp + 2712]
 mov r8d, 7
 lea r9, [rbp + 2608]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00393_1
 cmp eax, 1
 je xchain00384_n26_α
 jmp xchain00384_n33_α
.Lx00393_2:
 mov rdi, qword ptr [rbp + 2640]
 mov rsi, qword ptr [rbp + 2648]
 mov rdx, qword ptr [rbp + 2704]
 mov rcx, qword ptr [rbp + 2712]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00384_n26_α
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2616], rax
 jmp xchain00384_n33_α
 xchain00384_n30_β:
 jmp xchain00384_n26_α
# IR_LIT_INTEGER
 xchain00384_n31_α:
 mov qword ptr [rbp + 2576], 6
 mov rax, qword ptr [rip + .Lx00394_0]
 mov qword ptr [rbp + 2584], rax
 jmp xchain00384_n34_α
 xchain00384_n31_β:
 jmp xchain00384_n29_α
.Lx00394_0:
 .quad 1
# IR_ASSIGN gva
 xchain00384_n32_α:
 mov rax, qword ptr [rbp + 2448]
 mov rdx, qword ptr [rbp + 2456]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 jmp xchain00384_n35_α
 xchain00384_n32_β:
 jmp xchain00384_n39_α
# IR_LIT_STRING
 xchain00384_n33_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx00395_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain00384_n36_α
 xchain00384_n33_β:
 jmp xchain00384_n39_α
.Lx00395_0:
 .quad .Lx00395_0_s
.Lx00395_0_s:
 .string "usage: "
 xchain00384_n34_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 2512]
 cmp eax, 100
 je .Lx00396_0
 mov eax, dword ptr [rbp + 2576]
 cmp eax, 100
 je .Lx00396_0
 mov eax, dword ptr [rbp + 2512]
 cmp eax, 6
 jne .Lx00396_2
 mov eax, dword ptr [rbp + 2576]
 cmp eax, 6
 jne .Lx00396_2
.Lx00396_1:
 mov rax, qword ptr [rbp + 2520]
 mov rcx, qword ptr [rbp + 2584]
 cmp rax, rcx
 jne xchain00384_n29_α
 mov rcx, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 2480], rcx
 mov rcx, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 2488], rcx
 jmp xchain00384_n37_α
.Lx00396_0:
 mov rdi, qword ptr [rbp + 2512]
 mov rsi, qword ptr [rbp + 2520]
 mov rdx, qword ptr [rbp + 2576]
 mov rcx, qword ptr [rbp + 2584]
 mov r8d, 9
 lea r9, [rbp + 2480]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00396_1
 cmp eax, 1
 je xchain00384_n29_α
 jmp xchain00384_n37_α
.Lx00396_2:
 mov rdi, qword ptr [rbp + 2512]
 mov rsi, qword ptr [rbp + 2520]
 mov rdx, qword ptr [rbp + 2576]
 mov rcx, qword ptr [rbp + 2584]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00384_n29_α
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 2488], rax
 jmp xchain00384_n37_α
 xchain00384_n34_β:
 jmp xchain00384_n29_α
# IR_MOVE_LABEL
 xchain00384_n35_α:
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 1944], rax
 lea rax, [rip + xchain00384_n39_α]
 mov qword ptr [rbp + 1952], rax
 jmp xchain00384_n38_α
 xchain00384_n35_β:
 jmp xchain00384_n39_α
# KEYWORD_read
 xchain00384_n36_α:
 mov rdi, qword ptr [rip + .Lx00397_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain00384_n41_α
 xchain00384_n36_β:
 jmp xchain00384_n39_α
.Lx00397_0:
 .quad .Lx00397_0_s
.Lx00397_0_s:
 .string "&progname"
# IR_VAR_REF
 xchain00384_n37_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain00384_n42_α
 xchain00384_n37_β:
 jmp xchain00384_n52_α
# IR_MOVE_LABEL
 xchain00384_n38_α:
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1736], rax
 lea rax, [rip + xchain00384_n40_α]
 mov qword ptr [rbp + 1744], rax
 jmp xchain00384_n39_α
 xchain00384_n38_β:
 jmp xchain00384_n39_α
# IR_VAR
 xchain00384_n39_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain00384_n44_α
 xchain00384_n39_β:
 jmp xchain00384_n45_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00384_n40_α:
 jmp qword ptr [rbp + 1952]
 xchain00384_n40_β:
 jmp xchain00384_n39_α
# IR_LIT_STRING
 xchain00384_n41_α:
 mov qword ptr [rbp + 1904], 1
 mov rax, qword ptr [rip + .Lx00398_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain00384_n46_α
 xchain00384_n41_β:
 jmp xchain00384_n39_α
.Lx00398_0:
 .quad .Lx00398_0_s
.Lx00398_0_s:
 .string " file"
# IR_LIT_INTEGER
 xchain00384_n42_α:
 mov qword ptr [rbp + 2352], 6
 mov rax, qword ptr [rip + .Lx00399_0]
 mov qword ptr [rbp + 2360], rax
 jmp xchain00384_n47_α
 xchain00384_n42_β:
 jmp xchain00384_n52_α
.Lx00399_0:
 .quad 1
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00384_n43_α:
 jmp qword ptr [rbp + 1744]
 xchain00384_n43_β:
 jmp xchain00384_n39_α
 xchain00384_n44_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1664]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1672], rax
  .section .rodata
  .Lrkfn1473: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1473]
 lea rsi, [rbp + 1664]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 cmp eax, 99
 je xchain00384_n45_α
 jmp xchain00384_n48_α
 xchain00384_n44_β:
 jmp xchain00384_n45_α
# KEYWORD_read
 xchain00384_n45_α:
 mov rdi, qword ptr [rip + .Lx00400_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain00384_n49_α
 xchain00384_n45_β:
 jmp xchain00384_n58_α
.Lx00400_0:
 .quad .Lx00400_0_s
.Lx00400_0_s:
 .string "&progname"
 xchain00384_n46_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1840] -> [zr+1776]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1784], rax
# marshal arg1 = producer-box slot [zr+1872] -> [zr+1792]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1800], rax
# marshal arg2 = producer-box slot [zr+1904] -> [zr+1808]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 1816], rax
  .section .rodata
  .Lrkfn1476: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1476]
 lea rsi, [rbp + 1776]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 cmp eax, 99
 je xchain00384_n39_α
 jmp xchain00384_n50_α
 xchain00384_n46_β:
 jmp xchain00384_n39_α
# IR_SUBSCRIPT x[i] variable
 xchain00384_n47_α:
 mov rdi, qword ptr [rbp + 2320]
 mov rsi, qword ptr [rbp + 2328]
 mov rdx, qword ptr [rbp + 2352]
 mov rcx, qword ptr [rbp + 2360]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00384_n52_α
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 jmp xchain00384_n51_α
 xchain00384_n47_β:
 jmp xchain00384_n52_α
# IR_MOVE_LABEL
 xchain00384_n48_α:
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1496], rax
 lea rax, [rip + xchain00384_n45_α]
 mov qword ptr [rbp + 1504], rax
 jmp xchain00384_n53_α
 xchain00384_n48_β:
 jmp xchain00384_n58_α
# IR_LIT_STRING
 xchain00384_n49_α:
 mov qword ptr [rbp + 1616], 1
 mov rax, qword ptr [rip + .Lx00401_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00384_n55_α
 xchain00384_n49_β:
 jmp xchain00384_n58_α
.Lx00401_0:
 .quad .Lx00401_0_s
.Lx00401_0_s:
 .string ": empty file"
# IR_MOVE_LABEL
 xchain00384_n50_α:
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1736], rax
 lea rax, [rip + xchain00384_n39_α]
 mov qword ptr [rbp + 1744], rax
 jmp xchain00384_n39_α
 xchain00384_n50_β:
 jmp xchain00384_n39_α
# IR_DEREF variable -> value
 xchain00384_n51_α:
 mov rdi, qword ptr [rbp + 2384]
 mov rsi, qword ptr [rbp + 2392]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00384_n52_α
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain00384_n56_α
 xchain00384_n51_β:
 jmp xchain00384_n52_α
# KEYWORD_read
 xchain00384_n52_α:
 mov rdi, qword ptr [rip + .Lx00402_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain00384_n57_α
 xchain00384_n52_β:
 jmp xchain00384_n39_α
.Lx00402_0:
 .quad .Lx00402_0_s
.Lx00402_0_s:
 .string "&progname"
 xchain00384_n53_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1488]
 mov rdx, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain00384_n58_α
 xchain00384_n53_β:
 jmp xchain00384_n58_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00384_n54_α:
 jmp qword ptr [rbp + 1504]
 xchain00384_n54_β:
 jmp xchain00384_n58_α
 xchain00384_n55_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1584] -> [zr+1536]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1544], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1552]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1560], rax
  .section .rodata
  .Lrkfn1489: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1489]
 lea rsi, [rbp + 1536]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain00384_n58_α
 jmp xchain00384_n59_α
 xchain00384_n55_β:
 jmp xchain00384_n58_α
 xchain00384_n56_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2416] -> [zr+2288]
 mov rax, qword ptr [rbp + 2416]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 2296], rax
  .section .rodata
  .Lrkfn1491: .string "open"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1491]
 lea rsi, [rbp + 2288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 cmp eax, 99
 je xchain00384_n52_α
 jmp xchain00384_n60_α
 xchain00384_n56_β:
 jmp xchain00384_n52_α
# IR_LIT_STRING
 xchain00384_n57_α:
 mov qword ptr [rbp + 2128], 1
 mov rax, qword ptr [rip + .Lx00403_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain00384_n61_α
 xchain00384_n57_β:
 jmp xchain00384_n39_α
.Lx00403_0:
 .quad .Lx00403_0_s
.Lx00403_0_s:
 .string ": can't open "
# IR_VAR
 xchain00384_n58_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain00384_n62_α
 xchain00384_n58_β:
 jmp xchain00384_n63_α
# IR_MOVE_LABEL
 xchain00384_n59_α:
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1496], rax
 lea rax, [rip + xchain00384_n58_α]
 mov qword ptr [rbp + 1504], rax
 jmp xchain00384_n53_α
 xchain00384_n59_β:
 jmp xchain00384_n58_α
# IR_MOVE_LABEL
 xchain00384_n60_α:
 mov rax, qword ptr [rbp + 2272]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 1992], rax
 lea rax, [rip + xchain00384_n52_α]
 mov qword ptr [rbp + 2000], rax
 jmp xchain00384_n64_α
 xchain00384_n60_β:
 jmp xchain00384_n39_α
# IR_VAR_REF
 xchain00384_n61_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain00384_n66_α
 xchain00384_n61_β:
 jmp xchain00384_n39_α
 xchain00384_n62_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1408]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1416], rax
  .section .rodata
  .Lrkfn1501: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1501]
 lea rsi, [rbp + 1408]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je xchain00384_n63_α
 jmp xchain00384_n67_α
 xchain00384_n62_β:
 jmp xchain00384_n63_α
# KEYWORD_read
 xchain00384_n63_α:
 mov rdi, qword ptr [rip + .Lx00404_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain00384_n68_α
 xchain00384_n63_β:
 jmp xchain00384_n75_α
.Lx00404_0:
 .quad .Lx00404_0_s
.Lx00404_0_s:
 .string "&progname"
# IR_ASSIGN gva
 xchain00384_n64_α:
 mov rax, qword ptr [rbp + 1984]
 mov rdx, qword ptr [rbp + 1992]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain00384_n69_α
 xchain00384_n64_β:
 jmp xchain00384_n39_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00384_n65_α:
 jmp qword ptr [rbp + 2000]
 xchain00384_n65_β:
 jmp xchain00384_n39_α
# IR_LIT_INTEGER
 xchain00384_n66_α:
 mov qword ptr [rbp + 2192], 6
 mov rax, qword ptr [rip + .Lx00405_0]
 mov qword ptr [rbp + 2200], rax
 jmp xchain00384_n70_α
 xchain00384_n66_β:
 jmp xchain00384_n39_α
.Lx00405_0:
 .quad 1
# IR_MOVE_LABEL
 xchain00384_n67_α:
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1240], rax
 lea rax, [rip + xchain00384_n63_α]
 mov qword ptr [rbp + 1248], rax
 jmp xchain00384_n71_α
 xchain00384_n67_β:
 jmp xchain00384_n75_α
# IR_LIT_STRING
 xchain00384_n68_α:
 mov qword ptr [rbp + 1360], 1
 mov rax, qword ptr [rip + .Lx00406_0]
 mov qword ptr [rbp + 1368], rax
 jmp xchain00384_n73_α
 xchain00384_n68_β:
 jmp xchain00384_n75_α
.Lx00406_0:
 .quad .Lx00406_0_s
.Lx00406_0_s:
 .string ": file truncated"
# IR_MOVE_LABEL
 xchain00384_n69_α:
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1944], rax
 lea rax, [rip + xchain00384_n65_α]
 mov qword ptr [rbp + 1952], rax
 jmp xchain00384_n38_α
 xchain00384_n69_β:
 jmp xchain00384_n39_α
# IR_SUBSCRIPT x[i] variable
 xchain00384_n70_α:
 mov rdi, qword ptr [rbp + 2160]
 mov rsi, qword ptr [rbp + 2168]
 mov rdx, qword ptr [rbp + 2192]
 mov rcx, qword ptr [rbp + 2200]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00384_n39_α
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 jmp xchain00384_n74_α
 xchain00384_n70_β:
 jmp xchain00384_n39_α
 xchain00384_n71_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1232]
 mov rdx, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain00384_n75_α
 xchain00384_n71_β:
 jmp xchain00384_n75_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00384_n72_α:
 jmp qword ptr [rbp + 1248]
 xchain00384_n72_β:
 jmp xchain00384_n75_α
 xchain00384_n73_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1280]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1288], rax
# marshal arg1 = producer-box slot [zr+1360] -> [zr+1296]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1304], rax
  .section .rodata
  .Lrkfn1517: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1517]
 lea rsi, [rbp + 1280]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 cmp eax, 99
 je xchain00384_n75_α
 jmp xchain00384_n76_α
 xchain00384_n73_β:
 jmp xchain00384_n75_α
# IR_DEREF variable -> value
 xchain00384_n74_α:
 mov rdi, qword ptr [rbp + 2224]
 mov rsi, qword ptr [rbp + 2232]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00384_n39_α
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain00384_n77_α
 xchain00384_n74_β:
 jmp xchain00384_n39_α
# IR_VAR
 xchain00384_n75_α:
 mov rax, qword ptr [rbp + 3360]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 1096], rax
 jmp xchain00384_n78_α
 xchain00384_n75_β:
 jmp xchain00384_n79_α
# IR_MOVE_LABEL
 xchain00384_n76_α:
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1240], rax
 lea rax, [rip + xchain00384_n75_α]
 mov qword ptr [rbp + 1248], rax
 jmp xchain00384_n71_α
 xchain00384_n76_β:
 jmp xchain00384_n75_α
 xchain00384_n77_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+2256] -> [zr+2064]
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2072], rax
  .section .rodata
  .Lrkfn1524: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1524]
 lea rsi, [rbp + 2032]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain00384_n39_α
 jmp xchain00384_n80_α
 xchain00384_n77_β:
 jmp xchain00384_n39_α
# IR_LIT_INTEGER
 xchain00384_n78_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx00407_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00384_n81_α
 xchain00384_n78_β:
 jmp xchain00384_n79_α
.Lx00407_0:
 .quad 16
# IR_VAR
 xchain00384_n79_α:
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 920], rax
 jmp xchain00384_n82_α
 xchain00384_n79_β:
 jmp xchain00384_n83_α
# IR_MOVE_LABEL
 xchain00384_n80_α:
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1992], rax
 lea rax, [rip + xchain00384_n39_α]
 mov qword ptr [rbp + 2000], rax
 jmp xchain00384_n64_α
 xchain00384_n80_β:
 jmp xchain00384_n39_α
# IR_LIT_INTEGER
 xchain00384_n81_α:
 mov qword ptr [rbp + 1152], 6
 mov rax, qword ptr [rip + .Lx00408_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain00384_n84_α
 xchain00384_n81_β:
 jmp xchain00384_n79_α
.Lx00408_0:
 .quad 7
# IR_LIT_INTEGER
 xchain00384_n82_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx00409_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00384_n85_α
 xchain00384_n82_β:
 jmp xchain00384_n83_α
.Lx00409_0:
 .quad 16
# IR_VAR
 xchain00384_n83_α:
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 648], rax
 jmp xchain00384_n86_α
 xchain00384_n83_β:
 jmp xchain00384_n87_α
 xchain00384_n84_α:
# IR_BINOP_ARITH
.Lx00410_1:
 mov rax, 16
 mov rcx, 7
 add rax, rcx
 mov qword ptr [rbp + 1184], 6
 mov qword ptr [rbp + 1192], rax
 jmp xchain00384_n88_α
.Lx00410_0:
 mov rdi, qword ptr [rbp + 1120]
 mov rsi, qword ptr [rbp + 1128]
 mov rdx, qword ptr [rbp + 1152]
 mov rcx, qword ptr [rbp + 1160]
 mov r8d, 0
 lea r9, [rbp + 1184]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00410_3
.Lx00410_2:
 mov rdi, qword ptr [rbp + 1120]
 mov rsi, qword ptr [rbp + 1128]
 mov rdx, qword ptr [rbp + 1152]
 mov rcx, qword ptr [rbp + 1160]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00384_n79_α
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
.Lx00410_3:
 jmp xchain00384_n88_α
 xchain00384_n84_β:
 jmp xchain00384_n79_α
# IR_LIT_INTEGER
 xchain00384_n85_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx00411_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00384_n89_α
 xchain00384_n85_β:
 jmp xchain00384_n83_α
.Lx00411_0:
 .quad 7
# IR_VAR
 xchain00384_n86_α:
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 680], rax
 jmp xchain00384_n90_α
 xchain00384_n86_β:
 jmp xchain00384_n87_α
 xchain00384_n87_α:
 mov rdi, qword ptr [rip + .Lx00412_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00412_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00412_3]
 lea rdx, [rip + .Lx00412_4]
 jmp rax
.Lx00412_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00412_2
.Lx00412_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00412_2
.Lx00412_1:
 call rt_faildescr@PLT
.Lx00412_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain00384_n91_α
 jmp xchain00384_n91_α
 xchain00384_n87_β:
 jmp xchain00384_n91_α
.Lx00412_0:
 .quad .Lx00412_0_s
.Lx00412_0_s:
 .string "loadfile"
# IR_SUBSCRIPT section extended (x[i+:n]/x[i-:n]; end pre-computed by IR_BINOP; wraparound→ω)
 xchain00384_n88_α:
 mov rdi, qword ptr [rbp + 1088]
 mov rsi, qword ptr [rbp + 1096]
 mov rdx, qword ptr [rbp + 1120]
 mov rcx, qword ptr [rbp + 1128]
 mov r8, qword ptr [rbp + 1184]
 mov r9, qword ptr [rbp + 1192]
 call subscript_get2_ext@PLT
 cmp eax, 99
 je xchain00384_n79_α
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain00384_n92_α
 xchain00384_n88_β:
 jmp xchain00384_n79_α
 xchain00384_n89_α:
# IR_BINOP_ARITH
.Lx00413_1:
 mov rax, 16
 mov rcx, 7
 add rax, rcx
 mov qword ptr [rbp + 1008], 6
 mov qword ptr [rbp + 1016], rax
 jmp xchain00384_n93_α
.Lx00413_0:
 mov rdi, qword ptr [rbp + 944]
 mov rsi, qword ptr [rbp + 952]
 mov rdx, qword ptr [rbp + 976]
 mov rcx, qword ptr [rbp + 984]
 mov r8d, 0
 lea r9, [rbp + 1008]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00413_3
.Lx00413_2:
 mov rdi, qword ptr [rbp + 944]
 mov rsi, qword ptr [rbp + 952]
 mov rdx, qword ptr [rbp + 976]
 mov rcx, qword ptr [rbp + 984]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00384_n83_α
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
.Lx00413_3:
 jmp xchain00384_n93_α
 xchain00384_n89_β:
 jmp xchain00384_n83_α
# IR_COERCE_NUMERIC
 xchain00384_n90_α:
 mov eax, dword ptr [rbp + 3376]
 cmp eax, 7
 je .Lx00414_1
 cmp eax, 6
 jne .Lx00414_0
 mov eax, dword ptr [rbp + 3392]
 cmp eax, 6
 jne .Lx00414_0
.Lx00414_1:
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 616], rax
 jmp .Lx00414_2
.Lx00414_0:
 lea rdi, [rbp + 3376]
 lea rsi, [rbp + 3392]
 lea rdx, [rbp + 608]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00414_2:
 jmp xchain00384_n94_α
 xchain00384_n90_β:
 jmp xchain00384_n87_α
# IR_VAR
 xchain00384_n91_α:
 mov rax, qword ptr [rbp + 3360]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 264], rax
 jmp xchain00384_n95_α
 xchain00384_n91_β:
 jmp xchain00384_n96_α
 xchain00384_n92_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1056]
 mov rdx, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00384_n79_α
 xchain00384_n92_β:
 jmp xchain00384_n79_α
# IR_SUBSCRIPT section extended (x[i+:n]/x[i-:n]; end pre-computed by IR_BINOP; wraparound→ω)
 xchain00384_n93_α:
 mov rdi, qword ptr [rbp + 912]
 mov rsi, qword ptr [rbp + 920]
 mov rdx, qword ptr [rbp + 944]
 mov rcx, qword ptr [rbp + 952]
 mov r8, qword ptr [rbp + 1008]
 mov r9, qword ptr [rbp + 1016]
 call subscript_get2_ext@PLT
 cmp eax, 99
 je xchain00384_n83_α
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain00384_n97_α
 xchain00384_n93_β:
 jmp xchain00384_n83_α
# IR_COERCE_NUMERIC
 xchain00384_n94_α:
 mov eax, dword ptr [rbp + 3392]
 cmp eax, 7
 je .Lx00415_1
 cmp eax, 6
 jne .Lx00415_0
 mov eax, dword ptr [rbp + 3376]
 cmp eax, 6
 jne .Lx00415_0
.Lx00415_1:
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 584], rax
 jmp .Lx00415_2
.Lx00415_0:
 lea rdi, [rbp + 3392]
 lea rsi, [rbp + 3376]
 lea rdx, [rbp + 576]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00415_2:
 jmp xchain00384_n98_α
 xchain00384_n94_β:
 jmp xchain00384_n87_α
 xchain00384_n95_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn1551: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1551]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00384_n96_α
 jmp xchain00384_n96_α
 xchain00384_n95_β:
 jmp xchain00384_n96_α
# IR_VAR
 xchain00384_n96_α:
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 184], rax
 jmp xchain00384_n99_α
 xchain00384_n96_β:
 jmp xchain00384_n00072_α
 xchain00384_n97_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00384_n83_α
 xchain00384_n97_β:
 jmp xchain00384_n83_α
 xchain00384_n98_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 608]
 cmp eax, 100
 je .Lx00416_0
 mov eax, dword ptr [rbp + 576]
 cmp eax, 100
 je .Lx00416_0
 mov eax, dword ptr [rbp + 608]
 cmp eax, 6
 jne .Lx00416_2
 mov eax, dword ptr [rbp + 576]
 cmp eax, 6
 jne .Lx00416_2
.Lx00416_1:
 mov rax, qword ptr [rbp + 616]
 mov rcx, qword ptr [rbp + 584]
 add rax, rcx
 mov qword ptr [rbp + 544], 6
 mov qword ptr [rbp + 552], rax
 jmp xchain00384_n00074_α
.Lx00416_0:
 mov rdi, qword ptr [rbp + 608]
 mov rsi, qword ptr [rbp + 616]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 mov r8d, 0
 lea r9, [rbp + 544]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00416_3
.Lx00416_2:
 mov rdi, qword ptr [rbp + 608]
 mov rsi, qword ptr [rbp + 616]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00384_n87_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
.Lx00416_3:
 jmp xchain00384_n00074_α
 xchain00384_n98_β:
 jmp xchain00384_n87_α
 xchain00384_n99_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn1557: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1557]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00384_n00072_α
 jmp xchain00384_n00072_α
 xchain00384_n99_β:
 jmp xchain00384_n00072_α
# IR_VAR
 xchain00384_n00072_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00384_n00001_α
 xchain00384_n00072_β:
 jmp main_ω
# IR_LIT_REAL
 xchain00384_n00074_α:
 mov qword ptr [rbp + 704], 7
 mov rax, qword ptr [rip + .Lx00417_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain00384_n00077_α
 xchain00384_n00074_β:
 jmp xchain00384_n87_α
.Lx00417_0:
 .quad 4611686018427387904
 xchain00384_n00001_α:
  .section .rodata
  .Lcall00284_pname: .string "kgen"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 96]
 mov rdx, qword ptr [rbp + 104]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00284_pname]
 mov esi, 1
 lea rdx, [rbp + 112]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp xchain00384_n00078_α
xchain00384_n00001_β:
 lea rdi, [rbp + 112]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp xchain00384_n00078_α
# IR_COERCE_NUMERIC
 xchain00384_n00077_α:
 mov eax, dword ptr [rbp + 544]
 cmp eax, 7
 je .Lx00418_1
 cmp eax, 6
 jne .Lx00418_0
 mov eax, dword ptr [rbp + 704]
 cmp eax, 6
 jne .Lx00418_0
.Lx00418_1:
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 520], rax
 jmp .Lx00418_2
.Lx00418_0:
 lea rdi, [rbp + 544]
 lea rsi, [rbp + 704]
 lea rdx, [rbp + 512]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00418_2:
 jmp xchain00384_n00079_α
 xchain00384_n00077_β:
 jmp xchain00384_n87_α
 xchain00384_n00078_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 80]
 mov rdx, qword ptr [rbp + 88]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00419_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00419_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00419_3]
 lea rdx, [rip + .Lx00419_4]
 jmp rax
.Lx00419_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00419_2
.Lx00419_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00419_2
.Lx00419_1:
 call rt_faildescr@PLT
.Lx00419_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je main_ω
 jmp xchain00384_n00001_β
 xchain00384_n00078_β:
 jmp main_ω
.Lx00419_0:
 .quad .Lx00419_0_s
.Lx00419_0_s:
 .string "dumpcode"
 xchain00384_n00079_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00384_n87_α
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00384_n00080_α
 xchain00384_n00079_β:
 jmp xchain00384_n87_α
# KEYWORD_read
 xchain00384_n00080_α:
 mov rdi, qword ptr [rip + .Lx00420_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00384_n00082_α
 xchain00384_n00080_β:
 jmp xchain00384_n87_α
.Lx00420_0:
 .quad .Lx00420_0_s
.Lx00420_0_s:
 .string "&pi"
# IR_LIT_INTEGER
 xchain00384_n00082_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx00421_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain00384_n00083_α
 xchain00384_n00082_β:
 jmp xchain00384_n87_α
.Lx00421_0:
 .quad 9999999
# IR_COERCE_NUMERIC
 xchain00384_n00083_α:
 mov eax, dword ptr [rbp + 800]
 cmp eax, 7
 je .Lx00422_1
 cmp eax, 6
 jne .Lx00422_0
 mov eax, dword ptr [rbp + 832]
 cmp eax, 6
 jne .Lx00422_0
.Lx00422_1:
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 776], rax
 jmp .Lx00422_2
.Lx00422_0:
 lea rdi, [rbp + 800]
 lea rsi, [rbp + 832]
 lea rdx, [rbp + 768]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00422_2:
 jmp xchain00384_n00002_α
 xchain00384_n00083_β:
 jmp xchain00384_n87_α
 xchain00384_n00002_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 768]
 cmp eax, 100
 je .Lx00423_0
 mov eax, dword ptr [rbp + 768]
 cmp eax, 6
 jne .Lx00423_2
.Lx00423_1:
 mov rax, qword ptr [rbp + 776]
 mov rcx, 9999999
 cqo
 idiv rcx
 mov qword ptr [rbp + 736], 6
 mov qword ptr [rbp + 744], rax
 jmp xchain00384_n00084_α
.Lx00423_0:
 mov rdi, qword ptr [rbp + 768]
 mov rsi, qword ptr [rbp + 776]
 mov rdx, qword ptr [rbp + 832]
 mov rcx, qword ptr [rbp + 840]
 mov r8d, 3
 lea r9, [rbp + 736]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00423_3
.Lx00423_2:
 mov rdi, qword ptr [rbp + 768]
 mov rsi, qword ptr [rbp + 776]
 mov rdx, qword ptr [rbp + 832]
 mov rcx, qword ptr [rbp + 840]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00384_n87_α
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
.Lx00423_3:
 jmp xchain00384_n00084_α
 xchain00384_n00002_β:
 jmp xchain00384_n87_α
# IR_COERCE_NUMERIC
 xchain00384_n00084_α:
 mov eax, dword ptr [rbp + 480]
 cmp eax, 7
 je .Lx00424_1
 cmp eax, 6
 jne .Lx00424_0
 mov eax, dword ptr [rbp + 736]
 cmp eax, 6
 jne .Lx00424_0
.Lx00424_1:
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 456], rax
 jmp .Lx00424_2
.Lx00424_0:
 lea rdi, [rbp + 480]
 lea rsi, [rbp + 736]
 lea rdx, [rbp + 448]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00424_2:
 jmp xchain00384_n00086_α
 xchain00384_n00084_β:
 jmp xchain00384_n87_α
# IR_COERCE_NUMERIC
 xchain00384_n00086_α:
 mov eax, dword ptr [rbp + 736]
 cmp eax, 7
 je .Lx00425_1
 cmp eax, 6
 jne .Lx00425_0
 mov eax, dword ptr [rbp + 480]
 cmp eax, 6
 jne .Lx00425_0
.Lx00425_1:
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 424], rax
 jmp .Lx00425_2
.Lx00425_0:
 lea rdi, [rbp + 736]
 lea rsi, [rbp + 480]
 lea rdx, [rbp + 416]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00425_2:
 jmp xchain00384_n00088_α
 xchain00384_n00086_β:
 jmp xchain00384_n87_α
 xchain00384_n00088_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 448]
 cmp eax, 100
 je .Lx00426_0
 mov eax, dword ptr [rbp + 416]
 cmp eax, 100
 je .Lx00426_0
 mov eax, dword ptr [rbp + 448]
 cmp eax, 6
 jne .Lx00426_2
 mov eax, dword ptr [rbp + 416]
 cmp eax, 6
 jne .Lx00426_2
.Lx00426_1:
 mov rax, qword ptr [rbp + 456]
 mov rcx, qword ptr [rbp + 424]
 imul rax, rcx
 mov qword ptr [rbp + 384], 6
 mov qword ptr [rbp + 392], rax
 jmp xchain00384_n00090_α
.Lx00426_0:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 416]
 mov rcx, qword ptr [rbp + 424]
 mov r8d, 2
 lea r9, [rbp + 384]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00426_3
.Lx00426_2:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 416]
 mov rcx, qword ptr [rbp + 424]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00384_n87_α
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
.Lx00426_3:
 jmp xchain00384_n00090_α
 xchain00384_n00088_β:
 jmp xchain00384_n87_α
 xchain00384_n00090_α:
# BOX IR_CALL sin(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 360], rax
  .section .rodata
  .Lrkfn1577: .string "sin"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1577]
 lea rsi, [rbp + 352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain00384_n87_α
 jmp xchain00384_n00092_α
 xchain00384_n00090_β:
 jmp xchain00384_n87_α
# IR_ASSIGN gva
 xchain00384_n00092_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00384_n87_α
 xchain00384_n00092_β:
 jmp xchain00384_n87_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 3336]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 3336]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
