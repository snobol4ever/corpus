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
  sub rsp, 992
  mov [rsp + 968], rcx
  mov [rsp + 976], rdx
  mov [rsp + 984], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 960
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 920], rsp
  mov rdi, rsp
  mov esi, 960
  call rt_jmp_frame_lexprep@PLT
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
proc_kgen_res:
add rsp, 8
pop rbp
proc_kgen_β:
jmp qword ptr [rbp + 896]
proc_kgen_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_kgen_res]
push rax
mov rax, [rbp + 968]
mov rbp, [rbp + 984]
jmp rax
proc_kgen_ω:
mov rax, [rbp + 976]
lea rsp, [rbp + 992]
mov rbp, [rbp + 984]
jmp rax
  .globl proc_dumpcode_α
proc_dumpcode_α:
#=======================================================================================================================
    .global proc_dumpcode_α
    .global proc_dumpcode_β
    .global proc_dumpcode_γ
    .global proc_dumpcode_ω
  sub rsp, 1328
  mov [rsp + 1304], rcx
  mov [rsp + 1312], rdx
  mov [rsp + 1320], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1296
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1224], rsp
  mov rdi, rsp
  mov esi, 1296
  call rt_jmp_frame_lexprep@PLT
proc_dumpcode_α_body:
# IR_VAR_REF
 xchain00011_n0_α:
 mov rdi, 1879052352
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00011_n1_α
 xchain00011_n0_β:
 jmp xchain00011_n3_α
# IR_VAR
 xchain00011_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1144], rax
 jmp xchain00011_n2_α
 xchain00011_n1_β:
 jmp xchain00011_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00011_n2_α:
 mov rdi, qword ptr [rbp + 1104]
 mov rsi, qword ptr [rbp + 1112]
 mov rdx, qword ptr [rbp + 1136]
 mov rcx, qword ptr [rbp + 1144]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00011_n3_α
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
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
 lea rsi, [rbp + 1072]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain00011_n6_α
 jmp xchain00011_n5_α
 xchain00011_n3_β:
 jmp xchain00011_n6_α
# IR_DEREF variable -> value
 xchain00011_n4_α:
 mov rdi, qword ptr [rbp + 1168]
 mov rsi, qword ptr [rbp + 1176]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00011_n3_α
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain00011_n7_α
 xchain00011_n4_β:
 jmp xchain00011_n3_α
# IR_ASSIGN gva
 xchain00011_n5_α:
 mov rax, qword ptr [rbp + 1056]
 mov rdx, qword ptr [rbp + 1064]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00011_n6_α
 xchain00011_n5_β:
 jmp xchain00011_n6_α
# IR_VAR_REF
 xchain00011_n6_α:
 lea rdi, [rbp + 1248]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain00011_n8_β
 xchain00011_n6_β:
 jmp xchain00011_n10_α
 xchain00011_n7_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1200]
 mov rdx, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain00011_n3_α
 xchain00011_n7_β:
 jmp xchain00011_n3_α
 xchain00011_n8_α:
 mov qword ptr [rbp + 160], 0
 mov rdi, qword ptr [rip + .Lx00012_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00012_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00012_3]
 lea rdx, [rip + .Lx00012_4]
 jmp rax
.Lx00012_3:
 mov rax, qword ptr [rbp + 160]
 test rax, rax
 jne .Lx00012_5
 mov qword ptr [rbp + 160], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00012_2
.Lx00012_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00012_2
.Lx00012_4:
 mov rax, qword ptr [rbp + 160]
 test rax, rax
 jne .Lx00012_6
 mov qword ptr [rbp + 160], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00012_2
.Lx00012_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00012_2
.Lx00012_1:
 call rt_faildescr@PLT
.Lx00012_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain00011_n10_α
 jmp xchain00011_n9_α
 xchain00011_n8_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx00012_0:
 .quad .Lx00012_0_s
.Lx00012_0_s:
 .string "aseq"
# IR_SUBSCRIPT x[i] variable
 xchain00011_n9_α:
 mov rdi, qword ptr [rbp + 112]
 mov rsi, qword ptr [rbp + 120]
 mov rdx, qword ptr [rbp + 144]
 mov rcx, qword ptr [rbp + 152]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00011_n8_β
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
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
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00011_n8_β
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00011_n12_α
 xchain00011_n11_β:
 jmp xchain00011_n8_β
# IR_LIT_INTEGER
 xchain00011_n12_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00013_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00011_n13_α
 xchain00011_n12_β:
 jmp xchain00011_n8_β
.Lx00013_0:
 .quad 3
 xchain00011_n13_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+64]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 72], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+80]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 88], rax
  .section .rodata
  .Lrkfn188: .string "sort"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn188]
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
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00011_n15_α
 xchain00011_n14_β:
 jmp xchain00011_n10_α
# IR_VAR
 xchain00011_n15_α:
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 344], rax
 jmp xchain00011_n16_α
 xchain00011_n15_β:
 jmp xchain00011_n8_β
 xchain00011_n16_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 312], rax
  .section .rodata
  .Lrkfn193: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn193]
 lea rsi, [rbp + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain00011_n8_β
 jmp xchain00011_n17_α
 xchain00011_n16_β:
 jmp xchain00011_n8_β
 xchain00011_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00011_n18_α
 xchain00011_n17_β:
 jmp xchain00011_n8_β
# IR_VAR
 xchain00011_n18_α:
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00011_n19_α
 xchain00011_n18_β:
 jmp xchain00011_n20_α
 xchain00011_n19_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+976]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 984], rax
  .section .rodata
  .Lrkfn198: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn198]
 lea rsi, [rbp + 976]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain00011_n20_α
 jmp xchain00011_n21_α
 xchain00011_n19_β:
 jmp xchain00011_n20_α
# IR_VAR
 xchain00011_n20_α:
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 888], rax
 jmp xchain00011_n22_α
 xchain00011_n20_β:
 jmp xchain00011_n23_α
 xchain00011_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 960]
 mov rdx, qword ptr [rbp + 968]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain00011_n20_α
 xchain00011_n21_β:
 jmp xchain00011_n20_α
 xchain00011_n22_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+848]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 856], rax
  .section .rodata
  .Lrkfn203: .string "type"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn203]
 lea rsi, [rbp + 848]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain00011_n23_α
 jmp xchain00011_n24_α
 xchain00011_n22_β:
 jmp xchain00011_n23_α
# IR_VAR
 xchain00011_n23_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 712], rax
 jmp xchain00011_n25_α
 xchain00011_n23_β:
 jmp xchain00011_n15_α
# IR_LIT_STRING
 xchain00011_n24_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx00014_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00011_n26_α
 xchain00011_n24_β:
 jmp xchain00011_n23_α
.Lx00014_0:
 .quad .Lx00014_0_s
.Lx00014_0_s:
 .string "list"
# IR_VAR
 xchain00011_n25_α:
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 744], rax
 jmp xchain00011_n27_α
 xchain00011_n25_β:
 jmp xchain00011_n15_α
 xchain00011_n26_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 832]
 mov rsi, qword ptr [rbp + 840]
 mov rdx, qword ptr [rbp + 912]
 mov rcx, qword ptr [rbp + 920]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00011_n23_α
 mov rdi, qword ptr [rbp + 912]
 mov rsi, qword ptr [rbp + 920]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00011_n28_α
 xchain00011_n26_β:
 jmp xchain00011_n23_α
# IR_VAR
 xchain00011_n27_α:
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 776], rax
 jmp xchain00011_n29_α
 xchain00011_n27_β:
 jmp xchain00011_n15_α
# IR_VAR
 xchain00011_n28_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 504], rax
 jmp xchain00011_n30_α
 xchain00011_n28_β:
 jmp xchain00011_n15_α
 xchain00011_n29_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 704]
 mov rdx, qword ptr [rbp + 712]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
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
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
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
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 536], rax
 jmp xchain00011_n32_α
 xchain00011_n30_β:
 jmp xchain00011_n15_α
# IR_MOVE_LABEL
 xchain00011_n31_α:
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + xchain00011_n15_α]
 mov qword ptr [rbp + 400], rax
 jmp xchain00011_n33_α
 xchain00011_n31_β:
 jmp xchain00011_n15_α
# IR_VAR
 xchain00011_n32_α:
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 600], rax
 jmp xchain00011_n35_α
 xchain00011_n32_β:
 jmp xchain00011_n15_α
 xchain00011_n33_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 376], rax
 jmp xchain00011_n15_α
xchain00011_n33_β:
 jmp xchain00011_n15_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00011_n34_α:
 jmp qword ptr [rbp + 400]
 xchain00011_n34_β:
 jmp xchain00011_n15_α
# IR_LIST_BANG
 xchain00011_n35_α:
 mov qword ptr [rbp + 576], 0
.Lx00016_0:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 576]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp rax, 99
 je xchain00011_n15_α
 jmp xchain00011_n36_α
 xchain00011_n35_β:
 inc qword ptr [rbp + 576]
 jmp .Lx00016_0
 xchain00011_n36_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
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
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
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
mov rax, [rbp + 1304]
lea rsp, [rbp + 1328]
mov rbp, [rbp + 1320]
jmp rax
proc_dumpcode_ω:
mov rax, [rbp + 1312]
lea rsp, [rbp + 1328]
mov rbp, [rbp + 1320]
jmp rax
  .globl proc_aseq_α
proc_aseq_α:
#=======================================================================================================================
    .global proc_aseq_α
    .global proc_aseq_β
    .global proc_aseq_γ
    .global proc_aseq_ω
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
  .Lrkfn233: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn233]
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
  .Lrkfn241: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn241]
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
proc_aseq_res:
add rsp, 8
pop rbp
proc_aseq_β:
jmp qword ptr [rbp + 1136]
proc_aseq_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_aseq_res]
push rax
mov rax, [rbp + 1208]
mov rbp, [rbp + 1224]
jmp rax
proc_aseq_ω:
mov rax, [rbp + 1216]
lea rsp, [rbp + 1232]
mov rbp, [rbp + 1224]
jmp rax
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
  .Lrkfn298: .string "member"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn298]
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
  .Lrkfn305: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn305]
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
  .Lrkfn324: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn324]
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
  .Lrkfn363: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn363]
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
  .Lrkfn464: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn464]
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
 jmp xchain00044_n00101_α
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
 jmp xchain00044_n00101_α
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
 jmp xchain00044_n00101_α
 xchain00044_n00088_β:
 jmp xchain00044_n71_α
 xchain00044_n00090_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2032]
 cmp eax, 100
 je .Lx00102_0
 mov eax, dword ptr [rbp + 2000]
 cmp eax, 100
 je .Lx00102_0
 mov eax, dword ptr [rbp + 2032]
 cmp eax, 6
 jne .Lx00102_2
 mov eax, dword ptr [rbp + 2000]
 cmp eax, 6
 jne .Lx00102_2
.Lx00102_1:
 mov rax, qword ptr [rbp + 2040]
 mov rcx, qword ptr [rbp + 2008]
 sub rax, rcx
 mov qword ptr [rbp + 1968], 6
 mov qword ptr [rbp + 1976], rax
 jmp xchain00044_n00103_α
.Lx00102_0:
 mov rdi, qword ptr [rbp + 2032]
 mov rsi, qword ptr [rbp + 2040]
 mov rdx, qword ptr [rbp + 2000]
 mov rcx, qword ptr [rbp + 2008]
 mov r8d, 1
 lea r9, [rbp + 1968]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00102_3
.Lx00102_2:
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
.Lx00102_3:
 jmp xchain00044_n00103_α
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
  .Lrkfn476: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn476]
 lea rsi, [rbp + 1408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je xchain00044_n95_α
 jmp xchain00044_n00104_α
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
 jmp xchain00044_n00105_α
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
 jmp xchain00044_n00106_α
 xchain00044_n00093_β:
 jmp xchain00044_n00094_α
 xchain00044_n00094_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn480: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn480]
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
 jmp xchain00044_n00107_α
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
 je .Lx00108_0
 mov eax, dword ptr [rbp + 5200]
 cmp eax, 100
 je .Lx00108_0
 mov eax, dword ptr [rbp + 5280]
 cmp eax, 6
 jne .Lx00108_2
 mov eax, dword ptr [rbp + 5200]
 cmp eax, 6
 jne .Lx00108_2
.Lx00108_1:
 mov rax, qword ptr [rbp + 5288]
 mov rcx, qword ptr [rbp + 5208]
 cmp rax, rcx
 jge xchain00044_n58_β
 mov rcx, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 3024], rcx
 mov rcx, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 3032], rcx
 jmp xchain00044_n00109_α
.Lx00108_0:
 mov rdi, qword ptr [rbp + 5280]
 mov rsi, qword ptr [rbp + 5288]
 mov rdx, qword ptr [rbp + 5200]
 mov rcx, qword ptr [rbp + 5208]
 mov r8d, 5
 lea r9, [rbp + 3024]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00108_1
 cmp eax, 1
 je xchain00044_n58_β
 jmp xchain00044_n00109_α
.Lx00108_2:
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
 jmp xchain00044_n00109_α
 xchain00044_n00099_β:
 jmp xchain00044_n58_β
 xchain00044_n00101_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2144]
 mov rdx, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 jmp xchain00044_n71_α
 xchain00044_n00101_β:
 jmp xchain00044_n71_α
 xchain00044_n00103_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5232]
 cmp eax, 100
 je .Lx00110_0
 mov eax, dword ptr [rbp + 1968]
 cmp eax, 100
 je .Lx00110_0
 mov eax, dword ptr [rbp + 5232]
 cmp eax, 6
 jne .Lx00110_2
 mov eax, dword ptr [rbp + 1968]
 cmp eax, 6
 jne .Lx00110_2
.Lx00110_1:
 mov rax, qword ptr [rbp + 5240]
 mov rcx, qword ptr [rbp + 1976]
 cmp rax, rcx
 jge xchain00044_n78_α
 mov rcx, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1904], rcx
 mov rcx, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1912], rcx
 jmp xchain00044_n00111_α
.Lx00110_0:
 mov rdi, qword ptr [rbp + 5232]
 mov rsi, qword ptr [rbp + 5240]
 mov rdx, qword ptr [rbp + 1968]
 mov rcx, qword ptr [rbp + 1976]
 mov r8d, 5
 lea r9, [rbp + 1904]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00110_1
 cmp eax, 1
 je xchain00044_n78_α
 jmp xchain00044_n00111_α
.Lx00110_2:
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
 jmp xchain00044_n00111_α
 xchain00044_n00103_β:
 jmp xchain00044_n78_α
# IR_VAR
 xchain00044_n00104_α:
 mov rax, qword ptr [rbp + 5248]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 5256]
 mov qword ptr [rbp + 1592], rax
 jmp xchain00044_n00112_α
 xchain00044_n00104_β:
 jmp xchain00044_n95_α
# IR_VAR
 xchain00044_n00105_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00044_n00113_α
 xchain00044_n00105_β:
 jmp xchain00044_n00080_α
# IR_LIT_STRING
 xchain00044_n00106_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00114_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00044_n00115_α
 xchain00044_n00106_β:
 jmp xchain00044_n00094_α
.Lx00114_0:
 .quad .Lx00114_0_s
.Lx00114_0_s:
 .string "50005000"
# IR_RETURN
 xchain00044_n00004_α:
 mov rax, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_putchain_γ
 xchain00044_n00107_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 3456]
 mov qword ptr [rbp + 3440], rax
 mov rax, qword ptr [rbp + 3464]
 mov qword ptr [rbp + 3448], rax
 jmp xchain00044_n52_β
xchain00044_n00107_β:
 jmp xchain00044_n52_β
 xchain00044_n00109_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3024]
 mov rdx, qword ptr [rbp + 3032]
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 jmp xchain00044_n00005_α
 xchain00044_n00109_β:
 jmp xchain00044_n58_β
 xchain00044_n00111_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1904]
 mov rdx, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain00044_n78_α
 xchain00044_n00111_β:
 jmp xchain00044_n78_α
# IR_LIT_INTEGER
 xchain00044_n00112_α:
 mov qword ptr [rbp + 1616], 6
 mov rax, qword ptr [rip + .Lx00116_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00044_n00117_α
 xchain00044_n00112_β:
 jmp xchain00044_n95_α
.Lx00116_0:
 .quad 7
 xchain00044_n00113_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
  .section .rodata
  .Lrkfn496: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn496]
 lea rsi, [rbp + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain00044_n00080_α
 jmp xchain00044_n00118_α
 xchain00044_n00113_β:
 jmp xchain00044_n00080_α
 xchain00044_n00115_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn498: .string "writes"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn498]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00044_n00094_α
 jmp xchain00044_n00119_α
 xchain00044_n00115_β:
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
 xchain00044_n00117_α:
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
  .Lrkfn501: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn501]
 lea rsi, [rbp + 1536]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain00044_n95_α
 jmp xchain00044_n00120_α
 xchain00044_n00117_β:
 jmp xchain00044_n95_α
 xchain00044_n00118_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00044_n00121_α
 xchain00044_n00118_β:
 jmp xchain00044_n00080_α
# IR_MOVE_LABEL
 xchain00044_n00119_α:
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 104], rax
 lea rax, [rip + xchain00044_n00094_α]
 mov qword ptr [rbp + 112], rax
 jmp xchain00044_n00094_α
 xchain00044_n00119_β:
 jmp xchain00044_n00094_α
# IR_VAR
 xchain00044_n00120_α:
 mov rax, qword ptr [rbp + 5264]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 5272]
 mov qword ptr [rbp + 1720], rax
 jmp xchain00044_n00122_α
 xchain00044_n00120_β:
 jmp xchain00044_n95_α
 xchain00044_n00121_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 280], rax
 jmp xchain00044_n00123_α
xchain00044_n00121_β:
 jmp xchain00044_n00080_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00044_n00124_α:
 jmp qword ptr [rbp + 112]
 xchain00044_n00124_β:
 jmp xchain00044_n00094_α
# IR_LIT_INTEGER
 xchain00044_n00122_α:
 mov qword ptr [rbp + 1744], 6
 mov rax, qword ptr [rip + .Lx00125_0]
 mov qword ptr [rbp + 1752], rax
 jmp xchain00044_n00126_α
 xchain00044_n00122_β:
 jmp xchain00044_n95_α
.Lx00125_0:
 .quad 7
# IR_VAR
 xchain00044_n00123_α:
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 1208], rax
 jmp xchain00044_n00127_α
 xchain00044_n00123_β:
 jmp xchain00044_n00128_α
 xchain00044_n00126_α:
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
  .Lrkfn514: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn514]
 lea rsi, [rbp + 1664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 cmp eax, 99
 je xchain00044_n95_α
 jmp xchain00044_n00129_α
 xchain00044_n00126_β:
 jmp xchain00044_n95_α
# IR_LIT_INTEGER
 xchain00044_n00127_α:
 mov qword ptr [rbp + 1232], 6
 mov rax, qword ptr [rip + .Lx00130_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain00044_n00131_α
 xchain00044_n00127_β:
 jmp xchain00044_n00128_α
.Lx00130_0:
 .quad 0
# IR_VAR
 xchain00044_n00128_α:
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00044_n00132_α
 xchain00044_n00128_β:
 jmp xchain00044_n95_α
 xchain00044_n00129_α:
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
  .Lrkfn519: .string "writes"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn519]
 lea rsi, [rbp + 1280]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 cmp eax, 99
 je xchain00044_n95_α
 jmp xchain00044_n95_α
 xchain00044_n00129_β:
 jmp xchain00044_n95_α
 xchain00044_n00131_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5216]
 cmp eax, 100
 je .Lx00133_0
 mov eax, dword ptr [rbp + 1232]
 cmp eax, 100
 je .Lx00133_0
 mov eax, dword ptr [rbp + 5216]
 cmp eax, 6
 jne .Lx00133_2
 mov eax, dword ptr [rbp + 1232]
 cmp eax, 6
 jne .Lx00133_2
.Lx00133_1:
 mov rax, qword ptr [rbp + 5224]
 mov rcx, qword ptr [rbp + 1240]
 cmp rax, rcx
 je xchain00044_n00128_α
 mov rcx, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1168], rcx
 mov rcx, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1176], rcx
 jmp xchain00044_n00134_α
.Lx00133_0:
 mov rdi, qword ptr [rbp + 5216]
 mov rsi, qword ptr [rbp + 5224]
 mov rdx, qword ptr [rbp + 1232]
 mov rcx, qword ptr [rbp + 1240]
 mov r8d, 10
 lea r9, [rbp + 1168]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00133_1
 cmp eax, 1
 je xchain00044_n00128_α
 jmp xchain00044_n00134_α
.Lx00133_2:
 mov rdi, qword ptr [rbp + 5216]
 mov rsi, qword ptr [rbp + 5224]
 mov rdx, qword ptr [rbp + 1232]
 mov rcx, qword ptr [rbp + 1240]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00044_n00128_α
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1176], rax
 jmp xchain00044_n00134_α
 xchain00044_n00131_β:
 jmp xchain00044_n00128_α
# IR_LIT_INTEGER
 xchain00044_n00132_α:
 mov qword ptr [rbp + 1136], 6
 mov rax, qword ptr [rip + .Lx00135_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain00044_n00006_α
 xchain00044_n00132_β:
 jmp xchain00044_n95_α
.Lx00135_0:
 .quad 0
# IR_MOVE_LABEL
 xchain00044_n00134_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1048], rax
 lea rax, [rip + xchain00044_n00128_α]
 mov qword ptr [rbp + 1056], rax
 jmp xchain00044_n00136_α
 xchain00044_n00134_β:
 jmp xchain00044_n95_α
 xchain00044_n00006_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5200]
 cmp eax, 100
 je .Lx00137_0
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 100
 je .Lx00137_0
 mov eax, dword ptr [rbp + 5200]
 cmp eax, 6
 jne .Lx00137_2
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 6
 jne .Lx00137_2
.Lx00137_1:
 mov rax, qword ptr [rbp + 5208]
 mov rcx, qword ptr [rbp + 1144]
 cmp rax, rcx
 je xchain00044_n95_α
 mov rcx, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1072], rcx
 mov rcx, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1080], rcx
 jmp xchain00044_n00138_α
.Lx00137_0:
 mov rdi, qword ptr [rbp + 5200]
 mov rsi, qword ptr [rbp + 5208]
 mov rdx, qword ptr [rbp + 1136]
 mov rcx, qword ptr [rbp + 1144]
 mov r8d, 10
 lea r9, [rbp + 1072]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00137_1
 cmp eax, 1
 je xchain00044_n95_α
 jmp xchain00044_n00138_α
.Lx00137_2:
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
 jmp xchain00044_n00138_α
 xchain00044_n00006_β:
 jmp xchain00044_n95_α
# IR_LIT_INTEGER
 xchain00044_n00136_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx00139_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00044_n00007_α
 xchain00044_n00136_β:
 jmp xchain00044_n95_α
.Lx00139_0:
 .quad 5000
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00044_n00140_α:
 jmp qword ptr [rbp + 1056]
 xchain00044_n00140_β:
 jmp xchain00044_n95_α
# IR_MOVE_LABEL
 xchain00044_n00138_α:
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1048], rax
 lea rax, [rip + xchain00044_n95_α]
 mov qword ptr [rbp + 1056], rax
 jmp xchain00044_n00136_α
 xchain00044_n00138_β:
 jmp xchain00044_n95_α
# IR_VAR
 xchain00044_n00007_α:
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 760], rax
 jmp xchain00044_n00141_α
 xchain00044_n00007_β:
 jmp xchain00044_n95_α
# IR_COERCE_NUMERIC
 xchain00044_n00141_α:
 mov eax, dword ptr [rbp + 5216]
 cmp eax, 7
 je .Lx00142_1
 cmp eax, 6
 jne .Lx00142_0
 mov eax, dword ptr [rbp + 720]
 cmp eax, 6
 jne .Lx00142_0
.Lx00142_1:
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 696], rax
 jmp .Lx00142_2
.Lx00142_0:
 lea rdi, [rbp + 5216]
 lea rsi, [rbp + 720]
 lea rdx, [rbp + 688]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00142_2:
 jmp xchain00044_n00008_α
 xchain00044_n00141_β:
 jmp xchain00044_n95_α
 xchain00044_n00008_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 688]
 cmp eax, 100
 je .Lx00143_0
 mov eax, dword ptr [rbp + 688]
 cmp eax, 6
 jne .Lx00143_2
.Lx00143_1:
 mov rax, 5000
 mov rcx, qword ptr [rbp + 696]
 add rax, rcx
 mov qword ptr [rbp + 656], 6
 mov qword ptr [rbp + 664], rax
 jmp xchain00044_n00009_α
.Lx00143_0:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 mov r8d, 0
 lea r9, [rbp + 656]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00143_3
.Lx00143_2:
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
.Lx00143_3:
 jmp xchain00044_n00009_α
 xchain00044_n00008_β:
 jmp xchain00044_n95_α
# IR_LIT_INTEGER
 xchain00044_n00009_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx00144_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain00044_n00145_α
 xchain00044_n00009_β:
 jmp xchain00044_n95_α
.Lx00144_0:
 .quad 4
 xchain00044_n00145_α:
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
  .Lrkfn537: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn537]
 lea rsi, [rbp + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00044_n95_α
 jmp xchain00044_n00010_α
 xchain00044_n00145_β:
 jmp xchain00044_n95_α
# IR_LIT_INTEGER
 xchain00044_n00010_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx00146_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00044_n00147_α
 xchain00044_n00010_β:
 jmp xchain00044_n95_α
.Lx00146_0:
 .quad 5000
# IR_VAR
 xchain00044_n00147_α:
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 984], rax
 jmp xchain00044_n00148_α
 xchain00044_n00147_β:
 jmp xchain00044_n95_α
# IR_COERCE_NUMERIC
 xchain00044_n00148_α:
 mov eax, dword ptr [rbp + 5200]
 cmp eax, 7
 je .Lx00149_1
 cmp eax, 6
 jne .Lx00149_0
 mov eax, dword ptr [rbp + 944]
 cmp eax, 6
 jne .Lx00149_0
.Lx00149_1:
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 920], rax
 jmp .Lx00149_2
.Lx00149_0:
 lea rdi, [rbp + 5200]
 lea rsi, [rbp + 944]
 lea rdx, [rbp + 912]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00149_2:
 jmp xchain00044_n00150_α
 xchain00044_n00148_β:
 jmp xchain00044_n95_α
 xchain00044_n00150_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 912]
 cmp eax, 100
 je .Lx00151_0
 mov eax, dword ptr [rbp + 912]
 cmp eax, 6
 jne .Lx00151_2
.Lx00151_1:
 mov rax, 5000
 mov rcx, qword ptr [rbp + 920]
 add rax, rcx
 mov qword ptr [rbp + 880], 6
 mov qword ptr [rbp + 888], rax
 jmp xchain00044_n00152_α
.Lx00151_0:
 mov rdi, qword ptr [rbp + 944]
 mov rsi, qword ptr [rbp + 952]
 mov rdx, qword ptr [rbp + 912]
 mov rcx, qword ptr [rbp + 920]
 mov r8d, 0
 lea r9, [rbp + 880]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00151_3
.Lx00151_2:
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
.Lx00151_3:
 jmp xchain00044_n00152_α
 xchain00044_n00150_β:
 jmp xchain00044_n95_α
# IR_LIT_INTEGER
 xchain00044_n00152_α:
 mov qword ptr [rbp + 1008], 6
 mov rax, qword ptr [rip + .Lx00153_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00044_n00154_α
 xchain00044_n00152_β:
 jmp xchain00044_n95_α
.Lx00153_0:
 .quad 4
 xchain00044_n00154_α:
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
  .Lrkfn546: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn546]
 lea rsi, [rbp + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain00044_n95_α
 jmp xchain00044_n00155_α
 xchain00044_n00154_β:
 jmp xchain00044_n95_α
 xchain00044_n00155_α:
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
  .Lrkfn548: .string "writes"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn548]
 lea rsi, [rbp + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain00044_n95_α
 jmp xchain00044_n00156_α
 xchain00044_n00155_β:
 jmp xchain00044_n95_α
 xchain00044_n00156_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 mov qword ptr [rbp + 5184], rax
 mov qword ptr [rbp + 5192], rdx
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00044_n00157_α
 xchain00044_n00156_β:
 jmp xchain00044_n95_α
# IR_MOVE_LABEL
 xchain00044_n00157_α:
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
 lea rax, [rip + xchain00044_n95_α]
 mov qword ptr [rbp + 496], rax
 jmp xchain00044_n95_α
 xchain00044_n00157_β:
 jmp xchain00044_n95_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00044_n00158_α:
 jmp qword ptr [rbp + 496]
 xchain00044_n00158_β:
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
 xchain00159_n0_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain00159_n1_α
 xchain00159_n0_β:
 jmp xchain00159_n2_α
# IR_VAR
 xchain00159_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2120], rax
 jmp xchain00159_n3_α
 xchain00159_n1_β:
 jmp xchain00159_n2_α
# KEYWORD_read
 xchain00159_n2_α:
 mov rdi, qword ptr [rip + .Lx00160_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain00159_n4_α
 xchain00159_n2_β:
 jmp xchain00159_n7_α
.Lx00160_0:
 .quad .Lx00160_0_s
.Lx00160_0_s:
 .string "&progname"
 xchain00159_n3_α:
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
  .Lrkfn560: .string "seek"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn560]
 lea rsi, [rbp + 2032]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain00159_n2_α
 jmp xchain00159_n5_α
 xchain00159_n3_β:
 jmp xchain00159_n2_α
# IR_LIT_STRING
 xchain00159_n4_α:
 mov qword ptr [rbp + 1984], 1
 mov rax, qword ptr [rip + .Lx00161_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain00159_n6_α
 xchain00159_n4_β:
 jmp xchain00159_n7_α
.Lx00161_0:
 .quad .Lx00161_0_s
.Lx00161_0_s:
 .string ":can't reposition input file"
# IR_MOVE_LABEL
 xchain00159_n5_α:
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1864], rax
 lea rax, [rip + xchain00159_n2_α]
 mov qword ptr [rbp + 1872], rax
 jmp xchain00159_n7_α
 xchain00159_n5_β:
 jmp xchain00159_n7_α
 xchain00159_n6_α:
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
  .Lrkfn565: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn565]
 lea rsi, [rbp + 1904]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 cmp eax, 99
 je xchain00159_n7_α
 jmp xchain00159_n9_α
 xchain00159_n6_β:
 jmp xchain00159_n7_α
# IR_VAR
 xchain00159_n7_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain00159_n10_α
 xchain00159_n7_β:
 jmp xchain00159_n11_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00159_n8_α:
 jmp qword ptr [rbp + 1872]
 xchain00159_n8_β:
 jmp xchain00159_n7_α
# IR_MOVE_LABEL
 xchain00159_n9_α:
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 1864], rax
 lea rax, [rip + xchain00159_n7_α]
 mov qword ptr [rbp + 1872], rax
 jmp xchain00159_n7_α
 xchain00159_n9_β:
 jmp xchain00159_n7_α
 xchain00159_n10_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1824] -> [zr+1792]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1800], rax
  .section .rodata
  .Lrkfn572: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn572]
 lea rsi, [rbp + 1792]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 cmp eax, 99
 je xchain00159_n11_α
 jmp xchain00159_n12_α
 xchain00159_n10_β:
 jmp xchain00159_n11_α
# KEYWORD_read
 xchain00159_n11_α:
 mov rdi, qword ptr [rip + .Lx00162_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain00159_n13_α
 xchain00159_n11_β:
 jmp xchain00159_n17_α
.Lx00162_0:
 .quad .Lx00162_0_s
.Lx00162_0_s:
 .string "&progname"
# IR_MOVE_LABEL
 xchain00159_n12_α:
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1624], rax
 lea rax, [rip + xchain00159_n11_α]
 mov qword ptr [rbp + 1632], rax
 jmp xchain00159_n14_α
 xchain00159_n12_β:
 jmp xchain00159_n17_α
# IR_LIT_STRING
 xchain00159_n13_α:
 mov qword ptr [rbp + 1744], 1
 mov rax, qword ptr [rip + .Lx00163_0]
 mov qword ptr [rbp + 1752], rax
 jmp xchain00159_n16_α
 xchain00159_n13_β:
 jmp xchain00159_n17_α
.Lx00163_0:
 .quad .Lx00163_0_s
.Lx00163_0_s:
 .string ": input file changed during processing"
 xchain00159_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1616]
 mov rdx, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain00159_n17_α
 xchain00159_n14_β:
 jmp xchain00159_n17_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00159_n15_α:
 jmp qword ptr [rbp + 1632]
 xchain00159_n15_β:
 jmp xchain00159_n17_α
 xchain00159_n16_α:
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
  .Lrkfn581: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn581]
 lea rsi, [rbp + 1664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 cmp eax, 99
 je xchain00159_n17_α
 jmp xchain00159_n18_α
 xchain00159_n16_β:
 jmp xchain00159_n17_α
# IR_VAR
 xchain00159_n17_α:
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 1576], rax
 jmp xchain00159_n19_α
 xchain00159_n17_β:
 jmp xchain00159_n20_α
# IR_MOVE_LABEL
 xchain00159_n18_α:
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1624], rax
 lea rax, [rip + xchain00159_n17_α]
 mov qword ptr [rbp + 1632], rax
 jmp xchain00159_n14_α
 xchain00159_n18_β:
 jmp xchain00159_n17_α
 xchain00159_n19_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1568]
 mov rdx, qword ptr [rbp + 1576]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00164_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00164_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00164_3]
 lea rdx, [rip + .Lx00164_4]
 jmp rax
.Lx00164_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00164_2
.Lx00164_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00164_2
.Lx00164_1:
 call rt_faildescr@PLT
.Lx00164_2:
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain00159_n20_α
 jmp xchain00159_n21_α
 xchain00159_n19_β:
 jmp xchain00159_n20_α
.Lx00164_0:
 .quad .Lx00164_0_s
.Lx00164_0_s:
 .string "crack"
# IR_VAR
 xchain00159_n20_α:
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 1416], rax
 jmp xchain00159_n22_α
 xchain00159_n20_β:
 jmp xchain00159_n23_α
 xchain00159_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1520]
 mov rdx, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain00159_n20_α
 xchain00159_n21_β:
 jmp xchain00159_n20_α
# IR_LIT_INTEGER
 xchain00159_n22_α:
 mov qword ptr [rbp + 1440], 6
 mov rax, qword ptr [rip + .Lx00165_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain00159_n24_α
 xchain00159_n22_β:
 jmp xchain00159_n23_α
.Lx00165_0:
 .quad 23
# IR_VAR
 xchain00159_n23_α:
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 40], rax
 jmp xchain00159_n25_α
 xchain00159_n23_β:
 jmp proc_putdel_ω
# IR_LIT_INTEGER
 xchain00159_n24_α:
 mov qword ptr [rbp + 1472], 6
 mov rax, qword ptr [rip + .Lx00166_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain00159_n26_α
 xchain00159_n24_β:
 jmp xchain00159_n23_α
.Lx00166_0:
 .quad 0
# IR_RETURN
 xchain00159_n25_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_putdel_γ
# IR_SUBSCRIPT section
 xchain00159_n26_α:
 mov rdi, qword ptr [rbp + 1408]
 mov rsi, qword ptr [rbp + 1416]
 mov rdx, qword ptr [rbp + 1440]
 mov rcx, qword ptr [rbp + 1448]
 mov r8, qword ptr [rbp + 1472]
 mov r9, qword ptr [rbp + 1480]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00159_n23_α
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain00159_n27_α
 xchain00159_n26_β:
 jmp xchain00159_n23_α
# IR_GEN_SCAN
 xchain00159_n27_α:
 mov rdi, qword ptr [rbp + 1376]
 mov rsi, qword ptr [rbp + 1384]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00159_n28_α
 xchain00159_n27_β:
 jmp xchain00159_n23_α
# IR_VAR
 xchain00159_n28_α:
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 1352], rax
 jmp xchain00159_n29_α
 xchain00159_n28_β:
 jmp xchain00159_n30_α
# IR_FIELD_GET
 xchain00159_n29_α:
 mov rdi, qword ptr [rip + .Lx00167_0]
 mov rsi, qword ptr [rbp + 1344]
 mov rdx, qword ptr [rbp + 1352]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00159_n30_α
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain00159_n31_α
 xchain00159_n29_β:
 jmp xchain00159_n30_α
.Lx00167_0:
 .quad .Lx00167_0_s
.Lx00167_0_s:
 .string "rev"
# IR_LIT_INTEGER
 xchain00159_n30_α:
 mov qword ptr [rbp + 1248], 6
 mov rax, qword ptr [rip + .Lx00168_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00159_n32_α
 xchain00159_n30_β:
 jmp xchain00159_n34_α
.Lx00168_0:
 .quad 0
# IR_UNOP
 xchain00159_n31_α:
 mov eax, dword ptr [rbp + 1312]
 cmp eax, 99
 je xchain00159_n30_α
 cmp eax, 0
 jne xchain00159_n30_α
 mov qword ptr [rbp + 1280], 0
 mov qword ptr [rbp + 1288], 0
 jmp xchain00159_n33_α
 xchain00159_n31_β:
 jmp xchain00159_n30_α
# IR_SCAN_TAB
 xchain00159_n32_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00169_0
 add rax, r15
 add rax, 1
.Lx00169_0:
 cmp rax, 1
 jge .Lx00169_239
 add rsp, 16
 jmp xchain00159_n34_α
.Lx00169_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00169_240
 add rsp, 16
 jmp xchain00159_n34_α
.Lx00169_240:
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
 jmp xchain00159_n34_α
 xchain00159_n32_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00159_n34_α
# IR_VAR
 xchain00159_n33_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00159_n35_α
 xchain00159_n33_β:
 jmp xchain00159_n36_α
# IR_VAR
 xchain00159_n34_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00159_n37_α
 xchain00159_n34_β:
 jmp xchain00159_n36_α
# IR_LIT_INTEGER
 xchain00159_n35_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx00170_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00159_n38_α
 xchain00159_n35_β:
 jmp xchain00159_n36_α
.Lx00170_0:
 .quad 4
# IR_GEN_SCAN
 xchain00159_n36_α:
 lea rdi, [rbp + 80]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 80]
 mov r14, qword ptr [rbp + 88]
 mov r15, qword ptr [rbp + 96]
 jmp xchain00159_n23_α
 xchain00159_n36_β:
 jmp xchain00159_n23_α
# IR_LIT_INTEGER
 xchain00159_n37_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx00171_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain00159_n39_α
 xchain00159_n37_β:
 jmp xchain00159_n36_α
.Lx00171_0:
 .quad 5000
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00159_n38_α:
 sub rsp, 16
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00172_239
 add rsp, 16
 jmp xchain00159_n36_α
.Lx00172_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00172_240
 add rsp, 16
 jmp xchain00159_n36_α
.Lx00172_240:
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
 jmp xchain00159_n40_α
 xchain00159_n38_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00159_n36_α
# IR_LIT_INTEGER
 xchain00159_n39_α:
 mov qword ptr [rbp + 928], 6
 mov rax, qword ptr [rip + .Lx00173_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain00159_n41_α
 xchain00159_n39_β:
 jmp xchain00159_n36_α
.Lx00173_0:
 .quad 18446744073709551612
# IR_LIT_INTEGER
 xchain00159_n40_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx00174_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain00159_n42_α
 xchain00159_n40_β:
 jmp xchain00159_n36_α
.Lx00174_0:
 .quad 5000
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00159_n41_α:
 sub rsp, 16
 mov rax, -4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00175_239
 add rsp, 16
 jmp xchain00159_n36_α
.Lx00175_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00175_240
 add rsp, 16
 jmp xchain00159_n36_α
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
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain00159_n43_α
 xchain00159_n41_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00159_n36_α
# IR_COERCE_NUMERIC
 xchain00159_n42_α:
 mov eax, dword ptr [rbp + 336]
 cmp eax, 7
 je .Lx00176_1
 cmp eax, 6
 jne .Lx00176_0
 mov eax, dword ptr [rbp + 400]
 cmp eax, 6
 jne .Lx00176_0
.Lx00176_1:
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 312], rax
 jmp .Lx00176_2
.Lx00176_0:
 lea rdi, [rbp + 336]
 lea rsi, [rbp + 400]
 lea rdx, [rbp + 304]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00176_2:
 jmp xchain00159_n44_α
 xchain00159_n42_β:
 jmp xchain00159_n36_α
# IR_COERCE_NUMERIC
 xchain00159_n43_α:
 mov eax, dword ptr [rbp + 896]
 cmp eax, 7
 je .Lx00177_1
 cmp eax, 6
 jne .Lx00177_0
 mov eax, dword ptr [rbp + 864]
 cmp eax, 6
 jne .Lx00177_0
.Lx00177_1:
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 840], rax
 jmp .Lx00177_2
.Lx00177_0:
 lea rdi, [rbp + 896]
 lea rsi, [rbp + 864]
 lea rdx, [rbp + 832]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00177_2:
 jmp xchain00159_n45_α
 xchain00159_n43_β:
 jmp xchain00159_n36_α
 xchain00159_n44_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 304]
 cmp eax, 100
 je .Lx00178_0
 mov eax, dword ptr [rbp + 304]
 cmp eax, 6
 jne .Lx00178_2
.Lx00178_1:
 mov rax, qword ptr [rbp + 312]
 mov rcx, 5000
 sub rax, rcx
 mov qword ptr [rbp + 272], 6
 mov qword ptr [rbp + 280], rax
 jmp xchain00159_n46_α
.Lx00178_0:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 400]
 mov rcx, qword ptr [rbp + 408]
 mov r8d, 1
 lea r9, [rbp + 272]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00178_3
.Lx00178_2:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 400]
 mov rcx, qword ptr [rbp + 408]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00159_n36_α
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
.Lx00178_3:
 jmp xchain00159_n46_α
 xchain00159_n44_β:
 jmp xchain00159_n36_α
 xchain00159_n45_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 832]
 cmp eax, 100
 je .Lx00179_0
 mov eax, dword ptr [rbp + 832]
 cmp eax, 6
 jne .Lx00179_2
.Lx00179_1:
 mov rax, 5000
 mov rcx, qword ptr [rbp + 840]
 sub rax, rcx
 mov qword ptr [rbp + 800], 6
 mov qword ptr [rbp + 808], rax
 jmp xchain00159_n47_α
.Lx00179_0:
 mov rdi, qword ptr [rbp + 864]
 mov rsi, qword ptr [rbp + 872]
 mov rdx, qword ptr [rbp + 832]
 mov rcx, qword ptr [rbp + 840]
 mov r8d, 1
 lea r9, [rbp + 800]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00179_3
.Lx00179_2:
 mov rdi, qword ptr [rbp + 864]
 mov rsi, qword ptr [rbp + 872]
 mov rdx, qword ptr [rbp + 832]
 mov rcx, qword ptr [rbp + 840]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00159_n36_α
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
.Lx00179_3:
 jmp xchain00159_n47_α
 xchain00159_n45_β:
 jmp xchain00159_n36_α
 xchain00159_n46_α:
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
  .Lrkfn625: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn625]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00159_n36_α
 jmp xchain00159_n48_α
 xchain00159_n46_β:
 jmp xchain00159_n36_α
 xchain00159_n47_α:
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
  .Lrkfn627: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn627]
 lea rsi, [rbp + 720]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain00159_n36_α
 jmp xchain00159_n49_α
 xchain00159_n47_β:
 jmp xchain00159_n36_α
# IR_VAR
 xchain00159_n48_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00159_n50_α
 xchain00159_n48_β:
 jmp xchain00159_n33_α
# IR_VAR
 xchain00159_n49_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain00159_n51_α
 xchain00159_n49_β:
 jmp xchain00159_n34_α
# IR_LIT_INTEGER
 xchain00159_n50_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx00180_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00159_n52_α
 xchain00159_n50_β:
 jmp xchain00159_n33_α
.Lx00180_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00159_n51_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx00181_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00159_n53_α
 xchain00159_n51_β:
 jmp xchain00159_n34_α
.Lx00181_0:
 .quad 5000
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00159_n52_α:
 sub rsp, 16
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00182_239
 add rsp, 16
 jmp xchain00159_n33_α
.Lx00182_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00182_240
 add rsp, 16
 jmp xchain00159_n33_α
.Lx00182_240:
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
 jmp xchain00159_n54_α
 xchain00159_n52_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00159_n33_α
# IR_LIT_INTEGER
 xchain00159_n53_α:
 mov qword ptr [rbp + 1184], 6
 mov rax, qword ptr [rip + .Lx00183_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain00159_n55_α
 xchain00159_n53_β:
 jmp xchain00159_n34_α
.Lx00183_0:
 .quad 18446744073709551612
# IR_LIT_INTEGER
 xchain00159_n54_α:
 mov qword ptr [rbp + 656], 6
 mov rax, qword ptr [rip + .Lx00184_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain00159_n56_α
 xchain00159_n54_β:
 jmp xchain00159_n33_α
.Lx00184_0:
 .quad 5000
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00159_n55_α:
 sub rsp, 16
 mov rax, -4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00185_239
 add rsp, 16
 jmp xchain00159_n34_α
.Lx00185_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00185_240
 add rsp, 16
 jmp xchain00159_n34_α
.Lx00185_240:
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
 jmp xchain00159_n57_α
 xchain00159_n55_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00159_n34_α
# IR_COERCE_NUMERIC
 xchain00159_n56_α:
 mov eax, dword ptr [rbp + 592]
 cmp eax, 7
 je .Lx00186_1
 cmp eax, 6
 jne .Lx00186_0
 mov eax, dword ptr [rbp + 656]
 cmp eax, 6
 jne .Lx00186_0
.Lx00186_1:
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
 jmp .Lx00186_2
.Lx00186_0:
 lea rdi, [rbp + 592]
 lea rsi, [rbp + 656]
 lea rdx, [rbp + 560]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00186_2:
 jmp xchain00159_n58_α
 xchain00159_n56_β:
 jmp xchain00159_n33_α
# IR_COERCE_NUMERIC
 xchain00159_n57_α:
 mov eax, dword ptr [rbp + 1152]
 cmp eax, 7
 je .Lx00187_1
 cmp eax, 6
 jne .Lx00187_0
 mov eax, dword ptr [rbp + 1120]
 cmp eax, 6
 jne .Lx00187_0
.Lx00187_1:
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1096], rax
 jmp .Lx00187_2
.Lx00187_0:
 lea rdi, [rbp + 1152]
 lea rsi, [rbp + 1120]
 lea rdx, [rbp + 1088]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00187_2:
 jmp xchain00159_n59_α
 xchain00159_n57_β:
 jmp xchain00159_n34_α
 xchain00159_n58_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 560]
 cmp eax, 100
 je .Lx00188_0
 mov eax, dword ptr [rbp + 560]
 cmp eax, 6
 jne .Lx00188_2
.Lx00188_1:
 mov rax, qword ptr [rbp + 568]
 mov rcx, 5000
 sub rax, rcx
 mov qword ptr [rbp + 528], 6
 mov qword ptr [rbp + 536], rax
 jmp xchain00159_n60_α
.Lx00188_0:
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 mov rdx, qword ptr [rbp + 656]
 mov rcx, qword ptr [rbp + 664]
 mov r8d, 1
 lea r9, [rbp + 528]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00188_3
.Lx00188_2:
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 mov rdx, qword ptr [rbp + 656]
 mov rcx, qword ptr [rbp + 664]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00159_n33_α
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
.Lx00188_3:
 jmp xchain00159_n60_α
 xchain00159_n58_β:
 jmp xchain00159_n33_α
 xchain00159_n59_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 100
 je .Lx00189_0
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 6
 jne .Lx00189_2
.Lx00189_1:
 mov rax, 5000
 mov rcx, qword ptr [rbp + 1096]
 sub rax, rcx
 mov qword ptr [rbp + 1056], 6
 mov qword ptr [rbp + 1064], rax
 jmp xchain00159_n61_α
.Lx00189_0:
 mov rdi, qword ptr [rbp + 1120]
 mov rsi, qword ptr [rbp + 1128]
 mov rdx, qword ptr [rbp + 1088]
 mov rcx, qword ptr [rbp + 1096]
 mov r8d, 1
 lea r9, [rbp + 1056]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00189_3
.Lx00189_2:
 mov rdi, qword ptr [rbp + 1120]
 mov rsi, qword ptr [rbp + 1128]
 mov rdx, qword ptr [rbp + 1088]
 mov rcx, qword ptr [rbp + 1096]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00159_n34_α
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
.Lx00189_3:
 jmp xchain00159_n61_α
 xchain00159_n59_β:
 jmp xchain00159_n34_α
 xchain00159_n60_α:
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
  .Lrkfn645: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn645]
 lea rsi, [rbp + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00159_n33_α
 jmp xchain00159_n33_α
 xchain00159_n60_β:
 jmp xchain00159_n33_α
 xchain00159_n61_α:
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
  .Lrkfn647: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn647]
 lea rsi, [rbp + 976]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain00159_n34_α
 jmp xchain00159_n34_α
 xchain00159_n61_β:
 jmp xchain00159_n34_α
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
 xchain00190_n0_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 5104], rax
 mov qword ptr [rbp + 5112], rdx
 jmp xchain00190_n1_α
 xchain00190_n0_β:
 jmp xchain00190_n2_α
# IR_LIT_INTEGER
 xchain00190_n1_α:
 mov qword ptr [rbp + 5136], 6
 mov rax, qword ptr [rip + .Lx00191_0]
 mov qword ptr [rbp + 5144], rax
 jmp xchain00190_n3_α
 xchain00190_n1_β:
 jmp xchain00190_n2_α
.Lx00191_0:
 .quad 0
# IR_VAR
 xchain00190_n2_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 4976], rax
 mov qword ptr [rbp + 4984], rdx
 jmp xchain00190_n4_α
 xchain00190_n2_β:
 jmp xchain00190_n5_α
 xchain00190_n3_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5104]
 cmp eax, 100
 je .Lx00192_0
 mov eax, dword ptr [rbp + 5136]
 cmp eax, 100
 je .Lx00192_0
 mov eax, dword ptr [rbp + 5104]
 cmp eax, 6
 jne .Lx00192_2
 mov eax, dword ptr [rbp + 5136]
 cmp eax, 6
 jne .Lx00192_2
.Lx00192_1:
 mov rax, qword ptr [rbp + 5112]
 mov rcx, qword ptr [rbp + 5144]
 cmp rax, rcx
 jg xchain00190_n2_α
 mov rcx, qword ptr [rbp + 5136]
 mov qword ptr [rbp + 5072], rcx
 mov rcx, qword ptr [rbp + 5144]
 mov qword ptr [rbp + 5080], rcx
 jmp xchain00190_n6_α
.Lx00192_0:
 mov rdi, qword ptr [rbp + 5104]
 mov rsi, qword ptr [rbp + 5112]
 mov rdx, qword ptr [rbp + 5136]
 mov rcx, qword ptr [rbp + 5144]
 mov r8d, 6
 lea r9, [rbp + 5072]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00192_1
 cmp eax, 1
 je xchain00190_n2_α
 jmp xchain00190_n6_α
.Lx00192_2:
 mov rdi, qword ptr [rbp + 5104]
 mov rsi, qword ptr [rbp + 5112]
 mov rdx, qword ptr [rbp + 5136]
 mov rcx, qword ptr [rbp + 5144]
 mov r8d, 6
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00190_n2_α
 mov rax, qword ptr [rbp + 5136]
 mov qword ptr [rbp + 5072], rax
 mov rax, qword ptr [rbp + 5144]
 mov qword ptr [rbp + 5080], rax
 jmp xchain00190_n6_α
 xchain00190_n3_β:
 jmp xchain00190_n2_α
# IR_VAR
 xchain00190_n4_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 5008], rax
 mov qword ptr [rbp + 5016], rdx
 jmp xchain00190_n7_α
 xchain00190_n4_β:
 jmp xchain00190_n5_α
# IR_VAR
 xchain00190_n5_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 4768], rax
 mov qword ptr [rbp + 4776], rdx
 jmp xchain00190_n8_α
 xchain00190_n5_β:
 jmp xchain00190_n9_α
# IR_RETURN
 xchain00190_n6_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_collapse_γ
# IR_COERCE_NUMERIC
 xchain00190_n7_α:
 mov eax, dword ptr [rbp + 4976]
 cmp eax, 7
 je .Lx00193_1
 cmp eax, 6
 jne .Lx00193_0
 mov eax, dword ptr [rbp + 5008]
 cmp eax, 6
 jne .Lx00193_0
.Lx00193_1:
 mov rax, qword ptr [rbp + 4976]
 mov qword ptr [rbp + 4944], rax
 mov rax, qword ptr [rbp + 4984]
 mov qword ptr [rbp + 4952], rax
 jmp .Lx00193_2
.Lx00193_0:
 lea rdi, [rbp + 4976]
 lea rsi, [rbp + 5008]
 lea rdx, [rbp + 4944]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00193_2:
 jmp xchain00190_n10_α
 xchain00190_n7_β:
 jmp xchain00190_n5_α
# KEYWORD_read
 xchain00190_n8_α:
 mov rdi, qword ptr [rip + .Lx00194_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 4800], rax
 mov qword ptr [rbp + 4808], rdx
 jmp xchain00190_n11_α
 xchain00190_n8_β:
 jmp xchain00190_n9_α
.Lx00194_0:
 .quad .Lx00194_0_s
.Lx00194_0_s:
 .string "&pi"
# IR_VAR
 xchain00190_n9_α:
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 4528], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 4536], rax
 jmp xchain00190_n12_α
 xchain00190_n9_β:
 jmp xchain00190_n13_α
# IR_COERCE_NUMERIC
 xchain00190_n10_α:
 mov eax, dword ptr [rbp + 5008]
 cmp eax, 7
 je .Lx00195_1
 cmp eax, 6
 jne .Lx00195_0
 mov eax, dword ptr [rbp + 4976]
 cmp eax, 6
 jne .Lx00195_0
.Lx00195_1:
 mov rax, qword ptr [rbp + 5008]
 mov qword ptr [rbp + 4912], rax
 mov rax, qword ptr [rbp + 5016]
 mov qword ptr [rbp + 4920], rax
 jmp .Lx00195_2
.Lx00195_0:
 lea rdi, [rbp + 5008]
 lea rsi, [rbp + 4976]
 lea rdx, [rbp + 4912]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00195_2:
 jmp xchain00190_n14_α
 xchain00190_n10_β:
 jmp xchain00190_n5_α
# IR_COERCE_NUMERIC
 xchain00190_n11_α:
 mov eax, dword ptr [rbp + 4768]
 cmp eax, 7
 je .Lx00196_1
 cmp eax, 6
 jne .Lx00196_0
 mov eax, dword ptr [rbp + 4800]
 cmp eax, 6
 jne .Lx00196_0
.Lx00196_1:
 mov rax, qword ptr [rbp + 4768]
 mov qword ptr [rbp + 4736], rax
 mov rax, qword ptr [rbp + 4776]
 mov qword ptr [rbp + 4744], rax
 jmp .Lx00196_2
.Lx00196_0:
 lea rdi, [rbp + 4768]
 lea rsi, [rbp + 4800]
 lea rdx, [rbp + 4736]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00196_2:
 jmp xchain00190_n15_α
 xchain00190_n11_β:
 jmp xchain00190_n9_α
# KEYWORD_read
 xchain00190_n12_α:
 mov rdi, qword ptr [rip + .Lx00197_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 jmp xchain00190_n16_α
 xchain00190_n12_β:
 jmp xchain00190_n13_α
.Lx00197_0:
 .quad .Lx00197_0_s
.Lx00197_0_s:
 .string "&pi"
# IR_VAR
 xchain00190_n13_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 jmp xchain00190_n17_α
 xchain00190_n13_β:
 jmp xchain00190_n18_α
 xchain00190_n14_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 4944]
 cmp eax, 100
 je .Lx00198_0
 mov eax, dword ptr [rbp + 4912]
 cmp eax, 100
 je .Lx00198_0
 mov eax, dword ptr [rbp + 4944]
 cmp eax, 6
 jne .Lx00198_2
 mov eax, dword ptr [rbp + 4912]
 cmp eax, 6
 jne .Lx00198_2
.Lx00198_1:
 mov rax, qword ptr [rbp + 4952]
 mov rcx, qword ptr [rbp + 4920]
 imul rax, rcx
 mov qword ptr [rbp + 4880], 6
 mov qword ptr [rbp + 4888], rax
 jmp xchain00190_n19_α
.Lx00198_0:
 mov rdi, qword ptr [rbp + 4944]
 mov rsi, qword ptr [rbp + 4952]
 mov rdx, qword ptr [rbp + 4912]
 mov rcx, qword ptr [rbp + 4920]
 mov r8d, 2
 lea r9, [rbp + 4880]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00198_3
.Lx00198_2:
 mov rdi, qword ptr [rbp + 4944]
 mov rsi, qword ptr [rbp + 4952]
 mov rdx, qword ptr [rbp + 4912]
 mov rcx, qword ptr [rbp + 4920]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00190_n5_α
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
.Lx00198_3:
 jmp xchain00190_n19_α
 xchain00190_n14_β:
 jmp xchain00190_n5_α
# IR_COERCE_NUMERIC
 xchain00190_n15_α:
 mov eax, dword ptr [rbp + 4800]
 cmp eax, 7
 je .Lx00199_1
 cmp eax, 6
 jne .Lx00199_0
 mov eax, dword ptr [rbp + 4768]
 cmp eax, 6
 jne .Lx00199_0
.Lx00199_1:
 mov rax, qword ptr [rbp + 4800]
 mov qword ptr [rbp + 4704], rax
 mov rax, qword ptr [rbp + 4808]
 mov qword ptr [rbp + 4712], rax
 jmp .Lx00199_2
.Lx00199_0:
 lea rdi, [rbp + 4800]
 lea rsi, [rbp + 4768]
 lea rdx, [rbp + 4704]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00199_2:
 jmp xchain00190_n20_α
 xchain00190_n15_β:
 jmp xchain00190_n9_α
 xchain00190_n16_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 100
 je .Lx00200_0
 mov eax, dword ptr [rbp + 4560]
 cmp eax, 100
 je .Lx00200_0
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 6
 jne .Lx00200_2
 mov eax, dword ptr [rbp + 4560]
 cmp eax, 6
 jne .Lx00200_2
.Lx00200_1:
 mov rax, qword ptr [rbp + 5320]
 mov rcx, qword ptr [rbp + 4568]
 cmp rax, rcx
 jle xchain00190_n13_α
 mov rcx, qword ptr [rbp + 4560]
 mov qword ptr [rbp + 4496], rcx
 mov rcx, qword ptr [rbp + 4568]
 mov qword ptr [rbp + 4504], rcx
 jmp xchain00190_n21_α
.Lx00200_0:
 mov rdi, qword ptr [rbp + 5312]
 mov rsi, qword ptr [rbp + 5320]
 mov rdx, qword ptr [rbp + 4560]
 mov rcx, qword ptr [rbp + 4568]
 mov r8d, 7
 lea r9, [rbp + 4496]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00200_1
 cmp eax, 1
 je xchain00190_n13_α
 jmp xchain00190_n21_α
.Lx00200_2:
 mov rdi, qword ptr [rbp + 5312]
 mov rsi, qword ptr [rbp + 5320]
 mov rdx, qword ptr [rbp + 4560]
 mov rcx, qword ptr [rbp + 4568]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00190_n13_α
 mov rax, qword ptr [rbp + 4560]
 mov qword ptr [rbp + 4496], rax
 mov rax, qword ptr [rbp + 4568]
 mov qword ptr [rbp + 4504], rax
 jmp xchain00190_n21_α
 xchain00190_n16_β:
 jmp xchain00190_n13_α
# IR_VAR_REF
 xchain00190_n17_α:
 mov rdi, 1879052384
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4368], rax
 mov qword ptr [rbp + 4376], rdx
 jmp xchain00190_n22_α
 xchain00190_n17_β:
 jmp xchain00190_n18_α
# IR_VAR_REF
 xchain00190_n18_α:
 mov rdi, 1879052400
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 jmp xchain00190_n23_α
 xchain00190_n18_β:
 jmp xchain00190_n30_α
 xchain00190_n19_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4880]
 mov rdx, qword ptr [rbp + 4888]
 mov qword ptr [rbp + 5248], rax
 mov qword ptr [rbp + 5256], rdx
 mov qword ptr [rbp + 4864], rax
 mov qword ptr [rbp + 4872], rdx
 jmp xchain00190_n5_α
 xchain00190_n19_β:
 jmp xchain00190_n5_α
 xchain00190_n20_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 4736]
 cmp eax, 100
 je .Lx00201_0
 mov eax, dword ptr [rbp + 4704]
 cmp eax, 100
 je .Lx00201_0
 mov eax, dword ptr [rbp + 4736]
 cmp eax, 6
 jne .Lx00201_2
 mov eax, dword ptr [rbp + 4704]
 cmp eax, 6
 jne .Lx00201_2
.Lx00201_1:
 mov rax, qword ptr [rbp + 4744]
 mov rcx, qword ptr [rbp + 4712]
 imul rax, rcx
 mov qword ptr [rbp + 4672], 6
 mov qword ptr [rbp + 4680], rax
 jmp xchain00190_n24_α
.Lx00201_0:
 mov rdi, qword ptr [rbp + 4736]
 mov rsi, qword ptr [rbp + 4744]
 mov rdx, qword ptr [rbp + 4704]
 mov rcx, qword ptr [rbp + 4712]
 mov r8d, 2
 lea r9, [rbp + 4672]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00201_3
.Lx00201_2:
 mov rdi, qword ptr [rbp + 4736]
 mov rsi, qword ptr [rbp + 4744]
 mov rdx, qword ptr [rbp + 4704]
 mov rcx, qword ptr [rbp + 4712]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00190_n9_α
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
.Lx00201_3:
 jmp xchain00190_n24_α
 xchain00190_n20_β:
 jmp xchain00190_n9_α
 xchain00190_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4496]
 mov rdx, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 jmp xchain00190_n13_α
 xchain00190_n21_β:
 jmp xchain00190_n13_α
# IR_LIT_INTEGER
 xchain00190_n22_α:
 mov qword ptr [rbp + 4400], 6
 mov rax, qword ptr [rip + .Lx00202_0]
 mov qword ptr [rbp + 4408], rax
 jmp xchain00190_n25_α
 xchain00190_n22_β:
 jmp xchain00190_n18_α
.Lx00202_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00190_n23_α:
 mov qword ptr [rbp + 4144], 6
 mov rax, qword ptr [rip + .Lx00203_0]
 mov qword ptr [rbp + 4152], rax
 jmp xchain00190_n26_α
 xchain00190_n23_β:
 jmp xchain00190_n30_α
.Lx00203_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00190_n24_α:
 mov qword ptr [rbp + 4832], 6
 mov rax, qword ptr [rip + .Lx00204_0]
 mov qword ptr [rbp + 4840], rax
 jmp xchain00190_n27_α
 xchain00190_n24_β:
 jmp xchain00190_n9_α
.Lx00204_0:
 .quad 180
# IR_SUBSCRIPT x[i] variable
 xchain00190_n25_α:
 mov rdi, qword ptr [rbp + 4368]
 mov rsi, qword ptr [rbp + 4376]
 mov rdx, qword ptr [rbp + 4400]
 mov rcx, qword ptr [rbp + 4408]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00190_n18_α
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 jmp xchain00190_n28_α
 xchain00190_n25_β:
 jmp xchain00190_n18_α
# IR_SUBSCRIPT x[i] variable
 xchain00190_n26_α:
 mov rdi, qword ptr [rbp + 4112]
 mov rsi, qword ptr [rbp + 4120]
 mov rdx, qword ptr [rbp + 4144]
 mov rcx, qword ptr [rbp + 4152]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00190_n30_α
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 jmp xchain00190_n29_α
 xchain00190_n26_β:
 jmp xchain00190_n30_α
# IR_COERCE_NUMERIC
 xchain00190_n27_α:
 mov eax, dword ptr [rbp + 4672]
 cmp eax, 7
 je .Lx00205_1
 cmp eax, 6
 jne .Lx00205_0
 mov eax, dword ptr [rbp + 4832]
 cmp eax, 6
 jne .Lx00205_0
.Lx00205_1:
 mov rax, qword ptr [rbp + 4672]
 mov qword ptr [rbp + 4640], rax
 mov rax, qword ptr [rbp + 4680]
 mov qword ptr [rbp + 4648], rax
 jmp .Lx00205_2
.Lx00205_0:
 lea rdi, [rbp + 4672]
 lea rsi, [rbp + 4832]
 lea rdx, [rbp + 4640]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00205_2:
 jmp xchain00190_n31_α
 xchain00190_n27_β:
 jmp xchain00190_n9_α
# IR_DEREF variable -> value
 xchain00190_n28_α:
 mov rdi, qword ptr [rbp + 4432]
 mov rsi, qword ptr [rbp + 4440]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00190_n18_α
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 jmp xchain00190_n32_α
 xchain00190_n28_β:
 jmp xchain00190_n18_α
# IR_DEREF variable -> value
 xchain00190_n29_α:
 mov rdi, qword ptr [rbp + 4176]
 mov rsi, qword ptr [rbp + 4184]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00190_n30_α
 mov qword ptr [rbp + 4208], rax
 mov qword ptr [rbp + 4216], rdx
 jmp xchain00190_n33_α
 xchain00190_n29_β:
 jmp xchain00190_n30_α
# IR_VAR
 xchain00190_n30_α:
 mov rax, qword ptr [rbp + 5360]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 5368]
 mov qword ptr [rbp + 4040], rax
 jmp xchain00190_n34_α
 xchain00190_n30_β:
 jmp xchain00190_n35_α
 xchain00190_n31_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 4640]
 cmp eax, 100
 je .Lx00206_0
 mov eax, dword ptr [rbp + 4640]
 cmp eax, 6
 jne .Lx00206_2
.Lx00206_1:
 mov rax, qword ptr [rbp + 4648]
 mov rcx, 180
 cqo
 idiv rcx
 mov qword ptr [rbp + 4608], 6
 mov qword ptr [rbp + 4616], rax
 jmp xchain00190_n36_α
.Lx00206_0:
 mov rdi, qword ptr [rbp + 4640]
 mov rsi, qword ptr [rbp + 4648]
 mov rdx, qword ptr [rbp + 4832]
 mov rcx, qword ptr [rbp + 4840]
 mov r8d, 3
 lea r9, [rbp + 4608]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00206_3
.Lx00206_2:
 mov rdi, qword ptr [rbp + 4640]
 mov rsi, qword ptr [rbp + 4648]
 mov rdx, qword ptr [rbp + 4832]
 mov rcx, qword ptr [rbp + 4840]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00190_n9_α
 mov qword ptr [rbp + 4608], rax
 mov qword ptr [rbp + 4616], rdx
.Lx00206_3:
 jmp xchain00190_n36_α
 xchain00190_n31_β:
 jmp xchain00190_n9_α
# IR_COERCE_NUMERIC
 xchain00190_n32_α:
 mov eax, dword ptr [rbp + 4336]
 cmp eax, 7
 je .Lx00207_1
 cmp eax, 6
 jne .Lx00207_0
 mov eax, dword ptr [rbp + 4464]
 cmp eax, 6
 jne .Lx00207_0
.Lx00207_1:
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [rbp + 4304], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [rbp + 4312], rax
 jmp .Lx00207_2
.Lx00207_0:
 lea rdi, [rbp + 4336]
 lea rsi, [rbp + 4464]
 lea rdx, [rbp + 4304]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00207_2:
 jmp xchain00190_n37_α
 xchain00190_n32_β:
 jmp xchain00190_n18_α
 xchain00190_n33_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4208]
 mov rdx, qword ptr [rbp + 4216]
 mov qword ptr [rbp + 5360], rax
 mov qword ptr [rbp + 5368], rdx
 mov qword ptr [rbp + 4096], rax
 mov qword ptr [rbp + 4104], rdx
 jmp xchain00190_n30_α
 xchain00190_n33_β:
 jmp xchain00190_n30_α
# IR_VAR
 xchain00190_n34_α:
 mov rax, qword ptr [rbp + 5376]
 mov qword ptr [rbp + 4064], rax
 mov rax, qword ptr [rbp + 5384]
 mov qword ptr [rbp + 4072], rax
 jmp xchain00190_n38_α
 xchain00190_n34_β:
 jmp xchain00190_n35_α
# IR_LIT_INTEGER
 xchain00190_n35_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00208_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00190_n39_α
 xchain00190_n35_β:
 jmp xchain00190_n43_α
.Lx00208_0:
 .quad 2
 xchain00190_n36_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4608]
 mov rdx, qword ptr [rbp + 4616]
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 mov qword ptr [rbp + 4592], rax
 mov qword ptr [rbp + 4600], rdx
 jmp xchain00190_n9_α
 xchain00190_n36_β:
 jmp xchain00190_n9_α
# IR_COERCE_NUMERIC
 xchain00190_n37_α:
 mov eax, dword ptr [rbp + 4464]
 cmp eax, 7
 je .Lx00209_1
 cmp eax, 6
 jne .Lx00209_0
 mov eax, dword ptr [rbp + 4336]
 cmp eax, 6
 jne .Lx00209_0
.Lx00209_1:
 mov rax, qword ptr [rbp + 4464]
 mov qword ptr [rbp + 4272], rax
 mov rax, qword ptr [rbp + 4472]
 mov qword ptr [rbp + 4280], rax
 jmp .Lx00209_2
.Lx00209_0:
 lea rdi, [rbp + 4464]
 lea rsi, [rbp + 4336]
 lea rdx, [rbp + 4272]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00209_2:
 jmp xchain00190_n40_α
 xchain00190_n37_β:
 jmp xchain00190_n18_α
 xchain00190_n38_α:
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
  .Lrkfn700: .string "atan"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn700]
 lea rsi, [rbp + 3984]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3968], rax
 mov qword ptr [rbp + 3976], rdx
 cmp eax, 99
 je xchain00190_n35_α
 jmp xchain00190_n41_α
 xchain00190_n38_β:
 jmp xchain00190_n35_α
# IR_VAR
 xchain00190_n39_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00190_n42_α
 xchain00190_n39_β:
 jmp xchain00190_n43_α
 xchain00190_n40_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 4304]
 cmp eax, 100
 je .Lx00210_0
 mov eax, dword ptr [rbp + 4272]
 cmp eax, 100
 je .Lx00210_0
 mov eax, dword ptr [rbp + 4304]
 cmp eax, 6
 jne .Lx00210_2
 mov eax, dword ptr [rbp + 4272]
 cmp eax, 6
 jne .Lx00210_2
.Lx00210_1:
 mov rax, qword ptr [rbp + 4312]
 mov rcx, qword ptr [rbp + 4280]
 imul rax, rcx
 mov qword ptr [rbp + 4240], 6
 mov qword ptr [rbp + 4248], rax
 jmp xchain00190_n44_α
.Lx00210_0:
 mov rdi, qword ptr [rbp + 4304]
 mov rsi, qword ptr [rbp + 4312]
 mov rdx, qword ptr [rbp + 4272]
 mov rcx, qword ptr [rbp + 4280]
 mov r8d, 2
 lea r9, [rbp + 4240]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00210_3
.Lx00210_2:
 mov rdi, qword ptr [rbp + 4304]
 mov rsi, qword ptr [rbp + 4312]
 mov rdx, qword ptr [rbp + 4272]
 mov rcx, qword ptr [rbp + 4280]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00190_n18_α
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
.Lx00210_3:
 jmp xchain00190_n44_α
 xchain00190_n40_β:
 jmp xchain00190_n18_α
 xchain00190_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3968]
 mov rdx, qword ptr [rbp + 3976]
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 jmp xchain00190_n35_α
 xchain00190_n41_β:
 jmp xchain00190_n35_α
# IR_UNOP
 xchain00190_n42_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00190_n45_α
 xchain00190_n42_β:
 jmp xchain00190_n43_α
# IR_RETURN
 xchain00190_n43_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_collapse_γ
 xchain00190_n44_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4240]
 mov rdx, qword ptr [rbp + 4248]
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 mov qword ptr [rbp + 4224], rax
 mov qword ptr [rbp + 4232], rdx
 jmp xchain00190_n18_α
 xchain00190_n44_β:
 jmp xchain00190_n18_α
# IR_TO
 xchain00190_n45_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00211_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00190_n43_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00190_n46_α
 xchain00190_n45_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00211_0
 xchain00190_n46_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 5184], rax
 mov qword ptr [rbp + 5192], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00190_n47_α
 xchain00190_n46_β:
 jmp xchain00190_n43_α
# IR_VAR
 xchain00190_n47_α:
 mov rax, qword ptr [rbp + 5376]
 mov qword ptr [rbp + 3920], rax
 mov rax, qword ptr [rbp + 5384]
 mov qword ptr [rbp + 3928], rax
 jmp xchain00190_n48_α
 xchain00190_n47_β:
 jmp xchain00190_n49_α
 xchain00190_n48_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3920]
 mov rdx, qword ptr [rbp + 3928]
 mov qword ptr [rbp + 5264], rax
 mov qword ptr [rbp + 5272], rdx
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 jmp xchain00190_n49_α
 xchain00190_n48_β:
 jmp xchain00190_n49_α
# IR_VAR
 xchain00190_n49_α:
 mov rax, qword ptr [rbp + 5360]
 mov qword ptr [rbp + 3872], rax
 mov rax, qword ptr [rbp + 5368]
 mov qword ptr [rbp + 3880], rax
 jmp xchain00190_n50_α
 xchain00190_n49_β:
 jmp xchain00190_n51_α
 xchain00190_n50_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3872]
 mov rdx, qword ptr [rbp + 3880]
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 jmp xchain00190_n51_α
 xchain00190_n50_β:
 jmp xchain00190_n51_α
# IR_VAR
 xchain00190_n51_α:
 mov rax, qword ptr [rbp + 5328]
 mov qword ptr [rbp + 3824], rax
 mov rax, qword ptr [rbp + 5336]
 mov qword ptr [rbp + 3832], rax
 jmp xchain00190_n52_α
 xchain00190_n51_β:
 jmp xchain00190_n53_α
 xchain00190_n52_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3824]
 mov rdx, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 5344], rax
 mov qword ptr [rbp + 5352], rdx
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 jmp xchain00190_n53_α
 xchain00190_n52_β:
 jmp xchain00190_n53_α
# IR_VAR
 xchain00190_n53_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 jmp xchain00190_n54_α
 xchain00190_n53_β:
 jmp xchain00190_n55_α
# IR_VAR_REF
 xchain00190_n54_α:
 mov rdi, 1879052384
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 jmp xchain00190_n56_α
 xchain00190_n54_β:
 jmp xchain00190_n55_α
# IR_VAR_REF
 xchain00190_n55_α:
 mov rdi, 1879052400
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3440], rax
 mov qword ptr [rbp + 3448], rdx
 jmp xchain00190_n57_α
 xchain00190_n55_β:
 jmp xchain00190_n60_α
# IR_VAR
 xchain00190_n56_α:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 3728], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 3736], rax
 jmp xchain00190_n58_α
 xchain00190_n56_β:
 jmp xchain00190_n55_α
# IR_VAR
 xchain00190_n57_α:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 3480], rax
 jmp xchain00190_n59_α
 xchain00190_n57_β:
 jmp xchain00190_n60_α
# IR_SUBSCRIPT x[i] variable
 xchain00190_n58_α:
 mov rdi, qword ptr [rbp + 3696]
 mov rsi, qword ptr [rbp + 3704]
 mov rdx, qword ptr [rbp + 3728]
 mov rcx, qword ptr [rbp + 3736]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00190_n55_α
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 jmp xchain00190_n61_α
 xchain00190_n58_β:
 jmp xchain00190_n55_α
# IR_SUBSCRIPT x[i] variable
 xchain00190_n59_α:
 mov rdi, qword ptr [rbp + 3440]
 mov rsi, qword ptr [rbp + 3448]
 mov rdx, qword ptr [rbp + 3472]
 mov rcx, qword ptr [rbp + 3480]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00190_n60_α
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 jmp xchain00190_n62_α
 xchain00190_n59_β:
 jmp xchain00190_n60_α
# IR_VAR
 xchain00190_n60_α:
 mov rax, qword ptr [rbp + 5360]
 mov qword ptr [rbp + 3360], rax
 mov rax, qword ptr [rbp + 5368]
 mov qword ptr [rbp + 3368], rax
 jmp xchain00190_n63_α
 xchain00190_n60_β:
 jmp xchain00190_n64_α
# IR_DEREF variable -> value
 xchain00190_n61_α:
 mov rdi, qword ptr [rbp + 3760]
 mov rsi, qword ptr [rbp + 3768]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00190_n55_α
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 jmp xchain00190_n65_α
 xchain00190_n61_β:
 jmp xchain00190_n55_α
# IR_DEREF variable -> value
 xchain00190_n62_α:
 mov rdi, qword ptr [rbp + 3504]
 mov rsi, qword ptr [rbp + 3512]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00190_n60_α
 mov qword ptr [rbp + 3536], rax
 mov qword ptr [rbp + 3544], rdx
 jmp xchain00190_n66_α
 xchain00190_n62_β:
 jmp xchain00190_n60_α
# IR_VAR
 xchain00190_n63_α:
 mov rax, qword ptr [rbp + 5376]
 mov qword ptr [rbp + 3392], rax
 mov rax, qword ptr [rbp + 5384]
 mov qword ptr [rbp + 3400], rax
 jmp xchain00190_n67_α
 xchain00190_n63_β:
 jmp xchain00190_n64_α
# IR_VAR
 xchain00190_n64_α:
 mov rax, qword ptr [rbp + 5328]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 5336]
 mov qword ptr [rbp + 3224], rax
 jmp xchain00190_n68_α
 xchain00190_n64_β:
 jmp xchain00190_n69_α
# IR_COERCE_NUMERIC
 xchain00190_n65_α:
 mov eax, dword ptr [rbp + 3664]
 cmp eax, 7
 je .Lx00212_1
 cmp eax, 6
 jne .Lx00212_0
 mov eax, dword ptr [rbp + 3792]
 cmp eax, 6
 jne .Lx00212_0
.Lx00212_1:
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 3632], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 3640], rax
 jmp .Lx00212_2
.Lx00212_0:
 lea rdi, [rbp + 3664]
 lea rsi, [rbp + 3792]
 lea rdx, [rbp + 3632]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00212_2:
 jmp xchain00190_n70_α
 xchain00190_n65_β:
 jmp xchain00190_n55_α
 xchain00190_n66_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3536]
 mov rdx, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 5360], rax
 mov qword ptr [rbp + 5368], rdx
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain00190_n60_α
 xchain00190_n66_β:
 jmp xchain00190_n60_α
 xchain00190_n67_α:
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
  .Lrkfn742: .string "atan"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn742]
 lea rsi, [rbp + 3312]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3296], rax
 mov qword ptr [rbp + 3304], rdx
 cmp eax, 99
 je xchain00190_n64_α
 jmp xchain00190_n71_α
 xchain00190_n67_β:
 jmp xchain00190_n64_α
# IR_VAR
 xchain00190_n68_α:
 mov rax, qword ptr [rbp + 5344]
 mov qword ptr [rbp + 3248], rax
 mov rax, qword ptr [rbp + 5352]
 mov qword ptr [rbp + 3256], rax
 jmp xchain00190_n72_α
 xchain00190_n68_β:
 jmp xchain00190_n69_α
# IR_VAR
 xchain00190_n69_α:
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 3000], rax
 jmp xchain00190_n73_α
 xchain00190_n69_β:
 jmp xchain00190_n74_α
# IR_COERCE_NUMERIC
 xchain00190_n70_α:
 mov eax, dword ptr [rbp + 3792]
 cmp eax, 7
 je .Lx00213_1
 cmp eax, 6
 jne .Lx00213_0
 mov eax, dword ptr [rbp + 3664]
 cmp eax, 6
 jne .Lx00213_0
.Lx00213_1:
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 3608], rax
 jmp .Lx00213_2
.Lx00213_0:
 lea rdi, [rbp + 3792]
 lea rsi, [rbp + 3664]
 lea rdx, [rbp + 3600]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00213_2:
 jmp xchain00190_n75_α
 xchain00190_n70_β:
 jmp xchain00190_n55_α
 xchain00190_n71_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3296]
 mov rdx, qword ptr [rbp + 3304]
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain00190_n64_α
 xchain00190_n71_β:
 jmp xchain00190_n64_α
# IR_COERCE_NUMERIC
 xchain00190_n72_α:
 mov eax, dword ptr [rbp + 5328]
 cmp eax, 7
 je .Lx00214_1
 cmp eax, 6
 jne .Lx00214_0
 mov eax, dword ptr [rbp + 5344]
 cmp eax, 6
 jne .Lx00214_0
.Lx00214_1:
 mov rax, qword ptr [rbp + 5328]
 mov qword ptr [rbp + 3184], rax
 mov rax, qword ptr [rbp + 5336]
 mov qword ptr [rbp + 3192], rax
 jmp .Lx00214_2
.Lx00214_0:
 lea rdi, [rbp + 5328]
 lea rsi, [rbp + 5344]
 lea rdx, [rbp + 3184]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00214_2:
 jmp xchain00190_n76_α
 xchain00190_n72_β:
 jmp xchain00190_n69_α
# IR_VAR
 xchain00190_n73_α:
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 3032], rax
 jmp xchain00190_n77_α
 xchain00190_n73_β:
 jmp xchain00190_n74_α
# IR_VAR
 xchain00190_n74_α:
 mov rax, qword ptr [rbp + 5264]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 5272]
 mov qword ptr [rbp + 2632], rax
 jmp xchain00190_n78_α
 xchain00190_n74_β:
 jmp xchain00190_n79_α
 xchain00190_n75_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3632]
 cmp eax, 100
 je .Lx00215_0
 mov eax, dword ptr [rbp + 3600]
 cmp eax, 100
 je .Lx00215_0
 mov eax, dword ptr [rbp + 3632]
 cmp eax, 6
 jne .Lx00215_2
 mov eax, dword ptr [rbp + 3600]
 cmp eax, 6
 jne .Lx00215_2
.Lx00215_1:
 mov rax, qword ptr [rbp + 3640]
 mov rcx, qword ptr [rbp + 3608]
 imul rax, rcx
 mov qword ptr [rbp + 3568], 6
 mov qword ptr [rbp + 3576], rax
 jmp xchain00190_n80_α
.Lx00215_0:
 mov rdi, qword ptr [rbp + 3632]
 mov rsi, qword ptr [rbp + 3640]
 mov rdx, qword ptr [rbp + 3600]
 mov rcx, qword ptr [rbp + 3608]
 mov r8d, 2
 lea r9, [rbp + 3568]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00215_3
.Lx00215_2:
 mov rdi, qword ptr [rbp + 3632]
 mov rsi, qword ptr [rbp + 3640]
 mov rdx, qword ptr [rbp + 3600]
 mov rcx, qword ptr [rbp + 3608]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00190_n55_α
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
.Lx00215_3:
 jmp xchain00190_n80_α
 xchain00190_n75_β:
 jmp xchain00190_n55_α
# IR_COERCE_NUMERIC
 xchain00190_n76_α:
 mov eax, dword ptr [rbp + 5344]
 cmp eax, 7
 je .Lx00216_1
 cmp eax, 6
 jne .Lx00216_0
 mov eax, dword ptr [rbp + 5328]
 cmp eax, 6
 jne .Lx00216_0
.Lx00216_1:
 mov rax, qword ptr [rbp + 5344]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 5352]
 mov qword ptr [rbp + 3160], rax
 jmp .Lx00216_2
.Lx00216_0:
 lea rdi, [rbp + 5344]
 lea rsi, [rbp + 5328]
 lea rdx, [rbp + 3152]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00216_2:
 jmp xchain00190_n81_α
 xchain00190_n76_β:
 jmp xchain00190_n69_α
 xchain00190_n77_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 100
 je .Lx00217_0
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 100
 je .Lx00217_0
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 6
 jne .Lx00217_2
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 6
 jne .Lx00217_2
.Lx00217_1:
 mov rax, qword ptr [rbp + 5304]
 mov rcx, qword ptr [rbp + 5320]
 cmp rax, rcx
 jle xchain00190_n74_α
 mov rcx, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 2960], rcx
 mov rcx, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 2968], rcx
 jmp xchain00190_n45_β
.Lx00217_0:
 mov rdi, qword ptr [rbp + 5296]
 mov rsi, qword ptr [rbp + 5304]
 mov rdx, qword ptr [rbp + 5312]
 mov rcx, qword ptr [rbp + 5320]
 mov r8d, 7
 lea r9, [rbp + 2960]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00217_1
 cmp eax, 1
 je xchain00190_n74_α
 jmp xchain00190_n45_β
.Lx00217_2:
 mov rdi, qword ptr [rbp + 5296]
 mov rsi, qword ptr [rbp + 5304]
 mov rdx, qword ptr [rbp + 5312]
 mov rcx, qword ptr [rbp + 5320]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00190_n74_α
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 2960], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 2968], rax
 jmp xchain00190_n45_β
 xchain00190_n77_β:
 jmp xchain00190_n74_α
# IR_VAR
 xchain00190_n78_α:
 mov rax, qword ptr [rbp + 5264]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 5272]
 mov qword ptr [rbp + 2664], rax
 jmp xchain00190_n83_α
 xchain00190_n78_β:
 jmp xchain00190_n79_α
# IR_VAR
 xchain00190_n79_α:
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 2216], rax
 jmp xchain00190_n84_α
 xchain00190_n79_β:
 jmp xchain00190_n45_β
 xchain00190_n80_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3568]
 mov rdx, qword ptr [rbp + 3576]
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 jmp xchain00190_n55_α
 xchain00190_n80_β:
 jmp xchain00190_n55_α
 xchain00190_n81_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3184]
 cmp eax, 100
 je .Lx00218_0
 mov eax, dword ptr [rbp + 3152]
 cmp eax, 100
 je .Lx00218_0
 mov eax, dword ptr [rbp + 3184]
 cmp eax, 6
 jne .Lx00218_2
 mov eax, dword ptr [rbp + 3152]
 cmp eax, 6
 jne .Lx00218_2
.Lx00218_1:
 mov rax, qword ptr [rbp + 3192]
 mov rcx, qword ptr [rbp + 3160]
 sub rax, rcx
 mov qword ptr [rbp + 3120], 6
 mov qword ptr [rbp + 3128], rax
 jmp xchain00190_n85_α
.Lx00218_0:
 mov rdi, qword ptr [rbp + 3184]
 mov rsi, qword ptr [rbp + 3192]
 mov rdx, qword ptr [rbp + 3152]
 mov rcx, qword ptr [rbp + 3160]
 mov r8d, 1
 lea r9, [rbp + 3120]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00218_3
.Lx00218_2:
 mov rdi, qword ptr [rbp + 3184]
 mov rsi, qword ptr [rbp + 3192]
 mov rdx, qword ptr [rbp + 3152]
 mov rcx, qword ptr [rbp + 3160]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00190_n69_α
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
.Lx00218_3:
 jmp xchain00190_n85_α
 xchain00190_n81_β:
 jmp xchain00190_n69_α
 xchain00190_n82_α:
 jmp xchain00190_n45_β
xchain00190_n82_β:
 jmp xchain00190_n45_β
# IR_COERCE_NUMERIC
 xchain00190_n83_α:
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
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 5272]
 mov qword ptr [rbp + 2600], rax
 jmp .Lx00219_2
.Lx00219_0:
 lea rdi, [rbp + 5264]
 lea rsi, [rbp + 5264]
 lea rdx, [rbp + 2592]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00219_2:
 jmp xchain00190_n86_α
 xchain00190_n83_β:
 jmp xchain00190_n79_α
# IR_VAR
 xchain00190_n84_α:
 mov rax, qword ptr [rbp + 5248]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 5256]
 mov qword ptr [rbp + 2248], rax
 jmp xchain00190_n87_α
 xchain00190_n84_β:
 jmp xchain00190_n45_β
 xchain00190_n85_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3120] -> [zr+3088]
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 3088], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3096], rax
  .section .rodata
  .Lrkfn772: .string "abs"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn772]
 lea rsi, [rbp + 3088]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 cmp eax, 99
 je xchain00190_n69_α
 jmp xchain00190_n88_α
 xchain00190_n85_β:
 jmp xchain00190_n69_α
# IR_COERCE_NUMERIC
 xchain00190_n86_α:
 mov eax, dword ptr [rbp + 5264]
 cmp eax, 7
 je .Lx00220_1
 cmp eax, 6
 jne .Lx00220_0
 mov eax, dword ptr [rbp + 5264]
 cmp eax, 6
 jne .Lx00220_0
.Lx00220_1:
 mov rax, qword ptr [rbp + 5264]
 mov qword ptr [rbp + 2560], rax
 mov rax, qword ptr [rbp + 5272]
 mov qword ptr [rbp + 2568], rax
 jmp .Lx00220_2
.Lx00220_0:
 lea rdi, [rbp + 5264]
 lea rsi, [rbp + 5264]
 lea rdx, [rbp + 2560]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00220_2:
 jmp xchain00190_n89_α
 xchain00190_n86_β:
 jmp xchain00190_n79_α
 xchain00190_n87_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5232]
 cmp eax, 100
 je .Lx00221_0
 mov eax, dword ptr [rbp + 5248]
 cmp eax, 100
 je .Lx00221_0
 mov eax, dword ptr [rbp + 5232]
 cmp eax, 6
 jne .Lx00221_2
 mov eax, dword ptr [rbp + 5248]
 cmp eax, 6
 jne .Lx00221_2
.Lx00221_1:
 mov rax, qword ptr [rbp + 5240]
 mov rcx, qword ptr [rbp + 5256]
 cmp rax, rcx
 jg xchain00190_n45_β
 mov rcx, qword ptr [rbp + 5248]
 mov qword ptr [rbp + 2176], rcx
 mov rcx, qword ptr [rbp + 5256]
 mov qword ptr [rbp + 2184], rcx
 jmp xchain00190_n90_α
.Lx00221_0:
 mov rdi, qword ptr [rbp + 5232]
 mov rsi, qword ptr [rbp + 5240]
 mov rdx, qword ptr [rbp + 5248]
 mov rcx, qword ptr [rbp + 5256]
 mov r8d, 6
 lea r9, [rbp + 2176]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00221_1
 cmp eax, 1
 je xchain00190_n45_β
 jmp xchain00190_n90_α
.Lx00221_2:
 mov rdi, qword ptr [rbp + 5232]
 mov rsi, qword ptr [rbp + 5240]
 mov rdx, qword ptr [rbp + 5248]
 mov rcx, qword ptr [rbp + 5256]
 mov r8d, 6
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00190_n45_β
 mov rax, qword ptr [rbp + 5248]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 5256]
 mov qword ptr [rbp + 2184], rax
 jmp xchain00190_n90_α
 xchain00190_n87_β:
 jmp xchain00190_n45_β
 xchain00190_n88_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3072]
 mov rdx, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 5296], rax
 mov qword ptr [rbp + 5304], rdx
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 jmp xchain00190_n69_α
 xchain00190_n88_β:
 jmp xchain00190_n69_α
 xchain00190_n89_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2592]
 cmp eax, 100
 je .Lx00222_0
 mov eax, dword ptr [rbp + 2560]
 cmp eax, 100
 je .Lx00222_0
 mov eax, dword ptr [rbp + 2592]
 cmp eax, 6
 jne .Lx00222_2
 mov eax, dword ptr [rbp + 2560]
 cmp eax, 6
 jne .Lx00222_2
.Lx00222_1:
 mov rax, qword ptr [rbp + 2600]
 mov rcx, qword ptr [rbp + 2568]
 imul rax, rcx
 mov qword ptr [rbp + 2528], 6
 mov qword ptr [rbp + 2536], rax
 jmp xchain00190_n91_α
.Lx00222_0:
 mov rdi, qword ptr [rbp + 2592]
 mov rsi, qword ptr [rbp + 2600]
 mov rdx, qword ptr [rbp + 2560]
 mov rcx, qword ptr [rbp + 2568]
 mov r8d, 2
 lea r9, [rbp + 2528]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00222_3
.Lx00222_2:
 mov rdi, qword ptr [rbp + 2592]
 mov rsi, qword ptr [rbp + 2600]
 mov rdx, qword ptr [rbp + 2560]
 mov rcx, qword ptr [rbp + 2568]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00190_n79_α
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
.Lx00222_3:
 jmp xchain00190_n91_α
 xchain00190_n89_β:
 jmp xchain00190_n79_α
# IR_VAR_REF
 xchain00190_n90_α:
 mov rdi, 1879052384
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 jmp xchain00190_n92_α
 xchain00190_n90_β:
 jmp xchain00190_n95_α
# IR_VAR
 xchain00190_n91_α:
 mov rax, qword ptr [rbp + 5280]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 5288]
 mov qword ptr [rbp + 2792], rax
 jmp xchain00190_n93_α
 xchain00190_n91_β:
 jmp xchain00190_n79_α
# IR_VAR
 xchain00190_n92_α:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 1896], rax
 jmp xchain00190_n94_α
 xchain00190_n92_β:
 jmp xchain00190_n95_α
# IR_VAR
 xchain00190_n93_α:
 mov rax, qword ptr [rbp + 5280]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 5288]
 mov qword ptr [rbp + 2824], rax
 jmp xchain00190_n96_α
 xchain00190_n93_β:
 jmp xchain00190_n79_α
# IR_SUBSCRIPT x[i] variable
 xchain00190_n94_α:
 mov rdi, qword ptr [rbp + 1856]
 mov rsi, qword ptr [rbp + 1864]
 mov rdx, qword ptr [rbp + 1888]
 mov rcx, qword ptr [rbp + 1896]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00190_n95_α
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain00190_n97_α
 xchain00190_n94_β:
 jmp xchain00190_n95_α
# IR_VAR_REF
 xchain00190_n95_α:
 mov rdi, 1879052400
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain00190_n98_α
 xchain00190_n95_β:
 jmp xchain00190_n00001_α
# IR_COERCE_NUMERIC
 xchain00190_n96_α:
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
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 5288]
 mov qword ptr [rbp + 2760], rax
 jmp .Lx00223_2
.Lx00223_0:
 lea rdi, [rbp + 5280]
 lea rsi, [rbp + 5280]
 lea rdx, [rbp + 2752]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00223_2:
 jmp xchain00190_n99_α
 xchain00190_n96_β:
 jmp xchain00190_n79_α
# IR_DEREF variable -> value
 xchain00190_n97_α:
 mov rdi, qword ptr [rbp + 1920]
 mov rsi, qword ptr [rbp + 1928]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00190_n95_α
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain00190_n00072_α
 xchain00190_n97_β:
 jmp xchain00190_n95_α
# IR_VAR
 xchain00190_n98_α:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 1464], rax
 jmp xchain00190_n00074_α
 xchain00190_n98_β:
 jmp xchain00190_n00001_α
# IR_COERCE_NUMERIC
 xchain00190_n99_α:
 mov eax, dword ptr [rbp + 5280]
 cmp eax, 7
 je .Lx00224_1
 cmp eax, 6
 jne .Lx00224_0
 mov eax, dword ptr [rbp + 5280]
 cmp eax, 6
 jne .Lx00224_0
.Lx00224_1:
 mov rax, qword ptr [rbp + 5280]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 5288]
 mov qword ptr [rbp + 2728], rax
 jmp .Lx00224_2
.Lx00224_0:
 lea rdi, [rbp + 5280]
 lea rsi, [rbp + 5280]
 lea rdx, [rbp + 2720]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00224_2:
 jmp xchain00190_n00077_α
 xchain00190_n99_β:
 jmp xchain00190_n79_α
# IR_VAR_REF
 xchain00190_n00072_α:
 mov rdi, 1879052384
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain00190_n00078_α
 xchain00190_n00072_β:
 jmp xchain00190_n95_α
# IR_SUBSCRIPT x[i] variable
 xchain00190_n00074_α:
 mov rdi, qword ptr [rbp + 1424]
 mov rsi, qword ptr [rbp + 1432]
 mov rdx, qword ptr [rbp + 1456]
 mov rcx, qword ptr [rbp + 1464]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00190_n00001_α
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain00190_n00079_α
 xchain00190_n00074_β:
 jmp xchain00190_n00001_α
# IR_VAR
 xchain00190_n00001_α:
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00190_n00080_α
 xchain00190_n00001_β:
 jmp xchain00190_n45_β
 xchain00190_n00077_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2752]
 cmp eax, 100
 je .Lx00225_0
 mov eax, dword ptr [rbp + 2720]
 cmp eax, 100
 je .Lx00225_0
 mov eax, dword ptr [rbp + 2752]
 cmp eax, 6
 jne .Lx00225_2
 mov eax, dword ptr [rbp + 2720]
 cmp eax, 6
 jne .Lx00225_2
.Lx00225_1:
 mov rax, qword ptr [rbp + 2760]
 mov rcx, qword ptr [rbp + 2728]
 imul rax, rcx
 mov qword ptr [rbp + 2688], 6
 mov qword ptr [rbp + 2696], rax
 jmp xchain00190_n00082_α
.Lx00225_0:
 mov rdi, qword ptr [rbp + 2752]
 mov rsi, qword ptr [rbp + 2760]
 mov rdx, qword ptr [rbp + 2720]
 mov rcx, qword ptr [rbp + 2728]
 mov r8d, 2
 lea r9, [rbp + 2688]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00225_3
.Lx00225_2:
 mov rdi, qword ptr [rbp + 2752]
 mov rsi, qword ptr [rbp + 2760]
 mov rdx, qword ptr [rbp + 2720]
 mov rcx, qword ptr [rbp + 2728]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00190_n79_α
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
.Lx00225_3:
 jmp xchain00190_n00082_α
 xchain00190_n00077_β:
 jmp xchain00190_n79_α
# IR_VAR
 xchain00190_n00078_α:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 2072], rax
 jmp xchain00190_n00083_α
 xchain00190_n00078_β:
 jmp xchain00190_n95_α
# IR_DEREF variable -> value
 xchain00190_n00079_α:
 mov rdi, qword ptr [rbp + 1488]
 mov rsi, qword ptr [rbp + 1496]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00190_n00001_α
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain00190_n00002_α
 xchain00190_n00079_β:
 jmp xchain00190_n00001_α
 xchain00190_n00080_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1248] -> [zr+1216]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1224], rax
  .section .rodata
  .Lrkfn806: .string "abs"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn806]
 lea rsi, [rbp + 1216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain00190_n45_β
 jmp xchain00190_n00084_α
 xchain00190_n00080_β:
 jmp xchain00190_n45_β
# IR_COERCE_NUMERIC
 xchain00190_n00082_α:
 mov eax, dword ptr [rbp + 2528]
 cmp eax, 7
 je .Lx00226_1
 cmp eax, 6
 jne .Lx00226_0
 mov eax, dword ptr [rbp + 2688]
 cmp eax, 6
 jne .Lx00226_0
.Lx00226_1:
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2504], rax
 jmp .Lx00226_2
.Lx00226_0:
 lea rdi, [rbp + 2528]
 lea rsi, [rbp + 2688]
 lea rdx, [rbp + 2496]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00226_2:
 jmp xchain00190_n00086_α
 xchain00190_n00082_β:
 jmp xchain00190_n79_α
# IR_LIT_INTEGER
 xchain00190_n00083_α:
 mov qword ptr [rbp + 2096], 6
 mov rax, qword ptr [rip + .Lx00227_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain00190_n00088_α
 xchain00190_n00083_β:
 jmp xchain00190_n95_α
.Lx00227_0:
 .quad 1
# IR_VAR_REF
 xchain00190_n00002_α:
 mov rdi, 1879052400
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain00190_n00090_α
 xchain00190_n00002_β:
 jmp xchain00190_n00001_α
# IR_LIT_INTEGER
 xchain00190_n00084_α:
 mov qword ptr [rbp + 1280], 6
 mov rax, qword ptr [rip + .Lx00228_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain00190_n00092_α
 xchain00190_n00084_β:
 jmp xchain00190_n45_β
.Lx00228_0:
 .quad 5000
# IR_COERCE_NUMERIC
 xchain00190_n00086_α:
 mov eax, dword ptr [rbp + 2688]
 cmp eax, 7
 je .Lx00229_1
 cmp eax, 6
 jne .Lx00229_0
 mov eax, dword ptr [rbp + 2528]
 cmp eax, 6
 jne .Lx00229_0
.Lx00229_1:
 mov rax, qword ptr [rbp + 2688]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 2472], rax
 jmp .Lx00229_2
.Lx00229_0:
 lea rdi, [rbp + 2688]
 lea rsi, [rbp + 2528]
 lea rdx, [rbp + 2464]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00229_2:
 jmp xchain00190_n00003_α
 xchain00190_n00086_β:
 jmp xchain00190_n79_α
# IR_COERCE_NUMERIC
 xchain00190_n00088_α:
 mov eax, dword ptr [rbp + 5184]
 cmp eax, 7
 je .Lx00230_1
 cmp eax, 6
 jne .Lx00230_0
 mov eax, dword ptr [rbp + 2096]
 cmp eax, 6
 jne .Lx00230_0
.Lx00230_1:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 2040], rax
 jmp .Lx00230_2
.Lx00230_0:
 lea rdi, [rbp + 5184]
 lea rsi, [rbp + 2096]
 lea rdx, [rbp + 2032]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00230_2:
 jmp xchain00190_n00093_α
 xchain00190_n00088_β:
 jmp xchain00190_n95_α
# IR_VAR
 xchain00190_n00090_α:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 1640], rax
 jmp xchain00190_n00094_α
 xchain00190_n00090_β:
 jmp xchain00190_n00001_α
 xchain00190_n00092_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 1200]
 cmp eax, 100
 je .Lx00231_0
 mov eax, dword ptr [rbp + 1280]
 cmp eax, 100
 je .Lx00231_0
 mov eax, dword ptr [rbp + 1200]
 cmp eax, 6
 jne .Lx00231_2
 mov eax, dword ptr [rbp + 1280]
 cmp eax, 6
 jne .Lx00231_2
.Lx00231_1:
 mov rax, qword ptr [rbp + 1208]
 mov rcx, qword ptr [rbp + 1288]
 cmp rax, rcx
 jge xchain00190_n45_β
 mov rcx, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1168], rcx
 mov rcx, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1176], rcx
 jmp xchain00190_n00096_α
.Lx00231_0:
 mov rdi, qword ptr [rbp + 1200]
 mov rsi, qword ptr [rbp + 1208]
 mov rdx, qword ptr [rbp + 1280]
 mov rcx, qword ptr [rbp + 1288]
 mov r8d, 5
 lea r9, [rbp + 1168]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00231_1
 cmp eax, 1
 je xchain00190_n45_β
 jmp xchain00190_n00096_α
.Lx00231_2:
 mov rdi, qword ptr [rbp + 1200]
 mov rsi, qword ptr [rbp + 1208]
 mov rdx, qword ptr [rbp + 1280]
 mov rcx, qword ptr [rbp + 1288]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00190_n45_β
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1176], rax
 jmp xchain00190_n00096_α
 xchain00190_n00092_β:
 jmp xchain00190_n45_β
 xchain00190_n00003_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2496]
 cmp eax, 100
 je .Lx00232_0
 mov eax, dword ptr [rbp + 2464]
 cmp eax, 100
 je .Lx00232_0
 mov eax, dword ptr [rbp + 2496]
 cmp eax, 6
 jne .Lx00232_2
 mov eax, dword ptr [rbp + 2464]
 cmp eax, 6
 jne .Lx00232_2
.Lx00232_1:
 mov rax, qword ptr [rbp + 2504]
 mov rcx, qword ptr [rbp + 2472]
 add rax, rcx
 mov qword ptr [rbp + 2432], 6
 mov qword ptr [rbp + 2440], rax
 jmp xchain00190_n00098_α
.Lx00232_0:
 mov rdi, qword ptr [rbp + 2496]
 mov rsi, qword ptr [rbp + 2504]
 mov rdx, qword ptr [rbp + 2464]
 mov rcx, qword ptr [rbp + 2472]
 mov r8d, 0
 lea r9, [rbp + 2432]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00232_3
.Lx00232_2:
 mov rdi, qword ptr [rbp + 2496]
 mov rsi, qword ptr [rbp + 2504]
 mov rdx, qword ptr [rbp + 2464]
 mov rcx, qword ptr [rbp + 2472]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00190_n79_α
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
.Lx00232_3:
 jmp xchain00190_n00098_α
 xchain00190_n00003_β:
 jmp xchain00190_n79_α
 xchain00190_n00093_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2032]
 cmp eax, 100
 je .Lx00233_0
 mov eax, dword ptr [rbp + 2032]
 cmp eax, 6
 jne .Lx00233_2
.Lx00233_1:
 mov rax, qword ptr [rbp + 2040]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 2000], 6
 mov qword ptr [rbp + 2008], rax
 jmp xchain00190_n00099_α
.Lx00233_0:
 mov rdi, qword ptr [rbp + 2032]
 mov rsi, qword ptr [rbp + 2040]
 mov rdx, qword ptr [rbp + 2096]
 mov rcx, qword ptr [rbp + 2104]
 mov r8d, 1
 lea r9, [rbp + 2000]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00233_3
.Lx00233_2:
 mov rdi, qword ptr [rbp + 2032]
 mov rsi, qword ptr [rbp + 2040]
 mov rdx, qword ptr [rbp + 2096]
 mov rcx, qword ptr [rbp + 2104]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00190_n95_α
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
.Lx00233_3:
 jmp xchain00190_n00099_α
 xchain00190_n00093_β:
 jmp xchain00190_n95_α
# IR_LIT_INTEGER
 xchain00190_n00094_α:
 mov qword ptr [rbp + 1664], 6
 mov rax, qword ptr [rip + .Lx00234_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain00190_n00101_α
 xchain00190_n00094_β:
 jmp xchain00190_n00001_α
.Lx00234_0:
 .quad 1
# IR_VAR
 xchain00190_n00096_α:
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00190_n00103_α
 xchain00190_n00096_β:
 jmp xchain00190_n45_β
# IR_VAR
 xchain00190_n00098_α:
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 2896], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 2904], rax
 jmp xchain00190_n00104_α
 xchain00190_n00098_β:
 jmp xchain00190_n79_α
# IR_SUBSCRIPT x[i] variable
 xchain00190_n00099_α:
 mov rdi, qword ptr [rbp + 1968]
 mov rsi, qword ptr [rbp + 1976]
 mov rdx, qword ptr [rbp + 2000]
 mov rcx, qword ptr [rbp + 2008]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00190_n95_α
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 jmp xchain00190_n00105_α
 xchain00190_n00099_β:
 jmp xchain00190_n95_α
# IR_COERCE_NUMERIC
 xchain00190_n00101_α:
 mov eax, dword ptr [rbp + 5184]
 cmp eax, 7
 je .Lx00235_1
 cmp eax, 6
 jne .Lx00235_0
 mov eax, dword ptr [rbp + 1664]
 cmp eax, 6
 jne .Lx00235_0
.Lx00235_1:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 1608], rax
 jmp .Lx00235_2
.Lx00235_0:
 lea rdi, [rbp + 5184]
 lea rsi, [rbp + 1664]
 lea rdx, [rbp + 1600]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00235_2:
 jmp xchain00190_n00106_α
 xchain00190_n00101_β:
 jmp xchain00190_n00001_α
 xchain00190_n00103_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1072]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1080], rax
  .section .rodata
  .Lrkfn831: .string "abs"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn831]
 lea rsi, [rbp + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain00190_n45_β
 jmp xchain00190_n00004_α
 xchain00190_n00103_β:
 jmp xchain00190_n45_β
 xchain00190_n00104_α:
# BOX IR_CALL sin(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2896] -> [zr+2864]
 mov rax, qword ptr [rbp + 2896]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 2904]
 mov qword ptr [rbp + 2872], rax
  .section .rodata
  .Lrkfn833: .string "sin"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn833]
 lea rsi, [rbp + 2864]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 cmp eax, 99
 je xchain00190_n79_α
 jmp xchain00190_n00107_α
 xchain00190_n00104_β:
 jmp xchain00190_n79_α
# IR_DEREF variable -> value
 xchain00190_n00105_α:
 mov rdi, qword ptr [rbp + 2128]
 mov rsi, qword ptr [rbp + 2136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00190_n95_α
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain00190_n00109_α
 xchain00190_n00105_β:
 jmp xchain00190_n95_α
 xchain00190_n00106_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1600]
 cmp eax, 100
 je .Lx00236_0
 mov eax, dword ptr [rbp + 1600]
 cmp eax, 6
 jne .Lx00236_2
.Lx00236_1:
 mov rax, qword ptr [rbp + 1608]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 1568], 6
 mov qword ptr [rbp + 1576], rax
 jmp xchain00190_n00111_α
.Lx00236_0:
 mov rdi, qword ptr [rbp + 1600]
 mov rsi, qword ptr [rbp + 1608]
 mov rdx, qword ptr [rbp + 1664]
 mov rcx, qword ptr [rbp + 1672]
 mov r8d, 1
 lea r9, [rbp + 1568]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00236_3
.Lx00236_2:
 mov rdi, qword ptr [rbp + 1600]
 mov rsi, qword ptr [rbp + 1608]
 mov rdx, qword ptr [rbp + 1664]
 mov rcx, qword ptr [rbp + 1672]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00190_n00001_α
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
.Lx00236_3:
 jmp xchain00190_n00111_α
 xchain00190_n00106_β:
 jmp xchain00190_n00001_α
# IR_LIT_INTEGER
 xchain00190_n00004_α:
 mov qword ptr [rbp + 1136], 6
 mov rax, qword ptr [rip + .Lx00237_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain00190_n00112_α
 xchain00190_n00004_β:
 jmp xchain00190_n45_β
.Lx00237_0:
 .quad 5000
# IR_COERCE_NUMERIC
 xchain00190_n00107_α:
 mov eax, dword ptr [rbp + 2432]
 cmp eax, 7
 je .Lx00238_1
 cmp eax, 6
 jne .Lx00238_0
 mov eax, dword ptr [rbp + 2848]
 cmp eax, 6
 jne .Lx00238_0
.Lx00238_1:
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 2408], rax
 jmp .Lx00238_2
.Lx00238_0:
 lea rdi, [rbp + 2432]
 lea rsi, [rbp + 2848]
 lea rdx, [rbp + 2400]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00238_2:
 jmp xchain00190_n00113_α
 xchain00190_n00107_β:
 jmp xchain00190_n79_α
# IR_COERCE_NUMERIC
 xchain00190_n00109_α:
 mov eax, dword ptr [rbp + 1952]
 cmp eax, 7
 je .Lx00239_1
 cmp eax, 6
 jne .Lx00239_0
 mov eax, dword ptr [rbp + 2160]
 cmp eax, 6
 jne .Lx00239_0
.Lx00239_1:
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1832], rax
 jmp .Lx00239_2
.Lx00239_0:
 lea rdi, [rbp + 1952]
 lea rsi, [rbp + 2160]
 lea rdx, [rbp + 1824]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00239_2:
 jmp xchain00190_n00115_α
 xchain00190_n00109_β:
 jmp xchain00190_n95_α
# IR_SUBSCRIPT x[i] variable
 xchain00190_n00111_α:
 mov rdi, qword ptr [rbp + 1536]
 mov rsi, qword ptr [rbp + 1544]
 mov rdx, qword ptr [rbp + 1568]
 mov rcx, qword ptr [rbp + 1576]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00190_n00001_α
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain00190_n00005_α
 xchain00190_n00111_β:
 jmp xchain00190_n00001_α
 xchain00190_n00112_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 1056]
 cmp eax, 100
 je .Lx00240_0
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 100
 je .Lx00240_0
 mov eax, dword ptr [rbp + 1056]
 cmp eax, 6
 jne .Lx00240_2
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 6
 jne .Lx00240_2
.Lx00240_1:
 mov rax, qword ptr [rbp + 1064]
 mov rcx, qword ptr [rbp + 1144]
 cmp rax, rcx
 jge xchain00190_n45_β
 mov rcx, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1024], rcx
 mov rcx, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1032], rcx
 jmp xchain00190_n00117_α
.Lx00240_0:
 mov rdi, qword ptr [rbp + 1056]
 mov rsi, qword ptr [rbp + 1064]
 mov rdx, qword ptr [rbp + 1136]
 mov rcx, qword ptr [rbp + 1144]
 mov r8d, 5
 lea r9, [rbp + 1024]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00240_1
 cmp eax, 1
 je xchain00190_n45_β
 jmp xchain00190_n00117_α
.Lx00240_2:
 mov rdi, qword ptr [rbp + 1056]
 mov rsi, qword ptr [rbp + 1064]
 mov rdx, qword ptr [rbp + 1136]
 mov rcx, qword ptr [rbp + 1144]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00190_n45_β
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00190_n00117_α
 xchain00190_n00112_β:
 jmp xchain00190_n45_β
# IR_COERCE_NUMERIC
 xchain00190_n00113_α:
 mov eax, dword ptr [rbp + 2848]
 cmp eax, 7
 je .Lx00241_1
 cmp eax, 6
 jne .Lx00241_0
 mov eax, dword ptr [rbp + 2432]
 cmp eax, 6
 jne .Lx00241_0
.Lx00241_1:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 2376], rax
 jmp .Lx00241_2
.Lx00241_0:
 lea rdi, [rbp + 2848]
 lea rsi, [rbp + 2432]
 lea rdx, [rbp + 2368]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00241_2:
 jmp xchain00190_n00118_α
 xchain00190_n00113_β:
 jmp xchain00190_n79_α
# IR_COERCE_NUMERIC
 xchain00190_n00115_α:
 mov eax, dword ptr [rbp + 2160]
 cmp eax, 7
 je .Lx00242_1
 cmp eax, 6
 jne .Lx00242_0
 mov eax, dword ptr [rbp + 1952]
 cmp eax, 6
 jne .Lx00242_0
.Lx00242_1:
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 1800], rax
 jmp .Lx00242_2
.Lx00242_0:
 lea rdi, [rbp + 2160]
 lea rsi, [rbp + 1952]
 lea rdx, [rbp + 1792]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00242_2:
 jmp xchain00190_n00119_α
 xchain00190_n00115_β:
 jmp xchain00190_n95_α
# IR_DEREF variable -> value
 xchain00190_n00005_α:
 mov rdi, qword ptr [rbp + 1696]
 mov rsi, qword ptr [rbp + 1704]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00190_n00001_α
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain00190_n00120_α
 xchain00190_n00005_β:
 jmp xchain00190_n00001_α
 xchain00190_n00117_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00190_n00121_α
xchain00190_n00117_β:
 jmp xchain00190_n45_β
 xchain00190_n00118_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2400]
 cmp eax, 100
 je .Lx00243_0
 mov eax, dword ptr [rbp + 2368]
 cmp eax, 100
 je .Lx00243_0
 mov eax, dword ptr [rbp + 2400]
 cmp eax, 6
 jne .Lx00243_2
 mov eax, dword ptr [rbp + 2368]
 cmp eax, 6
 jne .Lx00243_2
.Lx00243_1:
 mov rax, qword ptr [rbp + 2408]
 mov rcx, qword ptr [rbp + 2376]
 imul rax, rcx
 mov qword ptr [rbp + 2336], 6
 mov qword ptr [rbp + 2344], rax
 jmp xchain00190_n00124_α
.Lx00243_0:
 mov rdi, qword ptr [rbp + 2400]
 mov rsi, qword ptr [rbp + 2408]
 mov rdx, qword ptr [rbp + 2368]
 mov rcx, qword ptr [rbp + 2376]
 mov r8d, 2
 lea r9, [rbp + 2336]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00243_3
.Lx00243_2:
 mov rdi, qword ptr [rbp + 2400]
 mov rsi, qword ptr [rbp + 2408]
 mov rdx, qword ptr [rbp + 2368]
 mov rcx, qword ptr [rbp + 2376]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00190_n79_α
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
.Lx00243_3:
 jmp xchain00190_n00124_α
 xchain00190_n00118_β:
 jmp xchain00190_n79_α
 xchain00190_n00119_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1824]
 cmp eax, 100
 je .Lx00244_0
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 100
 je .Lx00244_0
 mov eax, dword ptr [rbp + 1824]
 cmp eax, 6
 jne .Lx00244_2
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 6
 jne .Lx00244_2
.Lx00244_1:
 mov rax, qword ptr [rbp + 1832]
 mov rcx, qword ptr [rbp + 1800]
 add rax, rcx
 mov qword ptr [rbp + 1760], 6
 mov qword ptr [rbp + 1768], rax
 jmp xchain00190_n00122_α
.Lx00244_0:
 mov rdi, qword ptr [rbp + 1824]
 mov rsi, qword ptr [rbp + 1832]
 mov rdx, qword ptr [rbp + 1792]
 mov rcx, qword ptr [rbp + 1800]
 mov r8d, 0
 lea r9, [rbp + 1760]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00244_3
.Lx00244_2:
 mov rdi, qword ptr [rbp + 1824]
 mov rsi, qword ptr [rbp + 1832]
 mov rdx, qword ptr [rbp + 1792]
 mov rcx, qword ptr [rbp + 1800]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00190_n95_α
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
.Lx00244_3:
 jmp xchain00190_n00122_α
 xchain00190_n00119_β:
 jmp xchain00190_n95_α
# IR_COERCE_NUMERIC
 xchain00190_n00120_α:
 mov eax, dword ptr [rbp + 1520]
 cmp eax, 7
 je .Lx00245_1
 cmp eax, 6
 jne .Lx00245_0
 mov eax, dword ptr [rbp + 1728]
 cmp eax, 6
 jne .Lx00245_0
.Lx00245_1:
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1400], rax
 jmp .Lx00245_2
.Lx00245_0:
 lea rdi, [rbp + 1520]
 lea rsi, [rbp + 1728]
 lea rdx, [rbp + 1392]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00245_2:
 jmp xchain00190_n00123_α
 xchain00190_n00120_β:
 jmp xchain00190_n00001_α
# IR_VAR_REF
 xchain00190_n00121_α:
 mov rdi, 1879052384
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00190_n00126_α
 xchain00190_n00121_β:
 jmp xchain00190_n00131_α
 xchain00190_n00124_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2336] -> [zr+2304]
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 2312], rax
  .section .rodata
  .Lrkfn856: .string "abs"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn856]
 lea rsi, [rbp + 2304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 cmp eax, 99
 je xchain00190_n79_α
 jmp xchain00190_n00127_α
 xchain00190_n00124_β:
 jmp xchain00190_n79_α
 xchain00190_n00122_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1760]
 mov rdx, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain00190_n95_α
 xchain00190_n00122_β:
 jmp xchain00190_n95_α
# IR_COERCE_NUMERIC
 xchain00190_n00123_α:
 mov eax, dword ptr [rbp + 1728]
 cmp eax, 7
 je .Lx00246_1
 cmp eax, 6
 jne .Lx00246_0
 mov eax, dword ptr [rbp + 1520]
 cmp eax, 6
 jne .Lx00246_0
.Lx00246_1:
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1368], rax
 jmp .Lx00246_2
.Lx00246_0:
 lea rdi, [rbp + 1728]
 lea rsi, [rbp + 1520]
 lea rdx, [rbp + 1360]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00246_2:
 jmp xchain00190_n00128_α
 xchain00190_n00123_β:
 jmp xchain00190_n00001_α
# IR_VAR
 xchain00190_n00126_α:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 904], rax
 jmp xchain00190_n00129_α
 xchain00190_n00126_β:
 jmp xchain00190_n00131_α
 xchain00190_n00127_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2288]
 mov rdx, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 jmp xchain00190_n79_α
 xchain00190_n00127_β:
 jmp xchain00190_n79_α
 xchain00190_n00128_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1392]
 cmp eax, 100
 je .Lx00247_0
 mov eax, dword ptr [rbp + 1360]
 cmp eax, 100
 je .Lx00247_0
 mov eax, dword ptr [rbp + 1392]
 cmp eax, 6
 jne .Lx00247_2
 mov eax, dword ptr [rbp + 1360]
 cmp eax, 6
 jne .Lx00247_2
.Lx00247_1:
 mov rax, qword ptr [rbp + 1400]
 mov rcx, qword ptr [rbp + 1368]
 add rax, rcx
 mov qword ptr [rbp + 1328], 6
 mov qword ptr [rbp + 1336], rax
 jmp xchain00190_n00132_α
.Lx00247_0:
 mov rdi, qword ptr [rbp + 1392]
 mov rsi, qword ptr [rbp + 1400]
 mov rdx, qword ptr [rbp + 1360]
 mov rcx, qword ptr [rbp + 1368]
 mov r8d, 0
 lea r9, [rbp + 1328]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00247_3
.Lx00247_2:
 mov rdi, qword ptr [rbp + 1392]
 mov rsi, qword ptr [rbp + 1400]
 mov rdx, qword ptr [rbp + 1360]
 mov rcx, qword ptr [rbp + 1368]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00190_n00001_α
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
.Lx00247_3:
 jmp xchain00190_n00132_α
 xchain00190_n00128_β:
 jmp xchain00190_n00001_α
# IR_SUBSCRIPT x[i] variable
 xchain00190_n00129_α:
 mov rdi, qword ptr [rbp + 864]
 mov rsi, qword ptr [rbp + 872]
 mov rdx, qword ptr [rbp + 896]
 mov rcx, qword ptr [rbp + 904]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00190_n00131_α
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain00190_n00134_α
 xchain00190_n00129_β:
 jmp xchain00190_n00131_α
# IR_VAR_REF
 xchain00190_n00131_α:
 mov rdi, 1879052400
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00190_n00006_α
 xchain00190_n00131_β:
 jmp xchain00190_n00138_α
 xchain00190_n00132_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1328]
 mov rdx, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain00190_n00001_α
 xchain00190_n00132_β:
 jmp xchain00190_n00001_α
# IR_VAR
 xchain00190_n00134_α:
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 984], rax
 jmp xchain00190_n00136_α
 xchain00190_n00134_β:
 jmp xchain00190_n00131_α
# IR_VAR
 xchain00190_n00006_α:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 760], rax
 jmp xchain00190_n00140_α
 xchain00190_n00006_β:
 jmp xchain00190_n00138_α
# IR_ASSIGN_VAR
 xchain00190_n00136_α:
 mov rdi, qword ptr [rbp + 928]
 mov rsi, qword ptr [rbp + 936]
 mov rdx, qword ptr [rbp + 976]
 mov rcx, qword ptr [rbp + 984]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00190_n00131_α
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain00190_n00131_α
 xchain00190_n00136_β:
 jmp xchain00190_n00131_α
# IR_SUBSCRIPT x[i] variable
 xchain00190_n00140_α:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00190_n00138_α
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain00190_n00007_α
 xchain00190_n00140_β:
 jmp xchain00190_n00138_α
# IR_VAR_REF
 xchain00190_n00138_α:
 mov rdi, 1879052384
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00190_n00141_α
 xchain00190_n00138_β:
 jmp xchain00190_n45_β
# IR_VAR
 xchain00190_n00007_α:
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 840], rax
 jmp xchain00190_n00008_α
 xchain00190_n00007_β:
 jmp xchain00190_n00138_α
# IR_VAR
 xchain00190_n00141_α:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 376], rax
 jmp xchain00190_n00009_α
 xchain00190_n00141_β:
 jmp xchain00190_n45_β
# IR_ASSIGN_VAR
 xchain00190_n00008_α:
 mov rdi, qword ptr [rbp + 784]
 mov rsi, qword ptr [rbp + 792]
 mov rdx, qword ptr [rbp + 832]
 mov rcx, qword ptr [rbp + 840]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00190_n00138_α
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00190_n00138_α
 xchain00190_n00008_β:
 jmp xchain00190_n00138_α
# IR_LIT_INTEGER
 xchain00190_n00009_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx00248_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain00190_n00145_α
 xchain00190_n00009_β:
 jmp xchain00190_n45_β
.Lx00248_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00190_n00145_α:
 mov eax, dword ptr [rbp + 5184]
 cmp eax, 7
 je .Lx00249_1
 cmp eax, 6
 jne .Lx00249_0
 mov eax, dword ptr [rbp + 400]
 cmp eax, 6
 jne .Lx00249_0
.Lx00249_1:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 344], rax
 jmp .Lx00249_2
.Lx00249_0:
 lea rdi, [rbp + 5184]
 lea rsi, [rbp + 400]
 lea rdx, [rbp + 336]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00249_2:
 jmp xchain00190_n00010_α
 xchain00190_n00145_β:
 jmp xchain00190_n45_β
 xchain00190_n00010_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 336]
 cmp eax, 100
 je .Lx00250_0
 mov eax, dword ptr [rbp + 336]
 cmp eax, 6
 jne .Lx00250_2
.Lx00250_1:
 mov rax, qword ptr [rbp + 344]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 304], 6
 mov qword ptr [rbp + 312], rax
 jmp xchain00190_n00147_α
.Lx00250_0:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 mov rdx, qword ptr [rbp + 400]
 mov rcx, qword ptr [rbp + 408]
 mov r8d, 1
 lea r9, [rbp + 304]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00250_3
.Lx00250_2:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 mov rdx, qword ptr [rbp + 400]
 mov rcx, qword ptr [rbp + 408]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00190_n45_β
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
.Lx00250_3:
 jmp xchain00190_n00147_α
 xchain00190_n00010_β:
 jmp xchain00190_n45_β
# IR_SUBSCRIPT x[i] variable
 xchain00190_n00147_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00190_n45_β
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00190_n00148_α
 xchain00190_n00147_β:
 jmp xchain00190_n45_β
# IR_VAR_REF
 xchain00190_n00148_α:
 mov rdi, 1879052400
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00190_n00150_α
 xchain00190_n00148_β:
 jmp xchain00190_n45_β
# IR_VAR
 xchain00190_n00150_α:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 584], rax
 jmp xchain00190_n00152_α
 xchain00190_n00150_β:
 jmp xchain00190_n45_β
# IR_LIT_INTEGER
 xchain00190_n00152_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00251_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00190_n00154_α
 xchain00190_n00152_β:
 jmp xchain00190_n45_β
.Lx00251_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00190_n00154_α:
 mov eax, dword ptr [rbp + 5184]
 cmp eax, 7
 je .Lx00252_1
 cmp eax, 6
 jne .Lx00252_0
 mov eax, dword ptr [rbp + 608]
 cmp eax, 6
 jne .Lx00252_0
.Lx00252_1:
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 552], rax
 jmp .Lx00252_2
.Lx00252_0:
 lea rdi, [rbp + 5184]
 lea rsi, [rbp + 608]
 lea rdx, [rbp + 544]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00252_2:
 jmp xchain00190_n00155_α
 xchain00190_n00154_β:
 jmp xchain00190_n45_β
 xchain00190_n00155_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 544]
 cmp eax, 100
 je .Lx00253_0
 mov eax, dword ptr [rbp + 544]
 cmp eax, 6
 jne .Lx00253_2
.Lx00253_1:
 mov rax, qword ptr [rbp + 552]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 512], 6
 mov qword ptr [rbp + 520], rax
 jmp xchain00190_n00156_α
.Lx00253_0:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 1
 lea r9, [rbp + 512]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00253_3
.Lx00253_2:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00190_n45_β
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
.Lx00253_3:
 jmp xchain00190_n00156_α
 xchain00190_n00155_β:
 jmp xchain00190_n45_β
# IR_SUBSCRIPT x[i] variable
 xchain00190_n00156_α:
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 512]
 mov rcx, qword ptr [rbp + 520]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00190_n45_β
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00190_n00157_α
 xchain00190_n00156_β:
 jmp xchain00190_n45_β
# IR_LIT_INTEGER
 xchain00190_n00157_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00254_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00190_n00158_α
 xchain00190_n00157_β:
 jmp xchain00190_n45_β
.Lx00254_0:
 .quad 0
# IR_ASSIGN_VAR
 xchain00190_n00158_α:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00190_n45_β
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00190_n00011_α
 xchain00190_n00158_β:
 jmp xchain00190_n45_β
# IR_ASSIGN_VAR
 xchain00190_n00011_α:
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 mov rdx, qword ptr [rbp + 672]
 mov rcx, qword ptr [rbp + 680]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00190_n45_β
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00190_n00255_α
 xchain00190_n00011_β:
 jmp xchain00190_n45_β
 xchain00190_n00255_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 264], rax
 jmp xchain00190_n00256_α
xchain00190_n00255_β:
 jmp xchain00190_n45_β
# IR_MOVE_LABEL
 xchain00190_n00256_α:
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 232], rax
 lea rax, [rip + xchain00190_n45_β]
 mov qword ptr [rbp + 240], rax
 jmp xchain00190_n00257_α
 xchain00190_n00256_β:
 jmp xchain00190_n45_β
 xchain00190_n00257_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 216], rax
 jmp xchain00190_n00258_α
xchain00190_n00257_β:
 jmp xchain00190_n45_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00190_n00259_α:
 jmp qword ptr [rbp + 240]
 xchain00190_n00259_β:
 jmp xchain00190_n45_β
# IR_MOVE_LABEL
 xchain00190_n00258_α:
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 184], rax
 lea rax, [rip + xchain00190_n00259_α]
 mov qword ptr [rbp + 192], rax
 jmp xchain00190_n00260_α
 xchain00190_n00258_β:
 jmp xchain00190_n45_β
 xchain00190_n00260_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 168], rax
 jmp xchain00190_n45_β
xchain00190_n00260_β:
 jmp xchain00190_n45_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00190_n00261_α:
 jmp qword ptr [rbp + 192]
 xchain00190_n00261_β:
 jmp xchain00190_n45_β
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
 xchain00262_n0_α:
 mov rdi, 1879052352
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain00262_n1_α
 xchain00262_n0_β:
 jmp xchain00262_n3_α
# IR_VAR
 xchain00262_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2040], rax
 jmp xchain00262_n2_α
 xchain00262_n1_β:
 jmp xchain00262_n3_α
# IR_FIELD_GET
 xchain00262_n2_α:
 mov rdi, qword ptr [rip + .Lx00263_0]
 mov rsi, qword ptr [rbp + 2032]
 mov rdx, qword ptr [rbp + 2040]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00262_n3_α
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain00262_n4_α
 xchain00262_n2_β:
 jmp xchain00262_n3_α
.Lx00263_0:
 .quad .Lx00263_0_s
.Lx00263_0_s:
 .string "code"
# IR_VAR
 xchain00262_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1672], rax
 jmp xchain00262_n5_α
 xchain00262_n3_β:
 jmp xchain00262_n6_α
# IR_SUBSCRIPT x[i] variable
 xchain00262_n4_α:
 mov rdi, qword ptr [rbp + 1968]
 mov rsi, qword ptr [rbp + 1976]
 mov rdx, qword ptr [rbp + 2000]
 mov rcx, qword ptr [rbp + 2008]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00262_n3_α
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 jmp xchain00262_n7_α
 xchain00262_n4_β:
 jmp xchain00262_n3_α
# IR_FIELD_GET
 xchain00262_n5_α:
 mov rdi, qword ptr [rip + .Lx00264_0]
 mov rsi, qword ptr [rbp + 1664]
 mov rdx, qword ptr [rbp + 1672]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00262_n6_α
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain00262_n8_α
 xchain00262_n5_β:
 jmp xchain00262_n6_α
.Lx00264_0:
 .quad .Lx00264_0_s
.Lx00264_0_s:
 .string "x2"
# IR_LIT_INTEGER
 xchain00262_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00265_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00262_n9_α
 xchain00262_n6_β:
 jmp xchain00262_n13_α
.Lx00265_0:
 .quad 0
# IR_DEREF variable -> value
 xchain00262_n7_α:
 mov rdi, qword ptr [rbp + 2064]
 mov rsi, qword ptr [rbp + 2072]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00262_n3_α
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain00262_n10_α
 xchain00262_n7_β:
 jmp xchain00262_n3_α
# IR_VAR
 xchain00262_n8_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1736], rax
 jmp xchain00262_n11_α
 xchain00262_n8_β:
 jmp xchain00262_n6_α
# IR_MOVE_LABEL
 xchain00262_n9_α:
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 56], rax
 lea rax, [rip + xchain00262_n13_α]
 mov qword ptr [rbp + 64], rax
 jmp xchain00262_n12_α
 xchain00262_n9_β:
 jmp proc_successor_ω
 xchain00262_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2096]
 mov rdx, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain00262_n3_α
 xchain00262_n10_β:
 jmp xchain00262_n3_α
# IR_FIELD_GET
 xchain00262_n11_α:
 mov rdi, qword ptr [rip + .Lx00266_0]
 mov rsi, qword ptr [rbp + 1728]
 mov rdx, qword ptr [rbp + 1736]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00262_n6_α
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain00262_n15_α
 xchain00262_n11_β:
 jmp xchain00262_n6_α
.Lx00266_0:
 .quad .Lx00266_0_s
.Lx00266_0_s:
 .string "y2"
 xchain00262_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00262_n16_α
 xchain00262_n12_β:
 jmp proc_successor_ω
# IR_LIT_INTEGER
 xchain00262_n13_α:
 mov qword ptr [rbp + 112], 6
 mov rax, qword ptr [rip + .Lx00267_0]
 mov qword ptr [rbp + 120], rax
 jmp xchain00262_n17_α
 xchain00262_n13_β:
 jmp xchain00262_n20_α
.Lx00267_0:
 .quad 1
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00262_n14_α:
 jmp qword ptr [rbp + 64]
 xchain00262_n14_β:
 jmp proc_successor_ω
# IR_COERCE_NUMERIC
 xchain00262_n15_α:
 mov eax, dword ptr [rbp + 1632]
 cmp eax, 7
 je .Lx00268_1
 cmp eax, 6
 jne .Lx00268_0
 mov eax, dword ptr [rbp + 1696]
 cmp eax, 6
 jne .Lx00268_0
.Lx00268_1:
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1608], rax
 jmp .Lx00268_2
.Lx00268_0:
 lea rdi, [rbp + 1632]
 lea rsi, [rbp + 1696]
 lea rdx, [rbp + 1600]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00268_2:
 jmp xchain00262_n18_α
 xchain00262_n15_β:
 jmp xchain00262_n6_α
# IR_VAR_REF
 xchain00262_n16_α:
 lea rdi, [rbp + 2208]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain00262_n19_α
 xchain00262_n16_β:
 jmp xchain00262_n14_α
# IR_MOVE_LABEL
 xchain00262_n17_α:
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 56], rax
 lea rax, [rip + xchain00262_n20_α]
 mov qword ptr [rbp + 64], rax
 jmp xchain00262_n12_α
 xchain00262_n17_β:
 jmp proc_successor_ω
# IR_COERCE_NUMERIC
 xchain00262_n18_α:
 mov eax, dword ptr [rbp + 1696]
 cmp eax, 7
 je .Lx00269_1
 cmp eax, 6
 jne .Lx00269_0
 mov eax, dword ptr [rbp + 1632]
 cmp eax, 6
 jne .Lx00269_0
.Lx00269_1:
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1576], rax
 jmp .Lx00269_2
.Lx00269_0:
 lea rdi, [rbp + 1696]
 lea rsi, [rbp + 1632]
 lea rdx, [rbp + 1568]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00269_2:
 jmp xchain00262_n21_α
 xchain00262_n18_β:
 jmp xchain00262_n6_α
# IR_VAR
 xchain00262_n19_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1320], rax
 jmp xchain00262_n22_α
 xchain00262_n19_β:
 jmp xchain00262_n14_α
# IR_LIT_INTEGER
 xchain00262_n20_α:
 mov qword ptr [rbp + 80], 6
 mov rax, qword ptr [rip + .Lx00270_0]
 mov qword ptr [rbp + 88], rax
 jmp xchain00262_n24_α
 xchain00262_n20_β:
 jmp proc_successor_ω
.Lx00270_0:
 .quad 18446744073709551615
 xchain00262_n21_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1600]
 cmp eax, 100
 je .Lx00271_0
 mov eax, dword ptr [rbp + 1568]
 cmp eax, 100
 je .Lx00271_0
 mov eax, dword ptr [rbp + 1600]
 cmp eax, 6
 jne .Lx00271_2
 mov eax, dword ptr [rbp + 1568]
 cmp eax, 6
 jne .Lx00271_2
.Lx00271_1:
 mov rax, qword ptr [rbp + 1608]
 mov rcx, qword ptr [rbp + 1576]
 add rax, rcx
 mov qword ptr [rbp + 1536], 6
 mov qword ptr [rbp + 1544], rax
 jmp xchain00262_n25_α
.Lx00271_0:
 mov rdi, qword ptr [rbp + 1600]
 mov rsi, qword ptr [rbp + 1608]
 mov rdx, qword ptr [rbp + 1568]
 mov rcx, qword ptr [rbp + 1576]
 mov r8d, 0
 lea r9, [rbp + 1536]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00271_3
.Lx00271_2:
 mov rdi, qword ptr [rbp + 1600]
 mov rsi, qword ptr [rbp + 1608]
 mov rdx, qword ptr [rbp + 1568]
 mov rcx, qword ptr [rbp + 1576]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00262_n6_α
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
.Lx00271_3:
 jmp xchain00262_n25_α
 xchain00262_n21_β:
 jmp xchain00262_n6_α
# IR_FIELD_GET
 xchain00262_n22_α:
 mov rdi, qword ptr [rip + .Lx00272_0]
 mov rsi, qword ptr [rbp + 1312]
 mov rdx, qword ptr [rbp + 1320]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00262_n14_α
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain00262_n26_α
 xchain00262_n22_β:
 jmp xchain00262_n14_α
.Lx00272_0:
 .quad .Lx00272_0_s
.Lx00272_0_s:
 .string "aindex"
 xchain00262_n23_α:
 jmp xchain00262_n14_α
xchain00262_n23_β:
 jmp xchain00262_n14_α
# IR_MOVE_LABEL
 xchain00262_n24_α:
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 56], rax
 lea rax, [rip + proc_successor_ω]
 mov qword ptr [rbp + 64], rax
 jmp xchain00262_n12_α
 xchain00262_n24_β:
 jmp proc_successor_ω
# IR_LIT_INTEGER
 xchain00262_n25_α:
 mov qword ptr [rbp + 1760], 6
 mov rax, qword ptr [rip + .Lx00273_0]
 mov qword ptr [rbp + 1768], rax
 jmp xchain00262_n27_α
 xchain00262_n25_β:
 jmp xchain00262_n6_α
.Lx00273_0:
 .quad 8
# IR_VAR
 xchain00262_n26_α:
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 1352], rax
 jmp xchain00262_n28_α
 xchain00262_n26_β:
 jmp xchain00262_n14_α
 xchain00262_n27_α:
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
  .Lrkfn951: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn951]
 lea rsi, [rbp + 1488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je xchain00262_n6_α
 jmp xchain00262_n29_α
 xchain00262_n27_β:
 jmp xchain00262_n6_α
# IR_COERCE_NUMERIC
 xchain00262_n28_α:
 mov eax, dword ptr [rbp + 1280]
 cmp eax, 7
 je .Lx00274_1
 cmp eax, 6
 jne .Lx00274_0
 mov eax, dword ptr [rbp + 2128]
 cmp eax, 6
 jne .Lx00274_0
.Lx00274_1:
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1256], rax
 jmp .Lx00274_2
.Lx00274_0:
 lea rdi, [rbp + 1280]
 lea rsi, [rbp + 2128]
 lea rdx, [rbp + 1248]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00274_2:
 jmp xchain00262_n30_α
 xchain00262_n28_β:
 jmp xchain00262_n14_α
# IR_VAR
 xchain00262_n29_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1896], rax
 jmp xchain00262_n31_α
 xchain00262_n29_β:
 jmp xchain00262_n6_α
# IR_COERCE_NUMERIC
 xchain00262_n30_α:
 mov eax, dword ptr [rbp + 2128]
 cmp eax, 7
 je .Lx00275_1
 cmp eax, 6
 jne .Lx00275_0
 mov eax, dword ptr [rbp + 1280]
 cmp eax, 6
 jne .Lx00275_0
.Lx00275_1:
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 1224], rax
 jmp .Lx00275_2
.Lx00275_0:
 lea rdi, [rbp + 2128]
 lea rsi, [rbp + 1280]
 lea rdx, [rbp + 1216]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00275_2:
 jmp xchain00262_n32_α
 xchain00262_n30_β:
 jmp xchain00262_n14_α
# IR_FIELD_GET
 xchain00262_n31_α:
 mov rdi, qword ptr [rip + .Lx00276_0]
 mov rsi, qword ptr [rbp + 1888]
 mov rdx, qword ptr [rbp + 1896]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00262_n6_α
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 jmp xchain00262_n33_α
 xchain00262_n31_β:
 jmp xchain00262_n6_α
.Lx00276_0:
 .quad .Lx00276_0_s
.Lx00276_0_s:
 .string "x2"
 xchain00262_n32_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1248]
 cmp eax, 100
 je .Lx00277_0
 mov eax, dword ptr [rbp + 1216]
 cmp eax, 100
 je .Lx00277_0
 mov eax, dword ptr [rbp + 1248]
 cmp eax, 6
 jne .Lx00277_2
 mov eax, dword ptr [rbp + 1216]
 cmp eax, 6
 jne .Lx00277_2
.Lx00277_1:
 mov rax, qword ptr [rbp + 1256]
 mov rcx, qword ptr [rbp + 1224]
 add rax, rcx
 mov qword ptr [rbp + 1184], 6
 mov qword ptr [rbp + 1192], rax
 jmp xchain00262_n34_α
.Lx00277_0:
 mov rdi, qword ptr [rbp + 1248]
 mov rsi, qword ptr [rbp + 1256]
 mov rdx, qword ptr [rbp + 1216]
 mov rcx, qword ptr [rbp + 1224]
 mov r8d, 0
 lea r9, [rbp + 1184]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00277_3
.Lx00277_2:
 mov rdi, qword ptr [rbp + 1248]
 mov rsi, qword ptr [rbp + 1256]
 mov rdx, qword ptr [rbp + 1216]
 mov rcx, qword ptr [rbp + 1224]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00262_n14_α
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
.Lx00277_3:
 jmp xchain00262_n34_α
 xchain00262_n32_β:
 jmp xchain00262_n14_α
# IR_LIT_INTEGER
 xchain00262_n33_α:
 mov qword ptr [rbp + 1920], 6
 mov rax, qword ptr [rip + .Lx00278_0]
 mov qword ptr [rbp + 1928], rax
 jmp xchain00262_n35_α
 xchain00262_n33_β:
 jmp xchain00262_n6_α
.Lx00278_0:
 .quad 7
# IR_SUBSCRIPT x[i] variable
 xchain00262_n34_α:
 mov rdi, qword ptr [rbp + 1152]
 mov rsi, qword ptr [rbp + 1160]
 mov rdx, qword ptr [rbp + 1184]
 mov rcx, qword ptr [rbp + 1192]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00262_n14_α
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain00262_n36_α
 xchain00262_n34_β:
 jmp xchain00262_n14_α
 xchain00262_n35_α:
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
  .Lrkfn963: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn963]
 lea rsi, [rbp + 1808]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 cmp eax, 99
 je xchain00262_n6_α
 jmp xchain00262_n37_α
 xchain00262_n35_β:
 jmp xchain00262_n6_α
# IR_DEREF variable -> value
 xchain00262_n36_α:
 mov rdi, qword ptr [rbp + 1376]
 mov rsi, qword ptr [rbp + 1384]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00262_n14_α
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain00262_n38_α
 xchain00262_n36_β:
 jmp xchain00262_n14_α
 xchain00262_n37_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1472]
 mov rsi, qword ptr [rbp + 1480]
 mov rdx, qword ptr [rbp + 1792]
 mov rcx, qword ptr [rbp + 1800]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain00262_n39_α
 xchain00262_n37_β:
 jmp xchain00262_n6_α
# IR_MOVE_LABEL
 xchain00262_n38_α:
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1128], rax
 lea rax, [rip + xchain00262_n23_α]
 mov qword ptr [rbp + 1136], rax
 jmp xchain00262_n40_α
 xchain00262_n38_β:
 jmp xchain00262_n42_α
 xchain00262_n39_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1440]
 mov rdx, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain00262_n6_α
 xchain00262_n39_β:
 jmp xchain00262_n6_α
 xchain00262_n40_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1120]
 mov rdx, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00262_n42_α
 xchain00262_n40_β:
 jmp xchain00262_n42_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00262_n41_α:
 jmp qword ptr [rbp + 1136]
 xchain00262_n41_β:
 jmp xchain00262_n42_α
# IR_VAR_REF
 xchain00262_n42_α:
 lea rdi, [rbp + 2176]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00262_n43_α
 xchain00262_n42_β:
 jmp xchain00262_n14_α
# IR_VAR
 xchain00262_n43_α:
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00262_n44_α
 xchain00262_n43_β:
 jmp xchain00262_n14_α
# IR_SUBSCRIPT x[i] variable
 xchain00262_n44_α:
 mov rdi, qword ptr [rbp + 992]
 mov rsi, qword ptr [rbp + 1000]
 mov rdx, qword ptr [rbp + 1024]
 mov rcx, qword ptr [rbp + 1032]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00262_n14_α
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain00262_n45_α
 xchain00262_n44_β:
 jmp xchain00262_n14_α
# IR_DEREF variable -> value
 xchain00262_n45_α:
 mov rdi, qword ptr [rbp + 1056]
 mov rsi, qword ptr [rbp + 1064]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00262_n14_α
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain00262_n46_α
 xchain00262_n45_β:
 jmp xchain00262_n14_α
# IR_UNOP
 xchain00262_n46_α:
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 99
 je xchain00262_n14_α
 cmp eax, 0
 je xchain00262_n14_α
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 968], rax
 jmp xchain00262_n47_α
 xchain00262_n46_β:
 jmp xchain00262_n14_α
 xchain00262_n47_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 960]
 mov rdx, qword ptr [rbp + 968]
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain00262_n48_α
 xchain00262_n47_β:
 jmp xchain00262_n14_α
# IR_VAR
 xchain00262_n48_α:
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 888], rax
 jmp xchain00262_n49_α
 xchain00262_n48_β:
 jmp xchain00262_n50_α
 xchain00262_n49_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+848]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 856], rax
  .section .rodata
  .Lrkfn983: .string "type"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn983]
 lea rsi, [rbp + 848]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain00262_n50_α
 jmp xchain00262_n51_α
 xchain00262_n49_β:
 jmp xchain00262_n50_α
# IR_VAR
 xchain00262_n50_α:
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 776], rax
 jmp xchain00262_n52_α
 xchain00262_n50_β:
 jmp xchain00262_n14_α
# IR_LIT_STRING
 xchain00262_n51_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx00279_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00262_n53_α
 xchain00262_n51_β:
 jmp xchain00262_n50_α
.Lx00279_0:
 .quad .Lx00279_0_s
.Lx00279_0_s:
 .string "list"
# IR_LIST_BANG
 xchain00262_n52_α:
 mov qword ptr [rbp + 752], 0
.Lx00280_0:
 mov rdi, qword ptr [rbp + 768]
 mov rsi, qword ptr [rbp + 776]
 mov rdx, qword ptr [rbp + 752]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp rax, 99
 je xchain00262_n14_α
 jmp xchain00262_n54_α
 xchain00262_n52_β:
 inc qword ptr [rbp + 752]
 jmp .Lx00280_0
 xchain00262_n53_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 832]
 mov rsi, qword ptr [rbp + 840]
 mov rdx, qword ptr [rbp + 912]
 mov rcx, qword ptr [rbp + 920]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00262_n50_α
 mov rdi, qword ptr [rbp + 912]
 mov rsi, qword ptr [rbp + 920]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00262_n55_α
 xchain00262_n53_β:
 jmp xchain00262_n50_α
 xchain00262_n54_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00262_n56_α
 xchain00262_n54_β:
 jmp xchain00262_n14_α
# IR_VAR
 xchain00262_n55_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00262_n57_α
 xchain00262_n55_β:
 jmp xchain00262_n58_α
# IR_VAR
 xchain00262_n56_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00262_n59_α
 xchain00262_n56_β:
 jmp xchain00262_n60_α
# IR_VAR
 xchain00262_n57_α:
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 456], rax
 jmp xchain00262_n61_α
 xchain00262_n57_β:
 jmp xchain00262_n58_α
# KEYWORD_null
 xchain00262_n58_α:
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00262_n62_α
 xchain00262_n58_β:
 jmp xchain00262_n14_α
# IR_VAR
 xchain00262_n59_α:
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 696], rax
 jmp xchain00262_n63_α
 xchain00262_n59_β:
 jmp xchain00262_n60_α
# KEYWORD_null
 xchain00262_n60_α:
 mov qword ptr [rbp + 560], 0
 mov qword ptr [rbp + 568], 0
 jmp xchain00262_n64_α
 xchain00262_n60_β:
 jmp xchain00262_n52_β
 xchain00262_n61_α:
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
  .Lrkfn1000: .string "member"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1000]
 lea rsi, [rbp + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain00262_n58_α
 jmp xchain00262_n14_α
 xchain00262_n61_β:
 jmp xchain00262_n58_α
# IR_VAR
 xchain00262_n62_α:
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 296], rax
 jmp xchain00262_n65_α
 xchain00262_n62_β:
 jmp proc_successor_ω
 xchain00262_n63_α:
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
  .Lrkfn1004: .string "member"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1004]
 lea rsi, [rbp + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00262_n60_α
 jmp xchain00262_n52_β
 xchain00262_n63_β:
 jmp xchain00262_n60_α
 xchain00262_n64_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 552], rax
 jmp xchain00262_n66_α
xchain00262_n64_β:
 jmp xchain00262_n14_α
# IR_RETURN
 xchain00262_n65_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_successor_γ
# IR_VAR
 xchain00262_n66_α:
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 520], rax
 jmp xchain00262_n67_α
 xchain00262_n66_β:
 jmp proc_successor_ω
# IR_RETURN
 xchain00262_n67_α:
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
 xchain00281_n0_α:
 mov rdi, 1879052432
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 jmp xchain00281_n1_α
 xchain00281_n0_β:
 jmp xchain00281_n3_α
# IR_NULLTEST_VAR
 xchain00281_n1_α:
 mov eax, dword ptr [rbp + 4336]
 cmp eax, 99
 je xchain00281_n3_α
 mov rdi, qword ptr [rbp + 4336]
 mov rsi, qword ptr [rbp + 4344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00281_n3_α
 cmp eax, 0
 jne xchain00281_n3_α
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [rbp + 4368], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [rbp + 4376], rax
 jmp xchain00281_n2_α
 xchain00281_n1_β:
 jmp xchain00281_n3_α
# IR_LIT_INTEGER
 xchain00281_n2_α:
 mov qword ptr [rbp + 4416], 6
 mov rax, qword ptr [rip + .Lx00282_0]
 mov qword ptr [rbp + 4424], rax
 jmp xchain00281_n4_α
 xchain00281_n2_β:
 jmp xchain00281_n3_α
.Lx00282_0:
 .quad 1
# IR_VAR
 xchain00281_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 4224], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 4232], rax
 jmp xchain00281_n5_α
 xchain00281_n3_β:
 jmp xchain00281_n6_α
# IR_ASSIGN_VAR
 xchain00281_n4_α:
 mov rdi, qword ptr [rbp + 4368]
 mov rsi, qword ptr [rbp + 4376]
 mov rdx, qword ptr [rbp + 4416]
 mov rcx, qword ptr [rbp + 4424]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00281_n3_α
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 jmp xchain00281_n7_α
 xchain00281_n4_β:
 jmp xchain00281_n3_α
# IR_GEN_SCAN
 xchain00281_n5_α:
 mov rdi, qword ptr [rbp + 4224]
 mov rsi, qword ptr [rbp + 4232]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00281_n8_α
 xchain00281_n5_β:
 jmp xchain00281_n6_α
# IR_VAR
 xchain00281_n6_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00281_n9_α
 xchain00281_n6_β:
 jmp proc_crack_ω
 xchain00281_n7_α:
# BOX IR_CALL crec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1022: .string "crec"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1022]
 lea rsi, [rbp + 4320]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 cmp eax, 99
 je xchain00281_n3_α
 jmp xchain00281_n10_α
 xchain00281_n7_β:
 jmp xchain00281_n3_α
# IR_VAR
 xchain00281_n8_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 jmp xchain00281_n11_α
 xchain00281_n8_β:
 jmp xchain00281_n12_α
# IR_RETURN
 xchain00281_n9_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_crack_γ
# IR_ASSIGN gva
 xchain00281_n10_α:
 mov rax, qword ptr [rbp + 4304]
 mov rdx, qword ptr [rbp + 4312]
 mov qword ptr [1879052416], rax
 mov qword ptr [1879052424], rdx
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 jmp xchain00281_n13_α
 xchain00281_n10_β:
 jmp xchain00281_n3_α
# IR_FIELD_GET lv
 xchain00281_n11_α:
 mov rdi, qword ptr [rip + .Lx00283_0]
 mov rsi, qword ptr [rbp + 4112]
 mov rdx, qword ptr [rbp + 4120]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00281_n12_α
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
 jmp xchain00281_n14_α
 xchain00281_n11_β:
 jmp xchain00281_n12_α
.Lx00283_0:
 .quad .Lx00283_0_s
.Lx00283_0_s:
 .string "code"
# IR_LIT_INTEGER
 xchain00281_n12_α:
 mov qword ptr [rbp + 4048], 6
 mov rax, qword ptr [rip + .Lx00284_0]
 mov qword ptr [rbp + 4056], rax
 jmp xchain00281_n15_α
 xchain00281_n12_β:
 jmp xchain00281_n18_α
.Lx00284_0:
 .quad 4
# IR_MOVE_LABEL
 xchain00281_n13_α:
 mov rax, qword ptr [rbp + 4288]
 mov qword ptr [rbp + 4256], rax
 mov rax, qword ptr [rbp + 4296]
 mov qword ptr [rbp + 4264], rax
 lea rax, [rip + xchain00281_n3_α]
 mov qword ptr [rbp + 4272], rax
 jmp xchain00281_n3_α
 xchain00281_n13_β:
 jmp xchain00281_n3_α
# IR_LIT_INTEGER
 xchain00281_n14_α:
 mov qword ptr [rbp + 4192], 6
 mov rax, qword ptr [rip + .Lx00285_0]
 mov qword ptr [rbp + 4200], rax
 jmp xchain00281_n17_α
 xchain00281_n14_β:
 jmp xchain00281_n12_α
.Lx00285_0:
 .quad 4
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00281_n15_α:
 sub rsp, 16
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00286_239
 add rsp, 16
 jmp xchain00281_n18_α
.Lx00286_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00286_240
 add rsp, 16
 jmp xchain00281_n18_α
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
 mov qword ptr [rbp + 4016], rax
 mov qword ptr [rbp + 4024], rdx
 jmp xchain00281_n18_α
 xchain00281_n15_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00281_n18_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00281_n16_α:
 jmp qword ptr [rbp + 4272]
 xchain00281_n16_β:
 jmp xchain00281_n3_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00281_n17_α:
 sub rsp, 16
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00287_239
 add rsp, 16
 jmp xchain00281_n12_α
.Lx00287_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00287_240
 add rsp, 16
 jmp xchain00281_n12_α
.Lx00287_240:
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
 jmp xchain00281_n19_α
 xchain00281_n17_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00281_n12_α
# IR_LIT_INTEGER
 xchain00281_n18_α:
 mov qword ptr [rbp + 3984], 6
 mov rax, qword ptr [rip + .Lx00288_0]
 mov qword ptr [rbp + 3992], rax
 jmp xchain00281_n20_α
 xchain00281_n18_β:
 jmp xchain00281_n22_α
.Lx00288_0:
 .quad 7
# IR_ASSIGN_VAR
 xchain00281_n19_α:
 mov rdi, qword ptr [rbp + 4080]
 mov rsi, qword ptr [rbp + 4088]
 mov rdx, qword ptr [rbp + 4160]
 mov rcx, qword ptr [rbp + 4168]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00281_n12_α
 mov qword ptr [rbp + 4144], rax
 mov qword ptr [rbp + 4152], rdx
 jmp xchain00281_n12_α
 xchain00281_n19_β:
 jmp xchain00281_n12_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00281_n20_α:
 sub rsp, 16
 mov rax, 7
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00289_239
 add rsp, 16
 jmp xchain00281_n22_α
.Lx00289_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00289_240
 add rsp, 16
 jmp xchain00281_n22_α
.Lx00289_240:
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
 jmp xchain00281_n21_α
 xchain00281_n20_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00281_n22_α
 xchain00281_n21_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3952] -> [zr+3920]
 mov rax, qword ptr [rbp + 3952]
 mov qword ptr [rbp + 3920], rax
 mov rax, qword ptr [rbp + 3960]
 mov qword ptr [rbp + 3928], rax
  .section .rodata
  .Lrkfn1042: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1042]
 lea rsi, [rbp + 3920]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 cmp eax, 99
 je xchain00281_n22_α
 jmp xchain00281_n23_α
 xchain00281_n21_β:
 jmp xchain00281_n22_α
# IR_LIT_INTEGER
 xchain00281_n22_α:
 mov qword ptr [rbp + 3840], 6
 mov rax, qword ptr [rip + .Lx00290_0]
 mov qword ptr [rbp + 3848], rax
 jmp xchain00281_n24_α
 xchain00281_n22_β:
 jmp xchain00281_n27_α
.Lx00290_0:
 .quad 7
 xchain00281_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3904]
 mov rdx, qword ptr [rbp + 3912]
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 jmp xchain00281_n25_α
 xchain00281_n23_β:
 jmp xchain00281_n22_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00281_n24_α:
 sub rsp, 16
 mov rax, 7
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00291_239
 add rsp, 16
 jmp xchain00281_n27_α
.Lx00291_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00291_240
 add rsp, 16
 jmp xchain00281_n27_α
.Lx00291_240:
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
 jmp xchain00281_n26_α
 xchain00281_n24_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00281_n27_α
 xchain00281_n25_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3888]
 mov rdx, qword ptr [rbp + 3896]
 mov qword ptr [rbp + 4528], rax
 mov qword ptr [rbp + 4536], rdx
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 jmp xchain00281_n22_α
 xchain00281_n25_β:
 jmp xchain00281_n22_α
 xchain00281_n26_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3808] -> [zr+3776]
 mov rax, qword ptr [rbp + 3808]
 mov qword ptr [rbp + 3776], rax
 mov rax, qword ptr [rbp + 3816]
 mov qword ptr [rbp + 3784], rax
  .section .rodata
  .Lrkfn1049: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1049]
 lea rsi, [rbp + 3776]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 cmp eax, 99
 je xchain00281_n27_α
 jmp xchain00281_n28_α
 xchain00281_n26_β:
 jmp xchain00281_n27_α
# IR_VAR
 xchain00281_n27_α:
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 3232], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 3240], rax
 jmp xchain00281_n29_α
 xchain00281_n27_β:
 jmp xchain00281_n30_α
 xchain00281_n28_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3760]
 mov rdx, qword ptr [rbp + 3768]
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3752], rdx
 jmp xchain00281_n31_α
 xchain00281_n28_β:
 jmp xchain00281_n27_α
# IR_LIT_INTEGER
 xchain00281_n29_α:
 mov qword ptr [rbp + 3360], 6
 mov rax, qword ptr [rip + .Lx00292_0]
 mov qword ptr [rbp + 3368], rax
 jmp xchain00281_n32_α
 xchain00281_n29_β:
 jmp xchain00281_n30_α
.Lx00292_0:
 .quad 4
# IR_VAR
 xchain00281_n30_α:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 2896], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 2904], rax
 jmp xchain00281_n33_α
 xchain00281_n30_β:
 jmp xchain00281_n34_α
 xchain00281_n31_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3744]
 mov rdx, qword ptr [rbp + 3752]
 mov qword ptr [rbp + 4496], rax
 mov qword ptr [rbp + 4504], rdx
 mov qword ptr [rbp + 3728], rax
 mov qword ptr [rbp + 3736], rdx
 jmp xchain00281_n27_α
 xchain00281_n31_β:
 jmp xchain00281_n27_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00281_n32_α:
 sub rsp, 16
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00293_239
 add rsp, 16
 jmp xchain00281_n30_α
.Lx00293_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00293_240
 add rsp, 16
 jmp xchain00281_n30_α
.Lx00293_240:
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
 jmp xchain00281_n35_α
 xchain00281_n32_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00281_n30_α
# IR_VAR
 xchain00281_n33_α:
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 2928], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 2936], rax
 jmp xchain00281_n36_α
 xchain00281_n33_β:
 jmp xchain00281_n34_α
# IR_VAR
 xchain00281_n34_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 jmp xchain00281_n37_α
 xchain00281_n34_β:
 jmp xchain00281_n38_α
# IR_LIT_INTEGER
 xchain00281_n35_α:
 mov qword ptr [rbp + 3392], 6
 mov rax, qword ptr [rip + .Lx00294_0]
 mov qword ptr [rbp + 3400], rax
 jmp xchain00281_n39_α
 xchain00281_n35_β:
 jmp xchain00281_n30_α
.Lx00294_0:
 .quad 5000
# IR_COERCE_NUMERIC
 xchain00281_n36_α:
 mov eax, dword ptr [rbp + 4528]
 cmp eax, 7
 je .Lx00295_1
 cmp eax, 6
 jne .Lx00295_0
 mov eax, dword ptr [rbp + 4496]
 cmp eax, 6
 jne .Lx00295_0
.Lx00295_1:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 2872], rax
 jmp .Lx00295_2
.Lx00295_0:
 lea rdi, [rbp + 4528]
 lea rsi, [rbp + 4496]
 lea rdx, [rbp + 2864]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00295_2:
 jmp xchain00281_n40_α
 xchain00281_n36_β:
 jmp xchain00281_n34_α
# IR_FIELD_GET lv
 xchain00281_n37_α:
 mov rdi, qword ptr [rip + .Lx00296_0]
 mov rsi, qword ptr [rbp + 2688]
 mov rdx, qword ptr [rbp + 2696]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00281_n38_α
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 jmp xchain00281_n41_α
 xchain00281_n37_β:
 jmp xchain00281_n38_α
.Lx00296_0:
 .quad .Lx00296_0_s
.Lx00296_0_s:
 .string "rev"
# IR_VAR
 xchain00281_n38_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain00281_n42_α
 xchain00281_n38_β:
 jmp xchain00281_n43_α
# IR_COERCE_NUMERIC
 xchain00281_n39_α:
 mov eax, dword ptr [rbp + 3328]
 cmp eax, 7
 je .Lx00297_1
 cmp eax, 6
 jne .Lx00297_0
 mov eax, dword ptr [rbp + 3392]
 cmp eax, 6
 jne .Lx00297_0
.Lx00297_1:
 mov rax, qword ptr [rbp + 3328]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 3336]
 mov qword ptr [rbp + 3304], rax
 jmp .Lx00297_2
.Lx00297_0:
 lea rdi, [rbp + 3328]
 lea rsi, [rbp + 3392]
 lea rdx, [rbp + 3296]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00297_2:
 jmp xchain00281_n44_α
 xchain00281_n39_β:
 jmp xchain00281_n30_α
# IR_COERCE_NUMERIC
 xchain00281_n40_α:
 mov eax, dword ptr [rbp + 4496]
 cmp eax, 7
 je .Lx00298_1
 cmp eax, 6
 jne .Lx00298_0
 mov eax, dword ptr [rbp + 4528]
 cmp eax, 6
 jne .Lx00298_0
.Lx00298_1:
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 2840], rax
 jmp .Lx00298_2
.Lx00298_0:
 lea rdi, [rbp + 4496]
 lea rsi, [rbp + 4528]
 lea rdx, [rbp + 2832]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00298_2:
 jmp xchain00281_n45_α
 xchain00281_n40_β:
 jmp xchain00281_n34_α
# KEYWORD_null
 xchain00281_n41_α:
 mov qword ptr [rbp + 2736], 0
 mov qword ptr [rbp + 2744], 0
 jmp xchain00281_n46_α
 xchain00281_n41_β:
 jmp xchain00281_n38_α
# IR_FIELD_GET lv
 xchain00281_n42_α:
 mov rdi, qword ptr [rip + .Lx00299_0]
 mov rsi, qword ptr [rbp + 1840]
 mov rdx, qword ptr [rbp + 1848]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00281_n43_α
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain00281_n47_α
 xchain00281_n42_β:
 jmp xchain00281_n43_α
.Lx00299_0:
 .quad .Lx00299_0_s
.Lx00299_0_s:
 .string "key"
# IR_VAR
 xchain00281_n43_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain00281_n48_α
 xchain00281_n43_β:
 jmp xchain00281_n49_α
 xchain00281_n44_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3296]
 cmp eax, 100
 je .Lx00300_0
 mov eax, dword ptr [rbp + 3296]
 cmp eax, 6
 jne .Lx00300_2
.Lx00300_1:
 mov rax, qword ptr [rbp + 3304]
 mov rcx, 5000
 sub rax, rcx
 mov qword ptr [rbp + 3264], 6
 mov qword ptr [rbp + 3272], rax
 jmp xchain00281_n50_α
.Lx00300_0:
 mov rdi, qword ptr [rbp + 3296]
 mov rsi, qword ptr [rbp + 3304]
 mov rdx, qword ptr [rbp + 3392]
 mov rcx, qword ptr [rbp + 3400]
 mov r8d, 1
 lea r9, [rbp + 3264]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00300_3
.Lx00300_2:
 mov rdi, qword ptr [rbp + 3296]
 mov rsi, qword ptr [rbp + 3304]
 mov rdx, qword ptr [rbp + 3392]
 mov rcx, qword ptr [rbp + 3400]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00281_n30_α
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
.Lx00300_3:
 jmp xchain00281_n50_α
 xchain00281_n44_β:
 jmp xchain00281_n30_α
 xchain00281_n45_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 100
 je .Lx00301_0
 mov eax, dword ptr [rbp + 2832]
 cmp eax, 100
 je .Lx00301_0
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 6
 jne .Lx00301_2
 mov eax, dword ptr [rbp + 2832]
 cmp eax, 6
 jne .Lx00301_2
.Lx00301_1:
 mov rax, qword ptr [rbp + 2872]
 mov rcx, qword ptr [rbp + 2840]
 add rax, rcx
 mov qword ptr [rbp + 2800], 6
 mov qword ptr [rbp + 2808], rax
 jmp xchain00281_n51_α
.Lx00301_0:
 mov rdi, qword ptr [rbp + 2864]
 mov rsi, qword ptr [rbp + 2872]
 mov rdx, qword ptr [rbp + 2832]
 mov rcx, qword ptr [rbp + 2840]
 mov r8d, 0
 lea r9, [rbp + 2800]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00301_3
.Lx00301_2:
 mov rdi, qword ptr [rbp + 2864]
 mov rsi, qword ptr [rbp + 2872]
 mov rdx, qword ptr [rbp + 2832]
 mov rcx, qword ptr [rbp + 2840]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00281_n34_α
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
.Lx00301_3:
 jmp xchain00281_n51_α
 xchain00281_n45_β:
 jmp xchain00281_n34_α
# IR_ASSIGN_VAR
 xchain00281_n46_α:
 mov rdi, qword ptr [rbp + 2656]
 mov rsi, qword ptr [rbp + 2664]
 mov rdx, qword ptr [rbp + 2736]
 mov rcx, qword ptr [rbp + 2744]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00281_n38_α
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 jmp xchain00281_n52_α
 xchain00281_n46_β:
 jmp xchain00281_n38_α
# IR_VAR
 xchain00281_n47_α:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 2088], rax
 jmp xchain00281_n53_α
 xchain00281_n47_β:
 jmp xchain00281_n43_α
# IR_FIELD_GET lv
 xchain00281_n48_α:
 mov rdi, qword ptr [rip + .Lx00302_0]
 mov rsi, qword ptr [rbp + 1728]
 mov rdx, qword ptr [rbp + 1736]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00281_n49_α
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain00281_n54_α
 xchain00281_n48_β:
 jmp xchain00281_n49_α
.Lx00302_0:
 .quad .Lx00302_0_s
.Lx00302_0_s:
 .string "x1"
# IR_VAR
 xchain00281_n49_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain00281_n55_α
 xchain00281_n49_β:
 jmp xchain00281_n56_α
# IR_COERCE_NUMERIC
 xchain00281_n50_α:
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 7
 je .Lx00303_1
 cmp eax, 6
 jne .Lx00303_0
 mov eax, dword ptr [rbp + 3264]
 cmp eax, 6
 jne .Lx00303_0
.Lx00303_1:
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 3208], rax
 jmp .Lx00303_2
.Lx00303_0:
 lea rdi, [rbp + 4512]
 lea rsi, [rbp + 3264]
 lea rdx, [rbp + 3200]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00303_2:
 jmp xchain00281_n57_α
 xchain00281_n50_β:
 jmp xchain00281_n30_α
# IR_VAR
 xchain00281_n51_α:
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 3064], rax
 jmp xchain00281_n58_α
 xchain00281_n51_β:
 jmp xchain00281_n34_α
# IR_MOVE_LABEL
 xchain00281_n52_α:
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 2312], rax
 lea rax, [rip + xchain00281_n38_α]
 mov qword ptr [rbp + 2320], rax
 jmp xchain00281_n38_α
 xchain00281_n52_β:
 jmp xchain00281_n38_α
# IR_VAR
 xchain00281_n53_α:
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 2120], rax
 jmp xchain00281_n60_α
 xchain00281_n53_β:
 jmp xchain00281_n43_α
# IR_VAR
 xchain00281_n54_α:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00281_n61_α
 xchain00281_n54_β:
 jmp xchain00281_n49_α
# IR_FIELD_GET lv
 xchain00281_n55_α:
 mov rdi, qword ptr [rip + .Lx00304_0]
 mov rsi, qword ptr [rbp + 1616]
 mov rdx, qword ptr [rbp + 1624]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00281_n56_α
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain00281_n62_α
 xchain00281_n55_β:
 jmp xchain00281_n56_α
.Lx00304_0:
 .quad .Lx00304_0_s
.Lx00304_0_s:
 .string "y1"
# IR_VAR
 xchain00281_n56_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain00281_n63_α
 xchain00281_n56_β:
 jmp xchain00281_n64_α
# IR_COERCE_NUMERIC
 xchain00281_n57_α:
 mov eax, dword ptr [rbp + 3264]
 cmp eax, 7
 je .Lx00305_1
 cmp eax, 6
 jne .Lx00305_0
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 6
 jne .Lx00305_0
.Lx00305_1:
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 3176], rax
 jmp .Lx00305_2
.Lx00305_0:
 lea rdi, [rbp + 3264]
 lea rsi, [rbp + 4512]
 lea rdx, [rbp + 3168]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00305_2:
 jmp xchain00281_n65_α
 xchain00281_n57_β:
 jmp xchain00281_n30_α
# IR_VAR
 xchain00281_n58_α:
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 3088], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 3096], rax
 jmp xchain00281_n66_α
 xchain00281_n58_β:
 jmp xchain00281_n34_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00281_n59_α:
 jmp qword ptr [rbp + 2320]
 xchain00281_n59_β:
 jmp xchain00281_n38_α
# IR_COERCE_NUMERIC
 xchain00281_n60_α:
 mov eax, dword ptr [rbp + 4528]
 cmp eax, 7
 je .Lx00306_1
 cmp eax, 6
 jne .Lx00306_0
 mov eax, dword ptr [rbp + 4496]
 cmp eax, 6
 jne .Lx00306_0
.Lx00306_1:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 2056], rax
 jmp .Lx00306_2
.Lx00306_0:
 lea rdi, [rbp + 4528]
 lea rsi, [rbp + 4496]
 lea rdx, [rbp + 2048]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00306_2:
 jmp xchain00281_n67_α
 xchain00281_n60_β:
 jmp xchain00281_n43_α
# IR_ASSIGN_VAR
 xchain00281_n61_α:
 mov rdi, qword ptr [rbp + 1696]
 mov rsi, qword ptr [rbp + 1704]
 mov rdx, qword ptr [rbp + 1776]
 mov rcx, qword ptr [rbp + 1784]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00281_n49_α
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain00281_n49_α
 xchain00281_n61_β:
 jmp xchain00281_n49_α
# IR_VAR
 xchain00281_n62_α:
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 1672], rax
 jmp xchain00281_n68_α
 xchain00281_n62_β:
 jmp xchain00281_n56_α
# IR_FIELD_GET lv
 xchain00281_n63_α:
 mov rdi, qword ptr [rip + .Lx00307_0]
 mov rsi, qword ptr [rbp + 1504]
 mov rdx, qword ptr [rbp + 1512]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00281_n64_α
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain00281_n69_α
 xchain00281_n63_β:
 jmp xchain00281_n64_α
.Lx00307_0:
 .quad .Lx00307_0_s
.Lx00307_0_s:
 .string "x2"
# IR_VAR
 xchain00281_n64_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain00281_n70_α
 xchain00281_n64_β:
 jmp xchain00281_n71_α
 xchain00281_n65_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3200]
 cmp eax, 100
 je .Lx00308_0
 mov eax, dword ptr [rbp + 3168]
 cmp eax, 100
 je .Lx00308_0
 mov eax, dword ptr [rbp + 3200]
 cmp eax, 6
 jne .Lx00308_2
 mov eax, dword ptr [rbp + 3168]
 cmp eax, 6
 jne .Lx00308_2
.Lx00308_1:
 mov rax, qword ptr [rbp + 3208]
 mov rcx, qword ptr [rbp + 3176]
 add rax, rcx
 mov qword ptr [rbp + 3136], 6
 mov qword ptr [rbp + 3144], rax
 jmp xchain00281_n72_α
.Lx00308_0:
 mov rdi, qword ptr [rbp + 3200]
 mov rsi, qword ptr [rbp + 3208]
 mov rdx, qword ptr [rbp + 3168]
 mov rcx, qword ptr [rbp + 3176]
 mov r8d, 0
 lea r9, [rbp + 3136]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00308_3
.Lx00308_2:
 mov rdi, qword ptr [rbp + 3200]
 mov rsi, qword ptr [rbp + 3208]
 mov rdx, qword ptr [rbp + 3168]
 mov rcx, qword ptr [rbp + 3176]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00281_n30_α
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
.Lx00308_3:
 jmp xchain00281_n72_α
 xchain00281_n65_β:
 jmp xchain00281_n30_α
# IR_COERCE_NUMERIC
 xchain00281_n66_α:
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 7
 je .Lx00309_1
 cmp eax, 6
 jne .Lx00309_0
 mov eax, dword ptr [rbp + 4480]
 cmp eax, 6
 jne .Lx00309_0
.Lx00309_1:
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 3032], rax
 jmp .Lx00309_2
.Lx00309_0:
 lea rdi, [rbp + 4512]
 lea rsi, [rbp + 4480]
 lea rdx, [rbp + 3024]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00309_2:
 jmp xchain00281_n73_α
 xchain00281_n66_β:
 jmp xchain00281_n34_α
# IR_COERCE_NUMERIC
 xchain00281_n67_α:
 mov eax, dword ptr [rbp + 4496]
 cmp eax, 7
 je .Lx00310_1
 cmp eax, 6
 jne .Lx00310_0
 mov eax, dword ptr [rbp + 4528]
 cmp eax, 6
 jne .Lx00310_0
.Lx00310_1:
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 2024], rax
 jmp .Lx00310_2
.Lx00310_0:
 lea rdi, [rbp + 4496]
 lea rsi, [rbp + 4528]
 lea rdx, [rbp + 2016]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00310_2:
 jmp xchain00281_n74_α
 xchain00281_n67_β:
 jmp xchain00281_n43_α
# IR_ASSIGN_VAR
 xchain00281_n68_α:
 mov rdi, qword ptr [rbp + 1584]
 mov rsi, qword ptr [rbp + 1592]
 mov rdx, qword ptr [rbp + 1664]
 mov rcx, qword ptr [rbp + 1672]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00281_n56_α
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain00281_n56_α
 xchain00281_n68_β:
 jmp xchain00281_n56_α
# IR_VAR
 xchain00281_n69_α:
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 1560], rax
 jmp xchain00281_n75_α
 xchain00281_n69_β:
 jmp xchain00281_n64_α
# IR_FIELD_GET lv
 xchain00281_n70_α:
 mov rdi, qword ptr [rip + .Lx00311_0]
 mov rsi, qword ptr [rbp + 1392]
 mov rdx, qword ptr [rbp + 1400]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00281_n71_α
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain00281_n76_α
 xchain00281_n70_β:
 jmp xchain00281_n71_α
.Lx00311_0:
 .quad .Lx00311_0_s
.Lx00311_0_s:
 .string "y2"
# IR_VAR
 xchain00281_n71_α:
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00281_n77_α
 xchain00281_n71_β:
 jmp xchain00281_n78_α
 xchain00281_n72_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3136]
 mov rdx, qword ptr [rbp + 3144]
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain00281_n79_α
 xchain00281_n72_β:
 jmp xchain00281_n30_α
# IR_COERCE_NUMERIC
 xchain00281_n73_α:
 mov eax, dword ptr [rbp + 4480]
 cmp eax, 7
 je .Lx00312_1
 cmp eax, 6
 jne .Lx00312_0
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 6
 jne .Lx00312_0
.Lx00312_1:
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 3000], rax
 jmp .Lx00312_2
.Lx00312_0:
 lea rdi, [rbp + 4480]
 lea rsi, [rbp + 4512]
 lea rdx, [rbp + 2992]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00312_2:
 jmp xchain00281_n80_α
 xchain00281_n73_β:
 jmp xchain00281_n34_α
 xchain00281_n74_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2048]
 cmp eax, 100
 je .Lx00313_0
 mov eax, dword ptr [rbp + 2016]
 cmp eax, 100
 je .Lx00313_0
 mov eax, dword ptr [rbp + 2048]
 cmp eax, 6
 jne .Lx00313_2
 mov eax, dword ptr [rbp + 2016]
 cmp eax, 6
 jne .Lx00313_2
.Lx00313_1:
 mov rax, qword ptr [rbp + 2056]
 mov rcx, qword ptr [rbp + 2024]
 add rax, rcx
 mov qword ptr [rbp + 1984], 6
 mov qword ptr [rbp + 1992], rax
 jmp xchain00281_n81_α
.Lx00313_0:
 mov rdi, qword ptr [rbp + 2048]
 mov rsi, qword ptr [rbp + 2056]
 mov rdx, qword ptr [rbp + 2016]
 mov rcx, qword ptr [rbp + 2024]
 mov r8d, 0
 lea r9, [rbp + 1984]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00313_3
.Lx00313_2:
 mov rdi, qword ptr [rbp + 2048]
 mov rsi, qword ptr [rbp + 2056]
 mov rdx, qword ptr [rbp + 2016]
 mov rcx, qword ptr [rbp + 2024]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00281_n43_α
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
.Lx00313_3:
 jmp xchain00281_n81_α
 xchain00281_n74_β:
 jmp xchain00281_n43_α
# IR_ASSIGN_VAR
 xchain00281_n75_α:
 mov rdi, qword ptr [rbp + 1472]
 mov rsi, qword ptr [rbp + 1480]
 mov rdx, qword ptr [rbp + 1552]
 mov rcx, qword ptr [rbp + 1560]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00281_n64_α
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain00281_n64_α
 xchain00281_n75_β:
 jmp xchain00281_n64_α
# IR_VAR
 xchain00281_n76_α:
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 1448], rax
 jmp xchain00281_n82_α
 xchain00281_n76_β:
 jmp xchain00281_n71_α
# IR_VAR
 xchain00281_n77_α:
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00281_n83_α
 xchain00281_n77_β:
 jmp xchain00281_n78_α
# IR_VAR
 xchain00281_n78_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00281_n84_α
 xchain00281_n78_β:
 jmp xchain00281_n85_α
# IR_VAR
 xchain00281_n79_α:
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 3536], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 3544], rax
 jmp xchain00281_n86_α
 xchain00281_n79_β:
 jmp xchain00281_n27_α
 xchain00281_n80_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3024]
 cmp eax, 100
 je .Lx00314_0
 mov eax, dword ptr [rbp + 2992]
 cmp eax, 100
 je .Lx00314_0
 mov eax, dword ptr [rbp + 3024]
 cmp eax, 6
 jne .Lx00314_2
 mov eax, dword ptr [rbp + 2992]
 cmp eax, 6
 jne .Lx00314_2
.Lx00314_1:
 mov rax, qword ptr [rbp + 3032]
 mov rcx, qword ptr [rbp + 3000]
 add rax, rcx
 mov qword ptr [rbp + 2960], 6
 mov qword ptr [rbp + 2968], rax
 jmp xchain00281_n87_α
.Lx00314_0:
 mov rdi, qword ptr [rbp + 3024]
 mov rsi, qword ptr [rbp + 3032]
 mov rdx, qword ptr [rbp + 2992]
 mov rcx, qword ptr [rbp + 3000]
 mov r8d, 0
 lea r9, [rbp + 2960]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00314_3
.Lx00314_2:
 mov rdi, qword ptr [rbp + 3024]
 mov rsi, qword ptr [rbp + 3032]
 mov rdx, qword ptr [rbp + 2992]
 mov rcx, qword ptr [rbp + 3000]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00281_n34_α
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
.Lx00314_3:
 jmp xchain00281_n87_α
 xchain00281_n80_β:
 jmp xchain00281_n34_α
# IR_LIT_INTEGER
 xchain00281_n81_α:
 mov qword ptr [rbp + 2144], 6
 mov rax, qword ptr [rip + .Lx00315_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain00281_n88_α
 xchain00281_n81_β:
 jmp xchain00281_n43_α
.Lx00315_0:
 .quad 8
# IR_ASSIGN_VAR
 xchain00281_n82_α:
 mov rdi, qword ptr [rbp + 1360]
 mov rsi, qword ptr [rbp + 1368]
 mov rdx, qword ptr [rbp + 1440]
 mov rcx, qword ptr [rbp + 1448]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00281_n71_α
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain00281_n71_α
 xchain00281_n82_β:
 jmp xchain00281_n71_α
# IR_COERCE_NUMERIC
 xchain00281_n83_α:
 mov eax, dword ptr [rbp + 4480]
 cmp eax, 7
 je .Lx00316_1
 cmp eax, 6
 jne .Lx00316_0
 mov eax, dword ptr [rbp + 4496]
 cmp eax, 6
 jne .Lx00316_0
.Lx00316_1:
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 984], rax
 jmp .Lx00316_2
.Lx00316_0:
 lea rdi, [rbp + 4480]
 lea rsi, [rbp + 4496]
 lea rdx, [rbp + 976]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00316_2:
 jmp xchain00281_n89_α
 xchain00281_n83_β:
 jmp xchain00281_n78_α
# IR_FIELD_GET lv
 xchain00281_n84_α:
 mov rdi, qword ptr [rip + .Lx00317_0]
 mov rsi, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00281_n85_α
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00281_n90_α
 xchain00281_n84_β:
 jmp xchain00281_n85_α
.Lx00317_0:
 .quad .Lx00317_0_s
.Lx00317_0_s:
 .string "aindex"
# IR_GEN_SCAN
 xchain00281_n85_α:
 lea rdi, [rbp + 80]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 80]
 mov r14, qword ptr [rbp + 88]
 mov r15, qword ptr [rbp + 96]
 jmp xchain00281_n6_α
 xchain00281_n85_β:
 jmp xchain00281_n6_α
# IR_LIT_INTEGER
 xchain00281_n86_α:
 mov qword ptr [rbp + 3664], 6
 mov rax, qword ptr [rip + .Lx00318_0]
 mov qword ptr [rbp + 3672], rax
 jmp xchain00281_n91_α
 xchain00281_n86_β:
 jmp xchain00281_n27_α
.Lx00318_0:
 .quad 4
 xchain00281_n87_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 2800]
 cmp eax, 100
 je .Lx00319_0
 mov eax, dword ptr [rbp + 2960]
 cmp eax, 100
 je .Lx00319_0
 mov eax, dword ptr [rbp + 2800]
 cmp eax, 6
 jne .Lx00319_2
 mov eax, dword ptr [rbp + 2960]
 cmp eax, 6
 jne .Lx00319_2
.Lx00319_1:
 mov rax, qword ptr [rbp + 2808]
 mov rcx, qword ptr [rbp + 2968]
 cmp rax, rcx
 jle xchain00281_n34_α
 mov rcx, qword ptr [rbp + 2960]
 mov qword ptr [rbp + 2768], rcx
 mov rcx, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 2776], rcx
 jmp xchain00281_n92_α
.Lx00319_0:
 mov rdi, qword ptr [rbp + 2800]
 mov rsi, qword ptr [rbp + 2808]
 mov rdx, qword ptr [rbp + 2960]
 mov rcx, qword ptr [rbp + 2968]
 mov r8d, 7
 lea r9, [rbp + 2768]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00319_1
 cmp eax, 1
 je xchain00281_n34_α
 jmp xchain00281_n92_α
.Lx00319_2:
 mov rdi, qword ptr [rbp + 2800]
 mov rsi, qword ptr [rbp + 2808]
 mov rdx, qword ptr [rbp + 2960]
 mov rcx, qword ptr [rbp + 2968]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00281_n34_α
 mov rax, qword ptr [rbp + 2960]
 mov qword ptr [rbp + 2768], rax
 mov rax, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 2776], rax
 jmp xchain00281_n92_α
 xchain00281_n87_β:
 jmp xchain00281_n34_α
 xchain00281_n88_α:
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
  .Lrkfn1140: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1140]
 lea rsi, [rbp + 1936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 cmp eax, 99
 je xchain00281_n43_α
 jmp xchain00281_n93_α
 xchain00281_n88_β:
 jmp xchain00281_n43_α
# IR_COERCE_NUMERIC
 xchain00281_n89_α:
 mov eax, dword ptr [rbp + 4496]
 cmp eax, 7
 je .Lx00320_1
 cmp eax, 6
 jne .Lx00320_0
 mov eax, dword ptr [rbp + 4480]
 cmp eax, 6
 jne .Lx00320_0
.Lx00320_1:
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 952], rax
 jmp .Lx00320_2
.Lx00320_0:
 lea rdi, [rbp + 4496]
 lea rsi, [rbp + 4480]
 lea rdx, [rbp + 944]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00320_2:
 jmp xchain00281_n94_α
 xchain00281_n89_β:
 jmp xchain00281_n78_α
# IR_LIT_INTEGER
 xchain00281_n90_α:
 mov qword ptr [rbp + 304], 6
 mov rax, qword ptr [rip + .Lx00321_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00281_n95_α
 xchain00281_n90_β:
 jmp xchain00281_n85_α
.Lx00321_0:
 .quad 1
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00281_n91_α:
 sub rsp, 16
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00322_239
 add rsp, 16
 jmp xchain00281_n27_α
.Lx00322_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00322_240
 add rsp, 16
 jmp xchain00281_n27_α
.Lx00322_240:
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
 jmp xchain00281_n96_α
 xchain00281_n91_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00281_n27_α
# IR_VAR
 xchain00281_n92_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 jmp xchain00281_n97_α
 xchain00281_n92_β:
 jmp xchain00281_n98_α
# IR_VAR
 xchain00281_n93_α:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 2248], rax
 jmp xchain00281_n99_α
 xchain00281_n93_β:
 jmp xchain00281_n43_α
 xchain00281_n94_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 976]
 cmp eax, 100
 je .Lx00323_0
 mov eax, dword ptr [rbp + 944]
 cmp eax, 100
 je .Lx00323_0
 mov eax, dword ptr [rbp + 976]
 cmp eax, 6
 jne .Lx00323_2
 mov eax, dword ptr [rbp + 944]
 cmp eax, 6
 jne .Lx00323_2
.Lx00323_1:
 mov rax, qword ptr [rbp + 984]
 mov rcx, qword ptr [rbp + 952]
 sub rax, rcx
 mov qword ptr [rbp + 912], 6
 mov qword ptr [rbp + 920], rax
 jmp xchain00281_n00072_α
.Lx00323_0:
 mov rdi, qword ptr [rbp + 976]
 mov rsi, qword ptr [rbp + 984]
 mov rdx, qword ptr [rbp + 944]
 mov rcx, qword ptr [rbp + 952]
 mov r8d, 1
 lea r9, [rbp + 912]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00323_3
.Lx00323_2:
 mov rdi, qword ptr [rbp + 976]
 mov rsi, qword ptr [rbp + 984]
 mov rdx, qword ptr [rbp + 944]
 mov rcx, qword ptr [rbp + 952]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00281_n78_α
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
.Lx00323_3:
 jmp xchain00281_n00072_α
 xchain00281_n94_β:
 jmp xchain00281_n78_α
# IR_LIT_INTEGER
 xchain00281_n95_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00324_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00281_n00074_α
 xchain00281_n95_β:
 jmp xchain00281_n85_α
.Lx00324_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00281_n96_α:
 mov qword ptr [rbp + 3696], 6
 mov rax, qword ptr [rip + .Lx00325_0]
 mov qword ptr [rbp + 3704], rax
 jmp xchain00281_n00001_α
 xchain00281_n96_β:
 jmp xchain00281_n27_α
.Lx00325_0:
 .quad 5000
# IR_FIELD_GET lv
 xchain00281_n97_α:
 mov rdi, qword ptr [rip + .Lx00326_0]
 mov rsi, qword ptr [rbp + 2576]
 mov rdx, qword ptr [rbp + 2584]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00281_n98_α
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 jmp xchain00281_n00077_α
 xchain00281_n97_β:
 jmp xchain00281_n98_α
.Lx00326_0:
 .quad .Lx00326_0_s
.Lx00326_0_s:
 .string "rev"
 xchain00281_n98_α:
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
 jmp xchain00281_n00078_α
 xchain00281_n98_β:
 jmp xchain00281_n00078_α
# IR_LIT_INTEGER
 xchain00281_n99_α:
 mov qword ptr [rbp + 2272], 6
 mov rax, qword ptr [rip + .Lx00327_0]
 mov qword ptr [rbp + 2280], rax
 jmp xchain00281_n00079_α
 xchain00281_n99_β:
 jmp xchain00281_n43_α
.Lx00327_0:
 .quad 7
# IR_VAR
 xchain00281_n00072_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain00281_n00080_α
 xchain00281_n00072_β:
 jmp xchain00281_n78_α
# IR_VAR
 xchain00281_n00074_α:
 mov rax, qword ptr [rbp + 4464]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 4472]
 mov qword ptr [rbp + 712], rax
 jmp xchain00281_n00082_α
 xchain00281_n00074_β:
 jmp xchain00281_n85_α
# IR_COERCE_NUMERIC
 xchain00281_n00001_α:
 mov eax, dword ptr [rbp + 3632]
 cmp eax, 7
 je .Lx00328_1
 cmp eax, 6
 jne .Lx00328_0
 mov eax, dword ptr [rbp + 3696]
 cmp eax, 6
 jne .Lx00328_0
.Lx00328_1:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3608], rax
 jmp .Lx00328_2
.Lx00328_0:
 lea rdi, [rbp + 3632]
 lea rsi, [rbp + 3696]
 lea rdx, [rbp + 3600]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00328_2:
 jmp xchain00281_n00083_α
 xchain00281_n00001_β:
 jmp xchain00281_n27_α
# IR_LIT_INTEGER
 xchain00281_n00077_α:
 mov qword ptr [rbp + 2624], 6
 mov rax, qword ptr [rip + .Lx00329_0]
 mov qword ptr [rbp + 2632], rax
 jmp xchain00281_n00002_α
 xchain00281_n00077_β:
 jmp xchain00281_n98_α
.Lx00329_0:
 .quad 1
 xchain00281_n00078_α:
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
 jmp xchain00281_n00084_α
 xchain00281_n00078_β:
 jmp xchain00281_n38_α
 xchain00281_n00079_α:
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
  .Lrkfn1163: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1163]
 lea rsi, [rbp + 2192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je xchain00281_n43_α
 jmp xchain00281_n00086_α
 xchain00281_n00079_β:
 jmp xchain00281_n43_α
# IR_VAR
 xchain00281_n00080_α:
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 1304], rax
 jmp xchain00281_n00088_α
 xchain00281_n00080_β:
 jmp xchain00281_n78_α
# KEYWORD_read
 xchain00281_n00082_α:
 mov rdi, qword ptr [rip + .Lx00330_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00281_n00090_α
 xchain00281_n00082_β:
 jmp xchain00281_n85_α
.Lx00330_0:
 .quad .Lx00330_0_s
.Lx00330_0_s:
 .string "&pi"
 xchain00281_n00083_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3600]
 cmp eax, 100
 je .Lx00331_0
 mov eax, dword ptr [rbp + 3600]
 cmp eax, 6
 jne .Lx00331_2
.Lx00331_1:
 mov rax, qword ptr [rbp + 3608]
 mov rcx, 5000
 sub rax, rcx
 mov qword ptr [rbp + 3568], 6
 mov qword ptr [rbp + 3576], rax
 jmp xchain00281_n00092_α
.Lx00331_0:
 mov rdi, qword ptr [rbp + 3600]
 mov rsi, qword ptr [rbp + 3608]
 mov rdx, qword ptr [rbp + 3696]
 mov rcx, qword ptr [rbp + 3704]
 mov r8d, 1
 lea r9, [rbp + 3568]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00331_3
.Lx00331_2:
 mov rdi, qword ptr [rbp + 3600]
 mov rsi, qword ptr [rbp + 3608]
 mov rdx, qword ptr [rbp + 3696]
 mov rcx, qword ptr [rbp + 3704]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00281_n27_α
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
.Lx00331_3:
 jmp xchain00281_n00092_α
 xchain00281_n00083_β:
 jmp xchain00281_n27_α
# IR_ASSIGN_VAR
 xchain00281_n00002_α:
 mov rdi, qword ptr [rbp + 2544]
 mov rsi, qword ptr [rbp + 2552]
 mov rdx, qword ptr [rbp + 2624]
 mov rcx, qword ptr [rbp + 2632]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00281_n98_α
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 jmp xchain00281_n98_α
 xchain00281_n00002_β:
 jmp xchain00281_n98_α
 xchain00281_n00084_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2344], rax
 jmp xchain00281_n00003_α
xchain00281_n00084_β:
 jmp xchain00281_n38_α
 xchain00281_n00086_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1920]
 mov rsi, qword ptr [rbp + 1928]
 mov rdx, qword ptr [rbp + 2176]
 mov rcx, qword ptr [rbp + 2184]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain00281_n00093_α
 xchain00281_n00086_β:
 jmp xchain00281_n43_α
# IR_VAR
 xchain00281_n00088_α:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 1336], rax
 jmp xchain00281_n00094_α
 xchain00281_n00088_β:
 jmp xchain00281_n78_α
# IR_COERCE_NUMERIC
 xchain00281_n00090_α:
 mov eax, dword ptr [rbp + 4464]
 cmp eax, 7
 je .Lx00332_1
 cmp eax, 6
 jne .Lx00332_0
 mov eax, dword ptr [rbp + 736]
 cmp eax, 6
 jne .Lx00332_0
.Lx00332_1:
 mov rax, qword ptr [rbp + 4464]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 4472]
 mov qword ptr [rbp + 680], rax
 jmp .Lx00332_2
.Lx00332_0:
 lea rdi, [rbp + 4464]
 lea rsi, [rbp + 736]
 lea rdx, [rbp + 672]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00332_2:
 jmp xchain00281_n00096_α
 xchain00281_n00090_β:
 jmp xchain00281_n85_α
# IR_COERCE_NUMERIC
 xchain00281_n00092_α:
 mov eax, dword ptr [rbp + 4480]
 cmp eax, 7
 je .Lx00333_1
 cmp eax, 6
 jne .Lx00333_0
 mov eax, dword ptr [rbp + 3568]
 cmp eax, 6
 jne .Lx00333_0
.Lx00333_1:
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 3504], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 3512], rax
 jmp .Lx00333_2
.Lx00333_0:
 lea rdi, [rbp + 4480]
 lea rsi, [rbp + 3568]
 lea rdx, [rbp + 3504]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00333_2:
 jmp xchain00281_n00098_α
 xchain00281_n00092_β:
 jmp xchain00281_n27_α
# IR_MOVE_LABEL
 xchain00281_n00003_α:
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2312], rax
 lea rax, [rip + xchain00281_n38_α]
 mov qword ptr [rbp + 2320], rax
 jmp xchain00281_n38_α
 xchain00281_n00003_β:
 jmp xchain00281_n38_α
# IR_ASSIGN_VAR
 xchain00281_n00093_α:
 mov rdi, qword ptr [rbp + 1808]
 mov rsi, qword ptr [rbp + 1816]
 mov rdx, qword ptr [rbp + 1888]
 mov rcx, qword ptr [rbp + 1896]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00281_n43_α
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain00281_n43_α
 xchain00281_n00093_β:
 jmp xchain00281_n43_α
# IR_COERCE_NUMERIC
 xchain00281_n00094_α:
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 7
 je .Lx00334_1
 cmp eax, 6
 jne .Lx00334_0
 mov eax, dword ptr [rbp + 4528]
 cmp eax, 6
 jne .Lx00334_0
.Lx00334_1:
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 1272], rax
 jmp .Lx00334_2
.Lx00334_0:
 lea rdi, [rbp + 4512]
 lea rsi, [rbp + 4528]
 lea rdx, [rbp + 1264]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00334_2:
 jmp xchain00281_n00099_α
 xchain00281_n00094_β:
 jmp xchain00281_n78_α
# IR_COERCE_NUMERIC
 xchain00281_n00096_α:
 mov eax, dword ptr [rbp + 736]
 cmp eax, 7
 je .Lx00335_1
 cmp eax, 6
 jne .Lx00335_0
 mov eax, dword ptr [rbp + 4464]
 cmp eax, 6
 jne .Lx00335_0
.Lx00335_1:
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 648], rax
 jmp .Lx00335_2
.Lx00335_0:
 lea rdi, [rbp + 736]
 lea rsi, [rbp + 4464]
 lea rdx, [rbp + 640]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00335_2:
 jmp xchain00281_n00101_α
 xchain00281_n00096_β:
 jmp xchain00281_n85_α
# IR_COERCE_NUMERIC
 xchain00281_n00098_α:
 mov eax, dword ptr [rbp + 3568]
 cmp eax, 7
 je .Lx00336_1
 cmp eax, 6
 jne .Lx00336_0
 mov eax, dword ptr [rbp + 4480]
 cmp eax, 6
 jne .Lx00336_0
.Lx00336_1:
 mov rax, qword ptr [rbp + 3568]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 3576]
 mov qword ptr [rbp + 3480], rax
 jmp .Lx00336_2
.Lx00336_0:
 lea rdi, [rbp + 3568]
 lea rsi, [rbp + 4480]
 lea rdx, [rbp + 3472]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00336_2:
 jmp xchain00281_n00103_α
 xchain00281_n00098_β:
 jmp xchain00281_n27_α
# IR_COERCE_NUMERIC
 xchain00281_n00099_α:
 mov eax, dword ptr [rbp + 4528]
 cmp eax, 7
 je .Lx00337_1
 cmp eax, 6
 jne .Lx00337_0
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 6
 jne .Lx00337_0
.Lx00337_1:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 1240], rax
 jmp .Lx00337_2
.Lx00337_0:
 lea rdi, [rbp + 4528]
 lea rsi, [rbp + 4512]
 lea rdx, [rbp + 1232]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00337_2:
 jmp xchain00281_n00104_α
 xchain00281_n00099_β:
 jmp xchain00281_n78_α
 xchain00281_n00101_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 672]
 cmp eax, 100
 je .Lx00338_0
 mov eax, dword ptr [rbp + 640]
 cmp eax, 100
 je .Lx00338_0
 mov eax, dword ptr [rbp + 672]
 cmp eax, 6
 jne .Lx00338_2
 mov eax, dword ptr [rbp + 640]
 cmp eax, 6
 jne .Lx00338_2
.Lx00338_1:
 mov rax, qword ptr [rbp + 680]
 mov rcx, qword ptr [rbp + 648]
 cqo
 idiv rcx
 mov qword ptr [rbp + 608], 6
 mov qword ptr [rbp + 616], rax
 jmp xchain00281_n00105_α
.Lx00338_0:
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 mov r8d, 3
 lea r9, [rbp + 608]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00338_3
.Lx00338_2:
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00281_n85_α
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
.Lx00338_3:
 jmp xchain00281_n00105_α
 xchain00281_n00101_β:
 jmp xchain00281_n85_α
 xchain00281_n00103_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3504]
 cmp eax, 100
 je .Lx00339_0
 mov eax, dword ptr [rbp + 3472]
 cmp eax, 100
 je .Lx00339_0
 mov eax, dword ptr [rbp + 3504]
 cmp eax, 6
 jne .Lx00339_2
 mov eax, dword ptr [rbp + 3472]
 cmp eax, 6
 jne .Lx00339_2
.Lx00339_1:
 mov rax, qword ptr [rbp + 3512]
 mov rcx, qword ptr [rbp + 3480]
 add rax, rcx
 mov qword ptr [rbp + 3440], 6
 mov qword ptr [rbp + 3448], rax
 jmp xchain00281_n00106_α
.Lx00339_0:
 mov rdi, qword ptr [rbp + 3504]
 mov rsi, qword ptr [rbp + 3512]
 mov rdx, qword ptr [rbp + 3472]
 mov rcx, qword ptr [rbp + 3480]
 mov r8d, 0
 lea r9, [rbp + 3440]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00339_3
.Lx00339_2:
 mov rdi, qword ptr [rbp + 3504]
 mov rsi, qword ptr [rbp + 3512]
 mov rdx, qword ptr [rbp + 3472]
 mov rcx, qword ptr [rbp + 3480]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00281_n27_α
 mov qword ptr [rbp + 3440], rax
 mov qword ptr [rbp + 3448], rdx
.Lx00339_3:
 jmp xchain00281_n00106_α
 xchain00281_n00103_β:
 jmp xchain00281_n27_α
 xchain00281_n00104_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 100
 je .Lx00340_0
 mov eax, dword ptr [rbp + 1232]
 cmp eax, 100
 je .Lx00340_0
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 6
 jne .Lx00340_2
 mov eax, dword ptr [rbp + 1232]
 cmp eax, 6
 jne .Lx00340_2
.Lx00340_1:
 mov rax, qword ptr [rbp + 1272]
 mov rcx, qword ptr [rbp + 1240]
 sub rax, rcx
 mov qword ptr [rbp + 1200], 6
 mov qword ptr [rbp + 1208], rax
 jmp xchain00281_n00004_α
.Lx00340_0:
 mov rdi, qword ptr [rbp + 1264]
 mov rsi, qword ptr [rbp + 1272]
 mov rdx, qword ptr [rbp + 1232]
 mov rcx, qword ptr [rbp + 1240]
 mov r8d, 1
 lea r9, [rbp + 1200]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00340_3
.Lx00340_2:
 mov rdi, qword ptr [rbp + 1264]
 mov rsi, qword ptr [rbp + 1272]
 mov rdx, qword ptr [rbp + 1232]
 mov rcx, qword ptr [rbp + 1240]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00281_n78_α
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
.Lx00340_3:
 jmp xchain00281_n00004_α
 xchain00281_n00104_β:
 jmp xchain00281_n78_α
# IR_LIT_REAL
 xchain00281_n00105_α:
 mov qword ptr [rbp + 768], 7
 mov rax, qword ptr [rip + .Lx00341_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00281_n00107_α
 xchain00281_n00105_β:
 jmp xchain00281_n85_α
.Lx00341_0:
 .quad 4612248968380809216
 xchain00281_n00106_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3440]
 mov rdx, qword ptr [rbp + 3448]
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain00281_n27_α
 xchain00281_n00106_β:
 jmp xchain00281_n27_α
# IR_COERCE_NUMERIC
 xchain00281_n00004_α:
 mov eax, dword ptr [rbp + 1168]
 cmp eax, 7
 je .Lx00342_1
 cmp eax, 6
 jne .Lx00342_0
 mov eax, dword ptr [rbp + 1200]
 cmp eax, 6
 jne .Lx00342_0
.Lx00342_1:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1144], rax
 jmp .Lx00342_2
.Lx00342_0:
 lea rdi, [rbp + 1168]
 lea rsi, [rbp + 1200]
 lea rdx, [rbp + 1136]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00342_2:
 jmp xchain00281_n00109_α
 xchain00281_n00004_β:
 jmp xchain00281_n78_α
# IR_COERCE_NUMERIC
 xchain00281_n00107_α:
 mov eax, dword ptr [rbp + 608]
 cmp eax, 7
 je .Lx00343_1
 cmp eax, 6
 jne .Lx00343_0
 mov eax, dword ptr [rbp + 768]
 cmp eax, 6
 jne .Lx00343_0
.Lx00343_1:
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 584], rax
 jmp .Lx00343_2
.Lx00343_0:
 lea rdi, [rbp + 608]
 lea rsi, [rbp + 768]
 lea rdx, [rbp + 576]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00343_2:
 jmp xchain00281_n00111_α
 xchain00281_n00107_β:
 jmp xchain00281_n85_α
# IR_COERCE_NUMERIC
 xchain00281_n00109_α:
 mov eax, dword ptr [rbp + 1200]
 cmp eax, 7
 je .Lx00344_1
 cmp eax, 6
 jne .Lx00344_0
 mov eax, dword ptr [rbp + 1168]
 cmp eax, 6
 jne .Lx00344_0
.Lx00344_1:
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1112], rax
 jmp .Lx00344_2
.Lx00344_0:
 lea rdi, [rbp + 1200]
 lea rsi, [rbp + 1168]
 lea rdx, [rbp + 1104]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00344_2:
 jmp xchain00281_n00112_α
 xchain00281_n00109_β:
 jmp xchain00281_n78_α
 xchain00281_n00111_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 768]
 mov rcx, qword ptr [rbp + 776]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00281_n85_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00281_n00113_α
 xchain00281_n00111_β:
 jmp xchain00281_n85_α
 xchain00281_n00112_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 100
 je .Lx00345_0
 mov eax, dword ptr [rbp + 1104]
 cmp eax, 100
 je .Lx00345_0
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 6
 jne .Lx00345_2
 mov eax, dword ptr [rbp + 1104]
 cmp eax, 6
 jne .Lx00345_2
.Lx00345_1:
 mov rax, qword ptr [rbp + 1144]
 mov rcx, qword ptr [rbp + 1112]
 imul rax, rcx
 mov qword ptr [rbp + 1072], 6
 mov qword ptr [rbp + 1080], rax
 jmp xchain00281_n00115_α
.Lx00345_0:
 mov rdi, qword ptr [rbp + 1136]
 mov rsi, qword ptr [rbp + 1144]
 mov rdx, qword ptr [rbp + 1104]
 mov rcx, qword ptr [rbp + 1112]
 mov r8d, 2
 lea r9, [rbp + 1072]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00345_3
.Lx00345_2:
 mov rdi, qword ptr [rbp + 1136]
 mov rsi, qword ptr [rbp + 1144]
 mov rdx, qword ptr [rbp + 1104]
 mov rcx, qword ptr [rbp + 1112]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00281_n78_α
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
.Lx00345_3:
 jmp xchain00281_n00115_α
 xchain00281_n00112_β:
 jmp xchain00281_n78_α
# IR_COERCE_NUMERIC
 xchain00281_n00113_α:
 mov eax, dword ptr [rbp + 544]
 cmp eax, 7
 je .Lx00346_1
 cmp eax, 6
 jne .Lx00346_0
 mov eax, dword ptr [rbp + 512]
 cmp eax, 6
 jne .Lx00346_0
.Lx00346_1:
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 488], rax
 jmp .Lx00346_2
.Lx00346_0:
 lea rdi, [rbp + 544]
 lea rsi, [rbp + 512]
 lea rdx, [rbp + 480]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00346_2:
 jmp xchain00281_n00005_α
 xchain00281_n00113_β:
 jmp xchain00281_n85_α
 xchain00281_n00115_α:
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
  .Lrkfn1204: .string "atan"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1204]
 lea rsi, [rbp + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain00281_n78_α
 jmp xchain00281_n00117_α
 xchain00281_n00115_β:
 jmp xchain00281_n78_α
 xchain00281_n00005_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 480]
 cmp eax, 100
 je .Lx00347_0
 mov eax, dword ptr [rbp + 480]
 cmp eax, 6
 jne .Lx00347_2
.Lx00347_1:
 mov rax, 5
 mov rcx, qword ptr [rbp + 488]
 imul rax, rcx
 mov qword ptr [rbp + 448], 6
 mov qword ptr [rbp + 456], rax
 jmp xchain00281_n00118_α
.Lx00347_0:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 mov r8d, 2
 lea r9, [rbp + 448]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00347_3
.Lx00347_2:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00281_n85_α
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
.Lx00347_3:
 jmp xchain00281_n00118_α
 xchain00281_n00005_β:
 jmp xchain00281_n85_α
 xchain00281_n00117_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00281_n78_α
 xchain00281_n00117_β:
 jmp xchain00281_n78_α
 xchain00281_n00118_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
  .section .rodata
  .Lrkfn1208: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1208]
 lea rsi, [rbp + 416]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain00281_n85_α
 jmp xchain00281_n00119_α
 xchain00281_n00118_β:
 jmp xchain00281_n85_α
# IR_LIT_INTEGER
 xchain00281_n00119_α:
 mov qword ptr [rbp + 800], 6
 mov rax, qword ptr [rip + .Lx00348_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain00281_n00120_α
 xchain00281_n00119_β:
 jmp xchain00281_n85_α
.Lx00348_0:
 .quad 5
# IR_COERCE_NUMERIC
 xchain00281_n00120_α:
 mov eax, dword ptr [rbp + 400]
 cmp eax, 7
 je .Lx00349_1
 cmp eax, 6
 jne .Lx00349_0
 mov eax, dword ptr [rbp + 800]
 cmp eax, 6
 jne .Lx00349_0
.Lx00349_1:
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 jmp .Lx00349_2
.Lx00349_0:
 lea rdi, [rbp + 400]
 lea rsi, [rbp + 800]
 lea rdx, [rbp + 368]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00349_2:
 jmp xchain00281_n00121_α
 xchain00281_n00120_β:
 jmp xchain00281_n85_α
 xchain00281_n00121_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 368]
 cmp eax, 100
 je .Lx00350_0
 mov eax, dword ptr [rbp + 368]
 cmp eax, 6
 jne .Lx00350_2
.Lx00350_1:
 mov rax, qword ptr [rbp + 376]
 mov rcx, 5
 cqo
 idiv rcx
 mov rax, rdx
 mov qword ptr [rbp + 336], 6
 mov qword ptr [rbp + 344], rax
 jmp xchain00281_n00124_α
.Lx00350_0:
 mov rdi, qword ptr [rbp + 368]
 mov rsi, qword ptr [rbp + 376]
 mov rdx, qword ptr [rbp + 800]
 mov rcx, qword ptr [rbp + 808]
 mov r8d, 4
 lea r9, [rbp + 336]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00350_3
.Lx00350_2:
 mov rdi, qword ptr [rbp + 368]
 mov rsi, qword ptr [rbp + 376]
 mov rdx, qword ptr [rbp + 800]
 mov rcx, qword ptr [rbp + 808]
 mov r8d, 4
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00281_n85_α
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
.Lx00350_3:
 jmp xchain00281_n00124_α
 xchain00281_n00121_β:
 jmp xchain00281_n85_α
# IR_COERCE_NUMERIC
 xchain00281_n00124_α:
 mov eax, dword ptr [rbp + 336]
 cmp eax, 7
 je .Lx00351_1
 cmp eax, 6
 jne .Lx00351_0
 mov eax, dword ptr [rbp + 304]
 cmp eax, 6
 jne .Lx00351_0
.Lx00351_1:
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 280], rax
 jmp .Lx00351_2
.Lx00351_0:
 lea rdi, [rbp + 336]
 lea rsi, [rbp + 304]
 lea rdx, [rbp + 272]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00351_2:
 jmp xchain00281_n00122_α
 xchain00281_n00124_β:
 jmp xchain00281_n85_α
 xchain00281_n00122_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 272]
 cmp eax, 100
 je .Lx00352_0
 mov eax, dword ptr [rbp + 272]
 cmp eax, 6
 jne .Lx00352_2
.Lx00352_1:
 mov rax, 1
 mov rcx, qword ptr [rbp + 280]
 add rax, rcx
 mov qword ptr [rbp + 240], 6
 mov qword ptr [rbp + 248], rax
 jmp xchain00281_n00123_α
.Lx00352_0:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 272]
 mov rcx, qword ptr [rbp + 280]
 mov r8d, 0
 lea r9, [rbp + 240]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00352_3
.Lx00352_2:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 272]
 mov rcx, qword ptr [rbp + 280]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00281_n85_α
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
.Lx00352_3:
 jmp xchain00281_n00123_α
 xchain00281_n00122_β:
 jmp xchain00281_n85_α
# IR_ASSIGN_VAR
 xchain00281_n00123_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00281_n85_α
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00281_n00126_α
 xchain00281_n00123_β:
 jmp xchain00281_n85_α
 xchain00281_n00126_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 152], rax
 jmp xchain00281_n00127_α
xchain00281_n00126_β:
 jmp xchain00281_n85_α
# IR_GEN_SCAN
 xchain00281_n00127_α:
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 120], rax
 lea rdi, [rbp + 80]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 80]
 mov r14, qword ptr [rbp + 88]
 mov r15, qword ptr [rbp + 96]
 jmp xchain00281_n6_α
 xchain00281_n00127_β:
 jmp xchain00281_n6_α
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
 xchain00353_n0_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain00353_n1_α
 xchain00353_n0_β:
 jmp xchain00353_n3_α
# IR_NULLTEST_VAR
 xchain00353_n1_α:
 mov eax, dword ptr [rbp + 3424]
 cmp eax, 99
 je xchain00353_n3_α
 mov rdi, qword ptr [rbp + 3424]
 mov rsi, qword ptr [rbp + 3432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00353_n3_α
 cmp eax, 0
 jne xchain00353_n3_α
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3464], rax
 jmp xchain00353_n2_α
 xchain00353_n1_β:
 jmp xchain00353_n3_α
# IR_LIT_CHARSET
 xchain00353_n2_α:
 mov qword ptr [rbp + 3552], 1
 mov dword ptr [rbp + 3556], -1
 mov rax, qword ptr [rip + .Lx00354_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain00353_n4_α
 xchain00353_n2_β:
 jmp xchain00353_n3_α
.Lx00354_0:
 .quad .Lx00354_0_s
.Lx00354_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00353_n3_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1226: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1226]
 lea rsi, [rbp + 3408]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 cmp eax, 99
 je xchain00353_n6_α
 jmp xchain00353_n5_α
 xchain00353_n3_β:
 jmp xchain00353_n6_α
 xchain00353_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3552] -> [zr+3520]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3520], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3528], rax
  .section .rodata
  .Lrkfn1228: .string "string"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1228]
 lea rsi, [rbp + 3520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 cmp eax, 99
 je xchain00353_n3_α
 jmp xchain00353_n7_α
 xchain00353_n4_β:
 jmp xchain00353_n3_α
 xchain00353_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3392]
 mov rdx, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain00353_n6_α
 xchain00353_n5_β:
 jmp xchain00353_n6_α
# IR_MAKE_LIST
 xchain00353_n6_α:
 lea rdi, [rbp + 3376]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain00353_n8_α
 xchain00353_n6_β:
 jmp xchain00353_n9_α
# IR_ASSIGN_VAR
 xchain00353_n7_α:
 mov rdi, qword ptr [rbp + 3456]
 mov rsi, qword ptr [rbp + 3464]
 mov rdx, qword ptr [rbp + 3504]
 mov rcx, qword ptr [rbp + 3512]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00353_n3_α
 mov qword ptr [rbp + 3488], rax
 mov qword ptr [rbp + 3496], rdx
 jmp xchain00353_n3_α
 xchain00353_n7_β:
 jmp xchain00353_n3_α
 xchain00353_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3360]
 mov rdx, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain00353_n9_α
 xchain00353_n8_β:
 jmp xchain00353_n9_α
# IR_VAR
 xchain00353_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00353_n10_α
 xchain00353_n9_β:
 jmp xchain00353_n11_α
 xchain00353_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn1237: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1237]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00353_n11_α
 jmp xchain00353_n12_α
 xchain00353_n10_β:
 jmp xchain00353_n11_α
# IR_VAR
 xchain00353_n11_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 152], rax
 jmp xchain00353_n13_α
 xchain00353_n11_β:
 jmp xchain00353_n14_α
 xchain00353_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00353_n15_α
 xchain00353_n12_β:
 jmp xchain00353_n11_α
# IR_VAR
 xchain00353_n13_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 232], rax
 jmp xchain00353_n16_α
 xchain00353_n13_β:
 jmp xchain00353_n14_α
# IR_VAR
 xchain00353_n14_α:
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 56], rax
 jmp xchain00353_n17_α
 xchain00353_n14_β:
 jmp proc_options_ω
# IR_VAR
 xchain00353_n15_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3320], rax
 jmp xchain00353_n18_α
 xchain00353_n15_β:
 jmp xchain00353_n9_α
 xchain00353_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1248: .string "pull"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1248]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00353_n14_α
 jmp xchain00353_n19_α
 xchain00353_n16_β:
 jmp xchain00353_n14_α
# IR_RETURN
 xchain00353_n17_α:
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_options_γ
# IR_GEN_SCAN
 xchain00353_n18_α:
 mov rdi, qword ptr [rbp + 3312]
 mov rsi, qword ptr [rbp + 3320]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00353_n20_α
 xchain00353_n18_β:
 jmp xchain00353_n9_α
 xchain00353_n19_α:
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
  .Lrkfn1253: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1253]
 lea rsi, [rbp + 96]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00353_n14_α
 jmp xchain00353_n11_α
 xchain00353_n19_β:
 jmp xchain00353_n14_α
# IR_LIT_STRING
 xchain00353_n20_α:
 mov qword ptr [rbp + 3280], 1
 mov rax, qword ptr [rip + .Lx00355_0]
 mov qword ptr [rbp + 3288], rax
 jmp xchain00353_n21_α
 xchain00353_n20_β:
 jmp xchain00353_n23_α
.Lx00355_0:
 .quad .Lx00355_0_s
.Lx00355_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00353_n21_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00356_239
 add rsp, 16
 jmp xchain00353_n23_α
.Lx00356_239:
 mov rdi, qword ptr [rip + .Lx00356_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00356_240
 add rsp, 16
 jmp xchain00353_n23_α
.Lx00356_240:
 mov qword ptr [rbp + 3248], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 3256], rax
 jmp xchain00353_n22_α
 xchain00353_n21_β:
 add rsp, 16
 jmp xchain00353_n23_α
.Lx00356_0:
 .quad .Lx00356_0_s
.Lx00356_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00353_n22_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 3256]
 cmp rax, 1
 jge .Lx00357_0
 add rax, r15
 add rax, 1
.Lx00357_0:
 cmp rax, 1
 jge .Lx00357_239
 add rsp, 16
 jmp xchain00353_n23_α
.Lx00357_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00357_240
 add rsp, 16
 jmp xchain00353_n23_α
.Lx00357_240:
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
 jmp xchain00353_n24_α
 xchain00353_n22_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00353_n23_α
# IR_VAR
 xchain00353_n23_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 3048], rax
 jmp xchain00353_n25_α
 xchain00353_n23_β:
 jmp xchain00353_n29_α
# IR_LIT_INTEGER
 xchain00353_n24_α:
 mov qword ptr [rbp + 3184], 6
 mov rax, qword ptr [rip + .Lx00358_0]
 mov qword ptr [rbp + 3192], rax
 jmp xchain00353_n27_α
 xchain00353_n24_β:
 jmp xchain00353_n30_α
.Lx00358_0:
 .quad 0
# IR_VAR
 xchain00353_n25_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3072], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3080], rax
 jmp xchain00353_n28_α
 xchain00353_n25_β:
 jmp xchain00353_n29_α
 xchain00353_n26_α:
 jmp xchain00353_n29_α
xchain00353_n26_β:
 jmp xchain00353_n29_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00353_n27_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00359_0
 add rax, r15
 add rax, 1
.Lx00359_0:
 cmp rax, 1
 jl xchain00353_n30_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00353_n30_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00353_n30_α
 mov qword ptr [rbp + 3152], 6
 mov qword ptr [rbp + 3160], rax
 jmp xchain00353_n23_α
 xchain00353_n27_β:
 jmp xchain00353_n30_α
 xchain00353_n28_α:
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
  .Lrkfn1268: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1268]
 lea rsi, [rbp + 2992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 cmp eax, 99
 je xchain00353_n29_α
 jmp xchain00353_n31_α
 xchain00353_n28_β:
 jmp xchain00353_n29_α
# IR_GEN_SCAN
 xchain00353_n29_α:
 lea rdi, [rbp + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 368]
 mov r14, qword ptr [rbp + 376]
 mov r15, qword ptr [rbp + 384]
 jmp xchain00353_n9_α
 xchain00353_n29_β:
 jmp xchain00353_n9_α
# KEYWORD_null
 xchain00353_n30_α:
 mov qword ptr [rbp + 3120], 0
 mov qword ptr [rbp + 3128], 0
 jmp xchain00353_n32_α
 xchain00353_n30_β:
 jmp xchain00353_n23_α
# IR_MOVE_LABEL
 xchain00353_n31_α:
 mov rax, qword ptr [rbp + 2976]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 2984]
 mov qword ptr [rbp + 440], rax
 lea rax, [rip + xchain00353_n26_α]
 mov qword ptr [rbp + 448], rax
 jmp xchain00353_n33_α
 xchain00353_n31_β:
 jmp xchain00353_n29_α
 xchain00353_n32_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 3104], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3112], rax
 jmp xchain00353_n35_α
xchain00353_n32_β:
 jmp xchain00353_n23_α
 xchain00353_n33_α:
 jmp xchain00353_n36_α
xchain00353_n33_β:
 jmp xchain00353_n36_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00353_n34_α:
 jmp qword ptr [rbp + 448]
 xchain00353_n34_β:
 jmp xchain00353_n29_α
# IR_LIT_STRING
 xchain00353_n35_α:
 mov qword ptr [rbp + 2944], 1
 mov rax, qword ptr [rip + .Lx00360_0]
 mov qword ptr [rbp + 2952], rax
 jmp xchain00353_n37_α
 xchain00353_n35_β:
 jmp xchain00353_n39_α
.Lx00360_0:
 .quad .Lx00360_0_s
.Lx00360_0_s:
 .string "-"
# IR_GEN_SCAN
 xchain00353_n36_α:
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 408], rax
 lea rdi, [rbp + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 368]
 mov r14, qword ptr [rbp + 376]
 mov r15, qword ptr [rbp + 384]
 jmp xchain00353_n9_α
 xchain00353_n36_β:
 jmp xchain00353_n9_α
# IR_SCAN_MATCH
 xchain00353_n37_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00361_239
 add rsp, 16
 jmp xchain00353_n39_α
.Lx00361_239:
 mov rdi, qword ptr [rip + .Lx00361_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00361_240
 add rsp, 16
 jmp xchain00353_n39_α
.Lx00361_240:
 mov qword ptr [rbp + 2912], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 2920], rax
 jmp xchain00353_n38_α
 xchain00353_n37_β:
 add rsp, 16
 jmp xchain00353_n39_α
.Lx00361_0:
 .quad .Lx00361_0_s
.Lx00361_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00353_n38_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 2920]
 cmp rax, 1
 jge .Lx00362_0
 add rax, r15
 add rax, 1
.Lx00362_0:
 cmp rax, 1
 jge .Lx00362_239
 add rsp, 16
 jmp xchain00353_n39_α
.Lx00362_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00362_240
 add rsp, 16
 jmp xchain00353_n39_α
.Lx00362_240:
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
 jmp xchain00353_n40_α
 xchain00353_n38_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00353_n39_α
# IR_LIT_INTEGER
 xchain00353_n39_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00363_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00353_n41_α
 xchain00353_n39_β:
 jmp xchain00353_n29_α
.Lx00363_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00353_n40_α:
 mov qword ptr [rbp + 2848], 6
 mov rax, qword ptr [rip + .Lx00364_0]
 mov qword ptr [rbp + 2856], rax
 jmp xchain00353_n42_α
 xchain00353_n40_β:
 jmp xchain00353_n39_α
.Lx00364_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00353_n41_α:
 sub rsp, 16
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00365_239
 add rsp, 16
 jmp xchain00353_n29_α
.Lx00365_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00365_240
 add rsp, 16
 jmp xchain00353_n29_α
.Lx00365_240:
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
 jmp xchain00353_n43_α
 xchain00353_n41_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00353_n29_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00353_n42_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00366_0
 add rax, r15
 add rax, 1
.Lx00366_0:
 cmp rax, 1
 jl xchain00353_n39_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00353_n39_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00353_n39_α
 mov qword ptr [rbp + 2816], 6
 mov qword ptr [rbp + 2824], rax
 jmp xchain00353_n44_α
 xchain00353_n42_β:
 jmp xchain00353_n39_α
 xchain00353_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00353_n45_α
 xchain00353_n43_β:
 jmp xchain00353_n29_α
 xchain00353_n44_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2808], rax
 jmp xchain00353_n11_α
xchain00353_n44_β:
 jmp xchain00353_n39_α
# IR_VAR
 xchain00353_n45_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2680], rax
 jmp xchain00353_n47_α
 xchain00353_n45_β:
 jmp xchain00353_n48_α
 xchain00353_n46_α:
 jmp xchain00353_n11_α
xchain00353_n46_β:
 jmp xchain00353_n11_α
# IR_VAR
 xchain00353_n47_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 2712], rax
 jmp xchain00353_n49_α
 xchain00353_n47_β:
 jmp xchain00353_n48_α
# IR_LIT_STRING
 xchain00353_n48_α:
 mov qword ptr [rbp + 2464], 1
 mov rax, qword ptr [rip + .Lx00367_0]
 mov qword ptr [rbp + 2472], rax
 jmp xchain00353_n50_α
 xchain00353_n48_β:
 jmp xchain00353_n39_α
.Lx00367_0:
 .quad .Lx00367_0_s
.Lx00367_0_s:
 .string "Unrecognized option: -"
 xchain00353_n49_α:
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
.Lx00368_60:
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
 je xchain00353_n48_α
 jmp xchain00353_n51_α
 xchain00353_n49_β:
 jmp .Lx00368_60
# IR_VAR
 xchain00353_n50_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2504], rax
 jmp xchain00353_n52_α
 xchain00353_n50_β:
 jmp xchain00353_n39_α
# IR_LIT_INTEGER
 xchain00353_n51_α:
 mov qword ptr [rbp + 2736], 6
 mov rax, qword ptr [rip + .Lx00369_0]
 mov qword ptr [rbp + 2744], rax
 jmp xchain00353_n53_α
 xchain00353_n51_β:
 jmp xchain00353_n49_β
.Lx00369_0:
 .quad 1
 xchain00353_n52_α:
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
  .Lrkfn1304: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1304]
 lea rsi, [rbp + 2416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 cmp eax, 99
 je xchain00353_n39_α
 jmp xchain00353_n54_α
 xchain00353_n52_β:
 jmp xchain00353_n39_α
# IR_COERCE_NUMERIC
 xchain00353_n53_α:
 mov eax, dword ptr [rbp + 2608]
 cmp eax, 7
 je .Lx00370_1
 cmp eax, 6
 jne .Lx00370_0
 mov eax, dword ptr [rbp + 2736]
 cmp eax, 6
 jne .Lx00370_0
.Lx00370_1:
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2584], rax
 jmp .Lx00370_2
.Lx00370_0:
 lea rdi, [rbp + 2608]
 lea rsi, [rbp + 2736]
 lea rdx, [rbp + 2576]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00370_2:
 jmp xchain00353_n55_α
 xchain00353_n53_β:
 jmp xchain00353_n48_α
# IR_MOVE_LABEL
 xchain00353_n54_α:
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 568], rax
 lea rax, [rip + xchain00353_n39_α]
 mov qword ptr [rbp + 576], rax
 jmp xchain00353_n39_α
 xchain00353_n54_β:
 jmp xchain00353_n39_α
 xchain00353_n55_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2576]
 cmp eax, 100
 je .Lx00371_0
 mov eax, dword ptr [rbp + 2576]
 cmp eax, 6
 jne .Lx00371_2
.Lx00371_1:
 mov rax, qword ptr [rbp + 2584]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 2544], 6
 mov qword ptr [rbp + 2552], rax
 jmp xchain00353_n57_α
.Lx00371_0:
 mov rdi, qword ptr [rbp + 2576]
 mov rsi, qword ptr [rbp + 2584]
 mov rdx, qword ptr [rbp + 2736]
 mov rcx, qword ptr [rbp + 2744]
 mov r8d, 0
 lea r9, [rbp + 2544]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00371_3
.Lx00371_2:
 mov rdi, qword ptr [rbp + 2576]
 mov rsi, qword ptr [rbp + 2584]
 mov rdx, qword ptr [rbp + 2736]
 mov rcx, qword ptr [rbp + 2744]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00353_n48_α
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
.Lx00371_3:
 jmp xchain00353_n57_α
 xchain00353_n55_β:
 jmp xchain00353_n48_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00353_n56_α:
 jmp qword ptr [rbp + 576]
 xchain00353_n56_β:
 jmp xchain00353_n39_α
 xchain00353_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2544]
 mov rdx, qword ptr [rbp + 2552]
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain00353_n58_α
 xchain00353_n57_β:
 jmp xchain00353_n48_α
# IR_VAR_REF
 xchain00353_n58_α:
 lea rdi, [rbp + 3600]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00353_n59_α
 xchain00353_n58_β:
 jmp xchain00353_n39_α
# IR_VAR
 xchain00353_n59_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 632], rax
 jmp xchain00353_n60_α
 xchain00353_n59_β:
 jmp xchain00353_n39_α
# IR_SUBSCRIPT x[i] variable
 xchain00353_n60_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00353_n39_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00353_n61_α
 xchain00353_n60_β:
 jmp xchain00353_n39_α
# IR_LIT_CHARSET
 xchain00353_n61_α:
 mov qword ptr [rbp + 2240], 1
 mov dword ptr [rbp + 2244], -1
 mov rax, qword ptr [rip + .Lx00372_0]
 mov qword ptr [rbp + 2248], rax
 jmp xchain00353_n62_α
 xchain00353_n61_β:
 jmp xchain00353_n65_α
.Lx00372_0:
 .quad .Lx00372_0_s
.Lx00372_0_s:
 .string "+.:"
# IR_VAR_REF
 xchain00353_n62_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain00353_n63_α
 xchain00353_n62_β:
 jmp xchain00353_n65_α
# IR_VAR
 xchain00353_n63_α:
 mov rax, qword ptr [rbp + 3712]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 2328], rax
 jmp xchain00353_n64_α
 xchain00353_n63_β:
 jmp xchain00353_n65_α
# IR_SUBSCRIPT x[i] variable
 xchain00353_n64_α:
 mov rdi, qword ptr [rbp + 2288]
 mov rsi, qword ptr [rbp + 2296]
 mov rdx, qword ptr [rbp + 2320]
 mov rcx, qword ptr [rbp + 2328]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00353_n65_α
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain00353_n66_α
 xchain00353_n64_β:
 jmp xchain00353_n65_α
# IR_LIT_INTEGER
 xchain00353_n65_α:
 mov qword ptr [rbp + 2144], 6
 mov rax, qword ptr [rip + .Lx00373_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain00353_n67_α
 xchain00353_n65_β:
 jmp xchain00353_n39_α
.Lx00373_0:
 .quad 1
# IR_DEREF variable -> value
 xchain00353_n66_α:
 mov rdi, qword ptr [rbp + 2352]
 mov rsi, qword ptr [rbp + 2360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00353_n65_α
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 jmp xchain00353_n68_α
 xchain00353_n66_β:
 jmp xchain00353_n65_α
# IR_MOVE_LABEL
 xchain00353_n67_α:
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 712], rax
 lea rax, [rip + xchain00353_n39_α]
 mov qword ptr [rbp + 720], rax
 jmp xchain00353_n69_α
 xchain00353_n67_β:
 jmp xchain00353_n39_α
 xchain00353_n68_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2384]
 mov rdx, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 jmp xchain00353_n71_α
 xchain00353_n68_β:
 jmp xchain00353_n65_α
# IR_ASSIGN_VAR
 xchain00353_n69_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00353_n39_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00353_n72_α
 xchain00353_n69_β:
 jmp xchain00353_n39_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00353_n70_α:
 jmp qword ptr [rbp + 720]
 xchain00353_n70_β:
 jmp xchain00353_n39_α
 xchain00353_n71_α:
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
 je xchain00353_n65_α
 jmp xchain00353_n73_α
 xchain00353_n71_β:
 jmp xchain00353_n65_α
# IR_MOVE_LABEL
 xchain00353_n72_α:
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 568], rax
 lea rax, [rip + xchain00353_n70_α]
 mov qword ptr [rbp + 576], rax
 jmp xchain00353_n39_α
 xchain00353_n72_β:
 jmp xchain00353_n39_α
# IR_LIT_STRING
 xchain00353_n73_α:
 mov qword ptr [rbp + 2048], 1
 mov rax, qword ptr [rip + .Lx00374_0]
 mov qword ptr [rbp + 2056], rax
 jmp xchain00353_n74_α
 xchain00353_n73_β:
 jmp xchain00353_n77_α
.Lx00374_0:
 .quad .Lx00374_0_s
.Lx00374_0_s:
 .string ""
# IR_LIT_INTEGER
 xchain00353_n74_α:
 mov qword ptr [rbp + 2112], 6
 mov rax, qword ptr [rip + .Lx00375_0]
 mov qword ptr [rbp + 2120], rax
 jmp xchain00353_n75_α
 xchain00353_n74_β:
 jmp xchain00353_n77_α
.Lx00375_0:
 .quad 0
# IR_SCAN_TAB
 xchain00353_n75_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00376_0
 add rax, r15
 add rax, 1
.Lx00376_0:
 cmp rax, 1
 jge .Lx00376_239
 add rsp, 16
 jmp xchain00353_n77_α
.Lx00376_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00376_240
 add rsp, 16
 jmp xchain00353_n77_α
.Lx00376_240:
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
 jmp xchain00353_n76_α
 xchain00353_n75_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00353_n77_α
 xchain00353_n76_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 2048]
 mov rsi, qword ptr [rbp + 2056]
 mov rdx, qword ptr [rbp + 2080]
 mov rcx, qword ptr [rbp + 2088]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00353_n77_α
 mov rdi, qword ptr [rbp + 2080]
 mov rsi, qword ptr [rbp + 2088]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain00353_n78_α
 xchain00353_n76_β:
 jmp xchain00353_n77_α
# IR_VAR
 xchain00353_n77_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1992], rax
 jmp xchain00353_n79_α
 xchain00353_n77_β:
 jmp xchain00353_n80_α
# IR_MOVE_LABEL
 xchain00353_n78_α:
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1784], rax
 lea rax, [rip + xchain00353_n77_α]
 mov qword ptr [rbp + 1792], rax
 jmp xchain00353_n81_α
 xchain00353_n78_β:
 jmp xchain00353_n85_α
 xchain00353_n79_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1960], rax
  .section .rodata
  .Lrkfn1345: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1345]
 lea rsi, [rbp + 1952]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je xchain00353_n80_α
 jmp xchain00353_n83_α
 xchain00353_n79_β:
 jmp xchain00353_n80_α
# IR_LIT_STRING
 xchain00353_n80_α:
 mov qword ptr [rbp + 1872], 1
 mov rax, qword ptr [rip + .Lx00377_0]
 mov qword ptr [rbp + 1880], rax
 jmp xchain00353_n84_α
 xchain00353_n80_β:
 jmp xchain00353_n85_α
.Lx00377_0:
 .quad .Lx00377_0_s
.Lx00377_0_s:
 .string "No parameter following -"
 xchain00353_n81_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1776]
 mov rdx, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain00353_n85_α
 xchain00353_n81_β:
 jmp xchain00353_n85_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00353_n82_α:
 jmp qword ptr [rbp + 1792]
 xchain00353_n82_β:
 jmp xchain00353_n85_α
# IR_MOVE_LABEL
 xchain00353_n83_α:
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1784], rax
 lea rax, [rip + xchain00353_n80_α]
 mov qword ptr [rbp + 1792], rax
 jmp xchain00353_n81_α
 xchain00353_n83_β:
 jmp xchain00353_n85_α
# IR_VAR
 xchain00353_n84_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1912], rax
 jmp xchain00353_n86_α
 xchain00353_n84_β:
 jmp xchain00353_n85_α
# IR_VAR
 xchain00353_n85_α:
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 792], rax
 jmp xchain00353_n87_α
 xchain00353_n85_β:
 jmp xchain00353_n39_α
 xchain00353_n86_α:
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
  .Lrkfn1357: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1357]
 lea rsi, [rbp + 1824]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 cmp eax, 99
 je xchain00353_n85_α
 jmp xchain00353_n88_α
 xchain00353_n86_β:
 jmp xchain00353_n85_α
# IR_LIT_STRING
 xchain00353_n87_α:
 mov qword ptr [rbp + 1616], 1
 mov rax, qword ptr [rip + .Lx00378_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00353_n89_α
 xchain00353_n87_β:
 jmp xchain00353_n39_α
.Lx00378_0:
 .quad .Lx00378_0_s
.Lx00378_0_s:
 .string ":"
# IR_MOVE_LABEL
 xchain00353_n88_α:
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1784], rax
 lea rax, [rip + xchain00353_n85_α]
 mov qword ptr [rbp + 1792], rax
 jmp xchain00353_n81_α
 xchain00353_n88_β:
 jmp xchain00353_n85_α
 xchain00353_n89_α:
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
  .Lrkfn1362: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1362]
 lea rsi, [rbp + 1712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je xchain00353_n91_α
 jmp xchain00353_n90_α
 xchain00353_n89_β:
 jmp xchain00353_n91_α
# IR_VAR
 xchain00353_n90_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1656], rax
 jmp xchain00353_n92_α
 xchain00353_n90_β:
 jmp xchain00353_n39_α
# IR_LIT_STRING
 xchain00353_n91_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx00379_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain00353_n93_α
 xchain00353_n91_β:
 jmp xchain00353_n39_α
.Lx00379_0:
 .quad .Lx00379_0_s
.Lx00379_0_s:
 .string "+"
 xchain00353_n92_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1648]
 mov rdx, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00353_n94_α
 xchain00353_n92_β:
 jmp xchain00353_n39_α
 xchain00353_n93_α:
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
  .Lrkfn1368: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1368]
 lea rsi, [rbp + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain00353_n96_α
 jmp xchain00353_n95_α
 xchain00353_n93_β:
 jmp xchain00353_n96_α
# IR_VAR
 xchain00353_n94_α:
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 760], rax
 jmp xchain00353_n97_α
 xchain00353_n94_β:
 jmp xchain00353_n39_α
# IR_VAR
 xchain00353_n95_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1512], rax
 jmp xchain00353_n98_α
 xchain00353_n95_β:
 jmp xchain00353_n99_α
# IR_LIT_STRING
 xchain00353_n96_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx00380_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00353_n00072_α
 xchain00353_n96_β:
 jmp xchain00353_n39_α
.Lx00380_0:
 .quad .Lx00380_0_s
.Lx00380_0_s:
 .string "."
 xchain00353_n97_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 744], rax
 jmp xchain00353_n00074_α
xchain00353_n97_β:
 jmp xchain00353_n39_α
 xchain00353_n98_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1472]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1480], rax
  .section .rodata
  .Lrkfn1376: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1376]
 lea rsi, [rbp + 1472]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain00353_n99_α
 jmp xchain00353_n00001_α
 xchain00353_n98_β:
 jmp xchain00353_n99_α
# IR_LIT_STRING
 xchain00353_n99_α:
 mov qword ptr [rbp + 1360], 1
 mov rax, qword ptr [rip + .Lx00381_0]
 mov qword ptr [rbp + 1368], rax
 jmp xchain00353_n00077_α
 xchain00353_n99_β:
 jmp xchain00353_n39_α
.Lx00381_0:
 .quad .Lx00381_0_s
.Lx00381_0_s:
 .string "-"
 xchain00353_n00072_α:
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
  .Lrkfn1379: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1379]
 lea rsi, [rbp + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain00353_n39_α
 jmp xchain00353_n00078_α
 xchain00353_n00072_β:
 jmp xchain00353_n39_α
# IR_MOVE_LABEL
 xchain00353_n00074_α:
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 712], rax
 lea rax, [rip + xchain00353_n39_α]
 mov qword ptr [rbp + 720], rax
 jmp xchain00353_n69_α
 xchain00353_n00074_β:
 jmp xchain00353_n39_α
# IR_MOVE_LABEL
 xchain00353_n00001_α:
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1256], rax
 lea rax, [rip + xchain00353_n99_α]
 mov qword ptr [rbp + 1264], rax
 jmp xchain00353_n00002_α
 xchain00353_n00001_β:
 jmp xchain00353_n39_α
# IR_VAR
 xchain00353_n00077_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1400], rax
 jmp xchain00353_n00080_α
 xchain00353_n00077_β:
 jmp xchain00353_n39_α
# IR_VAR
 xchain00353_n00078_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00353_n00082_α
 xchain00353_n00078_β:
 jmp xchain00353_n00083_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00353_n00079_α:
 jmp qword ptr [rbp + 1264]
 xchain00353_n00079_β:
 jmp xchain00353_n39_α
# IR_LIT_STRING
 xchain00353_n00080_α:
 mov qword ptr [rbp + 1424], 1
 mov rax, qword ptr [rip + .Lx00382_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain00353_n00084_α
 xchain00353_n00080_β:
 jmp xchain00353_n39_α
.Lx00382_0:
 .quad .Lx00382_0_s
.Lx00382_0_s:
 .string " needs numeric parameter"
 xchain00353_n00082_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1072]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1080], rax
  .section .rodata
  .Lrkfn1392: .string "real"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1392]
 lea rsi, [rbp + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain00353_n00083_α
 jmp xchain00353_n00086_α
 xchain00353_n00082_β:
 jmp xchain00353_n00083_α
# IR_LIT_STRING
 xchain00353_n00083_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx00383_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00353_n00088_α
 xchain00353_n00083_β:
 jmp xchain00353_n39_α
.Lx00383_0:
 .quad .Lx00383_0_s
.Lx00383_0_s:
 .string "-"
 xchain00353_n00002_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain00353_n94_α
 xchain00353_n00002_β:
 jmp xchain00353_n39_α
 xchain00353_n00084_α:
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
  .Lrkfn1396: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1396]
 lea rsi, [rbp + 1296]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain00353_n39_α
 jmp xchain00353_n00090_α
 xchain00353_n00084_β:
 jmp xchain00353_n39_α
# IR_MOVE_LABEL
 xchain00353_n00086_α:
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 856], rax
 lea rax, [rip + xchain00353_n00083_α]
 mov qword ptr [rbp + 864], rax
 jmp xchain00353_n00093_α
 xchain00353_n00086_β:
 jmp xchain00353_n39_α
# IR_VAR
 xchain00353_n00088_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00353_n00003_α
 xchain00353_n00088_β:
 jmp xchain00353_n39_α
# IR_MOVE_LABEL
 xchain00353_n00090_α:
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1256], rax
 lea rax, [rip + xchain00353_n39_α]
 mov qword ptr [rbp + 1264], rax
 jmp xchain00353_n00002_α
 xchain00353_n00090_β:
 jmp xchain00353_n39_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00353_n00092_α:
 jmp qword ptr [rbp + 864]
 xchain00353_n00092_β:
 jmp xchain00353_n39_α
# IR_LIT_STRING
 xchain00353_n00003_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx00384_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00353_n00094_α
 xchain00353_n00003_β:
 jmp xchain00353_n39_α
.Lx00384_0:
 .quad .Lx00384_0_s
.Lx00384_0_s:
 .string " needs numeric parameter"
 xchain00353_n00093_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00353_n94_α
 xchain00353_n00093_β:
 jmp xchain00353_n39_α
 xchain00353_n00094_α:
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
  .Lrkfn1408: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1408]
 lea rsi, [rbp + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 cmp eax, 99
 je xchain00353_n39_α
 jmp xchain00353_n00096_α
 xchain00353_n00094_β:
 jmp xchain00353_n39_α
# IR_MOVE_LABEL
 xchain00353_n00096_α:
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 856], rax
 lea rax, [rip + xchain00353_n39_α]
 mov qword ptr [rbp + 864], rax
 jmp xchain00353_n00093_α
 xchain00353_n00096_β:
 jmp xchain00353_n39_α
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
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
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
  mov esi, 1296
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
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_generator@PLT
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
  mov qword ptr [rsp + 3384], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
# IR_VAR
 xchain00385_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 3320], rax
 jmp xchain00385_n1_α
 xchain00385_n0_β:
 jmp xchain00385_n2_α
# IR_LIT_STRING
 xchain00385_n1_α:
 mov qword ptr [rbp + 3344], 1
 mov rax, qword ptr [rip + .Lx00386_0]
 mov qword ptr [rbp + 3352], rax
 jmp xchain00385_n3_α
 xchain00385_n1_β:
 jmp xchain00385_n2_α
.Lx00386_0:
 .quad .Lx00386_0_s
.Lx00386_0_s:
 .string "a.e."
# IR_VAR_REF
 xchain00385_n2_α:
 lea rdi, [rbp + 3456]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain00385_n4_α
 xchain00385_n2_β:
 jmp xchain00385_n8_α
 xchain00385_n3_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3312]
 mov rdx, qword ptr [rbp + 3320]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3344]
 mov rdx, qword ptr [rbp + 3352]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00387_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00387_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00387_3]
 lea rdx, [rip + .Lx00387_4]
 jmp rax
.Lx00387_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00387_2
.Lx00387_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00387_2
.Lx00387_1:
 call rt_faildescr@PLT
.Lx00387_2:
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 cmp eax, 99
 je xchain00385_n2_α
 jmp xchain00385_n5_α
 xchain00385_n3_β:
 jmp xchain00385_n2_α
.Lx00387_0:
 .quad .Lx00387_0_s
.Lx00387_0_s:
 .string "options"
# IR_LIT_STRING
 xchain00385_n4_α:
 mov qword ptr [rbp + 3152], 1
 mov rax, qword ptr [rip + .Lx00388_0]
 mov qword ptr [rbp + 3160], rax
 jmp xchain00385_n6_α
 xchain00385_n4_β:
 jmp xchain00385_n8_α
.Lx00388_0:
 .quad .Lx00388_0_s
.Lx00388_0_s:
 .string "a"
 xchain00385_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3248]
 mov rdx, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 jmp xchain00385_n2_α
 xchain00385_n5_β:
 jmp xchain00385_n2_α
# IR_SUBSCRIPT x[i] variable
 xchain00385_n6_α:
 mov rdi, qword ptr [rbp + 3120]
 mov rsi, qword ptr [rbp + 3128]
 mov rdx, qword ptr [rbp + 3152]
 mov rcx, qword ptr [rbp + 3160]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00385_n8_α
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain00385_n7_α
 xchain00385_n6_β:
 jmp xchain00385_n8_α
# IR_DEREF variable -> value
 xchain00385_n7_α:
 mov rdi, qword ptr [rbp + 3184]
 mov rsi, qword ptr [rbp + 3192]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00385_n8_α
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain00385_n9_α
 xchain00385_n7_β:
 jmp xchain00385_n8_α
# IR_LIT_INTEGER
 xchain00385_n8_α:
 mov qword ptr [rbp + 3056], 6
 mov rax, qword ptr [rip + .Lx00389_0]
 mov qword ptr [rbp + 3064], rax
 jmp xchain00385_n10_α
 xchain00385_n8_β:
 jmp xchain00385_n13_α
.Lx00389_0:
 .quad 30
# IR_UNOP
 xchain00385_n9_α:
 mov eax, dword ptr [rbp + 3216]
 cmp eax, 99
 je xchain00385_n8_α
 cmp eax, 0
 je xchain00385_n8_α
 mov rax, qword ptr [rbp + 3216]
 mov qword ptr [rbp + 3088], rax
 mov rax, qword ptr [rbp + 3224]
 mov qword ptr [rbp + 3096], rax
 jmp xchain00385_n11_α
 xchain00385_n9_β:
 jmp xchain00385_n8_α
# IR_MOVE_LABEL
 xchain00385_n10_α:
 mov rax, qword ptr [rbp + 3056]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 3064]
 mov qword ptr [rbp + 3032], rax
 lea rax, [rip + xchain00385_n13_α]
 mov qword ptr [rbp + 3040], rax
 jmp xchain00385_n12_α
 xchain00385_n10_β:
 jmp xchain00385_n13_α
# IR_MOVE_LABEL
 xchain00385_n11_α:
 mov rax, qword ptr [rbp + 3088]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 3096]
 mov qword ptr [rbp + 3032], rax
 lea rax, [rip + xchain00385_n8_α]
 mov qword ptr [rbp + 3040], rax
 jmp xchain00385_n12_α
 xchain00385_n11_β:
 jmp xchain00385_n13_α
# IR_ASSIGN gva
 xchain00385_n12_α:
 mov rax, qword ptr [rbp + 3024]
 mov rdx, qword ptr [rbp + 3032]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 jmp xchain00385_n13_α
 xchain00385_n12_β:
 jmp xchain00385_n13_α
# IR_VAR_REF
 xchain00385_n13_α:
 lea rdi, [rbp + 3456]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain00385_n15_α
 xchain00385_n13_β:
 jmp xchain00385_n18_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00385_n14_α:
 jmp qword ptr [rbp + 3040]
 xchain00385_n14_β:
 jmp xchain00385_n13_α
# IR_LIT_STRING
 xchain00385_n15_α:
 mov qword ptr [rbp + 2928], 1
 mov rax, qword ptr [rip + .Lx00390_0]
 mov qword ptr [rbp + 2936], rax
 jmp xchain00385_n16_α
 xchain00385_n15_β:
 jmp xchain00385_n18_α
.Lx00390_0:
 .quad .Lx00390_0_s
.Lx00390_0_s:
 .string "e"
# IR_SUBSCRIPT x[i] variable
 xchain00385_n16_α:
 mov rdi, qword ptr [rbp + 2896]
 mov rsi, qword ptr [rbp + 2904]
 mov rdx, qword ptr [rbp + 2928]
 mov rcx, qword ptr [rbp + 2936]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00385_n18_α
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain00385_n17_α
 xchain00385_n16_β:
 jmp xchain00385_n18_α
# IR_DEREF variable -> value
 xchain00385_n17_α:
 mov rdi, qword ptr [rbp + 2960]
 mov rsi, qword ptr [rbp + 2968]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00385_n18_α
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain00385_n19_α
 xchain00385_n17_β:
 jmp xchain00385_n18_α
# IR_LIT_INTEGER
 xchain00385_n18_α:
 mov qword ptr [rbp + 2832], 6
 mov rax, qword ptr [rip + .Lx00391_0]
 mov qword ptr [rbp + 2840], rax
 jmp xchain00385_n20_α
 xchain00385_n18_β:
 jmp xchain00385_n23_α
.Lx00391_0:
 .quad 4
# IR_UNOP
 xchain00385_n19_α:
 mov eax, dword ptr [rbp + 2992]
 cmp eax, 99
 je xchain00385_n18_α
 cmp eax, 0
 je xchain00385_n18_α
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 2872], rax
 jmp xchain00385_n21_α
 xchain00385_n19_β:
 jmp xchain00385_n18_α
# IR_MOVE_LABEL
 xchain00385_n20_α:
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 2808], rax
 lea rax, [rip + xchain00385_n23_α]
 mov qword ptr [rbp + 2816], rax
 jmp xchain00385_n22_α
 xchain00385_n20_β:
 jmp xchain00385_n23_α
# IR_MOVE_LABEL
 xchain00385_n21_α:
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 2808], rax
 lea rax, [rip + xchain00385_n18_α]
 mov qword ptr [rbp + 2816], rax
 jmp xchain00385_n22_α
 xchain00385_n21_β:
 jmp xchain00385_n23_α
# IR_ASSIGN gva
 xchain00385_n22_α:
 mov rax, qword ptr [rbp + 2800]
 mov rdx, qword ptr [rbp + 2808]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain00385_n23_α
 xchain00385_n22_β:
 jmp xchain00385_n23_α
# IR_VAR
 xchain00385_n23_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2728], rax
 jmp xchain00385_n25_α
 xchain00385_n23_β:
 jmp xchain00385_n26_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00385_n24_α:
 jmp qword ptr [rbp + 2816]
 xchain00385_n24_β:
 jmp xchain00385_n23_α
# IR_UNOP
 xchain00385_n25_α:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 call rt_size_d@PLT
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 jmp xchain00385_n27_α
 xchain00385_n25_β:
 jmp xchain00385_n26_α
# IR_VAR
 xchain00385_n26_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2600], rax
 jmp xchain00385_n28_α
 xchain00385_n26_β:
 jmp xchain00385_n29_α
# IR_LIT_INTEGER
 xchain00385_n27_α:
 mov qword ptr [rbp + 2752], 6
 mov rax, qword ptr [rip + .Lx00392_0]
 mov qword ptr [rbp + 2760], rax
 jmp xchain00385_n30_α
 xchain00385_n27_β:
 jmp xchain00385_n26_α
.Lx00392_0:
 .quad 1
# IR_UNOP
 xchain00385_n28_α:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 call rt_size_d@PLT
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain00385_n31_α
 xchain00385_n28_β:
 jmp xchain00385_n29_α
# KEYWORD_read
 xchain00385_n29_α:
 mov rdi, qword ptr [rip + .Lx00393_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 jmp xchain00385_n32_α
 xchain00385_n29_β:
 jmp xchain00385_n39_α
.Lx00393_0:
 .quad .Lx00393_0_s
.Lx00393_0_s:
 .string "&input"
 xchain00385_n30_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 2688]
 cmp eax, 100
 je .Lx00394_0
 mov eax, dword ptr [rbp + 2752]
 cmp eax, 100
 je .Lx00394_0
 mov eax, dword ptr [rbp + 2688]
 cmp eax, 6
 jne .Lx00394_2
 mov eax, dword ptr [rbp + 2752]
 cmp eax, 6
 jne .Lx00394_2
.Lx00394_1:
 mov rax, qword ptr [rbp + 2696]
 mov rcx, qword ptr [rbp + 2760]
 cmp rax, rcx
 jle xchain00385_n26_α
 mov rcx, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2656], rcx
 mov rcx, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2664], rcx
 jmp xchain00385_n33_α
.Lx00394_0:
 mov rdi, qword ptr [rbp + 2688]
 mov rsi, qword ptr [rbp + 2696]
 mov rdx, qword ptr [rbp + 2752]
 mov rcx, qword ptr [rbp + 2760]
 mov r8d, 7
 lea r9, [rbp + 2656]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00394_1
 cmp eax, 1
 je xchain00385_n26_α
 jmp xchain00385_n33_α
.Lx00394_2:
 mov rdi, qword ptr [rbp + 2688]
 mov rsi, qword ptr [rbp + 2696]
 mov rdx, qword ptr [rbp + 2752]
 mov rcx, qword ptr [rbp + 2760]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00385_n26_α
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2664], rax
 jmp xchain00385_n33_α
 xchain00385_n30_β:
 jmp xchain00385_n26_α
# IR_LIT_INTEGER
 xchain00385_n31_α:
 mov qword ptr [rbp + 2624], 6
 mov rax, qword ptr [rip + .Lx00395_0]
 mov qword ptr [rbp + 2632], rax
 jmp xchain00385_n34_α
 xchain00385_n31_β:
 jmp xchain00385_n29_α
.Lx00395_0:
 .quad 1
# IR_ASSIGN gva
 xchain00385_n32_α:
 mov rax, qword ptr [rbp + 2496]
 mov rdx, qword ptr [rbp + 2504]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 jmp xchain00385_n35_α
 xchain00385_n32_β:
 jmp xchain00385_n39_α
# IR_LIT_STRING
 xchain00385_n33_α:
 mov qword ptr [rbp + 1888], 1
 mov rax, qword ptr [rip + .Lx00396_0]
 mov qword ptr [rbp + 1896], rax
 jmp xchain00385_n36_α
 xchain00385_n33_β:
 jmp xchain00385_n39_α
.Lx00396_0:
 .quad .Lx00396_0_s
.Lx00396_0_s:
 .string "usage: "
 xchain00385_n34_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 2560]
 cmp eax, 100
 je .Lx00397_0
 mov eax, dword ptr [rbp + 2624]
 cmp eax, 100
 je .Lx00397_0
 mov eax, dword ptr [rbp + 2560]
 cmp eax, 6
 jne .Lx00397_2
 mov eax, dword ptr [rbp + 2624]
 cmp eax, 6
 jne .Lx00397_2
.Lx00397_1:
 mov rax, qword ptr [rbp + 2568]
 mov rcx, qword ptr [rbp + 2632]
 cmp rax, rcx
 jne xchain00385_n29_α
 mov rcx, qword ptr [rbp + 2624]
 mov qword ptr [rbp + 2528], rcx
 mov rcx, qword ptr [rbp + 2632]
 mov qword ptr [rbp + 2536], rcx
 jmp xchain00385_n37_α
.Lx00397_0:
 mov rdi, qword ptr [rbp + 2560]
 mov rsi, qword ptr [rbp + 2568]
 mov rdx, qword ptr [rbp + 2624]
 mov rcx, qword ptr [rbp + 2632]
 mov r8d, 9
 lea r9, [rbp + 2528]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00397_1
 cmp eax, 1
 je xchain00385_n29_α
 jmp xchain00385_n37_α
.Lx00397_2:
 mov rdi, qword ptr [rbp + 2560]
 mov rsi, qword ptr [rbp + 2568]
 mov rdx, qword ptr [rbp + 2624]
 mov rcx, qword ptr [rbp + 2632]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00385_n29_α
 mov rax, qword ptr [rbp + 2624]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2632]
 mov qword ptr [rbp + 2536], rax
 jmp xchain00385_n37_α
 xchain00385_n34_β:
 jmp xchain00385_n29_α
# IR_MOVE_LABEL
 xchain00385_n35_α:
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 1992], rax
 lea rax, [rip + xchain00385_n39_α]
 mov qword ptr [rbp + 2000], rax
 jmp xchain00385_n38_α
 xchain00385_n35_β:
 jmp xchain00385_n39_α
# KEYWORD_read
 xchain00385_n36_α:
 mov rdi, qword ptr [rip + .Lx00398_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain00385_n41_α
 xchain00385_n36_β:
 jmp xchain00385_n39_α
.Lx00398_0:
 .quad .Lx00398_0_s
.Lx00398_0_s:
 .string "&progname"
# IR_VAR_REF
 xchain00385_n37_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 jmp xchain00385_n42_α
 xchain00385_n37_β:
 jmp xchain00385_n52_α
# IR_MOVE_LABEL
 xchain00385_n38_α:
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1784], rax
 lea rax, [rip + xchain00385_n40_α]
 mov qword ptr [rbp + 1792], rax
 jmp xchain00385_n39_α
 xchain00385_n38_β:
 jmp xchain00385_n39_α
# IR_VAR
 xchain00385_n39_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain00385_n44_α
 xchain00385_n39_β:
 jmp xchain00385_n45_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00385_n40_α:
 jmp qword ptr [rbp + 2000]
 xchain00385_n40_β:
 jmp xchain00385_n39_α
# IR_LIT_STRING
 xchain00385_n41_α:
 mov qword ptr [rbp + 1952], 1
 mov rax, qword ptr [rip + .Lx00399_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain00385_n46_α
 xchain00385_n41_β:
 jmp xchain00385_n39_α
.Lx00399_0:
 .quad .Lx00399_0_s
.Lx00399_0_s:
 .string " file"
# IR_LIT_INTEGER
 xchain00385_n42_α:
 mov qword ptr [rbp + 2400], 6
 mov rax, qword ptr [rip + .Lx00400_0]
 mov qword ptr [rbp + 2408], rax
 jmp xchain00385_n47_α
 xchain00385_n42_β:
 jmp xchain00385_n52_α
.Lx00400_0:
 .quad 1
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00385_n43_α:
 jmp qword ptr [rbp + 1792]
 xchain00385_n43_β:
 jmp xchain00385_n39_α
 xchain00385_n44_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1744] -> [zr+1712]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1720], rax
  .section .rodata
  .Lrkfn1474: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1474]
 lea rsi, [rbp + 1712]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je xchain00385_n45_α
 jmp xchain00385_n48_α
 xchain00385_n44_β:
 jmp xchain00385_n45_α
# KEYWORD_read
 xchain00385_n45_α:
 mov rdi, qword ptr [rip + .Lx00401_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain00385_n49_α
 xchain00385_n45_β:
 jmp xchain00385_n58_α
.Lx00401_0:
 .quad .Lx00401_0_s
.Lx00401_0_s:
 .string "&progname"
 xchain00385_n46_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1888] -> [zr+1824]
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 1832], rax
# marshal arg1 = producer-box slot [zr+1920] -> [zr+1840]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1848], rax
# marshal arg2 = producer-box slot [zr+1952] -> [zr+1856]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1864], rax
  .section .rodata
  .Lrkfn1477: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1477]
 lea rsi, [rbp + 1824]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 cmp eax, 99
 je xchain00385_n39_α
 jmp xchain00385_n50_α
 xchain00385_n46_β:
 jmp xchain00385_n39_α
# IR_SUBSCRIPT x[i] variable
 xchain00385_n47_α:
 mov rdi, qword ptr [rbp + 2368]
 mov rsi, qword ptr [rbp + 2376]
 mov rdx, qword ptr [rbp + 2400]
 mov rcx, qword ptr [rbp + 2408]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00385_n52_α
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 jmp xchain00385_n51_α
 xchain00385_n47_β:
 jmp xchain00385_n52_α
# IR_MOVE_LABEL
 xchain00385_n48_α:
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1544], rax
 lea rax, [rip + xchain00385_n45_α]
 mov qword ptr [rbp + 1552], rax
 jmp xchain00385_n53_α
 xchain00385_n48_β:
 jmp xchain00385_n58_α
# IR_LIT_STRING
 xchain00385_n49_α:
 mov qword ptr [rbp + 1664], 1
 mov rax, qword ptr [rip + .Lx00402_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain00385_n55_α
 xchain00385_n49_β:
 jmp xchain00385_n58_α
.Lx00402_0:
 .quad .Lx00402_0_s
.Lx00402_0_s:
 .string ": empty file"
# IR_MOVE_LABEL
 xchain00385_n50_α:
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1784], rax
 lea rax, [rip + xchain00385_n39_α]
 mov qword ptr [rbp + 1792], rax
 jmp xchain00385_n39_α
 xchain00385_n50_β:
 jmp xchain00385_n39_α
# IR_DEREF variable -> value
 xchain00385_n51_α:
 mov rdi, qword ptr [rbp + 2432]
 mov rsi, qword ptr [rbp + 2440]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00385_n52_α
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 jmp xchain00385_n56_α
 xchain00385_n51_β:
 jmp xchain00385_n52_α
# KEYWORD_read
 xchain00385_n52_α:
 mov rdi, qword ptr [rip + .Lx00403_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 jmp xchain00385_n57_α
 xchain00385_n52_β:
 jmp xchain00385_n39_α
.Lx00403_0:
 .quad .Lx00403_0_s
.Lx00403_0_s:
 .string "&progname"
 xchain00385_n53_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1536]
 mov rdx, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain00385_n58_α
 xchain00385_n53_β:
 jmp xchain00385_n58_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00385_n54_α:
 jmp qword ptr [rbp + 1552]
 xchain00385_n54_β:
 jmp xchain00385_n58_α
 xchain00385_n55_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1632] -> [zr+1584]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1592], rax
# marshal arg1 = producer-box slot [zr+1664] -> [zr+1600]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1608], rax
  .section .rodata
  .Lrkfn1490: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1490]
 lea rsi, [rbp + 1584]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 cmp eax, 99
 je xchain00385_n58_α
 jmp xchain00385_n59_α
 xchain00385_n55_β:
 jmp xchain00385_n58_α
 xchain00385_n56_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2464] -> [zr+2336]
 mov rax, qword ptr [rbp + 2464]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 2344], rax
  .section .rodata
  .Lrkfn1492: .string "open"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1492]
 lea rsi, [rbp + 2336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 cmp eax, 99
 je xchain00385_n52_α
 jmp xchain00385_n60_α
 xchain00385_n56_β:
 jmp xchain00385_n52_α
# IR_LIT_STRING
 xchain00385_n57_α:
 mov qword ptr [rbp + 2176], 1
 mov rax, qword ptr [rip + .Lx00404_0]
 mov qword ptr [rbp + 2184], rax
 jmp xchain00385_n61_α
 xchain00385_n57_β:
 jmp xchain00385_n39_α
.Lx00404_0:
 .quad .Lx00404_0_s
.Lx00404_0_s:
 .string ": can't open "
# IR_VAR
 xchain00385_n58_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain00385_n62_α
 xchain00385_n58_β:
 jmp xchain00385_n63_α
# IR_MOVE_LABEL
 xchain00385_n59_α:
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1544], rax
 lea rax, [rip + xchain00385_n58_α]
 mov qword ptr [rbp + 1552], rax
 jmp xchain00385_n53_α
 xchain00385_n59_β:
 jmp xchain00385_n58_α
# IR_MOVE_LABEL
 xchain00385_n60_α:
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2040], rax
 lea rax, [rip + xchain00385_n52_α]
 mov qword ptr [rbp + 2048], rax
 jmp xchain00385_n64_α
 xchain00385_n60_β:
 jmp xchain00385_n39_α
# IR_VAR_REF
 xchain00385_n61_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 jmp xchain00385_n66_α
 xchain00385_n61_β:
 jmp xchain00385_n39_α
 xchain00385_n62_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1456]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1464], rax
  .section .rodata
  .Lrkfn1502: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1502]
 lea rsi, [rbp + 1456]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain00385_n63_α
 jmp xchain00385_n67_α
 xchain00385_n62_β:
 jmp xchain00385_n63_α
# KEYWORD_read
 xchain00385_n63_α:
 mov rdi, qword ptr [rip + .Lx00405_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain00385_n68_α
 xchain00385_n63_β:
 jmp xchain00385_n75_α
.Lx00405_0:
 .quad .Lx00405_0_s
.Lx00405_0_s:
 .string "&progname"
# IR_ASSIGN gva
 xchain00385_n64_α:
 mov rax, qword ptr [rbp + 2032]
 mov rdx, qword ptr [rbp + 2040]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain00385_n69_α
 xchain00385_n64_β:
 jmp xchain00385_n39_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00385_n65_α:
 jmp qword ptr [rbp + 2048]
 xchain00385_n65_β:
 jmp xchain00385_n39_α
# IR_LIT_INTEGER
 xchain00385_n66_α:
 mov qword ptr [rbp + 2240], 6
 mov rax, qword ptr [rip + .Lx00406_0]
 mov qword ptr [rbp + 2248], rax
 jmp xchain00385_n70_α
 xchain00385_n66_β:
 jmp xchain00385_n39_α
.Lx00406_0:
 .quad 1
# IR_MOVE_LABEL
 xchain00385_n67_α:
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1288], rax
 lea rax, [rip + xchain00385_n63_α]
 mov qword ptr [rbp + 1296], rax
 jmp xchain00385_n71_α
 xchain00385_n67_β:
 jmp xchain00385_n75_α
# IR_LIT_STRING
 xchain00385_n68_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx00407_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain00385_n73_α
 xchain00385_n68_β:
 jmp xchain00385_n75_α
.Lx00407_0:
 .quad .Lx00407_0_s
.Lx00407_0_s:
 .string ": file truncated"
# IR_MOVE_LABEL
 xchain00385_n69_α:
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1992], rax
 lea rax, [rip + xchain00385_n65_α]
 mov qword ptr [rbp + 2000], rax
 jmp xchain00385_n38_α
 xchain00385_n69_β:
 jmp xchain00385_n39_α
# IR_SUBSCRIPT x[i] variable
 xchain00385_n70_α:
 mov rdi, qword ptr [rbp + 2208]
 mov rsi, qword ptr [rbp + 2216]
 mov rdx, qword ptr [rbp + 2240]
 mov rcx, qword ptr [rbp + 2248]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00385_n39_α
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 jmp xchain00385_n74_α
 xchain00385_n70_β:
 jmp xchain00385_n39_α
 xchain00385_n71_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1280]
 mov rdx, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain00385_n75_α
 xchain00385_n71_β:
 jmp xchain00385_n75_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00385_n72_α:
 jmp qword ptr [rbp + 1296]
 xchain00385_n72_β:
 jmp xchain00385_n75_α
 xchain00385_n73_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1328]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1336], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1344]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1352], rax
  .section .rodata
  .Lrkfn1518: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1518]
 lea rsi, [rbp + 1328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain00385_n75_α
 jmp xchain00385_n76_α
 xchain00385_n73_β:
 jmp xchain00385_n75_α
# IR_DEREF variable -> value
 xchain00385_n74_α:
 mov rdi, qword ptr [rbp + 2272]
 mov rsi, qword ptr [rbp + 2280]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00385_n39_α
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 jmp xchain00385_n77_α
 xchain00385_n74_β:
 jmp xchain00385_n39_α
# IR_VAR
 xchain00385_n75_α:
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 1144], rax
 jmp xchain00385_n78_α
 xchain00385_n75_β:
 jmp xchain00385_n79_α
# IR_MOVE_LABEL
 xchain00385_n76_α:
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1288], rax
 lea rax, [rip + xchain00385_n75_α]
 mov qword ptr [rbp + 1296], rax
 jmp xchain00385_n71_α
 xchain00385_n76_β:
 jmp xchain00385_n75_α
 xchain00385_n77_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2144] -> [zr+2080]
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2088], rax
# marshal arg1 = producer-box slot [zr+2176] -> [zr+2096]
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2104], rax
# marshal arg2 = producer-box slot [zr+2304] -> [zr+2112]
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 2120], rax
  .section .rodata
  .Lrkfn1525: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1525]
 lea rsi, [rbp + 2080]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 cmp eax, 99
 je xchain00385_n39_α
 jmp xchain00385_n80_α
 xchain00385_n77_β:
 jmp xchain00385_n39_α
# IR_LIT_INTEGER
 xchain00385_n78_α:
 mov qword ptr [rbp + 1168], 6
 mov rax, qword ptr [rip + .Lx00408_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain00385_n81_α
 xchain00385_n78_β:
 jmp xchain00385_n79_α
.Lx00408_0:
 .quad 16
# IR_VAR
 xchain00385_n79_α:
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 968], rax
 jmp xchain00385_n82_α
 xchain00385_n79_β:
 jmp xchain00385_n83_α
# IR_MOVE_LABEL
 xchain00385_n80_α:
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 2040], rax
 lea rax, [rip + xchain00385_n39_α]
 mov qword ptr [rbp + 2048], rax
 jmp xchain00385_n64_α
 xchain00385_n80_β:
 jmp xchain00385_n39_α
# IR_LIT_INTEGER
 xchain00385_n81_α:
 mov qword ptr [rbp + 1200], 6
 mov rax, qword ptr [rip + .Lx00409_0]
 mov qword ptr [rbp + 1208], rax
 jmp xchain00385_n84_α
 xchain00385_n81_β:
 jmp xchain00385_n79_α
.Lx00409_0:
 .quad 7
# IR_LIT_INTEGER
 xchain00385_n82_α:
 mov qword ptr [rbp + 992], 6
 mov rax, qword ptr [rip + .Lx00410_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00385_n85_α
 xchain00385_n82_β:
 jmp xchain00385_n83_α
.Lx00410_0:
 .quad 16
# IR_VAR
 xchain00385_n83_α:
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 696], rax
 jmp xchain00385_n86_α
 xchain00385_n83_β:
 jmp xchain00385_n87_α
 xchain00385_n84_α:
# IR_BINOP_ARITH
.Lx00411_1:
 mov rax, 16
 mov rcx, 7
 add rax, rcx
 mov qword ptr [rbp + 1232], 6
 mov qword ptr [rbp + 1240], rax
 jmp xchain00385_n88_α
.Lx00411_0:
 mov rdi, qword ptr [rbp + 1168]
 mov rsi, qword ptr [rbp + 1176]
 mov rdx, qword ptr [rbp + 1200]
 mov rcx, qword ptr [rbp + 1208]
 mov r8d, 0
 lea r9, [rbp + 1232]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00411_3
.Lx00411_2:
 mov rdi, qword ptr [rbp + 1168]
 mov rsi, qword ptr [rbp + 1176]
 mov rdx, qword ptr [rbp + 1200]
 mov rcx, qword ptr [rbp + 1208]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00385_n79_α
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
.Lx00411_3:
 jmp xchain00385_n88_α
 xchain00385_n84_β:
 jmp xchain00385_n79_α
# IR_LIT_INTEGER
 xchain00385_n85_α:
 mov qword ptr [rbp + 1024], 6
 mov rax, qword ptr [rip + .Lx00412_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00385_n89_α
 xchain00385_n85_β:
 jmp xchain00385_n83_α
.Lx00412_0:
 .quad 7
# IR_VAR
 xchain00385_n86_α:
 mov rax, qword ptr [rbp + 3440]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 3448]
 mov qword ptr [rbp + 728], rax
 jmp xchain00385_n90_α
 xchain00385_n86_β:
 jmp xchain00385_n87_α
 xchain00385_n87_α:
 mov rdi, qword ptr [rip + .Lx00413_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00413_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00413_3]
 lea rdx, [rip + .Lx00413_4]
 jmp rax
.Lx00413_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00413_2
.Lx00413_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00413_2
.Lx00413_1:
 call rt_faildescr@PLT
.Lx00413_2:
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain00385_n91_α
 jmp xchain00385_n91_α
 xchain00385_n87_β:
 jmp xchain00385_n91_α
.Lx00413_0:
 .quad .Lx00413_0_s
.Lx00413_0_s:
 .string "loadfile"
# IR_SUBSCRIPT section extended (x[i+:n]/x[i-:n]; end pre-computed by IR_BINOP; wraparound→ω)
 xchain00385_n88_α:
 mov rdi, qword ptr [rbp + 1136]
 mov rsi, qword ptr [rbp + 1144]
 mov rdx, qword ptr [rbp + 1168]
 mov rcx, qword ptr [rbp + 1176]
 mov r8, qword ptr [rbp + 1232]
 mov r9, qword ptr [rbp + 1240]
 call subscript_get2_ext@PLT
 cmp eax, 99
 je xchain00385_n79_α
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00385_n92_α
 xchain00385_n88_β:
 jmp xchain00385_n79_α
 xchain00385_n89_α:
# IR_BINOP_ARITH
.Lx00414_1:
 mov rax, 16
 mov rcx, 7
 add rax, rcx
 mov qword ptr [rbp + 1056], 6
 mov qword ptr [rbp + 1064], rax
 jmp xchain00385_n93_α
.Lx00414_0:
 mov rdi, qword ptr [rbp + 992]
 mov rsi, qword ptr [rbp + 1000]
 mov rdx, qword ptr [rbp + 1024]
 mov rcx, qword ptr [rbp + 1032]
 mov r8d, 0
 lea r9, [rbp + 1056]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00414_3
.Lx00414_2:
 mov rdi, qword ptr [rbp + 992]
 mov rsi, qword ptr [rbp + 1000]
 mov rdx, qword ptr [rbp + 1024]
 mov rcx, qword ptr [rbp + 1032]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00385_n83_α
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
.Lx00414_3:
 jmp xchain00385_n93_α
 xchain00385_n89_β:
 jmp xchain00385_n83_α
# IR_COERCE_NUMERIC
 xchain00385_n90_α:
 mov eax, dword ptr [rbp + 3424]
 cmp eax, 7
 je .Lx00415_1
 cmp eax, 6
 jne .Lx00415_0
 mov eax, dword ptr [rbp + 3440]
 cmp eax, 6
 jne .Lx00415_0
.Lx00415_1:
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 664], rax
 jmp .Lx00415_2
.Lx00415_0:
 lea rdi, [rbp + 3424]
 lea rsi, [rbp + 3440]
 lea rdx, [rbp + 656]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00415_2:
 jmp xchain00385_n94_α
 xchain00385_n90_β:
 jmp xchain00385_n87_α
# IR_VAR
 xchain00385_n91_α:
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 312], rax
 jmp xchain00385_n95_α
 xchain00385_n91_β:
 jmp xchain00385_n96_α
 xchain00385_n92_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1104]
 mov rdx, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 3440], rax
 mov qword ptr [rbp + 3448], rdx
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain00385_n79_α
 xchain00385_n92_β:
 jmp xchain00385_n79_α
# IR_SUBSCRIPT section extended (x[i+:n]/x[i-:n]; end pre-computed by IR_BINOP; wraparound→ω)
 xchain00385_n93_α:
 mov rdi, qword ptr [rbp + 960]
 mov rsi, qword ptr [rbp + 968]
 mov rdx, qword ptr [rbp + 992]
 mov rcx, qword ptr [rbp + 1000]
 mov r8, qword ptr [rbp + 1056]
 mov r9, qword ptr [rbp + 1064]
 call subscript_get2_ext@PLT
 cmp eax, 99
 je xchain00385_n83_α
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain00385_n97_α
 xchain00385_n93_β:
 jmp xchain00385_n83_α
# IR_COERCE_NUMERIC
 xchain00385_n94_α:
 mov eax, dword ptr [rbp + 3440]
 cmp eax, 7
 je .Lx00416_1
 cmp eax, 6
 jne .Lx00416_0
 mov eax, dword ptr [rbp + 3424]
 cmp eax, 6
 jne .Lx00416_0
.Lx00416_1:
 mov rax, qword ptr [rbp + 3440]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 3448]
 mov qword ptr [rbp + 632], rax
 jmp .Lx00416_2
.Lx00416_0:
 lea rdi, [rbp + 3440]
 lea rsi, [rbp + 3424]
 lea rdx, [rbp + 624]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00416_2:
 jmp xchain00385_n98_α
 xchain00385_n94_β:
 jmp xchain00385_n87_α
 xchain00385_n95_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+272]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 280], rax
  .section .rodata
  .Lrkfn1552: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1552]
 lea rsi, [rbp + 272]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain00385_n96_α
 jmp xchain00385_n96_α
 xchain00385_n95_β:
 jmp xchain00385_n96_α
# IR_VAR
 xchain00385_n96_α:
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 232], rax
 jmp xchain00385_n99_α
 xchain00385_n96_β:
 jmp xchain00385_n00072_α
 xchain00385_n97_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain00385_n83_α
 xchain00385_n97_β:
 jmp xchain00385_n83_α
 xchain00385_n98_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 656]
 cmp eax, 100
 je .Lx00417_0
 mov eax, dword ptr [rbp + 624]
 cmp eax, 100
 je .Lx00417_0
 mov eax, dword ptr [rbp + 656]
 cmp eax, 6
 jne .Lx00417_2
 mov eax, dword ptr [rbp + 624]
 cmp eax, 6
 jne .Lx00417_2
.Lx00417_1:
 mov rax, qword ptr [rbp + 664]
 mov rcx, qword ptr [rbp + 632]
 add rax, rcx
 mov qword ptr [rbp + 592], 6
 mov qword ptr [rbp + 600], rax
 jmp xchain00385_n00074_α
.Lx00417_0:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 mov r8d, 0
 lea r9, [rbp + 592]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00417_3
.Lx00417_2:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00385_n87_α
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
.Lx00417_3:
 jmp xchain00385_n00074_α
 xchain00385_n98_β:
 jmp xchain00385_n87_α
 xchain00385_n99_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1558: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1558]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00385_n00072_α
 jmp xchain00385_n00072_α
 xchain00385_n99_β:
 jmp xchain00385_n00072_α
# IR_VAR
 xchain00385_n00072_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00385_n00001_α
 xchain00385_n00072_β:
 jmp main_ω
# IR_LIT_REAL
 xchain00385_n00074_α:
 mov qword ptr [rbp + 752], 7
 mov rax, qword ptr [rip + .Lx00418_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00385_n00077_α
 xchain00385_n00074_β:
 jmp xchain00385_n87_α
.Lx00418_0:
 .quad 4611686018427387904
 xchain00385_n00001_α:
 mov qword ptr [rbp + 112], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 144]
 mov rdx, qword ptr [rbp + 152]
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
 mov rax, qword ptr [rbp + 112]
 test rax, rax
 jne .Lx00419_5
 mov qword ptr [rbp + 112], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00419_2
.Lx00419_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00419_2
.Lx00419_4:
 mov rax, qword ptr [rbp + 112]
 test rax, rax
 jne .Lx00419_6
 mov qword ptr [rbp + 112], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00419_2
.Lx00419_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00419_2
.Lx00419_1:
 call rt_faildescr@PLT
.Lx00419_2:
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp xchain00385_n00078_α
 xchain00385_n00001_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx00419_0:
 .quad .Lx00419_0_s
.Lx00419_0_s:
 .string "kgen"
# IR_COERCE_NUMERIC
 xchain00385_n00077_α:
 mov eax, dword ptr [rbp + 592]
 cmp eax, 7
 je .Lx00420_1
 cmp eax, 6
 jne .Lx00420_0
 mov eax, dword ptr [rbp + 752]
 cmp eax, 6
 jne .Lx00420_0
.Lx00420_1:
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
 jmp .Lx00420_2
.Lx00420_0:
 lea rdi, [rbp + 592]
 lea rsi, [rbp + 752]
 lea rdx, [rbp + 560]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00420_2:
 jmp xchain00385_n00079_α
 xchain00385_n00077_β:
 jmp xchain00385_n87_α
 xchain00385_n00078_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 80]
 mov rdx, qword ptr [rbp + 88]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00421_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00421_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00421_3]
 lea rdx, [rip + .Lx00421_4]
 jmp rax
.Lx00421_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00421_2
.Lx00421_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00421_2
.Lx00421_1:
 call rt_faildescr@PLT
.Lx00421_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je main_ω
 jmp xchain00385_n00001_β
 xchain00385_n00078_β:
 jmp main_ω
.Lx00421_0:
 .quad .Lx00421_0_s
.Lx00421_0_s:
 .string "dumpcode"
 xchain00385_n00079_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00385_n87_α
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00385_n00080_α
 xchain00385_n00079_β:
 jmp xchain00385_n87_α
# KEYWORD_read
 xchain00385_n00080_α:
 mov rdi, qword ptr [rip + .Lx00422_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain00385_n00082_α
 xchain00385_n00080_β:
 jmp xchain00385_n87_α
.Lx00422_0:
 .quad .Lx00422_0_s
.Lx00422_0_s:
 .string "&pi"
# IR_LIT_INTEGER
 xchain00385_n00082_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx00423_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain00385_n00083_α
 xchain00385_n00082_β:
 jmp xchain00385_n87_α
.Lx00423_0:
 .quad 9999999
# IR_COERCE_NUMERIC
 xchain00385_n00083_α:
 mov eax, dword ptr [rbp + 848]
 cmp eax, 7
 je .Lx00424_1
 cmp eax, 6
 jne .Lx00424_0
 mov eax, dword ptr [rbp + 880]
 cmp eax, 6
 jne .Lx00424_0
.Lx00424_1:
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 824], rax
 jmp .Lx00424_2
.Lx00424_0:
 lea rdi, [rbp + 848]
 lea rsi, [rbp + 880]
 lea rdx, [rbp + 816]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00424_2:
 jmp xchain00385_n00002_α
 xchain00385_n00083_β:
 jmp xchain00385_n87_α
 xchain00385_n00002_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 816]
 cmp eax, 100
 je .Lx00425_0
 mov eax, dword ptr [rbp + 816]
 cmp eax, 6
 jne .Lx00425_2
.Lx00425_1:
 mov rax, qword ptr [rbp + 824]
 mov rcx, 9999999
 cqo
 idiv rcx
 mov qword ptr [rbp + 784], 6
 mov qword ptr [rbp + 792], rax
 jmp xchain00385_n00084_α
.Lx00425_0:
 mov rdi, qword ptr [rbp + 816]
 mov rsi, qword ptr [rbp + 824]
 mov rdx, qword ptr [rbp + 880]
 mov rcx, qword ptr [rbp + 888]
 mov r8d, 3
 lea r9, [rbp + 784]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00425_3
.Lx00425_2:
 mov rdi, qword ptr [rbp + 816]
 mov rsi, qword ptr [rbp + 824]
 mov rdx, qword ptr [rbp + 880]
 mov rcx, qword ptr [rbp + 888]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00385_n87_α
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
.Lx00425_3:
 jmp xchain00385_n00084_α
 xchain00385_n00002_β:
 jmp xchain00385_n87_α
# IR_COERCE_NUMERIC
 xchain00385_n00084_α:
 mov eax, dword ptr [rbp + 528]
 cmp eax, 7
 je .Lx00426_1
 cmp eax, 6
 jne .Lx00426_0
 mov eax, dword ptr [rbp + 784]
 cmp eax, 6
 jne .Lx00426_0
.Lx00426_1:
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 504], rax
 jmp .Lx00426_2
.Lx00426_0:
 lea rdi, [rbp + 528]
 lea rsi, [rbp + 784]
 lea rdx, [rbp + 496]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00426_2:
 jmp xchain00385_n00086_α
 xchain00385_n00084_β:
 jmp xchain00385_n87_α
# IR_COERCE_NUMERIC
 xchain00385_n00086_α:
 mov eax, dword ptr [rbp + 784]
 cmp eax, 7
 je .Lx00427_1
 cmp eax, 6
 jne .Lx00427_0
 mov eax, dword ptr [rbp + 528]
 cmp eax, 6
 jne .Lx00427_0
.Lx00427_1:
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 472], rax
 jmp .Lx00427_2
.Lx00427_0:
 lea rdi, [rbp + 784]
 lea rsi, [rbp + 528]
 lea rdx, [rbp + 464]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00427_2:
 jmp xchain00385_n00088_α
 xchain00385_n00086_β:
 jmp xchain00385_n87_α
 xchain00385_n00088_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 496]
 cmp eax, 100
 je .Lx00428_0
 mov eax, dword ptr [rbp + 464]
 cmp eax, 100
 je .Lx00428_0
 mov eax, dword ptr [rbp + 496]
 cmp eax, 6
 jne .Lx00428_2
 mov eax, dword ptr [rbp + 464]
 cmp eax, 6
 jne .Lx00428_2
.Lx00428_1:
 mov rax, qword ptr [rbp + 504]
 mov rcx, qword ptr [rbp + 472]
 imul rax, rcx
 mov qword ptr [rbp + 432], 6
 mov qword ptr [rbp + 440], rax
 jmp xchain00385_n00090_α
.Lx00428_0:
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 mov rdx, qword ptr [rbp + 464]
 mov rcx, qword ptr [rbp + 472]
 mov r8d, 2
 lea r9, [rbp + 432]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00428_3
.Lx00428_2:
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 mov rdx, qword ptr [rbp + 464]
 mov rcx, qword ptr [rbp + 472]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00385_n87_α
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
.Lx00428_3:
 jmp xchain00385_n00090_α
 xchain00385_n00088_β:
 jmp xchain00385_n87_α
 xchain00385_n00090_α:
# BOX IR_CALL sin(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+400]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 408], rax
  .section .rodata
  .Lrkfn1579: .string "sin"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1579]
 lea rsi, [rbp + 400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00385_n87_α
 jmp xchain00385_n00092_α
 xchain00385_n00090_β:
 jmp xchain00385_n87_α
# IR_ASSIGN gva
 xchain00385_n00092_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00385_n87_α
 xchain00385_n00092_β:
 jmp xchain00385_n87_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 3384]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 3384]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
