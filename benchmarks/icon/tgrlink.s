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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1488], rax
 pop rsi
proc_loadfile_α_body:
 xchain0_n0_α:
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
# IR_ASSIGN gva
 xchain0_n1_α:
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
# IR_VAR gva
 xchain0_n3_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
 xchain0_n4_α:
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
 je xchain0_n5_α
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
# IR_KEYWORD_read
 xchain0_n5_α:
 mov rdi, qword ptr [rip + .Lx8_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp xchain0_n11_α
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "&progname"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n6_α:
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1288], rax
 lea rax, [rip + xchain0_n5_α]
 mov qword ptr [r12 + 1296], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n11_α
# IR_LIT_STRING
 xchain0_n7_α:
 mov qword ptr [r12 + 1392], 1
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain0_n10_α
 xchain0_n7_β:
 jmp xchain0_n11_α
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string ": input file is not seekable"
 xchain0_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1280]
 mov rdx, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain0_n11_α
 xchain0_n8_β:
 jmp xchain0_n11_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n9_α:
 jmp qword ptr [r12 + 1296]
 xchain0_n9_β:
 jmp xchain0_n11_α
 xchain0_n10_α:
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
  .Lrkfn16: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn16]
 lea rsi, [r12 + 1328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 cmp eax, 99
 je xchain0_n11_α
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n11_α
# IR_VAR gva
 xchain0_n11_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n16_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n12_α:
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rax
 lea rax, [rip + xchain0_n11_α]
 mov qword ptr [r12 + 1296], rax
 jmp xchain0_n8_α
 xchain0_n12_β:
 jmp xchain0_n11_α
 xchain0_n13_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1248] -> [r12+1232]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1240], rax
  .section .rodata
  .Lrkfn21: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn21]
 lea rsi, [r12 + 1232]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n16_α
 xchain0_n14_α:
 jmp xchain0_n16_α
xchain0_n14_β:
 jmp xchain0_n16_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n15_α:
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1192], rax
 lea rax, [rip + xchain0_n14_α]
 mov qword ptr [r12 + 1200], rax
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n19_α
# IR_RETURN
 xchain0_n16_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_loadfile_γ
 xchain0_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1184]
 mov rdx, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n19_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n18_α:
 jmp qword ptr [r12 + 1200]
 xchain0_n18_β:
 jmp xchain0_n19_α
# IR_VAR
 xchain0_n19_α:
 mov rax, qword ptr [r12 + 1584]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1592]
 mov qword ptr [r12 + 1160], rax
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp xchain0_n21_α
 xchain0_n20_α:
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
 je xchain0_n21_α
 jmp xchain0_n22_α
xchain0_n20_β:
 jmp xchain0_n21_α
# IR_VAR_REF gva
 xchain0_n21_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n25_α
 xchain0_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain0_n21_α
 xchain0_n22_β:
 jmp xchain0_n21_α
# IR_VAR
 xchain0_n23_α:
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 1064], rax
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n25_α
# IR_FIELD_GET
 xchain0_n24_α:
 mov rdi, qword ptr [rip + .Lx37_0]
 mov rsi, qword ptr [r12 + 1056]
 mov rdx, qword ptr [r12 + 1064]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n25_α
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n25_α
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "code"
# IR_VAR_REF local
 xchain0_n25_α:
 lea rdi, [r12 + 1568]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp xchain0_n30_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n26_α:
 mov rdi, qword ptr [r12 + 1024]
 mov rsi, qword ptr [r12 + 1032]
 mov rdx, qword ptr [r12 + 1040]
 mov rcx, qword ptr [r12 + 1048]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n25_α
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp xchain0_n25_α
# IR_VAR
 xchain0_n27_α:
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 696], rax
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp xchain0_n30_α
# IR_DEREF variable -> value
 xchain0_n28_α:
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n25_α
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain0_n31_α
 xchain0_n28_β:
 jmp xchain0_n25_α
# IR_FIELD_GET
 xchain0_n29_α:
 mov rdi, qword ptr [rip + .Lx44_0]
 mov rsi, qword ptr [r12 + 688]
 mov rdx, qword ptr [r12 + 696]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n30_α
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain0_n32_α
 xchain0_n29_β:
 jmp xchain0_n30_α
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "aindex"
# IR_VAR_REF local
 xchain0_n30_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain0_n33_α
 xchain0_n30_β:
 jmp xchain0_n37_α
 xchain0_n31_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1088]
 mov rdx, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain0_n34_α
 xchain0_n31_β:
 jmp xchain0_n25_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n32_α:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n30_α
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain0_n35_α
 xchain0_n32_β:
 jmp xchain0_n30_α
# IR_VAR
 xchain0_n33_α:
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 568], rax
 jmp xchain0_n36_α
 xchain0_n33_β:
 jmp xchain0_n37_α
# IR_UNOP
 xchain0_n34_α:
 mov eax, dword ptr [r12 + 1008]
 cmp eax, 99
 je xchain0_n25_α
 cmp eax, 0
 jne xchain0_n25_α
 mov qword ptr [r12 + 992], 0
 mov qword ptr [r12 + 1000], 0
 jmp xchain0_n38_α
 xchain0_n34_β:
 jmp xchain0_n25_α
# IR_DEREF variable -> value
 xchain0_n35_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n30_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain0_n39_α
 xchain0_n35_β:
 jmp xchain0_n30_α
# IR_FIELD_GET
 xchain0_n36_α:
 mov rdi, qword ptr [rip + .Lx53_0]
 mov rsi, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n37_α
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain0_n40_α
 xchain0_n36_β:
 jmp xchain0_n37_α
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "key"
# IR_VAR_REF local
 xchain0_n37_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n41_α
 xchain0_n37_β:
 jmp xchain0_n45_α
# IR_VAR_REF gva
 xchain0_n38_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain0_n42_α
 xchain0_n38_β:
 jmp xchain0_n47_α
 xchain0_n39_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain0_n30_α
 xchain0_n39_β:
 jmp xchain0_n30_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n40_α:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 552]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n37_α
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain0_n43_α
 xchain0_n40_β:
 jmp xchain0_n37_α
# IR_VAR
 xchain0_n41_α:
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n44_α
 xchain0_n41_β:
 jmp xchain0_n45_α
# IR_VAR
 xchain0_n42_α:
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 904], rax
 jmp xchain0_n46_α
 xchain0_n42_β:
 jmp xchain0_n47_α
# IR_UNOP_TEST lv
 xchain0_n43_α:
 mov eax, dword ptr [r12 + 576]
 cmp eax, 99
 je xchain0_n37_α
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n37_α
 cmp eax, 0
 jne xchain0_n37_α
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 600], rax
 jmp xchain0_n48_α
 xchain0_n43_β:
 jmp xchain0_n37_α
# IR_FIELD_GET
 xchain0_n44_α:
 mov rdi, qword ptr [rip + .Lx65_0]
 mov rsi, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n45_α
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain0_n49_α
 xchain0_n44_β:
 jmp xchain0_n45_α
.Lx65_0:
 .quad .Lx65_0_s
.Lx65_0_s:
 .string "key"
# IR_VAR
 xchain0_n45_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 104], rax
 jmp xchain0_n50_α
 xchain0_n45_β:
 jmp xchain0_n3_α
# IR_FIELD_GET
 xchain0_n46_α:
 mov rdi, qword ptr [rip + .Lx68_0]
 mov rsi, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n47_α
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain0_n51_α
 xchain0_n46_β:
 jmp xchain0_n47_α
.Lx68_0:
 .quad .Lx68_0_s
.Lx68_0_s:
 .string "code"
# IR_VAR_REF local
 xchain0_n47_α:
 lea rdi, [r12 + 1568]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain0_n52_α
 xchain0_n47_β:
 jmp xchain0_n25_α
# IR_VAR
 xchain0_n48_α:
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 632], rax
 jmp xchain0_n53_α
 xchain0_n48_β:
 jmp xchain0_n37_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n49_α:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n45_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain0_n54_α
 xchain0_n49_β:
 jmp xchain0_n45_α
# IR_VAR
 xchain0_n50_α:
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n55_α
 xchain0_n50_β:
 jmp xchain0_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n51_α:
 mov rdi, qword ptr [r12 + 864]
 mov rsi, qword ptr [r12 + 872]
 mov rdx, qword ptr [r12 + 880]
 mov rcx, qword ptr [r12 + 888]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n47_α
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain0_n56_α
 xchain0_n51_β:
 jmp xchain0_n47_α
# IR_LIST_BANG
 xchain0_n52_α:
 mov qword ptr [r12 + 784], 0
.Lx78_0:
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, qword ptr [r12 + 784]
 call rt_list_bang_var_at@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp rax, 99
 je xchain0_n25_α
 jmp xchain0_n57_α
 xchain0_n52_β:
 inc qword ptr [r12 + 784]
 jmp .Lx78_0
# IR_ASSIGN_VAR write through variable
 xchain0_n53_α:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 624]
 mov rcx, qword ptr [r12 + 632]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n37_α
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain0_n58_α
 xchain0_n53_β:
 jmp xchain0_n37_α
# IR_DEREF variable -> value
 xchain0_n54_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n45_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain0_n59_α
 xchain0_n54_β:
 jmp xchain0_n45_α
 xchain0_n55_α:
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
  .Lrkfn82: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn82]
 lea rsi, [r12 + 64]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n60_α
 xchain0_n55_β:
 jmp xchain0_n3_α
# IR_LIT_INTEGER
 xchain0_n56_α:
 mov qword ptr [r12 + 976], 6
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain0_n61_α
 xchain0_n56_β:
 jmp xchain0_n47_α
.Lx83_0:
 .quad 5
 xchain0_n57_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn85: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn85]
 lea rsi, [r12 + 848]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 cmp eax, 99
 je xchain0_n52_β
 jmp xchain0_n62_α
 xchain0_n57_β:
 jmp xchain0_n52_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n58_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 24], rax
 lea rax, [rip + xchain0_n37_α]
 mov qword ptr [r12 + 32], rax
 jmp xchain0_n63_α
 xchain0_n58_β:
 jmp xchain0_n3_α
 xchain0_n59_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain0_n65_α
 xchain0_n59_β:
 jmp xchain0_n45_α
 xchain0_n60_α:
 jmp xchain0_n66_α
xchain0_n60_β:
 jmp xchain0_n3_α
 xchain0_n61_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+976] -> [r12+960]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 968], rax
  .section .rodata
  .Lrkfn91: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn91]
 lea rsi, [r12 + 960]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je xchain0_n47_α
 jmp xchain0_n67_α
 xchain0_n61_β:
 jmp xchain0_n47_α
# IR_ASSIGN_VAR write through variable
 xchain0_n62_α:
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 mov rdx, qword ptr [r12 + 832]
 mov rcx, qword ptr [r12 + 840]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n25_α
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain0_n52_β
 xchain0_n62_β:
 jmp xchain0_n25_α
 xchain0_n63_α:
 jmp xchain0_n3_α
xchain0_n63_β:
 jmp xchain0_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n64_α:
 jmp qword ptr [r12 + 32]
 xchain0_n64_β:
 jmp xchain0_n3_α
 xchain0_n65_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+416] -> [r12+400]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn97: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn97]
 lea rsi, [r12 + 400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain0_n45_α
 jmp xchain0_n68_α
 xchain0_n65_β:
 jmp xchain0_n45_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n66_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 24], rax
 lea rax, [rip + xchain0_n2_α]
 mov qword ptr [r12 + 32], rax
 jmp xchain0_n63_α
 xchain0_n66_β:
 jmp xchain0_n3_α
# IR_ASSIGN_VAR write through variable
 xchain0_n67_α:
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n47_α
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain0_n69_α
 xchain0_n67_β:
 jmp xchain0_n47_α
# IR_LIT_STRING
 xchain0_n68_α:
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx00001_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain0_n70_α
 xchain0_n68_β:
 jmp xchain0_n45_α
.Lx00001_0:
 .quad .Lx00001_0_s
.Lx00001_0_s:
 .string "list"
 xchain0_n69_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 928]
 mov rdx, qword ptr [r12 + 936]
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain0_n47_α
 xchain0_n69_β:
 jmp xchain0_n47_α
 xchain0_n70_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n45_α
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n71_α
 xchain0_n70_β:
 jmp xchain0_n45_α
# IR_VAR_REF local
 xchain0_n71_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain0_n72_α
 xchain0_n71_β:
 jmp xchain0_n45_α
# IR_VAR
 xchain0_n72_α:
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 216], rax
 jmp xchain0_n73_α
 xchain0_n72_β:
 jmp xchain0_n45_α
# IR_FIELD_GET
 xchain0_n73_α:
 mov rdi, qword ptr [rip + .Lx00002_0]
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n45_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain0_n74_α
 xchain0_n73_β:
 jmp xchain0_n45_α
.Lx00002_0:
 .quad .Lx00002_0_s
.Lx00002_0_s:
 .string "key"
# IR_SUBSCRIPT x[i] variable
 xchain0_n74_α:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n45_α
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n75_α
 xchain0_n74_β:
 jmp xchain0_n45_α
# IR_VAR_REF local
 xchain0_n75_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n76_α
 xchain0_n75_β:
 jmp xchain0_n45_α
# IR_VAR
 xchain0_n76_α:
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 328], rax
 jmp xchain0_n77_α
 xchain0_n76_β:
 jmp xchain0_n45_α
# IR_FIELD_GET
 xchain0_n77_α:
 mov rdi, qword ptr [rip + .Lx00003_0]
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain0_n45_α
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain0_n78_α
 xchain0_n77_β:
 jmp xchain0_n45_α
.Lx00003_0:
 .quad .Lx00003_0_s
.Lx00003_0_s:
 .string "key"
# IR_SUBSCRIPT x[i] variable
 xchain0_n78_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n45_α
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain0_n79_α
 xchain0_n78_β:
 jmp xchain0_n45_α
# IR_DEREF variable -> value
 xchain0_n79_α:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n45_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n80_α
 xchain0_n79_β:
 jmp xchain0_n45_α
# IR_MAKE_LIST
 xchain0_n80_α:
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
 jmp xchain0_n45_α
# IR_ASSIGN_VAR write through variable
 xchain0_n81_α:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n45_α
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n82_α
 xchain0_n81_β:
 jmp xchain0_n45_α
 xchain0_n82_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain0_n83_α
 xchain0_n82_β:
 jmp xchain0_n45_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n83_α:
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
 lea rax, [rip + xchain0_n45_α]
 mov qword ptr [r12 + 144], rax
 jmp xchain0_n45_α
 xchain0_n83_β:
 jmp xchain0_n45_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n84_α:
 jmp qword ptr [r12 + 144]
 xchain0_n84_β:
 jmp xchain0_n45_α
proc_loadfile_β:
jmp proc_loadfile_ω
proc_loadfile_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1488]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 592], rax
 pop rsi
proc_kgen_α_body:
lea rax, [rip + xchain00004_n22_β]
mov qword ptr [r12 + 576], rax
 xchain00004_n0_α:
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
 je xchain00004_n2_α
 jmp xchain00004_n1_α
 xchain00004_n0_β:
 jmp xchain00004_n2_α
 xchain00004_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00004_n2_α
 xchain00004_n1_β:
 jmp xchain00004_n2_α
# IR_VAR
 xchain00004_n2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00004_n3_α
 xchain00004_n2_β:
 jmp xchain00004_n4_α
# IR_ITERATE(key)
 xchain00004_n3_α:
 mov qword ptr [r12 + 256], 0
.Lx00005_0:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 256]
 call rt_list_bang_key_at@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp rax, 99
 je xchain00004_n4_α
 jmp xchain00004_n5_α
 xchain00004_n3_β:
 inc qword ptr [r12 + 256]
 jmp .Lx00005_0
# IR_VAR
 xchain00004_n4_α:
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 216], rax
 jmp xchain00004_n6_α
 xchain00004_n4_β:
 jmp xchain00004_n7_α
 xchain00004_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00004_n8_α
 xchain00004_n5_β:
 jmp xchain00004_n4_α
 xchain00004_n6_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+208] -> [r12+192]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn137: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn137]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain00004_n7_α
 jmp xchain00004_n9_α
 xchain00004_n6_β:
 jmp xchain00004_n7_α
# IR_VAR
 xchain00004_n7_α:
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 88], rax
 jmp xchain00004_n10_α
 xchain00004_n7_β:
 jmp proc_kgen_ω
# IR_VAR
 xchain00004_n8_α:
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 344], rax
 jmp xchain00004_n11_α
 xchain00004_n8_β:
 jmp xchain00004_n3_β
 xchain00004_n9_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00004_n7_α
 xchain00004_n9_β:
 jmp xchain00004_n7_α
 xchain00004_n10_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+64]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 72], rax
  .section .rodata
  .Lrkfn144: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn144]
 lea rsi, [r12 + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je proc_kgen_ω
 jmp xchain00004_n12_α
 xchain00004_n10_β:
 jmp proc_kgen_ω
# IR_VAR_REF local
 xchain00004_n11_α:
 lea rdi, [r12 + 608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00004_n13_α
 xchain00004_n11_β:
 jmp xchain00004_n3_β
 xchain00004_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00004_n14_α
 xchain00004_n12_β:
 jmp proc_kgen_ω
# IR_LIT_INTEGER
 xchain00004_n13_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx00006_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00004_n15_α
 xchain00004_n13_β:
 jmp xchain00004_n3_β
.Lx00006_0:
 .quad 1
# IR_VAR
 xchain00004_n14_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 120], rax
 jmp xchain00004_n16_α
 xchain00004_n14_β:
 jmp proc_kgen_ω
# IR_SUBSCRIPT x[i] variable
 xchain00004_n15_α:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00004_n3_β
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00004_n17_α
 xchain00004_n15_β:
 jmp xchain00004_n3_β
# IR_LIT_INTEGER
 xchain00004_n16_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00007_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00004_n18_α
 xchain00004_n16_β:
 jmp proc_kgen_ω
.Lx00007_0:
 .quad 2
# IR_DEREF variable -> value
 xchain00004_n17_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00004_n3_β
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00004_n19_α
 xchain00004_n17_β:
 jmp xchain00004_n3_β
# IR_LIT_INTEGER
 xchain00004_n18_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00008_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00004_n20_α
 xchain00004_n18_β:
 jmp proc_kgen_ω
.Lx00008_0:
 .quad 0
# IR_LIT_STRING
 xchain00004_n19_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx00009_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00004_n21_α
 xchain00004_n19_β:
 jmp xchain00004_n3_β
.Lx00009_0:
 .quad .Lx00009_0_s
.Lx00009_0_s:
 .string "FHEABCDX"
# IR_SUBSCRIPT section
 xchain00004_n20_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8, qword ptr [r12 + 144]
 mov r9, qword ptr [r12 + 152]
 call subscript_get2@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00004_n22_α
 xchain00004_n20_β:
 jmp proc_kgen_ω
# IR_LIT_STRING
 xchain00004_n21_α:
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx00010_0]
 mov qword ptr [r12 + 520], rax
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
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 8], rax
 jmp proc_kgen_γ
 xchain00004_n22_β:
 jmp xchain00004_n7_α
 xchain00004_n23_α:
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
  .Lrkfn161: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn161]
 lea rsi, [r12 + 384]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain00004_n3_β
 jmp xchain00004_n24_α
 xchain00004_n23_β:
 jmp xchain00004_n3_β
# IR_VAR
 xchain00004_n24_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 536], rax
 jmp xchain00004_n25_α
 xchain00004_n24_β:
 jmp xchain00004_n3_β
 xchain00004_n25_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 call str_concat_d@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00004_n26_α
 xchain00004_n25_β:
 jmp xchain00004_n3_β
 xchain00004_n26_α:
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
  .Lrkfn166: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn166]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00004_n3_β
 jmp xchain00004_n3_β
 xchain00004_n26_β:
 jmp xchain00004_n3_β
proc_kgen_β:
jmp qword ptr [r12 + 576]
proc_kgen_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 592]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 784], rax
 pop rsi
proc_dumpcode_α_body:
# IR_VAR_REF gva
 xchain00011_n0_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00011_n1_α
 xchain00011_n0_β:
 jmp xchain00011_n3_α
# IR_VAR
 xchain00011_n1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 744], rax
 jmp xchain00011_n2_α
 xchain00011_n1_β:
 jmp xchain00011_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00011_n2_α:
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00011_n3_α
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00011_n4_α
 xchain00011_n2_β:
 jmp xchain00011_n3_α
 xchain00011_n3_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn174: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn174]
 lea rsi, [r12 + 704]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain00011_n6_α
 jmp xchain00011_n5_α
 xchain00011_n3_β:
 jmp xchain00011_n6_α
# IR_DEREF variable -> value
 xchain00011_n4_α:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00011_n3_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00011_n7_α
 xchain00011_n4_β:
 jmp xchain00011_n3_α
# IR_ASSIGN gva
 xchain00011_n5_α:
 mov rax, qword ptr [r12 + 688]
 mov rdx, qword ptr [r12 + 696]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00011_n6_α
 xchain00011_n5_β:
 jmp xchain00011_n6_α
# IR_VAR_REF local
 xchain00011_n6_α:
 lea rdi, [r12 + 816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00011_n8_β
 xchain00011_n6_β:
 jmp xchain00011_n10_α
 xchain00011_n7_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00011_n3_α
 xchain00011_n7_β:
 jmp xchain00011_n3_α
 xchain00011_n8_α:
  .section .rodata
  .Lcall00012_pname: .string "aseq"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00012_pname]
 mov esi, 0
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00011_n10_α
 jmp xchain00011_n9_α
xchain00011_n8_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00011_n10_α
 jmp xchain00011_n9_α
# IR_SUBSCRIPT x[i] variable
 xchain00011_n9_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00011_n10_α
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00011_n11_α
 xchain00011_n9_β:
 jmp xchain00011_n10_α
# IR_RETURN
 xchain00011_n10_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_dumpcode_γ
# IR_DEREF variable -> value
 xchain00011_n11_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00011_n10_α
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00011_n12_α
 xchain00011_n11_β:
 jmp xchain00011_n10_α
# IR_LIT_INTEGER
 xchain00011_n12_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00013_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00011_n13_α
 xchain00011_n12_β:
 jmp xchain00011_n8_β
.Lx00013_0:
 .quad 3
 xchain00011_n13_α:
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
 je xchain00011_n10_α
 jmp xchain00011_n14_α
 xchain00011_n13_β:
 jmp xchain00011_n10_α
 xchain00011_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00011_n15_α
 xchain00011_n14_β:
 jmp xchain00011_n10_α
# IR_VAR
 xchain00011_n15_α:
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 232], rax
 jmp xchain00011_n16_α
 xchain00011_n15_β:
 jmp xchain00011_n8_β
 xchain00011_n16_α:
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
 je xchain00011_n8_β
 jmp xchain00011_n17_α
 xchain00011_n16_β:
 jmp xchain00011_n8_β
 xchain00011_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00011_n18_α
 xchain00011_n17_β:
 jmp xchain00011_n8_β
# IR_VAR
 xchain00011_n18_α:
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 664], rax
 jmp xchain00011_n19_α
 xchain00011_n18_β:
 jmp xchain00011_n20_α
 xchain00011_n19_α:
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
 je xchain00011_n20_α
 jmp xchain00011_n21_α
 xchain00011_n19_β:
 jmp xchain00011_n20_α
# IR_VAR
 xchain00011_n20_α:
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 584], rax
 jmp xchain00011_n22_α
 xchain00011_n20_β:
 jmp xchain00011_n23_α
 xchain00011_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 624]
 mov rdx, qword ptr [r12 + 632]
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00011_n20_α
 xchain00011_n21_β:
 jmp xchain00011_n20_α
 xchain00011_n22_α:
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
 je xchain00011_n23_α
 jmp xchain00011_n24_α
 xchain00011_n22_β:
 jmp xchain00011_n23_α
# IR_VAR
 xchain00011_n23_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 488], rax
 jmp xchain00011_n25_α
 xchain00011_n23_β:
 jmp xchain00011_n15_α
# IR_LIT_STRING
 xchain00011_n24_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx00014_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00011_n26_α
 xchain00011_n24_β:
 jmp xchain00011_n23_α
.Lx00014_0:
 .quad .Lx00014_0_s
.Lx00014_0_s:
 .string "list"
# IR_VAR
 xchain00011_n25_α:
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 504], rax
 jmp xchain00011_n27_α
 xchain00011_n25_β:
 jmp xchain00011_n15_α
 xchain00011_n26_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 592]
 mov rcx, qword ptr [r12 + 600]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00011_n23_α
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00011_n28_α
 xchain00011_n26_β:
 jmp xchain00011_n23_α
# IR_VAR
 xchain00011_n27_α:
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 520], rax
 jmp xchain00011_n29_α
 xchain00011_n27_β:
 jmp xchain00011_n15_α
# IR_VAR
 xchain00011_n28_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 344], rax
 jmp xchain00011_n30_α
 xchain00011_n28_β:
 jmp xchain00011_n15_α
 xchain00011_n29_α:
  .section .rodata
  .Lcall00015_pname: .string "putchain"
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
   lea rdi, [rip + .Lcall00015_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain00011_n15_α
 jmp xchain00011_n31_α
xchain00011_n29_β:
 jmp xchain00011_n15_α
# IR_VAR
 xchain00011_n30_α:
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 360], rax
 jmp xchain00011_n32_α
 xchain00011_n30_β:
 jmp xchain00011_n15_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00011_n31_α:
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain00011_n15_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain00011_n33_α
 xchain00011_n31_β:
 jmp xchain00011_n15_α
# IR_VAR
 xchain00011_n32_α:
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 408], rax
 jmp xchain00011_n35_α
 xchain00011_n32_β:
 jmp xchain00011_n15_α
 xchain00011_n33_α:
 jmp xchain00011_n15_α
xchain00011_n33_β:
 jmp xchain00011_n15_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00011_n34_α:
 jmp qword ptr [r12 + 256]
 xchain00011_n34_β:
 jmp xchain00011_n15_α
# IR_LIST_BANG
 xchain00011_n35_α:
 mov qword ptr [r12 + 384], 0
.Lx00016_0:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 384]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp rax, 99
 je xchain00011_n15_α
 jmp xchain00011_n36_α
 xchain00011_n35_β:
 inc qword ptr [r12 + 384]
 jmp .Lx00016_0
 xchain00011_n36_α:
  .section .rodata
  .Lcall00017_pname: .string "putchain"
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
   lea rdi, [rip + .Lcall00017_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain00011_n15_α
 jmp xchain00011_n35_β
xchain00011_n36_β:
 jmp xchain00011_n15_α
proc_dumpcode_β:
jmp proc_dumpcode_ω
proc_dumpcode_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 784]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 576], rax
 pop rsi
proc_aseq_α_body:
lea rax, [rip + xchain00018_n11_β]
mov qword ptr [r12 + 560], rax
# IR_LIT_INTEGER
 xchain00018_n0_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx00019_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00018_n1_α
 xchain00018_n0_β:
 jmp xchain00018_n4_α
.Lx00019_0:
 .quad 1
# IR_LIT_REAL
 xchain00018_n1_α:
 mov qword ptr [r12 + 544], 7
 mov rax, qword ptr [rip + .Lx00020_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain00018_n2_α
 xchain00018_n1_β:
 jmp xchain00018_n4_α
.Lx00020_0:
 .quad 4608308318706860032
 xchain00018_n2_α:
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
 je xchain00018_n4_α
 jmp xchain00018_n3_α
 xchain00018_n2_β:
 jmp xchain00018_n4_α
 xchain00018_n3_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 496]
 cmp eax, 100
 je .Lx00021_0
 mov eax, dword ptr [r12 + 512]
 cmp eax, 100
 je .Lx00021_0
 mov eax, dword ptr [r12 + 496]
 cmp eax, 6
 jne .Lx00021_2
 mov eax, dword ptr [r12 + 512]
 cmp eax, 6
 jne .Lx00021_2
.Lx00021_1:
 mov rax, qword ptr [r12 + 504]
 mov rcx, qword ptr [r12 + 520]
 add rax, rcx
 mov qword ptr [r12 + 480], 6
 mov qword ptr [r12 + 488], rax
 jmp xchain00018_n5_α
.Lx00021_0:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 mov r8d, 0
 lea r9, [r12 + 480]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00021_3
.Lx00021_2:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00018_n4_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
.Lx00021_3:
 jmp xchain00018_n5_α
 xchain00018_n3_β:
 jmp xchain00018_n4_α
# IR_LIT_INTEGER
 xchain00018_n4_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00022_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00018_n6_α
 xchain00018_n4_β:
 jmp xchain00018_n9_α
.Lx00022_0:
 .quad 1
 xchain00018_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00018_n4_α
 xchain00018_n5_β:
 jmp xchain00018_n4_α
# IR_LIT_REAL
 xchain00018_n6_α:
 mov qword ptr [r12 + 448], 7
 mov rax, qword ptr [rip + .Lx00023_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00018_n7_α
 xchain00018_n6_β:
 jmp xchain00018_n9_α
.Lx00023_0:
 .quad 4615626668101337088
 xchain00018_n7_α:
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
 je xchain00018_n9_α
 jmp xchain00018_n8_α
 xchain00018_n7_β:
 jmp xchain00018_n9_α
 xchain00018_n8_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 400]
 cmp eax, 100
 je .Lx00024_0
 mov eax, dword ptr [r12 + 416]
 cmp eax, 100
 je .Lx00024_0
 mov eax, dword ptr [r12 + 400]
 cmp eax, 6
 jne .Lx00024_2
 mov eax, dword ptr [r12 + 416]
 cmp eax, 6
 jne .Lx00024_2
.Lx00024_1:
 mov rax, qword ptr [r12 + 408]
 mov rcx, qword ptr [r12 + 424]
 add rax, rcx
 mov qword ptr [r12 + 384], 6
 mov qword ptr [r12 + 392], rax
 jmp xchain00018_n10_α
.Lx00024_0:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 0
 lea r9, [r12 + 384]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00024_3
.Lx00024_2:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00018_n9_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
.Lx00024_3:
 jmp xchain00018_n10_α
 xchain00018_n8_β:
 jmp xchain00018_n9_α
# IR_VAR
 xchain00018_n9_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 360], rax
 jmp xchain00018_n11_α
 xchain00018_n9_β:
 jmp proc_aseq_ω
 xchain00018_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00018_n9_α
 xchain00018_n10_β:
 jmp xchain00018_n9_α
# IR_SUSPEND yield+resume
 xchain00018_n11_α:
 lea rax, [rip + xchain00018_n11_β]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 8], rax
 jmp proc_aseq_γ
 xchain00018_n11_β:
 jmp xchain00018_n12_α
# IR_VAR
 xchain00018_n12_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 344], rax
 jmp xchain00018_n13_α
 xchain00018_n12_β:
 jmp proc_aseq_ω
# IR_SUSPEND yield+resume
 xchain00018_n13_α:
 lea rax, [rip + xchain00018_n13_β]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 8], rax
 jmp proc_aseq_γ
 xchain00018_n13_β:
 jmp xchain00018_n14_α
# IR_VAR
 xchain00018_n14_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 264], rax
 jmp xchain00018_n15_α
 xchain00018_n14_β:
 jmp proc_aseq_ω
# IR_LIT_INTEGER
 xchain00018_n15_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx00025_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00018_n16_α
 xchain00018_n15_β:
 jmp proc_aseq_ω
.Lx00025_0:
 .quad 1
 xchain00018_n16_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 608]
 cmp eax, 100
 je .Lx00026_0
 mov eax, dword ptr [r12 + 272]
 cmp eax, 100
 je .Lx00026_0
 mov eax, dword ptr [r12 + 608]
 cmp eax, 6
 jne .Lx00026_2
 mov eax, dword ptr [r12 + 272]
 cmp eax, 6
 jne .Lx00026_2
.Lx00026_1:
 mov rax, qword ptr [r12 + 616]
 mov rcx, qword ptr [r12 + 280]
 add rax, rcx
 mov qword ptr [r12 + 240], 6
 mov qword ptr [r12 + 248], rax
 jmp xchain00018_n17_α
.Lx00026_0:
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 mov r8d, 0
 lea r9, [r12 + 240]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00026_3
.Lx00026_2:
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_aseq_ω
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
.Lx00026_3:
 jmp xchain00018_n17_α
 xchain00018_n16_β:
 jmp proc_aseq_ω
# IR_VAR
 xchain00018_n17_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 312], rax
 jmp xchain00018_n18_α
 xchain00018_n17_β:
 jmp proc_aseq_ω
# IR_LIT_INTEGER
 xchain00018_n18_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx00027_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00018_n19_α
 xchain00018_n18_β:
 jmp proc_aseq_ω
.Lx00027_0:
 .quad 1
 xchain00018_n19_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 592]
 cmp eax, 100
 je .Lx00028_0
 mov eax, dword ptr [r12 + 320]
 cmp eax, 100
 je .Lx00028_0
 mov eax, dword ptr [r12 + 592]
 cmp eax, 6
 jne .Lx00028_2
 mov eax, dword ptr [r12 + 320]
 cmp eax, 6
 jne .Lx00028_2
.Lx00028_1:
 mov rax, qword ptr [r12 + 600]
 mov rcx, qword ptr [r12 + 328]
 sub rax, rcx
 mov qword ptr [r12 + 288], 6
 mov qword ptr [r12 + 296], rax
 jmp xchain00018_n20_α
.Lx00028_0:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 1
 lea r9, [r12 + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00028_3
.Lx00028_2:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_aseq_ω
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
.Lx00028_3:
 jmp xchain00018_n20_α
 xchain00018_n19_β:
 jmp proc_aseq_ω
# IR_TO
 xchain00018_n20_α:
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 224], rax
.Lx00029_0:
 mov rax, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 296]
 cmp rax, rcx
 jg proc_aseq_ω
 mov qword ptr [r12 + 208], 6
 mov qword ptr [r12 + 216], rax
 jmp xchain00018_n21_α
 xchain00018_n20_β:
 inc qword ptr [r12 + 224]
 jmp .Lx00029_0
# IR_SUSPEND yield+resume
 xchain00018_n21_α:
 lea rax, [rip + xchain00018_n21_β]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 8], rax
 jmp proc_aseq_γ
 xchain00018_n21_β:
 jmp xchain00018_n22_α
# IR_LIT_INTEGER
 xchain00018_n22_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00030_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00018_n23_α
 xchain00018_n22_β:
 jmp proc_aseq_ω
.Lx00030_0:
 .quad 1
# IR_VAR
 xchain00018_n23_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 184], rax
 jmp xchain00018_n24_α
 xchain00018_n23_β:
 jmp proc_aseq_ω
# IR_LIT_INTEGER
 xchain00018_n24_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00031_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00018_n25_α
 xchain00018_n24_β:
 jmp proc_aseq_ω
.Lx00031_0:
 .quad 1
 xchain00018_n25_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 608]
 cmp eax, 100
 je .Lx00032_0
 mov eax, dword ptr [r12 + 192]
 cmp eax, 100
 je .Lx00032_0
 mov eax, dword ptr [r12 + 608]
 cmp eax, 6
 jne .Lx00032_2
 mov eax, dword ptr [r12 + 192]
 cmp eax, 6
 jne .Lx00032_2
.Lx00032_1:
 mov rax, qword ptr [r12 + 616]
 mov rcx, qword ptr [r12 + 200]
 sub rax, rcx
 mov qword ptr [r12 + 160], 6
 mov qword ptr [r12 + 168], rax
 jmp xchain00018_n26_α
.Lx00032_0:
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 1
 lea r9, [r12 + 160]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00032_3
.Lx00032_2:
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_aseq_ω
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
.Lx00032_3:
 jmp xchain00018_n26_α
 xchain00018_n25_β:
 jmp proc_aseq_ω
# IR_TO
 xchain00018_n26_α:
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 128], rax
.Lx00033_0:
 mov rax, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 168]
 cmp rax, rcx
 jg proc_aseq_ω
 mov qword ptr [r12 + 112], 6
 mov qword ptr [r12 + 120], rax
 jmp xchain00018_n27_α
 xchain00018_n26_β:
 inc qword ptr [r12 + 128]
 jmp .Lx00033_0
# IR_SUSPEND yield+resume
 xchain00018_n27_α:
 lea rax, [rip + xchain00018_n27_β]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 8], rax
 jmp proc_aseq_γ
 xchain00018_n27_β:
 jmp xchain00018_n28_α
# IR_VAR
 xchain00018_n28_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 72], rax
 jmp xchain00018_n29_α
 xchain00018_n28_β:
 jmp proc_aseq_ω
# IR_LIT_INTEGER
 xchain00018_n29_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx00034_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain00018_n30_α
 xchain00018_n29_β:
 jmp proc_aseq_ω
.Lx00034_0:
 .quad 1
 xchain00018_n30_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 592]
 cmp eax, 100
 je .Lx00035_0
 mov eax, dword ptr [r12 + 80]
 cmp eax, 100
 je .Lx00035_0
 mov eax, dword ptr [r12 + 592]
 cmp eax, 6
 jne .Lx00035_2
 mov eax, dword ptr [r12 + 80]
 cmp eax, 6
 jne .Lx00035_2
.Lx00035_1:
 mov rax, qword ptr [r12 + 600]
 mov rcx, qword ptr [r12 + 88]
 add rax, rcx
 mov qword ptr [r12 + 48], 6
 mov qword ptr [r12 + 56], rax
 jmp xchain00018_n31_α
.Lx00035_0:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 88]
 mov r8d, 0
 lea r9, [r12 + 48]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00035_3
.Lx00035_2:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 88]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_aseq_ω
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
.Lx00035_3:
 jmp xchain00018_n31_α
 xchain00018_n30_β:
 jmp proc_aseq_ω
# IR_LIT_INTEGER
 xchain00018_n31_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00036_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00018_n32_α
 xchain00018_n31_β:
 jmp proc_aseq_ω
.Lx00036_0:
 .quad 5
# IR_TO
 xchain00018_n32_α:
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
.Lx00037_0:
 mov rax, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 104]
 cmp rax, rcx
 jg proc_aseq_ω
 mov qword ptr [r12 + 16], 6
 mov qword ptr [r12 + 24], rax
 jmp xchain00018_n33_α
 xchain00018_n32_β:
 inc qword ptr [r12 + 32]
 jmp .Lx00037_0
# IR_SUSPEND yield+resume
 xchain00018_n33_α:
 lea rax, [rip + xchain00018_n33_β]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 8], rax
 jmp proc_aseq_γ
 xchain00018_n33_β:
 jmp proc_aseq_ω
proc_aseq_β:
jmp qword ptr [r12 + 560]
proc_aseq_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 576]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 2944], rax
 pop rsi
proc_putchain_α_body:
# IR_VAR gva
 xchain00038_n0_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 jmp xchain00038_n1_α
 xchain00038_n0_β:
 jmp xchain00038_n2_α
# IR_VAR
 xchain00038_n1_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 2928], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 2936], rax
 jmp xchain00038_n3_α
 xchain00038_n1_β:
 jmp xchain00038_n2_α
# IR_VAR gva
 xchain00038_n2_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2800], rax
 mov qword ptr [r12 + 2808], rdx
 jmp xchain00038_n4_α
 xchain00038_n2_β:
 jmp xchain00038_n5_α
 xchain00038_n3_α:
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
  .Lrkfn282: .string "member"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn282]
 lea rsi, [r12 + 2880]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], rdx
 cmp eax, 99
 je xchain00038_n2_α
 jmp xchain00038_n6_α
 xchain00038_n3_β:
 jmp xchain00038_n2_α
# IR_VAR
 xchain00038_n4_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 2816], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 2824], rax
 jmp xchain00038_n7_α
 xchain00038_n4_β:
 jmp xchain00038_n5_α
# IR_VAR
 xchain00038_n5_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 2744], rax
 jmp xchain00038_n8_α
 xchain00038_n5_β:
 jmp xchain00038_n9_α
# IR_RETURN
 xchain00038_n6_α:
 mov rax, qword ptr [r12 + 2864]
 mov rdx, qword ptr [r12 + 2872]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_putchain_γ
 xchain00038_n7_α:
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
  .Lrkfn289: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn289]
 lea rsi, [r12 + 2768]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 cmp eax, 99
 je xchain00038_n5_α
 jmp xchain00038_n5_α
 xchain00038_n7_β:
 jmp xchain00038_n5_α
# IR_GEN_SCAN
 xchain00038_n8_α:
 mov rdi, qword ptr [r12 + 2736]
 mov rsi, qword ptr [r12 + 2744]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00038_n10_α
 xchain00038_n8_β:
 jmp xchain00038_n9_α
# IR_MAKE_LIST
 xchain00038_n9_α:
 lea rdi, [r12 + 2448]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 jmp xchain00038_n11_α
 xchain00038_n9_β:
 jmp xchain00038_n13_α
# IR_LIT_INTEGER
 xchain00038_n10_α:
 mov qword ptr [r12 + 2720], 6
 mov rax, qword ptr [rip + .Lx00039_0]
 mov qword ptr [r12 + 2728], rax
 jmp xchain00038_n12_α
 xchain00038_n10_β:
 jmp xchain00038_n15_α
.Lx00039_0:
 .quad 8
# IR_ASSIGN gva
 xchain00038_n11_α:
 mov rax, qword ptr [r12 + 2432]
 mov rdx, qword ptr [r12 + 2440]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 jmp xchain00038_n13_α
 xchain00038_n11_β:
 jmp xchain00038_n13_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00038_n12_α:
 mov rax, 8
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00038_n15_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00038_n15_α
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
 jmp xchain00038_n14_α
 xchain00038_n12_β:
 mov r14, qword ptr [r12 + 2704]
 jmp xchain00038_n15_α
# IR_MAKE_LIST
 xchain00038_n13_α:
 lea rdi, [r12 + 2416]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 jmp xchain00038_n16_α
 xchain00038_n13_β:
 jmp xchain00038_n18_α
 xchain00038_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2688]
 mov rdx, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 jmp xchain00038_n15_α
 xchain00038_n14_β:
 jmp xchain00038_n15_α
# IR_LIT_INTEGER
 xchain00038_n15_α:
 mov qword ptr [r12 + 2656], 6
 mov rax, qword ptr [rip + .Lx00040_0]
 mov qword ptr [r12 + 2664], rax
 jmp xchain00038_n17_α
 xchain00038_n15_β:
 jmp xchain00038_n20_α
.Lx00040_0:
 .quad 7
# IR_ASSIGN gva
 xchain00038_n16_α:
 mov rax, qword ptr [r12 + 2400]
 mov rdx, qword ptr [r12 + 2408]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 jmp xchain00038_n18_α
 xchain00038_n16_β:
 jmp xchain00038_n18_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00038_n17_α:
 mov rax, 7
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00038_n20_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00038_n20_α
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
 jmp xchain00038_n19_α
 xchain00038_n17_β:
 mov r14, qword ptr [r12 + 2640]
 jmp xchain00038_n20_α
# IR_VAR
 xchain00038_n18_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 2368], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 2376], rax
 jmp xchain00038_n21_α
 xchain00038_n18_β:
 jmp xchain00038_n22_α
 xchain00038_n19_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2624] -> [r12+2608]
 mov rax, qword ptr [r12 + 2624]
 mov qword ptr [r12 + 2608], rax
 mov rax, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 2616], rax
  .section .rodata
  .Lrkfn308: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn308]
 lea rsi, [r12 + 2608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je xchain00038_n20_α
 jmp xchain00038_n23_α
 xchain00038_n19_β:
 jmp xchain00038_n20_α
# IR_VAR
 xchain00038_n20_α:
 mov rax, qword ptr [r12 + 3136]
 mov qword ptr [r12 + 2544], rax
 mov rax, qword ptr [r12 + 3144]
 mov qword ptr [r12 + 2552], rax
 jmp xchain00038_n24_α
 xchain00038_n20_β:
 jmp xchain00038_n25_α
 xchain00038_n21_α:
  .section .rodata
  .Lcall00041_pname: .string "putdel"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2368]
 mov rdx, qword ptr [r12 + 2376]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00041_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 cmp eax, 99
 je xchain00038_n22_α
 jmp xchain00038_n26_α
xchain00038_n21_β:
 jmp xchain00038_n22_α
# IR_VAR
 xchain00038_n22_α:
 mov rax, qword ptr [r12 + 3120]
 mov qword ptr [r12 + 2160], rax
 mov rax, qword ptr [r12 + 3128]
 mov qword ptr [r12 + 2168], rax
 jmp xchain00038_n27_α
 xchain00038_n22_β:
 jmp xchain00038_n28_α
 xchain00038_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2592]
 mov rdx, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 jmp xchain00038_n20_α
 xchain00038_n23_β:
 jmp xchain00038_n20_α
# IR_VAR
 xchain00038_n24_α:
 mov rax, qword ptr [r12 + 3024]
 mov qword ptr [r12 + 2560], rax
 mov rax, qword ptr [r12 + 3032]
 mov qword ptr [r12 + 2568], rax
 jmp xchain00038_n29_α
 xchain00038_n24_β:
 jmp xchain00038_n25_α
# IR_GEN_SCAN
 xchain00038_n25_α:
 lea rdi, [r12 + 2448]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 2448]
 mov r14, qword ptr [r12 + 2456]
 mov r15, qword ptr [r12 + 2464]
 jmp xchain00038_n9_α
 xchain00038_n25_β:
 jmp xchain00038_n9_α
 xchain00038_n26_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2336]
 mov rdx, qword ptr [r12 + 2344]
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 jmp xchain00038_n22_α
 xchain00038_n26_β:
 jmp xchain00038_n22_α
 xchain00038_n27_α:
  .section .rodata
  .Lcall00042_pname: .string "successor"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2160]
 mov rdx, qword ptr [r12 + 2168]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00042_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 cmp eax, 99
 je xchain00038_n28_α
 jmp xchain00038_n30_α
xchain00038_n27_β:
 jmp xchain00038_n28_α
 xchain00038_n28_α:
  .section .rodata
  .Lcall00043_pname: .string "collapse"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00043_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 cmp eax, 99
 je xchain00038_n31_α
 jmp xchain00038_n31_α
xchain00038_n28_β:
 jmp xchain00038_n31_α
 xchain00038_n29_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 3136]
 cmp eax, 100
 je .Lx00044_0
 mov eax, dword ptr [r12 + 3024]
 cmp eax, 100
 je .Lx00044_0
 mov eax, dword ptr [r12 + 3136]
 cmp eax, 6
 jne .Lx00044_2
 mov eax, dword ptr [r12 + 3024]
 cmp eax, 6
 jne .Lx00044_2
.Lx00044_1:
 mov rax, qword ptr [r12 + 3144]
 mov rcx, qword ptr [r12 + 3032]
 sub rax, rcx
 mov qword ptr [r12 + 2528], 6
 mov qword ptr [r12 + 2536], rax
 jmp xchain00038_n32_α
.Lx00044_0:
 mov rdi, qword ptr [r12 + 3136]
 mov rsi, qword ptr [r12 + 3144]
 mov rdx, qword ptr [r12 + 3024]
 mov rcx, qword ptr [r12 + 3032]
 mov r8d, 1
 lea r9, [r12 + 2528]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00044_3
.Lx00044_2:
 mov rdi, qword ptr [r12 + 3136]
 mov rsi, qword ptr [r12 + 3144]
 mov rdx, qword ptr [r12 + 3024]
 mov rcx, qword ptr [r12 + 3032]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00038_n25_α
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
.Lx00044_3:
 jmp xchain00038_n32_α
 xchain00038_n29_β:
 jmp xchain00038_n25_α
 xchain00038_n30_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2128]
 mov rdx, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 jmp xchain00038_n33_α
 xchain00038_n30_β:
 jmp xchain00038_n28_α
# IR_VAR
 xchain00038_n31_α:
 mov rax, qword ptr [r12 + 3024]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 3032]
 mov qword ptr [r12 + 2088], rax
 jmp xchain00038_n34_α
 xchain00038_n31_β:
 jmp xchain00038_n35_α
 xchain00038_n32_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2528]
 mov rdx, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 3040], rax
 mov qword ptr [r12 + 3048], rdx
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 jmp xchain00038_n36_α
 xchain00038_n32_β:
 jmp xchain00038_n25_α
# IR_VAR gva
 xchain00038_n33_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain00038_n37_α
 xchain00038_n33_β:
 jmp xchain00038_n38_α
 xchain00038_n34_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2080]
 mov rdx, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 3088], rax
 mov qword ptr [r12 + 3096], rdx
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain00038_n39_α
 xchain00038_n34_β:
 jmp xchain00038_n35_α
# IR_VAR
 xchain00038_n35_α:
 mov rax, qword ptr [r12 + 3040]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 3048]
 mov qword ptr [r12 + 2024], rax
 jmp xchain00038_n40_α
 xchain00038_n35_β:
 jmp xchain00038_n41_α
 xchain00038_n36_α:
 jmp xchain00038_n42_α
xchain00038_n36_β:
 jmp xchain00038_n25_α
# IR_VAR
 xchain00038_n37_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 2304], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 2312], rax
 jmp xchain00038_n43_α
 xchain00038_n37_β:
 jmp xchain00038_n38_α
# IR_VAR
 xchain00038_n38_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 2232], rax
 jmp xchain00038_n44_α
 xchain00038_n38_β:
 jmp xchain00038_n22_α
 xchain00038_n39_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2064]
 mov rdx, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 3104], rax
 mov qword ptr [r12 + 3112], rdx
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 jmp xchain00038_n45_α
 xchain00038_n39_β:
 jmp xchain00038_n35_α
 xchain00038_n40_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2016]
 mov rdx, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain00038_n46_α
 xchain00038_n40_β:
 jmp xchain00038_n41_α
# IR_VAR
 xchain00038_n41_α:
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 1784], rax
 jmp xchain00038_n47_α
 xchain00038_n41_β:
 jmp xchain00038_n48_α
# IR_GEN_SCAN
 xchain00038_n42_α:
 lea rdi, [r12 + 2448]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 2448]
 mov r14, qword ptr [r12 + 2456]
 mov r15, qword ptr [r12 + 2464]
 jmp xchain00038_n9_α
 xchain00038_n42_β:
 jmp xchain00038_n9_α
 xchain00038_n43_α:
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
  .Lrkfn343: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn343]
 lea rsi, [r12 + 2256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 cmp eax, 99
 je xchain00038_n38_α
 jmp xchain00038_n38_α
 xchain00038_n43_β:
 jmp xchain00038_n38_α
 xchain00038_n44_α:
  .section .rodata
  .Lcall00045_pname: .string "putdel"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2224]
 mov rdx, qword ptr [r12 + 2232]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00045_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 cmp eax, 99
 je xchain00038_n22_α
 jmp xchain00038_n49_α
xchain00038_n44_β:
 jmp xchain00038_n22_α
 xchain00038_n45_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2048]
 mov rdx, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 2992], rax
 mov qword ptr [r12 + 3000], rdx
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 jmp xchain00038_n35_α
 xchain00038_n45_β:
 jmp xchain00038_n35_α
 xchain00038_n46_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2000]
 mov rdx, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 3072], rax
 mov qword ptr [r12 + 3080], rdx
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xchain00038_n50_α
 xchain00038_n46_β:
 jmp xchain00038_n41_α
# IR_VAR gva
 xchain00038_n47_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 jmp xchain00038_n51_α
 xchain00038_n47_β:
 jmp xchain00038_n48_α
# IR_VAR
 xchain00038_n48_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1552], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1560], rax
 jmp xchain00038_n52_α
 xchain00038_n48_β:
 jmp xchain00038_n53_α
 xchain00038_n49_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2192]
 mov rdx, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain00038_n54_α
 xchain00038_n49_β:
 jmp xchain00038_n22_α
 xchain00038_n50_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1984]
 mov rdx, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 jmp xchain00038_n41_α
 xchain00038_n50_β:
 jmp xchain00038_n41_α
# IR_LIST_BANG
 xchain00038_n51_α:
 mov qword ptr [r12 + 1808], 0
.Lx00046_0:
 mov rdi, qword ptr [r12 + 1824]
 mov rsi, qword ptr [r12 + 1832]
 mov rdx, qword ptr [r12 + 1808]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 cmp rax, 99
 je xchain00038_n48_α
 jmp xchain00038_n55_α
 xchain00038_n51_β:
 inc qword ptr [r12 + 1808]
 jmp .Lx00046_0
# IR_VAR gva
 xchain00038_n52_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00038_n56_α
 xchain00038_n52_β:
 jmp xchain00038_n53_α
# IR_VAR
 xchain00038_n53_α:
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 1496], rax
 jmp xchain00038_n57_α
 xchain00038_n53_β:
 jmp xchain00038_n58_α
 xchain00038_n54_α:
 jmp xchain00038_n22_α
xchain00038_n54_β:
 jmp xchain00038_n22_α
 xchain00038_n55_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 100
 je .Lx00047_0
 mov eax, dword ptr [r12 + 1792]
 cmp eax, 100
 je .Lx00047_0
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 6
 jne .Lx00047_2
 mov eax, dword ptr [r12 + 1792]
 cmp eax, 6
 jne .Lx00047_2
.Lx00047_1:
 mov rax, qword ptr [r12 + 3000]
 mov rcx, qword ptr [r12 + 1800]
 add rax, rcx
 mov qword ptr [r12 + 1760], 6
 mov qword ptr [r12 + 1768], rax
 jmp xchain00038_n59_α
.Lx00047_0:
 mov rdi, qword ptr [r12 + 2992]
 mov rsi, qword ptr [r12 + 3000]
 mov rdx, qword ptr [r12 + 1792]
 mov rcx, qword ptr [r12 + 1800]
 mov r8d, 0
 lea r9, [r12 + 1760]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00047_3
.Lx00047_2:
 mov rdi, qword ptr [r12 + 2992]
 mov rsi, qword ptr [r12 + 3000]
 mov rdx, qword ptr [r12 + 1792]
 mov rcx, qword ptr [r12 + 1800]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00038_n48_α
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
.Lx00047_3:
 jmp xchain00038_n59_α
 xchain00038_n55_β:
 jmp xchain00038_n48_α
# IR_LIST_BANG
 xchain00038_n56_α:
 mov qword ptr [r12 + 1584], 0
.Lx00048_0:
 mov rdi, qword ptr [r12 + 1600]
 mov rsi, qword ptr [r12 + 1608]
 mov rdx, qword ptr [r12 + 1584]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 cmp rax, 99
 je xchain00038_n53_α
 jmp xchain00038_n60_α
 xchain00038_n56_β:
 inc qword ptr [r12 + 1584]
 jmp .Lx00048_0
# IR_VAR
 xchain00038_n57_α:
 mov rax, qword ptr [r12 + 3104]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 3112]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00038_n61_α
 xchain00038_n57_β:
 jmp xchain00038_n58_α
# IR_VAR
 xchain00038_n58_α:
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00038_n62_α
 xchain00038_n58_β:
 jmp xchain00038_n63_α
 xchain00038_n59_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1760]
 mov rdx, qword ptr [r12 + 1768]
 mov qword ptr [r12 + 2992], rax
 mov qword ptr [r12 + 3000], rdx
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain00038_n64_α
 xchain00038_n59_β:
 jmp xchain00038_n48_α
 xchain00038_n60_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 100
 je .Lx00049_0
 mov eax, dword ptr [r12 + 1568]
 cmp eax, 100
 je .Lx00049_0
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 6
 jne .Lx00049_2
 mov eax, dword ptr [r12 + 1568]
 cmp eax, 6
 jne .Lx00049_2
.Lx00049_1:
 mov rax, qword ptr [r12 + 2984]
 mov rcx, qword ptr [r12 + 1576]
 add rax, rcx
 mov qword ptr [r12 + 1536], 6
 mov qword ptr [r12 + 1544], rax
 jmp xchain00038_n65_α
.Lx00049_0:
 mov rdi, qword ptr [r12 + 2976]
 mov rsi, qword ptr [r12 + 2984]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 mov r8d, 0
 lea r9, [r12 + 1536]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00049_3
.Lx00049_2:
 mov rdi, qword ptr [r12 + 2976]
 mov rsi, qword ptr [r12 + 2984]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00038_n53_α
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
.Lx00049_3:
 jmp xchain00038_n65_α
 xchain00038_n60_β:
 jmp xchain00038_n53_α
 xchain00038_n61_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 100
 je .Lx00050_0
 mov eax, dword ptr [r12 + 3104]
 cmp eax, 100
 je .Lx00050_0
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 6
 jne .Lx00050_2
 mov eax, dword ptr [r12 + 3104]
 cmp eax, 6
 jne .Lx00050_2
.Lx00050_1:
 mov rax, qword ptr [r12 + 3000]
 mov rcx, qword ptr [r12 + 3112]
 sub rax, rcx
 mov qword ptr [r12 + 1472], 6
 mov qword ptr [r12 + 1480], rax
 jmp xchain00038_n66_α
.Lx00050_0:
 mov rdi, qword ptr [r12 + 2992]
 mov rsi, qword ptr [r12 + 3000]
 mov rdx, qword ptr [r12 + 3104]
 mov rcx, qword ptr [r12 + 3112]
 mov r8d, 1
 lea r9, [r12 + 1472]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00050_3
.Lx00050_2:
 mov rdi, qword ptr [r12 + 2992]
 mov rsi, qword ptr [r12 + 3000]
 mov rdx, qword ptr [r12 + 3104]
 mov rcx, qword ptr [r12 + 3112]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00038_n58_α
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
.Lx00050_3:
 jmp xchain00038_n66_α
 xchain00038_n61_β:
 jmp xchain00038_n58_α
# IR_VAR
 xchain00038_n62_α:
 mov rax, qword ptr [r12 + 3088]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 3096]
 mov qword ptr [r12 + 1432], rax
 jmp xchain00038_n67_α
 xchain00038_n62_β:
 jmp xchain00038_n63_α
# IR_VAR
 xchain00038_n63_α:
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00038_n68_α
 xchain00038_n63_β:
 jmp xchain00038_n69_α
# IR_VAR
 xchain00038_n64_α:
 mov rax, qword ptr [r12 + 3104]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 3112]
 mov qword ptr [r12 + 1944], rax
 jmp xchain00038_n70_α
 xchain00038_n64_β:
 jmp xchain00038_n71_α
 xchain00038_n65_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1536]
 mov rdx, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain00038_n72_α
 xchain00038_n65_β:
 jmp xchain00038_n53_α
 xchain00038_n66_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1472]
 mov rdx, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain00038_n58_α
 xchain00038_n66_β:
 jmp xchain00038_n58_α
# IR_VAR
 xchain00038_n67_α:
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00038_n73_α
 xchain00038_n67_β:
 jmp xchain00038_n63_α
# IR_VAR
 xchain00038_n68_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1336], rax
 jmp xchain00038_n74_α
 xchain00038_n68_β:
 jmp xchain00038_n69_α
# IR_VAR
 xchain00038_n69_α:
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 1208], rax
 jmp xchain00038_n75_α
 xchain00038_n69_β:
 jmp xchain00038_n76_α
# IR_VAR
 xchain00038_n70_α:
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 1960], rax
 jmp xchain00038_n77_α
 xchain00038_n70_β:
 jmp xchain00038_n71_α
# IR_VAR
 xchain00038_n71_α:
 mov rax, qword ptr [r12 + 3088]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 3096]
 mov qword ptr [r12 + 1880], rax
 jmp xchain00038_n78_α
 xchain00038_n71_β:
 jmp xchain00038_n51_β
# IR_VAR
 xchain00038_n72_α:
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 1720], rax
 jmp xchain00038_n79_α
 xchain00038_n72_β:
 jmp xchain00038_n80_α
 xchain00038_n73_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 3088]
 cmp eax, 100
 je .Lx00051_0
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 100
 je .Lx00051_0
 mov eax, dword ptr [r12 + 3088]
 cmp eax, 6
 jne .Lx00051_2
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 6
 jne .Lx00051_2
.Lx00051_1:
 mov rax, qword ptr [r12 + 3096]
 mov rcx, qword ptr [r12 + 3000]
 sub rax, rcx
 mov qword ptr [r12 + 1408], 6
 mov qword ptr [r12 + 1416], rax
 jmp xchain00038_n81_α
.Lx00051_0:
 mov rdi, qword ptr [r12 + 3088]
 mov rsi, qword ptr [r12 + 3096]
 mov rdx, qword ptr [r12 + 2992]
 mov rcx, qword ptr [r12 + 3000]
 mov r8d, 1
 lea r9, [r12 + 1408]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00051_3
.Lx00051_2:
 mov rdi, qword ptr [r12 + 3088]
 mov rsi, qword ptr [r12 + 3096]
 mov rdx, qword ptr [r12 + 2992]
 mov rcx, qword ptr [r12 + 3000]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00038_n63_α
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
.Lx00051_3:
 jmp xchain00038_n81_α
 xchain00038_n73_β:
 jmp xchain00038_n63_α
# IR_VAR
 xchain00038_n74_α:
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 1352], rax
 jmp xchain00038_n82_α
 xchain00038_n74_β:
 jmp xchain00038_n69_α
# IR_VAR
 xchain00038_n75_α:
 mov rax, qword ptr [r12 + 3056]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 3064]
 mov qword ptr [r12 + 1240], rax
 jmp xchain00038_n83_α
 xchain00038_n75_β:
 jmp xchain00038_n76_α
# IR_VAR
 xchain00038_n76_α:
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 1144], rax
 jmp xchain00038_n84_α
 xchain00038_n76_β:
 jmp xchain00038_n85_α
 xchain00038_n77_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3104]
 cmp eax, 100
 je .Lx00052_0
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 100
 je .Lx00052_0
 mov eax, dword ptr [r12 + 3104]
 cmp eax, 6
 jne .Lx00052_2
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 6
 jne .Lx00052_2
.Lx00052_1:
 mov rax, qword ptr [r12 + 3112]
 mov rcx, qword ptr [r12 + 3000]
 cmp rax, rcx
 jle xchain00038_n71_α
 mov rcx, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 1920], rcx
 mov rcx, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 1928], rcx
 jmp xchain00038_n86_α
.Lx00052_0:
 mov rdi, qword ptr [r12 + 3104]
 mov rsi, qword ptr [r12 + 3112]
 mov rdx, qword ptr [r12 + 2992]
 mov rcx, qword ptr [r12 + 3000]
 mov r8d, 7
 lea r9, [r12 + 1920]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00052_1
 cmp eax, 1
 je xchain00038_n71_α
 jmp xchain00038_n86_α
.Lx00052_2:
 mov rdi, qword ptr [r12 + 3104]
 mov rsi, qword ptr [r12 + 3112]
 mov rdx, qword ptr [r12 + 2992]
 mov rcx, qword ptr [r12 + 3000]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00038_n71_α
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 1920], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 1928], rax
 jmp xchain00038_n86_α
 xchain00038_n77_β:
 jmp xchain00038_n71_α
# IR_VAR
 xchain00038_n78_α:
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 1896], rax
 jmp xchain00038_n87_α
 xchain00038_n78_β:
 jmp xchain00038_n51_β
# IR_VAR
 xchain00038_n79_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1736], rax
 jmp xchain00038_n88_α
 xchain00038_n79_β:
 jmp xchain00038_n80_α
# IR_VAR
 xchain00038_n80_α:
 mov rax, qword ptr [r12 + 3056]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 3064]
 mov qword ptr [r12 + 1656], rax
 jmp xchain00038_n89_α
 xchain00038_n80_β:
 jmp xchain00038_n56_β
 xchain00038_n81_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3008]
 cmp eax, 100
 je .Lx00053_0
 mov eax, dword ptr [r12 + 1408]
 cmp eax, 100
 je .Lx00053_0
 mov eax, dword ptr [r12 + 3008]
 cmp eax, 6
 jne .Lx00053_2
 mov eax, dword ptr [r12 + 1408]
 cmp eax, 6
 jne .Lx00053_2
.Lx00053_1:
 mov rax, qword ptr [r12 + 3016]
 mov rcx, qword ptr [r12 + 1416]
 cmp rax, rcx
 jge xchain00038_n63_α
 mov rcx, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1376], rcx
 mov rcx, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1384], rcx
 jmp xchain00038_n90_α
.Lx00053_0:
 mov rdi, qword ptr [r12 + 3008]
 mov rsi, qword ptr [r12 + 3016]
 mov rdx, qword ptr [r12 + 1408]
 mov rcx, qword ptr [r12 + 1416]
 mov r8d, 5
 lea r9, [r12 + 1376]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00053_1
 cmp eax, 1
 je xchain00038_n63_α
 jmp xchain00038_n90_α
.Lx00053_2:
 mov rdi, qword ptr [r12 + 3008]
 mov rsi, qword ptr [r12 + 3016]
 mov rdx, qword ptr [r12 + 1408]
 mov rcx, qword ptr [r12 + 1416]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00038_n63_α
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1384], rax
 jmp xchain00038_n90_α
 xchain00038_n81_β:
 jmp xchain00038_n63_α
 xchain00038_n82_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 100
 je .Lx00054_0
 mov eax, dword ptr [r12 + 3072]
 cmp eax, 100
 je .Lx00054_0
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 6
 jne .Lx00054_2
 mov eax, dword ptr [r12 + 3072]
 cmp eax, 6
 jne .Lx00054_2
.Lx00054_1:
 mov rax, qword ptr [r12 + 2984]
 mov rcx, qword ptr [r12 + 3080]
 sub rax, rcx
 mov qword ptr [r12 + 1312], 6
 mov qword ptr [r12 + 1320], rax
 jmp xchain00038_n91_α
.Lx00054_0:
 mov rdi, qword ptr [r12 + 2976]
 mov rsi, qword ptr [r12 + 2984]
 mov rdx, qword ptr [r12 + 3072]
 mov rcx, qword ptr [r12 + 3080]
 mov r8d, 1
 lea r9, [r12 + 1312]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00054_3
.Lx00054_2:
 mov rdi, qword ptr [r12 + 2976]
 mov rsi, qword ptr [r12 + 2984]
 mov rdx, qword ptr [r12 + 3072]
 mov rcx, qword ptr [r12 + 3080]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00038_n69_α
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
.Lx00054_3:
 jmp xchain00038_n91_α
 xchain00038_n82_β:
 jmp xchain00038_n69_α
# IR_VAR
 xchain00038_n83_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1256], rax
 jmp xchain00038_n92_α
 xchain00038_n83_β:
 jmp xchain00038_n76_α
# IR_LIT_INTEGER
 xchain00038_n84_α:
 mov qword ptr [r12 + 1152], 6
 mov rax, qword ptr [rip + .Lx00055_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain00038_n93_α
 xchain00038_n84_β:
 jmp xchain00038_n85_α
.Lx00055_0:
 .quad 9999
# IR_VAR
 xchain00038_n85_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 856], rax
 jmp xchain00038_n94_α
 xchain00038_n85_β:
 jmp xchain00038_n95_α
 xchain00038_n86_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1920]
 mov rdx, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 3104], rax
 mov qword ptr [r12 + 3112], rdx
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain00038_n71_α
 xchain00038_n86_β:
 jmp xchain00038_n71_α
 xchain00038_n87_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3088]
 cmp eax, 100
 je .Lx00056_0
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 100
 je .Lx00056_0
 mov eax, dword ptr [r12 + 3088]
 cmp eax, 6
 jne .Lx00056_2
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 6
 jne .Lx00056_2
.Lx00056_1:
 mov rax, qword ptr [r12 + 3096]
 mov rcx, qword ptr [r12 + 3000]
 cmp rax, rcx
 jge xchain00038_n51_β
 mov rcx, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 1856], rcx
 mov rcx, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 1864], rcx
 jmp xchain00038_n96_α
.Lx00056_0:
 mov rdi, qword ptr [r12 + 3088]
 mov rsi, qword ptr [r12 + 3096]
 mov rdx, qword ptr [r12 + 2992]
 mov rcx, qword ptr [r12 + 3000]
 mov r8d, 5
 lea r9, [r12 + 1856]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00056_1
 cmp eax, 1
 je xchain00038_n51_β
 jmp xchain00038_n96_α
.Lx00056_2:
 mov rdi, qword ptr [r12 + 3088]
 mov rsi, qword ptr [r12 + 3096]
 mov rdx, qword ptr [r12 + 2992]
 mov rcx, qword ptr [r12 + 3000]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00038_n51_β
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 1864], rax
 jmp xchain00038_n96_α
 xchain00038_n87_β:
 jmp xchain00038_n51_β
 xchain00038_n88_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3072]
 cmp eax, 100
 je .Lx00057_0
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 100
 je .Lx00057_0
 mov eax, dword ptr [r12 + 3072]
 cmp eax, 6
 jne .Lx00057_2
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 6
 jne .Lx00057_2
.Lx00057_1:
 mov rax, qword ptr [r12 + 3080]
 mov rcx, qword ptr [r12 + 2984]
 cmp rax, rcx
 jle xchain00038_n80_α
 mov rcx, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1696], rcx
 mov rcx, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1704], rcx
 jmp xchain00038_n97_α
.Lx00057_0:
 mov rdi, qword ptr [r12 + 3072]
 mov rsi, qword ptr [r12 + 3080]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 7
 lea r9, [r12 + 1696]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00057_1
 cmp eax, 1
 je xchain00038_n80_α
 jmp xchain00038_n97_α
.Lx00057_2:
 mov rdi, qword ptr [r12 + 3072]
 mov rsi, qword ptr [r12 + 3080]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00038_n80_α
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1704], rax
 jmp xchain00038_n97_α
 xchain00038_n88_β:
 jmp xchain00038_n80_α
# IR_VAR
 xchain00038_n89_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00038_n98_α
 xchain00038_n89_β:
 jmp xchain00038_n56_β
 xchain00038_n90_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1376]
 mov rdx, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain00038_n63_α
 xchain00038_n90_β:
 jmp xchain00038_n63_α
 xchain00038_n91_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3008]
 cmp eax, 100
 je .Lx00058_0
 mov eax, dword ptr [r12 + 1312]
 cmp eax, 100
 je .Lx00058_0
 mov eax, dword ptr [r12 + 3008]
 cmp eax, 6
 jne .Lx00058_2
 mov eax, dword ptr [r12 + 1312]
 cmp eax, 6
 jne .Lx00058_2
.Lx00058_1:
 mov rax, qword ptr [r12 + 3016]
 mov rcx, qword ptr [r12 + 1320]
 cmp rax, rcx
 jge xchain00038_n69_α
 mov rcx, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rcx
 mov rcx, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rcx
 jmp xchain00038_n99_α
.Lx00058_0:
 mov rdi, qword ptr [r12 + 3008]
 mov rsi, qword ptr [r12 + 3016]
 mov rdx, qword ptr [r12 + 1312]
 mov rcx, qword ptr [r12 + 1320]
 mov r8d, 5
 lea r9, [r12 + 1280]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00058_1
 cmp eax, 1
 je xchain00038_n69_α
 jmp xchain00038_n99_α
.Lx00058_2:
 mov rdi, qword ptr [r12 + 3008]
 mov rsi, qword ptr [r12 + 3016]
 mov rdx, qword ptr [r12 + 1312]
 mov rcx, qword ptr [r12 + 1320]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00038_n69_α
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rax
 jmp xchain00038_n99_α
 xchain00038_n91_β:
 jmp xchain00038_n69_α
 xchain00038_n92_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 3056]
 cmp eax, 100
 je .Lx00059_0
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 100
 je .Lx00059_0
 mov eax, dword ptr [r12 + 3056]
 cmp eax, 6
 jne .Lx00059_2
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 6
 jne .Lx00059_2
.Lx00059_1:
 mov rax, qword ptr [r12 + 3064]
 mov rcx, qword ptr [r12 + 2984]
 sub rax, rcx
 mov qword ptr [r12 + 1216], 6
 mov qword ptr [r12 + 1224], rax
 jmp xchain00038_n00060_α
.Lx00059_0:
 mov rdi, qword ptr [r12 + 3056]
 mov rsi, qword ptr [r12 + 3064]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 1
 lea r9, [r12 + 1216]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00059_3
.Lx00059_2:
 mov rdi, qword ptr [r12 + 3056]
 mov rsi, qword ptr [r12 + 3064]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00038_n76_α
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
.Lx00059_3:
 jmp xchain00038_n00060_α
 xchain00038_n92_β:
 jmp xchain00038_n76_α
 xchain00038_n93_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3008]
 cmp eax, 100
 je .Lx00061_0
 mov eax, dword ptr [r12 + 1152]
 cmp eax, 100
 je .Lx00061_0
 mov eax, dword ptr [r12 + 3008]
 cmp eax, 6
 jne .Lx00061_2
 mov eax, dword ptr [r12 + 1152]
 cmp eax, 6
 jne .Lx00061_2
.Lx00061_1:
 mov rax, qword ptr [r12 + 3016]
 mov rcx, qword ptr [r12 + 1160]
 cmp rax, rcx
 jle xchain00038_n85_α
 mov rcx, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rcx
 mov rcx, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rcx
 jmp xchain00038_n00001_α
.Lx00061_0:
 mov rdi, qword ptr [r12 + 3008]
 mov rsi, qword ptr [r12 + 3016]
 mov rdx, qword ptr [r12 + 1152]
 mov rcx, qword ptr [r12 + 1160]
 mov r8d, 7
 lea r9, [r12 + 1120]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00061_1
 cmp eax, 1
 je xchain00038_n85_α
 jmp xchain00038_n00001_α
.Lx00061_2:
 mov rdi, qword ptr [r12 + 3008]
 mov rsi, qword ptr [r12 + 3016]
 mov rdx, qword ptr [r12 + 1152]
 mov rcx, qword ptr [r12 + 1160]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00038_n85_α
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00038_n00001_α
 xchain00038_n93_β:
 jmp xchain00038_n85_α
# IR_VAR
 xchain00038_n94_α:
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 920], rax
 jmp xchain00038_n00062_α
 xchain00038_n94_β:
 jmp xchain00038_n95_α
# IR_VAR gva
 xchain00038_n95_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00038_n00063_α
 xchain00038_n95_β:
 jmp xchain00038_n00064_α
 xchain00038_n96_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1856]
 mov rdx, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 3088], rax
 mov qword ptr [r12 + 3096], rdx
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 jmp xchain00038_n00065_α
 xchain00038_n96_β:
 jmp xchain00038_n51_β
 xchain00038_n97_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1696]
 mov rdx, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 3072], rax
 mov qword ptr [r12 + 3080], rdx
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain00038_n80_α
 xchain00038_n97_β:
 jmp xchain00038_n80_α
 xchain00038_n98_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3056]
 cmp eax, 100
 je .Lx00066_0
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 100
 je .Lx00066_0
 mov eax, dword ptr [r12 + 3056]
 cmp eax, 6
 jne .Lx00066_2
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 6
 jne .Lx00066_2
.Lx00066_1:
 mov rax, qword ptr [r12 + 3064]
 mov rcx, qword ptr [r12 + 2984]
 cmp rax, rcx
 jge xchain00038_n56_β
 mov rcx, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1632], rcx
 mov rcx, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1640], rcx
 jmp xchain00038_n00067_α
.Lx00066_0:
 mov rdi, qword ptr [r12 + 3056]
 mov rsi, qword ptr [r12 + 3064]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 5
 lea r9, [r12 + 1632]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00066_1
 cmp eax, 1
 je xchain00038_n56_β
 jmp xchain00038_n00067_α
.Lx00066_2:
 mov rdi, qword ptr [r12 + 3056]
 mov rsi, qword ptr [r12 + 3064]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00038_n56_β
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1640], rax
 jmp xchain00038_n00067_α
 xchain00038_n98_β:
 jmp xchain00038_n56_β
 xchain00038_n99_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1280]
 mov rdx, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain00038_n69_α
 xchain00038_n99_β:
 jmp xchain00038_n69_α
 xchain00038_n00060_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3008]
 cmp eax, 100
 je .Lx00068_0
 mov eax, dword ptr [r12 + 1216]
 cmp eax, 100
 je .Lx00068_0
 mov eax, dword ptr [r12 + 3008]
 cmp eax, 6
 jne .Lx00068_2
 mov eax, dword ptr [r12 + 1216]
 cmp eax, 6
 jne .Lx00068_2
.Lx00068_1:
 mov rax, qword ptr [r12 + 3016]
 mov rcx, qword ptr [r12 + 1224]
 cmp rax, rcx
 jge xchain00038_n76_α
 mov rcx, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1184], rcx
 mov rcx, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1192], rcx
 jmp xchain00038_n00069_α
.Lx00068_0:
 mov rdi, qword ptr [r12 + 3008]
 mov rsi, qword ptr [r12 + 3016]
 mov rdx, qword ptr [r12 + 1216]
 mov rcx, qword ptr [r12 + 1224]
 mov r8d, 5
 lea r9, [r12 + 1184]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00068_1
 cmp eax, 1
 je xchain00038_n76_α
 jmp xchain00038_n00069_α
.Lx00068_2:
 mov rdi, qword ptr [r12 + 3008]
 mov rsi, qword ptr [r12 + 3016]
 mov rdx, qword ptr [r12 + 1216]
 mov rcx, qword ptr [r12 + 1224]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00038_n76_α
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1192], rax
 jmp xchain00038_n00069_α
 xchain00038_n00060_β:
 jmp xchain00038_n76_α
 xchain00038_n00001_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain00038_n85_α
 xchain00038_n00001_β:
 jmp xchain00038_n85_α
# IR_LIT_INTEGER
 xchain00038_n00062_α:
 mov qword ptr [r12 + 928], 6
 mov rax, qword ptr [rip + .Lx00070_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain00038_n00002_α
 xchain00038_n00062_β:
 jmp xchain00038_n95_α
.Lx00070_0:
 .quad 4
 xchain00038_n00063_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+304] -> [r12+288]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn429: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn429]
 lea rsi, [r12 + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain00038_n00064_α
 jmp xchain00038_n00071_α
 xchain00038_n00063_β:
 jmp xchain00038_n00064_α
# IR_VAR
 xchain00038_n00064_α:
 mov rax, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 184], rax
 jmp xchain00038_n00072_α
 xchain00038_n00064_β:
 jmp xchain00038_n00073_α
 xchain00038_n00065_α:
 jmp xchain00038_n51_β
xchain00038_n00065_β:
 jmp xchain00038_n51_β
 xchain00038_n00067_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1632]
 mov rdx, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xchain00038_n00074_α
 xchain00038_n00067_β:
 jmp xchain00038_n56_β
 xchain00038_n00069_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1184]
 mov rdx, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain00038_n76_α
 xchain00038_n00069_β:
 jmp xchain00038_n76_α
 xchain00038_n00002_α:
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
  .Lrkfn436: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn436]
 lea rsi, [r12 + 880]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain00038_n95_α
 jmp xchain00038_n00075_α
 xchain00038_n00002_β:
 jmp xchain00038_n95_α
 xchain00038_n00071_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 2992], rax
 mov qword ptr [r12 + 3000], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00038_n00003_α
 xchain00038_n00071_β:
 jmp xchain00038_n00064_α
# IR_UNOP
 xchain00038_n00072_α:
 mov eax, dword ptr [r12 + 2960]
 cmp eax, 99
 je xchain00038_n00073_α
 cmp eax, 0
 jne xchain00038_n00073_α
 mov qword ptr [r12 + 160], 0
 mov qword ptr [r12 + 168], 0
 jmp xchain00038_n00076_α
 xchain00038_n00072_β:
 jmp xchain00038_n00073_α
 xchain00038_n00073_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn440: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn440]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00038_n00077_α
 jmp xchain00038_n00077_α
 xchain00038_n00073_β:
 jmp xchain00038_n00077_α
 xchain00038_n00074_α:
 jmp xchain00038_n56_β
xchain00038_n00074_β:
 jmp xchain00038_n56_β
# IR_VAR
 xchain00038_n00075_α:
 mov rax, qword ptr [r12 + 3024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 3032]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00038_n00078_α
 xchain00038_n00075_β:
 jmp xchain00038_n95_α
# IR_VAR gva
 xchain00038_n00003_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00038_n00079_α
 xchain00038_n00003_β:
 jmp xchain00038_n00064_α
# IR_LIT_STRING
 xchain00038_n00076_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00080_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00038_n00081_α
 xchain00038_n00076_β:
 jmp xchain00038_n00073_α
.Lx00080_0:
 .quad .Lx00080_0_s
.Lx00080_0_s:
 .string "50005000"
# IR_RETURN
 xchain00038_n00077_α:
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_putchain_γ
# IR_LIT_INTEGER
 xchain00038_n00078_α:
 mov qword ptr [r12 + 1008], 6
 mov rax, qword ptr [rip + .Lx00082_0]
 mov qword ptr [r12 + 1016], rax
 jmp xchain00038_n00083_α
 xchain00038_n00078_β:
 jmp xchain00038_n95_α
.Lx00082_0:
 .quad 7
 xchain00038_n00079_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+240] -> [r12+224]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn449: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn449]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain00038_n00064_α
 jmp xchain00038_n00012_α
 xchain00038_n00079_β:
 jmp xchain00038_n00064_α
 xchain00038_n00081_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+128]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn451: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn451]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00038_n00073_α
 jmp xchain00038_n00084_α
 xchain00038_n00081_β:
 jmp xchain00038_n00073_α
 xchain00038_n00083_α:
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
  .Lrkfn453: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn453]
 lea rsi, [r12 + 960]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je xchain00038_n95_α
 jmp xchain00038_n00085_α
 xchain00038_n00083_β:
 jmp xchain00038_n95_α
 xchain00038_n00012_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00038_n00086_α
 xchain00038_n00012_β:
 jmp xchain00038_n00064_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00038_n00084_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
 lea rax, [rip + xchain00038_n00073_α]
 mov qword ptr [r12 + 96], rax
 jmp xchain00038_n00073_α
 xchain00038_n00084_β:
 jmp xchain00038_n00073_α
# IR_VAR
 xchain00038_n00085_α:
 mov rax, qword ptr [r12 + 3040]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 3048]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00038_n00087_α
 xchain00038_n00085_β:
 jmp xchain00038_n95_α
 xchain00038_n00086_α:
 jmp xchain00038_n00088_α
xchain00038_n00086_β:
 jmp xchain00038_n00064_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00038_n00004_α:
 jmp qword ptr [r12 + 96]
 xchain00038_n00004_β:
 jmp xchain00038_n00073_α
# IR_LIT_INTEGER
 xchain00038_n00087_α:
 mov qword ptr [r12 + 1088], 6
 mov rax, qword ptr [rip + .Lx00089_0]
 mov qword ptr [r12 + 1096], rax
 jmp xchain00038_n00090_α
 xchain00038_n00087_β:
 jmp xchain00038_n95_α
.Lx00089_0:
 .quad 7
# IR_VAR
 xchain00038_n00088_α:
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 744], rax
 jmp xchain00038_n00091_α
 xchain00038_n00088_β:
 jmp xchain00038_n00092_α
 xchain00038_n00090_α:
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
  .Lrkfn466: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn466]
 lea rsi, [r12 + 1040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 cmp eax, 99
 je xchain00038_n95_α
 jmp xchain00038_n00093_α
 xchain00038_n00090_β:
 jmp xchain00038_n95_α
# IR_LIT_INTEGER
 xchain00038_n00091_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx00094_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain00038_n00005_α
 xchain00038_n00091_β:
 jmp xchain00038_n00092_α
.Lx00094_0:
 .quad 0
# IR_VAR
 xchain00038_n00092_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 696], rax
 jmp xchain00038_n00095_α
 xchain00038_n00092_β:
 jmp xchain00038_n95_α
 xchain00038_n00093_α:
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
  .Lrkfn471: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn471]
 lea rsi, [r12 + 784]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain00038_n95_α
 jmp xchain00038_n95_α
 xchain00038_n00093_β:
 jmp xchain00038_n95_α
 xchain00038_n00005_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 100
 je .Lx00096_0
 mov eax, dword ptr [r12 + 752]
 cmp eax, 100
 je .Lx00096_0
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 6
 jne .Lx00096_2
 mov eax, dword ptr [r12 + 752]
 cmp eax, 6
 jne .Lx00096_2
.Lx00096_1:
 mov rax, qword ptr [r12 + 3000]
 mov rcx, qword ptr [r12 + 760]
 cmp rax, rcx
 je xchain00038_n00092_α
 mov rcx, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rcx
 mov rcx, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rcx
 jmp xchain00038_n00097_α
.Lx00096_0:
 mov rdi, qword ptr [r12 + 2992]
 mov rsi, qword ptr [r12 + 3000]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 mov r8d, 10
 lea r9, [r12 + 720]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00096_1
 cmp eax, 1
 je xchain00038_n00092_α
 jmp xchain00038_n00097_α
.Lx00096_2:
 mov rdi, qword ptr [r12 + 2992]
 mov rsi, qword ptr [r12 + 3000]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00038_n00092_α
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
 jmp xchain00038_n00097_α
 xchain00038_n00005_β:
 jmp xchain00038_n00092_α
# IR_LIT_INTEGER
 xchain00038_n00095_α:
 mov qword ptr [r12 + 704], 6
 mov rax, qword ptr [rip + .Lx00098_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00038_n00099_α
 xchain00038_n00095_β:
 jmp xchain00038_n95_α
.Lx00098_0:
 .quad 0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00038_n00097_α:
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 648], rax
 lea rax, [rip + xchain00038_n00092_α]
 mov qword ptr [r12 + 656], rax
 jmp xchain00038_n00100_α
 xchain00038_n00097_β:
 jmp xchain00038_n95_α
 xchain00038_n00099_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 100
 je .Lx00101_0
 mov eax, dword ptr [r12 + 704]
 cmp eax, 100
 je .Lx00101_0
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 6
 jne .Lx00101_2
 mov eax, dword ptr [r12 + 704]
 cmp eax, 6
 jne .Lx00101_2
.Lx00101_1:
 mov rax, qword ptr [r12 + 2984]
 mov rcx, qword ptr [r12 + 712]
 cmp rax, rcx
 je xchain00038_n95_α
 mov rcx, qword ptr [r12 + 704]
 mov qword ptr [r12 + 672], rcx
 mov rcx, qword ptr [r12 + 712]
 mov qword ptr [r12 + 680], rcx
 jmp xchain00038_n00102_α
.Lx00101_0:
 mov rdi, qword ptr [r12 + 2976]
 mov rsi, qword ptr [r12 + 2984]
 mov rdx, qword ptr [r12 + 704]
 mov rcx, qword ptr [r12 + 712]
 mov r8d, 10
 lea r9, [r12 + 672]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00101_1
 cmp eax, 1
 je xchain00038_n95_α
 jmp xchain00038_n00102_α
.Lx00101_2:
 mov rdi, qword ptr [r12 + 2976]
 mov rsi, qword ptr [r12 + 2984]
 mov rdx, qword ptr [r12 + 704]
 mov rcx, qword ptr [r12 + 712]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00038_n95_α
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 680], rax
 jmp xchain00038_n00102_α
 xchain00038_n00099_β:
 jmp xchain00038_n95_α
# IR_LIT_INTEGER
 xchain00038_n00100_α:
 mov qword ptr [r12 + 480], 6
 mov rax, qword ptr [rip + .Lx00103_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain00038_n00104_α
 xchain00038_n00100_β:
 jmp xchain00038_n95_α
.Lx00103_0:
 .quad 5000
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00038_n00105_α:
 jmp qword ptr [r12 + 656]
 xchain00038_n00105_β:
 jmp xchain00038_n95_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00038_n00102_α:
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
 lea rax, [rip + xchain00038_n95_α]
 mov qword ptr [r12 + 656], rax
 jmp xchain00038_n00100_α
 xchain00038_n00102_β:
 jmp xchain00038_n95_α
# IR_VAR
 xchain00038_n00104_α:
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 504], rax
 jmp xchain00038_n00106_α
 xchain00038_n00104_β:
 jmp xchain00038_n95_α
 xchain00038_n00106_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 480]
 cmp eax, 100
 je .Lx00107_0
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 100
 je .Lx00107_0
 mov eax, dword ptr [r12 + 480]
 cmp eax, 6
 jne .Lx00107_2
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 6
 jne .Lx00107_2
.Lx00107_1:
 mov rax, qword ptr [r12 + 488]
 mov rcx, qword ptr [r12 + 3000]
 add rax, rcx
 mov qword ptr [r12 + 464], 6
 mov qword ptr [r12 + 472], rax
 jmp xchain00038_n00108_α
.Lx00107_0:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 2992]
 mov rcx, qword ptr [r12 + 3000]
 mov r8d, 0
 lea r9, [r12 + 464]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00107_3
.Lx00107_2:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 2992]
 mov rcx, qword ptr [r12 + 3000]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00038_n95_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
.Lx00107_3:
 jmp xchain00038_n00108_α
 xchain00038_n00106_β:
 jmp xchain00038_n95_α
# IR_LIT_INTEGER
 xchain00038_n00108_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00109_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00038_n00015_α
 xchain00038_n00108_β:
 jmp xchain00038_n95_α
.Lx00109_0:
 .quad 4
 xchain00038_n00015_α:
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
 je xchain00038_n95_α
 jmp xchain00038_n00110_α
 xchain00038_n00015_β:
 jmp xchain00038_n95_α
# IR_LIT_INTEGER
 xchain00038_n00110_α:
 mov qword ptr [r12 + 592], 6
 mov rax, qword ptr [rip + .Lx00111_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00038_n00112_α
 xchain00038_n00110_β:
 jmp xchain00038_n95_α
.Lx00111_0:
 .quad 5000
# IR_VAR
 xchain00038_n00112_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 616], rax
 jmp xchain00038_n00113_α
 xchain00038_n00112_β:
 jmp xchain00038_n95_α
 xchain00038_n00113_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 592]
 cmp eax, 100
 je .Lx00114_0
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 100
 je .Lx00114_0
 mov eax, dword ptr [r12 + 592]
 cmp eax, 6
 jne .Lx00114_2
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 6
 jne .Lx00114_2
.Lx00114_1:
 mov rax, qword ptr [r12 + 600]
 mov rcx, qword ptr [r12 + 2984]
 add rax, rcx
 mov qword ptr [r12 + 576], 6
 mov qword ptr [r12 + 584], rax
 jmp xchain00038_n00115_α
.Lx00114_0:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 0
 lea r9, [r12 + 576]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00114_3
.Lx00114_2:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00038_n95_α
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
.Lx00114_3:
 jmp xchain00038_n00115_α
 xchain00038_n00113_β:
 jmp xchain00038_n95_α
# IR_LIT_INTEGER
 xchain00038_n00115_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx00116_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain00038_n00117_α
 xchain00038_n00115_β:
 jmp xchain00038_n95_α
.Lx00116_0:
 .quad 4
 xchain00038_n00117_α:
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
 je xchain00038_n95_α
 jmp xchain00038_n00006_α
 xchain00038_n00117_β:
 jmp xchain00038_n95_α
 xchain00038_n00006_α:
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
 je xchain00038_n95_α
 jmp xchain00038_n00017_α
 xchain00038_n00006_β:
 jmp xchain00038_n95_α
 xchain00038_n00017_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 2960], rax
 mov qword ptr [r12 + 2968], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00038_n00118_α
 xchain00038_n00017_β:
 jmp xchain00038_n95_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00038_n00118_α:
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
 lea rax, [rip + xchain00038_n95_α]
 mov qword ptr [r12 + 336], rax
 jmp xchain00038_n95_α
 xchain00038_n00118_β:
 jmp xchain00038_n95_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00038_n00119_α:
 jmp qword ptr [r12 + 336]
 xchain00038_n00119_β:
 jmp xchain00038_n95_α
proc_putchain_β:
jmp proc_putchain_ω
proc_putchain_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 2944]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1344], rax
 pop rsi
proc_putdel_α_body:
# IR_VAR gva
 xchain00120_n0_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain00120_n1_α
 xchain00120_n0_β:
 jmp xchain00120_n2_α
# IR_VAR
 xchain00120_n1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1336], rax
 jmp xchain00120_n3_α
 xchain00120_n1_β:
 jmp xchain00120_n2_α
# IR_KEYWORD_read
 xchain00120_n2_α:
 mov rdi, qword ptr [rip + .Lx00121_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain00120_n4_α
 xchain00120_n2_β:
 jmp xchain00120_n7_α
.Lx00121_0:
 .quad .Lx00121_0_s
.Lx00121_0_s:
 .string "&progname"
 xchain00120_n3_α:
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
  .Lrkfn508: .string "seek"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn508]
 lea rsi, [r12 + 1280]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 cmp eax, 99
 je xchain00120_n2_α
 jmp xchain00120_n5_α
 xchain00120_n3_β:
 jmp xchain00120_n2_α
# IR_LIT_STRING
 xchain00120_n4_α:
 mov qword ptr [r12 + 1248], 1
 mov rax, qword ptr [rip + .Lx00122_0]
 mov qword ptr [r12 + 1256], rax
 jmp xchain00120_n6_α
 xchain00120_n4_β:
 jmp xchain00120_n7_α
.Lx00122_0:
 .quad .Lx00122_0_s
.Lx00122_0_s:
 .string ":can't reposition input file"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00120_n5_α:
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1144], rax
 lea rax, [rip + xchain00120_n2_α]
 mov qword ptr [r12 + 1152], rax
 jmp xchain00120_n7_α
 xchain00120_n5_β:
 jmp xchain00120_n7_α
 xchain00120_n6_α:
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
  .Lrkfn513: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn513]
 lea rsi, [r12 + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain00120_n7_α
 jmp xchain00120_n9_α
 xchain00120_n6_β:
 jmp xchain00120_n7_α
# IR_VAR gva
 xchain00120_n7_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain00120_n10_α
 xchain00120_n7_β:
 jmp xchain00120_n11_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00120_n8_α:
 jmp qword ptr [r12 + 1152]
 xchain00120_n8_β:
 jmp xchain00120_n7_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00120_n9_α:
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1144], rax
 lea rax, [rip + xchain00120_n7_α]
 mov qword ptr [r12 + 1152], rax
 jmp xchain00120_n7_α
 xchain00120_n9_β:
 jmp xchain00120_n7_α
 xchain00120_n10_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1120] -> [r12+1104]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1112], rax
  .section .rodata
  .Lrkfn520: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn520]
 lea rsi, [r12 + 1104]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je xchain00120_n11_α
 jmp xchain00120_n12_α
 xchain00120_n10_β:
 jmp xchain00120_n11_α
# IR_KEYWORD_read
 xchain00120_n11_α:
 mov rdi, qword ptr [rip + .Lx00123_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00120_n13_α
 xchain00120_n11_β:
 jmp xchain00120_n17_α
.Lx00123_0:
 .quad .Lx00123_0_s
.Lx00123_0_s:
 .string "&progname"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00120_n12_α:
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 968], rax
 lea rax, [rip + xchain00120_n11_α]
 mov qword ptr [r12 + 976], rax
 jmp xchain00120_n14_α
 xchain00120_n12_β:
 jmp xchain00120_n17_α
# IR_LIT_STRING
 xchain00120_n13_α:
 mov qword ptr [r12 + 1072], 1
 mov rax, qword ptr [rip + .Lx00124_0]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00120_n16_α
 xchain00120_n13_β:
 jmp xchain00120_n17_α
.Lx00124_0:
 .quad .Lx00124_0_s
.Lx00124_0_s:
 .string ": input file changed during processing"
 xchain00120_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 960]
 mov rdx, qword ptr [r12 + 968]
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain00120_n17_α
 xchain00120_n14_β:
 jmp xchain00120_n17_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00120_n15_α:
 jmp qword ptr [r12 + 976]
 xchain00120_n15_β:
 jmp xchain00120_n17_α
 xchain00120_n16_α:
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
  .Lrkfn529: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn529]
 lea rsi, [r12 + 1008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain00120_n17_α
 jmp xchain00120_n18_α
 xchain00120_n16_β:
 jmp xchain00120_n17_α
# IR_VAR
 xchain00120_n17_α:
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 936], rax
 jmp xchain00120_n19_α
 xchain00120_n17_β:
 jmp xchain00120_n20_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00120_n18_α:
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 968], rax
 lea rax, [rip + xchain00120_n17_α]
 mov qword ptr [r12 + 976], rax
 jmp xchain00120_n14_α
 xchain00120_n18_β:
 jmp xchain00120_n17_α
 xchain00120_n19_α:
  .section .rodata
  .Lcall00125_pname: .string "crack"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 928]
 mov rdx, qword ptr [r12 + 936]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00125_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain00120_n20_α
 jmp xchain00120_n21_α
xchain00120_n19_β:
 jmp xchain00120_n20_α
# IR_VAR
 xchain00120_n20_α:
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 840], rax
 jmp xchain00120_n22_α
 xchain00120_n20_β:
 jmp xchain00120_n23_α
 xchain00120_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00120_n20_α
 xchain00120_n21_β:
 jmp xchain00120_n20_α
# IR_LIT_INTEGER
 xchain00120_n22_α:
 mov qword ptr [r12 + 848], 6
 mov rax, qword ptr [rip + .Lx00126_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain00120_n24_α
 xchain00120_n22_β:
 jmp xchain00120_n23_α
.Lx00126_0:
 .quad 23
# IR_VAR
 xchain00120_n23_α:
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 40], rax
 jmp xchain00120_n25_α
 xchain00120_n23_β:
 jmp proc_putdel_ω
# IR_LIT_INTEGER
 xchain00120_n24_α:
 mov qword ptr [r12 + 864], 6
 mov rax, qword ptr [rip + .Lx00127_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain00120_n26_α
 xchain00120_n24_β:
 jmp xchain00120_n23_α
.Lx00127_0:
 .quad 0
# IR_RETURN
 xchain00120_n25_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_putdel_γ
# IR_SUBSCRIPT section
 xchain00120_n26_α:
 mov rdi, qword ptr [r12 + 832]
 mov rsi, qword ptr [r12 + 840]
 mov rdx, qword ptr [r12 + 848]
 mov rcx, qword ptr [r12 + 856]
 mov r8, qword ptr [r12 + 864]
 mov r9, qword ptr [r12 + 872]
 call subscript_get2@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00120_n27_α
 xchain00120_n26_β:
 jmp xchain00120_n23_α
# IR_GEN_SCAN
 xchain00120_n27_α:
 mov rdi, qword ptr [r12 + 816]
 mov rsi, qword ptr [r12 + 824]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00120_n28_α
 xchain00120_n27_β:
 jmp xchain00120_n23_α
# IR_VAR
 xchain00120_n28_α:
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 808], rax
 jmp xchain00120_n29_α
 xchain00120_n28_β:
 jmp xchain00120_n30_α
# IR_FIELD_GET
 xchain00120_n29_α:
 mov rdi, qword ptr [rip + .Lx00128_0]
 mov rsi, qword ptr [r12 + 800]
 mov rdx, qword ptr [r12 + 808]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00120_n30_α
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00120_n31_α
 xchain00120_n29_β:
 jmp xchain00120_n30_α
.Lx00128_0:
 .quad .Lx00128_0_s
.Lx00128_0_s:
 .string "rev"
# IR_LIT_INTEGER
 xchain00120_n30_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain00120_n32_α
 xchain00120_n30_β:
 jmp xchain00120_n34_α
.Lx00129_0:
 .quad 0
# IR_UNOP
 xchain00120_n31_α:
 mov eax, dword ptr [r12 + 784]
 cmp eax, 99
 je xchain00120_n30_α
 cmp eax, 0
 jne xchain00120_n30_α
 mov qword ptr [r12 + 768], 0
 mov qword ptr [r12 + 776], 0
 jmp xchain00120_n33_α
 xchain00120_n31_β:
 jmp xchain00120_n30_α
# IR_SCAN_TAB
 xchain00120_n32_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00130_0
 add rax, r15
 add rax, 1
.Lx00130_0:
 cmp rax, 1
 jl xchain00120_n34_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00120_n34_α
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
 jmp xchain00120_n34_α
 xchain00120_n32_β:
 mov r14, qword ptr [r12 + 736]
 jmp xchain00120_n34_α
# IR_VAR gva
 xchain00120_n33_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00120_n35_α
 xchain00120_n33_β:
 jmp xchain00120_n40_α
# IR_VAR gva
 xchain00120_n34_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00120_n37_α
 xchain00120_n34_β:
 jmp xchain00120_n42_α
# IR_LIT_INTEGER
 xchain00120_n35_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx00131_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00120_n39_α
 xchain00120_n35_β:
 jmp xchain00120_n40_α
.Lx00131_0:
 .quad 4
 xchain00120_n36_α:
 jmp xchain00120_n40_α
xchain00120_n36_β:
 jmp xchain00120_n40_α
# IR_LIT_INTEGER
 xchain00120_n37_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00132_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00120_n41_α
 xchain00120_n37_β:
 jmp xchain00120_n42_α
.Lx00132_0:
 .quad 5000
 xchain00120_n38_α:
 jmp xchain00120_n42_α
xchain00120_n38_β:
 jmp xchain00120_n42_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00120_n39_α:
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00120_n40_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00120_n40_α
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
 jmp xchain00120_n43_α
 xchain00120_n39_β:
 mov r14, qword ptr [r12 + 240]
 jmp xchain00120_n40_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00120_n40_α:
 lea rax, [rip + xchain00120_n33_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain00120_n44_α
 xchain00120_n40_β:
 jmp proc_putdel_ω
# IR_LIT_INTEGER
 xchain00120_n41_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx00133_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00120_n46_α
 xchain00120_n41_β:
 jmp xchain00120_n42_α
.Lx00133_0:
 .quad 18446744073709551612
 xchain00120_n42_α:
 jmp xchain00120_n47_α
xchain00120_n42_β:
 jmp proc_putdel_ω
# IR_LIT_INTEGER
 xchain00120_n43_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx00134_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00120_n48_α
 xchain00120_n43_β:
 jmp xchain00120_n40_α
.Lx00134_0:
 .quad 5000
# IR_GEN_SCAN
 xchain00120_n44_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain00120_n23_α
 xchain00120_n44_β:
 jmp xchain00120_n23_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00120_n45_α:
 jmp qword ptr [r12 + 128]
 xchain00120_n45_β:
 jmp proc_putdel_ω
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00120_n46_α:
 mov rax, -4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00120_n42_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00120_n42_α
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
 jmp xchain00120_n49_α
 xchain00120_n46_β:
 mov r14, qword ptr [r12 + 544]
 jmp xchain00120_n42_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00120_n47_α:
 lea rax, [rip + xchain00120_n34_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain00120_n44_α
 xchain00120_n47_β:
 jmp proc_putdel_ω
 xchain00120_n48_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 224]
 cmp eax, 100
 je .Lx00135_0
 mov eax, dword ptr [r12 + 272]
 cmp eax, 100
 je .Lx00135_0
 mov eax, dword ptr [r12 + 224]
 cmp eax, 6
 jne .Lx00135_2
 mov eax, dword ptr [r12 + 272]
 cmp eax, 6
 jne .Lx00135_2
.Lx00135_1:
 mov rax, qword ptr [r12 + 232]
 mov rcx, qword ptr [r12 + 280]
 sub rax, rcx
 mov qword ptr [r12 + 208], 6
 mov qword ptr [r12 + 216], rax
 jmp xchain00120_n50_α
.Lx00135_0:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 mov r8d, 1
 lea r9, [r12 + 208]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00135_3
.Lx00135_2:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00120_n40_α
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
.Lx00135_3:
 jmp xchain00120_n50_α
 xchain00120_n48_β:
 jmp xchain00120_n40_α
 xchain00120_n49_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 512]
 cmp eax, 100
 je .Lx00136_0
 mov eax, dword ptr [r12 + 528]
 cmp eax, 100
 je .Lx00136_0
 mov eax, dword ptr [r12 + 512]
 cmp eax, 6
 jne .Lx00136_2
 mov eax, dword ptr [r12 + 528]
 cmp eax, 6
 jne .Lx00136_2
.Lx00136_1:
 mov rax, qword ptr [r12 + 520]
 mov rcx, qword ptr [r12 + 536]
 sub rax, rcx
 mov qword ptr [r12 + 496], 6
 mov qword ptr [r12 + 504], rax
 jmp xchain00120_n51_α
.Lx00136_0:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 1
 lea r9, [r12 + 496]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00136_3
.Lx00136_2:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00120_n42_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
.Lx00136_3:
 jmp xchain00120_n51_α
 xchain00120_n49_β:
 jmp xchain00120_n42_α
 xchain00120_n50_α:
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
  .Lrkfn577: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn577]
 lea rsi, [r12 + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00120_n40_α
 jmp xchain00120_n52_α
 xchain00120_n50_β:
 jmp xchain00120_n40_α
 xchain00120_n51_α:
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
  .Lrkfn579: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn579]
 lea rsi, [r12 + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain00120_n42_α
 jmp xchain00120_n53_α
 xchain00120_n51_β:
 jmp xchain00120_n42_α
# IR_VAR gva
 xchain00120_n52_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00120_n54_α
 xchain00120_n52_β:
 jmp xchain00120_n33_α
# IR_VAR gva
 xchain00120_n53_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00120_n55_α
 xchain00120_n53_β:
 jmp xchain00120_n34_α
# IR_LIT_INTEGER
 xchain00120_n54_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00137_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00120_n56_α
 xchain00120_n54_β:
 jmp xchain00120_n33_α
.Lx00137_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00120_n55_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx00138_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00120_n57_α
 xchain00120_n55_β:
 jmp xchain00120_n34_α
.Lx00138_0:
 .quad 5000
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00120_n56_α:
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00120_n33_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00120_n33_α
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
 jmp xchain00120_n58_α
 xchain00120_n56_β:
 mov r14, qword ptr [r12 + 384]
 jmp xchain00120_n33_α
# IR_LIT_INTEGER
 xchain00120_n57_α:
 mov qword ptr [r12 + 704], 6
 mov rax, qword ptr [rip + .Lx00139_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00120_n59_α
 xchain00120_n57_β:
 jmp xchain00120_n34_α
.Lx00139_0:
 .quad 18446744073709551612
# IR_LIT_INTEGER
 xchain00120_n58_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00140_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00120_n60_α
 xchain00120_n58_β:
 jmp xchain00120_n33_α
.Lx00140_0:
 .quad 5000
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00120_n59_α:
 mov rax, -4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00120_n34_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00120_n34_α
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
 jmp xchain00120_n61_α
 xchain00120_n59_β:
 mov r14, qword ptr [r12 + 688]
 jmp xchain00120_n34_α
 xchain00120_n60_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 368]
 cmp eax, 100
 je .Lx00141_0
 mov eax, dword ptr [r12 + 416]
 cmp eax, 100
 je .Lx00141_0
 mov eax, dword ptr [r12 + 368]
 cmp eax, 6
 jne .Lx00141_2
 mov eax, dword ptr [r12 + 416]
 cmp eax, 6
 jne .Lx00141_2
.Lx00141_1:
 mov rax, qword ptr [r12 + 376]
 mov rcx, qword ptr [r12 + 424]
 sub rax, rcx
 mov qword ptr [r12 + 352], 6
 mov qword ptr [r12 + 360], rax
 jmp xchain00120_n62_α
.Lx00141_0:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 1
 lea r9, [r12 + 352]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00141_3
.Lx00141_2:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00120_n33_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
.Lx00141_3:
 jmp xchain00120_n62_α
 xchain00120_n60_β:
 jmp xchain00120_n33_α
 xchain00120_n61_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 656]
 cmp eax, 100
 je .Lx00142_0
 mov eax, dword ptr [r12 + 672]
 cmp eax, 100
 je .Lx00142_0
 mov eax, dword ptr [r12 + 656]
 cmp eax, 6
 jne .Lx00142_2
 mov eax, dword ptr [r12 + 672]
 cmp eax, 6
 jne .Lx00142_2
.Lx00142_1:
 mov rax, qword ptr [r12 + 664]
 mov rcx, qword ptr [r12 + 680]
 sub rax, rcx
 mov qword ptr [r12 + 640], 6
 mov qword ptr [r12 + 648], rax
 jmp xchain00120_n63_α
.Lx00142_0:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 mov r8d, 1
 lea r9, [r12 + 640]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00142_3
.Lx00142_2:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00120_n34_α
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
.Lx00142_3:
 jmp xchain00120_n63_α
 xchain00120_n61_β:
 jmp xchain00120_n34_α
 xchain00120_n62_α:
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
  .Lrkfn593: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn593]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00120_n33_α
 jmp xchain00120_n33_α
 xchain00120_n62_β:
 jmp xchain00120_n33_α
 xchain00120_n63_α:
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
 je xchain00120_n34_α
 jmp xchain00120_n34_α
 xchain00120_n63_β:
 jmp xchain00120_n34_α
proc_putdel_β:
jmp proc_putdel_ω
proc_putdel_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1344]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 2544], rax
 pop rsi
proc_collapse_α_body:
# IR_VAR gva
 xchain00143_n0_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 jmp xchain00143_n1_α
 xchain00143_n0_β:
 jmp xchain00143_n2_α
# IR_LIT_INTEGER
 xchain00143_n1_α:
 mov qword ptr [r12 + 2528], 6
 mov rax, qword ptr [rip + .Lx00144_0]
 mov qword ptr [r12 + 2536], rax
 jmp xchain00143_n3_α
 xchain00143_n1_β:
 jmp xchain00143_n2_α
.Lx00144_0:
 .quad 0
# IR_VAR gva
 xchain00143_n2_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 jmp xchain00143_n4_α
 xchain00143_n2_β:
 jmp xchain00143_n5_α
 xchain00143_n3_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2512]
 cmp eax, 100
 je .Lx00145_0
 mov eax, dword ptr [r12 + 2528]
 cmp eax, 100
 je .Lx00145_0
 mov eax, dword ptr [r12 + 2512]
 cmp eax, 6
 jne .Lx00145_2
 mov eax, dword ptr [r12 + 2528]
 cmp eax, 6
 jne .Lx00145_2
.Lx00145_1:
 mov rax, qword ptr [r12 + 2520]
 mov rcx, qword ptr [r12 + 2536]
 cmp rax, rcx
 jg xchain00143_n2_α
 mov rcx, qword ptr [r12 + 2528]
 mov qword ptr [r12 + 2496], rcx
 mov rcx, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 2504], rcx
 jmp xchain00143_n6_α
.Lx00145_0:
 mov rdi, qword ptr [r12 + 2512]
 mov rsi, qword ptr [r12 + 2520]
 mov rdx, qword ptr [r12 + 2528]
 mov rcx, qword ptr [r12 + 2536]
 mov r8d, 6
 lea r9, [r12 + 2496]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00145_1
 cmp eax, 1
 je xchain00143_n2_α
 jmp xchain00143_n6_α
.Lx00145_2:
 mov rdi, qword ptr [r12 + 2512]
 mov rsi, qword ptr [r12 + 2520]
 mov rdx, qword ptr [r12 + 2528]
 mov rcx, qword ptr [r12 + 2536]
 mov r8d, 6
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00143_n2_α
 mov rax, qword ptr [r12 + 2528]
 mov qword ptr [r12 + 2496], rax
 mov rax, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 2504], rax
 jmp xchain00143_n6_α
 xchain00143_n3_β:
 jmp xchain00143_n2_α
# IR_VAR gva
 xchain00143_n4_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 jmp xchain00143_n7_α
 xchain00143_n4_β:
 jmp xchain00143_n5_α
# IR_VAR gva
 xchain00143_n5_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 jmp xchain00143_n8_α
 xchain00143_n5_β:
 jmp xchain00143_n9_α
# IR_RETURN
 xchain00143_n6_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_collapse_γ
 xchain00143_n7_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2432]
 cmp eax, 100
 je .Lx00146_0
 mov eax, dword ptr [r12 + 2448]
 cmp eax, 100
 je .Lx00146_0
 mov eax, dword ptr [r12 + 2432]
 cmp eax, 6
 jne .Lx00146_2
 mov eax, dword ptr [r12 + 2448]
 cmp eax, 6
 jne .Lx00146_2
.Lx00146_1:
 mov rax, qword ptr [r12 + 2440]
 mov rcx, qword ptr [r12 + 2456]
 imul rax, rcx
 mov qword ptr [r12 + 2416], 6
 mov qword ptr [r12 + 2424], rax
 jmp xchain00143_n10_α
.Lx00146_0:
 mov rdi, qword ptr [r12 + 2432]
 mov rsi, qword ptr [r12 + 2440]
 mov rdx, qword ptr [r12 + 2448]
 mov rcx, qword ptr [r12 + 2456]
 mov r8d, 2
 lea r9, [r12 + 2416]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00146_3
.Lx00146_2:
 mov rdi, qword ptr [r12 + 2432]
 mov rsi, qword ptr [r12 + 2440]
 mov rdx, qword ptr [r12 + 2448]
 mov rcx, qword ptr [r12 + 2456]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00143_n5_α
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
.Lx00146_3:
 jmp xchain00143_n10_α
 xchain00143_n7_β:
 jmp xchain00143_n5_α
# IR_KEYWORD_read
 xchain00143_n8_α:
 mov rdi, qword ptr [rip + .Lx00147_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 jmp xchain00143_n11_α
 xchain00143_n8_β:
 jmp xchain00143_n9_α
.Lx00147_0:
 .quad .Lx00147_0_s
.Lx00147_0_s:
 .string "&pi"
# IR_VAR
 xchain00143_n9_α:
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 2240], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 2248], rax
 jmp xchain00143_n12_α
 xchain00143_n9_β:
 jmp xchain00143_n13_α
 xchain00143_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2416]
 mov rdx, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 jmp xchain00143_n5_α
 xchain00143_n10_β:
 jmp xchain00143_n5_α
 xchain00143_n11_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2336]
 cmp eax, 100
 je .Lx00148_0
 mov eax, dword ptr [r12 + 2352]
 cmp eax, 100
 je .Lx00148_0
 mov eax, dword ptr [r12 + 2336]
 cmp eax, 6
 jne .Lx00148_2
 mov eax, dword ptr [r12 + 2352]
 cmp eax, 6
 jne .Lx00148_2
.Lx00148_1:
 mov rax, qword ptr [r12 + 2344]
 mov rcx, qword ptr [r12 + 2360]
 imul rax, rcx
 mov qword ptr [r12 + 2320], 6
 mov qword ptr [r12 + 2328], rax
 jmp xchain00143_n14_α
.Lx00148_0:
 mov rdi, qword ptr [r12 + 2336]
 mov rsi, qword ptr [r12 + 2344]
 mov rdx, qword ptr [r12 + 2352]
 mov rcx, qword ptr [r12 + 2360]
 mov r8d, 2
 lea r9, [r12 + 2320]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00148_3
.Lx00148_2:
 mov rdi, qword ptr [r12 + 2336]
 mov rsi, qword ptr [r12 + 2344]
 mov rdx, qword ptr [r12 + 2352]
 mov rcx, qword ptr [r12 + 2360]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00143_n9_α
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
.Lx00148_3:
 jmp xchain00143_n14_α
 xchain00143_n11_β:
 jmp xchain00143_n9_α
# IR_KEYWORD_read
 xchain00143_n12_α:
 mov rdi, qword ptr [rip + .Lx00149_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 jmp xchain00143_n15_α
 xchain00143_n12_β:
 jmp xchain00143_n13_α
.Lx00149_0:
 .quad .Lx00149_0_s
.Lx00149_0_s:
 .string "&pi"
# IR_VAR gva
 xchain00143_n13_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 jmp xchain00143_n16_α
 xchain00143_n13_β:
 jmp xchain00143_n17_α
# IR_LIT_INTEGER
 xchain00143_n14_α:
 mov qword ptr [r12 + 2384], 6
 mov rax, qword ptr [rip + .Lx00150_0]
 mov qword ptr [r12 + 2392], rax
 jmp xchain00143_n18_α
 xchain00143_n14_β:
 jmp xchain00143_n9_α
.Lx00150_0:
 .quad 180
 xchain00143_n15_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2688]
 cmp eax, 100
 je .Lx00151_0
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 100
 je .Lx00151_0
 mov eax, dword ptr [r12 + 2688]
 cmp eax, 6
 jne .Lx00151_2
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 6
 jne .Lx00151_2
.Lx00151_1:
 mov rax, qword ptr [r12 + 2696]
 mov rcx, qword ptr [r12 + 2264]
 cmp rax, rcx
 jle xchain00143_n13_α
 mov rcx, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 2224], rcx
 mov rcx, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2232], rcx
 jmp xchain00143_n19_α
.Lx00151_0:
 mov rdi, qword ptr [r12 + 2688]
 mov rsi, qword ptr [r12 + 2696]
 mov rdx, qword ptr [r12 + 2256]
 mov rcx, qword ptr [r12 + 2264]
 mov r8d, 7
 lea r9, [r12 + 2224]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00151_1
 cmp eax, 1
 je xchain00143_n13_α
 jmp xchain00143_n19_α
.Lx00151_2:
 mov rdi, qword ptr [r12 + 2688]
 mov rsi, qword ptr [r12 + 2696]
 mov rdx, qword ptr [r12 + 2256]
 mov rcx, qword ptr [r12 + 2264]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00143_n13_α
 mov rax, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2232], rax
 jmp xchain00143_n19_α
 xchain00143_n15_β:
 jmp xchain00143_n13_α
# IR_VAR_REF gva
 xchain00143_n16_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain00143_n20_α
 xchain00143_n16_β:
 jmp xchain00143_n17_α
# IR_VAR_REF gva
 xchain00143_n17_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 jmp xchain00143_n21_α
 xchain00143_n17_β:
 jmp xchain00143_n27_α
 xchain00143_n18_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 100
 je .Lx00152_0
 mov eax, dword ptr [r12 + 2384]
 cmp eax, 100
 je .Lx00152_0
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 6
 jne .Lx00152_2
 mov eax, dword ptr [r12 + 2384]
 cmp eax, 6
 jne .Lx00152_2
.Lx00152_1:
 mov rax, qword ptr [r12 + 2328]
 mov rcx, qword ptr [r12 + 2392]
 cqo
 idiv rcx
 mov qword ptr [r12 + 2304], 6
 mov qword ptr [r12 + 2312], rax
 jmp xchain00143_n22_α
.Lx00152_0:
 mov rdi, qword ptr [r12 + 2320]
 mov rsi, qword ptr [r12 + 2328]
 mov rdx, qword ptr [r12 + 2384]
 mov rcx, qword ptr [r12 + 2392]
 mov r8d, 3
 lea r9, [r12 + 2304]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00152_3
.Lx00152_2:
 mov rdi, qword ptr [r12 + 2320]
 mov rsi, qword ptr [r12 + 2328]
 mov rdx, qword ptr [r12 + 2384]
 mov rcx, qword ptr [r12 + 2392]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00143_n9_α
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
.Lx00152_3:
 jmp xchain00143_n22_α
 xchain00143_n18_β:
 jmp xchain00143_n9_α
 xchain00143_n19_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2224]
 mov rdx, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 jmp xchain00143_n13_α
 xchain00143_n19_β:
 jmp xchain00143_n13_α
# IR_LIT_INTEGER
 xchain00143_n20_α:
 mov qword ptr [r12 + 2160], 6
 mov rax, qword ptr [rip + .Lx00153_0]
 mov qword ptr [r12 + 2168], rax
 jmp xchain00143_n23_α
 xchain00143_n20_β:
 jmp xchain00143_n17_α
.Lx00153_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00143_n21_α:
 mov qword ptr [r12 + 2048], 6
 mov rax, qword ptr [rip + .Lx00154_0]
 mov qword ptr [r12 + 2056], rax
 jmp xchain00143_n24_α
 xchain00143_n21_β:
 jmp xchain00143_n27_α
.Lx00154_0:
 .quad 1
 xchain00143_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2304]
 mov rdx, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain00143_n9_α
 xchain00143_n22_β:
 jmp xchain00143_n9_α
# IR_SUBSCRIPT x[i] variable
 xchain00143_n23_α:
 mov rdi, qword ptr [r12 + 2144]
 mov rsi, qword ptr [r12 + 2152]
 mov rdx, qword ptr [r12 + 2160]
 mov rcx, qword ptr [r12 + 2168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00143_n17_α
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain00143_n25_α
 xchain00143_n23_β:
 jmp xchain00143_n17_α
# IR_SUBSCRIPT x[i] variable
 xchain00143_n24_α:
 mov rdi, qword ptr [r12 + 2032]
 mov rsi, qword ptr [r12 + 2040]
 mov rdx, qword ptr [r12 + 2048]
 mov rcx, qword ptr [r12 + 2056]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00143_n27_α
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain00143_n26_α
 xchain00143_n24_β:
 jmp xchain00143_n27_α
# IR_DEREF variable -> value
 xchain00143_n25_α:
 mov rdi, qword ptr [r12 + 2176]
 mov rsi, qword ptr [r12 + 2184]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00143_n17_α
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain00143_n28_α
 xchain00143_n25_β:
 jmp xchain00143_n17_α
# IR_DEREF variable -> value
 xchain00143_n26_α:
 mov rdi, qword ptr [r12 + 2064]
 mov rsi, qword ptr [r12 + 2072]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00143_n27_α
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 jmp xchain00143_n29_α
 xchain00143_n26_β:
 jmp xchain00143_n27_α
# IR_VAR
 xchain00143_n27_α:
 mov rax, qword ptr [r12 + 2736]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 2744]
 mov qword ptr [r12 + 1992], rax
 jmp xchain00143_n30_α
 xchain00143_n27_β:
 jmp xchain00143_n31_α
 xchain00143_n28_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2128]
 cmp eax, 100
 je .Lx00155_0
 mov eax, dword ptr [r12 + 2192]
 cmp eax, 100
 je .Lx00155_0
 mov eax, dword ptr [r12 + 2128]
 cmp eax, 6
 jne .Lx00155_2
 mov eax, dword ptr [r12 + 2192]
 cmp eax, 6
 jne .Lx00155_2
.Lx00155_1:
 mov rax, qword ptr [r12 + 2136]
 mov rcx, qword ptr [r12 + 2200]
 imul rax, rcx
 mov qword ptr [r12 + 2112], 6
 mov qword ptr [r12 + 2120], rax
 jmp xchain00143_n32_α
.Lx00155_0:
 mov rdi, qword ptr [r12 + 2128]
 mov rsi, qword ptr [r12 + 2136]
 mov rdx, qword ptr [r12 + 2192]
 mov rcx, qword ptr [r12 + 2200]
 mov r8d, 2
 lea r9, [r12 + 2112]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00155_3
.Lx00155_2:
 mov rdi, qword ptr [r12 + 2128]
 mov rsi, qword ptr [r12 + 2136]
 mov rdx, qword ptr [r12 + 2192]
 mov rcx, qword ptr [r12 + 2200]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00143_n17_α
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
.Lx00155_3:
 jmp xchain00143_n32_α
 xchain00143_n28_β:
 jmp xchain00143_n17_α
 xchain00143_n29_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2080]
 mov rdx, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2736], rax
 mov qword ptr [r12 + 2744], rdx
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 jmp xchain00143_n27_α
 xchain00143_n29_β:
 jmp xchain00143_n27_α
# IR_VAR
 xchain00143_n30_α:
 mov rax, qword ptr [r12 + 2752]
 mov qword ptr [r12 + 2000], rax
 mov rax, qword ptr [r12 + 2760]
 mov qword ptr [r12 + 2008], rax
 jmp xchain00143_n33_α
 xchain00143_n30_β:
 jmp xchain00143_n31_α
# IR_LIT_INTEGER
 xchain00143_n31_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00156_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00143_n34_α
 xchain00143_n31_β:
 jmp xchain00143_n37_α
.Lx00156_0:
 .quad 2
 xchain00143_n32_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2112]
 mov rdx, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain00143_n17_α
 xchain00143_n32_β:
 jmp xchain00143_n17_α
 xchain00143_n33_α:
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
  .Lrkfn636: .string "atan"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn636]
 lea rsi, [r12 + 1952]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 cmp eax, 99
 je xchain00143_n31_α
 jmp xchain00143_n35_α
 xchain00143_n33_β:
 jmp xchain00143_n31_α
# IR_VAR gva
 xchain00143_n34_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00143_n36_α
 xchain00143_n34_β:
 jmp xchain00143_n37_α
 xchain00143_n35_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1936]
 mov rdx, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 2704], rax
 mov qword ptr [r12 + 2712], rdx
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain00143_n31_α
 xchain00143_n35_β:
 jmp xchain00143_n31_α
# IR_UNOP
 xchain00143_n36_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00143_n38_α
 xchain00143_n36_β:
 jmp xchain00143_n37_α
# IR_RETURN
 xchain00143_n37_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_collapse_γ
# IR_TO
 xchain00143_n38_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00157_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00143_n37_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00143_n39_α
 xchain00143_n38_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00157_0
 xchain00143_n39_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00143_n40_α
 xchain00143_n39_β:
 jmp xchain00143_n37_α
# IR_VAR
 xchain00143_n40_α:
 mov rax, qword ptr [r12 + 2752]
 mov qword ptr [r12 + 1904], rax
 mov rax, qword ptr [r12 + 2760]
 mov qword ptr [r12 + 1912], rax
 jmp xchain00143_n41_α
 xchain00143_n40_β:
 jmp xchain00143_n42_α
 xchain00143_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1904]
 mov rdx, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain00143_n42_α
 xchain00143_n41_β:
 jmp xchain00143_n42_α
# IR_VAR
 xchain00143_n42_α:
 mov rax, qword ptr [r12 + 2736]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 2744]
 mov qword ptr [r12 + 1880], rax
 jmp xchain00143_n43_α
 xchain00143_n42_β:
 jmp xchain00143_n44_α
 xchain00143_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1872]
 mov rdx, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 2656], rax
 mov qword ptr [r12 + 2664], rdx
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 jmp xchain00143_n44_α
 xchain00143_n43_β:
 jmp xchain00143_n44_α
# IR_VAR
 xchain00143_n44_α:
 mov rax, qword ptr [r12 + 2704]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 2712]
 mov qword ptr [r12 + 1848], rax
 jmp xchain00143_n45_α
 xchain00143_n44_β:
 jmp xchain00143_n46_α
 xchain00143_n45_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1840]
 mov rdx, qword ptr [r12 + 1848]
 mov qword ptr [r12 + 2720], rax
 mov qword ptr [r12 + 2728], rdx
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 jmp xchain00143_n46_α
 xchain00143_n45_β:
 jmp xchain00143_n46_α
# IR_VAR gva
 xchain00143_n46_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain00143_n47_α
 xchain00143_n46_β:
 jmp xchain00143_n48_α
# IR_VAR_REF gva
 xchain00143_n47_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain00143_n49_α
 xchain00143_n47_β:
 jmp xchain00143_n48_α
# IR_VAR_REF gva
 xchain00143_n48_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain00143_n50_α
 xchain00143_n48_β:
 jmp xchain00143_n53_α
# IR_VAR
 xchain00143_n49_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 1784], rax
 jmp xchain00143_n51_α
 xchain00143_n49_β:
 jmp xchain00143_n48_α
# IR_VAR
 xchain00143_n50_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00143_n52_α
 xchain00143_n50_β:
 jmp xchain00143_n53_α
# IR_SUBSCRIPT x[i] variable
 xchain00143_n51_α:
 mov rdi, qword ptr [r12 + 1760]
 mov rsi, qword ptr [r12 + 1768]
 mov rdx, qword ptr [r12 + 1776]
 mov rcx, qword ptr [r12 + 1784]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00143_n48_α
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain00143_n54_α
 xchain00143_n51_β:
 jmp xchain00143_n48_α
# IR_SUBSCRIPT x[i] variable
 xchain00143_n52_α:
 mov rdi, qword ptr [r12 + 1648]
 mov rsi, qword ptr [r12 + 1656]
 mov rdx, qword ptr [r12 + 1664]
 mov rcx, qword ptr [r12 + 1672]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00143_n53_α
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain00143_n55_α
 xchain00143_n52_β:
 jmp xchain00143_n53_α
# IR_VAR
 xchain00143_n53_α:
 mov rax, qword ptr [r12 + 2736]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 2744]
 mov qword ptr [r12 + 1608], rax
 jmp xchain00143_n56_α
 xchain00143_n53_β:
 jmp xchain00143_n57_α
# IR_DEREF variable -> value
 xchain00143_n54_α:
 mov rdi, qword ptr [r12 + 1792]
 mov rsi, qword ptr [r12 + 1800]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00143_n48_α
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain00143_n58_α
 xchain00143_n54_β:
 jmp xchain00143_n48_α
# IR_DEREF variable -> value
 xchain00143_n55_α:
 mov rdi, qword ptr [r12 + 1680]
 mov rsi, qword ptr [r12 + 1688]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00143_n53_α
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain00143_n59_α
 xchain00143_n55_β:
 jmp xchain00143_n53_α
# IR_VAR
 xchain00143_n56_α:
 mov rax, qword ptr [r12 + 2752]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 2760]
 mov qword ptr [r12 + 1624], rax
 jmp xchain00143_n60_α
 xchain00143_n56_β:
 jmp xchain00143_n57_α
# IR_VAR
 xchain00143_n57_α:
 mov rax, qword ptr [r12 + 2704]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 2712]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00143_n61_α
 xchain00143_n57_β:
 jmp xchain00143_n62_α
 xchain00143_n58_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1744]
 cmp eax, 100
 je .Lx00158_0
 mov eax, dword ptr [r12 + 1808]
 cmp eax, 100
 je .Lx00158_0
 mov eax, dword ptr [r12 + 1744]
 cmp eax, 6
 jne .Lx00158_2
 mov eax, dword ptr [r12 + 1808]
 cmp eax, 6
 jne .Lx00158_2
.Lx00158_1:
 mov rax, qword ptr [r12 + 1752]
 mov rcx, qword ptr [r12 + 1816]
 imul rax, rcx
 mov qword ptr [r12 + 1728], 6
 mov qword ptr [r12 + 1736], rax
 jmp xchain00143_n63_α
.Lx00158_0:
 mov rdi, qword ptr [r12 + 1744]
 mov rsi, qword ptr [r12 + 1752]
 mov rdx, qword ptr [r12 + 1808]
 mov rcx, qword ptr [r12 + 1816]
 mov r8d, 2
 lea r9, [r12 + 1728]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00158_3
.Lx00158_2:
 mov rdi, qword ptr [r12 + 1744]
 mov rsi, qword ptr [r12 + 1752]
 mov rdx, qword ptr [r12 + 1808]
 mov rcx, qword ptr [r12 + 1816]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00143_n48_α
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
.Lx00158_3:
 jmp xchain00143_n63_α
 xchain00143_n58_β:
 jmp xchain00143_n48_α
 xchain00143_n59_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1696]
 mov rdx, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 2736], rax
 mov qword ptr [r12 + 2744], rdx
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain00143_n53_α
 xchain00143_n59_β:
 jmp xchain00143_n53_α
 xchain00143_n60_α:
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
  .Lrkfn675: .string "atan"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn675]
 lea rsi, [r12 + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 cmp eax, 99
 je xchain00143_n57_α
 jmp xchain00143_n64_α
 xchain00143_n60_β:
 jmp xchain00143_n57_α
# IR_VAR
 xchain00143_n61_α:
 mov rax, qword ptr [r12 + 2720]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 2728]
 mov qword ptr [r12 + 1528], rax
 jmp xchain00143_n65_α
 xchain00143_n61_β:
 jmp xchain00143_n62_α
# IR_VAR
 xchain00143_n62_α:
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 1416], rax
 jmp xchain00143_n66_α
 xchain00143_n62_β:
 jmp xchain00143_n67_α
 xchain00143_n63_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1728]
 mov rdx, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain00143_n48_α
 xchain00143_n63_β:
 jmp xchain00143_n48_α
 xchain00143_n64_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1552]
 mov rdx, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 2704], rax
 mov qword ptr [r12 + 2712], rdx
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain00143_n57_α
 xchain00143_n64_β:
 jmp xchain00143_n57_α
 xchain00143_n65_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2704]
 cmp eax, 100
 je .Lx00159_0
 mov eax, dword ptr [r12 + 2720]
 cmp eax, 100
 je .Lx00159_0
 mov eax, dword ptr [r12 + 2704]
 cmp eax, 6
 jne .Lx00159_2
 mov eax, dword ptr [r12 + 2720]
 cmp eax, 6
 jne .Lx00159_2
.Lx00159_1:
 mov rax, qword ptr [r12 + 2712]
 mov rcx, qword ptr [r12 + 2728]
 sub rax, rcx
 mov qword ptr [r12 + 1488], 6
 mov qword ptr [r12 + 1496], rax
 jmp xchain00143_n68_α
.Lx00159_0:
 mov rdi, qword ptr [r12 + 2704]
 mov rsi, qword ptr [r12 + 2712]
 mov rdx, qword ptr [r12 + 2720]
 mov rcx, qword ptr [r12 + 2728]
 mov r8d, 1
 lea r9, [r12 + 1488]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00159_3
.Lx00159_2:
 mov rdi, qword ptr [r12 + 2704]
 mov rsi, qword ptr [r12 + 2712]
 mov rdx, qword ptr [r12 + 2720]
 mov rcx, qword ptr [r12 + 2728]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00143_n62_α
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
.Lx00159_3:
 jmp xchain00143_n68_α
 xchain00143_n65_β:
 jmp xchain00143_n62_α
# IR_VAR
 xchain00143_n66_α:
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 1432], rax
 jmp xchain00143_n69_α
 xchain00143_n66_β:
 jmp xchain00143_n67_α
# IR_VAR
 xchain00143_n67_α:
 mov rax, qword ptr [r12 + 2640]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 1240], rax
 jmp xchain00143_n70_α
 xchain00143_n67_β:
 jmp xchain00143_n71_α
 xchain00143_n68_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1488] -> [r12+1472]
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 1480], rax
  .section .rodata
  .Lrkfn688: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn688]
 lea rsi, [r12 + 1472]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 cmp eax, 99
 je xchain00143_n62_α
 jmp xchain00143_n72_α
 xchain00143_n68_β:
 jmp xchain00143_n62_α
 xchain00143_n69_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2672]
 cmp eax, 100
 je .Lx00160_0
 mov eax, dword ptr [r12 + 2688]
 cmp eax, 100
 je .Lx00160_0
 mov eax, dword ptr [r12 + 2672]
 cmp eax, 6
 jne .Lx00160_2
 mov eax, dword ptr [r12 + 2688]
 cmp eax, 6
 jne .Lx00160_2
.Lx00160_1:
 mov rax, qword ptr [r12 + 2680]
 mov rcx, qword ptr [r12 + 2696]
 cmp rax, rcx
 jle xchain00143_n67_α
 mov rcx, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 1392], rcx
 mov rcx, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 1400], rcx
 jmp xchain00143_n38_β
.Lx00160_0:
 mov rdi, qword ptr [r12 + 2672]
 mov rsi, qword ptr [r12 + 2680]
 mov rdx, qword ptr [r12 + 2688]
 mov rcx, qword ptr [r12 + 2696]
 mov r8d, 7
 lea r9, [r12 + 1392]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00160_1
 cmp eax, 1
 je xchain00143_n67_α
 jmp xchain00143_n38_β
.Lx00160_2:
 mov rdi, qword ptr [r12 + 2672]
 mov rsi, qword ptr [r12 + 2680]
 mov rdx, qword ptr [r12 + 2688]
 mov rcx, qword ptr [r12 + 2696]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00143_n67_α
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00143_n38_β
 xchain00143_n69_β:
 jmp xchain00143_n67_α
# IR_VAR
 xchain00143_n70_α:
 mov rax, qword ptr [r12 + 2640]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 1256], rax
 jmp xchain00143_n74_α
 xchain00143_n70_β:
 jmp xchain00143_n71_α
# IR_VAR
 xchain00143_n71_α:
 mov rax, qword ptr [r12 + 2608]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 2616]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00143_n75_α
 xchain00143_n71_β:
 jmp xchain00143_n38_β
 xchain00143_n72_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1456]
 mov rdx, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain00143_n62_α
 xchain00143_n72_β:
 jmp xchain00143_n62_α
 xchain00143_n73_α:
 jmp xchain00143_n38_β
xchain00143_n73_β:
 jmp xchain00143_n38_β
 xchain00143_n74_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2640]
 cmp eax, 100
 je .Lx00161_0
 mov eax, dword ptr [r12 + 2640]
 cmp eax, 100
 je .Lx00161_0
 mov eax, dword ptr [r12 + 2640]
 cmp eax, 6
 jne .Lx00161_2
 mov eax, dword ptr [r12 + 2640]
 cmp eax, 6
 jne .Lx00161_2
.Lx00161_1:
 mov rax, qword ptr [r12 + 2648]
 mov rcx, qword ptr [r12 + 2648]
 imul rax, rcx
 mov qword ptr [r12 + 1216], 6
 mov qword ptr [r12 + 1224], rax
 jmp xchain00143_n76_α
.Lx00161_0:
 mov rdi, qword ptr [r12 + 2640]
 mov rsi, qword ptr [r12 + 2648]
 mov rdx, qword ptr [r12 + 2640]
 mov rcx, qword ptr [r12 + 2648]
 mov r8d, 2
 lea r9, [r12 + 1216]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00161_3
.Lx00161_2:
 mov rdi, qword ptr [r12 + 2640]
 mov rsi, qword ptr [r12 + 2648]
 mov rdx, qword ptr [r12 + 2640]
 mov rcx, qword ptr [r12 + 2648]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00143_n71_α
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
.Lx00161_3:
 jmp xchain00143_n76_α
 xchain00143_n74_β:
 jmp xchain00143_n71_α
# IR_VAR
 xchain00143_n75_α:
 mov rax, qword ptr [r12 + 2624]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00143_n77_α
 xchain00143_n75_β:
 jmp xchain00143_n38_β
# IR_VAR
 xchain00143_n76_α:
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 2664]
 mov qword ptr [r12 + 1288], rax
 jmp xchain00143_n78_α
 xchain00143_n76_β:
 jmp xchain00143_n71_α
 xchain00143_n77_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2608]
 cmp eax, 100
 je .Lx00162_0
 mov eax, dword ptr [r12 + 2624]
 cmp eax, 100
 je .Lx00162_0
 mov eax, dword ptr [r12 + 2608]
 cmp eax, 6
 jne .Lx00162_2
 mov eax, dword ptr [r12 + 2624]
 cmp eax, 6
 jne .Lx00162_2
.Lx00162_1:
 mov rax, qword ptr [r12 + 2616]
 mov rcx, qword ptr [r12 + 2632]
 cmp rax, rcx
 jg xchain00143_n38_β
 mov rcx, qword ptr [r12 + 2624]
 mov qword ptr [r12 + 1088], rcx
 mov rcx, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 1096], rcx
 jmp xchain00143_n79_α
.Lx00162_0:
 mov rdi, qword ptr [r12 + 2608]
 mov rsi, qword ptr [r12 + 2616]
 mov rdx, qword ptr [r12 + 2624]
 mov rcx, qword ptr [r12 + 2632]
 mov r8d, 6
 lea r9, [r12 + 1088]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00162_1
 cmp eax, 1
 je xchain00143_n38_β
 jmp xchain00143_n79_α
.Lx00162_2:
 mov rdi, qword ptr [r12 + 2608]
 mov rsi, qword ptr [r12 + 2616]
 mov rdx, qword ptr [r12 + 2624]
 mov rcx, qword ptr [r12 + 2632]
 mov r8d, 6
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00143_n38_β
 mov rax, qword ptr [r12 + 2624]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 1096], rax
 jmp xchain00143_n79_α
 xchain00143_n77_β:
 jmp xchain00143_n38_β
# IR_VAR
 xchain00143_n78_α:
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 2664]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00143_n80_α
 xchain00143_n78_β:
 jmp xchain00143_n71_α
# IR_VAR_REF gva
 xchain00143_n79_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain00143_n81_α
 xchain00143_n79_β:
 jmp xchain00143_n84_α
 xchain00143_n80_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2656]
 cmp eax, 100
 je .Lx00163_0
 mov eax, dword ptr [r12 + 2656]
 cmp eax, 100
 je .Lx00163_0
 mov eax, dword ptr [r12 + 2656]
 cmp eax, 6
 jne .Lx00163_2
 mov eax, dword ptr [r12 + 2656]
 cmp eax, 6
 jne .Lx00163_2
.Lx00163_1:
 mov rax, qword ptr [r12 + 2664]
 mov rcx, qword ptr [r12 + 2664]
 imul rax, rcx
 mov qword ptr [r12 + 1264], 6
 mov qword ptr [r12 + 1272], rax
 jmp xchain00143_n82_α
.Lx00163_0:
 mov rdi, qword ptr [r12 + 2656]
 mov rsi, qword ptr [r12 + 2664]
 mov rdx, qword ptr [r12 + 2656]
 mov rcx, qword ptr [r12 + 2664]
 mov r8d, 2
 lea r9, [r12 + 1264]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00163_3
.Lx00163_2:
 mov rdi, qword ptr [r12 + 2656]
 mov rsi, qword ptr [r12 + 2664]
 mov rdx, qword ptr [r12 + 2656]
 mov rcx, qword ptr [r12 + 2664]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00143_n71_α
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
.Lx00163_3:
 jmp xchain00143_n82_α
 xchain00143_n80_β:
 jmp xchain00143_n71_α
# IR_VAR
 xchain00143_n81_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 952], rax
 jmp xchain00143_n83_α
 xchain00143_n81_β:
 jmp xchain00143_n84_α
 xchain00143_n82_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1216]
 cmp eax, 100
 je .Lx00164_0
 mov eax, dword ptr [r12 + 1264]
 cmp eax, 100
 je .Lx00164_0
 mov eax, dword ptr [r12 + 1216]
 cmp eax, 6
 jne .Lx00164_2
 mov eax, dword ptr [r12 + 1264]
 cmp eax, 6
 jne .Lx00164_2
.Lx00164_1:
 mov rax, qword ptr [r12 + 1224]
 mov rcx, qword ptr [r12 + 1272]
 add rax, rcx
 mov qword ptr [r12 + 1200], 6
 mov qword ptr [r12 + 1208], rax
 jmp xchain00143_n85_α
.Lx00164_0:
 mov rdi, qword ptr [r12 + 1216]
 mov rsi, qword ptr [r12 + 1224]
 mov rdx, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1272]
 mov r8d, 0
 lea r9, [r12 + 1200]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00164_3
.Lx00164_2:
 mov rdi, qword ptr [r12 + 1216]
 mov rsi, qword ptr [r12 + 1224]
 mov rdx, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1272]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00143_n71_α
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
.Lx00164_3:
 jmp xchain00143_n85_α
 xchain00143_n82_β:
 jmp xchain00143_n71_α
# IR_SUBSCRIPT x[i] variable
 xchain00143_n83_α:
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00143_n84_α
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain00143_n86_α
 xchain00143_n83_β:
 jmp xchain00143_n84_α
# IR_VAR_REF gva
 xchain00143_n84_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00143_n87_α
 xchain00143_n84_β:
 jmp xchain00143_n91_α
# IR_VAR
 xchain00143_n85_α:
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 1352], rax
 jmp xchain00143_n88_α
 xchain00143_n85_β:
 jmp xchain00143_n71_α
# IR_DEREF variable -> value
 xchain00143_n86_α:
 mov rdi, qword ptr [r12 + 960]
 mov rsi, qword ptr [r12 + 968]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00143_n84_α
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain00143_n89_α
 xchain00143_n86_β:
 jmp xchain00143_n84_α
# IR_VAR
 xchain00143_n87_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 760], rax
 jmp xchain00143_n90_α
 xchain00143_n87_β:
 jmp xchain00143_n91_α
 xchain00143_n88_α:
# BOX IR_CALL sin(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1344] -> [r12+1328]
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1336], rax
  .section .rodata
  .Lrkfn719: .string "sin"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn719]
 lea rsi, [r12 + 1328]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 cmp eax, 99
 je xchain00143_n71_α
 jmp xchain00143_n92_α
 xchain00143_n88_β:
 jmp xchain00143_n71_α
# IR_VAR_REF gva
 xchain00143_n89_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain00143_n93_α
 xchain00143_n89_β:
 jmp xchain00143_n84_α
# IR_SUBSCRIPT x[i] variable
 xchain00143_n90_α:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00143_n91_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00143_n94_α
 xchain00143_n90_β:
 jmp xchain00143_n91_α
# IR_VAR
 xchain00143_n91_α:
 mov rax, qword ptr [r12 + 2592]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 680], rax
 jmp xchain00143_n95_α
 xchain00143_n91_β:
 jmp xchain00143_n38_β
 xchain00143_n92_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1200]
 cmp eax, 100
 je .Lx00165_0
 mov eax, dword ptr [r12 + 1312]
 cmp eax, 100
 je .Lx00165_0
 mov eax, dword ptr [r12 + 1200]
 cmp eax, 6
 jne .Lx00165_2
 mov eax, dword ptr [r12 + 1312]
 cmp eax, 6
 jne .Lx00165_2
.Lx00165_1:
 mov rax, qword ptr [r12 + 1208]
 mov rcx, qword ptr [r12 + 1320]
 imul rax, rcx
 mov qword ptr [r12 + 1184], 6
 mov qword ptr [r12 + 1192], rax
 jmp xchain00143_n96_α
.Lx00165_0:
 mov rdi, qword ptr [r12 + 1200]
 mov rsi, qword ptr [r12 + 1208]
 mov rdx, qword ptr [r12 + 1312]
 mov rcx, qword ptr [r12 + 1320]
 mov r8d, 2
 lea r9, [r12 + 1184]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00165_3
.Lx00165_2:
 mov rdi, qword ptr [r12 + 1200]
 mov rsi, qword ptr [r12 + 1208]
 mov rdx, qword ptr [r12 + 1312]
 mov rcx, qword ptr [r12 + 1320]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00143_n71_α
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
.Lx00165_3:
 jmp xchain00143_n96_α
 xchain00143_n92_β:
 jmp xchain00143_n71_α
# IR_VAR
 xchain00143_n93_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00143_n97_α
 xchain00143_n93_β:
 jmp xchain00143_n84_α
# IR_DEREF variable -> value
 xchain00143_n94_α:
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00143_n91_α
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00143_n98_α
 xchain00143_n94_β:
 jmp xchain00143_n91_α
 xchain00143_n95_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+672] -> [r12+656]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn730: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn730]
 lea rsi, [r12 + 656]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain00143_n38_β
 jmp xchain00143_n99_α
 xchain00143_n95_β:
 jmp xchain00143_n38_β
 xchain00143_n96_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1184] -> [r12+1168]
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1176], rax
  .section .rodata
  .Lrkfn732: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn732]
 lea rsi, [r12 + 1168]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain00143_n71_α
 jmp xchain00143_n00060_α
 xchain00143_n96_β:
 jmp xchain00143_n71_α
# IR_LIT_INTEGER
 xchain00143_n97_α:
 mov qword ptr [r12 + 1040], 6
 mov rax, qword ptr [rip + .Lx00166_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain00143_n00001_α
 xchain00143_n97_β:
 jmp xchain00143_n84_α
.Lx00166_0:
 .quad 1
# IR_VAR_REF gva
 xchain00143_n98_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00143_n00062_α
 xchain00143_n98_β:
 jmp xchain00143_n91_α
# IR_LIT_INTEGER
 xchain00143_n99_α:
 mov qword ptr [r12 + 688], 6
 mov rax, qword ptr [rip + .Lx00167_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain00143_n00063_α
 xchain00143_n99_β:
 jmp xchain00143_n38_β
.Lx00167_0:
 .quad 5000
 xchain00143_n00060_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1152]
 mov rdx, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 2608], rax
 mov qword ptr [r12 + 2616], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00143_n71_α
 xchain00143_n00060_β:
 jmp xchain00143_n71_α
 xchain00143_n00001_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2560]
 cmp eax, 100
 je .Lx00168_0
 mov eax, dword ptr [r12 + 1040]
 cmp eax, 100
 je .Lx00168_0
 mov eax, dword ptr [r12 + 2560]
 cmp eax, 6
 jne .Lx00168_2
 mov eax, dword ptr [r12 + 1040]
 cmp eax, 6
 jne .Lx00168_2
.Lx00168_1:
 mov rax, qword ptr [r12 + 2568]
 mov rcx, qword ptr [r12 + 1048]
 sub rax, rcx
 mov qword ptr [r12 + 1008], 6
 mov qword ptr [r12 + 1016], rax
 jmp xchain00143_n00064_α
.Lx00168_0:
 mov rdi, qword ptr [r12 + 2560]
 mov rsi, qword ptr [r12 + 2568]
 mov rdx, qword ptr [r12 + 1040]
 mov rcx, qword ptr [r12 + 1048]
 mov r8d, 1
 lea r9, [r12 + 1008]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00168_3
.Lx00168_2:
 mov rdi, qword ptr [r12 + 2560]
 mov rsi, qword ptr [r12 + 2568]
 mov rdx, qword ptr [r12 + 1040]
 mov rcx, qword ptr [r12 + 1048]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00143_n84_α
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
.Lx00168_3:
 jmp xchain00143_n00064_α
 xchain00143_n00001_β:
 jmp xchain00143_n84_α
# IR_VAR
 xchain00143_n00062_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 840], rax
 jmp xchain00143_n00065_α
 xchain00143_n00062_β:
 jmp xchain00143_n91_α
 xchain00143_n00063_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 640]
 cmp eax, 100
 je .Lx00169_0
 mov eax, dword ptr [r12 + 688]
 cmp eax, 100
 je .Lx00169_0
 mov eax, dword ptr [r12 + 640]
 cmp eax, 6
 jne .Lx00169_2
 mov eax, dword ptr [r12 + 688]
 cmp eax, 6
 jne .Lx00169_2
.Lx00169_1:
 mov rax, qword ptr [r12 + 648]
 mov rcx, qword ptr [r12 + 696]
 cmp rax, rcx
 jge xchain00143_n38_β
 mov rcx, qword ptr [r12 + 688]
 mov qword ptr [r12 + 624], rcx
 mov rcx, qword ptr [r12 + 696]
 mov qword ptr [r12 + 632], rcx
 jmp xchain00143_n00067_α
.Lx00169_0:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 mov r8d, 5
 lea r9, [r12 + 624]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00169_1
 cmp eax, 1
 je xchain00143_n38_β
 jmp xchain00143_n00067_α
.Lx00169_2:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00143_n38_β
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 632], rax
 jmp xchain00143_n00067_α
 xchain00143_n00063_β:
 jmp xchain00143_n38_β
# IR_SUBSCRIPT x[i] variable
 xchain00143_n00064_α:
 mov rdi, qword ptr [r12 + 992]
 mov rsi, qword ptr [r12 + 1000]
 mov rdx, qword ptr [r12 + 1008]
 mov rcx, qword ptr [r12 + 1016]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00143_n84_α
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain00143_n00069_α
 xchain00143_n00064_β:
 jmp xchain00143_n84_α
# IR_LIT_INTEGER
 xchain00143_n00065_α:
 mov qword ptr [r12 + 848], 6
 mov rax, qword ptr [rip + .Lx00170_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain00143_n00002_α
 xchain00143_n00065_β:
 jmp xchain00143_n91_α
.Lx00170_0:
 .quad 1
# IR_VAR
 xchain00143_n00067_α:
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 600], rax
 jmp xchain00143_n00071_α
 xchain00143_n00067_β:
 jmp xchain00143_n38_β
# IR_DEREF variable -> value
 xchain00143_n00069_α:
 mov rdi, qword ptr [r12 + 1056]
 mov rsi, qword ptr [r12 + 1064]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00143_n84_α
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain00143_n00072_α
 xchain00143_n00069_β:
 jmp xchain00143_n84_α
 xchain00143_n00002_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2560]
 cmp eax, 100
 je .Lx00171_0
 mov eax, dword ptr [r12 + 848]
 cmp eax, 100
 je .Lx00171_0
 mov eax, dword ptr [r12 + 2560]
 cmp eax, 6
 jne .Lx00171_2
 mov eax, dword ptr [r12 + 848]
 cmp eax, 6
 jne .Lx00171_2
.Lx00171_1:
 mov rax, qword ptr [r12 + 2568]
 mov rcx, qword ptr [r12 + 856]
 sub rax, rcx
 mov qword ptr [r12 + 816], 6
 mov qword ptr [r12 + 824], rax
 jmp xchain00143_n00073_α
.Lx00171_0:
 mov rdi, qword ptr [r12 + 2560]
 mov rsi, qword ptr [r12 + 2568]
 mov rdx, qword ptr [r12 + 848]
 mov rcx, qword ptr [r12 + 856]
 mov r8d, 1
 lea r9, [r12 + 816]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00171_3
.Lx00171_2:
 mov rdi, qword ptr [r12 + 2560]
 mov rsi, qword ptr [r12 + 2568]
 mov rdx, qword ptr [r12 + 848]
 mov rcx, qword ptr [r12 + 856]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00143_n91_α
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
.Lx00171_3:
 jmp xchain00143_n00073_α
 xchain00143_n00002_β:
 jmp xchain00143_n91_α
 xchain00143_n00071_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+592] -> [r12+576]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn749: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn749]
 lea rsi, [r12 + 576]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain00143_n38_β
 jmp xchain00143_n00074_α
 xchain00143_n00071_β:
 jmp xchain00143_n38_β
 xchain00143_n00072_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 976]
 cmp eax, 100
 je .Lx00172_0
 mov eax, dword ptr [r12 + 1072]
 cmp eax, 100
 je .Lx00172_0
 mov eax, dword ptr [r12 + 976]
 cmp eax, 6
 jne .Lx00172_2
 mov eax, dword ptr [r12 + 1072]
 cmp eax, 6
 jne .Lx00172_2
.Lx00172_1:
 mov rax, qword ptr [r12 + 984]
 mov rcx, qword ptr [r12 + 1080]
 add rax, rcx
 mov qword ptr [r12 + 912], 6
 mov qword ptr [r12 + 920], rax
 jmp xchain00143_n00075_α
.Lx00172_0:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1072]
 mov rcx, qword ptr [r12 + 1080]
 mov r8d, 0
 lea r9, [r12 + 912]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00172_3
.Lx00172_2:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1072]
 mov rcx, qword ptr [r12 + 1080]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00143_n84_α
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
.Lx00172_3:
 jmp xchain00143_n00075_α
 xchain00143_n00072_β:
 jmp xchain00143_n84_α
# IR_SUBSCRIPT x[i] variable
 xchain00143_n00073_α:
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, qword ptr [r12 + 816]
 mov rcx, qword ptr [r12 + 824]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00143_n91_α
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00143_n00003_α
 xchain00143_n00073_β:
 jmp xchain00143_n91_α
# IR_LIT_INTEGER
 xchain00143_n00074_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx00173_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00143_n00076_α
 xchain00143_n00074_β:
 jmp xchain00143_n38_β
.Lx00173_0:
 .quad 5000
 xchain00143_n00075_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00143_n84_α
 xchain00143_n00075_β:
 jmp xchain00143_n84_α
# IR_DEREF variable -> value
 xchain00143_n00003_α:
 mov rdi, qword ptr [r12 + 864]
 mov rsi, qword ptr [r12 + 872]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00143_n91_α
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00143_n00077_α
 xchain00143_n00003_β:
 jmp xchain00143_n91_α
 xchain00143_n00076_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 560]
 cmp eax, 100
 je .Lx00174_0
 mov eax, dword ptr [r12 + 608]
 cmp eax, 100
 je .Lx00174_0
 mov eax, dword ptr [r12 + 560]
 cmp eax, 6
 jne .Lx00174_2
 mov eax, dword ptr [r12 + 608]
 cmp eax, 6
 jne .Lx00174_2
.Lx00174_1:
 mov rax, qword ptr [r12 + 568]
 mov rcx, qword ptr [r12 + 616]
 cmp rax, rcx
 jge xchain00143_n38_β
 mov rcx, qword ptr [r12 + 608]
 mov qword ptr [r12 + 544], rcx
 mov rcx, qword ptr [r12 + 616]
 mov qword ptr [r12 + 552], rcx
 jmp xchain00143_n00078_α
.Lx00174_0:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 5
 lea r9, [r12 + 544]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00174_1
 cmp eax, 1
 je xchain00143_n38_β
 jmp xchain00143_n00078_α
.Lx00174_2:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00143_n38_β
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 552], rax
 jmp xchain00143_n00078_α
 xchain00143_n00076_β:
 jmp xchain00143_n38_β
 xchain00143_n00077_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 784]
 cmp eax, 100
 je .Lx00175_0
 mov eax, dword ptr [r12 + 880]
 cmp eax, 100
 je .Lx00175_0
 mov eax, dword ptr [r12 + 784]
 cmp eax, 6
 jne .Lx00175_2
 mov eax, dword ptr [r12 + 880]
 cmp eax, 6
 jne .Lx00175_2
.Lx00175_1:
 mov rax, qword ptr [r12 + 792]
 mov rcx, qword ptr [r12 + 888]
 add rax, rcx
 mov qword ptr [r12 + 720], 6
 mov qword ptr [r12 + 728], rax
 jmp xchain00143_n00079_α
.Lx00175_0:
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 880]
 mov rcx, qword ptr [r12 + 888]
 mov r8d, 0
 lea r9, [r12 + 720]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00175_3
.Lx00175_2:
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 880]
 mov rcx, qword ptr [r12 + 888]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00143_n91_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
.Lx00175_3:
 jmp xchain00143_n00079_α
 xchain00143_n00077_β:
 jmp xchain00143_n91_α
 xchain00143_n00078_α:
 jmp xchain00143_n00081_α
xchain00143_n00078_β:
 jmp xchain00143_n38_β
 xchain00143_n00079_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00143_n91_α
 xchain00143_n00079_β:
 jmp xchain00143_n91_α
# IR_VAR_REF gva
 xchain00143_n00081_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00143_n00083_α
 xchain00143_n00081_β:
 jmp xchain00143_n00084_α
# IR_VAR
 xchain00143_n00083_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 488], rax
 jmp xchain00143_n00012_α
 xchain00143_n00083_β:
 jmp xchain00143_n00084_α
# IR_SUBSCRIPT x[i] variable
 xchain00143_n00012_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00143_n00084_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00143_n00085_α
 xchain00143_n00012_β:
 jmp xchain00143_n00084_α
# IR_VAR_REF gva
 xchain00143_n00084_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00143_n00086_α
 xchain00143_n00084_β:
 jmp xchain00143_n00088_α
# IR_VAR
 xchain00143_n00085_α:
 mov rax, qword ptr [r12 + 2592]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 536], rax
 jmp xchain00143_n00004_α
 xchain00143_n00085_β:
 jmp xchain00143_n00084_α
# IR_VAR
 xchain00143_n00086_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 408], rax
 jmp xchain00143_n00087_α
 xchain00143_n00086_β:
 jmp xchain00143_n00088_α
# IR_ASSIGN_VAR write through variable
 xchain00143_n00004_α:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00143_n00084_α
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00143_n00084_α
 xchain00143_n00004_β:
 jmp xchain00143_n00084_α
# IR_SUBSCRIPT x[i] variable
 xchain00143_n00087_α:
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00143_n00088_α
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00143_n00090_α
 xchain00143_n00087_β:
 jmp xchain00143_n00088_α
# IR_VAR_REF gva
 xchain00143_n00088_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00143_n00091_α
 xchain00143_n00088_β:
 jmp xchain00143_n38_β
# IR_VAR
 xchain00143_n00090_α:
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 456], rax
 jmp xchain00143_n00092_α
 xchain00143_n00090_β:
 jmp xchain00143_n00088_α
# IR_VAR
 xchain00143_n00091_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 216], rax
 jmp xchain00143_n00093_α
 xchain00143_n00091_β:
 jmp xchain00143_n38_β
# IR_ASSIGN_VAR write through variable
 xchain00143_n00092_α:
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00143_n00088_α
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00143_n00088_α
 xchain00143_n00092_β:
 jmp xchain00143_n00088_α
# IR_LIT_INTEGER
 xchain00143_n00093_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00176_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00143_n00005_α
 xchain00143_n00093_β:
 jmp xchain00143_n38_β
.Lx00176_0:
 .quad 1
 xchain00143_n00005_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2560]
 cmp eax, 100
 je .Lx00177_0
 mov eax, dword ptr [r12 + 224]
 cmp eax, 100
 je .Lx00177_0
 mov eax, dword ptr [r12 + 2560]
 cmp eax, 6
 jne .Lx00177_2
 mov eax, dword ptr [r12 + 224]
 cmp eax, 6
 jne .Lx00177_2
.Lx00177_1:
 mov rax, qword ptr [r12 + 2568]
 mov rcx, qword ptr [r12 + 232]
 sub rax, rcx
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
 jmp xchain00143_n00095_α
.Lx00177_0:
 mov rdi, qword ptr [r12 + 2560]
 mov rsi, qword ptr [r12 + 2568]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 1
 lea r9, [r12 + 192]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00177_3
.Lx00177_2:
 mov rdi, qword ptr [r12 + 2560]
 mov rsi, qword ptr [r12 + 2568]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00143_n38_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
.Lx00177_3:
 jmp xchain00143_n00095_α
 xchain00143_n00005_β:
 jmp xchain00143_n38_β
# IR_SUBSCRIPT x[i] variable
 xchain00143_n00095_α:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00143_n38_β
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00143_n00097_α
 xchain00143_n00095_β:
 jmp xchain00143_n38_β
# IR_VAR_REF gva
 xchain00143_n00097_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00143_n00099_α
 xchain00143_n00097_β:
 jmp xchain00143_n38_β
# IR_VAR
 xchain00143_n00099_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 312], rax
 jmp xchain00143_n00100_α
 xchain00143_n00099_β:
 jmp xchain00143_n38_β
# IR_LIT_INTEGER
 xchain00143_n00100_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx00178_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00143_n00105_α
 xchain00143_n00100_β:
 jmp xchain00143_n38_β
.Lx00178_0:
 .quad 1
 xchain00143_n00105_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2560]
 cmp eax, 100
 je .Lx00179_0
 mov eax, dword ptr [r12 + 320]
 cmp eax, 100
 je .Lx00179_0
 mov eax, dword ptr [r12 + 2560]
 cmp eax, 6
 jne .Lx00179_2
 mov eax, dword ptr [r12 + 320]
 cmp eax, 6
 jne .Lx00179_2
.Lx00179_1:
 mov rax, qword ptr [r12 + 2568]
 mov rcx, qword ptr [r12 + 328]
 sub rax, rcx
 mov qword ptr [r12 + 288], 6
 mov qword ptr [r12 + 296], rax
 jmp xchain00143_n00102_α
.Lx00179_0:
 mov rdi, qword ptr [r12 + 2560]
 mov rsi, qword ptr [r12 + 2568]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 1
 lea r9, [r12 + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00179_3
.Lx00179_2:
 mov rdi, qword ptr [r12 + 2560]
 mov rsi, qword ptr [r12 + 2568]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00143_n38_β
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
.Lx00179_3:
 jmp xchain00143_n00102_α
 xchain00143_n00105_β:
 jmp xchain00143_n38_β
# IR_SUBSCRIPT x[i] variable
 xchain00143_n00102_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00143_n38_β
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00143_n00104_α
 xchain00143_n00102_β:
 jmp xchain00143_n38_β
# IR_LIT_INTEGER
 xchain00143_n00104_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00180_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00143_n00106_α
 xchain00143_n00104_β:
 jmp xchain00143_n38_β
.Lx00180_0:
 .quad 0
# IR_ASSIGN_VAR write through variable
 xchain00143_n00106_α:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00143_n38_β
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00143_n00108_α
 xchain00143_n00106_β:
 jmp xchain00143_n38_β
# IR_ASSIGN_VAR write through variable
 xchain00143_n00108_α:
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00143_n38_β
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00143_n00015_α
 xchain00143_n00108_β:
 jmp xchain00143_n38_β
 xchain00143_n00015_α:
 jmp xchain00143_n00110_α
xchain00143_n00015_β:
 jmp xchain00143_n38_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00143_n00110_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 152], rax
 lea rax, [rip + xchain00143_n38_β]
 mov qword ptr [r12 + 160], rax
 jmp xchain00143_n00112_α
 xchain00143_n00110_β:
 jmp xchain00143_n38_β
 xchain00143_n00112_α:
 jmp xchain00143_n00115_α
xchain00143_n00112_β:
 jmp xchain00143_n38_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00143_n00113_α:
 jmp qword ptr [r12 + 160]
 xchain00143_n00113_β:
 jmp xchain00143_n38_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00143_n00115_α:
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
 lea rax, [rip + xchain00143_n00113_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain00143_n00117_α
 xchain00143_n00115_β:
 jmp xchain00143_n38_β
 xchain00143_n00117_α:
 jmp xchain00143_n38_β
xchain00143_n00117_β:
 jmp xchain00143_n38_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00143_n00006_α:
 jmp qword ptr [r12 + 128]
 xchain00143_n00006_β:
 jmp xchain00143_n38_β
proc_collapse_β:
jmp proc_collapse_ω
proc_collapse_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 2544]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1248], rax
 pop rsi
proc_successor_α_body:
# IR_VAR_REF gva
 xchain00181_n0_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain00181_n1_α
 xchain00181_n0_β:
 jmp xchain00181_n3_α
# IR_VAR
 xchain00181_n1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1208], rax
 jmp xchain00181_n2_α
 xchain00181_n1_β:
 jmp xchain00181_n3_α
# IR_FIELD_GET
 xchain00181_n2_α:
 mov rdi, qword ptr [rip + .Lx00182_0]
 mov rsi, qword ptr [r12 + 1200]
 mov rdx, qword ptr [r12 + 1208]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00181_n3_α
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain00181_n4_α
 xchain00181_n2_β:
 jmp xchain00181_n3_α
.Lx00182_0:
 .quad .Lx00182_0_s
.Lx00182_0_s:
 .string "code"
# IR_VAR
 xchain00181_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00181_n5_α
 xchain00181_n3_β:
 jmp xchain00181_n6_α
# IR_SUBSCRIPT x[i] variable
 xchain00181_n4_α:
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 mov rdx, qword ptr [r12 + 1184]
 mov rcx, qword ptr [r12 + 1192]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00181_n3_α
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain00181_n7_α
 xchain00181_n4_β:
 jmp xchain00181_n3_α
# IR_FIELD_GET
 xchain00181_n5_α:
 mov rdi, qword ptr [rip + .Lx00183_0]
 mov rsi, qword ptr [r12 + 992]
 mov rdx, qword ptr [r12 + 1000]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00181_n6_α
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain00181_n8_α
 xchain00181_n5_β:
 jmp xchain00181_n6_α
.Lx00183_0:
 .quad .Lx00183_0_s
.Lx00183_0_s:
 .string "x2"
# IR_LIT_INTEGER
 xchain00181_n6_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00184_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00181_n9_α
 xchain00181_n6_β:
 jmp xchain00181_n13_α
.Lx00184_0:
 .quad 0
# IR_DEREF variable -> value
 xchain00181_n7_α:
 mov rdi, qword ptr [r12 + 1216]
 mov rsi, qword ptr [r12 + 1224]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00181_n3_α
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain00181_n10_α
 xchain00181_n7_β:
 jmp xchain00181_n3_α
# IR_VAR
 xchain00181_n8_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00181_n11_α
 xchain00181_n8_β:
 jmp xchain00181_n6_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00181_n9_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + xchain00181_n13_α]
 mov qword ptr [r12 + 64], rax
 jmp xchain00181_n12_α
 xchain00181_n9_β:
 jmp proc_successor_ω
 xchain00181_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1232]
 mov rdx, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain00181_n3_α
 xchain00181_n10_β:
 jmp xchain00181_n3_α
# IR_FIELD_GET
 xchain00181_n11_α:
 mov rdi, qword ptr [rip + .Lx00185_0]
 mov rsi, qword ptr [r12 + 1024]
 mov rdx, qword ptr [r12 + 1032]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00181_n6_α
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain00181_n15_α
 xchain00181_n11_β:
 jmp xchain00181_n6_α
.Lx00185_0:
 .quad .Lx00185_0_s
.Lx00185_0_s:
 .string "y2"
 xchain00181_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00181_n16_α
 xchain00181_n12_β:
 jmp proc_successor_ω
# IR_LIT_INTEGER
 xchain00181_n13_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00186_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00181_n17_α
 xchain00181_n13_β:
 jmp xchain00181_n20_α
.Lx00186_0:
 .quad 1
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00181_n14_α:
 jmp qword ptr [r12 + 64]
 xchain00181_n14_β:
 jmp proc_successor_ω
 xchain00181_n15_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 976]
 cmp eax, 100
 je .Lx00187_0
 mov eax, dword ptr [r12 + 1008]
 cmp eax, 100
 je .Lx00187_0
 mov eax, dword ptr [r12 + 976]
 cmp eax, 6
 jne .Lx00187_2
 mov eax, dword ptr [r12 + 1008]
 cmp eax, 6
 jne .Lx00187_2
.Lx00187_1:
 mov rax, qword ptr [r12 + 984]
 mov rcx, qword ptr [r12 + 1016]
 add rax, rcx
 mov qword ptr [r12 + 960], 6
 mov qword ptr [r12 + 968], rax
 jmp xchain00181_n18_α
.Lx00187_0:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1008]
 mov rcx, qword ptr [r12 + 1016]
 mov r8d, 0
 lea r9, [r12 + 960]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00187_3
.Lx00187_2:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1008]
 mov rcx, qword ptr [r12 + 1016]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00181_n6_α
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
.Lx00187_3:
 jmp xchain00181_n18_α
 xchain00181_n15_β:
 jmp xchain00181_n6_α
# IR_VAR_REF local
 xchain00181_n16_α:
 lea rdi, [r12 + 1344]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00181_n19_α
 xchain00181_n16_β:
 jmp xchain00181_n14_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00181_n17_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + xchain00181_n20_α]
 mov qword ptr [r12 + 64], rax
 jmp xchain00181_n12_α
 xchain00181_n17_β:
 jmp proc_successor_ω
# IR_LIT_INTEGER
 xchain00181_n18_α:
 mov qword ptr [r12 + 1040], 6
 mov rax, qword ptr [rip + .Lx00188_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain00181_n21_α
 xchain00181_n18_β:
 jmp xchain00181_n6_α
.Lx00188_0:
 .quad 8
# IR_VAR
 xchain00181_n19_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 824], rax
 jmp xchain00181_n22_α
 xchain00181_n19_β:
 jmp xchain00181_n14_α
# IR_LIT_INTEGER
 xchain00181_n20_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx00189_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain00181_n24_α
 xchain00181_n20_β:
 jmp proc_successor_ω
.Lx00189_0:
 .quad 18446744073709551615
 xchain00181_n21_α:
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
  .Lrkfn835: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn835]
 lea rsi, [r12 + 928]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain00181_n6_α
 jmp xchain00181_n25_α
 xchain00181_n21_β:
 jmp xchain00181_n6_α
# IR_FIELD_GET
 xchain00181_n22_α:
 mov rdi, qword ptr [rip + .Lx00190_0]
 mov rsi, qword ptr [r12 + 816]
 mov rdx, qword ptr [r12 + 824]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00181_n14_α
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00181_n26_α
 xchain00181_n22_β:
 jmp xchain00181_n14_α
.Lx00190_0:
 .quad .Lx00190_0_s
.Lx00190_0_s:
 .string "aindex"
 xchain00181_n23_α:
 jmp xchain00181_n14_α
xchain00181_n23_β:
 jmp xchain00181_n14_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00181_n24_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + proc_successor_ω]
 mov qword ptr [r12 + 64], rax
 jmp xchain00181_n12_α
 xchain00181_n24_β:
 jmp proc_successor_ω
# IR_VAR
 xchain00181_n25_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00181_n27_α
 xchain00181_n25_β:
 jmp xchain00181_n6_α
# IR_VAR
 xchain00181_n26_α:
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 840], rax
 jmp xchain00181_n28_α
 xchain00181_n26_β:
 jmp xchain00181_n14_α
# IR_FIELD_GET
 xchain00181_n27_α:
 mov rdi, qword ptr [rip + .Lx00191_0]
 mov rsi, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00181_n6_α
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain00181_n29_α
 xchain00181_n27_β:
 jmp xchain00181_n6_α
.Lx00191_0:
 .quad .Lx00191_0_s
.Lx00191_0_s:
 .string "x2"
 xchain00181_n28_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 800]
 cmp eax, 100
 je .Lx00192_0
 mov eax, dword ptr [r12 + 1264]
 cmp eax, 100
 je .Lx00192_0
 mov eax, dword ptr [r12 + 800]
 cmp eax, 6
 jne .Lx00192_2
 mov eax, dword ptr [r12 + 1264]
 cmp eax, 6
 jne .Lx00192_2
.Lx00192_1:
 mov rax, qword ptr [r12 + 808]
 mov rcx, qword ptr [r12 + 1272]
 add rax, rcx
 mov qword ptr [r12 + 784], 6
 mov qword ptr [r12 + 792], rax
 jmp xchain00181_n30_α
.Lx00192_0:
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1272]
 mov r8d, 0
 lea r9, [r12 + 784]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00192_3
.Lx00192_2:
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1272]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00181_n14_α
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
.Lx00192_3:
 jmp xchain00181_n30_α
 xchain00181_n28_β:
 jmp xchain00181_n14_α
# IR_LIT_INTEGER
 xchain00181_n29_α:
 mov qword ptr [r12 + 1136], 6
 mov rax, qword ptr [rip + .Lx00193_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain00181_n31_α
 xchain00181_n29_β:
 jmp xchain00181_n6_α
.Lx00193_0:
 .quad 7
# IR_SUBSCRIPT x[i] variable
 xchain00181_n30_α:
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00181_n14_α
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain00181_n32_α
 xchain00181_n30_β:
 jmp xchain00181_n14_α
 xchain00181_n31_α:
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
  .Lrkfn849: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn849]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00181_n6_α
 jmp xchain00181_n33_α
 xchain00181_n31_β:
 jmp xchain00181_n6_α
# IR_DEREF variable -> value
 xchain00181_n32_α:
 mov rdi, qword ptr [r12 + 848]
 mov rsi, qword ptr [r12 + 856]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00181_n14_α
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00181_n34_α
 xchain00181_n32_β:
 jmp xchain00181_n14_α
 xchain00181_n33_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 mov rdx, qword ptr [r12 + 1056]
 mov rcx, qword ptr [r12 + 1064]
 call str_concat_d@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00181_n35_α
 xchain00181_n33_β:
 jmp xchain00181_n6_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00181_n34_α:
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 744], rax
 lea rax, [rip + xchain00181_n23_α]
 mov qword ptr [r12 + 752], rax
 jmp xchain00181_n36_α
 xchain00181_n34_β:
 jmp xchain00181_n38_α
 xchain00181_n35_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00181_n6_α
 xchain00181_n35_β:
 jmp xchain00181_n6_α
 xchain00181_n36_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 736]
 mov rdx, qword ptr [r12 + 744]
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00181_n38_α
 xchain00181_n36_β:
 jmp xchain00181_n38_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00181_n37_α:
 jmp qword ptr [r12 + 752]
 xchain00181_n37_β:
 jmp xchain00181_n38_α
# IR_VAR_REF local
 xchain00181_n38_α:
 lea rdi, [r12 + 1312]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain00181_n39_α
 xchain00181_n38_β:
 jmp xchain00181_n14_α
# IR_VAR
 xchain00181_n39_α:
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 680], rax
 jmp xchain00181_n40_α
 xchain00181_n39_β:
 jmp xchain00181_n14_α
# IR_SUBSCRIPT x[i] variable
 xchain00181_n40_α:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00181_n14_α
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00181_n41_α
 xchain00181_n40_β:
 jmp xchain00181_n14_α
# IR_DEREF variable -> value
 xchain00181_n41_α:
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00181_n14_α
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00181_n42_α
 xchain00181_n41_β:
 jmp xchain00181_n14_α
# IR_UNOP
 xchain00181_n42_α:
 mov eax, dword ptr [r12 + 704]
 cmp eax, 99
 je xchain00181_n14_α
 cmp eax, 0
 je xchain00181_n14_α
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 648], rax
 jmp xchain00181_n43_α
 xchain00181_n42_β:
 jmp xchain00181_n14_α
 xchain00181_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00181_n44_α
 xchain00181_n43_β:
 jmp xchain00181_n14_α
# IR_VAR
 xchain00181_n44_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 600], rax
 jmp xchain00181_n45_α
 xchain00181_n44_β:
 jmp xchain00181_n46_α
 xchain00181_n45_α:
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
 je xchain00181_n46_α
 jmp xchain00181_n47_α
 xchain00181_n45_β:
 jmp xchain00181_n46_α
# IR_VAR
 xchain00181_n46_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 536], rax
 jmp xchain00181_n48_α
 xchain00181_n46_β:
 jmp xchain00181_n14_α
# IR_LIT_STRING
 xchain00181_n47_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx00194_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00181_n49_α
 xchain00181_n47_β:
 jmp xchain00181_n46_α
.Lx00194_0:
 .quad .Lx00194_0_s
.Lx00194_0_s:
 .string "list"
# IR_LIST_BANG
 xchain00181_n48_α:
 mov qword ptr [r12 + 512], 0
.Lx00195_0:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 512]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp rax, 99
 je xchain00181_n14_α
 jmp xchain00181_n50_α
 xchain00181_n48_β:
 inc qword ptr [r12 + 512]
 jmp .Lx00195_0
 xchain00181_n49_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00181_n46_α
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00181_n51_α
 xchain00181_n49_β:
 jmp xchain00181_n46_α
 xchain00181_n50_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00181_n52_α
 xchain00181_n50_β:
 jmp xchain00181_n14_α
# IR_VAR gva
 xchain00181_n51_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00181_n53_α
 xchain00181_n51_β:
 jmp xchain00181_n54_α
# IR_VAR gva
 xchain00181_n52_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00181_n55_α
 xchain00181_n52_β:
 jmp xchain00181_n56_α
# IR_VAR
 xchain00181_n53_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 328], rax
 jmp xchain00181_n57_α
 xchain00181_n53_β:
 jmp xchain00181_n54_α
# IR_KEYWORD_null
 xchain00181_n54_α:
 mov qword ptr [r12 + 240], 0
 mov qword ptr [r12 + 248], 0
 jmp xchain00181_n58_α
 xchain00181_n54_β:
 jmp xchain00181_n14_α
# IR_VAR
 xchain00181_n55_α:
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 472], rax
 jmp xchain00181_n59_α
 xchain00181_n55_β:
 jmp xchain00181_n56_α
# IR_KEYWORD_null
 xchain00181_n56_α:
 mov qword ptr [r12 + 384], 0
 mov qword ptr [r12 + 392], 0
 jmp xchain00181_n60_α
 xchain00181_n56_β:
 jmp xchain00181_n48_β
 xchain00181_n57_α:
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
  .Lrkfn886: .string "member"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn886]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain00181_n54_α
 jmp xchain00181_n14_α
 xchain00181_n57_β:
 jmp xchain00181_n54_α
# IR_VAR
 xchain00181_n58_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 232], rax
 jmp xchain00181_n61_α
 xchain00181_n58_β:
 jmp proc_successor_ω
 xchain00181_n59_α:
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
  .Lrkfn890: .string "member"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn890]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00181_n56_α
 jmp xchain00181_n48_β
 xchain00181_n59_β:
 jmp xchain00181_n56_α
 xchain00181_n60_α:
 jmp xchain00181_n62_α
xchain00181_n60_β:
 jmp xchain00181_n14_α
# IR_RETURN
 xchain00181_n61_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_successor_γ
# IR_VAR
 xchain00181_n62_α:
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 376], rax
 jmp xchain00181_n63_α
 xchain00181_n62_β:
 jmp proc_successor_ω
# IR_RETURN
 xchain00181_n63_α:
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
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1248]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 2240], rax
 pop rsi
proc_crack_α_body:
# IR_VAR_REF gva
 xchain00196_n0_α:
 lea rdi, [rbx + 144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain00196_n1_α
 xchain00196_n0_β:
 jmp xchain00196_n3_α
# IR_UNOP_TEST lv
 xchain00196_n1_α:
 mov eax, dword ptr [r12 + 2176]
 cmp eax, 99
 je xchain00196_n3_α
 mov rdi, qword ptr [r12 + 2176]
 mov rsi, qword ptr [r12 + 2184]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00196_n3_α
 cmp eax, 0
 jne xchain00196_n3_α
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 2200], rax
 jmp xchain00196_n2_α
 xchain00196_n1_β:
 jmp xchain00196_n3_α
# IR_LIT_INTEGER
 xchain00196_n2_α:
 mov qword ptr [r12 + 2224], 6
 mov rax, qword ptr [rip + .Lx00197_0]
 mov qword ptr [r12 + 2232], rax
 jmp xchain00196_n4_α
 xchain00196_n2_β:
 jmp xchain00196_n3_α
.Lx00197_0:
 .quad 1
# IR_VAR
 xchain00196_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 2096], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 2104], rax
 jmp xchain00196_n5_α
 xchain00196_n3_β:
 jmp xchain00196_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00196_n4_α:
 mov rdi, qword ptr [r12 + 2192]
 mov rsi, qword ptr [r12 + 2200]
 mov rdx, qword ptr [r12 + 2224]
 mov rcx, qword ptr [r12 + 2232]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00196_n3_α
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 jmp xchain00196_n7_α
 xchain00196_n4_β:
 jmp xchain00196_n3_α
# IR_GEN_SCAN
 xchain00196_n5_α:
 mov rdi, qword ptr [r12 + 2096]
 mov rsi, qword ptr [r12 + 2104]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00196_n8_α
 xchain00196_n5_β:
 jmp xchain00196_n6_α
# IR_VAR gva
 xchain00196_n6_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00196_n9_α
 xchain00196_n6_β:
 jmp proc_crack_ω
 xchain00196_n7_α:
# BOX IR_CALL crec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn908: .string "crec"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn908]
 lea rsi, [r12 + 2176]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 cmp eax, 99
 je xchain00196_n3_α
 jmp xchain00196_n10_α
 xchain00196_n7_β:
 jmp xchain00196_n3_α
# IR_VAR gva
 xchain00196_n8_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 jmp xchain00196_n11_α
 xchain00196_n8_β:
 jmp xchain00196_n12_α
# IR_RETURN
 xchain00196_n9_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_crack_γ
# IR_ASSIGN gva
 xchain00196_n10_α:
 mov rax, qword ptr [r12 + 2160]
 mov rdx, qword ptr [r12 + 2168]
 mov qword ptr [rbx + 128], rax
 mov qword ptr [rbx + 136], rdx
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain00196_n13_α
 xchain00196_n10_β:
 jmp xchain00196_n3_α
# IR_FIELD_GET lv
 xchain00196_n11_α:
 mov rdi, qword ptr [rip + .Lx00198_0]
 mov rsi, qword ptr [r12 + 2016]
 mov rdx, qword ptr [r12 + 2024]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00196_n12_α
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain00196_n14_α
 xchain00196_n11_β:
 jmp xchain00196_n12_α
.Lx00198_0:
 .quad .Lx00198_0_s
.Lx00198_0_s:
 .string "code"
# IR_LIT_INTEGER
 xchain00196_n12_α:
 mov qword ptr [r12 + 1984], 6
 mov rax, qword ptr [rip + .Lx00199_0]
 mov qword ptr [r12 + 1992], rax
 jmp xchain00196_n15_α
 xchain00196_n12_β:
 jmp xchain00196_n18_α
.Lx00199_0:
 .quad 4
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00196_n13_α:
 mov rax, qword ptr [r12 + 2144]
 mov qword ptr [r12 + 2112], rax
 mov rax, qword ptr [r12 + 2152]
 mov qword ptr [r12 + 2120], rax
 lea rax, [rip + xchain00196_n3_α]
 mov qword ptr [r12 + 2128], rax
 jmp xchain00196_n3_α
 xchain00196_n13_β:
 jmp xchain00196_n3_α
# IR_LIT_INTEGER
 xchain00196_n14_α:
 mov qword ptr [r12 + 2080], 6
 mov rax, qword ptr [rip + .Lx00200_0]
 mov qword ptr [r12 + 2088], rax
 jmp xchain00196_n17_α
 xchain00196_n14_β:
 jmp xchain00196_n12_α
.Lx00200_0:
 .quad 4
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00196_n15_α:
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00196_n18_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00196_n18_α
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
 jmp xchain00196_n18_α
 xchain00196_n15_β:
 mov r14, qword ptr [r12 + 1968]
 jmp xchain00196_n18_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00196_n16_α:
 jmp qword ptr [r12 + 2128]
 xchain00196_n16_β:
 jmp xchain00196_n3_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00196_n17_α:
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00196_n12_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00196_n12_α
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
 jmp xchain00196_n19_α
 xchain00196_n17_β:
 mov r14, qword ptr [r12 + 2064]
 jmp xchain00196_n12_α
# IR_LIT_INTEGER
 xchain00196_n18_α:
 mov qword ptr [r12 + 1936], 6
 mov rax, qword ptr [rip + .Lx00201_0]
 mov qword ptr [r12 + 1944], rax
 jmp xchain00196_n20_α
 xchain00196_n18_β:
 jmp xchain00196_n22_α
.Lx00201_0:
 .quad 7
# IR_ASSIGN_VAR write through variable
 xchain00196_n19_α:
 mov rdi, qword ptr [r12 + 2000]
 mov rsi, qword ptr [r12 + 2008]
 mov rdx, qword ptr [r12 + 2048]
 mov rcx, qword ptr [r12 + 2056]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00196_n12_α
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 jmp xchain00196_n12_α
 xchain00196_n19_β:
 jmp xchain00196_n12_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00196_n20_α:
 mov rax, 7
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00196_n22_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00196_n22_α
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
 jmp xchain00196_n21_α
 xchain00196_n20_β:
 mov r14, qword ptr [r12 + 1920]
 jmp xchain00196_n22_α
 xchain00196_n21_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1904] -> [r12+1888]
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1896], rax
  .section .rodata
  .Lrkfn928: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn928]
 lea rsi, [r12 + 1888]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 cmp eax, 99
 je xchain00196_n22_α
 jmp xchain00196_n23_α
 xchain00196_n21_β:
 jmp xchain00196_n22_α
# IR_LIT_INTEGER
 xchain00196_n22_α:
 mov qword ptr [r12 + 1824], 6
 mov rax, qword ptr [rip + .Lx00202_0]
 mov qword ptr [r12 + 1832], rax
 jmp xchain00196_n24_α
 xchain00196_n22_β:
 jmp xchain00196_n27_α
.Lx00202_0:
 .quad 7
 xchain00196_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1872]
 mov rdx, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 jmp xchain00196_n25_α
 xchain00196_n23_β:
 jmp xchain00196_n22_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00196_n24_α:
 mov rax, 7
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00196_n27_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00196_n27_α
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
 jmp xchain00196_n26_α
 xchain00196_n24_β:
 mov r14, qword ptr [r12 + 1808]
 jmp xchain00196_n27_α
 xchain00196_n25_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1856]
 mov rdx, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 jmp xchain00196_n22_α
 xchain00196_n25_β:
 jmp xchain00196_n22_α
 xchain00196_n26_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1792] -> [r12+1776]
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1784], rax
  .section .rodata
  .Lrkfn935: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn935]
 lea rsi, [r12 + 1776]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 cmp eax, 99
 je xchain00196_n27_α
 jmp xchain00196_n28_α
 xchain00196_n26_β:
 jmp xchain00196_n27_α
# IR_VAR
 xchain00196_n27_α:
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00196_n29_α
 xchain00196_n27_β:
 jmp xchain00196_n30_α
 xchain00196_n28_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1760]
 mov rdx, qword ptr [r12 + 1768]
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain00196_n31_α
 xchain00196_n28_β:
 jmp xchain00196_n27_α
# IR_LIT_INTEGER
 xchain00196_n29_α:
 mov qword ptr [r12 + 1568], 6
 mov rax, qword ptr [rip + .Lx00203_0]
 mov qword ptr [r12 + 1576], rax
 jmp xchain00196_n32_α
 xchain00196_n29_β:
 jmp xchain00196_n30_α
.Lx00203_0:
 .quad 4
# IR_VAR
 xchain00196_n30_α:
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00196_n33_α
 xchain00196_n30_β:
 jmp xchain00196_n34_α
 xchain00196_n31_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1744]
 mov rdx, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain00196_n27_α
 xchain00196_n31_β:
 jmp xchain00196_n27_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00196_n32_α:
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00196_n30_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00196_n30_α
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
 jmp xchain00196_n35_α
 xchain00196_n32_β:
 mov r14, qword ptr [r12 + 1552]
 jmp xchain00196_n30_α
# IR_VAR
 xchain00196_n33_α:
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 1416], rax
 jmp xchain00196_n36_α
 xchain00196_n33_β:
 jmp xchain00196_n34_α
# IR_VAR gva
 xchain00196_n34_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain00196_n37_α
 xchain00196_n34_β:
 jmp xchain00196_n38_α
# IR_LIT_INTEGER
 xchain00196_n35_α:
 mov qword ptr [r12 + 1584], 6
 mov rax, qword ptr [rip + .Lx00204_0]
 mov qword ptr [r12 + 1592], rax
 jmp xchain00196_n39_α
 xchain00196_n35_β:
 jmp xchain00196_n30_α
.Lx00204_0:
 .quad 5000
 xchain00196_n36_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 100
 je .Lx00205_0
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 100
 je .Lx00205_0
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 6
 jne .Lx00205_2
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 6
 jne .Lx00205_2
.Lx00205_1:
 mov rax, qword ptr [r12 + 2328]
 mov rcx, qword ptr [r12 + 2296]
 add rax, rcx
 mov qword ptr [r12 + 1376], 6
 mov qword ptr [r12 + 1384], rax
 jmp xchain00196_n40_α
.Lx00205_0:
 mov rdi, qword ptr [r12 + 2320]
 mov rsi, qword ptr [r12 + 2328]
 mov rdx, qword ptr [r12 + 2288]
 mov rcx, qword ptr [r12 + 2296]
 mov r8d, 0
 lea r9, [r12 + 1376]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00205_3
.Lx00205_2:
 mov rdi, qword ptr [r12 + 2320]
 mov rsi, qword ptr [r12 + 2328]
 mov rdx, qword ptr [r12 + 2288]
 mov rcx, qword ptr [r12 + 2296]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00196_n34_α
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
.Lx00205_3:
 jmp xchain00196_n40_α
 xchain00196_n36_β:
 jmp xchain00196_n34_α
# IR_FIELD_GET lv
 xchain00196_n37_α:
 mov rdi, qword ptr [rip + .Lx00206_0]
 mov rsi, qword ptr [r12 + 1296]
 mov rdx, qword ptr [r12 + 1304]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00196_n38_α
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain00196_n41_α
 xchain00196_n37_β:
 jmp xchain00196_n38_α
.Lx00206_0:
 .quad .Lx00206_0_s
.Lx00206_0_s:
 .string "rev"
# IR_VAR gva
 xchain00196_n38_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain00196_n42_α
 xchain00196_n38_β:
 jmp xchain00196_n43_α
 xchain00196_n39_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1536]
 cmp eax, 100
 je .Lx00207_0
 mov eax, dword ptr [r12 + 1584]
 cmp eax, 100
 je .Lx00207_0
 mov eax, dword ptr [r12 + 1536]
 cmp eax, 6
 jne .Lx00207_2
 mov eax, dword ptr [r12 + 1584]
 cmp eax, 6
 jne .Lx00207_2
.Lx00207_1:
 mov rax, qword ptr [r12 + 1544]
 mov rcx, qword ptr [r12 + 1592]
 sub rax, rcx
 mov qword ptr [r12 + 1520], 6
 mov qword ptr [r12 + 1528], rax
 jmp xchain00196_n44_α
.Lx00207_0:
 mov rdi, qword ptr [r12 + 1536]
 mov rsi, qword ptr [r12 + 1544]
 mov rdx, qword ptr [r12 + 1584]
 mov rcx, qword ptr [r12 + 1592]
 mov r8d, 1
 lea r9, [r12 + 1520]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00207_3
.Lx00207_2:
 mov rdi, qword ptr [r12 + 1536]
 mov rsi, qword ptr [r12 + 1544]
 mov rdx, qword ptr [r12 + 1584]
 mov rcx, qword ptr [r12 + 1592]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00196_n30_α
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
.Lx00207_3:
 jmp xchain00196_n44_α
 xchain00196_n39_β:
 jmp xchain00196_n30_α
# IR_VAR
 xchain00196_n40_α:
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00196_n45_α
 xchain00196_n40_β:
 jmp xchain00196_n34_α
# IR_KEYWORD_null
 xchain00196_n41_α:
 mov qword ptr [r12 + 1328], 0
 mov qword ptr [r12 + 1336], 0
 jmp xchain00196_n46_α
 xchain00196_n41_β:
 jmp xchain00196_n38_α
# IR_FIELD_GET lv
 xchain00196_n42_α:
 mov rdi, qword ptr [rip + .Lx00208_0]
 mov rsi, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00196_n43_α
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00196_n47_α
 xchain00196_n42_β:
 jmp xchain00196_n43_α
.Lx00208_0:
 .quad .Lx00208_0_s
.Lx00208_0_s:
 .string "key"
# IR_VAR gva
 xchain00196_n43_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00196_n48_α
 xchain00196_n43_β:
 jmp xchain00196_n49_α
 xchain00196_n44_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2304]
 cmp eax, 100
 je .Lx00209_0
 mov eax, dword ptr [r12 + 1520]
 cmp eax, 100
 je .Lx00209_0
 mov eax, dword ptr [r12 + 2304]
 cmp eax, 6
 jne .Lx00209_2
 mov eax, dword ptr [r12 + 1520]
 cmp eax, 6
 jne .Lx00209_2
.Lx00209_1:
 mov rax, qword ptr [r12 + 2312]
 mov rcx, qword ptr [r12 + 1528]
 add rax, rcx
 mov qword ptr [r12 + 1488], 6
 mov qword ptr [r12 + 1496], rax
 jmp xchain00196_n50_α
.Lx00209_0:
 mov rdi, qword ptr [r12 + 2304]
 mov rsi, qword ptr [r12 + 2312]
 mov rdx, qword ptr [r12 + 1520]
 mov rcx, qword ptr [r12 + 1528]
 mov r8d, 0
 lea r9, [r12 + 1488]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00209_3
.Lx00209_2:
 mov rdi, qword ptr [r12 + 2304]
 mov rsi, qword ptr [r12 + 2312]
 mov rdx, qword ptr [r12 + 1520]
 mov rcx, qword ptr [r12 + 1528]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00196_n30_α
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
.Lx00209_3:
 jmp xchain00196_n50_α
 xchain00196_n44_β:
 jmp xchain00196_n30_α
# IR_VAR
 xchain00196_n45_α:
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 1464], rax
 jmp xchain00196_n51_α
 xchain00196_n45_β:
 jmp xchain00196_n34_α
# IR_ASSIGN_VAR write through variable
 xchain00196_n46_α:
 mov rdi, qword ptr [r12 + 1280]
 mov rsi, qword ptr [r12 + 1288]
 mov rdx, qword ptr [r12 + 1328]
 mov rcx, qword ptr [r12 + 1336]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00196_n38_α
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain00196_n52_α
 xchain00196_n46_β:
 jmp xchain00196_n38_α
# IR_VAR
 xchain00196_n47_α:
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 968], rax
 jmp xchain00196_n53_α
 xchain00196_n47_β:
 jmp xchain00196_n43_α
# IR_FIELD_GET lv
 xchain00196_n48_α:
 mov rdi, qword ptr [rip + .Lx00210_0]
 mov rsi, qword ptr [r12 + 784]
 mov rdx, qword ptr [r12 + 792]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00196_n49_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00196_n54_α
 xchain00196_n48_β:
 jmp xchain00196_n49_α
.Lx00210_0:
 .quad .Lx00210_0_s
.Lx00210_0_s:
 .string "x1"
# IR_VAR gva
 xchain00196_n49_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00196_n55_α
 xchain00196_n49_β:
 jmp xchain00196_n56_α
 xchain00196_n50_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1488]
 mov rdx, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain00196_n57_α
 xchain00196_n50_β:
 jmp xchain00196_n30_α
 xchain00196_n51_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2304]
 cmp eax, 100
 je .Lx00211_0
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 100
 je .Lx00211_0
 mov eax, dword ptr [r12 + 2304]
 cmp eax, 6
 jne .Lx00211_2
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 6
 jne .Lx00211_2
.Lx00211_1:
 mov rax, qword ptr [r12 + 2312]
 mov rcx, qword ptr [r12 + 2280]
 add rax, rcx
 mov qword ptr [r12 + 1424], 6
 mov qword ptr [r12 + 1432], rax
 jmp xchain00196_n58_α
.Lx00211_0:
 mov rdi, qword ptr [r12 + 2304]
 mov rsi, qword ptr [r12 + 2312]
 mov rdx, qword ptr [r12 + 2272]
 mov rcx, qword ptr [r12 + 2280]
 mov r8d, 0
 lea r9, [r12 + 1424]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00211_3
.Lx00211_2:
 mov rdi, qword ptr [r12 + 2304]
 mov rsi, qword ptr [r12 + 2312]
 mov rdx, qword ptr [r12 + 2272]
 mov rcx, qword ptr [r12 + 2280]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00196_n34_α
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
.Lx00211_3:
 jmp xchain00196_n58_α
 xchain00196_n51_β:
 jmp xchain00196_n34_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00196_n52_α:
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1096], rax
 lea rax, [rip + xchain00196_n38_α]
 mov qword ptr [r12 + 1104], rax
 jmp xchain00196_n38_α
 xchain00196_n52_β:
 jmp xchain00196_n38_α
# IR_VAR
 xchain00196_n53_α:
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 984], rax
 jmp xchain00196_n60_α
 xchain00196_n53_β:
 jmp xchain00196_n43_α
# IR_VAR
 xchain00196_n54_α:
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 824], rax
 jmp xchain00196_n61_α
 xchain00196_n54_β:
 jmp xchain00196_n49_α
# IR_FIELD_GET lv
 xchain00196_n55_α:
 mov rdi, qword ptr [rip + .Lx00212_0]
 mov rsi, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00196_n56_α
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00196_n62_α
 xchain00196_n55_β:
 jmp xchain00196_n56_α
.Lx00212_0:
 .quad .Lx00212_0_s
.Lx00212_0_s:
 .string "y1"
# IR_VAR gva
 xchain00196_n56_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain00196_n63_α
 xchain00196_n56_β:
 jmp xchain00196_n64_α
# IR_VAR
 xchain00196_n57_α:
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 1640], rax
 jmp xchain00196_n65_α
 xchain00196_n57_β:
 jmp xchain00196_n27_α
 xchain00196_n58_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1376]
 cmp eax, 100
 je .Lx00213_0
 mov eax, dword ptr [r12 + 1424]
 cmp eax, 100
 je .Lx00213_0
 mov eax, dword ptr [r12 + 1376]
 cmp eax, 6
 jne .Lx00213_2
 mov eax, dword ptr [r12 + 1424]
 cmp eax, 6
 jne .Lx00213_2
.Lx00213_1:
 mov rax, qword ptr [r12 + 1384]
 mov rcx, qword ptr [r12 + 1432]
 cmp rax, rcx
 jle xchain00196_n34_α
 mov rcx, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1360], rcx
 mov rcx, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1368], rcx
 jmp xchain00196_n66_α
.Lx00213_0:
 mov rdi, qword ptr [r12 + 1376]
 mov rsi, qword ptr [r12 + 1384]
 mov rdx, qword ptr [r12 + 1424]
 mov rcx, qword ptr [r12 + 1432]
 mov r8d, 7
 lea r9, [r12 + 1360]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00213_1
 cmp eax, 1
 je xchain00196_n34_α
 jmp xchain00196_n66_α
.Lx00213_2:
 mov rdi, qword ptr [r12 + 1376]
 mov rsi, qword ptr [r12 + 1384]
 mov rdx, qword ptr [r12 + 1424]
 mov rcx, qword ptr [r12 + 1432]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00196_n34_α
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1368], rax
 jmp xchain00196_n66_α
 xchain00196_n58_β:
 jmp xchain00196_n34_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00196_n59_α:
 jmp qword ptr [r12 + 1104]
 xchain00196_n59_β:
 jmp xchain00196_n38_α
 xchain00196_n60_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 100
 je .Lx00214_0
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 100
 je .Lx00214_0
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 6
 jne .Lx00214_2
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 6
 jne .Lx00214_2
.Lx00214_1:
 mov rax, qword ptr [r12 + 2328]
 mov rcx, qword ptr [r12 + 2296]
 add rax, rcx
 mov qword ptr [r12 + 944], 6
 mov qword ptr [r12 + 952], rax
 jmp xchain00196_n67_α
.Lx00214_0:
 mov rdi, qword ptr [r12 + 2320]
 mov rsi, qword ptr [r12 + 2328]
 mov rdx, qword ptr [r12 + 2288]
 mov rcx, qword ptr [r12 + 2296]
 mov r8d, 0
 lea r9, [r12 + 944]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00214_3
.Lx00214_2:
 mov rdi, qword ptr [r12 + 2320]
 mov rsi, qword ptr [r12 + 2328]
 mov rdx, qword ptr [r12 + 2288]
 mov rcx, qword ptr [r12 + 2296]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00196_n43_α
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
.Lx00214_3:
 jmp xchain00196_n67_α
 xchain00196_n60_β:
 jmp xchain00196_n43_α
# IR_ASSIGN_VAR write through variable
 xchain00196_n61_α:
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 mov rdx, qword ptr [r12 + 816]
 mov rcx, qword ptr [r12 + 824]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00196_n49_α
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00196_n49_α
 xchain00196_n61_β:
 jmp xchain00196_n49_α
# IR_VAR
 xchain00196_n62_α:
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 760], rax
 jmp xchain00196_n68_α
 xchain00196_n62_β:
 jmp xchain00196_n56_α
# IR_FIELD_GET lv
 xchain00196_n63_α:
 mov rdi, qword ptr [rip + .Lx00215_0]
 mov rsi, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00196_n64_α
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00196_n69_α
 xchain00196_n63_β:
 jmp xchain00196_n64_α
.Lx00215_0:
 .quad .Lx00215_0_s
.Lx00215_0_s:
 .string "x2"
# IR_VAR gva
 xchain00196_n64_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00196_n70_α
 xchain00196_n64_β:
 jmp xchain00196_n71_α
# IR_LIT_INTEGER
 xchain00196_n65_α:
 mov qword ptr [r12 + 1696], 6
 mov rax, qword ptr [rip + .Lx00216_0]
 mov qword ptr [r12 + 1704], rax
 jmp xchain00196_n72_α
 xchain00196_n65_β:
 jmp xchain00196_n27_α
.Lx00216_0:
 .quad 4
# IR_VAR gva
 xchain00196_n66_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain00196_n73_α
 xchain00196_n66_β:
 jmp xchain00196_n74_α
# IR_LIT_INTEGER
 xchain00196_n67_α:
 mov qword ptr [r12 + 992], 6
 mov rax, qword ptr [rip + .Lx00217_0]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00196_n75_α
 xchain00196_n67_β:
 jmp xchain00196_n43_α
.Lx00217_0:
 .quad 8
# IR_ASSIGN_VAR write through variable
 xchain00196_n68_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00196_n56_α
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00196_n56_α
 xchain00196_n68_β:
 jmp xchain00196_n56_α
# IR_VAR
 xchain00196_n69_α:
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 696], rax
 jmp xchain00196_n76_α
 xchain00196_n69_β:
 jmp xchain00196_n64_α
# IR_FIELD_GET lv
 xchain00196_n70_α:
 mov rdi, qword ptr [rip + .Lx00218_0]
 mov rsi, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00196_n71_α
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00196_n77_α
 xchain00196_n70_β:
 jmp xchain00196_n71_α
.Lx00218_0:
 .quad .Lx00218_0_s
.Lx00218_0_s:
 .string "y2"
# IR_VAR
 xchain00196_n71_α:
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 472], rax
 jmp xchain00196_n78_α
 xchain00196_n71_β:
 jmp xchain00196_n79_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00196_n72_α:
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00196_n27_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00196_n27_α
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
 jmp xchain00196_n80_α
 xchain00196_n72_β:
 mov r14, qword ptr [r12 + 1680]
 jmp xchain00196_n27_α
# IR_FIELD_GET lv
 xchain00196_n73_α:
 mov rdi, qword ptr [rip + .Lx00219_0]
 mov rsi, qword ptr [r12 + 1232]
 mov rdx, qword ptr [r12 + 1240]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00196_n74_α
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain00196_n81_α
 xchain00196_n73_β:
 jmp xchain00196_n74_α
.Lx00219_0:
 .quad .Lx00219_0_s
.Lx00219_0_s:
 .string "rev"
 xchain00196_n74_α:
# IR_SWAP x:=:y
 mov rax, qword ptr [r12 + 2320]
 mov rdx, qword ptr [r12 + 2328]
 mov rcx, qword ptr [r12 + 2304]
 mov rsi, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2320], rcx
 mov qword ptr [r12 + 2328], rsi
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 mov qword ptr [r12 + 1168], rcx
 mov qword ptr [r12 + 1176], rsi
 jmp xchain00196_n82_α
 xchain00196_n74_β:
 jmp xchain00196_n82_α
 xchain00196_n75_α:
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
  .Lrkfn1001: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1001]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain00196_n43_α
 jmp xchain00196_n83_α
 xchain00196_n75_β:
 jmp xchain00196_n43_α
# IR_ASSIGN_VAR write through variable
 xchain00196_n76_α:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00196_n64_α
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00196_n64_α
 xchain00196_n76_β:
 jmp xchain00196_n64_α
# IR_VAR
 xchain00196_n77_α:
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 632], rax
 jmp xchain00196_n84_α
 xchain00196_n77_β:
 jmp xchain00196_n71_α
# IR_VAR
 xchain00196_n78_α:
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 488], rax
 jmp xchain00196_n85_α
 xchain00196_n78_β:
 jmp xchain00196_n79_α
# IR_VAR gva
 xchain00196_n79_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00196_n86_α
 xchain00196_n79_β:
 jmp xchain00196_n87_α
# IR_LIT_INTEGER
 xchain00196_n80_α:
 mov qword ptr [r12 + 1712], 6
 mov rax, qword ptr [rip + .Lx00220_0]
 mov qword ptr [r12 + 1720], rax
 jmp xchain00196_n88_α
 xchain00196_n80_β:
 jmp xchain00196_n27_α
.Lx00220_0:
 .quad 5000
# IR_LIT_INTEGER
 xchain00196_n81_α:
 mov qword ptr [r12 + 1264], 6
 mov rax, qword ptr [rip + .Lx00221_0]
 mov qword ptr [r12 + 1272], rax
 jmp xchain00196_n89_α
 xchain00196_n81_β:
 jmp xchain00196_n74_α
.Lx00221_0:
 .quad 1
 xchain00196_n82_α:
# IR_SWAP x:=:y
 mov rax, qword ptr [r12 + 2288]
 mov rdx, qword ptr [r12 + 2296]
 mov rcx, qword ptr [r12 + 2272]
 mov rsi, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2288], rcx
 mov qword ptr [r12 + 2296], rsi
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 mov qword ptr [r12 + 1120], rcx
 mov qword ptr [r12 + 1128], rsi
 jmp xchain00196_n90_α
 xchain00196_n82_β:
 jmp xchain00196_n38_α
# IR_VAR
 xchain00196_n83_α:
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 1064], rax
 jmp xchain00196_n91_α
 xchain00196_n83_β:
 jmp xchain00196_n43_α
# IR_ASSIGN_VAR write through variable
 xchain00196_n84_α:
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 mov rdx, qword ptr [r12 + 624]
 mov rcx, qword ptr [r12 + 632]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00196_n71_α
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00196_n71_α
 xchain00196_n84_β:
 jmp xchain00196_n71_α
 xchain00196_n85_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 100
 je .Lx00222_0
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 100
 je .Lx00222_0
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 6
 jne .Lx00222_2
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 6
 jne .Lx00222_2
.Lx00222_1:
 mov rax, qword ptr [r12 + 2280]
 mov rcx, qword ptr [r12 + 2296]
 sub rax, rcx
 mov qword ptr [r12 + 448], 6
 mov qword ptr [r12 + 456], rax
 jmp xchain00196_n92_α
.Lx00222_0:
 mov rdi, qword ptr [r12 + 2272]
 mov rsi, qword ptr [r12 + 2280]
 mov rdx, qword ptr [r12 + 2288]
 mov rcx, qword ptr [r12 + 2296]
 mov r8d, 1
 lea r9, [r12 + 448]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00222_3
.Lx00222_2:
 mov rdi, qword ptr [r12 + 2272]
 mov rsi, qword ptr [r12 + 2280]
 mov rdx, qword ptr [r12 + 2288]
 mov rcx, qword ptr [r12 + 2296]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00196_n79_α
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
.Lx00222_3:
 jmp xchain00196_n92_α
 xchain00196_n85_β:
 jmp xchain00196_n79_α
# IR_FIELD_GET lv
 xchain00196_n86_α:
 mov rdi, qword ptr [rip + .Lx00223_0]
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00196_n87_α
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00196_n93_α
 xchain00196_n86_β:
 jmp xchain00196_n87_α
.Lx00223_0:
 .quad .Lx00223_0_s
.Lx00223_0_s:
 .string "aindex"
# IR_GEN_SCAN
 xchain00196_n87_α:
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain00196_n6_α
 xchain00196_n87_β:
 jmp xchain00196_n6_α
 xchain00196_n88_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1664]
 cmp eax, 100
 je .Lx00224_0
 mov eax, dword ptr [r12 + 1712]
 cmp eax, 100
 je .Lx00224_0
 mov eax, dword ptr [r12 + 1664]
 cmp eax, 6
 jne .Lx00224_2
 mov eax, dword ptr [r12 + 1712]
 cmp eax, 6
 jne .Lx00224_2
.Lx00224_1:
 mov rax, qword ptr [r12 + 1672]
 mov rcx, qword ptr [r12 + 1720]
 sub rax, rcx
 mov qword ptr [r12 + 1648], 6
 mov qword ptr [r12 + 1656], rax
 jmp xchain00196_n94_α
.Lx00224_0:
 mov rdi, qword ptr [r12 + 1664]
 mov rsi, qword ptr [r12 + 1672]
 mov rdx, qword ptr [r12 + 1712]
 mov rcx, qword ptr [r12 + 1720]
 mov r8d, 1
 lea r9, [r12 + 1648]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00224_3
.Lx00224_2:
 mov rdi, qword ptr [r12 + 1664]
 mov rsi, qword ptr [r12 + 1672]
 mov rdx, qword ptr [r12 + 1712]
 mov rcx, qword ptr [r12 + 1720]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00196_n27_α
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
.Lx00224_3:
 jmp xchain00196_n94_α
 xchain00196_n88_β:
 jmp xchain00196_n27_α
# IR_ASSIGN_VAR write through variable
 xchain00196_n89_α:
 mov rdi, qword ptr [r12 + 1216]
 mov rsi, qword ptr [r12 + 1224]
 mov rdx, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1272]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00196_n74_α
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain00196_n74_α
 xchain00196_n89_β:
 jmp xchain00196_n74_α
 xchain00196_n90_α:
 jmp xchain00196_n95_α
xchain00196_n90_β:
 jmp xchain00196_n38_α
# IR_LIT_INTEGER
 xchain00196_n91_α:
 mov qword ptr [r12 + 1072], 6
 mov rax, qword ptr [rip + .Lx00225_0]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00196_n96_α
 xchain00196_n91_β:
 jmp xchain00196_n43_α
.Lx00225_0:
 .quad 7
# IR_VAR gva
 xchain00196_n92_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00196_n97_α
 xchain00196_n92_β:
 jmp xchain00196_n79_α
# IR_LIT_INTEGER
 xchain00196_n93_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00226_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00196_n98_α
 xchain00196_n93_β:
 jmp xchain00196_n87_α
.Lx00226_0:
 .quad 1
 xchain00196_n94_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 100
 je .Lx00227_0
 mov eax, dword ptr [r12 + 1648]
 cmp eax, 100
 je .Lx00227_0
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 6
 jne .Lx00227_2
 mov eax, dword ptr [r12 + 1648]
 cmp eax, 6
 jne .Lx00227_2
.Lx00227_1:
 mov rax, qword ptr [r12 + 2280]
 mov rcx, qword ptr [r12 + 1656]
 add rax, rcx
 mov qword ptr [r12 + 1616], 6
 mov qword ptr [r12 + 1624], rax
 jmp xchain00196_n99_α
.Lx00227_0:
 mov rdi, qword ptr [r12 + 2272]
 mov rsi, qword ptr [r12 + 2280]
 mov rdx, qword ptr [r12 + 1648]
 mov rcx, qword ptr [r12 + 1656]
 mov r8d, 0
 lea r9, [r12 + 1616]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00227_3
.Lx00227_2:
 mov rdi, qword ptr [r12 + 2272]
 mov rsi, qword ptr [r12 + 2280]
 mov rdx, qword ptr [r12 + 1648]
 mov rcx, qword ptr [r12 + 1656]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00196_n27_α
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
.Lx00227_3:
 jmp xchain00196_n99_α
 xchain00196_n94_β:
 jmp xchain00196_n27_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00196_n95_α:
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1096], rax
 lea rax, [rip + xchain00196_n38_α]
 mov qword ptr [r12 + 1104], rax
 jmp xchain00196_n38_α
 xchain00196_n95_β:
 jmp xchain00196_n38_α
 xchain00196_n96_α:
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
  .Lrkfn1028: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1028]
 lea rsi, [r12 + 1024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xchain00196_n43_α
 jmp xchain00196_n00060_α
 xchain00196_n96_β:
 jmp xchain00196_n43_α
# IR_VAR
 xchain00196_n97_α:
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 552], rax
 jmp xchain00196_n00001_α
 xchain00196_n97_β:
 jmp xchain00196_n79_α
# IR_LIT_INTEGER
 xchain00196_n98_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx00228_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00196_n00062_α
 xchain00196_n98_β:
 jmp xchain00196_n87_α
.Lx00228_0:
 .quad 5
 xchain00196_n99_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1616]
 mov rdx, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00196_n27_α
 xchain00196_n99_β:
 jmp xchain00196_n27_α
 xchain00196_n00060_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 896]
 mov rsi, qword ptr [r12 + 904]
 mov rdx, qword ptr [r12 + 1008]
 mov rcx, qword ptr [r12 + 1016]
 call str_concat_d@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00196_n00063_α
 xchain00196_n00060_β:
 jmp xchain00196_n43_α
# IR_VAR
 xchain00196_n00001_α:
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 568], rax
 jmp xchain00196_n00064_α
 xchain00196_n00001_β:
 jmp xchain00196_n79_α
# IR_VAR
 xchain00196_n00062_α:
 mov rax, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 312], rax
 jmp xchain00196_n00065_α
 xchain00196_n00062_β:
 jmp xchain00196_n87_α
# IR_ASSIGN_VAR write through variable
 xchain00196_n00063_α:
 mov rdi, qword ptr [r12 + 832]
 mov rsi, qword ptr [r12 + 840]
 mov rdx, qword ptr [r12 + 880]
 mov rcx, qword ptr [r12 + 888]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00196_n43_α
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00196_n43_α
 xchain00196_n00063_β:
 jmp xchain00196_n43_α
 xchain00196_n00064_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2304]
 cmp eax, 100
 je .Lx00229_0
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 100
 je .Lx00229_0
 mov eax, dword ptr [r12 + 2304]
 cmp eax, 6
 jne .Lx00229_2
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 6
 jne .Lx00229_2
.Lx00229_1:
 mov rax, qword ptr [r12 + 2312]
 mov rcx, qword ptr [r12 + 2328]
 sub rax, rcx
 mov qword ptr [r12 + 528], 6
 mov qword ptr [r12 + 536], rax
 jmp xchain00196_n00067_α
.Lx00229_0:
 mov rdi, qword ptr [r12 + 2304]
 mov rsi, qword ptr [r12 + 2312]
 mov rdx, qword ptr [r12 + 2320]
 mov rcx, qword ptr [r12 + 2328]
 mov r8d, 1
 lea r9, [r12 + 528]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00229_3
.Lx00229_2:
 mov rdi, qword ptr [r12 + 2304]
 mov rsi, qword ptr [r12 + 2312]
 mov rdx, qword ptr [r12 + 2320]
 mov rcx, qword ptr [r12 + 2328]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00196_n79_α
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
.Lx00229_3:
 jmp xchain00196_n00067_α
 xchain00196_n00064_β:
 jmp xchain00196_n79_α
# IR_KEYWORD_read
 xchain00196_n00065_α:
 mov rdi, qword ptr [rip + .Lx00230_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00196_n00069_α
 xchain00196_n00065_β:
 jmp xchain00196_n87_α
.Lx00230_0:
 .quad .Lx00230_0_s
.Lx00230_0_s:
 .string "&pi"
 xchain00196_n00067_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 512]
 cmp eax, 100
 je .Lx00231_0
 mov eax, dword ptr [r12 + 528]
 cmp eax, 100
 je .Lx00231_0
 mov eax, dword ptr [r12 + 512]
 cmp eax, 6
 jne .Lx00231_2
 mov eax, dword ptr [r12 + 528]
 cmp eax, 6
 jne .Lx00231_2
.Lx00231_1:
 mov rax, qword ptr [r12 + 520]
 mov rcx, qword ptr [r12 + 536]
 imul rax, rcx
 mov qword ptr [r12 + 496], 6
 mov qword ptr [r12 + 504], rax
 jmp xchain00196_n00002_α
.Lx00231_0:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 2
 lea r9, [r12 + 496]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00231_3
.Lx00231_2:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00196_n79_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
.Lx00231_3:
 jmp xchain00196_n00002_α
 xchain00196_n00067_β:
 jmp xchain00196_n79_α
 xchain00196_n00069_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 100
 je .Lx00232_0
 mov eax, dword ptr [r12 + 320]
 cmp eax, 100
 je .Lx00232_0
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 6
 jne .Lx00232_2
 mov eax, dword ptr [r12 + 320]
 cmp eax, 6
 jne .Lx00232_2
.Lx00232_1:
 mov rax, qword ptr [r12 + 2264]
 mov rcx, qword ptr [r12 + 328]
 cqo
 idiv rcx
 mov qword ptr [r12 + 288], 6
 mov qword ptr [r12 + 296], rax
 jmp xchain00196_n00071_α
.Lx00232_0:
 mov rdi, qword ptr [r12 + 2256]
 mov rsi, qword ptr [r12 + 2264]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 3
 lea r9, [r12 + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00232_3
.Lx00232_2:
 mov rdi, qword ptr [r12 + 2256]
 mov rsi, qword ptr [r12 + 2264]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00196_n87_α
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
.Lx00232_3:
 jmp xchain00196_n00071_α
 xchain00196_n00069_β:
 jmp xchain00196_n87_α
 xchain00196_n00002_α:
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
  .Lrkfn1044: .string "atan"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1044]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00196_n79_α
 jmp xchain00196_n00072_α
 xchain00196_n00002_β:
 jmp xchain00196_n79_α
# IR_LIT_REAL
 xchain00196_n00071_α:
 mov qword ptr [r12 + 352], 7
 mov rax, qword ptr [rip + .Lx00233_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00196_n00073_α
 xchain00196_n00071_β:
 jmp xchain00196_n87_α
.Lx00233_0:
 .quad 4612248968380809216
 xchain00196_n00072_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00196_n79_α
 xchain00196_n00072_β:
 jmp xchain00196_n79_α
 xchain00196_n00073_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00196_n87_α
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00196_n00074_α
 xchain00196_n00073_β:
 jmp xchain00196_n87_α
 xchain00196_n00074_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00196_n87_α
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00196_n00075_α
 xchain00196_n00074_β:
 jmp xchain00196_n87_α
 xchain00196_n00075_α:
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
 je xchain00196_n87_α
 jmp xchain00196_n00003_α
 xchain00196_n00075_β:
 jmp xchain00196_n87_α
# IR_LIT_INTEGER
 xchain00196_n00003_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00234_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00196_n00076_α
 xchain00196_n00003_β:
 jmp xchain00196_n87_α
.Lx00234_0:
 .quad 5
 xchain00196_n00076_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 208]
 cmp eax, 100
 je .Lx00235_0
 mov eax, dword ptr [r12 + 368]
 cmp eax, 100
 je .Lx00235_0
 mov eax, dword ptr [r12 + 208]
 cmp eax, 6
 jne .Lx00235_2
 mov eax, dword ptr [r12 + 368]
 cmp eax, 6
 jne .Lx00235_2
.Lx00235_1:
 mov rax, qword ptr [r12 + 216]
 mov rcx, qword ptr [r12 + 376]
 cqo
 idiv rcx
 mov rax, rdx
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
 jmp xchain00196_n00077_α
.Lx00235_0:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 mov r8d, 4
 lea r9, [r12 + 192]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00235_3
.Lx00235_2:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 mov r8d, 4
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00196_n87_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
.Lx00235_3:
 jmp xchain00196_n00077_α
 xchain00196_n00076_β:
 jmp xchain00196_n87_α
 xchain00196_n00077_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 176]
 cmp eax, 100
 je .Lx00236_0
 mov eax, dword ptr [r12 + 192]
 cmp eax, 100
 je .Lx00236_0
 mov eax, dword ptr [r12 + 176]
 cmp eax, 6
 jne .Lx00236_2
 mov eax, dword ptr [r12 + 192]
 cmp eax, 6
 jne .Lx00236_2
.Lx00236_1:
 mov rax, qword ptr [r12 + 184]
 mov rcx, qword ptr [r12 + 200]
 add rax, rcx
 mov qword ptr [r12 + 160], 6
 mov qword ptr [r12 + 168], rax
 jmp xchain00196_n00078_α
.Lx00236_0:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 0
 lea r9, [r12 + 160]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00236_3
.Lx00236_2:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00196_n87_α
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
.Lx00236_3:
 jmp xchain00196_n00078_α
 xchain00196_n00077_β:
 jmp xchain00196_n87_α
# IR_ASSIGN_VAR write through variable
 xchain00196_n00078_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00196_n87_α
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00196_n00079_α
 xchain00196_n00078_β:
 jmp xchain00196_n87_α
 xchain00196_n00079_α:
 jmp xchain00196_n00081_α
xchain00196_n00079_β:
 jmp xchain00196_n87_α
# IR_GEN_SCAN
 xchain00196_n00081_α:
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain00196_n6_α
 xchain00196_n00081_β:
 jmp xchain00196_n6_α
proc_crack_β:
jmp proc_crack_ω
proc_crack_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 2240]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 2064], rax
 pop rsi
main_α_body:
# IR_VAR
 xchain00237_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 2040], rax
 jmp xchain00237_n1_α
 xchain00237_n0_β:
 jmp xchain00237_n2_α
# IR_LIT_STRING
 xchain00237_n1_α:
 mov qword ptr [r12 + 2048], 1
 mov rax, qword ptr [rip + .Lx00238_0]
 mov qword ptr [r12 + 2056], rax
 jmp xchain00237_n3_α
 xchain00237_n1_β:
 jmp xchain00237_n2_α
.Lx00238_0:
 .quad .Lx00238_0_s
.Lx00238_0_s:
 .string "a.e."
# IR_VAR_REF local
 xchain00237_n2_α:
 lea rdi, [r12 + 2144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain00237_n4_α
 xchain00237_n2_β:
 jmp xchain00237_n8_α
 xchain00237_n3_α:
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
  .Lbynamefn1065: .string "options"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn1065]
 lea rsi, [r12 + 2000]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 cmp eax, 99
 je xchain00237_n2_α
 jmp xchain00237_n5_α
xchain00237_n3_β:
 jmp xchain00237_n2_α
# IR_LIT_STRING
 xchain00237_n4_α:
 mov qword ptr [r12 + 1920], 1
 mov rax, qword ptr [rip + .Lx00239_0]
 mov qword ptr [r12 + 1928], rax
 jmp xchain00237_n6_α
 xchain00237_n4_β:
 jmp xchain00237_n8_α
.Lx00239_0:
 .quad .Lx00239_0_s
.Lx00239_0_s:
 .string "a"
 xchain00237_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1984]
 mov rdx, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 jmp xchain00237_n2_α
 xchain00237_n5_β:
 jmp xchain00237_n2_α
# IR_SUBSCRIPT x[i] variable
 xchain00237_n6_α:
 mov rdi, qword ptr [r12 + 1904]
 mov rsi, qword ptr [r12 + 1912]
 mov rdx, qword ptr [r12 + 1920]
 mov rcx, qword ptr [r12 + 1928]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00237_n8_α
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 jmp xchain00237_n7_α
 xchain00237_n6_β:
 jmp xchain00237_n8_α
# IR_DEREF variable -> value
 xchain00237_n7_α:
 mov rdi, qword ptr [r12 + 1936]
 mov rsi, qword ptr [r12 + 1944]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00237_n8_α
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 jmp xchain00237_n9_α
 xchain00237_n7_β:
 jmp xchain00237_n8_α
# IR_LIT_INTEGER
 xchain00237_n8_α:
 mov qword ptr [r12 + 1872], 6
 mov rax, qword ptr [rip + .Lx00240_0]
 mov qword ptr [r12 + 1880], rax
 jmp xchain00237_n10_α
 xchain00237_n8_β:
 jmp xchain00237_n13_α
.Lx00240_0:
 .quad 30
# IR_UNOP
 xchain00237_n9_α:
 mov eax, dword ptr [r12 + 1952]
 cmp eax, 99
 je xchain00237_n8_α
 cmp eax, 0
 je xchain00237_n8_α
 mov rax, qword ptr [r12 + 1952]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 1960]
 mov qword ptr [r12 + 1896], rax
 jmp xchain00237_n11_α
 xchain00237_n9_β:
 jmp xchain00237_n8_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00237_n10_α:
 mov rax, qword ptr [r12 + 1872]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 1848], rax
 lea rax, [rip + xchain00237_n13_α]
 mov qword ptr [r12 + 1856], rax
 jmp xchain00237_n12_α
 xchain00237_n10_β:
 jmp xchain00237_n13_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00237_n11_α:
 mov rax, qword ptr [r12 + 1888]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 1896]
 mov qword ptr [r12 + 1848], rax
 lea rax, [rip + xchain00237_n8_α]
 mov qword ptr [r12 + 1856], rax
 jmp xchain00237_n12_α
 xchain00237_n11_β:
 jmp xchain00237_n13_α
# IR_ASSIGN gva
 xchain00237_n12_α:
 mov rax, qword ptr [r12 + 1840]
 mov rdx, qword ptr [r12 + 1848]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 jmp xchain00237_n13_α
 xchain00237_n12_β:
 jmp xchain00237_n13_α
# IR_VAR_REF local
 xchain00237_n13_α:
 lea rdi, [r12 + 2144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain00237_n15_α
 xchain00237_n13_β:
 jmp xchain00237_n18_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00237_n14_α:
 jmp qword ptr [r12 + 1856]
 xchain00237_n14_β:
 jmp xchain00237_n13_α
# IR_LIT_STRING
 xchain00237_n15_α:
 mov qword ptr [r12 + 1776], 1
 mov rax, qword ptr [rip + .Lx00241_0]
 mov qword ptr [r12 + 1784], rax
 jmp xchain00237_n16_α
 xchain00237_n15_β:
 jmp xchain00237_n18_α
.Lx00241_0:
 .quad .Lx00241_0_s
.Lx00241_0_s:
 .string "e"
# IR_SUBSCRIPT x[i] variable
 xchain00237_n16_α:
 mov rdi, qword ptr [r12 + 1760]
 mov rsi, qword ptr [r12 + 1768]
 mov rdx, qword ptr [r12 + 1776]
 mov rcx, qword ptr [r12 + 1784]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00237_n18_α
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain00237_n17_α
 xchain00237_n16_β:
 jmp xchain00237_n18_α
# IR_DEREF variable -> value
 xchain00237_n17_α:
 mov rdi, qword ptr [r12 + 1792]
 mov rsi, qword ptr [r12 + 1800]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00237_n18_α
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain00237_n19_α
 xchain00237_n17_β:
 jmp xchain00237_n18_α
# IR_LIT_INTEGER
 xchain00237_n18_α:
 mov qword ptr [r12 + 1728], 6
 mov rax, qword ptr [rip + .Lx00242_0]
 mov qword ptr [r12 + 1736], rax
 jmp xchain00237_n20_α
 xchain00237_n18_β:
 jmp xchain00237_n23_α
.Lx00242_0:
 .quad 4
# IR_UNOP
 xchain00237_n19_α:
 mov eax, dword ptr [r12 + 1808]
 cmp eax, 99
 je xchain00237_n18_α
 cmp eax, 0
 je xchain00237_n18_α
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1752], rax
 jmp xchain00237_n21_α
 xchain00237_n19_β:
 jmp xchain00237_n18_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00237_n20_α:
 mov rax, qword ptr [r12 + 1728]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 1704], rax
 lea rax, [rip + xchain00237_n23_α]
 mov qword ptr [r12 + 1712], rax
 jmp xchain00237_n22_α
 xchain00237_n20_β:
 jmp xchain00237_n23_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00237_n21_α:
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 1704], rax
 lea rax, [rip + xchain00237_n18_α]
 mov qword ptr [r12 + 1712], rax
 jmp xchain00237_n22_α
 xchain00237_n21_β:
 jmp xchain00237_n23_α
# IR_ASSIGN gva
 xchain00237_n22_α:
 mov rax, qword ptr [r12 + 1696]
 mov rdx, qword ptr [r12 + 1704]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain00237_n23_α
 xchain00237_n22_β:
 jmp xchain00237_n23_α
# IR_VAR
 xchain00237_n23_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1656], rax
 jmp xchain00237_n25_α
 xchain00237_n23_β:
 jmp xchain00237_n26_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00237_n24_α:
 jmp qword ptr [r12 + 1712]
 xchain00237_n24_β:
 jmp xchain00237_n23_α
# IR_UNOP
 xchain00237_n25_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain00237_n27_α
 xchain00237_n25_β:
 jmp xchain00237_n26_α
# IR_VAR
 xchain00237_n26_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1592], rax
 jmp xchain00237_n28_α
 xchain00237_n26_β:
 jmp xchain00237_n29_α
# IR_LIT_INTEGER
 xchain00237_n27_α:
 mov qword ptr [r12 + 1664], 6
 mov rax, qword ptr [rip + .Lx00243_0]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00237_n30_α
 xchain00237_n27_β:
 jmp xchain00237_n26_α
.Lx00243_0:
 .quad 1
# IR_UNOP
 xchain00237_n28_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain00237_n31_α
 xchain00237_n28_β:
 jmp xchain00237_n29_α
# IR_KEYWORD_read
 xchain00237_n29_α:
 mov rdi, qword ptr [rip + .Lx00244_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain00237_n32_α
 xchain00237_n29_β:
 jmp xchain00237_n39_α
.Lx00244_0:
 .quad .Lx00244_0_s
.Lx00244_0_s:
 .string "&input"
 xchain00237_n30_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1632]
 cmp eax, 100
 je .Lx00245_0
 mov eax, dword ptr [r12 + 1664]
 cmp eax, 100
 je .Lx00245_0
 mov eax, dword ptr [r12 + 1632]
 cmp eax, 6
 jne .Lx00245_2
 mov eax, dword ptr [r12 + 1664]
 cmp eax, 6
 jne .Lx00245_2
.Lx00245_1:
 mov rax, qword ptr [r12 + 1640]
 mov rcx, qword ptr [r12 + 1672]
 cmp rax, rcx
 jle xchain00237_n26_α
 mov rcx, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1616], rcx
 mov rcx, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1624], rcx
 jmp xchain00237_n33_α
.Lx00245_0:
 mov rdi, qword ptr [r12 + 1632]
 mov rsi, qword ptr [r12 + 1640]
 mov rdx, qword ptr [r12 + 1664]
 mov rcx, qword ptr [r12 + 1672]
 mov r8d, 7
 lea r9, [r12 + 1616]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00245_1
 cmp eax, 1
 je xchain00237_n26_α
 jmp xchain00237_n33_α
.Lx00245_2:
 mov rdi, qword ptr [r12 + 1632]
 mov rsi, qword ptr [r12 + 1640]
 mov rdx, qword ptr [r12 + 1664]
 mov rcx, qword ptr [r12 + 1672]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00237_n26_α
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1624], rax
 jmp xchain00237_n33_α
 xchain00237_n30_β:
 jmp xchain00237_n26_α
# IR_LIT_INTEGER
 xchain00237_n31_α:
 mov qword ptr [r12 + 1600], 6
 mov rax, qword ptr [rip + .Lx00246_0]
 mov qword ptr [r12 + 1608], rax
 jmp xchain00237_n34_α
 xchain00237_n31_β:
 jmp xchain00237_n29_α
.Lx00246_0:
 .quad 1
# IR_ASSIGN gva
 xchain00237_n32_α:
 mov rax, qword ptr [r12 + 1520]
 mov rdx, qword ptr [r12 + 1528]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 jmp xchain00237_n35_α
 xchain00237_n32_β:
 jmp xchain00237_n39_α
# IR_LIT_STRING
 xchain00237_n33_α:
 mov qword ptr [r12 + 1088], 1
 mov rax, qword ptr [rip + .Lx00247_0]
 mov qword ptr [r12 + 1096], rax
 jmp xchain00237_n36_α
 xchain00237_n33_β:
 jmp xchain00237_n39_α
.Lx00247_0:
 .quad .Lx00247_0_s
.Lx00247_0_s:
 .string "usage: "
 xchain00237_n34_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1568]
 cmp eax, 100
 je .Lx00248_0
 mov eax, dword ptr [r12 + 1600]
 cmp eax, 100
 je .Lx00248_0
 mov eax, dword ptr [r12 + 1568]
 cmp eax, 6
 jne .Lx00248_2
 mov eax, dword ptr [r12 + 1600]
 cmp eax, 6
 jne .Lx00248_2
.Lx00248_1:
 mov rax, qword ptr [r12 + 1576]
 mov rcx, qword ptr [r12 + 1608]
 cmp rax, rcx
 jne xchain00237_n29_α
 mov rcx, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1552], rcx
 mov rcx, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1560], rcx
 jmp xchain00237_n37_α
.Lx00248_0:
 mov rdi, qword ptr [r12 + 1568]
 mov rsi, qword ptr [r12 + 1576]
 mov rdx, qword ptr [r12 + 1600]
 mov rcx, qword ptr [r12 + 1608]
 mov r8d, 9
 lea r9, [r12 + 1552]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00248_1
 cmp eax, 1
 je xchain00237_n29_α
 jmp xchain00237_n37_α
.Lx00248_2:
 mov rdi, qword ptr [r12 + 1568]
 mov rsi, qword ptr [r12 + 1576]
 mov rdx, qword ptr [r12 + 1600]
 mov rcx, qword ptr [r12 + 1608]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00237_n29_α
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1552], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1560], rax
 jmp xchain00237_n37_α
 xchain00237_n34_β:
 jmp xchain00237_n29_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00237_n35_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1160], rax
 lea rax, [rip + xchain00237_n39_α]
 mov qword ptr [r12 + 1168], rax
 jmp xchain00237_n38_α
 xchain00237_n35_β:
 jmp xchain00237_n39_α
# IR_KEYWORD_read
 xchain00237_n36_α:
 mov rdi, qword ptr [rip + .Lx00249_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain00237_n41_α
 xchain00237_n36_β:
 jmp xchain00237_n39_α
.Lx00249_0:
 .quad .Lx00249_0_s
.Lx00249_0_s:
 .string "&progname"
# IR_VAR_REF local
 xchain00237_n37_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain00237_n42_α
 xchain00237_n37_β:
 jmp xchain00237_n52_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00237_n38_α:
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1000], rax
 lea rax, [rip + xchain00237_n40_α]
 mov qword ptr [r12 + 1008], rax
 jmp xchain00237_n39_α
 xchain00237_n38_β:
 jmp xchain00237_n39_α
# IR_VAR gva
 xchain00237_n39_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain00237_n44_α
 xchain00237_n39_β:
 jmp xchain00237_n45_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00237_n40_α:
 jmp qword ptr [r12 + 1168]
 xchain00237_n40_β:
 jmp xchain00237_n39_α
# IR_LIT_STRING
 xchain00237_n41_α:
 mov qword ptr [r12 + 1136], 1
 mov rax, qword ptr [rip + .Lx00250_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain00237_n46_α
 xchain00237_n41_β:
 jmp xchain00237_n39_α
.Lx00250_0:
 .quad .Lx00250_0_s
.Lx00250_0_s:
 .string " file"
# IR_LIT_INTEGER
 xchain00237_n42_α:
 mov qword ptr [r12 + 1456], 6
 mov rax, qword ptr [rip + .Lx00251_0]
 mov qword ptr [r12 + 1464], rax
 jmp xchain00237_n47_α
 xchain00237_n42_β:
 jmp xchain00237_n52_α
.Lx00251_0:
 .quad 1
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00237_n43_α:
 jmp qword ptr [r12 + 1008]
 xchain00237_n43_β:
 jmp xchain00237_n39_α
 xchain00237_n44_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+976] -> [r12+960]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 968], rax
  .section .rodata
  .Lrkfn1121: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1121]
 lea rsi, [r12 + 960]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je xchain00237_n45_α
 jmp xchain00237_n48_α
 xchain00237_n44_β:
 jmp xchain00237_n45_α
# IR_KEYWORD_read
 xchain00237_n45_α:
 mov rdi, qword ptr [rip + .Lx00252_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00237_n49_α
 xchain00237_n45_β:
 jmp xchain00237_n58_α
.Lx00252_0:
 .quad .Lx00252_0_s
.Lx00252_0_s:
 .string "&progname"
 xchain00237_n46_α:
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
  .Lrkfn1124: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1124]
 lea rsi, [r12 + 1040]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 cmp eax, 99
 je xchain00237_n39_α
 jmp xchain00237_n50_α
 xchain00237_n46_β:
 jmp xchain00237_n39_α
# IR_SUBSCRIPT x[i] variable
 xchain00237_n47_α:
 mov rdi, qword ptr [r12 + 1440]
 mov rsi, qword ptr [r12 + 1448]
 mov rdx, qword ptr [r12 + 1456]
 mov rcx, qword ptr [r12 + 1464]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00237_n52_α
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain00237_n51_α
 xchain00237_n47_β:
 jmp xchain00237_n52_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00237_n48_α:
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 824], rax
 lea rax, [rip + xchain00237_n45_α]
 mov qword ptr [r12 + 832], rax
 jmp xchain00237_n53_α
 xchain00237_n48_β:
 jmp xchain00237_n58_α
# IR_LIT_STRING
 xchain00237_n49_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx00253_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain00237_n55_α
 xchain00237_n49_β:
 jmp xchain00237_n58_α
.Lx00253_0:
 .quad .Lx00253_0_s
.Lx00253_0_s:
 .string ": empty file"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00237_n50_α:
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
 lea rax, [rip + xchain00237_n39_α]
 mov qword ptr [r12 + 1008], rax
 jmp xchain00237_n39_α
 xchain00237_n50_β:
 jmp xchain00237_n39_α
# IR_DEREF variable -> value
 xchain00237_n51_α:
 mov rdi, qword ptr [r12 + 1472]
 mov rsi, qword ptr [r12 + 1480]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00237_n52_α
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 jmp xchain00237_n56_α
 xchain00237_n51_β:
 jmp xchain00237_n52_α
# IR_KEYWORD_read
 xchain00237_n52_α:
 mov rdi, qword ptr [rip + .Lx00254_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain00237_n57_α
 xchain00237_n52_β:
 jmp xchain00237_n39_α
.Lx00254_0:
 .quad .Lx00254_0_s
.Lx00254_0_s:
 .string "&progname"
 xchain00237_n53_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 816]
 mov rdx, qword ptr [r12 + 824]
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00237_n58_α
 xchain00237_n53_β:
 jmp xchain00237_n58_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00237_n54_α:
 jmp qword ptr [r12 + 832]
 xchain00237_n54_β:
 jmp xchain00237_n58_α
 xchain00237_n55_α:
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
  .Lrkfn1137: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1137]
 lea rsi, [r12 + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je xchain00237_n58_α
 jmp xchain00237_n59_α
 xchain00237_n55_β:
 jmp xchain00237_n58_α
 xchain00237_n56_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1488] -> [r12+1424]
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 1432], rax
  .section .rodata
  .Lrkfn1139: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1139]
 lea rsi, [r12 + 1424]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 cmp eax, 99
 je xchain00237_n52_α
 jmp xchain00237_n60_α
 xchain00237_n56_β:
 jmp xchain00237_n52_α
# IR_LIT_STRING
 xchain00237_n57_α:
 mov qword ptr [r12 + 1328], 1
 mov rax, qword ptr [rip + .Lx00255_0]
 mov qword ptr [r12 + 1336], rax
 jmp xchain00237_n61_α
 xchain00237_n57_β:
 jmp xchain00237_n39_α
.Lx00255_0:
 .quad .Lx00255_0_s
.Lx00255_0_s:
 .string ": can't open "
# IR_VAR gva
 xchain00237_n58_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00237_n62_α
 xchain00237_n58_β:
 jmp xchain00237_n63_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00237_n59_α:
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 824], rax
 lea rax, [rip + xchain00237_n58_α]
 mov qword ptr [r12 + 832], rax
 jmp xchain00237_n53_α
 xchain00237_n59_β:
 jmp xchain00237_n58_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00237_n60_α:
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1208], rax
 lea rax, [rip + xchain00237_n52_α]
 mov qword ptr [r12 + 1216], rax
 jmp xchain00237_n64_α
 xchain00237_n60_β:
 jmp xchain00237_n39_α
# IR_VAR_REF local
 xchain00237_n61_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain00237_n66_α
 xchain00237_n61_β:
 jmp xchain00237_n39_α
 xchain00237_n62_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+784] -> [r12+768]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 776], rax
  .section .rodata
  .Lrkfn1149: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1149]
 lea rsi, [r12 + 768]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain00237_n63_α
 jmp xchain00237_n67_α
 xchain00237_n62_β:
 jmp xchain00237_n63_α
# IR_KEYWORD_read
 xchain00237_n63_α:
 mov rdi, qword ptr [rip + .Lx00256_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00237_n68_α
 xchain00237_n63_β:
 jmp xchain00237_n75_α
.Lx00256_0:
 .quad .Lx00256_0_s
.Lx00256_0_s:
 .string "&progname"
# IR_ASSIGN gva
 xchain00237_n64_α:
 mov rax, qword ptr [r12 + 1200]
 mov rdx, qword ptr [r12 + 1208]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain00237_n69_α
 xchain00237_n64_β:
 jmp xchain00237_n39_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00237_n65_α:
 jmp qword ptr [r12 + 1216]
 xchain00237_n65_β:
 jmp xchain00237_n39_α
# IR_LIT_INTEGER
 xchain00237_n66_α:
 mov qword ptr [r12 + 1360], 6
 mov rax, qword ptr [rip + .Lx00257_0]
 mov qword ptr [r12 + 1368], rax
 jmp xchain00237_n70_α
 xchain00237_n66_β:
 jmp xchain00237_n39_α
.Lx00257_0:
 .quad 1
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00237_n67_α:
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 632], rax
 lea rax, [rip + xchain00237_n63_α]
 mov qword ptr [r12 + 640], rax
 jmp xchain00237_n71_α
 xchain00237_n67_β:
 jmp xchain00237_n75_α
# IR_LIT_STRING
 xchain00237_n68_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx00258_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00237_n73_α
 xchain00237_n68_β:
 jmp xchain00237_n75_α
.Lx00258_0:
 .quad .Lx00258_0_s
.Lx00258_0_s:
 .string ": file truncated"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00237_n69_α:
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1160], rax
 lea rax, [rip + xchain00237_n65_α]
 mov qword ptr [r12 + 1168], rax
 jmp xchain00237_n38_α
 xchain00237_n69_β:
 jmp xchain00237_n39_α
# IR_SUBSCRIPT x[i] variable
 xchain00237_n70_α:
 mov rdi, qword ptr [r12 + 1344]
 mov rsi, qword ptr [r12 + 1352]
 mov rdx, qword ptr [r12 + 1360]
 mov rcx, qword ptr [r12 + 1368]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00237_n39_α
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain00237_n74_α
 xchain00237_n70_β:
 jmp xchain00237_n39_α
 xchain00237_n71_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 624]
 mov rdx, qword ptr [r12 + 632]
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00237_n75_α
 xchain00237_n71_β:
 jmp xchain00237_n75_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00237_n72_α:
 jmp qword ptr [r12 + 640]
 xchain00237_n72_β:
 jmp xchain00237_n75_α
 xchain00237_n73_α:
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
  .Lrkfn1165: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1165]
 lea rsi, [r12 + 672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je xchain00237_n75_α
 jmp xchain00237_n76_α
 xchain00237_n73_β:
 jmp xchain00237_n75_α
# IR_DEREF variable -> value
 xchain00237_n74_α:
 mov rdi, qword ptr [r12 + 1376]
 mov rsi, qword ptr [r12 + 1384]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00237_n39_α
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain00237_n77_α
 xchain00237_n74_β:
 jmp xchain00237_n39_α
# IR_VAR
 xchain00237_n75_α:
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 552], rax
 jmp xchain00237_n78_α
 xchain00237_n75_β:
 jmp xchain00237_n79_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00237_n76_α:
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rax
 lea rax, [rip + xchain00237_n75_α]
 mov qword ptr [r12 + 640], rax
 jmp xchain00237_n71_α
 xchain00237_n76_β:
 jmp xchain00237_n75_α
 xchain00237_n77_α:
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
  .Lrkfn1172: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1172]
 lea rsi, [r12 + 1248]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je xchain00237_n39_α
 jmp xchain00237_n80_α
 xchain00237_n77_β:
 jmp xchain00237_n39_α
# IR_LIT_INTEGER
 xchain00237_n78_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx00259_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00237_n81_α
 xchain00237_n78_β:
 jmp xchain00237_n79_α
.Lx00259_0:
 .quad 16
# IR_VAR
 xchain00237_n79_α:
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 456], rax
 jmp xchain00237_n82_α
 xchain00237_n79_β:
 jmp xchain00237_n83_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00237_n80_α:
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1208], rax
 lea rax, [rip + xchain00237_n39_α]
 mov qword ptr [r12 + 1216], rax
 jmp xchain00237_n64_α
 xchain00237_n80_β:
 jmp xchain00237_n39_α
# IR_LIT_INTEGER
 xchain00237_n81_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx00260_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain00237_n84_α
 xchain00237_n81_β:
 jmp xchain00237_n79_α
.Lx00260_0:
 .quad 7
# IR_LIT_INTEGER
 xchain00237_n82_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx00261_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain00237_n85_α
 xchain00237_n82_β:
 jmp xchain00237_n83_α
.Lx00261_0:
 .quad 16
# IR_VAR
 xchain00237_n83_α:
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 312], rax
 jmp xchain00237_n86_α
 xchain00237_n83_β:
 jmp xchain00237_n87_α
 xchain00237_n84_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 560]
 cmp eax, 100
 je .Lx00262_0
 mov eax, dword ptr [r12 + 576]
 cmp eax, 100
 je .Lx00262_0
 mov eax, dword ptr [r12 + 560]
 cmp eax, 6
 jne .Lx00262_2
 mov eax, dword ptr [r12 + 576]
 cmp eax, 6
 jne .Lx00262_2
.Lx00262_1:
 mov rax, qword ptr [r12 + 568]
 mov rcx, qword ptr [r12 + 584]
 add rax, rcx
 mov qword ptr [r12 + 592], 6
 mov qword ptr [r12 + 600], rax
 jmp xchain00237_n88_α
.Lx00262_0:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 mov r8d, 0
 lea r9, [r12 + 592]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00262_3
.Lx00262_2:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00237_n79_α
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
.Lx00262_3:
 jmp xchain00237_n88_α
 xchain00237_n84_β:
 jmp xchain00237_n79_α
# IR_LIT_INTEGER
 xchain00237_n85_α:
 mov qword ptr [r12 + 480], 6
 mov rax, qword ptr [rip + .Lx00263_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain00237_n89_α
 xchain00237_n85_β:
 jmp xchain00237_n83_α
.Lx00263_0:
 .quad 7
# IR_VAR
 xchain00237_n86_α:
 mov rax, qword ptr [r12 + 2128]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 328], rax
 jmp xchain00237_n90_α
 xchain00237_n86_β:
 jmp xchain00237_n87_α
 xchain00237_n87_α:
  .section .rodata
  .Lcall00185_pname: .string "loadfile"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00185_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain00237_n91_α
 jmp xchain00237_n91_α
xchain00237_n87_β:
 jmp xchain00237_n91_α
# IR_SUBSCRIPT section extended (x[i+:n]/x[i-:n]; end pre-computed by IR_BINOP; wraparound→ω)
 xchain00237_n88_α:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov r8, qword ptr [r12 + 592]
 mov r9, qword ptr [r12 + 600]
 call subscript_get2_ext@PLT
 cmp eax, 99
 je xchain00237_n79_α
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00237_n92_α
 xchain00237_n88_β:
 jmp xchain00237_n79_α
 xchain00237_n89_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 464]
 cmp eax, 100
 je .Lx00264_0
 mov eax, dword ptr [r12 + 480]
 cmp eax, 100
 je .Lx00264_0
 mov eax, dword ptr [r12 + 464]
 cmp eax, 6
 jne .Lx00264_2
 mov eax, dword ptr [r12 + 480]
 cmp eax, 6
 jne .Lx00264_2
.Lx00264_1:
 mov rax, qword ptr [r12 + 472]
 mov rcx, qword ptr [r12 + 488]
 add rax, rcx
 mov qword ptr [r12 + 496], 6
 mov qword ptr [r12 + 504], rax
 jmp xchain00237_n93_α
.Lx00264_0:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 mov r8d, 0
 lea r9, [r12 + 496]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00264_3
.Lx00264_2:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00237_n83_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
.Lx00264_3:
 jmp xchain00237_n93_α
 xchain00237_n89_β:
 jmp xchain00237_n83_α
 xchain00237_n90_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2112]
 cmp eax, 100
 je .Lx00265_0
 mov eax, dword ptr [r12 + 2128]
 cmp eax, 100
 je .Lx00265_0
 mov eax, dword ptr [r12 + 2112]
 cmp eax, 6
 jne .Lx00265_2
 mov eax, dword ptr [r12 + 2128]
 cmp eax, 6
 jne .Lx00265_2
.Lx00265_1:
 mov rax, qword ptr [r12 + 2120]
 mov rcx, qword ptr [r12 + 2136]
 add rax, rcx
 mov qword ptr [r12 + 288], 6
 mov qword ptr [r12 + 296], rax
 jmp xchain00237_n94_α
.Lx00265_0:
 mov rdi, qword ptr [r12 + 2112]
 mov rsi, qword ptr [r12 + 2120]
 mov rdx, qword ptr [r12 + 2128]
 mov rcx, qword ptr [r12 + 2136]
 mov r8d, 0
 lea r9, [r12 + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00265_3
.Lx00265_2:
 mov rdi, qword ptr [r12 + 2112]
 mov rsi, qword ptr [r12 + 2120]
 mov rdx, qword ptr [r12 + 2128]
 mov rcx, qword ptr [r12 + 2136]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00237_n87_α
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
.Lx00265_3:
 jmp xchain00237_n94_α
 xchain00237_n90_β:
 jmp xchain00237_n87_α
# IR_VAR
 xchain00237_n91_α:
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 184], rax
 jmp xchain00237_n95_α
 xchain00237_n91_β:
 jmp xchain00237_n96_α
 xchain00237_n92_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00237_n79_α
 xchain00237_n92_β:
 jmp xchain00237_n79_α
# IR_SUBSCRIPT section extended (x[i+:n]/x[i-:n]; end pre-computed by IR_BINOP; wraparound→ω)
 xchain00237_n93_α:
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 mov r8, qword ptr [r12 + 496]
 mov r9, qword ptr [r12 + 504]
 call subscript_get2_ext@PLT
 cmp eax, 99
 je xchain00237_n83_α
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00237_n97_α
 xchain00237_n93_β:
 jmp xchain00237_n83_α
# IR_LIT_REAL
 xchain00237_n94_α:
 mov qword ptr [r12 + 336], 7
 mov rax, qword ptr [rip + .Lx00266_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00237_n98_α
 xchain00237_n94_β:
 jmp xchain00237_n87_α
.Lx00266_0:
 .quad 4611686018427387904
 xchain00237_n95_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn1196: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1196]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00237_n96_α
 jmp xchain00237_n96_α
 xchain00237_n95_β:
 jmp xchain00237_n96_α
# IR_VAR
 xchain00237_n96_α:
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 136], rax
 jmp xchain00237_n99_α
 xchain00237_n96_β:
 jmp xchain00237_n00060_α
 xchain00237_n97_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00237_n83_α
 xchain00237_n97_β:
 jmp xchain00237_n83_α
 xchain00237_n98_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00237_n87_α
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00237_n00001_α
 xchain00237_n98_β:
 jmp xchain00237_n87_α
 xchain00237_n99_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1202: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1202]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00237_n00060_α
 jmp xchain00237_n00060_α
 xchain00237_n99_β:
 jmp xchain00237_n00060_α
# IR_VAR gva
 xchain00237_n00060_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00237_n00062_α
 xchain00237_n00060_β:
 jmp main_ω
# IR_KEYWORD_read
 xchain00237_n00001_α:
 mov rdi, qword ptr [rip + .Lx00267_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00237_n00063_α
 xchain00237_n00001_β:
 jmp xchain00237_n87_α
.Lx00267_0:
 .quad .Lx00267_0_s
.Lx00267_0_s:
 .string "&pi"
 xchain00237_n00062_α:
  .section .rodata
  .Lcall00268_pname: .string "kgen"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00268_pname]
 mov esi, 1
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp xchain00237_n00064_α
xchain00237_n00062_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp xchain00237_n00064_α
# IR_LIT_INTEGER
 xchain00237_n00063_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00269_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00237_n00065_α
 xchain00237_n00063_β:
 jmp xchain00237_n87_α
.Lx00269_0:
 .quad 9999999
 xchain00237_n00064_α:
  .section .rodata
  .Lcall00270_pname: .string "dumpcode"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00270_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp xchain00237_n00062_β
xchain00237_n00064_β:
 jmp main_ω
 xchain00237_n00065_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 368]
 cmp eax, 100
 je .Lx00271_0
 mov eax, dword ptr [r12 + 400]
 cmp eax, 100
 je .Lx00271_0
 mov eax, dword ptr [r12 + 368]
 cmp eax, 6
 jne .Lx00271_2
 mov eax, dword ptr [r12 + 400]
 cmp eax, 6
 jne .Lx00271_2
.Lx00271_1:
 mov rax, qword ptr [r12 + 376]
 mov rcx, qword ptr [r12 + 408]
 cqo
 idiv rcx
 mov qword ptr [r12 + 352], 6
 mov qword ptr [r12 + 360], rax
 jmp xchain00237_n00067_α
.Lx00271_0:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 3
 lea r9, [r12 + 352]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00271_3
.Lx00271_2:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00237_n87_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
.Lx00271_3:
 jmp xchain00237_n00067_α
 xchain00237_n00065_β:
 jmp xchain00237_n87_α
 xchain00237_n00067_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00237_n87_α
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00237_n00069_α
 xchain00237_n00067_β:
 jmp xchain00237_n87_α
 xchain00237_n00069_α:
# BOX IR_CALL sin(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+256] -> [r12+240]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn1211: .string "sin"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1211]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00237_n87_α
 jmp xchain00237_n00002_α
 xchain00237_n00069_β:
 jmp xchain00237_n87_α
# IR_ASSIGN gva
 xchain00237_n00002_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00237_n87_α
 xchain00237_n00002_β:
 jmp xchain00237_n87_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 2064]
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
pop r12
ret
