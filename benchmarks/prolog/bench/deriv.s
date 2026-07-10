  .intel_syntax noprefix
  .text
  .globl proc_d$3_α
proc_d$3_α:
#=======================================================================================================================
    .global proc_d$3_α
    .global proc_d$3_β
    .global proc_d$3_γ
    .global proc_d$3_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_d$3_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 6800], rax
 pop rsi
proc_d$3_α_body:
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6672], rax
 mov qword ptr [r12 + 6680], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n7_α
# IR_LIT_STRING
 xchain0_n2_α:
 mov qword ptr [r12 + 6784], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 6792], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_d$3_ω
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "+"
# IR_VAR_REF
 xchain0_n3_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6688], rax
 mov qword ptr [r12 + 6696], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n4_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6704], rax
 mov qword ptr [r12 + 6712], rdx
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp proc_d$3_ω
 xchain0_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6784] -> [zr+6736]
 mov rax, qword ptr [r12 + 6784]
 mov qword ptr [r12 + 6736], rax
 mov rax, qword ptr [r12 + 6792]
 mov qword ptr [r12 + 6744], rax
# marshal arg1 = producer-box slot [zr+6688] -> [zr+6752]
 mov rax, qword ptr [r12 + 6688]
 mov qword ptr [r12 + 6752], rax
 mov rax, qword ptr [r12 + 6696]
 mov qword ptr [r12 + 6760], rax
# marshal arg2 = producer-box slot [zr+6704] -> [zr+6768]
 mov rax, qword ptr [r12 + 6704]
 mov qword ptr [r12 + 6768], rax
 mov rax, qword ptr [r12 + 6712]
 mov qword ptr [r12 + 6776], rax
  .section .rodata
  .Lrkfn11: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn11]
 lea rsi, [r12 + 6736]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6720], rax
 mov qword ptr [r12 + 6728], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n7_α
 xchain0_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6672] -> [zr+6640]
 mov rax, qword ptr [r12 + 6672]
 mov qword ptr [r12 + 6640], rax
 mov rax, qword ptr [r12 + 6680]
 mov qword ptr [r12 + 6648], rax
# marshal arg1 = producer-box slot [zr+6720] -> [zr+6656]
 mov rax, qword ptr [r12 + 6720]
 mov qword ptr [r12 + 6656], rax
 mov rax, qword ptr [r12 + 6728]
 mov qword ptr [r12 + 6664], rax
  .section .rodata
  .Lrkfn13: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn13]
 lea rsi, [r12 + 6640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6624], rax
 mov qword ptr [r12 + 6632], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n7_α
 xchain0_n7_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+6096]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 6096], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 6104], rax
  .section .rodata
  .Lrkfn15: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn15]
 lea rsi, [r12 + 6096]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6080], rax
 mov qword ptr [r12 + 6088], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n8_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6592], rax
 mov qword ptr [r12 + 6600], rdx
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n9_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5952], rax
 mov qword ptr [r12 + 5960], rdx
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n10_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6608], rax
 mov qword ptr [r12 + 6616], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n7_α
# IR_LIT_STRING
 xchain0_n11_α:
 mov qword ptr [r12 + 6064], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 6072], rax
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp proc_d$3_ω
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "-"
 xchain0_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6592] -> [zr+6560]
 mov rax, qword ptr [r12 + 6592]
 mov qword ptr [r12 + 6560], rax
 mov rax, qword ptr [r12 + 6600]
 mov qword ptr [r12 + 6568], rax
# marshal arg1 = producer-box slot [zr+6608] -> [zr+6576]
 mov rax, qword ptr [r12 + 6608]
 mov qword ptr [r12 + 6576], rax
 mov rax, qword ptr [r12 + 6616]
 mov qword ptr [r12 + 6584], rax
  .section .rodata
  .Lrkfn24: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn24]
 lea rsi, [r12 + 6560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6544], rax
 mov qword ptr [r12 + 6552], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n13_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5968], rax
 mov qword ptr [r12 + 5976], rdx
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n14_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6416], rax
 mov qword ptr [r12 + 6424], rdx
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n15_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5984], rax
 mov qword ptr [r12 + 5992], rdx
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp proc_d$3_ω
# IR_LIT_STRING
 xchain0_n16_α:
 mov qword ptr [r12 + 6528], 1
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 6536], rax
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp proc_d$3_ω
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string "+"
 xchain0_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6064] -> [zr+6016]
 mov rax, qword ptr [r12 + 6064]
 mov qword ptr [r12 + 6016], rax
 mov rax, qword ptr [r12 + 6072]
 mov qword ptr [r12 + 6024], rax
# marshal arg1 = producer-box slot [zr+5968] -> [zr+6032]
 mov rax, qword ptr [r12 + 5968]
 mov qword ptr [r12 + 6032], rax
 mov rax, qword ptr [r12 + 5976]
 mov qword ptr [r12 + 6040], rax
# marshal arg2 = producer-box slot [zr+5984] -> [zr+6048]
 mov rax, qword ptr [r12 + 5984]
 mov qword ptr [r12 + 6048], rax
 mov rax, qword ptr [r12 + 5992]
 mov qword ptr [r12 + 6056], rax
  .section .rodata
  .Lrkfn33: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn33]
 lea rsi, [r12 + 6016]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6000], rax
 mov qword ptr [r12 + 6008], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n18_α:
 lea rdi, [r12 + 6880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6432], rax
 mov qword ptr [r12 + 6440], rdx
 jmp xchain0_n21_α
 xchain0_n18_β:
 jmp proc_d$3_ω
 xchain0_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5952] -> [zr+5920]
 mov rax, qword ptr [r12 + 5952]
 mov qword ptr [r12 + 5920], rax
 mov rax, qword ptr [r12 + 5960]
 mov qword ptr [r12 + 5928], rax
# marshal arg1 = producer-box slot [zr+6000] -> [zr+5936]
 mov rax, qword ptr [r12 + 6000]
 mov qword ptr [r12 + 5936], rax
 mov rax, qword ptr [r12 + 6008]
 mov qword ptr [r12 + 5944], rax
  .section .rodata
  .Lrkfn37: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn37]
 lea rsi, [r12 + 5920]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5904], rax
 mov qword ptr [r12 + 5912], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n22_α
 xchain0_n19_β:
 jmp xchain0_n20_α
 xchain0_n20_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+5376]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 5376], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 5384], rax
  .section .rodata
  .Lrkfn39: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn39]
 lea rsi, [r12 + 5376]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5360], rax
 mov qword ptr [r12 + 5368], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n21_α:
 lea rdi, [r12 + 6896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6448], rax
 mov qword ptr [r12 + 6456], rdx
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n22_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5872], rax
 mov qword ptr [r12 + 5880], rdx
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n23_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5232], rax
 mov qword ptr [r12 + 5240], rdx
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n39_α
 xchain0_n24_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6528] -> [zr+6480]
 mov rax, qword ptr [r12 + 6528]
 mov qword ptr [r12 + 6480], rax
 mov rax, qword ptr [r12 + 6536]
 mov qword ptr [r12 + 6488], rax
# marshal arg1 = producer-box slot [zr+6432] -> [zr+6496]
 mov rax, qword ptr [r12 + 6432]
 mov qword ptr [r12 + 6496], rax
 mov rax, qword ptr [r12 + 6440]
 mov qword ptr [r12 + 6504], rax
# marshal arg2 = producer-box slot [zr+6448] -> [zr+6512]
 mov rax, qword ptr [r12 + 6448]
 mov qword ptr [r12 + 6512], rax
 mov rax, qword ptr [r12 + 6456]
 mov qword ptr [r12 + 6520], rax
  .section .rodata
  .Lrkfn47: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn47]
 lea rsi, [r12 + 6480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6464], rax
 mov qword ptr [r12 + 6472], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n27_α
 xchain0_n24_β:
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n25_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5888], rax
 mov qword ptr [r12 + 5896], rdx
 jmp xchain0_n28_α
 xchain0_n25_β:
 jmp xchain0_n20_α
# IR_LIT_STRING
 xchain0_n26_α:
 mov qword ptr [r12 + 5344], 1
 mov rax, qword ptr [rip + .Lx50_0]
 mov qword ptr [r12 + 5352], rax
 jmp xchain0_n29_α
 xchain0_n26_β:
 jmp proc_d$3_ω
.Lx50_0:
 .quad .Lx50_0_s
.Lx50_0_s:
 .string "*"
 xchain0_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6416] -> [zr+6384]
 mov rax, qword ptr [r12 + 6416]
 mov qword ptr [r12 + 6384], rax
 mov rax, qword ptr [r12 + 6424]
 mov qword ptr [r12 + 6392], rax
# marshal arg1 = producer-box slot [zr+6464] -> [zr+6400]
 mov rax, qword ptr [r12 + 6464]
 mov qword ptr [r12 + 6400], rax
 mov rax, qword ptr [r12 + 6472]
 mov qword ptr [r12 + 6408], rax
  .section .rodata
  .Lrkfn52: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn52]
 lea rsi, [r12 + 6384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6368], rax
 mov qword ptr [r12 + 6376], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n30_α
 xchain0_n27_β:
 jmp xchain0_n7_α
 xchain0_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5872] -> [zr+5840]
 mov rax, qword ptr [r12 + 5872]
 mov qword ptr [r12 + 5840], rax
 mov rax, qword ptr [r12 + 5880]
 mov qword ptr [r12 + 5848], rax
# marshal arg1 = producer-box slot [zr+5888] -> [zr+5856]
 mov rax, qword ptr [r12 + 5888]
 mov qword ptr [r12 + 5856], rax
 mov rax, qword ptr [r12 + 5896]
 mov qword ptr [r12 + 5864], rax
  .section .rodata
  .Lrkfn54: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn54]
 lea rsi, [r12 + 5840]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5824], rax
 mov qword ptr [r12 + 5832], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n31_α
 xchain0_n28_β:
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n29_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5248], rax
 mov qword ptr [r12 + 5256], rdx
 jmp xchain0_n32_α
 xchain0_n29_β:
 jmp proc_d$3_ω
 xchain0_n30_α:
# IR_CUT
 jmp xchain0_n33_α
 xchain0_n30_β:
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n31_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5696], rax
 mov qword ptr [r12 + 5704], rdx
 jmp xchain0_n34_α
 xchain0_n31_β:
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n32_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5264], rax
 mov qword ptr [r12 + 5272], rdx
 jmp xchain0_n35_α
 xchain0_n32_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n33_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6320], rax
 mov qword ptr [r12 + 6328], rdx
 jmp xchain0_n36_α
 xchain0_n33_β:
 jmp xchain0_n49_α
# IR_LIT_STRING
 xchain0_n34_α:
 mov qword ptr [r12 + 5808], 1
 mov rax, qword ptr [rip + .Lx64_0]
 mov qword ptr [r12 + 5816], rax
 jmp xchain0_n37_α
 xchain0_n34_β:
 jmp proc_d$3_ω
.Lx64_0:
 .quad .Lx64_0_s
.Lx64_0_s:
 .string "-"
 xchain0_n35_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5344] -> [zr+5296]
 mov rax, qword ptr [r12 + 5344]
 mov qword ptr [r12 + 5296], rax
 mov rax, qword ptr [r12 + 5352]
 mov qword ptr [r12 + 5304], rax
# marshal arg1 = producer-box slot [zr+5248] -> [zr+5312]
 mov rax, qword ptr [r12 + 5248]
 mov qword ptr [r12 + 5312], rax
 mov rax, qword ptr [r12 + 5256]
 mov qword ptr [r12 + 5320], rax
# marshal arg2 = producer-box slot [zr+5264] -> [zr+5328]
 mov rax, qword ptr [r12 + 5264]
 mov qword ptr [r12 + 5328], rax
 mov rax, qword ptr [r12 + 5272]
 mov qword ptr [r12 + 5336], rax
  .section .rodata
  .Lrkfn66: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn66]
 lea rsi, [r12 + 5296]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5280], rax
 mov qword ptr [r12 + 5288], rdx
 cmp eax, 99
 je xchain0_n39_α
 jmp xchain0_n38_α
 xchain0_n35_β:
 jmp xchain0_n39_α
# IR_VAR_REF
 xchain0_n36_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6336], rax
 mov qword ptr [r12 + 6344], rdx
 jmp xchain0_n40_α
 xchain0_n36_β:
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n37_α:
 lea rdi, [r12 + 6880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5712], rax
 mov qword ptr [r12 + 5720], rdx
 jmp xchain0_n41_α
 xchain0_n37_β:
 jmp proc_d$3_ω
 xchain0_n38_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5232] -> [zr+5200]
 mov rax, qword ptr [r12 + 5232]
 mov qword ptr [r12 + 5200], rax
 mov rax, qword ptr [r12 + 5240]
 mov qword ptr [r12 + 5208], rax
# marshal arg1 = producer-box slot [zr+5280] -> [zr+5216]
 mov rax, qword ptr [r12 + 5280]
 mov qword ptr [r12 + 5216], rax
 mov rax, qword ptr [r12 + 5288]
 mov qword ptr [r12 + 5224], rax
  .section .rodata
  .Lrkfn72: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn72]
 lea rsi, [r12 + 5200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5184], rax
 mov qword ptr [r12 + 5192], rdx
 cmp eax, 99
 je xchain0_n39_α
 jmp xchain0_n42_α
 xchain0_n38_β:
 jmp xchain0_n39_α
 xchain0_n39_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+4464]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 4464], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 4472], rax
  .section .rodata
  .Lrkfn74: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn74]
 lea rsi, [r12 + 4464]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4448], rax
 mov qword ptr [r12 + 4456], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n43_α
 xchain0_n39_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n40_α:
 lea rdi, [r12 + 6880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6352], rax
 mov qword ptr [r12 + 6360], rdx
 jmp xchain0_n44_α
 xchain0_n40_β:
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n41_α:
 lea rdi, [r12 + 6896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5728], rax
 mov qword ptr [r12 + 5736], rdx
 jmp xchain0_n45_α
 xchain0_n41_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n42_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5152], rax
 mov qword ptr [r12 + 5160], rdx
 jmp xchain0_n46_α
 xchain0_n42_β:
 jmp xchain0_n39_α
# IR_VAR_REF
 xchain0_n43_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 jmp xchain0_n47_α
 xchain0_n43_β:
 jmp xchain0_n65_α
 xchain0_n44_α:
  .section .rodata
  .Lcall45_pname: .string "d/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 6320]
 mov rdx, qword ptr [r12 + 6328]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 6336]
 mov rdx, qword ptr [r12 + 6344]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 6352]
 mov rdx, qword ptr [r12 + 6360]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall45_pname]
 mov esi, 3
 lea rdx, [r12 + 6304]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 6240], rax
 mov qword ptr [r12 + 6248], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n48_α
xchain0_n44_β:
 lea rdi, [r12 + 6304]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 6240], rax
 mov qword ptr [r12 + 6248], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n48_α
 xchain0_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5808] -> [zr+5760]
 mov rax, qword ptr [r12 + 5808]
 mov qword ptr [r12 + 5760], rax
 mov rax, qword ptr [r12 + 5816]
 mov qword ptr [r12 + 5768], rax
# marshal arg1 = producer-box slot [zr+5712] -> [zr+5776]
 mov rax, qword ptr [r12 + 5712]
 mov qword ptr [r12 + 5776], rax
 mov rax, qword ptr [r12 + 5720]
 mov qword ptr [r12 + 5784], rax
# marshal arg2 = producer-box slot [zr+5728] -> [zr+5792]
 mov rax, qword ptr [r12 + 5728]
 mov qword ptr [r12 + 5792], rax
 mov rax, qword ptr [r12 + 5736]
 mov qword ptr [r12 + 5800], rax
  .section .rodata
  .Lrkfn85: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn85]
 lea rsi, [r12 + 5760]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5744], rax
 mov qword ptr [r12 + 5752], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n50_α
 xchain0_n45_β:
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n46_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5168], rax
 mov qword ptr [r12 + 5176], rdx
 jmp xchain0_n51_α
 xchain0_n46_β:
 jmp xchain0_n39_α
# IR_LIT_STRING
 xchain0_n47_α:
 mov qword ptr [r12 + 4432], 1
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [r12 + 4440], rax
 jmp xchain0_n52_α
 xchain0_n47_β:
 jmp proc_d$3_ω
.Lx88_0:
 .quad .Lx88_0_s
.Lx88_0_s:
 .string "/"
# IR_VAR_REF
 xchain0_n48_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6192], rax
 mov qword ptr [r12 + 6200], rdx
 jmp xchain0_n53_α
 xchain0_n48_β:
 jmp xchain0_n49_α
 xchain0_n49_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn92: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn92]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp proc_d$3_ω
 xchain0_n49_β:
 jmp proc_d$3_ω
 xchain0_n50_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5696] -> [zr+5664]
 mov rax, qword ptr [r12 + 5696]
 mov qword ptr [r12 + 5664], rax
 mov rax, qword ptr [r12 + 5704]
 mov qword ptr [r12 + 5672], rax
# marshal arg1 = producer-box slot [zr+5744] -> [zr+5680]
 mov rax, qword ptr [r12 + 5744]
 mov qword ptr [r12 + 5680], rax
 mov rax, qword ptr [r12 + 5752]
 mov qword ptr [r12 + 5688], rax
  .section .rodata
  .Lrkfn94: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn94]
 lea rsi, [r12 + 5664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5648], rax
 mov qword ptr [r12 + 5656], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n54_α
 xchain0_n50_β:
 jmp xchain0_n20_α
 xchain0_n51_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5152] -> [zr+5120]
 mov rax, qword ptr [r12 + 5152]
 mov qword ptr [r12 + 5120], rax
 mov rax, qword ptr [r12 + 5160]
 mov qword ptr [r12 + 5128], rax
# marshal arg1 = producer-box slot [zr+5168] -> [zr+5136]
 mov rax, qword ptr [r12 + 5168]
 mov qword ptr [r12 + 5136], rax
 mov rax, qword ptr [r12 + 5176]
 mov qword ptr [r12 + 5144], rax
  .section .rodata
  .Lrkfn96: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn96]
 lea rsi, [r12 + 5120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5104], rax
 mov qword ptr [r12 + 5112], rdx
 cmp eax, 99
 je xchain0_n39_α
 jmp xchain0_n55_α
 xchain0_n51_β:
 jmp xchain0_n39_α
# IR_VAR_REF
 xchain0_n52_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4336], rax
 mov qword ptr [r12 + 4344], rdx
 jmp xchain0_n56_α
 xchain0_n52_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n53_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6208], rax
 mov qword ptr [r12 + 6216], rdx
 jmp xchain0_n57_α
 xchain0_n53_β:
 jmp xchain0_n49_α
 xchain0_n54_α:
# IR_CUT
 jmp xchain0_n58_α
 xchain0_n54_β:
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n55_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4784], rax
 mov qword ptr [r12 + 4792], rdx
 jmp xchain0_n59_α
 xchain0_n55_β:
 jmp xchain0_n39_α
# IR_VAR_REF
 xchain0_n56_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4352], rax
 mov qword ptr [r12 + 4360], rdx
 jmp xchain0_n60_α
 xchain0_n56_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n57_α:
 lea rdi, [r12 + 6896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6224], rax
 mov qword ptr [r12 + 6232], rdx
 jmp xchain0_n61_α
 xchain0_n57_β:
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n58_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5600], rax
 mov qword ptr [r12 + 5608], rdx
 jmp xchain0_n62_α
 xchain0_n58_β:
 jmp xchain0_n49_α
# IR_LIT_STRING
 xchain0_n59_α:
 mov qword ptr [r12 + 5088], 1
 mov rax, qword ptr [rip + .Lx110_0]
 mov qword ptr [r12 + 5096], rax
 jmp xchain0_n63_α
 xchain0_n59_β:
 jmp proc_d$3_ω
.Lx110_0:
 .quad .Lx110_0_s
.Lx110_0_s:
 .string "+"
 xchain0_n60_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4432] -> [zr+4384]
 mov rax, qword ptr [r12 + 4432]
 mov qword ptr [r12 + 4384], rax
 mov rax, qword ptr [r12 + 4440]
 mov qword ptr [r12 + 4392], rax
# marshal arg1 = producer-box slot [zr+4336] -> [zr+4400]
 mov rax, qword ptr [r12 + 4336]
 mov qword ptr [r12 + 4400], rax
 mov rax, qword ptr [r12 + 4344]
 mov qword ptr [r12 + 4408], rax
# marshal arg2 = producer-box slot [zr+4352] -> [zr+4416]
 mov rax, qword ptr [r12 + 4352]
 mov qword ptr [r12 + 4416], rax
 mov rax, qword ptr [r12 + 4360]
 mov qword ptr [r12 + 4424], rax
  .section .rodata
  .Lrkfn112: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn112]
 lea rsi, [r12 + 4384]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4368], rax
 mov qword ptr [r12 + 4376], rdx
 cmp eax, 99
 je xchain0_n65_α
 jmp xchain0_n64_α
 xchain0_n60_β:
 jmp xchain0_n65_α
 xchain0_n61_α:
  .section .rodata
  .Lcall62_pname: .string "d/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 6192]
 mov rdx, qword ptr [r12 + 6200]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 6208]
 mov rdx, qword ptr [r12 + 6216]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 6224]
 mov rdx, qword ptr [r12 + 6232]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall62_pname]
 mov esi, 3
 lea rdx, [r12 + 6176]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 cmp eax, 99
 je xchain0_n44_β
 jmp xchain0_n66_α
xchain0_n61_β:
 lea rdi, [r12 + 6176]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 cmp eax, 99
 je xchain0_n44_β
 jmp xchain0_n66_α
# IR_VAR_REF
 xchain0_n62_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5616], rax
 mov qword ptr [r12 + 5624], rdx
 jmp xchain0_n67_α
 xchain0_n62_β:
 jmp xchain0_n49_α
# IR_LIT_STRING
 xchain0_n63_α:
 mov qword ptr [r12 + 4896], 1
 mov rax, qword ptr [rip + .Lx116_0]
 mov qword ptr [r12 + 4904], rax
 jmp xchain0_n68_α
 xchain0_n63_β:
 jmp proc_d$3_ω
.Lx116_0:
 .quad .Lx116_0_s
.Lx116_0_s:
 .string "*"
 xchain0_n64_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4320] -> [zr+4288]
 mov rax, qword ptr [r12 + 4320]
 mov qword ptr [r12 + 4288], rax
 mov rax, qword ptr [r12 + 4328]
 mov qword ptr [r12 + 4296], rax
# marshal arg1 = producer-box slot [zr+4368] -> [zr+4304]
 mov rax, qword ptr [r12 + 4368]
 mov qword ptr [r12 + 4304], rax
 mov rax, qword ptr [r12 + 4376]
 mov qword ptr [r12 + 4312], rax
  .section .rodata
  .Lrkfn118: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn118]
 lea rsi, [r12 + 4288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4272], rax
 mov qword ptr [r12 + 4280], rdx
 cmp eax, 99
 je xchain0_n65_α
 jmp xchain0_n69_α
 xchain0_n64_β:
 jmp xchain0_n65_α
 xchain0_n65_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+3360]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 3360], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 3368], rax
  .section .rodata
  .Lrkfn120: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn120]
 lea rsi, [r12 + 3360]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3344], rax
 mov qword ptr [r12 + 3352], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n70_α
 xchain0_n65_β:
 jmp proc_d$3_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n66_α:
 lea rax, [rip + xchain0_n61_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_d$3_γ
 xchain0_n66_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n67_α:
 lea rdi, [r12 + 6880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5632], rax
 mov qword ptr [r12 + 5640], rdx
 jmp xchain0_n72_α
 xchain0_n67_β:
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n68_α:
 lea rdi, [r12 + 6880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4800], rax
 mov qword ptr [r12 + 4808], rdx
 jmp xchain0_n73_α
 xchain0_n68_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n69_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4240], rax
 mov qword ptr [r12 + 4248], rdx
 jmp xchain0_n74_α
 xchain0_n69_β:
 jmp xchain0_n65_α
# IR_VAR_REF
 xchain0_n70_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3216], rax
 mov qword ptr [r12 + 3224], rdx
 jmp xchain0_n75_α
 xchain0_n70_β:
 jmp xchain0_n92_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n71_α:
 jmp qword ptr [r12 + 80]
 xchain0_n71_β:
 jmp proc_d$3_ω
 xchain0_n72_α:
  .section .rodata
  .Lcall73_pname: .string "d/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5600]
 mov rdx, qword ptr [r12 + 5608]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 5616]
 mov rdx, qword ptr [r12 + 5624]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 5632]
 mov rdx, qword ptr [r12 + 5640]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall73_pname]
 mov esi, 3
 lea rdx, [r12 + 5584]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 5520], rax
 mov qword ptr [r12 + 5528], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n76_α
xchain0_n72_β:
 lea rdi, [r12 + 5584]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 5520], rax
 mov qword ptr [r12 + 5528], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n76_α
# IR_VAR_REF
 xchain0_n73_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4816], rax
 mov qword ptr [r12 + 4824], rdx
 jmp xchain0_n77_α
 xchain0_n73_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n74_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4256], rax
 mov qword ptr [r12 + 4264], rdx
 jmp xchain0_n78_α
 xchain0_n74_β:
 jmp xchain0_n65_α
# IR_LIT_STRING
 xchain0_n75_α:
 mov qword ptr [r12 + 3328], 1
 mov rax, qword ptr [rip + .Lx138_0]
 mov qword ptr [r12 + 3336], rax
 jmp xchain0_n79_α
 xchain0_n75_β:
 jmp proc_d$3_ω
.Lx138_0:
 .quad .Lx138_0_s
.Lx138_0_s:
 .string "^"
# IR_VAR_REF
 xchain0_n76_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5472], rax
 mov qword ptr [r12 + 5480], rdx
 jmp xchain0_n80_α
 xchain0_n76_β:
 jmp xchain0_n49_α
 xchain0_n77_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4896] -> [zr+4848]
 mov rax, qword ptr [r12 + 4896]
 mov qword ptr [r12 + 4848], rax
 mov rax, qword ptr [r12 + 4904]
 mov qword ptr [r12 + 4856], rax
# marshal arg1 = producer-box slot [zr+4800] -> [zr+4864]
 mov rax, qword ptr [r12 + 4800]
 mov qword ptr [r12 + 4864], rax
 mov rax, qword ptr [r12 + 4808]
 mov qword ptr [r12 + 4872], rax
# marshal arg2 = producer-box slot [zr+4816] -> [zr+4880]
 mov rax, qword ptr [r12 + 4816]
 mov qword ptr [r12 + 4880], rax
 mov rax, qword ptr [r12 + 4824]
 mov qword ptr [r12 + 4888], rax
  .section .rodata
  .Lrkfn142: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn142]
 lea rsi, [r12 + 4848]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4832], rax
 mov qword ptr [r12 + 4840], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n81_α
 xchain0_n77_β:
 jmp proc_d$3_ω
 xchain0_n78_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4240] -> [zr+4208]
 mov rax, qword ptr [r12 + 4240]
 mov qword ptr [r12 + 4208], rax
 mov rax, qword ptr [r12 + 4248]
 mov qword ptr [r12 + 4216], rax
# marshal arg1 = producer-box slot [zr+4256] -> [zr+4224]
 mov rax, qword ptr [r12 + 4256]
 mov qword ptr [r12 + 4224], rax
 mov rax, qword ptr [r12 + 4264]
 mov qword ptr [r12 + 4232], rax
  .section .rodata
  .Lrkfn144: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn144]
 lea rsi, [r12 + 4208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4192], rax
 mov qword ptr [r12 + 4200], rdx
 cmp eax, 99
 je xchain0_n65_α
 jmp xchain0_n82_α
 xchain0_n78_β:
 jmp xchain0_n65_α
# IR_VAR_REF
 xchain0_n79_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3232], rax
 mov qword ptr [r12 + 3240], rdx
 jmp xchain0_n83_α
 xchain0_n79_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n80_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5488], rax
 mov qword ptr [r12 + 5496], rdx
 jmp xchain0_n84_α
 xchain0_n80_β:
 jmp xchain0_n49_α
# IR_LIT_STRING
 xchain0_n81_α:
 mov qword ptr [r12 + 5008], 1
 mov rax, qword ptr [rip + .Lx149_0]
 mov qword ptr [r12 + 5016], rax
 jmp xchain0_n85_α
 xchain0_n81_β:
 jmp proc_d$3_ω
.Lx149_0:
 .quad .Lx149_0_s
.Lx149_0_s:
 .string "*"
# IR_VAR_REF
 xchain0_n82_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3680], rax
 mov qword ptr [r12 + 3688], rdx
 jmp xchain0_n86_α
 xchain0_n82_β:
 jmp xchain0_n65_α
# IR_VAR_REF
 xchain0_n83_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3248], rax
 mov qword ptr [r12 + 3256], rdx
 jmp xchain0_n87_α
 xchain0_n83_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n84_α:
 lea rdi, [r12 + 6896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5504], rax
 mov qword ptr [r12 + 5512], rdx
 jmp xchain0_n88_α
 xchain0_n84_β:
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n85_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4912], rax
 mov qword ptr [r12 + 4920], rdx
 jmp xchain0_n89_α
 xchain0_n85_β:
 jmp proc_d$3_ω
# IR_LIT_STRING
 xchain0_n86_α:
 mov qword ptr [r12 + 4176], 1
 mov rax, qword ptr [rip + .Lx158_0]
 mov qword ptr [r12 + 4184], rax
 jmp xchain0_n90_α
 xchain0_n86_β:
 jmp proc_d$3_ω
.Lx158_0:
 .quad .Lx158_0_s
.Lx158_0_s:
 .string "/"
 xchain0_n87_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3328] -> [zr+3280]
 mov rax, qword ptr [r12 + 3328]
 mov qword ptr [r12 + 3280], rax
 mov rax, qword ptr [r12 + 3336]
 mov qword ptr [r12 + 3288], rax
# marshal arg1 = producer-box slot [zr+3232] -> [zr+3296]
 mov rax, qword ptr [r12 + 3232]
 mov qword ptr [r12 + 3296], rax
 mov rax, qword ptr [r12 + 3240]
 mov qword ptr [r12 + 3304], rax
# marshal arg2 = producer-box slot [zr+3248] -> [zr+3312]
 mov rax, qword ptr [r12 + 3248]
 mov qword ptr [r12 + 3312], rax
 mov rax, qword ptr [r12 + 3256]
 mov qword ptr [r12 + 3320], rax
  .section .rodata
  .Lrkfn160: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn160]
 lea rsi, [r12 + 3280]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3264], rax
 mov qword ptr [r12 + 3272], rdx
 cmp eax, 99
 je xchain0_n92_α
 jmp xchain0_n91_α
 xchain0_n87_β:
 jmp xchain0_n92_α
 xchain0_n88_α:
  .section .rodata
  .Lcall89_pname: .string "d/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5472]
 mov rdx, qword ptr [r12 + 5480]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 5488]
 mov rdx, qword ptr [r12 + 5496]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 5504]
 mov rdx, qword ptr [r12 + 5512]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall89_pname]
 mov esi, 3
 lea rdx, [r12 + 5456]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 5392], rax
 mov qword ptr [r12 + 5400], rdx
 cmp eax, 99
 je xchain0_n72_β
 jmp xchain0_n93_α
xchain0_n88_β:
 lea rdi, [r12 + 5456]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 5392], rax
 mov qword ptr [r12 + 5400], rdx
 cmp eax, 99
 je xchain0_n72_β
 jmp xchain0_n93_α
# IR_VAR_REF
 xchain0_n89_α:
 lea rdi, [r12 + 6896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4928], rax
 mov qword ptr [r12 + 4936], rdx
 jmp xchain0_n94_α
 xchain0_n89_β:
 jmp proc_d$3_ω
# IR_LIT_STRING
 xchain0_n90_α:
 mov qword ptr [r12 + 3984], 1
 mov rax, qword ptr [rip + .Lx164_0]
 mov qword ptr [r12 + 3992], rax
 jmp xchain0_n95_α
 xchain0_n90_β:
 jmp proc_d$3_ω
.Lx164_0:
 .quad .Lx164_0_s
.Lx164_0_s:
 .string "-"
 xchain0_n91_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3216] -> [zr+3184]
 mov rax, qword ptr [r12 + 3216]
 mov qword ptr [r12 + 3184], rax
 mov rax, qword ptr [r12 + 3224]
 mov qword ptr [r12 + 3192], rax
# marshal arg1 = producer-box slot [zr+3264] -> [zr+3200]
 mov rax, qword ptr [r12 + 3264]
 mov qword ptr [r12 + 3200], rax
 mov rax, qword ptr [r12 + 3272]
 mov qword ptr [r12 + 3208], rax
  .section .rodata
  .Lrkfn166: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn166]
 lea rsi, [r12 + 3184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3168], rax
 mov qword ptr [r12 + 3176], rdx
 cmp eax, 99
 je xchain0_n92_α
 jmp xchain0_n96_α
 xchain0_n91_β:
 jmp xchain0_n92_α
 xchain0_n92_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+2384]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 2384], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 2392], rax
  .section .rodata
  .Lrkfn168: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn168]
 lea rsi, [r12 + 2384]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2368], rax
 mov qword ptr [r12 + 2376], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n97_α
 xchain0_n92_β:
 jmp proc_d$3_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n93_α:
 lea rax, [rip + xchain0_n88_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_d$3_γ
 xchain0_n93_β:
 jmp proc_d$3_ω
 xchain0_n94_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5008] -> [zr+4960]
 mov rax, qword ptr [r12 + 5008]
 mov qword ptr [r12 + 4960], rax
 mov rax, qword ptr [r12 + 5016]
 mov qword ptr [r12 + 4968], rax
# marshal arg1 = producer-box slot [zr+4912] -> [zr+4976]
 mov rax, qword ptr [r12 + 4912]
 mov qword ptr [r12 + 4976], rax
 mov rax, qword ptr [r12 + 4920]
 mov qword ptr [r12 + 4984], rax
# marshal arg2 = producer-box slot [zr+4928] -> [zr+4992]
 mov rax, qword ptr [r12 + 4928]
 mov qword ptr [r12 + 4992], rax
 mov rax, qword ptr [r12 + 4936]
 mov qword ptr [r12 + 5000], rax
  .section .rodata
  .Lrkfn172: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn172]
 lea rsi, [r12 + 4960]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4944], rax
 mov qword ptr [r12 + 4952], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n98_α
 xchain0_n94_β:
 jmp proc_d$3_ω
# IR_LIT_STRING
 xchain0_n95_α:
 mov qword ptr [r12 + 3792], 1
 mov rax, qword ptr [rip + .Lx173_0]
 mov qword ptr [r12 + 3800], rax
 jmp xchain0_n99_α
 xchain0_n95_β:
 jmp proc_d$3_ω
.Lx173_0:
 .quad .Lx173_0_s
.Lx173_0_s:
 .string "*"
# IR_VAR_REF
 xchain0_n96_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
 jmp xchain0_n100_α
 xchain0_n96_β:
 jmp xchain0_n92_α
# IR_VAR_REF
 xchain0_n97_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 jmp xchain0_n101_α
 xchain0_n97_β:
 jmp xchain0_n114_α
 xchain0_n98_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5088] -> [zr+5040]
 mov rax, qword ptr [r12 + 5088]
 mov qword ptr [r12 + 5040], rax
 mov rax, qword ptr [r12 + 5096]
 mov qword ptr [r12 + 5048], rax
# marshal arg1 = producer-box slot [zr+4832] -> [zr+5056]
 mov rax, qword ptr [r12 + 4832]
 mov qword ptr [r12 + 5056], rax
 mov rax, qword ptr [r12 + 4840]
 mov qword ptr [r12 + 5064], rax
# marshal arg2 = producer-box slot [zr+4944] -> [zr+5072]
 mov rax, qword ptr [r12 + 4944]
 mov qword ptr [r12 + 5072], rax
 mov rax, qword ptr [r12 + 4952]
 mov qword ptr [r12 + 5080], rax
  .section .rodata
  .Lrkfn179: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn179]
 lea rsi, [r12 + 5040]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5024], rax
 mov qword ptr [r12 + 5032], rdx
 cmp eax, 99
 je xchain0_n39_α
 jmp xchain0_n102_α
 xchain0_n98_β:
 jmp xchain0_n39_α
# IR_VAR_REF
 xchain0_n99_α:
 lea rdi, [r12 + 6880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3696], rax
 mov qword ptr [r12 + 3704], rdx
 jmp xchain0_n103_α
 xchain0_n99_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n100_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3152], rax
 mov qword ptr [r12 + 3160], rdx
 jmp xchain0_n104_α
 xchain0_n100_β:
 jmp xchain0_n92_α
# IR_LIT_STRING
 xchain0_n101_α:
 mov qword ptr [r12 + 2352], 1
 mov rax, qword ptr [rip + .Lx184_0]
 mov qword ptr [r12 + 2360], rax
 jmp xchain0_n105_α
 xchain0_n101_β:
 jmp proc_d$3_ω
.Lx184_0:
 .quad .Lx184_0_s
.Lx184_0_s:
 .string "-"
 xchain0_n102_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4784] -> [zr+4752]
 mov rax, qword ptr [r12 + 4784]
 mov qword ptr [r12 + 4752], rax
 mov rax, qword ptr [r12 + 4792]
 mov qword ptr [r12 + 4760], rax
# marshal arg1 = producer-box slot [zr+5024] -> [zr+4768]
 mov rax, qword ptr [r12 + 5024]
 mov qword ptr [r12 + 4768], rax
 mov rax, qword ptr [r12 + 5032]
 mov qword ptr [r12 + 4776], rax
  .section .rodata
  .Lrkfn186: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn186]
 lea rsi, [r12 + 4752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4736], rax
 mov qword ptr [r12 + 4744], rdx
 cmp eax, 99
 je xchain0_n39_α
 jmp xchain0_n106_α
 xchain0_n102_β:
 jmp xchain0_n39_α
# IR_VAR_REF
 xchain0_n103_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3712], rax
 mov qword ptr [r12 + 3720], rdx
 jmp xchain0_n107_α
 xchain0_n103_β:
 jmp proc_d$3_ω
 xchain0_n104_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3136] -> [zr+3104]
 mov rax, qword ptr [r12 + 3136]
 mov qword ptr [r12 + 3104], rax
 mov rax, qword ptr [r12 + 3144]
 mov qword ptr [r12 + 3112], rax
# marshal arg1 = producer-box slot [zr+3152] -> [zr+3120]
 mov rax, qword ptr [r12 + 3152]
 mov qword ptr [r12 + 3120], rax
 mov rax, qword ptr [r12 + 3160]
 mov qword ptr [r12 + 3128], rax
  .section .rodata
  .Lrkfn190: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn190]
 lea rsi, [r12 + 3104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3088], rax
 mov qword ptr [r12 + 3096], rdx
 cmp eax, 99
 je xchain0_n92_α
 jmp xchain0_n108_α
 xchain0_n104_β:
 jmp xchain0_n92_α
# IR_VAR_REF
 xchain0_n105_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain0_n109_α
 xchain0_n105_β:
 jmp proc_d$3_ω
 xchain0_n106_α:
# IR_CUT
 jmp xchain0_n110_α
 xchain0_n106_β:
 jmp xchain0_n39_α
 xchain0_n107_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3792] -> [zr+3744]
 mov rax, qword ptr [r12 + 3792]
 mov qword ptr [r12 + 3744], rax
 mov rax, qword ptr [r12 + 3800]
 mov qword ptr [r12 + 3752], rax
# marshal arg1 = producer-box slot [zr+3696] -> [zr+3760]
 mov rax, qword ptr [r12 + 3696]
 mov qword ptr [r12 + 3760], rax
 mov rax, qword ptr [r12 + 3704]
 mov qword ptr [r12 + 3768], rax
# marshal arg2 = producer-box slot [zr+3712] -> [zr+3776]
 mov rax, qword ptr [r12 + 3712]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 3720]
 mov qword ptr [r12 + 3784], rax
  .section .rodata
  .Lrkfn195: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn195]
 lea rsi, [r12 + 3744]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3728], rax
 mov qword ptr [r12 + 3736], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n111_α
 xchain0_n107_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n108_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 jmp xchain0_n112_α
 xchain0_n108_β:
 jmp xchain0_n92_α
 xchain0_n109_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2352] -> [zr+2320]
 mov rax, qword ptr [r12 + 2352]
 mov qword ptr [r12 + 2320], rax
 mov rax, qword ptr [r12 + 2360]
 mov qword ptr [r12 + 2328], rax
# marshal arg1 = producer-box slot [zr+2288] -> [zr+2336]
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 2344], rax
  .section .rodata
  .Lrkfn199: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn199]
 lea rsi, [r12 + 2320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 cmp eax, 99
 je xchain0_n114_α
 jmp xchain0_n113_α
 xchain0_n109_β:
 jmp xchain0_n114_α
# IR_VAR_REF
 xchain0_n110_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4688], rax
 mov qword ptr [r12 + 4696], rdx
 jmp xchain0_n115_α
 xchain0_n110_β:
 jmp xchain0_n49_α
# IR_LIT_STRING
 xchain0_n111_α:
 mov qword ptr [r12 + 3904], 1
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [r12 + 3912], rax
 jmp xchain0_n116_α
 xchain0_n111_β:
 jmp proc_d$3_ω
.Lx202_0:
 .quad .Lx202_0_s
.Lx202_0_s:
 .string "*"
# IR_LIT_STRING
 xchain0_n112_α:
 mov qword ptr [r12 + 3072], 1
 mov rax, qword ptr [rip + .Lx203_0]
 mov qword ptr [r12 + 3080], rax
 jmp xchain0_n117_α
 xchain0_n112_β:
 jmp proc_d$3_ω
.Lx203_0:
 .quad .Lx203_0_s
.Lx203_0_s:
 .string "*"
 xchain0_n113_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2272] -> [zr+2240]
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 2240], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2248], rax
# marshal arg1 = producer-box slot [zr+2304] -> [zr+2256]
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 2256], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2264], rax
  .section .rodata
  .Lrkfn205: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn205]
 lea rsi, [r12 + 2240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 cmp eax, 99
 je xchain0_n114_α
 jmp xchain0_n118_α
 xchain0_n113_β:
 jmp xchain0_n114_α
 xchain0_n114_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1856]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1864], rax
  .section .rodata
  .Lrkfn207: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn207]
 lea rsi, [r12 + 1856]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n119_α
 xchain0_n114_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n115_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4704], rax
 mov qword ptr [r12 + 4712], rdx
 jmp xchain0_n120_α
 xchain0_n115_β:
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n116_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3808], rax
 mov qword ptr [r12 + 3816], rdx
 jmp xchain0_n121_α
 xchain0_n116_β:
 jmp proc_d$3_ω
# IR_LIT_STRING
 xchain0_n117_α:
 mov qword ptr [r12 + 2880], 1
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [r12 + 2888], rax
 jmp xchain0_n122_α
 xchain0_n117_β:
 jmp proc_d$3_ω
.Lx212_0:
 .quad .Lx212_0_s
.Lx212_0_s:
 .string "*"
# IR_VAR_REF
 xchain0_n118_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain0_n123_α
 xchain0_n118_β:
 jmp xchain0_n114_α
# IR_VAR_REF
 xchain0_n119_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain0_n124_α
 xchain0_n119_β:
 jmp xchain0_n140_α
# IR_VAR_REF
 xchain0_n120_α:
 lea rdi, [r12 + 6880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4720], rax
 mov qword ptr [r12 + 4728], rdx
 jmp xchain0_n125_α
 xchain0_n120_β:
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n121_α:
 lea rdi, [r12 + 6896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3824], rax
 mov qword ptr [r12 + 3832], rdx
 jmp xchain0_n126_α
 xchain0_n121_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n122_α:
 lea rdi, [r12 + 6880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2784], rax
 mov qword ptr [r12 + 2792], rdx
 jmp xchain0_n127_α
 xchain0_n122_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n123_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 jmp xchain0_n128_α
 xchain0_n123_β:
 jmp xchain0_n114_α
# IR_LIT_STRING
 xchain0_n124_α:
 mov qword ptr [r12 + 1824], 1
 mov rax, qword ptr [rip + .Lx225_0]
 mov qword ptr [r12 + 1832], rax
 jmp xchain0_n129_α
 xchain0_n124_β:
 jmp proc_d$3_ω
.Lx225_0:
 .quad .Lx225_0_s
.Lx225_0_s:
 .string "exp"
 xchain0_n125_α:
  .section .rodata
  .Lcall126_pname: .string "d/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4688]
 mov rdx, qword ptr [r12 + 4696]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 4704]
 mov rdx, qword ptr [r12 + 4712]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 4720]
 mov rdx, qword ptr [r12 + 4728]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall126_pname]
 mov esi, 3
 lea rdx, [r12 + 4672]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 4608], rax
 mov qword ptr [r12 + 4616], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n130_α
xchain0_n125_β:
 lea rdi, [r12 + 4672]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 4608], rax
 mov qword ptr [r12 + 4616], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n130_α
 xchain0_n126_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3904] -> [zr+3856]
 mov rax, qword ptr [r12 + 3904]
 mov qword ptr [r12 + 3856], rax
 mov rax, qword ptr [r12 + 3912]
 mov qword ptr [r12 + 3864], rax
# marshal arg1 = producer-box slot [zr+3808] -> [zr+3872]
 mov rax, qword ptr [r12 + 3808]
 mov qword ptr [r12 + 3872], rax
 mov rax, qword ptr [r12 + 3816]
 mov qword ptr [r12 + 3880], rax
# marshal arg2 = producer-box slot [zr+3824] -> [zr+3888]
 mov rax, qword ptr [r12 + 3824]
 mov qword ptr [r12 + 3888], rax
 mov rax, qword ptr [r12 + 3832]
 mov qword ptr [r12 + 3896], rax
  .section .rodata
  .Lrkfn228: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn228]
 lea rsi, [r12 + 3856]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3840], rax
 mov qword ptr [r12 + 3848], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n131_α
 xchain0_n126_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n127_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2800], rax
 mov qword ptr [r12 + 2808], rdx
 jmp xchain0_n132_α
 xchain0_n127_β:
 jmp proc_d$3_ω
 xchain0_n128_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2192] -> [zr+2160]
 mov rax, qword ptr [r12 + 2192]
 mov qword ptr [r12 + 2160], rax
 mov rax, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 2168], rax
# marshal arg1 = producer-box slot [zr+2208] -> [zr+2176]
 mov rax, qword ptr [r12 + 2208]
 mov qword ptr [r12 + 2176], rax
 mov rax, qword ptr [r12 + 2216]
 mov qword ptr [r12 + 2184], rax
  .section .rodata
  .Lrkfn232: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn232]
 lea rsi, [r12 + 2160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 cmp eax, 99
 je xchain0_n114_α
 jmp xchain0_n133_α
 xchain0_n128_β:
 jmp xchain0_n114_α
# IR_VAR_REF
 xchain0_n129_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain0_n134_α
 xchain0_n129_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n130_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4560], rax
 mov qword ptr [r12 + 4568], rdx
 jmp xchain0_n135_α
 xchain0_n130_β:
 jmp xchain0_n49_α
 xchain0_n131_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3984] -> [zr+3936]
 mov rax, qword ptr [r12 + 3984]
 mov qword ptr [r12 + 3936], rax
 mov rax, qword ptr [r12 + 3992]
 mov qword ptr [r12 + 3944], rax
# marshal arg1 = producer-box slot [zr+3728] -> [zr+3952]
 mov rax, qword ptr [r12 + 3728]
 mov qword ptr [r12 + 3952], rax
 mov rax, qword ptr [r12 + 3736]
 mov qword ptr [r12 + 3960], rax
# marshal arg2 = producer-box slot [zr+3840] -> [zr+3968]
 mov rax, qword ptr [r12 + 3840]
 mov qword ptr [r12 + 3968], rax
 mov rax, qword ptr [r12 + 3848]
 mov qword ptr [r12 + 3976], rax
  .section .rodata
  .Lrkfn238: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn238]
 lea rsi, [r12 + 3936]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3920], rax
 mov qword ptr [r12 + 3928], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n136_α
 xchain0_n131_β:
 jmp proc_d$3_ω
 xchain0_n132_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2880] -> [zr+2832]
 mov rax, qword ptr [r12 + 2880]
 mov qword ptr [r12 + 2832], rax
 mov rax, qword ptr [r12 + 2888]
 mov qword ptr [r12 + 2840], rax
# marshal arg1 = producer-box slot [zr+2784] -> [zr+2848]
 mov rax, qword ptr [r12 + 2784]
 mov qword ptr [r12 + 2848], rax
 mov rax, qword ptr [r12 + 2792]
 mov qword ptr [r12 + 2856], rax
# marshal arg2 = producer-box slot [zr+2800] -> [zr+2864]
 mov rax, qword ptr [r12 + 2800]
 mov qword ptr [r12 + 2864], rax
 mov rax, qword ptr [r12 + 2808]
 mov qword ptr [r12 + 2872], rax
  .section .rodata
  .Lrkfn240: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn240]
 lea rsi, [r12 + 2832]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n137_α
 xchain0_n132_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n133_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 jmp xchain0_n138_α
 xchain0_n133_β:
 jmp xchain0_n114_α
 xchain0_n134_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1824] -> [zr+1792]
 mov rax, qword ptr [r12 + 1824]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 1800], rax
# marshal arg1 = producer-box slot [zr+1760] -> [zr+1808]
 mov rax, qword ptr [r12 + 1760]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 1768]
 mov qword ptr [r12 + 1816], rax
  .section .rodata
  .Lrkfn244: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn244]
 lea rsi, [r12 + 1792]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 cmp eax, 99
 je xchain0_n140_α
 jmp xchain0_n139_α
 xchain0_n134_β:
 jmp xchain0_n140_α
# IR_VAR_REF
 xchain0_n135_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4576], rax
 mov qword ptr [r12 + 4584], rdx
 jmp xchain0_n141_α
 xchain0_n135_β:
 jmp xchain0_n49_α
# IR_LIT_STRING
 xchain0_n136_α:
 mov qword ptr [r12 + 4096], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [r12 + 4104], rax
 jmp xchain0_n142_α
 xchain0_n136_β:
 jmp proc_d$3_ω
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "^"
# IR_LIT_STRING
 xchain0_n137_α:
 mov qword ptr [r12 + 2992], 1
 mov rax, qword ptr [rip + .Lx248_0]
 mov qword ptr [r12 + 3000], rax
 jmp xchain0_n143_α
 xchain0_n137_β:
 jmp proc_d$3_ω
.Lx248_0:
 .quad .Lx248_0_s
.Lx248_0_s:
 .string "^"
# IR_LIT_STRING
 xchain0_n138_α:
 mov qword ptr [r12 + 2128], 1
 mov rax, qword ptr [rip + .Lx249_0]
 mov qword ptr [r12 + 2136], rax
 jmp xchain0_n144_α
 xchain0_n138_β:
 jmp proc_d$3_ω
.Lx249_0:
 .quad .Lx249_0_s
.Lx249_0_s:
 .string "-"
 xchain0_n139_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1744] -> [zr+1712]
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 1720], rax
# marshal arg1 = producer-box slot [zr+1776] -> [zr+1728]
 mov rax, qword ptr [r12 + 1776]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 1784]
 mov qword ptr [r12 + 1736], rax
  .section .rodata
  .Lrkfn251: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn251]
 lea rsi, [r12 + 1712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 cmp eax, 99
 je xchain0_n140_α
 jmp xchain0_n145_α
 xchain0_n139_β:
 jmp xchain0_n140_α
 xchain0_n140_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1232]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1240], rax
  .section .rodata
  .Lrkfn253: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn253]
 lea rsi, [r12 + 1232]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n146_α
 xchain0_n140_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n141_α:
 lea rdi, [r12 + 6896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4592], rax
 mov qword ptr [r12 + 4600], rdx
 jmp xchain0_n147_α
 xchain0_n141_β:
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n142_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4000], rax
 mov qword ptr [r12 + 4008], rdx
 jmp xchain0_n148_α
 xchain0_n142_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n143_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2896], rax
 mov qword ptr [r12 + 2904], rdx
 jmp xchain0_n149_α
 xchain0_n143_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n144_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain0_n150_α
 xchain0_n144_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n145_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 jmp xchain0_n151_α
 xchain0_n145_β:
 jmp xchain0_n140_α
# IR_VAR_REF
 xchain0_n146_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain0_n152_α
 xchain0_n146_β:
 jmp xchain0_n169_α
 xchain0_n147_α:
  .section .rodata
  .Lcall148_pname: .string "d/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4560]
 mov rdx, qword ptr [r12 + 4568]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 4576]
 mov rdx, qword ptr [r12 + 4584]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 4592]
 mov rdx, qword ptr [r12 + 4600]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall148_pname]
 mov esi, 3
 lea rdx, [r12 + 4544]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 4480], rax
 mov qword ptr [r12 + 4488], rdx
 cmp eax, 99
 je xchain0_n125_β
 jmp xchain0_n153_α
xchain0_n147_β:
 lea rdi, [r12 + 4544]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 4480], rax
 mov qword ptr [r12 + 4488], rdx
 cmp eax, 99
 je xchain0_n125_β
 jmp xchain0_n153_α
# IR_LIT_INTEGER
 xchain0_n148_α:
 mov qword ptr [r12 + 4016], 6
 mov rax, qword ptr [rip + .Lx267_0]
 mov qword ptr [r12 + 4024], rax
 jmp xchain0_n154_α
 xchain0_n148_β:
 jmp proc_d$3_ω
.Lx267_0:
 .quad 2
# IR_VAR_REF
 xchain0_n149_α:
 lea rdi, [r12 + 6896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 jmp xchain0_n155_α
 xchain0_n149_β:
 jmp proc_d$3_ω
 xchain0_n150_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2128] -> [zr+2096]
 mov rax, qword ptr [r12 + 2128]
 mov qword ptr [r12 + 2096], rax
 mov rax, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 2104], rax
# marshal arg1 = producer-box slot [zr+2064] -> [zr+2112]
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 2112], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 2120], rax
  .section .rodata
  .Lrkfn271: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn271]
 lea rsi, [r12 + 2096]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 cmp eax, 99
 je xchain0_n114_α
 jmp xchain0_n156_α
 xchain0_n150_β:
 jmp xchain0_n114_α
# IR_VAR_REF
 xchain0_n151_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain0_n157_α
 xchain0_n151_β:
 jmp xchain0_n140_α
# IR_LIT_STRING
 xchain0_n152_α:
 mov qword ptr [r12 + 1200], 1
 mov rax, qword ptr [rip + .Lx274_0]
 mov qword ptr [r12 + 1208], rax
 jmp xchain0_n158_α
 xchain0_n152_β:
 jmp proc_d$3_ω
.Lx274_0:
 .quad .Lx274_0_s
.Lx274_0_s:
 .string "log"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n153_α:
 lea rax, [rip + xchain0_n147_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_d$3_γ
 xchain0_n153_β:
 jmp proc_d$3_ω
 xchain0_n154_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4096] -> [zr+4048]
 mov rax, qword ptr [r12 + 4096]
 mov qword ptr [r12 + 4048], rax
 mov rax, qword ptr [r12 + 4104]
 mov qword ptr [r12 + 4056], rax
# marshal arg1 = producer-box slot [zr+4000] -> [zr+4064]
 mov rax, qword ptr [r12 + 4000]
 mov qword ptr [r12 + 4064], rax
 mov rax, qword ptr [r12 + 4008]
 mov qword ptr [r12 + 4072], rax
# marshal arg2 = producer-box slot [zr+4016] -> [zr+4080]
 mov rax, qword ptr [r12 + 4016]
 mov qword ptr [r12 + 4080], rax
 mov rax, qword ptr [r12 + 4024]
 mov qword ptr [r12 + 4088], rax
  .section .rodata
  .Lrkfn278: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn278]
 lea rsi, [r12 + 4048]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4032], rax
 mov qword ptr [r12 + 4040], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n159_α
 xchain0_n154_β:
 jmp proc_d$3_ω
 xchain0_n155_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2992] -> [zr+2944]
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 2944], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 2952], rax
# marshal arg1 = producer-box slot [zr+2896] -> [zr+2960]
 mov rax, qword ptr [r12 + 2896]
 mov qword ptr [r12 + 2960], rax
 mov rax, qword ptr [r12 + 2904]
 mov qword ptr [r12 + 2968], rax
# marshal arg2 = producer-box slot [zr+2912] -> [zr+2976]
 mov rax, qword ptr [r12 + 2912]
 mov qword ptr [r12 + 2976], rax
 mov rax, qword ptr [r12 + 2920]
 mov qword ptr [r12 + 2984], rax
  .section .rodata
  .Lrkfn280: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn280]
 lea rsi, [r12 + 2944]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2928], rax
 mov qword ptr [r12 + 2936], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n160_α
 xchain0_n155_β:
 jmp proc_d$3_ω
 xchain0_n156_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2048] -> [zr+2016]
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 2024], rax
# marshal arg1 = producer-box slot [zr+2080] -> [zr+2032]
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2040], rax
  .section .rodata
  .Lrkfn282: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn282]
 lea rsi, [r12 + 2016]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 cmp eax, 99
 je xchain0_n114_α
 jmp xchain0_n161_α
 xchain0_n156_β:
 jmp xchain0_n114_α
 xchain0_n157_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1632]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1640], rax
# marshal arg1 = producer-box slot [zr+1680] -> [zr+1648]
 mov rax, qword ptr [r12 + 1680]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1688]
 mov qword ptr [r12 + 1656], rax
  .section .rodata
  .Lrkfn284: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn284]
 lea rsi, [r12 + 1632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 cmp eax, 99
 je xchain0_n140_α
 jmp xchain0_n162_α
 xchain0_n157_β:
 jmp xchain0_n140_α
# IR_VAR_REF
 xchain0_n158_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain0_n163_α
 xchain0_n158_β:
 jmp proc_d$3_ω
 xchain0_n159_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4176] -> [zr+4128]
 mov rax, qword ptr [r12 + 4176]
 mov qword ptr [r12 + 4128], rax
 mov rax, qword ptr [r12 + 4184]
 mov qword ptr [r12 + 4136], rax
# marshal arg1 = producer-box slot [zr+3920] -> [zr+4144]
 mov rax, qword ptr [r12 + 3920]
 mov qword ptr [r12 + 4144], rax
 mov rax, qword ptr [r12 + 3928]
 mov qword ptr [r12 + 4152], rax
# marshal arg2 = producer-box slot [zr+4032] -> [zr+4160]
 mov rax, qword ptr [r12 + 4032]
 mov qword ptr [r12 + 4160], rax
 mov rax, qword ptr [r12 + 4040]
 mov qword ptr [r12 + 4168], rax
  .section .rodata
  .Lrkfn288: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn288]
 lea rsi, [r12 + 4128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4112], rax
 mov qword ptr [r12 + 4120], rdx
 cmp eax, 99
 je xchain0_n65_α
 jmp xchain0_n164_α
 xchain0_n159_β:
 jmp xchain0_n65_α
 xchain0_n160_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3072] -> [zr+3024]
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 3024], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 3032], rax
# marshal arg1 = producer-box slot [zr+2816] -> [zr+3040]
 mov rax, qword ptr [r12 + 2816]
 mov qword ptr [r12 + 3040], rax
 mov rax, qword ptr [r12 + 2824]
 mov qword ptr [r12 + 3048], rax
# marshal arg2 = producer-box slot [zr+2928] -> [zr+3056]
 mov rax, qword ptr [r12 + 2928]
 mov qword ptr [r12 + 3056], rax
 mov rax, qword ptr [r12 + 2936]
 mov qword ptr [r12 + 3064], rax
  .section .rodata
  .Lrkfn290: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn290]
 lea rsi, [r12 + 3024]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 cmp eax, 99
 je xchain0_n92_α
 jmp xchain0_n165_α
 xchain0_n160_β:
 jmp xchain0_n92_α
 xchain0_n161_α:
# IR_CUT
 jmp xchain0_n166_α
 xchain0_n161_β:
 jmp xchain0_n114_α
# IR_VAR_REF
 xchain0_n162_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain0_n167_α
 xchain0_n162_β:
 jmp xchain0_n140_α
 xchain0_n163_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1200] -> [zr+1168]
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1176], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+1184]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lrkfn295: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn295]
 lea rsi, [r12 + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain0_n169_α
 jmp xchain0_n168_α
 xchain0_n163_β:
 jmp xchain0_n169_α
 xchain0_n164_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3680] -> [zr+3648]
 mov rax, qword ptr [r12 + 3680]
 mov qword ptr [r12 + 3648], rax
 mov rax, qword ptr [r12 + 3688]
 mov qword ptr [r12 + 3656], rax
# marshal arg1 = producer-box slot [zr+4112] -> [zr+3664]
 mov rax, qword ptr [r12 + 4112]
 mov qword ptr [r12 + 3664], rax
 mov rax, qword ptr [r12 + 4120]
 mov qword ptr [r12 + 3672], rax
  .section .rodata
  .Lrkfn297: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn297]
 lea rsi, [r12 + 3648]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3632], rax
 mov qword ptr [r12 + 3640], rdx
 cmp eax, 99
 je xchain0_n65_α
 jmp xchain0_n170_α
 xchain0_n164_β:
 jmp xchain0_n65_α
 xchain0_n165_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2768] -> [zr+2736]
 mov rax, qword ptr [r12 + 2768]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 2776]
 mov qword ptr [r12 + 2744], rax
# marshal arg1 = producer-box slot [zr+3008] -> [zr+2752]
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 2752], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 2760], rax
  .section .rodata
  .Lrkfn299: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn299]
 lea rsi, [r12 + 2736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2720], rax
 mov qword ptr [r12 + 2728], rdx
 cmp eax, 99
 je xchain0_n92_α
 jmp xchain0_n171_α
 xchain0_n165_β:
 jmp xchain0_n92_α
# IR_VAR_REF
 xchain0_n166_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 jmp xchain0_n172_α
 xchain0_n166_β:
 jmp xchain0_n49_α
# IR_LIT_STRING
 xchain0_n167_α:
 mov qword ptr [r12 + 1600], 1
 mov rax, qword ptr [rip + .Lx302_0]
 mov qword ptr [r12 + 1608], rax
 jmp xchain0_n173_α
 xchain0_n167_β:
 jmp proc_d$3_ω
.Lx302_0:
 .quad .Lx302_0_s
.Lx302_0_s:
 .string "*"
 xchain0_n168_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1088]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1096], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+1104]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1112], rax
  .section .rodata
  .Lrkfn304: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn304]
 lea rsi, [r12 + 1088]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 cmp eax, 99
 je xchain0_n169_α
 jmp xchain0_n174_α
 xchain0_n168_β:
 jmp xchain0_n169_α
 xchain0_n169_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+672]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn306: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn306]
 lea rsi, [r12 + 672]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n175_α
 xchain0_n169_β:
 jmp proc_d$3_ω
 xchain0_n170_α:
# IR_CUT
 jmp xchain0_n176_α
 xchain0_n170_β:
 jmp xchain0_n65_α
 xchain0_n171_α:
# IR_CUT
 jmp xchain0_n177_α
 xchain0_n171_β:
 jmp xchain0_n92_α
# IR_VAR_REF
 xchain0_n172_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 jmp xchain0_n178_α
 xchain0_n172_β:
 jmp xchain0_n49_α
# IR_LIT_STRING
 xchain0_n173_α:
 mov qword ptr [r12 + 1504], 1
 mov rax, qword ptr [rip + .Lx311_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain0_n179_α
 xchain0_n173_β:
 jmp proc_d$3_ω
.Lx311_0:
 .quad .Lx311_0_s
.Lx311_0_s:
 .string "exp"
# IR_VAR_REF
 xchain0_n174_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain0_n180_α
 xchain0_n174_β:
 jmp xchain0_n169_α
# IR_VAR_REF
 xchain0_n175_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain0_n181_α
 xchain0_n175_β:
 jmp xchain0_n194_α
# IR_VAR_REF
 xchain0_n176_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3584], rax
 mov qword ptr [r12 + 3592], rdx
 jmp xchain0_n182_α
 xchain0_n176_β:
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n177_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2704], rax
 mov qword ptr [r12 + 2712], rdx
 jmp xchain0_n183_α
 xchain0_n177_β:
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n178_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xchain0_n184_α
 xchain0_n178_β:
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n179_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain0_n185_α
 xchain0_n179_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n180_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain0_n186_α
 xchain0_n180_β:
 jmp xchain0_n169_α
# IR_VAR_REF
 xchain0_n181_α:
 lea rdi, [r12 + 6848]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain0_n187_α
 xchain0_n181_β:
 jmp xchain0_n194_α
# IR_VAR_REF
 xchain0_n182_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3600], rax
 mov qword ptr [r12 + 3608], rdx
 jmp xchain0_n188_α
 xchain0_n182_β:
 jmp xchain0_n49_α
 xchain0_n183_α:
# BOX IR_CALL $tt_integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2704] -> [zr+2688]
 mov rax, qword ptr [r12 + 2704]
 mov qword ptr [r12 + 2688], rax
 mov rax, qword ptr [r12 + 2712]
 mov qword ptr [r12 + 2696], rax
  .section .rodata
  .Lrkfn331: .string "$tt_integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn331]
 lea rsi, [r12 + 2688]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n189_α
 xchain0_n183_β:
 jmp xchain0_n49_α
 xchain0_n184_α:
  .section .rodata
  .Lcall185_pname: .string "d/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1952]
 mov rdx, qword ptr [r12 + 1960]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1968]
 mov rdx, qword ptr [r12 + 1976]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 1984]
 mov rdx, qword ptr [r12 + 1992]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall185_pname]
 mov esi, 3
 lea rdx, [r12 + 1936]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n190_α
xchain0_n184_β:
 lea rdi, [r12 + 1936]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n190_α
 xchain0_n185_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1472]
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1480], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1488]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1496], rax
  .section .rodata
  .Lrkfn334: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn334]
 lea rsi, [r12 + 1472]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n191_α
 xchain0_n185_β:
 jmp proc_d$3_ω
 xchain0_n186_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+1008]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1016], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+1024]
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1032], rax
  .section .rodata
  .Lrkfn336: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn336]
 lea rsi, [r12 + 1008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain0_n169_α
 jmp xchain0_n192_α
 xchain0_n186_β:
 jmp xchain0_n169_α
 xchain0_n187_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+592]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 600], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn338: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn338]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain0_n194_α
 jmp xchain0_n193_α
 xchain0_n187_β:
 jmp xchain0_n194_α
# IR_VAR_REF
 xchain0_n188_α:
 lea rdi, [r12 + 6880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3616], rax
 mov qword ptr [r12 + 3624], rdx
 jmp xchain0_n195_α
 xchain0_n188_β:
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n189_α:
 lea rdi, [r12 + 6896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 jmp xchain0_n196_α
 xchain0_n189_β:
 jmp xchain0_n49_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n190_α:
 lea rax, [rip + xchain0_n184_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_d$3_γ
 xchain0_n190_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n191_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain0_n197_α
 xchain0_n191_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n192_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain0_n198_α
 xchain0_n192_β:
 jmp xchain0_n169_α
# IR_VAR_REF
 xchain0_n193_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain0_n199_α
 xchain0_n193_β:
 jmp xchain0_n194_α
 xchain0_n194_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+400]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn352: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn352]
 lea rsi, [r12 + 400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n200_α
 xchain0_n194_β:
 jmp proc_d$3_ω
 xchain0_n195_α:
  .section .rodata
  .Lcall196_pname: .string "d/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3584]
 mov rdx, qword ptr [r12 + 3592]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 3600]
 mov rdx, qword ptr [r12 + 3608]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 3616]
 mov rdx, qword ptr [r12 + 3624]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall196_pname]
 mov esi, 3
 lea rdx, [r12 + 3568]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n201_α
xchain0_n195_β:
 lea rdi, [r12 + 3568]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n201_α
# IR_VAR
 xchain0_n196_α:
 mov rax, qword ptr [r12 + 6816]
 mov qword ptr [r12 + 2640], rax
 mov rax, qword ptr [r12 + 6824]
 mov qword ptr [r12 + 2648], rax
 jmp xchain0_n202_α
 xchain0_n196_β:
 jmp proc_d$3_ω
 xchain0_n197_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1552]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1552], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1560], rax
# marshal arg1 = producer-box slot [zr+1456] -> [zr+1568]
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1576], rax
# marshal arg2 = producer-box slot [zr+1520] -> [zr+1584]
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1592], rax
  .section .rodata
  .Lrkfn357: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn357]
 lea rsi, [r12 + 1552]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 cmp eax, 99
 je xchain0_n140_α
 jmp xchain0_n203_α
 xchain0_n197_β:
 jmp xchain0_n140_α
# IR_LIT_STRING
 xchain0_n198_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx358_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain0_n204_α
 xchain0_n198_β:
 jmp proc_d$3_ω
.Lx358_0:
 .quad .Lx358_0_s
.Lx358_0_s:
 .string "/"
# IR_VAR_REF
 xchain0_n199_α:
 lea rdi, [r12 + 6848]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n205_α
 xchain0_n199_β:
 jmp xchain0_n194_α
# IR_VAR_REF
 xchain0_n200_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n206_α
 xchain0_n200_β:
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n201_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3456], rax
 mov qword ptr [r12 + 3464], rdx
 jmp xchain0_n207_α
 xchain0_n201_β:
 jmp xchain0_n49_α
# IR_LIT_INTEGER
 xchain0_n202_α:
 mov qword ptr [r12 + 2656], 6
 mov rax, qword ptr [rip + .Lx365_0]
 mov qword ptr [r12 + 2664], rax
 jmp xchain0_n208_α
 xchain0_n202_β:
 jmp proc_d$3_ω
.Lx365_0:
 .quad 1
 xchain0_n203_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1392]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1400], rax
# marshal arg1 = producer-box slot [zr+1536] -> [zr+1408]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1416], rax
  .section .rodata
  .Lrkfn367: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn367]
 lea rsi, [r12 + 1392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 cmp eax, 99
 je xchain0_n140_α
 jmp xchain0_n209_α
 xchain0_n203_β:
 jmp xchain0_n140_α
# IR_VAR_REF
 xchain0_n204_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain0_n210_α
 xchain0_n204_β:
 jmp proc_d$3_ω
 xchain0_n205_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+528]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn371: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn371]
 lea rsi, [r12 + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain0_n194_α
 jmp xchain0_n211_α
 xchain0_n205_β:
 jmp xchain0_n194_α
# IR_VAR_REF
 xchain0_n206_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n212_α
 xchain0_n206_β:
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n207_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], rdx
 jmp xchain0_n213_α
 xchain0_n207_β:
 jmp xchain0_n49_α
 xchain0_n208_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2640] -> [zr+2608]
 mov rax, qword ptr [r12 + 2640]
 mov qword ptr [r12 + 2608], rax
 mov rax, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 2616], rax
# marshal arg1 = producer-box slot [zr+2656] -> [zr+2624]
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 2624], rax
 mov rax, qword ptr [r12 + 2664]
 mov qword ptr [r12 + 2632], rax
  .section .rodata
  .Lrkfn377: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn377]
 lea rsi, [r12 + 2608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n214_α
 xchain0_n208_β:
 jmp xchain0_n49_α
 xchain0_n209_α:
# IR_CUT
 jmp xchain0_n215_α
 xchain0_n209_β:
 jmp xchain0_n140_α
# IR_VAR_REF
 xchain0_n210_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain0_n216_α
 xchain0_n210_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n211_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain0_n217_α
 xchain0_n211_β:
 jmp xchain0_n194_α
 xchain0_n212_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn384: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn384]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n218_α
 xchain0_n212_β:
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n213_α:
 lea rdi, [r12 + 6896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3488], rax
 mov qword ptr [r12 + 3496], rdx
 jmp xchain0_n219_α
 xchain0_n213_β:
 jmp xchain0_n49_α
 xchain0_n214_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2576] -> [zr+2544]
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 2544], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 2552], rax
# marshal arg1 = producer-box slot [zr+2592] -> [zr+2560]
 mov rax, qword ptr [r12 + 2592]
 mov qword ptr [r12 + 2560], rax
 mov rax, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 2568], rax
  .section .rodata
  .Lrkfn388: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn388]
 lea rsi, [r12 + 2544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n220_α
 xchain0_n214_β:
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n215_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain0_n221_α
 xchain0_n215_β:
 jmp xchain0_n49_α
 xchain0_n216_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+928]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 936], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+944]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 952], rax
# marshal arg2 = producer-box slot [zr+896] -> [zr+960]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 968], rax
  .section .rodata
  .Lrkfn392: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn392]
 lea rsi, [r12 + 928]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain0_n169_α
 jmp xchain0_n222_α
 xchain0_n216_β:
 jmp xchain0_n169_α
# IR_LIT_INTEGER
 xchain0_n217_α:
 mov qword ptr [r12 + 480], 6
 mov rax, qword ptr [rip + .Lx393_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain0_n223_α
 xchain0_n217_β:
 jmp xchain0_n194_α
.Lx393_0:
 .quad 1
# IR_VAR_REF
 xchain0_n218_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain0_n224_α
 xchain0_n218_β:
 jmp xchain0_n49_α
 xchain0_n219_α:
  .section .rodata
  .Lcall220_pname: .string "d/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3456]
 mov rdx, qword ptr [r12 + 3464]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 3472]
 mov rdx, qword ptr [r12 + 3480]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 3488]
 mov rdx, qword ptr [r12 + 3496]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall220_pname]
 mov esi, 3
 lea rdx, [r12 + 3440]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 3376], rax
 mov qword ptr [r12 + 3384], rdx
 cmp eax, 99
 je xchain0_n195_β
 jmp xchain0_n225_α
xchain0_n219_β:
 lea rdi, [r12 + 3440]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 3376], rax
 mov qword ptr [r12 + 3384], rdx
 cmp eax, 99
 je xchain0_n195_β
 jmp xchain0_n225_α
# IR_VAR_REF
 xchain0_n220_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 jmp xchain0_n226_α
 xchain0_n220_β:
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n221_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain0_n227_α
 xchain0_n221_β:
 jmp xchain0_n49_α
 xchain0_n222_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+848]
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn402: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn402]
 lea rsi, [r12 + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain0_n169_α
 jmp xchain0_n228_α
 xchain0_n222_β:
 jmp xchain0_n169_α
 xchain0_n223_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+448]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn404: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn404]
 lea rsi, [r12 + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain0_n194_α
 jmp xchain0_n229_α
 xchain0_n223_β:
 jmp xchain0_n194_α
# IR_VAR_REF
 xchain0_n224_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n230_α
 xchain0_n224_β:
 jmp xchain0_n49_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n225_α:
 lea rax, [rip + xchain0_n219_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_d$3_γ
 xchain0_n225_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n226_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 jmp xchain0_n231_α
 xchain0_n226_β:
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n227_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain0_n232_α
 xchain0_n227_β:
 jmp xchain0_n49_α
 xchain0_n228_α:
# IR_CUT
 jmp xchain0_n233_α
 xchain0_n228_β:
 jmp xchain0_n169_α
 xchain0_n229_α:
# IR_CUT
 jmp xchain0_n234_α
 xchain0_n229_β:
 jmp xchain0_n194_α
 xchain0_n230_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn416: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn416]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n235_α
 xchain0_n230_β:
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n231_α:
 lea rdi, [r12 + 6880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 jmp xchain0_n236_α
 xchain0_n231_β:
 jmp xchain0_n49_α
 xchain0_n232_α:
  .section .rodata
  .Lcall233_pname: .string "d/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1328]
 mov rdx, qword ptr [r12 + 1336]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1344]
 mov rdx, qword ptr [r12 + 1352]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 1360]
 mov rdx, qword ptr [r12 + 1368]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall233_pname]
 mov esi, 3
 lea rdx, [r12 + 1312]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n237_α
xchain0_n232_β:
 lea rdi, [r12 + 1312]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n237_α
# IR_VAR_REF
 xchain0_n233_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain0_n238_α
 xchain0_n233_β:
 jmp xchain0_n49_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n234_α:
 lea rax, [rip + xchain0_n194_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d$3_γ
 xchain0_n234_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n235_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain0_n239_α
 xchain0_n235_β:
 jmp xchain0_n49_α
 xchain0_n236_α:
  .section .rodata
  .Lcall237_pname: .string "d/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2480]
 mov rdx, qword ptr [r12 + 2488]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 2496]
 mov rdx, qword ptr [r12 + 2504]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 2512]
 mov rdx, qword ptr [r12 + 2520]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall237_pname]
 mov esi, 3
 lea rdx, [r12 + 2464]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n240_α
xchain0_n236_β:
 lea rdi, [r12 + 2464]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n240_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n237_α:
 lea rax, [rip + xchain0_n232_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_d$3_γ
 xchain0_n237_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n238_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain0_n241_α
 xchain0_n238_β:
 jmp xchain0_n49_α
# IR_LIT_INTEGER
 xchain0_n239_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx431_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain0_n242_α
 xchain0_n239_β:
 jmp xchain0_n49_α
.Lx431_0:
 .quad 0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n240_α:
 lea rax, [rip + xchain0_n236_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_d$3_γ
 xchain0_n240_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n241_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain0_n243_α
 xchain0_n241_β:
 jmp xchain0_n49_α
 xchain0_n242_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
# marshal arg1 = producer-box slot [zr+208] -> [zr+176]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn437: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn437]
 lea rsi, [r12 + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n244_α
 xchain0_n242_β:
 jmp xchain0_n49_α
 xchain0_n243_α:
  .section .rodata
  .Lcall244_pname: .string "d/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 784]
 mov rdx, qword ptr [r12 + 792]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 800]
 mov rdx, qword ptr [r12 + 808]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall244_pname]
 mov esi, 3
 lea rdx, [r12 + 752]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n245_α
xchain0_n243_β:
 lea rdi, [r12 + 752]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n245_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n244_α:
 lea rax, [rip + xchain0_n49_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d$3_γ
 xchain0_n244_β:
 jmp proc_d$3_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n245_α:
 lea rax, [rip + xchain0_n243_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_d$3_γ
 xchain0_n245_β:
 jmp proc_d$3_ω
proc_d$3_β:
jmp xchain0_n71_α
proc_d$3_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 6800]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_d$3_ω:
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
  .Lstartup_pname0: .string "d/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_d$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 6912
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
 mov qword ptr [r12 + 992], rax
 pop rsi
main_α_body:
 xchain443_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn445: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn445]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain443_n1_α
 xchain443_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain443_n1_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx446_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain443_n2_α
 xchain443_n1_β:
 jmp main_ω
.Lx446_0:
 .quad .Lx446_0_s
.Lx446_0_s:
 .string "*"
# IR_LIT_STRING
 xchain443_n2_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx447_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain443_n3_α
 xchain443_n2_β:
 jmp main_ω
.Lx447_0:
 .quad .Lx447_0_s
.Lx447_0_s:
 .string "+"
# IR_LIT_STRING
 xchain443_n3_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx448_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain443_n4_α
 xchain443_n3_β:
 jmp main_ω
.Lx448_0:
 .quad .Lx448_0_s
.Lx448_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain443_n4_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx449_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain443_n5_α
 xchain443_n4_β:
 jmp main_ω
.Lx449_0:
 .quad 1
 xchain443_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+336]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 344], rax
# marshal arg2 = producer-box slot [zr+288] -> [zr+352]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn451: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn451]
 lea rsi, [r12 + 320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je main_ω
 jmp xchain443_n6_α
 xchain443_n5_β:
 jmp main_ω
# IR_LIT_STRING
 xchain443_n6_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx452_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain443_n7_α
 xchain443_n6_β:
 jmp main_ω
.Lx452_0:
 .quad .Lx452_0_s
.Lx452_0_s:
 .string "*"
# IR_LIT_STRING
 xchain443_n7_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx453_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain443_n8_α
 xchain443_n7_β:
 jmp main_ω
.Lx453_0:
 .quad .Lx453_0_s
.Lx453_0_s:
 .string "+"
# IR_LIT_STRING
 xchain443_n8_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx454_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain443_n9_α
 xchain443_n8_β:
 jmp main_ω
.Lx454_0:
 .quad .Lx454_0_s
.Lx454_0_s:
 .string "^"
# IR_LIT_STRING
 xchain443_n9_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx455_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain443_n10_α
 xchain443_n9_β:
 jmp main_ω
.Lx455_0:
 .quad .Lx455_0_s
.Lx455_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain443_n10_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx456_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain443_n11_α
 xchain443_n10_β:
 jmp main_ω
.Lx456_0:
 .quad 2
 xchain443_n11_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+432]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 440], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+448]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 456], rax
# marshal arg2 = producer-box slot [zr+400] -> [zr+464]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn458: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn458]
 lea rsi, [r12 + 432]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je main_ω
 jmp xchain443_n12_α
 xchain443_n11_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain443_n12_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx459_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain443_n13_α
 xchain443_n12_β:
 jmp main_ω
.Lx459_0:
 .quad 2
 xchain443_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+528]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 536], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+544]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 552], rax
# marshal arg2 = producer-box slot [zr+496] -> [zr+560]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn461: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn461]
 lea rsi, [r12 + 528]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je main_ω
 jmp xchain443_n14_α
 xchain443_n13_β:
 jmp main_ω
# IR_LIT_STRING
 xchain443_n14_α:
 mov qword ptr [r12 + 784], 1
 mov rax, qword ptr [rip + .Lx462_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain443_n15_α
 xchain443_n14_β:
 jmp main_ω
.Lx462_0:
 .quad .Lx462_0_s
.Lx462_0_s:
 .string "+"
# IR_LIT_STRING
 xchain443_n15_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx463_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain443_n16_α
 xchain443_n15_β:
 jmp main_ω
.Lx463_0:
 .quad .Lx463_0_s
.Lx463_0_s:
 .string "^"
# IR_LIT_STRING
 xchain443_n16_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx464_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain443_n17_α
 xchain443_n16_β:
 jmp main_ω
.Lx464_0:
 .quad .Lx464_0_s
.Lx464_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain443_n17_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx465_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain443_n18_α
 xchain443_n17_β:
 jmp main_ω
.Lx465_0:
 .quad 3
 xchain443_n18_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 648], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+656]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 664], rax
# marshal arg2 = producer-box slot [zr+608] -> [zr+672]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn467: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn467]
 lea rsi, [r12 + 640]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je main_ω
 jmp xchain443_n19_α
 xchain443_n18_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain443_n19_α:
 mov qword ptr [r12 + 704], 6
 mov rax, qword ptr [rip + .Lx468_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain443_n20_α
 xchain443_n19_β:
 jmp main_ω
.Lx468_0:
 .quad 3
 xchain443_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+736]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 744], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+752]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 760], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+768]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 776], rax
  .section .rodata
  .Lrkfn470: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn470]
 lea rsi, [r12 + 736]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je main_ω
 jmp xchain443_n21_α
 xchain443_n20_β:
 jmp main_ω
 xchain443_n21_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+816]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 824], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+832]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 840], rax
# marshal arg2 = producer-box slot [zr+720] -> [zr+848]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn472: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn472]
 lea rsi, [r12 + 816]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je main_ω
 jmp xchain443_n22_α
 xchain443_n21_β:
 jmp main_ω
 xchain443_n22_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+896]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [zr+304] -> [zr+912]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 920], rax
# marshal arg2 = producer-box slot [zr+800] -> [zr+928]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn474: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn474]
 lea rsi, [r12 + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain443_n24_α
 jmp xchain443_n23_α
 xchain443_n22_β:
 jmp xchain443_n24_α
# IR_LIT_STRING
 xchain443_n23_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx475_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain443_n25_α
 xchain443_n23_β:
 jmp xchain443_n24_α
.Lx475_0:
 .quad .Lx475_0_s
.Lx475_0_s:
 .string "x"
 xchain443_n24_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn477: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn477]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain443_n24_β:
 jmp main_ω
# IR_VAR_REF
 xchain443_n25_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain443_n26_α
 xchain443_n25_β:
 jmp xchain443_n24_α
 xchain443_n26_α:
  .section .rodata
  .Lcall273_pname: .string "d/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 880]
 mov rdx, qword ptr [r12 + 888]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 960]
 mov rdx, qword ptr [r12 + 968]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 976]
 mov rdx, qword ptr [r12 + 984]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall273_pname]
 mov esi, 3
 lea rdx, [r12 + 256]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain443_n24_α
 jmp xchain443_n27_α
xchain443_n26_β:
 lea rdi, [r12 + 256]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain443_n24_α
 jmp xchain443_n27_α
# IR_VAR
 xchain443_n27_α:
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 184], rax
 jmp xchain443_n28_α
 xchain443_n27_β:
 jmp xchain443_n24_α
 xchain443_n28_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn484: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn484]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain443_n26_β
 jmp xchain443_n29_α
 xchain443_n28_β:
 jmp xchain443_n26_β
# IR_LIT_STRING
 xchain443_n29_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx485_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain443_n30_α
 xchain443_n29_β:
 jmp xchain443_n24_α
.Lx485_0:
 .quad .Lx485_0_s
.Lx485_0_s:
 .string ""
 xchain443_n30_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn487: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn487]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain443_n26_β
 jmp xchain443_n31_α
 xchain443_n30_β:
 jmp xchain443_n26_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain443_n31_α:
 lea rax, [rip + xchain443_n26_β]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain443_n31_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain443_n32_α:
 jmp qword ptr [r12 + 32]
 xchain443_n32_β:
 jmp main_ω
main_β:
jmp xchain443_n32_α
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
 mov rdi, qword ptr [r12 + 992]
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
