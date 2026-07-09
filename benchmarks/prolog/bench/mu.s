  .intel_syntax noprefix
  .text
  .globl proc_rule_α
proc_rule_α:
#=======================================================================================================================
    .global proc_rule_α
    .global proc_rule_β
    .global proc_rule_γ
    .global proc_rule_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_rule_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1520], rax
 pop rsi
proc_rule_α_body:
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
 je proc_rule_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_rule_ω
# IR_VAR_REF local
 xchain0_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [r12 + 1504], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
.Lx5_0:
 .quad 1
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1488] -> [r12+1456]
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 1464], rax
# marshal arg1 = producer-box slot [r12+1504] -> [r12+1472]
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1480], rax
  .section .rodata
  .Lrkfn7: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn7]
 lea rsi, [r12 + 1456]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+1184]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lrkfn11: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn11]
 lea rsi, [r12 + 1184]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je proc_rule_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_rule_ω
# IR_VAR_REF local
 xchain0_n6_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n14_α
 xchain0_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1408] -> [r12+1376]
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1384], rax
# marshal arg1 = producer-box slot [r12+1424] -> [r12+1392]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1400], rax
  .section .rodata
  .Lrkfn17: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn17]
 lea rsi, [r12 + 1376]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n9_α:
 mov qword ptr [r12 + 1152], 6
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n14_α
.Lx18_0:
 .quad 2
# IR_VAR_REF local
 xchain0_n10_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n5_α
 xchain0_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1136] -> [r12+1104]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1112], rax
# marshal arg1 = producer-box slot [r12+1152] -> [r12+1120]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rax
  .section .rodata
  .Lrkfn22: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn22]
 lea rsi, [r12 + 1104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n12_α:
 lea rdi, [r12 + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n13_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n14_α
 xchain0_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+832]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn28: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn28]
 lea rsi, [r12 + 832]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je proc_rule_ω
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp proc_rule_ω
 xchain0_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1328] -> [r12+1296]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1304], rax
# marshal arg1 = producer-box slot [r12+1344] -> [r12+1312]
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1320], rax
  .section .rodata
  .Lrkfn30: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn30]
 lea rsi, [r12 + 1296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n16_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain0_n19_α
 xchain0_n16_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n17_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain0_n20_α
 xchain0_n17_β:
 jmp xchain0_n27_α
# IR_VAR_REF local
 xchain0_n18_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain0_n21_α
 xchain0_n18_β:
 jmp xchain0_n5_α
 xchain0_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1056] -> [r12+1024]
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1032], rax
# marshal arg1 = producer-box slot [r12+1072] -> [r12+1040]
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1048], rax
  .section .rodata
  .Lrkfn38: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 1024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n22_α
 xchain0_n19_β:
 jmp xchain0_n14_α
# IR_LIT_INTEGER
 xchain0_n20_α:
 mov qword ptr [r12 + 800], 6
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp xchain0_n27_α
.Lx39_0:
 .quad 3
# IR_VAR_REF local
 xchain0_n21_α:
 lea rdi, [r12 + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n22_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp xchain0_n14_α
 xchain0_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+784] -> [r12+752]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 760], rax
# marshal arg1 = producer-box slot [r12+800] -> [r12+768]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 776], rax
  .section .rodata
  .Lrkfn45: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn45]
 lea rsi, [r12 + 752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n27_α
 xchain0_n24_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR_REF local
 xchain0_n25_α:
 lea rdi, [r12 + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain0_n29_α
 xchain0_n25_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n26_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain0_n30_α
 xchain0_n26_β:
 jmp xchain0_n27_α
 xchain0_n27_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+480]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn52: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn52]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je proc_rule_ω
 jmp xchain0_n31_α
 xchain0_n27_β:
 jmp proc_rule_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n28_α:
 lea rax, [rip + xchain0_n24_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_rule_γ
 xchain0_n28_β:
 jmp proc_rule_ω
 xchain0_n29_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+976] -> [r12+944]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 952], rax
# marshal arg1 = producer-box slot [r12+992] -> [r12+960]
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 968], rax
  .section .rodata
  .Lrkfn56: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn56]
 lea rsi, [r12 + 944]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n33_α
 xchain0_n29_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n30_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain0_n34_α
 xchain0_n30_β:
 jmp xchain0_n27_α
# IR_VAR_REF local
 xchain0_n31_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n35_α
 xchain0_n31_β:
 jmp xchain0_n42_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n32_α:
 jmp qword ptr [r12 + 80]
 xchain0_n32_β:
 jmp proc_rule_ω
# IR_VAR_REF local
 xchain0_n33_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain0_n36_α
 xchain0_n33_β:
 jmp xchain0_n14_α
 xchain0_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+704] -> [r12+672]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 680], rax
# marshal arg1 = producer-box slot [r12+720] -> [r12+688]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn66: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn66]
 lea rsi, [r12 + 672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n37_α
 xchain0_n34_β:
 jmp xchain0_n27_α
# IR_LIT_INTEGER
 xchain0_n35_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain0_n38_α
 xchain0_n35_β:
 jmp xchain0_n42_α
.Lx67_0:
 .quad 4
# IR_VAR_REF local
 xchain0_n36_α:
 lea rdi, [r12 + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain0_n39_α
 xchain0_n36_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n37_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain0_n40_α
 xchain0_n37_β:
 jmp xchain0_n27_α
 xchain0_n38_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+432] -> [r12+400]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [r12+448] -> [r12+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn73: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn73]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain0_n42_α
 jmp xchain0_n41_α
 xchain0_n38_β:
 jmp xchain0_n42_α
 xchain0_n39_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR_REF local
 xchain0_n40_α:
 lea rdi, [r12 + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain0_n44_α
 xchain0_n40_β:
 jmp xchain0_n27_α
# IR_VAR_REF local
 xchain0_n41_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n45_α
 xchain0_n41_β:
 jmp xchain0_n42_α
 xchain0_n42_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn80: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn80]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_rule_ω
 jmp proc_rule_ω
 xchain0_n42_β:
 jmp proc_rule_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n43_α:
 lea rax, [rip + xchain0_n39_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_rule_γ
 xchain0_n43_β:
 jmp proc_rule_ω
 xchain0_n44_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+624] -> [r12+592]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 600], rax
# marshal arg1 = producer-box slot [r12+640] -> [r12+608]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn84: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn84]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n46_α
 xchain0_n44_β:
 jmp xchain0_n27_α
# IR_VAR_REF local
 xchain0_n45_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n47_α
 xchain0_n45_β:
 jmp xchain0_n42_α
# IR_VAR_REF local
 xchain0_n46_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain0_n48_α
 xchain0_n46_β:
 jmp xchain0_n27_α
 xchain0_n47_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+352] -> [r12+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [r12+368] -> [r12+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn90: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn90]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain0_n42_α
 jmp xchain0_n49_α
 xchain0_n47_β:
 jmp xchain0_n42_α
# IR_VAR_REF local
 xchain0_n48_α:
 lea rdi, [r12 + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n50_α
 xchain0_n48_β:
 jmp xchain0_n27_α
# IR_VAR_REF local
 xchain0_n49_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain0_n51_α
 xchain0_n49_β:
 jmp xchain0_n42_α
 xchain0_n50_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR_REF local
 xchain0_n51_α:
 lea rdi, [r12 + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n53_α
 xchain0_n51_β:
 jmp xchain0_n42_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n52_α:
 lea rax, [rip + xchain0_n50_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_rule_γ
 xchain0_n52_β:
 jmp proc_rule_ω
 xchain0_n53_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+272] -> [r12+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [r12+288] -> [r12+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn101: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn101]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain0_n42_α
 jmp xchain0_n54_α
 xchain0_n53_β:
 jmp xchain0_n42_α
# IR_VAR_REF local
 xchain0_n54_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain0_n55_α
 xchain0_n54_β:
 jmp xchain0_n42_α
# IR_VAR_REF local
 xchain0_n55_α:
 lea rdi, [r12 + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n56_α
 xchain0_n55_β:
 jmp xchain0_n42_α
 xchain0_n56_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n57_α:
 lea rax, [rip + xchain0_n56_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_rule_γ
 xchain0_n57_β:
 jmp proc_rule_ω
proc_rule_β:
jmp xchain0_n32_α
proc_rule_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1520]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_rule_ω:
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
  .globl proc_rule4_α
proc_rule4_α:
#=======================================================================================================================
    .global proc_rule4_α
    .global proc_rule4_β
    .global proc_rule4_γ
    .global proc_rule4_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_rule4_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 944], rax
 pop rsi
proc_rule4_α_body:
 xchain109_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn111: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn111]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_rule4_ω
 jmp xchain109_n1_α
 xchain109_n0_β:
 jmp proc_rule4_ω
# IR_VAR_REF local
 xchain109_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain109_n2_α
 xchain109_n1_β:
 jmp xchain109_n10_α
# IR_LIT_STRING
 xchain109_n2_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx114_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain109_n3_α
 xchain109_n2_β:
 jmp proc_rule4_ω
.Lx114_0:
 .quad .Lx114_0_s
.Lx114_0_s:
 .string "."
# IR_LIT_STRING
 xchain109_n3_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx115_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain109_n4_α
 xchain109_n3_β:
 jmp proc_rule4_ω
.Lx115_0:
 .quad .Lx115_0_s
.Lx115_0_s:
 .string "u"
# IR_LIT_STRING
 xchain109_n4_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx116_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain109_n5_α
 xchain109_n4_β:
 jmp proc_rule4_ω
.Lx116_0:
 .quad .Lx116_0_s
.Lx116_0_s:
 .string "."
# IR_LIT_STRING
 xchain109_n5_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx117_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain109_n6_α
 xchain109_n5_β:
 jmp proc_rule4_ω
.Lx117_0:
 .quad .Lx117_0_s
.Lx117_0_s:
 .string "u"
# IR_VAR_REF local
 xchain109_n6_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain109_n7_α
 xchain109_n6_β:
 jmp proc_rule4_ω
 xchain109_n7_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+832] -> [r12+784]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 792], rax
# marshal arg1 = producer-box slot [r12+752] -> [r12+800]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 808], rax
# marshal arg2 = producer-box slot [r12+736] -> [r12+816]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn121: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn121]
 lea rsi, [r12 + 784]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je proc_rule4_ω
 jmp xchain109_n8_α
 xchain109_n7_β:
 jmp proc_rule4_ω
 xchain109_n8_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+928] -> [r12+880]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 888], rax
# marshal arg1 = producer-box slot [r12+848] -> [r12+896]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 904], rax
# marshal arg2 = producer-box slot [r12+768] -> [r12+912]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 920], rax
  .section .rodata
  .Lrkfn123: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn123]
 lea rsi, [r12 + 880]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain109_n10_α
 jmp xchain109_n9_α
 xchain109_n8_β:
 jmp xchain109_n10_α
 xchain109_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+720] -> [r12+688]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 696], rax
# marshal arg1 = producer-box slot [r12+864] -> [r12+704]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 712], rax
  .section .rodata
  .Lrkfn125: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn125]
 lea rsi, [r12 + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je xchain109_n10_α
 jmp xchain109_n11_α
 xchain109_n9_β:
 jmp xchain109_n10_α
 xchain109_n10_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+576]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn127: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn127]
 lea rsi, [r12 + 576]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je proc_rule4_ω
 jmp xchain109_n12_α
 xchain109_n10_β:
 jmp proc_rule4_ω
# IR_VAR_REF local
 xchain109_n11_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain109_n13_α
 xchain109_n11_β:
 jmp xchain109_n10_α
# IR_VAR_REF local
 xchain109_n12_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain109_n14_α
 xchain109_n12_β:
 jmp xchain109_n22_α
# IR_VAR_REF local
 xchain109_n13_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain109_n15_α
 xchain109_n13_β:
 jmp xchain109_n10_α
# IR_LIT_STRING
 xchain109_n14_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx134_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain109_n16_α
 xchain109_n14_β:
 jmp proc_rule4_ω
.Lx134_0:
 .quad .Lx134_0_s
.Lx134_0_s:
 .string "."
 xchain109_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+640] -> [r12+608]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 616], rax
# marshal arg1 = producer-box slot [r12+656] -> [r12+624]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lrkfn136: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn136]
 lea rsi, [r12 + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain109_n10_α
 jmp xchain109_n17_α
 xchain109_n15_β:
 jmp xchain109_n10_α
# IR_VAR_REF local
 xchain109_n16_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain109_n18_α
 xchain109_n16_β:
 jmp proc_rule4_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain109_n17_α:
 lea rax, [rip + xchain109_n10_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_rule4_γ
 xchain109_n17_β:
 jmp proc_rule4_ω
# IR_VAR_REF local
 xchain109_n18_α:
 lea rdi, [r12 + 960]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain109_n20_α
 xchain109_n18_β:
 jmp proc_rule4_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain109_n19_α:
 jmp qword ptr [r12 + 64]
 xchain109_n19_β:
 jmp proc_rule4_ω
 xchain109_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+544] -> [r12+496]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = producer-box slot [r12+464] -> [r12+512]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 520], rax
# marshal arg2 = producer-box slot [r12+448] -> [r12+528]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn146: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn146]
 lea rsi, [r12 + 496]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain109_n22_α
 jmp xchain109_n21_α
 xchain109_n20_β:
 jmp xchain109_n22_α
 xchain109_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+432] -> [r12+400]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [r12+480] -> [r12+416]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn148: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn148]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain109_n22_α
 jmp xchain109_n23_α
 xchain109_n21_β:
 jmp xchain109_n22_α
 xchain109_n22_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn150: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn150]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_rule4_ω
 jmp proc_rule4_ω
 xchain109_n22_β:
 jmp proc_rule4_ω
# IR_VAR_REF local
 xchain109_n23_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain109_n24_α
 xchain109_n23_β:
 jmp xchain109_n22_α
# IR_LIT_STRING
 xchain109_n24_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx153_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain109_n25_α
 xchain109_n24_β:
 jmp proc_rule4_ω
.Lx153_0:
 .quad .Lx153_0_s
.Lx153_0_s:
 .string "."
# IR_VAR_REF local
 xchain109_n25_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain109_n26_α
 xchain109_n25_β:
 jmp proc_rule4_ω
# IR_VAR_REF local
 xchain109_n26_α:
 lea rdi, [r12 + 976]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain109_n27_α
 xchain109_n26_β:
 jmp proc_rule4_ω
 xchain109_n27_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+368] -> [r12+320]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [r12+288] -> [r12+336]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 344], rax
# marshal arg2 = producer-box slot [r12+272] -> [r12+352]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn159: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn159]
 lea rsi, [r12 + 320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain109_n22_α
 jmp xchain109_n28_α
 xchain109_n27_β:
 jmp xchain109_n22_α
 xchain109_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+256] -> [r12+224]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [r12+304] -> [r12+240]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn161: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn161]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain109_n22_α
 jmp xchain109_n29_α
 xchain109_n28_β:
 jmp xchain109_n22_α
# IR_VAR_REF local
 xchain109_n29_α:
 lea rdi, [r12 + 960]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain109_n30_α
 xchain109_n29_β:
 jmp xchain109_n22_α
# IR_VAR_REF local
 xchain109_n30_α:
 lea rdi, [r12 + 976]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain109_n31_α
 xchain109_n30_β:
 jmp xchain109_n22_α
 xchain109_n31_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain109_n32_α:
 lea rax, [rip + xchain109_n31_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_rule4_γ
 xchain109_n32_β:
 jmp proc_rule4_ω
proc_rule4_β:
jmp xchain109_n19_α
proc_rule4_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 944]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_rule4_ω:
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
  .globl proc_rule2_α
proc_rule2_α:
#=======================================================================================================================
    .global proc_rule2_α
    .global proc_rule2_β
    .global proc_rule2_γ
    .global proc_rule2_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_rule2_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 592], rax
 pop rsi
proc_rule2_α_body:
 xchain169_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn171: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn171]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_rule2_ω
 jmp xchain169_n1_α
 xchain169_n0_β:
 jmp proc_rule2_ω
# IR_VAR_REF local
 xchain169_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain169_n2_α
 xchain169_n1_β:
 jmp xchain169_n7_α
# IR_LIT_STRING
 xchain169_n2_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx174_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain169_n3_α
 xchain169_n2_β:
 jmp proc_rule2_ω
.Lx174_0:
 .quad .Lx174_0_s
.Lx174_0_s:
 .string "."
# IR_LIT_STRING
 xchain169_n3_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx175_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain169_n4_α
 xchain169_n3_β:
 jmp proc_rule2_ω
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
 .string "m"
# IR_VAR_REF local
 xchain169_n4_α:
 lea rdi, [r12 + 608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain169_n5_α
 xchain169_n4_β:
 jmp proc_rule2_ω
 xchain169_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+576] -> [r12+528]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 536], rax
# marshal arg1 = producer-box slot [r12+496] -> [r12+544]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 552], rax
# marshal arg2 = producer-box slot [r12+480] -> [r12+560]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn179: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn179]
 lea rsi, [r12 + 528]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain169_n7_α
 jmp xchain169_n6_α
 xchain169_n5_β:
 jmp xchain169_n7_α
 xchain169_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+464] -> [r12+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
# marshal arg1 = producer-box slot [r12+512] -> [r12+448]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn181: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn181]
 lea rsi, [r12 + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain169_n7_α
 jmp xchain169_n8_α
 xchain169_n6_β:
 jmp xchain169_n7_α
 xchain169_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn183: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn183]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_rule2_ω
 jmp proc_rule2_ω
 xchain169_n7_β:
 jmp proc_rule2_ω
# IR_VAR_REF local
 xchain169_n8_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain169_n9_α
 xchain169_n8_β:
 jmp xchain169_n7_α
# IR_LIT_STRING
 xchain169_n9_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain169_n10_α
 xchain169_n9_β:
 jmp proc_rule2_ω
.Lx186_0:
 .quad .Lx186_0_s
.Lx186_0_s:
 .string "."
# IR_LIT_STRING
 xchain169_n10_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain169_n11_α
 xchain169_n10_β:
 jmp proc_rule2_ω
.Lx187_0:
 .quad .Lx187_0_s
.Lx187_0_s:
 .string "m"
# IR_VAR_REF local
 xchain169_n11_α:
 lea rdi, [r12 + 624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain169_n12_α
 xchain169_n11_β:
 jmp proc_rule2_ω
 xchain169_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+400] -> [r12+352]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = producer-box slot [r12+320] -> [r12+368]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 376], rax
# marshal arg2 = producer-box slot [r12+304] -> [r12+384]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lrkfn191: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn191]
 lea rsi, [r12 + 352]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain169_n7_α
 jmp xchain169_n13_α
 xchain169_n12_β:
 jmp xchain169_n7_α
 xchain169_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+288] -> [r12+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
# marshal arg1 = producer-box slot [r12+336] -> [r12+272]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn193: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn193]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain169_n7_α
 jmp xchain169_n14_α
 xchain169_n13_β:
 jmp xchain169_n7_α
# IR_VAR_REF local
 xchain169_n14_α:
 lea rdi, [r12 + 608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain169_n15_α
 xchain169_n14_β:
 jmp xchain169_n7_α
# IR_VAR_REF local
 xchain169_n15_α:
 lea rdi, [r12 + 608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain169_n16_α
 xchain169_n15_β:
 jmp xchain169_n7_α
# IR_VAR_REF local
 xchain169_n16_α:
 lea rdi, [r12 + 624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain169_n17_α
 xchain169_n16_β:
 jmp xchain169_n7_α
 xchain169_n17_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain169_n18_α:
 lea rax, [rip + xchain169_n17_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_rule2_γ
 xchain169_n18_β:
 jmp proc_rule2_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain169_n19_α:
 jmp qword ptr [r12 + 64]
 xchain169_n19_β:
 jmp proc_rule2_ω
proc_rule2_β:
jmp xchain169_n19_α
proc_rule2_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 592]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_rule2_ω:
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
  .globl proc_theorem_α
proc_theorem_α:
#=======================================================================================================================
    .global proc_theorem_α
    .global proc_theorem_β
    .global proc_theorem_γ
    .global proc_theorem_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_theorem_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1872], rax
 pop rsi
proc_theorem_α_body:
 xchain205_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn207: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn207]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_theorem_ω
 jmp xchain205_n1_α
 xchain205_n0_β:
 jmp proc_theorem_ω
# IR_VAR_REF local
 xchain205_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain205_n2_α
 xchain205_n1_β:
 jmp xchain205_n10_α
# IR_LIT_STRING
 xchain205_n2_α:
 mov qword ptr [r12 + 1856], 1
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [r12 + 1864], rax
 jmp xchain205_n3_α
 xchain205_n2_β:
 jmp proc_theorem_ω
.Lx210_0:
 .quad .Lx210_0_s
.Lx210_0_s:
 .string "."
# IR_LIT_STRING
 xchain205_n3_α:
 mov qword ptr [r12 + 1776], 1
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [r12 + 1784], rax
 jmp xchain205_n4_α
 xchain205_n3_β:
 jmp proc_theorem_ω
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
 .string "m"
# IR_LIT_STRING
 xchain205_n4_α:
 mov qword ptr [r12 + 1760], 1
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [r12 + 1768], rax
 jmp xchain205_n5_α
 xchain205_n4_β:
 jmp proc_theorem_ω
.Lx212_0:
 .quad .Lx212_0_s
.Lx212_0_s:
 .string "."
# IR_LIT_STRING
 xchain205_n5_α:
 mov qword ptr [r12 + 1680], 1
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [r12 + 1688], rax
 jmp xchain205_n6_α
 xchain205_n5_β:
 jmp proc_theorem_ω
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "i"
# IR_LIT_STRING
 xchain205_n6_α:
 mov qword ptr [r12 + 1664], 1
 mov rax, qword ptr [rip + .Lx214_0]
 mov qword ptr [r12 + 1672], rax
 jmp xchain205_n7_α
 xchain205_n6_β:
 jmp proc_theorem_ω
.Lx214_0:
 .quad .Lx214_0_s
.Lx214_0_s:
 .string "[]"
 xchain205_n7_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1760] -> [r12+1712]
 mov rax, qword ptr [r12 + 1760]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 1768]
 mov qword ptr [r12 + 1720], rax
# marshal arg1 = producer-box slot [r12+1680] -> [r12+1728]
 mov rax, qword ptr [r12 + 1680]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 1688]
 mov qword ptr [r12 + 1736], rax
# marshal arg2 = producer-box slot [r12+1664] -> [r12+1744]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1752], rax
  .section .rodata
  .Lrkfn216: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn216]
 lea rsi, [r12 + 1712]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 cmp eax, 99
 je proc_theorem_ω
 jmp xchain205_n8_α
 xchain205_n7_β:
 jmp proc_theorem_ω
 xchain205_n8_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1856] -> [r12+1808]
 mov rax, qword ptr [r12 + 1856]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 1816], rax
# marshal arg1 = producer-box slot [r12+1776] -> [r12+1824]
 mov rax, qword ptr [r12 + 1776]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 1784]
 mov qword ptr [r12 + 1832], rax
# marshal arg2 = producer-box slot [r12+1696] -> [r12+1840]
 mov rax, qword ptr [r12 + 1696]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 1848], rax
  .section .rodata
  .Lrkfn218: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn218]
 lea rsi, [r12 + 1808]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 cmp eax, 99
 je xchain205_n10_α
 jmp xchain205_n9_α
 xchain205_n8_β:
 jmp xchain205_n10_α
 xchain205_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1648] -> [r12+1616]
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 1624], rax
# marshal arg1 = producer-box slot [r12+1792] -> [r12+1632]
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1640], rax
  .section .rodata
  .Lrkfn220: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn220]
 lea rsi, [r12 + 1616]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 cmp eax, 99
 je xchain205_n10_α
 jmp xchain205_n11_α
 xchain205_n9_β:
 jmp xchain205_n10_α
 xchain205_n10_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+1040]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1048], rax
  .section .rodata
  .Lrkfn222: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn222]
 lea rsi, [r12 + 1040]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 cmp eax, 99
 je proc_theorem_ω
 jmp xchain205_n12_α
 xchain205_n10_β:
 jmp proc_theorem_ω
# IR_VAR_REF local
 xchain205_n11_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain205_n13_α
 xchain205_n11_β:
 jmp xchain205_n10_α
# IR_VAR_REF local
 xchain205_n12_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain205_n14_α
 xchain205_n12_β:
 jmp xchain205_n19_α
# IR_VAR_REF local
 xchain205_n13_α:
 lea rdi, [r12 + 1888]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain205_n15_α
 xchain205_n13_β:
 jmp xchain205_n10_α
# IR_VAR_REF local
 xchain205_n14_α:
 lea rdi, [r12 + 1920]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain205_n16_α
 xchain205_n14_β:
 jmp xchain205_n19_α
 xchain205_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1568] -> [r12+1536]
 mov rax, qword ptr [r12 + 1568]
 mov qword ptr [r12 + 1536], rax
 mov rax, qword ptr [r12 + 1576]
 mov qword ptr [r12 + 1544], rax
# marshal arg1 = producer-box slot [r12+1584] -> [r12+1552]
 mov rax, qword ptr [r12 + 1584]
 mov qword ptr [r12 + 1552], rax
 mov rax, qword ptr [r12 + 1592]
 mov qword ptr [r12 + 1560], rax
  .section .rodata
  .Lrkfn232: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn232]
 lea rsi, [r12 + 1536]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 cmp eax, 99
 je xchain205_n10_α
 jmp xchain205_n17_α
 xchain205_n15_β:
 jmp xchain205_n10_α
 xchain205_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+992] -> [r12+960]
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 968], rax
# marshal arg1 = producer-box slot [r12+1008] -> [r12+976]
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 984], rax
  .section .rodata
  .Lrkfn234: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn234]
 lea rsi, [r12 + 960]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n18_α
 xchain205_n16_β:
 jmp xchain205_n19_α
# IR_VAR_REF local
 xchain205_n17_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain205_n20_α
 xchain205_n17_β:
 jmp xchain205_n10_α
# IR_VAR_REF local
 xchain205_n18_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain205_n21_α
 xchain205_n18_β:
 jmp xchain205_n19_α
 xchain205_n19_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn240: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn240]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_theorem_ω
 jmp proc_theorem_ω
 xchain205_n19_β:
 jmp proc_theorem_ω
# IR_LIT_STRING
 xchain205_n20_α:
 mov qword ptr [r12 + 1504], 1
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain205_n22_α
 xchain205_n20_β:
 jmp proc_theorem_ω
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "."
# IR_VAR_REF local
 xchain205_n21_α:
 lea rdi, [r12 + 1968]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain205_n23_α
 xchain205_n21_β:
 jmp xchain205_n19_α
# IR_LIT_STRING
 xchain205_n22_α:
 mov qword ptr [r12 + 1424], 1
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [r12 + 1432], rax
 jmp xchain205_n24_α
 xchain205_n22_β:
 jmp proc_theorem_ω
.Lx244_0:
 .quad .Lx244_0_s
.Lx244_0_s:
 .string "."
 xchain205_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+912] -> [r12+880]
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 888], rax
# marshal arg1 = producer-box slot [r12+928] -> [r12+896]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 904], rax
  .section .rodata
  .Lrkfn246: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn246]
 lea rsi, [r12 + 880]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n25_α
 xchain205_n23_β:
 jmp xchain205_n19_α
# IR_LIT_STRING
 xchain205_n24_α:
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain205_n26_α
 xchain205_n24_β:
 jmp proc_theorem_ω
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "a"
# IR_VAR_REF local
 xchain205_n25_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain205_n27_α
 xchain205_n25_β:
 jmp xchain205_n19_α
# IR_LIT_STRING
 xchain205_n26_α:
 mov qword ptr [r12 + 1328], 1
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [r12 + 1336], rax
 jmp xchain205_n28_α
 xchain205_n26_β:
 jmp proc_theorem_ω
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "."
# IR_LIT_STRING
 xchain205_n27_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain205_n29_α
 xchain205_n27_β:
 jmp proc_theorem_ω
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "."
# IR_LIT_STRING
 xchain205_n28_α:
 mov qword ptr [r12 + 1248], 1
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [r12 + 1256], rax
 jmp xchain205_n30_α
 xchain205_n28_β:
 jmp proc_theorem_ω
.Lx252_0:
 .quad .Lx252_0_s
.Lx252_0_s:
 .string "m"
# IR_LIT_STRING
 xchain205_n29_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain205_n31_α
 xchain205_n29_β:
 jmp proc_theorem_ω
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "."
# IR_LIT_STRING
 xchain205_n30_α:
 mov qword ptr [r12 + 1232], 1
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [r12 + 1240], rax
 jmp xchain205_n32_α
 xchain205_n30_β:
 jmp proc_theorem_ω
.Lx254_0:
 .quad .Lx254_0_s
.Lx254_0_s:
 .string "."
# IR_VAR_REF local
 xchain205_n31_α:
 lea rdi, [r12 + 1888]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain205_n33_α
 xchain205_n31_β:
 jmp proc_theorem_ω
# IR_LIT_STRING
 xchain205_n32_α:
 mov qword ptr [r12 + 1152], 1
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain205_n34_α
 xchain205_n32_β:
 jmp proc_theorem_ω
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "i"
# IR_VAR_REF local
 xchain205_n33_α:
 lea rdi, [r12 + 1920]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain205_n35_α
 xchain205_n33_β:
 jmp proc_theorem_ω
# IR_LIT_STRING
 xchain205_n34_α:
 mov qword ptr [r12 + 1136], 1
 mov rax, qword ptr [rip + .Lx260_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain205_n36_α
 xchain205_n34_β:
 jmp proc_theorem_ω
.Lx260_0:
 .quad .Lx260_0_s
.Lx260_0_s:
 .string "[]"
 xchain205_n35_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+768] -> [r12+720]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 728], rax
# marshal arg1 = producer-box slot [r12+688] -> [r12+736]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 744], rax
# marshal arg2 = producer-box slot [r12+672] -> [r12+752]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 760], rax
  .section .rodata
  .Lrkfn262: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn262]
 lea rsi, [r12 + 720]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je proc_theorem_ω
 jmp xchain205_n37_α
 xchain205_n35_β:
 jmp proc_theorem_ω
 xchain205_n36_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1232] -> [r12+1184]
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1192], rax
# marshal arg1 = producer-box slot [r12+1152] -> [r12+1200]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1208], rax
# marshal arg2 = producer-box slot [r12+1136] -> [r12+1216]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1224], rax
  .section .rodata
  .Lrkfn264: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn264]
 lea rsi, [r12 + 1184]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je proc_theorem_ω
 jmp xchain205_n38_α
 xchain205_n36_β:
 jmp proc_theorem_ω
# IR_VAR_REF local
 xchain205_n37_α:
 lea rdi, [r12 + 1952]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain205_n39_α
 xchain205_n37_β:
 jmp proc_theorem_ω
 xchain205_n38_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1328] -> [r12+1280]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1288], rax
# marshal arg1 = producer-box slot [r12+1248] -> [r12+1296]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1304], rax
# marshal arg2 = producer-box slot [r12+1168] -> [r12+1312]
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1320], rax
  .section .rodata
  .Lrkfn268: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn268]
 lea rsi, [r12 + 1280]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 cmp eax, 99
 je proc_theorem_ω
 jmp xchain205_n40_α
 xchain205_n38_β:
 jmp proc_theorem_ω
 xchain205_n39_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+848] -> [r12+800]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 808], rax
# marshal arg1 = producer-box slot [r12+704] -> [r12+816]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 824], rax
# marshal arg2 = producer-box slot [r12+656] -> [r12+832]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn270: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn270]
 lea rsi, [r12 + 800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n41_α
 xchain205_n39_β:
 jmp xchain205_n19_α
 xchain205_n40_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1424] -> [r12+1376]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1384], rax
# marshal arg1 = producer-box slot [r12+1344] -> [r12+1392]
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1400], rax
# marshal arg2 = producer-box slot [r12+1264] -> [r12+1408]
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1416], rax
  .section .rodata
  .Lrkfn272: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn272]
 lea rsi, [r12 + 1376]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 cmp eax, 99
 je proc_theorem_ω
 jmp xchain205_n42_α
 xchain205_n40_β:
 jmp proc_theorem_ω
 xchain205_n41_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+640] -> [r12+608]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 616], rax
# marshal arg1 = producer-box slot [r12+784] -> [r12+624]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lrkfn274: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn274]
 lea rsi, [r12 + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n43_α
 xchain205_n41_β:
 jmp xchain205_n19_α
# IR_LIT_STRING
 xchain205_n42_α:
 mov qword ptr [r12 + 1120], 1
 mov rax, qword ptr [rip + .Lx275_0]
 mov qword ptr [r12 + 1128], rax
 jmp xchain205_n44_α
 xchain205_n42_β:
 jmp proc_theorem_ω
.Lx275_0:
 .quad .Lx275_0_s
.Lx275_0_s:
 .string "[]"
# IR_VAR
 xchain205_n43_α:
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 568], rax
 jmp xchain205_n45_α
 xchain205_n43_β:
 jmp xchain205_n19_α
 xchain205_n44_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1504] -> [r12+1456]
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1464], rax
# marshal arg1 = producer-box slot [r12+1360] -> [r12+1472]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1480], rax
# marshal arg2 = producer-box slot [r12+1120] -> [r12+1488]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1496], rax
  .section .rodata
  .Lrkfn279: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn279]
 lea rsi, [r12 + 1456]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 cmp eax, 99
 je xchain205_n10_α
 jmp xchain205_n46_α
 xchain205_n44_β:
 jmp xchain205_n10_α
# IR_LIT_INTEGER
 xchain205_n45_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx280_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain205_n47_α
 xchain205_n45_β:
 jmp xchain205_n19_α
.Lx280_0:
 .quad 0
 xchain205_n46_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1104] -> [r12+1072]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = producer-box slot [r12+1440] -> [r12+1088]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn282: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn282]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain205_n10_α
 jmp xchain205_n48_α
 xchain205_n46_β:
 jmp xchain205_n10_α
 xchain205_n47_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+560] -> [r12+528]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
# marshal arg1 = producer-box slot [r12+576] -> [r12+544]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn284: .string "$cmp_gt"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn284]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n49_α
 xchain205_n47_β:
 jmp xchain205_n19_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain205_n48_α:
 lea rax, [rip + xchain205_n10_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_theorem_γ
 xchain205_n48_β:
 jmp proc_theorem_ω
# IR_VAR_REF local
 xchain205_n49_α:
 lea rdi, [r12 + 1936]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain205_n51_α
 xchain205_n49_β:
 jmp xchain205_n19_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain205_n50_α:
 jmp qword ptr [r12 + 80]
 xchain205_n50_β:
 jmp proc_theorem_ω
# IR_VAR
 xchain205_n51_α:
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 488], rax
 jmp xchain205_n52_α
 xchain205_n51_β:
 jmp proc_theorem_ω
# IR_LIT_INTEGER
 xchain205_n52_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx293_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain205_n53_α
 xchain205_n52_β:
 jmp proc_theorem_ω
.Lx293_0:
 .quad 1
 xchain205_n53_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+480] -> [r12+448]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 456], rax
# marshal arg1 = producer-box slot [r12+496] -> [r12+464]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn295: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn295]
 lea rsi, [r12 + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n54_α
 xchain205_n53_β:
 jmp xchain205_n19_α
 xchain205_n54_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+416] -> [r12+384]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [r12+432] -> [r12+400]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn297: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn297]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n55_α
 xchain205_n54_β:
 jmp xchain205_n19_α
# IR_VAR_REF local
 xchain205_n55_α:
 lea rdi, [r12 + 1904]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain205_n56_α
 xchain205_n55_β:
 jmp xchain205_n19_α
# IR_VAR_REF local
 xchain205_n56_α:
 lea rdi, [r12 + 1936]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain205_n57_α
 xchain205_n56_β:
 jmp xchain205_n19_α
# IR_VAR_REF local
 xchain205_n57_α:
 lea rdi, [r12 + 1952]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain205_n58_α
 xchain205_n57_β:
 jmp xchain205_n19_α
 xchain205_n58_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR_REF local
 xchain205_n59_α:
 lea rdi, [r12 + 1888]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain205_n60_α
 xchain205_n59_β:
 jmp xchain205_n19_α
# IR_VAR_REF local
 xchain205_n60_α:
 lea rdi, [r12 + 1904]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain205_n61_α
 xchain205_n60_β:
 jmp xchain205_n19_α
# IR_VAR_REF local
 xchain205_n61_α:
 lea rdi, [r12 + 1920]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain205_n62_α
 xchain205_n61_β:
 jmp xchain205_n19_α
 xchain205_n62_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain205_n63_α:
 lea rax, [rip + xchain205_n19_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_theorem_γ
 xchain205_n63_β:
 jmp proc_theorem_ω
proc_theorem_β:
jmp xchain205_n50_α
proc_theorem_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1872]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_theorem_ω:
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
  .globl proc_mu_α
proc_mu_α:
#=======================================================================================================================
    .global proc_mu_α
    .global proc_mu_β
    .global proc_mu_γ
    .global proc_mu_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_mu_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 688], rax
 pop rsi
proc_mu_α_body:
 xchain314_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn316: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn316]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je proc_mu_ω
 jmp xchain314_n1_α
 xchain314_n0_β:
 jmp proc_mu_ω
# IR_LIT_STRING
 xchain314_n1_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx317_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain314_n2_α
 xchain314_n1_β:
 jmp proc_mu_ω
.Lx317_0:
 .quad .Lx317_0_s
.Lx317_0_s:
 .string "."
# IR_LIT_STRING
 xchain314_n2_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx318_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain314_n3_α
 xchain314_n2_β:
 jmp proc_mu_ω
.Lx318_0:
 .quad .Lx318_0_s
.Lx318_0_s:
 .string "m"
# IR_LIT_STRING
 xchain314_n3_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx319_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain314_n4_α
 xchain314_n3_β:
 jmp proc_mu_ω
.Lx319_0:
 .quad .Lx319_0_s
.Lx319_0_s:
 .string "."
# IR_LIT_STRING
 xchain314_n4_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx320_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain314_n5_α
 xchain314_n4_β:
 jmp proc_mu_ω
.Lx320_0:
 .quad .Lx320_0_s
.Lx320_0_s:
 .string "u"
# IR_LIT_STRING
 xchain314_n5_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx321_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain314_n6_α
 xchain314_n5_β:
 jmp proc_mu_ω
.Lx321_0:
 .quad .Lx321_0_s
.Lx321_0_s:
 .string "."
# IR_LIT_STRING
 xchain314_n6_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx322_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain314_n7_α
 xchain314_n6_β:
 jmp proc_mu_ω
.Lx322_0:
 .quad .Lx322_0_s
.Lx322_0_s:
 .string "i"
# IR_LIT_STRING
 xchain314_n7_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx323_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain314_n8_α
 xchain314_n7_β:
 jmp proc_mu_ω
.Lx323_0:
 .quad .Lx323_0_s
.Lx323_0_s:
 .string "."
# IR_LIT_STRING
 xchain314_n8_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx324_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain314_n9_α
 xchain314_n8_β:
 jmp proc_mu_ω
.Lx324_0:
 .quad .Lx324_0_s
.Lx324_0_s:
 .string "i"
# IR_LIT_STRING
 xchain314_n9_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx325_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain314_n10_α
 xchain314_n9_β:
 jmp proc_mu_ω
.Lx325_0:
 .quad .Lx325_0_s
.Lx325_0_s:
 .string "."
# IR_LIT_STRING
 xchain314_n10_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx326_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain314_n11_α
 xchain314_n10_β:
 jmp proc_mu_ω
.Lx326_0:
 .quad .Lx326_0_s
.Lx326_0_s:
 .string "u"
# IR_LIT_STRING
 xchain314_n11_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx327_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain314_n12_α
 xchain314_n11_β:
 jmp proc_mu_ω
.Lx327_0:
 .quad .Lx327_0_s
.Lx327_0_s:
 .string "[]"
 xchain314_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+256] -> [r12+208]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 216], rax
# marshal arg1 = producer-box slot [r12+176] -> [r12+224]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 232], rax
# marshal arg2 = producer-box slot [r12+160] -> [r12+240]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn329: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn329]
 lea rsi, [r12 + 208]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je proc_mu_ω
 jmp xchain314_n13_α
 xchain314_n12_β:
 jmp proc_mu_ω
 xchain314_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+352] -> [r12+304]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [r12+272] -> [r12+320]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 328], rax
# marshal arg2 = producer-box slot [r12+192] -> [r12+336]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn331: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn331]
 lea rsi, [r12 + 304]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je proc_mu_ω
 jmp xchain314_n14_α
 xchain314_n13_β:
 jmp proc_mu_ω
 xchain314_n14_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+448] -> [r12+400]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [r12+368] -> [r12+416]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 424], rax
# marshal arg2 = producer-box slot [r12+288] -> [r12+432]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn333: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn333]
 lea rsi, [r12 + 400]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je proc_mu_ω
 jmp xchain314_n15_α
 xchain314_n14_β:
 jmp proc_mu_ω
 xchain314_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+544] -> [r12+496]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = producer-box slot [r12+464] -> [r12+512]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 520], rax
# marshal arg2 = producer-box slot [r12+384] -> [r12+528]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn335: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn335]
 lea rsi, [r12 + 496]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je proc_mu_ω
 jmp xchain314_n16_α
 xchain314_n15_β:
 jmp proc_mu_ω
 xchain314_n16_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+640] -> [r12+592]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 600], rax
# marshal arg1 = producer-box slot [r12+560] -> [r12+608]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 616], rax
# marshal arg2 = producer-box slot [r12+480] -> [r12+624]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lrkfn337: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn337]
 lea rsi, [r12 + 592]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain314_n18_α
 jmp xchain314_n17_α
 xchain314_n16_β:
 jmp xchain314_n18_α
# IR_LIT_INTEGER
 xchain314_n17_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx338_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain314_n19_α
 xchain314_n17_β:
 jmp xchain314_n18_α
.Lx338_0:
 .quad 5
 xchain314_n18_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+48] -> [r12+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn340: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn340]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_mu_ω
 jmp proc_mu_ω
 xchain314_n18_β:
 jmp proc_mu_ω
# IR_VAR_REF local
 xchain314_n19_α:
 lea rdi, [r12 + 704]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain314_n20_α
 xchain314_n19_β:
 jmp xchain314_n18_α
 xchain314_n20_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
 xchain314_n21_α:
# IR_CUT
 jmp xchain314_n22_α
 xchain314_n21_β:
 jmp xchain314_n20_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain314_n22_α:
 lea rax, [rip + xchain314_n20_β]
 mov qword ptr [r12 + 32], rax
 jmp proc_mu_γ
 xchain314_n22_β:
 jmp proc_mu_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain314_n23_α:
 jmp qword ptr [r12 + 32]
 xchain314_n23_β:
 jmp proc_mu_ω
proc_mu_β:
jmp xchain314_n23_α
proc_mu_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 688]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_mu_ω:
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
  .globl proc_rule3_α
proc_rule3_α:
#=======================================================================================================================
    .global proc_rule3_α
    .global proc_rule3_β
    .global proc_rule3_γ
    .global proc_rule3_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_rule3_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1136], rax
 pop rsi
proc_rule3_α_body:
 xchain349_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn351: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn351]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_rule3_ω
 jmp xchain349_n1_α
 xchain349_n0_β:
 jmp proc_rule3_ω
# IR_VAR_REF local
 xchain349_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain349_n2_α
 xchain349_n1_β:
 jmp xchain349_n13_α
# IR_LIT_STRING
 xchain349_n2_α:
 mov qword ptr [r12 + 1120], 1
 mov rax, qword ptr [rip + .Lx354_0]
 mov qword ptr [r12 + 1128], rax
 jmp xchain349_n3_α
 xchain349_n2_β:
 jmp proc_rule3_ω
.Lx354_0:
 .quad .Lx354_0_s
.Lx354_0_s:
 .string "."
# IR_LIT_STRING
 xchain349_n3_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx355_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain349_n4_α
 xchain349_n3_β:
 jmp proc_rule3_ω
.Lx355_0:
 .quad .Lx355_0_s
.Lx355_0_s:
 .string "i"
# IR_LIT_STRING
 xchain349_n4_α:
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx356_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain349_n5_α
 xchain349_n4_β:
 jmp proc_rule3_ω
.Lx356_0:
 .quad .Lx356_0_s
.Lx356_0_s:
 .string "."
# IR_LIT_STRING
 xchain349_n5_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx357_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain349_n6_α
 xchain349_n5_β:
 jmp proc_rule3_ω
.Lx357_0:
 .quad .Lx357_0_s
.Lx357_0_s:
 .string "i"
# IR_LIT_STRING
 xchain349_n6_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx358_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain349_n7_α
 xchain349_n6_β:
 jmp proc_rule3_ω
.Lx358_0:
 .quad .Lx358_0_s
.Lx358_0_s:
 .string "."
# IR_LIT_STRING
 xchain349_n7_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx359_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain349_n8_α
 xchain349_n7_β:
 jmp proc_rule3_ω
.Lx359_0:
 .quad .Lx359_0_s
.Lx359_0_s:
 .string "i"
# IR_VAR_REF local
 xchain349_n8_α:
 lea rdi, [r12 + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain349_n9_α
 xchain349_n8_β:
 jmp proc_rule3_ω
 xchain349_n9_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+928] -> [r12+880]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 888], rax
# marshal arg1 = producer-box slot [r12+848] -> [r12+896]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 904], rax
# marshal arg2 = producer-box slot [r12+832] -> [r12+912]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 920], rax
  .section .rodata
  .Lrkfn363: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn363]
 lea rsi, [r12 + 880]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je proc_rule3_ω
 jmp xchain349_n10_α
 xchain349_n9_β:
 jmp proc_rule3_ω
 xchain349_n10_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1024] -> [r12+976]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 984], rax
# marshal arg1 = producer-box slot [r12+944] -> [r12+992]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 1000], rax
# marshal arg2 = producer-box slot [r12+864] -> [r12+1008]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn365: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn365]
 lea rsi, [r12 + 976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je proc_rule3_ω
 jmp xchain349_n11_α
 xchain349_n10_β:
 jmp proc_rule3_ω
 xchain349_n11_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1120] -> [r12+1072]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = producer-box slot [r12+1040] -> [r12+1088]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1096], rax
# marshal arg2 = producer-box slot [r12+960] -> [r12+1104]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 1112], rax
  .section .rodata
  .Lrkfn367: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn367]
 lea rsi, [r12 + 1072]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain349_n13_α
 jmp xchain349_n12_α
 xchain349_n11_β:
 jmp xchain349_n13_α
 xchain349_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+816] -> [r12+784]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
# marshal arg1 = producer-box slot [r12+1056] -> [r12+800]
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 808], rax
  .section .rodata
  .Lrkfn369: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn369]
 lea rsi, [r12 + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain349_n13_α
 jmp xchain349_n14_α
 xchain349_n12_β:
 jmp xchain349_n13_α
 xchain349_n13_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+576]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn371: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn371]
 lea rsi, [r12 + 576]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je proc_rule3_ω
 jmp xchain349_n15_α
 xchain349_n13_β:
 jmp proc_rule3_ω
# IR_VAR_REF local
 xchain349_n14_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain349_n16_α
 xchain349_n14_β:
 jmp xchain349_n13_α
# IR_VAR_REF local
 xchain349_n15_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain349_n17_α
 xchain349_n15_β:
 jmp xchain349_n26_α
# IR_LIT_STRING
 xchain349_n16_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx376_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain349_n18_α
 xchain349_n16_β:
 jmp proc_rule3_ω
.Lx376_0:
 .quad .Lx376_0_s
.Lx376_0_s:
 .string "."
# IR_LIT_STRING
 xchain349_n17_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx377_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain349_n19_α
 xchain349_n17_β:
 jmp proc_rule3_ω
.Lx377_0:
 .quad .Lx377_0_s
.Lx377_0_s:
 .string "."
# IR_LIT_STRING
 xchain349_n18_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx378_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain349_n20_α
 xchain349_n18_β:
 jmp proc_rule3_ω
.Lx378_0:
 .quad .Lx378_0_s
.Lx378_0_s:
 .string "u"
# IR_VAR_REF local
 xchain349_n19_α:
 lea rdi, [r12 + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain349_n21_α
 xchain349_n19_β:
 jmp proc_rule3_ω
# IR_VAR_REF local
 xchain349_n20_α:
 lea rdi, [r12 + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain349_n22_α
 xchain349_n20_β:
 jmp proc_rule3_ω
# IR_VAR_REF local
 xchain349_n21_α:
 lea rdi, [r12 + 1152]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain349_n23_α
 xchain349_n21_β:
 jmp proc_rule3_ω
 xchain349_n22_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+752] -> [r12+704]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [r12+672] -> [r12+720]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 728], rax
# marshal arg2 = producer-box slot [r12+656] -> [r12+736]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn386: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn386]
 lea rsi, [r12 + 704]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain349_n13_α
 jmp xchain349_n24_α
 xchain349_n22_β:
 jmp xchain349_n13_α
 xchain349_n23_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+544] -> [r12+496]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = producer-box slot [r12+464] -> [r12+512]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 520], rax
# marshal arg2 = producer-box slot [r12+448] -> [r12+528]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn388: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn388]
 lea rsi, [r12 + 496]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain349_n26_α
 jmp xchain349_n25_α
 xchain349_n23_β:
 jmp xchain349_n26_α
 xchain349_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+640] -> [r12+608]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 616], rax
# marshal arg1 = producer-box slot [r12+688] -> [r12+624]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lrkfn390: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn390]
 lea rsi, [r12 + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain349_n13_α
 jmp xchain349_n27_α
 xchain349_n24_β:
 jmp xchain349_n13_α
 xchain349_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+432] -> [r12+400]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [r12+480] -> [r12+416]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn392: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn392]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain349_n26_α
 jmp xchain349_n28_α
 xchain349_n25_β:
 jmp xchain349_n26_α
 xchain349_n26_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn394: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn394]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_rule3_ω
 jmp proc_rule3_ω
 xchain349_n26_β:
 jmp proc_rule3_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain349_n27_α:
 lea rax, [rip + xchain349_n13_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_rule3_γ
 xchain349_n27_β:
 jmp proc_rule3_ω
# IR_VAR_REF local
 xchain349_n28_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain349_n30_α
 xchain349_n28_β:
 jmp xchain349_n26_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain349_n29_α:
 jmp qword ptr [r12 + 64]
 xchain349_n29_β:
 jmp proc_rule3_ω
# IR_LIT_STRING
 xchain349_n30_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx401_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain349_n31_α
 xchain349_n30_β:
 jmp proc_rule3_ω
.Lx401_0:
 .quad .Lx401_0_s
.Lx401_0_s:
 .string "."
# IR_VAR_REF local
 xchain349_n31_α:
 lea rdi, [r12 + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain349_n32_α
 xchain349_n31_β:
 jmp proc_rule3_ω
# IR_VAR_REF local
 xchain349_n32_α:
 lea rdi, [r12 + 1168]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain349_n33_α
 xchain349_n32_β:
 jmp proc_rule3_ω
 xchain349_n33_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+368] -> [r12+320]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [r12+288] -> [r12+336]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 344], rax
# marshal arg2 = producer-box slot [r12+272] -> [r12+352]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn407: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn407]
 lea rsi, [r12 + 320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain349_n26_α
 jmp xchain349_n34_α
 xchain349_n33_β:
 jmp xchain349_n26_α
 xchain349_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+256] -> [r12+224]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [r12+304] -> [r12+240]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn409: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn409]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain349_n26_α
 jmp xchain349_n35_α
 xchain349_n34_β:
 jmp xchain349_n26_α
# IR_VAR_REF local
 xchain349_n35_α:
 lea rdi, [r12 + 1152]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain349_n36_α
 xchain349_n35_β:
 jmp xchain349_n26_α
# IR_VAR_REF local
 xchain349_n36_α:
 lea rdi, [r12 + 1168]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain349_n37_α
 xchain349_n36_β:
 jmp xchain349_n26_α
 xchain349_n37_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain349_n38_α:
 lea rax, [rip + xchain349_n37_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_rule3_γ
 xchain349_n38_β:
 jmp proc_rule3_ω
proc_rule3_β:
jmp xchain349_n29_α
proc_rule3_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1136]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_rule3_ω:
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
  .globl proc_rule1_α
proc_rule1_α:
#=======================================================================================================================
    .global proc_rule1_α
    .global proc_rule1_β
    .global proc_rule1_γ
    .global proc_rule1_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_rule1_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1040], rax
 pop rsi
proc_rule1_α_body:
 xchain417_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn419: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn419]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_rule1_ω
 jmp xchain417_n1_α
 xchain417_n0_β:
 jmp proc_rule1_ω
# IR_VAR_REF local
 xchain417_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain417_n2_α
 xchain417_n1_β:
 jmp xchain417_n7_α
# IR_LIT_STRING
 xchain417_n2_α:
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx422_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain417_n3_α
 xchain417_n2_β:
 jmp proc_rule1_ω
.Lx422_0:
 .quad .Lx422_0_s
.Lx422_0_s:
 .string "."
# IR_LIT_STRING
 xchain417_n3_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx423_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain417_n4_α
 xchain417_n3_β:
 jmp proc_rule1_ω
.Lx423_0:
 .quad .Lx423_0_s
.Lx423_0_s:
 .string "i"
# IR_LIT_STRING
 xchain417_n4_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx424_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain417_n5_α
 xchain417_n4_β:
 jmp proc_rule1_ω
.Lx424_0:
 .quad .Lx424_0_s
.Lx424_0_s:
 .string "[]"
 xchain417_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1024] -> [r12+976]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 984], rax
# marshal arg1 = producer-box slot [r12+944] -> [r12+992]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 1000], rax
# marshal arg2 = producer-box slot [r12+928] -> [r12+1008]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn426: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn426]
 lea rsi, [r12 + 976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je xchain417_n7_α
 jmp xchain417_n6_α
 xchain417_n5_β:
 jmp xchain417_n7_α
 xchain417_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+912] -> [r12+880]
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 888], rax
# marshal arg1 = producer-box slot [r12+960] -> [r12+896]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 904], rax
  .section .rodata
  .Lrkfn428: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn428]
 lea rsi, [r12 + 880]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain417_n7_α
 jmp xchain417_n8_α
 xchain417_n6_β:
 jmp xchain417_n7_α
 xchain417_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+576]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn430: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn430]
 lea rsi, [r12 + 576]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je proc_rule1_ω
 jmp xchain417_n9_α
 xchain417_n7_β:
 jmp proc_rule1_ω
# IR_VAR_REF local
 xchain417_n8_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain417_n10_α
 xchain417_n8_β:
 jmp xchain417_n7_α
# IR_VAR_REF local
 xchain417_n9_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain417_n11_α
 xchain417_n9_β:
 jmp xchain417_n20_α
# IR_LIT_STRING
 xchain417_n10_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx435_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain417_n12_α
 xchain417_n10_β:
 jmp proc_rule1_ω
.Lx435_0:
 .quad .Lx435_0_s
.Lx435_0_s:
 .string "."
# IR_LIT_STRING
 xchain417_n11_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx436_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain417_n13_α
 xchain417_n11_β:
 jmp proc_rule1_ω
.Lx436_0:
 .quad .Lx436_0_s
.Lx436_0_s:
 .string "."
# IR_LIT_STRING
 xchain417_n12_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx437_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain417_n14_α
 xchain417_n12_β:
 jmp proc_rule1_ω
.Lx437_0:
 .quad .Lx437_0_s
.Lx437_0_s:
 .string "i"
# IR_VAR_REF local
 xchain417_n13_α:
 lea rdi, [r12 + 1088]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain417_n15_α
 xchain417_n13_β:
 jmp proc_rule1_ω
# IR_LIT_STRING
 xchain417_n14_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx440_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain417_n16_α
 xchain417_n14_β:
 jmp proc_rule1_ω
.Lx440_0:
 .quad .Lx440_0_s
.Lx440_0_s:
 .string "."
# IR_VAR_REF local
 xchain417_n15_α:
 lea rdi, [r12 + 1056]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain417_n17_α
 xchain417_n15_β:
 jmp proc_rule1_ω
# IR_LIT_STRING
 xchain417_n16_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx443_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain417_n18_α
 xchain417_n16_β:
 jmp proc_rule1_ω
.Lx443_0:
 .quad .Lx443_0_s
.Lx443_0_s:
 .string "u"
 xchain417_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+544] -> [r12+496]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = producer-box slot [r12+464] -> [r12+512]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 520], rax
# marshal arg2 = producer-box slot [r12+448] -> [r12+528]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn445: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn445]
 lea rsi, [r12 + 496]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain417_n20_α
 jmp xchain417_n19_α
 xchain417_n17_β:
 jmp xchain417_n20_α
# IR_LIT_STRING
 xchain417_n18_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx446_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain417_n21_α
 xchain417_n18_β:
 jmp proc_rule1_ω
.Lx446_0:
 .quad .Lx446_0_s
.Lx446_0_s:
 .string "[]"
 xchain417_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+432] -> [r12+400]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [r12+480] -> [r12+416]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn448: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn448]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain417_n20_α
 jmp xchain417_n22_α
 xchain417_n19_β:
 jmp xchain417_n20_α
 xchain417_n20_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn450: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn450]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_rule1_ω
 jmp proc_rule1_ω
 xchain417_n20_β:
 jmp proc_rule1_ω
 xchain417_n21_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+752] -> [r12+704]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [r12+672] -> [r12+720]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 728], rax
# marshal arg2 = producer-box slot [r12+656] -> [r12+736]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn452: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn452]
 lea rsi, [r12 + 704]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je proc_rule1_ω
 jmp xchain417_n23_α
 xchain417_n21_β:
 jmp proc_rule1_ω
# IR_VAR_REF local
 xchain417_n22_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain417_n24_α
 xchain417_n22_β:
 jmp xchain417_n20_α
 xchain417_n23_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+848] -> [r12+800]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 808], rax
# marshal arg1 = producer-box slot [r12+768] -> [r12+816]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 824], rax
# marshal arg2 = producer-box slot [r12+688] -> [r12+832]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn456: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn456]
 lea rsi, [r12 + 800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain417_n7_α
 jmp xchain417_n25_α
 xchain417_n23_β:
 jmp xchain417_n7_α
# IR_LIT_STRING
 xchain417_n24_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx457_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain417_n26_α
 xchain417_n24_β:
 jmp proc_rule1_ω
.Lx457_0:
 .quad .Lx457_0_s
.Lx457_0_s:
 .string "."
 xchain417_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+640] -> [r12+608]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 616], rax
# marshal arg1 = producer-box slot [r12+784] -> [r12+624]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lrkfn459: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn459]
 lea rsi, [r12 + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain417_n7_α
 jmp xchain417_n27_α
 xchain417_n25_β:
 jmp xchain417_n7_α
# IR_VAR_REF local
 xchain417_n26_α:
 lea rdi, [r12 + 1088]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain417_n28_α
 xchain417_n26_β:
 jmp proc_rule1_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain417_n27_α:
 lea rax, [rip + xchain417_n7_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_rule1_γ
 xchain417_n27_β:
 jmp proc_rule1_ω
# IR_VAR_REF local
 xchain417_n28_α:
 lea rdi, [r12 + 1072]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain417_n30_α
 xchain417_n28_β:
 jmp proc_rule1_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain417_n29_α:
 jmp qword ptr [r12 + 64]
 xchain417_n29_β:
 jmp proc_rule1_ω
 xchain417_n30_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+368] -> [r12+320]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [r12+288] -> [r12+336]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 344], rax
# marshal arg2 = producer-box slot [r12+272] -> [r12+352]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn469: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn469]
 lea rsi, [r12 + 320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain417_n20_α
 jmp xchain417_n31_α
 xchain417_n30_β:
 jmp xchain417_n20_α
 xchain417_n31_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+256] -> [r12+224]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [r12+304] -> [r12+240]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn471: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn471]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain417_n20_α
 jmp xchain417_n32_α
 xchain417_n31_β:
 jmp xchain417_n20_α
# IR_VAR_REF local
 xchain417_n32_α:
 lea rdi, [r12 + 1056]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain417_n33_α
 xchain417_n32_β:
 jmp xchain417_n20_α
# IR_VAR_REF local
 xchain417_n33_α:
 lea rdi, [r12 + 1072]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain417_n34_α
 xchain417_n33_β:
 jmp xchain417_n20_α
 xchain417_n34_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain417_n35_α:
 lea rax, [rip + xchain417_n34_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_rule1_γ
 xchain417_n35_β:
 jmp proc_rule1_ω
proc_rule1_β:
jmp xchain417_n29_α
proc_rule1_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1040]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_rule1_ω:
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
  .globl proc_my_append_α
proc_my_append_α:
#=======================================================================================================================
    .global proc_my_append_α
    .global proc_my_append_β
    .global proc_my_append_γ
    .global proc_my_append_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_my_append_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 960], rax
 pop rsi
proc_my_append_α_body:
 xchain479_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn481: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn481]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_my_append_ω
 jmp xchain479_n1_α
 xchain479_n0_β:
 jmp proc_my_append_ω
# IR_VAR_REF local
 xchain479_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain479_n2_α
 xchain479_n1_β:
 jmp xchain479_n5_α
# IR_LIT_STRING
 xchain479_n2_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx484_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain479_n3_α
 xchain479_n2_β:
 jmp xchain479_n5_α
.Lx484_0:
 .quad .Lx484_0_s
.Lx484_0_s:
 .string "[]"
 xchain479_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+928] -> [r12+896]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [r12+944] -> [r12+912]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 920], rax
  .section .rodata
  .Lrkfn486: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn486]
 lea rsi, [r12 + 896]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain479_n5_α
 jmp xchain479_n4_α
 xchain479_n3_β:
 jmp xchain479_n5_α
# IR_VAR_REF local
 xchain479_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain479_n6_α
 xchain479_n4_β:
 jmp xchain479_n5_α
 xchain479_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+704]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 712], rax
  .section .rodata
  .Lrkfn490: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn490]
 lea rsi, [r12 + 704]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je proc_my_append_ω
 jmp xchain479_n7_α
 xchain479_n5_β:
 jmp proc_my_append_ω
# IR_VAR_REF local
 xchain479_n6_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain479_n8_α
 xchain479_n6_β:
 jmp xchain479_n5_α
# IR_VAR_REF local
 xchain479_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain479_n9_α
 xchain479_n7_β:
 jmp xchain479_n18_α
 xchain479_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+848] -> [r12+816]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 824], rax
# marshal arg1 = producer-box slot [r12+864] -> [r12+832]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn496: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn496]
 lea rsi, [r12 + 816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain479_n5_α
 jmp xchain479_n10_α
 xchain479_n8_β:
 jmp xchain479_n5_α
# IR_LIT_STRING
 xchain479_n9_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx497_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain479_n11_α
 xchain479_n9_β:
 jmp proc_my_append_ω
.Lx497_0:
 .quad .Lx497_0_s
.Lx497_0_s:
 .string "."
# IR_VAR_REF local
 xchain479_n10_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain479_n12_α
 xchain479_n10_β:
 jmp xchain479_n5_α
# IR_VAR_REF local
 xchain479_n11_α:
 lea rdi, [r12 + 1024]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain479_n13_α
 xchain479_n11_β:
 jmp proc_my_append_ω
# IR_VAR_REF local
 xchain479_n12_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain479_n14_α
 xchain479_n12_β:
 jmp xchain479_n5_α
# IR_VAR_REF local
 xchain479_n13_α:
 lea rdi, [r12 + 976]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain479_n15_α
 xchain479_n13_β:
 jmp proc_my_append_ω
 xchain479_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+768] -> [r12+736]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 744], rax
# marshal arg1 = producer-box slot [r12+784] -> [r12+752]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 760], rax
  .section .rodata
  .Lrkfn507: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn507]
 lea rsi, [r12 + 736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain479_n5_α
 jmp xchain479_n16_α
 xchain479_n14_β:
 jmp xchain479_n5_α
 xchain479_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+672] -> [r12+624]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [r12+592] -> [r12+640]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 648], rax
# marshal arg2 = producer-box slot [r12+576] -> [r12+656]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn509: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn509]
 lea rsi, [r12 + 624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain479_n18_α
 jmp xchain479_n17_α
 xchain479_n15_β:
 jmp xchain479_n18_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain479_n16_α:
 lea rax, [rip + xchain479_n5_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_my_append_γ
 xchain479_n16_β:
 jmp proc_my_append_ω
 xchain479_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+560] -> [r12+528]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
# marshal arg1 = producer-box slot [r12+608] -> [r12+544]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn513: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn513]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain479_n18_α
 jmp xchain479_n20_α
 xchain479_n17_β:
 jmp xchain479_n18_α
 xchain479_n18_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn515: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn515]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_my_append_ω
 jmp proc_my_append_ω
 xchain479_n18_β:
 jmp proc_my_append_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain479_n19_α:
 jmp qword ptr [r12 + 80]
 xchain479_n19_β:
 jmp proc_my_append_ω
# IR_VAR_REF local
 xchain479_n20_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain479_n21_α
 xchain479_n20_β:
 jmp xchain479_n18_α
# IR_VAR_REF local
 xchain479_n21_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain479_n22_α
 xchain479_n21_β:
 jmp xchain479_n18_α
 xchain479_n22_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+480] -> [r12+448]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 456], rax
# marshal arg1 = producer-box slot [r12+496] -> [r12+464]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn523: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn523]
 lea rsi, [r12 + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain479_n18_α
 jmp xchain479_n23_α
 xchain479_n22_β:
 jmp xchain479_n18_α
# IR_VAR_REF local
 xchain479_n23_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain479_n24_α
 xchain479_n23_β:
 jmp xchain479_n18_α
# IR_LIT_STRING
 xchain479_n24_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx526_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain479_n25_α
 xchain479_n24_β:
 jmp proc_my_append_ω
.Lx526_0:
 .quad .Lx526_0_s
.Lx526_0_s:
 .string "."
# IR_VAR_REF local
 xchain479_n25_α:
 lea rdi, [r12 + 1024]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain479_n26_α
 xchain479_n25_β:
 jmp proc_my_append_ω
# IR_VAR_REF local
 xchain479_n26_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain479_n27_α
 xchain479_n26_β:
 jmp proc_my_append_ω
 xchain479_n27_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+416] -> [r12+368]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 376], rax
# marshal arg1 = producer-box slot [r12+336] -> [r12+384]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 392], rax
# marshal arg2 = producer-box slot [r12+320] -> [r12+400]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn532: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn532]
 lea rsi, [r12 + 368]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain479_n18_α
 jmp xchain479_n28_α
 xchain479_n27_β:
 jmp xchain479_n18_α
 xchain479_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+304] -> [r12+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [r12+352] -> [r12+288]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn534: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn534]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain479_n18_α
 jmp xchain479_n29_α
 xchain479_n28_β:
 jmp xchain479_n18_α
# IR_VAR_REF local
 xchain479_n29_α:
 lea rdi, [r12 + 976]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain479_n30_α
 xchain479_n29_β:
 jmp xchain479_n18_α
# IR_VAR_REF local
 xchain479_n30_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain479_n31_α
 xchain479_n30_β:
 jmp xchain479_n18_α
# IR_VAR_REF local
 xchain479_n31_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain479_n32_α
 xchain479_n31_β:
 jmp xchain479_n18_α
 xchain479_n32_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain479_n33_α:
 lea rax, [rip + xchain479_n32_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_my_append_γ
 xchain479_n33_β:
 jmp proc_my_append_ω
proc_my_append_β:
jmp xchain479_n19_α
proc_my_append_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 960]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_my_append_ω:
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
  .Lstartup_pname0: .string "rule"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_rule_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname1: .string "rule4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_rule4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname2: .string "rule2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_rule2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname3: .string "theorem"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_theorem_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname4: .string "mu"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_mu_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname5: .string "rule3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_rule3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname6: .string "rule1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_rule1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname7: .string "my_append"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_my_append_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 3
  call rt_proc_set_nparams@PLT
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
 mov qword ptr [r12 + 256], rax
 pop rsi
main_α_body:
 xchain544_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn546: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn546]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain544_n1_α
 xchain544_n0_β:
 jmp main_ω
 xchain544_n1_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_LIT_STRING
 xchain544_n2_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx548_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain544_n4_α
 xchain544_n2_β:
 jmp xchain544_n7_α
.Lx548_0:
 .quad .Lx548_0_s
.Lx548_0_s:
 .string "ok"
# IR_LIT_STRING
 xchain544_n3_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx549_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain544_n5_α
 xchain544_n3_β:
 jmp xchain544_n7_α
.Lx549_0:
 .quad .Lx549_0_s
.Lx549_0_s:
 .string "failed"
 xchain544_n4_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn551: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn551]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain544_n7_α
 jmp xchain544_n6_α
 xchain544_n4_β:
 jmp xchain544_n7_α
 xchain544_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+224] -> [r12+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn553: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn553]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain544_n7_α
 jmp xchain544_n6_α
 xchain544_n5_β:
 jmp xchain544_n7_α
# IR_LIT_STRING
 xchain544_n6_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx554_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain544_n8_α
 xchain544_n6_β:
 jmp xchain544_n7_α
.Lx554_0:
 .quad .Lx554_0_s
.Lx554_0_s:
 .string ""
 xchain544_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+48] -> [r12+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn556: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn556]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain544_n7_β:
 jmp main_ω
 xchain544_n8_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn558: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn558]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain544_n7_α
 jmp xchain544_n9_α
 xchain544_n8_β:
 jmp xchain544_n7_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain544_n9_α:
 lea rax, [rip + xchain544_n7_α]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain544_n9_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain544_n10_α:
 jmp qword ptr [r12 + 32]
 xchain544_n10_β:
 jmp main_ω
main_β:
jmp xchain544_n10_α
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
 mov rdi, qword ptr [r12 + 256]
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
.section .rodata
.S0: .string "bb_call_proc_staged: generator call on an op kind without a callgen.act ZLS2 handle grant (zeta_storage.c widens only IR_PROC_GEN / IR_CALL_PROC_STAGED)"
.text
