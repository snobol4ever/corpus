  .intel_syntax noprefix
  .text
  .globl proc_rule$3_α
proc_rule$3_α:
#=======================================================================================================================
    .global proc_rule$3_α
    .global proc_rule$3_β
    .global proc_rule$3_γ
    .global proc_rule$3_ω
  sub rsp, 2528
  mov [rsp + 2504], rcx
  mov [rsp + 2512], rdx
  mov [rsp + 2520], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 2496
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 2456], rsp
  mov rdi, rsp
  mov esi, 2496
  call rt_jmp_frame_lexprep@PLT
proc_rule$3_α_body:
lea rax, [rip + xchain0_n28_β]
mov qword ptr [rbp + 2432], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2]
 lea rsi, [rbp + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_rule$3_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_rule$3_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [rbp + 2400], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 2408], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
.Lx5_0:
 .quad 1
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2368] -> [zr+2320]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2328], rax
# marshal arg1 = producer-box slot [zr+2400] -> [zr+2336]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2344], rax
  .section .rodata
  .Lrkfn7: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn7]
 lea rsi, [rbp + 2320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1872]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1880], rax
  .section .rodata
  .Lrkfn11: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn11]
 lea rsi, [rbp + 1872]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 cmp eax, 99
 je proc_rule$3_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_rule$3_ω
# IR_VAR_REF
 xchain0_n6_α:
 lea rdi, [rbp + 2464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n14_α
 xchain0_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn17: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn17]
 lea rsi, [rbp + 2192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n9_α:
 mov qword ptr [rbp + 1824], 6
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [rbp + 1832], rax
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n14_α
.Lx18_0:
 .quad 2
# IR_VAR_REF
 xchain0_n10_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n5_α
 xchain0_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn22: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn22]
 lea rsi, [rbp + 1744]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n12_α:
 lea rdi, [rbp + 2480]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n13_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n14_α
 xchain0_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1296]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1304], rax
  .section .rodata
  .Lrkfn28: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn28]
 lea rsi, [rbp + 1296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je proc_rule$3_ω
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp proc_rule$3_ω
 xchain0_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2112] -> [zr+2064]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2072], rax
# marshal arg1 = producer-box slot [zr+2144] -> [zr+2080]
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2088], rax
  .section .rodata
  .Lrkfn30: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn30]
 lea rsi, [rbp + 2064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n16_α:
 lea rdi, [rbp + 2464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain0_n19_α
 xchain0_n16_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n17_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain0_n20_α
 xchain0_n17_β:
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n18_α:
 lea rdi, [rbp + 2464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 jmp xchain0_n21_α
 xchain0_n18_β:
 jmp xchain0_n5_α
 xchain0_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1616]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1624], rax
# marshal arg1 = producer-box slot [zr+1696] -> [zr+1632]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1640], rax
  .section .rodata
  .Lrkfn38: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn38]
 lea rsi, [rbp + 1616]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n22_α
 xchain0_n19_β:
 jmp xchain0_n14_α
# IR_LIT_INTEGER
 xchain0_n20_α:
 mov qword ptr [rbp + 1248], 6
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp xchain0_n27_α
.Lx39_0:
 .quad 3
# IR_VAR_REF
 xchain0_n21_α:
 lea rdi, [rbp + 2480]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n22_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp xchain0_n14_α
 xchain0_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1168]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1176], rax
# marshal arg1 = producer-box slot [zr+1248] -> [zr+1184]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1192], rax
  .section .rodata
  .Lrkfn45: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn45]
 lea rsi, [rbp + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n27_α
 xchain0_n24_α:
 mov qword ptr [rbp + 1952], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1984]
 mov rdx, qword ptr [rbp + 1992]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2016]
 mov rdx, qword ptr [rbp + 2024]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx47_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx47_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx47_3]
 lea rdx, [rip + .Lx47_4]
 jmp rax
.Lx47_3:
 mov rax, qword ptr [rbp + 1952]
 test rax, rax
 jne .Lx47_5
 mov qword ptr [rbp + 1952], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx47_2
.Lx47_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx47_2
.Lx47_4:
 mov rax, qword ptr [rbp + 1952]
 test rax, rax
 jne .Lx47_6
 mov qword ptr [rbp + 1952], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx47_2
.Lx47_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx47_2
.Lx47_1:
 call rt_faildescr@PLT
.Lx47_2:
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n28_α
 xchain0_n24_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "rule1/2"
# IR_VAR_REF
 xchain0_n25_α:
 lea rdi, [rbp + 2480]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain0_n29_α
 xchain0_n25_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n26_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain0_n30_α
 xchain0_n26_β:
 jmp xchain0_n27_α
 xchain0_n27_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+720]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 728], rax
  .section .rodata
  .Lrkfn53: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn53]
 lea rsi, [rbp + 720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je proc_rule$3_ω
 jmp xchain0_n31_α
 xchain0_n27_β:
 jmp proc_rule$3_ω
# IR_SUSPEND yield+resume
 xchain0_n28_α:
 lea rax, [rip + xchain0_n28_β]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule$3_γ
 xchain0_n28_β:
 jmp xchain0_n24_β
 xchain0_n29_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1536] -> [zr+1488]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1496], rax
# marshal arg1 = producer-box slot [zr+1568] -> [zr+1504]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1512], rax
  .section .rodata
  .Lrkfn57: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn57]
 lea rsi, [rbp + 1488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n32_α
 xchain0_n29_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n30_α:
 lea rdi, [rbp + 2464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain0_n33_α
 xchain0_n30_β:
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n31_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain0_n34_α
 xchain0_n31_β:
 jmp xchain0_n41_α
# IR_VAR_REF
 xchain0_n32_α:
 lea rdi, [rbp + 2464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain0_n35_α
 xchain0_n32_β:
 jmp xchain0_n14_α
 xchain0_n33_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1040]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1048], rax
# marshal arg1 = producer-box slot [zr+1120] -> [zr+1056]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1064], rax
  .section .rodata
  .Lrkfn65: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn65]
 lea rsi, [rbp + 1040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n36_α
 xchain0_n33_β:
 jmp xchain0_n27_α
# IR_LIT_INTEGER
 xchain0_n34_α:
 mov qword ptr [rbp + 672], 6
 mov rax, qword ptr [rip + .Lx66_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain0_n37_α
 xchain0_n34_β:
 jmp xchain0_n41_α
.Lx66_0:
 .quad 4
# IR_VAR_REF
 xchain0_n35_α:
 lea rdi, [rbp + 2480]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain0_n38_α
 xchain0_n35_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n36_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain0_n39_α
 xchain0_n36_β:
 jmp xchain0_n27_α
 xchain0_n37_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+608]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn72: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn72]
 lea rsi, [rbp + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain0_n41_α
 jmp xchain0_n40_α
 xchain0_n37_β:
 jmp xchain0_n41_α
 xchain0_n38_α:
 mov qword ptr [rbp + 1376], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1408]
 mov rdx, qword ptr [rbp + 1416]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1440]
 mov rdx, qword ptr [rbp + 1448]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx74_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx74_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx74_3]
 lea rdx, [rip + .Lx74_4]
 jmp rax
.Lx74_3:
 mov rax, qword ptr [rbp + 1376]
 test rax, rax
 jne .Lx74_5
 mov qword ptr [rbp + 1376], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx74_2
.Lx74_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx74_2
.Lx74_4:
 mov rax, qword ptr [rbp + 1376]
 test rax, rax
 jne .Lx74_6
 mov qword ptr [rbp + 1376], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx74_2
.Lx74_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx74_2
.Lx74_1:
 call rt_faildescr@PLT
.Lx74_2:
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n42_α
 xchain0_n38_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx74_0:
 .quad .Lx74_0_s
.Lx74_0_s:
 .string "rule2/2"
# IR_VAR_REF
 xchain0_n39_α:
 lea rdi, [rbp + 2480]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain0_n43_α
 xchain0_n39_β:
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n40_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain0_n44_α
 xchain0_n40_β:
 jmp xchain0_n41_α
 xchain0_n41_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn80: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn80]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_rule$3_ω
 jmp proc_rule$3_ω
 xchain0_n41_β:
 jmp proc_rule$3_ω
# IR_SUSPEND yield+resume
 xchain0_n42_α:
 lea rax, [rip + xchain0_n42_β]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule$3_γ
 xchain0_n42_β:
 jmp xchain0_n38_β
 xchain0_n43_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+928]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 936], rax
  .section .rodata
  .Lrkfn84: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn84]
 lea rsi, [rbp + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n45_α
 xchain0_n43_β:
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n44_α:
 lea rdi, [rbp + 2464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain0_n46_α
 xchain0_n44_β:
 jmp xchain0_n41_α
# IR_VAR_REF
 xchain0_n45_α:
 lea rdi, [rbp + 2464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain0_n47_α
 xchain0_n45_β:
 jmp xchain0_n27_α
 xchain0_n46_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+464]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 472], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+480]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 488], rax
  .section .rodata
  .Lrkfn90: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn90]
 lea rsi, [rbp + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain0_n41_α
 jmp xchain0_n48_α
 xchain0_n46_β:
 jmp xchain0_n41_α
# IR_VAR_REF
 xchain0_n47_α:
 lea rdi, [rbp + 2480]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain0_n49_α
 xchain0_n47_β:
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n48_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain0_n50_α
 xchain0_n48_β:
 jmp xchain0_n41_α
 xchain0_n49_α:
 mov qword ptr [rbp + 800], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 864]
 mov rdx, qword ptr [rbp + 872]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx96_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx96_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx96_3]
 lea rdx, [rip + .Lx96_4]
 jmp rax
.Lx96_3:
 mov rax, qword ptr [rbp + 800]
 test rax, rax
 jne .Lx96_5
 mov qword ptr [rbp + 800], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx96_2
.Lx96_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx96_2
.Lx96_4:
 mov rax, qword ptr [rbp + 800]
 test rax, rax
 jne .Lx96_6
 mov qword ptr [rbp + 800], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx96_2
.Lx96_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx96_2
.Lx96_1:
 call rt_faildescr@PLT
.Lx96_2:
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n51_α
 xchain0_n49_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx96_0:
 .quad .Lx96_0_s
.Lx96_0_s:
 .string "rule3/2"
# IR_VAR_REF
 xchain0_n50_α:
 lea rdi, [rbp + 2480]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain0_n52_α
 xchain0_n50_β:
 jmp xchain0_n41_α
# IR_SUSPEND yield+resume
 xchain0_n51_α:
 lea rax, [rip + xchain0_n51_β]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule$3_γ
 xchain0_n51_β:
 jmp xchain0_n49_β
 xchain0_n52_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+352]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 360], rax
  .section .rodata
  .Lrkfn102: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn102]
 lea rsi, [rbp + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain0_n41_α
 jmp xchain0_n53_α
 xchain0_n52_β:
 jmp xchain0_n41_α
# IR_VAR_REF
 xchain0_n53_α:
 lea rdi, [rbp + 2464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain0_n54_α
 xchain0_n53_β:
 jmp xchain0_n41_α
# IR_VAR_REF
 xchain0_n54_α:
 lea rdi, [rbp + 2480]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain0_n55_α
 xchain0_n54_β:
 jmp xchain0_n41_α
 xchain0_n55_α:
 mov qword ptr [rbp + 224], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx108_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx108_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx108_3]
 lea rdx, [rip + .Lx108_4]
 jmp rax
.Lx108_3:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx108_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx108_2
.Lx108_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx108_2
.Lx108_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx108_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx108_2
.Lx108_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx108_2
.Lx108_1:
 call rt_faildescr@PLT
.Lx108_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain0_n41_α
 jmp xchain0_n56_α
 xchain0_n55_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx108_0:
 .quad .Lx108_0_s
.Lx108_0_s:
 .string "rule4/2"
# IR_SUSPEND yield+resume
 xchain0_n56_α:
 lea rax, [rip + xchain0_n56_β]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule$3_γ
 xchain0_n56_β:
 jmp xchain0_n55_β
proc_rule$3_res:
add rsp, 8
pop rbp
proc_rule$3_β:
jmp qword ptr [rbp + 2432]
proc_rule$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule$3_res]
push rax
mov rax, [rbp + 2504]
mov rbp, [rbp + 2520]
jmp rax
proc_rule$3_ω:
mov rax, [rbp + 2512]
lea rsp, [rbp + 2528]
mov rbp, [rbp + 2520]
jmp rax
  .globl proc_rule4$2_α
proc_rule4$2_α:
#=======================================================================================================================
    .global proc_rule4$2_α
    .global proc_rule4$2_β
    .global proc_rule4$2_γ
    .global proc_rule4$2_ω
  sub rsp, 1568
  mov [rsp + 1544], rcx
  mov [rsp + 1552], rdx
  mov [rsp + 1560], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1536
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1464], rsp
  mov rdi, rsp
  mov esi, 1536
  call rt_jmp_frame_lexprep@PLT
proc_rule4$2_α_body:
lea rax, [rip + xchain111_n17_β]
mov qword ptr [rbp + 1440], rax
 xchain111_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn113: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn113]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_rule4$2_ω
 jmp xchain111_n1_α
 xchain111_n0_β:
 jmp proc_rule4$2_ω
# IR_VAR_REF
 xchain111_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain111_n2_α
 xchain111_n1_β:
 jmp xchain111_n10_α
# IR_LIT_STRING
 xchain111_n2_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx116_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain111_n3_α
 xchain111_n2_β:
 jmp proc_rule4$2_ω
.Lx116_0:
 .quad .Lx116_0_s
.Lx116_0_s:
 .string "."
# IR_LIT_STRING
 xchain111_n3_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx117_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain111_n4_α
 xchain111_n3_β:
 jmp proc_rule4$2_ω
.Lx117_0:
 .quad .Lx117_0_s
.Lx117_0_s:
 .string "u"
# IR_LIT_STRING
 xchain111_n4_α:
 mov qword ptr [rbp + 1264], 1
 mov rax, qword ptr [rip + .Lx118_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain111_n5_α
 xchain111_n4_β:
 jmp proc_rule4$2_ω
.Lx118_0:
 .quad .Lx118_0_s
.Lx118_0_s:
 .string "."
# IR_LIT_STRING
 xchain111_n5_α:
 mov qword ptr [rbp + 1152], 1
 mov rax, qword ptr [rip + .Lx119_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain111_n6_α
 xchain111_n5_β:
 jmp proc_rule4$2_ω
.Lx119_0:
 .quad .Lx119_0_s
.Lx119_0_s:
 .string "u"
# IR_VAR_REF
 xchain111_n6_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain111_n7_α
 xchain111_n6_β:
 jmp proc_rule4$2_ω
 xchain111_n7_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1200]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1208], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+1216]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1224], rax
# marshal arg2 = producer-box slot [zr+1120] -> [zr+1232]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1240], rax
  .section .rodata
  .Lrkfn123: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn123]
 lea rsi, [rbp + 1200]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je proc_rule4$2_ω
 jmp xchain111_n8_α
 xchain111_n7_β:
 jmp proc_rule4$2_ω
 xchain111_n8_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1344]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1352], rax
# marshal arg1 = producer-box slot [zr+1296] -> [zr+1360]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1368], rax
# marshal arg2 = producer-box slot [zr+1184] -> [zr+1376]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1384], rax
  .section .rodata
  .Lrkfn125: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn125]
 lea rsi, [rbp + 1344]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain111_n10_α
 jmp xchain111_n9_α
 xchain111_n8_β:
 jmp xchain111_n10_α
 xchain111_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1040]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1048], rax
# marshal arg1 = producer-box slot [zr+1328] -> [zr+1056]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1064], rax
  .section .rodata
  .Lrkfn127: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn127]
 lea rsi, [rbp + 1040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain111_n10_α
 jmp xchain111_n11_α
 xchain111_n9_β:
 jmp xchain111_n10_α
 xchain111_n10_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+864]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 872], rax
  .section .rodata
  .Lrkfn129: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn129]
 lea rsi, [rbp + 864]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je proc_rule4$2_ω
 jmp xchain111_n12_α
 xchain111_n10_β:
 jmp proc_rule4$2_ω
# IR_VAR_REF
 xchain111_n11_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain111_n13_α
 xchain111_n11_β:
 jmp xchain111_n10_α
# IR_VAR_REF
 xchain111_n12_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain111_n14_α
 xchain111_n12_β:
 jmp xchain111_n21_α
# IR_VAR_REF
 xchain111_n13_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain111_n15_α
 xchain111_n13_β:
 jmp xchain111_n10_α
# IR_LIT_STRING
 xchain111_n14_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx136_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain111_n16_α
 xchain111_n14_β:
 jmp proc_rule4$2_ω
.Lx136_0:
 .quad .Lx136_0_s
.Lx136_0_s:
 .string "."
 xchain111_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+928]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 936], rax
  .section .rodata
  .Lrkfn138: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn138]
 lea rsi, [rbp + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain111_n10_α
 jmp xchain111_n17_α
 xchain111_n15_β:
 jmp xchain111_n10_α
# IR_VAR_REF
 xchain111_n16_α:
 lea rdi, [rbp + 1504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain111_n18_α
 xchain111_n16_β:
 jmp proc_rule4$2_ω
# IR_SUSPEND yield+resume
 xchain111_n17_α:
 lea rax, [rip + xchain111_n17_β]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule4$2_γ
 xchain111_n17_β:
 jmp xchain111_n10_α
# IR_VAR_REF
 xchain111_n18_α:
 lea rdi, [rbp + 1472]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain111_n19_α
 xchain111_n18_β:
 jmp proc_rule4$2_ω
 xchain111_n19_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+752]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 760], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+768]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 776], rax
# marshal arg2 = producer-box slot [zr+672] -> [zr+784]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 792], rax
  .section .rodata
  .Lrkfn146: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn146]
 lea rsi, [rbp + 752]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain111_n21_α
 jmp xchain111_n20_α
 xchain111_n19_β:
 jmp xchain111_n21_α
 xchain111_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+608]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn148: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn148]
 lea rsi, [rbp + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain111_n21_α
 jmp xchain111_n22_α
 xchain111_n20_β:
 jmp xchain111_n21_α
 xchain111_n21_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn150: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn150]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_rule4$2_ω
 jmp proc_rule4$2_ω
 xchain111_n21_β:
 jmp proc_rule4$2_ω
# IR_VAR_REF
 xchain111_n22_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain111_n23_α
 xchain111_n22_β:
 jmp xchain111_n21_α
# IR_LIT_STRING
 xchain111_n23_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx153_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain111_n24_α
 xchain111_n23_β:
 jmp proc_rule4$2_ω
.Lx153_0:
 .quad .Lx153_0_s
.Lx153_0_s:
 .string "."
# IR_VAR_REF
 xchain111_n24_α:
 lea rdi, [rbp + 1504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain111_n25_α
 xchain111_n24_β:
 jmp proc_rule4$2_ω
# IR_VAR_REF
 xchain111_n25_α:
 lea rdi, [rbp + 1488]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain111_n26_α
 xchain111_n25_β:
 jmp proc_rule4$2_ω
 xchain111_n26_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+480]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 488], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+496]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 504], rax
# marshal arg2 = producer-box slot [zr+400] -> [zr+512]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 520], rax
  .section .rodata
  .Lrkfn159: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn159]
 lea rsi, [rbp + 480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain111_n21_α
 jmp xchain111_n27_α
 xchain111_n26_β:
 jmp xchain111_n21_α
 xchain111_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 328], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+336]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn161: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn161]
 lea rsi, [rbp + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain111_n21_α
 jmp xchain111_n28_α
 xchain111_n27_β:
 jmp xchain111_n21_α
# IR_VAR_REF
 xchain111_n28_α:
 lea rdi, [rbp + 1472]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain111_n29_α
 xchain111_n28_β:
 jmp xchain111_n21_α
# IR_VAR_REF
 xchain111_n29_α:
 lea rdi, [rbp + 1488]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain111_n30_α
 xchain111_n29_β:
 jmp xchain111_n21_α
 xchain111_n30_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx167_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx167_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx167_3]
 lea rdx, [rip + .Lx167_4]
 jmp rax
.Lx167_3:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx167_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx167_2
.Lx167_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx167_2
.Lx167_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx167_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx167_2
.Lx167_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx167_2
.Lx167_1:
 call rt_faildescr@PLT
.Lx167_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain111_n21_α
 jmp xchain111_n31_α
 xchain111_n30_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx167_0:
 .quad .Lx167_0_s
.Lx167_0_s:
 .string "rule4/2"
# IR_SUSPEND yield+resume
 xchain111_n31_α:
 lea rax, [rip + xchain111_n31_β]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule4$2_γ
 xchain111_n31_β:
 jmp xchain111_n30_β
proc_rule4$2_res:
add rsp, 8
pop rbp
proc_rule4$2_β:
jmp qword ptr [rbp + 1440]
proc_rule4$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule4$2_res]
push rax
mov rax, [rbp + 1544]
mov rbp, [rbp + 1560]
jmp rax
proc_rule4$2_ω:
mov rax, [rbp + 1552]
lea rsp, [rbp + 1568]
mov rbp, [rbp + 1560]
jmp rax
  .globl proc_rule2$2_α
proc_rule2$2_α:
#=======================================================================================================================
    .global proc_rule2$2_α
    .global proc_rule2$2_β
    .global proc_rule2$2_γ
    .global proc_rule2$2_ω
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
proc_rule2$2_α_body:
lea rax, [rip + xchain170_n18_β]
mov qword ptr [rbp + 896], rax
 xchain170_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn172: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn172]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_rule2$2_ω
 jmp xchain170_n1_α
 xchain170_n0_β:
 jmp proc_rule2$2_ω
# IR_VAR_REF
 xchain170_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain170_n2_α
 xchain170_n1_β:
 jmp xchain170_n7_α
# IR_LIT_STRING
 xchain170_n2_α:
 mov qword ptr [rbp + 864], 1
 mov rax, qword ptr [rip + .Lx175_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain170_n3_α
 xchain170_n2_β:
 jmp proc_rule2$2_ω
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
 .string "."
# IR_LIT_STRING
 xchain170_n3_α:
 mov qword ptr [rbp + 752], 1
 mov rax, qword ptr [rip + .Lx176_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain170_n4_α
 xchain170_n3_β:
 jmp proc_rule2$2_ω
.Lx176_0:
 .quad .Lx176_0_s
.Lx176_0_s:
 .string "m"
# IR_VAR_REF
 xchain170_n4_α:
 lea rdi, [rbp + 928]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain170_n5_α
 xchain170_n4_β:
 jmp proc_rule2$2_ω
 xchain170_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+800]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 808], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+816]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 824], rax
# marshal arg2 = producer-box slot [zr+720] -> [zr+832]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 840], rax
  .section .rodata
  .Lrkfn180: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn180]
 lea rsi, [rbp + 800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain170_n7_α
 jmp xchain170_n6_α
 xchain170_n5_β:
 jmp xchain170_n7_α
 xchain170_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 648], rax
# marshal arg1 = producer-box slot [zr+784] -> [zr+656]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 664], rax
  .section .rodata
  .Lrkfn182: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn182]
 lea rsi, [rbp + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain170_n7_α
 jmp xchain170_n8_α
 xchain170_n6_β:
 jmp xchain170_n7_α
 xchain170_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn184: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn184]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_rule2$2_ω
 jmp proc_rule2$2_ω
 xchain170_n7_β:
 jmp proc_rule2$2_ω
# IR_VAR_REF
 xchain170_n8_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain170_n9_α
 xchain170_n8_β:
 jmp xchain170_n7_α
# IR_LIT_STRING
 xchain170_n9_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain170_n10_α
 xchain170_n9_β:
 jmp proc_rule2$2_ω
.Lx187_0:
 .quad .Lx187_0_s
.Lx187_0_s:
 .string "."
# IR_LIT_STRING
 xchain170_n10_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx188_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain170_n11_α
 xchain170_n10_β:
 jmp proc_rule2$2_ω
.Lx188_0:
 .quad .Lx188_0_s
.Lx188_0_s:
 .string "m"
# IR_VAR_REF
 xchain170_n11_α:
 lea rdi, [rbp + 944]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain170_n12_α
 xchain170_n11_β:
 jmp proc_rule2$2_ω
 xchain170_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+528]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+544]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 552], rax
# marshal arg2 = producer-box slot [zr+448] -> [zr+560]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 568], rax
  .section .rodata
  .Lrkfn192: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn192]
 lea rsi, [rbp + 528]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain170_n7_α
 jmp xchain170_n13_α
 xchain170_n12_β:
 jmp xchain170_n7_α
 xchain170_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+384]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 392], rax
  .section .rodata
  .Lrkfn194: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn194]
 lea rsi, [rbp + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain170_n7_α
 jmp xchain170_n14_α
 xchain170_n13_β:
 jmp xchain170_n7_α
# IR_VAR_REF
 xchain170_n14_α:
 lea rdi, [rbp + 928]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain170_n15_α
 xchain170_n14_β:
 jmp xchain170_n7_α
# IR_VAR_REF
 xchain170_n15_α:
 lea rdi, [rbp + 928]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain170_n16_α
 xchain170_n15_β:
 jmp xchain170_n7_α
# IR_VAR_REF
 xchain170_n16_α:
 lea rdi, [rbp + 944]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain170_n17_α
 xchain170_n16_β:
 jmp xchain170_n7_α
 xchain170_n17_α:
 mov qword ptr [rbp + 224], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx202_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx202_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx202_3]
 lea rdx, [rip + .Lx202_4]
 jmp rax
.Lx202_3:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx202_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx202_2
.Lx202_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx202_2
.Lx202_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx202_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx202_2
.Lx202_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx202_2
.Lx202_1:
 call rt_faildescr@PLT
.Lx202_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain170_n7_α
 jmp xchain170_n18_α
 xchain170_n17_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx202_0:
 .quad .Lx202_0_s
.Lx202_0_s:
 .string "my_append/3"
# IR_SUSPEND yield+resume
 xchain170_n18_α:
 lea rax, [rip + xchain170_n18_β]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule2$2_γ
 xchain170_n18_β:
 jmp xchain170_n17_β
proc_rule2$2_res:
add rsp, 8
pop rbp
proc_rule2$2_β:
jmp qword ptr [rbp + 896]
proc_rule2$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule2$2_res]
push rax
mov rax, [rbp + 968]
mov rbp, [rbp + 984]
jmp rax
proc_rule2$2_ω:
mov rax, [rbp + 976]
lea rsp, [rbp + 992]
mov rbp, [rbp + 984]
jmp rax
  .globl proc_theorem$3_α
proc_theorem$3_α:
#=======================================================================================================================
    .global proc_theorem$3_α
    .global proc_theorem$3_β
    .global proc_theorem$3_γ
    .global proc_theorem$3_ω
  sub rsp, 3040
  mov [rsp + 3016], rcx
  mov [rsp + 3024], rdx
  mov [rsp + 3032], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 3008
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 2904], rsp
  mov rdi, rsp
  mov esi, 3008
  call rt_jmp_frame_lexprep@PLT
proc_theorem$3_α_body:
lea rax, [rip + xchain205_n48_β]
mov qword ptr [rbp + 2880], rax
 xchain205_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn207: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn207]
 lea rsi, [rbp + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain205_n1_α
 xchain205_n0_β:
 jmp proc_theorem$3_ω
# IR_VAR_REF
 xchain205_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain205_n2_α
 xchain205_n1_β:
 jmp xchain205_n10_α
# IR_LIT_STRING
 xchain205_n2_α:
 mov qword ptr [rbp + 2848], 1
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [rbp + 2856], rax
 jmp xchain205_n3_α
 xchain205_n2_β:
 jmp proc_theorem$3_ω
.Lx210_0:
 .quad .Lx210_0_s
.Lx210_0_s:
 .string "."
# IR_LIT_STRING
 xchain205_n3_α:
 mov qword ptr [rbp + 2736], 1
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [rbp + 2744], rax
 jmp xchain205_n4_α
 xchain205_n3_β:
 jmp proc_theorem$3_ω
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
 .string "m"
# IR_LIT_STRING
 xchain205_n4_α:
 mov qword ptr [rbp + 2704], 1
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [rbp + 2712], rax
 jmp xchain205_n5_α
 xchain205_n4_β:
 jmp proc_theorem$3_ω
.Lx212_0:
 .quad .Lx212_0_s
.Lx212_0_s:
 .string "."
# IR_LIT_STRING
 xchain205_n5_α:
 mov qword ptr [rbp + 2592], 1
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [rbp + 2600], rax
 jmp xchain205_n6_α
 xchain205_n5_β:
 jmp proc_theorem$3_ω
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "i"
# IR_LIT_STRING
 xchain205_n6_α:
 mov qword ptr [rbp + 2560], 1
 mov rax, qword ptr [rip + .Lx214_0]
 mov qword ptr [rbp + 2568], rax
 jmp xchain205_n7_α
 xchain205_n6_β:
 jmp proc_theorem$3_ω
.Lx214_0:
 .quad .Lx214_0_s
.Lx214_0_s:
 .string "[]"
 xchain205_n7_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2704] -> [zr+2640]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2648], rax
# marshal arg1 = producer-box slot [zr+2592] -> [zr+2656]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2664], rax
# marshal arg2 = producer-box slot [zr+2560] -> [zr+2672]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2680], rax
  .section .rodata
  .Lrkfn216: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn216]
 lea rsi, [rbp + 2640]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain205_n8_α
 xchain205_n7_β:
 jmp proc_theorem$3_ω
 xchain205_n8_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2848] -> [zr+2784]
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 2792], rax
# marshal arg1 = producer-box slot [zr+2736] -> [zr+2800]
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 2808], rax
# marshal arg2 = producer-box slot [zr+2624] -> [zr+2816]
 mov rax, qword ptr [rbp + 2624]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 2632]
 mov qword ptr [rbp + 2824], rax
  .section .rodata
  .Lrkfn218: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn218]
 lea rsi, [rbp + 2784]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 cmp eax, 99
 je xchain205_n10_α
 jmp xchain205_n9_α
 xchain205_n8_β:
 jmp xchain205_n10_α
 xchain205_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2528] -> [zr+2480]
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2488], rax
# marshal arg1 = producer-box slot [zr+2768] -> [zr+2496]
 mov rax, qword ptr [rbp + 2768]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2776]
 mov qword ptr [rbp + 2504], rax
  .section .rodata
  .Lrkfn220: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn220]
 lea rsi, [rbp + 2480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 cmp eax, 99
 je xchain205_n10_α
 jmp xchain205_n11_α
 xchain205_n9_β:
 jmp xchain205_n10_α
 xchain205_n10_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1600]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1608], rax
  .section .rodata
  .Lrkfn222: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn222]
 lea rsi, [rbp + 1600]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain205_n12_α
 xchain205_n10_β:
 jmp proc_theorem$3_ω
# IR_VAR_REF
 xchain205_n11_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain205_n13_α
 xchain205_n11_β:
 jmp xchain205_n10_α
# IR_VAR_REF
 xchain205_n12_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain205_n14_α
 xchain205_n12_β:
 jmp xchain205_n19_α
# IR_VAR_REF
 xchain205_n13_α:
 lea rdi, [rbp + 2912]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 jmp xchain205_n15_α
 xchain205_n13_β:
 jmp xchain205_n10_α
# IR_VAR_REF
 xchain205_n14_α:
 lea rdi, [rbp + 2944]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain205_n16_α
 xchain205_n14_β:
 jmp xchain205_n19_α
 xchain205_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn232: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn232]
 lea rsi, [rbp + 2352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 cmp eax, 99
 je xchain205_n10_α
 jmp xchain205_n17_α
 xchain205_n15_β:
 jmp xchain205_n10_α
 xchain205_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1520] -> [zr+1472]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1480], rax
# marshal arg1 = producer-box slot [zr+1552] -> [zr+1488]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1496], rax
  .section .rodata
  .Lrkfn234: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn234]
 lea rsi, [rbp + 1472]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n18_α
 xchain205_n16_β:
 jmp xchain205_n19_α
# IR_VAR_REF
 xchain205_n17_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain205_n20_α
 xchain205_n17_β:
 jmp xchain205_n10_α
# IR_VAR_REF
 xchain205_n18_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain205_n21_α
 xchain205_n18_β:
 jmp xchain205_n19_α
 xchain205_n19_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn240: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn240]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp proc_theorem$3_ω
 xchain205_n19_β:
 jmp proc_theorem$3_ω
# IR_LIT_STRING
 xchain205_n20_α:
 mov qword ptr [rbp + 2304], 1
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [rbp + 2312], rax
 jmp xchain205_n22_α
 xchain205_n20_β:
 jmp proc_theorem$3_ω
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "."
# IR_VAR_REF
 xchain205_n21_α:
 lea rdi, [rbp + 2992]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain205_n23_α
 xchain205_n21_β:
 jmp xchain205_n19_α
# IR_LIT_STRING
 xchain205_n22_α:
 mov qword ptr [rbp + 2192], 1
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [rbp + 2200], rax
 jmp xchain205_n24_α
 xchain205_n22_β:
 jmp proc_theorem$3_ω
.Lx244_0:
 .quad .Lx244_0_s
.Lx244_0_s:
 .string "."
 xchain205_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn246: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn246]
 lea rsi, [rbp + 1344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n25_α
 xchain205_n23_β:
 jmp xchain205_n19_α
# IR_LIT_STRING
 xchain205_n24_α:
 mov qword ptr [rbp + 2080], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain205_n26_α
 xchain205_n24_β:
 jmp proc_theorem$3_ω
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "a"
# IR_VAR_REF
 xchain205_n25_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain205_n27_α
 xchain205_n25_β:
 jmp xchain205_n19_α
# IR_LIT_STRING
 xchain205_n26_α:
 mov qword ptr [rbp + 2048], 1
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [rbp + 2056], rax
 jmp xchain205_n28_α
 xchain205_n26_β:
 jmp proc_theorem$3_ω
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "."
# IR_LIT_STRING
 xchain205_n27_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain205_n29_α
 xchain205_n27_β:
 jmp proc_theorem$3_ω
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "."
# IR_LIT_STRING
 xchain205_n28_α:
 mov qword ptr [rbp + 1936], 1
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [rbp + 1944], rax
 jmp xchain205_n30_α
 xchain205_n28_β:
 jmp proc_theorem$3_ω
.Lx252_0:
 .quad .Lx252_0_s
.Lx252_0_s:
 .string "m"
# IR_LIT_STRING
 xchain205_n29_α:
 mov qword ptr [rbp + 1184], 1
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain205_n31_α
 xchain205_n29_β:
 jmp proc_theorem$3_ω
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "."
# IR_LIT_STRING
 xchain205_n30_α:
 mov qword ptr [rbp + 1904], 1
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain205_n32_α
 xchain205_n30_β:
 jmp proc_theorem$3_ω
.Lx254_0:
 .quad .Lx254_0_s
.Lx254_0_s:
 .string "."
# IR_VAR_REF
 xchain205_n31_α:
 lea rdi, [rbp + 2912]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain205_n33_α
 xchain205_n31_β:
 jmp proc_theorem$3_ω
# IR_LIT_STRING
 xchain205_n32_α:
 mov qword ptr [rbp + 1792], 1
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [rbp + 1800], rax
 jmp xchain205_n34_α
 xchain205_n32_β:
 jmp proc_theorem$3_ω
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "i"
# IR_VAR_REF
 xchain205_n33_α:
 lea rdi, [rbp + 2944]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain205_n35_α
 xchain205_n33_β:
 jmp proc_theorem$3_ω
# IR_LIT_STRING
 xchain205_n34_α:
 mov qword ptr [rbp + 1760], 1
 mov rax, qword ptr [rip + .Lx260_0]
 mov qword ptr [rbp + 1768], rax
 jmp xchain205_n36_α
 xchain205_n34_β:
 jmp proc_theorem$3_ω
.Lx260_0:
 .quad .Lx260_0_s
.Lx260_0_s:
 .string "[]"
 xchain205_n35_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1184] -> [zr+1120]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1128], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+1136]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1144], rax
# marshal arg2 = producer-box slot [zr+1040] -> [zr+1152]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1160], rax
  .section .rodata
  .Lrkfn262: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn262]
 lea rsi, [rbp + 1120]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain205_n37_α
 xchain205_n35_β:
 jmp proc_theorem$3_ω
 xchain205_n36_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1904] -> [zr+1840]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 1848], rax
# marshal arg1 = producer-box slot [zr+1792] -> [zr+1856]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1864], rax
# marshal arg2 = producer-box slot [zr+1760] -> [zr+1872]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1880], rax
  .section .rodata
  .Lrkfn264: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn264]
 lea rsi, [rbp + 1840]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain205_n38_α
 xchain205_n36_β:
 jmp proc_theorem$3_ω
# IR_VAR_REF
 xchain205_n37_α:
 lea rdi, [rbp + 2976]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain205_n39_α
 xchain205_n37_β:
 jmp proc_theorem$3_ω
 xchain205_n38_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2048] -> [zr+1984]
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 1992], rax
# marshal arg1 = producer-box slot [zr+1936] -> [zr+2000]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 2008], rax
# marshal arg2 = producer-box slot [zr+1824] -> [zr+2016]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 2024], rax
  .section .rodata
  .Lrkfn268: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn268]
 lea rsi, [rbp + 1984]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain205_n40_α
 xchain205_n38_β:
 jmp proc_theorem$3_ω
 xchain205_n39_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1232]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+1248]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1256], rax
# marshal arg2 = producer-box slot [zr+1008] -> [zr+1264]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 1272], rax
  .section .rodata
  .Lrkfn270: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn270]
 lea rsi, [rbp + 1232]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n41_α
 xchain205_n39_β:
 jmp xchain205_n19_α
 xchain205_n40_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2192] -> [zr+2128]
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2136], rax
# marshal arg1 = producer-box slot [zr+2080] -> [zr+2144]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2152], rax
# marshal arg2 = producer-box slot [zr+1968] -> [zr+2160]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 2168], rax
  .section .rodata
  .Lrkfn272: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn272]
 lea rsi, [rbp + 2128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain205_n42_α
 xchain205_n40_β:
 jmp proc_theorem$3_ω
 xchain205_n41_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+928]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 936], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+944]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 952], rax
  .section .rodata
  .Lrkfn274: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn274]
 lea rsi, [rbp + 928]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n43_α
 xchain205_n41_β:
 jmp xchain205_n19_α
# IR_LIT_STRING
 xchain205_n42_α:
 mov qword ptr [rbp + 1728], 1
 mov rax, qword ptr [rip + .Lx275_0]
 mov qword ptr [rbp + 1736], rax
 jmp xchain205_n44_α
 xchain205_n42_β:
 jmp proc_theorem$3_ω
.Lx275_0:
 .quad .Lx275_0_s
.Lx275_0_s:
 .string "[]"
# IR_VAR
 xchain205_n43_α:
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 856], rax
 jmp xchain205_n45_α
 xchain205_n43_β:
 jmp xchain205_n19_α
 xchain205_n44_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2304] -> [zr+2240]
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 2248], rax
# marshal arg1 = producer-box slot [zr+2112] -> [zr+2256]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2264], rax
# marshal arg2 = producer-box slot [zr+1728] -> [zr+2272]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 2280], rax
  .section .rodata
  .Lrkfn279: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn279]
 lea rsi, [rbp + 2240]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 cmp eax, 99
 je xchain205_n10_α
 jmp xchain205_n46_α
 xchain205_n44_β:
 jmp xchain205_n10_α
# IR_LIT_INTEGER
 xchain205_n45_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx280_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain205_n47_α
 xchain205_n45_β:
 jmp xchain205_n19_α
.Lx280_0:
 .quad 0
 xchain205_n46_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1648]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1656], rax
# marshal arg1 = producer-box slot [zr+2224] -> [zr+1664]
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 1672], rax
  .section .rodata
  .Lrkfn282: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn282]
 lea rsi, [rbp + 1648]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain205_n10_α
 jmp xchain205_n48_α
 xchain205_n46_β:
 jmp xchain205_n10_α
 xchain205_n47_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn284: .string "$cmp_gt"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn284]
 lea rsi, [rbp + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n49_α
 xchain205_n47_β:
 jmp xchain205_n19_α
# IR_SUSPEND yield+resume
 xchain205_n48_α:
 lea rax, [rip + xchain205_n48_β]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_theorem$3_γ
 xchain205_n48_β:
 jmp xchain205_n10_α
# IR_VAR_REF
 xchain205_n49_α:
 lea rdi, [rbp + 2960]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain205_n50_α
 xchain205_n49_β:
 jmp xchain205_n19_α
# IR_VAR
 xchain205_n50_α:
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 728], rax
 jmp xchain205_n51_α
 xchain205_n50_β:
 jmp proc_theorem$3_ω
# IR_LIT_INTEGER
 xchain205_n51_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx291_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain205_n52_α
 xchain205_n51_β:
 jmp proc_theorem$3_ω
.Lx291_0:
 .quad 1
 xchain205_n52_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+720] -> [zr+672]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 680], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+688]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 696], rax
  .section .rodata
  .Lrkfn293: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn293]
 lea rsi, [rbp + 672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n53_α
 xchain205_n52_β:
 jmp xchain205_n19_α
 xchain205_n53_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+576]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 584], rax
# marshal arg1 = producer-box slot [zr+656] -> [zr+592]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 600], rax
  .section .rodata
  .Lrkfn295: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn295]
 lea rsi, [rbp + 576]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n54_α
 xchain205_n53_β:
 jmp xchain205_n19_α
# IR_VAR_REF
 xchain205_n54_α:
 lea rdi, [rbp + 2928]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain205_n55_α
 xchain205_n54_β:
 jmp xchain205_n19_α
# IR_VAR_REF
 xchain205_n55_α:
 lea rdi, [rbp + 2960]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain205_n56_α
 xchain205_n55_β:
 jmp xchain205_n19_α
# IR_VAR_REF
 xchain205_n56_α:
 lea rdi, [rbp + 2976]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain205_n57_α
 xchain205_n56_β:
 jmp xchain205_n19_α
 xchain205_n57_α:
 mov qword ptr [rbp + 432], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx303_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx303_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx303_3]
 lea rdx, [rip + .Lx303_4]
 jmp rax
.Lx303_3:
 mov rax, qword ptr [rbp + 432]
 test rax, rax
 jne .Lx303_5
 mov qword ptr [rbp + 432], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx303_2
.Lx303_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx303_2
.Lx303_4:
 mov rax, qword ptr [rbp + 432]
 test rax, rax
 jne .Lx303_6
 mov qword ptr [rbp + 432], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx303_2
.Lx303_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx303_2
.Lx303_1:
 call rt_faildescr@PLT
.Lx303_2:
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n58_α
 xchain205_n57_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx303_0:
 .quad .Lx303_0_s
.Lx303_0_s:
 .string "theorem/3"
# IR_VAR_REF
 xchain205_n58_α:
 lea rdi, [rbp + 2912]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain205_n59_α
 xchain205_n58_β:
 jmp xchain205_n19_α
# IR_VAR_REF
 xchain205_n59_α:
 lea rdi, [rbp + 2928]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain205_n60_α
 xchain205_n59_β:
 jmp xchain205_n19_α
# IR_VAR_REF
 xchain205_n60_α:
 lea rdi, [rbp + 2944]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain205_n61_α
 xchain205_n60_β:
 jmp xchain205_n19_α
 xchain205_n61_α:
 mov qword ptr [rbp + 240], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx311_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx311_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx311_3]
 lea rdx, [rip + .Lx311_4]
 jmp rax
.Lx311_3:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx311_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx311_2
.Lx311_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx311_2
.Lx311_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx311_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx311_2
.Lx311_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx311_2
.Lx311_1:
 call rt_faildescr@PLT
.Lx311_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain205_n57_β
 jmp xchain205_n62_α
 xchain205_n61_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx311_0:
 .quad .Lx311_0_s
.Lx311_0_s:
 .string "rule/3"
# IR_SUSPEND yield+resume
 xchain205_n62_α:
 lea rax, [rip + xchain205_n62_β]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_theorem$3_γ
 xchain205_n62_β:
 jmp xchain205_n61_β
proc_theorem$3_res:
add rsp, 8
pop rbp
proc_theorem$3_β:
jmp qword ptr [rbp + 2880]
proc_theorem$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_theorem$3_res]
push rax
mov rax, [rbp + 3016]
mov rbp, [rbp + 3032]
jmp rax
proc_theorem$3_ω:
mov rax, [rbp + 3024]
lea rsp, [rbp + 3040]
mov rbp, [rbp + 3032]
jmp rax
  .globl proc_mu$0_α
proc_mu$0_α:
#=======================================================================================================================
    .global proc_mu$0_α
    .global proc_mu$0_β
    .global proc_mu$0_γ
    .global proc_mu$0_ω
  sub rsp, 1120
  mov [rsp + 1096], rcx
  mov [rsp + 1104], rdx
  mov [rsp + 1112], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1088
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1064], rsp
  mov rdi, rsp
  mov esi, 1088
  call rt_jmp_frame_lexprep@PLT
proc_mu$0_α_body:
lea rax, [rip + xchain314_n22_β]
mov qword ptr [rbp + 1040], rax
 xchain314_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn316: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn316]
 lea rsi, [rbp + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_mu$0_ω
 jmp xchain314_n1_α
 xchain314_n0_β:
 jmp proc_mu$0_ω
# IR_LIT_STRING
 xchain314_n1_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx317_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain314_n2_α
 xchain314_n1_β:
 jmp proc_mu$0_ω
.Lx317_0:
 .quad .Lx317_0_s
.Lx317_0_s:
 .string "."
# IR_LIT_STRING
 xchain314_n2_α:
 mov qword ptr [rbp + 832], 1
 mov rax, qword ptr [rip + .Lx318_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain314_n3_α
 xchain314_n2_β:
 jmp proc_mu$0_ω
.Lx318_0:
 .quad .Lx318_0_s
.Lx318_0_s:
 .string "m"
# IR_LIT_STRING
 xchain314_n3_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx319_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain314_n4_α
 xchain314_n3_β:
 jmp proc_mu$0_ω
.Lx319_0:
 .quad .Lx319_0_s
.Lx319_0_s:
 .string "."
# IR_LIT_STRING
 xchain314_n4_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx320_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain314_n5_α
 xchain314_n4_β:
 jmp proc_mu$0_ω
.Lx320_0:
 .quad .Lx320_0_s
.Lx320_0_s:
 .string "u"
# IR_LIT_STRING
 xchain314_n5_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx321_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain314_n6_α
 xchain314_n5_β:
 jmp proc_mu$0_ω
.Lx321_0:
 .quad .Lx321_0_s
.Lx321_0_s:
 .string "."
# IR_LIT_STRING
 xchain314_n6_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx322_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain314_n7_α
 xchain314_n6_β:
 jmp proc_mu$0_ω
.Lx322_0:
 .quad .Lx322_0_s
.Lx322_0_s:
 .string "i"
# IR_LIT_STRING
 xchain314_n7_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx323_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain314_n8_α
 xchain314_n7_β:
 jmp proc_mu$0_ω
.Lx323_0:
 .quad .Lx323_0_s
.Lx323_0_s:
 .string "."
# IR_LIT_STRING
 xchain314_n8_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx324_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain314_n9_α
 xchain314_n8_β:
 jmp proc_mu$0_ω
.Lx324_0:
 .quad .Lx324_0_s
.Lx324_0_s:
 .string "i"
# IR_LIT_STRING
 xchain314_n9_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx325_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain314_n10_α
 xchain314_n9_β:
 jmp proc_mu$0_ω
.Lx325_0:
 .quad .Lx325_0_s
.Lx325_0_s:
 .string "."
# IR_LIT_STRING
 xchain314_n10_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx326_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain314_n11_α
 xchain314_n10_β:
 jmp proc_mu$0_ω
.Lx326_0:
 .quad .Lx326_0_s
.Lx326_0_s:
 .string "u"
# IR_LIT_STRING
 xchain314_n11_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx327_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain314_n12_α
 xchain314_n11_β:
 jmp proc_mu$0_ω
.Lx327_0:
 .quad .Lx327_0_s
.Lx327_0_s:
 .string "[]"
 xchain314_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+304]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 312], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+320]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 328], rax
# marshal arg2 = producer-box slot [zr+224] -> [zr+336]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn329: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn329]
 lea rsi, [rbp + 304]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je proc_mu$0_ω
 jmp xchain314_n13_α
 xchain314_n12_β:
 jmp proc_mu$0_ω
 xchain314_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+448]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 456], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+464]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 472], rax
# marshal arg2 = producer-box slot [zr+288] -> [zr+480]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 488], rax
  .section .rodata
  .Lrkfn331: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn331]
 lea rsi, [rbp + 448]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je proc_mu$0_ω
 jmp xchain314_n14_α
 xchain314_n13_β:
 jmp proc_mu$0_ω
 xchain314_n14_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+592]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+608]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 616], rax
# marshal arg2 = producer-box slot [zr+432] -> [zr+624]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 632], rax
  .section .rodata
  .Lrkfn333: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn333]
 lea rsi, [rbp + 592]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je proc_mu$0_ω
 jmp xchain314_n15_α
 xchain314_n14_β:
 jmp proc_mu$0_ω
 xchain314_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+736]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 744], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+752]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 760], rax
# marshal arg2 = producer-box slot [zr+576] -> [zr+768]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 776], rax
  .section .rodata
  .Lrkfn335: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn335]
 lea rsi, [rbp + 736]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je proc_mu$0_ω
 jmp xchain314_n16_α
 xchain314_n15_β:
 jmp proc_mu$0_ω
 xchain314_n16_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+880]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 888], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+896]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 904], rax
# marshal arg2 = producer-box slot [zr+720] -> [zr+912]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 920], rax
  .section .rodata
  .Lrkfn337: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn337]
 lea rsi, [rbp + 880]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain314_n18_α
 jmp xchain314_n17_α
 xchain314_n16_β:
 jmp xchain314_n18_α
# IR_LIT_INTEGER
 xchain314_n17_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx338_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain314_n19_α
 xchain314_n17_β:
 jmp xchain314_n18_α
.Lx338_0:
 .quad 5
 xchain314_n18_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn340: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn340]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_mu$0_ω
 jmp proc_mu$0_ω
 xchain314_n18_β:
 jmp proc_mu$0_ω
# IR_VAR_REF
 xchain314_n19_α:
 lea rdi, [rbp + 1072]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain314_n20_α
 xchain314_n19_β:
 jmp xchain314_n18_α
 xchain314_n20_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 864]
 mov rdx, qword ptr [rbp + 872]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 976]
 mov rdx, qword ptr [rbp + 984]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 1008]
 mov rdx, qword ptr [rbp + 1016]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx344_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx344_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx344_3]
 lea rdx, [rip + .Lx344_4]
 jmp rax
.Lx344_3:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx344_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx344_2
.Lx344_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx344_2
.Lx344_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx344_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx344_2
.Lx344_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx344_2
.Lx344_1:
 call rt_faildescr@PLT
.Lx344_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain314_n18_α
 jmp xchain314_n21_α
 xchain314_n20_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx344_0:
 .quad .Lx344_0_s
.Lx344_0_s:
 .string "theorem/3"
 xchain314_n21_α:
# IR_CUT
 jmp xchain314_n22_α
 xchain314_n21_β:
 jmp xchain314_n20_β
# IR_SUSPEND yield+resume
 xchain314_n22_α:
 lea rax, [rip + xchain314_n22_β]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 8], rax
 jmp proc_mu$0_γ
 xchain314_n22_β:
 jmp xchain314_n20_β
proc_mu$0_res:
add rsp, 8
pop rbp
proc_mu$0_β:
jmp qword ptr [rbp + 1040]
proc_mu$0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_mu$0_res]
push rax
mov rax, [rbp + 1096]
mov rbp, [rbp + 1112]
jmp rax
proc_mu$0_ω:
mov rax, [rbp + 1104]
lea rsp, [rbp + 1120]
mov rbp, [rbp + 1112]
jmp rax
  .globl proc_rule3$2_α
proc_rule3$2_α:
#=======================================================================================================================
    .global proc_rule3$2_α
    .global proc_rule3$2_β
    .global proc_rule3$2_γ
    .global proc_rule3$2_ω
  sub rsp, 1840
  mov [rsp + 1816], rcx
  mov [rsp + 1824], rdx
  mov [rsp + 1832], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1808
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1752], rsp
  mov rdi, rsp
  mov esi, 1808
  call rt_jmp_frame_lexprep@PLT
proc_rule3$2_α_body:
lea rax, [rip + xchain348_n27_β]
mov qword ptr [rbp + 1728], rax
 xchain348_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn350: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn350]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_rule3$2_ω
 jmp xchain348_n1_α
 xchain348_n0_β:
 jmp proc_rule3$2_ω
# IR_VAR_REF
 xchain348_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain348_n2_α
 xchain348_n1_β:
 jmp xchain348_n13_α
# IR_LIT_STRING
 xchain348_n2_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx353_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain348_n3_α
 xchain348_n2_β:
 jmp proc_rule3$2_ω
.Lx353_0:
 .quad .Lx353_0_s
.Lx353_0_s:
 .string "."
# IR_LIT_STRING
 xchain348_n3_α:
 mov qword ptr [rbp + 1584], 1
 mov rax, qword ptr [rip + .Lx354_0]
 mov qword ptr [rbp + 1592], rax
 jmp xchain348_n4_α
 xchain348_n3_β:
 jmp proc_rule3$2_ω
.Lx354_0:
 .quad .Lx354_0_s
.Lx354_0_s:
 .string "i"
# IR_LIT_STRING
 xchain348_n4_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx355_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain348_n5_α
 xchain348_n4_β:
 jmp proc_rule3$2_ω
.Lx355_0:
 .quad .Lx355_0_s
.Lx355_0_s:
 .string "."
# IR_LIT_STRING
 xchain348_n5_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx356_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain348_n6_α
 xchain348_n5_β:
 jmp proc_rule3$2_ω
.Lx356_0:
 .quad .Lx356_0_s
.Lx356_0_s:
 .string "i"
# IR_LIT_STRING
 xchain348_n6_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx357_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain348_n7_α
 xchain348_n6_β:
 jmp proc_rule3$2_ω
.Lx357_0:
 .quad .Lx357_0_s
.Lx357_0_s:
 .string "."
# IR_LIT_STRING
 xchain348_n7_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx358_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain348_n8_α
 xchain348_n7_β:
 jmp proc_rule3$2_ω
.Lx358_0:
 .quad .Lx358_0_s
.Lx358_0_s:
 .string "i"
# IR_VAR_REF
 xchain348_n8_α:
 lea rdi, [rbp + 1792]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain348_n9_α
 xchain348_n8_β:
 jmp proc_rule3$2_ω
 xchain348_n9_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1344]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1352], rax
# marshal arg1 = producer-box slot [zr+1296] -> [zr+1360]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1368], rax
# marshal arg2 = producer-box slot [zr+1264] -> [zr+1376]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1384], rax
  .section .rodata
  .Lrkfn362: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn362]
 lea rsi, [rbp + 1344]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je proc_rule3$2_ω
 jmp xchain348_n10_α
 xchain348_n9_β:
 jmp proc_rule3$2_ω
 xchain348_n10_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1552] -> [zr+1488]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1496], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1504]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1512], rax
# marshal arg2 = producer-box slot [zr+1328] -> [zr+1520]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1528], rax
  .section .rodata
  .Lrkfn364: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn364]
 lea rsi, [rbp + 1488]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je proc_rule3$2_ω
 jmp xchain348_n11_α
 xchain348_n10_β:
 jmp proc_rule3$2_ω
 xchain348_n11_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1632]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1640], rax
# marshal arg1 = producer-box slot [zr+1584] -> [zr+1648]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1656], rax
# marshal arg2 = producer-box slot [zr+1472] -> [zr+1664]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1672], rax
  .section .rodata
  .Lrkfn366: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn366]
 lea rsi, [rbp + 1632]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je xchain348_n13_α
 jmp xchain348_n12_α
 xchain348_n11_β:
 jmp xchain348_n13_α
 xchain348_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1184]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1192], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1200]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1208], rax
  .section .rodata
  .Lrkfn368: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn368]
 lea rsi, [rbp + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je xchain348_n13_α
 jmp xchain348_n14_α
 xchain348_n12_β:
 jmp xchain348_n13_α
 xchain348_n13_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+864]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 872], rax
  .section .rodata
  .Lrkfn370: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn370]
 lea rsi, [rbp + 864]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je proc_rule3$2_ω
 jmp xchain348_n15_α
 xchain348_n13_β:
 jmp proc_rule3$2_ω
# IR_VAR_REF
 xchain348_n14_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain348_n16_α
 xchain348_n14_β:
 jmp xchain348_n13_α
# IR_VAR_REF
 xchain348_n15_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain348_n17_α
 xchain348_n15_β:
 jmp xchain348_n26_α
# IR_LIT_STRING
 xchain348_n16_α:
 mov qword ptr [rbp + 1136], 1
 mov rax, qword ptr [rip + .Lx375_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain348_n18_α
 xchain348_n16_β:
 jmp proc_rule3$2_ω
.Lx375_0:
 .quad .Lx375_0_s
.Lx375_0_s:
 .string "."
# IR_LIT_STRING
 xchain348_n17_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx376_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain348_n19_α
 xchain348_n17_β:
 jmp proc_rule3$2_ω
.Lx376_0:
 .quad .Lx376_0_s
.Lx376_0_s:
 .string "."
# IR_LIT_STRING
 xchain348_n18_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx377_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain348_n20_α
 xchain348_n18_β:
 jmp proc_rule3$2_ω
.Lx377_0:
 .quad .Lx377_0_s
.Lx377_0_s:
 .string "u"
# IR_VAR_REF
 xchain348_n19_α:
 lea rdi, [rbp + 1792]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain348_n21_α
 xchain348_n19_β:
 jmp proc_rule3$2_ω
# IR_VAR_REF
 xchain348_n20_α:
 lea rdi, [rbp + 1792]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain348_n22_α
 xchain348_n20_β:
 jmp proc_rule3$2_ω
# IR_VAR_REF
 xchain348_n21_α:
 lea rdi, [rbp + 1760]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain348_n23_α
 xchain348_n21_β:
 jmp proc_rule3$2_ω
 xchain348_n22_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1072]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1080], rax
# marshal arg1 = producer-box slot [zr+1024] -> [zr+1088]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1096], rax
# marshal arg2 = producer-box slot [zr+992] -> [zr+1104]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1112], rax
  .section .rodata
  .Lrkfn385: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn385]
 lea rsi, [rbp + 1072]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain348_n13_α
 jmp xchain348_n24_α
 xchain348_n22_β:
 jmp xchain348_n13_α
 xchain348_n23_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+752]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 760], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+768]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 776], rax
# marshal arg2 = producer-box slot [zr+672] -> [zr+784]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 792], rax
  .section .rodata
  .Lrkfn387: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn387]
 lea rsi, [rbp + 752]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain348_n26_α
 jmp xchain348_n25_α
 xchain348_n23_β:
 jmp xchain348_n26_α
 xchain348_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+928]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 936], rax
  .section .rodata
  .Lrkfn389: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn389]
 lea rsi, [rbp + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain348_n13_α
 jmp xchain348_n27_α
 xchain348_n24_β:
 jmp xchain348_n13_α
 xchain348_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+608]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn391: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn391]
 lea rsi, [rbp + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain348_n26_α
 jmp xchain348_n28_α
 xchain348_n25_β:
 jmp xchain348_n26_α
 xchain348_n26_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn393: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn393]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_rule3$2_ω
 jmp proc_rule3$2_ω
 xchain348_n26_β:
 jmp proc_rule3$2_ω
# IR_SUSPEND yield+resume
 xchain348_n27_α:
 lea rax, [rip + xchain348_n27_β]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule3$2_γ
 xchain348_n27_β:
 jmp xchain348_n13_α
# IR_VAR_REF
 xchain348_n28_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain348_n29_α
 xchain348_n28_β:
 jmp xchain348_n26_α
# IR_LIT_STRING
 xchain348_n29_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx398_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain348_n30_α
 xchain348_n29_β:
 jmp proc_rule3$2_ω
.Lx398_0:
 .quad .Lx398_0_s
.Lx398_0_s:
 .string "."
# IR_VAR_REF
 xchain348_n30_α:
 lea rdi, [rbp + 1792]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain348_n31_α
 xchain348_n30_β:
 jmp proc_rule3$2_ω
# IR_VAR_REF
 xchain348_n31_α:
 lea rdi, [rbp + 1776]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain348_n32_α
 xchain348_n31_β:
 jmp proc_rule3$2_ω
 xchain348_n32_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+480]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 488], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+496]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 504], rax
# marshal arg2 = producer-box slot [zr+400] -> [zr+512]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 520], rax
  .section .rodata
  .Lrkfn404: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn404]
 lea rsi, [rbp + 480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain348_n26_α
 jmp xchain348_n33_α
 xchain348_n32_β:
 jmp xchain348_n26_α
 xchain348_n33_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 328], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+336]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn406: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn406]
 lea rsi, [rbp + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain348_n26_α
 jmp xchain348_n34_α
 xchain348_n33_β:
 jmp xchain348_n26_α
# IR_VAR_REF
 xchain348_n34_α:
 lea rdi, [rbp + 1760]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain348_n35_α
 xchain348_n34_β:
 jmp xchain348_n26_α
# IR_VAR_REF
 xchain348_n35_α:
 lea rdi, [rbp + 1776]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain348_n36_α
 xchain348_n35_β:
 jmp xchain348_n26_α
 xchain348_n36_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx412_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx412_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx412_3]
 lea rdx, [rip + .Lx412_4]
 jmp rax
.Lx412_3:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx412_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx412_2
.Lx412_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx412_2
.Lx412_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx412_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx412_2
.Lx412_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx412_2
.Lx412_1:
 call rt_faildescr@PLT
.Lx412_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain348_n26_α
 jmp xchain348_n37_α
 xchain348_n36_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx412_0:
 .quad .Lx412_0_s
.Lx412_0_s:
 .string "rule3/2"
# IR_SUSPEND yield+resume
 xchain348_n37_α:
 lea rax, [rip + xchain348_n37_β]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule3$2_γ
 xchain348_n37_β:
 jmp xchain348_n36_β
proc_rule3$2_res:
add rsp, 8
pop rbp
proc_rule3$2_β:
jmp qword ptr [rbp + 1728]
proc_rule3$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule3$2_res]
push rax
mov rax, [rbp + 1816]
mov rbp, [rbp + 1832]
jmp rax
proc_rule3$2_ω:
mov rax, [rbp + 1824]
lea rsp, [rbp + 1840]
mov rbp, [rbp + 1832]
jmp rax
  .globl proc_rule1$2_α
proc_rule1$2_α:
#=======================================================================================================================
    .global proc_rule1$2_α
    .global proc_rule1$2_β
    .global proc_rule1$2_γ
    .global proc_rule1$2_ω
  sub rsp, 1696
  mov [rsp + 1672], rcx
  mov [rsp + 1680], rdx
  mov [rsp + 1688], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1664
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1608], rsp
  mov rdi, rsp
  mov esi, 1664
  call rt_jmp_frame_lexprep@PLT
proc_rule1$2_α_body:
lea rax, [rip + xchain415_n27_β]
mov qword ptr [rbp + 1584], rax
 xchain415_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn417: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn417]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_rule1$2_ω
 jmp xchain415_n1_α
 xchain415_n0_β:
 jmp proc_rule1$2_ω
# IR_VAR_REF
 xchain415_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain415_n2_α
 xchain415_n1_β:
 jmp xchain415_n7_α
# IR_LIT_STRING
 xchain415_n2_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx420_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain415_n3_α
 xchain415_n2_β:
 jmp proc_rule1$2_ω
.Lx420_0:
 .quad .Lx420_0_s
.Lx420_0_s:
 .string "."
# IR_LIT_STRING
 xchain415_n3_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx421_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain415_n4_α
 xchain415_n3_β:
 jmp proc_rule1$2_ω
.Lx421_0:
 .quad .Lx421_0_s
.Lx421_0_s:
 .string "i"
# IR_LIT_STRING
 xchain415_n4_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx422_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain415_n5_α
 xchain415_n4_β:
 jmp proc_rule1$2_ω
.Lx422_0:
 .quad .Lx422_0_s
.Lx422_0_s:
 .string "[]"
 xchain415_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1552] -> [zr+1488]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1496], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1504]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1512], rax
# marshal arg2 = producer-box slot [zr+1408] -> [zr+1520]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1528], rax
  .section .rodata
  .Lrkfn424: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn424]
 lea rsi, [rbp + 1488]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je xchain415_n7_α
 jmp xchain415_n6_α
 xchain415_n5_β:
 jmp xchain415_n7_α
 xchain415_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1328]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1336], rax
# marshal arg1 = producer-box slot [zr+1472] -> [zr+1344]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1352], rax
  .section .rodata
  .Lrkfn426: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn426]
 lea rsi, [rbp + 1328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain415_n7_α
 jmp xchain415_n8_α
 xchain415_n6_β:
 jmp xchain415_n7_α
 xchain415_n7_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+864]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 872], rax
  .section .rodata
  .Lrkfn428: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn428]
 lea rsi, [rbp + 864]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je proc_rule1$2_ω
 jmp xchain415_n9_α
 xchain415_n7_β:
 jmp proc_rule1$2_ω
# IR_VAR_REF
 xchain415_n8_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain415_n10_α
 xchain415_n8_β:
 jmp xchain415_n7_α
# IR_VAR_REF
 xchain415_n9_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain415_n11_α
 xchain415_n9_β:
 jmp xchain415_n20_α
# IR_LIT_STRING
 xchain415_n10_α:
 mov qword ptr [rbp + 1280], 1
 mov rax, qword ptr [rip + .Lx433_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain415_n12_α
 xchain415_n10_β:
 jmp proc_rule1$2_ω
.Lx433_0:
 .quad .Lx433_0_s
.Lx433_0_s:
 .string "."
# IR_LIT_STRING
 xchain415_n11_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx434_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain415_n13_α
 xchain415_n11_β:
 jmp proc_rule1$2_ω
.Lx434_0:
 .quad .Lx434_0_s
.Lx434_0_s:
 .string "."
# IR_LIT_STRING
 xchain415_n12_α:
 mov qword ptr [rbp + 1168], 1
 mov rax, qword ptr [rip + .Lx435_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain415_n14_α
 xchain415_n12_β:
 jmp proc_rule1$2_ω
.Lx435_0:
 .quad .Lx435_0_s
.Lx435_0_s:
 .string "i"
# IR_VAR_REF
 xchain415_n13_α:
 lea rdi, [rbp + 1648]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain415_n15_α
 xchain415_n13_β:
 jmp proc_rule1$2_ω
# IR_LIT_STRING
 xchain415_n14_α:
 mov qword ptr [rbp + 1136], 1
 mov rax, qword ptr [rip + .Lx438_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain415_n16_α
 xchain415_n14_β:
 jmp proc_rule1$2_ω
.Lx438_0:
 .quad .Lx438_0_s
.Lx438_0_s:
 .string "."
# IR_VAR_REF
 xchain415_n15_α:
 lea rdi, [rbp + 1616]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain415_n17_α
 xchain415_n15_β:
 jmp proc_rule1$2_ω
# IR_LIT_STRING
 xchain415_n16_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx441_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain415_n18_α
 xchain415_n16_β:
 jmp proc_rule1$2_ω
.Lx441_0:
 .quad .Lx441_0_s
.Lx441_0_s:
 .string "u"
 xchain415_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+752]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 760], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+768]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 776], rax
# marshal arg2 = producer-box slot [zr+672] -> [zr+784]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 792], rax
  .section .rodata
  .Lrkfn443: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn443]
 lea rsi, [rbp + 752]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain415_n20_α
 jmp xchain415_n19_α
 xchain415_n17_β:
 jmp xchain415_n20_α
# IR_LIT_STRING
 xchain415_n18_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx444_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain415_n21_α
 xchain415_n18_β:
 jmp proc_rule1$2_ω
.Lx444_0:
 .quad .Lx444_0_s
.Lx444_0_s:
 .string "[]"
 xchain415_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+608]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn446: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn446]
 lea rsi, [rbp + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain415_n20_α
 jmp xchain415_n22_α
 xchain415_n19_β:
 jmp xchain415_n20_α
 xchain415_n20_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn448: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn448]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_rule1$2_ω
 jmp proc_rule1$2_ω
 xchain415_n20_β:
 jmp proc_rule1$2_ω
 xchain415_n21_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1072]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1080], rax
# marshal arg1 = producer-box slot [zr+1024] -> [zr+1088]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1096], rax
# marshal arg2 = producer-box slot [zr+992] -> [zr+1104]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1112], rax
  .section .rodata
  .Lrkfn450: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn450]
 lea rsi, [rbp + 1072]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je proc_rule1$2_ω
 jmp xchain415_n23_α
 xchain415_n21_β:
 jmp proc_rule1$2_ω
# IR_VAR_REF
 xchain415_n22_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain415_n24_α
 xchain415_n22_β:
 jmp xchain415_n20_α
 xchain415_n23_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1216]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1224], rax
# marshal arg1 = producer-box slot [zr+1168] -> [zr+1232]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1240], rax
# marshal arg2 = producer-box slot [zr+1056] -> [zr+1248]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1256], rax
  .section .rodata
  .Lrkfn454: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn454]
 lea rsi, [rbp + 1216]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain415_n7_α
 jmp xchain415_n25_α
 xchain415_n23_β:
 jmp xchain415_n7_α
# IR_LIT_STRING
 xchain415_n24_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx455_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain415_n26_α
 xchain415_n24_β:
 jmp proc_rule1$2_ω
.Lx455_0:
 .quad .Lx455_0_s
.Lx455_0_s:
 .string "."
 xchain415_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+1200] -> [zr+928]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 936], rax
  .section .rodata
  .Lrkfn457: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn457]
 lea rsi, [rbp + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain415_n7_α
 jmp xchain415_n27_α
 xchain415_n25_β:
 jmp xchain415_n7_α
# IR_VAR_REF
 xchain415_n26_α:
 lea rdi, [rbp + 1648]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain415_n28_α
 xchain415_n26_β:
 jmp proc_rule1$2_ω
# IR_SUSPEND yield+resume
 xchain415_n27_α:
 lea rax, [rip + xchain415_n27_β]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule1$2_γ
 xchain415_n27_β:
 jmp xchain415_n7_α
# IR_VAR_REF
 xchain415_n28_α:
 lea rdi, [rbp + 1632]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain415_n29_α
 xchain415_n28_β:
 jmp proc_rule1$2_ω
 xchain415_n29_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+480]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 488], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+496]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 504], rax
# marshal arg2 = producer-box slot [zr+400] -> [zr+512]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 520], rax
  .section .rodata
  .Lrkfn465: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn465]
 lea rsi, [rbp + 480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain415_n20_α
 jmp xchain415_n30_α
 xchain415_n29_β:
 jmp xchain415_n20_α
 xchain415_n30_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 328], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+336]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn467: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn467]
 lea rsi, [rbp + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain415_n20_α
 jmp xchain415_n31_α
 xchain415_n30_β:
 jmp xchain415_n20_α
# IR_VAR_REF
 xchain415_n31_α:
 lea rdi, [rbp + 1616]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain415_n32_α
 xchain415_n31_β:
 jmp xchain415_n20_α
# IR_VAR_REF
 xchain415_n32_α:
 lea rdi, [rbp + 1632]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain415_n33_α
 xchain415_n32_β:
 jmp xchain415_n20_α
 xchain415_n33_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx473_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx473_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx473_3]
 lea rdx, [rip + .Lx473_4]
 jmp rax
.Lx473_3:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx473_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx473_2
.Lx473_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx473_2
.Lx473_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx473_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx473_2
.Lx473_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx473_2
.Lx473_1:
 call rt_faildescr@PLT
.Lx473_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain415_n20_α
 jmp xchain415_n34_α
 xchain415_n33_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx473_0:
 .quad .Lx473_0_s
.Lx473_0_s:
 .string "rule1/2"
# IR_SUSPEND yield+resume
 xchain415_n34_α:
 lea rax, [rip + xchain415_n34_β]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule1$2_γ
 xchain415_n34_β:
 jmp xchain415_n33_β
proc_rule1$2_res:
add rsp, 8
pop rbp
proc_rule1$2_β:
jmp qword ptr [rbp + 1584]
proc_rule1$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule1$2_res]
push rax
mov rax, [rbp + 1672]
mov rbp, [rbp + 1688]
jmp rax
proc_rule1$2_ω:
mov rax, [rbp + 1680]
lea rsp, [rbp + 1696]
mov rbp, [rbp + 1688]
jmp rax
  .globl proc_my_append$3_α
proc_my_append$3_α:
#=======================================================================================================================
    .global proc_my_append$3_α
    .global proc_my_append$3_β
    .global proc_my_append$3_γ
    .global proc_my_append$3_ω
  sub rsp, 1600
  mov [rsp + 1576], rcx
  mov [rsp + 1584], rdx
  mov [rsp + 1592], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1568
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1496], rsp
  mov rdi, rsp
  mov esi, 1568
  call rt_jmp_frame_lexprep@PLT
proc_my_append$3_α_body:
lea rax, [rip + xchain476_n16_β]
mov qword ptr [rbp + 1472], rax
 xchain476_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn478: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn478]
 lea rsi, [rbp + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_my_append$3_ω
 jmp xchain476_n1_α
 xchain476_n0_β:
 jmp proc_my_append$3_ω
# IR_VAR_REF
 xchain476_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain476_n2_α
 xchain476_n1_β:
 jmp xchain476_n5_α
# IR_LIT_STRING
 xchain476_n2_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx481_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain476_n3_α
 xchain476_n2_β:
 jmp xchain476_n5_α
.Lx481_0:
 .quad .Lx481_0_s
.Lx481_0_s:
 .string "[]"
 xchain476_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn483: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn483]
 lea rsi, [rbp + 1360]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je xchain476_n5_α
 jmp xchain476_n4_α
 xchain476_n3_β:
 jmp xchain476_n5_α
# IR_VAR_REF
 xchain476_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain476_n6_α
 xchain476_n4_β:
 jmp xchain476_n5_α
 xchain476_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1056]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1064], rax
  .section .rodata
  .Lrkfn487: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn487]
 lea rsi, [rbp + 1056]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je proc_my_append$3_ω
 jmp xchain476_n7_α
 xchain476_n5_β:
 jmp proc_my_append$3_ω
# IR_VAR_REF
 xchain476_n6_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain476_n8_α
 xchain476_n6_β:
 jmp xchain476_n5_α
# IR_VAR_REF
 xchain476_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain476_n9_α
 xchain476_n7_β:
 jmp xchain476_n18_α
 xchain476_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn493: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn493]
 lea rsi, [rbp + 1232]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain476_n5_α
 jmp xchain476_n10_α
 xchain476_n8_β:
 jmp xchain476_n5_α
# IR_LIT_STRING
 xchain476_n9_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx494_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain476_n11_α
 xchain476_n9_β:
 jmp proc_my_append$3_ω
.Lx494_0:
 .quad .Lx494_0_s
.Lx494_0_s:
 .string "."
# IR_VAR_REF
 xchain476_n10_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain476_n12_α
 xchain476_n10_β:
 jmp xchain476_n5_α
# IR_VAR_REF
 xchain476_n11_α:
 lea rdi, [rbp + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain476_n13_α
 xchain476_n11_β:
 jmp proc_my_append$3_ω
# IR_VAR_REF
 xchain476_n12_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain476_n14_α
 xchain476_n12_β:
 jmp xchain476_n5_α
# IR_VAR_REF
 xchain476_n13_α:
 lea rdi, [rbp + 1504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain476_n15_α
 xchain476_n13_β:
 jmp proc_my_append$3_ω
 xchain476_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1104]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1112], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1120]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1128], rax
  .section .rodata
  .Lrkfn504: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn504]
 lea rsi, [rbp + 1104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain476_n5_α
 jmp xchain476_n16_α
 xchain476_n14_β:
 jmp xchain476_n5_α
 xchain476_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+944]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 952], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+960]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 968], rax
# marshal arg2 = producer-box slot [zr+864] -> [zr+976]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 984], rax
  .section .rodata
  .Lrkfn506: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn506]
 lea rsi, [rbp + 944]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain476_n18_α
 jmp xchain476_n17_α
 xchain476_n15_β:
 jmp xchain476_n18_α
# IR_SUSPEND yield+resume
 xchain476_n16_α:
 lea rax, [rip + xchain476_n16_β]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_my_append$3_γ
 xchain476_n16_β:
 jmp xchain476_n5_α
 xchain476_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+928] -> [zr+800]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 808], rax
  .section .rodata
  .Lrkfn510: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn510]
 lea rsi, [rbp + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain476_n18_α
 jmp xchain476_n19_α
 xchain476_n17_β:
 jmp xchain476_n18_α
 xchain476_n18_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn512: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn512]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_my_append$3_ω
 jmp proc_my_append$3_ω
 xchain476_n18_β:
 jmp proc_my_append$3_ω
# IR_VAR_REF
 xchain476_n19_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain476_n20_α
 xchain476_n19_β:
 jmp xchain476_n18_α
# IR_VAR_REF
 xchain476_n20_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain476_n21_α
 xchain476_n20_β:
 jmp xchain476_n18_α
 xchain476_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+672]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 680], rax
  .section .rodata
  .Lrkfn518: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn518]
 lea rsi, [rbp + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain476_n18_α
 jmp xchain476_n22_α
 xchain476_n21_β:
 jmp xchain476_n18_α
# IR_VAR_REF
 xchain476_n22_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain476_n23_α
 xchain476_n22_β:
 jmp xchain476_n18_α
# IR_LIT_STRING
 xchain476_n23_α:
 mov qword ptr [rbp + 608], 1
 mov rax, qword ptr [rip + .Lx521_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain476_n24_α
 xchain476_n23_β:
 jmp proc_my_append$3_ω
.Lx521_0:
 .quad .Lx521_0_s
.Lx521_0_s:
 .string "."
# IR_VAR_REF
 xchain476_n24_α:
 lea rdi, [rbp + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain476_n25_α
 xchain476_n24_β:
 jmp proc_my_append$3_ω
# IR_VAR_REF
 xchain476_n25_α:
 lea rdi, [rbp + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain476_n26_α
 xchain476_n25_β:
 jmp proc_my_append$3_ω
 xchain476_n26_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+544]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 552], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+560]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 568], rax
# marshal arg2 = producer-box slot [zr+464] -> [zr+576]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 584], rax
  .section .rodata
  .Lrkfn527: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn527]
 lea rsi, [rbp + 544]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain476_n18_α
 jmp xchain476_n27_α
 xchain476_n26_β:
 jmp xchain476_n18_α
 xchain476_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+384]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 392], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+400]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 408], rax
  .section .rodata
  .Lrkfn529: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn529]
 lea rsi, [rbp + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain476_n18_α
 jmp xchain476_n28_α
 xchain476_n27_β:
 jmp xchain476_n18_α
# IR_VAR_REF
 xchain476_n28_α:
 lea rdi, [rbp + 1504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain476_n29_α
 xchain476_n28_β:
 jmp xchain476_n18_α
# IR_VAR_REF
 xchain476_n29_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain476_n30_α
 xchain476_n29_β:
 jmp xchain476_n18_α
# IR_VAR_REF
 xchain476_n30_α:
 lea rdi, [rbp + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain476_n31_α
 xchain476_n30_β:
 jmp xchain476_n18_α
 xchain476_n31_α:
 mov qword ptr [rbp + 240], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx537_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx537_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx537_3]
 lea rdx, [rip + .Lx537_4]
 jmp rax
.Lx537_3:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx537_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx537_2
.Lx537_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx537_2
.Lx537_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx537_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx537_2
.Lx537_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx537_2
.Lx537_1:
 call rt_faildescr@PLT
.Lx537_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain476_n18_α
 jmp xchain476_n32_α
 xchain476_n31_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx537_0:
 .quad .Lx537_0_s
.Lx537_0_s:
 .string "my_append/3"
# IR_SUSPEND yield+resume
 xchain476_n32_α:
 lea rax, [rip + xchain476_n32_β]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_my_append$3_γ
 xchain476_n32_β:
 jmp xchain476_n31_β
proc_my_append$3_res:
add rsp, 8
pop rbp
proc_my_append$3_β:
jmp qword ptr [rbp + 1472]
proc_my_append$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_my_append$3_res]
push rax
mov rax, [rbp + 1576]
mov rbp, [rbp + 1592]
jmp rax
proc_my_append$3_ω:
mov rax, [rbp + 1584]
lea rsp, [rbp + 1600]
mov rbp, [rbp + 1592]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "rule/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_rule$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2496
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "rule4/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_rule4$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1536
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "rule2/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_rule2$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 960
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "theorem/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_theorem$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3008
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname4: .string "mu/0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_mu$0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1088
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname5: .string "rule3/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_rule3$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1808
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname6: .string "rule1/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_rule1$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1664
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname7: .string "my_append/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_my_append$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1568
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_generator@PLT
  add rsp, 8
  ret
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
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
  mov qword ptr [rsp + 424], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain540_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn542: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn542]
 lea rsi, [rbp + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain540_n1_α
 xchain540_n0_β:
 jmp main_ω
 xchain540_n1_α:
 mov qword ptr [rbp + 384], 0
 mov rdi, qword ptr [rip + .Lx544_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx544_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx544_3]
 lea rdx, [rip + .Lx544_4]
 jmp rax
.Lx544_3:
 mov rax, qword ptr [rbp + 384]
 test rax, rax
 jne .Lx544_5
 mov qword ptr [rbp + 384], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx544_2
.Lx544_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx544_2
.Lx544_4:
 mov rax, qword ptr [rbp + 384]
 test rax, rax
 jne .Lx544_6
 mov qword ptr [rbp + 384], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx544_2
.Lx544_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx544_2
.Lx544_1:
 call rt_faildescr@PLT
.Lx544_2:
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain540_n3_α
 jmp xchain540_n2_α
 xchain540_n1_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx544_0:
 .quad .Lx544_0_s
.Lx544_0_s:
 .string "mu/0"
# IR_LIT_STRING
 xchain540_n2_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx545_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain540_n4_α
 xchain540_n2_β:
 jmp xchain540_n7_α
.Lx545_0:
 .quad .Lx545_0_s
.Lx545_0_s:
 .string "ok"
# IR_LIT_STRING
 xchain540_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx546_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain540_n5_α
 xchain540_n3_β:
 jmp xchain540_n7_α
.Lx546_0:
 .quad .Lx546_0_s
.Lx546_0_s:
 .string "failed"
 xchain540_n4_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn548: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn548]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain540_n7_α
 jmp xchain540_n6_α
 xchain540_n4_β:
 jmp xchain540_n7_α
 xchain540_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 312], rax
  .section .rodata
  .Lrkfn550: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn550]
 lea rsi, [rbp + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain540_n7_α
 jmp xchain540_n6_α
 xchain540_n5_β:
 jmp xchain540_n7_α
# IR_LIT_STRING
 xchain540_n6_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx551_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain540_n8_α
 xchain540_n6_β:
 jmp xchain540_n7_α
.Lx551_0:
 .quad .Lx551_0_s
.Lx551_0_s:
 .string ""
 xchain540_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn553: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn553]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain540_n7_β:
 jmp main_ω
 xchain540_n8_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn555: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn555]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain540_n7_α
 jmp xchain540_n9_α
 xchain540_n8_β:
 jmp xchain540_n7_α
# IR_MOVE_LABEL
 xchain540_n9_α:
 lea rax, [rip + xchain540_n7_α]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
 xchain540_n9_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain540_n10_α:
 jmp qword ptr [rbp + 32]
 xchain540_n10_β:
 jmp main_ω
main_β:
jmp xchain540_n10_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 424]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 424]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
