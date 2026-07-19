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
 je xchain0_n2_α
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
# IR_ASSIGN gva
 xchain0_n1_α:
 mov rax, qword ptr [rbp + 2304]
 mov rdx, qword ptr [rbp + 2312]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain0_n2_α
# IR_DISJUNCTION_NARY
 xchain0_n2_α:
 mov qword ptr [rbp + 2048], 0
 mov qword ptr [rbp + 2056], 0
 mov dword ptr [rbp + 2064], 0
 jmp xchain0_n4_α
xchain0_n2_as:
 mov eax, dword ptr [rbp + 2064]
 cmp eax, 0
 jne .Lx5_0
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2056], rax
 jmp xchain0_n3_α
.Lx5_0:
 cmp eax, 1
 jne .Lx5_1
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2056], rax
 jmp xchain0_n3_α
.Lx5_1:
 jmp xchain0_n3_α
 xchain0_n2_β:
 mov eax, dword ptr [rbp + 2064]
 cmp eax, 0
 je xchain0_n2_af
 jmp xchain0_n2_af
xchain0_n2_af:
 add dword ptr [rbp + 2064], 1
 mov eax, dword ptr [rbp + 2064]
 cmp eax, 1
 je xchain0_n5_α
 jmp xchain0_n8_α
 xchain0_n3_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2048]
 mov rdx, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 jmp xchain0_n8_α
# IR_VAR
 xchain0_n4_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n2_af
# KEYWORD_read
 xchain0_n5_α:
 mov rdi, qword ptr [rip + .Lx8_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain0_n2_af
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 jmp xchain0_n9_α
 xchain0_n5_β:
 jmp xchain0_n2_af
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "&progname"
 xchain0_n6_α:
# BOX IR_CALL where(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2128] -> [zr+2096]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2104], rax
  .section .rodata
  .Lrkfn10: .string "where"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn10]
 lea rsi, [rbp + 2096]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 cmp eax, 99
 je xchain0_n2_af
 jmp xchain0_n2_as
 xchain0_n6_β:
 jmp xchain0_n2_af
 xchain0_n7_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2224] -> [zr+2176]
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 2184], rax
# marshal arg1 = producer-box slot [zr+2256] -> [zr+2192]
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2200], rax
  .section .rodata
  .Lrkfn12: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn12]
 lea rsi, [rbp + 2176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 cmp eax, 99
 je xchain0_n2_af
 jmp xchain0_n2_as
 xchain0_n7_β:
 jmp xchain0_n2_af
# IR_DISJUNCTION_NARY
 xchain0_n8_α:
 mov qword ptr [rbp + 1920], 0
 mov qword ptr [rbp + 1928], 0
 mov dword ptr [rbp + 1936], 0
 jmp xchain0_n11_α
xchain0_n8_as:
 mov eax, dword ptr [rbp + 1936]
 cmp eax, 0
 jne .Lx14_0
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1928], rax
 jmp xchain0_n10_α
.Lx14_0:
 cmp eax, 1
 jne .Lx14_1
 jmp xchain0_n10_α
.Lx14_1:
 jmp xchain0_n10_α
 xchain0_n8_β:
 mov eax, dword ptr [rbp + 1936]
 cmp eax, 0
 je xchain0_n8_af
 jmp xchain0_n8_af
xchain0_n8_af:
 add dword ptr [rbp + 1936], 1
 mov eax, dword ptr [rbp + 1936]
 cmp eax, 1
 je xchain0_n12_α
 jmp xchain0_n14_α
# IR_LIT_STRING
 xchain0_n9_α:
 mov qword ptr [rbp + 2256], 1
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [rbp + 2264], rax
 jmp xchain0_n7_α
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string ": input file is not seekable"
 xchain0_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1920]
 mov rdx, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 jmp xchain0_n14_α
# IR_VAR
 xchain0_n11_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n8_af
 xchain0_n12_α:
 jmp xchain0_n15_α
xchain0_n12_β:
 jmp xchain0_n15_α
 xchain0_n13_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2000] -> [zr+1968]
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 1968], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 1976], rax
  .section .rodata
  .Lrkfn20: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn20]
 lea rsi, [rbp + 1968]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 cmp eax, 99
 je xchain0_n8_af
 jmp xchain0_n8_as
 xchain0_n13_β:
 jmp xchain0_n8_af
# IR_VAR
 xchain0_n14_α:
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 1880], rax
 jmp xchain0_n16_α
# IR_RETURN
 xchain0_n15_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_loadfile_γ
 xchain0_n16_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1872]
 mov rdx, qword ptr [rbp + 1880]
 call rt_arg_stage@PLT
 mov edi, 8
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx25_1
 lea rcx, [rip + .Lx25_3]
 lea rdx, [rip + .Lx25_4]
 jmp rax
.Lx25_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx25_2
.Lx25_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx25_2
.Lx25_1:
 call rt_faildescr@PLT
.Lx25_2:
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 cmp eax, 99
 je xchain0_n17_α
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n17_α
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string "crack"
# IR_DISJUNCTION_NARY
 xchain0_n17_α:
 mov qword ptr [rbp + 1216], 0
 mov qword ptr [rbp + 1224], 0
 mov dword ptr [rbp + 1232], 0
 jmp xchain0_n20_α
xchain0_n17_as:
 mov eax, dword ptr [rbp + 1232]
 cmp eax, 0
 jne .Lx27_0
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1224], rax
 jmp xchain0_n19_α
.Lx27_0:
 jmp xchain0_n19_α
 xchain0_n17_β:
 mov eax, dword ptr [rbp + 1232]
 jmp xchain0_n19_α
xchain0_n17_af:
 add dword ptr [rbp + 1232], 1
 mov eax, dword ptr [rbp + 1232]
 jmp xchain0_n19_α
 xchain0_n18_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1824]
 mov rdx, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain0_n17_α
# IR_VAR_REF
 xchain0_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2416]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain0_n22_α
# IR_VAR_REF
 xchain0_n20_α:
 mov rax, 4294967305
 mov rdx, 1879052352
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp xchain0_n17_af
 xchain0_n21_α:
 jmp xchain0_n17_as
xchain0_n21_β:
 jmp xchain0_n19_α
# IR_VAR
 xchain0_n22_α:
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 1144], rax
 jmp xchain0_n24_α
# IR_VAR
 xchain0_n23_α:
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 1736], rax
 jmp xchain0_n26_α
# IR_FIELD_GET
 xchain0_n24_α:
 mov rdi, qword ptr [rip + .Lx38_0]
 mov rsi, qword ptr [rbp + 1136]
 mov rdx, qword ptr [rbp + 1144]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n25_α
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain0_n27_α
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "aindex"
# IR_DISJUNCTION_NARY
 xchain0_n25_α:
 mov qword ptr [rbp + 32], 0
 mov qword ptr [rbp + 40], 0
 mov dword ptr [rbp + 48], 0
 jmp xchain0_n29_α
xchain0_n25_as:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 jne .Lx40_0
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 40], rax
 jmp xchain0_n28_α
.Lx40_0:
 cmp eax, 1
 jne .Lx40_1
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 40], rax
 jmp xchain0_n28_α
.Lx40_1:
 jmp xchain0_n28_α
 xchain0_n25_β:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 je xchain0_n25_af
 jmp xchain0_n25_af
xchain0_n25_af:
 add dword ptr [rbp + 48], 1
 mov eax, dword ptr [rbp + 48]
 cmp eax, 1
 je xchain0_n30_α
 jmp xchain0_n2_α
# IR_FIELD_GET
 xchain0_n26_α:
 mov rdi, qword ptr [rip + .Lx41_0]
 mov rsi, qword ptr [rbp + 1728]
 mov rdx, qword ptr [rbp + 1736]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n17_af
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain0_n33_α
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string "code"
# IR_SUBSCRIPT x[i] variable
 xchain0_n27_α:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, qword ptr [rbp + 1104]
 mov rcx, qword ptr [rbp + 1112]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n25_α
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain0_n34_α
 xchain0_n28_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 16], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 24], rax
 jmp xchain0_n2_α
xchain0_n28_β:
 jmp xchain0_n2_α
# IR_VAR_REF
 xchain0_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2352]
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain0_n35_α
 xchain0_n29_β:
 jmp xchain0_n25_af
# IR_DISJUNCTION_NARY
 xchain0_n30_α:
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 mov dword ptr [rbp + 432], 0
 jmp xchain0_n37_α
xchain0_n30_as:
 mov eax, dword ptr [rbp + 432]
 cmp eax, 0
 jne .Lx47_0
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
 jmp xchain0_n36_α
.Lx47_0:
 jmp xchain0_n36_α
 xchain0_n30_β:
 mov eax, dword ptr [rbp + 432]
 jmp xchain0_n36_α
xchain0_n30_af:
 add dword ptr [rbp + 432], 1
 mov eax, dword ptr [rbp + 432]
 jmp xchain0_n36_α
# IR_ASSIGN_VAR
 xchain0_n31_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n25_af
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain0_n25_as
 xchain0_n31_β:
 jmp xchain0_n25_af
 xchain0_n32_α:
 jmp xchain0_n25_as
xchain0_n32_β:
 jmp xchain0_n25_af
# IR_SUBSCRIPT x[i] variable
 xchain0_n33_α:
 mov rdi, qword ptr [rbp + 1664]
 mov rsi, qword ptr [rbp + 1672]
 mov rdx, qword ptr [rbp + 1696]
 mov rcx, qword ptr [rbp + 1704]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n17_af
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain0_n39_α
# IR_DEREF variable -> value
 xchain0_n34_α:
 mov rdi, qword ptr [rbp + 1168]
 mov rsi, qword ptr [rbp + 1176]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n25_α
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain0_n40_α
# IR_VAR
 xchain0_n35_α:
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 136], rax
 jmp xchain0_n41_α
# IR_VAR
 xchain0_n36_α:
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 360], rax
 jmp xchain0_n42_α
# IR_VAR_REF
 xchain0_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2352]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain0_n43_α
 xchain0_n37_β:
 jmp xchain0_n30_af
 xchain0_n38_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 592]
 mov rdx, qword ptr [rbp + 600]
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain0_n30_as
 xchain0_n38_β:
 jmp xchain0_n36_α
# IR_DEREF variable -> value
 xchain0_n39_α:
 mov rdi, qword ptr [rbp + 1760]
 mov rsi, qword ptr [rbp + 1768]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n17_af
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain0_n44_α
 xchain0_n40_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1200]
 mov rdx, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain0_n25_α
# IR_FIELD_GET
 xchain0_n41_α:
 mov rdi, qword ptr [rip + .Lx61_0]
 mov rsi, qword ptr [rbp + 128]
 mov rdx, qword ptr [rbp + 136]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n25_af
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain0_n45_α
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "key"
# IR_VAR
 xchain0_n42_α:
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 392], rax
 jmp xchain0_n46_α
# IR_VAR
 xchain0_n43_α:
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 952], rax
 jmp xchain0_n47_α
 xchain0_n44_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1792]
 mov rdx, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain0_n48_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n45_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 mov rdx, qword ptr [rbp + 96]
 mov rcx, qword ptr [rbp + 104]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n25_af
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain0_n49_α
 xchain0_n46_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+304]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 312], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+320]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 328], rax
  .section .rodata
  .Lrkfn69: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn69]
 lea rsi, [rbp + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain0_n25_af
 jmp xchain0_n32_α
 xchain0_n46_β:
 jmp xchain0_n25_af
# IR_FIELD_GET
 xchain0_n47_α:
 mov rdi, qword ptr [rip + .Lx70_0]
 mov rsi, qword ptr [rbp + 944]
 mov rdx, qword ptr [rbp + 952]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n30_af
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain0_n50_α
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "key"
# IR_UNOP
 xchain0_n48_α:
 mov eax, dword ptr [rbp + 1648]
 cmp eax, 99
 je xchain0_n17_af
 cmp eax, 0
 jne xchain0_n17_af
 mov qword ptr [rbp + 1616], 0
 mov qword ptr [rbp + 1624], 0
 jmp xchain0_n51_α
# IR_NULLTEST_VAR
 xchain0_n49_α:
 mov eax, dword ptr [rbp + 160]
 cmp eax, 99
 je xchain0_n25_af
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n25_af
 cmp eax, 0
 jne xchain0_n25_af
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 200], rax
 jmp xchain0_n52_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n50_α:
 mov rdi, qword ptr [rbp + 880]
 mov rsi, qword ptr [rbp + 888]
 mov rdx, qword ptr [rbp + 912]
 mov rcx, qword ptr [rbp + 920]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n30_af
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain0_n53_α
# IR_VAR_REF
 xchain0_n51_α:
 mov rax, 4294967305
 mov rdx, 1879052352
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain0_n54_α
# IR_VAR
 xchain0_n52_α:
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 248], rax
 jmp xchain0_n31_α
# IR_DEREF variable -> value
 xchain0_n53_α:
 mov rdi, qword ptr [rbp + 976]
 mov rsi, qword ptr [rbp + 984]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n30_af
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain0_n55_α
# IR_VAR
 xchain0_n54_α:
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 1464], rax
 jmp xchain0_n56_α
 xchain0_n55_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1008]
 mov rdx, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain0_n58_α
# IR_FIELD_GET
 xchain0_n56_α:
 mov rdi, qword ptr [rip + .Lx82_0]
 mov rsi, qword ptr [rbp + 1456]
 mov rdx, qword ptr [rbp + 1464]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n57_α
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain0_n59_α
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "code"
# IR_VAR_REF
 xchain0_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2416]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain0_n60_α
 xchain0_n58_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
  .section .rodata
  .Lrkfn86: .string "type"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn86]
 lea rsi, [rbp + 832]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain0_n30_af
 jmp xchain0_n61_α
 xchain0_n58_β:
 jmp xchain0_n30_af
# IR_SUBSCRIPT x[i] variable
 xchain0_n59_α:
 mov rdi, qword ptr [rbp + 1392]
 mov rsi, qword ptr [rbp + 1400]
 mov rdx, qword ptr [rbp + 1424]
 mov rcx, qword ptr [rbp + 1432]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n57_α
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain0_n62_α
# IR_LIST_BANG
 xchain0_n60_α:
 mov qword ptr [rbp + 1280], 0
.Lx89_0:
 mov rdi, qword ptr [rbp + 1296]
 mov rsi, qword ptr [rbp + 1304]
 mov rdx, qword ptr [rbp + 1280]
 call rt_list_bang_var_at@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 cmp rax, 99
 je xchain0_n19_α
 jmp xchain0_n63_α
 xchain0_n60_β:
 inc qword ptr [rbp + 1280]
 jmp .Lx89_0
# IR_LIT_STRING
 xchain0_n61_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx90_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain0_n64_α
.Lx90_0:
 .quad .Lx90_0_s
.Lx90_0_s:
 .string "list"
# IR_LIT_INTEGER
 xchain0_n62_α:
 mov qword ptr [rbp + 1584], 6
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [rbp + 1592], rax
 jmp xchain0_n65_α
.Lx91_0:
 .quad 5
 xchain0_n63_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn93: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn93]
 lea rsi, [rbp + 1360]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je xchain0_n60_β
 jmp xchain0_n66_α
 xchain0_n63_β:
 jmp xchain0_n60_β
 xchain0_n64_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 816]
 mov rsi, qword ptr [rbp + 824]
 mov rdx, qword ptr [rbp + 1024]
 mov rcx, qword ptr [rbp + 1032]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n30_af
 mov rdi, qword ptr [rbp + 1024]
 mov rsi, qword ptr [rbp + 1032]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain0_n67_α
 xchain0_n65_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1584] -> [zr+1552]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1560], rax
  .section .rodata
  .Lrkfn96: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn96]
 lea rsi, [rbp + 1552]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je xchain0_n57_α
 jmp xchain0_n68_α
 xchain0_n65_β:
 jmp xchain0_n57_α
# IR_ASSIGN_VAR
 xchain0_n66_α:
 mov rdi, qword ptr [rbp + 1264]
 mov rsi, qword ptr [rbp + 1272]
 mov rdx, qword ptr [rbp + 1344]
 mov rcx, qword ptr [rbp + 1352]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n19_α
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain0_n60_β
# IR_VAR_REF
 xchain0_n67_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2352]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain0_n69_α
# IR_ASSIGN_VAR
 xchain0_n68_α:
 mov rdi, qword ptr [rbp + 1488]
 mov rsi, qword ptr [rbp + 1496]
 mov rdx, qword ptr [rbp + 1536]
 mov rcx, qword ptr [rbp + 1544]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n57_α
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain0_n70_α
# IR_VAR
 xchain0_n69_α:
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 536], rax
 jmp xchain0_n71_α
 xchain0_n70_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1520]
 mov rdx, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain0_n57_α
# IR_FIELD_GET
 xchain0_n71_α:
 mov rdi, qword ptr [rip + .Lx00001_0]
 mov rsi, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n36_α
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain0_n72_α
.Lx00001_0:
 .quad .Lx00001_0_s
.Lx00001_0_s:
 .string "key"
# IR_SUBSCRIPT x[i] variable
 xchain0_n72_α:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 mov rdx, qword ptr [rbp + 496]
 mov rcx, qword ptr [rbp + 504]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n36_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain0_n73_α
# IR_VAR_REF
 xchain0_n73_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2352]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain0_n74_α
# IR_VAR
 xchain0_n74_α:
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 712], rax
 jmp xchain0_n75_α
# IR_FIELD_GET
 xchain0_n75_α:
 mov rdi, qword ptr [rip + .Lx00002_0]
 mov rsi, qword ptr [rbp + 704]
 mov rdx, qword ptr [rbp + 712]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n36_α
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain0_n76_α
.Lx00002_0:
 .quad .Lx00002_0_s
.Lx00002_0_s:
 .string "key"
# IR_SUBSCRIPT x[i] variable
 xchain0_n76_α:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 672]
 mov rcx, qword ptr [rbp + 680]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n36_α
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain0_n77_α
# IR_DEREF variable -> value
 xchain0_n77_α:
 mov rdi, qword ptr [rbp + 736]
 mov rsi, qword ptr [rbp + 744]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n36_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain0_n78_α
# IR_MAKE_LIST
 xchain0_n78_α:
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 632], rax
 lea rdi, [rbp + 624]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain0_n79_α
# IR_ASSIGN_VAR
 xchain0_n79_α:
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n36_α
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain0_n38_α
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
  sub rsp, 1040
  mov [rsp + 1016], rcx
  mov [rsp + 1024], rdx
  mov [rsp + 1032], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1008
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 968], rsp
  mov rdi, rsp
  mov esi, 1008
  call rt_jmp_frame_lexprep@PLT
proc_kgen_α_body:
lea rax, [rip + xchain00003_n23_β]
mov qword ptr [rbp + 944], rax
 xchain00003_n0_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn118: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn118]
 lea rsi, [rbp + 928]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain00003_n2_α
 jmp xchain00003_n1_α
 xchain00003_n0_β:
 jmp xchain00003_n2_α
 xchain00003_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 912]
 mov rdx, qword ptr [rbp + 920]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain00003_n2_α
# IR_VAR
 xchain00003_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00003_n3_α
# IR_ITERATE(key)
 xchain00003_n3_α:
 mov qword ptr [rbp + 384], 0
.Lx00004_0:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 384]
 call rt_list_bang_key_at@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp rax, 99
 je xchain00003_n4_α
 jmp xchain00003_n5_α
 xchain00003_n3_β:
 inc qword ptr [rbp + 384]
 jmp .Lx00004_0
# IR_VAR
 xchain00003_n4_α:
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 328], rax
 jmp xchain00003_n6_α
 xchain00003_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00003_n8_α
 xchain00003_n6_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn128: .string "sort"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn128]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00003_n7_α
 jmp xchain00003_n9_α
 xchain00003_n6_β:
 jmp xchain00003_n7_α
# IR_VAR
 xchain00003_n7_α:
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 104], rax
 jmp xchain00003_n10_α
# IR_BOUND
 xchain00003_n8_α:
 mov qword ptr [rbp + 432], rsp
 jmp xchain00003_n11_α
 xchain00003_n9_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00003_n7_α
 xchain00003_n10_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+64]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 72], rax
  .section .rodata
  .Lrkfn135: .string "pull"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn135]
 lea rsi, [rbp + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_kgen_ω
 jmp xchain00003_n12_α
 xchain00003_n10_β:
 jmp proc_kgen_ω
# IR_VAR
 xchain00003_n11_α:
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 552], rax
 jmp xchain00003_n13_α
 xchain00003_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00003_n15_α
# IR_VAR_REF
 xchain00003_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 976]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00003_n16_α
# IR_UNMARK
 xchain00003_n14_α:
 mov rsp, qword ptr [rbp + 432]
 jmp xchain00003_n3_β
# IR_VAR
 xchain00003_n15_α:
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 168], rax
 jmp xchain00003_n17_α
# IR_LIT_INTEGER
 xchain00003_n16_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx00005_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00003_n18_α
.Lx00005_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00003_n17_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00006_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00003_n19_α
.Lx00006_0:
 .quad 2
# IR_SUBSCRIPT x[i] variable
 xchain00003_n18_α:
 mov rdi, qword ptr [rbp + 688]
 mov rsi, qword ptr [rbp + 696]
 mov rdx, qword ptr [rbp + 720]
 mov rcx, qword ptr [rbp + 728]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00003_n14_α
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00003_n20_α
# IR_LIT_INTEGER
 xchain00003_n19_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00007_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00003_n21_α
.Lx00007_0:
 .quad 0
# IR_DEREF variable -> value
 xchain00003_n20_α:
 mov rdi, qword ptr [rbp + 752]
 mov rsi, qword ptr [rbp + 760]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00003_n14_α
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain00003_n22_α
# IR_SUBSCRIPT section
 xchain00003_n21_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8, qword ptr [rbp + 224]
 mov r9, qword ptr [rbp + 232]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00003_n7_α
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00003_n23_α
# IR_LIT_STRING
 xchain00003_n22_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx00008_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain00003_n24_α
.Lx00008_0:
 .quad .Lx00008_0_s
.Lx00008_0_s:
 .string "FHEABCDX"
# IR_SUSPEND yield+resume
 xchain00003_n23_α:
 lea rax, [rip + xchain00003_n23_β]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 8], rax
 jmp proc_kgen_γ
 xchain00003_n23_β:
 jmp xchain00003_n7_α
# IR_LIT_STRING
 xchain00003_n24_α:
 mov qword ptr [rbp + 832], 1
 mov rax, qword ptr [rip + .Lx00009_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain00003_n25_α
.Lx00009_0:
 .quad .Lx00009_0_s
.Lx00009_0_s:
 .string "ZYXWVUTS"
 xchain00003_n25_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+624]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+640]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 648], rax
# marshal arg2 = producer-box slot [zr+832] -> [zr+656]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 664], rax
  .section .rodata
  .Lrkfn156: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn156]
 lea rsi, [rbp + 624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain00003_n14_α
 jmp xchain00003_n26_α
 xchain00003_n25_β:
 jmp xchain00003_n14_α
# IR_VAR
 xchain00003_n26_α:
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 872], rax
 jmp xchain00003_n27_α
 xchain00003_n27_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 608]
 mov rsi, qword ptr [rbp + 616]
 mov rdx, qword ptr [rbp + 976]
 mov rcx, qword ptr [rbp + 984]
 call str_concat_d@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00003_n28_α
 xchain00003_n28_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+496]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 504], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+512]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 520], rax
  .section .rodata
  .Lrkfn161: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn161]
 lea rsi, [rbp + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain00003_n14_α
 jmp xchain00003_n14_α
 xchain00003_n28_β:
 jmp xchain00003_n14_α
proc_kgen_res:
add rsp, 8
pop rbp
proc_kgen_β:
jmp qword ptr [rbp + 944]
proc_kgen_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_kgen_res]
push rax
mov rax, [rbp + 1016]
mov rbp, [rbp + 1032]
jmp rax
proc_kgen_ω:
mov rax, [rbp + 1024]
lea rsp, [rbp + 1040]
mov rbp, [rbp + 1032]
jmp rax
  .globl proc_dumpcode_α
proc_dumpcode_α:
#=======================================================================================================================
    .global proc_dumpcode_α
    .global proc_dumpcode_β
    .global proc_dumpcode_γ
    .global proc_dumpcode_ω
  sub rsp, 1376
  mov [rsp + 1352], rcx
  mov [rsp + 1360], rdx
  mov [rsp + 1368], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1344
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1272], rsp
  mov rdi, rsp
  mov esi, 1344
  call rt_jmp_frame_lexprep@PLT
proc_dumpcode_α_body:
# IR_VAR_REF
 xchain00010_n0_α:
 mov rax, 4294967305
 mov rdx, 1879052352
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain00010_n1_α
# IR_VAR
 xchain00010_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1192], rax
 jmp xchain00010_n2_α
# IR_SUBSCRIPT x[i] variable
 xchain00010_n2_α:
 mov rdi, qword ptr [rbp + 1152]
 mov rsi, qword ptr [rbp + 1160]
 mov rdx, qword ptr [rbp + 1184]
 mov rcx, qword ptr [rbp + 1192]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00010_n3_α
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain00010_n4_α
 xchain00010_n3_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn169: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn169]
 lea rsi, [rbp + 1120]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain00010_n6_α
 jmp xchain00010_n5_α
 xchain00010_n3_β:
 jmp xchain00010_n6_α
# IR_DEREF variable -> value
 xchain00010_n4_α:
 mov rdi, qword ptr [rbp + 1216]
 mov rsi, qword ptr [rbp + 1224]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00010_n3_α
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain00010_n7_α
# IR_ASSIGN gva
 xchain00010_n5_α:
 mov rax, qword ptr [rbp + 1104]
 mov rdx, qword ptr [rbp + 1112]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain00010_n6_α
# IR_VAR_REF
 xchain00010_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1296]
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain00010_n8_α
 xchain00010_n7_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00010_n3_α
 xchain00010_n8_α:
 mov qword ptr [rbp + 160], 0
 mov rdi, qword ptr [rip + .Lx00011_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00011_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00011_3]
 lea rdx, [rip + .Lx00011_4]
 jmp rax
.Lx00011_3:
 mov qword ptr [rbp + 168], rsp
 mov rax, qword ptr [rbp + 160]
 test rax, rax
 jne .Lx00011_5
 mov qword ptr [rbp + 160], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00011_2
.Lx00011_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00011_2
.Lx00011_4:
 mov rax, qword ptr [rbp + 160]
 test rax, rax
 jne .Lx00011_6
 mov qword ptr [rbp + 160], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00011_2
.Lx00011_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00011_2
.Lx00011_1:
 call rt_faildescr@PLT
.Lx00011_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain00010_n10_α
 jmp xchain00010_n9_α
 xchain00010_n8_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 168]
 jmp qword ptr [rsp]
.Lx00011_0:
 .quad .Lx00011_0_s
.Lx00011_0_s:
 .string "aseq"
# IR_SUBSCRIPT x[i] variable
 xchain00010_n9_α:
 mov rdi, qword ptr [rbp + 112]
 mov rsi, qword ptr [rbp + 120]
 mov rdx, qword ptr [rbp + 144]
 mov rcx, qword ptr [rbp + 152]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00010_n8_β
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00010_n11_α
# IR_RETURN
 xchain00010_n10_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_dumpcode_γ
# IR_DEREF variable -> value
 xchain00010_n11_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00010_n8_β
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00010_n12_α
# IR_LIT_INTEGER
 xchain00010_n12_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00012_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00010_n13_α
.Lx00012_0:
 .quad 3
 xchain00010_n13_α:
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
  .Lrkfn182: .string "sort"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn182]
 lea rsi, [rbp + 64]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je xchain00010_n10_α
 jmp xchain00010_n14_α
 xchain00010_n13_β:
 jmp xchain00010_n10_α
 xchain00010_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00010_n15_α
# IR_BOUND
 xchain00010_n15_α:
 mov qword ptr [rbp + 272], rsp
 jmp xchain00010_n16_α
# IR_VAR
 xchain00010_n16_α:
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 392], rax
 jmp xchain00010_n17_α
 xchain00010_n17_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 360], rax
  .section .rodata
  .Lrkfn189: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn189]
 lea rsi, [rbp + 352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain00010_n18_α
 jmp xchain00010_n19_α
 xchain00010_n17_β:
 jmp xchain00010_n18_α
# IR_UNMARK
 xchain00010_n18_α:
 mov rsp, qword ptr [rbp + 272]
 jmp xchain00010_n8_β
 xchain00010_n19_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00010_n20_α
# IR_VAR
 xchain00010_n20_α:
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1064], rax
 jmp xchain00010_n21_α
 xchain00010_n21_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+1024]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1032], rax
  .section .rodata
  .Lrkfn196: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn196]
 lea rsi, [rbp + 1024]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je xchain00010_n22_α
 jmp xchain00010_n23_α
 xchain00010_n21_β:
 jmp xchain00010_n22_α
# IR_DISJUNCTION_NARY
 xchain00010_n22_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 mov dword ptr [rbp + 448], 0
 jmp xchain00010_n25_α
xchain00010_n22_as:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 jne .Lx00013_0
 jmp xchain00010_n24_α
.Lx00013_0:
 cmp eax, 1
 jne .Lx00013_1
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 440], rax
 jmp xchain00010_n24_α
.Lx00013_1:
 jmp xchain00010_n24_α
 xchain00010_n22_β:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 je xchain00010_n16_α
 jmp xchain00010_n16_α
xchain00010_n22_af:
 add dword ptr [rbp + 448], 1
 mov eax, dword ptr [rbp + 448]
 cmp eax, 1
 je xchain00010_n26_α
 jmp xchain00010_n16_α
 xchain00010_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1008]
 mov rdx, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00010_n22_α
 xchain00010_n24_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 424], rax
 jmp xchain00010_n16_α
xchain00010_n24_β:
 jmp xchain00010_n16_α
# IR_VAR
 xchain00010_n25_α:
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 760], rax
 jmp xchain00010_n28_α
 xchain00010_n25_β:
 jmp xchain00010_n22_af
# IR_VAR
 xchain00010_n26_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 904], rax
 jmp xchain00010_n29_α
 xchain00010_n26_β:
 jmp xchain00010_n16_α
 xchain00010_n27_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 896]
 mov rdx, qword ptr [rbp + 904]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 960]
 mov rdx, qword ptr [rbp + 968]
 call rt_arg_stage@PLT
 mov edi, 4
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00014_1
 lea rcx, [rip + .Lx00014_3]
 lea rdx, [rip + .Lx00014_4]
 jmp rax
.Lx00014_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00014_2
.Lx00014_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00014_2
.Lx00014_1:
 call rt_faildescr@PLT
.Lx00014_2:
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain00010_n16_α
 jmp xchain00010_n22_as
 xchain00010_n27_β:
 jmp xchain00010_n16_α
.Lx00014_0:
 .quad .Lx00014_0_s
.Lx00014_0_s:
 .string "putchain"
 xchain00010_n28_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+720]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 728], rax
  .section .rodata
  .Lrkfn208: .string "type"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn208]
 lea rsi, [rbp + 720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain00010_n22_af
 jmp xchain00010_n30_α
 xchain00010_n28_β:
 jmp xchain00010_n22_af
# IR_VAR
 xchain00010_n29_α:
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 936], rax
 jmp xchain00010_n31_α
# IR_LIT_STRING
 xchain00010_n30_α:
 mov qword ptr [rbp + 784], 1
 mov rax, qword ptr [rip + .Lx00015_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain00010_n32_α
.Lx00015_0:
 .quad .Lx00015_0_s
.Lx00015_0_s:
 .string "list"
# IR_VAR
 xchain00010_n31_α:
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 968], rax
 jmp xchain00010_n27_α
 xchain00010_n32_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 784]
 mov rcx, qword ptr [rbp + 792]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00010_n22_af
 mov rdi, qword ptr [rbp + 784]
 mov rsi, qword ptr [rbp + 792]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00010_n33_α
# IR_VAR
 xchain00010_n33_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 552], rax
 jmp xchain00010_n34_α
# IR_VAR
 xchain00010_n34_α:
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 584], rax
 jmp xchain00010_n35_α
# IR_VAR
 xchain00010_n35_α:
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 648], rax
 jmp xchain00010_n36_α
# IR_LIST_BANG
 xchain00010_n36_α:
 mov qword ptr [rbp + 624], 0
.Lx00016_0:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 624]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp rax, 99
 je xchain00010_n16_α
 jmp xchain00010_n37_α
 xchain00010_n36_β:
 inc qword ptr [rbp + 624]
 jmp .Lx00016_0
 xchain00010_n37_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 544]
 mov rdx, qword ptr [rbp + 552]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 call rt_arg_stage@PLT
 mov edi, 4
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00017_1
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
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00010_n36_β
 jmp xchain00010_n36_β
 xchain00010_n37_β:
 jmp xchain00010_n36_β
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
mov rax, [rbp + 1352]
lea rsp, [rbp + 1376]
mov rbp, [rbp + 1368]
jmp rax
proc_dumpcode_ω:
mov rax, [rbp + 1360]
lea rsp, [rbp + 1376]
mov rbp, [rbp + 1368]
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
.Lx00019_0:
 .quad 1
# IR_LIT_REAL
 xchain00018_n1_α:
 mov qword ptr [rbp + 1104], 7
 mov rax, qword ptr [rip + .Lx00020_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00018_n2_α
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
  .Lrkfn229: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn229]
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
 jmp xchain00018_n5_α
.Lx00021_0:
 lea rdi, [rbp + 1056]
 lea rsi, [rbp + 1024]
 lea rdx, [rbp + 992]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00018_n5_α
# IR_LIT_INTEGER
 xchain00018_n4_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx00022_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain00018_n6_α
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
 jne xchain00018_n7_α
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
 jmp xchain00018_n7_α
 xchain00018_n5_β:
 jmp xchain00018_n4_α
# IR_LIT_REAL
 xchain00018_n6_α:
 mov qword ptr [rbp + 912], 7
 mov rax, qword ptr [rip + .Lx00024_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00018_n8_α
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
 xchain00018_n8_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+880]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 888], rax
  .section .rodata
  .Lrkfn237: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn237]
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
 jmp xchain00018_n11_α
.Lx00025_0:
 lea rdi, [rbp + 864]
 lea rsi, [rbp + 832]
 lea rdx, [rbp + 800]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00018_n11_α
# IR_VAR
 xchain00018_n10_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 728], rax
 jmp xchain00018_n12_α
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
 jne xchain00018_n14_α
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
 xchain00018_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
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
# IR_LIT_INTEGER
 xchain00018_n17_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00027_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00018_n19_α
.Lx00027_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00018_n18_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00028_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00018_n20_α
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
 jmp xchain00018_n21_α
.Lx00029_0:
 lea rdi, [rbp + 1184]
 lea rsi, [rbp + 528]
 lea rdx, [rbp + 464]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00018_n21_α
# IR_VAR
 xchain00018_n20_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 344], rax
 jmp xchain00018_n22_α
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
 jne xchain00018_n24_α
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
 jmp xchain00018_n24_α
 xchain00018_n21_β:
 jmp xchain00018_n18_α
# IR_LIT_INTEGER
 xchain00018_n22_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx00031_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00018_n25_α
.Lx00031_0:
 .quad 1
# IR_VAR
 xchain00018_n23_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 120], rax
 jmp xchain00018_n26_α
# IR_VAR
 xchain00018_n24_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 632], rax
 jmp xchain00018_n27_α
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
 jmp xchain00018_n28_α
.Lx00032_0:
 lea rdi, [rbp + 1184]
 lea rsi, [rbp + 368]
 lea rdx, [rbp + 304]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00018_n28_α
# IR_LIT_INTEGER
 xchain00018_n26_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00033_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00018_n29_α
.Lx00033_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00018_n27_α:
 mov qword ptr [rbp + 656], 6
 mov rax, qword ptr [rip + .Lx00034_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain00018_n30_α
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
 jne xchain00018_n31_α
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
 jmp xchain00018_n32_α
.Lx00036_0:
 lea rdi, [rbp + 1168]
 lea rsi, [rbp + 144]
 lea rdx, [rbp + 80]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00018_n32_α
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
 jmp xchain00018_n33_α
.Lx00037_0:
 lea rdi, [rbp + 1168]
 lea rsi, [rbp + 656]
 lea rdx, [rbp + 592]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00018_n33_α
# IR_TO
 xchain00018_n31_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 call to_int@PLT
 mov qword ptr [rbp + 240], 6
 mov qword ptr [rbp + 248], rax
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 call to_int@PLT
 mov qword ptr [rbp + 272], 6
 mov qword ptr [rbp + 280], rax
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
 jne xchain00018_n35_α
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
 jne xchain00018_n36_α
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
.Lx00041_0:
 .quad 5
# IR_TO
 xchain00018_n36_α:
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 call to_int@PLT
 mov qword ptr [rbp + 432], 6
 mov qword ptr [rbp + 440], rax
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call to_int@PLT
 mov qword ptr [rbp + 560], 6
 mov qword ptr [rbp + 568], rax
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
 mov rdi, qword ptr [rbp + 48]
 mov rsi, qword ptr [rbp + 56]
 call to_int@PLT
 mov qword ptr [rbp + 48], 6
 mov qword ptr [rbp + 56], rax
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 call to_int@PLT
 mov qword ptr [rbp + 176], 6
 mov qword ptr [rbp + 184], rax
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
  sub rsp, 5504
  mov [rsp + 5480], rcx
  mov [rsp + 5488], rdx
  mov [rsp + 5496], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 5472
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 5272], rsp
  mov rdi, rsp
  mov esi, 5472
  call rt_jmp_frame_lexprep@PLT
proc_putchain_α_body:
# IR_DISJUNCTION_NARY
 xchain00044_n0_α:
 mov qword ptr [rbp + 5104], 0
 mov qword ptr [rbp + 5112], 0
 mov dword ptr [rbp + 5120], 0
 jmp xchain00044_n2_α
xchain00044_n0_as:
 mov eax, dword ptr [rbp + 5120]
 cmp eax, 0
 jne .Lx00045_0
 jmp xchain00044_n1_α
.Lx00045_0:
 jmp xchain00044_n1_α
 xchain00044_n0_β:
 mov eax, dword ptr [rbp + 5120]
 jmp xchain00044_n1_α
xchain00044_n0_af:
 add dword ptr [rbp + 5120], 1
 mov eax, dword ptr [rbp + 5120]
 jmp xchain00044_n1_α
# IR_VAR
 xchain00044_n1_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 5040], rax
 mov qword ptr [rbp + 5048], rdx
 jmp xchain00044_n3_α
# IR_VAR
 xchain00044_n2_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 jmp xchain00044_n5_α
 xchain00044_n2_β:
 jmp xchain00044_n0_af
# IR_VAR
 xchain00044_n3_α:
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 5072], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 5080], rax
 jmp xchain00044_n6_α
# IR_VAR
 xchain00044_n4_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 4944], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 4952], rax
 jmp xchain00044_n7_α
# IR_VAR
 xchain00044_n5_α:
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 5232], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 5240], rax
 jmp xchain00044_n9_α
 xchain00044_n6_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5040] -> [zr+4992]
 mov rax, qword ptr [rbp + 5040]
 mov qword ptr [rbp + 4992], rax
 mov rax, qword ptr [rbp + 5048]
 mov qword ptr [rbp + 5000], rax
# marshal arg1 = producer-box slot [zr+5072] -> [zr+5008]
 mov rax, qword ptr [rbp + 5072]
 mov qword ptr [rbp + 5008], rax
 mov rax, qword ptr [rbp + 5080]
 mov qword ptr [rbp + 5016], rax
  .section .rodata
  .Lrkfn300: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn300]
 lea rsi, [rbp + 4992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4976], rax
 mov qword ptr [rbp + 4984], rdx
 cmp eax, 99
 je xchain00044_n4_α
 jmp xchain00044_n4_α
 xchain00044_n6_β:
 jmp xchain00044_n4_α
# IR_GEN_SCAN
 xchain00044_n7_α:
 mov rdi, qword ptr [rbp + 4944]
 mov rsi, qword ptr [rbp + 4952]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00044_n10_α
# IR_MAKE_LIST
 xchain00044_n8_α:
 lea rdi, [rbp + 4464]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 4448], rax
 mov qword ptr [rbp + 4456], rdx
 jmp xchain00044_n11_α
 xchain00044_n9_α:
# BOX IR_CALL member(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5200] -> [zr+5152]
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 5152], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 5160], rax
# marshal arg1 = producer-box slot [zr+5232] -> [zr+5168]
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 5168], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 5176], rax
  .section .rodata
  .Lrkfn306: .string "member"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn306]
 lea rsi, [rbp + 5152]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5136], rax
 mov qword ptr [rbp + 5144], rdx
 cmp eax, 99
 je xchain00044_n0_af
 jmp xchain00044_n12_α
 xchain00044_n9_β:
 jmp xchain00044_n0_af
# IR_LIT_INTEGER
 xchain00044_n10_α:
 mov qword ptr [rbp + 4912], 6
 mov rax, qword ptr [rip + .Lx00046_0]
 mov qword ptr [rbp + 4920], rax
 jmp xchain00044_n13_α
.Lx00046_0:
 .quad 8
# IR_ASSIGN gva
 xchain00044_n11_α:
 mov rax, qword ptr [rbp + 4448]
 mov rdx, qword ptr [rbp + 4456]
 mov qword ptr [1879052384], rax
 mov qword ptr [1879052392], rdx
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 jmp xchain00044_n14_α
# IR_RETURN
 xchain00044_n12_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_putchain_γ
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00044_n13_α:
 sub rsp, 16
 mov rax, 8
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00047_239
 add rsp, 16
 jmp xchain00044_n16_α
.Lx00047_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00047_240
 add rsp, 16
 jmp xchain00044_n16_α
.Lx00047_240:
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
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
 jmp xchain00044_n15_α
 xchain00044_n13_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00044_n16_α
# IR_MAKE_LIST
 xchain00044_n14_α:
 lea rdi, [rbp + 4432]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 4416], rax
 mov qword ptr [rbp + 4424], rdx
 jmp xchain00044_n17_α
 xchain00044_n15_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4880]
 mov rdx, qword ptr [rbp + 4888]
 mov qword ptr [rbp + 5456], rax
 mov qword ptr [rbp + 5464], rdx
 mov qword ptr [rbp + 4864], rax
 mov qword ptr [rbp + 4872], rdx
 jmp xchain00044_n16_α
# IR_LIT_INTEGER
 xchain00044_n16_α:
 mov qword ptr [rbp + 4832], 6
 mov rax, qword ptr [rip + .Lx00048_0]
 mov qword ptr [rbp + 4840], rax
 jmp xchain00044_n18_α
.Lx00048_0:
 .quad 7
# IR_ASSIGN gva
 xchain00044_n17_α:
 mov rax, qword ptr [rbp + 4416]
 mov rdx, qword ptr [rbp + 4424]
 mov qword ptr [1879052400], rax
 mov qword ptr [1879052408], rdx
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 jmp xchain00044_n19_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00044_n18_α:
 sub rsp, 16
 mov rax, 7
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00049_239
 add rsp, 16
 jmp xchain00044_n21_α
.Lx00049_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00049_240
 add rsp, 16
 jmp xchain00044_n21_α
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
 mov qword ptr [rbp + 4800], rax
 mov qword ptr [rbp + 4808], rdx
 jmp xchain00044_n20_α
 xchain00044_n18_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00044_n21_α
# IR_VAR
 xchain00044_n19_α:
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 4368], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 4376], rax
 jmp xchain00044_n22_α
 xchain00044_n20_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4800] -> [zr+4768]
 mov rax, qword ptr [rbp + 4800]
 mov qword ptr [rbp + 4768], rax
 mov rax, qword ptr [rbp + 4808]
 mov qword ptr [rbp + 4776], rax
  .section .rodata
  .Lrkfn322: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn322]
 lea rsi, [rbp + 4768]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4752], rax
 mov qword ptr [rbp + 4760], rdx
 cmp eax, 99
 je xchain00044_n21_α
 jmp xchain00044_n24_α
 xchain00044_n20_β:
 jmp xchain00044_n21_α
# IR_VAR
 xchain00044_n21_α:
 mov rax, qword ptr [rbp + 5456]
 mov qword ptr [rbp + 4672], rax
 mov rax, qword ptr [rbp + 5464]
 mov qword ptr [rbp + 4680], rax
 jmp xchain00044_n25_α
 xchain00044_n22_α:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 mov edi, 0
 mov rsi, qword ptr [rbp + 4368]
 mov rdx, qword ptr [rbp + 4376]
 call rt_arg_stage@PLT
 mov edi, 5
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00050_1
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
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 4320], rax
 mov qword ptr [rbp + 4328], rdx
 cmp eax, 99
 je xchain00044_n23_α
 jmp xchain00044_n27_α
 xchain00044_n22_β:
 jmp xchain00044_n23_α
.Lx00050_0:
 .quad .Lx00050_0_s
.Lx00050_0_s:
 .string "putdel"
# IR_VAR
 xchain00044_n23_α:
 mov rax, qword ptr [rbp + 5440]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 5448]
 mov qword ptr [rbp + 4040], rax
 jmp xchain00044_n28_α
 xchain00044_n24_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4752]
 mov rdx, qword ptr [rbp + 4760]
 mov qword ptr [rbp + 5344], rax
 mov qword ptr [rbp + 5352], rdx
 mov qword ptr [rbp + 4736], rax
 mov qword ptr [rbp + 4744], rdx
 jmp xchain00044_n21_α
# IR_VAR
 xchain00044_n25_α:
 mov rax, qword ptr [rbp + 5344]
 mov qword ptr [rbp + 4704], rax
 mov rax, qword ptr [rbp + 5352]
 mov qword ptr [rbp + 4712], rax
 jmp xchain00044_n30_α
# IR_GEN_SCAN
 xchain00044_n26_α:
 lea rdi, [rbp + 4480]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 4480]
 mov r14, qword ptr [rbp + 4488]
 mov r15, qword ptr [rbp + 4496]
 jmp xchain00044_n8_α
 xchain00044_n26_β:
 jmp xchain00044_n8_α
 xchain00044_n27_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4320]
 mov rdx, qword ptr [rbp + 4328]
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 jmp xchain00044_n23_α
 xchain00044_n28_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4032]
 mov rdx, qword ptr [rbp + 4040]
 call rt_arg_stage@PLT
 mov edi, 7
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00051_1
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
 mov qword ptr [rbp + 3984], rax
 mov qword ptr [rbp + 3992], rdx
 cmp eax, 99
 je xchain00044_n29_α
 jmp xchain00044_n31_α
 xchain00044_n28_β:
 jmp xchain00044_n29_α
.Lx00051_0:
 .quad .Lx00051_0_s
.Lx00051_0_s:
 .string "successor"
 xchain00044_n29_α:
 mov edi, 6
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00052_1
 lea rcx, [rip + .Lx00052_3]
 lea rdx, [rip + .Lx00052_4]
 jmp rax
.Lx00052_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00052_2
.Lx00052_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00052_2
.Lx00052_1:
 call rt_faildescr@PLT
.Lx00052_2:
 mov qword ptr [rbp + 3936], rax
 mov qword ptr [rbp + 3944], rdx
 cmp eax, 99
 je xchain00044_n32_α
 jmp xchain00044_n32_α
 xchain00044_n29_β:
 jmp xchain00044_n32_α
.Lx00052_0:
 .quad .Lx00052_0_s
.Lx00052_0_s:
 .string "collapse"
# IR_COERCE_NUMERIC
 xchain00044_n30_α:
 mov eax, dword ptr [rbp + 5456]
 cmp eax, 7
 je .Lx00053_1
 cmp eax, 6
 jne .Lx00053_0
 mov eax, dword ptr [rbp + 5344]
 cmp eax, 6
 jne .Lx00053_0
.Lx00053_1:
 mov rax, qword ptr [rbp + 5456]
 mov qword ptr [rbp + 4640], rax
 mov rax, qword ptr [rbp + 5464]
 mov qword ptr [rbp + 4648], rax
 jmp xchain00044_n33_α
.Lx00053_0:
 lea rdi, [rbp + 5456]
 lea rsi, [rbp + 5344]
 lea rdx, [rbp + 4640]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00044_n33_α
 xchain00044_n31_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3984]
 mov rdx, qword ptr [rbp + 3992]
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 mov qword ptr [rbp + 3968], rax
 mov qword ptr [rbp + 3976], rdx
 jmp xchain00044_n34_α
# IR_VAR
 xchain00044_n32_α:
 mov rax, qword ptr [rbp + 5344]
 mov qword ptr [rbp + 3904], rax
 mov rax, qword ptr [rbp + 5352]
 mov qword ptr [rbp + 3912], rax
 jmp xchain00044_n35_α
# IR_COERCE_NUMERIC
 xchain00044_n33_α:
 mov eax, dword ptr [rbp + 5344]
 cmp eax, 7
 je .Lx00054_1
 cmp eax, 6
 jne .Lx00054_0
 mov eax, dword ptr [rbp + 5456]
 cmp eax, 6
 jne .Lx00054_0
.Lx00054_1:
 mov rax, qword ptr [rbp + 5344]
 mov qword ptr [rbp + 4608], rax
 mov rax, qword ptr [rbp + 5352]
 mov qword ptr [rbp + 4616], rax
 jmp xchain00044_n37_α
.Lx00054_0:
 lea rdi, [rbp + 5344]
 lea rsi, [rbp + 5456]
 lea rdx, [rbp + 4608]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00044_n37_α
# IR_VAR
 xchain00044_n34_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 jmp xchain00044_n38_α
 xchain00044_n35_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3904]
 mov rdx, qword ptr [rbp + 3912]
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 jmp xchain00044_n40_α
# IR_VAR
 xchain00044_n36_α:
 mov rax, qword ptr [rbp + 5360]
 mov qword ptr [rbp + 3824], rax
 mov rax, qword ptr [rbp + 5368]
 mov qword ptr [rbp + 3832], rax
 jmp xchain00044_n41_α
 xchain00044_n37_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 4640]
 cmp eax, 100
 je .Lx00055_0
 mov eax, dword ptr [rbp + 4608]
 cmp eax, 100
 je .Lx00055_0
 mov eax, dword ptr [rbp + 4640]
 cmp eax, 6
 jne .Lx00055_2
 mov eax, dword ptr [rbp + 4608]
 cmp eax, 6
 jne .Lx00055_2
.Lx00055_1:
 mov rax, qword ptr [rbp + 4648]
 mov rcx, qword ptr [rbp + 4616]
 sub rax, rcx
 mov qword ptr [rbp + 4576], 6
 mov qword ptr [rbp + 4584], rax
 jmp xchain00044_n43_α
.Lx00055_0:
 mov rdi, qword ptr [rbp + 4640]
 mov rsi, qword ptr [rbp + 4648]
 mov rdx, qword ptr [rbp + 4608]
 mov rcx, qword ptr [rbp + 4616]
 mov r8d, 1
 lea r9, [rbp + 4576]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00044_n43_α
.Lx00055_2:
 mov rdi, qword ptr [rbp + 4640]
 mov rsi, qword ptr [rbp + 4648]
 mov rdx, qword ptr [rbp + 4608]
 mov rcx, qword ptr [rbp + 4616]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00044_n26_α
 mov qword ptr [rbp + 4576], rax
 mov qword ptr [rbp + 4584], rdx
 jmp xchain00044_n43_α
 xchain00044_n37_β:
 jmp xchain00044_n26_α
# IR_VAR
 xchain00044_n38_α:
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 4272], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 4280], rax
 jmp xchain00044_n44_α
# IR_VAR
 xchain00044_n39_α:
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 4144], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 4152], rax
 jmp xchain00044_n45_α
 xchain00044_n40_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3888]
 mov rdx, qword ptr [rbp + 3896]
 mov qword ptr [rbp + 5424], rax
 mov qword ptr [rbp + 5432], rdx
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 jmp xchain00044_n46_α
 xchain00044_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3824]
 mov rdx, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 jmp xchain00044_n47_α
# IR_VAR
 xchain00044_n42_α:
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 3392], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 3400], rax
 jmp xchain00044_n48_α
 xchain00044_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4576]
 mov rdx, qword ptr [rbp + 4584]
 mov qword ptr [rbp + 5360], rax
 mov qword ptr [rbp + 5368], rdx
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 jmp xchain00044_n50_α
 xchain00044_n44_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4240] -> [zr+4192]
 mov rax, qword ptr [rbp + 4240]
 mov qword ptr [rbp + 4192], rax
 mov rax, qword ptr [rbp + 4248]
 mov qword ptr [rbp + 4200], rax
# marshal arg1 = producer-box slot [zr+4272] -> [zr+4208]
 mov rax, qword ptr [rbp + 4272]
 mov qword ptr [rbp + 4208], rax
 mov rax, qword ptr [rbp + 4280]
 mov qword ptr [rbp + 4216], rax
  .section .rodata
  .Lrkfn361: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn361]
 lea rsi, [rbp + 4192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 cmp eax, 99
 je xchain00044_n39_α
 jmp xchain00044_n39_α
 xchain00044_n44_β:
 jmp xchain00044_n39_α
 xchain00044_n45_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4144]
 mov rdx, qword ptr [rbp + 4152]
 call rt_arg_stage@PLT
 mov edi, 5
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00056_1
 lea rcx, [rip + .Lx00056_3]
 lea rdx, [rip + .Lx00056_4]
 jmp rax
.Lx00056_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00056_2
.Lx00056_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00056_2
.Lx00056_1:
 call rt_faildescr@PLT
.Lx00056_2:
 mov qword ptr [rbp + 4096], rax
 mov qword ptr [rbp + 4104], rdx
 cmp eax, 99
 je xchain00044_n23_α
 jmp xchain00044_n51_α
 xchain00044_n45_β:
 jmp xchain00044_n23_α
.Lx00056_0:
 .quad .Lx00056_0_s
.Lx00056_0_s:
 .string "putdel"
 xchain00044_n46_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3872]
 mov rdx, qword ptr [rbp + 3880]
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 jmp xchain00044_n36_α
 xchain00044_n47_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3808]
 mov rdx, qword ptr [rbp + 3816]
 mov qword ptr [rbp + 5392], rax
 mov qword ptr [rbp + 5400], rdx
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 jmp xchain00044_n52_α
# IR_VAR
 xchain00044_n48_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 jmp xchain00044_n53_α
# IR_VAR
 xchain00044_n49_α:
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 2896], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 2904], rax
 jmp xchain00044_n54_α
 xchain00044_n50_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 4560]
 mov qword ptr [rbp + 4544], rax
 mov rax, qword ptr [rbp + 4568]
 mov qword ptr [rbp + 4552], rax
 jmp xchain00044_n56_α
xchain00044_n50_β:
 jmp xchain00044_n26_α
 xchain00044_n51_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4096]
 mov rdx, qword ptr [rbp + 4104]
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
 jmp xchain00044_n57_α
 xchain00044_n52_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3792]
 mov rdx, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 5296], rax
 mov qword ptr [rbp + 5304], rdx
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 jmp xchain00044_n42_α
# IR_LIST_BANG
 xchain00044_n53_α:
 mov qword ptr [rbp + 3440], 0
.Lx00057_0:
 mov rdi, qword ptr [rbp + 3456]
 mov rsi, qword ptr [rbp + 3464]
 mov rdx, qword ptr [rbp + 3440]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 cmp rax, 99
 je xchain00044_n49_α
 jmp xchain00044_n58_α
 xchain00044_n53_β:
 inc qword ptr [rbp + 3440]
 jmp .Lx00057_0
# IR_VAR
 xchain00044_n54_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain00044_n59_α
# IR_VAR
 xchain00044_n55_α:
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 2728], rax
 jmp xchain00044_n60_α
# IR_GEN_SCAN
 xchain00044_n56_α:
 mov rax, qword ptr [rbp + 4544]
 mov qword ptr [rbp + 4512], rax
 mov rax, qword ptr [rbp + 4552]
 mov qword ptr [rbp + 4520], rax
 lea rdi, [rbp + 4480]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 4480]
 mov r14, qword ptr [rbp + 4488]
 mov r15, qword ptr [rbp + 4496]
 jmp xchain00044_n8_α
 xchain00044_n56_β:
 jmp xchain00044_n8_α
 xchain00044_n57_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 4080]
 mov qword ptr [rbp + 4064], rax
 mov rax, qword ptr [rbp + 4088]
 mov qword ptr [rbp + 4072], rax
 jmp xchain00044_n23_α
xchain00044_n57_β:
 jmp xchain00044_n23_α
# IR_COERCE_NUMERIC
 xchain00044_n58_α:
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 7
 je .Lx00058_1
 cmp eax, 6
 jne .Lx00058_0
 mov eax, dword ptr [rbp + 3424]
 cmp eax, 6
 jne .Lx00058_0
.Lx00058_1:
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 3360], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 3368], rax
 jmp xchain00044_n62_α
.Lx00058_0:
 lea rdi, [rbp + 5312]
 lea rsi, [rbp + 3424]
 lea rdx, [rbp + 3360]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00044_n62_α
# IR_LIST_BANG
 xchain00044_n59_α:
 mov qword ptr [rbp + 2944], 0
.Lx00059_0:
 mov rdi, qword ptr [rbp + 2960]
 mov rsi, qword ptr [rbp + 2968]
 mov rdx, qword ptr [rbp + 2944]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 cmp rax, 99
 je xchain00044_n55_α
 jmp xchain00044_n63_α
 xchain00044_n59_β:
 inc qword ptr [rbp + 2944]
 jmp .Lx00059_0
# IR_VAR
 xchain00044_n60_α:
 mov rax, qword ptr [rbp + 5424]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 5432]
 mov qword ptr [rbp + 2760], rax
 jmp xchain00044_n64_α
# IR_VAR
 xchain00044_n61_α:
 mov rax, qword ptr [rbp + 5328]
 mov qword ptr [rbp + 2416], rax
 mov rax, qword ptr [rbp + 5336]
 mov qword ptr [rbp + 2424], rax
 jmp xchain00044_n65_α
# IR_COERCE_NUMERIC
 xchain00044_n62_α:
 mov eax, dword ptr [rbp + 3424]
 cmp eax, 7
 je .Lx00060_1
 cmp eax, 6
 jne .Lx00060_0
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 6
 jne .Lx00060_0
.Lx00060_1:
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3328], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3336], rax
 jmp xchain00044_n67_α
.Lx00060_0:
 lea rdi, [rbp + 3424]
 lea rsi, [rbp + 5312]
 lea rdx, [rbp + 3328]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00044_n67_α
# IR_COERCE_NUMERIC
 xchain00044_n63_α:
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 7
 je .Lx00061_1
 cmp eax, 6
 jne .Lx00061_0
 mov eax, dword ptr [rbp + 2928]
 cmp eax, 6
 jne .Lx00061_0
.Lx00061_1:
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 2872], rax
 jmp xchain00044_n68_α
.Lx00061_0:
 lea rdi, [rbp + 5296]
 lea rsi, [rbp + 2928]
 lea rdx, [rbp + 2864]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00044_n68_α
# IR_COERCE_NUMERIC
 xchain00044_n64_α:
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 7
 je .Lx00062_1
 cmp eax, 6
 jne .Lx00062_0
 mov eax, dword ptr [rbp + 5424]
 cmp eax, 6
 jne .Lx00062_0
.Lx00062_1:
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 2688], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 2696], rax
 jmp xchain00044_n69_α
.Lx00062_0:
 lea rdi, [rbp + 5312]
 lea rsi, [rbp + 5424]
 lea rdx, [rbp + 2688]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00044_n69_α
# IR_VAR
 xchain00044_n65_α:
 mov rax, qword ptr [rbp + 5408]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 5416]
 mov qword ptr [rbp + 2552], rax
 jmp xchain00044_n70_α
# IR_VAR
 xchain00044_n66_α:
 mov rax, qword ptr [rbp + 5328]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 5336]
 mov qword ptr [rbp + 2184], rax
 jmp xchain00044_n71_α
 xchain00044_n67_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3360]
 cmp eax, 100
 je .Lx00063_0
 mov eax, dword ptr [rbp + 3328]
 cmp eax, 100
 je .Lx00063_0
 mov eax, dword ptr [rbp + 3360]
 cmp eax, 6
 jne .Lx00063_2
 mov eax, dword ptr [rbp + 3328]
 cmp eax, 6
 jne .Lx00063_2
.Lx00063_1:
 mov rax, qword ptr [rbp + 3368]
 mov rcx, qword ptr [rbp + 3336]
 add rax, rcx
 mov qword ptr [rbp + 3296], 6
 mov qword ptr [rbp + 3304], rax
 jmp xchain00044_n73_α
.Lx00063_0:
 mov rdi, qword ptr [rbp + 3360]
 mov rsi, qword ptr [rbp + 3368]
 mov rdx, qword ptr [rbp + 3328]
 mov rcx, qword ptr [rbp + 3336]
 mov r8d, 0
 lea r9, [rbp + 3296]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00044_n73_α
.Lx00063_2:
 mov rdi, qword ptr [rbp + 3360]
 mov rsi, qword ptr [rbp + 3368]
 mov rdx, qword ptr [rbp + 3328]
 mov rcx, qword ptr [rbp + 3336]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00044_n49_α
 mov qword ptr [rbp + 3296], rax
 mov qword ptr [rbp + 3304], rdx
 jmp xchain00044_n73_α
 xchain00044_n67_β:
 jmp xchain00044_n49_α
# IR_COERCE_NUMERIC
 xchain00044_n68_α:
 mov eax, dword ptr [rbp + 2928]
 cmp eax, 7
 je .Lx00064_1
 cmp eax, 6
 jne .Lx00064_0
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 6
 jne .Lx00064_0
.Lx00064_1:
 mov rax, qword ptr [rbp + 2928]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 2936]
 mov qword ptr [rbp + 2840], rax
 jmp xchain00044_n74_α
.Lx00064_0:
 lea rdi, [rbp + 2928]
 lea rsi, [rbp + 5296]
 lea rdx, [rbp + 2832]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00044_n74_α
# IR_COERCE_NUMERIC
 xchain00044_n69_α:
 mov eax, dword ptr [rbp + 5424]
 cmp eax, 7
 je .Lx00065_1
 cmp eax, 6
 jne .Lx00065_0
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 6
 jne .Lx00065_0
.Lx00065_1:
 mov rax, qword ptr [rbp + 5424]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 5432]
 mov qword ptr [rbp + 2664], rax
 jmp xchain00044_n75_α
.Lx00065_0:
 lea rdi, [rbp + 5424]
 lea rsi, [rbp + 5312]
 lea rdx, [rbp + 2656]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00044_n75_α
# IR_VAR
 xchain00044_n70_α:
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 2584], rax
 jmp xchain00044_n76_α
# IR_VAR
 xchain00044_n71_α:
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 2312], rax
 jmp xchain00044_n77_α
# IR_VAR
 xchain00044_n72_α:
 mov rax, qword ptr [rbp + 5328]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 5336]
 mov qword ptr [rbp + 1944], rax
 jmp xchain00044_n78_α
 xchain00044_n73_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3296]
 mov rdx, qword ptr [rbp + 3304]
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain00044_n80_α
 xchain00044_n74_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 100
 je .Lx00066_0
 mov eax, dword ptr [rbp + 2832]
 cmp eax, 100
 je .Lx00066_0
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 6
 jne .Lx00066_2
 mov eax, dword ptr [rbp + 2832]
 cmp eax, 6
 jne .Lx00066_2
.Lx00066_1:
 mov rax, qword ptr [rbp + 2872]
 mov rcx, qword ptr [rbp + 2840]
 add rax, rcx
 mov qword ptr [rbp + 2800], 6
 mov qword ptr [rbp + 2808], rax
 jmp xchain00044_n81_α
.Lx00066_0:
 mov rdi, qword ptr [rbp + 2864]
 mov rsi, qword ptr [rbp + 2872]
 mov rdx, qword ptr [rbp + 2832]
 mov rcx, qword ptr [rbp + 2840]
 mov r8d, 0
 lea r9, [rbp + 2800]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00044_n81_α
.Lx00066_2:
 mov rdi, qword ptr [rbp + 2864]
 mov rsi, qword ptr [rbp + 2872]
 mov rdx, qword ptr [rbp + 2832]
 mov rcx, qword ptr [rbp + 2840]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00044_n55_α
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 jmp xchain00044_n81_α
 xchain00044_n74_β:
 jmp xchain00044_n55_α
 xchain00044_n75_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2688]
 cmp eax, 100
 je .Lx00067_0
 mov eax, dword ptr [rbp + 2656]
 cmp eax, 100
 je .Lx00067_0
 mov eax, dword ptr [rbp + 2688]
 cmp eax, 6
 jne .Lx00067_2
 mov eax, dword ptr [rbp + 2656]
 cmp eax, 6
 jne .Lx00067_2
.Lx00067_1:
 mov rax, qword ptr [rbp + 2696]
 mov rcx, qword ptr [rbp + 2664]
 sub rax, rcx
 mov qword ptr [rbp + 2624], 6
 mov qword ptr [rbp + 2632], rax
 jmp xchain00044_n82_α
.Lx00067_0:
 mov rdi, qword ptr [rbp + 2688]
 mov rsi, qword ptr [rbp + 2696]
 mov rdx, qword ptr [rbp + 2656]
 mov rcx, qword ptr [rbp + 2664]
 mov r8d, 1
 lea r9, [rbp + 2624]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00044_n82_α
.Lx00067_2:
 mov rdi, qword ptr [rbp + 2688]
 mov rsi, qword ptr [rbp + 2696]
 mov rdx, qword ptr [rbp + 2656]
 mov rcx, qword ptr [rbp + 2664]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00044_n61_α
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 jmp xchain00044_n82_α
 xchain00044_n75_β:
 jmp xchain00044_n61_α
# IR_COERCE_NUMERIC
 xchain00044_n76_α:
 mov eax, dword ptr [rbp + 5408]
 cmp eax, 7
 je .Lx00068_1
 cmp eax, 6
 jne .Lx00068_0
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 6
 jne .Lx00068_0
.Lx00068_1:
 mov rax, qword ptr [rbp + 5408]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 5416]
 mov qword ptr [rbp + 2520], rax
 jmp xchain00044_n83_α
.Lx00068_0:
 lea rdi, [rbp + 5408]
 lea rsi, [rbp + 5312]
 lea rdx, [rbp + 2512]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00044_n83_α
# IR_VAR
 xchain00044_n77_α:
 mov rax, qword ptr [rbp + 5392]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 5400]
 mov qword ptr [rbp + 2344], rax
 jmp xchain00044_n84_α
# IR_VAR
 xchain00044_n78_α:
 mov rax, qword ptr [rbp + 5376]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 5384]
 mov qword ptr [rbp + 2072], rax
 jmp xchain00044_n85_α
# IR_VAR
 xchain00044_n79_α:
 mov rax, qword ptr [rbp + 5328]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 5336]
 mov qword ptr [rbp + 1832], rax
 jmp xchain00044_n86_α
# IR_BOUND
 xchain00044_n80_α:
 mov qword ptr [rbp + 3488], rsp
 jmp xchain00044_n88_α
 xchain00044_n81_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2800]
 mov rdx, qword ptr [rbp + 2808]
 mov qword ptr [rbp + 5296], rax
 mov qword ptr [rbp + 5304], rdx
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain00044_n89_α
 xchain00044_n82_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2624]
 mov rdx, qword ptr [rbp + 2632]
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 jmp xchain00044_n61_α
# IR_COERCE_NUMERIC
 xchain00044_n83_α:
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 7
 je .Lx00069_1
 cmp eax, 6
 jne .Lx00069_0
 mov eax, dword ptr [rbp + 5408]
 cmp eax, 6
 jne .Lx00069_0
.Lx00069_1:
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 2488], rax
 jmp xchain00044_n90_α
.Lx00069_0:
 lea rdi, [rbp + 5312]
 lea rsi, [rbp + 5408]
 lea rdx, [rbp + 2480]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00044_n90_α
# IR_COERCE_NUMERIC
 xchain00044_n84_α:
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 7
 je .Lx00070_1
 cmp eax, 6
 jne .Lx00070_0
 mov eax, dword ptr [rbp + 5392]
 cmp eax, 6
 jne .Lx00070_0
.Lx00070_1:
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 2280], rax
 jmp xchain00044_n91_α
.Lx00070_0:
 lea rdi, [rbp + 5296]
 lea rsi, [rbp + 5392]
 lea rdx, [rbp + 2272]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00044_n91_α
# IR_VAR
 xchain00044_n85_α:
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 2104], rax
 jmp xchain00044_n92_α
# IR_LIT_INTEGER
 xchain00044_n86_α:
 mov qword ptr [rbp + 1856], 6
 mov rax, qword ptr [rip + .Lx00071_0]
 mov qword ptr [rbp + 1864], rax
 jmp xchain00044_n93_α
.Lx00071_0:
 .quad 9999
# IR_VAR
 xchain00044_n87_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1368], rax
 jmp xchain00044_n94_α
# IR_VAR
 xchain00044_n88_α:
 mov rax, qword ptr [rbp + 5424]
 mov qword ptr [rbp + 3712], rax
 mov rax, qword ptr [rbp + 5432]
 mov qword ptr [rbp + 3720], rax
 jmp xchain00044_n96_α
# IR_BOUND
 xchain00044_n89_α:
 mov qword ptr [rbp + 2992], rsp
 jmp xchain00044_n98_α
 xchain00044_n90_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2512]
 cmp eax, 100
 je .Lx00072_0
 mov eax, dword ptr [rbp + 2480]
 cmp eax, 100
 je .Lx00072_0
 mov eax, dword ptr [rbp + 2512]
 cmp eax, 6
 jne .Lx00072_2
 mov eax, dword ptr [rbp + 2480]
 cmp eax, 6
 jne .Lx00072_2
.Lx00072_1:
 mov rax, qword ptr [rbp + 2520]
 mov rcx, qword ptr [rbp + 2488]
 sub rax, rcx
 mov qword ptr [rbp + 2448], 6
 mov qword ptr [rbp + 2456], rax
 jmp xchain00044_n99_α
.Lx00072_0:
 mov rdi, qword ptr [rbp + 2512]
 mov rsi, qword ptr [rbp + 2520]
 mov rdx, qword ptr [rbp + 2480]
 mov rcx, qword ptr [rbp + 2488]
 mov r8d, 1
 lea r9, [rbp + 2448]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00044_n99_α
.Lx00072_2:
 mov rdi, qword ptr [rbp + 2512]
 mov rsi, qword ptr [rbp + 2520]
 mov rdx, qword ptr [rbp + 2480]
 mov rcx, qword ptr [rbp + 2488]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00044_n66_α
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain00044_n99_α
 xchain00044_n90_β:
 jmp xchain00044_n66_α
# IR_COERCE_NUMERIC
 xchain00044_n91_α:
 mov eax, dword ptr [rbp + 5392]
 cmp eax, 7
 je .Lx00073_1
 cmp eax, 6
 jne .Lx00073_0
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 6
 jne .Lx00073_0
.Lx00073_1:
 mov rax, qword ptr [rbp + 5392]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 5400]
 mov qword ptr [rbp + 2248], rax
 jmp xchain00044_n00074_α
.Lx00073_0:
 lea rdi, [rbp + 5392]
 lea rsi, [rbp + 5296]
 lea rdx, [rbp + 2240]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00044_n00074_α
# IR_COERCE_NUMERIC
 xchain00044_n92_α:
 mov eax, dword ptr [rbp + 5376]
 cmp eax, 7
 je .Lx00075_1
 cmp eax, 6
 jne .Lx00075_0
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 6
 jne .Lx00075_0
.Lx00075_1:
 mov rax, qword ptr [rbp + 5376]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 5384]
 mov qword ptr [rbp + 2040], rax
 jmp xchain00044_n00076_α
.Lx00075_0:
 lea rdi, [rbp + 5376]
 lea rsi, [rbp + 5296]
 lea rdx, [rbp + 2032]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00044_n00076_α
 xchain00044_n93_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5328]
 cmp eax, 100
 je .Lx00077_0
 mov eax, dword ptr [rbp + 1856]
 cmp eax, 100
 je .Lx00077_0
 mov eax, dword ptr [rbp + 5328]
 cmp eax, 6
 jne .Lx00077_2
 mov eax, dword ptr [rbp + 1856]
 cmp eax, 6
 jne .Lx00077_2
.Lx00077_1:
 mov rax, qword ptr [rbp + 5336]
 mov rcx, qword ptr [rbp + 1864]
 cmp rax, rcx
 jle xchain00044_n87_α
 mov rcx, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1792], rcx
 mov rcx, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1800], rcx
 jmp xchain00044_n00078_α
.Lx00077_0:
 mov rdi, qword ptr [rbp + 5328]
 mov rsi, qword ptr [rbp + 5336]
 mov rdx, qword ptr [rbp + 1856]
 mov rcx, qword ptr [rbp + 1864]
 mov r8d, 7
 lea r9, [rbp + 1792]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00077_1
 cmp eax, 1
 je xchain00044_n87_α
 jmp xchain00044_n00078_α
.Lx00077_2:
 mov rdi, qword ptr [rbp + 5328]
 mov rsi, qword ptr [rbp + 5336]
 mov rdx, qword ptr [rbp + 1856]
 mov rcx, qword ptr [rbp + 1864]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00044_n87_α
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1800], rax
 jmp xchain00044_n00078_α
# IR_VAR
 xchain00044_n94_α:
 mov rax, qword ptr [rbp + 5328]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 5336]
 mov qword ptr [rbp + 1464], rax
 jmp xchain00044_n00079_α
# IR_VAR
 xchain00044_n95_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00044_n00001_α
# IR_VAR
 xchain00044_n96_α:
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 3744], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 3752], rax
 jmp xchain00044_n00080_α
# IR_VAR
 xchain00044_n97_α:
 mov rax, qword ptr [rbp + 5408]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 5416]
 mov qword ptr [rbp + 3608], rax
 jmp xchain00044_n00081_α
# IR_VAR
 xchain00044_n98_α:
 mov rax, qword ptr [rbp + 5392]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 5400]
 mov qword ptr [rbp + 3224], rax
 jmp xchain00044_n00082_α
 xchain00044_n99_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5328]
 cmp eax, 100
 je .Lx00083_0
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 100
 je .Lx00083_0
 mov eax, dword ptr [rbp + 5328]
 cmp eax, 6
 jne .Lx00083_2
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 6
 jne .Lx00083_2
.Lx00083_1:
 mov rax, qword ptr [rbp + 5336]
 mov rcx, qword ptr [rbp + 2456]
 cmp rax, rcx
 jge xchain00044_n66_α
 mov rcx, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2384], rcx
 mov rcx, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2392], rcx
 jmp xchain00044_n00084_α
.Lx00083_0:
 mov rdi, qword ptr [rbp + 5328]
 mov rsi, qword ptr [rbp + 5336]
 mov rdx, qword ptr [rbp + 2448]
 mov rcx, qword ptr [rbp + 2456]
 mov r8d, 5
 lea r9, [rbp + 2384]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00083_1
 cmp eax, 1
 je xchain00044_n66_α
 jmp xchain00044_n00084_α
.Lx00083_2:
 mov rdi, qword ptr [rbp + 5328]
 mov rsi, qword ptr [rbp + 5336]
 mov rdx, qword ptr [rbp + 2448]
 mov rcx, qword ptr [rbp + 2456]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00044_n66_α
 mov rax, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2392], rax
 jmp xchain00044_n00084_α
 xchain00044_n00074_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2272]
 cmp eax, 100
 je .Lx00085_0
 mov eax, dword ptr [rbp + 2240]
 cmp eax, 100
 je .Lx00085_0
 mov eax, dword ptr [rbp + 2272]
 cmp eax, 6
 jne .Lx00085_2
 mov eax, dword ptr [rbp + 2240]
 cmp eax, 6
 jne .Lx00085_2
.Lx00085_1:
 mov rax, qword ptr [rbp + 2280]
 mov rcx, qword ptr [rbp + 2248]
 sub rax, rcx
 mov qword ptr [rbp + 2208], 6
 mov qword ptr [rbp + 2216], rax
 jmp xchain00044_n00086_α
.Lx00085_0:
 mov rdi, qword ptr [rbp + 2272]
 mov rsi, qword ptr [rbp + 2280]
 mov rdx, qword ptr [rbp + 2240]
 mov rcx, qword ptr [rbp + 2248]
 mov r8d, 1
 lea r9, [rbp + 2208]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00044_n00086_α
.Lx00085_2:
 mov rdi, qword ptr [rbp + 2272]
 mov rsi, qword ptr [rbp + 2280]
 mov rdx, qword ptr [rbp + 2240]
 mov rcx, qword ptr [rbp + 2248]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00044_n72_α
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 jmp xchain00044_n00086_α
 xchain00044_n00074_β:
 jmp xchain00044_n72_α
# IR_COERCE_NUMERIC
 xchain00044_n00076_α:
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 7
 je .Lx00087_1
 cmp eax, 6
 jne .Lx00087_0
 mov eax, dword ptr [rbp + 5376]
 cmp eax, 6
 jne .Lx00087_0
.Lx00087_1:
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 2008], rax
 jmp xchain00044_n00088_α
.Lx00087_0:
 lea rdi, [rbp + 5296]
 lea rsi, [rbp + 5376]
 lea rdx, [rbp + 2000]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00044_n00088_α
 xchain00044_n00078_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1792]
 mov rdx, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain00044_n87_α
# IR_LIT_INTEGER
 xchain00044_n00079_α:
 mov qword ptr [rbp + 1488], 6
 mov rax, qword ptr [rip + .Lx00089_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain00044_n00090_α
.Lx00089_0:
 .quad 4
 xchain00044_n00001_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
  .section .rodata
  .Lrkfn459: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn459]
 lea rsi, [rbp + 416]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain00044_n00091_α
 jmp xchain00044_n00092_α
 xchain00044_n00001_β:
 jmp xchain00044_n00091_α
# IR_DISJUNCTION_NARY
 xchain00044_n00091_α:
 mov qword ptr [rbp + 96], 0
 mov qword ptr [rbp + 104], 0
 mov dword ptr [rbp + 112], 0
 jmp xchain00044_n00093_α
xchain00044_n00091_as:
 mov eax, dword ptr [rbp + 112]
 cmp eax, 0
 jne .Lx00094_0
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 104], rax
 jmp xchain00044_n00003_α
.Lx00094_0:
 jmp xchain00044_n00003_α
 xchain00044_n00091_β:
 mov eax, dword ptr [rbp + 112]
 jmp xchain00044_n00003_α
xchain00044_n00091_af:
 add dword ptr [rbp + 112], 1
 mov eax, dword ptr [rbp + 112]
 jmp xchain00044_n00003_α
 xchain00044_n00080_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5424]
 cmp eax, 100
 je .Lx00095_0
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 100
 je .Lx00095_0
 mov eax, dword ptr [rbp + 5424]
 cmp eax, 6
 jne .Lx00095_2
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 6
 jne .Lx00095_2
.Lx00095_1:
 mov rax, qword ptr [rbp + 5432]
 mov rcx, qword ptr [rbp + 5320]
 cmp rax, rcx
 jle xchain00044_n97_α
 mov rcx, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 3680], rcx
 mov rcx, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 3688], rcx
 jmp xchain00044_n00096_α
.Lx00095_0:
 mov rdi, qword ptr [rbp + 5424]
 mov rsi, qword ptr [rbp + 5432]
 mov rdx, qword ptr [rbp + 5312]
 mov rcx, qword ptr [rbp + 5320]
 mov r8d, 7
 lea r9, [rbp + 3680]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00095_1
 cmp eax, 1
 je xchain00044_n97_α
 jmp xchain00044_n00096_α
.Lx00095_2:
 mov rdi, qword ptr [rbp + 5424]
 mov rsi, qword ptr [rbp + 5432]
 mov rdx, qword ptr [rbp + 5312]
 mov rcx, qword ptr [rbp + 5320]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00044_n97_α
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 3680], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 3688], rax
 jmp xchain00044_n00096_α
# IR_VAR
 xchain00044_n00081_α:
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 3632], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 3640], rax
 jmp xchain00044_n00097_α
# IR_UNMARK
 xchain00044_n00098_α:
 mov rsp, qword ptr [rbp + 3488]
 jmp xchain00044_n53_β
# IR_VAR
 xchain00044_n00082_α:
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 3248], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 3256], rax
 jmp xchain00044_n00099_α
# IR_VAR
 xchain00044_n00002_α:
 mov rax, qword ptr [rbp + 5376]
 mov qword ptr [rbp + 3104], rax
 mov rax, qword ptr [rbp + 5384]
 mov qword ptr [rbp + 3112], rax
 jmp xchain00044_n00100_α
 xchain00044_n00084_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2384]
 mov rdx, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 jmp xchain00044_n66_α
 xchain00044_n00086_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5328]
 cmp eax, 100
 je .Lx00101_0
 mov eax, dword ptr [rbp + 2208]
 cmp eax, 100
 je .Lx00101_0
 mov eax, dword ptr [rbp + 5328]
 cmp eax, 6
 jne .Lx00101_2
 mov eax, dword ptr [rbp + 2208]
 cmp eax, 6
 jne .Lx00101_2
.Lx00101_1:
 mov rax, qword ptr [rbp + 5336]
 mov rcx, qword ptr [rbp + 2216]
 cmp rax, rcx
 jge xchain00044_n72_α
 mov rcx, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2144], rcx
 mov rcx, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2152], rcx
 jmp xchain00044_n00102_α
.Lx00101_0:
 mov rdi, qword ptr [rbp + 5328]
 mov rsi, qword ptr [rbp + 5336]
 mov rdx, qword ptr [rbp + 2208]
 mov rcx, qword ptr [rbp + 2216]
 mov r8d, 5
 lea r9, [rbp + 2144]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00101_1
 cmp eax, 1
 je xchain00044_n72_α
 jmp xchain00044_n00102_α
.Lx00101_2:
 mov rdi, qword ptr [rbp + 5328]
 mov rsi, qword ptr [rbp + 5336]
 mov rdx, qword ptr [rbp + 2208]
 mov rcx, qword ptr [rbp + 2216]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00044_n72_α
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2152], rax
 jmp xchain00044_n00102_α
 xchain00044_n00088_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2032]
 cmp eax, 100
 je .Lx00103_0
 mov eax, dword ptr [rbp + 2000]
 cmp eax, 100
 je .Lx00103_0
 mov eax, dword ptr [rbp + 2032]
 cmp eax, 6
 jne .Lx00103_2
 mov eax, dword ptr [rbp + 2000]
 cmp eax, 6
 jne .Lx00103_2
.Lx00103_1:
 mov rax, qword ptr [rbp + 2040]
 mov rcx, qword ptr [rbp + 2008]
 sub rax, rcx
 mov qword ptr [rbp + 1968], 6
 mov qword ptr [rbp + 1976], rax
 jmp xchain00044_n00104_α
.Lx00103_0:
 mov rdi, qword ptr [rbp + 2032]
 mov rsi, qword ptr [rbp + 2040]
 mov rdx, qword ptr [rbp + 2000]
 mov rcx, qword ptr [rbp + 2008]
 mov r8d, 1
 lea r9, [rbp + 1968]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00044_n00104_α
.Lx00103_2:
 mov rdi, qword ptr [rbp + 2032]
 mov rsi, qword ptr [rbp + 2040]
 mov rdx, qword ptr [rbp + 2000]
 mov rcx, qword ptr [rbp + 2008]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00044_n79_α
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain00044_n00104_α
 xchain00044_n00088_β:
 jmp xchain00044_n79_α
 xchain00044_n00090_α:
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
 jmp xchain00044_n00105_α
 xchain00044_n00090_β:
 jmp xchain00044_n95_α
 xchain00044_n00092_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain00044_n00106_α
 xchain00044_n00003_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn478: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn478]
 lea rsi, [rbp + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je xchain00044_n00107_α
 jmp xchain00044_n00107_α
 xchain00044_n00003_β:
 jmp xchain00044_n00107_α
# IR_VAR
 xchain00044_n00093_α:
 mov rax, qword ptr [rbp + 5280]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 5288]
 mov qword ptr [rbp + 248], rax
 jmp xchain00044_n00108_α
 xchain00044_n00093_β:
 jmp xchain00044_n00091_af
 xchain00044_n00109_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn482: .string "writes"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn482]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00044_n00003_α
 jmp xchain00044_n00091_as
 xchain00044_n00109_β:
 jmp xchain00044_n00003_α
 xchain00044_n00096_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3680]
 mov rdx, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 5424], rax
 mov qword ptr [rbp + 5432], rdx
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 jmp xchain00044_n97_α
 xchain00044_n00097_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5408]
 cmp eax, 100
 je .Lx00110_0
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 100
 je .Lx00110_0
 mov eax, dword ptr [rbp + 5408]
 cmp eax, 6
 jne .Lx00110_2
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 6
 jne .Lx00110_2
.Lx00110_1:
 mov rax, qword ptr [rbp + 5416]
 mov rcx, qword ptr [rbp + 5320]
 cmp rax, rcx
 jge xchain00044_n00098_α
 mov rcx, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 3568], rcx
 mov rcx, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 3576], rcx
 jmp xchain00044_n00111_α
.Lx00110_0:
 mov rdi, qword ptr [rbp + 5408]
 mov rsi, qword ptr [rbp + 5416]
 mov rdx, qword ptr [rbp + 5312]
 mov rcx, qword ptr [rbp + 5320]
 mov r8d, 5
 lea r9, [rbp + 3568]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00110_1
 cmp eax, 1
 je xchain00044_n00098_α
 jmp xchain00044_n00111_α
.Lx00110_2:
 mov rdi, qword ptr [rbp + 5408]
 mov rsi, qword ptr [rbp + 5416]
 mov rdx, qword ptr [rbp + 5312]
 mov rcx, qword ptr [rbp + 5320]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00044_n00098_α
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 3568], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 3576], rax
 jmp xchain00044_n00111_α
 xchain00044_n00099_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5392]
 cmp eax, 100
 je .Lx00112_0
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 100
 je .Lx00112_0
 mov eax, dword ptr [rbp + 5392]
 cmp eax, 6
 jne .Lx00112_2
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 6
 jne .Lx00112_2
.Lx00112_1:
 mov rax, qword ptr [rbp + 5400]
 mov rcx, qword ptr [rbp + 5304]
 cmp rax, rcx
 jle xchain00044_n00002_α
 mov rcx, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 3184], rcx
 mov rcx, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 3192], rcx
 jmp xchain00044_n00113_α
.Lx00112_0:
 mov rdi, qword ptr [rbp + 5392]
 mov rsi, qword ptr [rbp + 5400]
 mov rdx, qword ptr [rbp + 5296]
 mov rcx, qword ptr [rbp + 5304]
 mov r8d, 7
 lea r9, [rbp + 3184]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00112_1
 cmp eax, 1
 je xchain00044_n00002_α
 jmp xchain00044_n00113_α
.Lx00112_2:
 mov rdi, qword ptr [rbp + 5392]
 mov rsi, qword ptr [rbp + 5400]
 mov rdx, qword ptr [rbp + 5296]
 mov rcx, qword ptr [rbp + 5304]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00044_n00002_α
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 3184], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 3192], rax
 jmp xchain00044_n00113_α
# IR_VAR
 xchain00044_n00100_α:
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 3136], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 3144], rax
 jmp xchain00044_n00114_α
# IR_UNMARK
 xchain00044_n00004_α:
 mov rsp, qword ptr [rbp + 2992]
 jmp xchain00044_n59_β
 xchain00044_n00102_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2144]
 mov rdx, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 jmp xchain00044_n72_α
 xchain00044_n00104_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5328]
 cmp eax, 100
 je .Lx00115_0
 mov eax, dword ptr [rbp + 1968]
 cmp eax, 100
 je .Lx00115_0
 mov eax, dword ptr [rbp + 5328]
 cmp eax, 6
 jne .Lx00115_2
 mov eax, dword ptr [rbp + 1968]
 cmp eax, 6
 jne .Lx00115_2
.Lx00115_1:
 mov rax, qword ptr [rbp + 5336]
 mov rcx, qword ptr [rbp + 1976]
 cmp rax, rcx
 jge xchain00044_n79_α
 mov rcx, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1904], rcx
 mov rcx, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1912], rcx
 jmp xchain00044_n00116_α
.Lx00115_0:
 mov rdi, qword ptr [rbp + 5328]
 mov rsi, qword ptr [rbp + 5336]
 mov rdx, qword ptr [rbp + 1968]
 mov rcx, qword ptr [rbp + 1976]
 mov r8d, 5
 lea r9, [rbp + 1904]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00115_1
 cmp eax, 1
 je xchain00044_n79_α
 jmp xchain00044_n00116_α
.Lx00115_2:
 mov rdi, qword ptr [rbp + 5328]
 mov rsi, qword ptr [rbp + 5336]
 mov rdx, qword ptr [rbp + 1968]
 mov rcx, qword ptr [rbp + 1976]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00044_n79_α
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1912], rax
 jmp xchain00044_n00116_α
# IR_VAR
 xchain00044_n00105_α:
 mov rax, qword ptr [rbp + 5344]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 5352]
 mov qword ptr [rbp + 1592], rax
 jmp xchain00044_n00117_α
# IR_VAR
 xchain00044_n00106_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00044_n00118_α
# IR_RETURN
 xchain00044_n00107_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_putchain_γ
# IR_UNOP
 xchain00044_n00108_α:
 mov eax, dword ptr [rbp + 5280]
 cmp eax, 99
 je xchain00044_n00091_af
 cmp eax, 0
 jne xchain00044_n00091_af
 mov qword ptr [rbp + 208], 0
 mov qword ptr [rbp + 216], 0
 jmp xchain00044_n00119_α
 xchain00044_n00111_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3568]
 mov rdx, qword ptr [rbp + 3576]
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 jmp xchain00044_n00120_α
 xchain00044_n00113_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3184]
 mov rdx, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 5392], rax
 mov qword ptr [rbp + 5400], rdx
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 jmp xchain00044_n00002_α
 xchain00044_n00114_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5376]
 cmp eax, 100
 je .Lx00121_0
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 100
 je .Lx00121_0
 mov eax, dword ptr [rbp + 5376]
 cmp eax, 6
 jne .Lx00121_2
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 6
 jne .Lx00121_2
.Lx00121_1:
 mov rax, qword ptr [rbp + 5384]
 mov rcx, qword ptr [rbp + 5304]
 cmp rax, rcx
 jge xchain00044_n00004_α
 mov rcx, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 3072], rcx
 mov rcx, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 3080], rcx
 jmp xchain00044_n00122_α
.Lx00121_0:
 mov rdi, qword ptr [rbp + 5376]
 mov rsi, qword ptr [rbp + 5384]
 mov rdx, qword ptr [rbp + 5296]
 mov rcx, qword ptr [rbp + 5304]
 mov r8d, 5
 lea r9, [rbp + 3072]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00121_1
 cmp eax, 1
 je xchain00044_n00004_α
 jmp xchain00044_n00122_α
.Lx00121_2:
 mov rdi, qword ptr [rbp + 5376]
 mov rsi, qword ptr [rbp + 5384]
 mov rdx, qword ptr [rbp + 5296]
 mov rcx, qword ptr [rbp + 5304]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00044_n00004_α
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 3072], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 3080], rax
 jmp xchain00044_n00122_α
 xchain00044_n00116_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1904]
 mov rdx, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain00044_n79_α
# IR_LIT_INTEGER
 xchain00044_n00117_α:
 mov qword ptr [rbp + 1616], 6
 mov rax, qword ptr [rip + .Lx00123_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00044_n00124_α
.Lx00123_0:
 .quad 7
 xchain00044_n00118_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
  .section .rodata
  .Lrkfn503: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn503]
 lea rsi, [rbp + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain00044_n00091_α
 jmp xchain00044_n00125_α
 xchain00044_n00118_β:
 jmp xchain00044_n00091_α
# IR_LIT_STRING
 xchain00044_n00119_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00126_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00044_n00109_α
.Lx00126_0:
 .quad .Lx00126_0_s
.Lx00126_0_s:
 .string "50005000"
 xchain00044_n00120_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3536], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3544], rax
 jmp xchain00044_n00098_α
xchain00044_n00120_β:
 jmp xchain00044_n00098_α
 xchain00044_n00122_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3072]
 mov rdx, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 jmp xchain00044_n00127_α
 xchain00044_n00124_α:
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
  .Lrkfn508: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn508]
 lea rsi, [rbp + 1536]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain00044_n95_α
 jmp xchain00044_n00128_α
 xchain00044_n00124_β:
 jmp xchain00044_n95_α
 xchain00044_n00125_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 5296], rax
 mov qword ptr [rbp + 5304], rdx
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00044_n00129_α
 xchain00044_n00127_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 3056]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3064]
 mov qword ptr [rbp + 3048], rax
 jmp xchain00044_n00004_α
xchain00044_n00127_β:
 jmp xchain00044_n00004_α
# IR_VAR
 xchain00044_n00128_α:
 mov rax, qword ptr [rbp + 5360]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 5368]
 mov qword ptr [rbp + 1720], rax
 jmp xchain00044_n00130_α
 xchain00044_n00129_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 280], rax
 jmp xchain00044_n00005_α
xchain00044_n00129_β:
 jmp xchain00044_n00091_α
# IR_LIT_INTEGER
 xchain00044_n00130_α:
 mov qword ptr [rbp + 1744], 6
 mov rax, qword ptr [rip + .Lx00131_0]
 mov qword ptr [rbp + 1752], rax
 jmp xchain00044_n00006_α
.Lx00131_0:
 .quad 7
# IR_DISJUNCTION_NARY
 xchain00044_n00005_α:
 mov qword ptr [rbp + 480], 0
 mov qword ptr [rbp + 488], 0
 mov dword ptr [rbp + 496], 0
 jmp xchain00044_n00132_α
xchain00044_n00005_as:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 0
 jne .Lx00133_0
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
 jmp xchain00044_n95_α
.Lx00133_0:
 jmp xchain00044_n95_α
 xchain00044_n00005_β:
 mov eax, dword ptr [rbp + 496]
 jmp xchain00044_n95_α
xchain00044_n00005_af:
 add dword ptr [rbp + 496], 1
 mov eax, dword ptr [rbp + 496]
 jmp xchain00044_n95_α
 xchain00044_n00006_α:
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
  .Lrkfn518: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn518]
 lea rsi, [rbp + 1664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 cmp eax, 99
 je xchain00044_n95_α
 jmp xchain00044_n00134_α
 xchain00044_n00006_β:
 jmp xchain00044_n95_α
# IR_DISJUNCTION_NARY
 xchain00044_n00132_α:
 mov qword ptr [rbp + 1040], 0
 mov qword ptr [rbp + 1048], 0
 mov dword ptr [rbp + 1056], 0
 jmp xchain00044_n00008_α
xchain00044_n00132_as:
 mov eax, dword ptr [rbp + 1056]
 cmp eax, 0
 jne .Lx00135_0
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00044_n00136_α
.Lx00135_0:
 cmp eax, 1
 jne .Lx00135_1
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00044_n00136_α
.Lx00135_1:
 jmp xchain00044_n00136_α
 xchain00044_n00132_β:
 mov eax, dword ptr [rbp + 1056]
 cmp eax, 0
 je xchain00044_n00132_af
 jmp xchain00044_n00132_af
xchain00044_n00132_af:
 add dword ptr [rbp + 1056], 1
 mov eax, dword ptr [rbp + 1056]
 cmp eax, 1
 je xchain00044_n00137_α
 jmp xchain00044_n00005_af
 xchain00044_n00007_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00044_n00005_as
 xchain00044_n00007_β:
 jmp xchain00044_n95_α
 xchain00044_n00134_α:
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
  .Lrkfn523: .string "writes"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn523]
 lea rsi, [rbp + 1280]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 cmp eax, 99
 je xchain00044_n95_α
 jmp xchain00044_n95_α
 xchain00044_n00134_β:
 jmp xchain00044_n95_α
# IR_LIT_INTEGER
 xchain00044_n00136_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx00138_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00044_n00139_α
.Lx00138_0:
 .quad 5000
# IR_VAR
 xchain00044_n00008_α:
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00044_n00140_α
 xchain00044_n00008_β:
 jmp xchain00044_n00132_af
# IR_VAR
 xchain00044_n00137_α:
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 1208], rax
 jmp xchain00044_n00141_α
 xchain00044_n00137_β:
 jmp xchain00044_n00132_af
 xchain00044_n00142_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 100
 je .Lx00143_0
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 100
 je .Lx00143_0
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 6
 jne .Lx00143_2
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 6
 jne .Lx00143_2
.Lx00143_1:
 mov rax, qword ptr [rbp + 5320]
 mov rcx, qword ptr [rbp + 1144]
 cmp rax, rcx
 je xchain00044_n00132_af
 mov rcx, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1072], rcx
 mov rcx, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1080], rcx
 jmp xchain00044_n00132_as
.Lx00143_0:
 mov rdi, qword ptr [rbp + 5312]
 mov rsi, qword ptr [rbp + 5320]
 mov rdx, qword ptr [rbp + 1136]
 mov rcx, qword ptr [rbp + 1144]
 mov r8d, 10
 lea r9, [rbp + 1072]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00143_1
 cmp eax, 1
 je xchain00044_n00132_af
 jmp xchain00044_n00132_as
.Lx00143_2:
 mov rdi, qword ptr [rbp + 5312]
 mov rsi, qword ptr [rbp + 5320]
 mov rdx, qword ptr [rbp + 1136]
 mov rcx, qword ptr [rbp + 1144]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00044_n00132_af
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00044_n00132_as
 xchain00044_n00142_β:
 jmp xchain00044_n00132_af
 xchain00044_n00009_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 100
 je .Lx00144_0
 mov eax, dword ptr [rbp + 1232]
 cmp eax, 100
 je .Lx00144_0
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 6
 jne .Lx00144_2
 mov eax, dword ptr [rbp + 1232]
 cmp eax, 6
 jne .Lx00144_2
.Lx00144_1:
 mov rax, qword ptr [rbp + 5304]
 mov rcx, qword ptr [rbp + 1240]
 cmp rax, rcx
 je xchain00044_n00132_af
 mov rcx, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1168], rcx
 mov rcx, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1176], rcx
 jmp xchain00044_n00132_as
.Lx00144_0:
 mov rdi, qword ptr [rbp + 5296]
 mov rsi, qword ptr [rbp + 5304]
 mov rdx, qword ptr [rbp + 1232]
 mov rcx, qword ptr [rbp + 1240]
 mov r8d, 10
 lea r9, [rbp + 1168]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00144_1
 cmp eax, 1
 je xchain00044_n00132_af
 jmp xchain00044_n00132_as
.Lx00144_2:
 mov rdi, qword ptr [rbp + 5296]
 mov rsi, qword ptr [rbp + 5304]
 mov rdx, qword ptr [rbp + 1232]
 mov rcx, qword ptr [rbp + 1240]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00044_n00132_af
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1176], rax
 jmp xchain00044_n00132_as
 xchain00044_n00009_β:
 jmp xchain00044_n00132_af
# IR_VAR
 xchain00044_n00139_α:
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 760], rax
 jmp xchain00044_n00145_α
# IR_LIT_INTEGER
 xchain00044_n00140_α:
 mov qword ptr [rbp + 1136], 6
 mov rax, qword ptr [rip + .Lx00146_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain00044_n00142_α
.Lx00146_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00044_n00141_α:
 mov qword ptr [rbp + 1232], 6
 mov rax, qword ptr [rip + .Lx00147_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain00044_n00009_α
.Lx00147_0:
 .quad 0
# IR_COERCE_NUMERIC
 xchain00044_n00145_α:
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 7
 je .Lx00148_1
 cmp eax, 6
 jne .Lx00148_0
 mov eax, dword ptr [rbp + 720]
 cmp eax, 6
 jne .Lx00148_0
.Lx00148_1:
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 696], rax
 jmp xchain00044_n00149_α
.Lx00148_0:
 lea rdi, [rbp + 5312]
 lea rsi, [rbp + 720]
 lea rdx, [rbp + 688]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00044_n00149_α
 xchain00044_n00149_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 688]
 cmp eax, 100
 je .Lx00150_0
 mov eax, dword ptr [rbp + 688]
 cmp eax, 6
 jne .Lx00150_2
.Lx00150_1:
 mov rax, 5000
 mov rcx, qword ptr [rbp + 696]
 add rax, rcx
 mov qword ptr [rbp + 656], 6
 mov qword ptr [rbp + 664], rax
 jmp xchain00044_n00151_α
.Lx00150_0:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 mov r8d, 0
 lea r9, [rbp + 656]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00044_n00151_α
.Lx00150_2:
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
 jmp xchain00044_n00151_α
 xchain00044_n00149_β:
 jmp xchain00044_n95_α
# IR_LIT_INTEGER
 xchain00044_n00151_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain00044_n00153_α
.Lx00152_0:
 .quad 4
 xchain00044_n00153_α:
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
  .Lrkfn540: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn540]
 lea rsi, [rbp + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00044_n95_α
 jmp xchain00044_n00010_α
 xchain00044_n00153_β:
 jmp xchain00044_n95_α
# IR_LIT_INTEGER
 xchain00044_n00010_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx00154_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00044_n00155_α
.Lx00154_0:
 .quad 5000
# IR_VAR
 xchain00044_n00155_α:
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 984], rax
 jmp xchain00044_n00156_α
# IR_COERCE_NUMERIC
 xchain00044_n00156_α:
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 7
 je .Lx00157_1
 cmp eax, 6
 jne .Lx00157_0
 mov eax, dword ptr [rbp + 944]
 cmp eax, 6
 jne .Lx00157_0
.Lx00157_1:
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 920], rax
 jmp xchain00044_n00158_α
.Lx00157_0:
 lea rdi, [rbp + 5296]
 lea rsi, [rbp + 944]
 lea rdx, [rbp + 912]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00044_n00158_α
 xchain00044_n00158_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 912]
 cmp eax, 100
 je .Lx00159_0
 mov eax, dword ptr [rbp + 912]
 cmp eax, 6
 jne .Lx00159_2
.Lx00159_1:
 mov rax, 5000
 mov rcx, qword ptr [rbp + 920]
 add rax, rcx
 mov qword ptr [rbp + 880], 6
 mov qword ptr [rbp + 888], rax
 jmp xchain00044_n00160_α
.Lx00159_0:
 mov rdi, qword ptr [rbp + 944]
 mov rsi, qword ptr [rbp + 952]
 mov rdx, qword ptr [rbp + 912]
 mov rcx, qword ptr [rbp + 920]
 mov r8d, 0
 lea r9, [rbp + 880]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00044_n00160_α
.Lx00159_2:
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
 jmp xchain00044_n00160_α
 xchain00044_n00158_β:
 jmp xchain00044_n95_α
# IR_LIT_INTEGER
 xchain00044_n00160_α:
 mov qword ptr [rbp + 1008], 6
 mov rax, qword ptr [rip + .Lx00161_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00044_n00162_α
.Lx00161_0:
 .quad 4
 xchain00044_n00162_α:
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
  .Lrkfn549: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn549]
 lea rsi, [rbp + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain00044_n95_α
 jmp xchain00044_n00163_α
 xchain00044_n00162_β:
 jmp xchain00044_n95_α
 xchain00044_n00163_α:
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
  .Lrkfn551: .string "writes"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn551]
 lea rsi, [rbp + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain00044_n95_α
 jmp xchain00044_n00007_α
 xchain00044_n00163_β:
 jmp xchain00044_n95_α
proc_putchain_res:
add rsp, 8
pop rbp
proc_putchain_β:
jmp proc_putchain_ω
proc_putchain_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 5480]
lea rsp, [rbp + 5504]
mov rbp, [rbp + 5496]
jmp rax
proc_putchain_ω:
mov rax, [rbp + 5488]
lea rsp, [rbp + 5504]
mov rbp, [rbp + 5496]
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
# IR_DISJUNCTION_NARY
 xchain00164_n0_α:
 mov qword ptr [rbp + 1856], 0
 mov qword ptr [rbp + 1864], 0
 mov dword ptr [rbp + 1872], 0
 jmp xchain00164_n2_α
xchain00164_n0_as:
 mov eax, dword ptr [rbp + 1872]
 cmp eax, 0
 jne .Lx00165_0
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 1864], rax
 jmp xchain00164_n1_α
.Lx00165_0:
 cmp eax, 1
 jne .Lx00165_1
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1864], rax
 jmp xchain00164_n1_α
.Lx00165_1:
 jmp xchain00164_n1_α
 xchain00164_n0_β:
 mov eax, dword ptr [rbp + 1872]
 cmp eax, 0
 je xchain00164_n0_af
 jmp xchain00164_n0_af
xchain00164_n0_af:
 add dword ptr [rbp + 1872], 1
 mov eax, dword ptr [rbp + 1872]
 cmp eax, 1
 je xchain00164_n3_α
 jmp xchain00164_n1_α
# IR_DISJUNCTION_NARY
 xchain00164_n1_α:
 mov qword ptr [rbp + 1616], 0
 mov qword ptr [rbp + 1624], 0
 mov dword ptr [rbp + 1632], 0
 jmp xchain00164_n7_α
xchain00164_n1_as:
 mov eax, dword ptr [rbp + 1632]
 cmp eax, 0
 jne .Lx00166_0
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00164_n6_α
.Lx00166_0:
 cmp eax, 1
 jne .Lx00166_1
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00164_n6_α
.Lx00166_1:
 jmp xchain00164_n6_α
 xchain00164_n1_β:
 mov eax, dword ptr [rbp + 1632]
 cmp eax, 0
 je xchain00164_n1_af
 jmp xchain00164_n1_af
xchain00164_n1_af:
 add dword ptr [rbp + 1632], 1
 mov eax, dword ptr [rbp + 1632]
 cmp eax, 1
 je xchain00164_n8_α
 jmp xchain00164_n13_α
# IR_VAR
 xchain00164_n2_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain00164_n11_α
 xchain00164_n2_β:
 jmp xchain00164_n0_af
# KEYWORD_read
 xchain00164_n3_α:
 mov rdi, qword ptr [rip + .Lx00167_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00164_n0_af
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain00164_n12_α
 xchain00164_n3_β:
 jmp xchain00164_n0_af
.Lx00167_0:
 .quad .Lx00167_0_s
.Lx00167_0_s:
 .string "&progname"
 xchain00164_n4_α:
# BOX IR_CALL seek(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn560: .string "seek"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn560]
 lea rsi, [rbp + 1904]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 cmp eax, 99
 je xchain00164_n0_af
 jmp xchain00164_n0_as
 xchain00164_n4_β:
 jmp xchain00164_n0_af
 xchain00164_n5_α:
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
  .Lrkfn562: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn562]
 lea rsi, [rbp + 2032]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain00164_n0_af
 jmp xchain00164_n0_as
 xchain00164_n5_β:
 jmp xchain00164_n0_af
 xchain00164_n6_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1616]
 mov rdx, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain00164_n13_α
# IR_VAR
 xchain00164_n7_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain00164_n9_α
 xchain00164_n7_β:
 jmp xchain00164_n1_af
# KEYWORD_read
 xchain00164_n8_α:
 mov rdi, qword ptr [rip + .Lx00168_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00164_n1_af
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain00164_n14_α
 xchain00164_n8_β:
 jmp xchain00164_n1_af
.Lx00168_0:
 .quad .Lx00168_0_s
.Lx00168_0_s:
 .string "&progname"
 xchain00164_n9_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1664]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1672], rax
  .section .rodata
  .Lrkfn567: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn567]
 lea rsi, [rbp + 1664]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 cmp eax, 99
 je xchain00164_n1_af
 jmp xchain00164_n1_as
 xchain00164_n9_β:
 jmp xchain00164_n1_af
 xchain00164_n10_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1744]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1752], rax
# marshal arg1 = producer-box slot [zr+1824] -> [zr+1760]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1768], rax
  .section .rodata
  .Lrkfn569: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn569]
 lea rsi, [rbp + 1744]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain00164_n1_af
 jmp xchain00164_n1_as
 xchain00164_n10_β:
 jmp xchain00164_n1_af
# IR_VAR
 xchain00164_n11_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1992], rax
 jmp xchain00164_n4_α
# IR_LIT_STRING
 xchain00164_n12_α:
 mov qword ptr [rbp + 2112], 1
 mov rax, qword ptr [rip + .Lx00169_0]
 mov qword ptr [rbp + 2120], rax
 jmp xchain00164_n5_α
.Lx00169_0:
 .quad .Lx00169_0_s
.Lx00169_0_s:
 .string ":can't reposition input file"
# IR_VAR
 xchain00164_n13_α:
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 1576], rax
 jmp xchain00164_n15_α
# IR_LIT_STRING
 xchain00164_n14_α:
 mov qword ptr [rbp + 1824], 1
 mov rax, qword ptr [rip + .Lx00170_0]
 mov qword ptr [rbp + 1832], rax
 jmp xchain00164_n10_α
.Lx00170_0:
 .quad .Lx00170_0_s
.Lx00170_0_s:
 .string ": input file changed during processing"
 xchain00164_n15_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1568]
 mov rdx, qword ptr [rbp + 1576]
 call rt_arg_stage@PLT
 mov edi, 8
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00171_1
 lea rcx, [rip + .Lx00171_3]
 lea rdx, [rip + .Lx00171_4]
 jmp rax
.Lx00171_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00171_2
.Lx00171_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00171_2
.Lx00171_1:
 call rt_faildescr@PLT
.Lx00171_2:
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain00164_n16_α
 jmp xchain00164_n17_α
 xchain00164_n15_β:
 jmp xchain00164_n16_α
.Lx00171_0:
 .quad .Lx00171_0_s
.Lx00171_0_s:
 .string "crack"
# IR_VAR
 xchain00164_n16_α:
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 1416], rax
 jmp xchain00164_n18_α
 xchain00164_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1520]
 mov rdx, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain00164_n16_α
# IR_LIT_INTEGER
 xchain00164_n18_α:
 mov qword ptr [rbp + 1440], 6
 mov rax, qword ptr [rip + .Lx00172_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain00164_n20_α
.Lx00172_0:
 .quad 23
# IR_VAR
 xchain00164_n19_α:
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 40], rax
 jmp xchain00164_n21_α
# IR_LIT_INTEGER
 xchain00164_n20_α:
 mov qword ptr [rbp + 1472], 6
 mov rax, qword ptr [rip + .Lx00173_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain00164_n22_α
.Lx00173_0:
 .quad 0
# IR_RETURN
 xchain00164_n21_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_putdel_γ
# IR_SUBSCRIPT section
 xchain00164_n22_α:
 mov rdi, qword ptr [rbp + 1408]
 mov rsi, qword ptr [rbp + 1416]
 mov rdx, qword ptr [rbp + 1440]
 mov rcx, qword ptr [rbp + 1448]
 mov r8, qword ptr [rbp + 1472]
 mov r9, qword ptr [rbp + 1480]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00164_n19_α
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain00164_n23_α
# IR_GEN_SCAN
 xchain00164_n23_α:
 mov rdi, qword ptr [rbp + 1376]
 mov rsi, qword ptr [rbp + 1384]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00164_n24_α
# IR_DISJUNCTION_NARY
 xchain00164_n24_α:
 mov qword ptr [rbp + 144], 0
 mov qword ptr [rbp + 152], 0
 mov dword ptr [rbp + 160], 0
 jmp xchain00164_n26_α
xchain00164_n24_as:
 mov eax, dword ptr [rbp + 160]
 cmp eax, 0
 jne .Lx00174_0
 jmp xchain00164_n25_α
.Lx00174_0:
 cmp eax, 1
 jne .Lx00174_1
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 152], rax
 jmp xchain00164_n25_α
.Lx00174_1:
 jmp xchain00164_n25_α
 xchain00164_n24_β:
 mov eax, dword ptr [rbp + 160]
 cmp eax, 0
 je xchain00164_n27_β
 jmp xchain00164_n29_β
xchain00164_n24_af:
 add dword ptr [rbp + 160], 1
 mov eax, dword ptr [rbp + 160]
 cmp eax, 1
 je xchain00164_n28_α
 jmp xchain00164_n33_α
# IR_GEN_SCAN
 xchain00164_n25_α:
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 120], rax
 lea rdi, [rbp + 80]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 80]
 mov r14, qword ptr [rbp + 88]
 mov r15, qword ptr [rbp + 96]
 jmp xchain00164_n19_α
 xchain00164_n25_β:
 call rt_scan_reenter@PLT
 mov r13, rax
 mov r15, rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 jmp xchain00164_n24_β
 jmp xchain00164_n19_α
# IR_VAR
 xchain00164_n26_α:
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 760], rax
 jmp xchain00164_n31_α
 xchain00164_n26_β:
 jmp xchain00164_n24_af
# IR_VAR
 xchain00164_n27_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00164_n32_α
 xchain00164_n27_β:
 jmp xchain00164_n33_α
# IR_LIT_INTEGER
 xchain00164_n28_α:
 mov qword ptr [rbp + 1344], 6
 mov rax, qword ptr [rip + .Lx00175_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain00164_n34_α
 xchain00164_n28_β:
 jmp xchain00164_n29_α
.Lx00175_0:
 .quad 0
# IR_VAR
 xchain00164_n29_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00164_n35_α
 xchain00164_n29_β:
 jmp xchain00164_n33_α
 xchain00164_n30_α:
 jmp xchain00164_n24_as
xchain00164_n30_β:
 jmp xchain00164_n33_α
# IR_FIELD_GET
 xchain00164_n31_α:
 mov rdi, qword ptr [rip + .Lx00176_0]
 mov rsi, qword ptr [rbp + 752]
 mov rdx, qword ptr [rbp + 760]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00164_n24_af
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00164_n36_α
.Lx00176_0:
 .quad .Lx00176_0_s
.Lx00176_0_s:
 .string "rev"
# IR_LIT_INTEGER
 xchain00164_n32_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx00177_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00164_n37_α
.Lx00177_0:
 .quad 4
# IR_GEN_SCAN
 xchain00164_n33_α:
 lea rdi, [rbp + 80]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 80]
 mov r14, qword ptr [rbp + 88]
 mov r15, qword ptr [rbp + 96]
 jmp xchain00164_n19_α
 xchain00164_n33_β:
 jmp xchain00164_n19_α
# IR_SCAN_TAB
 xchain00164_n34_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00178_0
 add rax, r15
 add rax, 1
.Lx00178_0:
 cmp rax, 1
 jge .Lx00178_239
 add rsp, 16
 jmp xchain00164_n29_α
.Lx00178_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00178_240
 add rsp, 16
 jmp xchain00164_n29_α
.Lx00178_240:
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
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain00164_n29_α
 xchain00164_n34_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00164_n29_α
# IR_LIT_INTEGER
 xchain00164_n35_α:
 mov qword ptr [rbp + 960], 6
 mov rax, qword ptr [rip + .Lx00179_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00164_n38_α
.Lx00179_0:
 .quad 5000
# IR_UNOP
 xchain00164_n36_α:
 mov eax, dword ptr [rbp + 720]
 cmp eax, 99
 je xchain00164_n24_af
 cmp eax, 0
 jne xchain00164_n24_af
 mov qword ptr [rbp + 688], 0
 mov qword ptr [rbp + 696], 0
 jmp xchain00164_n27_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00164_n37_α:
 sub rsp, 16
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00180_239
 add rsp, 16
 jmp xchain00164_n33_α
.Lx00180_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00180_240
 add rsp, 16
 jmp xchain00164_n33_α
.Lx00180_240:
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
 jmp xchain00164_n39_α
 xchain00164_n37_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00164_n33_α
# IR_LIT_INTEGER
 xchain00164_n38_α:
 mov qword ptr [rbp + 1024], 6
 mov rax, qword ptr [rip + .Lx00181_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00164_n40_α
.Lx00181_0:
 .quad 18446744073709551612
# IR_LIT_INTEGER
 xchain00164_n39_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx00182_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain00164_n41_α
.Lx00182_0:
 .quad 5000
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00164_n40_α:
 sub rsp, 16
 mov rax, -4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00183_239
 add rsp, 16
 jmp xchain00164_n33_α
.Lx00183_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00183_240
 add rsp, 16
 jmp xchain00164_n33_α
.Lx00183_240:
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
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00164_n42_α
 xchain00164_n40_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00164_n33_α
# IR_COERCE_NUMERIC
 xchain00164_n41_α:
 mov eax, dword ptr [rbp + 336]
 cmp eax, 7
 je .Lx00184_1
 cmp eax, 6
 jne .Lx00184_0
 mov eax, dword ptr [rbp + 400]
 cmp eax, 6
 jne .Lx00184_0
.Lx00184_1:
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 312], rax
 jmp xchain00164_n43_α
.Lx00184_0:
 lea rdi, [rbp + 336]
 lea rsi, [rbp + 400]
 lea rdx, [rbp + 304]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00164_n43_α
# IR_COERCE_NUMERIC
 xchain00164_n42_α:
 mov eax, dword ptr [rbp + 992]
 cmp eax, 7
 je .Lx00185_1
 cmp eax, 6
 jne .Lx00185_0
 mov eax, dword ptr [rbp + 960]
 cmp eax, 6
 jne .Lx00185_0
.Lx00185_1:
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 936], rax
 jmp xchain00164_n44_α
.Lx00185_0:
 lea rdi, [rbp + 992]
 lea rsi, [rbp + 960]
 lea rdx, [rbp + 928]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00164_n44_α
 xchain00164_n43_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 304]
 cmp eax, 100
 je .Lx00186_0
 mov eax, dword ptr [rbp + 304]
 cmp eax, 6
 jne .Lx00186_2
.Lx00186_1:
 mov rax, qword ptr [rbp + 312]
 mov rcx, 5000
 sub rax, rcx
 mov qword ptr [rbp + 272], 6
 mov qword ptr [rbp + 280], rax
 jmp xchain00164_n45_α
.Lx00186_0:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 400]
 mov rcx, qword ptr [rbp + 408]
 mov r8d, 1
 lea r9, [rbp + 272]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00164_n45_α
.Lx00186_2:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 400]
 mov rcx, qword ptr [rbp + 408]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00164_n33_α
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00164_n45_α
 xchain00164_n43_β:
 jmp xchain00164_n33_α
 xchain00164_n44_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 928]
 cmp eax, 100
 je .Lx00187_0
 mov eax, dword ptr [rbp + 928]
 cmp eax, 6
 jne .Lx00187_2
.Lx00187_1:
 mov rax, 5000
 mov rcx, qword ptr [rbp + 936]
 sub rax, rcx
 mov qword ptr [rbp + 896], 6
 mov qword ptr [rbp + 904], rax
 jmp xchain00164_n46_α
.Lx00187_0:
 mov rdi, qword ptr [rbp + 960]
 mov rsi, qword ptr [rbp + 968]
 mov rdx, qword ptr [rbp + 928]
 mov rcx, qword ptr [rbp + 936]
 mov r8d, 1
 lea r9, [rbp + 896]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00164_n46_α
.Lx00187_2:
 mov rdi, qword ptr [rbp + 960]
 mov rsi, qword ptr [rbp + 968]
 mov rdx, qword ptr [rbp + 928]
 mov rcx, qword ptr [rbp + 936]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00164_n33_α
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain00164_n46_α
 xchain00164_n44_β:
 jmp xchain00164_n33_α
 xchain00164_n45_α:
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
  .Lrkfn620: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn620]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00164_n33_α
 jmp xchain00164_n47_α
 xchain00164_n45_β:
 jmp xchain00164_n33_α
 xchain00164_n46_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+816]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 824], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+832]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 840], rax
  .section .rodata
  .Lrkfn622: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn622]
 lea rsi, [rbp + 816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain00164_n33_α
 jmp xchain00164_n48_α
 xchain00164_n46_β:
 jmp xchain00164_n33_α
# IR_VAR
 xchain00164_n47_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00164_n49_α
# IR_VAR
 xchain00164_n48_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain00164_n50_α
# IR_LIT_INTEGER
 xchain00164_n49_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx00188_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00164_n51_α
.Lx00188_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00164_n50_α:
 mov qword ptr [rbp + 1216], 6
 mov rax, qword ptr [rip + .Lx00189_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain00164_n52_α
.Lx00189_0:
 .quad 5000
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00164_n51_α:
 sub rsp, 16
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00190_239
 add rsp, 16
 jmp xchain00164_n27_α
.Lx00190_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00190_240
 add rsp, 16
 jmp xchain00164_n27_α
.Lx00190_240:
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
 jmp xchain00164_n53_α
 xchain00164_n51_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00164_n27_α
# IR_LIT_INTEGER
 xchain00164_n52_α:
 mov qword ptr [rbp + 1280], 6
 mov rax, qword ptr [rip + .Lx00191_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain00164_n54_α
.Lx00191_0:
 .quad 18446744073709551612
# IR_LIT_INTEGER
 xchain00164_n53_α:
 mov qword ptr [rbp + 656], 6
 mov rax, qword ptr [rip + .Lx00192_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain00164_n55_α
.Lx00192_0:
 .quad 5000
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00164_n54_α:
 sub rsp, 16
 mov rax, -4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00193_239
 add rsp, 16
 jmp xchain00164_n29_α
.Lx00193_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00193_240
 add rsp, 16
 jmp xchain00164_n29_α
.Lx00193_240:
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
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain00164_n56_α
 xchain00164_n54_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00164_n29_α
# IR_COERCE_NUMERIC
 xchain00164_n55_α:
 mov eax, dword ptr [rbp + 592]
 cmp eax, 7
 je .Lx00194_1
 cmp eax, 6
 jne .Lx00194_0
 mov eax, dword ptr [rbp + 656]
 cmp eax, 6
 jne .Lx00194_0
.Lx00194_1:
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
 jmp xchain00164_n57_α
.Lx00194_0:
 lea rdi, [rbp + 592]
 lea rsi, [rbp + 656]
 lea rdx, [rbp + 560]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00164_n57_α
# IR_COERCE_NUMERIC
 xchain00164_n56_α:
 mov eax, dword ptr [rbp + 1248]
 cmp eax, 7
 je .Lx00195_1
 cmp eax, 6
 jne .Lx00195_0
 mov eax, dword ptr [rbp + 1216]
 cmp eax, 6
 jne .Lx00195_0
.Lx00195_1:
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1192], rax
 jmp xchain00164_n58_α
.Lx00195_0:
 lea rdi, [rbp + 1248]
 lea rsi, [rbp + 1216]
 lea rdx, [rbp + 1184]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00164_n58_α
 xchain00164_n57_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 560]
 cmp eax, 100
 je .Lx00196_0
 mov eax, dword ptr [rbp + 560]
 cmp eax, 6
 jne .Lx00196_2
.Lx00196_1:
 mov rax, qword ptr [rbp + 568]
 mov rcx, 5000
 sub rax, rcx
 mov qword ptr [rbp + 528], 6
 mov qword ptr [rbp + 536], rax
 jmp xchain00164_n59_α
.Lx00196_0:
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 mov rdx, qword ptr [rbp + 656]
 mov rcx, qword ptr [rbp + 664]
 mov r8d, 1
 lea r9, [rbp + 528]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00164_n59_α
.Lx00196_2:
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 mov rdx, qword ptr [rbp + 656]
 mov rcx, qword ptr [rbp + 664]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00164_n27_α
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00164_n59_α
 xchain00164_n57_β:
 jmp xchain00164_n27_α
 xchain00164_n58_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 100
 je .Lx00197_0
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 6
 jne .Lx00197_2
.Lx00197_1:
 mov rax, 5000
 mov rcx, qword ptr [rbp + 1192]
 sub rax, rcx
 mov qword ptr [rbp + 1152], 6
 mov qword ptr [rbp + 1160], rax
 jmp xchain00164_n60_α
.Lx00197_0:
 mov rdi, qword ptr [rbp + 1216]
 mov rsi, qword ptr [rbp + 1224]
 mov rdx, qword ptr [rbp + 1184]
 mov rcx, qword ptr [rbp + 1192]
 mov r8d, 1
 lea r9, [rbp + 1152]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00164_n60_α
.Lx00197_2:
 mov rdi, qword ptr [rbp + 1216]
 mov rsi, qword ptr [rbp + 1224]
 mov rdx, qword ptr [rbp + 1184]
 mov rcx, qword ptr [rbp + 1192]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00164_n29_α
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain00164_n60_α
 xchain00164_n58_β:
 jmp xchain00164_n29_α
 xchain00164_n59_α:
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
  .Lrkfn640: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn640]
 lea rsi, [rbp + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00164_n27_α
 jmp xchain00164_n27_α
 xchain00164_n59_β:
 jmp xchain00164_n27_α
 xchain00164_n60_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1072]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1080], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+1088]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1096], rax
  .section .rodata
  .Lrkfn642: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn642]
 lea rsi, [rbp + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain00164_n29_α
 jmp xchain00164_n29_α
 xchain00164_n60_β:
 jmp xchain00164_n29_α
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
  sub rsp, 5472
  mov [rsp + 5448], rcx
  mov [rsp + 5456], rdx
  mov [rsp + 5464], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 5440
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 5224], rsp
  mov rdi, rsp
  mov esi, 5440
  call rt_jmp_frame_lexprep@PLT
proc_collapse_α_body:
# IR_DISJUNCTION_NARY
 xchain00198_n0_α:
 mov qword ptr [rbp + 5088], 0
 mov qword ptr [rbp + 5096], 0
 mov dword ptr [rbp + 5104], 0
 jmp xchain00198_n2_α
xchain00198_n0_as:
 mov eax, dword ptr [rbp + 5104]
 cmp eax, 0
 jne .Lx00199_0
 jmp xchain00198_n1_α
.Lx00199_0:
 jmp xchain00198_n1_α
 xchain00198_n0_β:
 mov eax, dword ptr [rbp + 5104]
 jmp xchain00198_n1_α
xchain00198_n0_af:
 add dword ptr [rbp + 5104], 1
 mov eax, dword ptr [rbp + 5104]
 jmp xchain00198_n1_α
# IR_VAR
 xchain00198_n1_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 5024], rax
 mov qword ptr [rbp + 5032], rdx
 jmp xchain00198_n3_α
# IR_VAR
 xchain00198_n2_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 5152], rax
 mov qword ptr [rbp + 5160], rdx
 jmp xchain00198_n5_α
 xchain00198_n2_β:
 jmp xchain00198_n0_af
# IR_VAR
 xchain00198_n3_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 5056], rax
 mov qword ptr [rbp + 5064], rdx
 jmp xchain00198_n6_α
# IR_VAR
 xchain00198_n4_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 4816], rax
 mov qword ptr [rbp + 4824], rdx
 jmp xchain00198_n7_α
# IR_LIT_INTEGER
 xchain00198_n5_α:
 mov qword ptr [rbp + 5184], 6
 mov rax, qword ptr [rip + .Lx00200_0]
 mov qword ptr [rbp + 5192], rax
 jmp xchain00198_n9_α
.Lx00200_0:
 .quad 0
# IR_COERCE_NUMERIC
 xchain00198_n6_α:
 mov eax, dword ptr [rbp + 5024]
 cmp eax, 7
 je .Lx00201_1
 cmp eax, 6
 jne .Lx00201_0
 mov eax, dword ptr [rbp + 5056]
 cmp eax, 6
 jne .Lx00201_0
.Lx00201_1:
 mov rax, qword ptr [rbp + 5024]
 mov qword ptr [rbp + 4992], rax
 mov rax, qword ptr [rbp + 5032]
 mov qword ptr [rbp + 5000], rax
 jmp xchain00198_n10_α
.Lx00201_0:
 lea rdi, [rbp + 5024]
 lea rsi, [rbp + 5056]
 lea rdx, [rbp + 4992]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n10_α
# KEYWORD_read
 xchain00198_n7_α:
 mov rdi, qword ptr [rip + .Lx00202_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00198_n8_α
 mov qword ptr [rbp + 4848], rax
 mov qword ptr [rbp + 4856], rdx
 jmp xchain00198_n11_α
 xchain00198_n7_β:
 jmp xchain00198_n8_α
.Lx00202_0:
 .quad .Lx00202_0_s
.Lx00202_0_s:
 .string "&pi"
# IR_VAR
 xchain00198_n8_α:
 mov rax, qword ptr [rbp + 5360]
 mov qword ptr [rbp + 4576], rax
 mov rax, qword ptr [rbp + 5368]
 mov qword ptr [rbp + 4584], rax
 jmp xchain00198_n12_α
 xchain00198_n9_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5152]
 cmp eax, 100
 je .Lx00203_0
 mov eax, dword ptr [rbp + 5184]
 cmp eax, 100
 je .Lx00203_0
 mov eax, dword ptr [rbp + 5152]
 cmp eax, 6
 jne .Lx00203_2
 mov eax, dword ptr [rbp + 5184]
 cmp eax, 6
 jne .Lx00203_2
.Lx00203_1:
 mov rax, qword ptr [rbp + 5160]
 mov rcx, qword ptr [rbp + 5192]
 cmp rax, rcx
 jg xchain00198_n0_af
 mov rcx, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 5120], rcx
 mov rcx, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 5128], rcx
 jmp xchain00198_n14_α
.Lx00203_0:
 mov rdi, qword ptr [rbp + 5152]
 mov rsi, qword ptr [rbp + 5160]
 mov rdx, qword ptr [rbp + 5184]
 mov rcx, qword ptr [rbp + 5192]
 mov r8d, 6
 lea r9, [rbp + 5120]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00203_1
 cmp eax, 1
 je xchain00198_n0_af
 jmp xchain00198_n14_α
.Lx00203_2:
 mov rdi, qword ptr [rbp + 5152]
 mov rsi, qword ptr [rbp + 5160]
 mov rdx, qword ptr [rbp + 5184]
 mov rcx, qword ptr [rbp + 5192]
 mov r8d, 6
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00198_n0_af
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 5120], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 5128], rax
 jmp xchain00198_n14_α
# IR_COERCE_NUMERIC
 xchain00198_n10_α:
 mov eax, dword ptr [rbp + 5056]
 cmp eax, 7
 je .Lx00204_1
 cmp eax, 6
 jne .Lx00204_0
 mov eax, dword ptr [rbp + 5024]
 cmp eax, 6
 jne .Lx00204_0
.Lx00204_1:
 mov rax, qword ptr [rbp + 5056]
 mov qword ptr [rbp + 4960], rax
 mov rax, qword ptr [rbp + 5064]
 mov qword ptr [rbp + 4968], rax
 jmp xchain00198_n15_α
.Lx00204_0:
 lea rdi, [rbp + 5056]
 lea rsi, [rbp + 5024]
 lea rdx, [rbp + 4960]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n15_α
# IR_COERCE_NUMERIC
 xchain00198_n11_α:
 mov eax, dword ptr [rbp + 4816]
 cmp eax, 7
 je .Lx00205_1
 cmp eax, 6
 jne .Lx00205_0
 mov eax, dword ptr [rbp + 4848]
 cmp eax, 6
 jne .Lx00205_0
.Lx00205_1:
 mov rax, qword ptr [rbp + 4816]
 mov qword ptr [rbp + 4784], rax
 mov rax, qword ptr [rbp + 4824]
 mov qword ptr [rbp + 4792], rax
 jmp xchain00198_n16_α
.Lx00205_0:
 lea rdi, [rbp + 4816]
 lea rsi, [rbp + 4848]
 lea rdx, [rbp + 4784]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n16_α
# KEYWORD_read
 xchain00198_n12_α:
 mov rdi, qword ptr [rip + .Lx00206_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00198_n13_α
 mov qword ptr [rbp + 4608], rax
 mov qword ptr [rbp + 4616], rdx
 jmp xchain00198_n17_α
 xchain00198_n12_β:
 jmp xchain00198_n13_α
.Lx00206_0:
 .quad .Lx00206_0_s
.Lx00206_0_s:
 .string "&pi"
# IR_VAR
 xchain00198_n13_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 4384], rax
 mov qword ptr [rbp + 4392], rdx
 jmp xchain00198_n18_α
# IR_RETURN
 xchain00198_n14_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_collapse_γ
 xchain00198_n15_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 4992]
 cmp eax, 100
 je .Lx00207_0
 mov eax, dword ptr [rbp + 4960]
 cmp eax, 100
 je .Lx00207_0
 mov eax, dword ptr [rbp + 4992]
 cmp eax, 6
 jne .Lx00207_2
 mov eax, dword ptr [rbp + 4960]
 cmp eax, 6
 jne .Lx00207_2
.Lx00207_1:
 mov rax, qword ptr [rbp + 5000]
 mov rcx, qword ptr [rbp + 4968]
 imul rax, rcx
 mov qword ptr [rbp + 4928], 6
 mov qword ptr [rbp + 4936], rax
 jmp xchain00198_n20_α
.Lx00207_0:
 mov rdi, qword ptr [rbp + 4992]
 mov rsi, qword ptr [rbp + 5000]
 mov rdx, qword ptr [rbp + 4960]
 mov rcx, qword ptr [rbp + 4968]
 mov r8d, 2
 lea r9, [rbp + 4928]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00198_n20_α
.Lx00207_2:
 mov rdi, qword ptr [rbp + 4992]
 mov rsi, qword ptr [rbp + 5000]
 mov rdx, qword ptr [rbp + 4960]
 mov rcx, qword ptr [rbp + 4968]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00198_n4_α
 mov qword ptr [rbp + 4928], rax
 mov qword ptr [rbp + 4936], rdx
 jmp xchain00198_n20_α
 xchain00198_n15_β:
 jmp xchain00198_n4_α
# IR_COERCE_NUMERIC
 xchain00198_n16_α:
 mov eax, dword ptr [rbp + 4848]
 cmp eax, 7
 je .Lx00208_1
 cmp eax, 6
 jne .Lx00208_0
 mov eax, dword ptr [rbp + 4816]
 cmp eax, 6
 jne .Lx00208_0
.Lx00208_1:
 mov rax, qword ptr [rbp + 4848]
 mov qword ptr [rbp + 4752], rax
 mov rax, qword ptr [rbp + 4856]
 mov qword ptr [rbp + 4760], rax
 jmp xchain00198_n21_α
.Lx00208_0:
 lea rdi, [rbp + 4848]
 lea rsi, [rbp + 4816]
 lea rdx, [rbp + 4752]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n21_α
 xchain00198_n17_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5360]
 cmp eax, 100
 je .Lx00209_0
 mov eax, dword ptr [rbp + 4608]
 cmp eax, 100
 je .Lx00209_0
 mov eax, dword ptr [rbp + 5360]
 cmp eax, 6
 jne .Lx00209_2
 mov eax, dword ptr [rbp + 4608]
 cmp eax, 6
 jne .Lx00209_2
.Lx00209_1:
 mov rax, qword ptr [rbp + 5368]
 mov rcx, qword ptr [rbp + 4616]
 cmp rax, rcx
 jle xchain00198_n13_α
 mov rcx, qword ptr [rbp + 4608]
 mov qword ptr [rbp + 4544], rcx
 mov rcx, qword ptr [rbp + 4616]
 mov qword ptr [rbp + 4552], rcx
 jmp xchain00198_n22_α
.Lx00209_0:
 mov rdi, qword ptr [rbp + 5360]
 mov rsi, qword ptr [rbp + 5368]
 mov rdx, qword ptr [rbp + 4608]
 mov rcx, qword ptr [rbp + 4616]
 mov r8d, 7
 lea r9, [rbp + 4544]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00209_1
 cmp eax, 1
 je xchain00198_n13_α
 jmp xchain00198_n22_α
.Lx00209_2:
 mov rdi, qword ptr [rbp + 5360]
 mov rsi, qword ptr [rbp + 5368]
 mov rdx, qword ptr [rbp + 4608]
 mov rcx, qword ptr [rbp + 4616]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00198_n13_α
 mov rax, qword ptr [rbp + 4608]
 mov qword ptr [rbp + 4544], rax
 mov rax, qword ptr [rbp + 4616]
 mov qword ptr [rbp + 4552], rax
 jmp xchain00198_n22_α
# IR_VAR_REF
 xchain00198_n18_α:
 mov rax, 4294967305
 mov rdx, 1879052384
 mov qword ptr [rbp + 4416], rax
 mov qword ptr [rbp + 4424], rdx
 jmp xchain00198_n23_α
# IR_VAR_REF
 xchain00198_n19_α:
 mov rax, 4294967305
 mov rdx, 1879052400
 mov qword ptr [rbp + 4160], rax
 mov qword ptr [rbp + 4168], rdx
 jmp xchain00198_n24_α
 xchain00198_n20_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4928]
 mov rdx, qword ptr [rbp + 4936]
 mov qword ptr [rbp + 5296], rax
 mov qword ptr [rbp + 5304], rdx
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 jmp xchain00198_n4_α
 xchain00198_n21_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 4784]
 cmp eax, 100
 je .Lx00210_0
 mov eax, dword ptr [rbp + 4752]
 cmp eax, 100
 je .Lx00210_0
 mov eax, dword ptr [rbp + 4784]
 cmp eax, 6
 jne .Lx00210_2
 mov eax, dword ptr [rbp + 4752]
 cmp eax, 6
 jne .Lx00210_2
.Lx00210_1:
 mov rax, qword ptr [rbp + 4792]
 mov rcx, qword ptr [rbp + 4760]
 imul rax, rcx
 mov qword ptr [rbp + 4720], 6
 mov qword ptr [rbp + 4728], rax
 jmp xchain00198_n25_α
.Lx00210_0:
 mov rdi, qword ptr [rbp + 4784]
 mov rsi, qword ptr [rbp + 4792]
 mov rdx, qword ptr [rbp + 4752]
 mov rcx, qword ptr [rbp + 4760]
 mov r8d, 2
 lea r9, [rbp + 4720]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00198_n25_α
.Lx00210_2:
 mov rdi, qword ptr [rbp + 4784]
 mov rsi, qword ptr [rbp + 4792]
 mov rdx, qword ptr [rbp + 4752]
 mov rcx, qword ptr [rbp + 4760]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00198_n8_α
 mov qword ptr [rbp + 4720], rax
 mov qword ptr [rbp + 4728], rdx
 jmp xchain00198_n25_α
 xchain00198_n21_β:
 jmp xchain00198_n8_α
 xchain00198_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4544]
 mov rdx, qword ptr [rbp + 4552]
 mov qword ptr [rbp + 5360], rax
 mov qword ptr [rbp + 5368], rdx
 mov qword ptr [rbp + 4528], rax
 mov qword ptr [rbp + 4536], rdx
 jmp xchain00198_n13_α
# IR_LIT_INTEGER
 xchain00198_n23_α:
 mov qword ptr [rbp + 4448], 6
 mov rax, qword ptr [rip + .Lx00211_0]
 mov qword ptr [rbp + 4456], rax
 jmp xchain00198_n26_α
.Lx00211_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00198_n24_α:
 mov qword ptr [rbp + 4192], 6
 mov rax, qword ptr [rip + .Lx00212_0]
 mov qword ptr [rbp + 4200], rax
 jmp xchain00198_n27_α
.Lx00212_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00198_n25_α:
 mov qword ptr [rbp + 4880], 6
 mov rax, qword ptr [rip + .Lx00213_0]
 mov qword ptr [rbp + 4888], rax
 jmp xchain00198_n28_α
.Lx00213_0:
 .quad 180
# IR_SUBSCRIPT x[i] variable
 xchain00198_n26_α:
 mov rdi, qword ptr [rbp + 4416]
 mov rsi, qword ptr [rbp + 4424]
 mov rdx, qword ptr [rbp + 4448]
 mov rcx, qword ptr [rbp + 4456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00198_n19_α
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 jmp xchain00198_n29_α
# IR_SUBSCRIPT x[i] variable
 xchain00198_n27_α:
 mov rdi, qword ptr [rbp + 4160]
 mov rsi, qword ptr [rbp + 4168]
 mov rdx, qword ptr [rbp + 4192]
 mov rcx, qword ptr [rbp + 4200]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00198_n31_α
 mov qword ptr [rbp + 4224], rax
 mov qword ptr [rbp + 4232], rdx
 jmp xchain00198_n30_α
# IR_COERCE_NUMERIC
 xchain00198_n28_α:
 mov eax, dword ptr [rbp + 4720]
 cmp eax, 7
 je .Lx00214_1
 cmp eax, 6
 jne .Lx00214_0
 mov eax, dword ptr [rbp + 4880]
 cmp eax, 6
 jne .Lx00214_0
.Lx00214_1:
 mov rax, qword ptr [rbp + 4720]
 mov qword ptr [rbp + 4688], rax
 mov rax, qword ptr [rbp + 4728]
 mov qword ptr [rbp + 4696], rax
 jmp xchain00198_n32_α
.Lx00214_0:
 lea rdi, [rbp + 4720]
 lea rsi, [rbp + 4880]
 lea rdx, [rbp + 4688]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n32_α
# IR_DEREF variable -> value
 xchain00198_n29_α:
 mov rdi, qword ptr [rbp + 4480]
 mov rsi, qword ptr [rbp + 4488]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00198_n19_α
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 jmp xchain00198_n33_α
# IR_DEREF variable -> value
 xchain00198_n30_α:
 mov rdi, qword ptr [rbp + 4224]
 mov rsi, qword ptr [rbp + 4232]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00198_n31_α
 mov qword ptr [rbp + 4256], rax
 mov qword ptr [rbp + 4264], rdx
 jmp xchain00198_n34_α
# IR_VAR
 xchain00198_n31_α:
 mov rax, qword ptr [rbp + 5408]
 mov qword ptr [rbp + 4080], rax
 mov rax, qword ptr [rbp + 5416]
 mov qword ptr [rbp + 4088], rax
 jmp xchain00198_n35_α
 xchain00198_n32_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 4688]
 cmp eax, 100
 je .Lx00215_0
 mov eax, dword ptr [rbp + 4688]
 cmp eax, 6
 jne .Lx00215_2
.Lx00215_1:
 mov rax, qword ptr [rbp + 4696]
 mov rcx, 180
 cqo
 idiv rcx
 mov qword ptr [rbp + 4656], 6
 mov qword ptr [rbp + 4664], rax
 jmp xchain00198_n37_α
.Lx00215_0:
 mov rdi, qword ptr [rbp + 4688]
 mov rsi, qword ptr [rbp + 4696]
 mov rdx, qword ptr [rbp + 4880]
 mov rcx, qword ptr [rbp + 4888]
 mov r8d, 3
 lea r9, [rbp + 4656]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00198_n37_α
.Lx00215_2:
 mov rdi, qword ptr [rbp + 4688]
 mov rsi, qword ptr [rbp + 4696]
 mov rdx, qword ptr [rbp + 4880]
 mov rcx, qword ptr [rbp + 4888]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00198_n8_α
 mov qword ptr [rbp + 4656], rax
 mov qword ptr [rbp + 4664], rdx
 jmp xchain00198_n37_α
 xchain00198_n32_β:
 jmp xchain00198_n8_α
# IR_COERCE_NUMERIC
 xchain00198_n33_α:
 mov eax, dword ptr [rbp + 4384]
 cmp eax, 7
 je .Lx00216_1
 cmp eax, 6
 jne .Lx00216_0
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 6
 jne .Lx00216_0
.Lx00216_1:
 mov rax, qword ptr [rbp + 4384]
 mov qword ptr [rbp + 4352], rax
 mov rax, qword ptr [rbp + 4392]
 mov qword ptr [rbp + 4360], rax
 jmp xchain00198_n38_α
.Lx00216_0:
 lea rdi, [rbp + 4384]
 lea rsi, [rbp + 4512]
 lea rdx, [rbp + 4352]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n38_α
 xchain00198_n34_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4256]
 mov rdx, qword ptr [rbp + 4264]
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 mov qword ptr [rbp + 4144], rax
 mov qword ptr [rbp + 4152], rdx
 jmp xchain00198_n31_α
# IR_VAR
 xchain00198_n35_α:
 mov rax, qword ptr [rbp + 5424]
 mov qword ptr [rbp + 4112], rax
 mov rax, qword ptr [rbp + 5432]
 mov qword ptr [rbp + 4120], rax
 jmp xchain00198_n39_α
# IR_LIT_INTEGER
 xchain00198_n36_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00217_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00198_n40_α
.Lx00217_0:
 .quad 2
 xchain00198_n37_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4656]
 mov rdx, qword ptr [rbp + 4664]
 mov qword ptr [rbp + 5360], rax
 mov qword ptr [rbp + 5368], rdx
 mov qword ptr [rbp + 4640], rax
 mov qword ptr [rbp + 4648], rdx
 jmp xchain00198_n8_α
# IR_COERCE_NUMERIC
 xchain00198_n38_α:
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 7
 je .Lx00218_1
 cmp eax, 6
 jne .Lx00218_0
 mov eax, dword ptr [rbp + 4384]
 cmp eax, 6
 jne .Lx00218_0
.Lx00218_1:
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 4320], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 4328], rax
 jmp xchain00198_n41_α
.Lx00218_0:
 lea rdi, [rbp + 4512]
 lea rsi, [rbp + 4384]
 lea rdx, [rbp + 4320]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n41_α
 xchain00198_n39_α:
# BOX IR_CALL atan(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4080] -> [zr+4032]
 mov rax, qword ptr [rbp + 4080]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 4088]
 mov qword ptr [rbp + 4040], rax
# marshal arg1 = producer-box slot [zr+4112] -> [zr+4048]
 mov rax, qword ptr [rbp + 4112]
 mov qword ptr [rbp + 4048], rax
 mov rax, qword ptr [rbp + 4120]
 mov qword ptr [rbp + 4056], rax
  .section .rodata
  .Lrkfn697: .string "atan"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn697]
 lea rsi, [rbp + 4032]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4016], rax
 mov qword ptr [rbp + 4024], rdx
 cmp eax, 99
 je xchain00198_n36_α
 jmp xchain00198_n42_α
 xchain00198_n39_β:
 jmp xchain00198_n36_α
# IR_VAR
 xchain00198_n40_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00198_n43_α
 xchain00198_n41_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 4352]
 cmp eax, 100
 je .Lx00219_0
 mov eax, dword ptr [rbp + 4320]
 cmp eax, 100
 je .Lx00219_0
 mov eax, dword ptr [rbp + 4352]
 cmp eax, 6
 jne .Lx00219_2
 mov eax, dword ptr [rbp + 4320]
 cmp eax, 6
 jne .Lx00219_2
.Lx00219_1:
 mov rax, qword ptr [rbp + 4360]
 mov rcx, qword ptr [rbp + 4328]
 imul rax, rcx
 mov qword ptr [rbp + 4288], 6
 mov qword ptr [rbp + 4296], rax
 jmp xchain00198_n45_α
.Lx00219_0:
 mov rdi, qword ptr [rbp + 4352]
 mov rsi, qword ptr [rbp + 4360]
 mov rdx, qword ptr [rbp + 4320]
 mov rcx, qword ptr [rbp + 4328]
 mov r8d, 2
 lea r9, [rbp + 4288]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00198_n45_α
.Lx00219_2:
 mov rdi, qword ptr [rbp + 4352]
 mov rsi, qword ptr [rbp + 4360]
 mov rdx, qword ptr [rbp + 4320]
 mov rcx, qword ptr [rbp + 4328]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00198_n19_α
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 jmp xchain00198_n45_α
 xchain00198_n41_β:
 jmp xchain00198_n19_α
 xchain00198_n42_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4016]
 mov rdx, qword ptr [rbp + 4024]
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 jmp xchain00198_n36_α
# IR_UNOP
 xchain00198_n43_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00198_n46_α
# IR_RETURN
 xchain00198_n44_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_collapse_γ
 xchain00198_n45_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4288]
 mov rdx, qword ptr [rbp + 4296]
 mov qword ptr [rbp + 5424], rax
 mov qword ptr [rbp + 5432], rdx
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 jmp xchain00198_n19_α
# IR_TO
 xchain00198_n46_α:
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
.Lx00220_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00198_n44_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00198_n47_α
 xchain00198_n46_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00220_0
 xchain00198_n47_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00198_n48_α
# IR_BOUND
 xchain00198_n48_α:
 mov qword ptr [rbp + 160], rsp
 jmp xchain00198_n49_α
# IR_VAR
 xchain00198_n49_α:
 mov rax, qword ptr [rbp + 5424]
 mov qword ptr [rbp + 3968], rax
 mov rax, qword ptr [rbp + 5432]
 mov qword ptr [rbp + 3976], rax
 jmp xchain00198_n50_α
 xchain00198_n50_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3968]
 mov rdx, qword ptr [rbp + 3976]
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 jmp xchain00198_n51_α
# IR_VAR
 xchain00198_n51_α:
 mov rax, qword ptr [rbp + 5408]
 mov qword ptr [rbp + 3920], rax
 mov rax, qword ptr [rbp + 5416]
 mov qword ptr [rbp + 3928], rax
 jmp xchain00198_n52_α
 xchain00198_n52_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3920]
 mov rdx, qword ptr [rbp + 3928]
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 jmp xchain00198_n53_α
# IR_VAR
 xchain00198_n53_α:
 mov rax, qword ptr [rbp + 5376]
 mov qword ptr [rbp + 3872], rax
 mov rax, qword ptr [rbp + 5384]
 mov qword ptr [rbp + 3880], rax
 jmp xchain00198_n54_α
 xchain00198_n54_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3872]
 mov rdx, qword ptr [rbp + 3880]
 mov qword ptr [rbp + 5392], rax
 mov qword ptr [rbp + 5400], rdx
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 jmp xchain00198_n55_α
# IR_VAR
 xchain00198_n55_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 jmp xchain00198_n56_α
# IR_VAR_REF
 xchain00198_n56_α:
 mov rax, 4294967305
 mov rdx, 1879052384
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3752], rdx
 jmp xchain00198_n58_α
# IR_VAR_REF
 xchain00198_n57_α:
 mov rax, 4294967305
 mov rdx, 1879052400
 mov qword ptr [rbp + 3488], rax
 mov qword ptr [rbp + 3496], rdx
 jmp xchain00198_n59_α
# IR_VAR
 xchain00198_n58_α:
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 3776], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 3784], rax
 jmp xchain00198_n60_α
# IR_VAR
 xchain00198_n59_α:
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 3520], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 3528], rax
 jmp xchain00198_n61_α
# IR_SUBSCRIPT x[i] variable
 xchain00198_n60_α:
 mov rdi, qword ptr [rbp + 3744]
 mov rsi, qword ptr [rbp + 3752]
 mov rdx, qword ptr [rbp + 3776]
 mov rcx, qword ptr [rbp + 3784]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00198_n57_α
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 jmp xchain00198_n63_α
# IR_SUBSCRIPT x[i] variable
 xchain00198_n61_α:
 mov rdi, qword ptr [rbp + 3488]
 mov rsi, qword ptr [rbp + 3496]
 mov rdx, qword ptr [rbp + 3520]
 mov rcx, qword ptr [rbp + 3528]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00198_n62_α
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 jmp xchain00198_n64_α
# IR_VAR
 xchain00198_n62_α:
 mov rax, qword ptr [rbp + 5408]
 mov qword ptr [rbp + 3408], rax
 mov rax, qword ptr [rbp + 5416]
 mov qword ptr [rbp + 3416], rax
 jmp xchain00198_n65_α
# IR_DEREF variable -> value
 xchain00198_n63_α:
 mov rdi, qword ptr [rbp + 3808]
 mov rsi, qword ptr [rbp + 3816]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00198_n57_α
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 jmp xchain00198_n67_α
# IR_DEREF variable -> value
 xchain00198_n64_α:
 mov rdi, qword ptr [rbp + 3552]
 mov rsi, qword ptr [rbp + 3560]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00198_n62_α
 mov qword ptr [rbp + 3584], rax
 mov qword ptr [rbp + 3592], rdx
 jmp xchain00198_n68_α
# IR_VAR
 xchain00198_n65_α:
 mov rax, qword ptr [rbp + 5424]
 mov qword ptr [rbp + 3440], rax
 mov rax, qword ptr [rbp + 5432]
 mov qword ptr [rbp + 3448], rax
 jmp xchain00198_n69_α
# IR_VAR
 xchain00198_n66_α:
 mov rax, qword ptr [rbp + 5376]
 mov qword ptr [rbp + 3264], rax
 mov rax, qword ptr [rbp + 5384]
 mov qword ptr [rbp + 3272], rax
 jmp xchain00198_n70_α
# IR_COERCE_NUMERIC
 xchain00198_n67_α:
 mov eax, dword ptr [rbp + 3712]
 cmp eax, 7
 je .Lx00221_1
 cmp eax, 6
 jne .Lx00221_0
 mov eax, dword ptr [rbp + 3840]
 cmp eax, 6
 jne .Lx00221_0
.Lx00221_1:
 mov rax, qword ptr [rbp + 3712]
 mov qword ptr [rbp + 3680], rax
 mov rax, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 3688], rax
 jmp xchain00198_n72_α
.Lx00221_0:
 lea rdi, [rbp + 3712]
 lea rsi, [rbp + 3840]
 lea rdx, [rbp + 3680]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n72_α
 xchain00198_n68_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3584]
 mov rdx, qword ptr [rbp + 3592]
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 jmp xchain00198_n62_α
 xchain00198_n69_α:
# BOX IR_CALL atan(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3408] -> [zr+3360]
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 3360], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 3368], rax
# marshal arg1 = producer-box slot [zr+3440] -> [zr+3376]
 mov rax, qword ptr [rbp + 3440]
 mov qword ptr [rbp + 3376], rax
 mov rax, qword ptr [rbp + 3448]
 mov qword ptr [rbp + 3384], rax
  .section .rodata
  .Lrkfn741: .string "atan"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn741]
 lea rsi, [rbp + 3360]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 cmp eax, 99
 je xchain00198_n66_α
 jmp xchain00198_n73_α
 xchain00198_n69_β:
 jmp xchain00198_n66_α
# IR_VAR
 xchain00198_n70_α:
 mov rax, qword ptr [rbp + 5392]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 5400]
 mov qword ptr [rbp + 3304], rax
 jmp xchain00198_n74_α
# IR_DISJUNCTION_NARY
 xchain00198_n71_α:
 mov qword ptr [rbp + 2976], 0
 mov qword ptr [rbp + 2984], 0
 mov dword ptr [rbp + 2992], 0
 jmp xchain00198_n76_α
xchain00198_n71_as:
 mov eax, dword ptr [rbp + 2992]
 cmp eax, 0
 jne .Lx00222_0
 jmp xchain00198_n75_α
.Lx00222_0:
 jmp xchain00198_n75_α
 xchain00198_n71_β:
 mov eax, dword ptr [rbp + 2992]
 jmp xchain00198_n75_α
xchain00198_n71_af:
 add dword ptr [rbp + 2992], 1
 mov eax, dword ptr [rbp + 2992]
 jmp xchain00198_n75_α
# IR_COERCE_NUMERIC
 xchain00198_n72_α:
 mov eax, dword ptr [rbp + 3840]
 cmp eax, 7
 je .Lx00223_1
 cmp eax, 6
 jne .Lx00223_0
 mov eax, dword ptr [rbp + 3712]
 cmp eax, 6
 jne .Lx00223_0
.Lx00223_1:
 mov rax, qword ptr [rbp + 3840]
 mov qword ptr [rbp + 3648], rax
 mov rax, qword ptr [rbp + 3848]
 mov qword ptr [rbp + 3656], rax
 jmp xchain00198_n77_α
.Lx00223_0:
 lea rdi, [rbp + 3840]
 lea rsi, [rbp + 3712]
 lea rdx, [rbp + 3648]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n77_α
 xchain00198_n73_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3344]
 mov rdx, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 jmp xchain00198_n66_α
# IR_COERCE_NUMERIC
 xchain00198_n74_α:
 mov eax, dword ptr [rbp + 5376]
 cmp eax, 7
 je .Lx00224_1
 cmp eax, 6
 jne .Lx00224_0
 mov eax, dword ptr [rbp + 5392]
 cmp eax, 6
 jne .Lx00224_0
.Lx00224_1:
 mov rax, qword ptr [rbp + 5376]
 mov qword ptr [rbp + 3232], rax
 mov rax, qword ptr [rbp + 5384]
 mov qword ptr [rbp + 3240], rax
 jmp xchain00198_n78_α
.Lx00224_0:
 lea rdi, [rbp + 5376]
 lea rsi, [rbp + 5392]
 lea rdx, [rbp + 3232]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n78_α
# IR_VAR
 xchain00198_n75_α:
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 2680], rax
 jmp xchain00198_n79_α
# IR_VAR
 xchain00198_n76_α:
 mov rax, qword ptr [rbp + 5344]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 5352]
 mov qword ptr [rbp + 3048], rax
 jmp xchain00198_n81_α
 xchain00198_n76_β:
 jmp xchain00198_n71_af
 xchain00198_n77_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3680]
 cmp eax, 100
 je .Lx00225_0
 mov eax, dword ptr [rbp + 3648]
 cmp eax, 100
 je .Lx00225_0
 mov eax, dword ptr [rbp + 3680]
 cmp eax, 6
 jne .Lx00225_2
 mov eax, dword ptr [rbp + 3648]
 cmp eax, 6
 jne .Lx00225_2
.Lx00225_1:
 mov rax, qword ptr [rbp + 3688]
 mov rcx, qword ptr [rbp + 3656]
 imul rax, rcx
 mov qword ptr [rbp + 3616], 6
 mov qword ptr [rbp + 3624], rax
 jmp xchain00198_n82_α
.Lx00225_0:
 mov rdi, qword ptr [rbp + 3680]
 mov rsi, qword ptr [rbp + 3688]
 mov rdx, qword ptr [rbp + 3648]
 mov rcx, qword ptr [rbp + 3656]
 mov r8d, 2
 lea r9, [rbp + 3616]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00198_n82_α
.Lx00225_2:
 mov rdi, qword ptr [rbp + 3680]
 mov rsi, qword ptr [rbp + 3688]
 mov rdx, qword ptr [rbp + 3648]
 mov rcx, qword ptr [rbp + 3656]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00198_n57_α
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 jmp xchain00198_n82_α
 xchain00198_n77_β:
 jmp xchain00198_n57_α
# IR_COERCE_NUMERIC
 xchain00198_n78_α:
 mov eax, dword ptr [rbp + 5392]
 cmp eax, 7
 je .Lx00226_1
 cmp eax, 6
 jne .Lx00226_0
 mov eax, dword ptr [rbp + 5376]
 cmp eax, 6
 jne .Lx00226_0
.Lx00226_1:
 mov rax, qword ptr [rbp + 5392]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 5400]
 mov qword ptr [rbp + 3208], rax
 jmp xchain00198_n83_α
.Lx00226_0:
 lea rdi, [rbp + 5392]
 lea rsi, [rbp + 5376]
 lea rdx, [rbp + 3200]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n83_α
# IR_VAR
 xchain00198_n79_α:
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 2712], rax
 jmp xchain00198_n84_α
# IR_DISJUNCTION_NARY
 xchain00198_n80_α:
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 mov dword ptr [rbp + 240], 0
 jmp xchain00198_n86_α
xchain00198_n80_as:
 mov eax, dword ptr [rbp + 240]
 cmp eax, 0
 jne .Lx00227_0
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 232], rax
 jmp xchain00198_n85_α
.Lx00227_0:
 jmp xchain00198_n85_α
 xchain00198_n80_β:
 mov eax, dword ptr [rbp + 240]
 jmp xchain00198_n87_β
xchain00198_n80_af:
 add dword ptr [rbp + 240], 1
 mov eax, dword ptr [rbp + 240]
 jmp xchain00198_n92_α
# IR_VAR
 xchain00198_n81_α:
 mov rax, qword ptr [rbp + 5360]
 mov qword ptr [rbp + 3072], rax
 mov rax, qword ptr [rbp + 5368]
 mov qword ptr [rbp + 3080], rax
 jmp xchain00198_n89_α
 xchain00198_n82_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3616]
 mov rdx, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 5424], rax
 mov qword ptr [rbp + 5432], rdx
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 jmp xchain00198_n57_α
 xchain00198_n83_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3232]
 cmp eax, 100
 je .Lx00228_0
 mov eax, dword ptr [rbp + 3200]
 cmp eax, 100
 je .Lx00228_0
 mov eax, dword ptr [rbp + 3232]
 cmp eax, 6
 jne .Lx00228_2
 mov eax, dword ptr [rbp + 3200]
 cmp eax, 6
 jne .Lx00228_2
.Lx00228_1:
 mov rax, qword ptr [rbp + 3240]
 mov rcx, qword ptr [rbp + 3208]
 sub rax, rcx
 mov qword ptr [rbp + 3168], 6
 mov qword ptr [rbp + 3176], rax
 jmp xchain00198_n90_α
.Lx00228_0:
 mov rdi, qword ptr [rbp + 3232]
 mov rsi, qword ptr [rbp + 3240]
 mov rdx, qword ptr [rbp + 3200]
 mov rcx, qword ptr [rbp + 3208]
 mov r8d, 1
 lea r9, [rbp + 3168]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00198_n90_α
.Lx00228_2:
 mov rdi, qword ptr [rbp + 3232]
 mov rsi, qword ptr [rbp + 3240]
 mov rdx, qword ptr [rbp + 3200]
 mov rcx, qword ptr [rbp + 3208]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00198_n71_α
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 jmp xchain00198_n90_α
 xchain00198_n83_β:
 jmp xchain00198_n71_α
# IR_COERCE_NUMERIC
 xchain00198_n84_α:
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 7
 je .Lx00229_1
 cmp eax, 6
 jne .Lx00229_0
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 6
 jne .Lx00229_0
.Lx00229_1:
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 2648], rax
 jmp xchain00198_n91_α
.Lx00229_0:
 lea rdi, [rbp + 5312]
 lea rsi, [rbp + 5312]
 lea rdx, [rbp + 2640]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n91_α
 xchain00198_n85_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 216], rax
 jmp xchain00198_n92_α
xchain00198_n85_β:
 jmp xchain00198_n92_α
# IR_VAR
 xchain00198_n86_α:
 mov rax, qword ptr [rbp + 5280]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 5288]
 mov qword ptr [rbp + 2264], rax
 jmp xchain00198_n93_α
 xchain00198_n86_β:
 jmp xchain00198_n80_af
# IR_DISJUNCTION_NARY
 xchain00198_n87_α:
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 mov dword ptr [rbp + 288], 0
 jmp xchain00198_n94_α
xchain00198_n87_as:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 0
 jne .Lx00230_0
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 280], rax
 jmp xchain00198_n88_α
.Lx00230_0:
 jmp xchain00198_n88_α
 xchain00198_n87_β:
 mov eax, dword ptr [rbp + 288]
 jmp xchain00198_n92_α
xchain00198_n87_af:
 add dword ptr [rbp + 288], 1
 mov eax, dword ptr [rbp + 288]
 jmp xchain00198_n92_α
 xchain00198_n88_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 264], rax
 jmp xchain00198_n80_as
xchain00198_n88_β:
 jmp xchain00198_n92_α
 xchain00198_n89_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5344]
 cmp eax, 100
 je .Lx00231_0
 mov eax, dword ptr [rbp + 5360]
 cmp eax, 100
 je .Lx00231_0
 mov eax, dword ptr [rbp + 5344]
 cmp eax, 6
 jne .Lx00231_2
 mov eax, dword ptr [rbp + 5360]
 cmp eax, 6
 jne .Lx00231_2
.Lx00231_1:
 mov rax, qword ptr [rbp + 5352]
 mov rcx, qword ptr [rbp + 5368]
 cmp rax, rcx
 jle xchain00198_n71_af
 mov rcx, qword ptr [rbp + 5360]
 mov qword ptr [rbp + 3008], rcx
 mov rcx, qword ptr [rbp + 5368]
 mov qword ptr [rbp + 3016], rcx
 jmp xchain00198_n92_α
.Lx00231_0:
 mov rdi, qword ptr [rbp + 5344]
 mov rsi, qword ptr [rbp + 5352]
 mov rdx, qword ptr [rbp + 5360]
 mov rcx, qword ptr [rbp + 5368]
 mov r8d, 7
 lea r9, [rbp + 3008]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00231_1
 cmp eax, 1
 je xchain00198_n71_af
 jmp xchain00198_n92_α
.Lx00231_2:
 mov rdi, qword ptr [rbp + 5344]
 mov rsi, qword ptr [rbp + 5352]
 mov rdx, qword ptr [rbp + 5360]
 mov rcx, qword ptr [rbp + 5368]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00198_n71_af
 mov rax, qword ptr [rbp + 5360]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 5368]
 mov qword ptr [rbp + 3016], rax
 jmp xchain00198_n92_α
 xchain00198_n90_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3168] -> [zr+3136]
 mov rax, qword ptr [rbp + 3168]
 mov qword ptr [rbp + 3136], rax
 mov rax, qword ptr [rbp + 3176]
 mov qword ptr [rbp + 3144], rax
  .section .rodata
  .Lrkfn776: .string "abs"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn776]
 lea rsi, [rbp + 3136]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 cmp eax, 99
 je xchain00198_n71_α
 jmp xchain00198_n96_α
 xchain00198_n90_β:
 jmp xchain00198_n71_α
# IR_COERCE_NUMERIC
 xchain00198_n91_α:
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 7
 je .Lx00232_1
 cmp eax, 6
 jne .Lx00232_0
 mov eax, dword ptr [rbp + 5312]
 cmp eax, 6
 jne .Lx00232_0
.Lx00232_1:
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 2616], rax
 jmp xchain00198_n97_α
.Lx00232_0:
 lea rdi, [rbp + 5312]
 lea rsi, [rbp + 5312]
 lea rdx, [rbp + 2608]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n97_α
# IR_UNMARK
 xchain00198_n92_α:
 mov rsp, qword ptr [rbp + 160]
 jmp xchain00198_n46_β
# IR_VAR
 xchain00198_n93_α:
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 2296], rax
 jmp xchain00198_n98_α
# IR_VAR
 xchain00198_n94_α:
 mov rax, qword ptr [rbp + 5264]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 5272]
 mov qword ptr [rbp + 1304], rax
 jmp xchain00198_n99_α
 xchain00198_n94_β:
 jmp xchain00198_n87_af
 xchain00198_n95_α:
 jmp xchain00198_n87_as
xchain00198_n95_β:
 jmp xchain00198_n92_α
 xchain00198_n96_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3120]
 mov rdx, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 5344], rax
 mov qword ptr [rbp + 5352], rdx
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 jmp xchain00198_n71_α
 xchain00198_n97_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2640]
 cmp eax, 100
 je .Lx00233_0
 mov eax, dword ptr [rbp + 2608]
 cmp eax, 100
 je .Lx00233_0
 mov eax, dword ptr [rbp + 2640]
 cmp eax, 6
 jne .Lx00233_2
 mov eax, dword ptr [rbp + 2608]
 cmp eax, 6
 jne .Lx00233_2
.Lx00233_1:
 mov rax, qword ptr [rbp + 2648]
 mov rcx, qword ptr [rbp + 2616]
 imul rax, rcx
 mov qword ptr [rbp + 2576], 6
 mov qword ptr [rbp + 2584], rax
 jmp xchain00198_n00074_α
.Lx00233_0:
 mov rdi, qword ptr [rbp + 2640]
 mov rsi, qword ptr [rbp + 2648]
 mov rdx, qword ptr [rbp + 2608]
 mov rcx, qword ptr [rbp + 2616]
 mov r8d, 2
 lea r9, [rbp + 2576]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00198_n00074_α
.Lx00233_2:
 mov rdi, qword ptr [rbp + 2640]
 mov rsi, qword ptr [rbp + 2648]
 mov rdx, qword ptr [rbp + 2608]
 mov rcx, qword ptr [rbp + 2616]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00198_n80_α
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 jmp xchain00198_n00074_α
 xchain00198_n97_β:
 jmp xchain00198_n80_α
 xchain00198_n98_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5280]
 cmp eax, 100
 je .Lx00234_0
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 100
 je .Lx00234_0
 mov eax, dword ptr [rbp + 5280]
 cmp eax, 6
 jne .Lx00234_2
 mov eax, dword ptr [rbp + 5296]
 cmp eax, 6
 jne .Lx00234_2
.Lx00234_1:
 mov rax, qword ptr [rbp + 5288]
 mov rcx, qword ptr [rbp + 5304]
 cmp rax, rcx
 jg xchain00198_n80_af
 mov rcx, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 2224], rcx
 mov rcx, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 2232], rcx
 jmp xchain00198_n00076_α
.Lx00234_0:
 mov rdi, qword ptr [rbp + 5280]
 mov rsi, qword ptr [rbp + 5288]
 mov rdx, qword ptr [rbp + 5296]
 mov rcx, qword ptr [rbp + 5304]
 mov r8d, 6
 lea r9, [rbp + 2224]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00234_1
 cmp eax, 1
 je xchain00198_n80_af
 jmp xchain00198_n00076_α
.Lx00234_2:
 mov rdi, qword ptr [rbp + 5280]
 mov rsi, qword ptr [rbp + 5288]
 mov rdx, qword ptr [rbp + 5296]
 mov rcx, qword ptr [rbp + 5304]
 mov r8d, 6
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00198_n80_af
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 2232], rax
 jmp xchain00198_n00076_α
 xchain00198_n99_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1264]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1272], rax
  .section .rodata
  .Lrkfn790: .string "abs"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn790]
 lea rsi, [rbp + 1264]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain00198_n87_af
 jmp xchain00198_n00078_α
 xchain00198_n99_β:
 jmp xchain00198_n87_af
# IR_VAR
 xchain00198_n00074_α:
 mov rax, qword ptr [rbp + 5328]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 5336]
 mov qword ptr [rbp + 2840], rax
 jmp xchain00198_n00079_α
# IR_VAR_REF
 xchain00198_n00076_α:
 mov rax, 4294967305
 mov rdx, 1879052384
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 jmp xchain00198_n00001_α
# IR_LIT_INTEGER
 xchain00198_n00078_α:
 mov qword ptr [rbp + 1328], 6
 mov rax, qword ptr [rip + .Lx00235_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain00198_n00091_α
.Lx00235_0:
 .quad 5000
# IR_VAR
 xchain00198_n00079_α:
 mov rax, qword ptr [rbp + 5328]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 5336]
 mov qword ptr [rbp + 2872], rax
 jmp xchain00198_n00080_α
# IR_VAR
 xchain00198_n00001_α:
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 1944], rax
 jmp xchain00198_n00081_α
 xchain00198_n00091_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 1248]
 cmp eax, 100
 je .Lx00236_0
 mov eax, dword ptr [rbp + 1328]
 cmp eax, 100
 je .Lx00236_0
 mov eax, dword ptr [rbp + 1248]
 cmp eax, 6
 jne .Lx00236_2
 mov eax, dword ptr [rbp + 1328]
 cmp eax, 6
 jne .Lx00236_2
.Lx00236_1:
 mov rax, qword ptr [rbp + 1256]
 mov rcx, qword ptr [rbp + 1336]
 cmp rax, rcx
 jge xchain00198_n87_af
 mov rcx, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1216], rcx
 mov rcx, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1224], rcx
 jmp xchain00198_n00082_α
.Lx00236_0:
 mov rdi, qword ptr [rbp + 1248]
 mov rsi, qword ptr [rbp + 1256]
 mov rdx, qword ptr [rbp + 1328]
 mov rcx, qword ptr [rbp + 1336]
 mov r8d, 5
 lea r9, [rbp + 1216]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00236_1
 cmp eax, 1
 je xchain00198_n87_af
 jmp xchain00198_n00082_α
.Lx00236_2:
 mov rdi, qword ptr [rbp + 1248]
 mov rsi, qword ptr [rbp + 1256]
 mov rdx, qword ptr [rbp + 1328]
 mov rcx, qword ptr [rbp + 1336]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00198_n87_af
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1224], rax
 jmp xchain00198_n00082_α
# IR_COERCE_NUMERIC
 xchain00198_n00080_α:
 mov eax, dword ptr [rbp + 5328]
 cmp eax, 7
 je .Lx00237_1
 cmp eax, 6
 jne .Lx00237_0
 mov eax, dword ptr [rbp + 5328]
 cmp eax, 6
 jne .Lx00237_0
.Lx00237_1:
 mov rax, qword ptr [rbp + 5328]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 5336]
 mov qword ptr [rbp + 2808], rax
 jmp xchain00198_n00002_α
.Lx00237_0:
 lea rdi, [rbp + 5328]
 lea rsi, [rbp + 5328]
 lea rdx, [rbp + 2800]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n00002_α
# IR_SUBSCRIPT x[i] variable
 xchain00198_n00081_α:
 mov rdi, qword ptr [rbp + 1904]
 mov rsi, qword ptr [rbp + 1912]
 mov rdx, qword ptr [rbp + 1936]
 mov rcx, qword ptr [rbp + 1944]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00198_n00098_α
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain00198_n00084_α
# IR_VAR_REF
 xchain00198_n00098_α:
 mov rax, 4294967305
 mov rdx, 1879052400
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain00198_n00086_α
# IR_VAR
 xchain00198_n00082_α:
 mov rax, qword ptr [rbp + 5248]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 5256]
 mov qword ptr [rbp + 1160], rax
 jmp xchain00198_n00088_α
# IR_COERCE_NUMERIC
 xchain00198_n00002_α:
 mov eax, dword ptr [rbp + 5328]
 cmp eax, 7
 je .Lx00238_1
 cmp eax, 6
 jne .Lx00238_0
 mov eax, dword ptr [rbp + 5328]
 cmp eax, 6
 jne .Lx00238_0
.Lx00238_1:
 mov rax, qword ptr [rbp + 5328]
 mov qword ptr [rbp + 2768], rax
 mov rax, qword ptr [rbp + 5336]
 mov qword ptr [rbp + 2776], rax
 jmp xchain00198_n00090_α
.Lx00238_0:
 lea rdi, [rbp + 5328]
 lea rsi, [rbp + 5328]
 lea rdx, [rbp + 2768]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n00090_α
# IR_DEREF variable -> value
 xchain00198_n00084_α:
 mov rdi, qword ptr [rbp + 1968]
 mov rsi, qword ptr [rbp + 1976]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00198_n00098_α
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain00198_n00092_α
# IR_VAR
 xchain00198_n00086_α:
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 1512], rax
 jmp xchain00198_n00003_α
 xchain00198_n00088_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1120]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1128], rax
  .section .rodata
  .Lrkfn814: .string "abs"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn814]
 lea rsi, [rbp + 1120]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain00198_n87_af
 jmp xchain00198_n00093_α
 xchain00198_n00088_β:
 jmp xchain00198_n87_af
 xchain00198_n00090_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2800]
 cmp eax, 100
 je .Lx00239_0
 mov eax, dword ptr [rbp + 2768]
 cmp eax, 100
 je .Lx00239_0
 mov eax, dword ptr [rbp + 2800]
 cmp eax, 6
 jne .Lx00239_2
 mov eax, dword ptr [rbp + 2768]
 cmp eax, 6
 jne .Lx00239_2
.Lx00239_1:
 mov rax, qword ptr [rbp + 2808]
 mov rcx, qword ptr [rbp + 2776]
 imul rax, rcx
 mov qword ptr [rbp + 2736], 6
 mov qword ptr [rbp + 2744], rax
 jmp xchain00198_n00109_α
.Lx00239_0:
 mov rdi, qword ptr [rbp + 2800]
 mov rsi, qword ptr [rbp + 2808]
 mov rdx, qword ptr [rbp + 2768]
 mov rcx, qword ptr [rbp + 2776]
 mov r8d, 2
 lea r9, [rbp + 2736]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00198_n00109_α
.Lx00239_2:
 mov rdi, qword ptr [rbp + 2800]
 mov rsi, qword ptr [rbp + 2808]
 mov rdx, qword ptr [rbp + 2768]
 mov rcx, qword ptr [rbp + 2776]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00198_n80_α
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 jmp xchain00198_n00109_α
 xchain00198_n00090_β:
 jmp xchain00198_n80_α
# IR_VAR_REF
 xchain00198_n00092_α:
 mov rax, 4294967305
 mov rdx, 1879052384
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain00198_n00096_α
# IR_SUBSCRIPT x[i] variable
 xchain00198_n00003_α:
 mov rdi, qword ptr [rbp + 1472]
 mov rsi, qword ptr [rbp + 1480]
 mov rdx, qword ptr [rbp + 1504]
 mov rcx, qword ptr [rbp + 1512]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00198_n87_α
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain00198_n00097_α
# IR_LIT_INTEGER
 xchain00198_n00093_α:
 mov qword ptr [rbp + 1184], 6
 mov rax, qword ptr [rip + .Lx00240_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain00198_n00099_α
.Lx00240_0:
 .quad 5000
# IR_COERCE_NUMERIC
 xchain00198_n00109_α:
 mov eax, dword ptr [rbp + 2576]
 cmp eax, 7
 je .Lx00241_1
 cmp eax, 6
 jne .Lx00241_0
 mov eax, dword ptr [rbp + 2736]
 cmp eax, 6
 jne .Lx00241_0
.Lx00241_1:
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 2552], rax
 jmp xchain00198_n00100_α
.Lx00241_0:
 lea rdi, [rbp + 2576]
 lea rsi, [rbp + 2736]
 lea rdx, [rbp + 2544]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n00100_α
# IR_VAR
 xchain00198_n00096_α:
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 2120], rax
 jmp xchain00198_n00004_α
# IR_DEREF variable -> value
 xchain00198_n00097_α:
 mov rdi, qword ptr [rbp + 1536]
 mov rsi, qword ptr [rbp + 1544]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00198_n87_α
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain00198_n00102_α
 xchain00198_n00099_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 1104]
 cmp eax, 100
 je .Lx00242_0
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 100
 je .Lx00242_0
 mov eax, dword ptr [rbp + 1104]
 cmp eax, 6
 jne .Lx00242_2
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 6
 jne .Lx00242_2
.Lx00242_1:
 mov rax, qword ptr [rbp + 1112]
 mov rcx, qword ptr [rbp + 1192]
 cmp rax, rcx
 jge xchain00198_n87_af
 mov rcx, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1072], rcx
 mov rcx, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1080], rcx
 jmp xchain00198_n00104_α
.Lx00242_0:
 mov rdi, qword ptr [rbp + 1104]
 mov rsi, qword ptr [rbp + 1112]
 mov rdx, qword ptr [rbp + 1184]
 mov rcx, qword ptr [rbp + 1192]
 mov r8d, 5
 lea r9, [rbp + 1072]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00242_1
 cmp eax, 1
 je xchain00198_n87_af
 jmp xchain00198_n00104_α
.Lx00242_2:
 mov rdi, qword ptr [rbp + 1104]
 mov rsi, qword ptr [rbp + 1112]
 mov rdx, qword ptr [rbp + 1184]
 mov rcx, qword ptr [rbp + 1192]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00198_n87_af
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00198_n00104_α
# IR_COERCE_NUMERIC
 xchain00198_n00100_α:
 mov eax, dword ptr [rbp + 2736]
 cmp eax, 7
 je .Lx00243_1
 cmp eax, 6
 jne .Lx00243_0
 mov eax, dword ptr [rbp + 2576]
 cmp eax, 6
 jne .Lx00243_0
.Lx00243_1:
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 2520], rax
 jmp xchain00198_n00105_α
.Lx00243_0:
 lea rdi, [rbp + 2736]
 lea rsi, [rbp + 2576]
 lea rdx, [rbp + 2512]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n00105_α
# IR_LIT_INTEGER
 xchain00198_n00004_α:
 mov qword ptr [rbp + 2144], 6
 mov rax, qword ptr [rip + .Lx00244_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain00198_n00106_α
.Lx00244_0:
 .quad 1
# IR_VAR_REF
 xchain00198_n00102_α:
 mov rax, 4294967305
 mov rdx, 1879052400
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain00198_n00107_α
 xchain00198_n00104_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1064], rax
 jmp xchain00198_n00108_α
xchain00198_n00104_β:
 jmp xchain00198_n87_af
 xchain00198_n00105_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2544]
 cmp eax, 100
 je .Lx00245_0
 mov eax, dword ptr [rbp + 2512]
 cmp eax, 100
 je .Lx00245_0
 mov eax, dword ptr [rbp + 2544]
 cmp eax, 6
 jne .Lx00245_2
 mov eax, dword ptr [rbp + 2512]
 cmp eax, 6
 jne .Lx00245_2
.Lx00245_1:
 mov rax, qword ptr [rbp + 2552]
 mov rcx, qword ptr [rbp + 2520]
 add rax, rcx
 mov qword ptr [rbp + 2480], 6
 mov qword ptr [rbp + 2488], rax
 jmp xchain00198_n00111_α
.Lx00245_0:
 mov rdi, qword ptr [rbp + 2544]
 mov rsi, qword ptr [rbp + 2552]
 mov rdx, qword ptr [rbp + 2512]
 mov rcx, qword ptr [rbp + 2520]
 mov r8d, 0
 lea r9, [rbp + 2480]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00198_n00111_α
.Lx00245_2:
 mov rdi, qword ptr [rbp + 2544]
 mov rsi, qword ptr [rbp + 2552]
 mov rdx, qword ptr [rbp + 2512]
 mov rcx, qword ptr [rbp + 2520]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00198_n80_α
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 jmp xchain00198_n00111_α
 xchain00198_n00105_β:
 jmp xchain00198_n80_α
# IR_COERCE_NUMERIC
 xchain00198_n00106_α:
 mov eax, dword ptr [rbp + 5232]
 cmp eax, 7
 je .Lx00246_1
 cmp eax, 6
 jne .Lx00246_0
 mov eax, dword ptr [rbp + 2144]
 cmp eax, 6
 jne .Lx00246_0
.Lx00246_1:
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 2088], rax
 jmp xchain00198_n00113_α
.Lx00246_0:
 lea rdi, [rbp + 5232]
 lea rsi, [rbp + 2144]
 lea rdx, [rbp + 2080]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n00113_α
# IR_VAR
 xchain00198_n00107_α:
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 1688], rax
 jmp xchain00198_n00114_α
# IR_VAR_REF
 xchain00198_n00108_α:
 mov rax, 4294967305
 mov rdx, 1879052384
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain00198_n00116_α
# IR_VAR
 xchain00198_n00111_α:
 mov rax, qword ptr [rbp + 5344]
 mov qword ptr [rbp + 2944], rax
 mov rax, qword ptr [rbp + 5352]
 mov qword ptr [rbp + 2952], rax
 jmp xchain00198_n00117_α
 xchain00198_n00113_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2080]
 cmp eax, 100
 je .Lx00247_0
 mov eax, dword ptr [rbp + 2080]
 cmp eax, 6
 jne .Lx00247_2
.Lx00247_1:
 mov rax, qword ptr [rbp + 2088]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 2048], 6
 mov qword ptr [rbp + 2056], rax
 jmp xchain00198_n00118_α
.Lx00247_0:
 mov rdi, qword ptr [rbp + 2080]
 mov rsi, qword ptr [rbp + 2088]
 mov rdx, qword ptr [rbp + 2144]
 mov rcx, qword ptr [rbp + 2152]
 mov r8d, 1
 lea r9, [rbp + 2048]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00198_n00118_α
.Lx00247_2:
 mov rdi, qword ptr [rbp + 2080]
 mov rsi, qword ptr [rbp + 2088]
 mov rdx, qword ptr [rbp + 2144]
 mov rcx, qword ptr [rbp + 2152]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00198_n00098_α
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 jmp xchain00198_n00118_α
 xchain00198_n00113_β:
 jmp xchain00198_n00098_α
# IR_LIT_INTEGER
 xchain00198_n00114_α:
 mov qword ptr [rbp + 1712], 6
 mov rax, qword ptr [rip + .Lx00248_0]
 mov qword ptr [rbp + 1720], rax
 jmp xchain00198_n00119_α
.Lx00248_0:
 .quad 1
# IR_VAR
 xchain00198_n00116_α:
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 952], rax
 jmp xchain00198_n00120_α
 xchain00198_n00117_α:
# BOX IR_CALL sin(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2944] -> [zr+2912]
 mov rax, qword ptr [rbp + 2944]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 2952]
 mov qword ptr [rbp + 2920], rax
  .section .rodata
  .Lrkfn846: .string "sin"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn846]
 lea rsi, [rbp + 2912]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 cmp eax, 99
 je xchain00198_n80_α
 jmp xchain00198_n00124_α
 xchain00198_n00117_β:
 jmp xchain00198_n80_α
# IR_SUBSCRIPT x[i] variable
 xchain00198_n00118_α:
 mov rdi, qword ptr [rbp + 2016]
 mov rsi, qword ptr [rbp + 2024]
 mov rdx, qword ptr [rbp + 2048]
 mov rcx, qword ptr [rbp + 2056]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00198_n00098_α
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain00198_n00125_α
# IR_COERCE_NUMERIC
 xchain00198_n00119_α:
 mov eax, dword ptr [rbp + 5232]
 cmp eax, 7
 je .Lx00249_1
 cmp eax, 6
 jne .Lx00249_0
 mov eax, dword ptr [rbp + 1712]
 cmp eax, 6
 jne .Lx00249_0
.Lx00249_1:
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 1656], rax
 jmp xchain00198_n00127_α
.Lx00249_0:
 lea rdi, [rbp + 5232]
 lea rsi, [rbp + 1712]
 lea rdx, [rbp + 1648]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n00127_α
# IR_SUBSCRIPT x[i] variable
 xchain00198_n00120_α:
 mov rdi, qword ptr [rbp + 912]
 mov rsi, qword ptr [rbp + 920]
 mov rdx, qword ptr [rbp + 944]
 mov rcx, qword ptr [rbp + 952]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00198_n00122_α
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain00198_n00128_α
# IR_VAR_REF
 xchain00198_n00122_α:
 mov rax, 4294967305
 mov rdx, 1879052400
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00198_n00129_α
# IR_COERCE_NUMERIC
 xchain00198_n00124_α:
 mov eax, dword ptr [rbp + 2480]
 cmp eax, 7
 je .Lx00250_1
 cmp eax, 6
 jne .Lx00250_0
 mov eax, dword ptr [rbp + 2896]
 cmp eax, 6
 jne .Lx00250_0
.Lx00250_1:
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2456], rax
 jmp xchain00198_n00130_α
.Lx00250_0:
 lea rdi, [rbp + 2480]
 lea rsi, [rbp + 2896]
 lea rdx, [rbp + 2448]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n00130_α
# IR_DEREF variable -> value
 xchain00198_n00125_α:
 mov rdi, qword ptr [rbp + 2176]
 mov rsi, qword ptr [rbp + 2184]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00198_n00098_α
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 jmp xchain00198_n00005_α
 xchain00198_n00127_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1648]
 cmp eax, 100
 je .Lx00251_0
 mov eax, dword ptr [rbp + 1648]
 cmp eax, 6
 jne .Lx00251_2
.Lx00251_1:
 mov rax, qword ptr [rbp + 1656]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 1616], 6
 mov qword ptr [rbp + 1624], rax
 jmp xchain00198_n00006_α
.Lx00251_0:
 mov rdi, qword ptr [rbp + 1648]
 mov rsi, qword ptr [rbp + 1656]
 mov rdx, qword ptr [rbp + 1712]
 mov rcx, qword ptr [rbp + 1720]
 mov r8d, 1
 lea r9, [rbp + 1616]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00198_n00006_α
.Lx00251_2:
 mov rdi, qword ptr [rbp + 1648]
 mov rsi, qword ptr [rbp + 1656]
 mov rdx, qword ptr [rbp + 1712]
 mov rcx, qword ptr [rbp + 1720]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00198_n87_α
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain00198_n00006_α
 xchain00198_n00127_β:
 jmp xchain00198_n87_α
# IR_VAR
 xchain00198_n00128_α:
 mov rax, qword ptr [rbp + 5264]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 5272]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00198_n00132_α
# IR_VAR
 xchain00198_n00129_α:
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 808], rax
 jmp xchain00198_n00007_α
# IR_COERCE_NUMERIC
 xchain00198_n00130_α:
 mov eax, dword ptr [rbp + 2896]
 cmp eax, 7
 je .Lx00252_1
 cmp eax, 6
 jne .Lx00252_0
 mov eax, dword ptr [rbp + 2480]
 cmp eax, 6
 jne .Lx00252_0
.Lx00252_1:
 mov rax, qword ptr [rbp + 2896]
 mov qword ptr [rbp + 2416], rax
 mov rax, qword ptr [rbp + 2904]
 mov qword ptr [rbp + 2424], rax
 jmp xchain00198_n00136_α
.Lx00252_0:
 lea rdi, [rbp + 2896]
 lea rsi, [rbp + 2480]
 lea rdx, [rbp + 2416]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n00136_α
# IR_COERCE_NUMERIC
 xchain00198_n00005_α:
 mov eax, dword ptr [rbp + 2000]
 cmp eax, 7
 je .Lx00253_1
 cmp eax, 6
 jne .Lx00253_0
 mov eax, dword ptr [rbp + 2208]
 cmp eax, 6
 jne .Lx00253_0
.Lx00253_1:
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 1880], rax
 jmp xchain00198_n00008_α
.Lx00253_0:
 lea rdi, [rbp + 2000]
 lea rsi, [rbp + 2208]
 lea rdx, [rbp + 1872]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n00008_α
# IR_SUBSCRIPT x[i] variable
 xchain00198_n00006_α:
 mov rdi, qword ptr [rbp + 1584]
 mov rsi, qword ptr [rbp + 1592]
 mov rdx, qword ptr [rbp + 1616]
 mov rcx, qword ptr [rbp + 1624]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00198_n87_α
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain00198_n00137_α
# IR_ASSIGN_VAR
 xchain00198_n00132_α:
 mov rdi, qword ptr [rbp + 976]
 mov rsi, qword ptr [rbp + 984]
 mov rdx, qword ptr [rbp + 1024]
 mov rcx, qword ptr [rbp + 1032]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00198_n00122_α
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain00198_n00122_α
# IR_SUBSCRIPT x[i] variable
 xchain00198_n00007_α:
 mov rdi, qword ptr [rbp + 768]
 mov rsi, qword ptr [rbp + 776]
 mov rdx, qword ptr [rbp + 800]
 mov rcx, qword ptr [rbp + 808]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00198_n00134_α
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00198_n00142_α
# IR_VAR_REF
 xchain00198_n00134_α:
 mov rax, 4294967305
 mov rdx, 1879052384
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00198_n00009_α
 xchain00198_n00136_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 100
 je .Lx00254_0
 mov eax, dword ptr [rbp + 2416]
 cmp eax, 100
 je .Lx00254_0
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 6
 jne .Lx00254_2
 mov eax, dword ptr [rbp + 2416]
 cmp eax, 6
 jne .Lx00254_2
.Lx00254_1:
 mov rax, qword ptr [rbp + 2456]
 mov rcx, qword ptr [rbp + 2424]
 imul rax, rcx
 mov qword ptr [rbp + 2384], 6
 mov qword ptr [rbp + 2392], rax
 jmp xchain00198_n00139_α
.Lx00254_0:
 mov rdi, qword ptr [rbp + 2448]
 mov rsi, qword ptr [rbp + 2456]
 mov rdx, qword ptr [rbp + 2416]
 mov rcx, qword ptr [rbp + 2424]
 mov r8d, 2
 lea r9, [rbp + 2384]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00198_n00139_α
.Lx00254_2:
 mov rdi, qword ptr [rbp + 2448]
 mov rsi, qword ptr [rbp + 2456]
 mov rdx, qword ptr [rbp + 2416]
 mov rcx, qword ptr [rbp + 2424]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00198_n80_α
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 jmp xchain00198_n00139_α
 xchain00198_n00136_β:
 jmp xchain00198_n80_α
# IR_COERCE_NUMERIC
 xchain00198_n00008_α:
 mov eax, dword ptr [rbp + 2208]
 cmp eax, 7
 je .Lx00255_1
 cmp eax, 6
 jne .Lx00255_0
 mov eax, dword ptr [rbp + 2000]
 cmp eax, 6
 jne .Lx00255_0
.Lx00255_1:
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 1848], rax
 jmp xchain00198_n00140_α
.Lx00255_0:
 lea rdi, [rbp + 2208]
 lea rsi, [rbp + 2000]
 lea rdx, [rbp + 1840]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n00140_α
# IR_DEREF variable -> value
 xchain00198_n00137_α:
 mov rdi, qword ptr [rbp + 1744]
 mov rsi, qword ptr [rbp + 1752]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00198_n87_α
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain00198_n00141_α
# IR_VAR
 xchain00198_n00142_α:
 mov rax, qword ptr [rbp + 5248]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 5256]
 mov qword ptr [rbp + 888], rax
 jmp xchain00198_n00145_α
# IR_VAR
 xchain00198_n00009_α:
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 424], rax
 jmp xchain00198_n00149_α
 xchain00198_n00139_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2384] -> [zr+2352]
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 2360], rax
  .section .rodata
  .Lrkfn879: .string "abs"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn879]
 lea rsi, [rbp + 2352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 cmp eax, 99
 je xchain00198_n80_α
 jmp xchain00198_n00151_α
 xchain00198_n00139_β:
 jmp xchain00198_n80_α
 xchain00198_n00140_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1872]
 cmp eax, 100
 je .Lx00256_0
 mov eax, dword ptr [rbp + 1840]
 cmp eax, 100
 je .Lx00256_0
 mov eax, dword ptr [rbp + 1872]
 cmp eax, 6
 jne .Lx00256_2
 mov eax, dword ptr [rbp + 1840]
 cmp eax, 6
 jne .Lx00256_2
.Lx00256_1:
 mov rax, qword ptr [rbp + 1880]
 mov rcx, qword ptr [rbp + 1848]
 add rax, rcx
 mov qword ptr [rbp + 1808], 6
 mov qword ptr [rbp + 1816], rax
 jmp xchain00198_n00153_α
.Lx00256_0:
 mov rdi, qword ptr [rbp + 1872]
 mov rsi, qword ptr [rbp + 1880]
 mov rdx, qword ptr [rbp + 1840]
 mov rcx, qword ptr [rbp + 1848]
 mov r8d, 0
 lea r9, [rbp + 1808]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00198_n00153_α
.Lx00256_2:
 mov rdi, qword ptr [rbp + 1872]
 mov rsi, qword ptr [rbp + 1880]
 mov rdx, qword ptr [rbp + 1840]
 mov rcx, qword ptr [rbp + 1848]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00198_n00098_α
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain00198_n00153_α
 xchain00198_n00140_β:
 jmp xchain00198_n00098_α
# IR_COERCE_NUMERIC
 xchain00198_n00141_α:
 mov eax, dword ptr [rbp + 1568]
 cmp eax, 7
 je .Lx00257_1
 cmp eax, 6
 jne .Lx00257_0
 mov eax, dword ptr [rbp + 1776]
 cmp eax, 6
 jne .Lx00257_0
.Lx00257_1:
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1448], rax
 jmp xchain00198_n00010_α
.Lx00257_0:
 lea rdi, [rbp + 1568]
 lea rsi, [rbp + 1776]
 lea rdx, [rbp + 1440]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n00010_α
# IR_ASSIGN_VAR
 xchain00198_n00145_α:
 mov rdi, qword ptr [rbp + 832]
 mov rsi, qword ptr [rbp + 840]
 mov rdx, qword ptr [rbp + 880]
 mov rcx, qword ptr [rbp + 888]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00198_n00134_α
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00198_n00134_α
# IR_LIT_INTEGER
 xchain00198_n00149_α:
 mov qword ptr [rbp + 448], 6
 mov rax, qword ptr [rip + .Lx00258_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain00198_n00155_α
.Lx00258_0:
 .quad 1
 xchain00198_n00151_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2336]
 mov rdx, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain00198_n80_α
 xchain00198_n00153_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1808]
 mov rdx, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 5264], rax
 mov qword ptr [rbp + 5272], rdx
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain00198_n00098_α
# IR_COERCE_NUMERIC
 xchain00198_n00010_α:
 mov eax, dword ptr [rbp + 1776]
 cmp eax, 7
 je .Lx00259_1
 cmp eax, 6
 jne .Lx00259_0
 mov eax, dword ptr [rbp + 1568]
 cmp eax, 6
 jne .Lx00259_0
.Lx00259_1:
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1416], rax
 jmp xchain00198_n00156_α
.Lx00259_0:
 lea rdi, [rbp + 1776]
 lea rsi, [rbp + 1568]
 lea rdx, [rbp + 1408]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n00156_α
# IR_COERCE_NUMERIC
 xchain00198_n00155_α:
 mov eax, dword ptr [rbp + 5232]
 cmp eax, 7
 je .Lx00260_1
 cmp eax, 6
 jne .Lx00260_0
 mov eax, dword ptr [rbp + 448]
 cmp eax, 6
 jne .Lx00260_0
.Lx00260_1:
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 392], rax
 jmp xchain00198_n00158_α
.Lx00260_0:
 lea rdi, [rbp + 5232]
 lea rsi, [rbp + 448]
 lea rdx, [rbp + 384]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n00158_α
 xchain00198_n00156_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1440]
 cmp eax, 100
 je .Lx00261_0
 mov eax, dword ptr [rbp + 1408]
 cmp eax, 100
 je .Lx00261_0
 mov eax, dword ptr [rbp + 1440]
 cmp eax, 6
 jne .Lx00261_2
 mov eax, dword ptr [rbp + 1408]
 cmp eax, 6
 jne .Lx00261_2
.Lx00261_1:
 mov rax, qword ptr [rbp + 1448]
 mov rcx, qword ptr [rbp + 1416]
 add rax, rcx
 mov qword ptr [rbp + 1376], 6
 mov qword ptr [rbp + 1384], rax
 jmp xchain00198_n00160_α
.Lx00261_0:
 mov rdi, qword ptr [rbp + 1440]
 mov rsi, qword ptr [rbp + 1448]
 mov rdx, qword ptr [rbp + 1408]
 mov rcx, qword ptr [rbp + 1416]
 mov r8d, 0
 lea r9, [rbp + 1376]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00198_n00160_α
.Lx00261_2:
 mov rdi, qword ptr [rbp + 1440]
 mov rsi, qword ptr [rbp + 1448]
 mov rdx, qword ptr [rbp + 1408]
 mov rcx, qword ptr [rbp + 1416]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00198_n87_α
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain00198_n00160_α
 xchain00198_n00156_β:
 jmp xchain00198_n87_α
 xchain00198_n00158_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 384]
 cmp eax, 100
 je .Lx00262_0
 mov eax, dword ptr [rbp + 384]
 cmp eax, 6
 jne .Lx00262_2
.Lx00262_1:
 mov rax, qword ptr [rbp + 392]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 352], 6
 mov qword ptr [rbp + 360], rax
 jmp xchain00198_n00162_α
.Lx00262_0:
 mov rdi, qword ptr [rbp + 384]
 mov rsi, qword ptr [rbp + 392]
 mov rdx, qword ptr [rbp + 448]
 mov rcx, qword ptr [rbp + 456]
 mov r8d, 1
 lea r9, [rbp + 352]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00198_n00162_α
.Lx00262_2:
 mov rdi, qword ptr [rbp + 384]
 mov rsi, qword ptr [rbp + 392]
 mov rdx, qword ptr [rbp + 448]
 mov rcx, qword ptr [rbp + 456]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00198_n92_α
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00198_n00162_α
 xchain00198_n00158_β:
 jmp xchain00198_n92_α
 xchain00198_n00160_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1376]
 mov rdx, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 5248], rax
 mov qword ptr [rbp + 5256], rdx
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain00198_n87_α
# IR_SUBSCRIPT x[i] variable
 xchain00198_n00162_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, qword ptr [rbp + 352]
 mov rcx, qword ptr [rbp + 360]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00198_n92_α
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00198_n00163_α
# IR_VAR_REF
 xchain00198_n00163_α:
 mov rax, 4294967305
 mov rdx, 1879052400
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00198_n00263_α
# IR_VAR
 xchain00198_n00263_α:
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 632], rax
 jmp xchain00198_n00264_α
# IR_LIT_INTEGER
 xchain00198_n00264_α:
 mov qword ptr [rbp + 656], 6
 mov rax, qword ptr [rip + .Lx00265_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain00198_n00266_α
.Lx00265_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00198_n00266_α:
 mov eax, dword ptr [rbp + 5232]
 cmp eax, 7
 je .Lx00267_1
 cmp eax, 6
 jne .Lx00267_0
 mov eax, dword ptr [rbp + 656]
 cmp eax, 6
 jne .Lx00267_0
.Lx00267_1:
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 600], rax
 jmp xchain00198_n00268_α
.Lx00267_0:
 lea rdi, [rbp + 5232]
 lea rsi, [rbp + 656]
 lea rdx, [rbp + 592]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00198_n00268_α
 xchain00198_n00268_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 592]
 cmp eax, 100
 je .Lx00269_0
 mov eax, dword ptr [rbp + 592]
 cmp eax, 6
 jne .Lx00269_2
.Lx00269_1:
 mov rax, qword ptr [rbp + 600]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 560], 6
 mov qword ptr [rbp + 568], rax
 jmp xchain00198_n00270_α
.Lx00269_0:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 656]
 mov rcx, qword ptr [rbp + 664]
 mov r8d, 1
 lea r9, [rbp + 560]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00198_n00270_α
.Lx00269_2:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 656]
 mov rcx, qword ptr [rbp + 664]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00198_n92_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00198_n00270_α
 xchain00198_n00268_β:
 jmp xchain00198_n92_α
# IR_SUBSCRIPT x[i] variable
 xchain00198_n00270_α:
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 560]
 mov rcx, qword ptr [rbp + 568]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00198_n92_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00198_n00271_α
# IR_LIT_INTEGER
 xchain00198_n00271_α:
 mov qword ptr [rbp + 736], 6
 mov rax, qword ptr [rip + .Lx00272_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain00198_n00273_α
.Lx00272_0:
 .quad 0
# IR_ASSIGN_VAR
 xchain00198_n00273_α:
 mov rdi, qword ptr [rbp + 688]
 mov rsi, qword ptr [rbp + 696]
 mov rdx, qword ptr [rbp + 736]
 mov rcx, qword ptr [rbp + 744]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00198_n92_α
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00198_n00011_α
# IR_ASSIGN_VAR
 xchain00198_n00011_α:
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 720]
 mov rcx, qword ptr [rbp + 728]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00198_n92_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00198_n95_α
proc_collapse_res:
add rsp, 8
pop rbp
proc_collapse_β:
jmp proc_collapse_ω
proc_collapse_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 5448]
lea rsp, [rbp + 5472]
mov rbp, [rbp + 5464]
jmp rax
proc_collapse_ω:
mov rax, [rbp + 5456]
lea rsp, [rbp + 5472]
mov rbp, [rbp + 5464]
jmp rax
  .globl proc_successor_α
proc_successor_α:
#=======================================================================================================================
    .global proc_successor_α
    .global proc_successor_β
    .global proc_successor_γ
    .global proc_successor_ω
  sub rsp, 2304
  mov [rsp + 2280], rcx
  mov [rsp + 2288], rdx
  mov [rsp + 2296], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 2272
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 2168], rsp
  mov rdi, rsp
  mov esi, 2272
  call rt_jmp_frame_lexprep@PLT
proc_successor_α_body:
# IR_VAR_REF
 xchain00274_n0_α:
 mov rax, 4294967305
 mov rdx, 1879052352
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain00274_n1_α
# IR_VAR
 xchain00274_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2088], rax
 jmp xchain00274_n2_α
# IR_FIELD_GET
 xchain00274_n2_α:
 mov rdi, qword ptr [rip + .Lx00275_0]
 mov rsi, qword ptr [rbp + 2080]
 mov rdx, qword ptr [rbp + 2088]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00274_n3_α
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 jmp xchain00274_n4_α
.Lx00275_0:
 .quad .Lx00275_0_s
.Lx00275_0_s:
 .string "code"
# IR_VAR
 xchain00274_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1720], rax
 jmp xchain00274_n5_α
# IR_SUBSCRIPT x[i] variable
 xchain00274_n4_α:
 mov rdi, qword ptr [rbp + 2016]
 mov rsi, qword ptr [rbp + 2024]
 mov rdx, qword ptr [rbp + 2048]
 mov rcx, qword ptr [rbp + 2056]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00274_n3_α
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain00274_n7_α
# IR_FIELD_GET
 xchain00274_n5_α:
 mov rdi, qword ptr [rip + .Lx00276_0]
 mov rsi, qword ptr [rbp + 1712]
 mov rdx, qword ptr [rbp + 1720]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00274_n6_α
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00274_n8_α
.Lx00276_0:
 .quad .Lx00276_0_s
.Lx00276_0_s:
 .string "x2"
# IR_DISJUNCTION_NARY
 xchain00274_n6_α:
 mov qword ptr [rbp + 48], 0
 mov qword ptr [rbp + 56], 0
 mov dword ptr [rbp + 64], 0
 jmp xchain00274_n10_α
xchain00274_n6_as:
 mov eax, dword ptr [rbp + 64]
 cmp eax, 0
 jne .Lx00277_0
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 56], rax
 jmp xchain00274_n9_α
.Lx00277_0:
 cmp eax, 1
 jne .Lx00277_1
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 56], rax
 jmp xchain00274_n9_α
.Lx00277_1:
 cmp eax, 2
 jne .Lx00277_2
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 56], rax
 jmp xchain00274_n9_α
.Lx00277_2:
 jmp xchain00274_n9_α
 xchain00274_n6_β:
 mov eax, dword ptr [rbp + 64]
 cmp eax, 0
 je xchain00274_n6_af
 cmp eax, 1
 je xchain00274_n6_af
 jmp xchain00274_n6_af
xchain00274_n6_af:
 add dword ptr [rbp + 64], 1
 mov eax, dword ptr [rbp + 64]
 cmp eax, 1
 je xchain00274_n11_α
 cmp eax, 2
 je xchain00274_n12_α
 jmp proc_successor_ω
# IR_DEREF variable -> value
 xchain00274_n7_α:
 mov rdi, qword ptr [rbp + 2112]
 mov rsi, qword ptr [rbp + 2120]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00274_n3_α
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 jmp xchain00274_n13_α
# IR_VAR
 xchain00274_n8_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00274_n14_α
 xchain00274_n9_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00274_n15_α
# IR_LIT_INTEGER
 xchain00274_n10_α:
 mov qword ptr [rbp + 80], 6
 mov rax, qword ptr [rip + .Lx00278_0]
 mov qword ptr [rbp + 88], rax
 jmp xchain00274_n6_as
 xchain00274_n10_β:
 jmp xchain00274_n6_af
.Lx00278_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00274_n11_α:
 mov qword ptr [rbp + 112], 6
 mov rax, qword ptr [rip + .Lx00279_0]
 mov qword ptr [rbp + 120], rax
 jmp xchain00274_n6_as
 xchain00274_n11_β:
 jmp xchain00274_n6_af
.Lx00279_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00274_n12_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00280_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00274_n6_as
 xchain00274_n12_β:
 jmp xchain00274_n6_af
.Lx00280_0:
 .quad 18446744073709551615
 xchain00274_n13_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2144]
 mov rdx, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain00274_n3_α
# IR_FIELD_GET
 xchain00274_n14_α:
 mov rdi, qword ptr [rip + .Lx00281_0]
 mov rsi, qword ptr [rbp + 1776]
 mov rdx, qword ptr [rbp + 1784]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00274_n6_α
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain00274_n16_α
.Lx00281_0:
 .quad .Lx00281_0_s
.Lx00281_0_s:
 .string "y2"
# IR_BOUND
 xchain00274_n15_α:
 mov qword ptr [rbp + 176], rsp
 jmp xchain00274_n17_α
# IR_COERCE_NUMERIC
 xchain00274_n16_α:
 mov eax, dword ptr [rbp + 1680]
 cmp eax, 7
 je .Lx00282_1
 cmp eax, 6
 jne .Lx00282_0
 mov eax, dword ptr [rbp + 1744]
 cmp eax, 6
 jne .Lx00282_0
.Lx00282_1:
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1656], rax
 jmp xchain00274_n18_α
.Lx00282_0:
 lea rdi, [rbp + 1680]
 lea rsi, [rbp + 1744]
 lea rdx, [rbp + 1648]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00274_n18_α
# IR_DISJUNCTION_NARY
 xchain00274_n17_α:
 mov qword ptr [rbp + 1168], 0
 mov qword ptr [rbp + 1176], 0
 mov dword ptr [rbp + 1184], 0
 jmp xchain00274_n20_α
xchain00274_n17_as:
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 0
 jne .Lx00283_0
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1176], rax
 jmp xchain00274_n19_α
.Lx00283_0:
 cmp eax, 1
 jne .Lx00283_1
 jmp xchain00274_n19_α
.Lx00283_1:
 jmp xchain00274_n19_α
 xchain00274_n17_β:
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 0
 je xchain00274_n17_af
 jmp xchain00274_n17_af
xchain00274_n17_af:
 add dword ptr [rbp + 1184], 1
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 1
 je xchain00274_n21_α
 jmp xchain00274_n24_α
# IR_COERCE_NUMERIC
 xchain00274_n18_α:
 mov eax, dword ptr [rbp + 1744]
 cmp eax, 7
 je .Lx00284_1
 cmp eax, 6
 jne .Lx00284_0
 mov eax, dword ptr [rbp + 1680]
 cmp eax, 6
 jne .Lx00284_0
.Lx00284_1:
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00274_n23_α
.Lx00284_0:
 lea rdi, [rbp + 1744]
 lea rsi, [rbp + 1680]
 lea rdx, [rbp + 1616]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00274_n23_α
 xchain00274_n19_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1168]
 mov rdx, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain00274_n24_α
# IR_VAR_REF
 xchain00274_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2256]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain00274_n25_α
 xchain00274_n20_β:
 jmp xchain00274_n17_af
 xchain00274_n21_α:
 jmp xchain00274_n26_α
xchain00274_n21_β:
 jmp xchain00274_n26_α
# IR_DEREF variable -> value
 xchain00274_n22_α:
 mov rdi, qword ptr [rbp + 1424]
 mov rsi, qword ptr [rbp + 1432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00274_n17_af
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain00274_n17_as
 xchain00274_n22_β:
 jmp xchain00274_n17_af
 xchain00274_n23_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1648]
 cmp eax, 100
 je .Lx00285_0
 mov eax, dword ptr [rbp + 1616]
 cmp eax, 100
 je .Lx00285_0
 mov eax, dword ptr [rbp + 1648]
 cmp eax, 6
 jne .Lx00285_2
 mov eax, dword ptr [rbp + 1616]
 cmp eax, 6
 jne .Lx00285_2
.Lx00285_1:
 mov rax, qword ptr [rbp + 1656]
 mov rcx, qword ptr [rbp + 1624]
 add rax, rcx
 mov qword ptr [rbp + 1584], 6
 mov qword ptr [rbp + 1592], rax
 jmp xchain00274_n27_α
.Lx00285_0:
 mov rdi, qword ptr [rbp + 1648]
 mov rsi, qword ptr [rbp + 1656]
 mov rdx, qword ptr [rbp + 1616]
 mov rcx, qword ptr [rbp + 1624]
 mov r8d, 0
 lea r9, [rbp + 1584]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00274_n27_α
.Lx00285_2:
 mov rdi, qword ptr [rbp + 1648]
 mov rsi, qword ptr [rbp + 1656]
 mov rdx, qword ptr [rbp + 1616]
 mov rcx, qword ptr [rbp + 1624]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00274_n6_α
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain00274_n27_α
 xchain00274_n23_β:
 jmp xchain00274_n6_α
# IR_DISJUNCTION_NARY
 xchain00274_n24_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00274_n29_α
xchain00274_n24_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00286_0
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 248], rax
 jmp xchain00274_n28_α
.Lx00286_0:
 jmp xchain00274_n28_α
 xchain00274_n24_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00274_n30_β
xchain00274_n24_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00274_n26_α
# IR_VAR
 xchain00274_n25_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1368], rax
 jmp xchain00274_n31_α
# IR_UNMARK
 xchain00274_n26_α:
 mov rsp, qword ptr [rbp + 176]
 jmp xchain00274_n6_β
# IR_LIT_INTEGER
 xchain00274_n27_α:
 mov qword ptr [rbp + 1808], 6
 mov rax, qword ptr [rip + .Lx00287_0]
 mov qword ptr [rbp + 1816], rax
 jmp xchain00274_n32_α
.Lx00287_0:
 .quad 8
 xchain00274_n28_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 232], rax
 jmp xchain00274_n26_α
xchain00274_n28_β:
 jmp xchain00274_n26_α
# IR_VAR_REF
 xchain00274_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2224]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00274_n33_α
 xchain00274_n29_β:
 jmp xchain00274_n24_af
# IR_DISJUNCTION_NARY
 xchain00274_n30_α:
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 mov dword ptr [rbp + 288], 0
 jmp xchain00274_n34_α
xchain00274_n30_as:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 0
 jne .Lx00288_0
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 280], rax
 jmp xchain00274_n24_as
.Lx00288_0:
 cmp eax, 1
 jne .Lx00288_1
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 280], rax
 jmp xchain00274_n24_as
.Lx00288_1:
 jmp xchain00274_n24_as
 xchain00274_n30_β:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 0
 je xchain00274_n35_β
 jmp xchain00274_n36_β
xchain00274_n30_af:
 add dword ptr [rbp + 288], 1
 mov eax, dword ptr [rbp + 288]
 cmp eax, 1
 je xchain00274_n36_α
 jmp xchain00274_n26_α
# IR_FIELD_GET
 xchain00274_n31_α:
 mov rdi, qword ptr [rip + .Lx00289_0]
 mov rsi, qword ptr [rbp + 1360]
 mov rdx, qword ptr [rbp + 1368]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00274_n17_af
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain00274_n37_α
.Lx00289_0:
 .quad .Lx00289_0_s
.Lx00289_0_s:
 .string "aindex"
 xchain00274_n32_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1584] -> [zr+1536]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1544], rax
# marshal arg1 = producer-box slot [zr+1808] -> [zr+1552]
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1560], rax
  .section .rodata
  .Lrkfn956: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn956]
 lea rsi, [rbp + 1536]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain00274_n6_α
 jmp xchain00274_n38_α
 xchain00274_n32_β:
 jmp xchain00274_n6_α
# IR_VAR
 xchain00274_n33_α:
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00274_n39_α
# IR_VAR
 xchain00274_n34_α:
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 616], rax
 jmp xchain00274_n40_α
 xchain00274_n34_β:
 jmp xchain00274_n30_af
# IR_DISJUNCTION_NARY
 xchain00274_n35_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00274_n41_α
xchain00274_n35_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00290_0
 jmp xchain00274_n30_as
.Lx00290_0:
 jmp xchain00274_n30_as
 xchain00274_n35_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00274_n26_α
xchain00274_n35_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00274_n26_α
# IR_DISJUNCTION_NARY
 xchain00274_n36_α:
 mov qword ptr [rbp + 672], 0
 mov qword ptr [rbp + 680], 0
 mov dword ptr [rbp + 688], 0
 jmp xchain00274_n42_α
xchain00274_n36_as:
 mov eax, dword ptr [rbp + 688]
 cmp eax, 0
 jne .Lx00291_0
 jmp xchain00274_n30_as
.Lx00291_0:
 jmp xchain00274_n30_as
 xchain00274_n36_β:
 mov eax, dword ptr [rbp + 688]
 jmp xchain00274_n26_α
xchain00274_n36_af:
 add dword ptr [rbp + 688], 1
 mov eax, dword ptr [rbp + 688]
 jmp xchain00274_n26_α
# IR_VAR
 xchain00274_n37_α:
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 1400], rax
 jmp xchain00274_n43_α
# IR_VAR
 xchain00274_n38_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1944], rax
 jmp xchain00274_n44_α
# IR_SUBSCRIPT x[i] variable
 xchain00274_n39_α:
 mov rdi, qword ptr [rbp + 1040]
 mov rsi, qword ptr [rbp + 1048]
 mov rdx, qword ptr [rbp + 1072]
 mov rcx, qword ptr [rbp + 1080]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00274_n24_af
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00274_n45_α
 xchain00274_n40_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+576]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 584], rax
  .section .rodata
  .Lrkfn971: .string "type"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn971]
 lea rsi, [rbp + 576]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain00274_n30_af
 jmp xchain00274_n46_α
 xchain00274_n40_β:
 jmp xchain00274_n30_af
# IR_VAR
 xchain00274_n41_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00274_n47_α
 xchain00274_n41_β:
 jmp xchain00274_n48_α
# IR_VAR
 xchain00274_n42_α:
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 968], rax
 jmp xchain00274_n49_α
 xchain00274_n42_β:
 jmp xchain00274_n36_af
# IR_COERCE_NUMERIC
 xchain00274_n43_α:
 mov eax, dword ptr [rbp + 1328]
 cmp eax, 7
 je .Lx00292_1
 cmp eax, 6
 jne .Lx00292_0
 mov eax, dword ptr [rbp + 2176]
 cmp eax, 6
 jne .Lx00292_0
.Lx00292_1:
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1304], rax
 jmp xchain00274_n50_α
.Lx00292_0:
 lea rdi, [rbp + 1328]
 lea rsi, [rbp + 2176]
 lea rdx, [rbp + 1296]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00274_n50_α
# IR_FIELD_GET
 xchain00274_n44_α:
 mov rdi, qword ptr [rip + .Lx00293_0]
 mov rsi, qword ptr [rbp + 1936]
 mov rdx, qword ptr [rbp + 1944]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00274_n6_α
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 jmp xchain00274_n51_α
.Lx00293_0:
 .quad .Lx00293_0_s
.Lx00293_0_s:
 .string "x2"
# IR_DEREF variable -> value
 xchain00274_n45_α:
 mov rdi, qword ptr [rbp + 1104]
 mov rsi, qword ptr [rbp + 1112]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00274_n24_af
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00274_n52_α
# IR_LIT_STRING
 xchain00274_n46_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00294_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00274_n53_α
.Lx00294_0:
 .quad .Lx00294_0_s
.Lx00294_0_s:
 .string "list"
# IR_VAR
 xchain00274_n47_α:
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 504], rax
 jmp xchain00274_n54_α
# KEYWORD_null
 xchain00274_n48_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00274_n55_α
 xchain00274_n48_β:
 jmp xchain00274_n35_af
# IR_LIST_BANG
 xchain00274_n49_α:
 mov qword ptr [rbp + 944], 0
.Lx00295_0:
 mov rdi, qword ptr [rbp + 960]
 mov rsi, qword ptr [rbp + 968]
 mov rdx, qword ptr [rbp + 944]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp rax, 99
 je xchain00274_n36_af
 jmp xchain00274_n56_α
 xchain00274_n49_β:
 inc qword ptr [rbp + 944]
 jmp .Lx00295_0
# IR_COERCE_NUMERIC
 xchain00274_n50_α:
 mov eax, dword ptr [rbp + 2176]
 cmp eax, 7
 je .Lx00296_1
 cmp eax, 6
 jne .Lx00296_0
 mov eax, dword ptr [rbp + 1328]
 cmp eax, 6
 jne .Lx00296_0
.Lx00296_1:
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 1272], rax
 jmp xchain00274_n57_α
.Lx00296_0:
 lea rdi, [rbp + 2176]
 lea rsi, [rbp + 1328]
 lea rdx, [rbp + 1264]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00274_n57_α
# IR_LIT_INTEGER
 xchain00274_n51_α:
 mov qword ptr [rbp + 1968], 6
 mov rax, qword ptr [rip + .Lx00297_0]
 mov qword ptr [rbp + 1976], rax
 jmp xchain00274_n58_α
.Lx00297_0:
 .quad 7
# IR_UNOP
 xchain00274_n52_α:
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 99
 je xchain00274_n24_af
 cmp eax, 0
 je xchain00274_n24_af
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00274_n59_α
 xchain00274_n53_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00274_n30_af
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00274_n35_α
 xchain00274_n54_α:
# BOX IR_CALL member(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+416]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 424], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+432]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 440], rax
  .section .rodata
  .Lrkfn991: .string "member"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn991]
 lea rsi, [rbp + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain00274_n48_α
 jmp xchain00274_n35_as
 xchain00274_n54_β:
 jmp xchain00274_n48_α
# IR_VAR
 xchain00274_n55_α:
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 344], rax
 jmp xchain00274_n60_α
 xchain00274_n56_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain00274_n61_α
 xchain00274_n57_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1296]
 cmp eax, 100
 je .Lx00298_0
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 100
 je .Lx00298_0
 mov eax, dword ptr [rbp + 1296]
 cmp eax, 6
 jne .Lx00298_2
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 6
 jne .Lx00298_2
.Lx00298_1:
 mov rax, qword ptr [rbp + 1304]
 mov rcx, qword ptr [rbp + 1272]
 add rax, rcx
 mov qword ptr [rbp + 1232], 6
 mov qword ptr [rbp + 1240], rax
 jmp xchain00274_n62_α
.Lx00298_0:
 mov rdi, qword ptr [rbp + 1296]
 mov rsi, qword ptr [rbp + 1304]
 mov rdx, qword ptr [rbp + 1264]
 mov rcx, qword ptr [rbp + 1272]
 mov r8d, 0
 lea r9, [rbp + 1232]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00274_n62_α
.Lx00298_2:
 mov rdi, qword ptr [rbp + 1296]
 mov rsi, qword ptr [rbp + 1304]
 mov rdx, qword ptr [rbp + 1264]
 mov rcx, qword ptr [rbp + 1272]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00274_n17_af
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain00274_n62_α
 xchain00274_n57_β:
 jmp xchain00274_n17_af
 xchain00274_n58_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1904] -> [zr+1856]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 1864], rax
# marshal arg1 = producer-box slot [zr+1968] -> [zr+1872]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1880], rax
  .section .rodata
  .Lrkfn997: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn997]
 lea rsi, [rbp + 1856]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 cmp eax, 99
 je xchain00274_n6_α
 jmp xchain00274_n63_α
 xchain00274_n58_β:
 jmp xchain00274_n6_α
 xchain00274_n59_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1008]
 mov rdx, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00274_n30_α
# IR_RETURN
 xchain00274_n60_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_successor_γ
# IR_VAR
 xchain00274_n61_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain00274_n64_α
# IR_SUBSCRIPT x[i] variable
 xchain00274_n62_α:
 mov rdi, qword ptr [rbp + 1200]
 mov rsi, qword ptr [rbp + 1208]
 mov rdx, qword ptr [rbp + 1232]
 mov rcx, qword ptr [rbp + 1240]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00274_n17_af
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain00274_n22_α
 xchain00274_n63_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1520]
 mov rsi, qword ptr [rbp + 1528]
 mov rdx, qword ptr [rbp + 1840]
 mov rcx, qword ptr [rbp + 1848]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain00274_n66_α
# IR_VAR
 xchain00274_n64_α:
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 888], rax
 jmp xchain00274_n67_α
# KEYWORD_null
 xchain00274_n65_α:
 mov qword ptr [rbp + 752], 0
 mov qword ptr [rbp + 760], 0
 jmp xchain00274_n68_α
 xchain00274_n65_β:
 jmp xchain00274_n49_β
 xchain00274_n66_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1488]
 mov rdx, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain00274_n6_α
 xchain00274_n67_α:
# BOX IR_CALL member(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+800]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 808], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+816]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 824], rax
  .section .rodata
  .Lrkfn1008: .string "member"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1008]
 lea rsi, [rbp + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain00274_n65_α
 jmp xchain00274_n49_β
 xchain00274_n67_β:
 jmp xchain00274_n65_α
 xchain00274_n68_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 744], rax
 jmp xchain00274_n69_α
xchain00274_n68_β:
 jmp xchain00274_n36_af
# IR_VAR
 xchain00274_n69_α:
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 712], rax
 jmp xchain00274_n70_α
# IR_RETURN
 xchain00274_n70_α:
 mov rax, qword ptr [rbp + 704]
 mov rdx, qword ptr [rbp + 712]
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
mov rax, [rbp + 2280]
lea rsp, [rbp + 2304]
mov rbp, [rbp + 2296]
jmp rax
proc_successor_ω:
mov rax, [rbp + 2288]
lea rsp, [rbp + 2304]
mov rbp, [rbp + 2296]
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
# IR_DISJUNCTION_NARY
 xchain00299_n0_α:
 mov qword ptr [rbp + 4256], 0
 mov qword ptr [rbp + 4264], 0
 mov dword ptr [rbp + 4272], 0
 jmp xchain00299_n2_α
xchain00299_n0_as:
 mov eax, dword ptr [rbp + 4272]
 cmp eax, 0
 jne .Lx00300_0
 mov rax, qword ptr [rbp + 4288]
 mov qword ptr [rbp + 4256], rax
 mov rax, qword ptr [rbp + 4296]
 mov qword ptr [rbp + 4264], rax
 jmp xchain00299_n1_α
.Lx00300_0:
 jmp xchain00299_n1_α
 xchain00299_n0_β:
 mov eax, dword ptr [rbp + 4272]
 jmp xchain00299_n1_α
xchain00299_n0_af:
 add dword ptr [rbp + 4272], 1
 mov eax, dword ptr [rbp + 4272]
 jmp xchain00299_n1_α
# IR_VAR
 xchain00299_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 4224], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 4232], rax
 jmp xchain00299_n4_α
# IR_VAR_REF
 xchain00299_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052432
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 jmp xchain00299_n6_α
 xchain00299_n2_β:
 jmp xchain00299_n0_af
# IR_ASSIGN gva
 xchain00299_n3_α:
 mov rax, qword ptr [rbp + 4304]
 mov rdx, qword ptr [rbp + 4312]
 mov qword ptr [1879052416], rax
 mov qword ptr [1879052424], rdx
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 jmp xchain00299_n0_as
 xchain00299_n3_β:
 jmp xchain00299_n1_α
# IR_GEN_SCAN
 xchain00299_n4_α:
 mov rdi, qword ptr [rbp + 4224]
 mov rsi, qword ptr [rbp + 4232]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00299_n7_α
# IR_VAR
 xchain00299_n5_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00299_n8_α
# IR_NULLTEST_VAR
 xchain00299_n6_α:
 mov eax, dword ptr [rbp + 4336]
 cmp eax, 99
 je xchain00299_n0_af
 mov rdi, qword ptr [rbp + 4336]
 mov rsi, qword ptr [rbp + 4344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00299_n0_af
 cmp eax, 0
 jne xchain00299_n0_af
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [rbp + 4368], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [rbp + 4376], rax
 jmp xchain00299_n9_α
# IR_VAR
 xchain00299_n7_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 jmp xchain00299_n10_α
# IR_RETURN
 xchain00299_n8_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_crack_γ
# IR_LIT_INTEGER
 xchain00299_n9_α:
 mov qword ptr [rbp + 4416], 6
 mov rax, qword ptr [rip + .Lx00301_0]
 mov qword ptr [rbp + 4424], rax
 jmp xchain00299_n12_α
.Lx00301_0:
 .quad 1
# IR_FIELD_GET lv
 xchain00299_n10_α:
 mov rdi, qword ptr [rip + .Lx00302_0]
 mov rsi, qword ptr [rbp + 4112]
 mov rdx, qword ptr [rbp + 4120]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00299_n11_α
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
 jmp xchain00299_n13_α
.Lx00302_0:
 .quad .Lx00302_0_s
.Lx00302_0_s:
 .string "code"
# IR_LIT_INTEGER
 xchain00299_n11_α:
 mov qword ptr [rbp + 4048], 6
 mov rax, qword ptr [rip + .Lx00303_0]
 mov qword ptr [rbp + 4056], rax
 jmp xchain00299_n14_α
.Lx00303_0:
 .quad 4
# IR_ASSIGN_VAR
 xchain00299_n12_α:
 mov rdi, qword ptr [rbp + 4368]
 mov rsi, qword ptr [rbp + 4376]
 mov rdx, qword ptr [rbp + 4416]
 mov rcx, qword ptr [rbp + 4424]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00299_n0_af
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 jmp xchain00299_n15_α
# IR_LIT_INTEGER
 xchain00299_n13_α:
 mov qword ptr [rbp + 4192], 6
 mov rax, qword ptr [rip + .Lx00304_0]
 mov qword ptr [rbp + 4200], rax
 jmp xchain00299_n16_α
.Lx00304_0:
 .quad 4
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00299_n14_α:
 sub rsp, 16
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00305_239
 add rsp, 16
 jmp xchain00299_n17_α
.Lx00305_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00305_240
 add rsp, 16
 jmp xchain00299_n17_α
.Lx00305_240:
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
 jmp xchain00299_n17_α
 xchain00299_n14_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00299_n17_α
 xchain00299_n15_α:
# BOX IR_CALL crec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1035: .string "crec"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1035]
 lea rsi, [rbp + 4320]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 cmp eax, 99
 je xchain00299_n1_α
 jmp xchain00299_n3_α
 xchain00299_n15_β:
 jmp xchain00299_n1_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00299_n16_α:
 sub rsp, 16
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00306_239
 add rsp, 16
 jmp xchain00299_n11_α
.Lx00306_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00306_240
 add rsp, 16
 jmp xchain00299_n11_α
.Lx00306_240:
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
 jmp xchain00299_n18_α
 xchain00299_n16_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00299_n11_α
# IR_LIT_INTEGER
 xchain00299_n17_α:
 mov qword ptr [rbp + 3984], 6
 mov rax, qword ptr [rip + .Lx00307_0]
 mov qword ptr [rbp + 3992], rax
 jmp xchain00299_n19_α
.Lx00307_0:
 .quad 7
# IR_ASSIGN_VAR
 xchain00299_n18_α:
 mov rdi, qword ptr [rbp + 4080]
 mov rsi, qword ptr [rbp + 4088]
 mov rdx, qword ptr [rbp + 4160]
 mov rcx, qword ptr [rbp + 4168]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00299_n11_α
 mov qword ptr [rbp + 4144], rax
 mov qword ptr [rbp + 4152], rdx
 jmp xchain00299_n11_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00299_n19_α:
 sub rsp, 16
 mov rax, 7
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00308_239
 add rsp, 16
 jmp xchain00299_n21_α
.Lx00308_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00308_240
 add rsp, 16
 jmp xchain00299_n21_α
.Lx00308_240:
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
 jmp xchain00299_n20_α
 xchain00299_n19_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00299_n21_α
 xchain00299_n20_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3952] -> [zr+3920]
 mov rax, qword ptr [rbp + 3952]
 mov qword ptr [rbp + 3920], rax
 mov rax, qword ptr [rbp + 3960]
 mov qword ptr [rbp + 3928], rax
  .section .rodata
  .Lrkfn1043: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1043]
 lea rsi, [rbp + 3920]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 cmp eax, 99
 je xchain00299_n21_α
 jmp xchain00299_n22_α
 xchain00299_n20_β:
 jmp xchain00299_n21_α
# IR_LIT_INTEGER
 xchain00299_n21_α:
 mov qword ptr [rbp + 3840], 6
 mov rax, qword ptr [rip + .Lx00309_0]
 mov qword ptr [rbp + 3848], rax
 jmp xchain00299_n23_α
.Lx00309_0:
 .quad 7
 xchain00299_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3904]
 mov rdx, qword ptr [rbp + 3912]
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 jmp xchain00299_n24_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00299_n23_α:
 sub rsp, 16
 mov rax, 7
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00310_239
 add rsp, 16
 jmp xchain00299_n26_α
.Lx00310_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00310_240
 add rsp, 16
 jmp xchain00299_n26_α
.Lx00310_240:
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
 jmp xchain00299_n25_α
 xchain00299_n23_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00299_n26_α
 xchain00299_n24_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3888]
 mov rdx, qword ptr [rbp + 3896]
 mov qword ptr [rbp + 4528], rax
 mov qword ptr [rbp + 4536], rdx
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 jmp xchain00299_n21_α
 xchain00299_n25_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3808] -> [zr+3776]
 mov rax, qword ptr [rbp + 3808]
 mov qword ptr [rbp + 3776], rax
 mov rax, qword ptr [rbp + 3816]
 mov qword ptr [rbp + 3784], rax
  .section .rodata
  .Lrkfn1050: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1050]
 lea rsi, [rbp + 3776]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 cmp eax, 99
 je xchain00299_n26_α
 jmp xchain00299_n27_α
 xchain00299_n25_β:
 jmp xchain00299_n26_α
# IR_VAR
 xchain00299_n26_α:
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 3232], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 3240], rax
 jmp xchain00299_n28_α
 xchain00299_n27_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3760]
 mov rdx, qword ptr [rbp + 3768]
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3752], rdx
 jmp xchain00299_n30_α
# IR_LIT_INTEGER
 xchain00299_n28_α:
 mov qword ptr [rbp + 3360], 6
 mov rax, qword ptr [rip + .Lx00311_0]
 mov qword ptr [rbp + 3368], rax
 jmp xchain00299_n31_α
.Lx00311_0:
 .quad 4
# IR_DISJUNCTION_NARY
 xchain00299_n29_α:
 mov qword ptr [rbp + 2304], 0
 mov qword ptr [rbp + 2312], 0
 mov dword ptr [rbp + 2320], 0
 jmp xchain00299_n33_α
xchain00299_n29_as:
 mov eax, dword ptr [rbp + 2320]
 cmp eax, 0
 jne .Lx00312_0
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2312], rax
 jmp xchain00299_n32_α
.Lx00312_0:
 cmp eax, 1
 jne .Lx00312_1
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 2312], rax
 jmp xchain00299_n32_α
.Lx00312_1:
 jmp xchain00299_n32_α
 xchain00299_n29_β:
 mov eax, dword ptr [rbp + 2320]
 cmp eax, 0
 je xchain00299_n32_α
 jmp xchain00299_n32_α
xchain00299_n29_af:
 add dword ptr [rbp + 2320], 1
 mov eax, dword ptr [rbp + 2320]
 cmp eax, 1
 je xchain00299_n34_α
 jmp xchain00299_n32_α
 xchain00299_n30_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3744]
 mov rdx, qword ptr [rbp + 3752]
 mov qword ptr [rbp + 4496], rax
 mov qword ptr [rbp + 4504], rdx
 mov qword ptr [rbp + 3728], rax
 mov qword ptr [rbp + 3736], rdx
 jmp xchain00299_n26_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00299_n31_α:
 sub rsp, 16
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00313_239
 add rsp, 16
 jmp xchain00299_n29_α
.Lx00313_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00313_240
 add rsp, 16
 jmp xchain00299_n29_α
.Lx00313_240:
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
 jmp xchain00299_n37_α
 xchain00299_n31_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00299_n29_α
# IR_VAR
 xchain00299_n32_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain00299_n38_α
# IR_VAR
 xchain00299_n33_α:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 2792], rax
 jmp xchain00299_n40_α
 xchain00299_n33_β:
 jmp xchain00299_n29_af
# IR_VAR
 xchain00299_n34_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain00299_n41_α
 xchain00299_n34_β:
 jmp xchain00299_n32_α
 xchain00299_n35_α:
 jmp xchain00299_n29_as
xchain00299_n35_β:
 jmp xchain00299_n32_α
# IR_ASSIGN_VAR
 xchain00299_n36_α:
 mov rdi, qword ptr [rbp + 3008]
 mov rsi, qword ptr [rbp + 3016]
 mov rdx, qword ptr [rbp + 3088]
 mov rcx, qword ptr [rbp + 3096]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00299_n32_α
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp xchain00299_n29_as
 xchain00299_n36_β:
 jmp xchain00299_n32_α
# IR_LIT_INTEGER
 xchain00299_n37_α:
 mov qword ptr [rbp + 3392], 6
 mov rax, qword ptr [rip + .Lx00314_0]
 mov qword ptr [rbp + 3400], rax
 jmp xchain00299_n42_α
.Lx00314_0:
 .quad 5000
# IR_FIELD_GET lv
 xchain00299_n38_α:
 mov rdi, qword ptr [rip + .Lx00315_0]
 mov rsi, qword ptr [rbp + 1840]
 mov rdx, qword ptr [rbp + 1848]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00299_n39_α
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain00299_n43_α
.Lx00315_0:
 .quad .Lx00315_0_s
.Lx00315_0_s:
 .string "key"
# IR_VAR
 xchain00299_n39_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain00299_n44_α
# IR_VAR
 xchain00299_n40_α:
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 2824], rax
 jmp xchain00299_n46_α
# IR_FIELD_GET lv
 xchain00299_n41_α:
 mov rdi, qword ptr [rip + .Lx00316_0]
 mov rsi, qword ptr [rbp + 3040]
 mov rdx, qword ptr [rbp + 3048]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00299_n32_α
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 jmp xchain00299_n47_α
.Lx00316_0:
 .quad .Lx00316_0_s
.Lx00316_0_s:
 .string "rev"
# IR_COERCE_NUMERIC
 xchain00299_n42_α:
 mov eax, dword ptr [rbp + 3328]
 cmp eax, 7
 je .Lx00317_1
 cmp eax, 6
 jne .Lx00317_0
 mov eax, dword ptr [rbp + 3392]
 cmp eax, 6
 jne .Lx00317_0
.Lx00317_1:
 mov rax, qword ptr [rbp + 3328]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 3336]
 mov qword ptr [rbp + 3304], rax
 jmp xchain00299_n48_α
.Lx00317_0:
 lea rdi, [rbp + 3328]
 lea rsi, [rbp + 3392]
 lea rdx, [rbp + 3296]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n48_α
# IR_VAR
 xchain00299_n43_α:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 2088], rax
 jmp xchain00299_n49_α
# IR_FIELD_GET lv
 xchain00299_n44_α:
 mov rdi, qword ptr [rip + .Lx00318_0]
 mov rsi, qword ptr [rbp + 1728]
 mov rdx, qword ptr [rbp + 1736]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00299_n45_α
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain00299_n50_α
.Lx00318_0:
 .quad .Lx00318_0_s
.Lx00318_0_s:
 .string "x1"
# IR_VAR
 xchain00299_n45_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain00299_n51_α
# IR_COERCE_NUMERIC
 xchain00299_n46_α:
 mov eax, dword ptr [rbp + 4528]
 cmp eax, 7
 je .Lx00319_1
 cmp eax, 6
 jne .Lx00319_0
 mov eax, dword ptr [rbp + 4496]
 cmp eax, 6
 jne .Lx00319_0
.Lx00319_1:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 2760], rax
 jmp xchain00299_n53_α
.Lx00319_0:
 lea rdi, [rbp + 4528]
 lea rsi, [rbp + 4496]
 lea rdx, [rbp + 2752]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n53_α
# KEYWORD_null
 xchain00299_n47_α:
 mov qword ptr [rbp + 3088], 0
 mov qword ptr [rbp + 3096], 0
 jmp xchain00299_n36_α
 xchain00299_n47_β:
 jmp xchain00299_n32_α
 xchain00299_n48_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3296]
 cmp eax, 100
 je .Lx00320_0
 mov eax, dword ptr [rbp + 3296]
 cmp eax, 6
 jne .Lx00320_2
.Lx00320_1:
 mov rax, qword ptr [rbp + 3304]
 mov rcx, 5000
 sub rax, rcx
 mov qword ptr [rbp + 3264], 6
 mov qword ptr [rbp + 3272], rax
 jmp xchain00299_n54_α
.Lx00320_0:
 mov rdi, qword ptr [rbp + 3296]
 mov rsi, qword ptr [rbp + 3304]
 mov rdx, qword ptr [rbp + 3392]
 mov rcx, qword ptr [rbp + 3400]
 mov r8d, 1
 lea r9, [rbp + 3264]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00299_n54_α
.Lx00320_2:
 mov rdi, qword ptr [rbp + 3296]
 mov rsi, qword ptr [rbp + 3304]
 mov rdx, qword ptr [rbp + 3392]
 mov rcx, qword ptr [rbp + 3400]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00299_n29_α
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 jmp xchain00299_n54_α
 xchain00299_n48_β:
 jmp xchain00299_n29_α
# IR_VAR
 xchain00299_n49_α:
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 2120], rax
 jmp xchain00299_n55_α
# IR_VAR
 xchain00299_n50_α:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00299_n56_α
# IR_FIELD_GET lv
 xchain00299_n51_α:
 mov rdi, qword ptr [rip + .Lx00321_0]
 mov rsi, qword ptr [rbp + 1616]
 mov rdx, qword ptr [rbp + 1624]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00299_n52_α
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain00299_n57_α
.Lx00321_0:
 .quad .Lx00321_0_s
.Lx00321_0_s:
 .string "y1"
# IR_VAR
 xchain00299_n52_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain00299_n58_α
# IR_COERCE_NUMERIC
 xchain00299_n53_α:
 mov eax, dword ptr [rbp + 4496]
 cmp eax, 7
 je .Lx00322_1
 cmp eax, 6
 jne .Lx00322_0
 mov eax, dword ptr [rbp + 4528]
 cmp eax, 6
 jne .Lx00322_0
.Lx00322_1:
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 2728], rax
 jmp xchain00299_n60_α
.Lx00322_0:
 lea rdi, [rbp + 4496]
 lea rsi, [rbp + 4528]
 lea rdx, [rbp + 2720]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n60_α
# IR_COERCE_NUMERIC
 xchain00299_n54_α:
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 7
 je .Lx00323_1
 cmp eax, 6
 jne .Lx00323_0
 mov eax, dword ptr [rbp + 3264]
 cmp eax, 6
 jne .Lx00323_0
.Lx00323_1:
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 3208], rax
 jmp xchain00299_n61_α
.Lx00323_0:
 lea rdi, [rbp + 4512]
 lea rsi, [rbp + 3264]
 lea rdx, [rbp + 3200]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n61_α
# IR_COERCE_NUMERIC
 xchain00299_n55_α:
 mov eax, dword ptr [rbp + 4528]
 cmp eax, 7
 je .Lx00324_1
 cmp eax, 6
 jne .Lx00324_0
 mov eax, dword ptr [rbp + 4496]
 cmp eax, 6
 jne .Lx00324_0
.Lx00324_1:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 2056], rax
 jmp xchain00299_n62_α
.Lx00324_0:
 lea rdi, [rbp + 4528]
 lea rsi, [rbp + 4496]
 lea rdx, [rbp + 2048]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n62_α
# IR_ASSIGN_VAR
 xchain00299_n56_α:
 mov rdi, qword ptr [rbp + 1696]
 mov rsi, qword ptr [rbp + 1704]
 mov rdx, qword ptr [rbp + 1776]
 mov rcx, qword ptr [rbp + 1784]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00299_n45_α
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain00299_n45_α
# IR_VAR
 xchain00299_n57_α:
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 1672], rax
 jmp xchain00299_n63_α
# IR_FIELD_GET lv
 xchain00299_n58_α:
 mov rdi, qword ptr [rip + .Lx00325_0]
 mov rsi, qword ptr [rbp + 1504]
 mov rdx, qword ptr [rbp + 1512]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00299_n59_α
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain00299_n64_α
.Lx00325_0:
 .quad .Lx00325_0_s
.Lx00325_0_s:
 .string "x2"
# IR_VAR
 xchain00299_n59_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain00299_n65_α
 xchain00299_n60_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2752]
 cmp eax, 100
 je .Lx00326_0
 mov eax, dword ptr [rbp + 2720]
 cmp eax, 100
 je .Lx00326_0
 mov eax, dword ptr [rbp + 2752]
 cmp eax, 6
 jne .Lx00326_2
 mov eax, dword ptr [rbp + 2720]
 cmp eax, 6
 jne .Lx00326_2
.Lx00326_1:
 mov rax, qword ptr [rbp + 2760]
 mov rcx, qword ptr [rbp + 2728]
 add rax, rcx
 mov qword ptr [rbp + 2688], 6
 mov qword ptr [rbp + 2696], rax
 jmp xchain00299_n67_α
.Lx00326_0:
 mov rdi, qword ptr [rbp + 2752]
 mov rsi, qword ptr [rbp + 2760]
 mov rdx, qword ptr [rbp + 2720]
 mov rcx, qword ptr [rbp + 2728]
 mov r8d, 0
 lea r9, [rbp + 2688]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00299_n67_α
.Lx00326_2:
 mov rdi, qword ptr [rbp + 2752]
 mov rsi, qword ptr [rbp + 2760]
 mov rdx, qword ptr [rbp + 2720]
 mov rcx, qword ptr [rbp + 2728]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00299_n29_af
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 jmp xchain00299_n67_α
 xchain00299_n60_β:
 jmp xchain00299_n29_af
# IR_COERCE_NUMERIC
 xchain00299_n61_α:
 mov eax, dword ptr [rbp + 3264]
 cmp eax, 7
 je .Lx00327_1
 cmp eax, 6
 jne .Lx00327_0
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 6
 jne .Lx00327_0
.Lx00327_1:
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 3176], rax
 jmp xchain00299_n68_α
.Lx00327_0:
 lea rdi, [rbp + 3264]
 lea rsi, [rbp + 4512]
 lea rdx, [rbp + 3168]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n68_α
# IR_COERCE_NUMERIC
 xchain00299_n62_α:
 mov eax, dword ptr [rbp + 4496]
 cmp eax, 7
 je .Lx00328_1
 cmp eax, 6
 jne .Lx00328_0
 mov eax, dword ptr [rbp + 4528]
 cmp eax, 6
 jne .Lx00328_0
.Lx00328_1:
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 2024], rax
 jmp xchain00299_n69_α
.Lx00328_0:
 lea rdi, [rbp + 4496]
 lea rsi, [rbp + 4528]
 lea rdx, [rbp + 2016]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n69_α
# IR_ASSIGN_VAR
 xchain00299_n63_α:
 mov rdi, qword ptr [rbp + 1584]
 mov rsi, qword ptr [rbp + 1592]
 mov rdx, qword ptr [rbp + 1664]
 mov rcx, qword ptr [rbp + 1672]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00299_n52_α
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain00299_n52_α
# IR_VAR
 xchain00299_n64_α:
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 1560], rax
 jmp xchain00299_n70_α
# IR_FIELD_GET lv
 xchain00299_n65_α:
 mov rdi, qword ptr [rip + .Lx00329_0]
 mov rsi, qword ptr [rbp + 1392]
 mov rdx, qword ptr [rbp + 1400]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00299_n66_α
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain00299_n71_α
.Lx00329_0:
 .quad .Lx00329_0_s
.Lx00329_0_s:
 .string "y2"
# IR_VAR
 xchain00299_n66_α:
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00299_n72_α
# IR_VAR
 xchain00299_n67_α:
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 2944], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 2952], rax
 jmp xchain00299_n74_α
 xchain00299_n68_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3200]
 cmp eax, 100
 je .Lx00330_0
 mov eax, dword ptr [rbp + 3168]
 cmp eax, 100
 je .Lx00330_0
 mov eax, dword ptr [rbp + 3200]
 cmp eax, 6
 jne .Lx00330_2
 mov eax, dword ptr [rbp + 3168]
 cmp eax, 6
 jne .Lx00330_2
.Lx00330_1:
 mov rax, qword ptr [rbp + 3208]
 mov rcx, qword ptr [rbp + 3176]
 add rax, rcx
 mov qword ptr [rbp + 3136], 6
 mov qword ptr [rbp + 3144], rax
 jmp xchain00299_n75_α
.Lx00330_0:
 mov rdi, qword ptr [rbp + 3200]
 mov rsi, qword ptr [rbp + 3208]
 mov rdx, qword ptr [rbp + 3168]
 mov rcx, qword ptr [rbp + 3176]
 mov r8d, 0
 lea r9, [rbp + 3136]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00299_n75_α
.Lx00330_2:
 mov rdi, qword ptr [rbp + 3200]
 mov rsi, qword ptr [rbp + 3208]
 mov rdx, qword ptr [rbp + 3168]
 mov rcx, qword ptr [rbp + 3176]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00299_n29_α
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 jmp xchain00299_n75_α
 xchain00299_n68_β:
 jmp xchain00299_n29_α
 xchain00299_n69_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2048]
 cmp eax, 100
 je .Lx00331_0
 mov eax, dword ptr [rbp + 2016]
 cmp eax, 100
 je .Lx00331_0
 mov eax, dword ptr [rbp + 2048]
 cmp eax, 6
 jne .Lx00331_2
 mov eax, dword ptr [rbp + 2016]
 cmp eax, 6
 jne .Lx00331_2
.Lx00331_1:
 mov rax, qword ptr [rbp + 2056]
 mov rcx, qword ptr [rbp + 2024]
 add rax, rcx
 mov qword ptr [rbp + 1984], 6
 mov qword ptr [rbp + 1992], rax
 jmp xchain00299_n76_α
.Lx00331_0:
 mov rdi, qword ptr [rbp + 2048]
 mov rsi, qword ptr [rbp + 2056]
 mov rdx, qword ptr [rbp + 2016]
 mov rcx, qword ptr [rbp + 2024]
 mov r8d, 0
 lea r9, [rbp + 1984]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00299_n76_α
.Lx00331_2:
 mov rdi, qword ptr [rbp + 2048]
 mov rsi, qword ptr [rbp + 2056]
 mov rdx, qword ptr [rbp + 2016]
 mov rcx, qword ptr [rbp + 2024]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00299_n39_α
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 jmp xchain00299_n76_α
 xchain00299_n69_β:
 jmp xchain00299_n39_α
# IR_ASSIGN_VAR
 xchain00299_n70_α:
 mov rdi, qword ptr [rbp + 1472]
 mov rsi, qword ptr [rbp + 1480]
 mov rdx, qword ptr [rbp + 1552]
 mov rcx, qword ptr [rbp + 1560]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00299_n59_α
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain00299_n59_α
# IR_VAR
 xchain00299_n71_α:
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 1448], rax
 jmp xchain00299_n77_α
# IR_VAR
 xchain00299_n72_α:
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00299_n78_α
# IR_VAR
 xchain00299_n73_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00299_n79_α
# IR_VAR
 xchain00299_n74_α:
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 2984], rax
 jmp xchain00299_n81_α
 xchain00299_n75_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3136]
 mov rdx, qword ptr [rbp + 3144]
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain00299_n82_α
# IR_LIT_INTEGER
 xchain00299_n76_α:
 mov qword ptr [rbp + 2144], 6
 mov rax, qword ptr [rip + .Lx00332_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain00299_n83_α
.Lx00332_0:
 .quad 8
# IR_ASSIGN_VAR
 xchain00299_n77_α:
 mov rdi, qword ptr [rbp + 1360]
 mov rsi, qword ptr [rbp + 1368]
 mov rdx, qword ptr [rbp + 1440]
 mov rcx, qword ptr [rbp + 1448]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00299_n66_α
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain00299_n66_α
# IR_COERCE_NUMERIC
 xchain00299_n78_α:
 mov eax, dword ptr [rbp + 4480]
 cmp eax, 7
 je .Lx00333_1
 cmp eax, 6
 jne .Lx00333_0
 mov eax, dword ptr [rbp + 4496]
 cmp eax, 6
 jne .Lx00333_0
.Lx00333_1:
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 984], rax
 jmp xchain00299_n84_α
.Lx00333_0:
 lea rdi, [rbp + 4480]
 lea rsi, [rbp + 4496]
 lea rdx, [rbp + 976]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n84_α
# IR_FIELD_GET lv
 xchain00299_n79_α:
 mov rdi, qword ptr [rip + .Lx00334_0]
 mov rsi, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00299_n80_α
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00299_n85_α
.Lx00334_0:
 .quad .Lx00334_0_s
.Lx00334_0_s:
 .string "aindex"
# IR_GEN_SCAN
 xchain00299_n80_α:
 lea rdi, [rbp + 80]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 80]
 mov r14, qword ptr [rbp + 88]
 mov r15, qword ptr [rbp + 96]
 jmp xchain00299_n5_α
 xchain00299_n80_β:
 jmp xchain00299_n5_α
# IR_COERCE_NUMERIC
 xchain00299_n81_α:
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 7
 je .Lx00335_1
 cmp eax, 6
 jne .Lx00335_0
 mov eax, dword ptr [rbp + 4480]
 cmp eax, 6
 jne .Lx00335_0
.Lx00335_1:
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 2920], rax
 jmp xchain00299_n86_α
.Lx00335_0:
 lea rdi, [rbp + 4512]
 lea rsi, [rbp + 4480]
 lea rdx, [rbp + 2912]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n86_α
# IR_VAR
 xchain00299_n82_α:
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 3536], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 3544], rax
 jmp xchain00299_n87_α
 xchain00299_n83_α:
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
  .Lrkfn1135: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1135]
 lea rsi, [rbp + 1936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 cmp eax, 99
 je xchain00299_n39_α
 jmp xchain00299_n88_α
 xchain00299_n83_β:
 jmp xchain00299_n39_α
# IR_COERCE_NUMERIC
 xchain00299_n84_α:
 mov eax, dword ptr [rbp + 4496]
 cmp eax, 7
 je .Lx00336_1
 cmp eax, 6
 jne .Lx00336_0
 mov eax, dword ptr [rbp + 4480]
 cmp eax, 6
 jne .Lx00336_0
.Lx00336_1:
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 952], rax
 jmp xchain00299_n89_α
.Lx00336_0:
 lea rdi, [rbp + 4496]
 lea rsi, [rbp + 4480]
 lea rdx, [rbp + 944]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n89_α
# IR_LIT_INTEGER
 xchain00299_n85_α:
 mov qword ptr [rbp + 304], 6
 mov rax, qword ptr [rip + .Lx00337_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00299_n90_α
.Lx00337_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00299_n86_α:
 mov eax, dword ptr [rbp + 4480]
 cmp eax, 7
 je .Lx00338_1
 cmp eax, 6
 jne .Lx00338_0
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 6
 jne .Lx00338_0
.Lx00338_1:
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 2888], rax
 jmp xchain00299_n91_α
.Lx00338_0:
 lea rdi, [rbp + 4480]
 lea rsi, [rbp + 4512]
 lea rdx, [rbp + 2880]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n91_α
# IR_LIT_INTEGER
 xchain00299_n87_α:
 mov qword ptr [rbp + 3664], 6
 mov rax, qword ptr [rip + .Lx00339_0]
 mov qword ptr [rbp + 3672], rax
 jmp xchain00299_n92_α
.Lx00339_0:
 .quad 4
# IR_VAR
 xchain00299_n88_α:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 2248], rax
 jmp xchain00299_n93_α
 xchain00299_n89_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 976]
 cmp eax, 100
 je .Lx00340_0
 mov eax, dword ptr [rbp + 944]
 cmp eax, 100
 je .Lx00340_0
 mov eax, dword ptr [rbp + 976]
 cmp eax, 6
 jne .Lx00340_2
 mov eax, dword ptr [rbp + 944]
 cmp eax, 6
 jne .Lx00340_2
.Lx00340_1:
 mov rax, qword ptr [rbp + 984]
 mov rcx, qword ptr [rbp + 952]
 sub rax, rcx
 mov qword ptr [rbp + 912], 6
 mov qword ptr [rbp + 920], rax
 jmp xchain00299_n94_α
.Lx00340_0:
 mov rdi, qword ptr [rbp + 976]
 mov rsi, qword ptr [rbp + 984]
 mov rdx, qword ptr [rbp + 944]
 mov rcx, qword ptr [rbp + 952]
 mov r8d, 1
 lea r9, [rbp + 912]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00299_n94_α
.Lx00340_2:
 mov rdi, qword ptr [rbp + 976]
 mov rsi, qword ptr [rbp + 984]
 mov rdx, qword ptr [rbp + 944]
 mov rcx, qword ptr [rbp + 952]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00299_n73_α
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain00299_n94_α
 xchain00299_n89_β:
 jmp xchain00299_n73_α
# IR_LIT_INTEGER
 xchain00299_n90_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00341_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00299_n95_α
.Lx00341_0:
 .quad 5
 xchain00299_n91_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2912]
 cmp eax, 100
 je .Lx00342_0
 mov eax, dword ptr [rbp + 2880]
 cmp eax, 100
 je .Lx00342_0
 mov eax, dword ptr [rbp + 2912]
 cmp eax, 6
 jne .Lx00342_2
 mov eax, dword ptr [rbp + 2880]
 cmp eax, 6
 jne .Lx00342_2
.Lx00342_1:
 mov rax, qword ptr [rbp + 2920]
 mov rcx, qword ptr [rbp + 2888]
 add rax, rcx
 mov qword ptr [rbp + 2848], 6
 mov qword ptr [rbp + 2856], rax
 jmp xchain00299_n96_α
.Lx00342_0:
 mov rdi, qword ptr [rbp + 2912]
 mov rsi, qword ptr [rbp + 2920]
 mov rdx, qword ptr [rbp + 2880]
 mov rcx, qword ptr [rbp + 2888]
 mov r8d, 0
 lea r9, [rbp + 2848]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00299_n96_α
.Lx00342_2:
 mov rdi, qword ptr [rbp + 2912]
 mov rsi, qword ptr [rbp + 2920]
 mov rdx, qword ptr [rbp + 2880]
 mov rcx, qword ptr [rbp + 2888]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00299_n29_af
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 jmp xchain00299_n96_α
 xchain00299_n91_β:
 jmp xchain00299_n29_af
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00299_n92_α:
 sub rsp, 16
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00343_239
 add rsp, 16
 jmp xchain00299_n26_α
.Lx00343_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00343_240
 add rsp, 16
 jmp xchain00299_n26_α
.Lx00343_240:
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
 jmp xchain00299_n97_α
 xchain00299_n92_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00299_n26_α
# IR_LIT_INTEGER
 xchain00299_n93_α:
 mov qword ptr [rbp + 2272], 6
 mov rax, qword ptr [rip + .Lx00344_0]
 mov qword ptr [rbp + 2280], rax
 jmp xchain00299_n98_α
.Lx00344_0:
 .quad 7
# IR_VAR
 xchain00299_n94_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain00299_n99_α
# IR_VAR
 xchain00299_n95_α:
 mov rax, qword ptr [rbp + 4464]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 4472]
 mov qword ptr [rbp + 712], rax
 jmp xchain00299_n00074_α
 xchain00299_n96_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 2688]
 cmp eax, 100
 je .Lx00345_0
 mov eax, dword ptr [rbp + 2848]
 cmp eax, 100
 je .Lx00345_0
 mov eax, dword ptr [rbp + 2688]
 cmp eax, 6
 jne .Lx00345_2
 mov eax, dword ptr [rbp + 2848]
 cmp eax, 6
 jne .Lx00345_2
.Lx00345_1:
 mov rax, qword ptr [rbp + 2696]
 mov rcx, qword ptr [rbp + 2856]
 cmp rax, rcx
 jle xchain00299_n29_af
 mov rcx, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 2656], rcx
 mov rcx, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 2664], rcx
 jmp xchain00299_n00076_α
.Lx00345_0:
 mov rdi, qword ptr [rbp + 2688]
 mov rsi, qword ptr [rbp + 2696]
 mov rdx, qword ptr [rbp + 2848]
 mov rcx, qword ptr [rbp + 2856]
 mov r8d, 7
 lea r9, [rbp + 2656]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00345_1
 cmp eax, 1
 je xchain00299_n29_af
 jmp xchain00299_n00076_α
.Lx00345_2:
 mov rdi, qword ptr [rbp + 2688]
 mov rsi, qword ptr [rbp + 2696]
 mov rdx, qword ptr [rbp + 2848]
 mov rcx, qword ptr [rbp + 2856]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00299_n29_af
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 2664], rax
 jmp xchain00299_n00076_α
# IR_LIT_INTEGER
 xchain00299_n97_α:
 mov qword ptr [rbp + 3696], 6
 mov rax, qword ptr [rip + .Lx00346_0]
 mov qword ptr [rbp + 3704], rax
 jmp xchain00299_n00078_α
.Lx00346_0:
 .quad 5000
 xchain00299_n98_α:
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
  .Lrkfn1156: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1156]
 lea rsi, [rbp + 2192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je xchain00299_n39_α
 jmp xchain00299_n00079_α
 xchain00299_n98_β:
 jmp xchain00299_n39_α
# IR_VAR
 xchain00299_n99_α:
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 1304], rax
 jmp xchain00299_n00001_α
# KEYWORD_read
 xchain00299_n00074_α:
 mov rdi, qword ptr [rip + .Lx00347_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00299_n80_α
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00299_n00091_α
 xchain00299_n00074_β:
 jmp xchain00299_n80_α
.Lx00347_0:
 .quad .Lx00347_0_s
.Lx00347_0_s:
 .string "&pi"
# IR_VAR
 xchain00299_n00076_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 jmp xchain00299_n00080_α
# IR_COERCE_NUMERIC
 xchain00299_n00078_α:
 mov eax, dword ptr [rbp + 3632]
 cmp eax, 7
 je .Lx00348_1
 cmp eax, 6
 jne .Lx00348_0
 mov eax, dword ptr [rbp + 3696]
 cmp eax, 6
 jne .Lx00348_0
.Lx00348_1:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3608], rax
 jmp xchain00299_n00098_α
.Lx00348_0:
 lea rdi, [rbp + 3632]
 lea rsi, [rbp + 3696]
 lea rdx, [rbp + 3600]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n00098_α
 xchain00299_n00079_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1920]
 mov rsi, qword ptr [rbp + 1928]
 mov rdx, qword ptr [rbp + 2176]
 mov rcx, qword ptr [rbp + 2184]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain00299_n00082_α
# IR_VAR
 xchain00299_n00001_α:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 1336], rax
 jmp xchain00299_n00002_α
# IR_COERCE_NUMERIC
 xchain00299_n00091_α:
 mov eax, dword ptr [rbp + 4464]
 cmp eax, 7
 je .Lx00349_1
 cmp eax, 6
 jne .Lx00349_0
 mov eax, dword ptr [rbp + 736]
 cmp eax, 6
 jne .Lx00349_0
.Lx00349_1:
 mov rax, qword ptr [rbp + 4464]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 4472]
 mov qword ptr [rbp + 680], rax
 jmp xchain00299_n00084_α
.Lx00349_0:
 lea rdi, [rbp + 4464]
 lea rsi, [rbp + 736]
 lea rdx, [rbp + 672]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n00084_α
# IR_FIELD_GET lv
 xchain00299_n00080_α:
 mov rdi, qword ptr [rip + .Lx00350_0]
 mov rsi, qword ptr [rbp + 2576]
 mov rdx, qword ptr [rbp + 2584]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00299_n00081_α
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 jmp xchain00299_n00086_α
.Lx00350_0:
 .quad .Lx00350_0_s
.Lx00350_0_s:
 .string "rev"
 xchain00299_n00081_α:
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
 jmp xchain00299_n00088_α
 xchain00299_n00098_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3600]
 cmp eax, 100
 je .Lx00351_0
 mov eax, dword ptr [rbp + 3600]
 cmp eax, 6
 jne .Lx00351_2
.Lx00351_1:
 mov rax, qword ptr [rbp + 3608]
 mov rcx, 5000
 sub rax, rcx
 mov qword ptr [rbp + 3568], 6
 mov qword ptr [rbp + 3576], rax
 jmp xchain00299_n00090_α
.Lx00351_0:
 mov rdi, qword ptr [rbp + 3600]
 mov rsi, qword ptr [rbp + 3608]
 mov rdx, qword ptr [rbp + 3696]
 mov rcx, qword ptr [rbp + 3704]
 mov r8d, 1
 lea r9, [rbp + 3568]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00299_n00090_α
.Lx00351_2:
 mov rdi, qword ptr [rbp + 3600]
 mov rsi, qword ptr [rbp + 3608]
 mov rdx, qword ptr [rbp + 3696]
 mov rcx, qword ptr [rbp + 3704]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00299_n26_α
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 jmp xchain00299_n00090_α
 xchain00299_n00098_β:
 jmp xchain00299_n26_α
# IR_ASSIGN_VAR
 xchain00299_n00082_α:
 mov rdi, qword ptr [rbp + 1808]
 mov rsi, qword ptr [rbp + 1816]
 mov rdx, qword ptr [rbp + 1888]
 mov rcx, qword ptr [rbp + 1896]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00299_n39_α
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain00299_n39_α
# IR_COERCE_NUMERIC
 xchain00299_n00002_α:
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 7
 je .Lx00352_1
 cmp eax, 6
 jne .Lx00352_0
 mov eax, dword ptr [rbp + 4528]
 cmp eax, 6
 jne .Lx00352_0
.Lx00352_1:
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 1272], rax
 jmp xchain00299_n00092_α
.Lx00352_0:
 lea rdi, [rbp + 4512]
 lea rsi, [rbp + 4528]
 lea rdx, [rbp + 1264]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n00092_α
# IR_COERCE_NUMERIC
 xchain00299_n00084_α:
 mov eax, dword ptr [rbp + 736]
 cmp eax, 7
 je .Lx00353_1
 cmp eax, 6
 jne .Lx00353_0
 mov eax, dword ptr [rbp + 4464]
 cmp eax, 6
 jne .Lx00353_0
.Lx00353_1:
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 648], rax
 jmp xchain00299_n00003_α
.Lx00353_0:
 lea rdi, [rbp + 736]
 lea rsi, [rbp + 4464]
 lea rdx, [rbp + 640]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n00003_α
# IR_LIT_INTEGER
 xchain00299_n00086_α:
 mov qword ptr [rbp + 2624], 6
 mov rax, qword ptr [rip + .Lx00354_0]
 mov qword ptr [rbp + 2632], rax
 jmp xchain00299_n00093_α
.Lx00354_0:
 .quad 1
 xchain00299_n00088_α:
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
 jmp xchain00299_n35_α
# IR_COERCE_NUMERIC
 xchain00299_n00090_α:
 mov eax, dword ptr [rbp + 4480]
 cmp eax, 7
 je .Lx00355_1
 cmp eax, 6
 jne .Lx00355_0
 mov eax, dword ptr [rbp + 3568]
 cmp eax, 6
 jne .Lx00355_0
.Lx00355_1:
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 3504], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 3512], rax
 jmp xchain00299_n00109_α
.Lx00355_0:
 lea rdi, [rbp + 4480]
 lea rsi, [rbp + 3568]
 lea rdx, [rbp + 3504]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n00109_α
# IR_COERCE_NUMERIC
 xchain00299_n00092_α:
 mov eax, dword ptr [rbp + 4528]
 cmp eax, 7
 je .Lx00356_1
 cmp eax, 6
 jne .Lx00356_0
 mov eax, dword ptr [rbp + 4512]
 cmp eax, 6
 jne .Lx00356_0
.Lx00356_1:
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 1240], rax
 jmp xchain00299_n00096_α
.Lx00356_0:
 lea rdi, [rbp + 4528]
 lea rsi, [rbp + 4512]
 lea rdx, [rbp + 1232]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n00096_α
 xchain00299_n00003_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 672]
 cmp eax, 100
 je .Lx00357_0
 mov eax, dword ptr [rbp + 640]
 cmp eax, 100
 je .Lx00357_0
 mov eax, dword ptr [rbp + 672]
 cmp eax, 6
 jne .Lx00357_2
 mov eax, dword ptr [rbp + 640]
 cmp eax, 6
 jne .Lx00357_2
.Lx00357_1:
 mov rax, qword ptr [rbp + 680]
 mov rcx, qword ptr [rbp + 648]
 cqo
 idiv rcx
 mov qword ptr [rbp + 608], 6
 mov qword ptr [rbp + 616], rax
 jmp xchain00299_n00097_α
.Lx00357_0:
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 mov r8d, 3
 lea r9, [rbp + 608]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00299_n00097_α
.Lx00357_2:
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00299_n80_α
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00299_n00097_α
 xchain00299_n00003_β:
 jmp xchain00299_n80_α
# IR_ASSIGN_VAR
 xchain00299_n00093_α:
 mov rdi, qword ptr [rbp + 2544]
 mov rsi, qword ptr [rbp + 2552]
 mov rdx, qword ptr [rbp + 2624]
 mov rcx, qword ptr [rbp + 2632]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00299_n00081_α
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 jmp xchain00299_n00081_α
# IR_COERCE_NUMERIC
 xchain00299_n00109_α:
 mov eax, dword ptr [rbp + 3568]
 cmp eax, 7
 je .Lx00358_1
 cmp eax, 6
 jne .Lx00358_0
 mov eax, dword ptr [rbp + 4480]
 cmp eax, 6
 jne .Lx00358_0
.Lx00358_1:
 mov rax, qword ptr [rbp + 3568]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 3576]
 mov qword ptr [rbp + 3480], rax
 jmp xchain00299_n00099_α
.Lx00358_0:
 lea rdi, [rbp + 3568]
 lea rsi, [rbp + 4480]
 lea rdx, [rbp + 3472]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n00099_α
 xchain00299_n00096_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 100
 je .Lx00359_0
 mov eax, dword ptr [rbp + 1232]
 cmp eax, 100
 je .Lx00359_0
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 6
 jne .Lx00359_2
 mov eax, dword ptr [rbp + 1232]
 cmp eax, 6
 jne .Lx00359_2
.Lx00359_1:
 mov rax, qword ptr [rbp + 1272]
 mov rcx, qword ptr [rbp + 1240]
 sub rax, rcx
 mov qword ptr [rbp + 1200], 6
 mov qword ptr [rbp + 1208], rax
 jmp xchain00299_n00100_α
.Lx00359_0:
 mov rdi, qword ptr [rbp + 1264]
 mov rsi, qword ptr [rbp + 1272]
 mov rdx, qword ptr [rbp + 1232]
 mov rcx, qword ptr [rbp + 1240]
 mov r8d, 1
 lea r9, [rbp + 1200]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00299_n00100_α
.Lx00359_2:
 mov rdi, qword ptr [rbp + 1264]
 mov rsi, qword ptr [rbp + 1272]
 mov rdx, qword ptr [rbp + 1232]
 mov rcx, qword ptr [rbp + 1240]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00299_n73_α
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain00299_n00100_α
 xchain00299_n00096_β:
 jmp xchain00299_n73_α
# IR_LIT_REAL
 xchain00299_n00097_α:
 mov qword ptr [rbp + 768], 7
 mov rax, qword ptr [rip + .Lx00360_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00299_n00004_α
.Lx00360_0:
 .quad 4612248968380809216
 xchain00299_n00099_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3504]
 cmp eax, 100
 je .Lx00361_0
 mov eax, dword ptr [rbp + 3472]
 cmp eax, 100
 je .Lx00361_0
 mov eax, dword ptr [rbp + 3504]
 cmp eax, 6
 jne .Lx00361_2
 mov eax, dword ptr [rbp + 3472]
 cmp eax, 6
 jne .Lx00361_2
.Lx00361_1:
 mov rax, qword ptr [rbp + 3512]
 mov rcx, qword ptr [rbp + 3480]
 add rax, rcx
 mov qword ptr [rbp + 3440], 6
 mov qword ptr [rbp + 3448], rax
 jmp xchain00299_n00102_α
.Lx00361_0:
 mov rdi, qword ptr [rbp + 3504]
 mov rsi, qword ptr [rbp + 3512]
 mov rdx, qword ptr [rbp + 3472]
 mov rcx, qword ptr [rbp + 3480]
 mov r8d, 0
 lea r9, [rbp + 3440]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00299_n00102_α
.Lx00361_2:
 mov rdi, qword ptr [rbp + 3504]
 mov rsi, qword ptr [rbp + 3512]
 mov rdx, qword ptr [rbp + 3472]
 mov rcx, qword ptr [rbp + 3480]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00299_n26_α
 mov qword ptr [rbp + 3440], rax
 mov qword ptr [rbp + 3448], rdx
 jmp xchain00299_n00102_α
 xchain00299_n00099_β:
 jmp xchain00299_n26_α
# IR_COERCE_NUMERIC
 xchain00299_n00100_α:
 mov eax, dword ptr [rbp + 1168]
 cmp eax, 7
 je .Lx00362_1
 cmp eax, 6
 jne .Lx00362_0
 mov eax, dword ptr [rbp + 1200]
 cmp eax, 6
 jne .Lx00362_0
.Lx00362_1:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1144], rax
 jmp xchain00299_n00104_α
.Lx00362_0:
 lea rdi, [rbp + 1168]
 lea rsi, [rbp + 1200]
 lea rdx, [rbp + 1136]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n00104_α
# IR_COERCE_NUMERIC
 xchain00299_n00004_α:
 mov eax, dword ptr [rbp + 608]
 cmp eax, 7
 je .Lx00363_1
 cmp eax, 6
 jne .Lx00363_0
 mov eax, dword ptr [rbp + 768]
 cmp eax, 6
 jne .Lx00363_0
.Lx00363_1:
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 584], rax
 jmp xchain00299_n00105_α
.Lx00363_0:
 lea rdi, [rbp + 608]
 lea rsi, [rbp + 768]
 lea rdx, [rbp + 576]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n00105_α
 xchain00299_n00102_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3440]
 mov rdx, qword ptr [rbp + 3448]
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain00299_n26_α
# IR_COERCE_NUMERIC
 xchain00299_n00104_α:
 mov eax, dword ptr [rbp + 1200]
 cmp eax, 7
 je .Lx00364_1
 cmp eax, 6
 jne .Lx00364_0
 mov eax, dword ptr [rbp + 1168]
 cmp eax, 6
 jne .Lx00364_0
.Lx00364_1:
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00299_n00106_α
.Lx00364_0:
 lea rdi, [rbp + 1200]
 lea rsi, [rbp + 1168]
 lea rdx, [rbp + 1104]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n00106_α
 xchain00299_n00105_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 768]
 mov rcx, qword ptr [rbp + 776]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00299_n80_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00299_n00107_α
 xchain00299_n00106_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 100
 je .Lx00365_0
 mov eax, dword ptr [rbp + 1104]
 cmp eax, 100
 je .Lx00365_0
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 6
 jne .Lx00365_2
 mov eax, dword ptr [rbp + 1104]
 cmp eax, 6
 jne .Lx00365_2
.Lx00365_1:
 mov rax, qword ptr [rbp + 1144]
 mov rcx, qword ptr [rbp + 1112]
 imul rax, rcx
 mov qword ptr [rbp + 1072], 6
 mov qword ptr [rbp + 1080], rax
 jmp xchain00299_n00108_α
.Lx00365_0:
 mov rdi, qword ptr [rbp + 1136]
 mov rsi, qword ptr [rbp + 1144]
 mov rdx, qword ptr [rbp + 1104]
 mov rcx, qword ptr [rbp + 1112]
 mov r8d, 2
 lea r9, [rbp + 1072]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00299_n00108_α
.Lx00365_2:
 mov rdi, qword ptr [rbp + 1136]
 mov rsi, qword ptr [rbp + 1144]
 mov rdx, qword ptr [rbp + 1104]
 mov rcx, qword ptr [rbp + 1112]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00299_n73_α
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain00299_n00108_α
 xchain00299_n00106_β:
 jmp xchain00299_n73_α
# IR_COERCE_NUMERIC
 xchain00299_n00107_α:
 mov eax, dword ptr [rbp + 544]
 cmp eax, 7
 je .Lx00366_1
 cmp eax, 6
 jne .Lx00366_0
 mov eax, dword ptr [rbp + 512]
 cmp eax, 6
 jne .Lx00366_0
.Lx00366_1:
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 488], rax
 jmp xchain00299_n00111_α
.Lx00366_0:
 lea rdi, [rbp + 544]
 lea rsi, [rbp + 512]
 lea rdx, [rbp + 480]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n00111_α
 xchain00299_n00108_α:
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
  .Lrkfn1201: .string "atan"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1201]
 lea rsi, [rbp + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain00299_n73_α
 jmp xchain00299_n00113_α
 xchain00299_n00108_β:
 jmp xchain00299_n73_α
 xchain00299_n00111_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 480]
 cmp eax, 100
 je .Lx00367_0
 mov eax, dword ptr [rbp + 480]
 cmp eax, 6
 jne .Lx00367_2
.Lx00367_1:
 mov rax, 5
 mov rcx, qword ptr [rbp + 488]
 imul rax, rcx
 mov qword ptr [rbp + 448], 6
 mov qword ptr [rbp + 456], rax
 jmp xchain00299_n00114_α
.Lx00367_0:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 mov r8d, 2
 lea r9, [rbp + 448]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00299_n00114_α
.Lx00367_2:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00299_n80_α
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00299_n00114_α
 xchain00299_n00111_β:
 jmp xchain00299_n80_α
 xchain00299_n00113_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00299_n73_α
 xchain00299_n00114_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
  .section .rodata
  .Lrkfn1205: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1205]
 lea rsi, [rbp + 416]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain00299_n80_α
 jmp xchain00299_n00116_α
 xchain00299_n00114_β:
 jmp xchain00299_n80_α
# IR_LIT_INTEGER
 xchain00299_n00116_α:
 mov qword ptr [rbp + 800], 6
 mov rax, qword ptr [rip + .Lx00368_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain00299_n00117_α
.Lx00368_0:
 .quad 5
# IR_COERCE_NUMERIC
 xchain00299_n00117_α:
 mov eax, dword ptr [rbp + 400]
 cmp eax, 7
 je .Lx00369_1
 cmp eax, 6
 jne .Lx00369_0
 mov eax, dword ptr [rbp + 800]
 cmp eax, 6
 jne .Lx00369_0
.Lx00369_1:
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 jmp xchain00299_n00118_α
.Lx00369_0:
 lea rdi, [rbp + 400]
 lea rsi, [rbp + 800]
 lea rdx, [rbp + 368]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n00118_α
 xchain00299_n00118_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 368]
 cmp eax, 100
 je .Lx00370_0
 mov eax, dword ptr [rbp + 368]
 cmp eax, 6
 jne .Lx00370_2
.Lx00370_1:
 mov rax, qword ptr [rbp + 376]
 mov rcx, 5
 cqo
 idiv rcx
 mov rax, rdx
 mov qword ptr [rbp + 336], 6
 mov qword ptr [rbp + 344], rax
 jmp xchain00299_n00119_α
.Lx00370_0:
 mov rdi, qword ptr [rbp + 368]
 mov rsi, qword ptr [rbp + 376]
 mov rdx, qword ptr [rbp + 800]
 mov rcx, qword ptr [rbp + 808]
 mov r8d, 4
 lea r9, [rbp + 336]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00299_n00119_α
.Lx00370_2:
 mov rdi, qword ptr [rbp + 368]
 mov rsi, qword ptr [rbp + 376]
 mov rdx, qword ptr [rbp + 800]
 mov rcx, qword ptr [rbp + 808]
 mov r8d, 4
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00299_n80_α
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00299_n00119_α
 xchain00299_n00118_β:
 jmp xchain00299_n80_α
# IR_COERCE_NUMERIC
 xchain00299_n00119_α:
 mov eax, dword ptr [rbp + 336]
 cmp eax, 7
 je .Lx00371_1
 cmp eax, 6
 jne .Lx00371_0
 mov eax, dword ptr [rbp + 304]
 cmp eax, 6
 jne .Lx00371_0
.Lx00371_1:
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 280], rax
 jmp xchain00299_n00120_α
.Lx00371_0:
 lea rdi, [rbp + 336]
 lea rsi, [rbp + 304]
 lea rdx, [rbp + 272]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00299_n00120_α
 xchain00299_n00120_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 272]
 cmp eax, 100
 je .Lx00372_0
 mov eax, dword ptr [rbp + 272]
 cmp eax, 6
 jne .Lx00372_2
.Lx00372_1:
 mov rax, 1
 mov rcx, qword ptr [rbp + 280]
 add rax, rcx
 mov qword ptr [rbp + 240], 6
 mov qword ptr [rbp + 248], rax
 jmp xchain00299_n00122_α
.Lx00372_0:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 272]
 mov rcx, qword ptr [rbp + 280]
 mov r8d, 0
 lea r9, [rbp + 240]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00299_n00122_α
.Lx00372_2:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 272]
 mov rcx, qword ptr [rbp + 280]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00299_n80_α
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00299_n00122_α
 xchain00299_n00120_β:
 jmp xchain00299_n80_α
# IR_ASSIGN_VAR
 xchain00299_n00122_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00299_n80_α
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00299_n00124_α
 xchain00299_n00124_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 152], rax
 jmp xchain00299_n00125_α
xchain00299_n00124_β:
 jmp xchain00299_n80_α
# IR_GEN_SCAN
 xchain00299_n00125_α:
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 120], rax
 lea rdi, [rbp + 80]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 80]
 mov r14, qword ptr [rbp + 88]
 mov r15, qword ptr [rbp + 96]
 jmp xchain00299_n5_α
 xchain00299_n00125_β:
 jmp xchain00299_n5_α
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
 xchain00373_n0_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain00373_n1_α
# IR_NULLTEST_VAR
 xchain00373_n1_α:
 mov eax, dword ptr [rbp + 3424]
 cmp eax, 99
 je xchain00373_n3_α
 mov rdi, qword ptr [rbp + 3424]
 mov rsi, qword ptr [rbp + 3432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00373_n3_α
 cmp eax, 0
 jne xchain00373_n3_α
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3464], rax
 jmp xchain00373_n2_α
# IR_LIT_CHARSET
 xchain00373_n2_α:
 mov qword ptr [rbp + 3552], 1
 mov dword ptr [rbp + 3556], -1
 mov rax, qword ptr [rip + .Lx00374_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain00373_n4_α
.Lx00374_0:
 .quad .Lx00374_0_s
.Lx00374_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00373_n3_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1223: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1223]
 lea rsi, [rbp + 3408]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 cmp eax, 99
 je xchain00373_n6_α
 jmp xchain00373_n5_α
 xchain00373_n3_β:
 jmp xchain00373_n6_α
 xchain00373_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3552] -> [zr+3520]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3520], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3528], rax
  .section .rodata
  .Lrkfn1225: .string "string"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1225]
 lea rsi, [rbp + 3520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 cmp eax, 99
 je xchain00373_n3_α
 jmp xchain00373_n7_α
 xchain00373_n4_β:
 jmp xchain00373_n3_α
 xchain00373_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3392]
 mov rdx, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain00373_n6_α
# IR_MAKE_LIST
 xchain00373_n6_α:
 lea rdi, [rbp + 3376]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain00373_n8_α
# IR_ASSIGN_VAR
 xchain00373_n7_α:
 mov rdi, qword ptr [rbp + 3456]
 mov rsi, qword ptr [rbp + 3464]
 mov rdx, qword ptr [rbp + 3504]
 mov rcx, qword ptr [rbp + 3512]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00373_n3_α
 mov qword ptr [rbp + 3488], rax
 mov qword ptr [rbp + 3496], rdx
 jmp xchain00373_n3_α
 xchain00373_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3360]
 mov rdx, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain00373_n9_α
# IR_VAR
 xchain00373_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00373_n10_α
 xchain00373_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn1234: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1234]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00373_n11_α
 jmp xchain00373_n12_α
 xchain00373_n10_β:
 jmp xchain00373_n11_α
# IR_VAR
 xchain00373_n11_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 152], rax
 jmp xchain00373_n13_α
 xchain00373_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00373_n15_α
# IR_VAR
 xchain00373_n13_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 232], rax
 jmp xchain00373_n16_α
# IR_VAR
 xchain00373_n14_α:
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 56], rax
 jmp xchain00373_n17_α
# IR_VAR
 xchain00373_n15_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3320], rax
 jmp xchain00373_n18_α
 xchain00373_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1245: .string "pull"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1245]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00373_n14_α
 jmp xchain00373_n19_α
 xchain00373_n16_β:
 jmp xchain00373_n14_α
# IR_RETURN
 xchain00373_n17_α:
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_options_γ
# IR_GEN_SCAN
 xchain00373_n18_α:
 mov rdi, qword ptr [rbp + 3312]
 mov rsi, qword ptr [rbp + 3320]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00373_n20_α
 xchain00373_n19_α:
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
  .Lrkfn1250: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1250]
 lea rsi, [rbp + 96]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00373_n14_α
 jmp xchain00373_n11_α
 xchain00373_n19_β:
 jmp xchain00373_n14_α
# IR_DISJUNCTION_NARY
 xchain00373_n20_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 mov dword ptr [rbp + 448], 0
 jmp xchain00373_n22_α
xchain00373_n20_as:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 jne .Lx00375_0
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 jmp xchain00373_n21_α
.Lx00375_0:
 cmp eax, 1
 jne .Lx00375_1
 mov rax, qword ptr [rbp + 3184]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 440], rax
 jmp xchain00373_n21_α
.Lx00375_1:
 jmp xchain00373_n21_α
 xchain00373_n20_β:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 je xchain00373_n23_β
 jmp xchain00373_n35_α
xchain00373_n20_af:
 add dword ptr [rbp + 448], 1
 mov eax, dword ptr [rbp + 448]
 cmp eax, 1
 je xchain00373_n24_α
 jmp xchain00373_n35_α
# IR_GEN_SCAN
 xchain00373_n21_α:
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 408], rax
 lea rdi, [rbp + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 368]
 mov r14, qword ptr [rbp + 376]
 mov r15, qword ptr [rbp + 384]
 jmp xchain00373_n9_α
 xchain00373_n21_β:
 call rt_scan_reenter@PLT
 mov r13, rax
 mov r15, rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 jmp xchain00373_n20_β
 jmp xchain00373_n9_α
# IR_LIT_STRING
 xchain00373_n22_α:
 mov qword ptr [rbp + 3152], 1
 mov rax, qword ptr [rip + .Lx00376_0]
 mov qword ptr [rbp + 3160], rax
 jmp xchain00373_n27_α
 xchain00373_n22_β:
 jmp xchain00373_n20_af
.Lx00376_0:
 .quad .Lx00376_0_s
.Lx00376_0_s:
 .string "-"
# IR_DISJUNCTION_NARY
 xchain00373_n23_α:
 mov qword ptr [rbp + 560], 0
 mov qword ptr [rbp + 568], 0
 mov dword ptr [rbp + 576], 0
 jmp xchain00373_n29_α
xchain00373_n23_as:
 mov eax, dword ptr [rbp + 576]
 cmp eax, 0
 jne .Lx00377_0
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 568], rax
 jmp xchain00373_n28_α
.Lx00377_0:
 cmp eax, 1
 jne .Lx00377_1
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 568], rax
 jmp xchain00373_n28_α
.Lx00377_1:
 jmp xchain00373_n28_α
 xchain00373_n23_β:
 mov eax, dword ptr [rbp + 576]
 cmp eax, 0
 je xchain00373_n30_β
 jmp xchain00373_n28_α
xchain00373_n23_af:
 add dword ptr [rbp + 576], 1
 mov eax, dword ptr [rbp + 576]
 cmp eax, 1
 je xchain00373_n31_α
 jmp xchain00373_n28_α
# IR_VAR
 xchain00373_n24_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 3248], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 3256], rax
 jmp xchain00373_n34_α
 xchain00373_n24_β:
 jmp xchain00373_n35_α
 xchain00373_n25_α:
 jmp xchain00373_n20_as
xchain00373_n25_β:
 jmp xchain00373_n35_α
 xchain00373_n26_α:
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
  .Lrkfn1262: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1262]
 lea rsi, [rbp + 3200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 cmp eax, 99
 je xchain00373_n35_α
 jmp xchain00373_n20_as
 xchain00373_n26_β:
 jmp xchain00373_n35_α
# IR_SCAN_MATCH
 xchain00373_n27_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00378_239
 add rsp, 16
 jmp xchain00373_n20_af
.Lx00378_239:
 mov rdi, qword ptr [rip + .Lx00378_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00378_240
 add rsp, 16
 jmp xchain00373_n20_af
.Lx00378_240:
 mov qword ptr [rbp + 3120], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 3128], rax
 jmp xchain00373_n36_α
.Lx00378_0:
 .quad .Lx00378_0_s
.Lx00378_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain00373_n28_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00379_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00373_n37_α
.Lx00379_0:
 .quad 1
# IR_VAR
 xchain00373_n29_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2552], rax
 jmp xchain00373_n38_α
 xchain00373_n29_β:
 jmp xchain00373_n23_af
# IR_DISJUNCTION_NARY
 xchain00373_n30_α:
 mov qword ptr [rbp + 704], 0
 mov qword ptr [rbp + 712], 0
 mov dword ptr [rbp + 720], 0
 jmp xchain00373_n39_α
xchain00373_n30_as:
 mov eax, dword ptr [rbp + 720]
 cmp eax, 0
 jne .Lx00380_0
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 712], rax
 jmp xchain00373_n32_α
.Lx00380_0:
 cmp eax, 1
 jne .Lx00380_1
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 712], rax
 jmp xchain00373_n32_α
.Lx00380_1:
 jmp xchain00373_n32_α
 xchain00373_n30_β:
 mov eax, dword ptr [rbp + 720]
 cmp eax, 0
 je xchain00373_n28_α
 jmp xchain00373_n28_α
xchain00373_n30_af:
 add dword ptr [rbp + 720], 1
 mov eax, dword ptr [rbp + 720]
 cmp eax, 1
 je xchain00373_n40_α
 jmp xchain00373_n28_α
# IR_LIT_STRING
 xchain00373_n31_α:
 mov qword ptr [rbp + 2704], 1
 mov rax, qword ptr [rip + .Lx00381_0]
 mov qword ptr [rbp + 2712], rax
 jmp xchain00373_n42_α
 xchain00373_n31_β:
 jmp xchain00373_n28_α
.Lx00381_0:
 .quad .Lx00381_0_s
.Lx00381_0_s:
 .string "Unrecognized option: -"
# IR_ASSIGN_VAR
 xchain00373_n32_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00373_n28_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00373_n23_as
 xchain00373_n32_β:
 jmp xchain00373_n28_α
 xchain00373_n33_α:
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
  .Lrkfn1273: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1273]
 lea rsi, [rbp + 2656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 cmp eax, 99
 je xchain00373_n28_α
 jmp xchain00373_n23_as
 xchain00373_n33_β:
 jmp xchain00373_n28_α
# IR_VAR
 xchain00373_n34_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3280], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3288], rax
 jmp xchain00373_n26_α
# IR_GEN_SCAN
 xchain00373_n35_α:
 lea rdi, [rbp + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 368]
 mov r14, qword ptr [rbp + 376]
 mov r15, qword ptr [rbp + 384]
 jmp xchain00373_n9_α
 xchain00373_n35_β:
 jmp xchain00373_n9_α
# IR_SCAN_TAB
 xchain00373_n36_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 3128]
 cmp rax, 1
 jge .Lx00382_0
 add rax, r15
 add rax, 1
.Lx00382_0:
 cmp rax, 1
 jge .Lx00382_239
 add rsp, 16
 jmp xchain00373_n20_af
.Lx00382_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00382_240
 add rsp, 16
 jmp xchain00373_n20_af
.Lx00382_240:
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
 jmp xchain00373_n43_α
 xchain00373_n36_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00373_n20_af
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00373_n37_α:
 sub rsp, 16
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00383_239
 add rsp, 16
 jmp xchain00373_n35_α
.Lx00383_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00383_240
 add rsp, 16
 jmp xchain00373_n35_α
.Lx00383_240:
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
 jmp xchain00373_n44_α
 xchain00373_n37_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00373_n35_α
# IR_VAR
 xchain00373_n38_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 2584], rax
 jmp xchain00373_n45_α
# IR_LIT_CHARSET
 xchain00373_n39_α:
 mov qword ptr [rbp + 2208], 1
 mov dword ptr [rbp + 2212], -1
 mov rax, qword ptr [rip + .Lx00384_0]
 mov qword ptr [rbp + 2216], rax
 jmp xchain00373_n46_α
 xchain00373_n39_β:
 jmp xchain00373_n30_af
.Lx00384_0:
 .quad .Lx00384_0_s
.Lx00384_0_s:
 .string "+.:"
# IR_LIT_INTEGER
 xchain00373_n40_α:
 mov qword ptr [rbp + 2368], 6
 mov rax, qword ptr [rip + .Lx00385_0]
 mov qword ptr [rbp + 2376], rax
 jmp xchain00373_n30_as
 xchain00373_n40_β:
 jmp xchain00373_n28_α
.Lx00385_0:
 .quad 1
 xchain00373_n41_α:
 jmp xchain00373_n30_as
xchain00373_n41_β:
 jmp xchain00373_n28_α
# IR_VAR
 xchain00373_n42_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2744], rax
 jmp xchain00373_n33_α
# IR_LIT_INTEGER
 xchain00373_n43_α:
 mov qword ptr [rbp + 3056], 6
 mov rax, qword ptr [rip + .Lx00386_0]
 mov qword ptr [rbp + 3064], rax
 jmp xchain00373_n47_α
.Lx00386_0:
 .quad 0
 xchain00373_n44_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00373_n23_α
 xchain00373_n45_α:
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
.Lx00387_60:
  .section .rodata
  .Lbynamegenfn852: .string "find"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn852]
 lea rsi, [rbp + 2496]
 mov edx, 2
 lea rcx, [rbp + 2528]
 call rt_call_arr_gen@PLT
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 cmp eax, 99
 je xchain00373_n23_af
 jmp xchain00373_n48_α
 xchain00373_n45_β:
 jmp .Lx00387_60
# IR_VAR_REF
 xchain00373_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain00373_n49_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00373_n47_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00388_0
 add rax, r15
 add rax, 1
.Lx00388_0:
 cmp rax, 1
 jl xchain00373_n50_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00373_n50_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00373_n50_α
 mov qword ptr [rbp + 3024], 6
 mov qword ptr [rbp + 3032], rax
 jmp xchain00373_n20_af
# IR_LIT_INTEGER
 xchain00373_n48_α:
 mov qword ptr [rbp + 2608], 6
 mov rax, qword ptr [rip + .Lx00389_0]
 mov qword ptr [rbp + 2616], rax
 jmp xchain00373_n51_α
.Lx00389_0:
 .quad 1
# IR_VAR
 xchain00373_n49_α:
 mov rax, qword ptr [rbp + 3712]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 2296], rax
 jmp xchain00373_n52_α
# KEYWORD_null
 xchain00373_n50_α:
 mov qword ptr [rbp + 2992], 0
 mov qword ptr [rbp + 3000], 0
 jmp xchain00373_n53_α
 xchain00373_n50_β:
 jmp xchain00373_n20_af
# IR_COERCE_NUMERIC
 xchain00373_n51_α:
 mov eax, dword ptr [rbp + 2480]
 cmp eax, 7
 je .Lx00390_1
 cmp eax, 6
 jne .Lx00390_0
 mov eax, dword ptr [rbp + 2608]
 cmp eax, 6
 jne .Lx00390_0
.Lx00390_1:
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2456], rax
 jmp xchain00373_n54_α
.Lx00390_0:
 lea rdi, [rbp + 2480]
 lea rsi, [rbp + 2608]
 lea rdx, [rbp + 2448]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00373_n54_α
# IR_SUBSCRIPT x[i] variable
 xchain00373_n52_α:
 mov rdi, qword ptr [rbp + 2256]
 mov rsi, qword ptr [rbp + 2264]
 mov rdx, qword ptr [rbp + 2288]
 mov rcx, qword ptr [rbp + 2296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00373_n30_af
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain00373_n55_α
 xchain00373_n53_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 2984], rax
 jmp xchain00373_n56_α
xchain00373_n53_β:
 jmp xchain00373_n20_af
 xchain00373_n54_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 100
 je .Lx00391_0
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 6
 jne .Lx00391_2
.Lx00391_1:
 mov rax, qword ptr [rbp + 2456]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 2416], 6
 mov qword ptr [rbp + 2424], rax
 jmp xchain00373_n57_α
.Lx00391_0:
 mov rdi, qword ptr [rbp + 2448]
 mov rsi, qword ptr [rbp + 2456]
 mov rdx, qword ptr [rbp + 2608]
 mov rcx, qword ptr [rbp + 2616]
 mov r8d, 0
 lea r9, [rbp + 2416]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00373_n57_α
.Lx00391_2:
 mov rdi, qword ptr [rbp + 2448]
 mov rsi, qword ptr [rbp + 2456]
 mov rdx, qword ptr [rbp + 2608]
 mov rcx, qword ptr [rbp + 2616]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00373_n23_af
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain00373_n57_α
 xchain00373_n54_β:
 jmp xchain00373_n23_af
# IR_DEREF variable -> value
 xchain00373_n55_α:
 mov rdi, qword ptr [rbp + 2320]
 mov rsi, qword ptr [rbp + 2328]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00373_n30_af
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain00373_n58_α
# IR_DISJUNCTION_NARY
 xchain00373_n56_α:
 mov qword ptr [rbp + 2768], 0
 mov qword ptr [rbp + 2776], 0
 mov dword ptr [rbp + 2784], 0
 jmp xchain00373_n59_α
xchain00373_n56_as:
 mov eax, dword ptr [rbp + 2784]
 cmp eax, 0
 jne .Lx00392_0
 jmp xchain00373_n28_α
.Lx00392_0:
 jmp xchain00373_n28_α
 xchain00373_n56_β:
 mov eax, dword ptr [rbp + 2784]
 jmp xchain00373_n28_α
xchain00373_n56_af:
 add dword ptr [rbp + 2784], 1
 mov eax, dword ptr [rbp + 2784]
 jmp xchain00373_n28_α
 xchain00373_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2416]
 mov rdx, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain00373_n60_α
 xchain00373_n58_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2352]
 mov rdx, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain00373_n61_α
# IR_LIT_STRING
 xchain00373_n59_α:
 mov qword ptr [rbp + 2944], 1
 mov rax, qword ptr [rip + .Lx00393_0]
 mov qword ptr [rbp + 2952], rax
 jmp xchain00373_n62_α
 xchain00373_n59_β:
 jmp xchain00373_n56_af
.Lx00393_0:
 .quad .Lx00393_0_s
.Lx00393_0_s:
 .string "-"
# IR_VAR_REF
 xchain00373_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3600]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00373_n63_α
 xchain00373_n61_α:
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
  .Lbynamefn868: .string "any"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn868]
 lea rsi, [rbp + 2160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 cmp eax, 99
 je xchain00373_n30_af
 jmp xchain00373_n64_α
 xchain00373_n61_β:
 jmp xchain00373_n30_af
# IR_SCAN_MATCH
 xchain00373_n62_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00394_239
 add rsp, 16
 jmp xchain00373_n56_af
.Lx00394_239:
 mov rdi, qword ptr [rip + .Lx00394_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00394_240
 add rsp, 16
 jmp xchain00373_n56_af
.Lx00394_240:
 mov qword ptr [rbp + 2912], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 2920], rax
 jmp xchain00373_n65_α
.Lx00394_0:
 .quad .Lx00394_0_s
.Lx00394_0_s:
 .string "-"
# IR_VAR
 xchain00373_n63_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 632], rax
 jmp xchain00373_n66_α
# IR_DISJUNCTION_NARY
 xchain00373_n64_α:
 mov qword ptr [rbp + 1776], 0
 mov qword ptr [rbp + 1784], 0
 mov dword ptr [rbp + 1792], 0
 jmp xchain00373_n68_α
xchain00373_n64_as:
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 0
 jne .Lx00395_0
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00373_n67_α
.Lx00395_0:
 cmp eax, 1
 jne .Lx00395_1
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00373_n67_α
.Lx00395_1:
 cmp eax, 2
 jne .Lx00395_2
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00373_n67_α
.Lx00395_2:
 jmp xchain00373_n67_α
 xchain00373_n64_β:
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 0
 je xchain00373_n64_af
 cmp eax, 1
 je xchain00373_n64_af
 jmp xchain00373_n64_af
xchain00373_n64_af:
 add dword ptr [rbp + 1792], 1
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 1
 je xchain00373_n69_α
 cmp eax, 2
 je xchain00373_n70_α
 jmp xchain00373_n75_α
# IR_SCAN_TAB
 xchain00373_n65_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 2920]
 cmp rax, 1
 jge .Lx00396_0
 add rax, r15
 add rax, 1
.Lx00396_0:
 cmp rax, 1
 jge .Lx00396_239
 add rsp, 16
 jmp xchain00373_n56_af
.Lx00396_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00396_240
 add rsp, 16
 jmp xchain00373_n56_af
.Lx00396_240:
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
 jmp xchain00373_n74_α
 xchain00373_n65_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00373_n56_af
# IR_SUBSCRIPT x[i] variable
 xchain00373_n66_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00373_n28_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00373_n30_α
 xchain00373_n67_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1776]
 mov rdx, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain00373_n75_α
# IR_LIT_STRING
 xchain00373_n68_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx00397_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain00373_n76_α
 xchain00373_n68_β:
 jmp xchain00373_n64_af
.Lx00397_0:
 .quad .Lx00397_0_s
.Lx00397_0_s:
 .string ""
# IR_VAR
 xchain00373_n69_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1992], rax
 jmp xchain00373_n72_α
 xchain00373_n69_β:
 jmp xchain00373_n64_af
# IR_LIT_STRING
 xchain00373_n70_α:
 mov qword ptr [rbp + 2080], 1
 mov rax, qword ptr [rip + .Lx00398_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain00373_n77_α
 xchain00373_n70_β:
 jmp xchain00373_n64_af
.Lx00398_0:
 .quad .Lx00398_0_s
.Lx00398_0_s:
 .string "No parameter following -"
 xchain00373_n71_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 1840]
 mov rsi, qword ptr [rbp + 1848]
 mov rdx, qword ptr [rbp + 1872]
 mov rcx, qword ptr [rbp + 1880]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00373_n64_af
 mov rdi, qword ptr [rbp + 1872]
 mov rsi, qword ptr [rbp + 1880]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain00373_n64_as
 xchain00373_n71_β:
 jmp xchain00373_n64_af
 xchain00373_n72_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1960], rax
  .section .rodata
  .Lrkfn1330: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1330]
 lea rsi, [rbp + 1952]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je xchain00373_n64_af
 jmp xchain00373_n64_as
 xchain00373_n72_β:
 jmp xchain00373_n64_af
 xchain00373_n73_α:
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
  .Lrkfn1332: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1332]
 lea rsi, [rbp + 2032]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain00373_n64_af
 jmp xchain00373_n64_as
 xchain00373_n73_β:
 jmp xchain00373_n64_af
# IR_LIT_INTEGER
 xchain00373_n74_α:
 mov qword ptr [rbp + 2848], 6
 mov rax, qword ptr [rip + .Lx00399_0]
 mov qword ptr [rbp + 2856], rax
 jmp xchain00373_n78_α
.Lx00399_0:
 .quad 0
# IR_VAR
 xchain00373_n75_α:
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 792], rax
 jmp xchain00373_n79_α
# IR_LIT_INTEGER
 xchain00373_n76_α:
 mov qword ptr [rbp + 1904], 6
 mov rax, qword ptr [rip + .Lx00400_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain00373_n80_α
.Lx00400_0:
 .quad 0
# IR_VAR
 xchain00373_n77_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2120], rax
 jmp xchain00373_n73_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00373_n78_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00401_0
 add rax, r15
 add rax, 1
.Lx00401_0:
 cmp rax, 1
 jl xchain00373_n56_af
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00373_n56_af
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00373_n56_af
 mov qword ptr [rbp + 2816], 6
 mov qword ptr [rbp + 2824], rax
 jmp xchain00373_n81_α
# IR_LIT_STRING
 xchain00373_n79_α:
 mov qword ptr [rbp + 1616], 1
 mov rax, qword ptr [rip + .Lx00402_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00373_n82_α
.Lx00402_0:
 .quad .Lx00402_0_s
.Lx00402_0_s:
 .string ":"
# IR_SCAN_TAB
 xchain00373_n80_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00403_0
 add rax, r15
 add rax, 1
.Lx00403_0:
 cmp rax, 1
 jge .Lx00403_239
 add rsp, 16
 jmp xchain00373_n64_af
.Lx00403_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00403_240
 add rsp, 16
 jmp xchain00373_n64_af
.Lx00403_240:
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
 jmp xchain00373_n71_α
 xchain00373_n80_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00373_n64_af
 xchain00373_n81_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2808], rax
 jmp xchain00373_n11_α
xchain00373_n81_β:
 jmp xchain00373_n56_af
 xchain00373_n82_α:
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
  .Lrkfn1346: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1346]
 lea rsi, [rbp + 1712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je xchain00373_n84_α
 jmp xchain00373_n83_α
 xchain00373_n82_β:
 jmp xchain00373_n84_α
# IR_VAR
 xchain00373_n83_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1656], rax
 jmp xchain00373_n85_α
# IR_LIT_STRING
 xchain00373_n84_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx00404_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain00373_n86_α
.Lx00404_0:
 .quad .Lx00404_0_s
.Lx00404_0_s:
 .string "+"
 xchain00373_n85_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1648]
 mov rdx, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00373_n87_α
 xchain00373_n86_α:
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
  .Lrkfn1352: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1352]
 lea rsi, [rbp + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain00373_n89_α
 jmp xchain00373_n88_β
 xchain00373_n86_β:
 jmp xchain00373_n89_α
# IR_VAR
 xchain00373_n87_α:
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 760], rax
 jmp xchain00373_n41_α
# IR_DISJUNCTION_NARY
 xchain00373_n88_α:
 mov qword ptr [rbp + 1248], 0
 mov qword ptr [rbp + 1256], 0
 mov dword ptr [rbp + 1264], 0
 jmp xchain00373_n91_α
xchain00373_n88_as:
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 0
 jne .Lx00405_0
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00373_n90_α
.Lx00405_0:
 cmp eax, 1
 jne .Lx00405_1
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00373_n90_α
.Lx00405_1:
 jmp xchain00373_n90_α
 xchain00373_n88_β:
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 0
 je xchain00373_n88_af
 jmp xchain00373_n88_af
xchain00373_n88_af:
 add dword ptr [rbp + 1264], 1
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 1
 je xchain00373_n92_α
 jmp xchain00373_n28_α
# IR_LIT_STRING
 xchain00373_n89_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx00406_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00373_n95_α
.Lx00406_0:
 .quad .Lx00406_0_s
.Lx00406_0_s:
 .string "."
 xchain00373_n90_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain00373_n87_α
# IR_VAR
 xchain00373_n91_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1336], rax
 jmp xchain00373_n93_α
 xchain00373_n91_β:
 jmp xchain00373_n88_af
# IR_LIT_STRING
 xchain00373_n92_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx00407_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain00373_n96_α
 xchain00373_n92_β:
 jmp xchain00373_n88_af
.Lx00407_0:
 .quad .Lx00407_0_s
.Lx00407_0_s:
 .string "-"
 xchain00373_n93_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1296]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1304], rax
  .section .rodata
  .Lrkfn1363: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1363]
 lea rsi, [rbp + 1296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain00373_n88_af
 jmp xchain00373_n88_as
 xchain00373_n93_β:
 jmp xchain00373_n88_af
 xchain00373_n94_α:
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
  .Lrkfn1365: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1365]
 lea rsi, [rbp + 1376]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain00373_n88_af
 jmp xchain00373_n88_as
 xchain00373_n94_β:
 jmp xchain00373_n88_af
 xchain00373_n95_α:
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
  .Lrkfn1367: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1367]
 lea rsi, [rbp + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain00373_n28_α
 jmp xchain00373_n97_β
 xchain00373_n95_β:
 jmp xchain00373_n28_α
# IR_VAR
 xchain00373_n96_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1480], rax
 jmp xchain00373_n98_α
# IR_DISJUNCTION_NARY
 xchain00373_n97_α:
 mov qword ptr [rbp + 848], 0
 mov qword ptr [rbp + 856], 0
 mov dword ptr [rbp + 864], 0
 jmp xchain00373_n00074_α
xchain00373_n97_as:
 mov eax, dword ptr [rbp + 864]
 cmp eax, 0
 jne .Lx00408_0
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 856], rax
 jmp xchain00373_n99_α
.Lx00408_0:
 cmp eax, 1
 jne .Lx00408_1
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 856], rax
 jmp xchain00373_n99_α
.Lx00408_1:
 jmp xchain00373_n99_α
 xchain00373_n97_β:
 mov eax, dword ptr [rbp + 864]
 cmp eax, 0
 je xchain00373_n97_af
 jmp xchain00373_n97_af
xchain00373_n97_af:
 add dword ptr [rbp + 864], 1
 mov eax, dword ptr [rbp + 864]
 cmp eax, 1
 je xchain00373_n00076_α
 jmp xchain00373_n28_α
# IR_LIT_STRING
 xchain00373_n98_α:
 mov qword ptr [rbp + 1504], 1
 mov rax, qword ptr [rip + .Lx00409_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain00373_n94_α
.Lx00409_0:
 .quad .Lx00409_0_s
.Lx00409_0_s:
 .string " needs numeric parameter"
 xchain00373_n99_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00373_n87_α
# IR_VAR
 xchain00373_n00074_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 936], rax
 jmp xchain00373_n00078_α
 xchain00373_n00074_β:
 jmp xchain00373_n97_af
# IR_LIT_STRING
 xchain00373_n00076_α:
 mov qword ptr [rbp + 1040], 1
 mov rax, qword ptr [rip + .Lx00410_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00373_n00001_α
 xchain00373_n00076_β:
 jmp xchain00373_n97_af
.Lx00410_0:
 .quad .Lx00410_0_s
.Lx00410_0_s:
 .string "-"
 xchain00373_n00078_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+896]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 904], rax
  .section .rodata
  .Lrkfn1378: .string "real"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1378]
 lea rsi, [rbp + 896]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 cmp eax, 99
 je xchain00373_n97_af
 jmp xchain00373_n97_as
 xchain00373_n00078_β:
 jmp xchain00373_n97_af
 xchain00373_n00079_α:
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
  .Lrkfn1380: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1380]
 lea rsi, [rbp + 976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain00373_n97_af
 jmp xchain00373_n97_as
 xchain00373_n00079_β:
 jmp xchain00373_n97_af
# IR_VAR
 xchain00373_n00001_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00373_n00091_α
# IR_LIT_STRING
 xchain00373_n00091_α:
 mov qword ptr [rbp + 1104], 1
 mov rax, qword ptr [rip + .Lx00411_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00373_n00079_α
.Lx00411_0:
 .quad .Lx00411_0_s
.Lx00411_0_s:
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
  mov esi, 1008
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
  mov esi, 1344
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
  mov esi, 5472
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
  mov esi, 5440
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
  mov esi, 2272
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
  mov qword ptr [rsp + 3320], rsp
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
# IR_VAR
 xchain00412_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 3248], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 3256], rax
 jmp xchain00412_n1_α
# IR_LIT_STRING
 xchain00412_n1_α:
 mov qword ptr [rbp + 3280], 1
 mov rax, qword ptr [rip + .Lx00413_0]
 mov qword ptr [rbp + 3288], rax
 jmp xchain00412_n3_α
.Lx00413_0:
 .quad .Lx00413_0_s
.Lx00413_0_s:
 .string "a.e."
# IR_DISJUNCTION_NARY
 xchain00412_n2_α:
 mov qword ptr [rbp + 2960], 0
 mov qword ptr [rbp + 2968], 0
 mov dword ptr [rbp + 2976], 0
 jmp xchain00412_n5_α
xchain00412_n2_as:
 mov eax, dword ptr [rbp + 2976]
 cmp eax, 0
 jne .Lx00414_0
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 2960], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 2968], rax
 jmp xchain00412_n4_α
.Lx00414_0:
 cmp eax, 1
 jne .Lx00414_1
 mov rax, qword ptr [rbp + 3136]
 mov qword ptr [rbp + 2960], rax
 mov rax, qword ptr [rbp + 3144]
 mov qword ptr [rbp + 2968], rax
 jmp xchain00412_n4_α
.Lx00414_1:
 jmp xchain00412_n4_α
 xchain00412_n2_β:
 mov eax, dword ptr [rbp + 2976]
 cmp eax, 0
 je xchain00412_n2_af
 jmp xchain00412_n2_af
xchain00412_n2_af:
 add dword ptr [rbp + 2976], 1
 mov eax, dword ptr [rbp + 2976]
 cmp eax, 1
 je xchain00412_n6_α
 jmp xchain00412_n9_α
 xchain00412_n3_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3248]
 mov rdx, qword ptr [rbp + 3256]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3280]
 mov rdx, qword ptr [rbp + 3288]
 call rt_arg_stage@PLT
 mov edi, 9
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00415_1
 lea rcx, [rip + .Lx00415_3]
 lea rdx, [rip + .Lx00415_4]
 jmp rax
.Lx00415_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00415_2
.Lx00415_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00415_2
.Lx00415_1:
 call rt_faildescr@PLT
.Lx00415_2:
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 cmp eax, 99
 je xchain00412_n2_α
 jmp xchain00412_n8_α
 xchain00412_n3_β:
 jmp xchain00412_n2_α
.Lx00415_0:
 .quad .Lx00415_0_s
.Lx00415_0_s:
 .string "options"
# IR_ASSIGN gva
 xchain00412_n4_α:
 mov rax, qword ptr [rbp + 2960]
 mov rdx, qword ptr [rbp + 2968]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 jmp xchain00412_n9_α
# IR_VAR_REF
 xchain00412_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3392]
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain00412_n10_α
 xchain00412_n5_β:
 jmp xchain00412_n2_af
# IR_LIT_INTEGER
 xchain00412_n6_α:
 mov qword ptr [rbp + 3136], 6
 mov rax, qword ptr [rip + .Lx00416_0]
 mov qword ptr [rbp + 3144], rax
 jmp xchain00412_n2_as
 xchain00412_n6_β:
 jmp xchain00412_n2_af
.Lx00416_0:
 .quad 30
# IR_UNOP
 xchain00412_n7_α:
 mov eax, dword ptr [rbp + 3120]
 cmp eax, 99
 je xchain00412_n2_af
 cmp eax, 0
 je xchain00412_n2_af
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3000], rax
 jmp xchain00412_n2_as
 xchain00412_n7_β:
 jmp xchain00412_n2_af
 xchain00412_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3184]
 mov rdx, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 jmp xchain00412_n2_α
# IR_DISJUNCTION_NARY
 xchain00412_n9_α:
 mov qword ptr [rbp + 2736], 0
 mov qword ptr [rbp + 2744], 0
 mov dword ptr [rbp + 2752], 0
 jmp xchain00412_n12_α
xchain00412_n9_as:
 mov eax, dword ptr [rbp + 2752]
 cmp eax, 0
 jne .Lx00417_0
 mov rax, qword ptr [rbp + 2768]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2776]
 mov qword ptr [rbp + 2744], rax
 jmp xchain00412_n11_α
.Lx00417_0:
 cmp eax, 1
 jne .Lx00417_1
 mov rax, qword ptr [rbp + 2912]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2920]
 mov qword ptr [rbp + 2744], rax
 jmp xchain00412_n11_α
.Lx00417_1:
 jmp xchain00412_n11_α
 xchain00412_n9_β:
 mov eax, dword ptr [rbp + 2752]
 cmp eax, 0
 je xchain00412_n9_af
 jmp xchain00412_n9_af
xchain00412_n9_af:
 add dword ptr [rbp + 2752], 1
 mov eax, dword ptr [rbp + 2752]
 cmp eax, 1
 je xchain00412_n13_α
 jmp xchain00412_n16_α
# IR_LIT_STRING
 xchain00412_n10_α:
 mov qword ptr [rbp + 3056], 1
 mov rax, qword ptr [rip + .Lx00418_0]
 mov qword ptr [rbp + 3064], rax
 jmp xchain00412_n15_α
.Lx00418_0:
 .quad .Lx00418_0_s
.Lx00418_0_s:
 .string "a"
# IR_ASSIGN gva
 xchain00412_n11_α:
 mov rax, qword ptr [rbp + 2736]
 mov rdx, qword ptr [rbp + 2744]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 jmp xchain00412_n16_α
# IR_VAR_REF
 xchain00412_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3392]
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 jmp xchain00412_n17_α
 xchain00412_n12_β:
 jmp xchain00412_n9_af
# IR_LIT_INTEGER
 xchain00412_n13_α:
 mov qword ptr [rbp + 2912], 6
 mov rax, qword ptr [rip + .Lx00419_0]
 mov qword ptr [rbp + 2920], rax
 jmp xchain00412_n9_as
 xchain00412_n13_β:
 jmp xchain00412_n9_af
.Lx00419_0:
 .quad 4
# IR_UNOP
 xchain00412_n14_α:
 mov eax, dword ptr [rbp + 2896]
 cmp eax, 99
 je xchain00412_n9_af
 cmp eax, 0
 je xchain00412_n9_af
 mov rax, qword ptr [rbp + 2896]
 mov qword ptr [rbp + 2768], rax
 mov rax, qword ptr [rbp + 2904]
 mov qword ptr [rbp + 2776], rax
 jmp xchain00412_n9_as
 xchain00412_n14_β:
 jmp xchain00412_n9_af
# IR_SUBSCRIPT x[i] variable
 xchain00412_n15_α:
 mov rdi, qword ptr [rbp + 3024]
 mov rsi, qword ptr [rbp + 3032]
 mov rdx, qword ptr [rbp + 3056]
 mov rcx, qword ptr [rbp + 3064]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00412_n2_af
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain00412_n18_α
# IR_DISJUNCTION_NARY
 xchain00412_n16_α:
 mov qword ptr [rbp + 1712], 0
 mov qword ptr [rbp + 1720], 0
 mov dword ptr [rbp + 1728], 0
 jmp xchain00412_n20_α
xchain00412_n16_as:
 mov eax, dword ptr [rbp + 1728]
 cmp eax, 0
 jne .Lx00420_0
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1720], rax
 jmp xchain00412_n19_α
.Lx00420_0:
 cmp eax, 1
 jne .Lx00420_1
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 1720], rax
 jmp xchain00412_n19_α
.Lx00420_1:
 jmp xchain00412_n19_α
 xchain00412_n16_β:
 mov eax, dword ptr [rbp + 1728]
 cmp eax, 0
 je xchain00412_n19_α
 jmp xchain00412_n21_β
xchain00412_n16_af:
 add dword ptr [rbp + 1728], 1
 mov eax, dword ptr [rbp + 1728]
 cmp eax, 1
 je xchain00412_n21_α
 jmp xchain00412_n19_α
# IR_LIT_STRING
 xchain00412_n17_α:
 mov qword ptr [rbp + 2832], 1
 mov rax, qword ptr [rip + .Lx00421_0]
 mov qword ptr [rbp + 2840], rax
 jmp xchain00412_n23_α
.Lx00421_0:
 .quad .Lx00421_0_s
.Lx00421_0_s:
 .string "e"
# IR_DEREF variable -> value
 xchain00412_n18_α:
 mov rdi, qword ptr [rbp + 3088]
 mov rsi, qword ptr [rbp + 3096]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00412_n2_af
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain00412_n7_α
# IR_DISJUNCTION_NARY
 xchain00412_n19_α:
 mov qword ptr [rbp + 1472], 0
 mov qword ptr [rbp + 1480], 0
 mov dword ptr [rbp + 1488], 0
 jmp xchain00412_n25_α
xchain00412_n19_as:
 mov eax, dword ptr [rbp + 1488]
 cmp eax, 0
 jne .Lx00422_0
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1480], rax
 jmp xchain00412_n24_α
.Lx00422_0:
 cmp eax, 1
 jne .Lx00422_1
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1480], rax
 jmp xchain00412_n24_α
.Lx00422_1:
 jmp xchain00412_n24_α
 xchain00412_n19_β:
 mov eax, dword ptr [rbp + 1488]
 cmp eax, 0
 je xchain00412_n19_af
 jmp xchain00412_n19_af
xchain00412_n19_af:
 add dword ptr [rbp + 1488], 1
 mov eax, dword ptr [rbp + 1488]
 cmp eax, 1
 je xchain00412_n26_α
 jmp xchain00412_n36_α
# IR_VAR
 xchain00412_n20_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1992], rax
 jmp xchain00412_n29_α
 xchain00412_n20_β:
 jmp xchain00412_n16_af
# IR_DISJUNCTION_NARY
 xchain00412_n21_α:
 mov qword ptr [rbp + 2048], 0
 mov qword ptr [rbp + 2056], 0
 mov dword ptr [rbp + 2064], 0
 jmp xchain00412_n30_α
xchain00412_n21_as:
 mov eax, dword ptr [rbp + 2064]
 cmp eax, 0
 jne .Lx00423_0
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2056], rax
 jmp xchain00412_n16_as
.Lx00423_0:
 cmp eax, 1
 jne .Lx00423_1
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2056], rax
 jmp xchain00412_n16_as
.Lx00423_1:
 jmp xchain00412_n16_as
 xchain00412_n21_β:
 mov eax, dword ptr [rbp + 2064]
 cmp eax, 0
 je xchain00412_n31_β
 jmp xchain00412_n19_α
xchain00412_n21_af:
 add dword ptr [rbp + 2064], 1
 mov eax, dword ptr [rbp + 2064]
 cmp eax, 1
 je xchain00412_n32_α
 jmp xchain00412_n19_α
 xchain00412_n22_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1824] -> [zr+1760]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1768], rax
# marshal arg1 = producer-box slot [zr+1856] -> [zr+1776]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1784], rax
# marshal arg2 = producer-box slot [zr+1888] -> [zr+1792]
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 1800], rax
  .section .rodata
  .Lrkfn1418: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1418]
 lea rsi, [rbp + 1760]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 cmp eax, 99
 je xchain00412_n19_α
 jmp xchain00412_n16_as
 xchain00412_n22_β:
 jmp xchain00412_n19_α
# IR_SUBSCRIPT x[i] variable
 xchain00412_n23_α:
 mov rdi, qword ptr [rbp + 2800]
 mov rsi, qword ptr [rbp + 2808]
 mov rdx, qword ptr [rbp + 2832]
 mov rcx, qword ptr [rbp + 2840]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00412_n9_af
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 jmp xchain00412_n35_α
 xchain00412_n24_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1472]
 mov rdx, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain00412_n36_α
# IR_VAR
 xchain00412_n25_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain00412_n27_α
 xchain00412_n25_β:
 jmp xchain00412_n19_af
# KEYWORD_read
 xchain00412_n26_α:
 mov rdi, qword ptr [rip + .Lx00424_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00412_n19_af
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain00412_n37_α
 xchain00412_n26_β:
 jmp xchain00412_n19_af
.Lx00424_0:
 .quad .Lx00424_0_s
.Lx00424_0_s:
 .string "&progname"
 xchain00412_n27_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1552] -> [zr+1520]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1528], rax
  .section .rodata
  .Lrkfn1424: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1424]
 lea rsi, [rbp + 1520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je xchain00412_n19_af
 jmp xchain00412_n19_as
 xchain00412_n27_β:
 jmp xchain00412_n19_af
 xchain00412_n28_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1648] -> [zr+1600]
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1608], rax
# marshal arg1 = producer-box slot [zr+1680] -> [zr+1616]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1624], rax
  .section .rodata
  .Lrkfn1426: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1426]
 lea rsi, [rbp + 1600]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je xchain00412_n19_af
 jmp xchain00412_n19_as
 xchain00412_n28_β:
 jmp xchain00412_n19_af
# IR_UNOP
 xchain00412_n29_α:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 call rt_size_d@PLT
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain00412_n38_α
# IR_VAR
 xchain00412_n30_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2616], rax
 jmp xchain00412_n39_α
 xchain00412_n30_β:
 jmp xchain00412_n21_af
# IR_DISJUNCTION_NARY
 xchain00412_n31_α:
 mov qword ptr [rbp + 2096], 0
 mov qword ptr [rbp + 2104], 0
 mov dword ptr [rbp + 2112], 0
 jmp xchain00412_n40_α
xchain00412_n31_as:
 mov eax, dword ptr [rbp + 2112]
 cmp eax, 0
 jne .Lx00425_0
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2104], rax
 jmp xchain00412_n33_α
.Lx00425_0:
 cmp eax, 1
 jne .Lx00425_1
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2104], rax
 jmp xchain00412_n33_α
.Lx00425_1:
 jmp xchain00412_n33_α
 xchain00412_n31_β:
 mov eax, dword ptr [rbp + 2112]
 cmp eax, 0
 je xchain00412_n31_af
 jmp xchain00412_n31_af
xchain00412_n31_af:
 add dword ptr [rbp + 2112], 1
 mov eax, dword ptr [rbp + 2112]
 cmp eax, 1
 je xchain00412_n41_α
 jmp xchain00412_n19_α
# KEYWORD_read
 xchain00412_n32_α:
 mov rdi, qword ptr [rip + .Lx00426_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00412_n19_α
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 jmp xchain00412_n34_α
 xchain00412_n32_β:
 jmp xchain00412_n19_α
.Lx00426_0:
 .quad .Lx00426_0_s
.Lx00426_0_s:
 .string "&input"
# IR_ASSIGN gva
 xchain00412_n33_α:
 mov rax, qword ptr [rbp + 2096]
 mov rdx, qword ptr [rbp + 2104]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain00412_n21_as
 xchain00412_n33_β:
 jmp xchain00412_n19_α
# IR_ASSIGN gva
 xchain00412_n34_α:
 mov rax, qword ptr [rbp + 2688]
 mov rdx, qword ptr [rbp + 2696]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 jmp xchain00412_n21_as
 xchain00412_n34_β:
 jmp xchain00412_n19_α
# IR_DEREF variable -> value
 xchain00412_n35_α:
 mov rdi, qword ptr [rbp + 2864]
 mov rsi, qword ptr [rbp + 2872]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00412_n9_af
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain00412_n14_α
# IR_DISJUNCTION_NARY
 xchain00412_n36_α:
 mov qword ptr [rbp + 1216], 0
 mov qword ptr [rbp + 1224], 0
 mov dword ptr [rbp + 1232], 0
 jmp xchain00412_n45_α
xchain00412_n36_as:
 mov eax, dword ptr [rbp + 1232]
 cmp eax, 0
 jne .Lx00427_0
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1224], rax
 jmp xchain00412_n44_α
.Lx00427_0:
 cmp eax, 1
 jne .Lx00427_1
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1224], rax
 jmp xchain00412_n44_α
.Lx00427_1:
 jmp xchain00412_n44_α
 xchain00412_n36_β:
 mov eax, dword ptr [rbp + 1232]
 cmp eax, 0
 je xchain00412_n36_af
 jmp xchain00412_n36_af
xchain00412_n36_af:
 add dword ptr [rbp + 1232], 1
 mov eax, dword ptr [rbp + 1232]
 cmp eax, 1
 je xchain00412_n46_α
 jmp xchain00412_n53_α
# IR_LIT_STRING
 xchain00412_n37_α:
 mov qword ptr [rbp + 1680], 1
 mov rax, qword ptr [rip + .Lx00428_0]
 mov qword ptr [rbp + 1688], rax
 jmp xchain00412_n28_α
.Lx00428_0:
 .quad .Lx00428_0_s
.Lx00428_0_s:
 .string ": empty file"
# IR_LIT_INTEGER
 xchain00412_n38_α:
 mov qword ptr [rbp + 2016], 6
 mov rax, qword ptr [rip + .Lx00429_0]
 mov qword ptr [rbp + 2024], rax
 jmp xchain00412_n49_α
.Lx00429_0:
 .quad 1
# IR_UNOP
 xchain00412_n39_α:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 call rt_size_d@PLT
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 jmp xchain00412_n50_α
# IR_VAR_REF
 xchain00412_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain00412_n51_α
 xchain00412_n40_β:
 jmp xchain00412_n31_af
# KEYWORD_read
 xchain00412_n41_α:
 mov rdi, qword ptr [rip + .Lx00430_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00412_n31_af
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 jmp xchain00412_n52_α
 xchain00412_n41_β:
 jmp xchain00412_n31_af
.Lx00430_0:
 .quad .Lx00430_0_s
.Lx00430_0_s:
 .string "&progname"
 xchain00412_n42_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2272] -> [zr+2144]
 mov rax, qword ptr [rbp + 2272]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 2152], rax
  .section .rodata
  .Lrkfn1445: .string "open"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1445]
 lea rsi, [rbp + 2144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 cmp eax, 99
 je xchain00412_n31_af
 jmp xchain00412_n31_as
 xchain00412_n42_β:
 jmp xchain00412_n31_af
 xchain00412_n43_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2368] -> [zr+2304]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2312], rax
# marshal arg1 = producer-box slot [zr+2400] -> [zr+2320]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2328], rax
# marshal arg2 = producer-box slot [zr+2528] -> [zr+2336]
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2344], rax
  .section .rodata
  .Lrkfn1447: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1447]
 lea rsi, [rbp + 2304]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 cmp eax, 99
 je xchain00412_n31_af
 jmp xchain00412_n31_as
 xchain00412_n43_β:
 jmp xchain00412_n31_af
 xchain00412_n44_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1216]
 mov rdx, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain00412_n53_α
# IR_VAR
 xchain00412_n45_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain00412_n47_α
 xchain00412_n45_β:
 jmp xchain00412_n36_af
# KEYWORD_read
 xchain00412_n46_α:
 mov rdi, qword ptr [rip + .Lx00431_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00412_n36_af
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain00412_n54_α
 xchain00412_n46_β:
 jmp xchain00412_n36_af
.Lx00431_0:
 .quad .Lx00431_0_s
.Lx00431_0_s:
 .string "&progname"
 xchain00412_n47_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1264]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1272], rax
  .section .rodata
  .Lrkfn1452: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1452]
 lea rsi, [rbp + 1264]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain00412_n36_af
 jmp xchain00412_n36_as
 xchain00412_n47_β:
 jmp xchain00412_n36_af
 xchain00412_n48_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1392] -> [zr+1344]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1352], rax
# marshal arg1 = producer-box slot [zr+1424] -> [zr+1360]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1368], rax
  .section .rodata
  .Lrkfn1454: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1454]
 lea rsi, [rbp + 1344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain00412_n36_af
 jmp xchain00412_n36_as
 xchain00412_n48_β:
 jmp xchain00412_n36_af
 xchain00412_n49_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 1952]
 cmp eax, 100
 je .Lx00432_0
 mov eax, dword ptr [rbp + 2016]
 cmp eax, 100
 je .Lx00432_0
 mov eax, dword ptr [rbp + 1952]
 cmp eax, 6
 jne .Lx00432_2
 mov eax, dword ptr [rbp + 2016]
 cmp eax, 6
 jne .Lx00432_2
.Lx00432_1:
 mov rax, qword ptr [rbp + 1960]
 mov rcx, qword ptr [rbp + 2024]
 cmp rax, rcx
 jle xchain00412_n16_af
 mov rcx, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1920], rcx
 mov rcx, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1928], rcx
 jmp xchain00412_n55_α
.Lx00432_0:
 mov rdi, qword ptr [rbp + 1952]
 mov rsi, qword ptr [rbp + 1960]
 mov rdx, qword ptr [rbp + 2016]
 mov rcx, qword ptr [rbp + 2024]
 mov r8d, 7
 lea r9, [rbp + 1920]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00432_1
 cmp eax, 1
 je xchain00412_n16_af
 jmp xchain00412_n55_α
.Lx00432_2:
 mov rdi, qword ptr [rbp + 1952]
 mov rsi, qword ptr [rbp + 1960]
 mov rdx, qword ptr [rbp + 2016]
 mov rcx, qword ptr [rbp + 2024]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00412_n16_af
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1928], rax
 jmp xchain00412_n55_α
# IR_LIT_INTEGER
 xchain00412_n50_α:
 mov qword ptr [rbp + 2640], 6
 mov rax, qword ptr [rip + .Lx00433_0]
 mov qword ptr [rbp + 2648], rax
 jmp xchain00412_n56_α
.Lx00433_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00412_n51_α:
 mov qword ptr [rbp + 2208], 6
 mov rax, qword ptr [rip + .Lx00434_0]
 mov qword ptr [rbp + 2216], rax
 jmp xchain00412_n57_α
.Lx00434_0:
 .quad 1
# IR_LIT_STRING
 xchain00412_n52_α:
 mov qword ptr [rbp + 2400], 1
 mov rax, qword ptr [rip + .Lx00435_0]
 mov qword ptr [rbp + 2408], rax
 jmp xchain00412_n58_α
.Lx00435_0:
 .quad .Lx00435_0_s
.Lx00435_0_s:
 .string ": can't open "
# IR_VAR
 xchain00412_n53_α:
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00412_n59_α
# IR_LIT_STRING
 xchain00412_n54_α:
 mov qword ptr [rbp + 1424], 1
 mov rax, qword ptr [rip + .Lx00436_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain00412_n48_α
.Lx00436_0:
 .quad .Lx00436_0_s
.Lx00436_0_s:
 .string ": file truncated"
# IR_LIT_STRING
 xchain00412_n55_α:
 mov qword ptr [rbp + 1824], 1
 mov rax, qword ptr [rip + .Lx00437_0]
 mov qword ptr [rbp + 1832], rax
 jmp xchain00412_n61_α
.Lx00437_0:
 .quad .Lx00437_0_s
.Lx00437_0_s:
 .string "usage: "
 xchain00412_n56_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 2576]
 cmp eax, 100
 je .Lx00438_0
 mov eax, dword ptr [rbp + 2640]
 cmp eax, 100
 je .Lx00438_0
 mov eax, dword ptr [rbp + 2576]
 cmp eax, 6
 jne .Lx00438_2
 mov eax, dword ptr [rbp + 2640]
 cmp eax, 6
 jne .Lx00438_2
.Lx00438_1:
 mov rax, qword ptr [rbp + 2584]
 mov rcx, qword ptr [rbp + 2648]
 cmp rax, rcx
 jne xchain00412_n21_af
 mov rcx, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 2544], rcx
 mov rcx, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 2552], rcx
 jmp xchain00412_n31_α
.Lx00438_0:
 mov rdi, qword ptr [rbp + 2576]
 mov rsi, qword ptr [rbp + 2584]
 mov rdx, qword ptr [rbp + 2640]
 mov rcx, qword ptr [rbp + 2648]
 mov r8d, 9
 lea r9, [rbp + 2544]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00438_1
 cmp eax, 1
 je xchain00412_n21_af
 jmp xchain00412_n31_α
.Lx00438_2:
 mov rdi, qword ptr [rbp + 2576]
 mov rsi, qword ptr [rbp + 2584]
 mov rdx, qword ptr [rbp + 2640]
 mov rcx, qword ptr [rbp + 2648]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00412_n21_af
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 2552], rax
 jmp xchain00412_n31_α
# IR_SUBSCRIPT x[i] variable
 xchain00412_n57_α:
 mov rdi, qword ptr [rbp + 2176]
 mov rsi, qword ptr [rbp + 2184]
 mov rdx, qword ptr [rbp + 2208]
 mov rcx, qword ptr [rbp + 2216]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00412_n31_af
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain00412_n62_α
# IR_VAR_REF
 xchain00412_n58_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 jmp xchain00412_n63_α
# IR_LIT_INTEGER
 xchain00412_n59_α:
 mov qword ptr [rbp + 1136], 6
 mov rax, qword ptr [rip + .Lx00439_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain00412_n64_α
.Lx00439_0:
 .quad 16
# IR_VAR
 xchain00412_n60_α:
 mov rax, qword ptr [rbp + 3328]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 3336]
 mov qword ptr [rbp + 968], rax
 jmp xchain00412_n65_α
# KEYWORD_read
 xchain00412_n61_α:
 mov rdi, qword ptr [rip + .Lx00440_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00412_n19_α
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 jmp xchain00412_n67_α
 xchain00412_n61_β:
 jmp xchain00412_n19_α
.Lx00440_0:
 .quad .Lx00440_0_s
.Lx00440_0_s:
 .string "&progname"
# IR_DEREF variable -> value
 xchain00412_n62_α:
 mov rdi, qword ptr [rbp + 2240]
 mov rsi, qword ptr [rbp + 2248]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00412_n31_af
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 jmp xchain00412_n42_α
# IR_LIT_INTEGER
 xchain00412_n63_α:
 mov qword ptr [rbp + 2464], 6
 mov rax, qword ptr [rip + .Lx00441_0]
 mov qword ptr [rbp + 2472], rax
 jmp xchain00412_n68_α
.Lx00441_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00412_n64_α:
 mov qword ptr [rbp + 1168], 6
 mov rax, qword ptr [rip + .Lx00442_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain00412_n69_α
.Lx00442_0:
 .quad 23
# IR_LIT_INTEGER
 xchain00412_n65_α:
 mov qword ptr [rbp + 992], 6
 mov rax, qword ptr [rip + .Lx00443_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00412_n70_α
.Lx00443_0:
 .quad 16
# IR_VAR
 xchain00412_n66_α:
 mov rax, qword ptr [rbp + 3360]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 696], rax
 jmp xchain00412_n71_α
# IR_LIT_STRING
 xchain00412_n67_α:
 mov qword ptr [rbp + 1888], 1
 mov rax, qword ptr [rip + .Lx00444_0]
 mov qword ptr [rbp + 1896], rax
 jmp xchain00412_n22_α
.Lx00444_0:
 .quad .Lx00444_0_s
.Lx00444_0_s:
 .string " file"
# IR_SUBSCRIPT x[i] variable
 xchain00412_n68_α:
 mov rdi, qword ptr [rbp + 2432]
 mov rsi, qword ptr [rbp + 2440]
 mov rdx, qword ptr [rbp + 2464]
 mov rcx, qword ptr [rbp + 2472]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00412_n31_af
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 jmp xchain00412_n73_α
# IR_SUBSCRIPT section extended (x[i+:n]/x[i-:n]; end pre-computed by IR_BINOP; wraparound→ω)
 xchain00412_n69_α:
 mov rdi, qword ptr [rbp + 1104]
 mov rsi, qword ptr [rbp + 1112]
 mov rdx, qword ptr [rbp + 1136]
 mov rcx, qword ptr [rbp + 1144]
 mov r8, qword ptr [rbp + 1168]
 mov r9, qword ptr [rbp + 1176]
 call subscript_get2_ext@PLT
 cmp eax, 99
 je xchain00412_n60_α
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain00412_n74_α
# IR_LIT_INTEGER
 xchain00412_n70_α:
 mov qword ptr [rbp + 1024], 6
 mov rax, qword ptr [rip + .Lx00445_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00412_n75_α
.Lx00445_0:
 .quad 23
# IR_VAR
 xchain00412_n71_α:
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 728], rax
 jmp xchain00412_n76_α
 xchain00412_n72_α:
 mov edi, 0
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00446_1
 lea rcx, [rip + .Lx00446_3]
 lea rdx, [rip + .Lx00446_4]
 jmp rax
.Lx00446_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00446_2
.Lx00446_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00446_2
.Lx00446_1:
 call rt_faildescr@PLT
.Lx00446_2:
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain00412_n77_α
 jmp xchain00412_n77_α
 xchain00412_n72_β:
 jmp xchain00412_n77_α
.Lx00446_0:
 .quad .Lx00446_0_s
.Lx00446_0_s:
 .string "loadfile"
# IR_DEREF variable -> value
 xchain00412_n73_α:
 mov rdi, qword ptr [rbp + 2496]
 mov rsi, qword ptr [rbp + 2504]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00412_n31_af
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain00412_n43_α
 xchain00412_n74_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1072]
 mov rdx, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain00412_n60_α
# IR_SUBSCRIPT section extended (x[i+:n]/x[i-:n]; end pre-computed by IR_BINOP; wraparound→ω)
 xchain00412_n75_α:
 mov rdi, qword ptr [rbp + 960]
 mov rsi, qword ptr [rbp + 968]
 mov rdx, qword ptr [rbp + 992]
 mov rcx, qword ptr [rbp + 1000]
 mov r8, qword ptr [rbp + 1024]
 mov r9, qword ptr [rbp + 1032]
 call subscript_get2_ext@PLT
 cmp eax, 99
 je xchain00412_n66_α
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain00412_n78_α
# IR_COERCE_NUMERIC
 xchain00412_n76_α:
 mov eax, dword ptr [rbp + 3360]
 cmp eax, 7
 je .Lx00447_1
 cmp eax, 6
 jne .Lx00447_0
 mov eax, dword ptr [rbp + 3376]
 cmp eax, 6
 jne .Lx00447_0
.Lx00447_1:
 mov rax, qword ptr [rbp + 3360]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 664], rax
 jmp xchain00412_n79_α
.Lx00447_0:
 lea rdi, [rbp + 3360]
 lea rsi, [rbp + 3376]
 lea rdx, [rbp + 656]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00412_n79_α
# IR_VAR
 xchain00412_n77_α:
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 312], rax
 jmp xchain00412_n80_α
 xchain00412_n78_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain00412_n66_α
# IR_COERCE_NUMERIC
 xchain00412_n79_α:
 mov eax, dword ptr [rbp + 3376]
 cmp eax, 7
 je .Lx00448_1
 cmp eax, 6
 jne .Lx00448_0
 mov eax, dword ptr [rbp + 3360]
 cmp eax, 6
 jne .Lx00448_0
.Lx00448_1:
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 632], rax
 jmp xchain00412_n82_α
.Lx00448_0:
 lea rdi, [rbp + 3376]
 lea rsi, [rbp + 3360]
 lea rdx, [rbp + 624]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00412_n82_α
 xchain00412_n80_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+272]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 280], rax
  .section .rodata
  .Lrkfn1496: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1496]
 lea rsi, [rbp + 272]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain00412_n81_α
 jmp xchain00412_n81_α
 xchain00412_n80_β:
 jmp xchain00412_n81_α
# IR_VAR
 xchain00412_n81_α:
 mov rax, qword ptr [rbp + 3328]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 3336]
 mov qword ptr [rbp + 232], rax
 jmp xchain00412_n83_α
 xchain00412_n82_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 656]
 cmp eax, 100
 je .Lx00449_0
 mov eax, dword ptr [rbp + 624]
 cmp eax, 100
 je .Lx00449_0
 mov eax, dword ptr [rbp + 656]
 cmp eax, 6
 jne .Lx00449_2
 mov eax, dword ptr [rbp + 624]
 cmp eax, 6
 jne .Lx00449_2
.Lx00449_1:
 mov rax, qword ptr [rbp + 664]
 mov rcx, qword ptr [rbp + 632]
 add rax, rcx
 mov qword ptr [rbp + 592], 6
 mov qword ptr [rbp + 600], rax
 jmp xchain00412_n85_α
.Lx00449_0:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 mov r8d, 0
 lea r9, [rbp + 592]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00412_n85_α
.Lx00449_2:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00412_n72_α
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00412_n85_α
 xchain00412_n82_β:
 jmp xchain00412_n72_α
 xchain00412_n83_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1501: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1501]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00412_n84_α
 jmp xchain00412_n84_α
 xchain00412_n83_β:
 jmp xchain00412_n84_α
# IR_VAR
 xchain00412_n84_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00412_n86_α
# IR_LIT_REAL
 xchain00412_n85_α:
 mov qword ptr [rbp + 752], 7
 mov rax, qword ptr [rip + .Lx00450_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00412_n87_α
.Lx00450_0:
 .quad 4611686018427387904
 xchain00412_n86_α:
 mov qword ptr [rbp + 112], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 144]
 mov rdx, qword ptr [rbp + 152]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00451_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00451_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00451_3]
 lea rdx, [rip + .Lx00451_4]
 jmp rax
.Lx00451_3:
 mov qword ptr [rbp + 120], rsp
 mov rax, qword ptr [rbp + 112]
 test rax, rax
 jne .Lx00451_5
 mov qword ptr [rbp + 112], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00451_2
.Lx00451_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00451_2
.Lx00451_4:
 mov rax, qword ptr [rbp + 112]
 test rax, rax
 jne .Lx00451_6
 mov qword ptr [rbp + 112], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00451_2
.Lx00451_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00451_2
.Lx00451_1:
 call rt_faildescr@PLT
.Lx00451_2:
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp xchain00412_n88_α
 xchain00412_n86_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 120]
 jmp qword ptr [rsp]
.Lx00451_0:
 .quad .Lx00451_0_s
.Lx00451_0_s:
 .string "kgen"
# IR_COERCE_NUMERIC
 xchain00412_n87_α:
 mov eax, dword ptr [rbp + 592]
 cmp eax, 7
 je .Lx00452_1
 cmp eax, 6
 jne .Lx00452_0
 mov eax, dword ptr [rbp + 752]
 cmp eax, 6
 jne .Lx00452_0
.Lx00452_1:
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
 jmp xchain00412_n89_α
.Lx00452_0:
 lea rdi, [rbp + 592]
 lea rsi, [rbp + 752]
 lea rdx, [rbp + 560]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00412_n89_α
 xchain00412_n88_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 80]
 mov rdx, qword ptr [rbp + 88]
 call rt_arg_stage@PLT
 mov edi, 2
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00453_1
 lea rcx, [rip + .Lx00453_3]
 lea rdx, [rip + .Lx00453_4]
 jmp rax
.Lx00453_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00453_2
.Lx00453_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00453_2
.Lx00453_1:
 call rt_faildescr@PLT
.Lx00453_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je xchain00412_n86_β
 jmp xchain00412_n86_β
 xchain00412_n88_β:
 jmp xchain00412_n86_β
.Lx00453_0:
 .quad .Lx00453_0_s
.Lx00453_0_s:
 .string "dumpcode"
 xchain00412_n89_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00412_n72_α
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00412_n90_α
# KEYWORD_read
 xchain00412_n90_α:
 mov rdi, qword ptr [rip + .Lx00454_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00412_n72_α
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain00412_n91_α
 xchain00412_n90_β:
 jmp xchain00412_n72_α
.Lx00454_0:
 .quad .Lx00454_0_s
.Lx00454_0_s:
 .string "&pi"
# IR_LIT_INTEGER
 xchain00412_n91_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx00455_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain00412_n92_α
.Lx00455_0:
 .quad 9999999
# IR_COERCE_NUMERIC
 xchain00412_n92_α:
 mov eax, dword ptr [rbp + 848]
 cmp eax, 7
 je .Lx00456_1
 cmp eax, 6
 jne .Lx00456_0
 mov eax, dword ptr [rbp + 880]
 cmp eax, 6
 jne .Lx00456_0
.Lx00456_1:
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 824], rax
 jmp xchain00412_n93_α
.Lx00456_0:
 lea rdi, [rbp + 848]
 lea rsi, [rbp + 880]
 lea rdx, [rbp + 816]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00412_n93_α
 xchain00412_n93_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 816]
 cmp eax, 100
 je .Lx00457_0
 mov eax, dword ptr [rbp + 816]
 cmp eax, 6
 jne .Lx00457_2
.Lx00457_1:
 mov rax, qword ptr [rbp + 824]
 mov rcx, 9999999
 cqo
 idiv rcx
 mov qword ptr [rbp + 784], 6
 mov qword ptr [rbp + 792], rax
 jmp xchain00412_n94_α
.Lx00457_0:
 mov rdi, qword ptr [rbp + 816]
 mov rsi, qword ptr [rbp + 824]
 mov rdx, qword ptr [rbp + 880]
 mov rcx, qword ptr [rbp + 888]
 mov r8d, 3
 lea r9, [rbp + 784]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00412_n94_α
.Lx00457_2:
 mov rdi, qword ptr [rbp + 816]
 mov rsi, qword ptr [rbp + 824]
 mov rdx, qword ptr [rbp + 880]
 mov rcx, qword ptr [rbp + 888]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00412_n72_α
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain00412_n94_α
 xchain00412_n93_β:
 jmp xchain00412_n72_α
# IR_COERCE_NUMERIC
 xchain00412_n94_α:
 mov eax, dword ptr [rbp + 528]
 cmp eax, 7
 je .Lx00458_1
 cmp eax, 6
 jne .Lx00458_0
 mov eax, dword ptr [rbp + 784]
 cmp eax, 6
 jne .Lx00458_0
.Lx00458_1:
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 504], rax
 jmp xchain00412_n95_α
.Lx00458_0:
 lea rdi, [rbp + 528]
 lea rsi, [rbp + 784]
 lea rdx, [rbp + 496]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00412_n95_α
# IR_COERCE_NUMERIC
 xchain00412_n95_α:
 mov eax, dword ptr [rbp + 784]
 cmp eax, 7
 je .Lx00459_1
 cmp eax, 6
 jne .Lx00459_0
 mov eax, dword ptr [rbp + 528]
 cmp eax, 6
 jne .Lx00459_0
.Lx00459_1:
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 472], rax
 jmp xchain00412_n96_α
.Lx00459_0:
 lea rdi, [rbp + 784]
 lea rsi, [rbp + 528]
 lea rdx, [rbp + 464]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00412_n96_α
 xchain00412_n96_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 496]
 cmp eax, 100
 je .Lx00460_0
 mov eax, dword ptr [rbp + 464]
 cmp eax, 100
 je .Lx00460_0
 mov eax, dword ptr [rbp + 496]
 cmp eax, 6
 jne .Lx00460_2
 mov eax, dword ptr [rbp + 464]
 cmp eax, 6
 jne .Lx00460_2
.Lx00460_1:
 mov rax, qword ptr [rbp + 504]
 mov rcx, qword ptr [rbp + 472]
 imul rax, rcx
 mov qword ptr [rbp + 432], 6
 mov qword ptr [rbp + 440], rax
 jmp xchain00412_n97_α
.Lx00460_0:
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 mov rdx, qword ptr [rbp + 464]
 mov rcx, qword ptr [rbp + 472]
 mov r8d, 2
 lea r9, [rbp + 432]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00412_n97_α
.Lx00460_2:
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 mov rdx, qword ptr [rbp + 464]
 mov rcx, qword ptr [rbp + 472]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00412_n72_α
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00412_n97_α
 xchain00412_n96_β:
 jmp xchain00412_n72_α
 xchain00412_n97_α:
# BOX IR_CALL sin(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+400]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 408], rax
  .section .rodata
  .Lrkfn1522: .string "sin"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1522]
 lea rsi, [rbp + 400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00412_n72_α
 jmp xchain00412_n98_α
 xchain00412_n97_β:
 jmp xchain00412_n72_α
# IR_ASSIGN gva
 xchain00412_n98_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00412_n72_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 3320]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 3320]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
