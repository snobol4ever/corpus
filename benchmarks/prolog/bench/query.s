  .intel_syntax noprefix
  .text
  .globl proc_area$2_α
proc_area$2_α:
#=======================================================================================================================
    .global proc_area$2_α
    .global proc_area$2_β
    .global proc_area$2_γ
    .global proc_area$2_ω
  sub rsp, 7776
  mov [rsp + 7752], rcx
  mov [rsp + 7760], rdx
  mov [rsp + 7768], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 7744
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 7736], rsp
  mov rdi, rsp
  mov esi, 7744
  call rt_jmp_frame_lexprep@PLT
proc_area$2_α_body:
lea rax, [rip + xchain0_n10_β]
mov qword ptr [rbp + 7712], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_area$2_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7648], rax
 mov qword ptr [rbp + 7656], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n2_α:
 mov qword ptr [rbp + 7680], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 7688], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "china"
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7648] -> [zr+7600]
 mov rax, qword ptr [rbp + 7648]
 mov qword ptr [rbp + 7600], rax
 mov rax, qword ptr [rbp + 7656]
 mov qword ptr [rbp + 7608], rax
# marshal arg1 = producer-box slot [zr+7680] -> [zr+7616]
 mov rax, qword ptr [rbp + 7680]
 mov qword ptr [rbp + 7616], rax
 mov rax, qword ptr [rbp + 7688]
 mov qword ptr [rbp + 7624], rax
  .section .rodata
  .Lrkfn7: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn7]
 lea rsi, [rbp + 7600]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7584], rax
 mov qword ptr [rbp + 7592], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7520], rax
 mov qword ptr [rbp + 7528], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+7424]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 7424], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 7432], rax
  .section .rodata
  .Lrkfn11: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn11]
 lea rsi, [rbp + 7424]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7408], rax
 mov qword ptr [rbp + 7416], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n6_α:
 mov qword ptr [rbp + 7552], 6
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [rbp + 7560], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n5_α
.Lx12_0:
 .quad 3380
# IR_VAR_REF
 xchain0_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7344], rax
 mov qword ptr [rbp + 7352], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n13_α
 xchain0_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7520] -> [zr+7472]
 mov rax, qword ptr [rbp + 7520]
 mov qword ptr [rbp + 7472], rax
 mov rax, qword ptr [rbp + 7528]
 mov qword ptr [rbp + 7480], rax
# marshal arg1 = producer-box slot [zr+7552] -> [zr+7488]
 mov rax, qword ptr [rbp + 7552]
 mov qword ptr [rbp + 7488], rax
 mov rax, qword ptr [rbp + 7560]
 mov qword ptr [rbp + 7496], rax
  .section .rodata
  .Lrkfn16: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn16]
 lea rsi, [rbp + 7472]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7456], rax
 mov qword ptr [rbp + 7464], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n9_α:
 mov qword ptr [rbp + 7376], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [rbp + 7384], rax
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n13_α
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "india"
# IR_SUSPEND yield+resume
 xchain0_n10_α:
 lea rax, [rip + xchain0_n10_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n10_β:
 jmp xchain0_n5_α
 xchain0_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7344] -> [zr+7296]
 mov rax, qword ptr [rbp + 7344]
 mov qword ptr [rbp + 7296], rax
 mov rax, qword ptr [rbp + 7352]
 mov qword ptr [rbp + 7304], rax
# marshal arg1 = producer-box slot [zr+7376] -> [zr+7312]
 mov rax, qword ptr [rbp + 7376]
 mov qword ptr [rbp + 7312], rax
 mov rax, qword ptr [rbp + 7384]
 mov qword ptr [rbp + 7320], rax
  .section .rodata
  .Lrkfn21: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn21]
 lea rsi, [rbp + 7296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7280], rax
 mov qword ptr [rbp + 7288], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n13_α
# IR_VAR_REF
 xchain0_n12_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7216], rax
 mov qword ptr [rbp + 7224], rdx
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n13_α
 xchain0_n13_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+7120]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 7120], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 7128], rax
  .section .rodata
  .Lrkfn25: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn25]
 lea rsi, [rbp + 7120]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7104], rax
 mov qword ptr [rbp + 7112], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n14_α:
 mov qword ptr [rbp + 7248], 6
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [rbp + 7256], rax
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp xchain0_n13_α
.Lx26_0:
 .quad 1139
# IR_VAR_REF
 xchain0_n15_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7040], rax
 mov qword ptr [rbp + 7048], rdx
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n21_α
 xchain0_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7216] -> [zr+7168]
 mov rax, qword ptr [rbp + 7216]
 mov qword ptr [rbp + 7168], rax
 mov rax, qword ptr [rbp + 7224]
 mov qword ptr [rbp + 7176], rax
# marshal arg1 = producer-box slot [zr+7248] -> [zr+7184]
 mov rax, qword ptr [rbp + 7248]
 mov qword ptr [rbp + 7184], rax
 mov rax, qword ptr [rbp + 7256]
 mov qword ptr [rbp + 7192], rax
  .section .rodata
  .Lrkfn30: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn30]
 lea rsi, [rbp + 7168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7152], rax
 mov qword ptr [rbp + 7160], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n13_α
# IR_LIT_STRING
 xchain0_n17_α:
 mov qword ptr [rbp + 7072], 1
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [rbp + 7080], rax
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n21_α
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string "ussr"
# IR_SUSPEND yield+resume
 xchain0_n18_α:
 lea rax, [rip + xchain0_n18_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n18_β:
 jmp xchain0_n13_α
 xchain0_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7040] -> [zr+6992]
 mov rax, qword ptr [rbp + 7040]
 mov qword ptr [rbp + 6992], rax
 mov rax, qword ptr [rbp + 7048]
 mov qword ptr [rbp + 7000], rax
# marshal arg1 = producer-box slot [zr+7072] -> [zr+7008]
 mov rax, qword ptr [rbp + 7072]
 mov qword ptr [rbp + 7008], rax
 mov rax, qword ptr [rbp + 7080]
 mov qword ptr [rbp + 7016], rax
  .section .rodata
  .Lrkfn35: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn35]
 lea rsi, [rbp + 6992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6976], rax
 mov qword ptr [rbp + 6984], rdx
 cmp eax, 99
 je xchain0_n21_α
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp xchain0_n21_α
# IR_VAR_REF
 xchain0_n20_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6912], rax
 mov qword ptr [rbp + 6920], rdx
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n21_α
 xchain0_n21_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6816]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 6816], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 6824], rax
  .section .rodata
  .Lrkfn39: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn39]
 lea rsi, [rbp + 6816]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6800], rax
 mov qword ptr [rbp + 6808], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n22_α:
 mov qword ptr [rbp + 6944], 6
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [rbp + 6952], rax
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n21_α
.Lx40_0:
 .quad 8708
# IR_VAR_REF
 xchain0_n23_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6736], rax
 mov qword ptr [rbp + 6744], rdx
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp xchain0_n29_α
 xchain0_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6912] -> [zr+6864]
 mov rax, qword ptr [rbp + 6912]
 mov qword ptr [rbp + 6864], rax
 mov rax, qword ptr [rbp + 6920]
 mov qword ptr [rbp + 6872], rax
# marshal arg1 = producer-box slot [zr+6944] -> [zr+6880]
 mov rax, qword ptr [rbp + 6944]
 mov qword ptr [rbp + 6880], rax
 mov rax, qword ptr [rbp + 6952]
 mov qword ptr [rbp + 6888], rax
  .section .rodata
  .Lrkfn44: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn44]
 lea rsi, [rbp + 6864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6848], rax
 mov qword ptr [rbp + 6856], rdx
 cmp eax, 99
 je xchain0_n21_α
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n21_α
# IR_LIT_STRING
 xchain0_n25_α:
 mov qword ptr [rbp + 6768], 1
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [rbp + 6776], rax
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp xchain0_n29_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "usa"
# IR_SUSPEND yield+resume
 xchain0_n26_α:
 lea rax, [rip + xchain0_n26_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n26_β:
 jmp xchain0_n21_α
 xchain0_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6736] -> [zr+6688]
 mov rax, qword ptr [rbp + 6736]
 mov qword ptr [rbp + 6688], rax
 mov rax, qword ptr [rbp + 6744]
 mov qword ptr [rbp + 6696], rax
# marshal arg1 = producer-box slot [zr+6768] -> [zr+6704]
 mov rax, qword ptr [rbp + 6768]
 mov qword ptr [rbp + 6704], rax
 mov rax, qword ptr [rbp + 6776]
 mov qword ptr [rbp + 6712], rax
  .section .rodata
  .Lrkfn49: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn49]
 lea rsi, [rbp + 6688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6672], rax
 mov qword ptr [rbp + 6680], rdx
 cmp eax, 99
 je xchain0_n29_α
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp xchain0_n29_α
# IR_VAR_REF
 xchain0_n28_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6608], rax
 mov qword ptr [rbp + 6616], rdx
 jmp xchain0_n30_α
 xchain0_n28_β:
 jmp xchain0_n29_α
 xchain0_n29_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6512]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 6512], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 6520], rax
  .section .rodata
  .Lrkfn53: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn53]
 lea rsi, [rbp + 6512]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6496], rax
 mov qword ptr [rbp + 6504], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n30_α:
 mov qword ptr [rbp + 6640], 6
 mov rax, qword ptr [rip + .Lx54_0]
 mov qword ptr [rbp + 6648], rax
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp xchain0_n29_α
.Lx54_0:
 .quad 3609
# IR_VAR_REF
 xchain0_n31_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6432], rax
 mov qword ptr [rbp + 6440], rdx
 jmp xchain0_n33_α
 xchain0_n31_β:
 jmp xchain0_n37_α
 xchain0_n32_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6608] -> [zr+6560]
 mov rax, qword ptr [rbp + 6608]
 mov qword ptr [rbp + 6560], rax
 mov rax, qword ptr [rbp + 6616]
 mov qword ptr [rbp + 6568], rax
# marshal arg1 = producer-box slot [zr+6640] -> [zr+6576]
 mov rax, qword ptr [rbp + 6640]
 mov qword ptr [rbp + 6576], rax
 mov rax, qword ptr [rbp + 6648]
 mov qword ptr [rbp + 6584], rax
  .section .rodata
  .Lrkfn58: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn58]
 lea rsi, [rbp + 6560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6544], rax
 mov qword ptr [rbp + 6552], rdx
 cmp eax, 99
 je xchain0_n29_α
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n29_α
# IR_LIT_STRING
 xchain0_n33_α:
 mov qword ptr [rbp + 6464], 1
 mov rax, qword ptr [rip + .Lx59_0]
 mov qword ptr [rbp + 6472], rax
 jmp xchain0_n35_α
 xchain0_n33_β:
 jmp xchain0_n37_α
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
 .string "indonesia"
# IR_SUSPEND yield+resume
 xchain0_n34_α:
 lea rax, [rip + xchain0_n34_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n34_β:
 jmp xchain0_n29_α
 xchain0_n35_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6432] -> [zr+6384]
 mov rax, qword ptr [rbp + 6432]
 mov qword ptr [rbp + 6384], rax
 mov rax, qword ptr [rbp + 6440]
 mov qword ptr [rbp + 6392], rax
# marshal arg1 = producer-box slot [zr+6464] -> [zr+6400]
 mov rax, qword ptr [rbp + 6464]
 mov qword ptr [rbp + 6400], rax
 mov rax, qword ptr [rbp + 6472]
 mov qword ptr [rbp + 6408], rax
  .section .rodata
  .Lrkfn63: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn63]
 lea rsi, [rbp + 6384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6368], rax
 mov qword ptr [rbp + 6376], rdx
 cmp eax, 99
 je xchain0_n37_α
 jmp xchain0_n36_α
 xchain0_n35_β:
 jmp xchain0_n37_α
# IR_VAR_REF
 xchain0_n36_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6304], rax
 mov qword ptr [rbp + 6312], rdx
 jmp xchain0_n38_α
 xchain0_n36_β:
 jmp xchain0_n37_α
 xchain0_n37_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6208]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 6208], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 6216], rax
  .section .rodata
  .Lrkfn67: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn67]
 lea rsi, [rbp + 6208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6192], rax
 mov qword ptr [rbp + 6200], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n39_α
 xchain0_n37_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n38_α:
 mov qword ptr [rbp + 6336], 6
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [rbp + 6344], rax
 jmp xchain0_n40_α
 xchain0_n38_β:
 jmp xchain0_n37_α
.Lx68_0:
 .quad 570
# IR_VAR_REF
 xchain0_n39_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6128], rax
 mov qword ptr [rbp + 6136], rdx
 jmp xchain0_n41_α
 xchain0_n39_β:
 jmp xchain0_n45_α
 xchain0_n40_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6304] -> [zr+6256]
 mov rax, qword ptr [rbp + 6304]
 mov qword ptr [rbp + 6256], rax
 mov rax, qword ptr [rbp + 6312]
 mov qword ptr [rbp + 6264], rax
# marshal arg1 = producer-box slot [zr+6336] -> [zr+6272]
 mov rax, qword ptr [rbp + 6336]
 mov qword ptr [rbp + 6272], rax
 mov rax, qword ptr [rbp + 6344]
 mov qword ptr [rbp + 6280], rax
  .section .rodata
  .Lrkfn72: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn72]
 lea rsi, [rbp + 6256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6240], rax
 mov qword ptr [rbp + 6248], rdx
 cmp eax, 99
 je xchain0_n37_α
 jmp xchain0_n42_α
 xchain0_n40_β:
 jmp xchain0_n37_α
# IR_LIT_STRING
 xchain0_n41_α:
 mov qword ptr [rbp + 6160], 1
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [rbp + 6168], rax
 jmp xchain0_n43_α
 xchain0_n41_β:
 jmp xchain0_n45_α
.Lx73_0:
 .quad .Lx73_0_s
.Lx73_0_s:
 .string "japan"
# IR_SUSPEND yield+resume
 xchain0_n42_α:
 lea rax, [rip + xchain0_n42_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n42_β:
 jmp xchain0_n37_α
 xchain0_n43_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6128] -> [zr+6080]
 mov rax, qword ptr [rbp + 6128]
 mov qword ptr [rbp + 6080], rax
 mov rax, qword ptr [rbp + 6136]
 mov qword ptr [rbp + 6088], rax
# marshal arg1 = producer-box slot [zr+6160] -> [zr+6096]
 mov rax, qword ptr [rbp + 6160]
 mov qword ptr [rbp + 6096], rax
 mov rax, qword ptr [rbp + 6168]
 mov qword ptr [rbp + 6104], rax
  .section .rodata
  .Lrkfn77: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn77]
 lea rsi, [rbp + 6080]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6064], rax
 mov qword ptr [rbp + 6072], rdx
 cmp eax, 99
 je xchain0_n45_α
 jmp xchain0_n44_α
 xchain0_n43_β:
 jmp xchain0_n45_α
# IR_VAR_REF
 xchain0_n44_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6000], rax
 mov qword ptr [rbp + 6008], rdx
 jmp xchain0_n46_α
 xchain0_n44_β:
 jmp xchain0_n45_α
 xchain0_n45_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5904]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5904], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5912], rax
  .section .rodata
  .Lrkfn81: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn81]
 lea rsi, [rbp + 5904]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5888], rax
 mov qword ptr [rbp + 5896], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n47_α
 xchain0_n45_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n46_α:
 mov qword ptr [rbp + 6032], 6
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [rbp + 6040], rax
 jmp xchain0_n48_α
 xchain0_n46_β:
 jmp xchain0_n45_α
.Lx82_0:
 .quad 148
# IR_VAR_REF
 xchain0_n47_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5824], rax
 mov qword ptr [rbp + 5832], rdx
 jmp xchain0_n49_α
 xchain0_n47_β:
 jmp xchain0_n53_α
 xchain0_n48_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6000] -> [zr+5952]
 mov rax, qword ptr [rbp + 6000]
 mov qword ptr [rbp + 5952], rax
 mov rax, qword ptr [rbp + 6008]
 mov qword ptr [rbp + 5960], rax
# marshal arg1 = producer-box slot [zr+6032] -> [zr+5968]
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 5968], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 5976], rax
  .section .rodata
  .Lrkfn86: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn86]
 lea rsi, [rbp + 5952]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5936], rax
 mov qword ptr [rbp + 5944], rdx
 cmp eax, 99
 je xchain0_n45_α
 jmp xchain0_n50_α
 xchain0_n48_β:
 jmp xchain0_n45_α
# IR_LIT_STRING
 xchain0_n49_α:
 mov qword ptr [rbp + 5856], 1
 mov rax, qword ptr [rip + .Lx87_0]
 mov qword ptr [rbp + 5864], rax
 jmp xchain0_n51_α
 xchain0_n49_β:
 jmp xchain0_n53_α
.Lx87_0:
 .quad .Lx87_0_s
.Lx87_0_s:
 .string "brazil"
# IR_SUSPEND yield+resume
 xchain0_n50_α:
 lea rax, [rip + xchain0_n50_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n50_β:
 jmp xchain0_n45_α
 xchain0_n51_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5824] -> [zr+5776]
 mov rax, qword ptr [rbp + 5824]
 mov qword ptr [rbp + 5776], rax
 mov rax, qword ptr [rbp + 5832]
 mov qword ptr [rbp + 5784], rax
# marshal arg1 = producer-box slot [zr+5856] -> [zr+5792]
 mov rax, qword ptr [rbp + 5856]
 mov qword ptr [rbp + 5792], rax
 mov rax, qword ptr [rbp + 5864]
 mov qword ptr [rbp + 5800], rax
  .section .rodata
  .Lrkfn91: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn91]
 lea rsi, [rbp + 5776]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 cmp eax, 99
 je xchain0_n53_α
 jmp xchain0_n52_α
 xchain0_n51_β:
 jmp xchain0_n53_α
# IR_VAR_REF
 xchain0_n52_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5696], rax
 mov qword ptr [rbp + 5704], rdx
 jmp xchain0_n54_α
 xchain0_n52_β:
 jmp xchain0_n53_α
 xchain0_n53_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5600]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5600], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5608], rax
  .section .rodata
  .Lrkfn95: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn95]
 lea rsi, [rbp + 5600]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5584], rax
 mov qword ptr [rbp + 5592], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n55_α
 xchain0_n53_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n54_α:
 mov qword ptr [rbp + 5728], 6
 mov rax, qword ptr [rip + .Lx96_0]
 mov qword ptr [rbp + 5736], rax
 jmp xchain0_n56_α
 xchain0_n54_β:
 jmp xchain0_n53_α
.Lx96_0:
 .quad 3288
# IR_VAR_REF
 xchain0_n55_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5520], rax
 mov qword ptr [rbp + 5528], rdx
 jmp xchain0_n57_α
 xchain0_n55_β:
 jmp xchain0_n61_α
 xchain0_n56_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5696] -> [zr+5648]
 mov rax, qword ptr [rbp + 5696]
 mov qword ptr [rbp + 5648], rax
 mov rax, qword ptr [rbp + 5704]
 mov qword ptr [rbp + 5656], rax
# marshal arg1 = producer-box slot [zr+5728] -> [zr+5664]
 mov rax, qword ptr [rbp + 5728]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 5736]
 mov qword ptr [rbp + 5672], rax
  .section .rodata
  .Lrkfn100: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn100]
 lea rsi, [rbp + 5648]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5632], rax
 mov qword ptr [rbp + 5640], rdx
 cmp eax, 99
 je xchain0_n53_α
 jmp xchain0_n58_α
 xchain0_n56_β:
 jmp xchain0_n53_α
# IR_LIT_STRING
 xchain0_n57_α:
 mov qword ptr [rbp + 5552], 1
 mov rax, qword ptr [rip + .Lx101_0]
 mov qword ptr [rbp + 5560], rax
 jmp xchain0_n59_α
 xchain0_n57_β:
 jmp xchain0_n61_α
.Lx101_0:
 .quad .Lx101_0_s
.Lx101_0_s:
 .string "bangladesh"
# IR_SUSPEND yield+resume
 xchain0_n58_α:
 lea rax, [rip + xchain0_n58_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n58_β:
 jmp xchain0_n53_α
 xchain0_n59_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5520] -> [zr+5472]
 mov rax, qword ptr [rbp + 5520]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 5528]
 mov qword ptr [rbp + 5480], rax
# marshal arg1 = producer-box slot [zr+5552] -> [zr+5488]
 mov rax, qword ptr [rbp + 5552]
 mov qword ptr [rbp + 5488], rax
 mov rax, qword ptr [rbp + 5560]
 mov qword ptr [rbp + 5496], rax
  .section .rodata
  .Lrkfn105: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn105]
 lea rsi, [rbp + 5472]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5456], rax
 mov qword ptr [rbp + 5464], rdx
 cmp eax, 99
 je xchain0_n61_α
 jmp xchain0_n60_α
 xchain0_n59_β:
 jmp xchain0_n61_α
# IR_VAR_REF
 xchain0_n60_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5392], rax
 mov qword ptr [rbp + 5400], rdx
 jmp xchain0_n62_α
 xchain0_n60_β:
 jmp xchain0_n61_α
 xchain0_n61_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5296]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5296], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5304], rax
  .section .rodata
  .Lrkfn109: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn109]
 lea rsi, [rbp + 5296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n63_α
 xchain0_n61_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n62_α:
 mov qword ptr [rbp + 5424], 6
 mov rax, qword ptr [rip + .Lx110_0]
 mov qword ptr [rbp + 5432], rax
 jmp xchain0_n64_α
 xchain0_n62_β:
 jmp xchain0_n61_α
.Lx110_0:
 .quad 55
# IR_VAR_REF
 xchain0_n63_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 jmp xchain0_n65_α
 xchain0_n63_β:
 jmp xchain0_n69_α
 xchain0_n64_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5392] -> [zr+5344]
 mov rax, qword ptr [rbp + 5392]
 mov qword ptr [rbp + 5344], rax
 mov rax, qword ptr [rbp + 5400]
 mov qword ptr [rbp + 5352], rax
# marshal arg1 = producer-box slot [zr+5424] -> [zr+5360]
 mov rax, qword ptr [rbp + 5424]
 mov qword ptr [rbp + 5360], rax
 mov rax, qword ptr [rbp + 5432]
 mov qword ptr [rbp + 5368], rax
  .section .rodata
  .Lrkfn114: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn114]
 lea rsi, [rbp + 5344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 cmp eax, 99
 je xchain0_n61_α
 jmp xchain0_n66_α
 xchain0_n64_β:
 jmp xchain0_n61_α
# IR_LIT_STRING
 xchain0_n65_α:
 mov qword ptr [rbp + 5248], 1
 mov rax, qword ptr [rip + .Lx115_0]
 mov qword ptr [rbp + 5256], rax
 jmp xchain0_n67_α
 xchain0_n65_β:
 jmp xchain0_n69_α
.Lx115_0:
 .quad .Lx115_0_s
.Lx115_0_s:
 .string "pakistan"
# IR_SUSPEND yield+resume
 xchain0_n66_α:
 lea rax, [rip + xchain0_n66_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n66_β:
 jmp xchain0_n61_α
 xchain0_n67_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5216] -> [zr+5168]
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 5168], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 5176], rax
# marshal arg1 = producer-box slot [zr+5248] -> [zr+5184]
 mov rax, qword ptr [rbp + 5248]
 mov qword ptr [rbp + 5184], rax
 mov rax, qword ptr [rbp + 5256]
 mov qword ptr [rbp + 5192], rax
  .section .rodata
  .Lrkfn119: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn119]
 lea rsi, [rbp + 5168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5152], rax
 mov qword ptr [rbp + 5160], rdx
 cmp eax, 99
 je xchain0_n69_α
 jmp xchain0_n68_α
 xchain0_n67_β:
 jmp xchain0_n69_α
# IR_VAR_REF
 xchain0_n68_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5088], rax
 mov qword ptr [rbp + 5096], rdx
 jmp xchain0_n70_α
 xchain0_n68_β:
 jmp xchain0_n69_α
 xchain0_n69_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4992]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4992], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5000], rax
  .section .rodata
  .Lrkfn123: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn123]
 lea rsi, [rbp + 4992]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4976], rax
 mov qword ptr [rbp + 4984], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n71_α
 xchain0_n69_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n70_α:
 mov qword ptr [rbp + 5120], 6
 mov rax, qword ptr [rip + .Lx124_0]
 mov qword ptr [rbp + 5128], rax
 jmp xchain0_n72_α
 xchain0_n70_β:
 jmp xchain0_n69_α
.Lx124_0:
 .quad 311
# IR_VAR_REF
 xchain0_n71_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 jmp xchain0_n73_α
 xchain0_n71_β:
 jmp xchain0_n77_α
 xchain0_n72_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5088] -> [zr+5040]
 mov rax, qword ptr [rbp + 5088]
 mov qword ptr [rbp + 5040], rax
 mov rax, qword ptr [rbp + 5096]
 mov qword ptr [rbp + 5048], rax
# marshal arg1 = producer-box slot [zr+5120] -> [zr+5056]
 mov rax, qword ptr [rbp + 5120]
 mov qword ptr [rbp + 5056], rax
 mov rax, qword ptr [rbp + 5128]
 mov qword ptr [rbp + 5064], rax
  .section .rodata
  .Lrkfn128: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn128]
 lea rsi, [rbp + 5040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5024], rax
 mov qword ptr [rbp + 5032], rdx
 cmp eax, 99
 je xchain0_n69_α
 jmp xchain0_n74_α
 xchain0_n72_β:
 jmp xchain0_n69_α
# IR_LIT_STRING
 xchain0_n73_α:
 mov qword ptr [rbp + 4944], 1
 mov rax, qword ptr [rip + .Lx129_0]
 mov qword ptr [rbp + 4952], rax
 jmp xchain0_n75_α
 xchain0_n73_β:
 jmp xchain0_n77_α
.Lx129_0:
 .quad .Lx129_0_s
.Lx129_0_s:
 .string "w_germany"
# IR_SUSPEND yield+resume
 xchain0_n74_α:
 lea rax, [rip + xchain0_n74_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n74_β:
 jmp xchain0_n69_α
 xchain0_n75_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4912] -> [zr+4864]
 mov rax, qword ptr [rbp + 4912]
 mov qword ptr [rbp + 4864], rax
 mov rax, qword ptr [rbp + 4920]
 mov qword ptr [rbp + 4872], rax
# marshal arg1 = producer-box slot [zr+4944] -> [zr+4880]
 mov rax, qword ptr [rbp + 4944]
 mov qword ptr [rbp + 4880], rax
 mov rax, qword ptr [rbp + 4952]
 mov qword ptr [rbp + 4888], rax
  .section .rodata
  .Lrkfn133: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn133]
 lea rsi, [rbp + 4864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4848], rax
 mov qword ptr [rbp + 4856], rdx
 cmp eax, 99
 je xchain0_n77_α
 jmp xchain0_n76_α
 xchain0_n75_β:
 jmp xchain0_n77_α
# IR_VAR_REF
 xchain0_n76_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4784], rax
 mov qword ptr [rbp + 4792], rdx
 jmp xchain0_n78_α
 xchain0_n76_β:
 jmp xchain0_n77_α
 xchain0_n77_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4688]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4688], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 4696], rax
  .section .rodata
  .Lrkfn137: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn137]
 lea rsi, [rbp + 4688]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n79_α
 xchain0_n77_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n78_α:
 mov qword ptr [rbp + 4816], 6
 mov rax, qword ptr [rip + .Lx138_0]
 mov qword ptr [rbp + 4824], rax
 jmp xchain0_n80_α
 xchain0_n78_β:
 jmp xchain0_n77_α
.Lx138_0:
 .quad 96
# IR_VAR_REF
 xchain0_n79_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4608], rax
 mov qword ptr [rbp + 4616], rdx
 jmp xchain0_n81_α
 xchain0_n79_β:
 jmp xchain0_n85_α
 xchain0_n80_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4784] -> [zr+4736]
 mov rax, qword ptr [rbp + 4784]
 mov qword ptr [rbp + 4736], rax
 mov rax, qword ptr [rbp + 4792]
 mov qword ptr [rbp + 4744], rax
# marshal arg1 = producer-box slot [zr+4816] -> [zr+4752]
 mov rax, qword ptr [rbp + 4816]
 mov qword ptr [rbp + 4752], rax
 mov rax, qword ptr [rbp + 4824]
 mov qword ptr [rbp + 4760], rax
  .section .rodata
  .Lrkfn142: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn142]
 lea rsi, [rbp + 4736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4720], rax
 mov qword ptr [rbp + 4728], rdx
 cmp eax, 99
 je xchain0_n77_α
 jmp xchain0_n82_α
 xchain0_n80_β:
 jmp xchain0_n77_α
# IR_LIT_STRING
 xchain0_n81_α:
 mov qword ptr [rbp + 4640], 1
 mov rax, qword ptr [rip + .Lx143_0]
 mov qword ptr [rbp + 4648], rax
 jmp xchain0_n83_α
 xchain0_n81_β:
 jmp xchain0_n85_α
.Lx143_0:
 .quad .Lx143_0_s
.Lx143_0_s:
 .string "nigeria"
# IR_SUSPEND yield+resume
 xchain0_n82_α:
 lea rax, [rip + xchain0_n82_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n82_β:
 jmp xchain0_n77_α
 xchain0_n83_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4608] -> [zr+4560]
 mov rax, qword ptr [rbp + 4608]
 mov qword ptr [rbp + 4560], rax
 mov rax, qword ptr [rbp + 4616]
 mov qword ptr [rbp + 4568], rax
# marshal arg1 = producer-box slot [zr+4640] -> [zr+4576]
 mov rax, qword ptr [rbp + 4640]
 mov qword ptr [rbp + 4576], rax
 mov rax, qword ptr [rbp + 4648]
 mov qword ptr [rbp + 4584], rax
  .section .rodata
  .Lrkfn147: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn147]
 lea rsi, [rbp + 4560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4544], rax
 mov qword ptr [rbp + 4552], rdx
 cmp eax, 99
 je xchain0_n85_α
 jmp xchain0_n84_α
 xchain0_n83_β:
 jmp xchain0_n85_α
# IR_VAR_REF
 xchain0_n84_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 jmp xchain0_n86_α
 xchain0_n84_β:
 jmp xchain0_n85_α
 xchain0_n85_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4384]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4384], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 4392], rax
  .section .rodata
  .Lrkfn151: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn151]
 lea rsi, [rbp + 4384]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4368], rax
 mov qword ptr [rbp + 4376], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n87_α
 xchain0_n85_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n86_α:
 mov qword ptr [rbp + 4512], 6
 mov rax, qword ptr [rip + .Lx152_0]
 mov qword ptr [rbp + 4520], rax
 jmp xchain0_n88_α
 xchain0_n86_β:
 jmp xchain0_n85_α
.Lx152_0:
 .quad 373
# IR_VAR_REF
 xchain0_n87_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 jmp xchain0_n89_α
 xchain0_n87_β:
 jmp xchain0_n93_α
 xchain0_n88_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4480] -> [zr+4432]
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 4432], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 4440], rax
# marshal arg1 = producer-box slot [zr+4512] -> [zr+4448]
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 4448], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 4456], rax
  .section .rodata
  .Lrkfn156: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn156]
 lea rsi, [rbp + 4432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4416], rax
 mov qword ptr [rbp + 4424], rdx
 cmp eax, 99
 je xchain0_n85_α
 jmp xchain0_n90_α
 xchain0_n88_β:
 jmp xchain0_n85_α
# IR_LIT_STRING
 xchain0_n89_α:
 mov qword ptr [rbp + 4336], 1
 mov rax, qword ptr [rip + .Lx157_0]
 mov qword ptr [rbp + 4344], rax
 jmp xchain0_n91_α
 xchain0_n89_β:
 jmp xchain0_n93_α
.Lx157_0:
 .quad .Lx157_0_s
.Lx157_0_s:
 .string "mexico"
# IR_SUSPEND yield+resume
 xchain0_n90_α:
 lea rax, [rip + xchain0_n90_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n90_β:
 jmp xchain0_n85_α
 xchain0_n91_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4304] -> [zr+4256]
 mov rax, qword ptr [rbp + 4304]
 mov qword ptr [rbp + 4256], rax
 mov rax, qword ptr [rbp + 4312]
 mov qword ptr [rbp + 4264], rax
# marshal arg1 = producer-box slot [zr+4336] -> [zr+4272]
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [rbp + 4272], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [rbp + 4280], rax
  .section .rodata
  .Lrkfn161: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn161]
 lea rsi, [rbp + 4256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 cmp eax, 99
 je xchain0_n93_α
 jmp xchain0_n92_α
 xchain0_n91_β:
 jmp xchain0_n93_α
# IR_VAR_REF
 xchain0_n92_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 jmp xchain0_n94_α
 xchain0_n92_β:
 jmp xchain0_n93_α
 xchain0_n93_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4080]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4080], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 4088], rax
  .section .rodata
  .Lrkfn165: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn165]
 lea rsi, [rbp + 4080]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4064], rax
 mov qword ptr [rbp + 4072], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n95_α
 xchain0_n93_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n94_α:
 mov qword ptr [rbp + 4208], 6
 mov rax, qword ptr [rip + .Lx166_0]
 mov qword ptr [rbp + 4216], rax
 jmp xchain0_n96_α
 xchain0_n94_β:
 jmp xchain0_n93_α
.Lx166_0:
 .quad 764
# IR_VAR_REF
 xchain0_n95_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 jmp xchain0_n97_α
 xchain0_n95_β:
 jmp xchain0_n101_α
 xchain0_n96_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4176] -> [zr+4128]
 mov rax, qword ptr [rbp + 4176]
 mov qword ptr [rbp + 4128], rax
 mov rax, qword ptr [rbp + 4184]
 mov qword ptr [rbp + 4136], rax
# marshal arg1 = producer-box slot [zr+4208] -> [zr+4144]
 mov rax, qword ptr [rbp + 4208]
 mov qword ptr [rbp + 4144], rax
 mov rax, qword ptr [rbp + 4216]
 mov qword ptr [rbp + 4152], rax
  .section .rodata
  .Lrkfn170: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn170]
 lea rsi, [rbp + 4128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 cmp eax, 99
 je xchain0_n93_α
 jmp xchain0_n98_α
 xchain0_n96_β:
 jmp xchain0_n93_α
# IR_LIT_STRING
 xchain0_n97_α:
 mov qword ptr [rbp + 4032], 1
 mov rax, qword ptr [rip + .Lx171_0]
 mov qword ptr [rbp + 4040], rax
 jmp xchain0_n99_α
 xchain0_n97_β:
 jmp xchain0_n101_α
.Lx171_0:
 .quad .Lx171_0_s
.Lx171_0_s:
 .string "uk"
# IR_SUSPEND yield+resume
 xchain0_n98_α:
 lea rax, [rip + xchain0_n98_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n98_β:
 jmp xchain0_n93_α
 xchain0_n99_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn175: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn175]
 lea rsi, [rbp + 3952]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3936], rax
 mov qword ptr [rbp + 3944], rdx
 cmp eax, 99
 je xchain0_n101_α
 jmp xchain0_n100_α
 xchain0_n99_β:
 jmp xchain0_n101_α
# IR_VAR_REF
 xchain0_n100_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 jmp xchain0_n102_α
 xchain0_n100_β:
 jmp xchain0_n101_α
 xchain0_n101_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3776]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3776], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3784], rax
  .section .rodata
  .Lrkfn179: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn179]
 lea rsi, [rbp + 3776]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n103_α
 xchain0_n101_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n102_α:
 mov qword ptr [rbp + 3904], 6
 mov rax, qword ptr [rip + .Lx180_0]
 mov qword ptr [rbp + 3912], rax
 jmp xchain0_n104_α
 xchain0_n102_β:
 jmp xchain0_n101_α
.Lx180_0:
 .quad 86
# IR_VAR_REF
 xchain0_n103_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 jmp xchain0_n105_α
 xchain0_n103_β:
 jmp xchain0_n109_α
 xchain0_n104_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3872] -> [zr+3824]
 mov rax, qword ptr [rbp + 3872]
 mov qword ptr [rbp + 3824], rax
 mov rax, qword ptr [rbp + 3880]
 mov qword ptr [rbp + 3832], rax
# marshal arg1 = producer-box slot [zr+3904] -> [zr+3840]
 mov rax, qword ptr [rbp + 3904]
 mov qword ptr [rbp + 3840], rax
 mov rax, qword ptr [rbp + 3912]
 mov qword ptr [rbp + 3848], rax
  .section .rodata
  .Lrkfn184: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn184]
 lea rsi, [rbp + 3824]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 cmp eax, 99
 je xchain0_n101_α
 jmp xchain0_n106_α
 xchain0_n104_β:
 jmp xchain0_n101_α
# IR_LIT_STRING
 xchain0_n105_α:
 mov qword ptr [rbp + 3728], 1
 mov rax, qword ptr [rip + .Lx185_0]
 mov qword ptr [rbp + 3736], rax
 jmp xchain0_n107_α
 xchain0_n105_β:
 jmp xchain0_n109_α
.Lx185_0:
 .quad .Lx185_0_s
.Lx185_0_s:
 .string "italy"
# IR_SUSPEND yield+resume
 xchain0_n106_α:
 lea rax, [rip + xchain0_n106_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n106_β:
 jmp xchain0_n101_α
 xchain0_n107_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3696] -> [zr+3648]
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 3648], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 3656], rax
# marshal arg1 = producer-box slot [zr+3728] -> [zr+3664]
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 3664], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 3672], rax
  .section .rodata
  .Lrkfn189: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn189]
 lea rsi, [rbp + 3648]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 cmp eax, 99
 je xchain0_n109_α
 jmp xchain0_n108_α
 xchain0_n107_β:
 jmp xchain0_n109_α
# IR_VAR_REF
 xchain0_n108_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 jmp xchain0_n110_α
 xchain0_n108_β:
 jmp xchain0_n109_α
 xchain0_n109_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3472]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3480], rax
  .section .rodata
  .Lrkfn193: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn193]
 lea rsi, [rbp + 3472]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n111_α
 xchain0_n109_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n110_α:
 mov qword ptr [rbp + 3600], 6
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [rbp + 3608], rax
 jmp xchain0_n112_α
 xchain0_n110_β:
 jmp xchain0_n109_α
.Lx194_0:
 .quad 116
# IR_VAR_REF
 xchain0_n111_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 jmp xchain0_n113_α
 xchain0_n111_β:
 jmp xchain0_n117_α
 xchain0_n112_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn198: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn198]
 lea rsi, [rbp + 3520]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 cmp eax, 99
 je xchain0_n109_α
 jmp xchain0_n114_α
 xchain0_n112_β:
 jmp xchain0_n109_α
# IR_LIT_STRING
 xchain0_n113_α:
 mov qword ptr [rbp + 3424], 1
 mov rax, qword ptr [rip + .Lx199_0]
 mov qword ptr [rbp + 3432], rax
 jmp xchain0_n115_α
 xchain0_n113_β:
 jmp xchain0_n117_α
.Lx199_0:
 .quad .Lx199_0_s
.Lx199_0_s:
 .string "france"
# IR_SUSPEND yield+resume
 xchain0_n114_α:
 lea rax, [rip + xchain0_n114_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n114_β:
 jmp xchain0_n109_α
 xchain0_n115_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3392] -> [zr+3344]
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 3344], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3352], rax
# marshal arg1 = producer-box slot [zr+3424] -> [zr+3360]
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3360], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3368], rax
  .section .rodata
  .Lrkfn203: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn203]
 lea rsi, [rbp + 3344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 cmp eax, 99
 je xchain0_n117_α
 jmp xchain0_n116_α
 xchain0_n115_β:
 jmp xchain0_n117_α
# IR_VAR_REF
 xchain0_n116_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 jmp xchain0_n118_α
 xchain0_n116_β:
 jmp xchain0_n117_α
 xchain0_n117_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3168]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3176], rax
  .section .rodata
  .Lrkfn207: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn207]
 lea rsi, [rbp + 3168]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n119_α
 xchain0_n117_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n118_α:
 mov qword ptr [rbp + 3296], 6
 mov rax, qword ptr [rip + .Lx208_0]
 mov qword ptr [rbp + 3304], rax
 jmp xchain0_n120_α
 xchain0_n118_β:
 jmp xchain0_n117_α
.Lx208_0:
 .quad 213
# IR_VAR_REF
 xchain0_n119_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain0_n121_α
 xchain0_n119_β:
 jmp xchain0_n125_α
 xchain0_n120_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3264] -> [zr+3216]
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 3224], rax
# marshal arg1 = producer-box slot [zr+3296] -> [zr+3232]
 mov rax, qword ptr [rbp + 3296]
 mov qword ptr [rbp + 3232], rax
 mov rax, qword ptr [rbp + 3304]
 mov qword ptr [rbp + 3240], rax
  .section .rodata
  .Lrkfn212: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn212]
 lea rsi, [rbp + 3216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 cmp eax, 99
 je xchain0_n117_α
 jmp xchain0_n122_α
 xchain0_n120_β:
 jmp xchain0_n117_α
# IR_LIT_STRING
 xchain0_n121_α:
 mov qword ptr [rbp + 3120], 1
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [rbp + 3128], rax
 jmp xchain0_n123_α
 xchain0_n121_β:
 jmp xchain0_n125_α
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "philippines"
# IR_SUSPEND yield+resume
 xchain0_n122_α:
 lea rax, [rip + xchain0_n122_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n122_β:
 jmp xchain0_n117_α
 xchain0_n123_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3088] -> [zr+3040]
 mov rax, qword ptr [rbp + 3088]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3096]
 mov qword ptr [rbp + 3048], rax
# marshal arg1 = producer-box slot [zr+3120] -> [zr+3056]
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3064], rax
  .section .rodata
  .Lrkfn217: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn217]
 lea rsi, [rbp + 3040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 cmp eax, 99
 je xchain0_n125_α
 jmp xchain0_n124_α
 xchain0_n123_β:
 jmp xchain0_n125_α
# IR_VAR_REF
 xchain0_n124_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain0_n126_α
 xchain0_n124_β:
 jmp xchain0_n125_α
 xchain0_n125_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2864]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2872], rax
  .section .rodata
  .Lrkfn221: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn221]
 lea rsi, [rbp + 2864]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n127_α
 xchain0_n125_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n126_α:
 mov qword ptr [rbp + 2992], 6
 mov rax, qword ptr [rip + .Lx222_0]
 mov qword ptr [rbp + 3000], rax
 jmp xchain0_n128_α
 xchain0_n126_β:
 jmp xchain0_n125_α
.Lx222_0:
 .quad 90
# IR_VAR_REF
 xchain0_n127_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain0_n129_α
 xchain0_n127_β:
 jmp xchain0_n133_α
 xchain0_n128_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2960] -> [zr+2912]
 mov rax, qword ptr [rbp + 2960]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 2920], rax
# marshal arg1 = producer-box slot [zr+2992] -> [zr+2928]
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 2928], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 2936], rax
  .section .rodata
  .Lrkfn226: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn226]
 lea rsi, [rbp + 2912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 cmp eax, 99
 je xchain0_n125_α
 jmp xchain0_n130_α
 xchain0_n128_β:
 jmp xchain0_n125_α
# IR_LIT_STRING
 xchain0_n129_α:
 mov qword ptr [rbp + 2816], 1
 mov rax, qword ptr [rip + .Lx227_0]
 mov qword ptr [rbp + 2824], rax
 jmp xchain0_n131_α
 xchain0_n129_β:
 jmp xchain0_n133_α
.Lx227_0:
 .quad .Lx227_0_s
.Lx227_0_s:
 .string "thailand"
# IR_SUSPEND yield+resume
 xchain0_n130_α:
 lea rax, [rip + xchain0_n130_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n130_β:
 jmp xchain0_n125_α
 xchain0_n131_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2784] -> [zr+2736]
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2744], rax
# marshal arg1 = producer-box slot [zr+2816] -> [zr+2752]
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2760], rax
  .section .rodata
  .Lrkfn231: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn231]
 lea rsi, [rbp + 2736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 cmp eax, 99
 je xchain0_n133_α
 jmp xchain0_n132_α
 xchain0_n131_β:
 jmp xchain0_n133_α
# IR_VAR_REF
 xchain0_n132_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 jmp xchain0_n134_α
 xchain0_n132_β:
 jmp xchain0_n133_α
 xchain0_n133_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2560]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2560], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2568], rax
  .section .rodata
  .Lrkfn235: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn235]
 lea rsi, [rbp + 2560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n135_α
 xchain0_n133_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n134_α:
 mov qword ptr [rbp + 2688], 6
 mov rax, qword ptr [rip + .Lx236_0]
 mov qword ptr [rbp + 2696], rax
 jmp xchain0_n136_α
 xchain0_n134_β:
 jmp xchain0_n133_α
.Lx236_0:
 .quad 200
# IR_VAR_REF
 xchain0_n135_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 jmp xchain0_n137_α
 xchain0_n135_β:
 jmp xchain0_n141_α
 xchain0_n136_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2656] -> [zr+2608]
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 2616], rax
# marshal arg1 = producer-box slot [zr+2688] -> [zr+2624]
 mov rax, qword ptr [rbp + 2688]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 2632], rax
  .section .rodata
  .Lrkfn240: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn240]
 lea rsi, [rbp + 2608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je xchain0_n133_α
 jmp xchain0_n138_α
 xchain0_n136_β:
 jmp xchain0_n133_α
# IR_LIT_STRING
 xchain0_n137_α:
 mov qword ptr [rbp + 2512], 1
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [rbp + 2520], rax
 jmp xchain0_n139_α
 xchain0_n137_β:
 jmp xchain0_n141_α
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "turkey"
# IR_SUSPEND yield+resume
 xchain0_n138_α:
 lea rax, [rip + xchain0_n138_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n138_β:
 jmp xchain0_n133_α
 xchain0_n139_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2480] -> [zr+2432]
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2440], rax
# marshal arg1 = producer-box slot [zr+2512] -> [zr+2448]
 mov rax, qword ptr [rbp + 2512]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2520]
 mov qword ptr [rbp + 2456], rax
  .section .rodata
  .Lrkfn245: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn245]
 lea rsi, [rbp + 2432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 cmp eax, 99
 je xchain0_n141_α
 jmp xchain0_n140_α
 xchain0_n139_β:
 jmp xchain0_n141_α
# IR_VAR_REF
 xchain0_n140_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain0_n142_α
 xchain0_n140_β:
 jmp xchain0_n141_α
 xchain0_n141_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2256]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2264], rax
  .section .rodata
  .Lrkfn249: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn249]
 lea rsi, [rbp + 2256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n143_α
 xchain0_n141_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n142_α:
 mov qword ptr [rbp + 2384], 6
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [rbp + 2392], rax
 jmp xchain0_n144_α
 xchain0_n142_β:
 jmp xchain0_n141_α
.Lx250_0:
 .quad 296
# IR_VAR_REF
 xchain0_n143_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain0_n145_α
 xchain0_n143_β:
 jmp xchain0_n149_α
 xchain0_n144_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2352] -> [zr+2304]
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2312], rax
# marshal arg1 = producer-box slot [zr+2384] -> [zr+2320]
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 2328], rax
  .section .rodata
  .Lrkfn254: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn254]
 lea rsi, [rbp + 2304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 cmp eax, 99
 je xchain0_n141_α
 jmp xchain0_n146_α
 xchain0_n144_β:
 jmp xchain0_n141_α
# IR_LIT_STRING
 xchain0_n145_α:
 mov qword ptr [rbp + 2208], 1
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [rbp + 2216], rax
 jmp xchain0_n147_α
 xchain0_n145_β:
 jmp xchain0_n149_α
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "egypt"
# IR_SUSPEND yield+resume
 xchain0_n146_α:
 lea rax, [rip + xchain0_n146_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n146_β:
 jmp xchain0_n141_α
 xchain0_n147_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2176] -> [zr+2128]
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2136], rax
# marshal arg1 = producer-box slot [zr+2208] -> [zr+2144]
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2152], rax
  .section .rodata
  .Lrkfn259: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn259]
 lea rsi, [rbp + 2128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 cmp eax, 99
 je xchain0_n149_α
 jmp xchain0_n148_α
 xchain0_n147_β:
 jmp xchain0_n149_α
# IR_VAR_REF
 xchain0_n148_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 jmp xchain0_n150_α
 xchain0_n148_β:
 jmp xchain0_n149_α
 xchain0_n149_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1952]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1960], rax
  .section .rodata
  .Lrkfn263: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn263]
 lea rsi, [rbp + 1952]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n151_α
 xchain0_n149_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n150_α:
 mov qword ptr [rbp + 2080], 6
 mov rax, qword ptr [rip + .Lx264_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain0_n152_α
 xchain0_n150_β:
 jmp xchain0_n149_α
.Lx264_0:
 .quad 386
# IR_VAR_REF
 xchain0_n151_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain0_n153_α
 xchain0_n151_β:
 jmp xchain0_n157_α
 xchain0_n152_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2048] -> [zr+2000]
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 2008], rax
# marshal arg1 = producer-box slot [zr+2080] -> [zr+2016]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2024], rax
  .section .rodata
  .Lrkfn268: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn268]
 lea rsi, [rbp + 2000]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 cmp eax, 99
 je xchain0_n149_α
 jmp xchain0_n154_α
 xchain0_n152_β:
 jmp xchain0_n149_α
# IR_LIT_STRING
 xchain0_n153_α:
 mov qword ptr [rbp + 1904], 1
 mov rax, qword ptr [rip + .Lx269_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain0_n155_α
 xchain0_n153_β:
 jmp xchain0_n157_α
.Lx269_0:
 .quad .Lx269_0_s
.Lx269_0_s:
 .string "spain"
# IR_SUSPEND yield+resume
 xchain0_n154_α:
 lea rax, [rip + xchain0_n154_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n154_β:
 jmp xchain0_n149_α
 xchain0_n155_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn273: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn273]
 lea rsi, [rbp + 1824]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 cmp eax, 99
 je xchain0_n157_α
 jmp xchain0_n156_α
 xchain0_n155_β:
 jmp xchain0_n157_α
# IR_VAR_REF
 xchain0_n156_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain0_n158_α
 xchain0_n156_β:
 jmp xchain0_n157_α
 xchain0_n157_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1648]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1656], rax
  .section .rodata
  .Lrkfn277: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn277]
 lea rsi, [rbp + 1648]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n159_α
 xchain0_n157_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n158_α:
 mov qword ptr [rbp + 1776], 6
 mov rax, qword ptr [rip + .Lx278_0]
 mov qword ptr [rbp + 1784], rax
 jmp xchain0_n160_α
 xchain0_n158_β:
 jmp xchain0_n157_α
.Lx278_0:
 .quad 190
# IR_VAR_REF
 xchain0_n159_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain0_n161_α
 xchain0_n159_β:
 jmp xchain0_n165_α
 xchain0_n160_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1744] -> [zr+1696]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1704], rax
# marshal arg1 = producer-box slot [zr+1776] -> [zr+1712]
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1720], rax
  .section .rodata
  .Lrkfn282: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn282]
 lea rsi, [rbp + 1696]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 cmp eax, 99
 je xchain0_n157_α
 jmp xchain0_n162_α
 xchain0_n160_β:
 jmp xchain0_n157_α
# IR_LIT_STRING
 xchain0_n161_α:
 mov qword ptr [rbp + 1600], 1
 mov rax, qword ptr [rip + .Lx283_0]
 mov qword ptr [rbp + 1608], rax
 jmp xchain0_n163_α
 xchain0_n161_β:
 jmp xchain0_n165_α
.Lx283_0:
 .quad .Lx283_0_s
.Lx283_0_s:
 .string "poland"
# IR_SUSPEND yield+resume
 xchain0_n162_α:
 lea rax, [rip + xchain0_n162_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n162_β:
 jmp xchain0_n157_α
 xchain0_n163_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn287: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn287]
 lea rsi, [rbp + 1520]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je xchain0_n165_α
 jmp xchain0_n164_α
 xchain0_n163_β:
 jmp xchain0_n165_α
# IR_VAR_REF
 xchain0_n164_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain0_n166_α
 xchain0_n164_β:
 jmp xchain0_n165_α
 xchain0_n165_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1344]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1352], rax
  .section .rodata
  .Lrkfn291: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn291]
 lea rsi, [rbp + 1344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n167_α
 xchain0_n165_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n166_α:
 mov qword ptr [rbp + 1472], 6
 mov rax, qword ptr [rip + .Lx292_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain0_n168_α
 xchain0_n166_β:
 jmp xchain0_n165_α
.Lx292_0:
 .quad 121
# IR_VAR_REF
 xchain0_n167_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain0_n169_α
 xchain0_n167_β:
 jmp xchain0_n173_α
 xchain0_n168_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1392]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1400], rax
# marshal arg1 = producer-box slot [zr+1472] -> [zr+1408]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1416], rax
  .section .rodata
  .Lrkfn296: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn296]
 lea rsi, [rbp + 1392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je xchain0_n165_α
 jmp xchain0_n170_α
 xchain0_n168_β:
 jmp xchain0_n165_α
# IR_LIT_STRING
 xchain0_n169_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx297_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain0_n171_α
 xchain0_n169_β:
 jmp xchain0_n173_α
.Lx297_0:
 .quad .Lx297_0_s
.Lx297_0_s:
 .string "s_korea"
# IR_SUSPEND yield+resume
 xchain0_n170_α:
 lea rax, [rip + xchain0_n170_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n170_β:
 jmp xchain0_n165_α
 xchain0_n171_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1216]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1224], rax
# marshal arg1 = producer-box slot [zr+1296] -> [zr+1232]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1240], rax
  .section .rodata
  .Lrkfn301: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn301]
 lea rsi, [rbp + 1216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain0_n173_α
 jmp xchain0_n172_α
 xchain0_n171_β:
 jmp xchain0_n173_α
# IR_VAR_REF
 xchain0_n172_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain0_n174_α
 xchain0_n172_β:
 jmp xchain0_n173_α
 xchain0_n173_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1040]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1048], rax
  .section .rodata
  .Lrkfn305: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn305]
 lea rsi, [rbp + 1040]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n175_α
 xchain0_n173_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n174_α:
 mov qword ptr [rbp + 1168], 6
 mov rax, qword ptr [rip + .Lx306_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain0_n176_α
 xchain0_n174_β:
 jmp xchain0_n173_α
.Lx306_0:
 .quad 37
# IR_VAR_REF
 xchain0_n175_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain0_n177_α
 xchain0_n175_β:
 jmp xchain0_n181_α
 xchain0_n176_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1088]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1096], rax
# marshal arg1 = producer-box slot [zr+1168] -> [zr+1104]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1112], rax
  .section .rodata
  .Lrkfn310: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn310]
 lea rsi, [rbp + 1088]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain0_n173_α
 jmp xchain0_n178_α
 xchain0_n176_β:
 jmp xchain0_n173_α
# IR_LIT_STRING
 xchain0_n177_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx311_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain0_n179_α
 xchain0_n177_β:
 jmp xchain0_n181_α
.Lx311_0:
 .quad .Lx311_0_s
.Lx311_0_s:
 .string "iran"
# IR_SUSPEND yield+resume
 xchain0_n178_α:
 lea rax, [rip + xchain0_n178_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n178_β:
 jmp xchain0_n173_α
 xchain0_n179_α:
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
  .Lrkfn315: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn315]
 lea rsi, [rbp + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain0_n181_α
 jmp xchain0_n180_α
 xchain0_n179_β:
 jmp xchain0_n181_α
# IR_VAR_REF
 xchain0_n180_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain0_n182_α
 xchain0_n180_β:
 jmp xchain0_n181_α
 xchain0_n181_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+736]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 744], rax
  .section .rodata
  .Lrkfn319: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn319]
 lea rsi, [rbp + 736]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n183_α
 xchain0_n181_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n182_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx320_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain0_n184_α
 xchain0_n182_β:
 jmp xchain0_n181_α
.Lx320_0:
 .quad 628
# IR_VAR_REF
 xchain0_n183_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain0_n185_α
 xchain0_n183_β:
 jmp xchain0_n189_α
 xchain0_n184_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+800]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 808], rax
  .section .rodata
  .Lrkfn324: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn324]
 lea rsi, [rbp + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain0_n181_α
 jmp xchain0_n186_α
 xchain0_n184_β:
 jmp xchain0_n181_α
# IR_LIT_STRING
 xchain0_n185_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx325_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain0_n187_α
 xchain0_n185_β:
 jmp xchain0_n189_α
.Lx325_0:
 .quad .Lx325_0_s
.Lx325_0_s:
 .string "ethiopia"
# IR_SUSPEND yield+resume
 xchain0_n186_α:
 lea rax, [rip + xchain0_n186_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n186_β:
 jmp xchain0_n181_α
 xchain0_n187_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn329: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn329]
 lea rsi, [rbp + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain0_n189_α
 jmp xchain0_n188_α
 xchain0_n187_β:
 jmp xchain0_n189_α
# IR_VAR_REF
 xchain0_n188_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain0_n190_α
 xchain0_n188_β:
 jmp xchain0_n189_α
 xchain0_n189_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+432]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 440], rax
  .section .rodata
  .Lrkfn333: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn333]
 lea rsi, [rbp + 432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n191_α
 xchain0_n189_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n190_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx334_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain0_n192_α
 xchain0_n190_β:
 jmp xchain0_n189_α
.Lx334_0:
 .quad 350
# IR_VAR_REF
 xchain0_n191_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain0_n193_α
 xchain0_n191_β:
 jmp xchain0_n197_α
 xchain0_n192_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn338: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn338]
 lea rsi, [rbp + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain0_n189_α
 jmp xchain0_n194_α
 xchain0_n192_β:
 jmp xchain0_n189_α
# IR_LIT_STRING
 xchain0_n193_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx339_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain0_n195_α
 xchain0_n193_β:
 jmp xchain0_n197_α
.Lx339_0:
 .quad .Lx339_0_s
.Lx339_0_s:
 .string "argentina"
# IR_SUSPEND yield+resume
 xchain0_n194_α:
 lea rax, [rip + xchain0_n194_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n194_β:
 jmp xchain0_n189_α
 xchain0_n195_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn343: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn343]
 lea rsi, [rbp + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain0_n197_α
 jmp xchain0_n196_α
 xchain0_n195_β:
 jmp xchain0_n197_α
# IR_VAR_REF
 xchain0_n196_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain0_n198_α
 xchain0_n196_β:
 jmp xchain0_n197_α
 xchain0_n197_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn347: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn347]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp proc_area$2_ω
 xchain0_n197_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n198_α:
 mov qword ptr [rbp + 256], 6
 mov rax, qword ptr [rip + .Lx348_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain0_n199_α
 xchain0_n198_β:
 jmp xchain0_n197_α
.Lx348_0:
 .quad 1080
 xchain0_n199_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+176]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+192]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn350: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn350]
 lea rsi, [rbp + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain0_n197_α
 jmp xchain0_n200_α
 xchain0_n199_β:
 jmp xchain0_n197_α
# IR_SUSPEND yield+resume
 xchain0_n200_α:
 lea rax, [rip + xchain0_n200_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2_γ
 xchain0_n200_β:
 jmp xchain0_n197_α
proc_area$2_res:
add rsp, 8
pop rbp
proc_area$2_β:
jmp qword ptr [rbp + 7712]
proc_area$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_area$2_res]
push rax
mov rax, [rbp + 7752]
mov rbp, [rbp + 7768]
jmp rax
proc_area$2_ω:
mov rax, [rbp + 7760]
lea rsp, [rbp + 7776]
mov rbp, [rbp + 7768]
jmp rax
  .globl proc_query$1_α
proc_query$1_α:
#=======================================================================================================================
    .global proc_query$1_α
    .global proc_query$1_β
    .global proc_query$1_γ
    .global proc_query$1_ω
  sub rsp, 2000
  mov [rsp + 1976], rcx
  mov [rsp + 1984], rdx
  mov [rsp + 1992], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1968
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1864], rsp
  mov rdi, rsp
  mov esi, 1968
  call rt_jmp_frame_lexprep@PLT
proc_query$1_α_body:
lea rax, [rip + xchain353_n39_β]
mov qword ptr [rbp + 1840], rax
 xchain353_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn355: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn355]
 lea rsi, [rbp + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_query$1_ω
 jmp xchain353_n1_α
 xchain353_n0_β:
 jmp proc_query$1_ω
# IR_VAR_REF
 xchain353_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain353_n2_α
 xchain353_n1_β:
 jmp xchain353_n16_α
# IR_LIT_STRING
 xchain353_n2_α:
 mov qword ptr [rbp + 1808], 1
 mov rax, qword ptr [rip + .Lx358_0]
 mov qword ptr [rbp + 1816], rax
 jmp xchain353_n3_α
 xchain353_n2_β:
 jmp proc_query$1_ω
.Lx358_0:
 .quad .Lx358_0_s
.Lx358_0_s:
 .string "."
# IR_VAR_REF
 xchain353_n3_α:
 lea rdi, [rbp + 1952]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain353_n4_α
 xchain353_n3_β:
 jmp proc_query$1_ω
# IR_LIT_STRING
 xchain353_n4_α:
 mov qword ptr [rbp + 1664], 1
 mov rax, qword ptr [rip + .Lx361_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain353_n5_α
 xchain353_n4_β:
 jmp proc_query$1_ω
.Lx361_0:
 .quad .Lx361_0_s
.Lx361_0_s:
 .string "."
# IR_VAR_REF
 xchain353_n5_α:
 lea rdi, [rbp + 1920]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain353_n6_α
 xchain353_n5_β:
 jmp proc_query$1_ω
# IR_LIT_STRING
 xchain353_n6_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx364_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain353_n7_α
 xchain353_n6_β:
 jmp proc_query$1_ω
.Lx364_0:
 .quad .Lx364_0_s
.Lx364_0_s:
 .string "."
# IR_VAR_REF
 xchain353_n7_α:
 lea rdi, [rbp + 1936]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain353_n8_α
 xchain353_n7_β:
 jmp proc_query$1_ω
# IR_LIT_STRING
 xchain353_n8_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx367_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain353_n9_α
 xchain353_n8_β:
 jmp proc_query$1_ω
.Lx367_0:
 .quad .Lx367_0_s
.Lx367_0_s:
 .string "."
# IR_VAR_REF
 xchain353_n9_α:
 lea rdi, [rbp + 1904]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain353_n10_α
 xchain353_n9_β:
 jmp proc_query$1_ω
# IR_LIT_STRING
 xchain353_n10_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx370_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain353_n11_α
 xchain353_n10_β:
 jmp proc_query$1_ω
.Lx370_0:
 .quad .Lx370_0_s
.Lx370_0_s:
 .string "[]"
 xchain353_n11_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1312]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1320], rax
# marshal arg1 = producer-box slot [zr+1264] -> [zr+1328]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1336], rax
# marshal arg2 = producer-box slot [zr+1232] -> [zr+1344]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1352], rax
  .section .rodata
  .Lrkfn372: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn372]
 lea rsi, [rbp + 1312]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je proc_query$1_ω
 jmp xchain353_n12_α
 xchain353_n11_β:
 jmp proc_query$1_ω
 xchain353_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1520] -> [zr+1456]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1464], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1472]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1480], rax
# marshal arg2 = producer-box slot [zr+1296] -> [zr+1488]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1496], rax
  .section .rodata
  .Lrkfn374: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn374]
 lea rsi, [rbp + 1456]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je proc_query$1_ω
 jmp xchain353_n13_α
 xchain353_n12_β:
 jmp proc_query$1_ω
 xchain353_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1600]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1608], rax
# marshal arg1 = producer-box slot [zr+1552] -> [zr+1616]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1624], rax
# marshal arg2 = producer-box slot [zr+1440] -> [zr+1632]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1640], rax
  .section .rodata
  .Lrkfn376: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn376]
 lea rsi, [rbp + 1600]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je proc_query$1_ω
 jmp xchain353_n14_α
 xchain353_n13_β:
 jmp proc_query$1_ω
 xchain353_n14_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1808] -> [zr+1744]
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1752], rax
# marshal arg1 = producer-box slot [zr+1696] -> [zr+1760]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1768], rax
# marshal arg2 = producer-box slot [zr+1584] -> [zr+1776]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1784], rax
  .section .rodata
  .Lrkfn378: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn378]
 lea rsi, [rbp + 1744]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain353_n16_α
 jmp xchain353_n15_α
 xchain353_n14_β:
 jmp xchain353_n16_α
 xchain353_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1200] -> [zr+1152]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1160], rax
# marshal arg1 = producer-box slot [zr+1728] -> [zr+1168]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1176], rax
  .section .rodata
  .Lrkfn380: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn380]
 lea rsi, [rbp + 1152]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 cmp eax, 99
 je xchain353_n16_α
 jmp xchain353_n17_α
 xchain353_n15_β:
 jmp xchain353_n16_α
 xchain353_n16_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn382: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn382]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_query$1_ω
 jmp proc_query$1_ω
 xchain353_n16_β:
 jmp proc_query$1_ω
# IR_VAR_REF
 xchain353_n17_α:
 lea rdi, [rbp + 1952]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain353_n18_α
 xchain353_n17_β:
 jmp xchain353_n16_α
# IR_VAR_REF
 xchain353_n18_α:
 lea rdi, [rbp + 1920]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain353_n19_α
 xchain353_n18_β:
 jmp xchain353_n16_α
 xchain353_n19_α:
 mov qword ptr [rbp + 1040], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1072]
 mov rdx, qword ptr [rbp + 1080]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1104]
 mov rdx, qword ptr [rbp + 1112]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx388_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx388_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx388_3]
 lea rdx, [rip + .Lx388_4]
 jmp rax
.Lx388_3:
 mov qword ptr [rbp + 1048], rsp
 mov rax, qword ptr [rbp + 1040]
 test rax, rax
 jne .Lx388_5
 mov qword ptr [rbp + 1040], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx388_2
.Lx388_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx388_2
.Lx388_4:
 mov rax, qword ptr [rbp + 1040]
 test rax, rax
 jne .Lx388_6
 mov qword ptr [rbp + 1040], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx388_2
.Lx388_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx388_2
.Lx388_1:
 call rt_faildescr@PLT
.Lx388_2:
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain353_n16_α
 jmp xchain353_n20_α
 xchain353_n19_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1048]
 jmp qword ptr [rsp]
.Lx388_0:
 .quad .Lx388_0_s
.Lx388_0_s:
 .string "density/2"
# IR_VAR_REF
 xchain353_n20_α:
 lea rdi, [rbp + 1936]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain353_n21_α
 xchain353_n20_β:
 jmp xchain353_n16_α
# IR_VAR_REF
 xchain353_n21_α:
 lea rdi, [rbp + 1904]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain353_n22_α
 xchain353_n21_β:
 jmp xchain353_n16_α
 xchain353_n22_α:
 mov qword ptr [rbp + 896], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 960]
 mov rdx, qword ptr [rbp + 968]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx394_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx394_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx394_3]
 lea rdx, [rip + .Lx394_4]
 jmp rax
.Lx394_3:
 mov qword ptr [rbp + 904], rsp
 mov rax, qword ptr [rbp + 896]
 test rax, rax
 jne .Lx394_5
 mov qword ptr [rbp + 896], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx394_2
.Lx394_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx394_2
.Lx394_4:
 mov rax, qword ptr [rbp + 896]
 test rax, rax
 jne .Lx394_6
 mov qword ptr [rbp + 896], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx394_2
.Lx394_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx394_2
.Lx394_1:
 call rt_faildescr@PLT
.Lx394_2:
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain353_n19_β
 jmp xchain353_n23_α
 xchain353_n22_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 904]
 jmp qword ptr [rsp]
.Lx394_0:
 .quad .Lx394_0_s
.Lx394_0_s:
 .string "density/2"
# IR_VAR
 xchain353_n23_α:
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 792], rax
 jmp xchain353_n24_α
 xchain353_n23_β:
 jmp xchain353_n16_α
# IR_VAR
 xchain353_n24_α:
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 824], rax
 jmp xchain353_n25_α
 xchain353_n24_β:
 jmp xchain353_n16_α
 xchain353_n25_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+736]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 744], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+752]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 760], rax
  .section .rodata
  .Lrkfn400: .string "$cmp_gt"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn400]
 lea rsi, [rbp + 736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je xchain353_n22_β
 jmp xchain353_n26_α
 xchain353_n25_β:
 jmp xchain353_n22_β
# IR_VAR_REF
 xchain353_n26_α:
 lea rdi, [rbp + 1872]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain353_n27_α
 xchain353_n26_β:
 jmp xchain353_n16_α
# IR_LIT_INTEGER
 xchain353_n27_α:
 mov qword ptr [rbp + 656], 6
 mov rax, qword ptr [rip + .Lx403_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain353_n28_α
 xchain353_n27_β:
 jmp proc_query$1_ω
.Lx403_0:
 .quad 20
# IR_VAR
 xchain353_n28_α:
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 696], rax
 jmp xchain353_n29_α
 xchain353_n28_β:
 jmp proc_query$1_ω
 xchain353_n29_α:
# BOX IR_CALL $ax_mul(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn407: .string "$ax_mul"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn407]
 lea rsi, [rbp + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain353_n16_α
 jmp xchain353_n30_α
 xchain353_n29_β:
 jmp xchain353_n16_α
 xchain353_n30_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn409: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn409]
 lea rsi, [rbp + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain353_n22_β
 jmp xchain353_n31_α
 xchain353_n30_β:
 jmp xchain353_n22_β
# IR_VAR_REF
 xchain353_n31_α:
 lea rdi, [rbp + 1888]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain353_n32_α
 xchain353_n31_β:
 jmp xchain353_n16_α
# IR_LIT_INTEGER
 xchain353_n32_α:
 mov qword ptr [rbp + 432], 6
 mov rax, qword ptr [rip + .Lx412_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain353_n33_α
 xchain353_n32_β:
 jmp proc_query$1_ω
.Lx412_0:
 .quad 21
# IR_VAR
 xchain353_n33_α:
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 472], rax
 jmp xchain353_n34_α
 xchain353_n33_β:
 jmp proc_query$1_ω
 xchain353_n34_α:
# BOX IR_CALL $ax_mul(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+384]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 392], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+400]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 408], rax
  .section .rodata
  .Lrkfn416: .string "$ax_mul"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn416]
 lea rsi, [rbp + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain353_n16_α
 jmp xchain353_n35_α
 xchain353_n34_β:
 jmp xchain353_n16_α
 xchain353_n35_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+288]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 296], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+304]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 312], rax
  .section .rodata
  .Lrkfn418: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn418]
 lea rsi, [rbp + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain353_n22_β
 jmp xchain353_n36_α
 xchain353_n35_β:
 jmp xchain353_n22_β
# IR_VAR
 xchain353_n36_α:
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 216], rax
 jmp xchain353_n37_α
 xchain353_n36_β:
 jmp xchain353_n16_α
# IR_VAR
 xchain353_n37_α:
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 248], rax
 jmp xchain353_n38_α
 xchain353_n37_β:
 jmp xchain353_n16_α
 xchain353_n38_α:
# BOX IR_CALL $cmp_lt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+160]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 168], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+176]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
  .section .rodata
  .Lrkfn424: .string "$cmp_lt"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn424]
 lea rsi, [rbp + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain353_n22_β
 jmp xchain353_n39_α
 xchain353_n38_β:
 jmp xchain353_n22_β
# IR_SUSPEND yield+resume
 xchain353_n39_α:
 lea rax, [rip + xchain353_n39_β]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_query$1_γ
 xchain353_n39_β:
 jmp xchain353_n22_β
proc_query$1_res:
add rsp, 8
pop rbp
proc_query$1_β:
jmp qword ptr [rbp + 1840]
proc_query$1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_query$1_res]
push rax
mov rax, [rbp + 1976]
mov rbp, [rbp + 1992]
jmp rax
proc_query$1_ω:
mov rax, [rbp + 1984]
lea rsp, [rbp + 2000]
mov rbp, [rbp + 1992]
jmp rax
  .globl proc_pop$2_α
proc_pop$2_α:
#=======================================================================================================================
    .global proc_pop$2_α
    .global proc_pop$2_β
    .global proc_pop$2_γ
    .global proc_pop$2_ω
  sub rsp, 7776
  mov [rsp + 7752], rcx
  mov [rsp + 7760], rdx
  mov [rsp + 7768], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 7744
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 7736], rsp
  mov rdi, rsp
  mov esi, 7744
  call rt_jmp_frame_lexprep@PLT
proc_pop$2_α_body:
lea rax, [rip + xchain427_n10_β]
mov qword ptr [rbp + 7712], rax
 xchain427_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn429: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn429]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n1_α
 xchain427_n0_β:
 jmp proc_pop$2_ω
# IR_VAR_REF
 xchain427_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7648], rax
 mov qword ptr [rbp + 7656], rdx
 jmp xchain427_n2_α
 xchain427_n1_β:
 jmp xchain427_n5_α
# IR_LIT_STRING
 xchain427_n2_α:
 mov qword ptr [rbp + 7680], 1
 mov rax, qword ptr [rip + .Lx432_0]
 mov qword ptr [rbp + 7688], rax
 jmp xchain427_n3_α
 xchain427_n2_β:
 jmp xchain427_n5_α
.Lx432_0:
 .quad .Lx432_0_s
.Lx432_0_s:
 .string "china"
 xchain427_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7648] -> [zr+7600]
 mov rax, qword ptr [rbp + 7648]
 mov qword ptr [rbp + 7600], rax
 mov rax, qword ptr [rbp + 7656]
 mov qword ptr [rbp + 7608], rax
# marshal arg1 = producer-box slot [zr+7680] -> [zr+7616]
 mov rax, qword ptr [rbp + 7680]
 mov qword ptr [rbp + 7616], rax
 mov rax, qword ptr [rbp + 7688]
 mov qword ptr [rbp + 7624], rax
  .section .rodata
  .Lrkfn434: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn434]
 lea rsi, [rbp + 7600]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7584], rax
 mov qword ptr [rbp + 7592], rdx
 cmp eax, 99
 je xchain427_n5_α
 jmp xchain427_n4_α
 xchain427_n3_β:
 jmp xchain427_n5_α
# IR_VAR_REF
 xchain427_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7520], rax
 mov qword ptr [rbp + 7528], rdx
 jmp xchain427_n6_α
 xchain427_n4_β:
 jmp xchain427_n5_α
 xchain427_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+7424]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 7424], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 7432], rax
  .section .rodata
  .Lrkfn438: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn438]
 lea rsi, [rbp + 7424]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7408], rax
 mov qword ptr [rbp + 7416], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n7_α
 xchain427_n5_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n6_α:
 mov qword ptr [rbp + 7552], 6
 mov rax, qword ptr [rip + .Lx439_0]
 mov qword ptr [rbp + 7560], rax
 jmp xchain427_n8_α
 xchain427_n6_β:
 jmp xchain427_n5_α
.Lx439_0:
 .quad 8250
# IR_VAR_REF
 xchain427_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7344], rax
 mov qword ptr [rbp + 7352], rdx
 jmp xchain427_n9_α
 xchain427_n7_β:
 jmp xchain427_n13_α
 xchain427_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7520] -> [zr+7472]
 mov rax, qword ptr [rbp + 7520]
 mov qword ptr [rbp + 7472], rax
 mov rax, qword ptr [rbp + 7528]
 mov qword ptr [rbp + 7480], rax
# marshal arg1 = producer-box slot [zr+7552] -> [zr+7488]
 mov rax, qword ptr [rbp + 7552]
 mov qword ptr [rbp + 7488], rax
 mov rax, qword ptr [rbp + 7560]
 mov qword ptr [rbp + 7496], rax
  .section .rodata
  .Lrkfn443: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn443]
 lea rsi, [rbp + 7472]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7456], rax
 mov qword ptr [rbp + 7464], rdx
 cmp eax, 99
 je xchain427_n5_α
 jmp xchain427_n10_α
 xchain427_n8_β:
 jmp xchain427_n5_α
# IR_LIT_STRING
 xchain427_n9_α:
 mov qword ptr [rbp + 7376], 1
 mov rax, qword ptr [rip + .Lx444_0]
 mov qword ptr [rbp + 7384], rax
 jmp xchain427_n11_α
 xchain427_n9_β:
 jmp xchain427_n13_α
.Lx444_0:
 .quad .Lx444_0_s
.Lx444_0_s:
 .string "india"
# IR_SUSPEND yield+resume
 xchain427_n10_α:
 lea rax, [rip + xchain427_n10_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n10_β:
 jmp xchain427_n5_α
 xchain427_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7344] -> [zr+7296]
 mov rax, qword ptr [rbp + 7344]
 mov qword ptr [rbp + 7296], rax
 mov rax, qword ptr [rbp + 7352]
 mov qword ptr [rbp + 7304], rax
# marshal arg1 = producer-box slot [zr+7376] -> [zr+7312]
 mov rax, qword ptr [rbp + 7376]
 mov qword ptr [rbp + 7312], rax
 mov rax, qword ptr [rbp + 7384]
 mov qword ptr [rbp + 7320], rax
  .section .rodata
  .Lrkfn448: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn448]
 lea rsi, [rbp + 7296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7280], rax
 mov qword ptr [rbp + 7288], rdx
 cmp eax, 99
 je xchain427_n13_α
 jmp xchain427_n12_α
 xchain427_n11_β:
 jmp xchain427_n13_α
# IR_VAR_REF
 xchain427_n12_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7216], rax
 mov qword ptr [rbp + 7224], rdx
 jmp xchain427_n14_α
 xchain427_n12_β:
 jmp xchain427_n13_α
 xchain427_n13_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+7120]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 7120], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 7128], rax
  .section .rodata
  .Lrkfn452: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn452]
 lea rsi, [rbp + 7120]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7104], rax
 mov qword ptr [rbp + 7112], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n15_α
 xchain427_n13_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n14_α:
 mov qword ptr [rbp + 7248], 6
 mov rax, qword ptr [rip + .Lx453_0]
 mov qword ptr [rbp + 7256], rax
 jmp xchain427_n16_α
 xchain427_n14_β:
 jmp xchain427_n13_α
.Lx453_0:
 .quad 5863
# IR_VAR_REF
 xchain427_n15_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7040], rax
 mov qword ptr [rbp + 7048], rdx
 jmp xchain427_n17_α
 xchain427_n15_β:
 jmp xchain427_n21_α
 xchain427_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7216] -> [zr+7168]
 mov rax, qword ptr [rbp + 7216]
 mov qword ptr [rbp + 7168], rax
 mov rax, qword ptr [rbp + 7224]
 mov qword ptr [rbp + 7176], rax
# marshal arg1 = producer-box slot [zr+7248] -> [zr+7184]
 mov rax, qword ptr [rbp + 7248]
 mov qword ptr [rbp + 7184], rax
 mov rax, qword ptr [rbp + 7256]
 mov qword ptr [rbp + 7192], rax
  .section .rodata
  .Lrkfn457: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn457]
 lea rsi, [rbp + 7168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7152], rax
 mov qword ptr [rbp + 7160], rdx
 cmp eax, 99
 je xchain427_n13_α
 jmp xchain427_n18_α
 xchain427_n16_β:
 jmp xchain427_n13_α
# IR_LIT_STRING
 xchain427_n17_α:
 mov qword ptr [rbp + 7072], 1
 mov rax, qword ptr [rip + .Lx458_0]
 mov qword ptr [rbp + 7080], rax
 jmp xchain427_n19_α
 xchain427_n17_β:
 jmp xchain427_n21_α
.Lx458_0:
 .quad .Lx458_0_s
.Lx458_0_s:
 .string "ussr"
# IR_SUSPEND yield+resume
 xchain427_n18_α:
 lea rax, [rip + xchain427_n18_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n18_β:
 jmp xchain427_n13_α
 xchain427_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7040] -> [zr+6992]
 mov rax, qword ptr [rbp + 7040]
 mov qword ptr [rbp + 6992], rax
 mov rax, qword ptr [rbp + 7048]
 mov qword ptr [rbp + 7000], rax
# marshal arg1 = producer-box slot [zr+7072] -> [zr+7008]
 mov rax, qword ptr [rbp + 7072]
 mov qword ptr [rbp + 7008], rax
 mov rax, qword ptr [rbp + 7080]
 mov qword ptr [rbp + 7016], rax
  .section .rodata
  .Lrkfn462: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn462]
 lea rsi, [rbp + 6992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6976], rax
 mov qword ptr [rbp + 6984], rdx
 cmp eax, 99
 je xchain427_n21_α
 jmp xchain427_n20_α
 xchain427_n19_β:
 jmp xchain427_n21_α
# IR_VAR_REF
 xchain427_n20_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6912], rax
 mov qword ptr [rbp + 6920], rdx
 jmp xchain427_n22_α
 xchain427_n20_β:
 jmp xchain427_n21_α
 xchain427_n21_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6816]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 6816], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 6824], rax
  .section .rodata
  .Lrkfn466: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn466]
 lea rsi, [rbp + 6816]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6800], rax
 mov qword ptr [rbp + 6808], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n23_α
 xchain427_n21_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n22_α:
 mov qword ptr [rbp + 6944], 6
 mov rax, qword ptr [rip + .Lx467_0]
 mov qword ptr [rbp + 6952], rax
 jmp xchain427_n24_α
 xchain427_n22_β:
 jmp xchain427_n21_α
.Lx467_0:
 .quad 2521
# IR_VAR_REF
 xchain427_n23_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6736], rax
 mov qword ptr [rbp + 6744], rdx
 jmp xchain427_n25_α
 xchain427_n23_β:
 jmp xchain427_n29_α
 xchain427_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6912] -> [zr+6864]
 mov rax, qword ptr [rbp + 6912]
 mov qword ptr [rbp + 6864], rax
 mov rax, qword ptr [rbp + 6920]
 mov qword ptr [rbp + 6872], rax
# marshal arg1 = producer-box slot [zr+6944] -> [zr+6880]
 mov rax, qword ptr [rbp + 6944]
 mov qword ptr [rbp + 6880], rax
 mov rax, qword ptr [rbp + 6952]
 mov qword ptr [rbp + 6888], rax
  .section .rodata
  .Lrkfn471: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn471]
 lea rsi, [rbp + 6864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6848], rax
 mov qword ptr [rbp + 6856], rdx
 cmp eax, 99
 je xchain427_n21_α
 jmp xchain427_n26_α
 xchain427_n24_β:
 jmp xchain427_n21_α
# IR_LIT_STRING
 xchain427_n25_α:
 mov qword ptr [rbp + 6768], 1
 mov rax, qword ptr [rip + .Lx472_0]
 mov qword ptr [rbp + 6776], rax
 jmp xchain427_n27_α
 xchain427_n25_β:
 jmp xchain427_n29_α
.Lx472_0:
 .quad .Lx472_0_s
.Lx472_0_s:
 .string "usa"
# IR_SUSPEND yield+resume
 xchain427_n26_α:
 lea rax, [rip + xchain427_n26_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n26_β:
 jmp xchain427_n21_α
 xchain427_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6736] -> [zr+6688]
 mov rax, qword ptr [rbp + 6736]
 mov qword ptr [rbp + 6688], rax
 mov rax, qword ptr [rbp + 6744]
 mov qword ptr [rbp + 6696], rax
# marshal arg1 = producer-box slot [zr+6768] -> [zr+6704]
 mov rax, qword ptr [rbp + 6768]
 mov qword ptr [rbp + 6704], rax
 mov rax, qword ptr [rbp + 6776]
 mov qword ptr [rbp + 6712], rax
  .section .rodata
  .Lrkfn476: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn476]
 lea rsi, [rbp + 6688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6672], rax
 mov qword ptr [rbp + 6680], rdx
 cmp eax, 99
 je xchain427_n29_α
 jmp xchain427_n28_α
 xchain427_n27_β:
 jmp xchain427_n29_α
# IR_VAR_REF
 xchain427_n28_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6608], rax
 mov qword ptr [rbp + 6616], rdx
 jmp xchain427_n30_α
 xchain427_n28_β:
 jmp xchain427_n29_α
 xchain427_n29_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6512]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 6512], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 6520], rax
  .section .rodata
  .Lrkfn480: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn480]
 lea rsi, [rbp + 6512]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6496], rax
 mov qword ptr [rbp + 6504], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n31_α
 xchain427_n29_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n30_α:
 mov qword ptr [rbp + 6640], 6
 mov rax, qword ptr [rip + .Lx481_0]
 mov qword ptr [rbp + 6648], rax
 jmp xchain427_n32_α
 xchain427_n30_β:
 jmp xchain427_n29_α
.Lx481_0:
 .quad 2119
# IR_VAR_REF
 xchain427_n31_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6432], rax
 mov qword ptr [rbp + 6440], rdx
 jmp xchain427_n33_α
 xchain427_n31_β:
 jmp xchain427_n37_α
 xchain427_n32_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6608] -> [zr+6560]
 mov rax, qword ptr [rbp + 6608]
 mov qword ptr [rbp + 6560], rax
 mov rax, qword ptr [rbp + 6616]
 mov qword ptr [rbp + 6568], rax
# marshal arg1 = producer-box slot [zr+6640] -> [zr+6576]
 mov rax, qword ptr [rbp + 6640]
 mov qword ptr [rbp + 6576], rax
 mov rax, qword ptr [rbp + 6648]
 mov qword ptr [rbp + 6584], rax
  .section .rodata
  .Lrkfn485: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn485]
 lea rsi, [rbp + 6560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6544], rax
 mov qword ptr [rbp + 6552], rdx
 cmp eax, 99
 je xchain427_n29_α
 jmp xchain427_n34_α
 xchain427_n32_β:
 jmp xchain427_n29_α
# IR_LIT_STRING
 xchain427_n33_α:
 mov qword ptr [rbp + 6464], 1
 mov rax, qword ptr [rip + .Lx486_0]
 mov qword ptr [rbp + 6472], rax
 jmp xchain427_n35_α
 xchain427_n33_β:
 jmp xchain427_n37_α
.Lx486_0:
 .quad .Lx486_0_s
.Lx486_0_s:
 .string "indonesia"
# IR_SUSPEND yield+resume
 xchain427_n34_α:
 lea rax, [rip + xchain427_n34_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n34_β:
 jmp xchain427_n29_α
 xchain427_n35_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6432] -> [zr+6384]
 mov rax, qword ptr [rbp + 6432]
 mov qword ptr [rbp + 6384], rax
 mov rax, qword ptr [rbp + 6440]
 mov qword ptr [rbp + 6392], rax
# marshal arg1 = producer-box slot [zr+6464] -> [zr+6400]
 mov rax, qword ptr [rbp + 6464]
 mov qword ptr [rbp + 6400], rax
 mov rax, qword ptr [rbp + 6472]
 mov qword ptr [rbp + 6408], rax
  .section .rodata
  .Lrkfn490: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn490]
 lea rsi, [rbp + 6384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6368], rax
 mov qword ptr [rbp + 6376], rdx
 cmp eax, 99
 je xchain427_n37_α
 jmp xchain427_n36_α
 xchain427_n35_β:
 jmp xchain427_n37_α
# IR_VAR_REF
 xchain427_n36_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6304], rax
 mov qword ptr [rbp + 6312], rdx
 jmp xchain427_n38_α
 xchain427_n36_β:
 jmp xchain427_n37_α
 xchain427_n37_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6208]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 6208], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 6216], rax
  .section .rodata
  .Lrkfn494: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn494]
 lea rsi, [rbp + 6208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6192], rax
 mov qword ptr [rbp + 6200], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n39_α
 xchain427_n37_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n38_α:
 mov qword ptr [rbp + 6336], 6
 mov rax, qword ptr [rip + .Lx495_0]
 mov qword ptr [rbp + 6344], rax
 jmp xchain427_n40_α
 xchain427_n38_β:
 jmp xchain427_n37_α
.Lx495_0:
 .quad 1276
# IR_VAR_REF
 xchain427_n39_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6128], rax
 mov qword ptr [rbp + 6136], rdx
 jmp xchain427_n41_α
 xchain427_n39_β:
 jmp xchain427_n45_α
 xchain427_n40_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6304] -> [zr+6256]
 mov rax, qword ptr [rbp + 6304]
 mov qword ptr [rbp + 6256], rax
 mov rax, qword ptr [rbp + 6312]
 mov qword ptr [rbp + 6264], rax
# marshal arg1 = producer-box slot [zr+6336] -> [zr+6272]
 mov rax, qword ptr [rbp + 6336]
 mov qword ptr [rbp + 6272], rax
 mov rax, qword ptr [rbp + 6344]
 mov qword ptr [rbp + 6280], rax
  .section .rodata
  .Lrkfn499: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn499]
 lea rsi, [rbp + 6256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6240], rax
 mov qword ptr [rbp + 6248], rdx
 cmp eax, 99
 je xchain427_n37_α
 jmp xchain427_n42_α
 xchain427_n40_β:
 jmp xchain427_n37_α
# IR_LIT_STRING
 xchain427_n41_α:
 mov qword ptr [rbp + 6160], 1
 mov rax, qword ptr [rip + .Lx500_0]
 mov qword ptr [rbp + 6168], rax
 jmp xchain427_n43_α
 xchain427_n41_β:
 jmp xchain427_n45_α
.Lx500_0:
 .quad .Lx500_0_s
.Lx500_0_s:
 .string "japan"
# IR_SUSPEND yield+resume
 xchain427_n42_α:
 lea rax, [rip + xchain427_n42_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n42_β:
 jmp xchain427_n37_α
 xchain427_n43_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6128] -> [zr+6080]
 mov rax, qword ptr [rbp + 6128]
 mov qword ptr [rbp + 6080], rax
 mov rax, qword ptr [rbp + 6136]
 mov qword ptr [rbp + 6088], rax
# marshal arg1 = producer-box slot [zr+6160] -> [zr+6096]
 mov rax, qword ptr [rbp + 6160]
 mov qword ptr [rbp + 6096], rax
 mov rax, qword ptr [rbp + 6168]
 mov qword ptr [rbp + 6104], rax
  .section .rodata
  .Lrkfn504: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn504]
 lea rsi, [rbp + 6080]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6064], rax
 mov qword ptr [rbp + 6072], rdx
 cmp eax, 99
 je xchain427_n45_α
 jmp xchain427_n44_α
 xchain427_n43_β:
 jmp xchain427_n45_α
# IR_VAR_REF
 xchain427_n44_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6000], rax
 mov qword ptr [rbp + 6008], rdx
 jmp xchain427_n46_α
 xchain427_n44_β:
 jmp xchain427_n45_α
 xchain427_n45_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5904]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5904], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5912], rax
  .section .rodata
  .Lrkfn508: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn508]
 lea rsi, [rbp + 5904]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5888], rax
 mov qword ptr [rbp + 5896], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n47_α
 xchain427_n45_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n46_α:
 mov qword ptr [rbp + 6032], 6
 mov rax, qword ptr [rip + .Lx509_0]
 mov qword ptr [rbp + 6040], rax
 jmp xchain427_n48_α
 xchain427_n46_β:
 jmp xchain427_n45_α
.Lx509_0:
 .quad 1097
# IR_VAR_REF
 xchain427_n47_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5824], rax
 mov qword ptr [rbp + 5832], rdx
 jmp xchain427_n49_α
 xchain427_n47_β:
 jmp xchain427_n53_α
 xchain427_n48_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6000] -> [zr+5952]
 mov rax, qword ptr [rbp + 6000]
 mov qword ptr [rbp + 5952], rax
 mov rax, qword ptr [rbp + 6008]
 mov qword ptr [rbp + 5960], rax
# marshal arg1 = producer-box slot [zr+6032] -> [zr+5968]
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 5968], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 5976], rax
  .section .rodata
  .Lrkfn513: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn513]
 lea rsi, [rbp + 5952]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5936], rax
 mov qword ptr [rbp + 5944], rdx
 cmp eax, 99
 je xchain427_n45_α
 jmp xchain427_n50_α
 xchain427_n48_β:
 jmp xchain427_n45_α
# IR_LIT_STRING
 xchain427_n49_α:
 mov qword ptr [rbp + 5856], 1
 mov rax, qword ptr [rip + .Lx514_0]
 mov qword ptr [rbp + 5864], rax
 jmp xchain427_n51_α
 xchain427_n49_β:
 jmp xchain427_n53_α
.Lx514_0:
 .quad .Lx514_0_s
.Lx514_0_s:
 .string "brazil"
# IR_SUSPEND yield+resume
 xchain427_n50_α:
 lea rax, [rip + xchain427_n50_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n50_β:
 jmp xchain427_n45_α
 xchain427_n51_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5824] -> [zr+5776]
 mov rax, qword ptr [rbp + 5824]
 mov qword ptr [rbp + 5776], rax
 mov rax, qword ptr [rbp + 5832]
 mov qword ptr [rbp + 5784], rax
# marshal arg1 = producer-box slot [zr+5856] -> [zr+5792]
 mov rax, qword ptr [rbp + 5856]
 mov qword ptr [rbp + 5792], rax
 mov rax, qword ptr [rbp + 5864]
 mov qword ptr [rbp + 5800], rax
  .section .rodata
  .Lrkfn518: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn518]
 lea rsi, [rbp + 5776]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 cmp eax, 99
 je xchain427_n53_α
 jmp xchain427_n52_α
 xchain427_n51_β:
 jmp xchain427_n53_α
# IR_VAR_REF
 xchain427_n52_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5696], rax
 mov qword ptr [rbp + 5704], rdx
 jmp xchain427_n54_α
 xchain427_n52_β:
 jmp xchain427_n53_α
 xchain427_n53_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5600]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5600], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5608], rax
  .section .rodata
  .Lrkfn522: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn522]
 lea rsi, [rbp + 5600]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5584], rax
 mov qword ptr [rbp + 5592], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n55_α
 xchain427_n53_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n54_α:
 mov qword ptr [rbp + 5728], 6
 mov rax, qword ptr [rip + .Lx523_0]
 mov qword ptr [rbp + 5736], rax
 jmp xchain427_n56_α
 xchain427_n54_β:
 jmp xchain427_n53_α
.Lx523_0:
 .quad 1042
# IR_VAR_REF
 xchain427_n55_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5520], rax
 mov qword ptr [rbp + 5528], rdx
 jmp xchain427_n57_α
 xchain427_n55_β:
 jmp xchain427_n61_α
 xchain427_n56_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5696] -> [zr+5648]
 mov rax, qword ptr [rbp + 5696]
 mov qword ptr [rbp + 5648], rax
 mov rax, qword ptr [rbp + 5704]
 mov qword ptr [rbp + 5656], rax
# marshal arg1 = producer-box slot [zr+5728] -> [zr+5664]
 mov rax, qword ptr [rbp + 5728]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 5736]
 mov qword ptr [rbp + 5672], rax
  .section .rodata
  .Lrkfn527: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn527]
 lea rsi, [rbp + 5648]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5632], rax
 mov qword ptr [rbp + 5640], rdx
 cmp eax, 99
 je xchain427_n53_α
 jmp xchain427_n58_α
 xchain427_n56_β:
 jmp xchain427_n53_α
# IR_LIT_STRING
 xchain427_n57_α:
 mov qword ptr [rbp + 5552], 1
 mov rax, qword ptr [rip + .Lx528_0]
 mov qword ptr [rbp + 5560], rax
 jmp xchain427_n59_α
 xchain427_n57_β:
 jmp xchain427_n61_α
.Lx528_0:
 .quad .Lx528_0_s
.Lx528_0_s:
 .string "bangladesh"
# IR_SUSPEND yield+resume
 xchain427_n58_α:
 lea rax, [rip + xchain427_n58_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n58_β:
 jmp xchain427_n53_α
 xchain427_n59_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5520] -> [zr+5472]
 mov rax, qword ptr [rbp + 5520]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 5528]
 mov qword ptr [rbp + 5480], rax
# marshal arg1 = producer-box slot [zr+5552] -> [zr+5488]
 mov rax, qword ptr [rbp + 5552]
 mov qword ptr [rbp + 5488], rax
 mov rax, qword ptr [rbp + 5560]
 mov qword ptr [rbp + 5496], rax
  .section .rodata
  .Lrkfn532: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn532]
 lea rsi, [rbp + 5472]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5456], rax
 mov qword ptr [rbp + 5464], rdx
 cmp eax, 99
 je xchain427_n61_α
 jmp xchain427_n60_α
 xchain427_n59_β:
 jmp xchain427_n61_α
# IR_VAR_REF
 xchain427_n60_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5392], rax
 mov qword ptr [rbp + 5400], rdx
 jmp xchain427_n62_α
 xchain427_n60_β:
 jmp xchain427_n61_α
 xchain427_n61_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5296]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5296], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5304], rax
  .section .rodata
  .Lrkfn536: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn536]
 lea rsi, [rbp + 5296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n63_α
 xchain427_n61_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n62_α:
 mov qword ptr [rbp + 5424], 6
 mov rax, qword ptr [rip + .Lx537_0]
 mov qword ptr [rbp + 5432], rax
 jmp xchain427_n64_α
 xchain427_n62_β:
 jmp xchain427_n61_α
.Lx537_0:
 .quad 750
# IR_VAR_REF
 xchain427_n63_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 jmp xchain427_n65_α
 xchain427_n63_β:
 jmp xchain427_n69_α
 xchain427_n64_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5392] -> [zr+5344]
 mov rax, qword ptr [rbp + 5392]
 mov qword ptr [rbp + 5344], rax
 mov rax, qword ptr [rbp + 5400]
 mov qword ptr [rbp + 5352], rax
# marshal arg1 = producer-box slot [zr+5424] -> [zr+5360]
 mov rax, qword ptr [rbp + 5424]
 mov qword ptr [rbp + 5360], rax
 mov rax, qword ptr [rbp + 5432]
 mov qword ptr [rbp + 5368], rax
  .section .rodata
  .Lrkfn541: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn541]
 lea rsi, [rbp + 5344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 cmp eax, 99
 je xchain427_n61_α
 jmp xchain427_n66_α
 xchain427_n64_β:
 jmp xchain427_n61_α
# IR_LIT_STRING
 xchain427_n65_α:
 mov qword ptr [rbp + 5248], 1
 mov rax, qword ptr [rip + .Lx542_0]
 mov qword ptr [rbp + 5256], rax
 jmp xchain427_n67_α
 xchain427_n65_β:
 jmp xchain427_n69_α
.Lx542_0:
 .quad .Lx542_0_s
.Lx542_0_s:
 .string "pakistan"
# IR_SUSPEND yield+resume
 xchain427_n66_α:
 lea rax, [rip + xchain427_n66_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n66_β:
 jmp xchain427_n61_α
 xchain427_n67_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5216] -> [zr+5168]
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 5168], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 5176], rax
# marshal arg1 = producer-box slot [zr+5248] -> [zr+5184]
 mov rax, qword ptr [rbp + 5248]
 mov qword ptr [rbp + 5184], rax
 mov rax, qword ptr [rbp + 5256]
 mov qword ptr [rbp + 5192], rax
  .section .rodata
  .Lrkfn546: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn546]
 lea rsi, [rbp + 5168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5152], rax
 mov qword ptr [rbp + 5160], rdx
 cmp eax, 99
 je xchain427_n69_α
 jmp xchain427_n68_α
 xchain427_n67_β:
 jmp xchain427_n69_α
# IR_VAR_REF
 xchain427_n68_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5088], rax
 mov qword ptr [rbp + 5096], rdx
 jmp xchain427_n70_α
 xchain427_n68_β:
 jmp xchain427_n69_α
 xchain427_n69_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4992]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4992], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5000], rax
  .section .rodata
  .Lrkfn550: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn550]
 lea rsi, [rbp + 4992]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4976], rax
 mov qword ptr [rbp + 4984], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n71_α
 xchain427_n69_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n70_α:
 mov qword ptr [rbp + 5120], 6
 mov rax, qword ptr [rip + .Lx551_0]
 mov qword ptr [rbp + 5128], rax
 jmp xchain427_n72_α
 xchain427_n70_β:
 jmp xchain427_n69_α
.Lx551_0:
 .quad 682
# IR_VAR_REF
 xchain427_n71_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 jmp xchain427_n73_α
 xchain427_n71_β:
 jmp xchain427_n77_α
 xchain427_n72_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5088] -> [zr+5040]
 mov rax, qword ptr [rbp + 5088]
 mov qword ptr [rbp + 5040], rax
 mov rax, qword ptr [rbp + 5096]
 mov qword ptr [rbp + 5048], rax
# marshal arg1 = producer-box slot [zr+5120] -> [zr+5056]
 mov rax, qword ptr [rbp + 5120]
 mov qword ptr [rbp + 5056], rax
 mov rax, qword ptr [rbp + 5128]
 mov qword ptr [rbp + 5064], rax
  .section .rodata
  .Lrkfn555: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn555]
 lea rsi, [rbp + 5040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5024], rax
 mov qword ptr [rbp + 5032], rdx
 cmp eax, 99
 je xchain427_n69_α
 jmp xchain427_n74_α
 xchain427_n72_β:
 jmp xchain427_n69_α
# IR_LIT_STRING
 xchain427_n73_α:
 mov qword ptr [rbp + 4944], 1
 mov rax, qword ptr [rip + .Lx556_0]
 mov qword ptr [rbp + 4952], rax
 jmp xchain427_n75_α
 xchain427_n73_β:
 jmp xchain427_n77_α
.Lx556_0:
 .quad .Lx556_0_s
.Lx556_0_s:
 .string "w_germany"
# IR_SUSPEND yield+resume
 xchain427_n74_α:
 lea rax, [rip + xchain427_n74_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n74_β:
 jmp xchain427_n69_α
 xchain427_n75_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4912] -> [zr+4864]
 mov rax, qword ptr [rbp + 4912]
 mov qword ptr [rbp + 4864], rax
 mov rax, qword ptr [rbp + 4920]
 mov qword ptr [rbp + 4872], rax
# marshal arg1 = producer-box slot [zr+4944] -> [zr+4880]
 mov rax, qword ptr [rbp + 4944]
 mov qword ptr [rbp + 4880], rax
 mov rax, qword ptr [rbp + 4952]
 mov qword ptr [rbp + 4888], rax
  .section .rodata
  .Lrkfn560: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn560]
 lea rsi, [rbp + 4864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4848], rax
 mov qword ptr [rbp + 4856], rdx
 cmp eax, 99
 je xchain427_n77_α
 jmp xchain427_n76_α
 xchain427_n75_β:
 jmp xchain427_n77_α
# IR_VAR_REF
 xchain427_n76_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4784], rax
 mov qword ptr [rbp + 4792], rdx
 jmp xchain427_n78_α
 xchain427_n76_β:
 jmp xchain427_n77_α
 xchain427_n77_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4688]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4688], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 4696], rax
  .section .rodata
  .Lrkfn564: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn564]
 lea rsi, [rbp + 4688]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n79_α
 xchain427_n77_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n78_α:
 mov qword ptr [rbp + 4816], 6
 mov rax, qword ptr [rip + .Lx565_0]
 mov qword ptr [rbp + 4824], rax
 jmp xchain427_n80_α
 xchain427_n78_β:
 jmp xchain427_n77_α
.Lx565_0:
 .quad 620
# IR_VAR_REF
 xchain427_n79_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4608], rax
 mov qword ptr [rbp + 4616], rdx
 jmp xchain427_n81_α
 xchain427_n79_β:
 jmp xchain427_n85_α
 xchain427_n80_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4784] -> [zr+4736]
 mov rax, qword ptr [rbp + 4784]
 mov qword ptr [rbp + 4736], rax
 mov rax, qword ptr [rbp + 4792]
 mov qword ptr [rbp + 4744], rax
# marshal arg1 = producer-box slot [zr+4816] -> [zr+4752]
 mov rax, qword ptr [rbp + 4816]
 mov qword ptr [rbp + 4752], rax
 mov rax, qword ptr [rbp + 4824]
 mov qword ptr [rbp + 4760], rax
  .section .rodata
  .Lrkfn569: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn569]
 lea rsi, [rbp + 4736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4720], rax
 mov qword ptr [rbp + 4728], rdx
 cmp eax, 99
 je xchain427_n77_α
 jmp xchain427_n82_α
 xchain427_n80_β:
 jmp xchain427_n77_α
# IR_LIT_STRING
 xchain427_n81_α:
 mov qword ptr [rbp + 4640], 1
 mov rax, qword ptr [rip + .Lx570_0]
 mov qword ptr [rbp + 4648], rax
 jmp xchain427_n83_α
 xchain427_n81_β:
 jmp xchain427_n85_α
.Lx570_0:
 .quad .Lx570_0_s
.Lx570_0_s:
 .string "nigeria"
# IR_SUSPEND yield+resume
 xchain427_n82_α:
 lea rax, [rip + xchain427_n82_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n82_β:
 jmp xchain427_n77_α
 xchain427_n83_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4608] -> [zr+4560]
 mov rax, qword ptr [rbp + 4608]
 mov qword ptr [rbp + 4560], rax
 mov rax, qword ptr [rbp + 4616]
 mov qword ptr [rbp + 4568], rax
# marshal arg1 = producer-box slot [zr+4640] -> [zr+4576]
 mov rax, qword ptr [rbp + 4640]
 mov qword ptr [rbp + 4576], rax
 mov rax, qword ptr [rbp + 4648]
 mov qword ptr [rbp + 4584], rax
  .section .rodata
  .Lrkfn574: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn574]
 lea rsi, [rbp + 4560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4544], rax
 mov qword ptr [rbp + 4552], rdx
 cmp eax, 99
 je xchain427_n85_α
 jmp xchain427_n84_α
 xchain427_n83_β:
 jmp xchain427_n85_α
# IR_VAR_REF
 xchain427_n84_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 jmp xchain427_n86_α
 xchain427_n84_β:
 jmp xchain427_n85_α
 xchain427_n85_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4384]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4384], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 4392], rax
  .section .rodata
  .Lrkfn578: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn578]
 lea rsi, [rbp + 4384]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4368], rax
 mov qword ptr [rbp + 4376], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n87_α
 xchain427_n85_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n86_α:
 mov qword ptr [rbp + 4512], 6
 mov rax, qword ptr [rip + .Lx579_0]
 mov qword ptr [rbp + 4520], rax
 jmp xchain427_n88_α
 xchain427_n86_β:
 jmp xchain427_n85_α
.Lx579_0:
 .quad 613
# IR_VAR_REF
 xchain427_n87_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 jmp xchain427_n89_α
 xchain427_n87_β:
 jmp xchain427_n93_α
 xchain427_n88_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4480] -> [zr+4432]
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 4432], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 4440], rax
# marshal arg1 = producer-box slot [zr+4512] -> [zr+4448]
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 4448], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 4456], rax
  .section .rodata
  .Lrkfn583: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn583]
 lea rsi, [rbp + 4432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4416], rax
 mov qword ptr [rbp + 4424], rdx
 cmp eax, 99
 je xchain427_n85_α
 jmp xchain427_n90_α
 xchain427_n88_β:
 jmp xchain427_n85_α
# IR_LIT_STRING
 xchain427_n89_α:
 mov qword ptr [rbp + 4336], 1
 mov rax, qword ptr [rip + .Lx584_0]
 mov qword ptr [rbp + 4344], rax
 jmp xchain427_n91_α
 xchain427_n89_β:
 jmp xchain427_n93_α
.Lx584_0:
 .quad .Lx584_0_s
.Lx584_0_s:
 .string "mexico"
# IR_SUSPEND yield+resume
 xchain427_n90_α:
 lea rax, [rip + xchain427_n90_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n90_β:
 jmp xchain427_n85_α
 xchain427_n91_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4304] -> [zr+4256]
 mov rax, qword ptr [rbp + 4304]
 mov qword ptr [rbp + 4256], rax
 mov rax, qword ptr [rbp + 4312]
 mov qword ptr [rbp + 4264], rax
# marshal arg1 = producer-box slot [zr+4336] -> [zr+4272]
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [rbp + 4272], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [rbp + 4280], rax
  .section .rodata
  .Lrkfn588: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn588]
 lea rsi, [rbp + 4256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 cmp eax, 99
 je xchain427_n93_α
 jmp xchain427_n92_α
 xchain427_n91_β:
 jmp xchain427_n93_α
# IR_VAR_REF
 xchain427_n92_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 jmp xchain427_n94_α
 xchain427_n92_β:
 jmp xchain427_n93_α
 xchain427_n93_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4080]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4080], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 4088], rax
  .section .rodata
  .Lrkfn592: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn592]
 lea rsi, [rbp + 4080]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4064], rax
 mov qword ptr [rbp + 4072], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n95_α
 xchain427_n93_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n94_α:
 mov qword ptr [rbp + 4208], 6
 mov rax, qword ptr [rip + .Lx593_0]
 mov qword ptr [rbp + 4216], rax
 jmp xchain427_n96_α
 xchain427_n94_β:
 jmp xchain427_n93_α
.Lx593_0:
 .quad 581
# IR_VAR_REF
 xchain427_n95_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 jmp xchain427_n97_α
 xchain427_n95_β:
 jmp xchain427_n101_α
 xchain427_n96_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4176] -> [zr+4128]
 mov rax, qword ptr [rbp + 4176]
 mov qword ptr [rbp + 4128], rax
 mov rax, qword ptr [rbp + 4184]
 mov qword ptr [rbp + 4136], rax
# marshal arg1 = producer-box slot [zr+4208] -> [zr+4144]
 mov rax, qword ptr [rbp + 4208]
 mov qword ptr [rbp + 4144], rax
 mov rax, qword ptr [rbp + 4216]
 mov qword ptr [rbp + 4152], rax
  .section .rodata
  .Lrkfn597: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn597]
 lea rsi, [rbp + 4128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 cmp eax, 99
 je xchain427_n93_α
 jmp xchain427_n98_α
 xchain427_n96_β:
 jmp xchain427_n93_α
# IR_LIT_STRING
 xchain427_n97_α:
 mov qword ptr [rbp + 4032], 1
 mov rax, qword ptr [rip + .Lx598_0]
 mov qword ptr [rbp + 4040], rax
 jmp xchain427_n99_α
 xchain427_n97_β:
 jmp xchain427_n101_α
.Lx598_0:
 .quad .Lx598_0_s
.Lx598_0_s:
 .string "uk"
# IR_SUSPEND yield+resume
 xchain427_n98_α:
 lea rax, [rip + xchain427_n98_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n98_β:
 jmp xchain427_n93_α
 xchain427_n99_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn602: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn602]
 lea rsi, [rbp + 3952]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3936], rax
 mov qword ptr [rbp + 3944], rdx
 cmp eax, 99
 je xchain427_n101_α
 jmp xchain427_n100_α
 xchain427_n99_β:
 jmp xchain427_n101_α
# IR_VAR_REF
 xchain427_n100_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 jmp xchain427_n102_α
 xchain427_n100_β:
 jmp xchain427_n101_α
 xchain427_n101_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3776]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3776], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3784], rax
  .section .rodata
  .Lrkfn606: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn606]
 lea rsi, [rbp + 3776]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n103_α
 xchain427_n101_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n102_α:
 mov qword ptr [rbp + 3904], 6
 mov rax, qword ptr [rip + .Lx607_0]
 mov qword ptr [rbp + 3912], rax
 jmp xchain427_n104_α
 xchain427_n102_β:
 jmp xchain427_n101_α
.Lx607_0:
 .quad 559
# IR_VAR_REF
 xchain427_n103_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 jmp xchain427_n105_α
 xchain427_n103_β:
 jmp xchain427_n109_α
 xchain427_n104_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3872] -> [zr+3824]
 mov rax, qword ptr [rbp + 3872]
 mov qword ptr [rbp + 3824], rax
 mov rax, qword ptr [rbp + 3880]
 mov qword ptr [rbp + 3832], rax
# marshal arg1 = producer-box slot [zr+3904] -> [zr+3840]
 mov rax, qword ptr [rbp + 3904]
 mov qword ptr [rbp + 3840], rax
 mov rax, qword ptr [rbp + 3912]
 mov qword ptr [rbp + 3848], rax
  .section .rodata
  .Lrkfn611: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn611]
 lea rsi, [rbp + 3824]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 cmp eax, 99
 je xchain427_n101_α
 jmp xchain427_n106_α
 xchain427_n104_β:
 jmp xchain427_n101_α
# IR_LIT_STRING
 xchain427_n105_α:
 mov qword ptr [rbp + 3728], 1
 mov rax, qword ptr [rip + .Lx612_0]
 mov qword ptr [rbp + 3736], rax
 jmp xchain427_n107_α
 xchain427_n105_β:
 jmp xchain427_n109_α
.Lx612_0:
 .quad .Lx612_0_s
.Lx612_0_s:
 .string "italy"
# IR_SUSPEND yield+resume
 xchain427_n106_α:
 lea rax, [rip + xchain427_n106_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n106_β:
 jmp xchain427_n101_α
 xchain427_n107_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3696] -> [zr+3648]
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 3648], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 3656], rax
# marshal arg1 = producer-box slot [zr+3728] -> [zr+3664]
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 3664], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 3672], rax
  .section .rodata
  .Lrkfn616: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn616]
 lea rsi, [rbp + 3648]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 cmp eax, 99
 je xchain427_n109_α
 jmp xchain427_n108_α
 xchain427_n107_β:
 jmp xchain427_n109_α
# IR_VAR_REF
 xchain427_n108_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 jmp xchain427_n110_α
 xchain427_n108_β:
 jmp xchain427_n109_α
 xchain427_n109_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3472]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3480], rax
  .section .rodata
  .Lrkfn620: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn620]
 lea rsi, [rbp + 3472]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n111_α
 xchain427_n109_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n110_α:
 mov qword ptr [rbp + 3600], 6
 mov rax, qword ptr [rip + .Lx621_0]
 mov qword ptr [rbp + 3608], rax
 jmp xchain427_n112_α
 xchain427_n110_β:
 jmp xchain427_n109_α
.Lx621_0:
 .quad 554
# IR_VAR_REF
 xchain427_n111_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 jmp xchain427_n113_α
 xchain427_n111_β:
 jmp xchain427_n117_α
 xchain427_n112_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn625: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn625]
 lea rsi, [rbp + 3520]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 cmp eax, 99
 je xchain427_n109_α
 jmp xchain427_n114_α
 xchain427_n112_β:
 jmp xchain427_n109_α
# IR_LIT_STRING
 xchain427_n113_α:
 mov qword ptr [rbp + 3424], 1
 mov rax, qword ptr [rip + .Lx626_0]
 mov qword ptr [rbp + 3432], rax
 jmp xchain427_n115_α
 xchain427_n113_β:
 jmp xchain427_n117_α
.Lx626_0:
 .quad .Lx626_0_s
.Lx626_0_s:
 .string "france"
# IR_SUSPEND yield+resume
 xchain427_n114_α:
 lea rax, [rip + xchain427_n114_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n114_β:
 jmp xchain427_n109_α
 xchain427_n115_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3392] -> [zr+3344]
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 3344], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3352], rax
# marshal arg1 = producer-box slot [zr+3424] -> [zr+3360]
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3360], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3368], rax
  .section .rodata
  .Lrkfn630: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn630]
 lea rsi, [rbp + 3344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 cmp eax, 99
 je xchain427_n117_α
 jmp xchain427_n116_α
 xchain427_n115_β:
 jmp xchain427_n117_α
# IR_VAR_REF
 xchain427_n116_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 jmp xchain427_n118_α
 xchain427_n116_β:
 jmp xchain427_n117_α
 xchain427_n117_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3168]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3176], rax
  .section .rodata
  .Lrkfn634: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn634]
 lea rsi, [rbp + 3168]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n119_α
 xchain427_n117_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n118_α:
 mov qword ptr [rbp + 3296], 6
 mov rax, qword ptr [rip + .Lx635_0]
 mov qword ptr [rbp + 3304], rax
 jmp xchain427_n120_α
 xchain427_n118_β:
 jmp xchain427_n117_α
.Lx635_0:
 .quad 525
# IR_VAR_REF
 xchain427_n119_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain427_n121_α
 xchain427_n119_β:
 jmp xchain427_n125_α
 xchain427_n120_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3264] -> [zr+3216]
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 3224], rax
# marshal arg1 = producer-box slot [zr+3296] -> [zr+3232]
 mov rax, qword ptr [rbp + 3296]
 mov qword ptr [rbp + 3232], rax
 mov rax, qword ptr [rbp + 3304]
 mov qword ptr [rbp + 3240], rax
  .section .rodata
  .Lrkfn639: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn639]
 lea rsi, [rbp + 3216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 cmp eax, 99
 je xchain427_n117_α
 jmp xchain427_n122_α
 xchain427_n120_β:
 jmp xchain427_n117_α
# IR_LIT_STRING
 xchain427_n121_α:
 mov qword ptr [rbp + 3120], 1
 mov rax, qword ptr [rip + .Lx640_0]
 mov qword ptr [rbp + 3128], rax
 jmp xchain427_n123_α
 xchain427_n121_β:
 jmp xchain427_n125_α
.Lx640_0:
 .quad .Lx640_0_s
.Lx640_0_s:
 .string "philippines"
# IR_SUSPEND yield+resume
 xchain427_n122_α:
 lea rax, [rip + xchain427_n122_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n122_β:
 jmp xchain427_n117_α
 xchain427_n123_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3088] -> [zr+3040]
 mov rax, qword ptr [rbp + 3088]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3096]
 mov qword ptr [rbp + 3048], rax
# marshal arg1 = producer-box slot [zr+3120] -> [zr+3056]
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3064], rax
  .section .rodata
  .Lrkfn644: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn644]
 lea rsi, [rbp + 3040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 cmp eax, 99
 je xchain427_n125_α
 jmp xchain427_n124_α
 xchain427_n123_β:
 jmp xchain427_n125_α
# IR_VAR_REF
 xchain427_n124_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain427_n126_α
 xchain427_n124_β:
 jmp xchain427_n125_α
 xchain427_n125_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2864]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2872], rax
  .section .rodata
  .Lrkfn648: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn648]
 lea rsi, [rbp + 2864]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n127_α
 xchain427_n125_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n126_α:
 mov qword ptr [rbp + 2992], 6
 mov rax, qword ptr [rip + .Lx649_0]
 mov qword ptr [rbp + 3000], rax
 jmp xchain427_n128_α
 xchain427_n126_β:
 jmp xchain427_n125_α
.Lx649_0:
 .quad 415
# IR_VAR_REF
 xchain427_n127_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain427_n129_α
 xchain427_n127_β:
 jmp xchain427_n133_α
 xchain427_n128_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2960] -> [zr+2912]
 mov rax, qword ptr [rbp + 2960]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 2920], rax
# marshal arg1 = producer-box slot [zr+2992] -> [zr+2928]
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 2928], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 2936], rax
  .section .rodata
  .Lrkfn653: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn653]
 lea rsi, [rbp + 2912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 cmp eax, 99
 je xchain427_n125_α
 jmp xchain427_n130_α
 xchain427_n128_β:
 jmp xchain427_n125_α
# IR_LIT_STRING
 xchain427_n129_α:
 mov qword ptr [rbp + 2816], 1
 mov rax, qword ptr [rip + .Lx654_0]
 mov qword ptr [rbp + 2824], rax
 jmp xchain427_n131_α
 xchain427_n129_β:
 jmp xchain427_n133_α
.Lx654_0:
 .quad .Lx654_0_s
.Lx654_0_s:
 .string "thailand"
# IR_SUSPEND yield+resume
 xchain427_n130_α:
 lea rax, [rip + xchain427_n130_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n130_β:
 jmp xchain427_n125_α
 xchain427_n131_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2784] -> [zr+2736]
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2744], rax
# marshal arg1 = producer-box slot [zr+2816] -> [zr+2752]
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2760], rax
  .section .rodata
  .Lrkfn658: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn658]
 lea rsi, [rbp + 2736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 cmp eax, 99
 je xchain427_n133_α
 jmp xchain427_n132_α
 xchain427_n131_β:
 jmp xchain427_n133_α
# IR_VAR_REF
 xchain427_n132_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 jmp xchain427_n134_α
 xchain427_n132_β:
 jmp xchain427_n133_α
 xchain427_n133_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2560]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2560], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2568], rax
  .section .rodata
  .Lrkfn662: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn662]
 lea rsi, [rbp + 2560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n135_α
 xchain427_n133_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n134_α:
 mov qword ptr [rbp + 2688], 6
 mov rax, qword ptr [rip + .Lx663_0]
 mov qword ptr [rbp + 2696], rax
 jmp xchain427_n136_α
 xchain427_n134_β:
 jmp xchain427_n133_α
.Lx663_0:
 .quad 410
# IR_VAR_REF
 xchain427_n135_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 jmp xchain427_n137_α
 xchain427_n135_β:
 jmp xchain427_n141_α
 xchain427_n136_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2656] -> [zr+2608]
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 2616], rax
# marshal arg1 = producer-box slot [zr+2688] -> [zr+2624]
 mov rax, qword ptr [rbp + 2688]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 2632], rax
  .section .rodata
  .Lrkfn667: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn667]
 lea rsi, [rbp + 2608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je xchain427_n133_α
 jmp xchain427_n138_α
 xchain427_n136_β:
 jmp xchain427_n133_α
# IR_LIT_STRING
 xchain427_n137_α:
 mov qword ptr [rbp + 2512], 1
 mov rax, qword ptr [rip + .Lx668_0]
 mov qword ptr [rbp + 2520], rax
 jmp xchain427_n139_α
 xchain427_n137_β:
 jmp xchain427_n141_α
.Lx668_0:
 .quad .Lx668_0_s
.Lx668_0_s:
 .string "turkey"
# IR_SUSPEND yield+resume
 xchain427_n138_α:
 lea rax, [rip + xchain427_n138_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n138_β:
 jmp xchain427_n133_α
 xchain427_n139_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2480] -> [zr+2432]
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2440], rax
# marshal arg1 = producer-box slot [zr+2512] -> [zr+2448]
 mov rax, qword ptr [rbp + 2512]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2520]
 mov qword ptr [rbp + 2456], rax
  .section .rodata
  .Lrkfn672: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn672]
 lea rsi, [rbp + 2432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 cmp eax, 99
 je xchain427_n141_α
 jmp xchain427_n140_α
 xchain427_n139_β:
 jmp xchain427_n141_α
# IR_VAR_REF
 xchain427_n140_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain427_n142_α
 xchain427_n140_β:
 jmp xchain427_n141_α
 xchain427_n141_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2256]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2264], rax
  .section .rodata
  .Lrkfn676: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn676]
 lea rsi, [rbp + 2256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n143_α
 xchain427_n141_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n142_α:
 mov qword ptr [rbp + 2384], 6
 mov rax, qword ptr [rip + .Lx677_0]
 mov qword ptr [rbp + 2392], rax
 jmp xchain427_n144_α
 xchain427_n142_β:
 jmp xchain427_n141_α
.Lx677_0:
 .quad 383
# IR_VAR_REF
 xchain427_n143_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain427_n145_α
 xchain427_n143_β:
 jmp xchain427_n149_α
 xchain427_n144_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2352] -> [zr+2304]
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2312], rax
# marshal arg1 = producer-box slot [zr+2384] -> [zr+2320]
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 2328], rax
  .section .rodata
  .Lrkfn681: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn681]
 lea rsi, [rbp + 2304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 cmp eax, 99
 je xchain427_n141_α
 jmp xchain427_n146_α
 xchain427_n144_β:
 jmp xchain427_n141_α
# IR_LIT_STRING
 xchain427_n145_α:
 mov qword ptr [rbp + 2208], 1
 mov rax, qword ptr [rip + .Lx682_0]
 mov qword ptr [rbp + 2216], rax
 jmp xchain427_n147_α
 xchain427_n145_β:
 jmp xchain427_n149_α
.Lx682_0:
 .quad .Lx682_0_s
.Lx682_0_s:
 .string "egypt"
# IR_SUSPEND yield+resume
 xchain427_n146_α:
 lea rax, [rip + xchain427_n146_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n146_β:
 jmp xchain427_n141_α
 xchain427_n147_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2176] -> [zr+2128]
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2136], rax
# marshal arg1 = producer-box slot [zr+2208] -> [zr+2144]
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2152], rax
  .section .rodata
  .Lrkfn686: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn686]
 lea rsi, [rbp + 2128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 cmp eax, 99
 je xchain427_n149_α
 jmp xchain427_n148_α
 xchain427_n147_β:
 jmp xchain427_n149_α
# IR_VAR_REF
 xchain427_n148_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 jmp xchain427_n150_α
 xchain427_n148_β:
 jmp xchain427_n149_α
 xchain427_n149_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1952]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1960], rax
  .section .rodata
  .Lrkfn690: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn690]
 lea rsi, [rbp + 1952]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n151_α
 xchain427_n149_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n150_α:
 mov qword ptr [rbp + 2080], 6
 mov rax, qword ptr [rip + .Lx691_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain427_n152_α
 xchain427_n150_β:
 jmp xchain427_n149_α
.Lx691_0:
 .quad 364
# IR_VAR_REF
 xchain427_n151_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain427_n153_α
 xchain427_n151_β:
 jmp xchain427_n157_α
 xchain427_n152_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2048] -> [zr+2000]
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 2008], rax
# marshal arg1 = producer-box slot [zr+2080] -> [zr+2016]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2024], rax
  .section .rodata
  .Lrkfn695: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn695]
 lea rsi, [rbp + 2000]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 cmp eax, 99
 je xchain427_n149_α
 jmp xchain427_n154_α
 xchain427_n152_β:
 jmp xchain427_n149_α
# IR_LIT_STRING
 xchain427_n153_α:
 mov qword ptr [rbp + 1904], 1
 mov rax, qword ptr [rip + .Lx696_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain427_n155_α
 xchain427_n153_β:
 jmp xchain427_n157_α
.Lx696_0:
 .quad .Lx696_0_s
.Lx696_0_s:
 .string "spain"
# IR_SUSPEND yield+resume
 xchain427_n154_α:
 lea rax, [rip + xchain427_n154_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n154_β:
 jmp xchain427_n149_α
 xchain427_n155_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn700: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn700]
 lea rsi, [rbp + 1824]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 cmp eax, 99
 je xchain427_n157_α
 jmp xchain427_n156_α
 xchain427_n155_β:
 jmp xchain427_n157_α
# IR_VAR_REF
 xchain427_n156_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain427_n158_α
 xchain427_n156_β:
 jmp xchain427_n157_α
 xchain427_n157_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1648]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1656], rax
  .section .rodata
  .Lrkfn704: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn704]
 lea rsi, [rbp + 1648]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n159_α
 xchain427_n157_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n158_α:
 mov qword ptr [rbp + 1776], 6
 mov rax, qword ptr [rip + .Lx705_0]
 mov qword ptr [rbp + 1784], rax
 jmp xchain427_n160_α
 xchain427_n158_β:
 jmp xchain427_n157_α
.Lx705_0:
 .quad 352
# IR_VAR_REF
 xchain427_n159_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain427_n161_α
 xchain427_n159_β:
 jmp xchain427_n165_α
 xchain427_n160_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1744] -> [zr+1696]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1704], rax
# marshal arg1 = producer-box slot [zr+1776] -> [zr+1712]
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1720], rax
  .section .rodata
  .Lrkfn709: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn709]
 lea rsi, [rbp + 1696]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 cmp eax, 99
 je xchain427_n157_α
 jmp xchain427_n162_α
 xchain427_n160_β:
 jmp xchain427_n157_α
# IR_LIT_STRING
 xchain427_n161_α:
 mov qword ptr [rbp + 1600], 1
 mov rax, qword ptr [rip + .Lx710_0]
 mov qword ptr [rbp + 1608], rax
 jmp xchain427_n163_α
 xchain427_n161_β:
 jmp xchain427_n165_α
.Lx710_0:
 .quad .Lx710_0_s
.Lx710_0_s:
 .string "poland"
# IR_SUSPEND yield+resume
 xchain427_n162_α:
 lea rax, [rip + xchain427_n162_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n162_β:
 jmp xchain427_n157_α
 xchain427_n163_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn714: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn714]
 lea rsi, [rbp + 1520]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je xchain427_n165_α
 jmp xchain427_n164_α
 xchain427_n163_β:
 jmp xchain427_n165_α
# IR_VAR_REF
 xchain427_n164_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain427_n166_α
 xchain427_n164_β:
 jmp xchain427_n165_α
 xchain427_n165_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1344]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1352], rax
  .section .rodata
  .Lrkfn718: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn718]
 lea rsi, [rbp + 1344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n167_α
 xchain427_n165_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n166_α:
 mov qword ptr [rbp + 1472], 6
 mov rax, qword ptr [rip + .Lx719_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain427_n168_α
 xchain427_n166_β:
 jmp xchain427_n165_α
.Lx719_0:
 .quad 337
# IR_VAR_REF
 xchain427_n167_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain427_n169_α
 xchain427_n167_β:
 jmp xchain427_n173_α
 xchain427_n168_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1392]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1400], rax
# marshal arg1 = producer-box slot [zr+1472] -> [zr+1408]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1416], rax
  .section .rodata
  .Lrkfn723: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn723]
 lea rsi, [rbp + 1392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je xchain427_n165_α
 jmp xchain427_n170_α
 xchain427_n168_β:
 jmp xchain427_n165_α
# IR_LIT_STRING
 xchain427_n169_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx724_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain427_n171_α
 xchain427_n169_β:
 jmp xchain427_n173_α
.Lx724_0:
 .quad .Lx724_0_s
.Lx724_0_s:
 .string "s_korea"
# IR_SUSPEND yield+resume
 xchain427_n170_α:
 lea rax, [rip + xchain427_n170_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n170_β:
 jmp xchain427_n165_α
 xchain427_n171_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1216]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1224], rax
# marshal arg1 = producer-box slot [zr+1296] -> [zr+1232]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1240], rax
  .section .rodata
  .Lrkfn728: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn728]
 lea rsi, [rbp + 1216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain427_n173_α
 jmp xchain427_n172_α
 xchain427_n171_β:
 jmp xchain427_n173_α
# IR_VAR_REF
 xchain427_n172_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain427_n174_α
 xchain427_n172_β:
 jmp xchain427_n173_α
 xchain427_n173_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1040]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1048], rax
  .section .rodata
  .Lrkfn732: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn732]
 lea rsi, [rbp + 1040]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n175_α
 xchain427_n173_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n174_α:
 mov qword ptr [rbp + 1168], 6
 mov rax, qword ptr [rip + .Lx733_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain427_n176_α
 xchain427_n174_β:
 jmp xchain427_n173_α
.Lx733_0:
 .quad 335
# IR_VAR_REF
 xchain427_n175_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain427_n177_α
 xchain427_n175_β:
 jmp xchain427_n181_α
 xchain427_n176_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1088]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1096], rax
# marshal arg1 = producer-box slot [zr+1168] -> [zr+1104]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1112], rax
  .section .rodata
  .Lrkfn737: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn737]
 lea rsi, [rbp + 1088]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain427_n173_α
 jmp xchain427_n178_α
 xchain427_n176_β:
 jmp xchain427_n173_α
# IR_LIT_STRING
 xchain427_n177_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx738_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain427_n179_α
 xchain427_n177_β:
 jmp xchain427_n181_α
.Lx738_0:
 .quad .Lx738_0_s
.Lx738_0_s:
 .string "iran"
# IR_SUSPEND yield+resume
 xchain427_n178_α:
 lea rax, [rip + xchain427_n178_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n178_β:
 jmp xchain427_n173_α
 xchain427_n179_α:
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
  .Lrkfn742: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn742]
 lea rsi, [rbp + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain427_n181_α
 jmp xchain427_n180_α
 xchain427_n179_β:
 jmp xchain427_n181_α
# IR_VAR_REF
 xchain427_n180_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain427_n182_α
 xchain427_n180_β:
 jmp xchain427_n181_α
 xchain427_n181_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+736]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 744], rax
  .section .rodata
  .Lrkfn746: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn746]
 lea rsi, [rbp + 736]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n183_α
 xchain427_n181_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n182_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx747_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain427_n184_α
 xchain427_n182_β:
 jmp xchain427_n181_α
.Lx747_0:
 .quad 320
# IR_VAR_REF
 xchain427_n183_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain427_n185_α
 xchain427_n183_β:
 jmp xchain427_n189_α
 xchain427_n184_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+800]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 808], rax
  .section .rodata
  .Lrkfn751: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn751]
 lea rsi, [rbp + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain427_n181_α
 jmp xchain427_n186_α
 xchain427_n184_β:
 jmp xchain427_n181_α
# IR_LIT_STRING
 xchain427_n185_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx752_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain427_n187_α
 xchain427_n185_β:
 jmp xchain427_n189_α
.Lx752_0:
 .quad .Lx752_0_s
.Lx752_0_s:
 .string "ethiopia"
# IR_SUSPEND yield+resume
 xchain427_n186_α:
 lea rax, [rip + xchain427_n186_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n186_β:
 jmp xchain427_n181_α
 xchain427_n187_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn756: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn756]
 lea rsi, [rbp + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain427_n189_α
 jmp xchain427_n188_α
 xchain427_n187_β:
 jmp xchain427_n189_α
# IR_VAR_REF
 xchain427_n188_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain427_n190_α
 xchain427_n188_β:
 jmp xchain427_n189_α
 xchain427_n189_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+432]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 440], rax
  .section .rodata
  .Lrkfn760: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn760]
 lea rsi, [rbp + 432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain427_n191_α
 xchain427_n189_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n190_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx761_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain427_n192_α
 xchain427_n190_β:
 jmp xchain427_n189_α
.Lx761_0:
 .quad 272
# IR_VAR_REF
 xchain427_n191_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain427_n193_α
 xchain427_n191_β:
 jmp xchain427_n197_α
 xchain427_n192_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn765: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn765]
 lea rsi, [rbp + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain427_n189_α
 jmp xchain427_n194_α
 xchain427_n192_β:
 jmp xchain427_n189_α
# IR_LIT_STRING
 xchain427_n193_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx766_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain427_n195_α
 xchain427_n193_β:
 jmp xchain427_n197_α
.Lx766_0:
 .quad .Lx766_0_s
.Lx766_0_s:
 .string "argentina"
# IR_SUSPEND yield+resume
 xchain427_n194_α:
 lea rax, [rip + xchain427_n194_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n194_β:
 jmp xchain427_n189_α
 xchain427_n195_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn770: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn770]
 lea rsi, [rbp + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain427_n197_α
 jmp xchain427_n196_α
 xchain427_n195_β:
 jmp xchain427_n197_α
# IR_VAR_REF
 xchain427_n196_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain427_n198_α
 xchain427_n196_β:
 jmp xchain427_n197_α
 xchain427_n197_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn774: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn774]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp proc_pop$2_ω
 xchain427_n197_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain427_n198_α:
 mov qword ptr [rbp + 256], 6
 mov rax, qword ptr [rip + .Lx775_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain427_n199_α
 xchain427_n198_β:
 jmp xchain427_n197_α
.Lx775_0:
 .quad 251
 xchain427_n199_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+176]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+192]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn777: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn777]
 lea rsi, [rbp + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain427_n197_α
 jmp xchain427_n200_α
 xchain427_n199_β:
 jmp xchain427_n197_α
# IR_SUSPEND yield+resume
 xchain427_n200_α:
 lea rax, [rip + xchain427_n200_β]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2_γ
 xchain427_n200_β:
 jmp xchain427_n197_α
proc_pop$2_res:
add rsp, 8
pop rbp
proc_pop$2_β:
jmp qword ptr [rbp + 7712]
proc_pop$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_pop$2_res]
push rax
mov rax, [rbp + 7752]
mov rbp, [rbp + 7768]
jmp rax
proc_pop$2_ω:
mov rax, [rbp + 7760]
lea rsp, [rbp + 7776]
mov rbp, [rbp + 7768]
jmp rax
  .globl proc_density$2_α
proc_density$2_α:
#=======================================================================================================================
    .global proc_density$2_α
    .global proc_density$2_β
    .global proc_density$2_γ
    .global proc_density$2_ω
  sub rsp, 1152
  mov [rsp + 1128], rcx
  mov [rsp + 1136], rdx
  mov [rsp + 1144], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1120
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1048], rsp
  mov rdi, rsp
  mov esi, 1120
  call rt_jmp_frame_lexprep@PLT
proc_density$2_α_body:
lea rax, [rip + xchain780_n21_β]
mov qword ptr [rbp + 1024], rax
 xchain780_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn782: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn782]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_density$2_ω
 jmp xchain780_n1_α
 xchain780_n0_β:
 jmp proc_density$2_ω
# IR_VAR_REF
 xchain780_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain780_n2_α
 xchain780_n1_β:
 jmp xchain780_n5_α
# IR_VAR_REF
 xchain780_n2_α:
 lea rdi, [rbp + 1104]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain780_n3_α
 xchain780_n2_β:
 jmp xchain780_n5_α
 xchain780_n3_α:
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
  .Lrkfn788: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn788]
 lea rsi, [rbp + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain780_n5_α
 jmp xchain780_n4_α
 xchain780_n3_β:
 jmp xchain780_n5_α
# IR_VAR_REF
 xchain780_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain780_n6_α
 xchain780_n4_β:
 jmp xchain780_n5_α
 xchain780_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn792: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn792]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_density$2_ω
 jmp proc_density$2_ω
 xchain780_n5_β:
 jmp proc_density$2_ω
# IR_VAR_REF
 xchain780_n6_α:
 lea rdi, [rbp + 1056]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain780_n7_α
 xchain780_n6_β:
 jmp xchain780_n5_α
 xchain780_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+800]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 808], rax
  .section .rodata
  .Lrkfn796: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn796]
 lea rsi, [rbp + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain780_n5_α
 jmp xchain780_n8_α
 xchain780_n7_β:
 jmp xchain780_n5_α
# IR_VAR_REF
 xchain780_n8_α:
 lea rdi, [rbp + 1104]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain780_n9_α
 xchain780_n8_β:
 jmp xchain780_n5_α
# IR_VAR_REF
 xchain780_n9_α:
 lea rdi, [rbp + 1072]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain780_n10_α
 xchain780_n9_β:
 jmp xchain780_n5_α
 xchain780_n10_α:
 mov qword ptr [rbp + 672], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 704]
 mov rdx, qword ptr [rbp + 712]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx802_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx802_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx802_3]
 lea rdx, [rip + .Lx802_4]
 jmp rax
.Lx802_3:
 mov qword ptr [rbp + 680], rsp
 mov rax, qword ptr [rbp + 672]
 test rax, rax
 jne .Lx802_5
 mov qword ptr [rbp + 672], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx802_2
.Lx802_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx802_2
.Lx802_4:
 mov rax, qword ptr [rbp + 672]
 test rax, rax
 jne .Lx802_6
 mov qword ptr [rbp + 672], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx802_2
.Lx802_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx802_2
.Lx802_1:
 call rt_faildescr@PLT
.Lx802_2:
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain780_n5_α
 jmp xchain780_n11_α
 xchain780_n10_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 680]
 jmp qword ptr [rsp]
.Lx802_0:
 .quad .Lx802_0_s
.Lx802_0_s:
 .string "pop/2"
# IR_VAR_REF
 xchain780_n11_α:
 lea rdi, [rbp + 1104]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain780_n12_α
 xchain780_n11_β:
 jmp xchain780_n5_α
# IR_VAR_REF
 xchain780_n12_α:
 lea rdi, [rbp + 1088]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain780_n13_α
 xchain780_n12_β:
 jmp xchain780_n5_α
 xchain780_n13_α:
 mov qword ptr [rbp + 528], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 592]
 mov rdx, qword ptr [rbp + 600]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx808_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx808_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx808_3]
 lea rdx, [rip + .Lx808_4]
 jmp rax
.Lx808_3:
 mov qword ptr [rbp + 536], rsp
 mov rax, qword ptr [rbp + 528]
 test rax, rax
 jne .Lx808_5
 mov qword ptr [rbp + 528], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx808_2
.Lx808_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx808_2
.Lx808_4:
 mov rax, qword ptr [rbp + 528]
 test rax, rax
 jne .Lx808_6
 mov qword ptr [rbp + 528], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx808_2
.Lx808_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx808_2
.Lx808_1:
 call rt_faildescr@PLT
.Lx808_2:
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain780_n10_β
 jmp xchain780_n14_α
 xchain780_n13_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 536]
 jmp qword ptr [rsp]
.Lx808_0:
 .quad .Lx808_0_s
.Lx808_0_s:
 .string "area/2"
# IR_VAR_REF
 xchain780_n14_α:
 lea rdi, [rbp + 1056]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain780_n15_α
 xchain780_n14_β:
 jmp xchain780_n5_α
# IR_VAR
 xchain780_n15_α:
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 392], rax
 jmp xchain780_n16_α
 xchain780_n15_β:
 jmp proc_density$2_ω
# IR_LIT_INTEGER
 xchain780_n16_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx813_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain780_n17_α
 xchain780_n16_β:
 jmp proc_density$2_ω
.Lx813_0:
 .quad 100
 xchain780_n17_α:
# BOX IR_CALL $ax_mul(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn815: .string "$ax_mul"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn815]
 lea rsi, [rbp + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain780_n5_α
 jmp xchain780_n18_α
 xchain780_n17_β:
 jmp xchain780_n5_α
# IR_VAR
 xchain780_n18_α:
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 456], rax
 jmp xchain780_n19_α
 xchain780_n18_β:
 jmp proc_density$2_ω
 xchain780_n19_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+272]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 280], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+288]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn819: .string "$ax_idiv"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn819]
 lea rsi, [rbp + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain780_n5_α
 jmp xchain780_n20_α
 xchain780_n19_β:
 jmp xchain780_n5_α
 xchain780_n20_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+176]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+192]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn821: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn821]
 lea rsi, [rbp + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain780_n13_β
 jmp xchain780_n21_α
 xchain780_n20_β:
 jmp xchain780_n13_β
# IR_SUSPEND yield+resume
 xchain780_n21_α:
 lea rax, [rip + xchain780_n21_β]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_density$2_γ
 xchain780_n21_β:
 jmp xchain780_n13_β
proc_density$2_res:
add rsp, 8
pop rbp
proc_density$2_β:
jmp qword ptr [rbp + 1024]
proc_density$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_density$2_res]
push rax
mov rax, [rbp + 1128]
mov rbp, [rbp + 1144]
jmp rax
proc_density$2_ω:
mov rax, [rbp + 1136]
lea rsp, [rbp + 1152]
mov rbp, [rbp + 1144]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "area/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_area$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 7744
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "query/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_query$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1968
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "pop/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_pop$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 7744
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "density/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_density$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1120
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
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
  mov qword ptr [rsp + 1336], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain824_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn826: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn826]
 lea rsi, [rbp + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain824_n1_α
 xchain824_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain824_n1_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx827_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain824_n2_α
 xchain824_n1_β:
 jmp main_ω
.Lx827_0:
 .quad .Lx827_0_s
.Lx827_0_s:
 .string "."
# IR_VAR_REF
 xchain824_n2_α:
 lea rdi, [rbp + 1360]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain824_n3_α
 xchain824_n2_β:
 jmp main_ω
# IR_LIT_STRING
 xchain824_n3_α:
 mov qword ptr [rbp + 1152], 1
 mov rax, qword ptr [rip + .Lx830_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain824_n4_α
 xchain824_n3_β:
 jmp main_ω
.Lx830_0:
 .quad .Lx830_0_s
.Lx830_0_s:
 .string "."
# IR_VAR_REF
 xchain824_n4_α:
 lea rdi, [rbp + 1392]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain824_n5_α
 xchain824_n4_β:
 jmp main_ω
# IR_LIT_STRING
 xchain824_n5_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx833_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain824_n6_α
 xchain824_n5_β:
 jmp main_ω
.Lx833_0:
 .quad .Lx833_0_s
.Lx833_0_s:
 .string "."
# IR_VAR_REF
 xchain824_n6_α:
 lea rdi, [rbp + 1344]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain824_n7_α
 xchain824_n6_β:
 jmp main_ω
# IR_LIT_STRING
 xchain824_n7_α:
 mov qword ptr [rbp + 864], 1
 mov rax, qword ptr [rip + .Lx836_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain824_n8_α
 xchain824_n7_β:
 jmp main_ω
.Lx836_0:
 .quad .Lx836_0_s
.Lx836_0_s:
 .string "."
# IR_VAR_REF
 xchain824_n8_α:
 lea rdi, [rbp + 1376]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain824_n9_α
 xchain824_n8_β:
 jmp main_ω
# IR_LIT_STRING
 xchain824_n9_α:
 mov qword ptr [rbp + 720], 1
 mov rax, qword ptr [rip + .Lx839_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain824_n10_α
 xchain824_n9_β:
 jmp main_ω
.Lx839_0:
 .quad .Lx839_0_s
.Lx839_0_s:
 .string "[]"
 xchain824_n10_α:
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
  .Lrkfn841: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn841]
 lea rsi, [rbp + 800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je main_ω
 jmp xchain824_n11_α
 xchain824_n10_β:
 jmp main_ω
 xchain824_n11_α:
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
# marshal arg2 = producer-box slot [zr+784] -> [zr+976]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 984], rax
  .section .rodata
  .Lrkfn843: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn843]
 lea rsi, [rbp + 944]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je main_ω
 jmp xchain824_n12_α
 xchain824_n11_β:
 jmp main_ω
 xchain824_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1088]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1096], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+1104]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1112], rax
# marshal arg2 = producer-box slot [zr+928] -> [zr+1120]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 1128], rax
  .section .rodata
  .Lrkfn845: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn845]
 lea rsi, [rbp + 1088]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je main_ω
 jmp xchain824_n13_α
 xchain824_n12_β:
 jmp main_ω
 xchain824_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1232]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1248]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1256], rax
# marshal arg2 = producer-box slot [zr+1072] -> [zr+1264]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1272], rax
  .section .rodata
  .Lrkfn847: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn847]
 lea rsi, [rbp + 1232]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain824_n15_α
 jmp xchain824_n14_α
 xchain824_n13_β:
 jmp xchain824_n15_α
 xchain824_n14_α:
 mov qword ptr [rbp + 688], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1216]
 mov rdx, qword ptr [rbp + 1224]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx849_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx849_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx849_3]
 lea rdx, [rip + .Lx849_4]
 jmp rax
.Lx849_3:
 mov qword ptr [rbp + 696], rsp
 mov rax, qword ptr [rbp + 688]
 test rax, rax
 jne .Lx849_5
 mov qword ptr [rbp + 688], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx849_2
.Lx849_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx849_2
.Lx849_4:
 mov rax, qword ptr [rbp + 688]
 test rax, rax
 jne .Lx849_6
 mov qword ptr [rbp + 688], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx849_2
.Lx849_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx849_2
.Lx849_1:
 call rt_faildescr@PLT
.Lx849_2:
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain824_n15_α
 jmp xchain824_n16_α
 xchain824_n14_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 696]
 jmp qword ptr [rsp]
.Lx849_0:
 .quad .Lx849_0_s
.Lx849_0_s:
 .string "query/1"
# IR_LIT_STRING
 xchain824_n15_α:
 mov qword ptr [rbp + 624], 1
 mov rax, qword ptr [rip + .Lx850_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain824_n17_α
 xchain824_n15_β:
 jmp xchain824_n20_α
.Lx850_0:
 .quad .Lx850_0_s
.Lx850_0_s:
 .string "none"
# IR_LIT_STRING
 xchain824_n16_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx851_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain824_n18_α
 xchain824_n16_β:
 jmp main_ω
.Lx851_0:
 .quad .Lx851_0_s
.Lx851_0_s:
 .string "."
 xchain824_n17_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+592]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 600], rax
  .section .rodata
  .Lrkfn853: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn853]
 lea rsi, [rbp + 592]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain824_n20_α
 jmp xchain824_n19_α
 xchain824_n17_β:
 jmp xchain824_n20_α
# IR_VAR_REF
 xchain824_n18_α:
 lea rdi, [rbp + 1360]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain824_n21_α
 xchain824_n18_β:
 jmp main_ω
# IR_LIT_STRING
 xchain824_n19_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx856_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain824_n22_α
 xchain824_n19_β:
 jmp xchain824_n20_α
.Lx856_0:
 .quad .Lx856_0_s
.Lx856_0_s:
 .string ""
 xchain824_n20_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn858: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn858]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain824_n20_β:
 jmp main_ω
# IR_LIT_STRING
 xchain824_n21_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx859_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain824_n23_α
 xchain824_n21_β:
 jmp main_ω
.Lx859_0:
 .quad .Lx859_0_s
.Lx859_0_s:
 .string "."
 xchain824_n22_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn861: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn861]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain824_n20_α
 jmp xchain824_n24_α
 xchain824_n22_β:
 jmp xchain824_n20_α
# IR_VAR_REF
 xchain824_n23_α:
 lea rdi, [rbp + 1344]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain824_n25_α
 xchain824_n23_β:
 jmp main_ω
# IR_MOVE_LABEL
 xchain824_n24_α:
 lea rax, [rip + xchain824_n20_α]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
 xchain824_n24_β:
 jmp main_ω
# IR_LIT_STRING
 xchain824_n25_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx866_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain824_n27_α
 xchain824_n25_β:
 jmp main_ω
.Lx866_0:
 .quad .Lx866_0_s
.Lx866_0_s:
 .string "[]"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain824_n26_α:
 jmp qword ptr [rbp + 32]
 xchain824_n26_β:
 jmp main_ω
 xchain824_n27_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+336]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+352]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 360], rax
# marshal arg2 = producer-box slot [zr+256] -> [zr+368]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 376], rax
  .section .rodata
  .Lrkfn870: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn870]
 lea rsi, [rbp + 336]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je main_ω
 jmp xchain824_n28_α
 xchain824_n27_β:
 jmp main_ω
 xchain824_n28_α:
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
# marshal arg2 = producer-box slot [zr+320] -> [zr+512]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 520], rax
  .section .rodata
  .Lrkfn872: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn872]
 lea rsi, [rbp + 480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain824_n20_α
 jmp xchain824_n29_α
 xchain824_n28_β:
 jmp xchain824_n20_α
 xchain824_n29_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+224]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn874: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn874]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain824_n20_α
 jmp xchain824_n19_α
 xchain824_n29_β:
 jmp xchain824_n20_α
main_β:
jmp xchain824_n26_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 1336]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 1336]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
