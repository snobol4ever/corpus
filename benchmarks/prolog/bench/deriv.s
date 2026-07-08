  .intel_syntax noprefix
  .text
  .globl proc_d_α
proc_d_α:
#=======================================================================================================================
    .global proc_d_α
    .global proc_d_β
    .global proc_d_γ
    .global proc_d_ω
push r12
  mov r12, rdi
  cmp esi, 0
  jne proc_d_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 6544], rax
 pop rsi
proc_d_α_body:
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
 je proc_d_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6416], rax
 mov qword ptr [r12 + 6424], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n7_α
# IR_LIT_STRING
 xchain0_n2_α:
 mov qword ptr [r12 + 6528], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 6536], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_d_ω
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "+"
# IR_VAR_REF local
 xchain0_n3_α:
 lea rdi, [r12 + 6576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6432], rax
 mov qword ptr [r12 + 6440], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n4_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6448], rax
 mov qword ptr [r12 + 6456], rdx
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp proc_d_ω
 xchain0_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6528] -> [r12+6480]
 mov rax, qword ptr [r12 + 6528]
 mov qword ptr [r12 + 6480], rax
 mov rax, qword ptr [r12 + 6536]
 mov qword ptr [r12 + 6488], rax
# marshal arg1 = producer-box slot [r12+6432] -> [r12+6496]
 mov rax, qword ptr [r12 + 6432]
 mov qword ptr [r12 + 6496], rax
 mov rax, qword ptr [r12 + 6440]
 mov qword ptr [r12 + 6504], rax
# marshal arg2 = producer-box slot [r12+6448] -> [r12+6512]
 mov rax, qword ptr [r12 + 6448]
 mov qword ptr [r12 + 6512], rax
 mov rax, qword ptr [r12 + 6456]
 mov qword ptr [r12 + 6520], rax
  .section .rodata
  .Lrkfn11: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn11]
 lea rsi, [r12 + 6480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6464], rax
 mov qword ptr [r12 + 6472], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n7_α
 xchain0_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6416] -> [r12+6384]
 mov rax, qword ptr [r12 + 6416]
 mov qword ptr [r12 + 6384], rax
 mov rax, qword ptr [r12 + 6424]
 mov qword ptr [r12 + 6392], rax
# marshal arg1 = producer-box slot [r12+6464] -> [r12+6400]
 mov rax, qword ptr [r12 + 6464]
 mov qword ptr [r12 + 6400], rax
 mov rax, qword ptr [r12 + 6472]
 mov qword ptr [r12 + 6408], rax
  .section .rodata
  .Lrkfn13: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn13]
 lea rsi, [r12 + 6384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6368], rax
 mov qword ptr [r12 + 6376], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n7_α
 xchain0_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+5872]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 5872], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 5880], rax
  .section .rodata
  .Lrkfn15: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn15]
 lea rsi, [r12 + 5872]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5856], rax
 mov qword ptr [r12 + 5864], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n8_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6336], rax
 mov qword ptr [r12 + 6344], rdx
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n7_α
# IR_VAR_REF local
 xchain0_n9_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5728], rax
 mov qword ptr [r12 + 5736], rdx
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n20_α
# IR_VAR_REF local
 xchain0_n10_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6352], rax
 mov qword ptr [r12 + 6360], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n7_α
# IR_LIT_STRING
 xchain0_n11_α:
 mov qword ptr [r12 + 5840], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 5848], rax
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp proc_d_ω
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "-"
 xchain0_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6336] -> [r12+6304]
 mov rax, qword ptr [r12 + 6336]
 mov qword ptr [r12 + 6304], rax
 mov rax, qword ptr [r12 + 6344]
 mov qword ptr [r12 + 6312], rax
# marshal arg1 = producer-box slot [r12+6352] -> [r12+6320]
 mov rax, qword ptr [r12 + 6352]
 mov qword ptr [r12 + 6320], rax
 mov rax, qword ptr [r12 + 6360]
 mov qword ptr [r12 + 6328], rax
  .section .rodata
  .Lrkfn24: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn24]
 lea rsi, [r12 + 6304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6288], rax
 mov qword ptr [r12 + 6296], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n7_α
# IR_VAR_REF local
 xchain0_n13_α:
 lea rdi, [r12 + 6576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5744], rax
 mov qword ptr [r12 + 5752], rdx
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n14_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6160], rax
 mov qword ptr [r12 + 6168], rdx
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp xchain0_n7_α
# IR_VAR_REF local
 xchain0_n15_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5760], rax
 mov qword ptr [r12 + 5768], rdx
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp proc_d_ω
# IR_LIT_STRING
 xchain0_n16_α:
 mov qword ptr [r12 + 6272], 1
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 6280], rax
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp proc_d_ω
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string "+"
 xchain0_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5840] -> [r12+5792]
 mov rax, qword ptr [r12 + 5840]
 mov qword ptr [r12 + 5792], rax
 mov rax, qword ptr [r12 + 5848]
 mov qword ptr [r12 + 5800], rax
# marshal arg1 = producer-box slot [r12+5744] -> [r12+5808]
 mov rax, qword ptr [r12 + 5744]
 mov qword ptr [r12 + 5808], rax
 mov rax, qword ptr [r12 + 5752]
 mov qword ptr [r12 + 5816], rax
# marshal arg2 = producer-box slot [r12+5760] -> [r12+5824]
 mov rax, qword ptr [r12 + 5760]
 mov qword ptr [r12 + 5824], rax
 mov rax, qword ptr [r12 + 5768]
 mov qword ptr [r12 + 5832], rax
  .section .rodata
  .Lrkfn33: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn33]
 lea rsi, [r12 + 5792]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5776], rax
 mov qword ptr [r12 + 5784], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n20_α
# IR_VAR_REF local
 xchain0_n18_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6176], rax
 mov qword ptr [r12 + 6184], rdx
 jmp xchain0_n21_α
 xchain0_n18_β:
 jmp proc_d_ω
 xchain0_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5728] -> [r12+5696]
 mov rax, qword ptr [r12 + 5728]
 mov qword ptr [r12 + 5696], rax
 mov rax, qword ptr [r12 + 5736]
 mov qword ptr [r12 + 5704], rax
# marshal arg1 = producer-box slot [r12+5776] -> [r12+5712]
 mov rax, qword ptr [r12 + 5776]
 mov qword ptr [r12 + 5712], rax
 mov rax, qword ptr [r12 + 5784]
 mov qword ptr [r12 + 5720], rax
  .section .rodata
  .Lrkfn37: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn37]
 lea rsi, [r12 + 5696]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5680], rax
 mov qword ptr [r12 + 5688], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n22_α
 xchain0_n19_β:
 jmp xchain0_n20_α
 xchain0_n20_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+5184]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 5184], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 5192], rax
  .section .rodata
  .Lrkfn39: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn39]
 lea rsi, [r12 + 5184]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5168], rax
 mov qword ptr [r12 + 5176], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n21_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6192], rax
 mov qword ptr [r12 + 6200], rdx
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n22_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5648], rax
 mov qword ptr [r12 + 5656], rdx
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp xchain0_n20_α
# IR_VAR_REF local
 xchain0_n23_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5040], rax
 mov qword ptr [r12 + 5048], rdx
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n39_α
 xchain0_n24_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6272] -> [r12+6224]
 mov rax, qword ptr [r12 + 6272]
 mov qword ptr [r12 + 6224], rax
 mov rax, qword ptr [r12 + 6280]
 mov qword ptr [r12 + 6232], rax
# marshal arg1 = producer-box slot [r12+6176] -> [r12+6240]
 mov rax, qword ptr [r12 + 6176]
 mov qword ptr [r12 + 6240], rax
 mov rax, qword ptr [r12 + 6184]
 mov qword ptr [r12 + 6248], rax
# marshal arg2 = producer-box slot [r12+6192] -> [r12+6256]
 mov rax, qword ptr [r12 + 6192]
 mov qword ptr [r12 + 6256], rax
 mov rax, qword ptr [r12 + 6200]
 mov qword ptr [r12 + 6264], rax
  .section .rodata
  .Lrkfn47: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn47]
 lea rsi, [r12 + 6224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6208], rax
 mov qword ptr [r12 + 6216], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n27_α
 xchain0_n24_β:
 jmp xchain0_n7_α
# IR_VAR_REF local
 xchain0_n25_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5664], rax
 mov qword ptr [r12 + 5672], rdx
 jmp xchain0_n28_α
 xchain0_n25_β:
 jmp xchain0_n20_α
# IR_LIT_STRING
 xchain0_n26_α:
 mov qword ptr [r12 + 5152], 1
 mov rax, qword ptr [rip + .Lx50_0]
 mov qword ptr [r12 + 5160], rax
 jmp xchain0_n29_α
 xchain0_n26_β:
 jmp proc_d_ω
.Lx50_0:
 .quad .Lx50_0_s
.Lx50_0_s:
 .string "*"
 xchain0_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6160] -> [r12+6128]
 mov rax, qword ptr [r12 + 6160]
 mov qword ptr [r12 + 6128], rax
 mov rax, qword ptr [r12 + 6168]
 mov qword ptr [r12 + 6136], rax
# marshal arg1 = producer-box slot [r12+6208] -> [r12+6144]
 mov rax, qword ptr [r12 + 6208]
 mov qword ptr [r12 + 6144], rax
 mov rax, qword ptr [r12 + 6216]
 mov qword ptr [r12 + 6152], rax
  .section .rodata
  .Lrkfn52: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn52]
 lea rsi, [r12 + 6128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n30_α
 xchain0_n27_β:
 jmp xchain0_n7_α
 xchain0_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5648] -> [r12+5616]
 mov rax, qword ptr [r12 + 5648]
 mov qword ptr [r12 + 5616], rax
 mov rax, qword ptr [r12 + 5656]
 mov qword ptr [r12 + 5624], rax
# marshal arg1 = producer-box slot [r12+5664] -> [r12+5632]
 mov rax, qword ptr [r12 + 5664]
 mov qword ptr [r12 + 5632], rax
 mov rax, qword ptr [r12 + 5672]
 mov qword ptr [r12 + 5640], rax
  .section .rodata
  .Lrkfn54: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn54]
 lea rsi, [r12 + 5616]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5600], rax
 mov qword ptr [r12 + 5608], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n31_α
 xchain0_n28_β:
 jmp xchain0_n20_α
# IR_VAR_REF local
 xchain0_n29_α:
 lea rdi, [r12 + 6576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5056], rax
 mov qword ptr [r12 + 5064], rdx
 jmp xchain0_n32_α
 xchain0_n29_β:
 jmp proc_d_ω
 xchain0_n30_α:
# IR_CUT
 jmp xchain0_n33_α
 xchain0_n30_β:
 jmp xchain0_n7_α
# IR_VAR_REF local
 xchain0_n31_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5472], rax
 mov qword ptr [r12 + 5480], rdx
 jmp xchain0_n34_α
 xchain0_n31_β:
 jmp xchain0_n20_α
# IR_VAR_REF local
 xchain0_n32_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5072], rax
 mov qword ptr [r12 + 5080], rdx
 jmp xchain0_n35_α
 xchain0_n32_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n33_α:
 lea rdi, [r12 + 6576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6064], rax
 mov qword ptr [r12 + 6072], rdx
 jmp xchain0_n36_α
 xchain0_n33_β:
 jmp xchain0_n49_α
# IR_LIT_STRING
 xchain0_n34_α:
 mov qword ptr [r12 + 5584], 1
 mov rax, qword ptr [rip + .Lx64_0]
 mov qword ptr [r12 + 5592], rax
 jmp xchain0_n37_α
 xchain0_n34_β:
 jmp proc_d_ω
.Lx64_0:
 .quad .Lx64_0_s
.Lx64_0_s:
 .string "-"
 xchain0_n35_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5152] -> [r12+5104]
 mov rax, qword ptr [r12 + 5152]
 mov qword ptr [r12 + 5104], rax
 mov rax, qword ptr [r12 + 5160]
 mov qword ptr [r12 + 5112], rax
# marshal arg1 = producer-box slot [r12+5056] -> [r12+5120]
 mov rax, qword ptr [r12 + 5056]
 mov qword ptr [r12 + 5120], rax
 mov rax, qword ptr [r12 + 5064]
 mov qword ptr [r12 + 5128], rax
# marshal arg2 = producer-box slot [r12+5072] -> [r12+5136]
 mov rax, qword ptr [r12 + 5072]
 mov qword ptr [r12 + 5136], rax
 mov rax, qword ptr [r12 + 5080]
 mov qword ptr [r12 + 5144], rax
  .section .rodata
  .Lrkfn66: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn66]
 lea rsi, [r12 + 5104]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5088], rax
 mov qword ptr [r12 + 5096], rdx
 cmp eax, 99
 je xchain0_n39_α
 jmp xchain0_n38_α
 xchain0_n35_β:
 jmp xchain0_n39_α
# IR_VAR_REF local
 xchain0_n36_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6080], rax
 mov qword ptr [r12 + 6088], rdx
 jmp xchain0_n40_α
 xchain0_n36_β:
 jmp xchain0_n49_α
# IR_VAR_REF local
 xchain0_n37_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5488], rax
 mov qword ptr [r12 + 5496], rdx
 jmp xchain0_n41_α
 xchain0_n37_β:
 jmp proc_d_ω
 xchain0_n38_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5040] -> [r12+5008]
 mov rax, qword ptr [r12 + 5040]
 mov qword ptr [r12 + 5008], rax
 mov rax, qword ptr [r12 + 5048]
 mov qword ptr [r12 + 5016], rax
# marshal arg1 = producer-box slot [r12+5088] -> [r12+5024]
 mov rax, qword ptr [r12 + 5088]
 mov qword ptr [r12 + 5024], rax
 mov rax, qword ptr [r12 + 5096]
 mov qword ptr [r12 + 5032], rax
  .section .rodata
  .Lrkfn72: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn72]
 lea rsi, [r12 + 5008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4992], rax
 mov qword ptr [r12 + 5000], rdx
 cmp eax, 99
 je xchain0_n39_α
 jmp xchain0_n42_α
 xchain0_n38_β:
 jmp xchain0_n39_α
 xchain0_n39_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+4304]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 4304], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 4312], rax
  .section .rodata
  .Lrkfn74: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn74]
 lea rsi, [r12 + 4304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4288], rax
 mov qword ptr [r12 + 4296], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain0_n43_α
 xchain0_n39_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n40_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6096], rax
 mov qword ptr [r12 + 6104], rdx
 jmp xchain0_n44_α
 xchain0_n40_β:
 jmp xchain0_n49_α
# IR_VAR_REF local
 xchain0_n41_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5504], rax
 mov qword ptr [r12 + 5512], rdx
 jmp xchain0_n45_α
 xchain0_n41_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n42_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4960], rax
 mov qword ptr [r12 + 4968], rdx
 jmp xchain0_n46_α
 xchain0_n42_β:
 jmp xchain0_n39_α
# IR_VAR_REF local
 xchain0_n43_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4160], rax
 mov qword ptr [r12 + 4168], rdx
 jmp xchain0_n47_α
 xchain0_n43_β:
 jmp xchain0_n65_α
 xchain0_n44_α:
  .section .rodata
  .Lcall45_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 6064]
 mov rdx, qword ptr [r12 + 6072]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 6080]
 mov rdx, qword ptr [r12 + 6088]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 6096]
 mov rdx, qword ptr [r12 + 6104]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall45_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 6000], rax
 mov qword ptr [r12 + 6008], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n48_α
xchain0_n44_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 6000], rax
 mov qword ptr [r12 + 6008], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n48_α
 xchain0_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5584] -> [r12+5536]
 mov rax, qword ptr [r12 + 5584]
 mov qword ptr [r12 + 5536], rax
 mov rax, qword ptr [r12 + 5592]
 mov qword ptr [r12 + 5544], rax
# marshal arg1 = producer-box slot [r12+5488] -> [r12+5552]
 mov rax, qword ptr [r12 + 5488]
 mov qword ptr [r12 + 5552], rax
 mov rax, qword ptr [r12 + 5496]
 mov qword ptr [r12 + 5560], rax
# marshal arg2 = producer-box slot [r12+5504] -> [r12+5568]
 mov rax, qword ptr [r12 + 5504]
 mov qword ptr [r12 + 5568], rax
 mov rax, qword ptr [r12 + 5512]
 mov qword ptr [r12 + 5576], rax
  .section .rodata
  .Lrkfn85: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn85]
 lea rsi, [r12 + 5536]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5520], rax
 mov qword ptr [r12 + 5528], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n50_α
 xchain0_n45_β:
 jmp xchain0_n20_α
# IR_VAR_REF local
 xchain0_n46_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4976], rax
 mov qword ptr [r12 + 4984], rdx
 jmp xchain0_n51_α
 xchain0_n46_β:
 jmp xchain0_n39_α
# IR_LIT_STRING
 xchain0_n47_α:
 mov qword ptr [r12 + 4272], 1
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [r12 + 4280], rax
 jmp xchain0_n52_α
 xchain0_n47_β:
 jmp proc_d_ω
.Lx88_0:
 .quad .Lx88_0_s
.Lx88_0_s:
 .string "/"
# IR_VAR_REF local
 xchain0_n48_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5952], rax
 mov qword ptr [r12 + 5960], rdx
 jmp xchain0_n53_α
 xchain0_n48_β:
 jmp xchain0_n49_α
 xchain0_n49_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+128]
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
 je proc_d_ω
 jmp proc_d_ω
 xchain0_n49_β:
 jmp proc_d_ω
 xchain0_n50_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5472] -> [r12+5440]
 mov rax, qword ptr [r12 + 5472]
 mov qword ptr [r12 + 5440], rax
 mov rax, qword ptr [r12 + 5480]
 mov qword ptr [r12 + 5448], rax
# marshal arg1 = producer-box slot [r12+5520] -> [r12+5456]
 mov rax, qword ptr [r12 + 5520]
 mov qword ptr [r12 + 5456], rax
 mov rax, qword ptr [r12 + 5528]
 mov qword ptr [r12 + 5464], rax
  .section .rodata
  .Lrkfn94: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn94]
 lea rsi, [r12 + 5440]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5424], rax
 mov qword ptr [r12 + 5432], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n54_α
 xchain0_n50_β:
 jmp xchain0_n20_α
 xchain0_n51_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4960] -> [r12+4928]
 mov rax, qword ptr [r12 + 4960]
 mov qword ptr [r12 + 4928], rax
 mov rax, qword ptr [r12 + 4968]
 mov qword ptr [r12 + 4936], rax
# marshal arg1 = producer-box slot [r12+4976] -> [r12+4944]
 mov rax, qword ptr [r12 + 4976]
 mov qword ptr [r12 + 4944], rax
 mov rax, qword ptr [r12 + 4984]
 mov qword ptr [r12 + 4952], rax
  .section .rodata
  .Lrkfn96: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn96]
 lea rsi, [r12 + 4928]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4912], rax
 mov qword ptr [r12 + 4920], rdx
 cmp eax, 99
 je xchain0_n39_α
 jmp xchain0_n55_α
 xchain0_n51_β:
 jmp xchain0_n39_α
# IR_VAR_REF local
 xchain0_n52_α:
 lea rdi, [r12 + 6576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4176], rax
 mov qword ptr [r12 + 4184], rdx
 jmp xchain0_n56_α
 xchain0_n52_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n53_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5968], rax
 mov qword ptr [r12 + 5976], rdx
 jmp xchain0_n57_α
 xchain0_n53_β:
 jmp xchain0_n49_α
 xchain0_n54_α:
# IR_CUT
 jmp xchain0_n58_α
 xchain0_n54_β:
 jmp xchain0_n20_α
# IR_VAR_REF local
 xchain0_n55_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4592], rax
 mov qword ptr [r12 + 4600], rdx
 jmp xchain0_n59_α
 xchain0_n55_β:
 jmp xchain0_n39_α
# IR_VAR_REF local
 xchain0_n56_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4192], rax
 mov qword ptr [r12 + 4200], rdx
 jmp xchain0_n60_α
 xchain0_n56_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n57_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5984], rax
 mov qword ptr [r12 + 5992], rdx
 jmp xchain0_n61_α
 xchain0_n57_β:
 jmp xchain0_n49_α
# IR_VAR_REF local
 xchain0_n58_α:
 lea rdi, [r12 + 6576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5376], rax
 mov qword ptr [r12 + 5384], rdx
 jmp xchain0_n62_α
 xchain0_n58_β:
 jmp xchain0_n49_α
# IR_LIT_STRING
 xchain0_n59_α:
 mov qword ptr [r12 + 4896], 1
 mov rax, qword ptr [rip + .Lx110_0]
 mov qword ptr [r12 + 4904], rax
 jmp xchain0_n63_α
 xchain0_n59_β:
 jmp proc_d_ω
.Lx110_0:
 .quad .Lx110_0_s
.Lx110_0_s:
 .string "+"
 xchain0_n60_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4272] -> [r12+4224]
 mov rax, qword ptr [r12 + 4272]
 mov qword ptr [r12 + 4224], rax
 mov rax, qword ptr [r12 + 4280]
 mov qword ptr [r12 + 4232], rax
# marshal arg1 = producer-box slot [r12+4176] -> [r12+4240]
 mov rax, qword ptr [r12 + 4176]
 mov qword ptr [r12 + 4240], rax
 mov rax, qword ptr [r12 + 4184]
 mov qword ptr [r12 + 4248], rax
# marshal arg2 = producer-box slot [r12+4192] -> [r12+4256]
 mov rax, qword ptr [r12 + 4192]
 mov qword ptr [r12 + 4256], rax
 mov rax, qword ptr [r12 + 4200]
 mov qword ptr [r12 + 4264], rax
  .section .rodata
  .Lrkfn112: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn112]
 lea rsi, [r12 + 4224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4208], rax
 mov qword ptr [r12 + 4216], rdx
 cmp eax, 99
 je xchain0_n65_α
 jmp xchain0_n64_α
 xchain0_n60_β:
 jmp xchain0_n65_α
 xchain0_n61_α:
  .section .rodata
  .Lcall62_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5952]
 mov rdx, qword ptr [r12 + 5960]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 5968]
 mov rdx, qword ptr [r12 + 5976]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 5984]
 mov rdx, qword ptr [r12 + 5992]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall62_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 5888], rax
 mov qword ptr [r12 + 5896], rdx
 cmp eax, 99
 je xchain0_n44_β
 jmp xchain0_n66_α
xchain0_n61_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 5888], rax
 mov qword ptr [r12 + 5896], rdx
 cmp eax, 99
 je xchain0_n44_β
 jmp xchain0_n66_α
# IR_VAR_REF local
 xchain0_n62_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5392], rax
 mov qword ptr [r12 + 5400], rdx
 jmp xchain0_n67_α
 xchain0_n62_β:
 jmp xchain0_n49_α
# IR_LIT_STRING
 xchain0_n63_α:
 mov qword ptr [r12 + 4704], 1
 mov rax, qword ptr [rip + .Lx116_0]
 mov qword ptr [r12 + 4712], rax
 jmp xchain0_n68_α
 xchain0_n63_β:
 jmp proc_d_ω
.Lx116_0:
 .quad .Lx116_0_s
.Lx116_0_s:
 .string "*"
 xchain0_n64_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4160] -> [r12+4128]
 mov rax, qword ptr [r12 + 4160]
 mov qword ptr [r12 + 4128], rax
 mov rax, qword ptr [r12 + 4168]
 mov qword ptr [r12 + 4136], rax
# marshal arg1 = producer-box slot [r12+4208] -> [r12+4144]
 mov rax, qword ptr [r12 + 4208]
 mov qword ptr [r12 + 4144], rax
 mov rax, qword ptr [r12 + 4216]
 mov qword ptr [r12 + 4152], rax
  .section .rodata
  .Lrkfn118: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn118]
 lea rsi, [r12 + 4128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4112], rax
 mov qword ptr [r12 + 4120], rdx
 cmp eax, 99
 je xchain0_n65_α
 jmp xchain0_n69_α
 xchain0_n64_β:
 jmp xchain0_n65_α
 xchain0_n65_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+3232]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 3232], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 3240], rax
  .section .rodata
  .Lrkfn120: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn120]
 lea rsi, [r12 + 3232]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3216], rax
 mov qword ptr [r12 + 3224], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain0_n70_α
 xchain0_n65_β:
 jmp proc_d_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n66_α:
 lea rax, [rip + xchain0_n7_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain0_n66_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n67_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5408], rax
 mov qword ptr [r12 + 5416], rdx
 jmp xchain0_n72_α
 xchain0_n67_β:
 jmp xchain0_n49_α
# IR_VAR_REF local
 xchain0_n68_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4608], rax
 mov qword ptr [r12 + 4616], rdx
 jmp xchain0_n73_α
 xchain0_n68_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n69_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4080], rax
 mov qword ptr [r12 + 4088], rdx
 jmp xchain0_n74_α
 xchain0_n69_β:
 jmp xchain0_n65_α
# IR_VAR_REF local
 xchain0_n70_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3088], rax
 mov qword ptr [r12 + 3096], rdx
 jmp xchain0_n75_α
 xchain0_n70_β:
 jmp xchain0_n92_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n71_α:
 jmp qword ptr [r12 + 80]
 xchain0_n71_β:
 jmp proc_d_ω
 xchain0_n72_α:
  .section .rodata
  .Lcall73_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5376]
 mov rdx, qword ptr [r12 + 5384]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 5392]
 mov rdx, qword ptr [r12 + 5400]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 5408]
 mov rdx, qword ptr [r12 + 5416]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall73_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 5312], rax
 mov qword ptr [r12 + 5320], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n76_α
xchain0_n72_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 5312], rax
 mov qword ptr [r12 + 5320], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n76_α
# IR_VAR_REF local
 xchain0_n73_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4624], rax
 mov qword ptr [r12 + 4632], rdx
 jmp xchain0_n77_α
 xchain0_n73_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n74_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4096], rax
 mov qword ptr [r12 + 4104], rdx
 jmp xchain0_n78_α
 xchain0_n74_β:
 jmp xchain0_n65_α
# IR_LIT_STRING
 xchain0_n75_α:
 mov qword ptr [r12 + 3200], 1
 mov rax, qword ptr [rip + .Lx138_0]
 mov qword ptr [r12 + 3208], rax
 jmp xchain0_n79_α
 xchain0_n75_β:
 jmp proc_d_ω
.Lx138_0:
 .quad .Lx138_0_s
.Lx138_0_s:
 .string "^"
# IR_VAR_REF local
 xchain0_n76_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5264], rax
 mov qword ptr [r12 + 5272], rdx
 jmp xchain0_n80_α
 xchain0_n76_β:
 jmp xchain0_n49_α
 xchain0_n77_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4704] -> [r12+4656]
 mov rax, qword ptr [r12 + 4704]
 mov qword ptr [r12 + 4656], rax
 mov rax, qword ptr [r12 + 4712]
 mov qword ptr [r12 + 4664], rax
# marshal arg1 = producer-box slot [r12+4608] -> [r12+4672]
 mov rax, qword ptr [r12 + 4608]
 mov qword ptr [r12 + 4672], rax
 mov rax, qword ptr [r12 + 4616]
 mov qword ptr [r12 + 4680], rax
# marshal arg2 = producer-box slot [r12+4624] -> [r12+4688]
 mov rax, qword ptr [r12 + 4624]
 mov qword ptr [r12 + 4688], rax
 mov rax, qword ptr [r12 + 4632]
 mov qword ptr [r12 + 4696], rax
  .section .rodata
  .Lrkfn142: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn142]
 lea rsi, [r12 + 4656]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4640], rax
 mov qword ptr [r12 + 4648], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain0_n81_α
 xchain0_n77_β:
 jmp proc_d_ω
 xchain0_n78_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4080] -> [r12+4048]
 mov rax, qword ptr [r12 + 4080]
 mov qword ptr [r12 + 4048], rax
 mov rax, qword ptr [r12 + 4088]
 mov qword ptr [r12 + 4056], rax
# marshal arg1 = producer-box slot [r12+4096] -> [r12+4064]
 mov rax, qword ptr [r12 + 4096]
 mov qword ptr [r12 + 4064], rax
 mov rax, qword ptr [r12 + 4104]
 mov qword ptr [r12 + 4072], rax
  .section .rodata
  .Lrkfn144: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn144]
 lea rsi, [r12 + 4048]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4032], rax
 mov qword ptr [r12 + 4040], rdx
 cmp eax, 99
 je xchain0_n65_α
 jmp xchain0_n82_α
 xchain0_n78_β:
 jmp xchain0_n65_α
# IR_VAR_REF local
 xchain0_n79_α:
 lea rdi, [r12 + 6576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3104], rax
 mov qword ptr [r12 + 3112], rdx
 jmp xchain0_n83_α
 xchain0_n79_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n80_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5280], rax
 mov qword ptr [r12 + 5288], rdx
 jmp xchain0_n84_α
 xchain0_n80_β:
 jmp xchain0_n49_α
# IR_LIT_STRING
 xchain0_n81_α:
 mov qword ptr [r12 + 4816], 1
 mov rax, qword ptr [rip + .Lx149_0]
 mov qword ptr [r12 + 4824], rax
 jmp xchain0_n85_α
 xchain0_n81_β:
 jmp proc_d_ω
.Lx149_0:
 .quad .Lx149_0_s
.Lx149_0_s:
 .string "*"
# IR_VAR_REF local
 xchain0_n82_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3520], rax
 mov qword ptr [r12 + 3528], rdx
 jmp xchain0_n86_α
 xchain0_n82_β:
 jmp xchain0_n65_α
# IR_VAR_REF local
 xchain0_n83_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 jmp xchain0_n87_α
 xchain0_n83_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n84_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5296], rax
 mov qword ptr [r12 + 5304], rdx
 jmp xchain0_n88_α
 xchain0_n84_β:
 jmp xchain0_n49_α
# IR_VAR_REF local
 xchain0_n85_α:
 lea rdi, [r12 + 6576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4720], rax
 mov qword ptr [r12 + 4728], rdx
 jmp xchain0_n89_α
 xchain0_n85_β:
 jmp proc_d_ω
# IR_LIT_STRING
 xchain0_n86_α:
 mov qword ptr [r12 + 4016], 1
 mov rax, qword ptr [rip + .Lx158_0]
 mov qword ptr [r12 + 4024], rax
 jmp xchain0_n90_α
 xchain0_n86_β:
 jmp proc_d_ω
.Lx158_0:
 .quad .Lx158_0_s
.Lx158_0_s:
 .string "/"
 xchain0_n87_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3200] -> [r12+3152]
 mov rax, qword ptr [r12 + 3200]
 mov qword ptr [r12 + 3152], rax
 mov rax, qword ptr [r12 + 3208]
 mov qword ptr [r12 + 3160], rax
# marshal arg1 = producer-box slot [r12+3104] -> [r12+3168]
 mov rax, qword ptr [r12 + 3104]
 mov qword ptr [r12 + 3168], rax
 mov rax, qword ptr [r12 + 3112]
 mov qword ptr [r12 + 3176], rax
# marshal arg2 = producer-box slot [r12+3120] -> [r12+3184]
 mov rax, qword ptr [r12 + 3120]
 mov qword ptr [r12 + 3184], rax
 mov rax, qword ptr [r12 + 3128]
 mov qword ptr [r12 + 3192], rax
  .section .rodata
  .Lrkfn160: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn160]
 lea rsi, [r12 + 3152]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
 cmp eax, 99
 je xchain0_n92_α
 jmp xchain0_n91_α
 xchain0_n87_β:
 jmp xchain0_n92_α
 xchain0_n88_α:
  .section .rodata
  .Lcall89_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5264]
 mov rdx, qword ptr [r12 + 5272]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 5280]
 mov rdx, qword ptr [r12 + 5288]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 5296]
 mov rdx, qword ptr [r12 + 5304]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall89_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 5200], rax
 mov qword ptr [r12 + 5208], rdx
 cmp eax, 99
 je xchain0_n72_β
 jmp xchain0_n93_α
xchain0_n88_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 5200], rax
 mov qword ptr [r12 + 5208], rdx
 cmp eax, 99
 je xchain0_n72_β
 jmp xchain0_n93_α
# IR_VAR_REF local
 xchain0_n89_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4736], rax
 mov qword ptr [r12 + 4744], rdx
 jmp xchain0_n94_α
 xchain0_n89_β:
 jmp proc_d_ω
# IR_LIT_STRING
 xchain0_n90_α:
 mov qword ptr [r12 + 3824], 1
 mov rax, qword ptr [rip + .Lx164_0]
 mov qword ptr [r12 + 3832], rax
 jmp xchain0_n95_α
 xchain0_n90_β:
 jmp proc_d_ω
.Lx164_0:
 .quad .Lx164_0_s
.Lx164_0_s:
 .string "-"
 xchain0_n91_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3088] -> [r12+3056]
 mov rax, qword ptr [r12 + 3088]
 mov qword ptr [r12 + 3056], rax
 mov rax, qword ptr [r12 + 3096]
 mov qword ptr [r12 + 3064], rax
# marshal arg1 = producer-box slot [r12+3136] -> [r12+3072]
 mov rax, qword ptr [r12 + 3136]
 mov qword ptr [r12 + 3072], rax
 mov rax, qword ptr [r12 + 3144]
 mov qword ptr [r12 + 3080], rax
  .section .rodata
  .Lrkfn166: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn166]
 lea rsi, [r12 + 3056]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3040], rax
 mov qword ptr [r12 + 3048], rdx
 cmp eax, 99
 je xchain0_n92_α
 jmp xchain0_n96_α
 xchain0_n91_β:
 jmp xchain0_n92_α
 xchain0_n92_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+2336]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 2344], rax
  .section .rodata
  .Lrkfn168: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn168]
 lea rsi, [r12 + 2336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain0_n97_α
 xchain0_n92_β:
 jmp proc_d_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n93_α:
 lea rax, [rip + xchain0_n20_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain0_n93_β:
 jmp proc_d_ω
 xchain0_n94_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4816] -> [r12+4768]
 mov rax, qword ptr [r12 + 4816]
 mov qword ptr [r12 + 4768], rax
 mov rax, qword ptr [r12 + 4824]
 mov qword ptr [r12 + 4776], rax
# marshal arg1 = producer-box slot [r12+4720] -> [r12+4784]
 mov rax, qword ptr [r12 + 4720]
 mov qword ptr [r12 + 4784], rax
 mov rax, qword ptr [r12 + 4728]
 mov qword ptr [r12 + 4792], rax
# marshal arg2 = producer-box slot [r12+4736] -> [r12+4800]
 mov rax, qword ptr [r12 + 4736]
 mov qword ptr [r12 + 4800], rax
 mov rax, qword ptr [r12 + 4744]
 mov qword ptr [r12 + 4808], rax
  .section .rodata
  .Lrkfn172: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn172]
 lea rsi, [r12 + 4768]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4752], rax
 mov qword ptr [r12 + 4760], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain0_n98_α
 xchain0_n94_β:
 jmp proc_d_ω
# IR_LIT_STRING
 xchain0_n95_α:
 mov qword ptr [r12 + 3632], 1
 mov rax, qword ptr [rip + .Lx173_0]
 mov qword ptr [r12 + 3640], rax
 jmp xchain0_n99_α
 xchain0_n95_β:
 jmp proc_d_ω
.Lx173_0:
 .quad .Lx173_0_s
.Lx173_0_s:
 .string "*"
# IR_VAR_REF local
 xchain0_n96_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 jmp xchain0_n100_α
 xchain0_n96_β:
 jmp xchain0_n92_α
# IR_VAR_REF local
 xchain0_n97_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 jmp xchain0_n101_α
 xchain0_n97_β:
 jmp xchain0_n114_α
 xchain0_n98_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4896] -> [r12+4848]
 mov rax, qword ptr [r12 + 4896]
 mov qword ptr [r12 + 4848], rax
 mov rax, qword ptr [r12 + 4904]
 mov qword ptr [r12 + 4856], rax
# marshal arg1 = producer-box slot [r12+4640] -> [r12+4864]
 mov rax, qword ptr [r12 + 4640]
 mov qword ptr [r12 + 4864], rax
 mov rax, qword ptr [r12 + 4648]
 mov qword ptr [r12 + 4872], rax
# marshal arg2 = producer-box slot [r12+4752] -> [r12+4880]
 mov rax, qword ptr [r12 + 4752]
 mov qword ptr [r12 + 4880], rax
 mov rax, qword ptr [r12 + 4760]
 mov qword ptr [r12 + 4888], rax
  .section .rodata
  .Lrkfn179: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn179]
 lea rsi, [r12 + 4848]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4832], rax
 mov qword ptr [r12 + 4840], rdx
 cmp eax, 99
 je xchain0_n39_α
 jmp xchain0_n102_α
 xchain0_n98_β:
 jmp xchain0_n39_α
# IR_VAR_REF local
 xchain0_n99_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3536], rax
 mov qword ptr [r12 + 3544], rdx
 jmp xchain0_n103_α
 xchain0_n99_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n100_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 jmp xchain0_n104_α
 xchain0_n100_β:
 jmp xchain0_n92_α
# IR_LIT_STRING
 xchain0_n101_α:
 mov qword ptr [r12 + 2304], 1
 mov rax, qword ptr [rip + .Lx184_0]
 mov qword ptr [r12 + 2312], rax
 jmp xchain0_n105_α
 xchain0_n101_β:
 jmp proc_d_ω
.Lx184_0:
 .quad .Lx184_0_s
.Lx184_0_s:
 .string "-"
 xchain0_n102_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4592] -> [r12+4560]
 mov rax, qword ptr [r12 + 4592]
 mov qword ptr [r12 + 4560], rax
 mov rax, qword ptr [r12 + 4600]
 mov qword ptr [r12 + 4568], rax
# marshal arg1 = producer-box slot [r12+4832] -> [r12+4576]
 mov rax, qword ptr [r12 + 4832]
 mov qword ptr [r12 + 4576], rax
 mov rax, qword ptr [r12 + 4840]
 mov qword ptr [r12 + 4584], rax
  .section .rodata
  .Lrkfn186: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn186]
 lea rsi, [r12 + 4560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4544], rax
 mov qword ptr [r12 + 4552], rdx
 cmp eax, 99
 je xchain0_n39_α
 jmp xchain0_n106_α
 xchain0_n102_β:
 jmp xchain0_n39_α
# IR_VAR_REF local
 xchain0_n103_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3552], rax
 mov qword ptr [r12 + 3560], rdx
 jmp xchain0_n107_α
 xchain0_n103_β:
 jmp proc_d_ω
 xchain0_n104_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3008] -> [r12+2976]
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 2976], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 2984], rax
# marshal arg1 = producer-box slot [r12+3024] -> [r12+2992]
 mov rax, qword ptr [r12 + 3024]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 3032]
 mov qword ptr [r12 + 3000], rax
  .section .rodata
  .Lrkfn190: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn190]
 lea rsi, [r12 + 2976]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2960], rax
 mov qword ptr [r12 + 2968], rdx
 cmp eax, 99
 je xchain0_n92_α
 jmp xchain0_n108_α
 xchain0_n104_β:
 jmp xchain0_n92_α
# IR_VAR_REF local
 xchain0_n105_α:
 lea rdi, [r12 + 6576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain0_n109_α
 xchain0_n105_β:
 jmp proc_d_ω
 xchain0_n106_α:
# IR_CUT
 jmp xchain0_n110_α
 xchain0_n106_β:
 jmp xchain0_n39_α
 xchain0_n107_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3632] -> [r12+3584]
 mov rax, qword ptr [r12 + 3632]
 mov qword ptr [r12 + 3584], rax
 mov rax, qword ptr [r12 + 3640]
 mov qword ptr [r12 + 3592], rax
# marshal arg1 = producer-box slot [r12+3536] -> [r12+3600]
 mov rax, qword ptr [r12 + 3536]
 mov qword ptr [r12 + 3600], rax
 mov rax, qword ptr [r12 + 3544]
 mov qword ptr [r12 + 3608], rax
# marshal arg2 = producer-box slot [r12+3552] -> [r12+3616]
 mov rax, qword ptr [r12 + 3552]
 mov qword ptr [r12 + 3616], rax
 mov rax, qword ptr [r12 + 3560]
 mov qword ptr [r12 + 3624], rax
  .section .rodata
  .Lrkfn195: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn195]
 lea rsi, [r12 + 3584]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3568], rax
 mov qword ptr [r12 + 3576], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain0_n111_α
 xchain0_n107_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n108_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 jmp xchain0_n112_α
 xchain0_n108_β:
 jmp xchain0_n92_α
 xchain0_n109_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2304] -> [r12+2272]
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 2272], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2280], rax
# marshal arg1 = producer-box slot [r12+2240] -> [r12+2288]
 mov rax, qword ptr [r12 + 2240]
 mov qword ptr [r12 + 2288], rax
 mov rax, qword ptr [r12 + 2248]
 mov qword ptr [r12 + 2296], rax
  .section .rodata
  .Lrkfn199: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn199]
 lea rsi, [r12 + 2272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 cmp eax, 99
 je xchain0_n114_α
 jmp xchain0_n113_α
 xchain0_n109_β:
 jmp xchain0_n114_α
# IR_VAR_REF local
 xchain0_n110_α:
 lea rdi, [r12 + 6576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4496], rax
 mov qword ptr [r12 + 4504], rdx
 jmp xchain0_n115_α
 xchain0_n110_β:
 jmp xchain0_n49_α
# IR_LIT_STRING
 xchain0_n111_α:
 mov qword ptr [r12 + 3744], 1
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [r12 + 3752], rax
 jmp xchain0_n116_α
 xchain0_n111_β:
 jmp proc_d_ω
.Lx202_0:
 .quad .Lx202_0_s
.Lx202_0_s:
 .string "*"
# IR_LIT_STRING
 xchain0_n112_α:
 mov qword ptr [r12 + 2944], 1
 mov rax, qword ptr [rip + .Lx203_0]
 mov qword ptr [r12 + 2952], rax
 jmp xchain0_n117_α
 xchain0_n112_β:
 jmp proc_d_ω
.Lx203_0:
 .quad .Lx203_0_s
.Lx203_0_s:
 .string "*"
 xchain0_n113_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2224] -> [r12+2192]
 mov rax, qword ptr [r12 + 2224]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 2200], rax
# marshal arg1 = producer-box slot [r12+2256] -> [r12+2208]
 mov rax, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 2208], rax
 mov rax, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2216], rax
  .section .rodata
  .Lrkfn205: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn205]
 lea rsi, [r12 + 2192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 cmp eax, 99
 je xchain0_n114_α
 jmp xchain0_n118_α
 xchain0_n113_β:
 jmp xchain0_n114_α
 xchain0_n114_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+1824]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1832], rax
  .section .rodata
  .Lrkfn207: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn207]
 lea rsi, [r12 + 1824]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain0_n119_α
 xchain0_n114_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n115_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4512], rax
 mov qword ptr [r12 + 4520], rdx
 jmp xchain0_n120_α
 xchain0_n115_β:
 jmp xchain0_n49_α
# IR_VAR_REF local
 xchain0_n116_α:
 lea rdi, [r12 + 6576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3648], rax
 mov qword ptr [r12 + 3656], rdx
 jmp xchain0_n121_α
 xchain0_n116_β:
 jmp proc_d_ω
# IR_LIT_STRING
 xchain0_n117_α:
 mov qword ptr [r12 + 2752], 1
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [r12 + 2760], rax
 jmp xchain0_n122_α
 xchain0_n117_β:
 jmp proc_d_ω
.Lx212_0:
 .quad .Lx212_0_s
.Lx212_0_s:
 .string "*"
# IR_VAR_REF local
 xchain0_n118_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain0_n123_α
 xchain0_n118_β:
 jmp xchain0_n114_α
# IR_VAR_REF local
 xchain0_n119_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain0_n124_α
 xchain0_n119_β:
 jmp xchain0_n140_α
# IR_VAR_REF local
 xchain0_n120_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4528], rax
 mov qword ptr [r12 + 4536], rdx
 jmp xchain0_n125_α
 xchain0_n120_β:
 jmp xchain0_n49_α
# IR_VAR_REF local
 xchain0_n121_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3664], rax
 mov qword ptr [r12 + 3672], rdx
 jmp xchain0_n126_α
 xchain0_n121_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n122_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2656], rax
 mov qword ptr [r12 + 2664], rdx
 jmp xchain0_n127_α
 xchain0_n122_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n123_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 jmp xchain0_n128_α
 xchain0_n123_β:
 jmp xchain0_n114_α
# IR_LIT_STRING
 xchain0_n124_α:
 mov qword ptr [r12 + 1792], 1
 mov rax, qword ptr [rip + .Lx225_0]
 mov qword ptr [r12 + 1800], rax
 jmp xchain0_n129_α
 xchain0_n124_β:
 jmp proc_d_ω
.Lx225_0:
 .quad .Lx225_0_s
.Lx225_0_s:
 .string "exp"
 xchain0_n125_α:
  .section .rodata
  .Lcall126_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4496]
 mov rdx, qword ptr [r12 + 4504]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 4512]
 mov rdx, qword ptr [r12 + 4520]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 4528]
 mov rdx, qword ptr [r12 + 4536]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall126_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 4432], rax
 mov qword ptr [r12 + 4440], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n130_α
xchain0_n125_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 4432], rax
 mov qword ptr [r12 + 4440], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n130_α
 xchain0_n126_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3744] -> [r12+3696]
 mov rax, qword ptr [r12 + 3744]
 mov qword ptr [r12 + 3696], rax
 mov rax, qword ptr [r12 + 3752]
 mov qword ptr [r12 + 3704], rax
# marshal arg1 = producer-box slot [r12+3648] -> [r12+3712]
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 3712], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 3720], rax
# marshal arg2 = producer-box slot [r12+3664] -> [r12+3728]
 mov rax, qword ptr [r12 + 3664]
 mov qword ptr [r12 + 3728], rax
 mov rax, qword ptr [r12 + 3672]
 mov qword ptr [r12 + 3736], rax
  .section .rodata
  .Lrkfn228: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn228]
 lea rsi, [r12 + 3696]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3680], rax
 mov qword ptr [r12 + 3688], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain0_n131_α
 xchain0_n126_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n127_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 jmp xchain0_n132_α
 xchain0_n127_β:
 jmp proc_d_ω
 xchain0_n128_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2144] -> [r12+2112]
 mov rax, qword ptr [r12 + 2144]
 mov qword ptr [r12 + 2112], rax
 mov rax, qword ptr [r12 + 2152]
 mov qword ptr [r12 + 2120], rax
# marshal arg1 = producer-box slot [r12+2160] -> [r12+2128]
 mov rax, qword ptr [r12 + 2160]
 mov qword ptr [r12 + 2128], rax
 mov rax, qword ptr [r12 + 2168]
 mov qword ptr [r12 + 2136], rax
  .section .rodata
  .Lrkfn232: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn232]
 lea rsi, [r12 + 2112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 cmp eax, 99
 je xchain0_n114_α
 jmp xchain0_n133_α
 xchain0_n128_β:
 jmp xchain0_n114_α
# IR_VAR_REF local
 xchain0_n129_α:
 lea rdi, [r12 + 6576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain0_n134_α
 xchain0_n129_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n130_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4384], rax
 mov qword ptr [r12 + 4392], rdx
 jmp xchain0_n135_α
 xchain0_n130_β:
 jmp xchain0_n49_α
 xchain0_n131_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3824] -> [r12+3776]
 mov rax, qword ptr [r12 + 3824]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 3832]
 mov qword ptr [r12 + 3784], rax
# marshal arg1 = producer-box slot [r12+3568] -> [r12+3792]
 mov rax, qword ptr [r12 + 3568]
 mov qword ptr [r12 + 3792], rax
 mov rax, qword ptr [r12 + 3576]
 mov qword ptr [r12 + 3800], rax
# marshal arg2 = producer-box slot [r12+3680] -> [r12+3808]
 mov rax, qword ptr [r12 + 3680]
 mov qword ptr [r12 + 3808], rax
 mov rax, qword ptr [r12 + 3688]
 mov qword ptr [r12 + 3816], rax
  .section .rodata
  .Lrkfn238: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn238]
 lea rsi, [r12 + 3776]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3760], rax
 mov qword ptr [r12 + 3768], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain0_n136_α
 xchain0_n131_β:
 jmp proc_d_ω
 xchain0_n132_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2752] -> [r12+2704]
 mov rax, qword ptr [r12 + 2752]
 mov qword ptr [r12 + 2704], rax
 mov rax, qword ptr [r12 + 2760]
 mov qword ptr [r12 + 2712], rax
# marshal arg1 = producer-box slot [r12+2656] -> [r12+2720]
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 2720], rax
 mov rax, qword ptr [r12 + 2664]
 mov qword ptr [r12 + 2728], rax
# marshal arg2 = producer-box slot [r12+2672] -> [r12+2736]
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 2744], rax
  .section .rodata
  .Lrkfn240: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn240]
 lea rsi, [r12 + 2704]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain0_n137_α
 xchain0_n132_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n133_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain0_n138_α
 xchain0_n133_β:
 jmp xchain0_n114_α
 xchain0_n134_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1792] -> [r12+1760]
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1768], rax
# marshal arg1 = producer-box slot [r12+1728] -> [r12+1776]
 mov rax, qword ptr [r12 + 1728]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 1784], rax
  .section .rodata
  .Lrkfn244: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn244]
 lea rsi, [r12 + 1760]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 cmp eax, 99
 je xchain0_n140_α
 jmp xchain0_n139_α
 xchain0_n134_β:
 jmp xchain0_n140_α
# IR_VAR_REF local
 xchain0_n135_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4400], rax
 mov qword ptr [r12 + 4408], rdx
 jmp xchain0_n141_α
 xchain0_n135_β:
 jmp xchain0_n49_α
# IR_LIT_STRING
 xchain0_n136_α:
 mov qword ptr [r12 + 3936], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [r12 + 3944], rax
 jmp xchain0_n142_α
 xchain0_n136_β:
 jmp proc_d_ω
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "^"
# IR_LIT_STRING
 xchain0_n137_α:
 mov qword ptr [r12 + 2864], 1
 mov rax, qword ptr [rip + .Lx248_0]
 mov qword ptr [r12 + 2872], rax
 jmp xchain0_n143_α
 xchain0_n137_β:
 jmp proc_d_ω
.Lx248_0:
 .quad .Lx248_0_s
.Lx248_0_s:
 .string "^"
# IR_LIT_STRING
 xchain0_n138_α:
 mov qword ptr [r12 + 2080], 1
 mov rax, qword ptr [rip + .Lx249_0]
 mov qword ptr [r12 + 2088], rax
 jmp xchain0_n144_α
 xchain0_n138_β:
 jmp proc_d_ω
.Lx249_0:
 .quad .Lx249_0_s
.Lx249_0_s:
 .string "-"
 xchain0_n139_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1712] -> [r12+1680]
 mov rax, qword ptr [r12 + 1712]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 1688], rax
# marshal arg1 = producer-box slot [r12+1744] -> [r12+1696]
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 1704], rax
  .section .rodata
  .Lrkfn251: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn251]
 lea rsi, [r12 + 1680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 cmp eax, 99
 je xchain0_n140_α
 jmp xchain0_n145_α
 xchain0_n139_β:
 jmp xchain0_n140_α
 xchain0_n140_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+1216]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1224], rax
  .section .rodata
  .Lrkfn253: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn253]
 lea rsi, [r12 + 1216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain0_n146_α
 xchain0_n140_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n141_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4416], rax
 mov qword ptr [r12 + 4424], rdx
 jmp xchain0_n147_α
 xchain0_n141_β:
 jmp xchain0_n49_α
# IR_VAR_REF local
 xchain0_n142_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3840], rax
 mov qword ptr [r12 + 3848], rdx
 jmp xchain0_n148_α
 xchain0_n142_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n143_α:
 lea rdi, [r12 + 6576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 jmp xchain0_n149_α
 xchain0_n143_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n144_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 jmp xchain0_n150_α
 xchain0_n144_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain0_n145_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain0_n151_α
 xchain0_n145_β:
 jmp xchain0_n140_α
# IR_VAR_REF local
 xchain0_n146_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain0_n152_α
 xchain0_n146_β:
 jmp xchain0_n169_α
 xchain0_n147_α:
  .section .rodata
  .Lcall148_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4384]
 mov rdx, qword ptr [r12 + 4392]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 4400]
 mov rdx, qword ptr [r12 + 4408]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 4416]
 mov rdx, qword ptr [r12 + 4424]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall148_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 cmp eax, 99
 je xchain0_n125_β
 jmp xchain0_n153_α
xchain0_n147_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 cmp eax, 99
 je xchain0_n125_β
 jmp xchain0_n153_α
# IR_LIT_INTEGER
 xchain0_n148_α:
 mov qword ptr [r12 + 3856], 6
 mov rax, qword ptr [rip + .Lx267_0]
 mov qword ptr [r12 + 3864], rax
 jmp xchain0_n154_α
 xchain0_n148_β:
 jmp proc_d_ω
.Lx267_0:
 .quad 2
# IR_VAR_REF local
 xchain0_n149_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2784], rax
 mov qword ptr [r12 + 2792], rdx
 jmp xchain0_n155_α
 xchain0_n149_β:
 jmp proc_d_ω
 xchain0_n150_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2080] -> [r12+2048]
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2056], rax
# marshal arg1 = producer-box slot [r12+2016] -> [r12+2064]
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 2072], rax
  .section .rodata
  .Lrkfn271: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn271]
 lea rsi, [r12 + 2048]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 cmp eax, 99
 je xchain0_n114_α
 jmp xchain0_n156_α
 xchain0_n150_β:
 jmp xchain0_n114_α
# IR_VAR_REF local
 xchain0_n151_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain0_n157_α
 xchain0_n151_β:
 jmp xchain0_n140_α
# IR_LIT_STRING
 xchain0_n152_α:
 mov qword ptr [r12 + 1184], 1
 mov rax, qword ptr [rip + .Lx274_0]
 mov qword ptr [r12 + 1192], rax
 jmp xchain0_n158_α
 xchain0_n152_β:
 jmp proc_d_ω
.Lx274_0:
 .quad .Lx274_0_s
.Lx274_0_s:
 .string "log"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n153_α:
 lea rax, [rip + xchain0_n39_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain0_n153_β:
 jmp proc_d_ω
 xchain0_n154_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3936] -> [r12+3888]
 mov rax, qword ptr [r12 + 3936]
 mov qword ptr [r12 + 3888], rax
 mov rax, qword ptr [r12 + 3944]
 mov qword ptr [r12 + 3896], rax
# marshal arg1 = producer-box slot [r12+3840] -> [r12+3904]
 mov rax, qword ptr [r12 + 3840]
 mov qword ptr [r12 + 3904], rax
 mov rax, qword ptr [r12 + 3848]
 mov qword ptr [r12 + 3912], rax
# marshal arg2 = producer-box slot [r12+3856] -> [r12+3920]
 mov rax, qword ptr [r12 + 3856]
 mov qword ptr [r12 + 3920], rax
 mov rax, qword ptr [r12 + 3864]
 mov qword ptr [r12 + 3928], rax
  .section .rodata
  .Lrkfn278: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn278]
 lea rsi, [r12 + 3888]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3872], rax
 mov qword ptr [r12 + 3880], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain0_n159_α
 xchain0_n154_β:
 jmp proc_d_ω
 xchain0_n155_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2864] -> [r12+2816]
 mov rax, qword ptr [r12 + 2864]
 mov qword ptr [r12 + 2816], rax
 mov rax, qword ptr [r12 + 2872]
 mov qword ptr [r12 + 2824], rax
# marshal arg1 = producer-box slot [r12+2768] -> [r12+2832]
 mov rax, qword ptr [r12 + 2768]
 mov qword ptr [r12 + 2832], rax
 mov rax, qword ptr [r12 + 2776]
 mov qword ptr [r12 + 2840], rax
# marshal arg2 = producer-box slot [r12+2784] -> [r12+2848]
 mov rax, qword ptr [r12 + 2784]
 mov qword ptr [r12 + 2848], rax
 mov rax, qword ptr [r12 + 2792]
 mov qword ptr [r12 + 2856], rax
  .section .rodata
  .Lrkfn280: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn280]
 lea rsi, [r12 + 2816]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2800], rax
 mov qword ptr [r12 + 2808], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain0_n160_α
 xchain0_n155_β:
 jmp proc_d_ω
 xchain0_n156_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2000] -> [r12+1968]
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 1976], rax
# marshal arg1 = producer-box slot [r12+2032] -> [r12+1984]
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 1992], rax
  .section .rodata
  .Lrkfn282: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn282]
 lea rsi, [r12 + 1968]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 cmp eax, 99
 je xchain0_n114_α
 jmp xchain0_n161_α
 xchain0_n156_β:
 jmp xchain0_n114_α
 xchain0_n157_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1632] -> [r12+1600]
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1608], rax
# marshal arg1 = producer-box slot [r12+1648] -> [r12+1616]
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 1624], rax
  .section .rodata
  .Lrkfn284: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn284]
 lea rsi, [r12 + 1600]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 cmp eax, 99
 je xchain0_n140_α
 jmp xchain0_n162_α
 xchain0_n157_β:
 jmp xchain0_n140_α
# IR_VAR_REF local
 xchain0_n158_α:
 lea rdi, [r12 + 6576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain0_n163_α
 xchain0_n158_β:
 jmp proc_d_ω
 xchain0_n159_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4016] -> [r12+3968]
 mov rax, qword ptr [r12 + 4016]
 mov qword ptr [r12 + 3968], rax
 mov rax, qword ptr [r12 + 4024]
 mov qword ptr [r12 + 3976], rax
# marshal arg1 = producer-box slot [r12+3760] -> [r12+3984]
 mov rax, qword ptr [r12 + 3760]
 mov qword ptr [r12 + 3984], rax
 mov rax, qword ptr [r12 + 3768]
 mov qword ptr [r12 + 3992], rax
# marshal arg2 = producer-box slot [r12+3872] -> [r12+4000]
 mov rax, qword ptr [r12 + 3872]
 mov qword ptr [r12 + 4000], rax
 mov rax, qword ptr [r12 + 3880]
 mov qword ptr [r12 + 4008], rax
  .section .rodata
  .Lrkfn288: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn288]
 lea rsi, [r12 + 3968]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3952], rax
 mov qword ptr [r12 + 3960], rdx
 cmp eax, 99
 je xchain0_n65_α
 jmp xchain0_n164_α
 xchain0_n159_β:
 jmp xchain0_n65_α
 xchain0_n160_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2944] -> [r12+2896]
 mov rax, qword ptr [r12 + 2944]
 mov qword ptr [r12 + 2896], rax
 mov rax, qword ptr [r12 + 2952]
 mov qword ptr [r12 + 2904], rax
# marshal arg1 = producer-box slot [r12+2688] -> [r12+2912]
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 2912], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 2920], rax
# marshal arg2 = producer-box slot [r12+2800] -> [r12+2928]
 mov rax, qword ptr [r12 + 2800]
 mov qword ptr [r12 + 2928], rax
 mov rax, qword ptr [r12 + 2808]
 mov qword ptr [r12 + 2936], rax
  .section .rodata
  .Lrkfn290: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn290]
 lea rsi, [r12 + 2896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2880], rax
 mov qword ptr [r12 + 2888], rdx
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
# IR_VAR_REF local
 xchain0_n162_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain0_n167_α
 xchain0_n162_β:
 jmp xchain0_n140_α
 xchain0_n163_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1184] -> [r12+1152]
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1160], rax
# marshal arg1 = producer-box slot [r12+1120] -> [r12+1168]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1176], rax
  .section .rodata
  .Lrkfn295: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn295]
 lea rsi, [r12 + 1152]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 cmp eax, 99
 je xchain0_n169_α
 jmp xchain0_n168_α
 xchain0_n163_β:
 jmp xchain0_n169_α
 xchain0_n164_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3520] -> [r12+3488]
 mov rax, qword ptr [r12 + 3520]
 mov qword ptr [r12 + 3488], rax
 mov rax, qword ptr [r12 + 3528]
 mov qword ptr [r12 + 3496], rax
# marshal arg1 = producer-box slot [r12+3952] -> [r12+3504]
 mov rax, qword ptr [r12 + 3952]
 mov qword ptr [r12 + 3504], rax
 mov rax, qword ptr [r12 + 3960]
 mov qword ptr [r12 + 3512], rax
  .section .rodata
  .Lrkfn297: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn297]
 lea rsi, [r12 + 3488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], rdx
 cmp eax, 99
 je xchain0_n65_α
 jmp xchain0_n170_α
 xchain0_n164_β:
 jmp xchain0_n65_α
 xchain0_n165_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2640] -> [r12+2608]
 mov rax, qword ptr [r12 + 2640]
 mov qword ptr [r12 + 2608], rax
 mov rax, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 2616], rax
# marshal arg1 = producer-box slot [r12+2880] -> [r12+2624]
 mov rax, qword ptr [r12 + 2880]
 mov qword ptr [r12 + 2624], rax
 mov rax, qword ptr [r12 + 2888]
 mov qword ptr [r12 + 2632], rax
  .section .rodata
  .Lrkfn299: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn299]
 lea rsi, [r12 + 2608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je xchain0_n92_α
 jmp xchain0_n171_α
 xchain0_n165_β:
 jmp xchain0_n92_α
# IR_VAR_REF local
 xchain0_n166_α:
 lea rdi, [r12 + 6576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain0_n172_α
 xchain0_n166_β:
 jmp xchain0_n49_α
# IR_LIT_STRING
 xchain0_n167_α:
 mov qword ptr [r12 + 1568], 1
 mov rax, qword ptr [rip + .Lx302_0]
 mov qword ptr [r12 + 1576], rax
 jmp xchain0_n173_α
 xchain0_n167_β:
 jmp proc_d_ω
.Lx302_0:
 .quad .Lx302_0_s
.Lx302_0_s:
 .string "*"
 xchain0_n168_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1104] -> [r12+1072]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = producer-box slot [r12+1136] -> [r12+1088]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn304: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn304]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain0_n169_α
 jmp xchain0_n174_α
 xchain0_n168_β:
 jmp xchain0_n169_α
 xchain0_n169_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+672]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn306: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn306]
 lea rsi, [r12 + 672]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain0_n175_α
 xchain0_n169_β:
 jmp proc_d_ω
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
# IR_VAR_REF local
 xchain0_n172_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain0_n178_α
 xchain0_n172_β:
 jmp xchain0_n49_α
# IR_LIT_STRING
 xchain0_n173_α:
 mov qword ptr [r12 + 1472], 1
 mov rax, qword ptr [rip + .Lx311_0]
 mov qword ptr [r12 + 1480], rax
 jmp xchain0_n179_α
 xchain0_n173_β:
 jmp proc_d_ω
.Lx311_0:
 .quad .Lx311_0_s
.Lx311_0_s:
 .string "exp"
# IR_VAR_REF local
 xchain0_n174_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain0_n180_α
 xchain0_n174_β:
 jmp xchain0_n169_α
# IR_VAR_REF local
 xchain0_n175_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain0_n181_α
 xchain0_n175_β:
 jmp xchain0_n194_α
# IR_VAR_REF local
 xchain0_n176_α:
 lea rdi, [r12 + 6576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3424], rax
 mov qword ptr [r12 + 3432], rdx
 jmp xchain0_n182_α
 xchain0_n176_β:
 jmp xchain0_n49_α
