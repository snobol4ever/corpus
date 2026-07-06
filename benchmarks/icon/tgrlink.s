  .intel_syntax noprefix
  .text
  .globl proc_loadfile_α
proc_loadfile_α:
#=======================================================================================================================
    .global proc_loadfile_α
    .global proc_loadfile_β
    .global proc_loadfile_γ
    .global proc_loadfile_ω
push r12
  mov r12, rdi
proc_loadfile_α_body:
xchain0_n0_α:
bb1_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 1488]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n3_α
xchain0_n1_α:
# IR_ASSIGN gva
bb2_α:
 mov rax, qword ptr [r12 + 1472]
 mov rdx, qword ptr [r12 + 1480]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain0_n3_α
 xchain0_n1_β:
 jmp xchain0_n3_α
xchain0_n2_α:
 jmp xchain0_n3_α
xchain0_n2_β:
 jmp xchain0_n3_α
xchain0_n3_α:
# IR_VAR gva
bb4_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n6_α
xchain0_n4_α:
bb5_α:
# BOX IR_CALL where(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1440] -> [r12+1424]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1432], rax
  .section .rodata
  .Lrkfn7: .string "where"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn7]
 lea rsi, [r12 + 1424]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
xchain0_n5_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb6_α:
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1288], rax
 lea rax, [rip + xchain0_n6_α]
 mov qword ptr [r12 + 1296], rax
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp xchain0_n10_α
xchain0_n6_α:
# IR_KEYWORD_read
bb7_α:
 mov rdi, qword ptr [rip + .Lx10_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain0_n9_α
 xchain0_n6_β:
 jmp xchain0_n10_α
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "&progname"
xchain0_n7_α:
bb8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1280]
 mov rdx, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain0_n10_α
 xchain0_n7_β:
 jmp xchain0_n10_α
xchain0_n8_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb9_α:
 jmp qword ptr [r12 + 1296]
 xchain0_n8_β:
 jmp xchain0_n10_α
xchain0_n9_α:
# IR_LIT_STRING
bb10_α:
 mov qword ptr [r12 + 1392], 1
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n10_α
.Lx14_0:
 .quad .Lx14_0_s
.Lx14_0_s:
 .string ": input file is not seekable"
xchain0_n10_α:
# IR_VAR gva
bb11_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n18_α
xchain0_n11_α:
bb12_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1360] -> [r12+1328]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1336], rax
# marshal arg1 = producer-box slot [r12+1392] -> [r12+1344]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1352], rax
  .section .rodata
  .Lrkfn17: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn17]
 lea rsi, [r12 + 1328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n10_α
xchain0_n12_α:
bb13_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1248] -> [r12+1232]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1240], rax
  .section .rodata
  .Lrkfn19: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn19]
 lea rsi, [r12 + 1232]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n18_α
xchain0_n13_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb14_α:
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rax
 lea rax, [rip + xchain0_n10_α]
 mov qword ptr [r12 + 1296], rax
 jmp xchain0_n7_α
 xchain0_n13_β:
 jmp xchain0_n10_α
xchain0_n14_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb15_α:
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1192], rax
 lea rax, [rip + xchain0_n15_α]
 mov qword ptr [r12 + 1200], rax
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp xchain0_n19_α
xchain0_n15_α:
 jmp xchain0_n18_α
xchain0_n15_β:
 jmp xchain0_n18_α
xchain0_n16_α:
bb17_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1184]
 mov rdx, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain0_n19_α
 xchain0_n16_β:
 jmp xchain0_n19_α
xchain0_n17_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb18_α:
 jmp qword ptr [r12 + 1200]
 xchain0_n17_β:
 jmp xchain0_n19_α
xchain0_n18_α:
# IR_RETURN
bb19_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_loadfile_γ
xchain0_n19_α:
# IR_VAR
bb20_α:
 mov rax, qword ptr [r12 + 1568]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1576]
 mov qword ptr [r12 + 1160], rax
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp xchain0_n22_α
xchain0_n20_α:
bb21_α:
  .section .rodata
  .Lcall21_pname: .string "crack"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1152]
 mov rdx, qword ptr [r12 + 1160]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall21_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 cmp eax, 99
 je xchain0_n22_α
 jmp xchain0_n21_α
xchain0_n20_β:
 jmp xchain0_n22_α
xchain0_n21_α:
bb22_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp xchain0_n22_α
xchain0_n22_α:
# IR_VAR_REF gva
bb23_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n27_α
xchain0_n23_α:
# IR_VAR
bb24_α:
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1064], rax
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n27_α
xchain0_n24_α:
# IR_FIELD_GET
bb25_α:
 mov rdi, qword ptr [rip + .Lx37_0]
 mov rsi, qword ptr [r12 + 1056]
 mov rdx, qword ptr [r12 + 1064]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n27_α
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n27_α
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "code"
xchain0_n25_α:
# IR_SUBSCRIPT x[i] variable
bb26_α:
 mov rdi, qword ptr [r12 + 1024]
 mov rsi, qword ptr [r12 + 1032]
 mov rdx, qword ptr [r12 + 1040]
 mov rcx, qword ptr [r12 + 1048]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n27_α
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp xchain0_n27_α
xchain0_n26_α:
# IR_DEREF variable -> value
bb27_α:
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n27_α
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp xchain0_n27_α
xchain0_n27_α:
# IR_VAR_REF local
bb28_α:
 lea rdi, [r12 + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp xchain0_n36_α
xchain0_n28_α:
bb29_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1088]
 mov rdx, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain0_n30_α
 xchain0_n28_β:
 jmp xchain0_n27_α
xchain0_n29_α:
# IR_VAR
bb30_α:
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 696], rax
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp xchain0_n36_α
xchain0_n30_α:
# IR_UNOP
bb31_α:
 mov eax, dword ptr [r12 + 1008]
 cmp eax, 99
 je xchain0_n27_α
 cmp eax, 0
 jne xchain0_n27_α
 mov qword ptr [r12 + 992], 0
 mov qword ptr [r12 + 1000], 0
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp xchain0_n27_α
xchain0_n31_α:
# IR_FIELD_GET
bb32_α:
 mov rdi, qword ptr [rip + .Lx46_0]
 mov rsi, qword ptr [r12 + 688]
 mov rdx, qword ptr [r12 + 696]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n36_α
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain0_n33_α
 xchain0_n31_β:
 jmp xchain0_n36_α
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "aindex"
xchain0_n32_α:
# IR_VAR_REF gva
bb33_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n43_α
xchain0_n33_α:
# IR_SUBSCRIPT x[i] variable
bb34_α:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n36_α
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain0_n35_α
 xchain0_n33_β:
 jmp xchain0_n36_α
xchain0_n34_α:
# IR_VAR
bb35_α:
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 904], rax
 jmp xchain0_n37_α
 xchain0_n34_β:
 jmp xchain0_n43_α
xchain0_n35_α:
# IR_DEREF variable -> value
bb36_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n36_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain0_n38_α
 xchain0_n35_β:
 jmp xchain0_n36_α
xchain0_n36_α:
# IR_VAR_REF local
bb37_α:
 lea rdi, [r12 + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain0_n39_α
 xchain0_n36_β:
 jmp xchain0_n48_α
xchain0_n37_α:
# IR_FIELD_GET
bb38_α:
 mov rdi, qword ptr [rip + .Lx55_0]
 mov rsi, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n43_α
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain0_n40_α
 xchain0_n37_β:
 jmp xchain0_n43_α
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "code"
xchain0_n38_α:
bb39_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain0_n36_α
 xchain0_n38_β:
 jmp xchain0_n36_α
xchain0_n39_α:
# IR_VAR
bb40_α:
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 568], rax
 jmp xchain0_n41_α
 xchain0_n39_β:
 jmp xchain0_n48_α
xchain0_n40_α:
# IR_SUBSCRIPT x[i] variable
bb41_α:
 mov rdi, qword ptr [r12 + 864]
 mov rsi, qword ptr [r12 + 872]
 mov rdx, qword ptr [r12 + 880]
 mov rcx, qword ptr [r12 + 888]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n43_α
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain0_n42_α
 xchain0_n40_β:
 jmp xchain0_n43_α
xchain0_n41_α:
# IR_FIELD_GET
bb42_α:
 mov rdi, qword ptr [rip + .Lx60_0]
 mov rsi, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n48_α
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain0_n44_α
 xchain0_n41_β:
 jmp xchain0_n48_α
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
 .string "key"
xchain0_n42_α:
# IR_LIT_INTEGER
bb43_α:
 mov qword ptr [r12 + 976], 6
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain0_n45_α
 xchain0_n42_β:
 jmp xchain0_n43_α
.Lx61_0:
 .quad 5
xchain0_n43_α:
# IR_VAR_REF local
bb44_α:
 lea rdi, [r12 + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain0_n46_α
 xchain0_n43_β:
 jmp xchain0_n27_α
xchain0_n44_α:
# IR_SUBSCRIPT x[i] variable
bb45_α:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 552]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n48_α
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain0_n47_α
 xchain0_n44_β:
 jmp xchain0_n48_α
xchain0_n45_α:
bb46_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+976] -> [r12+960]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 968], rax
  .section .rodata
  .Lrkfn66: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn66]
 lea rsi, [r12 + 960]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je xchain0_n43_α
 jmp xchain0_n49_α
 xchain0_n45_β:
 jmp xchain0_n43_α
xchain0_n46_α:
# IR_LIST_BANG
bb47_α:
 mov qword ptr [r12 + 784], 0
.Lx68_0:
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, qword ptr [r12 + 784]
 call rt_list_bang_var_at@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp rax, 99
 je xchain0_n27_α
 jmp xchain0_n50_α
 xchain0_n46_β:
 inc qword ptr [r12 + 784]
 jmp .Lx68_0
xchain0_n47_α:
# IR_UNOP_TEST lv
bb48_α:
 mov eax, dword ptr [r12 + 576]
 cmp eax, 99
 je xchain0_n48_α
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n48_α
 cmp eax, 0
 jne xchain0_n48_α
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 600], rax
 jmp xchain0_n51_α
 xchain0_n47_β:
 jmp xchain0_n48_α
xchain0_n48_α:
# IR_VAR_REF local
bb49_α:
 lea rdi, [r12 + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n52_α
 xchain0_n48_β:
 jmp xchain0_n62_α
xchain0_n49_α:
# IR_ASSIGN_VAR write through variable
bb50_α:
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n43_α
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain0_n53_α
 xchain0_n49_β:
 jmp xchain0_n43_α
xchain0_n50_α:
bb51_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn74: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn74]
 lea rsi, [r12 + 848]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 cmp eax, 99
 je xchain0_n46_β
 jmp xchain0_n54_α
 xchain0_n50_β:
 jmp xchain0_n46_β
xchain0_n51_α:
# IR_VAR
bb52_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 632], rax
 jmp xchain0_n55_α
 xchain0_n51_β:
 jmp xchain0_n48_α
xchain0_n52_α:
# IR_VAR
bb53_α:
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n56_α
 xchain0_n52_β:
 jmp xchain0_n62_α
xchain0_n53_α:
bb54_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 928]
 mov rdx, qword ptr [r12 + 936]
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain0_n43_α
 xchain0_n53_β:
 jmp xchain0_n43_α
xchain0_n54_α:
# IR_ASSIGN_VAR write through variable
bb55_α:
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 mov rdx, qword ptr [r12 + 832]
 mov rcx, qword ptr [r12 + 840]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n27_α
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain0_n46_β
 xchain0_n54_β:
 jmp xchain0_n27_α
xchain0_n55_α:
# IR_ASSIGN_VAR write through variable
bb56_α:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 624]
 mov rcx, qword ptr [r12 + 632]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n48_α
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain0_n57_α
 xchain0_n55_β:
 jmp xchain0_n48_α
xchain0_n56_α:
# IR_FIELD_GET
bb57_α:
 mov rdi, qword ptr [rip + .Lx82_0]
 mov rsi, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n62_α
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain0_n58_α
 xchain0_n56_β:
 jmp xchain0_n62_α
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "key"
xchain0_n57_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb58_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 24], rax
 lea rax, [rip + xchain0_n48_α]
 mov qword ptr [r12 + 32], rax
 jmp xchain0_n59_α
 xchain0_n57_β:
 jmp xchain0_n3_α
xchain0_n58_α:
# IR_SUBSCRIPT x[i] variable
bb59_α:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n62_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain0_n61_α
 xchain0_n58_β:
 jmp xchain0_n62_α
xchain0_n59_α:
 jmp xchain0_n3_α
xchain0_n59_β:
 jmp xchain0_n3_α
xchain0_n60_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb61_α:
 jmp qword ptr [r12 + 32]
 xchain0_n60_β:
 jmp xchain0_n3_α
xchain0_n61_α:
# IR_DEREF variable -> value
bb62_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n62_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain0_n63_α
 xchain0_n61_β:
 jmp xchain0_n62_α
xchain0_n62_α:
# IR_VAR
bb63_α:
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 104], rax
 jmp xchain0_n64_α
 xchain0_n62_β:
 jmp xchain0_n3_α
xchain0_n63_α:
bb64_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain0_n65_α
 xchain0_n63_β:
 jmp xchain0_n62_α
xchain0_n64_α:
# IR_VAR
bb65_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n66_α
 xchain0_n64_β:
 jmp xchain0_n3_α
xchain0_n65_α:
bb66_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+416] -> [r12+400]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn96: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn96]
 lea rsi, [r12 + 400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain0_n62_α
 jmp xchain0_n67_α
 xchain0_n65_β:
 jmp xchain0_n62_α
xchain0_n66_α:
bb67_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+64]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 72], rax
# marshal arg1 = producer-box slot [r12+112] -> [r12+80]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn98: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn98]
 lea rsi, [r12 + 64]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n68_α
 xchain0_n66_β:
 jmp xchain0_n3_α
xchain0_n67_α:
# IR_LIT_STRING
bb68_α:
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain0_n69_α
 xchain0_n67_β:
 jmp xchain0_n62_α
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "list"
xchain0_n68_α:
 jmp xchain0_n70_α
xchain0_n68_β:
 jmp xchain0_n3_α
xchain0_n69_α:
bb70_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n62_α
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n71_α
 xchain0_n69_β:
 jmp xchain0_n62_α
xchain0_n70_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb71_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 24], rax
 lea rax, [rip + xchain0_n2_α]
 mov qword ptr [r12 + 32], rax
 jmp xchain0_n59_α
 xchain0_n70_β:
 jmp xchain0_n3_α
xchain0_n71_α:
# IR_VAR_REF local
bb72_α:
 lea rdi, [r12 + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain0_n72_α
 xchain0_n71_β:
 jmp xchain0_n62_α
xchain0_n72_α:
# IR_VAR
bb73_α:
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 216], rax
 jmp xchain0_n73_α
 xchain0_n72_β:
 jmp xchain0_n62_α
xchain0_n73_α:
# IR_FIELD_GET
bb74_α:
 mov rdi, qword ptr [rip + .Lx00001_0]
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n62_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain0_n74_α
 xchain0_n73_β:
 jmp xchain0_n62_α
.Lx00001_0:
 .quad .Lx00001_0_s
.Lx00001_0_s:
 .string "key"
xchain0_n74_α:
# IR_SUBSCRIPT x[i] variable
bb75_α:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n62_α
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n75_α
 xchain0_n74_β:
 jmp xchain0_n62_α
xchain0_n75_α:
# IR_VAR_REF local
bb76_α:
 lea rdi, [r12 + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n76_α
 xchain0_n75_β:
 jmp xchain0_n62_α
xchain0_n76_α:
# IR_VAR
bb77_α:
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 328], rax
 jmp xchain0_n77_α
 xchain0_n76_β:
 jmp xchain0_n62_α
xchain0_n77_α:
# IR_FIELD_GET
bb78_α:
 mov rdi, qword ptr [rip + .Lx00002_0]
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n62_α
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain0_n78_α
 xchain0_n77_β:
 jmp xchain0_n62_α
.Lx00002_0:
 .quad .Lx00002_0_s
.Lx00002_0_s:
 .string "key"
xchain0_n78_α:
# IR_SUBSCRIPT x[i] variable
bb79_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n62_α
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain0_n79_α
 xchain0_n78_β:
 jmp xchain0_n62_α
xchain0_n79_α:
# IR_DEREF variable -> value
bb80_α:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n62_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n80_α
 xchain0_n79_β:
 jmp xchain0_n62_α
xchain0_n80_α:
# IR_MAKE_LIST
bb81_α:
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 280], rax
 lea rdi, [r12 + 272]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n81_α
 xchain0_n80_β:
 jmp xchain0_n62_α
xchain0_n81_α:
# IR_ASSIGN_VAR write through variable
bb82_α:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n62_α
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n82_α
 xchain0_n81_β:
 jmp xchain0_n62_α
xchain0_n82_α:
bb83_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain0_n83_α
 xchain0_n82_β:
 jmp xchain0_n62_α
xchain0_n83_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb84_α:
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
 lea rax, [rip + xchain0_n62_α]
 mov qword ptr [r12 + 144], rax
 jmp xchain0_n62_α
 xchain0_n83_β:
 jmp xchain0_n62_α
xchain0_n84_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb85_α:
 jmp qword ptr [r12 + 144]
 xchain0_n84_β:
 jmp xchain0_n62_α
proc_loadfile_β:
jmp proc_loadfile_ω
proc_loadfile_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_loadfile_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_kgen_α
proc_kgen_α:
#=======================================================================================================================
    .global proc_kgen_α
    .global proc_kgen_β
    .global proc_kgen_γ
    .global proc_kgen_ω
push r12
  mov r12, rdi
  cmp esi, 0
  jne proc_kgen_β
proc_kgen_α_body:
lea rax, [rip + xchain00003_n26_β]
mov qword ptr [r12 + 576], rax
xchain00003_n0_α:
bb86_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn127: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn127]
 lea rsi, [r12 + 576]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain00003_n2_α
 jmp xchain00003_n1_α
 xchain00003_n0_β:
 jmp xchain00003_n2_α
xchain00003_n1_α:
bb87_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00003_n2_α
 xchain00003_n1_β:
 jmp xchain00003_n2_α
xchain00003_n2_α:
# IR_VAR
bb88_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00003_n3_α
 xchain00003_n2_β:
 jmp xchain00003_n16_α
xchain00003_n3_α:
# IR_ITERATE(key)
bb89_α:
 mov qword ptr [r12 + 256], 0
.Lx00004_0:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 256]
 call rt_list_bang_key_at@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp rax, 99
 je xchain00003_n16_α
 jmp xchain00003_n4_α
 xchain00003_n3_β:
 inc qword ptr [r12 + 256]
 jmp .Lx00004_0
xchain00003_n4_α:
bb90_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00003_n5_α
 xchain00003_n4_β:
 jmp xchain00003_n16_α
xchain00003_n5_α:
# IR_VAR
bb91_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 344], rax
 jmp xchain00003_n6_α
 xchain00003_n5_β:
 jmp xchain00003_n3_β
xchain00003_n6_α:
# IR_VAR_REF local
bb92_α:
 lea rdi, [r12 + 592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00003_n7_α
 xchain00003_n6_β:
 jmp xchain00003_n3_β
xchain00003_n7_α:
# IR_LIT_INTEGER
bb93_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx00005_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00003_n8_α
 xchain00003_n7_β:
 jmp xchain00003_n3_β
.Lx00005_0:
 .quad 1
xchain00003_n8_α:
# IR_SUBSCRIPT x[i] variable
bb94_α:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00003_n3_β
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00003_n9_α
 xchain00003_n8_β:
 jmp xchain00003_n3_β
xchain00003_n9_α:
# IR_DEREF variable -> value
bb95_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00003_n3_β
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00003_n10_α
 xchain00003_n9_β:
 jmp xchain00003_n3_β
xchain00003_n10_α:
# IR_LIT_STRING
bb96_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx00006_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00003_n11_α
 xchain00003_n10_β:
 jmp xchain00003_n3_β
.Lx00006_0:
 .quad .Lx00006_0_s
.Lx00006_0_s:
 .string "FHEABCDX"
xchain00003_n11_α:
# IR_LIT_STRING
bb97_α:
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx00007_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00003_n12_α
 xchain00003_n11_β:
 jmp xchain00003_n3_β
.Lx00007_0:
 .quad .Lx00007_0_s
.Lx00007_0_s:
 .string "ZYXWVUTS"
xchain00003_n12_α:
bb98_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+480] -> [r12+384]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [r12+496] -> [r12+400]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 408], rax
# marshal arg2 = producer-box slot [r12+512] -> [r12+416]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn144: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn144]
 lea rsi, [r12 + 384]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain00003_n3_β
 jmp xchain00003_n13_α
 xchain00003_n12_β:
 jmp xchain00003_n3_β
xchain00003_n13_α:
# IR_VAR
bb99_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 536], rax
 jmp xchain00003_n14_α
 xchain00003_n13_β:
 jmp xchain00003_n3_β
xchain00003_n14_α:
bb00008_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 592]
 mov rcx, qword ptr [r12 + 600]
 call str_concat_d@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00003_n15_α
 xchain00003_n14_β:
 jmp xchain00003_n3_β
xchain00003_n15_α:
bb00009_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+336] -> [r12+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [r12+352] -> [r12+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn149: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn149]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00003_n3_β
 jmp xchain00003_n3_β
 xchain00003_n15_β:
 jmp xchain00003_n3_β
xchain00003_n16_α:
# IR_VAR
bb00010_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 216], rax
 jmp xchain00003_n17_α
 xchain00003_n16_β:
 jmp xchain00003_n19_α
xchain00003_n17_α:
bb00011_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+208] -> [r12+192]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn153: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn153]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain00003_n19_α
 jmp xchain00003_n18_α
 xchain00003_n17_β:
 jmp xchain00003_n19_α
xchain00003_n18_α:
bb00012_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00003_n19_α
 xchain00003_n18_β:
 jmp xchain00003_n19_α
xchain00003_n19_α:
# IR_VAR
bb00013_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 88], rax
 jmp xchain00003_n20_α
 xchain00003_n19_β:
 jmp proc_kgen_ω
xchain00003_n20_α:
bb00014_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+64]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 72], rax
  .section .rodata
  .Lrkfn158: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn158]
 lea rsi, [r12 + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je proc_kgen_ω
 jmp xchain00003_n21_α
 xchain00003_n20_β:
 jmp proc_kgen_ω
xchain00003_n21_α:
bb00015_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00003_n22_α
 xchain00003_n21_β:
 jmp proc_kgen_ω
xchain00003_n22_α:
# IR_VAR
bb00001_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 120], rax
 jmp xchain00003_n23_α
 xchain00003_n22_β:
 jmp proc_kgen_ω
xchain00003_n23_α:
# IR_LIT_INTEGER
bb00016_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00017_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00003_n24_α
 xchain00003_n23_β:
 jmp proc_kgen_ω
.Lx00017_0:
 .quad 2
xchain00003_n24_α:
# IR_LIT_INTEGER
bb00018_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00019_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00003_n25_α
 xchain00003_n24_β:
 jmp proc_kgen_ω
.Lx00019_0:
 .quad 0
xchain00003_n25_α:
# IR_SUBSCRIPT section
bb00020_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8, qword ptr [r12 + 144]
 mov r9, qword ptr [r12 + 152]
 call subscript_get2@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00003_n26_α
 xchain00003_n25_β:
 jmp proc_kgen_ω
xchain00003_n26_α:
# IR_SUSPEND yield+resume
bb00021_α:
 lea rax, [rip + xchain00003_n26_β]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 8], rax
 jmp proc_kgen_γ
 xchain00003_n26_β:
 jmp xchain00003_n19_α
proc_kgen_β:
jmp qword ptr [r12 + 576]
proc_kgen_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_kgen_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_dumpcode_α
proc_dumpcode_α:
#=======================================================================================================================
    .global proc_dumpcode_α
    .global proc_dumpcode_β
    .global proc_dumpcode_γ
    .global proc_dumpcode_ω
push r12
  mov r12, rdi
proc_dumpcode_α_body:
xchain00022_n0_α:
# IR_VAR_REF gva
bb00023_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00022_n1_α
 xchain00022_n0_β:
 jmp xchain00022_n4_α
xchain00022_n1_α:
# IR_VAR
bb00002_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 744], rax
 jmp xchain00022_n2_α
 xchain00022_n1_β:
 jmp xchain00022_n4_α
xchain00022_n2_α:
# IR_SUBSCRIPT x[i] variable
bb00024_α:
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00022_n4_α
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00022_n3_α
 xchain00022_n2_β:
 jmp xchain00022_n4_α
xchain00022_n3_α:
# IR_DEREF variable -> value
bb00025_α:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00022_n4_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00022_n5_α
 xchain00022_n3_β:
 jmp xchain00022_n4_α
xchain00022_n4_α:
bb00026_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn175: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn175]
 lea rsi, [r12 + 704]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain00022_n7_α
 jmp xchain00022_n6_α
 xchain00022_n4_β:
 jmp xchain00022_n7_α
xchain00022_n5_α:
bb00027_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00022_n4_α
 xchain00022_n5_β:
 jmp xchain00022_n4_α
xchain00022_n6_α:
# IR_ASSIGN gva
bb00028_α:
 mov rax, qword ptr [r12 + 688]
 mov rdx, qword ptr [r12 + 696]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00022_n7_α
 xchain00022_n6_β:
 jmp xchain00022_n7_α
xchain00022_n7_α:
# IR_VAR_REF local
bb00029_α:
 lea rdi, [r12 + 800]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00022_n8_β
 xchain00022_n7_β:
 jmp xchain00022_n10_α
xchain00022_n8_α:
bb00030_α:
  .section .rodata
  .Lcall00030_pname: .string "aseq"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00030_pname]
 mov esi, 0
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00022_n10_α
 jmp xchain00022_n9_α
xchain00022_n8_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00022_n10_α
 jmp xchain00022_n9_α
xchain00022_n9_α:
# IR_SUBSCRIPT x[i] variable
bb00031_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00022_n10_α
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00022_n11_α
 xchain00022_n9_β:
 jmp xchain00022_n10_α
xchain00022_n10_α:
# IR_RETURN
bb00032_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_dumpcode_γ
xchain00022_n11_α:
# IR_DEREF variable -> value
bb00033_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00022_n10_α
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00022_n12_α
 xchain00022_n11_β:
 jmp xchain00022_n10_α
xchain00022_n12_α:
# IR_LIT_INTEGER
bb00003_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00034_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00022_n13_α
 xchain00022_n12_β:
 jmp xchain00022_n8_β
.Lx00034_0:
 .quad 3
xchain00022_n13_α:
bb00035_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+64]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 72], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+80]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn186: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn186]
 lea rsi, [r12 + 64]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain00022_n10_α
 jmp xchain00022_n14_α
 xchain00022_n13_β:
 jmp xchain00022_n10_α
xchain00022_n14_α:
bb00036_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00022_n15_α
 xchain00022_n14_β:
 jmp xchain00022_n10_α
xchain00022_n15_α:
# IR_VAR
bb00037_α:
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 232], rax
 jmp xchain00022_n16_α
 xchain00022_n15_β:
 jmp xchain00022_n8_β
xchain00022_n16_α:
bb00038_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+224] -> [r12+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn191: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn191]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain00022_n8_β
 jmp xchain00022_n17_α
 xchain00022_n16_β:
 jmp xchain00022_n8_β
xchain00022_n17_α:
bb00039_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00022_n18_α
 xchain00022_n17_β:
 jmp xchain00022_n8_β
xchain00022_n18_α:
# IR_VAR
bb00040_α:
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 664], rax
 jmp xchain00022_n19_α
 xchain00022_n18_β:
 jmp xchain00022_n21_α
xchain00022_n19_α:
bb00004_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+656] -> [r12+640]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn196: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn196]
 lea rsi, [r12 + 640]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain00022_n21_α
 jmp xchain00022_n20_α
 xchain00022_n19_β:
 jmp xchain00022_n21_α
xchain00022_n20_α:
bb00041_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 624]
 mov rdx, qword ptr [r12 + 632]
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00022_n21_α
 xchain00022_n20_β:
 jmp xchain00022_n21_α
xchain00022_n21_α:
# IR_VAR
bb00042_α:
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 584], rax
 jmp xchain00022_n22_α
 xchain00022_n21_β:
 jmp xchain00022_n24_α
xchain00022_n22_α:
bb00043_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+576] -> [r12+560]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn201: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn201]
 lea rsi, [r12 + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain00022_n24_α
 jmp xchain00022_n23_α
 xchain00022_n22_β:
 jmp xchain00022_n24_α
xchain00022_n23_α:
# IR_LIT_STRING
bb00044_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx00045_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00022_n25_α
 xchain00022_n23_β:
 jmp xchain00022_n24_α
.Lx00045_0:
 .quad .Lx00045_0_s
.Lx00045_0_s:
 .string "list"
xchain00022_n24_α:
# IR_VAR
bb00046_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 488], rax
 jmp xchain00022_n26_α
 xchain00022_n24_β:
 jmp xchain00022_n15_α
xchain00022_n25_α:
bb00005_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 592]
 mov rcx, qword ptr [r12 + 600]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00022_n24_α
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00022_n27_α
 xchain00022_n25_β:
 jmp xchain00022_n24_α
xchain00022_n26_α:
# IR_VAR
bb00047_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 504], rax
 jmp xchain00022_n28_α
 xchain00022_n26_β:
 jmp xchain00022_n15_α
xchain00022_n27_α:
# IR_VAR
bb00048_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 344], rax
 jmp xchain00022_n29_α
 xchain00022_n27_β:
 jmp xchain00022_n15_α
xchain00022_n28_α:
# IR_VAR
bb00006_α:
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 520], rax
 jmp xchain00022_n30_α
 xchain00022_n28_β:
 jmp xchain00022_n15_α
xchain00022_n29_α:
# IR_VAR
bb00007_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 360], rax
 jmp xchain00022_n31_α
 xchain00022_n29_β:
 jmp xchain00022_n15_α
xchain00022_n30_α:
bb00049_α:
  .section .rodata
  .Lcall00049_pname: .string "putchain"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00049_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain00022_n15_α
 jmp xchain00022_n32_α
xchain00022_n30_β:
 jmp xchain00022_n15_α
xchain00022_n31_α:
# IR_VAR
bb00050_α:
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 408], rax
 jmp xchain00022_n33_α
 xchain00022_n31_β:
 jmp xchain00022_n15_α
xchain00022_n32_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00051_α:
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain00022_n15_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain00022_n34_α
 xchain00022_n32_β:
 jmp xchain00022_n15_α
xchain00022_n33_α:
# IR_LIST_BANG
bb00052_α:
 mov qword ptr [r12 + 384], 0
.Lx00053_0:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 384]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp rax, 99
 je xchain00022_n15_α
 jmp xchain00022_n36_α
 xchain00022_n33_β:
 inc qword ptr [r12 + 384]
 jmp .Lx00053_0
xchain00022_n34_α:
 jmp xchain00022_n15_α
xchain00022_n34_β:
 jmp xchain00022_n15_α
xchain00022_n35_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00054_α:
 jmp qword ptr [r12 + 256]
 xchain00022_n35_β:
 jmp xchain00022_n15_α
xchain00022_n36_α:
bb00055_α:
  .section .rodata
  .Lcall00055_pname: .string "putchain"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00055_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain00022_n15_α
 jmp xchain00022_n33_β
xchain00022_n36_β:
 jmp xchain00022_n15_α
proc_dumpcode_β:
jmp proc_dumpcode_ω
proc_dumpcode_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_dumpcode_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_aseq_α
proc_aseq_α:
#=======================================================================================================================
    .global proc_aseq_α
    .global proc_aseq_β
    .global proc_aseq_γ
    .global proc_aseq_ω
push r12
  mov r12, rdi
  cmp esi, 0
  jne proc_aseq_β
proc_aseq_α_body:
lea rax, [rip + xchain00056_n11_β]
mov qword ptr [r12 + 560], rax
xchain00056_n0_α:
# IR_LIT_INTEGER
bb00057_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx00058_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00056_n1_α
 xchain00056_n0_β:
 jmp xchain00056_n4_α
.Lx00058_0:
 .quad 1
xchain00056_n1_α:
# IR_LIT_REAL
bb00059_α:
 mov qword ptr [r12 + 544], 7
 mov rax, qword ptr [rip + .Lx00060_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain00056_n2_α
 xchain00056_n1_β:
 jmp xchain00056_n4_α
.Lx00060_0:
 .quad 4608308318706860032
xchain00056_n2_α:
bb00061_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+544] -> [r12+528]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn229: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn229]
 lea rsi, [r12 + 528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain00056_n4_α
 jmp xchain00056_n3_α
 xchain00056_n2_β:
 jmp xchain00056_n4_α
xchain00056_n3_α:
bb00062_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 496]
 cmp eax, 100
 je .Lx00063_0
 mov eax, dword ptr [r12 + 512]
 cmp eax, 100
 je .Lx00063_0
 mov eax, dword ptr [r12 + 496]
 cmp eax, 6
 jne .Lx00063_2
 mov eax, dword ptr [r12 + 512]
 cmp eax, 6
 jne .Lx00063_2
.Lx00063_1:
 mov rax, qword ptr [r12 + 504]
 mov rcx, qword ptr [r12 + 520]
 add rax, rcx
 mov qword ptr [r12 + 480], 6
 mov qword ptr [r12 + 488], rax
 jmp xchain00056_n5_α
.Lx00063_0:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 mov r8d, 0
 lea r9, [r12 + 480]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00063_3
.Lx00063_2:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00056_n4_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
.Lx00063_3:
 jmp xchain00056_n5_α
 xchain00056_n3_β:
 jmp xchain00056_n4_α
xchain00056_n4_α:
# IR_LIT_INTEGER
bb00064_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00065_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00056_n6_α
 xchain00056_n4_β:
 jmp xchain00056_n9_α
.Lx00065_0:
 .quad 1
xchain00056_n5_α:
bb00066_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00056_n4_α
 xchain00056_n5_β:
 jmp xchain00056_n4_α
xchain00056_n6_α:
# IR_LIT_REAL
bb00067_α:
 mov qword ptr [r12 + 448], 7
 mov rax, qword ptr [rip + .Lx00068_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00056_n7_α
 xchain00056_n6_β:
 jmp xchain00056_n9_α
.Lx00068_0:
 .quad 4615626668101337088
xchain00056_n7_α:
bb00069_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+448] -> [r12+432]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn235: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn235]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain00056_n9_α
 jmp xchain00056_n8_α
 xchain00056_n7_β:
 jmp xchain00056_n9_α
xchain00056_n8_α:
bb00070_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 400]
 cmp eax, 100
 je .Lx00071_0
 mov eax, dword ptr [r12 + 416]
 cmp eax, 100
 je .Lx00071_0
 mov eax, dword ptr [r12 + 400]
 cmp eax, 6
 jne .Lx00071_2
 mov eax, dword ptr [r12 + 416]
 cmp eax, 6
 jne .Lx00071_2
.Lx00071_1:
 mov rax, qword ptr [r12 + 408]
 mov rcx, qword ptr [r12 + 424]
 add rax, rcx
 mov qword ptr [r12 + 384], 6
 mov qword ptr [r12 + 392], rax
 jmp xchain00056_n10_α
.Lx00071_0:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 0
 lea r9, [r12 + 384]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00071_3
.Lx00071_2:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00056_n9_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
.Lx00071_3:
 jmp xchain00056_n10_α
 xchain00056_n8_β:
 jmp xchain00056_n9_α
xchain00056_n9_α:
# IR_VAR
bb00072_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 360], rax
 jmp xchain00056_n11_α
 xchain00056_n9_β:
 jmp proc_aseq_ω
xchain00056_n10_α:
bb00073_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00056_n9_α
 xchain00056_n10_β:
 jmp xchain00056_n9_α
xchain00056_n11_α:
# IR_SUSPEND yield+resume
bb00074_α:
 lea rax, [rip + xchain00056_n11_β]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 8], rax
 jmp proc_aseq_γ
 xchain00056_n11_β:
 jmp xchain00056_n12_α
xchain00056_n12_α:
# IR_VAR
bb00017_α:
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 344], rax
 jmp xchain00056_n13_α
 xchain00056_n12_β:
 jmp proc_aseq_ω
xchain00056_n13_α:
# IR_SUSPEND yield+resume
bb00019_α:
 lea rax, [rip + xchain00056_n13_β]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 8], rax
 jmp proc_aseq_γ
 xchain00056_n13_β:
 jmp xchain00056_n14_α
xchain00056_n14_α:
# IR_VAR
bb00075_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 264], rax
 jmp xchain00056_n15_α
 xchain00056_n14_β:
 jmp proc_aseq_ω
xchain00056_n15_α:
# IR_LIT_INTEGER
bb00076_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx00077_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00056_n16_α
 xchain00056_n15_β:
 jmp proc_aseq_ω
.Lx00077_0:
 .quad 1
xchain00056_n16_α:
bb00078_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 592]
 cmp eax, 100
 je .Lx00079_0
 mov eax, dword ptr [r12 + 272]
 cmp eax, 100
 je .Lx00079_0
 mov eax, dword ptr [r12 + 592]
 cmp eax, 6
 jne .Lx00079_2
 mov eax, dword ptr [r12 + 272]
 cmp eax, 6
 jne .Lx00079_2
.Lx00079_1:
 mov rax, qword ptr [r12 + 600]
 mov rcx, qword ptr [r12 + 280]
 add rax, rcx
 mov qword ptr [r12 + 240], 6
 mov qword ptr [r12 + 248], rax
 jmp xchain00056_n17_α
.Lx00079_0:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 mov r8d, 0
 lea r9, [r12 + 240]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00079_3
.Lx00079_2:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_aseq_ω
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
.Lx00079_3:
 jmp xchain00056_n17_α
 xchain00056_n16_β:
 jmp proc_aseq_ω
xchain00056_n17_α:
# IR_VAR
bb00022_α:
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 312], rax
 jmp xchain00056_n18_α
 xchain00056_n17_β:
 jmp proc_aseq_ω
xchain00056_n18_α:
# IR_LIT_INTEGER
bb00080_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx00081_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00056_n19_α
 xchain00056_n18_β:
 jmp proc_aseq_ω
.Lx00081_0:
 .quad 1
xchain00056_n19_α:
bb00082_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 576]
 cmp eax, 100
 je .Lx00083_0
 mov eax, dword ptr [r12 + 320]
 cmp eax, 100
 je .Lx00083_0
 mov eax, dword ptr [r12 + 576]
 cmp eax, 6
 jne .Lx00083_2
 mov eax, dword ptr [r12 + 320]
 cmp eax, 6
 jne .Lx00083_2
.Lx00083_1:
 mov rax, qword ptr [r12 + 584]
 mov rcx, qword ptr [r12 + 328]
 sub rax, rcx
 mov qword ptr [r12 + 288], 6
 mov qword ptr [r12 + 296], rax
 jmp xchain00056_n20_α
.Lx00083_0:
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 1
 lea r9, [r12 + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00083_3
.Lx00083_2:
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_aseq_ω
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
.Lx00083_3:
 jmp xchain00056_n20_α
 xchain00056_n19_β:
 jmp proc_aseq_ω
xchain00056_n20_α:
# IR_TO
bb00084_α:
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 224], rax
.Lx00085_0:
 mov rax, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 296]
 cmp rax, rcx
 jg proc_aseq_ω
 mov qword ptr [r12 + 208], 6
 mov qword ptr [r12 + 216], rax
 jmp xchain00056_n21_α
 xchain00056_n20_β:
 inc qword ptr [r12 + 224]
 jmp .Lx00085_0
xchain00056_n21_α:
# IR_SUSPEND yield+resume
bb00086_α:
 lea rax, [rip + xchain00056_n21_β]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 8], rax
 jmp proc_aseq_γ
 xchain00056_n21_β:
 jmp xchain00056_n22_α
xchain00056_n22_α:
# IR_LIT_INTEGER
bb00087_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00088_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00056_n23_α
 xchain00056_n22_β:
 jmp proc_aseq_ω
.Lx00088_0:
 .quad 1
xchain00056_n23_α:
# IR_VAR
bb00089_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 184], rax
 jmp xchain00056_n24_α
 xchain00056_n23_β:
 jmp proc_aseq_ω
xchain00056_n24_α:
# IR_LIT_INTEGER
bb00090_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00091_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00056_n25_α
 xchain00056_n24_β:
 jmp proc_aseq_ω
.Lx00091_0:
 .quad 1
xchain00056_n25_α:
bb00092_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 592]
 cmp eax, 100
 je .Lx00093_0
 mov eax, dword ptr [r12 + 192]
 cmp eax, 100
 je .Lx00093_0
 mov eax, dword ptr [r12 + 592]
 cmp eax, 6
 jne .Lx00093_2
 mov eax, dword ptr [r12 + 192]
 cmp eax, 6
 jne .Lx00093_2
.Lx00093_1:
 mov rax, qword ptr [r12 + 600]
 mov rcx, qword ptr [r12 + 200]
 sub rax, rcx
 mov qword ptr [r12 + 160], 6
 mov qword ptr [r12 + 168], rax
 jmp xchain00056_n26_α
.Lx00093_0:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 1
 lea r9, [r12 + 160]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00093_3
.Lx00093_2:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_aseq_ω
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
.Lx00093_3:
 jmp xchain00056_n26_α
 xchain00056_n25_β:
 jmp proc_aseq_ω
xchain00056_n26_α:
# IR_TO
bb00094_α:
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 128], rax
.Lx00095_0:
 mov rax, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 168]
 cmp rax, rcx
 jg proc_aseq_ω
 mov qword ptr [r12 + 112], 6
 mov qword ptr [r12 + 120], rax
 jmp xchain00056_n27_α
 xchain00056_n26_β:
 inc qword ptr [r12 + 128]
 jmp .Lx00095_0
xchain00056_n27_α:
# IR_SUSPEND yield+resume
bb00096_α:
 lea rax, [rip + xchain00056_n27_β]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 8], rax
 jmp proc_aseq_γ
 xchain00056_n27_β:
 jmp xchain00056_n28_α
xchain00056_n28_α:
# IR_VAR
bb00097_α:
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 72], rax
 jmp xchain00056_n29_α
 xchain00056_n28_β:
 jmp proc_aseq_ω
xchain00056_n29_α:
# IR_LIT_INTEGER
bb00098_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx00099_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain00056_n30_α
 xchain00056_n29_β:
 jmp proc_aseq_ω
.Lx00099_0:
 .quad 1
xchain00056_n30_α:
bb00100_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 576]
 cmp eax, 100
 je .Lx00101_0
 mov eax, dword ptr [r12 + 80]
 cmp eax, 100
 je .Lx00101_0
 mov eax, dword ptr [r12 + 576]
 cmp eax, 6
 jne .Lx00101_2
 mov eax, dword ptr [r12 + 80]
 cmp eax, 6
 jne .Lx00101_2
.Lx00101_1:
 mov rax, qword ptr [r12 + 584]
 mov rcx, qword ptr [r12 + 88]
 add rax, rcx
 mov qword ptr [r12 + 48], 6
 mov qword ptr [r12 + 56], rax
 jmp xchain00056_n31_α
.Lx00101_0:
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 mov rdx, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 88]
 mov r8d, 0
 lea r9, [r12 + 48]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00101_3
.Lx00101_2:
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 mov rdx, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 88]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_aseq_ω
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
.Lx00101_3:
 jmp xchain00056_n31_α
 xchain00056_n30_β:
 jmp proc_aseq_ω
xchain00056_n31_α:
# IR_LIT_INTEGER
bb00102_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00103_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00056_n32_α
 xchain00056_n31_β:
 jmp proc_aseq_ω
.Lx00103_0:
 .quad 5
xchain00056_n32_α:
# IR_TO
bb00104_α:
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
.Lx00105_0:
 mov rax, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 104]
 cmp rax, rcx
 jg proc_aseq_ω
 mov qword ptr [r12 + 16], 6
 mov qword ptr [r12 + 24], rax
 jmp xchain00056_n33_α
 xchain00056_n32_β:
 inc qword ptr [r12 + 32]
 jmp .Lx00105_0
xchain00056_n33_α:
# IR_SUSPEND yield+resume
bb00106_α:
 lea rax, [rip + xchain00056_n33_β]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 8], rax
 jmp proc_aseq_γ
 xchain00056_n33_β:
 jmp proc_aseq_ω
proc_aseq_β:
jmp qword ptr [r12 + 560]
proc_aseq_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_aseq_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_putchain_α
proc_putchain_α:
#=======================================================================================================================
    .global proc_putchain_α
    .global proc_putchain_β
    .global proc_putchain_γ
    .global proc_putchain_ω
push r12
  mov r12, rdi
proc_putchain_α_body:
xchain00107_n0_α:
# IR_VAR gva
bb00034_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 jmp xchain00107_n1_α
 xchain00107_n0_β:
 jmp xchain00107_n4_α
xchain00107_n1_α:
# IR_VAR
bb00108_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 2928], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 2936], rax
 jmp xchain00107_n2_α
 xchain00107_n1_β:
 jmp xchain00107_n4_α
xchain00107_n2_α:
bb00109_α:
# BOX IR_CALL member(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2912] -> [r12+2880]
 mov rax, qword ptr [r12 + 2912]
 mov qword ptr [r12 + 2880], rax
 mov rax, qword ptr [r12 + 2920]
 mov qword ptr [r12 + 2888], rax
# marshal arg1 = producer-box slot [r12+2928] -> [r12+2896]
 mov rax, qword ptr [r12 + 2928]
 mov qword ptr [r12 + 2896], rax
 mov rax, qword ptr [r12 + 2936]
 mov qword ptr [r12 + 2904], rax
  .section .rodata
  .Lrkfn281: .string "member"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn281]
 lea rsi, [r12 + 2880]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], rdx
 cmp eax, 99
 je xchain00107_n4_α
 jmp xchain00107_n3_α
 xchain00107_n2_β:
 jmp xchain00107_n4_α
xchain00107_n3_α:
# IR_RETURN
bb00110_α:
 mov rax, qword ptr [r12 + 2864]
 mov rdx, qword ptr [r12 + 2872]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_putchain_γ
xchain00107_n4_α:
# IR_VAR gva
bb00111_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2800], rax
 mov qword ptr [r12 + 2808], rdx
 jmp xchain00107_n5_α
 xchain00107_n4_β:
 jmp xchain00107_n7_α
xchain00107_n5_α:
# IR_VAR
bb00112_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 2816], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 2824], rax
 jmp xchain00107_n6_α
 xchain00107_n5_β:
 jmp xchain00107_n7_α
xchain00107_n6_α:
bb00113_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2800] -> [r12+2768]
 mov rax, qword ptr [r12 + 2800]
 mov qword ptr [r12 + 2768], rax
 mov rax, qword ptr [r12 + 2808]
 mov qword ptr [r12 + 2776], rax
# marshal arg1 = producer-box slot [r12+2816] -> [r12+2784]
 mov rax, qword ptr [r12 + 2816]
 mov qword ptr [r12 + 2784], rax
 mov rax, qword ptr [r12 + 2824]
 mov qword ptr [r12 + 2792], rax
  .section .rodata
  .Lrkfn287: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn287]
 lea rsi, [r12 + 2768]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 cmp eax, 99
 je xchain00107_n7_α
 jmp xchain00107_n7_α
 xchain00107_n6_β:
 jmp xchain00107_n7_α
xchain00107_n7_α:
# IR_VAR
bb00114_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 2744], rax
 jmp xchain00107_n8_α
 xchain00107_n7_β:
 jmp xchain00107_n22_α
xchain00107_n8_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 2736]
 mov rsi, qword ptr [r12 + 2744]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00107_n9_α
 xchain00107_n8_β:
 jmp xchain00107_n22_α
xchain00107_n9_α:
# IR_LIT_INTEGER
bb00115_α:
 mov qword ptr [r12 + 2720], 6
 mov rax, qword ptr [rip + .Lx00116_0]
 mov qword ptr [r12 + 2728], rax
 jmp xchain00107_n10_α
 xchain00107_n9_β:
 jmp xchain00107_n12_α
.Lx00116_0:
 .quad 8
xchain00107_n10_α:
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
bb00117_α:
 mov rax, 8
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00107_n12_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00107_n12_α
 mov qword ptr [r12 + 2704], r14
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
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 jmp xchain00107_n11_α
 xchain00107_n10_β:
 mov r14, qword ptr [r12 + 2704]
 jmp xchain00107_n12_α
xchain00107_n11_α:
bb00118_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2688]
 mov rdx, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 jmp xchain00107_n12_α
 xchain00107_n11_β:
 jmp xchain00107_n12_α
xchain00107_n12_α:
# IR_LIT_INTEGER
bb00119_α:
 mov qword ptr [r12 + 2656], 6
 mov rax, qword ptr [rip + .Lx00120_0]
 mov qword ptr [r12 + 2664], rax
 jmp xchain00107_n13_α
 xchain00107_n12_β:
 jmp xchain00107_n15_α
.Lx00120_0:
 .quad 7
xchain00107_n13_α:
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
bb00121_α:
 mov rax, 7
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00107_n15_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00107_n15_α
 mov qword ptr [r12 + 2640], r14
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
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 jmp xchain00107_n14_α
 xchain00107_n13_β:
 mov r14, qword ptr [r12 + 2640]
 jmp xchain00107_n15_α
xchain00107_n14_α:
bb00122_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2624] -> [r12+2608]
 mov rax, qword ptr [r12 + 2624]
 mov qword ptr [r12 + 2608], rax
 mov rax, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 2616], rax
  .section .rodata
  .Lrkfn300: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn300]
 lea rsi, [r12 + 2608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je xchain00107_n15_α
 jmp xchain00107_n16_α
 xchain00107_n14_β:
 jmp xchain00107_n15_α
xchain00107_n15_α:
# IR_VAR
bb00123_α:
 mov rax, qword ptr [r12 + 3120]
 mov qword ptr [r12 + 2544], rax
 mov rax, qword ptr [r12 + 3128]
 mov qword ptr [r12 + 2552], rax
 jmp xchain00107_n17_α
 xchain00107_n15_β:
 jmp xchain00107_n20_α
xchain00107_n16_α:
bb00124_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2592]
 mov rdx, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 jmp xchain00107_n15_α
 xchain00107_n16_β:
 jmp xchain00107_n15_α
xchain00107_n17_α:
# IR_VAR
bb00125_α:
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 2560], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 2568], rax
 jmp xchain00107_n18_α
 xchain00107_n17_β:
 jmp xchain00107_n20_α
xchain00107_n18_α:
bb00045_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 3120]
 cmp eax, 100
 je .Lx00126_0
 mov eax, dword ptr [r12 + 3008]
 cmp eax, 100
 je .Lx00126_0
 mov eax, dword ptr [r12 + 3120]
 cmp eax, 6
 jne .Lx00126_2
 mov eax, dword ptr [r12 + 3008]
 cmp eax, 6
 jne .Lx00126_2
.Lx00126_1:
 mov rax, qword ptr [r12 + 3128]
 mov rcx, qword ptr [r12 + 3016]
 sub rax, rcx
 mov qword ptr [r12 + 2528], 6
 mov qword ptr [r12 + 2536], rax
 jmp xchain00107_n19_α
.Lx00126_0:
 mov rdi, qword ptr [r12 + 3120]
 mov rsi, qword ptr [r12 + 3128]
 mov rdx, qword ptr [r12 + 3008]
 mov rcx, qword ptr [r12 + 3016]
 mov r8d, 1
 lea r9, [r12 + 2528]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00126_3
.Lx00126_2:
 mov rdi, qword ptr [r12 + 3120]
 mov rsi, qword ptr [r12 + 3128]
 mov rdx, qword ptr [r12 + 3008]
 mov rcx, qword ptr [r12 + 3016]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00107_n20_α
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
.Lx00126_3:
 jmp xchain00107_n19_α
 xchain00107_n18_β:
 jmp xchain00107_n20_α
xchain00107_n19_α:
bb00127_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2528]
 mov rdx, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 jmp xchain00107_n21_α
 xchain00107_n19_β:
 jmp xchain00107_n20_α
xchain00107_n20_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 2448]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 2448]
 mov r14, qword ptr [r12 + 2456]
 mov r15, qword ptr [r12 + 2464]
 jmp xchain00107_n22_α
 xchain00107_n20_β:
 jmp xchain00107_n22_α
xchain00107_n21_α:
 jmp xchain00107_n23_α
xchain00107_n21_β:
 jmp xchain00107_n20_α
xchain00107_n22_α:
# IR_MAKE_LIST
bb00128_α:
 lea rdi, [r12 + 2448]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 jmp xchain00107_n24_α
 xchain00107_n22_β:
 jmp xchain00107_n25_α
xchain00107_n23_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 2448]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 2448]
 mov r14, qword ptr [r12 + 2456]
 mov r15, qword ptr [r12 + 2464]
 jmp xchain00107_n22_α
 xchain00107_n23_β:
 jmp xchain00107_n22_α
xchain00107_n24_α:
# IR_ASSIGN gva
bb00129_α:
 mov rax, qword ptr [r12 + 2432]
 mov rdx, qword ptr [r12 + 2440]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 jmp xchain00107_n25_α
 xchain00107_n24_β:
 jmp xchain00107_n25_α
xchain00107_n25_α:
# IR_MAKE_LIST
bb00130_α:
 lea rdi, [r12 + 2416]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 jmp xchain00107_n26_α
 xchain00107_n25_β:
 jmp xchain00107_n27_α
xchain00107_n26_α:
# IR_ASSIGN gva
bb00131_α:
 mov rax, qword ptr [r12 + 2400]
 mov rdx, qword ptr [r12 + 2408]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 jmp xchain00107_n27_α
 xchain00107_n26_β:
 jmp xchain00107_n27_α
xchain00107_n27_α:
# IR_VAR
bb00132_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 2368], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 2376], rax
 jmp xchain00107_n28_α
 xchain00107_n27_β:
 jmp xchain00107_n30_α
xchain00107_n28_α:
bb00133_α:
  .section .rodata
  .Lcall00133_pname: .string "putdel"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2368]
 mov rdx, qword ptr [r12 + 2376]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00133_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 cmp eax, 99
 je xchain00107_n30_α
 jmp xchain00107_n29_α
xchain00107_n28_β:
 jmp xchain00107_n30_α
xchain00107_n29_α:
bb00134_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2336]
 mov rdx, qword ptr [r12 + 2344]
 mov qword ptr [r12 + 3104], rax
 mov qword ptr [r12 + 3112], rdx
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 jmp xchain00107_n30_α
 xchain00107_n29_β:
 jmp xchain00107_n30_α
xchain00107_n30_α:
# IR_VAR
bb00135_α:
 mov rax, qword ptr [r12 + 3104]
 mov qword ptr [r12 + 2160], rax
 mov rax, qword ptr [r12 + 3112]
 mov qword ptr [r12 + 2168], rax
 jmp xchain00107_n31_α
 xchain00107_n30_β:
 jmp xchain00107_n33_α
xchain00107_n31_α:
bb00136_α:
  .section .rodata
  .Lcall00136_pname: .string "successor"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2160]
 mov rdx, qword ptr [r12 + 2168]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00136_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 cmp eax, 99
 je xchain00107_n33_α
 jmp xchain00107_n32_α
xchain00107_n31_β:
 jmp xchain00107_n33_α
xchain00107_n32_α:
bb00137_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2128]
 mov rdx, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 jmp xchain00107_n34_α
 xchain00107_n32_β:
 jmp xchain00107_n33_α
xchain00107_n33_α:
bb00138_α:
  .section .rodata
  .Lcall00138_pname: .string "collapse"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00138_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 cmp eax, 99
 je xchain00107_n35_α
 jmp xchain00107_n35_α
xchain00107_n33_β:
 jmp xchain00107_n35_α
xchain00107_n34_α:
# IR_VAR gva
bb00139_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain00107_n36_α
 xchain00107_n34_β:
 jmp xchain00107_n40_α
xchain00107_n35_α:
# IR_VAR
bb00140_α:
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 2088], rax
 jmp xchain00107_n37_α
 xchain00107_n35_β:
 jmp xchain00107_n43_α
xchain00107_n36_α:
# IR_VAR
bb00053_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 2304], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 2312], rax
 jmp xchain00107_n38_α
 xchain00107_n36_β:
 jmp xchain00107_n40_α
xchain00107_n37_α:
bb00141_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2080]
 mov rdx, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 3072], rax
 mov qword ptr [r12 + 3080], rdx
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain00107_n39_α
 xchain00107_n37_β:
 jmp xchain00107_n43_α
xchain00107_n38_α:
bb00142_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2288] -> [r12+2256]
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 2256], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 2264], rax
# marshal arg1 = producer-box slot [r12+2304] -> [r12+2272]
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 2272], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2280], rax
  .section .rodata
  .Lrkfn335: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn335]
 lea rsi, [r12 + 2256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 cmp eax, 99
 je xchain00107_n40_α
 jmp xchain00107_n40_α
 xchain00107_n38_β:
 jmp xchain00107_n40_α
xchain00107_n39_α:
bb00143_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2064]
 mov rdx, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 3088], rax
 mov qword ptr [r12 + 3096], rdx
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 jmp xchain00107_n41_α
 xchain00107_n39_β:
 jmp xchain00107_n43_α
xchain00107_n40_α:
# IR_VAR
bb00144_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 2232], rax
 jmp xchain00107_n42_α
 xchain00107_n40_β:
 jmp xchain00107_n30_α
xchain00107_n41_α:
bb00056_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2048]
 mov rdx, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 jmp xchain00107_n43_α
 xchain00107_n41_β:
 jmp xchain00107_n43_α
xchain00107_n42_α:
bb00058_α:
  .section .rodata
  .Lcall00058_pname: .string "putdel"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2224]
 mov rdx, qword ptr [r12 + 2232]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00058_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 cmp eax, 99
 je xchain00107_n30_α
 jmp xchain00107_n44_α
xchain00107_n42_β:
 jmp xchain00107_n30_α
xchain00107_n43_α:
# IR_VAR
bb00060_α:
 mov rax, qword ptr [r12 + 3024]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 3032]
 mov qword ptr [r12 + 2024], rax
 jmp xchain00107_n45_α
 xchain00107_n43_β:
 jmp xchain00107_n49_α
xchain00107_n44_α:
bb00145_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2192]
 mov rdx, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 3104], rax
 mov qword ptr [r12 + 3112], rdx
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain00107_n46_α
 xchain00107_n44_β:
 jmp xchain00107_n30_α
xchain00107_n45_α:
bb00146_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2016]
 mov rdx, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 3040], rax
 mov qword ptr [r12 + 3048], rdx
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain00107_n47_α
 xchain00107_n45_β:
 jmp xchain00107_n49_α
xchain00107_n46_α:
 jmp xchain00107_n30_α
xchain00107_n46_β:
 jmp xchain00107_n30_α
xchain00107_n47_α:
bb00065_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2000]
 mov rdx, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xchain00107_n48_α
 xchain00107_n47_β:
 jmp xchain00107_n49_α
xchain00107_n48_α:
bb00147_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1984]
 mov rdx, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 2960], rax
 mov qword ptr [r12 + 2968], rdx
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 jmp xchain00107_n49_α
 xchain00107_n48_β:
 jmp xchain00107_n49_α
xchain00107_n49_α:
# IR_VAR
bb00068_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1784], rax
 jmp xchain00107_n50_α
 xchain00107_n49_β:
 jmp xchain00107_n54_α
xchain00107_n50_α:
# IR_VAR gva
bb00148_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 jmp xchain00107_n51_α
 xchain00107_n50_β:
 jmp xchain00107_n54_α
xchain00107_n51_α:
# IR_LIST_BANG
bb00149_α:
 mov qword ptr [r12 + 1808], 0
.Lx00150_0:
 mov rdi, qword ptr [r12 + 1824]
 mov rsi, qword ptr [r12 + 1832]
 mov rdx, qword ptr [r12 + 1808]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 cmp rax, 99
 je xchain00107_n54_α
 jmp xchain00107_n52_α
 xchain00107_n51_β:
 inc qword ptr [r12 + 1808]
 jmp .Lx00150_0
xchain00107_n52_α:
bb00071_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 100
 je .Lx00151_0
 mov eax, dword ptr [r12 + 1792]
 cmp eax, 100
 je .Lx00151_0
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 6
 jne .Lx00151_2
 mov eax, dword ptr [r12 + 1792]
 cmp eax, 6
 jne .Lx00151_2
.Lx00151_1:
 mov rax, qword ptr [r12 + 2984]
 mov rcx, qword ptr [r12 + 1800]
 add rax, rcx
 mov qword ptr [r12 + 1760], 6
 mov qword ptr [r12 + 1768], rax
 jmp xchain00107_n53_α
.Lx00151_0:
 mov rdi, qword ptr [r12 + 2976]
 mov rsi, qword ptr [r12 + 2984]
 mov rdx, qword ptr [r12 + 1792]
 mov rcx, qword ptr [r12 + 1800]
 mov r8d, 0
 lea r9, [r12 + 1760]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00151_3
.Lx00151_2:
 mov rdi, qword ptr [r12 + 2976]
 mov rsi, qword ptr [r12 + 2984]
 mov rdx, qword ptr [r12 + 1792]
 mov rcx, qword ptr [r12 + 1800]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00107_n54_α
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
.Lx00151_3:
 jmp xchain00107_n53_α
 xchain00107_n52_β:
 jmp xchain00107_n54_α
xchain00107_n53_α:
bb00152_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1760]
 mov rdx, qword ptr [r12 + 1768]
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain00107_n55_α
 xchain00107_n53_β:
 jmp xchain00107_n54_α
xchain00107_n54_α:
# IR_VAR
bb00153_α:
 mov rax, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 1552], rax
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 1560], rax
 jmp xchain00107_n56_α
 xchain00107_n54_β:
 jmp xchain00107_n64_α
xchain00107_n55_α:
# IR_VAR
bb00154_α:
 mov rax, qword ptr [r12 + 3088]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 3096]
 mov qword ptr [r12 + 1944], rax
 jmp xchain00107_n57_α
 xchain00107_n55_β:
 jmp xchain00107_n62_α
xchain00107_n56_α:
# IR_VAR gva
bb00155_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00107_n58_α
 xchain00107_n56_β:
 jmp xchain00107_n64_α
xchain00107_n57_α:
# IR_VAR
bb00156_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1960], rax
 jmp xchain00107_n59_α
 xchain00107_n57_β:
 jmp xchain00107_n62_α
xchain00107_n58_α:
# IR_LIST_BANG
bb00157_α:
 mov qword ptr [r12 + 1584], 0
.Lx00158_0:
 mov rdi, qword ptr [r12 + 1600]
 mov rsi, qword ptr [r12 + 1608]
 mov rdx, qword ptr [r12 + 1584]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 cmp rax, 99
 je xchain00107_n64_α
 jmp xchain00107_n60_α
 xchain00107_n58_β:
 inc qword ptr [r12 + 1584]
 jmp .Lx00158_0
xchain00107_n59_α:
bb00159_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3088]
 cmp eax, 100
 je .Lx00160_0
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 100
 je .Lx00160_0
 mov eax, dword ptr [r12 + 3088]
 cmp eax, 6
 jne .Lx00160_2
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 6
 jne .Lx00160_2
.Lx00160_1:
 mov rax, qword ptr [r12 + 3096]
 mov rcx, qword ptr [r12 + 2984]
 cmp rax, rcx
 jle xchain00107_n62_α
 mov rcx, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1920], rcx
 mov rcx, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1928], rcx
 jmp xchain00107_n61_α
.Lx00160_0:
 mov rdi, qword ptr [r12 + 3088]
 mov rsi, qword ptr [r12 + 3096]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 7
 lea r9, [r12 + 1920]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00160_1
 cmp eax, 1
 je xchain00107_n62_α
 jmp xchain00107_n61_α
.Lx00160_2:
 mov rdi, qword ptr [r12 + 3088]
 mov rsi, qword ptr [r12 + 3096]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00107_n62_α
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1920], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1928], rax
 jmp xchain00107_n61_α
 xchain00107_n59_β:
 jmp xchain00107_n62_α
xchain00107_n60_α:
bb00161_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2960]
 cmp eax, 100
 je .Lx00162_0
 mov eax, dword ptr [r12 + 1568]
 cmp eax, 100
 je .Lx00162_0
 mov eax, dword ptr [r12 + 2960]
 cmp eax, 6
 jne .Lx00162_2
 mov eax, dword ptr [r12 + 1568]
 cmp eax, 6
 jne .Lx00162_2
.Lx00162_1:
 mov rax, qword ptr [r12 + 2968]
 mov rcx, qword ptr [r12 + 1576]
 add rax, rcx
 mov qword ptr [r12 + 1536], 6
 mov qword ptr [r12 + 1544], rax
 jmp xchain00107_n63_α
.Lx00162_0:
 mov rdi, qword ptr [r12 + 2960]
 mov rsi, qword ptr [r12 + 2968]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 mov r8d, 0
 lea r9, [r12 + 1536]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00162_3
.Lx00162_2:
 mov rdi, qword ptr [r12 + 2960]
 mov rsi, qword ptr [r12 + 2968]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00107_n64_α
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
.Lx00162_3:
 jmp xchain00107_n63_α
 xchain00107_n60_β:
 jmp xchain00107_n64_α
xchain00107_n61_α:
bb00163_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1920]
 mov rdx, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 3088], rax
 mov qword ptr [r12 + 3096], rdx
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain00107_n62_α
 xchain00107_n61_β:
 jmp xchain00107_n62_α
xchain00107_n62_α:
# IR_VAR
bb00164_α:
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 1880], rax
 jmp xchain00107_n65_α
 xchain00107_n62_β:
 jmp xchain00107_n51_β
xchain00107_n63_α:
bb00165_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1536]
 mov rdx, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 2960], rax
 mov qword ptr [r12 + 2968], rdx
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain00107_n66_α
 xchain00107_n63_β:
 jmp xchain00107_n64_α
xchain00107_n64_α:
# IR_VAR
bb00077_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1496], rax
 jmp xchain00107_n67_α
 xchain00107_n64_β:
 jmp xchain00107_n74_α
xchain00107_n65_α:
# IR_VAR
bb00079_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1896], rax
 jmp xchain00107_n68_α
 xchain00107_n65_β:
 jmp xchain00107_n51_β
xchain00107_n66_α:
# IR_VAR
bb00166_α:
 mov rax, qword ptr [r12 + 3056]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 3064]
 mov qword ptr [r12 + 1720], rax
 jmp xchain00107_n69_α
 xchain00107_n66_β:
 jmp xchain00107_n77_α
xchain00107_n67_α:
# IR_VAR
bb00167_α:
 mov rax, qword ptr [r12 + 3088]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 3096]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00107_n70_α
 xchain00107_n67_β:
 jmp xchain00107_n74_α
xchain00107_n68_α:
bb00081_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3072]
 cmp eax, 100
 je .Lx00168_0
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 100
 je .Lx00168_0
 mov eax, dword ptr [r12 + 3072]
 cmp eax, 6
 jne .Lx00168_2
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 6
 jne .Lx00168_2
.Lx00168_1:
 mov rax, qword ptr [r12 + 3080]
 mov rcx, qword ptr [r12 + 2984]
 cmp rax, rcx
 jge xchain00107_n51_β
 mov rcx, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1856], rcx
 mov rcx, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1864], rcx
 jmp xchain00107_n71_α
.Lx00168_0:
 mov rdi, qword ptr [r12 + 3072]
 mov rsi, qword ptr [r12 + 3080]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 5
 lea r9, [r12 + 1856]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00168_1
 cmp eax, 1
 je xchain00107_n51_β
 jmp xchain00107_n71_α
.Lx00168_2:
 mov rdi, qword ptr [r12 + 3072]
 mov rsi, qword ptr [r12 + 3080]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00107_n51_β
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1864], rax
 jmp xchain00107_n71_α
 xchain00107_n68_β:
 jmp xchain00107_n51_β
xchain00107_n69_α:
# IR_VAR
bb00083_α:
 mov rax, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 1736], rax
 jmp xchain00107_n72_α
 xchain00107_n69_β:
 jmp xchain00107_n77_α
xchain00107_n70_α:
bb00169_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 100
 je .Lx00170_0
 mov eax, dword ptr [r12 + 3088]
 cmp eax, 100
 je .Lx00170_0
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 6
 jne .Lx00170_2
 mov eax, dword ptr [r12 + 3088]
 cmp eax, 6
 jne .Lx00170_2
.Lx00170_1:
 mov rax, qword ptr [r12 + 2984]
 mov rcx, qword ptr [r12 + 3096]
 sub rax, rcx
 mov qword ptr [r12 + 1472], 6
 mov qword ptr [r12 + 1480], rax
 jmp xchain00107_n73_α
.Lx00170_0:
 mov rdi, qword ptr [r12 + 2976]
 mov rsi, qword ptr [r12 + 2984]
 mov rdx, qword ptr [r12 + 3088]
 mov rcx, qword ptr [r12 + 3096]
 mov r8d, 1
 lea r9, [r12 + 1472]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00170_3
.Lx00170_2:
 mov rdi, qword ptr [r12 + 2976]
 mov rsi, qword ptr [r12 + 2984]
 mov rdx, qword ptr [r12 + 3088]
 mov rcx, qword ptr [r12 + 3096]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00107_n74_α
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
.Lx00170_3:
 jmp xchain00107_n73_α
 xchain00107_n70_β:
 jmp xchain00107_n74_α
xchain00107_n71_α:
bb00085_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1856]
 mov rdx, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 3072], rax
 mov qword ptr [r12 + 3080], rdx
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 jmp xchain00107_n75_α
 xchain00107_n71_β:
 jmp xchain00107_n51_β
xchain00107_n72_α:
bb00171_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3056]
 cmp eax, 100
 je .Lx00172_0
 mov eax, dword ptr [r12 + 2960]
 cmp eax, 100
 je .Lx00172_0
 mov eax, dword ptr [r12 + 3056]
 cmp eax, 6
 jne .Lx00172_2
 mov eax, dword ptr [r12 + 2960]
 cmp eax, 6
 jne .Lx00172_2
.Lx00172_1:
 mov rax, qword ptr [r12 + 3064]
 mov rcx, qword ptr [r12 + 2968]
 cmp rax, rcx
 jle xchain00107_n77_α
 mov rcx, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 1696], rcx
 mov rcx, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 1704], rcx
 jmp xchain00107_n76_α
.Lx00172_0:
 mov rdi, qword ptr [r12 + 3056]
 mov rsi, qword ptr [r12 + 3064]
 mov rdx, qword ptr [r12 + 2960]
 mov rcx, qword ptr [r12 + 2968]
 mov r8d, 7
 lea r9, [r12 + 1696]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00172_1
 cmp eax, 1
 je xchain00107_n77_α
 jmp xchain00107_n76_α
.Lx00172_2:
 mov rdi, qword ptr [r12 + 3056]
 mov rsi, qword ptr [r12 + 3064]
 mov rdx, qword ptr [r12 + 2960]
 mov rcx, qword ptr [r12 + 2968]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00107_n77_α
 mov rax, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 1704], rax
 jmp xchain00107_n76_α
 xchain00107_n72_β:
 jmp xchain00107_n77_α
xchain00107_n73_α:
bb00173_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1472]
 mov rdx, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 2992], rax
 mov qword ptr [r12 + 3000], rdx
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain00107_n74_α
 xchain00107_n73_β:
 jmp xchain00107_n74_α
xchain00107_n74_α:
# IR_VAR
bb00088_α:
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00107_n78_α
 xchain00107_n74_β:
 jmp xchain00107_n85_α
xchain00107_n75_α:
 jmp xchain00107_n51_β
xchain00107_n75_β:
 jmp xchain00107_n51_β
xchain00107_n76_α:
bb00174_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1696]
 mov rdx, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain00107_n77_α
 xchain00107_n76_β:
 jmp xchain00107_n77_α
xchain00107_n77_α:
# IR_VAR
bb00091_α:
 mov rax, qword ptr [r12 + 3040]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 3048]
 mov qword ptr [r12 + 1656], rax
 jmp xchain00107_n79_α
 xchain00107_n77_β:
 jmp xchain00107_n58_β
xchain00107_n78_α:
# IR_VAR
bb00093_α:
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 1432], rax
 jmp xchain00107_n80_α
 xchain00107_n78_β:
 jmp xchain00107_n85_α
xchain00107_n79_α:
# IR_VAR
bb00175_α:
 mov rax, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00107_n81_α
 xchain00107_n79_β:
 jmp xchain00107_n58_β
xchain00107_n80_α:
# IR_VAR
bb00095_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00107_n82_α
 xchain00107_n80_β:
 jmp xchain00107_n85_α
xchain00107_n81_α:
bb00176_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3040]
 cmp eax, 100
 je .Lx00177_0
 mov eax, dword ptr [r12 + 2960]
 cmp eax, 100
 je .Lx00177_0
 mov eax, dword ptr [r12 + 3040]
 cmp eax, 6
 jne .Lx00177_2
 mov eax, dword ptr [r12 + 2960]
 cmp eax, 6
 jne .Lx00177_2
.Lx00177_1:
 mov rax, qword ptr [r12 + 3048]
 mov rcx, qword ptr [r12 + 2968]
 cmp rax, rcx
 jge xchain00107_n58_β
 mov rcx, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 1632], rcx
 mov rcx, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 1640], rcx
 jmp xchain00107_n83_α
.Lx00177_0:
 mov rdi, qword ptr [r12 + 3040]
 mov rsi, qword ptr [r12 + 3048]
 mov rdx, qword ptr [r12 + 2960]
 mov rcx, qword ptr [r12 + 2968]
 mov r8d, 5
 lea r9, [r12 + 1632]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00177_1
 cmp eax, 1
 je xchain00107_n58_β
 jmp xchain00107_n83_α
.Lx00177_2:
 mov rdi, qword ptr [r12 + 3040]
 mov rsi, qword ptr [r12 + 3048]
 mov rdx, qword ptr [r12 + 2960]
 mov rcx, qword ptr [r12 + 2968]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00107_n58_β
 mov rax, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 1640], rax
 jmp xchain00107_n83_α
 xchain00107_n81_β:
 jmp xchain00107_n58_β
xchain00107_n82_α:
bb00178_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 3072]
 cmp eax, 100
 je .Lx00179_0
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 100
 je .Lx00179_0
 mov eax, dword ptr [r12 + 3072]
 cmp eax, 6
 jne .Lx00179_2
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 6
 jne .Lx00179_2
.Lx00179_1:
 mov rax, qword ptr [r12 + 3080]
 mov rcx, qword ptr [r12 + 2984]
 sub rax, rcx
 mov qword ptr [r12 + 1408], 6
 mov qword ptr [r12 + 1416], rax
 jmp xchain00107_n84_α
.Lx00179_0:
 mov rdi, qword ptr [r12 + 3072]
 mov rsi, qword ptr [r12 + 3080]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 1
 lea r9, [r12 + 1408]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00179_3
.Lx00179_2:
 mov rdi, qword ptr [r12 + 3072]
 mov rsi, qword ptr [r12 + 3080]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00107_n85_α
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
.Lx00179_3:
 jmp xchain00107_n84_α
 xchain00107_n82_β:
 jmp xchain00107_n85_α
xchain00107_n83_α:
bb00180_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1632]
 mov rdx, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 3040], rax
 mov qword ptr [r12 + 3048], rdx
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xchain00107_n86_α
 xchain00107_n83_β:
 jmp xchain00107_n58_β
xchain00107_n84_α:
bb00181_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 100
 je .Lx00182_0
 mov eax, dword ptr [r12 + 1408]
 cmp eax, 100
 je .Lx00182_0
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 6
 jne .Lx00182_2
 mov eax, dword ptr [r12 + 1408]
 cmp eax, 6
 jne .Lx00182_2
.Lx00182_1:
 mov rax, qword ptr [r12 + 3000]
 mov rcx, qword ptr [r12 + 1416]
 cmp rax, rcx
 jge xchain00107_n85_α
 mov rcx, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1376], rcx
 mov rcx, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1384], rcx
 jmp xchain00107_n87_α
.Lx00182_0:
 mov rdi, qword ptr [r12 + 2992]
 mov rsi, qword ptr [r12 + 3000]
 mov rdx, qword ptr [r12 + 1408]
 mov rcx, qword ptr [r12 + 1416]
 mov r8d, 5
 lea r9, [r12 + 1376]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00182_1
 cmp eax, 1
 je xchain00107_n85_α
 jmp xchain00107_n87_α
.Lx00182_2:
 mov rdi, qword ptr [r12 + 2992]
 mov rsi, qword ptr [r12 + 3000]
 mov rdx, qword ptr [r12 + 1408]
 mov rcx, qword ptr [r12 + 1416]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00107_n85_α
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1384], rax
 jmp xchain00107_n87_α
 xchain00107_n84_β:
 jmp xchain00107_n85_α
xchain00107_n85_α:
# IR_VAR
bb00099_α:
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00107_n88_α
 xchain00107_n85_β:
 jmp xchain00107_n92_α
xchain00107_n86_α:
 jmp xchain00107_n58_β
xchain00107_n86_β:
 jmp xchain00107_n58_β
xchain00107_n87_α:
bb00103_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1376]
 mov rdx, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 2992], rax
 mov qword ptr [r12 + 3000], rdx
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain00107_n85_α
 xchain00107_n87_β:
 jmp xchain00107_n85_α
xchain00107_n88_α:
# IR_VAR
bb00183_α:
 mov rax, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 1336], rax
 jmp xchain00107_n89_α
 xchain00107_n88_β:
 jmp xchain00107_n92_α
xchain00107_n89_α:
# IR_VAR
bb00105_α:
 mov rax, qword ptr [r12 + 3056]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 3064]
 mov qword ptr [r12 + 1352], rax
 jmp xchain00107_n90_α
 xchain00107_n89_β:
 jmp xchain00107_n92_α
xchain00107_n90_α:
bb00184_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2960]
 cmp eax, 100
 je .Lx00185_0
 mov eax, dword ptr [r12 + 3056]
 cmp eax, 100
 je .Lx00185_0
 mov eax, dword ptr [r12 + 2960]
 cmp eax, 6
 jne .Lx00185_2
 mov eax, dword ptr [r12 + 3056]
 cmp eax, 6
 jne .Lx00185_2
.Lx00185_1:
 mov rax, qword ptr [r12 + 2968]
 mov rcx, qword ptr [r12 + 3064]
 sub rax, rcx
 mov qword ptr [r12 + 1312], 6
 mov qword ptr [r12 + 1320], rax
 jmp xchain00107_n91_α
.Lx00185_0:
 mov rdi, qword ptr [r12 + 2960]
 mov rsi, qword ptr [r12 + 2968]
 mov rdx, qword ptr [r12 + 3056]
 mov rcx, qword ptr [r12 + 3064]
 mov r8d, 1
 lea r9, [r12 + 1312]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00185_3
.Lx00185_2:
 mov rdi, qword ptr [r12 + 2960]
 mov rsi, qword ptr [r12 + 2968]
 mov rdx, qword ptr [r12 + 3056]
 mov rcx, qword ptr [r12 + 3064]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00107_n92_α
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
.Lx00185_3:
 jmp xchain00107_n91_α
 xchain00107_n90_β:
 jmp xchain00107_n92_α
xchain00107_n91_α:
bb00186_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 100
 je .Lx00187_0
 mov eax, dword ptr [r12 + 1312]
 cmp eax, 100
 je .Lx00187_0
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 6
 jne .Lx00187_2
 mov eax, dword ptr [r12 + 1312]
 cmp eax, 6
 jne .Lx00187_2
.Lx00187_1:
 mov rax, qword ptr [r12 + 3000]
 mov rcx, qword ptr [r12 + 1320]
 cmp rax, rcx
 jge xchain00107_n92_α
 mov rcx, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rcx
 mov rcx, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rcx
 jmp xchain00107_n93_α
.Lx00187_0:
 mov rdi, qword ptr [r12 + 2992]
 mov rsi, qword ptr [r12 + 3000]
 mov rdx, qword ptr [r12 + 1312]
 mov rcx, qword ptr [r12 + 1320]
 mov r8d, 5
 lea r9, [r12 + 1280]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00187_1
 cmp eax, 1
 je xchain00107_n92_α
 jmp xchain00107_n93_α
.Lx00187_2:
 mov rdi, qword ptr [r12 + 2992]
 mov rsi, qword ptr [r12 + 3000]
 mov rdx, qword ptr [r12 + 1312]
 mov rcx, qword ptr [r12 + 1320]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00107_n92_α
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rax
 jmp xchain00107_n93_α
 xchain00107_n91_β:
 jmp xchain00107_n92_α
xchain00107_n92_α:
# IR_VAR
bb00107_α:
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 1208], rax
 jmp xchain00107_n94_α
 xchain00107_n92_β:
 jmp xchain00107_n98_α
xchain00107_n93_α:
bb00188_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1280]
 mov rdx, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 2992], rax
 mov qword ptr [r12 + 3000], rdx
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain00107_n92_α
 xchain00107_n93_β:
 jmp xchain00107_n92_α
xchain00107_n94_α:
# IR_VAR
bb00189_α:
 mov rax, qword ptr [r12 + 3040]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 3048]
 mov qword ptr [r12 + 1240], rax
 jmp xchain00107_n95_α
 xchain00107_n94_β:
 jmp xchain00107_n98_α
xchain00107_n95_α:
# IR_VAR
bb00190_α:
 mov rax, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 1256], rax
 jmp xchain00107_n96_α
 xchain00107_n95_β:
 jmp xchain00107_n98_α
xchain00107_n96_α:
bb00191_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 3040]
 cmp eax, 100
 je .Lx00192_0
 mov eax, dword ptr [r12 + 2960]
 cmp eax, 100
 je .Lx00192_0
 mov eax, dword ptr [r12 + 3040]
 cmp eax, 6
 jne .Lx00192_2
 mov eax, dword ptr [r12 + 2960]
 cmp eax, 6
 jne .Lx00192_2
.Lx00192_1:
 mov rax, qword ptr [r12 + 3048]
 mov rcx, qword ptr [r12 + 2968]
 sub rax, rcx
 mov qword ptr [r12 + 1216], 6
 mov qword ptr [r12 + 1224], rax
 jmp xchain00107_n97_α
.Lx00192_0:
 mov rdi, qword ptr [r12 + 3040]
 mov rsi, qword ptr [r12 + 3048]
 mov rdx, qword ptr [r12 + 2960]
 mov rcx, qword ptr [r12 + 2968]
 mov r8d, 1
 lea r9, [r12 + 1216]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00192_3
.Lx00192_2:
 mov rdi, qword ptr [r12 + 3040]
 mov rsi, qword ptr [r12 + 3048]
 mov rdx, qword ptr [r12 + 2960]
 mov rcx, qword ptr [r12 + 2968]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00107_n98_α
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
.Lx00192_3:
 jmp xchain00107_n97_α
 xchain00107_n96_β:
 jmp xchain00107_n98_α
xchain00107_n97_α:
bb00193_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 100
 je .Lx00194_0
 mov eax, dword ptr [r12 + 1216]
 cmp eax, 100
 je .Lx00194_0
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 6
 jne .Lx00194_2
 mov eax, dword ptr [r12 + 1216]
 cmp eax, 6
 jne .Lx00194_2
.Lx00194_1:
 mov rax, qword ptr [r12 + 3000]
 mov rcx, qword ptr [r12 + 1224]
 cmp rax, rcx
 jge xchain00107_n98_α
 mov rcx, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1184], rcx
 mov rcx, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1192], rcx
 jmp xchain00107_n99_α
.Lx00194_0:
 mov rdi, qword ptr [r12 + 2992]
 mov rsi, qword ptr [r12 + 3000]
 mov rdx, qword ptr [r12 + 1216]
 mov rcx, qword ptr [r12 + 1224]
 mov r8d, 5
 lea r9, [r12 + 1184]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00194_1
 cmp eax, 1
 je xchain00107_n98_α
 jmp xchain00107_n99_α
.Lx00194_2:
 mov rdi, qword ptr [r12 + 2992]
 mov rsi, qword ptr [r12 + 3000]
 mov rdx, qword ptr [r12 + 1216]
 mov rcx, qword ptr [r12 + 1224]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00107_n98_α
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1192], rax
 jmp xchain00107_n99_α
 xchain00107_n97_β:
 jmp xchain00107_n98_α
xchain00107_n98_α:
# IR_VAR
bb00195_α:
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 1144], rax
 jmp xchain00107_n00008_α
 xchain00107_n98_β:
 jmp xchain00107_n00011_α
xchain00107_n99_α:
bb00196_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1184]
 mov rdx, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 2992], rax
 mov qword ptr [r12 + 3000], rdx
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain00107_n98_α
 xchain00107_n99_β:
 jmp xchain00107_n98_α
xchain00107_n00008_α:
# IR_LIT_INTEGER
bb00197_α:
 mov qword ptr [r12 + 1152], 6
 mov rax, qword ptr [rip + .Lx00198_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain00107_n00009_α
 xchain00107_n00008_β:
 jmp xchain00107_n00011_α
.Lx00198_0:
 .quad 9999
xchain00107_n00009_α:
bb00199_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 100
 je .Lx00200_0
 mov eax, dword ptr [r12 + 1152]
 cmp eax, 100
 je .Lx00200_0
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 6
 jne .Lx00200_2
 mov eax, dword ptr [r12 + 1152]
 cmp eax, 6
 jne .Lx00200_2
.Lx00200_1:
 mov rax, qword ptr [r12 + 3000]
 mov rcx, qword ptr [r12 + 1160]
 cmp rax, rcx
 jle xchain00107_n00011_α
 mov rcx, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rcx
 mov rcx, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rcx
 jmp xchain00107_n00010_α
.Lx00200_0:
 mov rdi, qword ptr [r12 + 2992]
 mov rsi, qword ptr [r12 + 3000]
 mov rdx, qword ptr [r12 + 1152]
 mov rcx, qword ptr [r12 + 1160]
 mov r8d, 7
 lea r9, [r12 + 1120]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00200_1
 cmp eax, 1
 je xchain00107_n00011_α
 jmp xchain00107_n00010_α
.Lx00200_2:
 mov rdi, qword ptr [r12 + 2992]
 mov rsi, qword ptr [r12 + 3000]
 mov rdx, qword ptr [r12 + 1152]
 mov rcx, qword ptr [r12 + 1160]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00107_n00011_α
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00107_n00010_α
 xchain00107_n00009_β:
 jmp xchain00107_n00011_α
xchain00107_n00010_α:
bb00201_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 2992], rax
 mov qword ptr [r12 + 3000], rdx
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain00107_n00011_α
 xchain00107_n00010_β:
 jmp xchain00107_n00011_α
xchain00107_n00011_α:
# IR_VAR
bb00202_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 856], rax
 jmp xchain00107_n00012_α
 xchain00107_n00011_β:
 jmp xchain00107_n00001_α
xchain00107_n00012_α:
# IR_VAR
bb00203_α:
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 920], rax
 jmp xchain00107_n00013_α
 xchain00107_n00012_β:
 jmp xchain00107_n00001_α
xchain00107_n00013_α:
# IR_LIT_INTEGER
bb00204_α:
 mov qword ptr [r12 + 928], 6
 mov rax, qword ptr [rip + .Lx00205_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain00107_n00014_α
 xchain00107_n00013_β:
 jmp xchain00107_n00001_α
.Lx00205_0:
 .quad 4
xchain00107_n00014_α:
bb00206_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn432: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn432]
 lea rsi, [r12 + 880]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain00107_n00001_α
 jmp xchain00107_n00015_α
 xchain00107_n00014_β:
 jmp xchain00107_n00001_α
xchain00107_n00015_α:
# IR_VAR
bb00207_α:
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00107_n00016_α
 xchain00107_n00015_β:
 jmp xchain00107_n00001_α
xchain00107_n00001_α:
# IR_VAR gva
bb00116_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00107_n00018_α
 xchain00107_n00001_β:
 jmp xchain00107_n00023_α
xchain00107_n00016_α:
# IR_LIT_INTEGER
bb00208_α:
 mov qword ptr [r12 + 1008], 6
 mov rax, qword ptr [rip + .Lx00209_0]
 mov qword ptr [r12 + 1016], rax
 jmp xchain00107_n00020_α
 xchain00107_n00016_β:
 jmp xchain00107_n00001_α
.Lx00209_0:
 .quad 7
xchain00107_n00018_α:
bb00210_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+304] -> [r12+288]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn438: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn438]
 lea rsi, [r12 + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain00107_n00023_α
 jmp xchain00107_n00021_α
 xchain00107_n00018_β:
 jmp xchain00107_n00023_α
xchain00107_n00020_α:
bb00211_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn440: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn440]
 lea rsi, [r12 + 960]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je xchain00107_n00001_α
 jmp xchain00107_n00002_α
 xchain00107_n00020_β:
 jmp xchain00107_n00001_α
xchain00107_n00021_α:
bb00120_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00107_n00024_α
 xchain00107_n00021_β:
 jmp xchain00107_n00023_α
xchain00107_n00023_α:
# IR_VAR
bb00212_α:
 mov rax, qword ptr [r12 + 2944]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 2952]
 mov qword ptr [r12 + 184], rax
 jmp xchain00107_n00025_α
 xchain00107_n00023_β:
 jmp xchain00107_n00029_α
xchain00107_n00002_α:
# IR_VAR
bb00213_α:
 mov rax, qword ptr [r12 + 3024]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 3032]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00107_n00026_α
 xchain00107_n00002_β:
 jmp xchain00107_n00001_α
xchain00107_n00024_α:
# IR_VAR gva
bb00214_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00107_n00027_α
 xchain00107_n00024_β:
 jmp xchain00107_n00023_α
xchain00107_n00025_α:
# IR_UNOP
bb00215_α:
 mov eax, dword ptr [r12 + 2944]
 cmp eax, 99
 je xchain00107_n00029_α
 cmp eax, 0
 jne xchain00107_n00029_α
 mov qword ptr [r12 + 160], 0
 mov qword ptr [r12 + 168], 0
 jmp xchain00107_n00028_α
 xchain00107_n00025_β:
 jmp xchain00107_n00029_α
xchain00107_n00026_α:
# IR_LIT_INTEGER
bb00216_α:
 mov qword ptr [r12 + 1088], 6
 mov rax, qword ptr [rip + .Lx00217_0]
 mov qword ptr [r12 + 1096], rax
 jmp xchain00107_n00030_α
 xchain00107_n00026_β:
 jmp xchain00107_n00001_α
.Lx00217_0:
 .quad 7
xchain00107_n00027_α:
bb00218_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+240] -> [r12+224]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn450: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn450]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain00107_n00023_α
 jmp xchain00107_n00031_α
 xchain00107_n00027_β:
 jmp xchain00107_n00023_α
xchain00107_n00028_α:
# IR_LIT_STRING
bb00219_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00220_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00107_n00032_α
 xchain00107_n00028_β:
 jmp xchain00107_n00029_α
.Lx00220_0:
 .quad .Lx00220_0_s
.Lx00220_0_s:
 .string "50005000"
xchain00107_n00029_α:
bb00221_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn453: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn453]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00107_n00033_α
 jmp xchain00107_n00033_α
 xchain00107_n00029_β:
 jmp xchain00107_n00033_α
xchain00107_n00030_α:
bb00222_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1072] -> [r12+1040]
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1048], rax
# marshal arg1 = producer-box slot [r12+1088] -> [r12+1056]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1064], rax
  .section .rodata
  .Lrkfn455: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn455]
 lea rsi, [r12 + 1040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 cmp eax, 99
 je xchain00107_n00001_α
 jmp xchain00107_n00003_α
 xchain00107_n00030_β:
 jmp xchain00107_n00001_α
xchain00107_n00031_α:
bb00126_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 2960], rax
 mov qword ptr [r12 + 2968], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00107_n00035_α
 xchain00107_n00031_β:
 jmp xchain00107_n00023_α
xchain00107_n00032_α:
bb00223_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+128]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn458: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn458]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00107_n00029_α
 jmp xchain00107_n00036_α
 xchain00107_n00032_β:
 jmp xchain00107_n00029_α
xchain00107_n00033_α:
# IR_RETURN
bb00224_α:
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_putchain_γ
xchain00107_n00003_α:
bb00225_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+848] -> [r12+784]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 792], rax
# marshal arg1 = producer-box slot [r12+864] -> [r12+800]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 808], rax
# marshal arg2 = producer-box slot [r12+944] -> [r12+816]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 824], rax
# marshal arg3 = producer-box slot [r12+1024] -> [r12+832]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn461: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn461]
 lea rsi, [r12 + 784]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain00107_n00001_α
 jmp xchain00107_n00001_α
 xchain00107_n00003_β:
 jmp xchain00107_n00001_α
xchain00107_n00035_α:
 jmp xchain00107_n00037_α
xchain00107_n00035_β:
 jmp xchain00107_n00023_α
xchain00107_n00036_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00226_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
 lea rax, [rip + xchain00107_n00029_α]
 mov qword ptr [r12 + 96], rax
 jmp xchain00107_n00029_α
 xchain00107_n00036_β:
 jmp xchain00107_n00029_α
xchain00107_n00037_α:
# IR_VAR
bb00227_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 744], rax
 jmp xchain00107_n00039_α
 xchain00107_n00037_β:
 jmp xchain00107_n00041_α
xchain00107_n00038_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00228_α:
 jmp qword ptr [r12 + 96]
 xchain00107_n00038_β:
 jmp xchain00107_n00029_α
xchain00107_n00039_α:
# IR_LIT_INTEGER
bb00229_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx00230_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain00107_n00040_α
 xchain00107_n00039_β:
 jmp xchain00107_n00041_α
.Lx00230_0:
 .quad 0
xchain00107_n00040_α:
bb00231_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 100
 je .Lx00232_0
 mov eax, dword ptr [r12 + 752]
 cmp eax, 100
 je .Lx00232_0
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 6
 jne .Lx00232_2
 mov eax, dword ptr [r12 + 752]
 cmp eax, 6
 jne .Lx00232_2
.Lx00232_1:
 mov rax, qword ptr [r12 + 2984]
 mov rcx, qword ptr [r12 + 760]
 cmp rax, rcx
 je xchain00107_n00041_α
 mov rcx, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rcx
 mov rcx, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rcx
 jmp xchain00107_n00004_α
.Lx00232_0:
 mov rdi, qword ptr [r12 + 2976]
 mov rsi, qword ptr [r12 + 2984]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 mov r8d, 10
 lea r9, [r12 + 720]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00232_1
 cmp eax, 1
 je xchain00107_n00041_α
 jmp xchain00107_n00004_α
.Lx00232_2:
 mov rdi, qword ptr [r12 + 2976]
 mov rsi, qword ptr [r12 + 2984]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00107_n00041_α
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
 jmp xchain00107_n00004_α
 xchain00107_n00040_β:
 jmp xchain00107_n00041_α
xchain00107_n00004_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00233_α:
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 648], rax
 lea rax, [rip + xchain00107_n00041_α]
 mov qword ptr [r12 + 656], rax
 jmp xchain00107_n00042_α
 xchain00107_n00004_β:
 jmp xchain00107_n00001_α
xchain00107_n00041_α:
# IR_VAR
bb00234_α:
 mov rax, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 696], rax
 jmp xchain00107_n00044_α
 xchain00107_n00041_β:
 jmp xchain00107_n00001_α
xchain00107_n00042_α:
# IR_LIT_INTEGER
bb00235_α:
 mov qword ptr [r12 + 480], 6
 mov rax, qword ptr [rip + .Lx00236_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain00107_n00046_α
 xchain00107_n00042_β:
 jmp xchain00107_n00001_α
.Lx00236_0:
 .quad 5000
xchain00107_n00043_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00237_α:
 jmp qword ptr [r12 + 656]
 xchain00107_n00043_β:
 jmp xchain00107_n00001_α
xchain00107_n00044_α:
# IR_LIT_INTEGER
bb00238_α:
 mov qword ptr [r12 + 704], 6
 mov rax, qword ptr [rip + .Lx00239_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00107_n00005_α
 xchain00107_n00044_β:
 jmp xchain00107_n00001_α
.Lx00239_0:
 .quad 0
xchain00107_n00046_α:
# IR_VAR
bb00240_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 504], rax
 jmp xchain00107_n00047_α
 xchain00107_n00046_β:
 jmp xchain00107_n00001_α
xchain00107_n00005_α:
bb00241_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2960]
 cmp eax, 100
 je .Lx00242_0
 mov eax, dword ptr [r12 + 704]
 cmp eax, 100
 je .Lx00242_0
 mov eax, dword ptr [r12 + 2960]
 cmp eax, 6
 jne .Lx00242_2
 mov eax, dword ptr [r12 + 704]
 cmp eax, 6
 jne .Lx00242_2
.Lx00242_1:
 mov rax, qword ptr [r12 + 2968]
 mov rcx, qword ptr [r12 + 712]
 cmp rax, rcx
 je xchain00107_n00001_α
 mov rcx, qword ptr [r12 + 704]
 mov qword ptr [r12 + 672], rcx
 mov rcx, qword ptr [r12 + 712]
 mov qword ptr [r12 + 680], rcx
 jmp xchain00107_n00048_α
.Lx00242_0:
 mov rdi, qword ptr [r12 + 2960]
 mov rsi, qword ptr [r12 + 2968]
 mov rdx, qword ptr [r12 + 704]
 mov rcx, qword ptr [r12 + 712]
 mov r8d, 10
 lea r9, [r12 + 672]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00242_1
 cmp eax, 1
 je xchain00107_n00001_α
 jmp xchain00107_n00048_α
.Lx00242_2:
 mov rdi, qword ptr [r12 + 2960]
 mov rsi, qword ptr [r12 + 2968]
 mov rdx, qword ptr [r12 + 704]
 mov rcx, qword ptr [r12 + 712]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00107_n00001_α
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 680], rax
 jmp xchain00107_n00048_α
 xchain00107_n00005_β:
 jmp xchain00107_n00001_α
xchain00107_n00047_α:
bb00243_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 480]
 cmp eax, 100
 je .Lx00244_0
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 100
 je .Lx00244_0
 mov eax, dword ptr [r12 + 480]
 cmp eax, 6
 jne .Lx00244_2
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 6
 jne .Lx00244_2
.Lx00244_1:
 mov rax, qword ptr [r12 + 488]
 mov rcx, qword ptr [r12 + 2984]
 add rax, rcx
 mov qword ptr [r12 + 464], 6
 mov qword ptr [r12 + 472], rax
 jmp xchain00107_n00006_α
.Lx00244_0:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 0
 lea r9, [r12 + 464]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00244_3
.Lx00244_2:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00107_n00001_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
.Lx00244_3:
 jmp xchain00107_n00006_α
 xchain00107_n00047_β:
 jmp xchain00107_n00001_α
xchain00107_n00048_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00245_α:
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
 lea rax, [rip + xchain00107_n00001_α]
 mov qword ptr [r12 + 656], rax
 jmp xchain00107_n00042_α
 xchain00107_n00048_β:
 jmp xchain00107_n00001_α
xchain00107_n00006_α:
# IR_LIT_INTEGER
bb00246_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00247_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00107_n00007_α
 xchain00107_n00006_β:
 jmp xchain00107_n00001_α
.Lx00247_0:
 .quad 4
xchain00107_n00007_α:
bb00248_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn487: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn487]
 lea rsi, [r12 + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain00107_n00001_α
 jmp xchain00107_n00049_α
 xchain00107_n00007_β:
 jmp xchain00107_n00001_α
xchain00107_n00049_α:
# IR_LIT_INTEGER
bb00249_α:
 mov qword ptr [r12 + 592], 6
 mov rax, qword ptr [rip + .Lx00250_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00107_n00050_α
 xchain00107_n00049_β:
 jmp xchain00107_n00001_α
.Lx00250_0:
 .quad 5000
xchain00107_n00050_α:
# IR_VAR
bb00251_α:
 mov rax, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 616], rax
 jmp xchain00107_n00051_α
 xchain00107_n00050_β:
 jmp xchain00107_n00001_α
xchain00107_n00051_α:
bb00252_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 592]
 cmp eax, 100
 je .Lx00253_0
 mov eax, dword ptr [r12 + 2960]
 cmp eax, 100
 je .Lx00253_0
 mov eax, dword ptr [r12 + 592]
 cmp eax, 6
 jne .Lx00253_2
 mov eax, dword ptr [r12 + 2960]
 cmp eax, 6
 jne .Lx00253_2
.Lx00253_1:
 mov rax, qword ptr [r12 + 600]
 mov rcx, qword ptr [r12 + 2968]
 add rax, rcx
 mov qword ptr [r12 + 576], 6
 mov qword ptr [r12 + 584], rax
 jmp xchain00107_n00052_α
.Lx00253_0:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 2960]
 mov rcx, qword ptr [r12 + 2968]
 mov r8d, 0
 lea r9, [r12 + 576]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00253_3
.Lx00253_2:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 2960]
 mov rcx, qword ptr [r12 + 2968]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00107_n00001_α
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
.Lx00253_3:
 jmp xchain00107_n00052_α
 xchain00107_n00051_β:
 jmp xchain00107_n00001_α
xchain00107_n00052_α:
# IR_LIT_INTEGER
bb00254_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx00255_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain00107_n00256_α
 xchain00107_n00052_β:
 jmp xchain00107_n00001_α
.Lx00255_0:
 .quad 4
xchain00107_n00256_α:
bb00257_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+576] -> [r12+544]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
# marshal arg1 = producer-box slot [r12+624] -> [r12+560]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn494: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn494]
 lea rsi, [r12 + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain00107_n00001_α
 jmp xchain00107_n00054_α
 xchain00107_n00256_β:
 jmp xchain00107_n00001_α
xchain00107_n00054_α:
bb00258_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+416] -> [r12+384]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [r12+528] -> [r12+400]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn496: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn496]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain00107_n00001_α
 jmp xchain00107_n00055_α
 xchain00107_n00054_β:
 jmp xchain00107_n00001_α
xchain00107_n00055_α:
bb00259_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 2944], rax
 mov qword ptr [r12 + 2952], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00107_n00057_α
 xchain00107_n00055_β:
 jmp xchain00107_n00001_α
xchain00107_n00057_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00260_α:
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
 lea rax, [rip + xchain00107_n00001_α]
 mov qword ptr [r12 + 336], rax
 jmp xchain00107_n00001_α
 xchain00107_n00057_β:
 jmp xchain00107_n00001_α
xchain00107_n00059_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00261_α:
 jmp qword ptr [r12 + 336]
 xchain00107_n00059_β:
 jmp xchain00107_n00001_α
proc_putchain_β:
jmp proc_putchain_ω
proc_putchain_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_putchain_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_putdel_α
proc_putdel_α:
#=======================================================================================================================
    .global proc_putdel_α
    .global proc_putdel_β
    .global proc_putdel_γ
    .global proc_putdel_ω
push r12
  mov r12, rdi
proc_putdel_α_body:
xchain00262_n0_α:
# IR_VAR gva
bb00263_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain00262_n1_α
 xchain00262_n0_β:
 jmp xchain00262_n4_α
xchain00262_n1_α:
# IR_VAR
bb00264_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1336], rax
 jmp xchain00262_n2_α
 xchain00262_n1_β:
 jmp xchain00262_n4_α
xchain00262_n2_α:
bb00265_α:
# BOX IR_CALL seek(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1312] -> [r12+1280]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rax
# marshal arg1 = producer-box slot [r12+1328] -> [r12+1296]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1304], rax
  .section .rodata
  .Lrkfn507: .string "seek"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn507]
 lea rsi, [r12 + 1280]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 cmp eax, 99
 je xchain00262_n4_α
 jmp xchain00262_n3_α
 xchain00262_n2_β:
 jmp xchain00262_n4_α
xchain00262_n3_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00266_α:
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1144], rax
 lea rax, [rip + xchain00262_n4_α]
 mov qword ptr [r12 + 1152], rax
 jmp xchain00262_n5_α
 xchain00262_n3_β:
 jmp xchain00262_n5_α
xchain00262_n4_α:
# IR_KEYWORD_read
bb00267_α:
 mov rdi, qword ptr [rip + .Lx00268_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain00262_n7_α
 xchain00262_n4_β:
 jmp xchain00262_n5_α
.Lx00268_0:
 .quad .Lx00268_0_s
.Lx00268_0_s:
 .string "&progname"
xchain00262_n5_α:
# IR_VAR gva
bb00269_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain00262_n8_α
 xchain00262_n5_β:
 jmp xchain00262_n11_α
xchain00262_n6_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00270_α:
 jmp qword ptr [r12 + 1152]
 xchain00262_n6_β:
 jmp xchain00262_n5_α
xchain00262_n7_α:
# IR_LIT_STRING
bb00271_α:
 mov qword ptr [r12 + 1248], 1
 mov rax, qword ptr [rip + .Lx00272_0]
 mov qword ptr [r12 + 1256], rax
 jmp xchain00262_n9_α
 xchain00262_n7_β:
 jmp xchain00262_n5_α
.Lx00272_0:
 .quad .Lx00272_0_s
.Lx00272_0_s:
 .string ":can't reposition input file"
xchain00262_n8_α:
bb00273_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1120] -> [r12+1104]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1112], rax
  .section .rodata
  .Lrkfn516: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn516]
 lea rsi, [r12 + 1104]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je xchain00262_n11_α
 jmp xchain00262_n10_α
 xchain00262_n8_β:
 jmp xchain00262_n11_α
xchain00262_n9_α:
bb00274_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1216] -> [r12+1184]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1192], rax
# marshal arg1 = producer-box slot [r12+1248] -> [r12+1200]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1208], rax
  .section .rodata
  .Lrkfn518: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn518]
 lea rsi, [r12 + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain00262_n5_α
 jmp xchain00262_n12_α
 xchain00262_n9_β:
 jmp xchain00262_n5_α
xchain00262_n10_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00275_α:
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 968], rax
 lea rax, [rip + xchain00262_n11_α]
 mov qword ptr [r12 + 976], rax
 jmp xchain00262_n13_α
 xchain00262_n10_β:
 jmp xchain00262_n16_α
xchain00262_n11_α:
# IR_KEYWORD_read
bb00276_α:
 mov rdi, qword ptr [rip + .Lx00277_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00262_n15_α
 xchain00262_n11_β:
 jmp xchain00262_n16_α
.Lx00277_0:
 .quad .Lx00277_0_s
.Lx00277_0_s:
 .string "&progname"
xchain00262_n12_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00278_α:
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1144], rax
 lea rax, [rip + xchain00262_n5_α]
 mov qword ptr [r12 + 1152], rax
 jmp xchain00262_n5_α
 xchain00262_n12_β:
 jmp xchain00262_n5_α
xchain00262_n13_α:
bb00279_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 960]
 mov rdx, qword ptr [r12 + 968]
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain00262_n16_α
 xchain00262_n13_β:
 jmp xchain00262_n16_α
xchain00262_n14_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00280_α:
 jmp qword ptr [r12 + 976]
 xchain00262_n14_β:
 jmp xchain00262_n16_α
xchain00262_n15_α:
# IR_LIT_STRING
bb00281_α:
 mov qword ptr [r12 + 1072], 1
 mov rax, qword ptr [rip + .Lx00282_0]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00262_n17_α
 xchain00262_n15_β:
 jmp xchain00262_n16_α
.Lx00282_0:
 .quad .Lx00282_0_s
.Lx00282_0_s:
 .string ": input file changed during processing"
xchain00262_n16_α:
# IR_VAR
bb00150_α:
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 936], rax
 jmp xchain00262_n18_α
 xchain00262_n16_β:
 jmp xchain00262_n21_α
xchain00262_n17_α:
bb00151_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1040] -> [r12+1008]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1016], rax
# marshal arg1 = producer-box slot [r12+1072] -> [r12+1024]
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1032], rax
  .section .rodata
  .Lrkfn531: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn531]
 lea rsi, [r12 + 1008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain00262_n16_α
 jmp xchain00262_n19_α
 xchain00262_n17_β:
 jmp xchain00262_n16_α
xchain00262_n18_α:
bb00283_α:
  .section .rodata
  .Lcall00283_pname: .string "crack"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 928]
 mov rdx, qword ptr [r12 + 936]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00283_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain00262_n21_α
 jmp xchain00262_n20_α
xchain00262_n18_β:
 jmp xchain00262_n21_α
xchain00262_n19_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00284_α:
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 968], rax
 lea rax, [rip + xchain00262_n16_α]
 mov qword ptr [r12 + 976], rax
 jmp xchain00262_n13_α
 xchain00262_n19_β:
 jmp xchain00262_n16_α
xchain00262_n20_α:
bb00285_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00262_n21_α
 xchain00262_n20_β:
 jmp xchain00262_n21_α
xchain00262_n21_α:
# IR_VAR
bb00286_α:
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 840], rax
 jmp xchain00262_n22_α
 xchain00262_n21_β:
 jmp xchain00262_n26_α
xchain00262_n22_α:
# IR_LIT_INTEGER
bb00287_α:
 mov qword ptr [r12 + 848], 6
 mov rax, qword ptr [rip + .Lx00288_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain00262_n23_α
 xchain00262_n22_β:
 jmp xchain00262_n26_α
.Lx00288_0:
 .quad 23
xchain00262_n23_α:
# IR_LIT_INTEGER
bb00289_α:
 mov qword ptr [r12 + 864], 6
 mov rax, qword ptr [rip + .Lx00290_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain00262_n24_α
 xchain00262_n23_β:
 jmp xchain00262_n26_α
.Lx00290_0:
 .quad 0
xchain00262_n24_α:
# IR_SUBSCRIPT section
bb00291_α:
 mov rdi, qword ptr [r12 + 832]
 mov rsi, qword ptr [r12 + 840]
 mov rdx, qword ptr [r12 + 848]
 mov rcx, qword ptr [r12 + 856]
 mov r8, qword ptr [r12 + 864]
 mov r9, qword ptr [r12 + 872]
 call subscript_get2@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00262_n25_α
 xchain00262_n24_β:
 jmp xchain00262_n26_α
xchain00262_n25_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 816]
 mov rsi, qword ptr [r12 + 824]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00262_n27_α
 xchain00262_n25_β:
 jmp xchain00262_n26_α
xchain00262_n26_α:
# IR_VAR
bb00292_α:
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 40], rax
 jmp xchain00262_n28_α
 xchain00262_n26_β:
 jmp proc_putdel_ω
xchain00262_n27_α:
# IR_VAR
bb00158_α:
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 808], rax
 jmp xchain00262_n29_α
 xchain00262_n27_β:
 jmp xchain00262_n32_α
xchain00262_n28_α:
# IR_RETURN
bb00160_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_putdel_γ
xchain00262_n29_α:
# IR_FIELD_GET
bb00162_α:
 mov rdi, qword ptr [rip + .Lx00293_0]
 mov rsi, qword ptr [r12 + 800]
 mov rdx, qword ptr [r12 + 808]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00262_n32_α
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00262_n30_α
 xchain00262_n29_β:
 jmp xchain00262_n32_α
.Lx00293_0:
 .quad .Lx00293_0_s
.Lx00293_0_s:
 .string "rev"
xchain00262_n30_α:
# IR_UNOP
bb00294_α:
 mov eax, dword ptr [r12 + 784]
 cmp eax, 99
 je xchain00262_n32_α
 cmp eax, 0
 jne xchain00262_n32_α
 mov qword ptr [r12 + 768], 0
 mov qword ptr [r12 + 776], 0
 jmp xchain00262_n31_α
 xchain00262_n30_β:
 jmp xchain00262_n32_α
xchain00262_n31_α:
# IR_VAR gva
bb00295_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00262_n33_α
 xchain00262_n31_β:
 jmp xchain00262_n41_α
xchain00262_n32_α:
# IR_LIT_INTEGER
bb00296_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx00297_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain00262_n34_α
 xchain00262_n32_β:
 jmp xchain00262_n36_α
.Lx00297_0:
 .quad 0
xchain00262_n33_α:
# IR_LIT_INTEGER
bb00298_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx00299_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00262_n35_α
 xchain00262_n33_β:
 jmp xchain00262_n41_α
.Lx00299_0:
 .quad 4
xchain00262_n34_α:
# IR_SCAN_TAB
bb00300_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00301_0
 add rax, r15
 add rax, 1
.Lx00301_0:
 cmp rax, 1
 jl xchain00262_n36_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00262_n36_α
 mov qword ptr [r12 + 736], r14
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
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00262_n36_α
 xchain00262_n34_β:
 mov r14, qword ptr [r12 + 736]
 jmp xchain00262_n36_α
xchain00262_n35_α:
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
bb00302_α:
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00262_n41_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00262_n41_α
 mov qword ptr [r12 + 240], r14
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
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00262_n37_α
 xchain00262_n35_β:
 mov r14, qword ptr [r12 + 240]
 jmp xchain00262_n41_α
xchain00262_n36_α:
# IR_VAR gva
bb00303_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00262_n39_α
 xchain00262_n36_β:
 jmp xchain00262_n52_α
xchain00262_n37_α:
# IR_LIT_INTEGER
bb00304_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx00305_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00262_n40_α
 xchain00262_n37_β:
 jmp xchain00262_n41_α
.Lx00305_0:
 .quad 5000
xchain00262_n38_α:
 jmp xchain00262_n41_α
xchain00262_n38_β:
 jmp xchain00262_n41_α
xchain00262_n39_α:
# IR_LIT_INTEGER
bb00306_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00307_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00262_n42_α
 xchain00262_n39_β:
 jmp xchain00262_n52_α
.Lx00307_0:
 .quad 5000
xchain00262_n40_α:
bb00308_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 224]
 cmp eax, 100
 je .Lx00309_0
 mov eax, dword ptr [r12 + 272]
 cmp eax, 100
 je .Lx00309_0
 mov eax, dword ptr [r12 + 224]
 cmp eax, 6
 jne .Lx00309_2
 mov eax, dword ptr [r12 + 272]
 cmp eax, 6
 jne .Lx00309_2
.Lx00309_1:
 mov rax, qword ptr [r12 + 232]
 mov rcx, qword ptr [r12 + 280]
 sub rax, rcx
 mov qword ptr [r12 + 208], 6
 mov qword ptr [r12 + 216], rax
 jmp xchain00262_n43_α
.Lx00309_0:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 mov r8d, 1
 lea r9, [r12 + 208]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00309_3
.Lx00309_2:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00262_n41_α
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
.Lx00309_3:
 jmp xchain00262_n43_α
 xchain00262_n40_β:
 jmp xchain00262_n41_α
xchain00262_n41_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00310_α:
 lea rax, [rip + xchain00262_n31_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain00262_n44_α
 xchain00262_n41_β:
 jmp proc_putdel_ω
xchain00262_n42_α:
# IR_LIT_INTEGER
bb00168_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx00311_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00262_n46_α
 xchain00262_n42_β:
 jmp xchain00262_n52_α
.Lx00311_0:
 .quad 18446744073709551612
xchain00262_n43_α:
bb00312_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+192] -> [r12+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
# marshal arg1 = producer-box slot [r12+208] -> [r12+176]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn566: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn566]
 lea rsi, [r12 + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00262_n41_α
 jmp xchain00262_n47_α
 xchain00262_n43_β:
 jmp xchain00262_n41_α
xchain00262_n44_α:
# IR_GEN_SCAN
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain00262_n26_α
 xchain00262_n44_β:
 jmp xchain00262_n26_α
xchain00262_n45_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00170_α:
 jmp qword ptr [r12 + 128]
 xchain00262_n45_β:
 jmp proc_putdel_ω
xchain00262_n46_α:
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
bb00313_α:
 mov rax, -4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00262_n52_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00262_n52_α
 mov qword ptr [r12 + 544], r14
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
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00262_n48_α
 xchain00262_n46_β:
 mov r14, qword ptr [r12 + 544]
 jmp xchain00262_n52_α
xchain00262_n47_α:
# IR_VAR gva
bb00172_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00262_n50_α
 xchain00262_n47_β:
 jmp xchain00262_n31_α
xchain00262_n48_α:
bb00314_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 512]
 cmp eax, 100
 je .Lx00315_0
 mov eax, dword ptr [r12 + 528]
 cmp eax, 100
 je .Lx00315_0
 mov eax, dword ptr [r12 + 512]
 cmp eax, 6
 jne .Lx00315_2
 mov eax, dword ptr [r12 + 528]
 cmp eax, 6
 jne .Lx00315_2
.Lx00315_1:
 mov rax, qword ptr [r12 + 520]
 mov rcx, qword ptr [r12 + 536]
 sub rax, rcx
 mov qword ptr [r12 + 496], 6
 mov qword ptr [r12 + 504], rax
 jmp xchain00262_n51_α
.Lx00315_0:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 1
 lea r9, [r12 + 496]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00315_3
.Lx00315_2:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00262_n52_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
.Lx00315_3:
 jmp xchain00262_n51_α
 xchain00262_n48_β:
 jmp xchain00262_n52_α
xchain00262_n49_α:
 jmp xchain00262_n52_α
xchain00262_n49_β:
 jmp xchain00262_n52_α
xchain00262_n50_α:
# IR_LIT_INTEGER
bb00316_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00317_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00262_n53_α
 xchain00262_n50_β:
 jmp xchain00262_n31_α
.Lx00317_0:
 .quad 4
xchain00262_n51_α:
bb00318_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn578: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn578]
 lea rsi, [r12 + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain00262_n52_α
 jmp xchain00262_n54_α
 xchain00262_n51_β:
 jmp xchain00262_n52_α
xchain00262_n52_α:
 jmp xchain00262_n55_α
xchain00262_n52_β:
 jmp proc_putdel_ω
xchain00262_n53_α:
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
bb00319_α:
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00262_n31_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00262_n31_α
 mov qword ptr [r12 + 384], r14
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
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00262_n56_α
 xchain00262_n53_β:
 mov r14, qword ptr [r12 + 384]
 jmp xchain00262_n31_α
xchain00262_n54_α:
# IR_VAR gva
bb00320_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00262_n57_α
 xchain00262_n54_β:
 jmp xchain00262_n36_α
xchain00262_n55_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00321_α:
 lea rax, [rip + xchain00262_n36_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain00262_n44_α
 xchain00262_n55_β:
 jmp proc_putdel_ω
xchain00262_n56_α:
# IR_LIT_INTEGER
bb00322_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00323_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00262_n58_α
 xchain00262_n56_β:
 jmp xchain00262_n31_α
.Lx00323_0:
 .quad 5000
xchain00262_n57_α:
# IR_LIT_INTEGER
bb00324_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx00325_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00262_n59_α
 xchain00262_n57_β:
 jmp xchain00262_n36_α
.Lx00325_0:
 .quad 5000
xchain00262_n58_α:
bb00326_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 368]
 cmp eax, 100
 je .Lx00327_0
 mov eax, dword ptr [r12 + 416]
 cmp eax, 100
 je .Lx00327_0
 mov eax, dword ptr [r12 + 368]
 cmp eax, 6
 jne .Lx00327_2
 mov eax, dword ptr [r12 + 416]
 cmp eax, 6
 jne .Lx00327_2
.Lx00327_1:
 mov rax, qword ptr [r12 + 376]
 mov rcx, qword ptr [r12 + 424]
 sub rax, rcx
 mov qword ptr [r12 + 352], 6
 mov qword ptr [r12 + 360], rax
 jmp xchain00262_n60_α
.Lx00327_0:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 1
 lea r9, [r12 + 352]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00327_3
.Lx00327_2:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00262_n31_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
.Lx00327_3:
 jmp xchain00262_n60_α
 xchain00262_n58_β:
 jmp xchain00262_n31_α
xchain00262_n59_α:
# IR_LIT_INTEGER
bb00328_α:
 mov qword ptr [r12 + 704], 6
 mov rax, qword ptr [rip + .Lx00329_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00262_n61_α
 xchain00262_n59_β:
 jmp xchain00262_n36_α
.Lx00329_0:
 .quad 18446744073709551612
xchain00262_n60_α:
bb00330_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+336] -> [r12+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [r12+352] -> [r12+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn590: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn590]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00262_n31_α
 jmp xchain00262_n31_α
 xchain00262_n60_β:
 jmp xchain00262_n31_α
xchain00262_n61_α:
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
bb00177_α:
 mov rax, -4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00262_n36_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00262_n36_α
 mov qword ptr [r12 + 688], r14
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
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00262_n62_α
 xchain00262_n61_β:
 mov r14, qword ptr [r12 + 688]
 jmp xchain00262_n36_α
xchain00262_n62_α:
bb00179_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 656]
 cmp eax, 100
 je .Lx00331_0
 mov eax, dword ptr [r12 + 672]
 cmp eax, 100
 je .Lx00331_0
 mov eax, dword ptr [r12 + 656]
 cmp eax, 6
 jne .Lx00331_2
 mov eax, dword ptr [r12 + 672]
 cmp eax, 6
 jne .Lx00331_2
.Lx00331_1:
 mov rax, qword ptr [r12 + 664]
 mov rcx, qword ptr [r12 + 680]
 sub rax, rcx
 mov qword ptr [r12 + 640], 6
 mov qword ptr [r12 + 648], rax
 jmp xchain00262_n63_α
.Lx00331_0:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 mov r8d, 1
 lea r9, [r12 + 640]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00331_3
.Lx00331_2:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00262_n36_α
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
.Lx00331_3:
 jmp xchain00262_n63_α
 xchain00262_n62_β:
 jmp xchain00262_n36_α
xchain00262_n63_α:
bb00332_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn595: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn595]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain00262_n36_α
 jmp xchain00262_n36_α
 xchain00262_n63_β:
 jmp xchain00262_n36_α
proc_putdel_β:
jmp proc_putdel_ω
proc_putdel_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_putdel_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_collapse_α
proc_collapse_α:
#=======================================================================================================================
    .global proc_collapse_α
    .global proc_collapse_β
    .global proc_collapse_γ
    .global proc_collapse_ω
push r12
  mov r12, rdi
proc_collapse_α_body:
xchain00333_n0_α:
# IR_VAR gva
bb00182_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 jmp xchain00333_n1_α
 xchain00333_n0_β:
 jmp xchain00333_n4_α
xchain00333_n1_α:
# IR_LIT_INTEGER
bb00334_α:
 mov qword ptr [r12 + 2528], 6
 mov rax, qword ptr [rip + .Lx00335_0]
 mov qword ptr [r12 + 2536], rax
 jmp xchain00333_n2_α
 xchain00333_n1_β:
 jmp xchain00333_n4_α
.Lx00335_0:
 .quad 0
xchain00333_n2_α:
bb00336_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2512]
 cmp eax, 100
 je .Lx00337_0
 mov eax, dword ptr [r12 + 2528]
 cmp eax, 100
 je .Lx00337_0
 mov eax, dword ptr [r12 + 2512]
 cmp eax, 6
 jne .Lx00337_2
 mov eax, dword ptr [r12 + 2528]
 cmp eax, 6
 jne .Lx00337_2
.Lx00337_1:
 mov rax, qword ptr [r12 + 2520]
 mov rcx, qword ptr [r12 + 2536]
 cmp rax, rcx
 jg xchain00333_n4_α
 mov rcx, qword ptr [r12 + 2528]
 mov qword ptr [r12 + 2496], rcx
 mov rcx, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 2504], rcx
 jmp xchain00333_n3_α
.Lx00337_0:
 mov rdi, qword ptr [r12 + 2512]
 mov rsi, qword ptr [r12 + 2520]
 mov rdx, qword ptr [r12 + 2528]
 mov rcx, qword ptr [r12 + 2536]
 mov r8d, 6
 lea r9, [r12 + 2496]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00337_1
 cmp eax, 1
 je xchain00333_n4_α
 jmp xchain00333_n3_α
.Lx00337_2:
 mov rdi, qword ptr [r12 + 2512]
 mov rsi, qword ptr [r12 + 2520]
 mov rdx, qword ptr [r12 + 2528]
 mov rcx, qword ptr [r12 + 2536]
 mov r8d, 6
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00333_n4_α
 mov rax, qword ptr [r12 + 2528]
 mov qword ptr [r12 + 2496], rax
 mov rax, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 2504], rax
 jmp xchain00333_n3_α
 xchain00333_n2_β:
 jmp xchain00333_n4_α
xchain00333_n3_α:
# IR_RETURN
bb00338_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_collapse_γ
xchain00333_n4_α:
# IR_VAR gva
bb00339_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 jmp xchain00333_n5_α
 xchain00333_n4_β:
 jmp xchain00333_n8_α
xchain00333_n5_α:
# IR_VAR gva
bb00340_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 jmp xchain00333_n6_α
 xchain00333_n5_β:
 jmp xchain00333_n8_α
xchain00333_n6_α:
bb00341_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2432]
 cmp eax, 100
 je .Lx00342_0
 mov eax, dword ptr [r12 + 2448]
 cmp eax, 100
 je .Lx00342_0
 mov eax, dword ptr [r12 + 2432]
 cmp eax, 6
 jne .Lx00342_2
 mov eax, dword ptr [r12 + 2448]
 cmp eax, 6
 jne .Lx00342_2
.Lx00342_1:
 mov rax, qword ptr [r12 + 2440]
 mov rcx, qword ptr [r12 + 2456]
 imul rax, rcx
 mov qword ptr [r12 + 2416], 6
 mov qword ptr [r12 + 2424], rax
 jmp xchain00333_n7_α
.Lx00342_0:
 mov rdi, qword ptr [r12 + 2432]
 mov rsi, qword ptr [r12 + 2440]
 mov rdx, qword ptr [r12 + 2448]
 mov rcx, qword ptr [r12 + 2456]
 mov r8d, 2
 lea r9, [r12 + 2416]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00342_3
.Lx00342_2:
 mov rdi, qword ptr [r12 + 2432]
 mov rsi, qword ptr [r12 + 2440]
 mov rdx, qword ptr [r12 + 2448]
 mov rcx, qword ptr [r12 + 2456]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00333_n8_α
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
.Lx00342_3:
 jmp xchain00333_n7_α
 xchain00333_n6_β:
 jmp xchain00333_n8_α
xchain00333_n7_α:
bb00343_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2416]
 mov rdx, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2608], rax
 mov qword ptr [r12 + 2616], rdx
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 jmp xchain00333_n8_α
 xchain00333_n7_β:
 jmp xchain00333_n8_α
xchain00333_n8_α:
# IR_VAR gva
bb00344_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 jmp xchain00333_n9_α
 xchain00333_n8_β:
 jmp xchain00333_n12_α
xchain00333_n9_α:
# IR_KEYWORD_read
bb00185_α:
 mov rdi, qword ptr [rip + .Lx00345_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 jmp xchain00333_n10_α
 xchain00333_n9_β:
 jmp xchain00333_n12_α
.Lx00345_0:
 .quad .Lx00345_0_s
.Lx00345_0_s:
 .string "&pi"
xchain00333_n10_α:
bb00187_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2336]
 cmp eax, 100
 je .Lx00346_0
 mov eax, dword ptr [r12 + 2352]
 cmp eax, 100
 je .Lx00346_0
 mov eax, dword ptr [r12 + 2336]
 cmp eax, 6
 jne .Lx00346_2
 mov eax, dword ptr [r12 + 2352]
 cmp eax, 6
 jne .Lx00346_2
.Lx00346_1:
 mov rax, qword ptr [r12 + 2344]
 mov rcx, qword ptr [r12 + 2360]
 imul rax, rcx
 mov qword ptr [r12 + 2320], 6
 mov qword ptr [r12 + 2328], rax
 jmp xchain00333_n11_α
.Lx00346_0:
 mov rdi, qword ptr [r12 + 2336]
 mov rsi, qword ptr [r12 + 2344]
 mov rdx, qword ptr [r12 + 2352]
 mov rcx, qword ptr [r12 + 2360]
 mov r8d, 2
 lea r9, [r12 + 2320]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00346_3
.Lx00346_2:
 mov rdi, qword ptr [r12 + 2336]
 mov rsi, qword ptr [r12 + 2344]
 mov rdx, qword ptr [r12 + 2352]
 mov rcx, qword ptr [r12 + 2360]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00333_n12_α
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
.Lx00346_3:
 jmp xchain00333_n11_α
 xchain00333_n10_β:
 jmp xchain00333_n12_α
xchain00333_n11_α:
# IR_LIT_INTEGER
bb00347_α:
 mov qword ptr [r12 + 2384], 6
 mov rax, qword ptr [rip + .Lx00348_0]
 mov qword ptr [r12 + 2392], rax
 jmp xchain00333_n13_α
 xchain00333_n11_β:
 jmp xchain00333_n12_α
.Lx00348_0:
 .quad 180
xchain00333_n12_α:
# IR_VAR
bb00349_α:
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 2240], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 2248], rax
 jmp xchain00333_n14_α
 xchain00333_n12_β:
 jmp xchain00333_n18_α
xchain00333_n13_α:
bb00350_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 100
 je .Lx00351_0
 mov eax, dword ptr [r12 + 2384]
 cmp eax, 100
 je .Lx00351_0
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 6
 jne .Lx00351_2
 mov eax, dword ptr [r12 + 2384]
 cmp eax, 6
 jne .Lx00351_2
.Lx00351_1:
 mov rax, qword ptr [r12 + 2328]
 mov rcx, qword ptr [r12 + 2392]
 cqo
 idiv rcx
 mov qword ptr [r12 + 2304], 6
 mov qword ptr [r12 + 2312], rax
 jmp xchain00333_n15_α
.Lx00351_0:
 mov rdi, qword ptr [r12 + 2320]
 mov rsi, qword ptr [r12 + 2328]
 mov rdx, qword ptr [r12 + 2384]
 mov rcx, qword ptr [r12 + 2392]
 mov r8d, 3
 lea r9, [r12 + 2304]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00351_3
.Lx00351_2:
 mov rdi, qword ptr [r12 + 2320]
 mov rsi, qword ptr [r12 + 2328]
 mov rdx, qword ptr [r12 + 2384]
 mov rcx, qword ptr [r12 + 2392]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00333_n12_α
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
.Lx00351_3:
 jmp xchain00333_n15_α
 xchain00333_n13_β:
 jmp xchain00333_n12_α
xchain00333_n14_α:
# IR_KEYWORD_read
bb00352_α:
 mov rdi, qword ptr [rip + .Lx00353_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 jmp xchain00333_n16_α
 xchain00333_n14_β:
 jmp xchain00333_n18_α
.Lx00353_0:
 .quad .Lx00353_0_s
.Lx00353_0_s:
 .string "&pi"
xchain00333_n15_α:
bb00354_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2304]
 mov rdx, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain00333_n12_α
 xchain00333_n15_β:
 jmp xchain00333_n12_α
xchain00333_n16_α:
bb00355_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2672]
 cmp eax, 100
 je .Lx00356_0
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 100
 je .Lx00356_0
 mov eax, dword ptr [r12 + 2672]
 cmp eax, 6
 jne .Lx00356_2
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 6
 jne .Lx00356_2
.Lx00356_1:
 mov rax, qword ptr [r12 + 2680]
 mov rcx, qword ptr [r12 + 2264]
 cmp rax, rcx
 jle xchain00333_n18_α
 mov rcx, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 2224], rcx
 mov rcx, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2232], rcx
 jmp xchain00333_n17_α
.Lx00356_0:
 mov rdi, qword ptr [r12 + 2672]
 mov rsi, qword ptr [r12 + 2680]
 mov rdx, qword ptr [r12 + 2256]
 mov rcx, qword ptr [r12 + 2264]
 mov r8d, 7
 lea r9, [r12 + 2224]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00356_1
 cmp eax, 1
 je xchain00333_n18_α
 jmp xchain00333_n17_α
.Lx00356_2:
 mov rdi, qword ptr [r12 + 2672]
 mov rsi, qword ptr [r12 + 2680]
 mov rdx, qword ptr [r12 + 2256]
 mov rcx, qword ptr [r12 + 2264]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00333_n18_α
 mov rax, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2232], rax
 jmp xchain00333_n17_α
 xchain00333_n16_β:
 jmp xchain00333_n18_α
xchain00333_n17_α:
bb00357_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2224]
 mov rdx, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 jmp xchain00333_n18_α
 xchain00333_n17_β:
 jmp xchain00333_n18_α
xchain00333_n18_α:
# IR_VAR gva
bb00192_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 jmp xchain00333_n19_α
 xchain00333_n18_β:
 jmp xchain00333_n23_α
xchain00333_n19_α:
# IR_VAR_REF gva
bb00194_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain00333_n20_α
 xchain00333_n19_β:
 jmp xchain00333_n23_α
xchain00333_n20_α:
# IR_LIT_INTEGER
bb00358_α:
 mov qword ptr [r12 + 2160], 6
 mov rax, qword ptr [rip + .Lx00359_0]
 mov qword ptr [r12 + 2168], rax
 jmp xchain00333_n21_α
 xchain00333_n20_β:
 jmp xchain00333_n23_α
.Lx00359_0:
 .quad 1
xchain00333_n21_α:
# IR_SUBSCRIPT x[i] variable
bb00360_α:
 mov rdi, qword ptr [r12 + 2144]
 mov rsi, qword ptr [r12 + 2152]
 mov rdx, qword ptr [r12 + 2160]
 mov rcx, qword ptr [r12 + 2168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00333_n23_α
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain00333_n22_α
 xchain00333_n21_β:
 jmp xchain00333_n23_α
xchain00333_n22_α:
# IR_DEREF variable -> value
bb00361_α:
 mov rdi, qword ptr [r12 + 2176]
 mov rsi, qword ptr [r12 + 2184]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00333_n23_α
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain00333_n24_α
 xchain00333_n22_β:
 jmp xchain00333_n23_α
xchain00333_n23_α:
# IR_VAR_REF gva
bb00198_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 jmp xchain00333_n25_α
 xchain00333_n23_β:
 jmp xchain00333_n29_α
xchain00333_n24_α:
bb00200_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2128]
 cmp eax, 100
 je .Lx00362_0
 mov eax, dword ptr [r12 + 2192]
 cmp eax, 100
 je .Lx00362_0
 mov eax, dword ptr [r12 + 2128]
 cmp eax, 6
 jne .Lx00362_2
 mov eax, dword ptr [r12 + 2192]
 cmp eax, 6
 jne .Lx00362_2
.Lx00362_1:
 mov rax, qword ptr [r12 + 2136]
 mov rcx, qword ptr [r12 + 2200]
 imul rax, rcx
 mov qword ptr [r12 + 2112], 6
 mov qword ptr [r12 + 2120], rax
 jmp xchain00333_n26_α
.Lx00362_0:
 mov rdi, qword ptr [r12 + 2128]
 mov rsi, qword ptr [r12 + 2136]
 mov rdx, qword ptr [r12 + 2192]
 mov rcx, qword ptr [r12 + 2200]
 mov r8d, 2
 lea r9, [r12 + 2112]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00362_3
.Lx00362_2:
 mov rdi, qword ptr [r12 + 2128]
 mov rsi, qword ptr [r12 + 2136]
 mov rdx, qword ptr [r12 + 2192]
 mov rcx, qword ptr [r12 + 2200]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00333_n23_α
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
.Lx00362_3:
 jmp xchain00333_n26_α
 xchain00333_n24_β:
 jmp xchain00333_n23_α
xchain00333_n25_α:
# IR_LIT_INTEGER
bb00363_α:
 mov qword ptr [r12 + 2048], 6
 mov rax, qword ptr [rip + .Lx00364_0]
 mov qword ptr [r12 + 2056], rax
 jmp xchain00333_n27_α
 xchain00333_n25_β:
 jmp xchain00333_n29_α
.Lx00364_0:
 .quad 1
xchain00333_n26_α:
bb00365_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2112]
 mov rdx, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 2736], rax
 mov qword ptr [r12 + 2744], rdx
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain00333_n23_α
 xchain00333_n26_β:
 jmp xchain00333_n23_α
xchain00333_n27_α:
# IR_SUBSCRIPT x[i] variable
bb00366_α:
 mov rdi, qword ptr [r12 + 2032]
 mov rsi, qword ptr [r12 + 2040]
 mov rdx, qword ptr [r12 + 2048]
 mov rcx, qword ptr [r12 + 2056]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00333_n29_α
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain00333_n28_α
 xchain00333_n27_β:
 jmp xchain00333_n29_α
xchain00333_n28_α:
# IR_DEREF variable -> value
bb00367_α:
 mov rdi, qword ptr [r12 + 2064]
 mov rsi, qword ptr [r12 + 2072]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00333_n29_α
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 jmp xchain00333_n30_α
 xchain00333_n28_β:
 jmp xchain00333_n29_α
xchain00333_n29_α:
# IR_VAR
bb00368_α:
 mov rax, qword ptr [r12 + 2720]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 2728]
 mov qword ptr [r12 + 1992], rax
 jmp xchain00333_n31_α
 xchain00333_n29_β:
 jmp xchain00333_n34_α
xchain00333_n30_α:
bb00205_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2080]
 mov rdx, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2720], rax
 mov qword ptr [r12 + 2728], rdx
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 jmp xchain00333_n29_α
 xchain00333_n30_β:
 jmp xchain00333_n29_α
xchain00333_n31_α:
# IR_VAR
bb00369_α:
 mov rax, qword ptr [r12 + 2736]
 mov qword ptr [r12 + 2000], rax
 mov rax, qword ptr [r12 + 2744]
 mov qword ptr [r12 + 2008], rax
 jmp xchain00333_n32_α
 xchain00333_n31_β:
 jmp xchain00333_n34_α
xchain00333_n32_α:
bb00370_α:
# BOX IR_CALL atan(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1984] -> [r12+1952]
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1960], rax
# marshal arg1 = producer-box slot [r12+2000] -> [r12+1968]
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 1976], rax
  .section .rodata
  .Lrkfn635: .string "atan"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn635]
 lea rsi, [r12 + 1952]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 cmp eax, 99
 je xchain00333_n34_α
 jmp xchain00333_n33_α
 xchain00333_n32_β:
 jmp xchain00333_n34_α
xchain00333_n33_α:
bb00371_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1936]
 mov rdx, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain00333_n34_α
 xchain00333_n33_β:
 jmp xchain00333_n34_α
xchain00333_n34_α:
# IR_LIT_INTEGER
bb00372_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00373_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00333_n35_α
 xchain00333_n34_β:
 jmp xchain00333_n38_α
.Lx00373_0:
 .quad 2
xchain00333_n35_α:
# IR_VAR gva
bb00374_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00333_n36_α
 xchain00333_n35_β:
 jmp xchain00333_n38_α
xchain00333_n36_α:
# IR_UNOP
bb00209_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00333_n37_α
 xchain00333_n36_β:
 jmp xchain00333_n38_α
xchain00333_n37_α:
# IR_TO
bb00375_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00376_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00333_n38_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00333_n39_α
 xchain00333_n37_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00376_0
xchain00333_n38_α:
# IR_RETURN
bb00377_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_collapse_γ
xchain00333_n39_α:
bb00378_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 2544], rax
 mov qword ptr [r12 + 2552], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00333_n40_α
 xchain00333_n39_β:
 jmp xchain00333_n38_α
xchain00333_n40_α:
# IR_VAR
bb00379_α:
 mov rax, qword ptr [r12 + 2736]
 mov qword ptr [r12 + 1904], rax
 mov rax, qword ptr [r12 + 2744]
 mov qword ptr [r12 + 1912], rax
 jmp xchain00333_n41_α
 xchain00333_n40_β:
 jmp xchain00333_n42_α
xchain00333_n41_α:
bb00380_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1904]
 mov rdx, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain00333_n42_α
 xchain00333_n41_β:
 jmp xchain00333_n42_α
xchain00333_n42_α:
# IR_VAR
bb00381_α:
 mov rax, qword ptr [r12 + 2720]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 2728]
 mov qword ptr [r12 + 1880], rax
 jmp xchain00333_n43_α
 xchain00333_n42_β:
 jmp xchain00333_n44_α
xchain00333_n43_α:
bb00382_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1872]
 mov rdx, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 jmp xchain00333_n44_α
 xchain00333_n43_β:
 jmp xchain00333_n44_α
xchain00333_n44_α:
# IR_VAR
bb00383_α:
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 1848], rax
 jmp xchain00333_n45_α
 xchain00333_n44_β:
 jmp xchain00333_n46_α
xchain00333_n45_α:
bb00384_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1840]
 mov rdx, qword ptr [r12 + 1848]
 mov qword ptr [r12 + 2704], rax
 mov qword ptr [r12 + 2712], rdx
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 jmp xchain00333_n46_α
 xchain00333_n45_β:
 jmp xchain00333_n46_α
xchain00333_n46_α:
# IR_VAR gva
bb00385_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain00333_n47_α
 xchain00333_n46_β:
 jmp xchain00333_n51_α
xchain00333_n47_α:
# IR_VAR_REF gva
bb00386_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain00333_n48_α
 xchain00333_n47_β:
 jmp xchain00333_n51_α
xchain00333_n48_α:
# IR_VAR
bb00217_α:
 mov rax, qword ptr [r12 + 2544]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 1784], rax
 jmp xchain00333_n49_α
 xchain00333_n48_β:
 jmp xchain00333_n51_α
xchain00333_n49_α:
# IR_SUBSCRIPT x[i] variable
bb00387_α:
 mov rdi, qword ptr [r12 + 1760]
 mov rsi, qword ptr [r12 + 1768]
 mov rdx, qword ptr [r12 + 1776]
 mov rcx, qword ptr [r12 + 1784]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00333_n51_α
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain00333_n50_α
 xchain00333_n49_β:
 jmp xchain00333_n51_α
xchain00333_n50_α:
# IR_DEREF variable -> value
bb00388_α:
 mov rdi, qword ptr [r12 + 1792]
 mov rsi, qword ptr [r12 + 1800]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00333_n51_α
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain00333_n52_α
 xchain00333_n50_β:
 jmp xchain00333_n51_α
xchain00333_n51_α:
# IR_VAR_REF gva
bb00220_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain00333_n53_α
 xchain00333_n51_β:
 jmp xchain00333_n57_α
xchain00333_n52_α:
bb00389_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1744]
 cmp eax, 100
 je .Lx00390_0
 mov eax, dword ptr [r12 + 1808]
 cmp eax, 100
 je .Lx00390_0
 mov eax, dword ptr [r12 + 1744]
 cmp eax, 6
 jne .Lx00390_2
 mov eax, dword ptr [r12 + 1808]
 cmp eax, 6
 jne .Lx00390_2
.Lx00390_1:
 mov rax, qword ptr [r12 + 1752]
 mov rcx, qword ptr [r12 + 1816]
 imul rax, rcx
 mov qword ptr [r12 + 1728], 6
 mov qword ptr [r12 + 1736], rax
 jmp xchain00333_n54_α
.Lx00390_0:
 mov rdi, qword ptr [r12 + 1744]
 mov rsi, qword ptr [r12 + 1752]
 mov rdx, qword ptr [r12 + 1808]
 mov rcx, qword ptr [r12 + 1816]
 mov r8d, 2
 lea r9, [r12 + 1728]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00390_3
.Lx00390_2:
 mov rdi, qword ptr [r12 + 1744]
 mov rsi, qword ptr [r12 + 1752]
 mov rdx, qword ptr [r12 + 1808]
 mov rcx, qword ptr [r12 + 1816]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00333_n51_α
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
.Lx00390_3:
 jmp xchain00333_n54_α
 xchain00333_n52_β:
 jmp xchain00333_n51_α
xchain00333_n53_α:
# IR_VAR
bb00391_α:
 mov rax, qword ptr [r12 + 2544]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00333_n55_α
 xchain00333_n53_β:
 jmp xchain00333_n57_α
xchain00333_n54_α:
bb00392_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1728]
 mov rdx, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 2736], rax
 mov qword ptr [r12 + 2744], rdx
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain00333_n51_α
 xchain00333_n54_β:
 jmp xchain00333_n51_α
xchain00333_n55_α:
# IR_SUBSCRIPT x[i] variable
bb00393_α:
 mov rdi, qword ptr [r12 + 1648]
 mov rsi, qword ptr [r12 + 1656]
 mov rdx, qword ptr [r12 + 1664]
 mov rcx, qword ptr [r12 + 1672]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00333_n57_α
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain00333_n56_α
 xchain00333_n55_β:
 jmp xchain00333_n57_α
xchain00333_n56_α:
# IR_DEREF variable -> value
bb00394_α:
 mov rdi, qword ptr [r12 + 1680]
 mov rsi, qword ptr [r12 + 1688]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00333_n57_α
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain00333_n58_α
 xchain00333_n56_β:
 jmp xchain00333_n57_α
xchain00333_n57_α:
# IR_VAR
bb00395_α:
 mov rax, qword ptr [r12 + 2720]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 2728]
 mov qword ptr [r12 + 1608], rax
 jmp xchain00333_n59_α
 xchain00333_n57_β:
 jmp xchain00333_n62_α
xchain00333_n58_α:
bb00396_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1696]
 mov rdx, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 2720], rax
 mov qword ptr [r12 + 2728], rdx
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain00333_n57_α
 xchain00333_n58_β:
 jmp xchain00333_n57_α
xchain00333_n59_α:
# IR_VAR
bb00397_α:
 mov rax, qword ptr [r12 + 2736]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 2744]
 mov qword ptr [r12 + 1624], rax
 jmp xchain00333_n60_α
 xchain00333_n59_β:
 jmp xchain00333_n62_α
xchain00333_n60_α:
bb00398_α:
# BOX IR_CALL atan(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1600] -> [r12+1568]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1576], rax
# marshal arg1 = producer-box slot [r12+1616] -> [r12+1584]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1592], rax
  .section .rodata
  .Lrkfn674: .string "atan"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn674]
 lea rsi, [r12 + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 cmp eax, 99
 je xchain00333_n62_α
 jmp xchain00333_n61_α
 xchain00333_n60_β:
 jmp xchain00333_n62_α
xchain00333_n61_α:
bb00399_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1552]
 mov rdx, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain00333_n62_α
 xchain00333_n61_β:
 jmp xchain00333_n62_α
xchain00333_n62_α:
# IR_VAR
bb00400_α:
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00333_n63_α
 xchain00333_n62_β:
 jmp xchain00333_n66_α
xchain00333_n63_α:
# IR_VAR
bb00401_α:
 mov rax, qword ptr [r12 + 2704]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 2712]
 mov qword ptr [r12 + 1528], rax
 jmp xchain00333_n64_α
 xchain00333_n63_β:
 jmp xchain00333_n66_α
xchain00333_n64_α:
bb00402_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2688]
 cmp eax, 100
 je .Lx00403_0
 mov eax, dword ptr [r12 + 2704]
 cmp eax, 100
 je .Lx00403_0
 mov eax, dword ptr [r12 + 2688]
 cmp eax, 6
 jne .Lx00403_2
 mov eax, dword ptr [r12 + 2704]
 cmp eax, 6
 jne .Lx00403_2
.Lx00403_1:
 mov rax, qword ptr [r12 + 2696]
 mov rcx, qword ptr [r12 + 2712]
 sub rax, rcx
 mov qword ptr [r12 + 1488], 6
 mov qword ptr [r12 + 1496], rax
 jmp xchain00333_n65_α
.Lx00403_0:
 mov rdi, qword ptr [r12 + 2688]
 mov rsi, qword ptr [r12 + 2696]
 mov rdx, qword ptr [r12 + 2704]
 mov rcx, qword ptr [r12 + 2712]
 mov r8d, 1
 lea r9, [r12 + 1488]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00403_3
.Lx00403_2:
 mov rdi, qword ptr [r12 + 2688]
 mov rsi, qword ptr [r12 + 2696]
 mov rdx, qword ptr [r12 + 2704]
 mov rcx, qword ptr [r12 + 2712]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00333_n66_α
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
.Lx00403_3:
 jmp xchain00333_n65_α
 xchain00333_n64_β:
 jmp xchain00333_n66_α
xchain00333_n65_α:
bb00404_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1488] -> [r12+1472]
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 1480], rax
  .section .rodata
  .Lrkfn682: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn682]
 lea rsi, [r12 + 1472]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 cmp eax, 99
 je xchain00333_n66_α
 jmp xchain00333_n67_α
 xchain00333_n65_β:
 jmp xchain00333_n66_α
xchain00333_n66_α:
# IR_VAR
bb00405_α:
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 2664]
 mov qword ptr [r12 + 1416], rax
 jmp xchain00333_n68_α
 xchain00333_n66_β:
 jmp xchain00333_n71_α
xchain00333_n67_α:
bb00406_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1456]
 mov rdx, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 2656], rax
 mov qword ptr [r12 + 2664], rdx
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain00333_n66_α
 xchain00333_n67_β:
 jmp xchain00333_n66_α
xchain00333_n68_α:
# IR_VAR
bb00407_α:
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 1432], rax
 jmp xchain00333_n69_α
 xchain00333_n68_β:
 jmp xchain00333_n71_α
xchain00333_n69_α:
bb00230_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2656]
 cmp eax, 100
 je .Lx00408_0
 mov eax, dword ptr [r12 + 2672]
 cmp eax, 100
 je .Lx00408_0
 mov eax, dword ptr [r12 + 2656]
 cmp eax, 6
 jne .Lx00408_2
 mov eax, dword ptr [r12 + 2672]
 cmp eax, 6
 jne .Lx00408_2
.Lx00408_1:
 mov rax, qword ptr [r12 + 2664]
 mov rcx, qword ptr [r12 + 2680]
 cmp rax, rcx
 jle xchain00333_n71_α
 mov rcx, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 1392], rcx
 mov rcx, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 1400], rcx
 jmp xchain00333_n37_β
.Lx00408_0:
 mov rdi, qword ptr [r12 + 2656]
 mov rsi, qword ptr [r12 + 2664]
 mov rdx, qword ptr [r12 + 2672]
 mov rcx, qword ptr [r12 + 2680]
 mov r8d, 7
 lea r9, [r12 + 1392]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00408_1
 cmp eax, 1
 je xchain00333_n71_α
 jmp xchain00333_n37_β
.Lx00408_2:
 mov rdi, qword ptr [r12 + 2656]
 mov rsi, qword ptr [r12 + 2664]
 mov rdx, qword ptr [r12 + 2672]
 mov rcx, qword ptr [r12 + 2680]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00333_n71_α
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00333_n37_β
 xchain00333_n69_β:
 jmp xchain00333_n71_α
xchain00333_n70_α:
 jmp xchain00333_n37_β
xchain00333_n70_β:
 jmp xchain00333_n37_β
xchain00333_n71_α:
# IR_VAR
bb00409_α:
 mov rax, qword ptr [r12 + 2624]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 1240], rax
 jmp xchain00333_n72_α
 xchain00333_n71_β:
 jmp xchain00333_n75_α
xchain00333_n72_α:
# IR_VAR
bb00410_α:
 mov rax, qword ptr [r12 + 2624]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 1256], rax
 jmp xchain00333_n73_α
 xchain00333_n72_β:
 jmp xchain00333_n75_α
xchain00333_n73_α:
bb00411_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2624]
 cmp eax, 100
 je .Lx00412_0
 mov eax, dword ptr [r12 + 2624]
 cmp eax, 100
 je .Lx00412_0
 mov eax, dword ptr [r12 + 2624]
 cmp eax, 6
 jne .Lx00412_2
 mov eax, dword ptr [r12 + 2624]
 cmp eax, 6
 jne .Lx00412_2
.Lx00412_1:
 mov rax, qword ptr [r12 + 2632]
 mov rcx, qword ptr [r12 + 2632]
 imul rax, rcx
 mov qword ptr [r12 + 1216], 6
 mov qword ptr [r12 + 1224], rax
 jmp xchain00333_n74_α
.Lx00412_0:
 mov rdi, qword ptr [r12 + 2624]
 mov rsi, qword ptr [r12 + 2632]
 mov rdx, qword ptr [r12 + 2624]
 mov rcx, qword ptr [r12 + 2632]
 mov r8d, 2
 lea r9, [r12 + 1216]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00412_3
.Lx00412_2:
 mov rdi, qword ptr [r12 + 2624]
 mov rsi, qword ptr [r12 + 2632]
 mov rdx, qword ptr [r12 + 2624]
 mov rcx, qword ptr [r12 + 2632]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00333_n75_α
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
.Lx00412_3:
 jmp xchain00333_n74_α
 xchain00333_n73_β:
 jmp xchain00333_n75_α
xchain00333_n74_α:
# IR_VAR
bb00413_α:
 mov rax, qword ptr [r12 + 2640]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 1288], rax
 jmp xchain00333_n76_α
 xchain00333_n74_β:
 jmp xchain00333_n75_α
xchain00333_n75_α:
# IR_VAR
bb00236_α:
 mov rax, qword ptr [r12 + 2592]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00333_n77_α
 xchain00333_n75_β:
 jmp xchain00333_n37_β
xchain00333_n76_α:
# IR_VAR
bb00414_α:
 mov rax, qword ptr [r12 + 2640]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00333_n78_α
 xchain00333_n76_β:
 jmp xchain00333_n75_α
xchain00333_n77_α:
# IR_VAR
bb00415_α:
 mov rax, qword ptr [r12 + 2608]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 2616]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00333_n79_α
 xchain00333_n77_β:
 jmp xchain00333_n37_β
xchain00333_n78_α:
bb00239_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2640]
 cmp eax, 100
 je .Lx00416_0
 mov eax, dword ptr [r12 + 2640]
 cmp eax, 100
 je .Lx00416_0
 mov eax, dword ptr [r12 + 2640]
 cmp eax, 6
 jne .Lx00416_2
 mov eax, dword ptr [r12 + 2640]
 cmp eax, 6
 jne .Lx00416_2
.Lx00416_1:
 mov rax, qword ptr [r12 + 2648]
 mov rcx, qword ptr [r12 + 2648]
 imul rax, rcx
 mov qword ptr [r12 + 1264], 6
 mov qword ptr [r12 + 1272], rax
 jmp xchain00333_n80_α
.Lx00416_0:
 mov rdi, qword ptr [r12 + 2640]
 mov rsi, qword ptr [r12 + 2648]
 mov rdx, qword ptr [r12 + 2640]
 mov rcx, qword ptr [r12 + 2648]
 mov r8d, 2
 lea r9, [r12 + 1264]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00416_3
.Lx00416_2:
 mov rdi, qword ptr [r12 + 2640]
 mov rsi, qword ptr [r12 + 2648]
 mov rdx, qword ptr [r12 + 2640]
 mov rcx, qword ptr [r12 + 2648]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00333_n75_α
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
.Lx00416_3:
 jmp xchain00333_n80_α
 xchain00333_n78_β:
 jmp xchain00333_n75_α
xchain00333_n79_α:
bb00417_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2592]
 cmp eax, 100
 je .Lx00418_0
 mov eax, dword ptr [r12 + 2608]
 cmp eax, 100
 je .Lx00418_0
 mov eax, dword ptr [r12 + 2592]
 cmp eax, 6
 jne .Lx00418_2
 mov eax, dword ptr [r12 + 2608]
 cmp eax, 6
 jne .Lx00418_2
.Lx00418_1:
 mov rax, qword ptr [r12 + 2600]
 mov rcx, qword ptr [r12 + 2616]
 cmp rax, rcx
 jg xchain00333_n37_β
 mov rcx, qword ptr [r12 + 2608]
 mov qword ptr [r12 + 1088], rcx
 mov rcx, qword ptr [r12 + 2616]
 mov qword ptr [r12 + 1096], rcx
 jmp xchain00333_n81_α
.Lx00418_0:
 mov rdi, qword ptr [r12 + 2592]
 mov rsi, qword ptr [r12 + 2600]
 mov rdx, qword ptr [r12 + 2608]
 mov rcx, qword ptr [r12 + 2616]
 mov r8d, 6
 lea r9, [r12 + 1088]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00418_1
 cmp eax, 1
 je xchain00333_n37_β
 jmp xchain00333_n81_α
.Lx00418_2:
 mov rdi, qword ptr [r12 + 2592]
 mov rsi, qword ptr [r12 + 2600]
 mov rdx, qword ptr [r12 + 2608]
 mov rcx, qword ptr [r12 + 2616]
 mov r8d, 6
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00333_n37_β
 mov rax, qword ptr [r12 + 2608]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 2616]
 mov qword ptr [r12 + 1096], rax
 jmp xchain00333_n81_α
 xchain00333_n79_β:
 jmp xchain00333_n37_β
xchain00333_n80_α:
bb00419_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1216]
 cmp eax, 100
 je .Lx00420_0
 mov eax, dword ptr [r12 + 1264]
 cmp eax, 100
 je .Lx00420_0
 mov eax, dword ptr [r12 + 1216]
 cmp eax, 6
 jne .Lx00420_2
 mov eax, dword ptr [r12 + 1264]
 cmp eax, 6
 jne .Lx00420_2
.Lx00420_1:
 mov rax, qword ptr [r12 + 1224]
 mov rcx, qword ptr [r12 + 1272]
 add rax, rcx
 mov qword ptr [r12 + 1200], 6
 mov qword ptr [r12 + 1208], rax
 jmp xchain00333_n82_α
.Lx00420_0:
 mov rdi, qword ptr [r12 + 1216]
 mov rsi, qword ptr [r12 + 1224]
 mov rdx, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1272]
 mov r8d, 0
 lea r9, [r12 + 1200]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00420_3
.Lx00420_2:
 mov rdi, qword ptr [r12 + 1216]
 mov rsi, qword ptr [r12 + 1224]
 mov rdx, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1272]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00333_n75_α
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
.Lx00420_3:
 jmp xchain00333_n82_α
 xchain00333_n80_β:
 jmp xchain00333_n75_α
xchain00333_n81_α:
# IR_VAR_REF gva
bb00242_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain00333_n83_α
 xchain00333_n81_β:
 jmp xchain00333_n88_α
xchain00333_n82_α:
# IR_VAR
bb00244_α:
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 2664]
 mov qword ptr [r12 + 1352], rax
 jmp xchain00333_n84_α
 xchain00333_n82_β:
 jmp xchain00333_n75_α
xchain00333_n83_α:
# IR_VAR
bb00421_α:
 mov rax, qword ptr [r12 + 2544]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 952], rax
 jmp xchain00333_n85_α
 xchain00333_n83_β:
 jmp xchain00333_n88_α
xchain00333_n84_α:
bb00422_α:
# BOX IR_CALL sin(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1344] -> [r12+1328]
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1336], rax
  .section .rodata
  .Lrkfn713: .string "sin"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn713]
 lea rsi, [r12 + 1328]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 cmp eax, 99
 je xchain00333_n75_α
 jmp xchain00333_n86_α
 xchain00333_n84_β:
 jmp xchain00333_n75_α
xchain00333_n85_α:
# IR_SUBSCRIPT x[i] variable
bb00247_α:
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00333_n88_α
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain00333_n87_α
 xchain00333_n85_β:
 jmp xchain00333_n88_α
xchain00333_n86_α:
bb00423_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1200]
 cmp eax, 100
 je .Lx00424_0
 mov eax, dword ptr [r12 + 1312]
 cmp eax, 100
 je .Lx00424_0
 mov eax, dword ptr [r12 + 1200]
 cmp eax, 6
 jne .Lx00424_2
 mov eax, dword ptr [r12 + 1312]
 cmp eax, 6
 jne .Lx00424_2
.Lx00424_1:
 mov rax, qword ptr [r12 + 1208]
 mov rcx, qword ptr [r12 + 1320]
 imul rax, rcx
 mov qword ptr [r12 + 1184], 6
 mov qword ptr [r12 + 1192], rax
 jmp xchain00333_n89_α
.Lx00424_0:
 mov rdi, qword ptr [r12 + 1200]
 mov rsi, qword ptr [r12 + 1208]
 mov rdx, qword ptr [r12 + 1312]
 mov rcx, qword ptr [r12 + 1320]
 mov r8d, 2
 lea r9, [r12 + 1184]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00424_3
.Lx00424_2:
 mov rdi, qword ptr [r12 + 1200]
 mov rsi, qword ptr [r12 + 1208]
 mov rdx, qword ptr [r12 + 1312]
 mov rcx, qword ptr [r12 + 1320]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00333_n75_α
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
.Lx00424_3:
 jmp xchain00333_n89_α
 xchain00333_n86_β:
 jmp xchain00333_n75_α
xchain00333_n87_α:
# IR_DEREF variable -> value
bb00425_α:
 mov rdi, qword ptr [r12 + 960]
 mov rsi, qword ptr [r12 + 968]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00333_n88_α
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain00333_n90_α
 xchain00333_n87_β:
 jmp xchain00333_n88_α
xchain00333_n88_α:
# IR_VAR_REF gva
bb00250_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00333_n91_α
 xchain00333_n88_β:
 jmp xchain00333_n97_α
xchain00333_n89_α:
bb00426_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1184] -> [r12+1168]
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1176], rax
  .section .rodata
  .Lrkfn720: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn720]
 lea rsi, [r12 + 1168]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain00333_n75_α
 jmp xchain00333_n92_α
 xchain00333_n89_β:
 jmp xchain00333_n75_α
xchain00333_n90_α:
# IR_VAR_REF gva
bb00427_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain00333_n93_α
 xchain00333_n90_β:
 jmp xchain00333_n88_α
xchain00333_n91_α:
# IR_VAR
bb00253_α:
 mov rax, qword ptr [r12 + 2544]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 760], rax
 jmp xchain00333_n94_α
 xchain00333_n91_β:
 jmp xchain00333_n97_α
xchain00333_n92_α:
bb00255_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1152]
 mov rdx, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00333_n75_α
 xchain00333_n92_β:
 jmp xchain00333_n75_α
xchain00333_n93_α:
# IR_VAR
bb00428_α:
 mov rax, qword ptr [r12 + 2544]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00333_n95_α
 xchain00333_n93_β:
 jmp xchain00333_n88_α
xchain00333_n94_α:
# IR_SUBSCRIPT x[i] variable
bb00429_α:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00333_n97_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00333_n96_α
 xchain00333_n94_β:
 jmp xchain00333_n97_α
xchain00333_n95_α:
# IR_LIT_INTEGER
bb00430_α:
 mov qword ptr [r12 + 1040], 6
 mov rax, qword ptr [rip + .Lx00431_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain00333_n98_α
 xchain00333_n95_β:
 jmp xchain00333_n88_α
.Lx00431_0:
 .quad 1
xchain00333_n96_α:
# IR_DEREF variable -> value
bb00432_α:
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00333_n97_α
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00333_n99_α
 xchain00333_n96_β:
 jmp xchain00333_n97_α
xchain00333_n97_α:
# IR_VAR
bb00433_α:
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 680], rax
 jmp xchain00333_n00008_α
 xchain00333_n97_β:
 jmp xchain00333_n37_β
xchain00333_n98_α:
bb00434_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2544]
 cmp eax, 100
 je .Lx00435_0
 mov eax, dword ptr [r12 + 1040]
 cmp eax, 100
 je .Lx00435_0
 mov eax, dword ptr [r12 + 2544]
 cmp eax, 6
 jne .Lx00435_2
 mov eax, dword ptr [r12 + 1040]
 cmp eax, 6
 jne .Lx00435_2
.Lx00435_1:
 mov rax, qword ptr [r12 + 2552]
 mov rcx, qword ptr [r12 + 1048]
 sub rax, rcx
 mov qword ptr [r12 + 1008], 6
 mov qword ptr [r12 + 1016], rax
 jmp xchain00333_n00009_α
.Lx00435_0:
 mov rdi, qword ptr [r12 + 2544]
 mov rsi, qword ptr [r12 + 2552]
 mov rdx, qword ptr [r12 + 1040]
 mov rcx, qword ptr [r12 + 1048]
 mov r8d, 1
 lea r9, [r12 + 1008]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00435_3
.Lx00435_2:
 mov rdi, qword ptr [r12 + 2544]
 mov rsi, qword ptr [r12 + 2552]
 mov rdx, qword ptr [r12 + 1040]
 mov rcx, qword ptr [r12 + 1048]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00333_n88_α
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
.Lx00435_3:
 jmp xchain00333_n00009_α
 xchain00333_n98_β:
 jmp xchain00333_n88_α
xchain00333_n99_α:
# IR_VAR_REF gva
bb00436_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00333_n00010_α
 xchain00333_n99_β:
 jmp xchain00333_n97_α
xchain00333_n00008_α:
bb00437_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+672] -> [r12+656]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn737: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn737]
 lea rsi, [r12 + 656]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain00333_n37_β
 jmp xchain00333_n00011_α
 xchain00333_n00008_β:
 jmp xchain00333_n37_β
xchain00333_n00009_α:
# IR_SUBSCRIPT x[i] variable
bb00438_α:
 mov rdi, qword ptr [r12 + 992]
 mov rsi, qword ptr [r12 + 1000]
 mov rdx, qword ptr [r12 + 1008]
 mov rcx, qword ptr [r12 + 1016]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00333_n88_α
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain00333_n00012_α
 xchain00333_n00009_β:
 jmp xchain00333_n88_α
xchain00333_n00010_α:
# IR_VAR
bb00262_α:
 mov rax, qword ptr [r12 + 2544]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 840], rax
 jmp xchain00333_n00013_α
 xchain00333_n00010_β:
 jmp xchain00333_n97_α
xchain00333_n00011_α:
# IR_LIT_INTEGER
bb00439_α:
 mov qword ptr [r12 + 688], 6
 mov rax, qword ptr [rip + .Lx00440_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain00333_n00014_α
 xchain00333_n00011_β:
 jmp xchain00333_n37_β
.Lx00440_0:
 .quad 5000
xchain00333_n00012_α:
# IR_DEREF variable -> value
bb00441_α:
 mov rdi, qword ptr [r12 + 1056]
 mov rsi, qword ptr [r12 + 1064]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00333_n88_α
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain00333_n00015_α
 xchain00333_n00012_β:
 jmp xchain00333_n88_α
xchain00333_n00013_α:
# IR_LIT_INTEGER
bb00442_α:
 mov qword ptr [r12 + 848], 6
 mov rax, qword ptr [rip + .Lx00443_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain00333_n00001_α
 xchain00333_n00013_β:
 jmp xchain00333_n97_α
.Lx00443_0:
 .quad 1
xchain00333_n00014_α:
bb00444_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 640]
 cmp eax, 100
 je .Lx00445_0
 mov eax, dword ptr [r12 + 688]
 cmp eax, 100
 je .Lx00445_0
 mov eax, dword ptr [r12 + 640]
 cmp eax, 6
 jne .Lx00445_2
 mov eax, dword ptr [r12 + 688]
 cmp eax, 6
 jne .Lx00445_2
.Lx00445_1:
 mov rax, qword ptr [r12 + 648]
 mov rcx, qword ptr [r12 + 696]
 cmp rax, rcx
 jge xchain00333_n37_β
 mov rcx, qword ptr [r12 + 688]
 mov qword ptr [r12 + 624], rcx
 mov rcx, qword ptr [r12 + 696]
 mov qword ptr [r12 + 632], rcx
 jmp xchain00333_n00016_α
.Lx00445_0:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 mov r8d, 5
 lea r9, [r12 + 624]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00445_1
 cmp eax, 1
 je xchain00333_n37_β
 jmp xchain00333_n00016_α
.Lx00445_2:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00333_n37_β
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 632], rax
 jmp xchain00333_n00016_α
 xchain00333_n00014_β:
 jmp xchain00333_n37_β
xchain00333_n00015_α:
bb00446_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 976]
 cmp eax, 100
 je .Lx00447_0
 mov eax, dword ptr [r12 + 1072]
 cmp eax, 100
 je .Lx00447_0
 mov eax, dword ptr [r12 + 976]
 cmp eax, 6
 jne .Lx00447_2
 mov eax, dword ptr [r12 + 1072]
 cmp eax, 6
 jne .Lx00447_2
.Lx00447_1:
 mov rax, qword ptr [r12 + 984]
 mov rcx, qword ptr [r12 + 1080]
 add rax, rcx
 mov qword ptr [r12 + 912], 6
 mov qword ptr [r12 + 920], rax
 jmp xchain00333_n00018_α
.Lx00447_0:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1072]
 mov rcx, qword ptr [r12 + 1080]
 mov r8d, 0
 lea r9, [r12 + 912]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00447_3
.Lx00447_2:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1072]
 mov rcx, qword ptr [r12 + 1080]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00333_n88_α
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
.Lx00447_3:
 jmp xchain00333_n00018_α
 xchain00333_n00015_β:
 jmp xchain00333_n88_α
xchain00333_n00001_α:
bb00448_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2544]
 cmp eax, 100
 je .Lx00449_0
 mov eax, dword ptr [r12 + 848]
 cmp eax, 100
 je .Lx00449_0
 mov eax, dword ptr [r12 + 2544]
 cmp eax, 6
 jne .Lx00449_2
 mov eax, dword ptr [r12 + 848]
 cmp eax, 6
 jne .Lx00449_2
.Lx00449_1:
 mov rax, qword ptr [r12 + 2552]
 mov rcx, qword ptr [r12 + 856]
 sub rax, rcx
 mov qword ptr [r12 + 816], 6
 mov qword ptr [r12 + 824], rax
 jmp xchain00333_n00020_α
.Lx00449_0:
 mov rdi, qword ptr [r12 + 2544]
 mov rsi, qword ptr [r12 + 2552]
 mov rdx, qword ptr [r12 + 848]
 mov rcx, qword ptr [r12 + 856]
 mov r8d, 1
 lea r9, [r12 + 816]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00449_3
.Lx00449_2:
 mov rdi, qword ptr [r12 + 2544]
 mov rsi, qword ptr [r12 + 2552]
 mov rdx, qword ptr [r12 + 848]
 mov rcx, qword ptr [r12 + 856]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00333_n97_α
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
.Lx00449_3:
 jmp xchain00333_n00020_α
 xchain00333_n00001_β:
 jmp xchain00333_n97_α
xchain00333_n00016_α:
# IR_VAR
bb00450_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 600], rax
 jmp xchain00333_n00021_α
 xchain00333_n00016_β:
 jmp xchain00333_n37_β
xchain00333_n00018_α:
bb00268_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00333_n88_α
 xchain00333_n00018_β:
 jmp xchain00333_n88_α
xchain00333_n00020_α:
# IR_SUBSCRIPT x[i] variable
bb00451_α:
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, qword ptr [r12 + 816]
 mov rcx, qword ptr [r12 + 824]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00333_n97_α
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00333_n00023_α
 xchain00333_n00020_β:
 jmp xchain00333_n97_α
xchain00333_n00021_α:
bb00452_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+592] -> [r12+576]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn752: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn752]
 lea rsi, [r12 + 576]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain00333_n37_β
 jmp xchain00333_n00002_α
 xchain00333_n00021_β:
 jmp xchain00333_n37_β
xchain00333_n00023_α:
# IR_DEREF variable -> value
bb00453_α:
 mov rdi, qword ptr [r12 + 864]
 mov rsi, qword ptr [r12 + 872]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00333_n97_α
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00333_n00024_α
 xchain00333_n00023_β:
 jmp xchain00333_n97_α
xchain00333_n00002_α:
# IR_LIT_INTEGER
bb00272_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx00454_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00333_n00025_α
 xchain00333_n00002_β:
 jmp xchain00333_n37_β
.Lx00454_0:
 .quad 5000
xchain00333_n00024_α:
bb00455_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 784]
 cmp eax, 100
 je .Lx00456_0
 mov eax, dword ptr [r12 + 880]
 cmp eax, 100
 je .Lx00456_0
 mov eax, dword ptr [r12 + 784]
 cmp eax, 6
 jne .Lx00456_2
 mov eax, dword ptr [r12 + 880]
 cmp eax, 6
 jne .Lx00456_2
.Lx00456_1:
 mov rax, qword ptr [r12 + 792]
 mov rcx, qword ptr [r12 + 888]
 add rax, rcx
 mov qword ptr [r12 + 720], 6
 mov qword ptr [r12 + 728], rax
 jmp xchain00333_n00026_α
.Lx00456_0:
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 880]
 mov rcx, qword ptr [r12 + 888]
 mov r8d, 0
 lea r9, [r12 + 720]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00456_3
.Lx00456_2:
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 880]
 mov rcx, qword ptr [r12 + 888]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00333_n97_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
.Lx00456_3:
 jmp xchain00333_n00026_α
 xchain00333_n00024_β:
 jmp xchain00333_n97_α
xchain00333_n00025_α:
bb00457_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 560]
 cmp eax, 100
 je .Lx00458_0
 mov eax, dword ptr [r12 + 608]
 cmp eax, 100
 je .Lx00458_0
 mov eax, dword ptr [r12 + 560]
 cmp eax, 6
 jne .Lx00458_2
 mov eax, dword ptr [r12 + 608]
 cmp eax, 6
 jne .Lx00458_2
.Lx00458_1:
 mov rax, qword ptr [r12 + 568]
 mov rcx, qword ptr [r12 + 616]
 cmp rax, rcx
 jge xchain00333_n37_β
 mov rcx, qword ptr [r12 + 608]
 mov qword ptr [r12 + 544], rcx
 mov rcx, qword ptr [r12 + 616]
 mov qword ptr [r12 + 552], rcx
 jmp xchain00333_n00027_α
.Lx00458_0:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 5
 lea r9, [r12 + 544]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00458_1
 cmp eax, 1
 je xchain00333_n37_β
 jmp xchain00333_n00027_α
.Lx00458_2:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00333_n37_β
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 552], rax
 jmp xchain00333_n00027_α
 xchain00333_n00025_β:
 jmp xchain00333_n37_β
xchain00333_n00026_α:
bb00459_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00333_n97_α
 xchain00333_n00026_β:
 jmp xchain00333_n97_α
xchain00333_n00027_α:
 jmp xchain00333_n00028_α
xchain00333_n00027_β:
 jmp xchain00333_n37_β
xchain00333_n00028_α:
# IR_VAR_REF gva
bb00460_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00333_n00029_α
 xchain00333_n00028_β:
 jmp xchain00333_n00032_α
xchain00333_n00029_α:
# IR_VAR
bb00461_α:
 mov rax, qword ptr [r12 + 2544]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 488], rax
 jmp xchain00333_n00030_α
 xchain00333_n00029_β:
 jmp xchain00333_n00032_α
xchain00333_n00030_α:
# IR_SUBSCRIPT x[i] variable
bb00277_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00333_n00032_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00333_n00031_α
 xchain00333_n00030_β:
 jmp xchain00333_n00032_α
xchain00333_n00031_α:
# IR_VAR
bb00462_α:
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 536], rax
 jmp xchain00333_n00033_α
 xchain00333_n00031_β:
 jmp xchain00333_n00032_α
xchain00333_n00032_α:
# IR_VAR_REF gva
bb00463_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00333_n00003_α
 xchain00333_n00032_β:
 jmp xchain00333_n00037_α
xchain00333_n00033_α:
# IR_ASSIGN_VAR write through variable
bb00464_α:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00333_n00032_α
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00333_n00032_α
 xchain00333_n00033_β:
 jmp xchain00333_n00032_α
xchain00333_n00003_α:
# IR_VAR
bb00465_α:
 mov rax, qword ptr [r12 + 2544]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 408], rax
 jmp xchain00333_n00035_α
 xchain00333_n00003_β:
 jmp xchain00333_n00037_α
xchain00333_n00035_α:
# IR_SUBSCRIPT x[i] variable
bb00466_α:
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00333_n00037_α
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00333_n00036_α
 xchain00333_n00035_β:
 jmp xchain00333_n00037_α
xchain00333_n00036_α:
# IR_VAR
bb00282_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 456], rax
 jmp xchain00333_n00038_α
 xchain00333_n00036_β:
 jmp xchain00333_n00037_α
xchain00333_n00037_α:
# IR_VAR_REF gva
bb00467_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00333_n00039_α
 xchain00333_n00037_β:
 jmp xchain00333_n37_β
xchain00333_n00038_α:
# IR_ASSIGN_VAR write through variable
bb00468_α:
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00333_n00037_α
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00333_n00037_α
 xchain00333_n00038_β:
 jmp xchain00333_n00037_α
xchain00333_n00039_α:
# IR_VAR
bb00469_α:
 mov rax, qword ptr [r12 + 2544]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 216], rax
 jmp xchain00333_n00040_α
 xchain00333_n00039_β:
 jmp xchain00333_n37_β
xchain00333_n00040_α:
# IR_LIT_INTEGER
bb00470_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00471_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00333_n00004_α
 xchain00333_n00040_β:
 jmp xchain00333_n37_β
.Lx00471_0:
 .quad 1
xchain00333_n00004_α:
bb00472_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2544]
 cmp eax, 100
 je .Lx00473_0
 mov eax, dword ptr [r12 + 224]
 cmp eax, 100
 je .Lx00473_0
 mov eax, dword ptr [r12 + 2544]
 cmp eax, 6
 jne .Lx00473_2
 mov eax, dword ptr [r12 + 224]
 cmp eax, 6
 jne .Lx00473_2
.Lx00473_1:
 mov rax, qword ptr [r12 + 2552]
 mov rcx, qword ptr [r12 + 232]
 sub rax, rcx
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
 jmp xchain00333_n00041_α
.Lx00473_0:
 mov rdi, qword ptr [r12 + 2544]
 mov rsi, qword ptr [r12 + 2552]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 1
 lea r9, [r12 + 192]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00473_3
.Lx00473_2:
 mov rdi, qword ptr [r12 + 2544]
 mov rsi, qword ptr [r12 + 2552]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00333_n37_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
.Lx00473_3:
 jmp xchain00333_n00041_α
 xchain00333_n00004_β:
 jmp xchain00333_n37_β
xchain00333_n00041_α:
# IR_SUBSCRIPT x[i] variable
bb00474_α:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00333_n37_β
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00333_n00042_α
 xchain00333_n00041_β:
 jmp xchain00333_n37_β
xchain00333_n00042_α:
# IR_VAR_REF gva
bb00475_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00333_n00043_α
 xchain00333_n00042_β:
 jmp xchain00333_n37_β
xchain00333_n00043_α:
# IR_VAR
bb00476_α:
 mov rax, qword ptr [r12 + 2544]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 312], rax
 jmp xchain00333_n00044_α
 xchain00333_n00043_β:
 jmp xchain00333_n37_β
xchain00333_n00044_α:
# IR_LIT_INTEGER
bb00477_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx00478_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00333_n00046_α
 xchain00333_n00044_β:
 jmp xchain00333_n37_β
.Lx00478_0:
 .quad 1
xchain00333_n00046_α:
bb00479_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2544]
 cmp eax, 100
 je .Lx00480_0
 mov eax, dword ptr [r12 + 320]
 cmp eax, 100
 je .Lx00480_0
 mov eax, dword ptr [r12 + 2544]
 cmp eax, 6
 jne .Lx00480_2
 mov eax, dword ptr [r12 + 320]
 cmp eax, 6
 jne .Lx00480_2
.Lx00480_1:
 mov rax, qword ptr [r12 + 2552]
 mov rcx, qword ptr [r12 + 328]
 sub rax, rcx
 mov qword ptr [r12 + 288], 6
 mov qword ptr [r12 + 296], rax
 jmp xchain00333_n00005_α
.Lx00480_0:
 mov rdi, qword ptr [r12 + 2544]
 mov rsi, qword ptr [r12 + 2552]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 1
 lea r9, [r12 + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00480_3
.Lx00480_2:
 mov rdi, qword ptr [r12 + 2544]
 mov rsi, qword ptr [r12 + 2552]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00333_n37_β
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
.Lx00480_3:
 jmp xchain00333_n00005_α
 xchain00333_n00046_β:
 jmp xchain00333_n37_β
xchain00333_n00005_α:
# IR_SUBSCRIPT x[i] variable
bb00288_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00333_n37_β
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00333_n00047_α
 xchain00333_n00005_β:
 jmp xchain00333_n37_β
xchain00333_n00047_α:
# IR_LIT_INTEGER
bb00290_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00481_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00333_n00048_α
 xchain00333_n00047_β:
 jmp xchain00333_n37_β
.Lx00481_0:
 .quad 0
xchain00333_n00048_α:
# IR_ASSIGN_VAR write through variable
bb00482_α:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00333_n37_β
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00333_n00006_α
 xchain00333_n00048_β:
 jmp xchain00333_n37_β
xchain00333_n00006_α:
# IR_ASSIGN_VAR write through variable
bb00483_α:
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00333_n37_β
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00333_n00007_α
 xchain00333_n00006_β:
 jmp xchain00333_n37_β
xchain00333_n00007_α:
 jmp xchain00333_n00049_α
xchain00333_n00007_β:
 jmp xchain00333_n37_β
xchain00333_n00049_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00484_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 152], rax
 lea rax, [rip + xchain00333_n37_β]
 mov qword ptr [r12 + 160], rax
 jmp xchain00333_n00050_α
 xchain00333_n00049_β:
 jmp xchain00333_n37_β
xchain00333_n00050_α:
 jmp xchain00333_n00052_α
xchain00333_n00050_β:
 jmp xchain00333_n37_β
xchain00333_n00051_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00485_α:
 jmp qword ptr [r12 + 160]
 xchain00333_n00051_β:
 jmp xchain00333_n37_β
xchain00333_n00052_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00486_α:
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
 lea rax, [rip + xchain00333_n00051_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain00333_n00256_α
 xchain00333_n00052_β:
 jmp xchain00333_n37_β
xchain00333_n00256_α:
 jmp xchain00333_n37_β
xchain00333_n00256_β:
 jmp xchain00333_n37_β
xchain00333_n00054_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00293_α:
 jmp qword ptr [r12 + 128]
 xchain00333_n00054_β:
 jmp xchain00333_n37_β
proc_collapse_β:
jmp proc_collapse_ω
proc_collapse_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_collapse_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_successor_α
proc_successor_α:
#=======================================================================================================================
    .global proc_successor_α
    .global proc_successor_β
    .global proc_successor_γ
    .global proc_successor_ω
push r12
  mov r12, rdi
proc_successor_α_body:
xchain00487_n0_α:
# IR_VAR_REF gva
bb00488_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain00487_n1_α
 xchain00487_n0_β:
 jmp xchain00487_n5_α
xchain00487_n1_α:
# IR_VAR
bb00489_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1208], rax
 jmp xchain00487_n2_α
 xchain00487_n1_β:
 jmp xchain00487_n5_α
xchain00487_n2_α:
# IR_FIELD_GET
bb00297_α:
 mov rdi, qword ptr [rip + .Lx00490_0]
 mov rsi, qword ptr [r12 + 1200]
 mov rdx, qword ptr [r12 + 1208]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00487_n5_α
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain00487_n3_α
 xchain00487_n2_β:
 jmp xchain00487_n5_α
.Lx00490_0:
 .quad .Lx00490_0_s
.Lx00490_0_s:
 .string "code"
xchain00487_n3_α:
# IR_SUBSCRIPT x[i] variable
bb00299_α:
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 mov rdx, qword ptr [r12 + 1184]
 mov rcx, qword ptr [r12 + 1192]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00487_n5_α
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain00487_n4_α
 xchain00487_n3_β:
 jmp xchain00487_n5_α
xchain00487_n4_α:
# IR_DEREF variable -> value
bb00491_α:
 mov rdi, qword ptr [r12 + 1216]
 mov rsi, qword ptr [r12 + 1224]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00487_n5_α
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain00487_n6_α
 xchain00487_n4_β:
 jmp xchain00487_n5_α
xchain00487_n5_α:
# IR_VAR
bb00301_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00487_n7_α
 xchain00487_n5_β:
 jmp xchain00487_n12_α
xchain00487_n6_α:
bb00492_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1232]
 mov rdx, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain00487_n5_α
 xchain00487_n6_β:
 jmp xchain00487_n5_α
xchain00487_n7_α:
# IR_FIELD_GET
bb00493_α:
 mov rdi, qword ptr [rip + .Lx00494_0]
 mov rsi, qword ptr [r12 + 992]
 mov rdx, qword ptr [r12 + 1000]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00487_n12_α
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain00487_n8_α
 xchain00487_n7_β:
 jmp xchain00487_n12_α
.Lx00494_0:
 .quad .Lx00494_0_s
.Lx00494_0_s:
 .string "x2"
xchain00487_n8_α:
# IR_VAR
bb00495_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00487_n9_α
 xchain00487_n8_β:
 jmp xchain00487_n12_α
xchain00487_n9_α:
# IR_FIELD_GET
bb00305_α:
 mov rdi, qword ptr [rip + .Lx00496_0]
 mov rsi, qword ptr [r12 + 1024]
 mov rdx, qword ptr [r12 + 1032]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00487_n12_α
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain00487_n10_α
 xchain00487_n9_β:
 jmp xchain00487_n12_α
.Lx00496_0:
 .quad .Lx00496_0_s
.Lx00496_0_s:
 .string "y2"
xchain00487_n10_α:
bb00497_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 976]
 cmp eax, 100
 je .Lx00498_0
 mov eax, dword ptr [r12 + 1008]
 cmp eax, 100
 je .Lx00498_0
 mov eax, dword ptr [r12 + 976]
 cmp eax, 6
 jne .Lx00498_2
 mov eax, dword ptr [r12 + 1008]
 cmp eax, 6
 jne .Lx00498_2
.Lx00498_1:
 mov rax, qword ptr [r12 + 984]
 mov rcx, qword ptr [r12 + 1016]
 add rax, rcx
 mov qword ptr [r12 + 960], 6
 mov qword ptr [r12 + 968], rax
 jmp xchain00487_n11_α
.Lx00498_0:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1008]
 mov rcx, qword ptr [r12 + 1016]
 mov r8d, 0
 lea r9, [r12 + 960]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00498_3
.Lx00498_2:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1008]
 mov rcx, qword ptr [r12 + 1016]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00487_n12_α
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
.Lx00498_3:
 jmp xchain00487_n11_α
 xchain00487_n10_β:
 jmp xchain00487_n12_α
xchain00487_n11_α:
# IR_LIT_INTEGER
bb00307_α:
 mov qword ptr [r12 + 1040], 6
 mov rax, qword ptr [rip + .Lx00499_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain00487_n13_α
 xchain00487_n11_β:
 jmp xchain00487_n12_α
.Lx00499_0:
 .quad 8
xchain00487_n12_α:
# IR_LIT_INTEGER
bb00309_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00500_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00487_n14_α
 xchain00487_n12_β:
 jmp xchain00487_n17_α
.Lx00500_0:
 .quad 0
xchain00487_n13_α:
bb00501_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+960] -> [r12+928]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 936], rax
# marshal arg1 = producer-box slot [r12+1040] -> [r12+944]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lrkfn822: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn822]
 lea rsi, [r12 + 928]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain00487_n12_α
 jmp xchain00487_n15_α
 xchain00487_n13_β:
 jmp xchain00487_n12_α
xchain00487_n14_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00502_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + xchain00487_n17_α]
 mov qword ptr [r12 + 64], rax
 jmp xchain00487_n16_α
 xchain00487_n14_β:
 jmp proc_successor_ω
xchain00487_n15_α:
# IR_VAR
bb00311_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00487_n19_α
 xchain00487_n15_β:
 jmp xchain00487_n12_α
xchain00487_n16_α:
bb00503_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00487_n20_α
 xchain00487_n16_β:
 jmp proc_successor_ω
xchain00487_n17_α:
# IR_LIT_INTEGER
bb00504_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00505_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00487_n21_α
 xchain00487_n17_β:
 jmp xchain00487_n24_α
.Lx00505_0:
 .quad 1
xchain00487_n18_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00506_α:
 jmp qword ptr [r12 + 64]
 xchain00487_n18_β:
 jmp proc_successor_ω
xchain00487_n19_α:
# IR_FIELD_GET
bb00507_α:
 mov rdi, qword ptr [rip + .Lx00508_0]
 mov rsi, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00487_n12_α
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain00487_n22_α
 xchain00487_n19_β:
 jmp xchain00487_n12_α
.Lx00508_0:
 .quad .Lx00508_0_s
.Lx00508_0_s:
 .string "x2"
xchain00487_n20_α:
# IR_VAR_REF local
bb00509_α:
 lea rdi, [r12 + 1328]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00487_n23_α
 xchain00487_n20_β:
 jmp xchain00487_n18_α
xchain00487_n21_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00510_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + xchain00487_n24_α]
 mov qword ptr [r12 + 64], rax
 jmp xchain00487_n16_α
 xchain00487_n21_β:
 jmp proc_successor_ω
xchain00487_n22_α:
# IR_LIT_INTEGER
bb00511_α:
 mov qword ptr [r12 + 1136], 6
 mov rax, qword ptr [rip + .Lx00512_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain00487_n25_α
 xchain00487_n22_β:
 jmp xchain00487_n12_α
.Lx00512_0:
 .quad 7
xchain00487_n23_α:
# IR_VAR
bb00513_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 824], rax
 jmp xchain00487_n26_α
 xchain00487_n23_β:
 jmp xchain00487_n18_α
xchain00487_n24_α:
# IR_LIT_INTEGER
bb00514_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx00515_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain00487_n27_α
 xchain00487_n24_β:
 jmp proc_successor_ω
.Lx00515_0:
 .quad 18446744073709551615
xchain00487_n25_α:
bb00315_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn841: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn841]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00487_n12_α
 jmp xchain00487_n28_α
 xchain00487_n25_β:
 jmp xchain00487_n12_α
xchain00487_n26_α:
# IR_FIELD_GET
bb00516_α:
 mov rdi, qword ptr [rip + .Lx00517_0]
 mov rsi, qword ptr [r12 + 816]
 mov rdx, qword ptr [r12 + 824]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00487_n18_α
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00487_n29_α
 xchain00487_n26_β:
 jmp xchain00487_n18_α
.Lx00517_0:
 .quad .Lx00517_0_s
.Lx00517_0_s:
 .string "aindex"
xchain00487_n27_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00317_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + proc_successor_ω]
 mov qword ptr [r12 + 64], rax
 jmp xchain00487_n16_α
 xchain00487_n27_β:
 jmp proc_successor_ω
xchain00487_n28_α:
bb00518_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 mov rdx, qword ptr [r12 + 1056]
 mov rcx, qword ptr [r12 + 1064]
 call str_concat_d@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00487_n30_α
 xchain00487_n28_β:
 jmp xchain00487_n12_α
xchain00487_n29_α:
# IR_VAR
bb00519_α:
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 840], rax
 jmp xchain00487_n31_α
 xchain00487_n29_β:
 jmp xchain00487_n18_α
xchain00487_n30_α:
bb00520_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00487_n12_α
 xchain00487_n30_β:
 jmp xchain00487_n12_α
xchain00487_n31_α:
bb00521_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 800]
 cmp eax, 100
 je .Lx00522_0
 mov eax, dword ptr [r12 + 1248]
 cmp eax, 100
 je .Lx00522_0
 mov eax, dword ptr [r12 + 800]
 cmp eax, 6
 jne .Lx00522_2
 mov eax, dword ptr [r12 + 1248]
 cmp eax, 6
 jne .Lx00522_2
.Lx00522_1:
 mov rax, qword ptr [r12 + 808]
 mov rcx, qword ptr [r12 + 1256]
 add rax, rcx
 mov qword ptr [r12 + 784], 6
 mov qword ptr [r12 + 792], rax
 jmp xchain00487_n32_α
.Lx00522_0:
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, qword ptr [r12 + 1248]
 mov rcx, qword ptr [r12 + 1256]
 mov r8d, 0
 lea r9, [r12 + 784]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00522_3
.Lx00522_2:
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, qword ptr [r12 + 1248]
 mov rcx, qword ptr [r12 + 1256]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00487_n18_α
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
.Lx00522_3:
 jmp xchain00487_n32_α
 xchain00487_n31_β:
 jmp xchain00487_n18_α
xchain00487_n32_α:
# IR_SUBSCRIPT x[i] variable
bb00523_α:
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00487_n18_α
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain00487_n34_α
 xchain00487_n32_β:
 jmp xchain00487_n18_α
xchain00487_n33_α:
 jmp xchain00487_n18_α
xchain00487_n33_β:
 jmp xchain00487_n18_α
xchain00487_n34_α:
# IR_DEREF variable -> value
bb00524_α:
 mov rdi, qword ptr [r12 + 848]
 mov rsi, qword ptr [r12 + 856]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00487_n18_α
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00487_n35_α
 xchain00487_n34_β:
 jmp xchain00487_n18_α
xchain00487_n35_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00525_α:
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 744], rax
 lea rax, [rip + xchain00487_n33_α]
 mov qword ptr [r12 + 752], rax
 jmp xchain00487_n36_α
 xchain00487_n35_β:
 jmp xchain00487_n38_α
xchain00487_n36_α:
bb00323_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 736]
 mov rdx, qword ptr [r12 + 744]
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00487_n38_α
 xchain00487_n36_β:
 jmp xchain00487_n38_α
xchain00487_n37_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00325_α:
 jmp qword ptr [r12 + 752]
 xchain00487_n37_β:
 jmp xchain00487_n38_α
xchain00487_n38_α:
# IR_VAR_REF local
bb00327_α:
 lea rdi, [r12 + 1296]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain00487_n39_α
 xchain00487_n38_β:
 jmp xchain00487_n18_α
xchain00487_n39_α:
# IR_VAR
bb00329_α:
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 680], rax
 jmp xchain00487_n40_α
 xchain00487_n39_β:
 jmp xchain00487_n18_α
xchain00487_n40_α:
# IR_SUBSCRIPT x[i] variable
bb00526_α:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00487_n18_α
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00487_n41_α
 xchain00487_n40_β:
 jmp xchain00487_n18_α
xchain00487_n41_α:
# IR_DEREF variable -> value
bb00527_α:
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00487_n18_α
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00487_n42_α
 xchain00487_n41_β:
 jmp xchain00487_n18_α
xchain00487_n42_α:
# IR_UNOP
bb00528_α:
 mov eax, dword ptr [r12 + 704]
 cmp eax, 99
 je xchain00487_n18_α
 cmp eax, 0
 je xchain00487_n18_α
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 648], rax
 jmp xchain00487_n43_α
 xchain00487_n42_β:
 jmp xchain00487_n18_α
xchain00487_n43_α:
bb00529_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00487_n44_α
 xchain00487_n43_β:
 jmp xchain00487_n18_α
xchain00487_n44_α:
# IR_VAR
bb00331_α:
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 600], rax
 jmp xchain00487_n45_α
 xchain00487_n44_β:
 jmp xchain00487_n47_α
xchain00487_n45_α:
bb00530_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+592] -> [r12+576]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn869: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn869]
 lea rsi, [r12 + 576]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain00487_n47_α
 jmp xchain00487_n46_α
 xchain00487_n45_β:
 jmp xchain00487_n47_α
xchain00487_n46_α:
# IR_LIT_STRING
bb00531_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx00532_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00487_n48_α
 xchain00487_n46_β:
 jmp xchain00487_n47_α
.Lx00532_0:
 .quad .Lx00532_0_s
.Lx00532_0_s:
 .string "list"
xchain00487_n47_α:
# IR_VAR
bb00333_α:
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 536], rax
 jmp xchain00487_n49_α
 xchain00487_n47_β:
 jmp xchain00487_n18_α
xchain00487_n48_α:
bb00533_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00487_n47_α
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00487_n50_α
 xchain00487_n48_β:
 jmp xchain00487_n47_α
xchain00487_n49_α:
# IR_LIST_BANG
bb00335_α:
 mov qword ptr [r12 + 512], 0
.Lx00534_0:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 512]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp rax, 99
 je xchain00487_n18_α
 jmp xchain00487_n51_α
 xchain00487_n49_β:
 inc qword ptr [r12 + 512]
 jmp .Lx00534_0
xchain00487_n50_α:
# IR_VAR gva
bb00337_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00487_n52_α
 xchain00487_n50_β:
 jmp xchain00487_n56_α
xchain00487_n51_α:
bb00535_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00487_n53_α
 xchain00487_n51_β:
 jmp xchain00487_n18_α
xchain00487_n52_α:
# IR_VAR
bb00536_α:
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 328], rax
 jmp xchain00487_n54_α
 xchain00487_n52_β:
 jmp xchain00487_n56_α
xchain00487_n53_α:
# IR_VAR gva
bb00537_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00487_n55_α
 xchain00487_n53_β:
 jmp xchain00487_n59_α
xchain00487_n54_α:
bb00342_α:
# BOX IR_CALL member(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+304] -> [r12+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [r12+320] -> [r12+288]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn882: .string "member"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn882]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain00487_n56_α
 jmp xchain00487_n18_α
 xchain00487_n54_β:
 jmp xchain00487_n56_α
xchain00487_n55_α:
# IR_VAR
bb00538_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 472], rax
 jmp xchain00487_n57_α
 xchain00487_n55_β:
 jmp xchain00487_n59_α
xchain00487_n56_α:
# IR_KEYWORD_null
bb00539_α:
 mov qword ptr [r12 + 240], 0
 mov qword ptr [r12 + 248], 0
 jmp xchain00487_n58_α
 xchain00487_n56_β:
 jmp xchain00487_n18_α
xchain00487_n57_α:
bb00345_α:
# BOX IR_CALL member(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+448] -> [r12+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [r12+464] -> [r12+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn887: .string "member"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn887]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00487_n59_α
 jmp xchain00487_n49_β
 xchain00487_n57_β:
 jmp xchain00487_n59_α
xchain00487_n58_α:
# IR_VAR
bb00346_α:
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 232], rax
 jmp xchain00487_n60_α
 xchain00487_n58_β:
 jmp proc_successor_ω
xchain00487_n59_α:
# IR_KEYWORD_null
bb00348_α:
 mov qword ptr [r12 + 384], 0
 mov qword ptr [r12 + 392], 0
 jmp xchain00487_n61_α
 xchain00487_n59_β:
 jmp xchain00487_n49_β
xchain00487_n60_α:
# IR_RETURN
bb00540_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_successor_γ
xchain00487_n61_α:
 jmp xchain00487_n62_α
xchain00487_n61_β:
 jmp xchain00487_n18_α
xchain00487_n62_α:
# IR_VAR
bb00351_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 376], rax
 jmp xchain00487_n63_α
 xchain00487_n62_β:
 jmp proc_successor_ω
xchain00487_n63_α:
# IR_RETURN
bb00353_α:
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_successor_γ
proc_successor_β:
jmp proc_successor_ω
proc_successor_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_successor_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_crack_α
proc_crack_α:
#=======================================================================================================================
    .global proc_crack_α
    .global proc_crack_β
    .global proc_crack_γ
    .global proc_crack_ω
push r12
  mov r12, rdi
proc_crack_α_body:
xchain00541_n0_α:
# IR_VAR_REF gva
bb00542_α:
 lea rdi, [rbx + 144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain00541_n1_α
 xchain00541_n0_β:
 jmp xchain00541_n3_α
xchain00541_n1_α:
# IR_UNOP_TEST lv
bb00356_α:
 mov eax, dword ptr [r12 + 2176]
 cmp eax, 99
 je xchain00541_n3_α
 mov rdi, qword ptr [r12 + 2176]
 mov rsi, qword ptr [r12 + 2184]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00541_n3_α
 cmp eax, 0
 jne xchain00541_n3_α
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 2200], rax
 jmp xchain00541_n2_α
 xchain00541_n1_β:
 jmp xchain00541_n3_α
xchain00541_n2_α:
# IR_LIT_INTEGER
bb00543_α:
 mov qword ptr [r12 + 2224], 6
 mov rax, qword ptr [rip + .Lx00544_0]
 mov qword ptr [r12 + 2232], rax
 jmp xchain00541_n4_α
 xchain00541_n2_β:
 jmp xchain00541_n3_α
.Lx00544_0:
 .quad 1
xchain00541_n3_α:
# IR_VAR
bb00545_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 2096], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 2104], rax
 jmp xchain00541_n5_α
 xchain00541_n3_β:
 jmp xchain00541_n00018_α
xchain00541_n4_α:
# IR_ASSIGN_VAR write through variable
bb00546_α:
 mov rdi, qword ptr [r12 + 2192]
 mov rsi, qword ptr [r12 + 2200]
 mov rdx, qword ptr [r12 + 2224]
 mov rcx, qword ptr [r12 + 2232]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00541_n3_α
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 jmp xchain00541_n6_α
 xchain00541_n4_β:
 jmp xchain00541_n3_α
xchain00541_n5_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 2096]
 mov rsi, qword ptr [r12 + 2104]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00541_n7_α
 xchain00541_n5_β:
 jmp xchain00541_n00018_α
xchain00541_n6_α:
bb00359_α:
# BOX IR_CALL crec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn907: .string "crec"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn907]
 lea rsi, [r12 + 2176]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 cmp eax, 99
 je xchain00541_n3_α
 jmp xchain00541_n8_α
 xchain00541_n6_β:
 jmp xchain00541_n3_α
xchain00541_n7_α:
# IR_VAR gva
bb00547_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 jmp xchain00541_n9_α
 xchain00541_n7_β:
 jmp xchain00541_n15_α
xchain00541_n8_α:
# IR_ASSIGN gva
bb00548_α:
 mov rax, qword ptr [r12 + 2160]
 mov rdx, qword ptr [r12 + 2168]
 mov qword ptr [rbx + 128], rax
 mov qword ptr [rbx + 136], rdx
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain00541_n10_α
 xchain00541_n8_β:
 jmp xchain00541_n3_α
xchain00541_n9_α:
# IR_FIELD_GET lv
bb00549_α:
 mov rdi, qword ptr [rip + .Lx00550_0]
 mov rsi, qword ptr [r12 + 2016]
 mov rdx, qword ptr [r12 + 2024]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00541_n15_α
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain00541_n11_α
 xchain00541_n9_β:
 jmp xchain00541_n15_α
.Lx00550_0:
 .quad .Lx00550_0_s
.Lx00550_0_s:
 .string "code"
xchain00541_n10_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00551_α:
 mov rax, qword ptr [r12 + 2144]
 mov qword ptr [r12 + 2112], rax
 mov rax, qword ptr [r12 + 2152]
 mov qword ptr [r12 + 2120], rax
 lea rax, [rip + xchain00541_n3_α]
 mov qword ptr [r12 + 2128], rax
 jmp xchain00541_n3_α
 xchain00541_n10_β:
 jmp xchain00541_n3_α
xchain00541_n11_α:
# IR_LIT_INTEGER
bb00362_α:
 mov qword ptr [r12 + 2080], 6
 mov rax, qword ptr [rip + .Lx00552_0]
 mov qword ptr [r12 + 2088], rax
 jmp xchain00541_n13_α
 xchain00541_n11_β:
 jmp xchain00541_n15_α
.Lx00552_0:
 .quad 4
xchain00541_n12_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00364_α:
 jmp qword ptr [r12 + 2128]
 xchain00541_n12_β:
 jmp xchain00541_n3_α
xchain00541_n13_α:
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
bb00553_α:
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00541_n15_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00541_n15_α
 mov qword ptr [r12 + 2064], r14
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
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 jmp xchain00541_n14_α
 xchain00541_n13_β:
 mov r14, qword ptr [r12 + 2064]
 jmp xchain00541_n15_α
xchain00541_n14_α:
# IR_ASSIGN_VAR write through variable
bb00554_α:
 mov rdi, qword ptr [r12 + 2000]
 mov rsi, qword ptr [r12 + 2008]
 mov rdx, qword ptr [r12 + 2048]
 mov rcx, qword ptr [r12 + 2056]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00541_n15_α
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 jmp xchain00541_n15_α
 xchain00541_n14_β:
 jmp xchain00541_n15_α
xchain00541_n15_α:
# IR_LIT_INTEGER
bb00555_α:
 mov qword ptr [r12 + 1984], 6
 mov rax, qword ptr [rip + .Lx00556_0]
 mov qword ptr [r12 + 1992], rax
 jmp xchain00541_n16_α
 xchain00541_n15_β:
 jmp xchain00541_n17_α
.Lx00556_0:
 .quad 4
xchain00541_n16_α:
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
bb00557_α:
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00541_n17_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00541_n17_α
 mov qword ptr [r12 + 1968], r14
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
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 jmp xchain00541_n17_α
 xchain00541_n16_β:
 mov r14, qword ptr [r12 + 1968]
 jmp xchain00541_n17_α
xchain00541_n17_α:
# IR_LIT_INTEGER
bb00558_α:
 mov qword ptr [r12 + 1936], 6
 mov rax, qword ptr [rip + .Lx00559_0]
 mov qword ptr [r12 + 1944], rax
 jmp xchain00541_n18_α
 xchain00541_n17_β:
 jmp xchain00541_n20_α
.Lx00559_0:
 .quad 7
xchain00541_n18_α:
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
bb00560_α:
 mov rax, 7
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00541_n20_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00541_n20_α
 mov qword ptr [r12 + 1920], r14
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
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain00541_n19_α
 xchain00541_n18_β:
 mov r14, qword ptr [r12 + 1920]
 jmp xchain00541_n20_α
xchain00541_n19_α:
bb00561_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1904] -> [r12+1888]
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1896], rax
  .section .rodata
  .Lrkfn926: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn926]
 lea rsi, [r12 + 1888]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 cmp eax, 99
 je xchain00541_n20_α
 jmp xchain00541_n21_α
 xchain00541_n19_β:
 jmp xchain00541_n20_α
xchain00541_n20_α:
# IR_LIT_INTEGER
bb00562_α:
 mov qword ptr [r12 + 1824], 6
 mov rax, qword ptr [rip + .Lx00563_0]
 mov qword ptr [r12 + 1832], rax
 jmp xchain00541_n22_α
 xchain00541_n20_β:
 jmp xchain00541_n25_α
.Lx00563_0:
 .quad 7
xchain00541_n21_α:
bb00564_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1872]
 mov rdx, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 jmp xchain00541_n23_α
 xchain00541_n21_β:
 jmp xchain00541_n20_α
xchain00541_n22_α:
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
bb00565_α:
 mov rax, 7
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00541_n25_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00541_n25_α
 mov qword ptr [r12 + 1808], r14
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
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain00541_n24_α
 xchain00541_n22_β:
 mov r14, qword ptr [r12 + 1808]
 jmp xchain00541_n25_α
xchain00541_n23_α:
bb00566_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1856]
 mov rdx, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 jmp xchain00541_n20_α
 xchain00541_n23_β:
 jmp xchain00541_n20_α
xchain00541_n24_α:
bb00373_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1792] -> [r12+1776]
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1784], rax
  .section .rodata
  .Lrkfn933: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn933]
 lea rsi, [r12 + 1776]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 cmp eax, 99
 je xchain00541_n25_α
 jmp xchain00541_n26_α
 xchain00541_n24_β:
 jmp xchain00541_n25_α
xchain00541_n25_α:
# IR_VAR
bb00567_α:
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00541_n27_α
 xchain00541_n25_β:
 jmp xchain00541_n31_α
xchain00541_n26_α:
bb00568_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1760]
 mov rdx, qword ptr [r12 + 1768]
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain00541_n28_α
 xchain00541_n26_β:
 jmp xchain00541_n25_α
xchain00541_n27_α:
# IR_LIT_INTEGER
bb00569_α:
 mov qword ptr [r12 + 1568], 6
 mov rax, qword ptr [rip + .Lx00570_0]
 mov qword ptr [r12 + 1576], rax
 jmp xchain00541_n29_α
 xchain00541_n27_β:
 jmp xchain00541_n31_α
.Lx00570_0:
 .quad 4
xchain00541_n28_α:
bb00376_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1744]
 mov rdx, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain00541_n25_α
 xchain00541_n28_β:
 jmp xchain00541_n25_α
xchain00541_n29_α:
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
bb00571_α:
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00541_n31_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00541_n31_α
 mov qword ptr [r12 + 1552], r14
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
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain00541_n30_α
 xchain00541_n29_β:
 mov r14, qword ptr [r12 + 1552]
 jmp xchain00541_n31_α
xchain00541_n30_α:
# IR_LIT_INTEGER
bb00572_α:
 mov qword ptr [r12 + 1584], 6
 mov rax, qword ptr [rip + .Lx00573_0]
 mov qword ptr [r12 + 1592], rax
 jmp xchain00541_n32_α
 xchain00541_n30_β:
 jmp xchain00541_n31_α
.Lx00573_0:
 .quad 5000
xchain00541_n31_α:
# IR_VAR
bb00574_α:
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00541_n33_α
 xchain00541_n31_β:
 jmp xchain00541_n38_α
xchain00541_n32_α:
bb00575_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1536]
 cmp eax, 100
 je .Lx00576_0
 mov eax, dword ptr [r12 + 1584]
 cmp eax, 100
 je .Lx00576_0
 mov eax, dword ptr [r12 + 1536]
 cmp eax, 6
 jne .Lx00576_2
 mov eax, dword ptr [r12 + 1584]
 cmp eax, 6
 jne .Lx00576_2
.Lx00576_1:
 mov rax, qword ptr [r12 + 1544]
 mov rcx, qword ptr [r12 + 1592]
 sub rax, rcx
 mov qword ptr [r12 + 1520], 6
 mov qword ptr [r12 + 1528], rax
 jmp xchain00541_n34_α
.Lx00576_0:
 mov rdi, qword ptr [r12 + 1536]
 mov rsi, qword ptr [r12 + 1544]
 mov rdx, qword ptr [r12 + 1584]
 mov rcx, qword ptr [r12 + 1592]
 mov r8d, 1
 lea r9, [r12 + 1520]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00576_3
.Lx00576_2:
 mov rdi, qword ptr [r12 + 1536]
 mov rsi, qword ptr [r12 + 1544]
 mov rdx, qword ptr [r12 + 1584]
 mov rcx, qword ptr [r12 + 1592]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00541_n31_α
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
.Lx00576_3:
 jmp xchain00541_n34_α
 xchain00541_n32_β:
 jmp xchain00541_n31_α
xchain00541_n33_α:
# IR_VAR
bb00577_α:
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 1416], rax
 jmp xchain00541_n35_α
 xchain00541_n33_β:
 jmp xchain00541_n38_α
xchain00541_n34_α:
bb00578_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 100
 je .Lx00579_0
 mov eax, dword ptr [r12 + 1520]
 cmp eax, 100
 je .Lx00579_0
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 6
 jne .Lx00579_2
 mov eax, dword ptr [r12 + 1520]
 cmp eax, 6
 jne .Lx00579_2
.Lx00579_1:
 mov rax, qword ptr [r12 + 2296]
 mov rcx, qword ptr [r12 + 1528]
 add rax, rcx
 mov qword ptr [r12 + 1488], 6
 mov qword ptr [r12 + 1496], rax
 jmp xchain00541_n36_α
.Lx00579_0:
 mov rdi, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 mov rdx, qword ptr [r12 + 1520]
 mov rcx, qword ptr [r12 + 1528]
 mov r8d, 0
 lea r9, [r12 + 1488]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00579_3
.Lx00579_2:
 mov rdi, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 mov rdx, qword ptr [r12 + 1520]
 mov rcx, qword ptr [r12 + 1528]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00541_n31_α
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
.Lx00579_3:
 jmp xchain00541_n36_α
 xchain00541_n34_β:
 jmp xchain00541_n31_α
xchain00541_n35_α:
bb00580_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2304]
 cmp eax, 100
 je .Lx00581_0
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 100
 je .Lx00581_0
 mov eax, dword ptr [r12 + 2304]
 cmp eax, 6
 jne .Lx00581_2
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 6
 jne .Lx00581_2
.Lx00581_1:
 mov rax, qword ptr [r12 + 2312]
 mov rcx, qword ptr [r12 + 2280]
 add rax, rcx
 mov qword ptr [r12 + 1376], 6
 mov qword ptr [r12 + 1384], rax
 jmp xchain00541_n37_α
.Lx00581_0:
 mov rdi, qword ptr [r12 + 2304]
 mov rsi, qword ptr [r12 + 2312]
 mov rdx, qword ptr [r12 + 2272]
 mov rcx, qword ptr [r12 + 2280]
 mov r8d, 0
 lea r9, [r12 + 1376]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00581_3
.Lx00581_2:
 mov rdi, qword ptr [r12 + 2304]
 mov rsi, qword ptr [r12 + 2312]
 mov rdx, qword ptr [r12 + 2272]
 mov rcx, qword ptr [r12 + 2280]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00541_n38_α
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
.Lx00581_3:
 jmp xchain00541_n37_α
 xchain00541_n35_β:
 jmp xchain00541_n38_α
xchain00541_n36_α:
bb00582_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1488]
 mov rdx, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain00541_n39_α
 xchain00541_n36_β:
 jmp xchain00541_n31_α
xchain00541_n37_α:
# IR_VAR
bb00583_α:
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00541_n40_α
 xchain00541_n37_β:
 jmp xchain00541_n38_α
xchain00541_n38_α:
# IR_VAR gva
bb00584_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain00541_n41_α
 xchain00541_n38_β:
 jmp xchain00541_n51_α
xchain00541_n39_α:
# IR_VAR
bb00585_α:
 mov rax, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 1640], rax
 jmp xchain00541_n42_α
 xchain00541_n39_β:
 jmp xchain00541_n25_α
xchain00541_n40_α:
# IR_VAR
bb00586_α:
 mov rax, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 1464], rax
 jmp xchain00541_n43_α
 xchain00541_n40_β:
 jmp xchain00541_n38_α
xchain00541_n41_α:
# IR_FIELD_GET lv
bb00587_α:
 mov rdi, qword ptr [rip + .Lx00588_0]
 mov rsi, qword ptr [r12 + 1296]
 mov rdx, qword ptr [r12 + 1304]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00541_n51_α
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain00541_n44_α
 xchain00541_n41_β:
 jmp xchain00541_n51_α
.Lx00588_0:
 .quad .Lx00588_0_s
.Lx00588_0_s:
 .string "rev"
xchain00541_n42_α:
# IR_LIT_INTEGER
bb00589_α:
 mov qword ptr [r12 + 1696], 6
 mov rax, qword ptr [rip + .Lx00590_0]
 mov qword ptr [r12 + 1704], rax
 jmp xchain00541_n45_α
 xchain00541_n42_β:
 jmp xchain00541_n25_α
.Lx00590_0:
 .quad 4
xchain00541_n43_α:
bb00591_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 100
 je .Lx00592_0
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 100
 je .Lx00592_0
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 6
 jne .Lx00592_2
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 6
 jne .Lx00592_2
.Lx00592_1:
 mov rax, qword ptr [r12 + 2296]
 mov rcx, qword ptr [r12 + 2264]
 add rax, rcx
 mov qword ptr [r12 + 1424], 6
 mov qword ptr [r12 + 1432], rax
 jmp xchain00541_n46_α
.Lx00592_0:
 mov rdi, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 mov rdx, qword ptr [r12 + 2256]
 mov rcx, qword ptr [r12 + 2264]
 mov r8d, 0
 lea r9, [r12 + 1424]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00592_3
.Lx00592_2:
 mov rdi, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 mov rdx, qword ptr [r12 + 2256]
 mov rcx, qword ptr [r12 + 2264]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00541_n38_α
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
.Lx00592_3:
 jmp xchain00541_n46_α
 xchain00541_n43_β:
 jmp xchain00541_n38_α
xchain00541_n44_α:
# IR_KEYWORD_null
bb00593_α:
 mov qword ptr [r12 + 1328], 0
 mov qword ptr [r12 + 1336], 0
 jmp xchain00541_n47_α
 xchain00541_n44_β:
 jmp xchain00541_n51_α
xchain00541_n45_α:
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
bb00594_α:
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00541_n25_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00541_n25_α
 mov qword ptr [r12 + 1680], r14
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
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 jmp xchain00541_n48_α
 xchain00541_n45_β:
 mov r14, qword ptr [r12 + 1680]
 jmp xchain00541_n25_α
xchain00541_n46_α:
bb00595_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1376]
 cmp eax, 100
 je .Lx00596_0
 mov eax, dword ptr [r12 + 1424]
 cmp eax, 100
 je .Lx00596_0
 mov eax, dword ptr [r12 + 1376]
 cmp eax, 6
 jne .Lx00596_2
 mov eax, dword ptr [r12 + 1424]
 cmp eax, 6
 jne .Lx00596_2
.Lx00596_1:
 mov rax, qword ptr [r12 + 1384]
 mov rcx, qword ptr [r12 + 1432]
 cmp rax, rcx
 jle xchain00541_n38_α
 mov rcx, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1360], rcx
 mov rcx, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1368], rcx
 jmp xchain00541_n49_α
.Lx00596_0:
 mov rdi, qword ptr [r12 + 1376]
 mov rsi, qword ptr [r12 + 1384]
 mov rdx, qword ptr [r12 + 1424]
 mov rcx, qword ptr [r12 + 1432]
 mov r8d, 7
 lea r9, [r12 + 1360]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00596_1
 cmp eax, 1
 je xchain00541_n38_α
 jmp xchain00541_n49_α
.Lx00596_2:
 mov rdi, qword ptr [r12 + 1376]
 mov rsi, qword ptr [r12 + 1384]
 mov rdx, qword ptr [r12 + 1424]
 mov rcx, qword ptr [r12 + 1432]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00541_n38_α
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1368], rax
 jmp xchain00541_n49_α
 xchain00541_n46_β:
 jmp xchain00541_n38_α
xchain00541_n47_α:
# IR_ASSIGN_VAR write through variable
bb00597_α:
 mov rdi, qword ptr [r12 + 1280]
 mov rsi, qword ptr [r12 + 1288]
 mov rdx, qword ptr [r12 + 1328]
 mov rcx, qword ptr [r12 + 1336]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00541_n51_α
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain00541_n50_α
 xchain00541_n47_β:
 jmp xchain00541_n51_α
xchain00541_n48_α:
# IR_LIT_INTEGER
bb00598_α:
 mov qword ptr [r12 + 1712], 6
 mov rax, qword ptr [rip + .Lx00599_0]
 mov qword ptr [r12 + 1720], rax
 jmp xchain00541_n52_α
 xchain00541_n48_β:
 jmp xchain00541_n25_α
.Lx00599_0:
 .quad 5000
xchain00541_n49_α:
# IR_VAR gva
bb00390_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain00541_n53_α
 xchain00541_n49_β:
 jmp xchain00541_n62_α
xchain00541_n50_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00600_α:
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1096], rax
 lea rax, [rip + xchain00541_n51_α]
 mov qword ptr [r12 + 1104], rax
 jmp xchain00541_n51_α
 xchain00541_n50_β:
 jmp xchain00541_n51_α
xchain00541_n51_α:
# IR_VAR gva
bb00601_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain00541_n55_α
 xchain00541_n51_β:
 jmp xchain00541_n66_α
xchain00541_n52_α:
bb00602_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1664]
 cmp eax, 100
 je .Lx00603_0
 mov eax, dword ptr [r12 + 1712]
 cmp eax, 100
 je .Lx00603_0
 mov eax, dword ptr [r12 + 1664]
 cmp eax, 6
 jne .Lx00603_2
 mov eax, dword ptr [r12 + 1712]
 cmp eax, 6
 jne .Lx00603_2
.Lx00603_1:
 mov rax, qword ptr [r12 + 1672]
 mov rcx, qword ptr [r12 + 1720]
 sub rax, rcx
 mov qword ptr [r12 + 1648], 6
 mov qword ptr [r12 + 1656], rax
 jmp xchain00541_n56_α
.Lx00603_0:
 mov rdi, qword ptr [r12 + 1664]
 mov rsi, qword ptr [r12 + 1672]
 mov rdx, qword ptr [r12 + 1712]
 mov rcx, qword ptr [r12 + 1720]
 mov r8d, 1
 lea r9, [r12 + 1648]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00603_3
.Lx00603_2:
 mov rdi, qword ptr [r12 + 1664]
 mov rsi, qword ptr [r12 + 1672]
 mov rdx, qword ptr [r12 + 1712]
 mov rcx, qword ptr [r12 + 1720]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00541_n25_α
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
.Lx00603_3:
 jmp xchain00541_n56_α
 xchain00541_n52_β:
 jmp xchain00541_n25_α
xchain00541_n53_α:
# IR_FIELD_GET lv
bb00604_α:
 mov rdi, qword ptr [rip + .Lx00605_0]
 mov rsi, qword ptr [r12 + 1232]
 mov rdx, qword ptr [r12 + 1240]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00541_n62_α
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain00541_n57_α
 xchain00541_n53_β:
 jmp xchain00541_n62_α
.Lx00605_0:
 .quad .Lx00605_0_s
.Lx00605_0_s:
 .string "rev"
xchain00541_n54_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00606_α:
 jmp qword ptr [r12 + 1104]
 xchain00541_n54_β:
 jmp xchain00541_n51_α
xchain00541_n55_α:
# IR_FIELD_GET lv
bb00607_α:
 mov rdi, qword ptr [rip + .Lx00608_0]
 mov rsi, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00541_n66_α
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00541_n58_α
 xchain00541_n55_β:
 jmp xchain00541_n66_α
.Lx00608_0:
 .quad .Lx00608_0_s
.Lx00608_0_s:
 .string "key"
xchain00541_n56_α:
bb00609_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 100
 je .Lx00610_0
 mov eax, dword ptr [r12 + 1648]
 cmp eax, 100
 je .Lx00610_0
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 6
 jne .Lx00610_2
 mov eax, dword ptr [r12 + 1648]
 cmp eax, 6
 jne .Lx00610_2
.Lx00610_1:
 mov rax, qword ptr [r12 + 2264]
 mov rcx, qword ptr [r12 + 1656]
 add rax, rcx
 mov qword ptr [r12 + 1616], 6
 mov qword ptr [r12 + 1624], rax
 jmp xchain00541_n59_α
.Lx00610_0:
 mov rdi, qword ptr [r12 + 2256]
 mov rsi, qword ptr [r12 + 2264]
 mov rdx, qword ptr [r12 + 1648]
 mov rcx, qword ptr [r12 + 1656]
 mov r8d, 0
 lea r9, [r12 + 1616]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00610_3
.Lx00610_2:
 mov rdi, qword ptr [r12 + 2256]
 mov rsi, qword ptr [r12 + 2264]
 mov rdx, qword ptr [r12 + 1648]
 mov rcx, qword ptr [r12 + 1656]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00541_n25_α
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
.Lx00610_3:
 jmp xchain00541_n59_α
 xchain00541_n56_β:
 jmp xchain00541_n25_α
xchain00541_n57_α:
# IR_LIT_INTEGER
bb00611_α:
 mov qword ptr [r12 + 1264], 6
 mov rax, qword ptr [rip + .Lx00612_0]
 mov qword ptr [r12 + 1272], rax
 jmp xchain00541_n60_α
 xchain00541_n57_β:
 jmp xchain00541_n62_α
.Lx00612_0:
 .quad 1
xchain00541_n58_α:
# IR_VAR
bb00613_α:
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 968], rax
 jmp xchain00541_n61_α
 xchain00541_n58_β:
 jmp xchain00541_n66_α
xchain00541_n59_α:
bb00614_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1616]
 mov rdx, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00541_n25_α
 xchain00541_n59_β:
 jmp xchain00541_n25_α
xchain00541_n60_α:
# IR_ASSIGN_VAR write through variable
bb00615_α:
 mov rdi, qword ptr [r12 + 1216]
 mov rsi, qword ptr [r12 + 1224]
 mov rdx, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1272]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00541_n62_α
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain00541_n62_α
 xchain00541_n60_β:
 jmp xchain00541_n62_α
xchain00541_n61_α:
# IR_VAR
bb00616_α:
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 984], rax
 jmp xchain00541_n63_α
 xchain00541_n61_β:
 jmp xchain00541_n66_α
xchain00541_n62_α:
bb00617_α:
# IR_SWAP x:=:y
 mov rax, qword ptr [r12 + 2304]
 mov rdx, qword ptr [r12 + 2312]
 mov rcx, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 2304], rcx
 mov qword ptr [r12 + 2312], rsi
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 mov qword ptr [r12 + 1168], rcx
 mov qword ptr [r12 + 1176], rsi
 jmp xchain00541_n64_α
 xchain00541_n62_β:
 jmp xchain00541_n64_α
xchain00541_n63_α:
bb00618_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2304]
 cmp eax, 100
 je .Lx00619_0
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 100
 je .Lx00619_0
 mov eax, dword ptr [r12 + 2304]
 cmp eax, 6
 jne .Lx00619_2
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 6
 jne .Lx00619_2
.Lx00619_1:
 mov rax, qword ptr [r12 + 2312]
 mov rcx, qword ptr [r12 + 2280]
 add rax, rcx
 mov qword ptr [r12 + 944], 6
 mov qword ptr [r12 + 952], rax
 jmp xchain00541_n65_α
.Lx00619_0:
 mov rdi, qword ptr [r12 + 2304]
 mov rsi, qword ptr [r12 + 2312]
 mov rdx, qword ptr [r12 + 2272]
 mov rcx, qword ptr [r12 + 2280]
 mov r8d, 0
 lea r9, [r12 + 944]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00619_3
.Lx00619_2:
 mov rdi, qword ptr [r12 + 2304]
 mov rsi, qword ptr [r12 + 2312]
 mov rdx, qword ptr [r12 + 2272]
 mov rcx, qword ptr [r12 + 2280]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00541_n66_α
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
.Lx00619_3:
 jmp xchain00541_n65_α
 xchain00541_n63_β:
 jmp xchain00541_n66_α
xchain00541_n64_α:
bb00620_α:
# IR_SWAP x:=:y
 mov rax, qword ptr [r12 + 2272]
 mov rdx, qword ptr [r12 + 2280]
 mov rcx, qword ptr [r12 + 2256]
 mov rsi, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2272], rcx
 mov qword ptr [r12 + 2280], rsi
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 mov qword ptr [r12 + 1120], rcx
 mov qword ptr [r12 + 1128], rsi
 jmp xchain00541_n67_α
 xchain00541_n64_β:
 jmp xchain00541_n51_α
xchain00541_n65_α:
# IR_LIT_INTEGER
bb00621_α:
 mov qword ptr [r12 + 992], 6
 mov rax, qword ptr [rip + .Lx00622_0]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00541_n68_α
 xchain00541_n65_β:
 jmp xchain00541_n66_α
.Lx00622_0:
 .quad 8
xchain00541_n66_α:
# IR_VAR gva
bb00623_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00541_n69_α
 xchain00541_n66_β:
 jmp xchain00541_n76_α
xchain00541_n67_α:
 jmp xchain00541_n70_α
xchain00541_n67_β:
 jmp xchain00541_n51_α
xchain00541_n68_α:
bb00624_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+944] -> [r12+912]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 920], rax
# marshal arg1 = producer-box slot [r12+992] -> [r12+928]
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn990: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn990]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain00541_n66_α
 jmp xchain00541_n71_α
 xchain00541_n68_β:
 jmp xchain00541_n66_α
xchain00541_n69_α:
# IR_FIELD_GET lv
bb00625_α:
 mov rdi, qword ptr [rip + .Lx00626_0]
 mov rsi, qword ptr [r12 + 784]
 mov rdx, qword ptr [r12 + 792]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00541_n76_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00541_n72_α
 xchain00541_n69_β:
 jmp xchain00541_n76_α
.Lx00626_0:
 .quad .Lx00626_0_s
.Lx00626_0_s:
 .string "x1"
xchain00541_n70_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00627_α:
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1096], rax
 lea rax, [rip + xchain00541_n51_α]
 mov qword ptr [r12 + 1104], rax
 jmp xchain00541_n51_α
 xchain00541_n70_β:
 jmp xchain00541_n51_α
xchain00541_n71_α:
# IR_VAR
bb00628_α:
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 1064], rax
 jmp xchain00541_n73_α
 xchain00541_n71_β:
 jmp xchain00541_n66_α
xchain00541_n72_α:
# IR_VAR
bb00629_α:
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 824], rax
 jmp xchain00541_n74_α
 xchain00541_n72_β:
 jmp xchain00541_n76_α
xchain00541_n73_α:
# IR_LIT_INTEGER
bb00630_α:
 mov qword ptr [r12 + 1072], 6
 mov rax, qword ptr [rip + .Lx00631_0]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00541_n75_α
 xchain00541_n73_β:
 jmp xchain00541_n66_α
.Lx00631_0:
 .quad 7
xchain00541_n74_α:
# IR_ASSIGN_VAR write through variable
bb00632_α:
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 mov rdx, qword ptr [r12 + 816]
 mov rcx, qword ptr [r12 + 824]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00541_n76_α
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00541_n76_α
 xchain00541_n74_β:
 jmp xchain00541_n76_α
xchain00541_n75_α:
bb00408_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn1001: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1001]
 lea rsi, [r12 + 1024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xchain00541_n66_α
 jmp xchain00541_n77_α
 xchain00541_n75_β:
 jmp xchain00541_n66_α
xchain00541_n76_α:
# IR_VAR gva
bb00633_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00541_n78_α
 xchain00541_n76_β:
 jmp xchain00541_n82_α
xchain00541_n77_α:
bb00634_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 896]
 mov rsi, qword ptr [r12 + 904]
 mov rdx, qword ptr [r12 + 1008]
 mov rcx, qword ptr [r12 + 1016]
 call str_concat_d@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00541_n79_α
 xchain00541_n77_β:
 jmp xchain00541_n66_α
xchain00541_n78_α:
# IR_FIELD_GET lv
bb00635_α:
 mov rdi, qword ptr [rip + .Lx00636_0]
 mov rsi, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00541_n82_α
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00541_n80_α
 xchain00541_n78_β:
 jmp xchain00541_n82_α
.Lx00636_0:
 .quad .Lx00636_0_s
.Lx00636_0_s:
 .string "y1"
xchain00541_n79_α:
# IR_ASSIGN_VAR write through variable
bb00637_α:
 mov rdi, qword ptr [r12 + 832]
 mov rsi, qword ptr [r12 + 840]
 mov rdx, qword ptr [r12 + 880]
 mov rcx, qword ptr [r12 + 888]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00541_n66_α
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00541_n66_α
 xchain00541_n79_β:
 jmp xchain00541_n66_α
xchain00541_n80_α:
# IR_VAR
bb00638_α:
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 760], rax
 jmp xchain00541_n81_α
 xchain00541_n80_β:
 jmp xchain00541_n82_α
xchain00541_n81_α:
# IR_ASSIGN_VAR write through variable
bb00412_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00541_n82_α
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00541_n82_α
 xchain00541_n81_β:
 jmp xchain00541_n82_α
xchain00541_n82_α:
# IR_VAR gva
bb00639_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain00541_n83_α
 xchain00541_n82_β:
 jmp xchain00541_n86_α
xchain00541_n83_α:
# IR_FIELD_GET lv
bb00640_α:
 mov rdi, qword ptr [rip + .Lx00641_0]
 mov rsi, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00541_n86_α
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00541_n84_α
 xchain00541_n83_β:
 jmp xchain00541_n86_α
.Lx00641_0:
 .quad .Lx00641_0_s
.Lx00641_0_s:
 .string "x2"
xchain00541_n84_α:
# IR_VAR
bb00642_α:
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 696], rax
 jmp xchain00541_n85_α
 xchain00541_n84_β:
 jmp xchain00541_n86_α
xchain00541_n85_α:
# IR_ASSIGN_VAR write through variable
bb00643_α:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00541_n86_α
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00541_n86_α
 xchain00541_n85_β:
 jmp xchain00541_n86_α
xchain00541_n86_α:
# IR_VAR gva
bb00644_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00541_n87_α
 xchain00541_n86_β:
 jmp xchain00541_n90_α
xchain00541_n87_α:
# IR_FIELD_GET lv
bb00645_α:
 mov rdi, qword ptr [rip + .Lx00646_0]
 mov rsi, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00541_n90_α
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00541_n88_α
 xchain00541_n87_β:
 jmp xchain00541_n90_α
.Lx00646_0:
 .quad .Lx00646_0_s
.Lx00646_0_s:
 .string "y2"
xchain00541_n88_α:
# IR_VAR
bb00647_α:
 mov rax, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 632], rax
 jmp xchain00541_n89_α
 xchain00541_n88_β:
 jmp xchain00541_n90_α
xchain00541_n89_α:
# IR_ASSIGN_VAR write through variable
bb00648_α:
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 mov rdx, qword ptr [r12 + 624]
 mov rcx, qword ptr [r12 + 632]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00541_n90_α
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00541_n90_α
 xchain00541_n89_β:
 jmp xchain00541_n90_α
xchain00541_n90_α:
# IR_VAR
bb00416_α:
 mov rax, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 472], rax
 jmp xchain00541_n91_α
 xchain00541_n90_β:
 jmp xchain00541_n94_α
xchain00541_n91_α:
# IR_VAR
bb00418_α:
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 488], rax
 jmp xchain00541_n92_α
 xchain00541_n91_β:
 jmp xchain00541_n94_α
xchain00541_n92_α:
bb00420_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 100
 je .Lx00649_0
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 100
 je .Lx00649_0
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 6
 jne .Lx00649_2
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 6
 jne .Lx00649_2
.Lx00649_1:
 mov rax, qword ptr [r12 + 2264]
 mov rcx, qword ptr [r12 + 2280]
 sub rax, rcx
 mov qword ptr [r12 + 448], 6
 mov qword ptr [r12 + 456], rax
 jmp xchain00541_n93_α
.Lx00649_0:
 mov rdi, qword ptr [r12 + 2256]
 mov rsi, qword ptr [r12 + 2264]
 mov rdx, qword ptr [r12 + 2272]
 mov rcx, qword ptr [r12 + 2280]
 mov r8d, 1
 lea r9, [r12 + 448]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00649_3
.Lx00649_2:
 mov rdi, qword ptr [r12 + 2256]
 mov rsi, qword ptr [r12 + 2264]
 mov rdx, qword ptr [r12 + 2272]
 mov rcx, qword ptr [r12 + 2280]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00541_n94_α
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
.Lx00649_3:
 jmp xchain00541_n93_α
 xchain00541_n92_β:
 jmp xchain00541_n94_α
xchain00541_n93_α:
# IR_VAR gva
bb00650_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00541_n95_α
 xchain00541_n93_β:
 jmp xchain00541_n94_α
xchain00541_n94_α:
# IR_VAR gva
bb00651_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00541_n96_α
 xchain00541_n94_β:
 jmp xchain00541_n00001_α
xchain00541_n95_α:
# IR_VAR
bb00652_α:
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 552], rax
 jmp xchain00541_n97_α
 xchain00541_n95_β:
 jmp xchain00541_n94_α
xchain00541_n96_α:
# IR_FIELD_GET lv
bb00653_α:
 mov rdi, qword ptr [rip + .Lx00654_0]
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00541_n00001_α
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00541_n98_α
 xchain00541_n96_β:
 jmp xchain00541_n00001_α
.Lx00654_0:
 .quad .Lx00654_0_s
.Lx00654_0_s:
 .string "aindex"
xchain00541_n97_α:
# IR_VAR
bb00655_α:
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 568], rax
 jmp xchain00541_n99_α
 xchain00541_n97_β:
 jmp xchain00541_n94_α
xchain00541_n98_α:
# IR_LIT_INTEGER
bb00656_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00657_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00541_n00008_α
 xchain00541_n98_β:
 jmp xchain00541_n00001_α
.Lx00657_0:
 .quad 1
xchain00541_n99_α:
bb00658_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 100
 je .Lx00659_0
 mov eax, dword ptr [r12 + 2304]
 cmp eax, 100
 je .Lx00659_0
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 6
 jne .Lx00659_2
 mov eax, dword ptr [r12 + 2304]
 cmp eax, 6
 jne .Lx00659_2
.Lx00659_1:
 mov rax, qword ptr [r12 + 2296]
 mov rcx, qword ptr [r12 + 2312]
 sub rax, rcx
 mov qword ptr [r12 + 528], 6
 mov qword ptr [r12 + 536], rax
 jmp xchain00541_n00009_α
.Lx00659_0:
 mov rdi, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 mov rdx, qword ptr [r12 + 2304]
 mov rcx, qword ptr [r12 + 2312]
 mov r8d, 1
 lea r9, [r12 + 528]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00659_3
.Lx00659_2:
 mov rdi, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 mov rdx, qword ptr [r12 + 2304]
 mov rcx, qword ptr [r12 + 2312]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00541_n94_α
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
.Lx00659_3:
 jmp xchain00541_n00009_α
 xchain00541_n99_β:
 jmp xchain00541_n94_α
xchain00541_n00008_α:
# IR_LIT_INTEGER
bb00660_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx00661_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00541_n00010_α
 xchain00541_n00008_β:
 jmp xchain00541_n00001_α
.Lx00661_0:
 .quad 5
xchain00541_n00009_α:
bb00662_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 512]
 cmp eax, 100
 je .Lx00663_0
 mov eax, dword ptr [r12 + 528]
 cmp eax, 100
 je .Lx00663_0
 mov eax, dword ptr [r12 + 512]
 cmp eax, 6
 jne .Lx00663_2
 mov eax, dword ptr [r12 + 528]
 cmp eax, 6
 jne .Lx00663_2
.Lx00663_1:
 mov rax, qword ptr [r12 + 520]
 mov rcx, qword ptr [r12 + 536]
 imul rax, rcx
 mov qword ptr [r12 + 496], 6
 mov qword ptr [r12 + 504], rax
 jmp xchain00541_n00011_α
.Lx00663_0:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 2
 lea r9, [r12 + 496]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00663_3
.Lx00663_2:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00541_n94_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
.Lx00663_3:
 jmp xchain00541_n00011_α
 xchain00541_n00009_β:
 jmp xchain00541_n94_α
xchain00541_n00010_α:
# IR_VAR
bb00424_α:
 mov rax, qword ptr [r12 + 2240]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 2248]
 mov qword ptr [r12 + 312], rax
 jmp xchain00541_n00012_α
 xchain00541_n00010_β:
 jmp xchain00541_n00001_α
xchain00541_n00011_α:
bb00664_α:
# BOX IR_CALL atan(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+448] -> [r12+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [r12+496] -> [r12+432]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn1038: .string "atan"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1038]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00541_n94_α
 jmp xchain00541_n00013_α
 xchain00541_n00011_β:
 jmp xchain00541_n94_α
xchain00541_n00012_α:
# IR_KEYWORD_read
bb00665_α:
 mov rdi, qword ptr [rip + .Lx00666_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00541_n00014_α
 xchain00541_n00012_β:
 jmp xchain00541_n00001_α
.Lx00666_0:
 .quad .Lx00666_0_s
.Lx00666_0_s:
 .string "&pi"
xchain00541_n00013_α:
bb00667_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00541_n94_α
 xchain00541_n00013_β:
 jmp xchain00541_n94_α
xchain00541_n00014_α:
bb00668_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2240]
 cmp eax, 100
 je .Lx00669_0
 mov eax, dword ptr [r12 + 320]
 cmp eax, 100
 je .Lx00669_0
 mov eax, dword ptr [r12 + 2240]
 cmp eax, 6
 jne .Lx00669_2
 mov eax, dword ptr [r12 + 320]
 cmp eax, 6
 jne .Lx00669_2
.Lx00669_1:
 mov rax, qword ptr [r12 + 2248]
 mov rcx, qword ptr [r12 + 328]
 cqo
 idiv rcx
 mov qword ptr [r12 + 288], 6
 mov qword ptr [r12 + 296], rax
 jmp xchain00541_n00015_α
.Lx00669_0:
 mov rdi, qword ptr [r12 + 2240]
 mov rsi, qword ptr [r12 + 2248]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 3
 lea r9, [r12 + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00669_3
.Lx00669_2:
 mov rdi, qword ptr [r12 + 2240]
 mov rsi, qword ptr [r12 + 2248]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00541_n00001_α
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
.Lx00669_3:
 jmp xchain00541_n00015_α
 xchain00541_n00014_β:
 jmp xchain00541_n00001_α
xchain00541_n00015_α:
# IR_LIT_REAL
bb00670_α:
 mov qword ptr [r12 + 352], 7
 mov rax, qword ptr [rip + .Lx00671_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00541_n00016_α
 xchain00541_n00015_β:
 jmp xchain00541_n00001_α
.Lx00671_0:
 .quad 4612248968380809216
xchain00541_n00001_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain00541_n00018_α
 xchain00541_n00001_β:
 jmp xchain00541_n00018_α
xchain00541_n00016_α:
bb00672_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00541_n00001_α
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00541_n00020_α
 xchain00541_n00016_β:
 jmp xchain00541_n00001_α
xchain00541_n00018_α:
# IR_VAR gva
bb00673_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00541_n00021_α
 xchain00541_n00018_β:
 jmp proc_crack_ω
xchain00541_n00020_α:
bb00674_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00541_n00001_α
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00541_n00023_α
 xchain00541_n00020_β:
 jmp xchain00541_n00001_α
xchain00541_n00021_α:
# IR_RETURN
bb00675_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_crack_γ
xchain00541_n00023_α:
bb00676_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+240] -> [r12+224]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn1050: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1050]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain00541_n00001_α
 jmp xchain00541_n00002_α
 xchain00541_n00023_β:
 jmp xchain00541_n00001_α
xchain00541_n00002_α:
# IR_LIT_INTEGER
bb00677_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00678_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00541_n00024_α
 xchain00541_n00002_β:
 jmp xchain00541_n00001_α
.Lx00678_0:
 .quad 5
xchain00541_n00024_α:
bb00679_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 208]
 cmp eax, 100
 je .Lx00680_0
 mov eax, dword ptr [r12 + 368]
 cmp eax, 100
 je .Lx00680_0
 mov eax, dword ptr [r12 + 208]
 cmp eax, 6
 jne .Lx00680_2
 mov eax, dword ptr [r12 + 368]
 cmp eax, 6
 jne .Lx00680_2
.Lx00680_1:
 mov rax, qword ptr [r12 + 216]
 mov rcx, qword ptr [r12 + 376]
 cqo
 idiv rcx
 mov rax, rdx
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
 jmp xchain00541_n00025_α
.Lx00680_0:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 mov r8d, 4
 lea r9, [r12 + 192]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00680_3
.Lx00680_2:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 mov r8d, 4
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00541_n00001_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
.Lx00680_3:
 jmp xchain00541_n00025_α
 xchain00541_n00024_β:
 jmp xchain00541_n00001_α
xchain00541_n00025_α:
bb00431_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 176]
 cmp eax, 100
 je .Lx00681_0
 mov eax, dword ptr [r12 + 192]
 cmp eax, 100
 je .Lx00681_0
 mov eax, dword ptr [r12 + 176]
 cmp eax, 6
 jne .Lx00681_2
 mov eax, dword ptr [r12 + 192]
 cmp eax, 6
 jne .Lx00681_2
.Lx00681_1:
 mov rax, qword ptr [r12 + 184]
 mov rcx, qword ptr [r12 + 200]
 add rax, rcx
 mov qword ptr [r12 + 160], 6
 mov qword ptr [r12 + 168], rax
 jmp xchain00541_n00026_α
.Lx00681_0:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 0
 lea r9, [r12 + 160]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00681_3
.Lx00681_2:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00541_n00001_α
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
.Lx00681_3:
 jmp xchain00541_n00026_α
 xchain00541_n00025_β:
 jmp xchain00541_n00001_α
xchain00541_n00026_α:
# IR_ASSIGN_VAR write through variable
bb00682_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00541_n00001_α
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00541_n00027_α
 xchain00541_n00026_β:
 jmp xchain00541_n00001_α
xchain00541_n00027_α:
 jmp xchain00541_n00028_α
xchain00541_n00027_β:
 jmp xchain00541_n00001_α
xchain00541_n00028_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain00541_n00018_α
 xchain00541_n00028_β:
 jmp xchain00541_n00018_α
proc_crack_β:
jmp proc_crack_ω
proc_crack_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_crack_ω:
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
  pop rbp
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
  .section .bss
  .align 16
__gva: .space 160, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  push rdi
  push rsi
  call proc_startup
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 10
  call gva_register@PLT
  mov rbx, rax
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
main_α_body:
xchain00683_n0_α:
# IR_VAR
bb00435_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 2040], rax
 jmp xchain00683_n1_α
 xchain00683_n0_β:
 jmp xchain00683_n4_α
xchain00683_n1_α:
# IR_LIT_STRING
bb00684_α:
 mov qword ptr [r12 + 2048], 1
 mov rax, qword ptr [rip + .Lx00685_0]
 mov qword ptr [r12 + 2056], rax
 jmp xchain00683_n2_α
 xchain00683_n1_β:
 jmp xchain00683_n4_α
.Lx00685_0:
 .quad .Lx00685_0_s
.Lx00685_0_s:
 .string "a.e."
xchain00683_n2_α:
bb00686_α:
# BOX IR_CALL options(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+2032] -> [r12+2000]
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 2000], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 2008], rax
# marshal arg1 = producer-box slot [r12+2048] -> [r12+2016]
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 2024], rax
  .section .rodata
  .Lbynamefn1063: .string "options"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn1063]
 lea rsi, [r12 + 2000]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 cmp eax, 99
 je xchain00683_n4_α
 jmp xchain00683_n3_α
xchain00683_n2_β:
 jmp xchain00683_n4_α
xchain00683_n3_α:
bb00687_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1984]
 mov rdx, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 jmp xchain00683_n4_α
 xchain00683_n3_β:
 jmp xchain00683_n4_α
xchain00683_n4_α:
# IR_VAR_REF local
bb00688_α:
 lea rdi, [r12 + 2128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain00683_n5_α
 xchain00683_n4_β:
 jmp xchain00683_n8_α
xchain00683_n5_α:
# IR_LIT_STRING
bb00689_α:
 mov qword ptr [r12 + 1920], 1
 mov rax, qword ptr [rip + .Lx00690_0]
 mov qword ptr [r12 + 1928], rax
 jmp xchain00683_n6_α
 xchain00683_n5_β:
 jmp xchain00683_n8_α
.Lx00690_0:
 .quad .Lx00690_0_s
.Lx00690_0_s:
 .string "a"
xchain00683_n6_α:
# IR_SUBSCRIPT x[i] variable
bb00691_α:
 mov rdi, qword ptr [r12 + 1904]
 mov rsi, qword ptr [r12 + 1912]
 mov rdx, qword ptr [r12 + 1920]
 mov rcx, qword ptr [r12 + 1928]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00683_n8_α
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 jmp xchain00683_n7_α
 xchain00683_n6_β:
 jmp xchain00683_n8_α
xchain00683_n7_α:
# IR_DEREF variable -> value
bb00692_α:
 mov rdi, qword ptr [r12 + 1936]
 mov rsi, qword ptr [r12 + 1944]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00683_n8_α
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 jmp xchain00683_n9_α
 xchain00683_n7_β:
 jmp xchain00683_n8_α
xchain00683_n8_α:
# IR_LIT_INTEGER
bb00440_α:
 mov qword ptr [r12 + 1872], 6
 mov rax, qword ptr [rip + .Lx00693_0]
 mov qword ptr [r12 + 1880], rax
 jmp xchain00683_n10_α
 xchain00683_n8_β:
 jmp xchain00683_n13_α
.Lx00693_0:
 .quad 30
xchain00683_n9_α:
# IR_UNOP
bb00694_α:
 mov eax, dword ptr [r12 + 1952]
 cmp eax, 99
 je xchain00683_n8_α
 cmp eax, 0
 je xchain00683_n8_α
 mov rax, qword ptr [r12 + 1952]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 1960]
 mov qword ptr [r12 + 1896], rax
 jmp xchain00683_n11_α
 xchain00683_n9_β:
 jmp xchain00683_n8_α
xchain00683_n10_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00443_α:
 mov rax, qword ptr [r12 + 1872]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 1848], rax
 lea rax, [rip + xchain00683_n13_α]
 mov qword ptr [r12 + 1856], rax
 jmp xchain00683_n12_α
 xchain00683_n10_β:
 jmp xchain00683_n13_α
xchain00683_n11_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00445_α:
 mov rax, qword ptr [r12 + 1888]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 1896]
 mov qword ptr [r12 + 1848], rax
 lea rax, [rip + xchain00683_n8_α]
 mov qword ptr [r12 + 1856], rax
 jmp xchain00683_n12_α
 xchain00683_n11_β:
 jmp xchain00683_n13_α
xchain00683_n12_α:
# IR_ASSIGN gva
bb00447_α:
 mov rax, qword ptr [r12 + 1840]
 mov rdx, qword ptr [r12 + 1848]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 jmp xchain00683_n13_α
 xchain00683_n12_β:
 jmp xchain00683_n13_α
xchain00683_n13_α:
# IR_VAR_REF local
bb00449_α:
 lea rdi, [r12 + 2128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain00683_n15_α
 xchain00683_n13_β:
 jmp xchain00683_n18_α
xchain00683_n14_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00695_α:
 jmp qword ptr [r12 + 1856]
 xchain00683_n14_β:
 jmp xchain00683_n13_α
xchain00683_n15_α:
# IR_LIT_STRING
bb00696_α:
 mov qword ptr [r12 + 1776], 1
 mov rax, qword ptr [rip + .Lx00697_0]
 mov qword ptr [r12 + 1784], rax
 jmp xchain00683_n16_α
 xchain00683_n15_β:
 jmp xchain00683_n18_α
.Lx00697_0:
 .quad .Lx00697_0_s
.Lx00697_0_s:
 .string "e"
xchain00683_n16_α:
# IR_SUBSCRIPT x[i] variable
bb00698_α:
 mov rdi, qword ptr [r12 + 1760]
 mov rsi, qword ptr [r12 + 1768]
 mov rdx, qword ptr [r12 + 1776]
 mov rcx, qword ptr [r12 + 1784]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00683_n18_α
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain00683_n17_α
 xchain00683_n16_β:
 jmp xchain00683_n18_α
xchain00683_n17_α:
# IR_DEREF variable -> value
bb00699_α:
 mov rdi, qword ptr [r12 + 1792]
 mov rsi, qword ptr [r12 + 1800]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00683_n18_α
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain00683_n19_α
 xchain00683_n17_β:
 jmp xchain00683_n18_α
xchain00683_n18_α:
# IR_LIT_INTEGER
bb00700_α:
 mov qword ptr [r12 + 1728], 6
 mov rax, qword ptr [rip + .Lx00701_0]
 mov qword ptr [r12 + 1736], rax
 jmp xchain00683_n20_α
 xchain00683_n18_β:
 jmp xchain00683_n23_α
.Lx00701_0:
 .quad 4
xchain00683_n19_α:
# IR_UNOP
bb00702_α:
 mov eax, dword ptr [r12 + 1808]
 cmp eax, 99
 je xchain00683_n18_α
 cmp eax, 0
 je xchain00683_n18_α
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1752], rax
 jmp xchain00683_n21_α
 xchain00683_n19_β:
 jmp xchain00683_n18_α
xchain00683_n20_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00703_α:
 mov rax, qword ptr [r12 + 1728]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 1704], rax
 lea rax, [rip + xchain00683_n23_α]
 mov qword ptr [r12 + 1712], rax
 jmp xchain00683_n22_α
 xchain00683_n20_β:
 jmp xchain00683_n23_α
xchain00683_n21_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00454_α:
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 1704], rax
 lea rax, [rip + xchain00683_n18_α]
 mov qword ptr [r12 + 1712], rax
 jmp xchain00683_n22_α
 xchain00683_n21_β:
 jmp xchain00683_n23_α
xchain00683_n22_α:
# IR_ASSIGN gva
bb00456_α:
 mov rax, qword ptr [r12 + 1696]
 mov rdx, qword ptr [r12 + 1704]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain00683_n23_α
 xchain00683_n22_β:
 jmp xchain00683_n23_α
xchain00683_n23_α:
# IR_VAR
bb00458_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1656], rax
 jmp xchain00683_n25_α
 xchain00683_n23_β:
 jmp xchain00683_n27_α
xchain00683_n24_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00704_α:
 jmp qword ptr [r12 + 1712]
 xchain00683_n24_β:
 jmp xchain00683_n23_α
xchain00683_n25_α:
# IR_UNOP
bb00705_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain00683_n26_α
 xchain00683_n25_β:
 jmp xchain00683_n27_α
xchain00683_n26_α:
# IR_LIT_INTEGER
bb00706_α:
 mov qword ptr [r12 + 1664], 6
 mov rax, qword ptr [rip + .Lx00707_0]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00683_n28_α
 xchain00683_n26_β:
 jmp xchain00683_n27_α
.Lx00707_0:
 .quad 1
xchain00683_n27_α:
# IR_VAR
bb00708_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1592], rax
 jmp xchain00683_n29_α
 xchain00683_n27_β:
 jmp xchain00683_n32_α
xchain00683_n28_α:
bb00709_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1632]
 cmp eax, 100
 je .Lx00710_0
 mov eax, dword ptr [r12 + 1664]
 cmp eax, 100
 je .Lx00710_0
 mov eax, dword ptr [r12 + 1632]
 cmp eax, 6
 jne .Lx00710_2
 mov eax, dword ptr [r12 + 1664]
 cmp eax, 6
 jne .Lx00710_2
.Lx00710_1:
 mov rax, qword ptr [r12 + 1640]
 mov rcx, qword ptr [r12 + 1672]
 cmp rax, rcx
 jle xchain00683_n27_α
 mov rcx, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1616], rcx
 mov rcx, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1624], rcx
 jmp xchain00683_n30_α
.Lx00710_0:
 mov rdi, qword ptr [r12 + 1632]
 mov rsi, qword ptr [r12 + 1640]
 mov rdx, qword ptr [r12 + 1664]
 mov rcx, qword ptr [r12 + 1672]
 mov r8d, 7
 lea r9, [r12 + 1616]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00710_1
 cmp eax, 1
 je xchain00683_n27_α
 jmp xchain00683_n30_α
.Lx00710_2:
 mov rdi, qword ptr [r12 + 1632]
 mov rsi, qword ptr [r12 + 1640]
 mov rdx, qword ptr [r12 + 1664]
 mov rcx, qword ptr [r12 + 1672]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00683_n27_α
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1624], rax
 jmp xchain00683_n30_α
 xchain00683_n28_β:
 jmp xchain00683_n27_α
xchain00683_n29_α:
# IR_UNOP
bb00711_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain00683_n31_α
 xchain00683_n29_β:
 jmp xchain00683_n32_α
xchain00683_n30_α:
# IR_LIT_STRING
bb00712_α:
 mov qword ptr [r12 + 1088], 1
 mov rax, qword ptr [rip + .Lx00713_0]
 mov qword ptr [r12 + 1096], rax
 jmp xchain00683_n33_α
 xchain00683_n30_β:
 jmp xchain00683_n42_α
.Lx00713_0:
 .quad .Lx00713_0_s
.Lx00713_0_s:
 .string "usage: "
xchain00683_n31_α:
# IR_LIT_INTEGER
bb00714_α:
 mov qword ptr [r12 + 1600], 6
 mov rax, qword ptr [rip + .Lx00715_0]
 mov qword ptr [r12 + 1608], rax
 jmp xchain00683_n34_α
 xchain00683_n31_β:
 jmp xchain00683_n32_α
.Lx00715_0:
 .quad 1
xchain00683_n32_α:
# IR_KEYWORD_read
bb00716_α:
 mov rdi, qword ptr [rip + .Lx00717_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain00683_n35_α
 xchain00683_n32_β:
 jmp xchain00683_n42_α
.Lx00717_0:
 .quad .Lx00717_0_s
.Lx00717_0_s:
 .string "&input"
xchain00683_n33_α:
# IR_KEYWORD_read
bb00718_α:
 mov rdi, qword ptr [rip + .Lx00719_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain00683_n36_α
 xchain00683_n33_β:
 jmp xchain00683_n42_α
.Lx00719_0:
 .quad .Lx00719_0_s
.Lx00719_0_s:
 .string "&progname"
xchain00683_n34_α:
bb00720_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1568]
 cmp eax, 100
 je .Lx00721_0
 mov eax, dword ptr [r12 + 1600]
 cmp eax, 100
 je .Lx00721_0
 mov eax, dword ptr [r12 + 1568]
 cmp eax, 6
 jne .Lx00721_2
 mov eax, dword ptr [r12 + 1600]
 cmp eax, 6
 jne .Lx00721_2
.Lx00721_1:
 mov rax, qword ptr [r12 + 1576]
 mov rcx, qword ptr [r12 + 1608]
 cmp rax, rcx
 jne xchain00683_n32_α
 mov rcx, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1552], rcx
 mov rcx, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1560], rcx
 jmp xchain00683_n37_α
.Lx00721_0:
 mov rdi, qword ptr [r12 + 1568]
 mov rsi, qword ptr [r12 + 1576]
 mov rdx, qword ptr [r12 + 1600]
 mov rcx, qword ptr [r12 + 1608]
 mov r8d, 9
 lea r9, [r12 + 1552]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00721_1
 cmp eax, 1
 je xchain00683_n32_α
 jmp xchain00683_n37_α
.Lx00721_2:
 mov rdi, qword ptr [r12 + 1568]
 mov rsi, qword ptr [r12 + 1576]
 mov rdx, qword ptr [r12 + 1600]
 mov rcx, qword ptr [r12 + 1608]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00683_n32_α
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1552], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1560], rax
 jmp xchain00683_n37_α
 xchain00683_n34_β:
 jmp xchain00683_n32_α
xchain00683_n35_α:
# IR_ASSIGN gva
bb00722_α:
 mov rax, qword ptr [r12 + 1520]
 mov rdx, qword ptr [r12 + 1528]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 jmp xchain00683_n38_α
 xchain00683_n35_β:
 jmp xchain00683_n42_α
xchain00683_n36_α:
# IR_LIT_STRING
bb00723_α:
 mov qword ptr [r12 + 1136], 1
 mov rax, qword ptr [rip + .Lx00724_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain00683_n39_α
 xchain00683_n36_β:
 jmp xchain00683_n42_α
.Lx00724_0:
 .quad .Lx00724_0_s
.Lx00724_0_s:
 .string " file"
xchain00683_n37_α:
# IR_VAR_REF local
bb00725_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain00683_n40_α
 xchain00683_n37_β:
 jmp xchain00683_n49_α
xchain00683_n38_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00726_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1160], rax
 lea rax, [rip + xchain00683_n42_α]
 mov qword ptr [r12 + 1168], rax
 jmp xchain00683_n41_α
 xchain00683_n38_β:
 jmp xchain00683_n42_α
xchain00683_n39_α:
bb00727_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1088] -> [r12+1040]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1048], rax
# marshal arg1 = producer-box slot [r12+1104] -> [r12+1056]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1064], rax
# marshal arg2 = producer-box slot [r12+1136] -> [r12+1072]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn1113: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1113]
 lea rsi, [r12 + 1040]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 cmp eax, 99
 je xchain00683_n42_α
 jmp xchain00683_n44_α
 xchain00683_n39_β:
 jmp xchain00683_n42_α
xchain00683_n40_α:
# IR_LIT_INTEGER
bb00728_α:
 mov qword ptr [r12 + 1456], 6
 mov rax, qword ptr [rip + .Lx00729_0]
 mov qword ptr [r12 + 1464], rax
 jmp xchain00683_n45_α
 xchain00683_n40_β:
 jmp xchain00683_n49_α
.Lx00729_0:
 .quad 1
xchain00683_n41_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00730_α:
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1000], rax
 lea rax, [rip + xchain00683_n43_α]
 mov qword ptr [r12 + 1008], rax
 jmp xchain00683_n42_α
 xchain00683_n41_β:
 jmp xchain00683_n42_α
xchain00683_n42_α:
# IR_VAR gva
bb00731_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain00683_n47_α
 xchain00683_n42_β:
 jmp xchain00683_n51_α
xchain00683_n43_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00732_α:
 jmp qword ptr [r12 + 1168]
 xchain00683_n43_β:
 jmp xchain00683_n42_α
xchain00683_n44_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00733_α:
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
 lea rax, [rip + xchain00683_n42_α]
 mov qword ptr [r12 + 1008], rax
 jmp xchain00683_n42_α
 xchain00683_n44_β:
 jmp xchain00683_n42_α
xchain00683_n45_α:
# IR_SUBSCRIPT x[i] variable
bb00734_α:
 mov rdi, qword ptr [r12 + 1440]
 mov rsi, qword ptr [r12 + 1448]
 mov rdx, qword ptr [r12 + 1456]
 mov rcx, qword ptr [r12 + 1464]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00683_n49_α
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain00683_n48_α
 xchain00683_n45_β:
 jmp xchain00683_n49_α
xchain00683_n46_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00471_α:
 jmp qword ptr [r12 + 1008]
 xchain00683_n46_β:
 jmp xchain00683_n42_α
xchain00683_n47_α:
bb00473_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+976] -> [r12+960]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 968], rax
  .section .rodata
  .Lrkfn1126: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1126]
 lea rsi, [r12 + 960]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je xchain00683_n51_α
 jmp xchain00683_n50_α
 xchain00683_n47_β:
 jmp xchain00683_n51_α
xchain00683_n48_α:
# IR_DEREF variable -> value
bb00735_α:
 mov rdi, qword ptr [r12 + 1472]
 mov rsi, qword ptr [r12 + 1480]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00683_n49_α
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 jmp xchain00683_n52_α
 xchain00683_n48_β:
 jmp xchain00683_n49_α
xchain00683_n49_α:
# IR_KEYWORD_read
bb00736_α:
 mov rdi, qword ptr [rip + .Lx00737_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain00683_n53_α
 xchain00683_n49_β:
 jmp xchain00683_n42_α
.Lx00737_0:
 .quad .Lx00737_0_s
.Lx00737_0_s:
 .string "&progname"
xchain00683_n50_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00738_α:
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 824], rax
 lea rax, [rip + xchain00683_n51_α]
 mov qword ptr [r12 + 832], rax
 jmp xchain00683_n54_α
 xchain00683_n50_β:
 jmp xchain00683_n59_α
xchain00683_n51_α:
# IR_KEYWORD_read
bb00739_α:
 mov rdi, qword ptr [rip + .Lx00740_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00683_n56_α
 xchain00683_n51_β:
 jmp xchain00683_n59_α
.Lx00740_0:
 .quad .Lx00740_0_s
.Lx00740_0_s:
 .string "&progname"
xchain00683_n52_α:
bb00741_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1488] -> [r12+1424]
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 1432], rax
  .section .rodata
  .Lrkfn1133: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1133]
 lea rsi, [r12 + 1424]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 cmp eax, 99
 je xchain00683_n49_α
 jmp xchain00683_n57_α
 xchain00683_n52_β:
 jmp xchain00683_n49_α
xchain00683_n53_α:
# IR_LIT_STRING
bb00478_α:
 mov qword ptr [r12 + 1328], 1
 mov rax, qword ptr [rip + .Lx00742_0]
 mov qword ptr [r12 + 1336], rax
 jmp xchain00683_n58_α
 xchain00683_n53_β:
 jmp xchain00683_n42_α
.Lx00742_0:
 .quad .Lx00742_0_s
.Lx00742_0_s:
 .string ": can't open "
xchain00683_n54_α:
bb00480_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 816]
 mov rdx, qword ptr [r12 + 824]
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00683_n59_α
 xchain00683_n54_β:
 jmp xchain00683_n59_α
xchain00683_n55_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00743_α:
 jmp qword ptr [r12 + 832]
 xchain00683_n55_β:
 jmp xchain00683_n59_α
xchain00683_n56_α:
# IR_LIT_STRING
bb00481_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx00744_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain00683_n60_α
 xchain00683_n56_β:
 jmp xchain00683_n59_α
.Lx00744_0:
 .quad .Lx00744_0_s
.Lx00744_0_s:
 .string ": empty file"
xchain00683_n57_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00745_α:
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1208], rax
 lea rax, [rip + xchain00683_n49_α]
 mov qword ptr [r12 + 1216], rax
 jmp xchain00683_n61_α
 xchain00683_n57_β:
 jmp xchain00683_n42_α
xchain00683_n58_α:
# IR_VAR_REF local
bb00746_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain00683_n63_α
 xchain00683_n58_β:
 jmp xchain00683_n42_α
xchain00683_n59_α:
# IR_VAR gva
bb00747_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00683_n64_α
 xchain00683_n59_β:
 jmp xchain00683_n69_α
xchain00683_n60_α:
bb00748_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+896] -> [r12+864]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 872], rax
# marshal arg1 = producer-box slot [r12+928] -> [r12+880]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lrkfn1145: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1145]
 lea rsi, [r12 + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je xchain00683_n59_α
 jmp xchain00683_n65_α
 xchain00683_n60_β:
 jmp xchain00683_n59_α
xchain00683_n61_α:
# IR_ASSIGN gva
bb00749_α:
 mov rax, qword ptr [r12 + 1200]
 mov rdx, qword ptr [r12 + 1208]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain00683_n66_α
 xchain00683_n61_β:
 jmp xchain00683_n42_α
xchain00683_n62_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00750_α:
 jmp qword ptr [r12 + 1216]
 xchain00683_n62_β:
 jmp xchain00683_n42_α
xchain00683_n63_α:
# IR_LIT_INTEGER
bb00751_α:
 mov qword ptr [r12 + 1360], 6
 mov rax, qword ptr [rip + .Lx00752_0]
 mov qword ptr [r12 + 1368], rax
 jmp xchain00683_n67_α
 xchain00683_n63_β:
 jmp xchain00683_n42_α
.Lx00752_0:
 .quad 1
xchain00683_n64_α:
bb00753_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+784] -> [r12+768]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 776], rax
  .section .rodata
  .Lrkfn1151: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1151]
 lea rsi, [r12 + 768]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain00683_n69_α
 jmp xchain00683_n68_α
 xchain00683_n64_β:
 jmp xchain00683_n69_α
xchain00683_n65_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00754_α:
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 824], rax
 lea rax, [rip + xchain00683_n59_α]
 mov qword ptr [r12 + 832], rax
 jmp xchain00683_n54_α
 xchain00683_n65_β:
 jmp xchain00683_n59_α
xchain00683_n66_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00755_α:
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1160], rax
 lea rax, [rip + xchain00683_n62_α]
 mov qword ptr [r12 + 1168], rax
 jmp xchain00683_n41_α
 xchain00683_n66_β:
 jmp xchain00683_n42_α
xchain00683_n67_α:
# IR_SUBSCRIPT x[i] variable
bb00756_α:
 mov rdi, qword ptr [r12 + 1344]
 mov rsi, qword ptr [r12 + 1352]
 mov rdx, qword ptr [r12 + 1360]
 mov rcx, qword ptr [r12 + 1368]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00683_n42_α
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain00683_n70_α
 xchain00683_n67_β:
 jmp xchain00683_n42_α
xchain00683_n68_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00757_α:
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 632], rax
 lea rax, [rip + xchain00683_n69_α]
 mov qword ptr [r12 + 640], rax
 jmp xchain00683_n71_α
 xchain00683_n68_β:
 jmp xchain00683_n75_α
xchain00683_n69_α:
# IR_KEYWORD_read
bb00758_α:
 mov rdi, qword ptr [rip + .Lx00759_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00683_n73_α
 xchain00683_n69_β:
 jmp xchain00683_n75_α
.Lx00759_0:
 .quad .Lx00759_0_s
.Lx00759_0_s:
 .string "&progname"
xchain00683_n70_α:
# IR_DEREF variable -> value
bb00487_α:
 mov rdi, qword ptr [r12 + 1376]
 mov rsi, qword ptr [r12 + 1384]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00683_n42_α
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain00683_n74_α
 xchain00683_n70_β:
 jmp xchain00683_n42_α
xchain00683_n71_α:
bb00760_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 624]
 mov rdx, qword ptr [r12 + 632]
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00683_n75_α
 xchain00683_n71_β:
 jmp xchain00683_n75_α
xchain00683_n72_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00761_α:
 jmp qword ptr [r12 + 640]
 xchain00683_n72_β:
 jmp xchain00683_n75_α
xchain00683_n73_α:
# IR_LIT_STRING
bb00762_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx00763_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00683_n76_α
 xchain00683_n73_β:
 jmp xchain00683_n75_α
.Lx00763_0:
 .quad .Lx00763_0_s
.Lx00763_0_s:
 .string ": file truncated"
xchain00683_n74_α:
bb00764_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1296] -> [r12+1248]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1256], rax
# marshal arg1 = producer-box slot [r12+1328] -> [r12+1264]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1272], rax
# marshal arg2 = producer-box slot [r12+1392] -> [r12+1280]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1288], rax
  .section .rodata
  .Lrkfn1166: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1166]
 lea rsi, [r12 + 1248]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je xchain00683_n42_α
 jmp xchain00683_n77_α
 xchain00683_n74_β:
 jmp xchain00683_n42_α
xchain00683_n75_α:
# IR_VAR
bb00490_α:
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 552], rax
 jmp xchain00683_n78_α
 xchain00683_n75_β:
 jmp xchain00683_n83_α
xchain00683_n76_α:
bb00765_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+704] -> [r12+672]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 680], rax
# marshal arg1 = producer-box slot [r12+736] -> [r12+688]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn1170: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1170]
 lea rsi, [r12 + 672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je xchain00683_n75_α
 jmp xchain00683_n79_α
 xchain00683_n76_β:
 jmp xchain00683_n75_α
xchain00683_n77_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00766_α:
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1208], rax
 lea rax, [rip + xchain00683_n42_α]
 mov qword ptr [r12 + 1216], rax
 jmp xchain00683_n61_α
 xchain00683_n77_β:
 jmp xchain00683_n42_α
xchain00683_n78_α:
# IR_LIT_INTEGER
bb00767_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx00768_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00683_n80_α
 xchain00683_n78_β:
 jmp xchain00683_n83_α
.Lx00768_0:
 .quad 16
xchain00683_n79_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00769_α:
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rax
 lea rax, [rip + xchain00683_n75_α]
 mov qword ptr [r12 + 640], rax
 jmp xchain00683_n71_α
 xchain00683_n79_β:
 jmp xchain00683_n75_α
xchain00683_n80_α:
# IR_LIT_INTEGER
bb00770_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx00771_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain00683_n81_α
 xchain00683_n80_β:
 jmp xchain00683_n83_α
.Lx00771_0:
 .quad 7
xchain00683_n81_α:
bb00494_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 560]
 cmp eax, 100
 je .Lx00772_0
 mov eax, dword ptr [r12 + 576]
 cmp eax, 100
 je .Lx00772_0
 mov eax, dword ptr [r12 + 560]
 cmp eax, 6
 jne .Lx00772_2
 mov eax, dword ptr [r12 + 576]
 cmp eax, 6
 jne .Lx00772_2
.Lx00772_1:
 mov rax, qword ptr [r12 + 568]
 mov rcx, qword ptr [r12 + 584]
 add rax, rcx
 mov qword ptr [r12 + 592], 6
 mov qword ptr [r12 + 600], rax
 jmp xchain00683_n82_α
.Lx00772_0:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 mov r8d, 0
 lea r9, [r12 + 592]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00772_3
.Lx00772_2:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00683_n83_α
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
.Lx00772_3:
 jmp xchain00683_n82_α
 xchain00683_n81_β:
 jmp xchain00683_n83_α
xchain00683_n82_α:
# IR_SUBSCRIPT section
bb00773_α:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov r8, qword ptr [r12 + 592]
 mov r9, qword ptr [r12 + 600]
 call subscript_get2@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00683_n84_α
 xchain00683_n82_β:
 jmp xchain00683_n83_α
xchain00683_n83_α:
# IR_VAR
bb00774_α:
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 456], rax
 jmp xchain00683_n85_α
 xchain00683_n83_β:
 jmp xchain00683_n89_α
xchain00683_n84_α:
bb00496_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00683_n83_α
 xchain00683_n84_β:
 jmp xchain00683_n83_α
xchain00683_n85_α:
# IR_LIT_INTEGER
bb00498_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx00775_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain00683_n86_α
 xchain00683_n85_β:
 jmp xchain00683_n89_α
.Lx00775_0:
 .quad 16
xchain00683_n86_α:
# IR_LIT_INTEGER
bb00499_α:
 mov qword ptr [r12 + 480], 6
 mov rax, qword ptr [rip + .Lx00776_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain00683_n87_α
 xchain00683_n86_β:
 jmp xchain00683_n89_α
.Lx00776_0:
 .quad 7
xchain00683_n87_α:
bb00500_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 464]
 cmp eax, 100
 je .Lx00777_0
 mov eax, dword ptr [r12 + 480]
 cmp eax, 100
 je .Lx00777_0
 mov eax, dword ptr [r12 + 464]
 cmp eax, 6
 jne .Lx00777_2
 mov eax, dword ptr [r12 + 480]
 cmp eax, 6
 jne .Lx00777_2
.Lx00777_1:
 mov rax, qword ptr [r12 + 472]
 mov rcx, qword ptr [r12 + 488]
 add rax, rcx
 mov qword ptr [r12 + 496], 6
 mov qword ptr [r12 + 504], rax
 jmp xchain00683_n88_α
.Lx00777_0:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 mov r8d, 0
 lea r9, [r12 + 496]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00777_3
.Lx00777_2:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00683_n89_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
.Lx00777_3:
 jmp xchain00683_n88_α
 xchain00683_n87_β:
 jmp xchain00683_n89_α
xchain00683_n88_α:
# IR_SUBSCRIPT section
bb00778_α:
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 mov r8, qword ptr [r12 + 496]
 mov r9, qword ptr [r12 + 504]
 call subscript_get2@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00683_n90_α
 xchain00683_n88_β:
 jmp xchain00683_n89_α
xchain00683_n89_α:
# IR_VAR
bb00779_α:
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 312], rax
 jmp xchain00683_n91_α
 xchain00683_n89_β:
 jmp xchain00683_n94_α
xchain00683_n90_α:
bb00780_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00683_n89_α
 xchain00683_n90_β:
 jmp xchain00683_n89_α
xchain00683_n91_α:
# IR_VAR
bb00781_α:
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 328], rax
 jmp xchain00683_n92_α
 xchain00683_n91_β:
 jmp xchain00683_n94_α
xchain00683_n92_α:
bb00782_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2096]
 cmp eax, 100
 je .Lx00783_0
 mov eax, dword ptr [r12 + 2112]
 cmp eax, 100
 je .Lx00783_0
 mov eax, dword ptr [r12 + 2096]
 cmp eax, 6
 jne .Lx00783_2
 mov eax, dword ptr [r12 + 2112]
 cmp eax, 6
 jne .Lx00783_2
.Lx00783_1:
 mov rax, qword ptr [r12 + 2104]
 mov rcx, qword ptr [r12 + 2120]
 add rax, rcx
 mov qword ptr [r12 + 288], 6
 mov qword ptr [r12 + 296], rax
 jmp xchain00683_n93_α
.Lx00783_0:
 mov rdi, qword ptr [r12 + 2096]
 mov rsi, qword ptr [r12 + 2104]
 mov rdx, qword ptr [r12 + 2112]
 mov rcx, qword ptr [r12 + 2120]
 mov r8d, 0
 lea r9, [r12 + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00783_3
.Lx00783_2:
 mov rdi, qword ptr [r12 + 2096]
 mov rsi, qword ptr [r12 + 2104]
 mov rdx, qword ptr [r12 + 2112]
 mov rcx, qword ptr [r12 + 2120]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00683_n94_α
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
.Lx00783_3:
 jmp xchain00683_n93_α
 xchain00683_n92_β:
 jmp xchain00683_n94_α
xchain00683_n93_α:
# IR_LIT_REAL
bb00784_α:
 mov qword ptr [r12 + 336], 7
 mov rax, qword ptr [rip + .Lx00785_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00683_n95_α
 xchain00683_n93_β:
 jmp xchain00683_n94_α
.Lx00785_0:
 .quad 4611686018427387904
xchain00683_n94_α:
bb00786_α:
  .section .rodata
  .Lcall00786_pname: .string "loadfile"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00786_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain00683_n96_α
 jmp xchain00683_n96_α
xchain00683_n94_β:
 jmp xchain00683_n96_α
xchain00683_n95_α:
bb00505_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00683_n94_α
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00683_n97_α
 xchain00683_n95_β:
 jmp xchain00683_n94_α
xchain00683_n96_α:
# IR_VAR
bb00787_α:
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 184], rax
 jmp xchain00683_n98_α
 xchain00683_n96_β:
 jmp xchain00683_n00008_α
xchain00683_n97_α:
# IR_KEYWORD_read
bb00788_α:
 mov rdi, qword ptr [rip + .Lx00789_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00683_n99_α
 xchain00683_n97_β:
 jmp xchain00683_n94_α
.Lx00789_0:
 .quad .Lx00789_0_s
.Lx00789_0_s:
 .string "&pi"
xchain00683_n98_α:
bb00508_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn1199: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1199]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00683_n00008_α
 jmp xchain00683_n00008_α
 xchain00683_n98_β:
 jmp xchain00683_n00008_α
xchain00683_n99_α:
# IR_LIT_INTEGER
bb00790_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00791_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00683_n00009_α
 xchain00683_n99_β:
 jmp xchain00683_n94_α
.Lx00791_0:
 .quad 9999999
xchain00683_n00008_α:
# IR_VAR
bb00792_α:
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 136], rax
 jmp xchain00683_n00010_α
 xchain00683_n00008_β:
 jmp xchain00683_n00012_α
xchain00683_n00009_α:
bb00793_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 368]
 cmp eax, 100
 je .Lx00794_0
 mov eax, dword ptr [r12 + 400]
 cmp eax, 100
 je .Lx00794_0
 mov eax, dword ptr [r12 + 368]
 cmp eax, 6
 jne .Lx00794_2
 mov eax, dword ptr [r12 + 400]
 cmp eax, 6
 jne .Lx00794_2
.Lx00794_1:
 mov rax, qword ptr [r12 + 376]
 mov rcx, qword ptr [r12 + 408]
 cqo
 idiv rcx
 mov qword ptr [r12 + 352], 6
 mov qword ptr [r12 + 360], rax
 jmp xchain00683_n00011_α
.Lx00794_0:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 3
 lea r9, [r12 + 352]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00794_3
.Lx00794_2:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00683_n94_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
.Lx00794_3:
 jmp xchain00683_n00011_α
 xchain00683_n00009_β:
 jmp xchain00683_n94_α
xchain00683_n00010_α:
bb00795_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1205: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1205]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00683_n00012_α
 jmp xchain00683_n00012_α
 xchain00683_n00010_β:
 jmp xchain00683_n00012_α
xchain00683_n00011_α:
bb00512_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00683_n94_α
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00683_n00013_α
 xchain00683_n00011_β:
 jmp xchain00683_n94_α
xchain00683_n00012_α:
# IR_VAR gva
bb00796_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00683_n00014_α
 xchain00683_n00012_β:
 jmp main_ω
xchain00683_n00013_α:
bb00797_α:
# BOX IR_CALL sin(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+256] -> [r12+240]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn1209: .string "sin"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1209]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00683_n94_α
 jmp xchain00683_n00015_α
 xchain00683_n00013_β:
 jmp xchain00683_n94_α
xchain00683_n00014_α:
bb00515_α:
  .section .rodata
  .Lcall00515_pname: .string "kgen"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00515_pname]
 mov esi, 1
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp xchain00683_n00001_α
xchain00683_n00014_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp xchain00683_n00001_α
xchain00683_n00015_α:
# IR_ASSIGN gva
bb00798_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00683_n94_α
 xchain00683_n00015_β:
 jmp xchain00683_n94_α
xchain00683_n00001_α:
bb00799_α:
  .section .rodata
  .Lcall00799_pname: .string "dumpcode"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00799_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp xchain00683_n00014_β
xchain00683_n00001_β:
 jmp main_ω
main_β:
jmp main_ω
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
