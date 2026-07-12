  .intel_syntax noprefix
  .text
  .globl proc_dofile_α
proc_dofile_α:
#=======================================================================================================================
    .global proc_dofile_α
    .global proc_dofile_β
    .global proc_dofile_γ
    .global proc_dofile_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 4464], rax
 pop rsi
proc_dofile_α_body:
# IR_MAKE_LIST
 xchain0_n0_α:
 lea rdi, [r12 + 4464]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 4448], rax
 mov qword ptr [r12 + 4456], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
 xchain0_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 4448]
 mov rdx, qword ptr [r12 + 4456]
 mov qword ptr [r12 + 4528], rax
 mov qword ptr [r12 + 4536], rdx
 mov qword ptr [r12 + 4432], rax
 mov qword ptr [r12 + 4440], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
# IR_MAKE_LIST
 xchain0_n2_α:
 lea rdi, [r12 + 4432]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 4416], rax
 mov qword ptr [r12 + 4424], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
 xchain0_n3_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 4416]
 mov rdx, qword ptr [r12 + 4424]
 mov qword ptr [r12 + 4496], rax
 mov qword ptr [r12 + 4504], rdx
 mov qword ptr [r12 + 4400], rax
 mov qword ptr [r12 + 4408], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n4_α
# IR_VAR
 xchain0_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 3248], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 3256], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
 xchain0_n5_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3248] -> [zr+3216]
 mov rax, qword ptr [r12 + 3248]
 mov qword ptr [r12 + 3216], rax
 mov rax, qword ptr [r12 + 3256]
 mov qword ptr [r12 + 3224], rax
  .section .rodata
  .Lrkfn10: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn10]
 lea rsi, [r12 + 3216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3200], rax
 mov qword ptr [r12 + 3208], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp xchain0_n6_α
# IR_VAR
 xchain0_n6_α:
 mov rax, qword ptr [r12 + 4496]
 mov qword ptr [r12 + 3152], rax
 mov rax, qword ptr [r12 + 4504]
 mov qword ptr [r12 + 3160], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n9_α
 xchain0_n7_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3200]
 mov rdx, qword ptr [r12 + 3208]
 mov qword ptr [r12 + 4560], rax
 mov qword ptr [r12 + 4568], rdx
 mov qword ptr [r12 + 3184], rax
 mov qword ptr [r12 + 3192], rdx
 jmp xchain0_n10_α
 xchain0_n7_β:
 jmp xchain0_n6_α
# IR_UNOP
 xchain0_n8_α:
 mov rdi, qword ptr [r12 + 4496]
 mov rsi, qword ptr [r12 + 4504]
 call rt_size_d@PLT
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 jmp xchain0_n11_α
 xchain0_n8_β:
 jmp xchain0_n9_α
# IR_VAR
 xchain0_n9_α:
 mov rax, qword ptr [r12 + 4544]
 mov qword ptr [r12 + 3008], rax
 mov rax, qword ptr [r12 + 4552]
 mov qword ptr [r12 + 3016], rax
 jmp xchain0_n12_α
 xchain0_n9_β:
 jmp xchain0_n13_α
# IR_VAR
 xchain0_n10_α:
 mov rax, qword ptr [r12 + 4560]
 mov qword ptr [r12 + 4368], rax
 mov rax, qword ptr [r12 + 4568]
 mov qword ptr [r12 + 4376], rax
 jmp xchain0_n14_α
 xchain0_n10_β:
 jmp xchain0_n4_α
 xchain0_n11_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3120] -> [zr+3088]
 mov rax, qword ptr [r12 + 3120]
 mov qword ptr [r12 + 3088], rax
 mov rax, qword ptr [r12 + 3128]
 mov qword ptr [r12 + 3096], rax
  .section .rodata
  .Lrkfn20: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 3088]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3072], rax
 mov qword ptr [r12 + 3080], rdx
 cmp eax, 99
 je xchain0_n9_α
 jmp xchain0_n9_α
 xchain0_n11_β:
 jmp xchain0_n9_α
# IR_LIT_INTEGER
 xchain0_n12_α:
 mov qword ptr [r12 + 3040], 6
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [r12 + 3048], rax
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n13_α
.Lx21_0:
 .quad 7
# IR_LIT_INTEGER
 xchain0_n13_α:
 mov qword ptr [r12 + 2864], 6
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 2872], rax
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n19_α
.Lx22_0:
 .quad 0
# IR_GEN_SCAN
 xchain0_n14_α:
 mov rdi, qword ptr [r12 + 4368]
 mov rsi, qword ptr [r12 + 4376]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp xchain0_n4_α
 xchain0_n15_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3008] -> [zr+2960]
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 2960], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 2968], rax
# marshal arg1 = producer-box slot [zr+3040] -> [zr+2976]
 mov rax, qword ptr [r12 + 3040]
 mov qword ptr [r12 + 2976], rax
 mov rax, qword ptr [r12 + 3048]
 mov qword ptr [r12 + 2984], rax
  .section .rodata
  .Lrkfn26: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn26]
 lea rsi, [r12 + 2960]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2944], rax
 mov qword ptr [r12 + 2952], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n13_α
 xchain0_n16_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2864]
 mov rdx, qword ptr [r12 + 2872]
 mov qword ptr [r12 + 4480], rax
 mov qword ptr [r12 + 4488], rdx
 mov qword ptr [r12 + 2848], rax
 mov qword ptr [r12 + 2856], rdx
 jmp xchain0_n19_α
 xchain0_n16_β:
 jmp xchain0_n19_α
# IR_LIT_CHARSET
 xchain0_n17_α:
 mov qword ptr [r12 + 4336], 1
 mov dword ptr [r12 + 4340], -1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 4344], rax
 jmp xchain0_n20_α
 xchain0_n17_β:
 jmp xchain0_n27_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string " "
 xchain0_n18_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2944] -> [zr+2912]
 mov rax, qword ptr [r12 + 2944]
 mov qword ptr [r12 + 2912], rax
 mov rax, qword ptr [r12 + 2952]
 mov qword ptr [r12 + 2920], rax
  .section .rodata
  .Lrkfn30: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn30]
 lea rsi, [r12 + 2912]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2896], rax
 mov qword ptr [r12 + 2904], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n13_α
 xchain0_n18_β:
 jmp xchain0_n13_α
# IR_VAR
 xchain0_n19_α:
 mov rax, qword ptr [r12 + 4480]
 mov qword ptr [r12 + 2656], rax
 mov rax, qword ptr [r12 + 4488]
 mov qword ptr [r12 + 2664], rax
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n22_α
# IR_SCAN_MANY
 xchain0_n20_α:
 mov eax, r14d
.Lx34_0:
 cmp eax, r15d
 jge .Lx34_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx34_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx34_1
 add eax, 1
 jmp .Lx34_0
.Lx34_1:
 cmp eax, r14d
 je xchain0_n27_α
 mov qword ptr [r12 + 4304], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 4312], rcx
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp xchain0_n27_α
.Lx34_2:
 .quad .Lx34_2_s
.Lx34_2_s:
 .string " "
# IR_VAR
 xchain0_n21_α:
 mov rax, qword ptr [r12 + 4528]
 mov qword ptr [r12 + 2784], rax
 mov rax, qword ptr [r12 + 4536]
 mov qword ptr [r12 + 2792], rax
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n22_α
# IR_VAR
 xchain0_n22_α:
 mov rax, qword ptr [r12 + 4480]
 mov qword ptr [r12 + 2416], rax
 mov rax, qword ptr [r12 + 4488]
 mov qword ptr [r12 + 2424], rax
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp xchain0_n26_α
# IR_SCAN_TAB
 xchain0_n23_α:
 mov rax, qword ptr [r12 + 4312]
 cmp rax, 1
 jge .Lx40_0
 add rax, r15
 add rax, 1
.Lx40_0:
 cmp rax, 1
 jl xchain0_n27_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n27_α
 mov qword ptr [r12 + 4288], r14
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
 mov qword ptr [r12 + 4272], rax
 mov qword ptr [r12 + 4280], rdx
 jmp xchain0_n27_α
 xchain0_n23_β:
 mov r14, qword ptr [r12 + 4288]
 jmp xchain0_n27_α
# IR_LIST_BANG
 xchain0_n24_α:
 mov qword ptr [r12 + 2768], 0
.Lx42_0:
 mov rdi, qword ptr [r12 + 2784]
 mov rsi, qword ptr [r12 + 2792]
 mov rdx, qword ptr [r12 + 2768]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 cmp rax, 99
 je xchain0_n22_α
 jmp xchain0_n28_α
 xchain0_n24_β:
 inc qword ptr [r12 + 2768]
 jmp .Lx42_0
# IR_VAR
 xchain0_n25_α:
 mov rax, qword ptr [r12 + 4528]
 mov qword ptr [r12 + 2480], rax
 mov rax, qword ptr [r12 + 4536]
 mov qword ptr [r12 + 2488], rax
 jmp xchain0_n29_α
 xchain0_n25_β:
 jmp xchain0_n26_α
# IR_VAR
 xchain0_n26_α:
 mov rax, qword ptr [r12 + 4480]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 4488]
 mov qword ptr [r12 + 2088], rax
 jmp xchain0_n30_α
 xchain0_n26_β:
 jmp xchain0_n31_α
# IR_LIT_CHARSET
 xchain0_n27_α:
 mov qword ptr [r12 + 4240], 1
 mov dword ptr [r12 + 4244], -1
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [r12 + 4248], rax
 jmp xchain0_n32_α
 xchain0_n27_β:
 jmp xchain0_n45_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "-0123456789"
# IR_LIT_INTEGER
 xchain0_n28_α:
 mov qword ptr [r12 + 2816], 6
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [r12 + 2824], rax
 jmp xchain0_n33_α
 xchain0_n28_β:
 jmp xchain0_n24_β
.Lx48_0:
 .quad 2
# IR_UNOP
 xchain0_n29_α:
 mov rdi, qword ptr [r12 + 4528]
 mov rsi, qword ptr [r12 + 4536]
 call rt_size_d@PLT
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 jmp xchain0_n34_α
 xchain0_n29_β:
 jmp xchain0_n26_α
# IR_LIT_INTEGER
 xchain0_n30_α:
 mov qword ptr [r12 + 2112], 6
 mov rax, qword ptr [rip + .Lx50_0]
 mov qword ptr [r12 + 2120], rax
 jmp xchain0_n35_α
 xchain0_n30_β:
 jmp xchain0_n31_α
.Lx50_0:
 .quad 7
# IR_VAR
 xchain0_n31_α:
 mov rax, qword ptr [r12 + 4496]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 4504]
 mov qword ptr [r12 + 1944], rax
 jmp xchain0_n36_α
 xchain0_n31_β:
 jmp xchain0_n37_α
# IR_SCAN_MANY
 xchain0_n32_α:
 mov eax, r14d
.Lx54_0:
 cmp eax, r15d
 jge .Lx54_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx54_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx54_1
 add eax, 1
 jmp .Lx54_0
.Lx54_1:
 cmp eax, r14d
 je xchain0_n45_α
 mov qword ptr [r12 + 4208], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 4216], rcx
 jmp xchain0_n38_α
 xchain0_n32_β:
 jmp xchain0_n45_α
.Lx54_2:
 .quad .Lx54_2_s
.Lx54_2_s:
 .string "-0123456789"
# IR_COERCE_NUMERIC
 xchain0_n33_α:
 mov eax, dword ptr [r12 + 2752]
 cmp eax, 7
 je .Lx56_1
 cmp eax, 6
 jne .Lx56_0
 mov eax, dword ptr [r12 + 2816]
 cmp eax, 6
 jne .Lx56_0
.Lx56_1:
 mov rax, qword ptr [r12 + 2752]
 mov qword ptr [r12 + 2720], rax
 mov rax, qword ptr [r12 + 2760]
 mov qword ptr [r12 + 2728], rax
 jmp .Lx56_2
.Lx56_0:
 lea rdi, [r12 + 2752]
 lea rsi, [r12 + 2816]
 lea rdx, [r12 + 2720]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx56_2:
 jmp xchain0_n39_α
 xchain0_n33_β:
 jmp xchain0_n22_α
# IR_COERCE_NUMERIC
 xchain0_n34_α:
 mov eax, dword ptr [r12 + 4480]
 cmp eax, 7
 je .Lx58_1
 cmp eax, 6
 jne .Lx58_0
 mov eax, dword ptr [r12 + 2448]
 cmp eax, 6
 jne .Lx58_0
.Lx58_1:
 mov rax, qword ptr [r12 + 4480]
 mov qword ptr [r12 + 2384], rax
 mov rax, qword ptr [r12 + 4488]
 mov qword ptr [r12 + 2392], rax
 jmp .Lx58_2
.Lx58_0:
 lea rdi, [r12 + 4480]
 lea rsi, [r12 + 2448]
 lea rdx, [r12 + 2384]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx58_2:
 jmp xchain0_n40_α
 xchain0_n34_β:
 jmp xchain0_n26_α
 xchain0_n35_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2080] -> [zr+2032]
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2040], rax
# marshal arg1 = producer-box slot [zr+2112] -> [zr+2048]
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 2056], rax
  .section .rodata
  .Lrkfn60: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn60]
 lea rsi, [r12 + 2032]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je xchain0_n31_α
 jmp xchain0_n41_α
 xchain0_n35_β:
 jmp xchain0_n31_α
 xchain0_n36_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1936] -> [zr+1904]
 mov rax, qword ptr [r12 + 1936]
 mov qword ptr [r12 + 1904], rax
 mov rax, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 1912], rax
  .section .rodata
  .Lrkfn62: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn62]
 lea rsi, [r12 + 1904]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 cmp eax, 99
 je xchain0_n37_α
 jmp xchain0_n42_α
 xchain0_n36_β:
 jmp xchain0_n37_α
# IR_VAR_REF
 xchain0_n37_α:
 lea rdi, [r12 + 4496]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain0_n43_α
 xchain0_n37_β:
 jmp xchain0_n49_α
# IR_SCAN_TAB
 xchain0_n38_α:
 mov rax, qword ptr [r12 + 4216]
 cmp rax, 1
 jge .Lx66_0
 add rax, r15
 add rax, 1
.Lx66_0:
 cmp rax, 1
 jl xchain0_n45_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n45_α
 mov qword ptr [r12 + 4192], r14
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
 mov qword ptr [r12 + 4176], rax
 mov qword ptr [r12 + 4184], rdx
 jmp xchain0_n44_α
 xchain0_n38_β:
 mov r14, qword ptr [r12 + 4192]
 jmp xchain0_n45_α
 xchain0_n39_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 2720]
 mov rsi, qword ptr [r12 + 2728]
 mov rdx, qword ptr [r12 + 2816]
 mov rcx, qword ptr [r12 + 2824]
 mov r8d, 18
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n22_α
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 jmp xchain0_n46_α
 xchain0_n39_β:
 jmp xchain0_n22_α
# IR_COERCE_NUMERIC
 xchain0_n40_α:
 mov eax, dword ptr [r12 + 2448]
 cmp eax, 7
 je .Lx69_1
 cmp eax, 6
 jne .Lx69_0
 mov eax, dword ptr [r12 + 4480]
 cmp eax, 6
 jne .Lx69_0
.Lx69_1:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 2352], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 2360], rax
 jmp .Lx69_2
.Lx69_0:
 lea rdi, [r12 + 2448]
 lea rsi, [r12 + 4480]
 lea rdx, [r12 + 2352]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx69_2:
 jmp xchain0_n47_α
 xchain0_n40_β:
 jmp xchain0_n26_α
 xchain0_n41_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2016] -> [zr+1984]
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 1992], rax
  .section .rodata
  .Lrkfn71: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn71]
 lea rsi, [r12 + 1984]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 cmp eax, 99
 je xchain0_n31_α
 jmp xchain0_n31_α
 xchain0_n41_β:
 jmp xchain0_n31_α
 xchain0_n42_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1888]
 mov rdx, qword ptr [r12 + 1896]
 mov qword ptr [r12 + 4496], rax
 mov qword ptr [r12 + 4504], rdx
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 jmp xchain0_n37_α
 xchain0_n42_β:
 jmp xchain0_n37_α
# IR_VAR
 xchain0_n43_α:
 mov rax, qword ptr [r12 + 4496]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 4504]
 mov qword ptr [r12 + 1736], rax
 jmp xchain0_n48_α
 xchain0_n43_β:
 jmp xchain0_n49_α
 xchain0_n44_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4176] -> [zr+4144]
 mov rax, qword ptr [r12 + 4176]
 mov qword ptr [r12 + 4144], rax
 mov rax, qword ptr [r12 + 4184]
 mov qword ptr [r12 + 4152], rax
  .section .rodata
  .Lrkfn76: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn76]
 lea rsi, [r12 + 4144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4128], rax
 mov qword ptr [r12 + 4136], rdx
 cmp eax, 99
 je xchain0_n45_α
 jmp xchain0_n50_α
 xchain0_n44_β:
 jmp xchain0_n45_α
# IR_LIT_CHARSET
 xchain0_n45_α:
 mov qword ptr [r12 + 4080], 1
 mov dword ptr [r12 + 4084], -1
 mov rax, qword ptr [rip + .Lx77_0]
 mov qword ptr [r12 + 4088], rax
 jmp xchain0_n51_α
 xchain0_n45_β:
 jmp xchain0_n63_α
.Lx77_0:
 .quad .Lx77_0_s
.Lx77_0_s:
 .string " "
# IR_COERCE_NUMERIC
 xchain0_n46_α:
 mov eax, dword ptr [r12 + 4480]
 cmp eax, 7
 je .Lx79_1
 cmp eax, 6
 jne .Lx79_0
 mov eax, dword ptr [r12 + 2688]
 cmp eax, 6
 jne .Lx79_0
.Lx79_1:
 mov rax, qword ptr [r12 + 4480]
 mov qword ptr [r12 + 2624], rax
 mov rax, qword ptr [r12 + 4488]
 mov qword ptr [r12 + 2632], rax
 jmp .Lx79_2
.Lx79_0:
 lea rdi, [r12 + 4480]
 lea rsi, [r12 + 2688]
 lea rdx, [r12 + 2624]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx79_2:
 jmp xchain0_n52_α
 xchain0_n46_β:
 jmp xchain0_n22_α
 xchain0_n47_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2384]
 cmp eax, 100
 je .Lx80_0
 mov eax, dword ptr [r12 + 2352]
 cmp eax, 100
 je .Lx80_0
 mov eax, dword ptr [r12 + 2384]
 cmp eax, 6
 jne .Lx80_2
 mov eax, dword ptr [r12 + 2352]
 cmp eax, 6
 jne .Lx80_2
.Lx80_1:
 mov rax, qword ptr [r12 + 2392]
 mov rcx, qword ptr [r12 + 2360]
 cqo
 idiv rcx
 mov qword ptr [r12 + 2320], 6
 mov qword ptr [r12 + 2328], rax
 jmp xchain0_n53_α
.Lx80_0:
 mov rdi, qword ptr [r12 + 2384]
 mov rsi, qword ptr [r12 + 2392]
 mov rdx, qword ptr [r12 + 2352]
 mov rcx, qword ptr [r12 + 2360]
 mov r8d, 3
 lea r9, [r12 + 2320]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx80_3
.Lx80_2:
 mov rdi, qword ptr [r12 + 2384]
 mov rsi, qword ptr [r12 + 2392]
 mov rdx, qword ptr [r12 + 2352]
 mov rcx, qword ptr [r12 + 2360]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n26_α
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
.Lx80_3:
 jmp xchain0_n53_α
 xchain0_n47_β:
 jmp xchain0_n26_α
# IR_UNOP
 xchain0_n48_α:
 mov rdi, qword ptr [r12 + 4496]
 mov rsi, qword ptr [r12 + 4504]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain0_n54_α
 xchain0_n48_β:
 jmp xchain0_n49_α
# IR_VAR
 xchain0_n49_α:
 mov rax, qword ptr [r12 + 4480]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 4488]
 mov qword ptr [r12 + 1464], rax
 jmp xchain0_n55_α
 xchain0_n49_β:
 jmp xchain0_n56_α
 xchain0_n50_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 4128]
 mov rdx, qword ptr [r12 + 4136]
 mov qword ptr [r12 + 4576], rax
 mov qword ptr [r12 + 4584], rdx
 mov qword ptr [r12 + 4112], rax
 mov qword ptr [r12 + 4120], rdx
 jmp xchain0_n45_α
 xchain0_n50_β:
 jmp xchain0_n45_α
# IR_SCAN_MANY
 xchain0_n51_α:
 mov eax, r14d
.Lx86_0:
 cmp eax, r15d
 jge .Lx86_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx86_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx86_1
 add eax, 1
 jmp .Lx86_0
.Lx86_1:
 cmp eax, r14d
 je xchain0_n63_α
 mov qword ptr [r12 + 4048], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 4056], rcx
 jmp xchain0_n57_α
 xchain0_n51_β:
 jmp xchain0_n63_α
.Lx86_2:
 .quad .Lx86_2_s
.Lx86_2_s:
 .string " "
# IR_COERCE_NUMERIC
 xchain0_n52_α:
 mov eax, dword ptr [r12 + 2688]
 cmp eax, 7
 je .Lx88_1
 cmp eax, 6
 jne .Lx88_0
 mov eax, dword ptr [r12 + 4480]
 cmp eax, 6
 jne .Lx88_0
.Lx88_1:
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 2592], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 2600], rax
 jmp .Lx88_2
.Lx88_0:
 lea rdi, [r12 + 2688]
 lea rsi, [r12 + 4480]
 lea rdx, [r12 + 2592]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx88_2:
 jmp xchain0_n58_α
 xchain0_n52_β:
 jmp xchain0_n22_α
 xchain0_n53_α:
# BOX IR_CALL sqrt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2320] -> [zr+2288]
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 2288], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 2296], rax
  .section .rodata
  .Lrkfn90: .string "sqrt"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn90]
 lea rsi, [r12 + 2288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 cmp eax, 99
 je xchain0_n26_α
 jmp xchain0_n59_α
 xchain0_n53_β:
 jmp xchain0_n26_α
# IR_LIT_INTEGER
 xchain0_n54_α:
 mov qword ptr [r12 + 1760], 6
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [r12 + 1768], rax
 jmp xchain0_n60_α
 xchain0_n54_β:
 jmp xchain0_n49_α
.Lx91_0:
 .quad 2
# IR_LIT_INTEGER
 xchain0_n55_α:
 mov qword ptr [r12 + 1488], 6
 mov rax, qword ptr [rip + .Lx92_0]
 mov qword ptr [r12 + 1496], rax
 jmp xchain0_n61_α
 xchain0_n55_β:
 jmp xchain0_n56_α
.Lx92_0:
 .quad 7
# IR_LIT_REAL
 xchain0_n56_α:
 mov qword ptr [r12 + 1312], 7
 mov rax, qword ptr [rip + .Lx93_0]
 mov qword ptr [r12 + 1320], rax
 jmp xchain0_n62_α
 xchain0_n56_β:
 jmp xchain0_n68_α
.Lx93_0:
 .quad 0
# IR_SCAN_TAB
 xchain0_n57_α:
 mov rax, qword ptr [r12 + 4056]
 cmp rax, 1
 jge .Lx95_0
 add rax, r15
 add rax, 1
.Lx95_0:
 cmp rax, 1
 jl xchain0_n63_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n63_α
 mov qword ptr [r12 + 4032], r14
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
 mov qword ptr [r12 + 4016], rax
 mov qword ptr [r12 + 4024], rdx
 jmp xchain0_n63_α
 xchain0_n57_β:
 mov r14, qword ptr [r12 + 4032]
 jmp xchain0_n63_α
 xchain0_n58_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2624]
 cmp eax, 100
 je .Lx96_0
 mov eax, dword ptr [r12 + 2592]
 cmp eax, 100
 je .Lx96_0
 mov eax, dword ptr [r12 + 2624]
 cmp eax, 6
 jne .Lx96_2
 mov eax, dword ptr [r12 + 2592]
 cmp eax, 6
 jne .Lx96_2
.Lx96_1:
 mov rax, qword ptr [r12 + 2632]
 mov rcx, qword ptr [r12 + 2600]
 add rax, rcx
 mov qword ptr [r12 + 2560], 6
 mov qword ptr [r12 + 2568], rax
 jmp xchain0_n64_α
.Lx96_0:
 mov rdi, qword ptr [r12 + 2624]
 mov rsi, qword ptr [r12 + 2632]
 mov rdx, qword ptr [r12 + 2592]
 mov rcx, qword ptr [r12 + 2600]
 mov r8d, 0
 lea r9, [r12 + 2560]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx96_3
.Lx96_2:
 mov rdi, qword ptr [r12 + 2624]
 mov rsi, qword ptr [r12 + 2632]
 mov rdx, qword ptr [r12 + 2592]
 mov rcx, qword ptr [r12 + 2600]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n22_α
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
.Lx96_3:
 jmp xchain0_n64_α
 xchain0_n58_β:
 jmp xchain0_n22_α
# IR_LIT_REAL
 xchain0_n59_α:
 mov qword ptr [r12 + 2512], 7
 mov rax, qword ptr [rip + .Lx97_0]
 mov qword ptr [r12 + 2520], rax
 jmp xchain0_n65_α
 xchain0_n59_β:
 jmp xchain0_n26_α
.Lx97_0:
 .quad 4602678819172646912
# IR_COERCE_NUMERIC
 xchain0_n60_α:
 mov eax, dword ptr [r12 + 1696]
 cmp eax, 7
 je .Lx99_1
 cmp eax, 6
 jne .Lx99_0
 mov eax, dword ptr [r12 + 1760]
 cmp eax, 6
 jne .Lx99_0
.Lx99_1:
 mov rax, qword ptr [r12 + 1696]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 1672], rax
 jmp .Lx99_2
.Lx99_0:
 lea rdi, [r12 + 1696]
 lea rsi, [r12 + 1760]
 lea rdx, [r12 + 1664]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx99_2:
 jmp xchain0_n66_α
 xchain0_n60_β:
 jmp xchain0_n49_α
 xchain0_n61_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1456] -> [zr+1408]
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1416], rax
# marshal arg1 = producer-box slot [zr+1488] -> [zr+1424]
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 1432], rax
  .section .rodata
  .Lrkfn101: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn101]
 lea rsi, [r12 + 1408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 cmp eax, 99
 je xchain0_n56_α
 jmp xchain0_n67_α
 xchain0_n61_β:
 jmp xchain0_n56_α
 xchain0_n62_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1312]
 mov rdx, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 4480], rax
 mov qword ptr [r12 + 4488], rdx
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain0_n68_α
 xchain0_n62_β:
 jmp xchain0_n68_α
# IR_LIT_INTEGER
 xchain0_n63_α:
 mov qword ptr [r12 + 3984], 6
 mov rax, qword ptr [rip + .Lx00001_0]
 mov qword ptr [r12 + 3992], rax
 jmp xchain0_n69_α
 xchain0_n63_β:
 jmp xchain0_n75_α
.Lx00001_0:
 .quad 0
 xchain0_n64_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2560]
 mov rdx, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 4480], rax
 mov qword ptr [r12 + 4488], rdx
 mov qword ptr [r12 + 2544], rax
 mov qword ptr [r12 + 2552], rdx
 jmp xchain0_n24_β
 xchain0_n64_β:
 jmp xchain0_n22_α
# IR_COERCE_NUMERIC
 xchain0_n65_α:
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 7
 je .Lx00002_1
 cmp eax, 6
 jne .Lx00002_0
 mov eax, dword ptr [r12 + 2512]
 cmp eax, 6
 jne .Lx00002_0
.Lx00002_1:
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 2240], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2248], rax
 jmp .Lx00002_2
.Lx00002_0:
 lea rdi, [r12 + 2272]
 lea rsi, [r12 + 2512]
 lea rdx, [r12 + 2240]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00002_2:
 jmp xchain0_n70_α
 xchain0_n65_β:
 jmp xchain0_n26_α
 xchain0_n66_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1664]
 cmp eax, 100
 je .Lx00003_0
 mov eax, dword ptr [r12 + 1664]
 cmp eax, 6
 jne .Lx00003_2
.Lx00003_1:
 mov rax, qword ptr [r12 + 1672]
 mov rcx, 2
 cqo
 idiv rcx
 mov qword ptr [r12 + 1632], 6
 mov qword ptr [r12 + 1640], rax
 jmp xchain0_n71_α
.Lx00003_0:
 mov rdi, qword ptr [r12 + 1664]
 mov rsi, qword ptr [r12 + 1672]
 mov rdx, qword ptr [r12 + 1760]
 mov rcx, qword ptr [r12 + 1768]
 mov r8d, 3
 lea r9, [r12 + 1632]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00003_3
.Lx00003_2:
 mov rdi, qword ptr [r12 + 1664]
 mov rsi, qword ptr [r12 + 1672]
 mov rdx, qword ptr [r12 + 1760]
 mov rcx, qword ptr [r12 + 1768]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n49_α
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
.Lx00003_3:
 jmp xchain0_n71_α
 xchain0_n66_β:
 jmp xchain0_n49_α
 xchain0_n67_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1392] -> [zr+1360]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1368], rax
  .section .rodata
  .Lrkfn109: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn109]
 lea rsi, [r12 + 1360]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 cmp eax, 99
 je xchain0_n56_α
 jmp xchain0_n56_α
 xchain0_n67_β:
 jmp xchain0_n56_α
# IR_VAR
 xchain0_n68_α:
 mov rax, qword ptr [r12 + 4496]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 4504]
 mov qword ptr [r12 + 888], rax
 jmp xchain0_n72_α
 xchain0_n68_β:
 jmp xchain0_n73_α
# IR_SCAN_TAB
 xchain0_n69_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00004_0
 add rax, r15
 add rax, 1
.Lx00004_0:
 cmp rax, 1
 jl xchain0_n75_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n75_α
 mov qword ptr [r12 + 3968], r14
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
 mov qword ptr [r12 + 3952], rax
 mov qword ptr [r12 + 3960], rdx
 jmp xchain0_n74_α
 xchain0_n69_β:
 mov r14, qword ptr [r12 + 3968]
 jmp xchain0_n75_α
 xchain0_n70_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 2240]
 mov rsi, qword ptr [r12 + 2248]
 mov rdx, qword ptr [r12 + 2512]
 mov rcx, qword ptr [r12 + 2520]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n26_α
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 jmp xchain0_n76_α
 xchain0_n70_β:
 jmp xchain0_n26_α
# IR_LIT_INTEGER
 xchain0_n71_α:
 mov qword ptr [r12 + 1792], 6
 mov rax, qword ptr [rip + .Lx00005_0]
 mov qword ptr [r12 + 1800], rax
 jmp xchain0_n77_α
 xchain0_n71_β:
 jmp xchain0_n49_α
.Lx00005_0:
 .quad 1
# IR_LIST_BANG
 xchain0_n72_α:
 mov qword ptr [r12 + 864], 0
.Lx00006_0:
 mov rdi, qword ptr [r12 + 880]
 mov rsi, qword ptr [r12 + 888]
 mov rdx, qword ptr [r12 + 864]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp rax, 99
 je xchain0_n73_α
 jmp xchain0_n78_α
 xchain0_n72_β:
 inc qword ptr [r12 + 864]
 jmp .Lx00006_0
# KEYWORD_read
 xchain0_n73_α:
 mov rdi, qword ptr [rip + .Lx00007_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain0_n79_α
 xchain0_n73_β:
 jmp xchain0_n86_α
.Lx00007_0:
 .quad .Lx00007_0_s
.Lx00007_0_s:
 .string "&e"
 xchain0_n74_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3952]
 mov rdx, qword ptr [r12 + 3960]
 mov qword ptr [r12 + 4592], rax
 mov qword ptr [r12 + 4600], rdx
 mov qword ptr [r12 + 3936], rax
 mov qword ptr [r12 + 3944], rdx
 jmp xchain0_n75_α
 xchain0_n74_β:
 jmp xchain0_n75_α
# IR_VAR
 xchain0_n75_α:
 mov rax, qword ptr [r12 + 4592]
 mov qword ptr [r12 + 3872], rax
 mov rax, qword ptr [r12 + 4600]
 mov qword ptr [r12 + 3880], rax
 jmp xchain0_n80_α
 xchain0_n75_β:
 jmp xchain0_n81_α
 xchain0_n76_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2208] -> [zr+2176]
 mov rax, qword ptr [r12 + 2208]
 mov qword ptr [r12 + 2176], rax
 mov rax, qword ptr [r12 + 2216]
 mov qword ptr [r12 + 2184], rax
  .section .rodata
  .Lrkfn123: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn123]
 lea rsi, [r12 + 2176]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 cmp eax, 99
 je xchain0_n26_α
 jmp xchain0_n82_α
 xchain0_n76_β:
 jmp xchain0_n26_α
# IR_COERCE_NUMERIC
 xchain0_n77_α:
 mov eax, dword ptr [r12 + 1632]
 cmp eax, 7
 je .Lx00008_1
 cmp eax, 6
 jne .Lx00008_0
 mov eax, dword ptr [r12 + 1792]
 cmp eax, 6
 jne .Lx00008_0
.Lx00008_1:
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1608], rax
 jmp .Lx00008_2
.Lx00008_0:
 lea rdi, [r12 + 1632]
 lea rsi, [r12 + 1792]
 lea rdx, [r12 + 1600]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00008_2:
 jmp xchain0_n83_α
 xchain0_n77_β:
 jmp xchain0_n49_α
 xchain0_n78_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [r12 + 4512], rax
 mov qword ptr [r12 + 4520], rdx
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain0_n84_α
 xchain0_n78_β:
 jmp xchain0_n73_α
# IR_VAR
 xchain0_n79_α:
 mov rax, qword ptr [r12 + 4480]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 4488]
 mov qword ptr [r12 + 712], rax
 jmp xchain0_n85_α
 xchain0_n79_β:
 jmp xchain0_n86_α
# IR_LIT_STRING
 xchain0_n80_α:
 mov qword ptr [r12 + 3904], 1
 mov rax, qword ptr [rip + .Lx00009_0]
 mov qword ptr [r12 + 3912], rax
 jmp xchain0_n87_α
 xchain0_n80_β:
 jmp xchain0_n81_α
.Lx00009_0:
 .quad .Lx00009_0_s
.Lx00009_0_s:
 .string "overhead"
# IR_VAR
 xchain0_n81_α:
 mov rax, qword ptr [r12 + 4592]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 4600]
 mov qword ptr [r12 + 3784], rax
 jmp xchain0_n88_α
 xchain0_n81_β:
 jmp xchain0_n89_α
 xchain0_n82_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2160]
 mov rdx, qword ptr [r12 + 2168]
 mov qword ptr [r12 + 4480], rax
 mov qword ptr [r12 + 4488], rdx
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain0_n26_α
 xchain0_n82_β:
 jmp xchain0_n26_α
 xchain0_n83_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1600]
 cmp eax, 100
 je .Lx00010_0
 mov eax, dword ptr [r12 + 1600]
 cmp eax, 6
 jne .Lx00010_2
.Lx00010_1:
 mov rax, qword ptr [r12 + 1608]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 1568], 6
 mov qword ptr [r12 + 1576], rax
 jmp xchain0_n90_α
.Lx00010_0:
 mov rdi, qword ptr [r12 + 1600]
 mov rsi, qword ptr [r12 + 1608]
 mov rdx, qword ptr [r12 + 1792]
 mov rcx, qword ptr [r12 + 1800]
 mov r8d, 0
 lea r9, [r12 + 1568]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00010_3
.Lx00010_2:
 mov rdi, qword ptr [r12 + 1600]
 mov rsi, qword ptr [r12 + 1608]
 mov rdx, qword ptr [r12 + 1792]
 mov rcx, qword ptr [r12 + 1800]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n49_α
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
.Lx00010_3:
 jmp xchain0_n90_α
 xchain0_n83_β:
 jmp xchain0_n49_α
# IR_VAR
 xchain0_n84_α:
 mov rax, qword ptr [r12 + 4480]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 4488]
 mov qword ptr [r12 + 1032], rax
 jmp xchain0_n91_α
 xchain0_n84_β:
 jmp xchain0_n72_β
# IR_VAR
 xchain0_n85_α:
 mov rax, qword ptr [r12 + 4496]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 4504]
 mov qword ptr [r12 + 776], rax
 jmp xchain0_n92_α
 xchain0_n85_β:
 jmp xchain0_n86_α
# IR_VAR
 xchain0_n86_α:
 mov rax, qword ptr [r12 + 4480]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 4488]
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n93_α
 xchain0_n86_β:
 jmp xchain0_n94_α
 xchain0_n87_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 4592]
 mov rsi, qword ptr [r12 + 4600]
 mov rdx, qword ptr [r12 + 3904]
 mov rcx, qword ptr [r12 + 3912]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n81_α
 mov rdi, qword ptr [r12 + 3904]
 mov rsi, qword ptr [r12 + 3912]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3840], rax
 mov qword ptr [r12 + 3848], rdx
 jmp xchain0_n95_α
 xchain0_n87_β:
 jmp xchain0_n81_α
# IR_LIT_STRING
 xchain0_n88_α:
 mov qword ptr [r12 + 3808], 1
 mov rax, qword ptr [rip + .Lx00011_0]
 mov qword ptr [r12 + 3816], rax
 jmp xchain0_n96_α
 xchain0_n88_β:
 jmp xchain0_n89_α
.Lx00011_0:
 .quad .Lx00011_0_s
.Lx00011_0_s:
 .string "nothing"
# IR_VAR
 xchain0_n89_α:
 mov rax, qword ptr [r12 + 4496]
 mov qword ptr [r12 + 3680], rax
 mov rax, qword ptr [r12 + 4504]
 mov qword ptr [r12 + 3688], rax
 jmp xchain0_n97_α
 xchain0_n89_β:
 jmp xchain0_n98_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n90_α:
 mov rdi, qword ptr [r12 + 1536]
 mov rsi, qword ptr [r12 + 1544]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n49_α
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 jmp xchain0_n99_α
 xchain0_n90_β:
 jmp xchain0_n49_α
# IR_VAR
 xchain0_n91_α:
 mov rax, qword ptr [r12 + 4512]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 4520]
 mov qword ptr [r12 + 1240], rax
 jmp xchain0_n00012_α
 xchain0_n91_β:
 jmp xchain0_n00013_α
# IR_UNOP
 xchain0_n92_α:
 mov rdi, qword ptr [r12 + 4496]
 mov rsi, qword ptr [r12 + 4504]
 call rt_size_d@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain0_n00014_α
 xchain0_n92_β:
 jmp xchain0_n86_α
# IR_LIT_INTEGER
 xchain0_n93_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx00015_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain0_n00001_α
 xchain0_n93_β:
 jmp xchain0_n94_α
.Lx00015_0:
 .quad 7
# IR_LIT_STRING
 xchain0_n94_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00016_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n00017_α
 xchain0_n94_β:
 jmp xchain0_n00018_α
.Lx00016_0:
 .quad .Lx00016_0_s
.Lx00016_0_s:
 .string "   "
# IR_VAR
 xchain0_n95_α:
 mov rax, qword ptr [r12 + 4576]
 mov qword ptr [r12 + 3424], rax
 mov rax, qword ptr [r12 + 4584]
 mov qword ptr [r12 + 3432], rax
 jmp xchain0_n00019_α
 xchain0_n95_β:
 jmp xchain0_n98_α
 xchain0_n96_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 4592]
 mov rsi, qword ptr [r12 + 4600]
 mov rdx, qword ptr [r12 + 3808]
 mov rcx, qword ptr [r12 + 3816]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n89_α
 mov rdi, qword ptr [r12 + 3808]
 mov rsi, qword ptr [r12 + 3816]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3744], rax
 mov qword ptr [r12 + 3752], rdx
 jmp xchain0_n00002_α
 xchain0_n96_β:
 jmp xchain0_n89_α
# IR_VAR
 xchain0_n97_α:
 mov rax, qword ptr [r12 + 4576]
 mov qword ptr [r12 + 3712], rax
 mov rax, qword ptr [r12 + 4584]
 mov qword ptr [r12 + 3720], rax
 jmp xchain0_n00003_α
 xchain0_n97_β:
 jmp xchain0_n98_α
# IR_GEN_SCAN
 xchain0_n98_α:
 lea rdi, [r12 + 3296]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 3296]
 mov r14, qword ptr [r12 + 3304]
 mov r15, qword ptr [r12 + 3312]
 jmp xchain0_n4_α
 xchain0_n98_β:
 jmp xchain0_n4_α
# IR_DEREF variable -> value
 xchain0_n99_α:
 mov rdi, qword ptr [r12 + 1824]
 mov rsi, qword ptr [r12 + 1832]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n49_α
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 jmp xchain0_n00020_α
 xchain0_n99_β:
 jmp xchain0_n49_α
# IR_LIT_INTEGER
 xchain0_n00012_α:
 mov qword ptr [r12 + 1264], 6
 mov rax, qword ptr [rip + .Lx00021_0]
 mov qword ptr [r12 + 1272], rax
 jmp xchain0_n00022_α
 xchain0_n00012_β:
 jmp xchain0_n00013_α
.Lx00021_0:
 .quad 0
# IR_VAR
 xchain0_n00013_α:
 mov rax, qword ptr [r12 + 4512]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 4520]
 mov qword ptr [r12 + 1176], rax
 jmp xchain0_n00023_α
 xchain0_n00013_β:
 jmp xchain0_n72_β
# IR_COERCE_NUMERIC
 xchain0_n00014_α:
 mov eax, dword ptr [r12 + 4480]
 cmp eax, 7
 je .Lx00024_1
 cmp eax, 6
 jne .Lx00024_0
 mov eax, dword ptr [r12 + 736]
 cmp eax, 6
 jne .Lx00024_0
.Lx00024_1:
 mov rax, qword ptr [r12 + 4480]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 4488]
 mov qword ptr [r12 + 680], rax
 jmp .Lx00024_2
.Lx00024_0:
 lea rdi, [r12 + 4480]
 lea rsi, [r12 + 736]
 lea rdx, [r12 + 672]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00024_2:
 jmp xchain0_n00025_α
 xchain0_n00014_β:
 jmp xchain0_n86_α
 xchain0_n00001_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+240]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+256]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn164: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn164]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain0_n94_α
 jmp xchain0_n00026_α
 xchain0_n00001_β:
 jmp xchain0_n94_α
# IR_VAR
 xchain0_n00017_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 152], rax
 jmp xchain0_n00004_α
 xchain0_n00017_β:
 jmp xchain0_n00018_α
 xchain0_n00019_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3424]
 mov rdx, qword ptr [r12 + 3432]
 mov qword ptr [r12 + 4544], rax
 mov qword ptr [r12 + 4552], rdx
 mov qword ptr [r12 + 3408], rax
 mov qword ptr [r12 + 3416], rdx
 jmp xchain0_n00005_α
 xchain0_n00019_β:
 jmp xchain0_n98_α
# IR_VAR
 xchain0_n00002_α:
 mov rax, qword ptr [r12 + 4528]
 mov qword ptr [r12 + 3552], rax
 mov rax, qword ptr [r12 + 4536]
 mov qword ptr [r12 + 3560], rax
 jmp xchain0_n00027_α
 xchain0_n00002_β:
 jmp xchain0_n98_α
 xchain0_n00003_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3680] -> [zr+3632]
 mov rax, qword ptr [r12 + 3680]
 mov qword ptr [r12 + 3632], rax
 mov rax, qword ptr [r12 + 3688]
 mov qword ptr [r12 + 3640], rax
# marshal arg1 = producer-box slot [zr+3712] -> [zr+3648]
 mov rax, qword ptr [r12 + 3712]
 mov qword ptr [r12 + 3648], rax
 mov rax, qword ptr [r12 + 3720]
 mov qword ptr [r12 + 3656], rax
  .section .rodata
  .Lrkfn171: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn171]
 lea rsi, [r12 + 3632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3616], rax
 mov qword ptr [r12 + 3624], rdx
 cmp eax, 99
 je xchain0_n98_α
 jmp xchain0_n00006_α
 xchain0_n00003_β:
 jmp xchain0_n98_α
 xchain0_n00020_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1856]
 mov rdx, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 4480], rax
 mov qword ptr [r12 + 4488], rdx
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain0_n49_α
 xchain0_n00020_β:
 jmp xchain0_n49_α
 xchain0_n00022_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 4512]
 cmp eax, 100
 je .Lx00028_0
 mov eax, dword ptr [r12 + 1264]
 cmp eax, 100
 je .Lx00028_0
 mov eax, dword ptr [r12 + 4512]
 cmp eax, 6
 jne .Lx00028_2
 mov eax, dword ptr [r12 + 1264]
 cmp eax, 6
 jne .Lx00028_2
.Lx00028_1:
 mov rax, qword ptr [r12 + 4520]
 mov rcx, qword ptr [r12 + 1272]
 cmp rax, rcx
 jg xchain0_n00013_α
 mov rcx, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1200], rcx
 mov rcx, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1208], rcx
 jmp xchain0_n00007_α
.Lx00028_0:
 mov rdi, qword ptr [r12 + 4512]
 mov rsi, qword ptr [r12 + 4520]
 mov rdx, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1272]
 mov r8d, 6
 lea r9, [r12 + 1200]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00028_1
 cmp eax, 1
 je xchain0_n00013_α
 jmp xchain0_n00007_α
.Lx00028_2:
 mov rdi, qword ptr [r12 + 4512]
 mov rsi, qword ptr [r12 + 4520]
 mov rdx, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1272]
 mov r8d, 6
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n00013_α
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1208], rax
 jmp xchain0_n00007_α
 xchain0_n00022_β:
 jmp xchain0_n00013_α
 xchain0_n00023_α:
# BOX IR_CALL log(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1168] -> [zr+1136]
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1144], rax
  .section .rodata
  .Lrkfn175: .string "log"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn175]
 lea rsi, [r12 + 1136]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 cmp eax, 99
 je xchain0_n72_β
 jmp xchain0_n00029_α
 xchain0_n00023_β:
 jmp xchain0_n72_β
# IR_COERCE_NUMERIC
 xchain0_n00025_α:
 mov eax, dword ptr [r12 + 736]
 cmp eax, 7
 je .Lx00030_1
 cmp eax, 6
 jne .Lx00030_0
 mov eax, dword ptr [r12 + 4480]
 cmp eax, 6
 jne .Lx00030_0
.Lx00030_1:
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 648], rax
 jmp .Lx00030_2
.Lx00030_0:
 lea rdi, [r12 + 736]
 lea rsi, [r12 + 4480]
 lea rdx, [r12 + 640]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00030_2:
 jmp xchain0_n00031_α
 xchain0_n00025_β:
 jmp xchain0_n86_α
 xchain0_n00026_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn179: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn179]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain0_n94_α
 jmp xchain0_n94_α
 xchain0_n00026_β:
 jmp xchain0_n94_α
 xchain0_n00004_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+64]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 72], rax
# marshal arg1 = producer-box slot [zr+144] -> [zr+80]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn181: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn181]
 lea rsi, [r12 + 64]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain0_n00018_α
 jmp xchain0_n00018_α
 xchain0_n00004_β:
 jmp xchain0_n00018_α
# IR_RETURN
 xchain0_n00018_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_dofile_γ
# IR_MOVE_LABEL
 xchain0_n00005_α:
 mov rax, qword ptr [r12 + 3408]
 mov qword ptr [r12 + 3376], rax
 mov rax, qword ptr [r12 + 3416]
 mov qword ptr [r12 + 3384], rax
 lea rax, [rip + xchain0_n98_α]
 mov qword ptr [r12 + 3392], rax
 jmp xchain0_n00032_α
 xchain0_n00005_β:
 jmp xchain0_n98_α
# IR_VAR
 xchain0_n00027_α:
 mov rax, qword ptr [r12 + 4576]
 mov qword ptr [r12 + 3584], rax
 mov rax, qword ptr [r12 + 4584]
 mov qword ptr [r12 + 3592], rax
 jmp xchain0_n00033_α
 xchain0_n00027_β:
 jmp xchain0_n98_α
# IR_MOVE_LABEL
 xchain0_n00006_α:
 mov rax, qword ptr [r12 + 3616]
 mov qword ptr [r12 + 3456], rax
 mov rax, qword ptr [r12 + 3624]
 mov qword ptr [r12 + 3464], rax
 lea rax, [rip + xchain0_n98_α]
 mov qword ptr [r12 + 3472], rax
 jmp xchain0_n00034_α
 xchain0_n00006_β:
 jmp xchain0_n98_α
# IR_LIT_INTEGER
 xchain0_n00007_α:
 mov qword ptr [r12 + 1088], 6
 mov rax, qword ptr [rip + .Lx00035_0]
 mov qword ptr [r12 + 1096], rax
 jmp xchain0_n00036_α
 xchain0_n00007_β:
 jmp xchain0_n72_β
.Lx00035_0:
 .quad 0
# IR_MOVE_LABEL
 xchain0_n00029_α:
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1064], rax
 lea rax, [rip + xchain0_n72_β]
 mov qword ptr [r12 + 1072], rax
 jmp xchain0_n00037_α
 xchain0_n00029_β:
 jmp xchain0_n72_β
 xchain0_n00031_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 672]
 cmp eax, 100
 je .Lx00038_0
 mov eax, dword ptr [r12 + 640]
 cmp eax, 100
 je .Lx00038_0
 mov eax, dword ptr [r12 + 672]
 cmp eax, 6
 jne .Lx00038_2
 mov eax, dword ptr [r12 + 640]
 cmp eax, 6
 jne .Lx00038_2
.Lx00038_1:
 mov rax, qword ptr [r12 + 680]
 mov rcx, qword ptr [r12 + 648]
 cqo
 idiv rcx
 mov qword ptr [r12 + 608], 6
 mov qword ptr [r12 + 616], rax
 jmp xchain0_n00009_α
.Lx00038_0:
 mov rdi, qword ptr [r12 + 672]
 mov rsi, qword ptr [r12 + 680]
 mov rdx, qword ptr [r12 + 640]
 mov rcx, qword ptr [r12 + 648]
 mov r8d, 3
 lea r9, [r12 + 608]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00038_3
.Lx00038_2:
 mov rdi, qword ptr [r12 + 672]
 mov rsi, qword ptr [r12 + 680]
 mov rdx, qword ptr [r12 + 640]
 mov rcx, qword ptr [r12 + 648]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n86_α
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
.Lx00038_3:
 jmp xchain0_n00009_α
 xchain0_n00031_β:
 jmp xchain0_n86_α
 xchain0_n00032_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 3376]
 mov qword ptr [r12 + 3360], rax
 mov rax, qword ptr [r12 + 3384]
 mov qword ptr [r12 + 3368], rax
 jmp xchain0_n00039_α
xchain0_n00032_β:
 jmp xchain0_n98_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n00040_α:
 jmp qword ptr [r12 + 3392]
 xchain0_n00040_β:
 jmp xchain0_n98_α
 xchain0_n00033_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3552] -> [zr+3504]
 mov rax, qword ptr [r12 + 3552]
 mov qword ptr [r12 + 3504], rax
 mov rax, qword ptr [r12 + 3560]
 mov qword ptr [r12 + 3512], rax
# marshal arg1 = producer-box slot [zr+3584] -> [zr+3520]
 mov rax, qword ptr [r12 + 3584]
 mov qword ptr [r12 + 3520], rax
 mov rax, qword ptr [r12 + 3592]
 mov qword ptr [r12 + 3528], rax
  .section .rodata
  .Lrkfn197: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn197]
 lea rsi, [r12 + 3504]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3488], rax
 mov qword ptr [r12 + 3496], rdx
 cmp eax, 99
 je xchain0_n98_α
 jmp xchain0_n00041_α
 xchain0_n00033_β:
 jmp xchain0_n98_α
# IR_MOVE_LABEL
 xchain0_n00034_α:
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 3376], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 3384], rax
 lea rax, [rip + xchain0_n00008_α]
 mov qword ptr [r12 + 3392], rax
 jmp xchain0_n00032_α
 xchain0_n00034_β:
 jmp xchain0_n98_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n00008_α:
 jmp qword ptr [r12 + 3472]
 xchain0_n00008_β:
 jmp xchain0_n98_α
# IR_MOVE_LABEL
 xchain0_n00036_α:
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1064], rax
 lea rax, [rip + xchain0_n72_β]
 mov qword ptr [r12 + 1072], rax
 jmp xchain0_n00037_α
 xchain0_n00036_β:
 jmp xchain0_n72_β
# IR_COERCE_NUMERIC
 xchain0_n00037_α:
 mov eax, dword ptr [r12 + 4480]
 cmp eax, 7
 je .Lx00042_1
 cmp eax, 6
 jne .Lx00042_0
 mov eax, dword ptr [r12 + 1056]
 cmp eax, 6
 jne .Lx00042_0
.Lx00042_1:
 mov rax, qword ptr [r12 + 4480]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 4488]
 mov qword ptr [r12 + 1000], rax
 jmp .Lx00042_2
.Lx00042_0:
 lea rdi, [r12 + 4480]
 lea rsi, [r12 + 1056]
 lea rdx, [r12 + 992]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00042_2:
 jmp xchain0_n00043_α
 xchain0_n00037_β:
 jmp xchain0_n72_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n00044_α:
 jmp qword ptr [r12 + 1072]
 xchain0_n00044_β:
 jmp xchain0_n72_β
# IR_COERCE_NUMERIC
 xchain0_n00009_α:
 mov eax, dword ptr [r12 + 576]
 cmp eax, 7
 je .Lx00045_1
 cmp eax, 6
 jne .Lx00045_0
 mov eax, dword ptr [r12 + 608]
 cmp eax, 6
 jne .Lx00045_0
.Lx00045_1:
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
 jmp .Lx00045_2
.Lx00045_0:
 lea rdi, [r12 + 576]
 lea rsi, [r12 + 608]
 lea rdx, [r12 + 544]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00045_2:
 jmp xchain0_n00010_α
 xchain0_n00009_β:
 jmp xchain0_n86_α
# IR_GEN_SCAN
 xchain0_n00039_α:
 mov rax, qword ptr [r12 + 3360]
 mov qword ptr [r12 + 3328], rax
 mov rax, qword ptr [r12 + 3368]
 mov qword ptr [r12 + 3336], rax
 lea rdi, [r12 + 3296]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 3296]
 mov r14, qword ptr [r12 + 3304]
 mov r15, qword ptr [r12 + 3312]
 jmp xchain0_n4_α
 xchain0_n00039_β:
 jmp xchain0_n4_α
# IR_MOVE_LABEL
 xchain0_n00041_α:
 mov rax, qword ptr [r12 + 3488]
 mov qword ptr [r12 + 3456], rax
 mov rax, qword ptr [r12 + 3496]
 mov qword ptr [r12 + 3464], rax
 lea rax, [rip + xchain0_n98_α]
 mov qword ptr [r12 + 3472], rax
 jmp xchain0_n00034_α
 xchain0_n00041_β:
 jmp xchain0_n98_α
# IR_COERCE_NUMERIC
 xchain0_n00043_α:
 mov eax, dword ptr [r12 + 1056]
 cmp eax, 7
 je .Lx00046_1
 cmp eax, 6
 jne .Lx00046_0
 mov eax, dword ptr [r12 + 4480]
 cmp eax, 6
 jne .Lx00046_0
.Lx00046_1:
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 968], rax
 jmp .Lx00046_2
.Lx00046_0:
 lea rdi, [r12 + 1056]
 lea rsi, [r12 + 4480]
 lea rdx, [r12 + 960]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00046_2:
 jmp xchain0_n00047_α
 xchain0_n00043_β:
 jmp xchain0_n72_β
# IR_COERCE_NUMERIC
 xchain0_n00010_α:
 mov eax, dword ptr [r12 + 608]
 cmp eax, 7
 je .Lx00048_1
 cmp eax, 6
 jne .Lx00048_0
 mov eax, dword ptr [r12 + 576]
 cmp eax, 6
 jne .Lx00048_0
.Lx00048_1:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 520], rax
 jmp .Lx00048_2
.Lx00048_0:
 lea rdi, [r12 + 608]
 lea rsi, [r12 + 576]
 lea rdx, [r12 + 512]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00048_2:
 jmp xchain0_n00049_α
 xchain0_n00010_β:
 jmp xchain0_n86_α
 xchain0_n00047_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 992]
 cmp eax, 100
 je .Lx00050_0
 mov eax, dword ptr [r12 + 960]
 cmp eax, 100
 je .Lx00050_0
 mov eax, dword ptr [r12 + 992]
 cmp eax, 6
 jne .Lx00050_2
 mov eax, dword ptr [r12 + 960]
 cmp eax, 6
 jne .Lx00050_2
.Lx00050_1:
 mov rax, qword ptr [r12 + 1000]
 mov rcx, qword ptr [r12 + 968]
 add rax, rcx
 mov qword ptr [r12 + 928], 6
 mov qword ptr [r12 + 936], rax
 jmp xchain0_n00051_α
.Lx00050_0:
 mov rdi, qword ptr [r12 + 992]
 mov rsi, qword ptr [r12 + 1000]
 mov rdx, qword ptr [r12 + 960]
 mov rcx, qword ptr [r12 + 968]
 mov r8d, 0
 lea r9, [r12 + 928]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00050_3
.Lx00050_2:
 mov rdi, qword ptr [r12 + 992]
 mov rsi, qword ptr [r12 + 1000]
 mov rdx, qword ptr [r12 + 960]
 mov rcx, qword ptr [r12 + 968]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n72_β
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
.Lx00050_3:
 jmp xchain0_n00051_α
 xchain0_n00047_β:
 jmp xchain0_n72_β
 xchain0_n00049_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 mov r8d, 18
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n86_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain0_n00052_α
 xchain0_n00049_β:
 jmp xchain0_n86_α
 xchain0_n00051_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 928]
 mov rdx, qword ptr [r12 + 936]
 mov qword ptr [r12 + 4480], rax
 mov qword ptr [r12 + 4488], rdx
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain0_n72_β
 xchain0_n00051_β:
 jmp xchain0_n72_β
# IR_LIT_REAL
 xchain0_n00052_α:
 mov qword ptr [r12 + 800], 7
 mov rax, qword ptr [rip + .Lx00053_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain0_n00054_α
 xchain0_n00052_β:
 jmp xchain0_n86_α
.Lx00053_0:
 .quad 4602678819172646912
# IR_COERCE_NUMERIC
 xchain0_n00054_α:
 mov eax, dword ptr [r12 + 480]
 cmp eax, 7
 je .Lx00055_1
 cmp eax, 6
 jne .Lx00055_0
 mov eax, dword ptr [r12 + 800]
 cmp eax, 6
 jne .Lx00055_0
.Lx00055_1:
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 456], rax
 jmp .Lx00055_2
.Lx00055_0:
 lea rdi, [r12 + 480]
 lea rsi, [r12 + 800]
 lea rdx, [r12 + 448]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00055_2:
 jmp xchain0_n00056_α
 xchain0_n00054_β:
 jmp xchain0_n86_α
 xchain0_n00056_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n86_α
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain0_n00057_α
 xchain0_n00056_β:
 jmp xchain0_n86_α
 xchain0_n00057_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+384]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lrkfn226: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn226]
 lea rsi, [r12 + 384]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain0_n86_α
 jmp xchain0_n00011_α
 xchain0_n00057_β:
 jmp xchain0_n86_α
 xchain0_n00011_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 4480], rax
 mov qword ptr [r12 + 4488], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n86_α
 xchain0_n00011_β:
 jmp xchain0_n86_α
proc_dofile_β:
jmp proc_dofile_ω
proc_dofile_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 4464]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_dofile_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
proc_startup:
  push rbp
  mov rbp, rsp
  .section .rodata
  .Lstartup_pname0: .string "dofile"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_dofile_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 4608
  call rt_proc_set_frame_bytes@PLT
  pop rbp
  ret
  .globl main
main:
  push rbp
  mov rbp, rsp
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  call rt_frame@PLT
  mov rdi, rax
  push rdi
  sub rsp, 8
  mov rdi, qword ptr [rbp - 16]
  add rdi, 8
  mov esi, dword ptr [rbp - 8]
  sub esi, 1
  call rt_args_list_from@PLT
  add rsp, 8
  pop rdi
  mov qword ptr [rdi + 16], rax
  mov qword ptr [rdi + 24], rdx
  xor esi, esi
  call main_α
  xor eax, eax
  mov rsp, rbp
  pop rbp
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
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 896], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain00058_n0_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx00059_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain00058_n1_α
 xchain00058_n0_β:
 jmp xchain00058_n2_α
.Lx00059_0:
 .quad .Lx00059_0_s
.Lx00059_0_s:
 .string "  N ovhead rmserr median  gmean   filename"
 xchain00058_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn231: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn231]
 lea rsi, [r12 + 832]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain00058_n2_α
 jmp xchain00058_n2_α
 xchain00058_n1_β:
 jmp xchain00058_n2_α
# IR_VAR
 xchain00058_n2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 760], rax
 jmp xchain00058_n3_α
 xchain00058_n2_β:
 jmp xchain00058_n4_α
# IR_UNOP
 xchain00058_n3_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00058_n5_α
 xchain00058_n3_β:
 jmp xchain00058_n4_α
# IR_VAR
 xchain00058_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 264], rax
 jmp xchain00058_n6_α
 xchain00058_n4_β:
 jmp xchain00058_n10_α
# IR_LIT_INTEGER
 xchain00058_n5_α:
 mov qword ptr [r12 + 784], 6
 mov rax, qword ptr [rip + .Lx00060_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain00058_n8_α
 xchain00058_n5_β:
 jmp xchain00058_n4_α
.Lx00060_0:
 .quad 0
 xchain00058_n6_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn239: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn239]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain00058_n10_α
 jmp xchain00058_n9_α
 xchain00058_n6_β:
 jmp xchain00058_n10_α
 xchain00058_n7_α:
 jmp xchain00058_n10_α
xchain00058_n7_β:
 jmp xchain00058_n10_α
 xchain00058_n8_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 720]
 cmp eax, 100
 je .Lx00061_0
 mov eax, dword ptr [r12 + 784]
 cmp eax, 100
 je .Lx00061_0
 mov eax, dword ptr [r12 + 720]
 cmp eax, 6
 jne .Lx00061_2
 mov eax, dword ptr [r12 + 784]
 cmp eax, 6
 jne .Lx00061_2
.Lx00061_1:
 mov rax, qword ptr [r12 + 728]
 mov rcx, qword ptr [r12 + 792]
 cmp rax, rcx
 jne xchain00058_n4_α
 mov rcx, qword ptr [r12 + 784]
 mov qword ptr [r12 + 688], rcx
 mov rcx, qword ptr [r12 + 792]
 mov qword ptr [r12 + 696], rcx
 jmp xchain00058_n11_α
.Lx00061_0:
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 mov r8d, 9
 lea r9, [r12 + 688]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00061_1
 cmp eax, 1
 je xchain00058_n4_α
 jmp xchain00058_n11_α
.Lx00061_2:
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00058_n4_α
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 696], rax
 jmp xchain00058_n11_α
 xchain00058_n8_β:
 jmp xchain00058_n4_α
 xchain00058_n9_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00058_n12_α
 xchain00058_n9_β:
 jmp xchain00058_n10_α
# IR_MOVE_LABEL
 xchain00058_n10_α:
 lea rax, [rip + xchain00058_n4_α]
 mov qword ptr [r12 + 48], rax
 jmp main_ω
 xchain00058_n10_β:
 jmp main_ω
# KEYWORD_read
 xchain00058_n11_α:
 mov rdi, qword ptr [rip + .Lx00062_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00058_n14_α
 xchain00058_n11_β:
 jmp main_ω
.Lx00062_0:
 .quad .Lx00062_0_s
.Lx00062_0_s:
 .string "&input"
# IR_VAR
 xchain00058_n12_α:
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 664], rax
 jmp xchain00058_n15_α
 xchain00058_n12_β:
 jmp xchain00058_n16_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00058_n13_α:
 jmp qword ptr [r12 + 48]
 xchain00058_n13_β:
 jmp main_ω
# IR_LIT_STRING
 xchain00058_n14_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00063_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00058_n17_α
 xchain00058_n14_β:
 jmp main_ω
.Lx00063_0:
 .quad .Lx00063_0_s
.Lx00063_0_s:
 .string "stdin"
 xchain00058_n15_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+624]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lrkfn252: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn252]
 lea rsi, [r12 + 624]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain00058_n16_α
 jmp xchain00058_n18_α
 xchain00058_n15_β:
 jmp xchain00058_n16_α
# IR_LIT_STRING
 xchain00058_n16_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx00064_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain00058_n19_α
 xchain00058_n16_β:
 jmp xchain00058_n24_α
.Lx00064_0:
 .quad .Lx00064_0_s
.Lx00064_0_s:
 .string "cannot open "
 xchain00058_n17_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00065_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00065_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx00065_2
.Lx00065_1:
 call rt_faildescr@PLT
.Lx00065_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp xchain00058_n20_α
 xchain00058_n17_β:
 jmp main_ω
.Lx00065_0:
 .quad .Lx00065_0_s
.Lx00065_0_s:
 .string "dofile"
# IR_MOVE_LABEL
 xchain00058_n18_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 456], rax
 lea rax, [rip + xchain00058_n16_α]
 mov qword ptr [r12 + 464], rax
 jmp xchain00058_n21_α
 xchain00058_n18_β:
 jmp xchain00058_n24_α
# IR_VAR
 xchain00058_n19_α:
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 584], rax
 jmp xchain00058_n23_α
 xchain00058_n19_β:
 jmp xchain00058_n24_α
# IR_MOVE_LABEL
 xchain00058_n20_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 40], rax
 lea rax, [rip + main_ω]
 mov qword ptr [r12 + 48], rax
 jmp main_ω
 xchain00058_n20_β:
 jmp main_ω
 xchain00058_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00058_n24_α
 xchain00058_n21_β:
 jmp xchain00058_n24_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00058_n22_α:
 jmp qword ptr [r12 + 464]
 xchain00058_n22_β:
 jmp xchain00058_n24_α
 xchain00058_n23_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+496]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+512]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn266: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn266]
 lea rsi, [r12 + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain00058_n24_α
 jmp xchain00058_n25_α
 xchain00058_n23_β:
 jmp xchain00058_n24_α
# IR_VAR
 xchain00058_n24_α:
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 376], rax
 jmp xchain00058_n26_α
 xchain00058_n24_β:
 jmp xchain00058_n4_α
# IR_MOVE_LABEL
 xchain00058_n25_α:
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 456], rax
 lea rax, [rip + xchain00058_n24_α]
 mov qword ptr [r12 + 464], rax
 jmp xchain00058_n21_α
 xchain00058_n25_β:
 jmp xchain00058_n24_α
# IR_VAR
 xchain00058_n26_α:
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 408], rax
 jmp xchain00058_n27_α
 xchain00058_n26_β:
 jmp xchain00058_n4_α
 xchain00058_n27_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00066_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00066_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx00066_2
.Lx00066_1:
 call rt_faildescr@PLT
.Lx00066_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain00058_n4_α
 jmp xchain00058_n28_α
 xchain00058_n27_β:
 jmp xchain00058_n4_α
.Lx00066_0:
 .quad .Lx00066_0_s
.Lx00066_0_s:
 .string "dofile"
 xchain00058_n28_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 296], rax
 jmp xchain00058_n4_α
xchain00058_n28_β:
 jmp xchain00058_n4_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 896]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
