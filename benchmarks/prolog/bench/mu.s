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
  cmp esi, 0
  jne proc_rule_β
proc_rule_α_body:
xchain0_n0_α:
bb1_α:
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
xchain0_n1_α:
# IR_VAR_REF local
bb2_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
xchain0_n2_α:
# IR_LIT_INTEGER
bb3_α:
 mov qword ptr [r12 + 1504], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
.Lx5_0:
 .quad 1
xchain0_n3_α:
bb4_α:
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
xchain0_n4_α:
# IR_VAR_REF local
bb5_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
xchain0_n5_α:
bb6_α:
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
xchain0_n6_α:
# IR_VAR_REF local
bb7_α:
 lea rdi, [r12 + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n5_α
xchain0_n7_α:
# IR_VAR_REF local
bb8_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n14_α
xchain0_n8_α:
bb9_α:
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
xchain0_n9_α:
# IR_LIT_INTEGER
bb10_α:
 mov qword ptr [r12 + 1152], 6
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n14_α
.Lx18_0:
 .quad 2
xchain0_n10_α:
# IR_VAR_REF local
bb11_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n5_α
xchain0_n11_α:
bb12_α:
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
xchain0_n12_α:
# IR_VAR_REF local
bb13_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n5_α
xchain0_n13_α:
# IR_VAR_REF local
bb14_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n14_α
xchain0_n14_α:
bb15_α:
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
bb16_α:
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
xchain0_n16_α:
# IR_VAR_REF local
bb17_α:
 lea rdi, [r12 + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain0_n19_α
 xchain0_n16_β:
 jmp xchain0_n14_α
xchain0_n17_α:
# IR_VAR_REF local
bb18_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain0_n20_α
 xchain0_n17_β:
 jmp xchain0_n27_α
xchain0_n18_α:
# IR_VAR_REF local
bb19_α:
 lea rdi, [r12 + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain0_n21_α
 xchain0_n18_β:
 jmp xchain0_n5_α
xchain0_n19_α:
bb20_α:
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
xchain0_n20_α:
# IR_LIT_INTEGER
bb21_α:
 mov qword ptr [r12 + 800], 6
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp xchain0_n27_α
.Lx39_0:
 .quad 3
xchain0_n21_α:
# IR_VAR_REF local
bb22_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n5_α
xchain0_n22_α:
# IR_VAR_REF local
bb23_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp xchain0_n14_α
xchain0_n23_α:
bb24_α:
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
bb25_α:
  .section .rodata
  .Lcall25_pname: .string "rule1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1248]
 mov rdx, qword ptr [r12 + 1256]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1264]
 mov rdx, qword ptr [r12 + 1272]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall25_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n28_α
xchain0_n24_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n28_α
xchain0_n25_α:
# IR_VAR_REF local
bb26_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain0_n29_α
 xchain0_n25_β:
 jmp xchain0_n14_α
xchain0_n26_α:
# IR_VAR_REF local
bb27_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain0_n30_α
 xchain0_n26_β:
 jmp xchain0_n27_α
xchain0_n27_α:
bb28_α:
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
xchain0_n28_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb29_α:
 lea rax, [rip + xchain0_n24_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_rule_γ
 xchain0_n28_β:
 jmp proc_rule_ω
xchain0_n29_α:
bb30_α:
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
xchain0_n30_α:
# IR_VAR_REF local
bb31_α:
 lea rdi, [r12 + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain0_n34_α
 xchain0_n30_β:
 jmp xchain0_n27_α
xchain0_n31_α:
# IR_VAR_REF local
bb32_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n35_α
 xchain0_n31_β:
 jmp xchain0_n42_α
xchain0_n32_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb33_α:
 jmp qword ptr [r12 + 80]
 xchain0_n32_β:
 jmp proc_rule_ω
xchain0_n33_α:
# IR_VAR_REF local
bb34_α:
 lea rdi, [r12 + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain0_n36_α
 xchain0_n33_β:
 jmp xchain0_n14_α
xchain0_n34_α:
bb35_α:
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
xchain0_n35_α:
# IR_LIT_INTEGER
bb36_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain0_n38_α
 xchain0_n35_β:
 jmp xchain0_n42_α
.Lx67_0:
 .quad 4
xchain0_n36_α:
# IR_VAR_REF local
bb37_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain0_n39_α
 xchain0_n36_β:
 jmp xchain0_n14_α
xchain0_n37_α:
# IR_VAR_REF local
bb38_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain0_n40_α
 xchain0_n37_β:
 jmp xchain0_n27_α
xchain0_n38_α:
bb39_α:
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
bb40_α:
  .section .rodata
  .Lcall40_pname: .string "rule2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall40_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n43_α
xchain0_n39_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n43_α
xchain0_n40_α:
# IR_VAR_REF local
bb41_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain0_n44_α
 xchain0_n40_β:
 jmp xchain0_n27_α
xchain0_n41_α:
# IR_VAR_REF local
bb42_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n45_α
 xchain0_n41_β:
 jmp xchain0_n42_α
xchain0_n42_α:
bb43_α:
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
xchain0_n43_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb44_α:
 lea rax, [rip + xchain0_n39_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_rule_γ
 xchain0_n43_β:
 jmp proc_rule_ω
xchain0_n44_α:
bb45_α:
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
xchain0_n45_α:
# IR_VAR_REF local
bb46_α:
 lea rdi, [r12 + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n47_α
 xchain0_n45_β:
 jmp xchain0_n42_α
xchain0_n46_α:
# IR_VAR_REF local
bb47_α:
 lea rdi, [r12 + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain0_n48_α
 xchain0_n46_β:
 jmp xchain0_n27_α
xchain0_n47_α:
bb48_α:
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
xchain0_n48_α:
# IR_VAR_REF local
bb49_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n50_α
 xchain0_n48_β:
 jmp xchain0_n27_α
xchain0_n49_α:
# IR_VAR_REF local
bb50_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain0_n51_α
 xchain0_n49_β:
 jmp xchain0_n42_α
xchain0_n50_α:
bb51_α:
  .section .rodata
  .Lcall51_pname: .string "rule3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall51_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n52_α
xchain0_n50_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n52_α
xchain0_n51_α:
# IR_VAR_REF local
bb52_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n53_α
 xchain0_n51_β:
 jmp xchain0_n42_α
xchain0_n52_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb53_α:
 lea rax, [rip + xchain0_n50_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_rule_γ
 xchain0_n52_β:
 jmp proc_rule_ω
xchain0_n53_α:
bb54_α:
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
xchain0_n54_α:
# IR_VAR_REF local
bb55_α:
 lea rdi, [r12 + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain0_n55_α
 xchain0_n54_β:
 jmp xchain0_n42_α
xchain0_n55_α:
# IR_VAR_REF local
bb56_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n56_α
 xchain0_n55_β:
 jmp xchain0_n42_α
xchain0_n56_α:
bb57_α:
  .section .rodata
  .Lcall57_pname: .string "rule4"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall57_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain0_n42_α
 jmp xchain0_n57_α
xchain0_n56_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain0_n42_α
 jmp xchain0_n57_α
xchain0_n57_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb58_α:
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
pop r12
ret
proc_rule_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
  cmp esi, 0
  jne proc_rule4_β
proc_rule4_α_body:
xchain109_n0_α:
bb59_α:
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
xchain109_n1_α:
# IR_VAR_REF local
bb60_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain109_n2_α
 xchain109_n1_β:
 jmp xchain109_n10_α
xchain109_n2_α:
# IR_LIT_STRING
bb61_α:
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
xchain109_n3_α:
# IR_LIT_STRING
bb62_α:
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
xchain109_n4_α:
# IR_LIT_STRING
bb63_α:
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
xchain109_n5_α:
# IR_LIT_STRING
bb64_α:
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
xchain109_n6_α:
# IR_VAR_REF local
bb65_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain109_n7_α
 xchain109_n6_β:
 jmp proc_rule4_ω
xchain109_n7_α:
bb66_α:
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
bb67_α:
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
bb68_α:
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
bb69_α:
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
xchain109_n11_α:
# IR_VAR_REF local
bb70_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain109_n13_α
 xchain109_n11_β:
 jmp xchain109_n10_α
xchain109_n12_α:
# IR_VAR_REF local
bb71_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain109_n14_α
 xchain109_n12_β:
 jmp xchain109_n22_α
xchain109_n13_α:
# IR_VAR_REF local
bb72_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain109_n15_α
 xchain109_n13_β:
 jmp xchain109_n10_α
xchain109_n14_α:
# IR_LIT_STRING
bb73_α:
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
bb74_α:
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
xchain109_n16_α:
# IR_VAR_REF local
bb75_α:
 lea rdi, [r12 + 976]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain109_n18_α
 xchain109_n16_β:
 jmp proc_rule4_ω
xchain109_n17_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb76_α:
 lea rax, [rip + xchain109_n10_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_rule4_γ
 xchain109_n17_β:
 jmp proc_rule4_ω
xchain109_n18_α:
# IR_VAR_REF local
bb77_α:
 lea rdi, [r12 + 944]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain109_n20_α
 xchain109_n18_β:
 jmp proc_rule4_ω
xchain109_n19_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb78_α:
 jmp qword ptr [r12 + 64]
 xchain109_n19_β:
 jmp proc_rule4_ω
xchain109_n20_α:
bb79_α:
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
bb80_α:
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
bb81_α:
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
xchain109_n23_α:
# IR_VAR_REF local
bb82_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain109_n24_α
 xchain109_n23_β:
 jmp xchain109_n22_α
xchain109_n24_α:
# IR_LIT_STRING
bb83_α:
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
xchain109_n25_α:
# IR_VAR_REF local
bb84_α:
 lea rdi, [r12 + 976]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain109_n26_α
 xchain109_n25_β:
 jmp proc_rule4_ω
xchain109_n26_α:
# IR_VAR_REF local
bb85_α:
 lea rdi, [r12 + 960]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain109_n27_α
 xchain109_n26_β:
 jmp proc_rule4_ω
xchain109_n27_α:
bb86_α:
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
bb87_α:
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
xchain109_n29_α:
# IR_VAR_REF local
bb88_α:
 lea rdi, [r12 + 944]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain109_n30_α
 xchain109_n29_β:
 jmp xchain109_n22_α
xchain109_n30_α:
# IR_VAR_REF local
bb89_α:
 lea rdi, [r12 + 960]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain109_n31_α
 xchain109_n30_β:
 jmp xchain109_n22_α
xchain109_n31_α:
bb90_α:
  .section .rodata
  .Lcall90_pname: .string "rule4"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall90_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain109_n22_α
 jmp xchain109_n32_α
xchain109_n31_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain109_n22_α
 jmp xchain109_n32_α
xchain109_n32_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb91_α:
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
pop r12
ret
proc_rule4_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
  cmp esi, 0
  jne proc_rule2_β
proc_rule2_α_body:
xchain169_n0_α:
bb92_α:
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
xchain169_n1_α:
# IR_VAR_REF local
bb93_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain169_n2_α
 xchain169_n1_β:
 jmp xchain169_n7_α
xchain169_n2_α:
# IR_LIT_STRING
bb94_α:
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
xchain169_n3_α:
# IR_LIT_STRING
bb95_α:
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
xchain169_n4_α:
# IR_VAR_REF local
bb96_α:
 lea rdi, [r12 + 592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain169_n5_α
 xchain169_n4_β:
 jmp proc_rule2_ω
xchain169_n5_α:
bb97_α:
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
bb98_α:
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
bb99_α:
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
xchain169_n8_α:
# IR_VAR_REF local
bb100_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain169_n9_α
 xchain169_n8_β:
 jmp xchain169_n7_α
xchain169_n9_α:
# IR_LIT_STRING
bb101_α:
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
xchain169_n10_α:
# IR_LIT_STRING
bb102_α:
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
xchain169_n11_α:
# IR_VAR_REF local
bb103_α:
 lea rdi, [r12 + 608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain169_n12_α
 xchain169_n11_β:
 jmp proc_rule2_ω
xchain169_n12_α:
bb104_α:
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
bb105_α:
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
xchain169_n14_α:
# IR_VAR_REF local
bb106_α:
 lea rdi, [r12 + 592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain169_n15_α
 xchain169_n14_β:
 jmp xchain169_n7_α
xchain169_n15_α:
# IR_VAR_REF local
bb107_α:
 lea rdi, [r12 + 592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain169_n16_α
 xchain169_n15_β:
 jmp xchain169_n7_α
xchain169_n16_α:
# IR_VAR_REF local
bb108_α:
 lea rdi, [r12 + 608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain169_n17_α
 xchain169_n16_β:
 jmp xchain169_n7_α
xchain169_n17_α:
bb109_α:
  .section .rodata
  .Lcall109_pname: .string "my_append"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall109_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain169_n7_α
 jmp xchain169_n18_α
xchain169_n17_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain169_n7_α
 jmp xchain169_n18_α
xchain169_n18_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb110_α:
 lea rax, [rip + xchain169_n17_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_rule2_γ
 xchain169_n18_β:
 jmp proc_rule2_ω
xchain169_n19_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb111_α:
 jmp qword ptr [r12 + 64]
 xchain169_n19_β:
 jmp proc_rule2_ω
proc_rule2_β:
jmp xchain169_n19_α
proc_rule2_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_rule2_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
  cmp esi, 0
  jne proc_theorem_β
proc_theorem_α_body:
xchain205_n0_α:
bb112_α:
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
xchain205_n1_α:
# IR_VAR_REF local
bb113_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xchain205_n2_α
 xchain205_n1_β:
 jmp xchain205_n10_α
xchain205_n2_α:
# IR_LIT_STRING
bb114_α:
 mov qword ptr [r12 + 1824], 1
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [r12 + 1832], rax
 jmp xchain205_n3_α
 xchain205_n2_β:
 jmp proc_theorem_ω
.Lx210_0:
 .quad .Lx210_0_s
.Lx210_0_s:
 .string "."
xchain205_n3_α:
# IR_LIT_STRING
bb115_α:
 mov qword ptr [r12 + 1744], 1
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [r12 + 1752], rax
 jmp xchain205_n4_α
 xchain205_n3_β:
 jmp proc_theorem_ω
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
 .string "m"
xchain205_n4_α:
# IR_LIT_STRING
bb116_α:
 mov qword ptr [r12 + 1728], 1
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [r12 + 1736], rax
 jmp xchain205_n5_α
 xchain205_n4_β:
 jmp proc_theorem_ω
.Lx212_0:
 .quad .Lx212_0_s
.Lx212_0_s:
 .string "."
xchain205_n5_α:
# IR_LIT_STRING
bb117_α:
 mov qword ptr [r12 + 1648], 1
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [r12 + 1656], rax
 jmp xchain205_n6_α
 xchain205_n5_β:
 jmp proc_theorem_ω
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "i"
xchain205_n6_α:
# IR_LIT_STRING
bb118_α:
 mov qword ptr [r12 + 1632], 1
 mov rax, qword ptr [rip + .Lx214_0]
 mov qword ptr [r12 + 1640], rax
 jmp xchain205_n7_α
 xchain205_n6_β:
 jmp proc_theorem_ω
.Lx214_0:
 .quad .Lx214_0_s
.Lx214_0_s:
 .string "[]"
xchain205_n7_α:
bb119_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1728] -> [r12+1680]
 mov rax, qword ptr [r12 + 1728]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 1688], rax
# marshal arg1 = producer-box slot [r12+1648] -> [r12+1696]
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 1704], rax
# marshal arg2 = producer-box slot [r12+1632] -> [r12+1712]
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1720], rax
  .section .rodata
  .Lrkfn216: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn216]
 lea rsi, [r12 + 1680]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 cmp eax, 99
 je proc_theorem_ω
 jmp xchain205_n8_α
 xchain205_n7_β:
 jmp proc_theorem_ω
xchain205_n8_α:
bb120_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1824] -> [r12+1776]
 mov rax, qword ptr [r12 + 1824]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 1784], rax
# marshal arg1 = producer-box slot [r12+1744] -> [r12+1792]
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 1800], rax
# marshal arg2 = producer-box slot [r12+1664] -> [r12+1808]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1816], rax
  .section .rodata
  .Lrkfn218: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn218]
 lea rsi, [r12 + 1776]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 cmp eax, 99
 je xchain205_n10_α
 jmp xchain205_n9_α
 xchain205_n8_β:
 jmp xchain205_n10_α
xchain205_n9_α:
bb121_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1616] -> [r12+1584]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1592], rax
# marshal arg1 = producer-box slot [r12+1760] -> [r12+1600]
 mov rax, qword ptr [r12 + 1760]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 1768]
 mov qword ptr [r12 + 1608], rax
  .section .rodata
  .Lrkfn220: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn220]
 lea rsi, [r12 + 1584]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 cmp eax, 99
 je xchain205_n10_α
 jmp xchain205_n11_α
 xchain205_n9_β:
 jmp xchain205_n10_α
xchain205_n10_α:
bb122_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+1008]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn222: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn222]
 lea rsi, [r12 + 1008]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je proc_theorem_ω
 jmp xchain205_n12_α
 xchain205_n10_β:
 jmp proc_theorem_ω
xchain205_n11_α:
# IR_VAR_REF local
bb123_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain205_n13_α
 xchain205_n11_β:
 jmp xchain205_n10_α
xchain205_n12_α:
# IR_VAR_REF local
bb124_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain205_n14_α
 xchain205_n12_β:
 jmp xchain205_n19_α
xchain205_n13_α:
# IR_VAR_REF local
bb125_α:
 lea rdi, [r12 + 1840]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain205_n15_α
 xchain205_n13_β:
 jmp xchain205_n10_α
xchain205_n14_α:
# IR_VAR_REF local
bb126_α:
 lea rdi, [r12 + 1872]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain205_n16_α
 xchain205_n14_β:
 jmp xchain205_n19_α
xchain205_n15_α:
bb127_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1536] -> [r12+1504]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1512], rax
# marshal arg1 = producer-box slot [r12+1552] -> [r12+1520]
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 1528], rax
  .section .rodata
  .Lrkfn232: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn232]
 lea rsi, [r12 + 1504]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 cmp eax, 99
 je xchain205_n10_α
 jmp xchain205_n17_α
 xchain205_n15_β:
 jmp xchain205_n10_α
xchain205_n16_α:
bb128_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+960] -> [r12+928]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 936], rax
# marshal arg1 = producer-box slot [r12+976] -> [r12+944]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lrkfn234: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn234]
 lea rsi, [r12 + 928]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n18_α
 xchain205_n16_β:
 jmp xchain205_n19_α
xchain205_n17_α:
# IR_VAR_REF local
bb129_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain205_n20_α
 xchain205_n17_β:
 jmp xchain205_n10_α
xchain205_n18_α:
# IR_VAR_REF local
bb130_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain205_n21_α
 xchain205_n18_β:
 jmp xchain205_n19_α
xchain205_n19_α:
bb131_α:
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
xchain205_n20_α:
# IR_LIT_STRING
bb132_α:
 mov qword ptr [r12 + 1472], 1
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [r12 + 1480], rax
 jmp xchain205_n22_α
 xchain205_n20_β:
 jmp proc_theorem_ω
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "."
xchain205_n21_α:
# IR_VAR_REF local
bb133_α:
 lea rdi, [r12 + 1920]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain205_n23_α
 xchain205_n21_β:
 jmp xchain205_n19_α
xchain205_n22_α:
# IR_LIT_STRING
bb134_α:
 mov qword ptr [r12 + 1392], 1
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain205_n24_α
 xchain205_n22_β:
 jmp proc_theorem_ω
.Lx244_0:
 .quad .Lx244_0_s
.Lx244_0_s:
 .string "."
xchain205_n23_α:
bb135_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+880] -> [r12+848]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
# marshal arg1 = producer-box slot [r12+896] -> [r12+864]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 872], rax
  .section .rodata
  .Lrkfn246: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn246]
 lea rsi, [r12 + 848]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n25_α
 xchain205_n23_β:
 jmp xchain205_n19_α
xchain205_n24_α:
# IR_LIT_STRING
bb136_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [r12 + 1320], rax
 jmp xchain205_n26_α
 xchain205_n24_β:
 jmp proc_theorem_ω
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "a"
xchain205_n25_α:
# IR_VAR_REF local
bb137_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain205_n27_α
 xchain205_n25_β:
 jmp xchain205_n19_α
xchain205_n26_α:
# IR_LIT_STRING
bb138_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain205_n28_α
 xchain205_n26_β:
 jmp proc_theorem_ω
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "."
xchain205_n27_α:
# IR_LIT_STRING
bb139_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain205_n29_α
 xchain205_n27_β:
 jmp proc_theorem_ω
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "."
xchain205_n28_α:
# IR_LIT_STRING
bb140_α:
 mov qword ptr [r12 + 1216], 1
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [r12 + 1224], rax
 jmp xchain205_n30_α
 xchain205_n28_β:
 jmp proc_theorem_ω
.Lx252_0:
 .quad .Lx252_0_s
.Lx252_0_s:
 .string "m"
xchain205_n29_α:
# IR_LIT_STRING
bb141_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain205_n31_α
 xchain205_n29_β:
 jmp proc_theorem_ω
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "."
xchain205_n30_α:
# IR_LIT_STRING
bb142_α:
 mov qword ptr [r12 + 1200], 1
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [r12 + 1208], rax
 jmp xchain205_n32_α
 xchain205_n30_β:
 jmp proc_theorem_ω
.Lx254_0:
 .quad .Lx254_0_s
.Lx254_0_s:
 .string "."
xchain205_n31_α:
# IR_VAR_REF local
bb143_α:
 lea rdi, [r12 + 1840]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain205_n33_α
 xchain205_n31_β:
 jmp proc_theorem_ω
xchain205_n32_α:
# IR_LIT_STRING
bb144_α:
 mov qword ptr [r12 + 1120], 1
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [r12 + 1128], rax
 jmp xchain205_n34_α
 xchain205_n32_β:
 jmp proc_theorem_ω
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "i"
xchain205_n33_α:
# IR_VAR_REF local
bb145_α:
 lea rdi, [r12 + 1872]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain205_n35_α
 xchain205_n33_β:
 jmp proc_theorem_ω
xchain205_n34_α:
# IR_LIT_STRING
bb146_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx260_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain205_n36_α
 xchain205_n34_β:
 jmp proc_theorem_ω
.Lx260_0:
 .quad .Lx260_0_s
.Lx260_0_s:
 .string "[]"
xchain205_n35_α:
bb147_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+736] -> [r12+688]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 696], rax
# marshal arg1 = producer-box slot [r12+656] -> [r12+704]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 712], rax
# marshal arg2 = producer-box slot [r12+640] -> [r12+720]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn262: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn262]
 lea rsi, [r12 + 688]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je proc_theorem_ω
 jmp xchain205_n37_α
 xchain205_n35_β:
 jmp proc_theorem_ω
xchain205_n36_α:
bb148_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1200] -> [r12+1152]
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1160], rax
# marshal arg1 = producer-box slot [r12+1120] -> [r12+1168]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1176], rax
# marshal arg2 = producer-box slot [r12+1104] -> [r12+1184]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lrkfn264: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn264]
 lea rsi, [r12 + 1152]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 cmp eax, 99
 je proc_theorem_ω
 jmp xchain205_n38_α
 xchain205_n36_β:
 jmp proc_theorem_ω
xchain205_n37_α:
# IR_VAR_REF local
bb149_α:
 lea rdi, [r12 + 1904]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain205_n39_α
 xchain205_n37_β:
 jmp proc_theorem_ω
xchain205_n38_α:
bb150_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1296] -> [r12+1248]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1256], rax
# marshal arg1 = producer-box slot [r12+1216] -> [r12+1264]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1272], rax
# marshal arg2 = producer-box slot [r12+1136] -> [r12+1280]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1288], rax
  .section .rodata
  .Lrkfn268: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn268]
 lea rsi, [r12 + 1248]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je proc_theorem_ω
 jmp xchain205_n40_α
 xchain205_n38_β:
 jmp proc_theorem_ω
xchain205_n39_α:
bb151_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+816] -> [r12+768]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 776], rax
# marshal arg1 = producer-box slot [r12+672] -> [r12+784]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 792], rax
# marshal arg2 = producer-box slot [r12+624] -> [r12+800]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 808], rax
  .section .rodata
  .Lrkfn270: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn270]
 lea rsi, [r12 + 768]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n41_α
 xchain205_n39_β:
 jmp xchain205_n19_α
xchain205_n40_α:
bb152_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1392] -> [r12+1344]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1352], rax
# marshal arg1 = producer-box slot [r12+1312] -> [r12+1360]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1368], rax
# marshal arg2 = producer-box slot [r12+1232] -> [r12+1376]
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1384], rax
  .section .rodata
  .Lrkfn272: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn272]
 lea rsi, [r12 + 1344]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je proc_theorem_ω
 jmp xchain205_n42_α
 xchain205_n40_β:
 jmp proc_theorem_ω
xchain205_n41_α:
bb153_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+608] -> [r12+576]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
# marshal arg1 = producer-box slot [r12+752] -> [r12+592]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn274: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn274]
 lea rsi, [r12 + 576]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n43_α
 xchain205_n41_β:
 jmp xchain205_n19_α
xchain205_n42_α:
# IR_LIT_STRING
bb154_α:
 mov qword ptr [r12 + 1088], 1
 mov rax, qword ptr [rip + .Lx275_0]
 mov qword ptr [r12 + 1096], rax
 jmp xchain205_n44_α
 xchain205_n42_β:
 jmp proc_theorem_ω
.Lx275_0:
 .quad .Lx275_0_s
.Lx275_0_s:
 .string "[]"
xchain205_n43_α:
# IR_VAR
bb155_α:
 mov rax, qword ptr [r12 + 1920]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 536], rax
 jmp xchain205_n45_α
 xchain205_n43_β:
 jmp xchain205_n19_α
xchain205_n44_α:
bb156_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1472] -> [r12+1424]
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 1432], rax
# marshal arg1 = producer-box slot [r12+1328] -> [r12+1440]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1448], rax
# marshal arg2 = producer-box slot [r12+1088] -> [r12+1456]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1464], rax
  .section .rodata
  .Lrkfn279: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn279]
 lea rsi, [r12 + 1424]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 cmp eax, 99
 je xchain205_n10_α
 jmp xchain205_n46_α
 xchain205_n44_β:
 jmp xchain205_n10_α
xchain205_n45_α:
# IR_LIT_INTEGER
bb157_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx280_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain205_n47_α
 xchain205_n45_β:
 jmp xchain205_n19_α
.Lx280_0:
 .quad 0
xchain205_n46_α:
bb158_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1072] -> [r12+1040]
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1048], rax
# marshal arg1 = producer-box slot [r12+1408] -> [r12+1056]
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1064], rax
  .section .rodata
  .Lrkfn282: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn282]
 lea rsi, [r12 + 1040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 cmp eax, 99
 je xchain205_n10_α
 jmp xchain205_n48_α
 xchain205_n46_β:
 jmp xchain205_n10_α
xchain205_n47_α:
bb159_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+528] -> [r12+496]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = producer-box slot [r12+544] -> [r12+512]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn284: .string "$cmp_gt"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn284]
 lea rsi, [r12 + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n49_α
 xchain205_n47_β:
 jmp xchain205_n19_α
xchain205_n48_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb160_α:
 lea rax, [rip + xchain205_n10_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_theorem_γ
 xchain205_n48_β:
 jmp proc_theorem_ω
xchain205_n49_α:
# IR_VAR_REF local
bb161_α:
 lea rdi, [r12 + 1888]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain205_n51_α
 xchain205_n49_β:
 jmp xchain205_n19_α
xchain205_n50_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb162_α:
 jmp qword ptr [r12 + 80]
 xchain205_n50_β:
 jmp proc_theorem_ω
xchain205_n51_α:
# IR_VAR
bb163_α:
 mov rax, qword ptr [r12 + 1920]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 456], rax
 jmp xchain205_n52_α
 xchain205_n51_β:
 jmp xchain205_n19_α
xchain205_n52_α:
# IR_LIT_INTEGER
bb164_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx293_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain205_n53_α
 xchain205_n52_β:
 jmp xchain205_n19_α
.Lx293_0:
 .quad 1
xchain205_n53_α:
bb165_α:
# BOX IR_CALL $is_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+432] -> [r12+384]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [r12+448] -> [r12+400]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 408], rax
# marshal arg2 = producer-box slot [r12+464] -> [r12+416]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn295: .string "$is_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn295]
 lea rsi, [r12 + 384]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n54_α
 xchain205_n53_β:
 jmp xchain205_n19_α
xchain205_n54_α:
# IR_VAR_REF local
bb166_α:
 lea rdi, [r12 + 1856]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain205_n55_α
 xchain205_n54_β:
 jmp xchain205_n19_α
xchain205_n55_α:
# IR_VAR_REF local
bb167_α:
 lea rdi, [r12 + 1888]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain205_n56_α
 xchain205_n55_β:
 jmp xchain205_n19_α
xchain205_n56_α:
# IR_VAR_REF local
bb168_α:
 lea rdi, [r12 + 1904]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain205_n57_α
 xchain205_n56_β:
 jmp xchain205_n19_α
xchain205_n57_α:
bb169_α:
  .section .rodata
  .Lcall169_pname: .string "theorem"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall169_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n58_α
xchain205_n57_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n58_α
xchain205_n58_α:
# IR_VAR_REF local
bb170_α:
 lea rdi, [r12 + 1840]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain205_n59_α
 xchain205_n58_β:
 jmp xchain205_n19_α
xchain205_n59_α:
# IR_VAR_REF local
bb171_α:
 lea rdi, [r12 + 1856]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain205_n60_α
 xchain205_n59_β:
 jmp xchain205_n19_α
xchain205_n60_α:
# IR_VAR_REF local
bb172_α:
 lea rdi, [r12 + 1872]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain205_n61_α
 xchain205_n60_β:
 jmp xchain205_n19_α
xchain205_n61_α:
bb173_α:
  .section .rodata
  .Lcall173_pname: .string "rule"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall173_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain205_n57_β
 jmp xchain205_n62_α
xchain205_n61_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain205_n57_β
 jmp xchain205_n62_α
xchain205_n62_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb174_α:
 lea rax, [rip + xchain205_n19_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_theorem_γ
 xchain205_n62_β:
 jmp proc_theorem_ω
proc_theorem_β:
jmp xchain205_n50_α
proc_theorem_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_theorem_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
  cmp esi, 0
  jne proc_mu_β
proc_mu_α_body:
xchain312_n0_α:
bb175_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn314: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn314]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je proc_mu_ω
 jmp xchain312_n1_α
 xchain312_n0_β:
 jmp proc_mu_ω
xchain312_n1_α:
# IR_LIT_STRING
bb176_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx315_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain312_n2_α
 xchain312_n1_β:
 jmp proc_mu_ω
.Lx315_0:
 .quad .Lx315_0_s
.Lx315_0_s:
 .string "."
xchain312_n2_α:
# IR_LIT_STRING
bb177_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx316_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain312_n3_α
 xchain312_n2_β:
 jmp proc_mu_ω
.Lx316_0:
 .quad .Lx316_0_s
.Lx316_0_s:
 .string "m"
xchain312_n3_α:
# IR_LIT_STRING
bb178_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx317_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain312_n4_α
 xchain312_n3_β:
 jmp proc_mu_ω
.Lx317_0:
 .quad .Lx317_0_s
.Lx317_0_s:
 .string "."
xchain312_n4_α:
# IR_LIT_STRING
bb179_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx318_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain312_n5_α
 xchain312_n4_β:
 jmp proc_mu_ω
.Lx318_0:
 .quad .Lx318_0_s
.Lx318_0_s:
 .string "u"
xchain312_n5_α:
# IR_LIT_STRING
bb180_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx319_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain312_n6_α
 xchain312_n5_β:
 jmp proc_mu_ω
.Lx319_0:
 .quad .Lx319_0_s
.Lx319_0_s:
 .string "."
xchain312_n6_α:
# IR_LIT_STRING
bb181_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx320_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain312_n7_α
 xchain312_n6_β:
 jmp proc_mu_ω
.Lx320_0:
 .quad .Lx320_0_s
.Lx320_0_s:
 .string "i"
xchain312_n7_α:
# IR_LIT_STRING
bb182_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx321_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain312_n8_α
 xchain312_n7_β:
 jmp proc_mu_ω
.Lx321_0:
 .quad .Lx321_0_s
.Lx321_0_s:
 .string "."
xchain312_n8_α:
# IR_LIT_STRING
bb183_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx322_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain312_n9_α
 xchain312_n8_β:
 jmp proc_mu_ω
.Lx322_0:
 .quad .Lx322_0_s
.Lx322_0_s:
 .string "i"
xchain312_n9_α:
# IR_LIT_STRING
bb184_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx323_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain312_n10_α
 xchain312_n9_β:
 jmp proc_mu_ω
.Lx323_0:
 .quad .Lx323_0_s
.Lx323_0_s:
 .string "."
xchain312_n10_α:
# IR_LIT_STRING
bb185_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx324_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain312_n11_α
 xchain312_n10_β:
 jmp proc_mu_ω
.Lx324_0:
 .quad .Lx324_0_s
.Lx324_0_s:
 .string "u"
xchain312_n11_α:
# IR_LIT_STRING
bb186_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx325_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain312_n12_α
 xchain312_n11_β:
 jmp proc_mu_ω
.Lx325_0:
 .quad .Lx325_0_s
.Lx325_0_s:
 .string "[]"
xchain312_n12_α:
bb187_α:
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
  .Lrkfn327: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn327]
 lea rsi, [r12 + 208]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je proc_mu_ω
 jmp xchain312_n13_α
 xchain312_n12_β:
 jmp proc_mu_ω
xchain312_n13_α:
bb188_α:
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
  .Lrkfn329: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn329]
 lea rsi, [r12 + 304]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je proc_mu_ω
 jmp xchain312_n14_α
 xchain312_n13_β:
 jmp proc_mu_ω
xchain312_n14_α:
bb189_α:
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
  .Lrkfn331: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn331]
 lea rsi, [r12 + 400]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je proc_mu_ω
 jmp xchain312_n15_α
 xchain312_n14_β:
 jmp proc_mu_ω
xchain312_n15_α:
bb190_α:
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
  .Lrkfn333: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn333]
 lea rsi, [r12 + 496]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je proc_mu_ω
 jmp xchain312_n16_α
 xchain312_n15_β:
 jmp proc_mu_ω
xchain312_n16_α:
bb191_α:
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
  .Lrkfn335: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn335]
 lea rsi, [r12 + 592]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain312_n18_α
 jmp xchain312_n17_α
 xchain312_n16_β:
 jmp xchain312_n18_α
xchain312_n17_α:
# IR_LIT_INTEGER
bb192_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx336_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain312_n19_α
 xchain312_n17_β:
 jmp xchain312_n18_α
.Lx336_0:
 .quad 5
xchain312_n18_α:
bb193_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+48] -> [r12+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn338: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn338]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_mu_ω
 jmp proc_mu_ω
 xchain312_n18_β:
 jmp proc_mu_ω
xchain312_n19_α:
# IR_VAR_REF local
bb194_α:
 lea rdi, [r12 + 688]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain312_n20_α
 xchain312_n19_β:
 jmp xchain312_n18_α
xchain312_n20_α:
bb195_α:
  .section .rodata
  .Lcall195_pname: .string "theorem"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 680]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall195_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain312_n18_α
 jmp xchain312_n21_α
xchain312_n20_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain312_n18_α
 jmp xchain312_n21_α
xchain312_n21_α:
bb196_α:
# IR_CUT
 jmp xchain312_n22_α
 xchain312_n21_β:
 jmp xchain312_n20_β
xchain312_n22_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb197_α:
 lea rax, [rip + xchain312_n20_β]
 mov qword ptr [r12 + 32], rax
 jmp proc_mu_γ
 xchain312_n22_β:
 jmp proc_mu_ω
xchain312_n23_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb198_α:
 jmp qword ptr [r12 + 32]
 xchain312_n23_β:
 jmp proc_mu_ω
proc_mu_β:
jmp xchain312_n23_α
proc_mu_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_mu_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
  cmp esi, 0
  jne proc_rule3_β
proc_rule3_α_body:
xchain347_n0_α:
bb199_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn349: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn349]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_rule3_ω
 jmp xchain347_n1_α
 xchain347_n0_β:
 jmp proc_rule3_ω
xchain347_n1_α:
# IR_VAR_REF local
bb200_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain347_n2_α
 xchain347_n1_β:
 jmp xchain347_n13_α
xchain347_n2_α:
# IR_LIT_STRING
bb201_α:
 mov qword ptr [r12 + 1120], 1
 mov rax, qword ptr [rip + .Lx352_0]
 mov qword ptr [r12 + 1128], rax
 jmp xchain347_n3_α
 xchain347_n2_β:
 jmp proc_rule3_ω
.Lx352_0:
 .quad .Lx352_0_s
.Lx352_0_s:
 .string "."
xchain347_n3_α:
# IR_LIT_STRING
bb202_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx353_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain347_n4_α
 xchain347_n3_β:
 jmp proc_rule3_ω
.Lx353_0:
 .quad .Lx353_0_s
.Lx353_0_s:
 .string "i"
xchain347_n4_α:
# IR_LIT_STRING
bb203_α:
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx354_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain347_n5_α
 xchain347_n4_β:
 jmp proc_rule3_ω
.Lx354_0:
 .quad .Lx354_0_s
.Lx354_0_s:
 .string "."
xchain347_n5_α:
# IR_LIT_STRING
bb204_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx355_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain347_n6_α
 xchain347_n5_β:
 jmp proc_rule3_ω
.Lx355_0:
 .quad .Lx355_0_s
.Lx355_0_s:
 .string "i"
xchain347_n6_α:
# IR_LIT_STRING
bb205_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx356_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain347_n7_α
 xchain347_n6_β:
 jmp proc_rule3_ω
.Lx356_0:
 .quad .Lx356_0_s
.Lx356_0_s:
 .string "."
xchain347_n7_α:
# IR_LIT_STRING
bb206_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx357_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain347_n8_α
 xchain347_n7_β:
 jmp proc_rule3_ω
.Lx357_0:
 .quad .Lx357_0_s
.Lx357_0_s:
 .string "i"
xchain347_n8_α:
# IR_VAR_REF local
bb207_α:
 lea rdi, [r12 + 1168]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain347_n9_α
 xchain347_n8_β:
 jmp proc_rule3_ω
xchain347_n9_α:
bb208_α:
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
  .Lrkfn361: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn361]
 lea rsi, [r12 + 880]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je proc_rule3_ω
 jmp xchain347_n10_α
 xchain347_n9_β:
 jmp proc_rule3_ω
xchain347_n10_α:
bb209_α:
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
  .Lrkfn363: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn363]
 lea rsi, [r12 + 976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je proc_rule3_ω
 jmp xchain347_n11_α
 xchain347_n10_β:
 jmp proc_rule3_ω
xchain347_n11_α:
bb210_α:
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
  .Lrkfn365: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn365]
 lea rsi, [r12 + 1072]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain347_n13_α
 jmp xchain347_n12_α
 xchain347_n11_β:
 jmp xchain347_n13_α
xchain347_n12_α:
bb211_α:
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
  .Lrkfn367: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn367]
 lea rsi, [r12 + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain347_n13_α
 jmp xchain347_n14_α
 xchain347_n12_β:
 jmp xchain347_n13_α
xchain347_n13_α:
bb212_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+576]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn369: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn369]
 lea rsi, [r12 + 576]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je proc_rule3_ω
 jmp xchain347_n15_α
 xchain347_n13_β:
 jmp proc_rule3_ω
xchain347_n14_α:
# IR_VAR_REF local
bb213_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain347_n16_α
 xchain347_n14_β:
 jmp xchain347_n13_α
xchain347_n15_α:
# IR_VAR_REF local
bb214_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain347_n17_α
 xchain347_n15_β:
 jmp xchain347_n26_α
xchain347_n16_α:
# IR_LIT_STRING
bb215_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx374_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain347_n18_α
 xchain347_n16_β:
 jmp proc_rule3_ω
.Lx374_0:
 .quad .Lx374_0_s
.Lx374_0_s:
 .string "."
xchain347_n17_α:
# IR_LIT_STRING
bb216_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx375_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain347_n19_α
 xchain347_n17_β:
 jmp proc_rule3_ω
.Lx375_0:
 .quad .Lx375_0_s
.Lx375_0_s:
 .string "."
xchain347_n18_α:
# IR_LIT_STRING
bb217_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx376_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain347_n20_α
 xchain347_n18_β:
 jmp proc_rule3_ω
.Lx376_0:
 .quad .Lx376_0_s
.Lx376_0_s:
 .string "u"
xchain347_n19_α:
# IR_VAR_REF local
bb218_α:
 lea rdi, [r12 + 1168]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain347_n21_α
 xchain347_n19_β:
 jmp proc_rule3_ω
xchain347_n20_α:
# IR_VAR_REF local
bb219_α:
 lea rdi, [r12 + 1168]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain347_n22_α
 xchain347_n20_β:
 jmp proc_rule3_ω
xchain347_n21_α:
# IR_VAR_REF local
bb220_α:
 lea rdi, [r12 + 1136]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain347_n23_α
 xchain347_n21_β:
 jmp proc_rule3_ω
xchain347_n22_α:
bb221_α:
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
  .Lrkfn384: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn384]
 lea rsi, [r12 + 704]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain347_n13_α
 jmp xchain347_n24_α
 xchain347_n22_β:
 jmp xchain347_n13_α
xchain347_n23_α:
bb222_α:
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
  .Lrkfn386: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn386]
 lea rsi, [r12 + 496]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain347_n26_α
 jmp xchain347_n25_α
 xchain347_n23_β:
 jmp xchain347_n26_α
xchain347_n24_α:
bb223_α:
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
  .Lrkfn388: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn388]
 lea rsi, [r12 + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain347_n13_α
 jmp xchain347_n27_α
 xchain347_n24_β:
 jmp xchain347_n13_α
xchain347_n25_α:
bb224_α:
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
  .Lrkfn390: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn390]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain347_n26_α
 jmp xchain347_n28_α
 xchain347_n25_β:
 jmp xchain347_n26_α
xchain347_n26_α:
bb225_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn392: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn392]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_rule3_ω
 jmp proc_rule3_ω
 xchain347_n26_β:
 jmp proc_rule3_ω
xchain347_n27_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb226_α:
 lea rax, [rip + xchain347_n13_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_rule3_γ
 xchain347_n27_β:
 jmp proc_rule3_ω
xchain347_n28_α:
# IR_VAR_REF local
bb227_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain347_n30_α
 xchain347_n28_β:
 jmp xchain347_n26_α
xchain347_n29_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb228_α:
 jmp qword ptr [r12 + 64]
 xchain347_n29_β:
 jmp proc_rule3_ω
xchain347_n30_α:
# IR_LIT_STRING
bb229_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx399_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain347_n31_α
 xchain347_n30_β:
 jmp proc_rule3_ω
.Lx399_0:
 .quad .Lx399_0_s
.Lx399_0_s:
 .string "."
xchain347_n31_α:
# IR_VAR_REF local
bb230_α:
 lea rdi, [r12 + 1168]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain347_n32_α
 xchain347_n31_β:
 jmp proc_rule3_ω
xchain347_n32_α:
# IR_VAR_REF local
bb231_α:
 lea rdi, [r12 + 1152]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain347_n33_α
 xchain347_n32_β:
 jmp proc_rule3_ω
xchain347_n33_α:
bb232_α:
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
  .Lrkfn405: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn405]
 lea rsi, [r12 + 320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain347_n26_α
 jmp xchain347_n34_α
 xchain347_n33_β:
 jmp xchain347_n26_α
xchain347_n34_α:
bb233_α:
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
  .Lrkfn407: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn407]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain347_n26_α
 jmp xchain347_n35_α
 xchain347_n34_β:
 jmp xchain347_n26_α
xchain347_n35_α:
# IR_VAR_REF local
bb234_α:
 lea rdi, [r12 + 1136]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain347_n36_α
 xchain347_n35_β:
 jmp xchain347_n26_α
xchain347_n36_α:
# IR_VAR_REF local
bb235_α:
 lea rdi, [r12 + 1152]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain347_n37_α
 xchain347_n36_β:
 jmp xchain347_n26_α
xchain347_n37_α:
bb236_α:
  .section .rodata
  .Lcall236_pname: .string "rule3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall236_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain347_n26_α
 jmp xchain347_n38_α
xchain347_n37_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain347_n26_α
 jmp xchain347_n38_α
xchain347_n38_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb237_α:
 lea rax, [rip + xchain347_n37_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_rule3_γ
 xchain347_n38_β:
 jmp proc_rule3_ω
proc_rule3_β:
jmp xchain347_n29_α
proc_rule3_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_rule3_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
  cmp esi, 0
  jne proc_rule1_β
proc_rule1_α_body:
xchain415_n0_α:
bb238_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn417: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn417]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_rule1_ω
 jmp xchain415_n1_α
 xchain415_n0_β:
 jmp proc_rule1_ω
xchain415_n1_α:
# IR_VAR_REF local
bb239_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain415_n2_α
 xchain415_n1_β:
 jmp xchain415_n7_α
xchain415_n2_α:
# IR_LIT_STRING
bb240_α:
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx420_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain415_n3_α
 xchain415_n2_β:
 jmp proc_rule1_ω
.Lx420_0:
 .quad .Lx420_0_s
.Lx420_0_s:
 .string "."
xchain415_n3_α:
# IR_LIT_STRING
bb241_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx421_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain415_n4_α
 xchain415_n3_β:
 jmp proc_rule1_ω
.Lx421_0:
 .quad .Lx421_0_s
.Lx421_0_s:
 .string "i"
xchain415_n4_α:
# IR_LIT_STRING
bb242_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx422_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain415_n5_α
 xchain415_n4_β:
 jmp proc_rule1_ω
.Lx422_0:
 .quad .Lx422_0_s
.Lx422_0_s:
 .string "[]"
xchain415_n5_α:
bb243_α:
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
  .Lrkfn424: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn424]
 lea rsi, [r12 + 976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je xchain415_n7_α
 jmp xchain415_n6_α
 xchain415_n5_β:
 jmp xchain415_n7_α
xchain415_n6_α:
bb244_α:
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
  .Lrkfn426: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn426]
 lea rsi, [r12 + 880]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain415_n7_α
 jmp xchain415_n8_α
 xchain415_n6_β:
 jmp xchain415_n7_α
xchain415_n7_α:
bb245_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+576]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn428: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn428]
 lea rsi, [r12 + 576]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je proc_rule1_ω
 jmp xchain415_n9_α
 xchain415_n7_β:
 jmp proc_rule1_ω
xchain415_n8_α:
# IR_VAR_REF local
bb246_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain415_n10_α
 xchain415_n8_β:
 jmp xchain415_n7_α
xchain415_n9_α:
# IR_VAR_REF local
bb247_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain415_n11_α
 xchain415_n9_β:
 jmp xchain415_n20_α
xchain415_n10_α:
# IR_LIT_STRING
bb248_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx433_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain415_n12_α
 xchain415_n10_β:
 jmp proc_rule1_ω
.Lx433_0:
 .quad .Lx433_0_s
.Lx433_0_s:
 .string "."
xchain415_n11_α:
# IR_LIT_STRING
bb249_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx434_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain415_n13_α
 xchain415_n11_β:
 jmp proc_rule1_ω
.Lx434_0:
 .quad .Lx434_0_s
.Lx434_0_s:
 .string "."
xchain415_n12_α:
# IR_LIT_STRING
bb250_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx435_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain415_n14_α
 xchain415_n12_β:
 jmp proc_rule1_ω
.Lx435_0:
 .quad .Lx435_0_s
.Lx435_0_s:
 .string "i"
xchain415_n13_α:
# IR_VAR_REF local
bb251_α:
 lea rdi, [r12 + 1072]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain415_n15_α
 xchain415_n13_β:
 jmp proc_rule1_ω
xchain415_n14_α:
# IR_LIT_STRING
bb252_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx438_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain415_n16_α
 xchain415_n14_β:
 jmp proc_rule1_ω
.Lx438_0:
 .quad .Lx438_0_s
.Lx438_0_s:
 .string "."
xchain415_n15_α:
# IR_VAR_REF local
bb253_α:
 lea rdi, [r12 + 1040]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain415_n17_α
 xchain415_n15_β:
 jmp proc_rule1_ω
xchain415_n16_α:
# IR_LIT_STRING
bb254_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx441_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain415_n18_α
 xchain415_n16_β:
 jmp proc_rule1_ω
.Lx441_0:
 .quad .Lx441_0_s
.Lx441_0_s:
 .string "u"
xchain415_n17_α:
bb255_α:
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
  .Lrkfn443: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn443]
 lea rsi, [r12 + 496]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain415_n20_α
 jmp xchain415_n19_α
 xchain415_n17_β:
 jmp xchain415_n20_α
xchain415_n18_α:
# IR_LIT_STRING
bb256_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx444_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain415_n21_α
 xchain415_n18_β:
 jmp proc_rule1_ω
.Lx444_0:
 .quad .Lx444_0_s
.Lx444_0_s:
 .string "[]"
xchain415_n19_α:
bb257_α:
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
  .Lrkfn446: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn446]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain415_n20_α
 jmp xchain415_n22_α
 xchain415_n19_β:
 jmp xchain415_n20_α
xchain415_n20_α:
bb258_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn448: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn448]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_rule1_ω
 jmp proc_rule1_ω
 xchain415_n20_β:
 jmp proc_rule1_ω
xchain415_n21_α:
bb259_α:
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
  .Lrkfn450: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn450]
 lea rsi, [r12 + 704]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je proc_rule1_ω
 jmp xchain415_n23_α
 xchain415_n21_β:
 jmp proc_rule1_ω
xchain415_n22_α:
# IR_VAR_REF local
bb260_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain415_n24_α
 xchain415_n22_β:
 jmp xchain415_n20_α
xchain415_n23_α:
bb261_α:
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
  .Lrkfn454: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn454]
 lea rsi, [r12 + 800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain415_n7_α
 jmp xchain415_n25_α
 xchain415_n23_β:
 jmp xchain415_n7_α
xchain415_n24_α:
# IR_LIT_STRING
bb262_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx455_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain415_n26_α
 xchain415_n24_β:
 jmp proc_rule1_ω
.Lx455_0:
 .quad .Lx455_0_s
.Lx455_0_s:
 .string "."
xchain415_n25_α:
bb263_α:
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
  .Lrkfn457: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn457]
 lea rsi, [r12 + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain415_n7_α
 jmp xchain415_n27_α
 xchain415_n25_β:
 jmp xchain415_n7_α
xchain415_n26_α:
# IR_VAR_REF local
bb264_α:
 lea rdi, [r12 + 1072]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain415_n28_α
 xchain415_n26_β:
 jmp proc_rule1_ω
xchain415_n27_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb265_α:
 lea rax, [rip + xchain415_n7_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_rule1_γ
 xchain415_n27_β:
 jmp proc_rule1_ω
xchain415_n28_α:
# IR_VAR_REF local
bb266_α:
 lea rdi, [r12 + 1056]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain415_n30_α
 xchain415_n28_β:
 jmp proc_rule1_ω
xchain415_n29_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb267_α:
 jmp qword ptr [r12 + 64]
 xchain415_n29_β:
 jmp proc_rule1_ω
xchain415_n30_α:
bb268_α:
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
  .Lrkfn467: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn467]
 lea rsi, [r12 + 320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain415_n20_α
 jmp xchain415_n31_α
 xchain415_n30_β:
 jmp xchain415_n20_α
xchain415_n31_α:
bb269_α:
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
  .Lrkfn469: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn469]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain415_n20_α
 jmp xchain415_n32_α
 xchain415_n31_β:
 jmp xchain415_n20_α
xchain415_n32_α:
# IR_VAR_REF local
bb270_α:
 lea rdi, [r12 + 1040]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain415_n33_α
 xchain415_n32_β:
 jmp xchain415_n20_α
xchain415_n33_α:
# IR_VAR_REF local
bb271_α:
 lea rdi, [r12 + 1056]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain415_n34_α
 xchain415_n33_β:
 jmp xchain415_n20_α
xchain415_n34_α:
bb272_α:
  .section .rodata
  .Lcall272_pname: .string "rule1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall272_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain415_n20_α
 jmp xchain415_n35_α
xchain415_n34_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain415_n20_α
 jmp xchain415_n35_α
xchain415_n35_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb273_α:
 lea rax, [rip + xchain415_n34_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_rule1_γ
 xchain415_n35_β:
 jmp proc_rule1_ω
proc_rule1_β:
jmp xchain415_n29_α
proc_rule1_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_rule1_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
  cmp esi, 0
  jne proc_my_append_β
proc_my_append_α_body:
xchain477_n0_α:
bb274_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn479: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn479]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_my_append_ω
 jmp xchain477_n1_α
 xchain477_n0_β:
 jmp proc_my_append_ω
xchain477_n1_α:
# IR_VAR_REF local
bb275_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain477_n2_α
 xchain477_n1_β:
 jmp xchain477_n5_α
xchain477_n2_α:
# IR_LIT_STRING
bb276_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx482_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain477_n3_α
 xchain477_n2_β:
 jmp xchain477_n5_α
.Lx482_0:
 .quad .Lx482_0_s
.Lx482_0_s:
 .string "[]"
xchain477_n3_α:
bb277_α:
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
  .Lrkfn484: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn484]
 lea rsi, [r12 + 896]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain477_n5_α
 jmp xchain477_n4_α
 xchain477_n3_β:
 jmp xchain477_n5_α
xchain477_n4_α:
# IR_VAR_REF local
bb278_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain477_n6_α
 xchain477_n4_β:
 jmp xchain477_n5_α
xchain477_n5_α:
bb279_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+704]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 712], rax
  .section .rodata
  .Lrkfn488: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn488]
 lea rsi, [r12 + 704]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je proc_my_append_ω
 jmp xchain477_n7_α
 xchain477_n5_β:
 jmp proc_my_append_ω
xchain477_n6_α:
# IR_VAR_REF local
bb280_α:
 lea rdi, [r12 + 976]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain477_n8_α
 xchain477_n6_β:
 jmp xchain477_n5_α
xchain477_n7_α:
# IR_VAR_REF local
bb281_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain477_n9_α
 xchain477_n7_β:
 jmp xchain477_n18_α
xchain477_n8_α:
bb282_α:
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
  .Lrkfn494: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn494]
 lea rsi, [r12 + 816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain477_n5_α
 jmp xchain477_n10_α
 xchain477_n8_β:
 jmp xchain477_n5_α
xchain477_n9_α:
# IR_LIT_STRING
bb283_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx495_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain477_n11_α
 xchain477_n9_β:
 jmp proc_my_append_ω
.Lx495_0:
 .quad .Lx495_0_s
.Lx495_0_s:
 .string "."
xchain477_n10_α:
# IR_VAR_REF local
bb284_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain477_n12_α
 xchain477_n10_β:
 jmp xchain477_n5_α
xchain477_n11_α:
# IR_VAR_REF local
bb285_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain477_n13_α
 xchain477_n11_β:
 jmp proc_my_append_ω
xchain477_n12_α:
# IR_VAR_REF local
bb286_α:
 lea rdi, [r12 + 976]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain477_n14_α
 xchain477_n12_β:
 jmp xchain477_n5_α
xchain477_n13_α:
# IR_VAR_REF local
bb287_α:
 lea rdi, [r12 + 960]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain477_n15_α
 xchain477_n13_β:
 jmp proc_my_append_ω
xchain477_n14_α:
bb288_α:
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
  .Lrkfn505: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn505]
 lea rsi, [r12 + 736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain477_n5_α
 jmp xchain477_n16_α
 xchain477_n14_β:
 jmp xchain477_n5_α
xchain477_n15_α:
bb289_α:
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
  .Lrkfn507: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn507]
 lea rsi, [r12 + 624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain477_n18_α
 jmp xchain477_n17_α
 xchain477_n15_β:
 jmp xchain477_n18_α
xchain477_n16_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb290_α:
 lea rax, [rip + xchain477_n5_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_my_append_γ
 xchain477_n16_β:
 jmp proc_my_append_ω
xchain477_n17_α:
bb291_α:
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
  .Lrkfn511: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn511]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain477_n18_α
 jmp xchain477_n20_α
 xchain477_n17_β:
 jmp xchain477_n18_α
xchain477_n18_α:
bb292_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn513: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn513]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_my_append_ω
 jmp proc_my_append_ω
 xchain477_n18_β:
 jmp proc_my_append_ω
xchain477_n19_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb293_α:
 jmp qword ptr [r12 + 80]
 xchain477_n19_β:
 jmp proc_my_append_ω
xchain477_n20_α:
# IR_VAR_REF local
bb294_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain477_n21_α
 xchain477_n20_β:
 jmp xchain477_n18_α
xchain477_n21_α:
# IR_VAR_REF local
bb295_α:
 lea rdi, [r12 + 976]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain477_n22_α
 xchain477_n21_β:
 jmp xchain477_n18_α
xchain477_n22_α:
bb296_α:
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
  .Lrkfn521: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn521]
 lea rsi, [r12 + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain477_n18_α
 jmp xchain477_n23_α
 xchain477_n22_β:
 jmp xchain477_n18_α
xchain477_n23_α:
# IR_VAR_REF local
bb297_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain477_n24_α
 xchain477_n23_β:
 jmp xchain477_n18_α
xchain477_n24_α:
# IR_LIT_STRING
bb298_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx524_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain477_n25_α
 xchain477_n24_β:
 jmp proc_my_append_ω
.Lx524_0:
 .quad .Lx524_0_s
.Lx524_0_s:
 .string "."
xchain477_n25_α:
# IR_VAR_REF local
bb299_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain477_n26_α
 xchain477_n25_β:
 jmp proc_my_append_ω
xchain477_n26_α:
# IR_VAR_REF local
bb300_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain477_n27_α
 xchain477_n26_β:
 jmp proc_my_append_ω
xchain477_n27_α:
bb301_α:
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
  .Lrkfn530: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn530]
 lea rsi, [r12 + 368]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain477_n18_α
 jmp xchain477_n28_α
 xchain477_n27_β:
 jmp xchain477_n18_α
xchain477_n28_α:
bb302_α:
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
  .Lrkfn532: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn532]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain477_n18_α
 jmp xchain477_n29_α
 xchain477_n28_β:
 jmp xchain477_n18_α
xchain477_n29_α:
# IR_VAR_REF local
bb303_α:
 lea rdi, [r12 + 960]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain477_n30_α
 xchain477_n29_β:
 jmp xchain477_n18_α
xchain477_n30_α:
# IR_VAR_REF local
bb304_α:
 lea rdi, [r12 + 976]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain477_n31_α
 xchain477_n30_β:
 jmp xchain477_n18_α
xchain477_n31_α:
# IR_VAR_REF local
bb305_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain477_n32_α
 xchain477_n31_β:
 jmp xchain477_n18_α
xchain477_n32_α:
bb306_α:
  .section .rodata
  .Lcall306_pname: .string "my_append"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall306_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain477_n18_α
 jmp xchain477_n33_α
xchain477_n32_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain477_n18_α
 jmp xchain477_n33_α
xchain477_n33_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb307_α:
 lea rax, [rip + xchain477_n32_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_my_append_γ
 xchain477_n33_β:
 jmp proc_my_append_ω
proc_my_append_β:
jmp xchain477_n19_α
proc_my_append_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_my_append_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
main_α_body:
xchain542_n0_α:
bb308_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn544: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn544]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain542_n1_α
 xchain542_n0_β:
 jmp main_ω
xchain542_n1_α:
bb309_α:
  .section .rodata
  .Lcall309_pname: .string "mu"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall309_pname]
 mov esi, 0
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain542_n3_α
 jmp xchain542_n2_α
xchain542_n1_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain542_n3_α
 jmp xchain542_n2_α
xchain542_n2_α:
# IR_LIT_STRING
bb310_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx546_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain542_n4_α
 xchain542_n2_β:
 jmp xchain542_n7_α
.Lx546_0:
 .quad .Lx546_0_s
.Lx546_0_s:
 .string "ok"
xchain542_n3_α:
# IR_LIT_STRING
bb311_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx547_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain542_n5_α
 xchain542_n3_β:
 jmp xchain542_n7_α
.Lx547_0:
 .quad .Lx547_0_s
.Lx547_0_s:
 .string "failed"
xchain542_n4_α:
bb312_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn549: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn549]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain542_n7_α
 jmp xchain542_n6_α
 xchain542_n4_β:
 jmp xchain542_n7_α
xchain542_n5_α:
bb313_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+224] -> [r12+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn551: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn551]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain542_n7_α
 jmp xchain542_n6_α
 xchain542_n5_β:
 jmp xchain542_n7_α
xchain542_n6_α:
# IR_LIT_STRING
bb314_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx552_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain542_n8_α
 xchain542_n6_β:
 jmp xchain542_n7_α
.Lx552_0:
 .quad .Lx552_0_s
.Lx552_0_s:
 .string ""
xchain542_n7_α:
bb315_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+48] -> [r12+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn554: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn554]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain542_n7_β:
 jmp main_ω
xchain542_n8_α:
bb316_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn556: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn556]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain542_n7_α
 jmp xchain542_n9_α
 xchain542_n8_β:
 jmp xchain542_n7_α
xchain542_n9_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb317_α:
 lea rax, [rip + xchain542_n7_α]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain542_n9_β:
 jmp main_ω
xchain542_n10_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb318_α:
 jmp qword ptr [r12 + 32]
 xchain542_n10_β:
 jmp main_ω
main_β:
jmp xchain542_n10_α
main_γ:
mov eax, 1
xor edx, edx
pop r12
ret
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
