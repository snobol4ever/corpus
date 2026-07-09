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
# IR_VAR
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
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1424]
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
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1328]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1336], rax
# marshal arg1 = producer-box slot [zr+1392] -> [zr+1344]
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
# IR_VAR
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
# marshal arg0 = producer-box slot [zr+1248] -> [zr+1232]
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
# IR_VAR_REF
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
# IR_VAR_REF
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
# IR_VAR_REF
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
# IR_VAR_REF
 xchain0_n37_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n41_α
 xchain0_n37_β:
 jmp xchain0_n45_α
# IR_VAR_REF
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
# IR_NULLTEST_VAR
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
# IR_VAR_REF
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
# IR_ASSIGN_VAR
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
# marshal arg0 = producer-box slot [zr+96] -> [zr+64]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 72], rax
# marshal arg1 = producer-box slot [zr+112] -> [zr+80]
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
# marshal arg0 = producer-box slot [zr+976] -> [zr+960]
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
# IR_ASSIGN_VAR
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
# marshal arg0 = producer-box slot [zr+416] -> [zr+400]
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
# IR_ASSIGN_VAR
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
# IR_VAR_REF
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
# IR_VAR_REF
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
# IR_ASSIGN_VAR
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
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
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
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
# marshal arg0 = producer-box slot [zr+80] -> [zr+64]
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
# IR_VAR_REF
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
# marshal arg0 = producer-box slot [zr+480] -> [zr+384]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+400]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 408], rax
# marshal arg2 = producer-box slot [zr+512] -> [zr+416]
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
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+320]
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
proc_kgen_ω:
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
  .globl proc_dumpcode_α
proc_dumpcode_α:
#=======================================================================================================================
    .global proc_dumpcode_α
    .global proc_dumpcode_β
    .global proc_dumpcode_γ
    .global proc_dumpcode_ω
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
 mov qword ptr [r12 + 800], rax
 pop rsi
proc_dumpcode_α_body:
# IR_VAR_REF
 xchain00011_n0_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00011_n1_α
 xchain00011_n0_β:
 jmp xchain00011_n3_α
# IR_VAR
 xchain00011_n1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 760], rax
 jmp xchain00011_n2_α
 xchain00011_n1_β:
 jmp xchain00011_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00011_n2_α:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00011_n3_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
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
 lea rsi, [r12 + 720]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain00011_n6_α
 jmp xchain00011_n5_α
 xchain00011_n3_β:
 jmp xchain00011_n6_α
# IR_DEREF variable -> value
 xchain00011_n4_α:
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00011_n3_α
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00011_n7_α
 xchain00011_n4_β:
 jmp xchain00011_n3_α
# IR_ASSIGN gva
 xchain00011_n5_α:
 mov rax, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00011_n6_α
 xchain00011_n5_β:
 jmp xchain00011_n6_α
# IR_VAR_REF
 xchain00011_n6_α:
 lea rdi, [r12 + 832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00011_n8_β
 xchain00011_n6_β:
 jmp xchain00011_n10_α
 xchain00011_n7_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 784]
 mov rdx, qword ptr [r12 + 792]
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
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
 lea rdx, [r12 + 128]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00011_n10_α
 jmp xchain00011_n9_α
xchain00011_n8_β:
 mov rdi, qword ptr [r12 + 128]
 call rt_proc_resume_frame@PLT
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
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
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
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00011_n10_α
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00011_n12_α
 xchain00011_n11_β:
 jmp xchain00011_n10_α
# IR_LIT_INTEGER
 xchain00011_n12_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00013_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00011_n13_α
 xchain00011_n12_β:
 jmp xchain00011_n8_β
.Lx00013_0:
 .quad 3
 xchain00011_n13_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+64]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 72], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+80]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 184]
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
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00011_n15_α
 xchain00011_n14_β:
 jmp xchain00011_n10_α
# IR_VAR
 xchain00011_n15_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 248], rax
 jmp xchain00011_n16_α
 xchain00011_n15_β:
 jmp xchain00011_n8_β
 xchain00011_n16_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+224]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn191: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn191]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain00011_n8_β
 jmp xchain00011_n17_α
 xchain00011_n16_β:
 jmp xchain00011_n8_β
 xchain00011_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00011_n18_α
 xchain00011_n17_β:
 jmp xchain00011_n8_β
# IR_VAR
 xchain00011_n18_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 680], rax
 jmp xchain00011_n19_α
 xchain00011_n18_β:
 jmp xchain00011_n20_α
 xchain00011_n19_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+656]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn196: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn196]
 lea rsi, [r12 + 656]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain00011_n20_α
 jmp xchain00011_n21_α
 xchain00011_n19_β:
 jmp xchain00011_n20_α
# IR_VAR
 xchain00011_n20_α:
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 600], rax
 jmp xchain00011_n22_α
 xchain00011_n20_β:
 jmp xchain00011_n23_α
 xchain00011_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00011_n20_α
 xchain00011_n21_β:
 jmp xchain00011_n20_α
 xchain00011_n22_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+576]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn201: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn201]
 lea rsi, [r12 + 576]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain00011_n23_α
 jmp xchain00011_n24_α
 xchain00011_n22_β:
 jmp xchain00011_n23_α
# IR_VAR
 xchain00011_n23_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 504], rax
 jmp xchain00011_n25_α
 xchain00011_n23_β:
 jmp xchain00011_n15_α
# IR_LIT_STRING
 xchain00011_n24_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx00014_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00011_n26_α
 xchain00011_n24_β:
 jmp xchain00011_n23_α
.Lx00014_0:
 .quad .Lx00014_0_s
.Lx00014_0_s:
 .string "list"
# IR_VAR
 xchain00011_n25_α:
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 520], rax
 jmp xchain00011_n27_α
 xchain00011_n25_β:
 jmp xchain00011_n15_α
 xchain00011_n26_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00011_n23_α
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00011_n28_α
 xchain00011_n26_β:
 jmp xchain00011_n23_α
# IR_VAR
 xchain00011_n27_α:
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 536], rax
 jmp xchain00011_n29_α
 xchain00011_n27_β:
 jmp xchain00011_n15_α
# IR_VAR
 xchain00011_n28_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 360], rax
 jmp xchain00011_n30_α
 xchain00011_n28_β:
 jmp xchain00011_n15_α
 xchain00011_n29_α:
  .section .rodata
  .Lcall00015_pname: .string "putchain"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00015_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain00011_n15_α
 jmp xchain00011_n31_α
xchain00011_n29_β:
 jmp xchain00011_n15_α
# IR_VAR
 xchain00011_n30_α:
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 376], rax
 jmp xchain00011_n32_α
 xchain00011_n30_β:
 jmp xchain00011_n15_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00011_n31_α:
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain00011_n15_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain00011_n33_α
 xchain00011_n31_β:
 jmp xchain00011_n15_α
# IR_VAR
 xchain00011_n32_α:
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 424], rax
 jmp xchain00011_n35_α
 xchain00011_n32_β:
 jmp xchain00011_n15_α
 xchain00011_n33_α:
 jmp xchain00011_n15_α
xchain00011_n33_β:
 jmp xchain00011_n15_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00011_n34_α:
 jmp qword ptr [r12 + 272]
 xchain00011_n34_β:
 jmp xchain00011_n15_α
# IR_LIST_BANG
 xchain00011_n35_α:
 mov qword ptr [r12 + 400], 0
.Lx00016_0:
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 400]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp rax, 99
 je xchain00011_n15_α
 jmp xchain00011_n36_α
 xchain00011_n35_β:
 inc qword ptr [r12 + 400]
 jmp .Lx00016_0
 xchain00011_n36_α:
  .section .rodata
  .Lcall00017_pname: .string "putchain"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00017_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
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
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 800]
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
mov rsp, rbp
pop rbp
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
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
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
# marshal arg0 = producer-box slot [zr+544] -> [zr+528]
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
# marshal arg0 = producer-box slot [zr+448] -> [zr+432]
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
 jmp xchain00018_n20_β
proc_aseq_β:
jmp qword ptr [r12 + 560]
proc_aseq_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 2944], rax
 pop rsi
proc_putchain_α_body:
# IR_VAR
 xchain00030_n0_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 jmp xchain00030_n1_α
 xchain00030_n0_β:
 jmp xchain00030_n2_α
# IR_VAR
 xchain00030_n1_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 2928], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 2936], rax
 jmp xchain00030_n3_α
 xchain00030_n1_β:
 jmp xchain00030_n2_α
# IR_VAR
 xchain00030_n2_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2800], rax
 mov qword ptr [r12 + 2808], rdx
 jmp xchain00030_n4_α
 xchain00030_n2_β:
 jmp xchain00030_n5_α
 xchain00030_n3_α:
# BOX IR_CALL member(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2912] -> [zr+2880]
 mov rax, qword ptr [r12 + 2912]
 mov qword ptr [r12 + 2880], rax
 mov rax, qword ptr [r12 + 2920]
 mov qword ptr [r12 + 2888], rax
# marshal arg1 = producer-box slot [zr+2928] -> [zr+2896]
 mov rax, qword ptr [r12 + 2928]
 mov qword ptr [r12 + 2896], rax
 mov rax, qword ptr [r12 + 2936]
 mov qword ptr [r12 + 2904], rax
  .section .rodata
  .Lrkfn264: .string "member"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn264]
 lea rsi, [r12 + 2880]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], rdx
 cmp eax, 99
 je xchain00030_n2_α
 jmp xchain00030_n6_α
 xchain00030_n3_β:
 jmp xchain00030_n2_α
# IR_VAR
 xchain00030_n4_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 2816], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 2824], rax
 jmp xchain00030_n7_α
 xchain00030_n4_β:
 jmp xchain00030_n5_α
# IR_VAR
 xchain00030_n5_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 2744], rax
 jmp xchain00030_n8_α
 xchain00030_n5_β:
 jmp xchain00030_n9_α
# IR_RETURN
 xchain00030_n6_α:
 mov rax, qword ptr [r12 + 2864]
 mov rdx, qword ptr [r12 + 2872]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_putchain_γ
 xchain00030_n7_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2800] -> [zr+2768]
 mov rax, qword ptr [r12 + 2800]
 mov qword ptr [r12 + 2768], rax
 mov rax, qword ptr [r12 + 2808]
 mov qword ptr [r12 + 2776], rax
# marshal arg1 = producer-box slot [zr+2816] -> [zr+2784]
 mov rax, qword ptr [r12 + 2816]
 mov qword ptr [r12 + 2784], rax
 mov rax, qword ptr [r12 + 2824]
 mov qword ptr [r12 + 2792], rax
  .section .rodata
  .Lrkfn271: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn271]
 lea rsi, [r12 + 2768]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 cmp eax, 99
 je xchain00030_n5_α
 jmp xchain00030_n5_α
 xchain00030_n7_β:
 jmp xchain00030_n5_α
# IR_GEN_SCAN
 xchain00030_n8_α:
 mov rdi, qword ptr [r12 + 2736]
 mov rsi, qword ptr [r12 + 2744]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00030_n10_α
 xchain00030_n8_β:
 jmp xchain00030_n9_α
# IR_MAKE_LIST
 xchain00030_n9_α:
 lea rdi, [r12 + 2448]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 jmp xchain00030_n11_α
 xchain00030_n9_β:
 jmp xchain00030_n13_α
# IR_LIT_INTEGER
 xchain00030_n10_α:
 mov qword ptr [r12 + 2720], 6
 mov rax, qword ptr [rip + .Lx00031_0]
 mov qword ptr [r12 + 2728], rax
 jmp xchain00030_n12_α
 xchain00030_n10_β:
 jmp xchain00030_n15_α
.Lx00031_0:
 .quad 8
# IR_ASSIGN gva
 xchain00030_n11_α:
 mov rax, qword ptr [r12 + 2432]
 mov rdx, qword ptr [r12 + 2440]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 jmp xchain00030_n13_α
 xchain00030_n11_β:
 jmp xchain00030_n13_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00030_n12_α:
 mov rax, 8
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00030_n15_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00030_n15_α
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
 jmp xchain00030_n14_α
 xchain00030_n12_β:
 mov r14, qword ptr [r12 + 2704]
 jmp xchain00030_n15_α
# IR_MAKE_LIST
 xchain00030_n13_α:
 lea rdi, [r12 + 2416]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 jmp xchain00030_n16_α
 xchain00030_n13_β:
 jmp xchain00030_n18_α
 xchain00030_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2688]
 mov rdx, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 jmp xchain00030_n15_α
 xchain00030_n14_β:
 jmp xchain00030_n15_α
# IR_LIT_INTEGER
 xchain00030_n15_α:
 mov qword ptr [r12 + 2656], 6
 mov rax, qword ptr [rip + .Lx00032_0]
 mov qword ptr [r12 + 2664], rax
 jmp xchain00030_n17_α
 xchain00030_n15_β:
 jmp xchain00030_n20_α
.Lx00032_0:
 .quad 7
# IR_ASSIGN gva
 xchain00030_n16_α:
 mov rax, qword ptr [r12 + 2400]
 mov rdx, qword ptr [r12 + 2408]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 jmp xchain00030_n18_α
 xchain00030_n16_β:
 jmp xchain00030_n18_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00030_n17_α:
 mov rax, 7
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00030_n20_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00030_n20_α
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
 jmp xchain00030_n19_α
 xchain00030_n17_β:
 mov r14, qword ptr [r12 + 2640]
 jmp xchain00030_n20_α
# IR_VAR
 xchain00030_n18_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 2368], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 2376], rax
 jmp xchain00030_n21_α
 xchain00030_n18_β:
 jmp xchain00030_n22_α
 xchain00030_n19_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2624] -> [zr+2608]
 mov rax, qword ptr [r12 + 2624]
 mov qword ptr [r12 + 2608], rax
 mov rax, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 2616], rax
  .section .rodata
  .Lrkfn290: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn290]
 lea rsi, [r12 + 2608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je xchain00030_n20_α
 jmp xchain00030_n23_α
 xchain00030_n19_β:
 jmp xchain00030_n20_α
# IR_VAR
 xchain00030_n20_α:
 mov rax, qword ptr [r12 + 3136]
 mov qword ptr [r12 + 2544], rax
 mov rax, qword ptr [r12 + 3144]
 mov qword ptr [r12 + 2552], rax
 jmp xchain00030_n24_α
 xchain00030_n20_β:
 jmp xchain00030_n25_α
 xchain00030_n21_α:
  .section .rodata
  .Lcall00033_pname: .string "putdel"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2368]
 mov rdx, qword ptr [r12 + 2376]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00033_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 cmp eax, 99
 je xchain00030_n22_α
 jmp xchain00030_n26_α
xchain00030_n21_β:
 jmp xchain00030_n22_α
# IR_VAR
 xchain00030_n22_α:
 mov rax, qword ptr [r12 + 3120]
 mov qword ptr [r12 + 2160], rax
 mov rax, qword ptr [r12 + 3128]
 mov qword ptr [r12 + 2168], rax
 jmp xchain00030_n27_α
 xchain00030_n22_β:
 jmp xchain00030_n28_α
 xchain00030_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2592]
 mov rdx, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 jmp xchain00030_n20_α
 xchain00030_n23_β:
 jmp xchain00030_n20_α
# IR_VAR
 xchain00030_n24_α:
 mov rax, qword ptr [r12 + 3024]
 mov qword ptr [r12 + 2560], rax
 mov rax, qword ptr [r12 + 3032]
 mov qword ptr [r12 + 2568], rax
 jmp xchain00030_n29_α
 xchain00030_n24_β:
 jmp xchain00030_n25_α
# IR_GEN_SCAN
 xchain00030_n25_α:
 lea rdi, [r12 + 2448]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 2448]
 mov r14, qword ptr [r12 + 2456]
 mov r15, qword ptr [r12 + 2464]
 jmp xchain00030_n9_α
 xchain00030_n25_β:
 jmp xchain00030_n9_α
 xchain00030_n26_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2336]
 mov rdx, qword ptr [r12 + 2344]
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 jmp xchain00030_n22_α
 xchain00030_n26_β:
 jmp xchain00030_n22_α
 xchain00030_n27_α:
  .section .rodata
  .Lcall00034_pname: .string "successor"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2160]
 mov rdx, qword ptr [r12 + 2168]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00034_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 cmp eax, 99
 je xchain00030_n28_α
 jmp xchain00030_n30_α
xchain00030_n27_β:
 jmp xchain00030_n28_α
 xchain00030_n28_α:
  .section .rodata
  .Lcall00035_pname: .string "collapse"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00035_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 cmp eax, 99
 je xchain00030_n31_α
 jmp xchain00030_n31_α
xchain00030_n28_β:
 jmp xchain00030_n31_α
 xchain00030_n29_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 3136]
 cmp eax, 100
 je .Lx00036_0
 mov eax, dword ptr [r12 + 3024]
 cmp eax, 100
 je .Lx00036_0
 mov eax, dword ptr [r12 + 3136]
 cmp eax, 6
 jne .Lx00036_2
 mov eax, dword ptr [r12 + 3024]
 cmp eax, 6
 jne .Lx00036_2
.Lx00036_1:
 mov rax, qword ptr [r12 + 3144]
 mov rcx, qword ptr [r12 + 3032]
 sub rax, rcx
 mov qword ptr [r12 + 2528], 6
 mov qword ptr [r12 + 2536], rax
 jmp xchain00030_n32_α
.Lx00036_0:
 mov rdi, qword ptr [r12 + 3136]
 mov rsi, qword ptr [r12 + 3144]
 mov rdx, qword ptr [r12 + 3024]
 mov rcx, qword ptr [r12 + 3032]
 mov r8d, 1
 lea r9, [r12 + 2528]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00036_3
.Lx00036_2:
 mov rdi, qword ptr [r12 + 3136]
 mov rsi, qword ptr [r12 + 3144]
 mov rdx, qword ptr [r12 + 3024]
 mov rcx, qword ptr [r12 + 3032]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00030_n25_α
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
.Lx00036_3:
 jmp xchain00030_n32_α
 xchain00030_n29_β:
 jmp xchain00030_n25_α
 xchain00030_n30_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2128]
 mov rdx, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 jmp xchain00030_n33_α
 xchain00030_n30_β:
 jmp xchain00030_n28_α
# IR_VAR
 xchain00030_n31_α:
 mov rax, qword ptr [r12 + 3024]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 3032]
 mov qword ptr [r12 + 2088], rax
 jmp xchain00030_n34_α
 xchain00030_n31_β:
 jmp xchain00030_n35_α
 xchain00030_n32_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2528]
 mov rdx, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 3040], rax
 mov qword ptr [r12 + 3048], rdx
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 jmp xchain00030_n36_α
 xchain00030_n32_β:
 jmp xchain00030_n25_α
# IR_VAR
 xchain00030_n33_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain00030_n37_α
 xchain00030_n33_β:
 jmp xchain00030_n38_α
 xchain00030_n34_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2080]
 mov rdx, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 3088], rax
 mov qword ptr [r12 + 3096], rdx
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain00030_n39_α
 xchain00030_n34_β:
 jmp xchain00030_n35_α
# IR_VAR
 xchain00030_n35_α:
 mov rax, qword ptr [r12 + 3040]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 3048]
 mov qword ptr [r12 + 2024], rax
 jmp xchain00030_n40_α
 xchain00030_n35_β:
 jmp xchain00030_n41_α
 xchain00030_n36_α:
 jmp xchain00030_n42_α
xchain00030_n36_β:
 jmp xchain00030_n25_α
# IR_VAR
 xchain00030_n37_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 2304], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 2312], rax
 jmp xchain00030_n43_α
 xchain00030_n37_β:
 jmp xchain00030_n38_α
# IR_VAR
 xchain00030_n38_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 2232], rax
 jmp xchain00030_n44_α
 xchain00030_n38_β:
 jmp xchain00030_n22_α
 xchain00030_n39_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2064]
 mov rdx, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 3104], rax
 mov qword ptr [r12 + 3112], rdx
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 jmp xchain00030_n45_α
 xchain00030_n39_β:
 jmp xchain00030_n35_α
 xchain00030_n40_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2016]
 mov rdx, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain00030_n46_α
 xchain00030_n40_β:
 jmp xchain00030_n41_α
# IR_VAR
 xchain00030_n41_α:
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 1784], rax
 jmp xchain00030_n47_α
 xchain00030_n41_β:
 jmp xchain00030_n48_α
# IR_GEN_SCAN
 xchain00030_n42_α:
 lea rdi, [r12 + 2448]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 2448]
 mov r14, qword ptr [r12 + 2456]
 mov r15, qword ptr [r12 + 2464]
 jmp xchain00030_n9_α
 xchain00030_n42_β:
 jmp xchain00030_n9_α
 xchain00030_n43_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2288] -> [zr+2256]
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 2256], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 2264], rax
# marshal arg1 = producer-box slot [zr+2304] -> [zr+2272]
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 2272], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2280], rax
  .section .rodata
  .Lrkfn325: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn325]
 lea rsi, [r12 + 2256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 cmp eax, 99
 je xchain00030_n38_α
 jmp xchain00030_n38_α
 xchain00030_n43_β:
 jmp xchain00030_n38_α
 xchain00030_n44_α:
  .section .rodata
  .Lcall00037_pname: .string "putdel"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2224]
 mov rdx, qword ptr [r12 + 2232]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00037_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 cmp eax, 99
 je xchain00030_n22_α
 jmp xchain00030_n49_α
xchain00030_n44_β:
 jmp xchain00030_n22_α
 xchain00030_n45_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2048]
 mov rdx, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 2992], rax
 mov qword ptr [r12 + 3000], rdx
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 jmp xchain00030_n35_α
 xchain00030_n45_β:
 jmp xchain00030_n35_α
 xchain00030_n46_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2000]
 mov rdx, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 3072], rax
 mov qword ptr [r12 + 3080], rdx
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xchain00030_n50_α
 xchain00030_n46_β:
 jmp xchain00030_n41_α
# IR_VAR
 xchain00030_n47_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 jmp xchain00030_n51_α
 xchain00030_n47_β:
 jmp xchain00030_n48_α
# IR_VAR
 xchain00030_n48_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1552], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1560], rax
 jmp xchain00030_n52_α
 xchain00030_n48_β:
 jmp xchain00030_n53_α
 xchain00030_n49_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2192]
 mov rdx, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain00030_n54_α
 xchain00030_n49_β:
 jmp xchain00030_n22_α
 xchain00030_n50_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1984]
 mov rdx, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 jmp xchain00030_n41_α
 xchain00030_n50_β:
 jmp xchain00030_n41_α
# IR_LIST_BANG
 xchain00030_n51_α:
 mov qword ptr [r12 + 1808], 0
.Lx00038_0:
 mov rdi, qword ptr [r12 + 1824]
 mov rsi, qword ptr [r12 + 1832]
 mov rdx, qword ptr [r12 + 1808]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 cmp rax, 99
 je xchain00030_n48_α
 jmp xchain00030_n55_α
 xchain00030_n51_β:
 inc qword ptr [r12 + 1808]
 jmp .Lx00038_0
# IR_VAR
 xchain00030_n52_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00030_n56_α
 xchain00030_n52_β:
 jmp xchain00030_n53_α
# IR_VAR
 xchain00030_n53_α:
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 1496], rax
 jmp xchain00030_n57_α
 xchain00030_n53_β:
 jmp xchain00030_n58_α
 xchain00030_n54_α:
 jmp xchain00030_n22_α
xchain00030_n54_β:
 jmp xchain00030_n22_α
 xchain00030_n55_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 100
 je .Lx00039_0
 mov eax, dword ptr [r12 + 1792]
 cmp eax, 100
 je .Lx00039_0
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 6
 jne .Lx00039_2
 mov eax, dword ptr [r12 + 1792]
 cmp eax, 6
 jne .Lx00039_2
.Lx00039_1:
 mov rax, qword ptr [r12 + 3000]
 mov rcx, qword ptr [r12 + 1800]
 add rax, rcx
 mov qword ptr [r12 + 1760], 6
 mov qword ptr [r12 + 1768], rax
 jmp xchain00030_n59_α
.Lx00039_0:
 mov rdi, qword ptr [r12 + 2992]
 mov rsi, qword ptr [r12 + 3000]
 mov rdx, qword ptr [r12 + 1792]
 mov rcx, qword ptr [r12 + 1800]
 mov r8d, 0
 lea r9, [r12 + 1760]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00039_3
.Lx00039_2:
 mov rdi, qword ptr [r12 + 2992]
 mov rsi, qword ptr [r12 + 3000]
 mov rdx, qword ptr [r12 + 1792]
 mov rcx, qword ptr [r12 + 1800]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00030_n48_α
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
.Lx00039_3:
 jmp xchain00030_n59_α
 xchain00030_n55_β:
 jmp xchain00030_n48_α
# IR_LIST_BANG
 xchain00030_n56_α:
 mov qword ptr [r12 + 1584], 0
.Lx00040_0:
 mov rdi, qword ptr [r12 + 1600]
 mov rsi, qword ptr [r12 + 1608]
 mov rdx, qword ptr [r12 + 1584]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 cmp rax, 99
 je xchain00030_n53_α
 jmp xchain00030_n60_α
 xchain00030_n56_β:
 inc qword ptr [r12 + 1584]
 jmp .Lx00040_0
# IR_VAR
 xchain00030_n57_α:
 mov rax, qword ptr [r12 + 3104]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 3112]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00030_n61_α
 xchain00030_n57_β:
 jmp xchain00030_n58_α
# IR_VAR
 xchain00030_n58_α:
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00030_n62_α
 xchain00030_n58_β:
 jmp xchain00030_n63_α
 xchain00030_n59_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1760]
 mov rdx, qword ptr [r12 + 1768]
 mov qword ptr [r12 + 2992], rax
 mov qword ptr [r12 + 3000], rdx
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain00030_n64_α
 xchain00030_n59_β:
 jmp xchain00030_n48_α
 xchain00030_n60_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 100
 je .Lx00041_0
 mov eax, dword ptr [r12 + 1568]
 cmp eax, 100
 je .Lx00041_0
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 6
 jne .Lx00041_2
 mov eax, dword ptr [r12 + 1568]
 cmp eax, 6
 jne .Lx00041_2
.Lx00041_1:
 mov rax, qword ptr [r12 + 2984]
 mov rcx, qword ptr [r12 + 1576]
 add rax, rcx
 mov qword ptr [r12 + 1536], 6
 mov qword ptr [r12 + 1544], rax
 jmp xchain00030_n65_α
.Lx00041_0:
 mov rdi, qword ptr [r12 + 2976]
 mov rsi, qword ptr [r12 + 2984]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 mov r8d, 0
 lea r9, [r12 + 1536]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00041_3
.Lx00041_2:
 mov rdi, qword ptr [r12 + 2976]
 mov rsi, qword ptr [r12 + 2984]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00030_n53_α
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
.Lx00041_3:
 jmp xchain00030_n65_α
 xchain00030_n60_β:
 jmp xchain00030_n53_α
 xchain00030_n61_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 100
 je .Lx00042_0
 mov eax, dword ptr [r12 + 3104]
 cmp eax, 100
 je .Lx00042_0
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 6
 jne .Lx00042_2
 mov eax, dword ptr [r12 + 3104]
 cmp eax, 6
 jne .Lx00042_2
.Lx00042_1:
 mov rax, qword ptr [r12 + 3000]
 mov rcx, qword ptr [r12 + 3112]
 sub rax, rcx
 mov qword ptr [r12 + 1472], 6
 mov qword ptr [r12 + 1480], rax
 jmp xchain00030_n66_α
.Lx00042_0:
 mov rdi, qword ptr [r12 + 2992]
 mov rsi, qword ptr [r12 + 3000]
 mov rdx, qword ptr [r12 + 3104]
 mov rcx, qword ptr [r12 + 3112]
 mov r8d, 1
 lea r9, [r12 + 1472]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00042_3
.Lx00042_2:
 mov rdi, qword ptr [r12 + 2992]
 mov rsi, qword ptr [r12 + 3000]
 mov rdx, qword ptr [r12 + 3104]
 mov rcx, qword ptr [r12 + 3112]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00030_n58_α
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
.Lx00042_3:
 jmp xchain00030_n66_α
 xchain00030_n61_β:
 jmp xchain00030_n58_α
# IR_VAR
 xchain00030_n62_α:
 mov rax, qword ptr [r12 + 3088]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 3096]
 mov qword ptr [r12 + 1432], rax
 jmp xchain00030_n67_α
 xchain00030_n62_β:
 jmp xchain00030_n63_α
# IR_VAR
 xchain00030_n63_α:
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00030_n68_α
 xchain00030_n63_β:
 jmp xchain00030_n69_α
# IR_VAR
 xchain00030_n64_α:
 mov rax, qword ptr [r12 + 3104]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 3112]
 mov qword ptr [r12 + 1944], rax
 jmp xchain00030_n70_α
 xchain00030_n64_β:
 jmp xchain00030_n71_α
 xchain00030_n65_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1536]
 mov rdx, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain00030_n72_α
 xchain00030_n65_β:
 jmp xchain00030_n53_α
 xchain00030_n66_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1472]
 mov rdx, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain00030_n58_α
 xchain00030_n66_β:
 jmp xchain00030_n58_α
# IR_VAR
 xchain00030_n67_α:
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00030_n73_α
 xchain00030_n67_β:
 jmp xchain00030_n63_α
# IR_VAR
 xchain00030_n68_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1336], rax
 jmp xchain00030_n74_α
 xchain00030_n68_β:
 jmp xchain00030_n69_α
# IR_VAR
 xchain00030_n69_α:
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 1208], rax
 jmp xchain00030_n75_α
 xchain00030_n69_β:
 jmp xchain00030_n76_α
# IR_VAR
 xchain00030_n70_α:
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 1960], rax
 jmp xchain00030_n77_α
 xchain00030_n70_β:
 jmp xchain00030_n71_α
# IR_VAR
 xchain00030_n71_α:
 mov rax, qword ptr [r12 + 3088]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 3096]
 mov qword ptr [r12 + 1880], rax
 jmp xchain00030_n78_α
 xchain00030_n71_β:
 jmp xchain00030_n51_β
# IR_VAR
 xchain00030_n72_α:
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 1720], rax
 jmp xchain00030_n79_α
 xchain00030_n72_β:
 jmp xchain00030_n80_α
 xchain00030_n73_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 3088]
 cmp eax, 100
 je .Lx00043_0
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 100
 je .Lx00043_0
 mov eax, dword ptr [r12 + 3088]
 cmp eax, 6
 jne .Lx00043_2
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 6
 jne .Lx00043_2
.Lx00043_1:
 mov rax, qword ptr [r12 + 3096]
 mov rcx, qword ptr [r12 + 3000]
 sub rax, rcx
 mov qword ptr [r12 + 1408], 6
 mov qword ptr [r12 + 1416], rax
 jmp xchain00030_n81_α
.Lx00043_0:
 mov rdi, qword ptr [r12 + 3088]
 mov rsi, qword ptr [r12 + 3096]
 mov rdx, qword ptr [r12 + 2992]
 mov rcx, qword ptr [r12 + 3000]
 mov r8d, 1
 lea r9, [r12 + 1408]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00043_3
.Lx00043_2:
 mov rdi, qword ptr [r12 + 3088]
 mov rsi, qword ptr [r12 + 3096]
 mov rdx, qword ptr [r12 + 2992]
 mov rcx, qword ptr [r12 + 3000]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00030_n63_α
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
.Lx00043_3:
 jmp xchain00030_n81_α
 xchain00030_n73_β:
 jmp xchain00030_n63_α
# IR_VAR
 xchain00030_n74_α:
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 1352], rax
 jmp xchain00030_n82_α
 xchain00030_n74_β:
 jmp xchain00030_n69_α
# IR_VAR
 xchain00030_n75_α:
 mov rax, qword ptr [r12 + 3056]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 3064]
 mov qword ptr [r12 + 1240], rax
 jmp xchain00030_n83_α
 xchain00030_n75_β:
 jmp xchain00030_n76_α
# IR_VAR
 xchain00030_n76_α:
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 1144], rax
 jmp xchain00030_n84_α
 xchain00030_n76_β:
 jmp xchain00030_n85_α
 xchain00030_n77_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3104]
 cmp eax, 100
 je .Lx00044_0
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 100
 je .Lx00044_0
 mov eax, dword ptr [r12 + 3104]
 cmp eax, 6
 jne .Lx00044_2
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 6
 jne .Lx00044_2
.Lx00044_1:
 mov rax, qword ptr [r12 + 3112]
 mov rcx, qword ptr [r12 + 3000]
 cmp rax, rcx
 jle xchain00030_n71_α
 mov rcx, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 1920], rcx
 mov rcx, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 1928], rcx
 jmp xchain00030_n86_α
.Lx00044_0:
 mov rdi, qword ptr [r12 + 3104]
 mov rsi, qword ptr [r12 + 3112]
 mov rdx, qword ptr [r12 + 2992]
 mov rcx, qword ptr [r12 + 3000]
 mov r8d, 7
 lea r9, [r12 + 1920]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00044_1
 cmp eax, 1
 je xchain00030_n71_α
 jmp xchain00030_n86_α
.Lx00044_2:
 mov rdi, qword ptr [r12 + 3104]
 mov rsi, qword ptr [r12 + 3112]
 mov rdx, qword ptr [r12 + 2992]
 mov rcx, qword ptr [r12 + 3000]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00030_n71_α
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 1920], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 1928], rax
 jmp xchain00030_n86_α
 xchain00030_n77_β:
 jmp xchain00030_n71_α
# IR_VAR
 xchain00030_n78_α:
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 1896], rax
 jmp xchain00030_n87_α
 xchain00030_n78_β:
 jmp xchain00030_n51_β
# IR_VAR
 xchain00030_n79_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1736], rax
 jmp xchain00030_n88_α
 xchain00030_n79_β:
 jmp xchain00030_n80_α
# IR_VAR
 xchain00030_n80_α:
 mov rax, qword ptr [r12 + 3056]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 3064]
 mov qword ptr [r12 + 1656], rax
 jmp xchain00030_n89_α
 xchain00030_n80_β:
 jmp xchain00030_n56_β
 xchain00030_n81_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3008]
 cmp eax, 100
 je .Lx00045_0
 mov eax, dword ptr [r12 + 1408]
 cmp eax, 100
 je .Lx00045_0
 mov eax, dword ptr [r12 + 3008]
 cmp eax, 6
 jne .Lx00045_2
 mov eax, dword ptr [r12 + 1408]
 cmp eax, 6
 jne .Lx00045_2
.Lx00045_1:
 mov rax, qword ptr [r12 + 3016]
 mov rcx, qword ptr [r12 + 1416]
 cmp rax, rcx
 jge xchain00030_n63_α
 mov rcx, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1376], rcx
 mov rcx, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1384], rcx
 jmp xchain00030_n90_α
.Lx00045_0:
 mov rdi, qword ptr [r12 + 3008]
 mov rsi, qword ptr [r12 + 3016]
 mov rdx, qword ptr [r12 + 1408]
 mov rcx, qword ptr [r12 + 1416]
 mov r8d, 5
 lea r9, [r12 + 1376]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00045_1
 cmp eax, 1
 je xchain00030_n63_α
 jmp xchain00030_n90_α
.Lx00045_2:
 mov rdi, qword ptr [r12 + 3008]
 mov rsi, qword ptr [r12 + 3016]
 mov rdx, qword ptr [r12 + 1408]
 mov rcx, qword ptr [r12 + 1416]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00030_n63_α
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1384], rax
 jmp xchain00030_n90_α
 xchain00030_n81_β:
 jmp xchain00030_n63_α
 xchain00030_n82_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 100
 je .Lx00046_0
 mov eax, dword ptr [r12 + 3072]
 cmp eax, 100
 je .Lx00046_0
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 6
 jne .Lx00046_2
 mov eax, dword ptr [r12 + 3072]
 cmp eax, 6
 jne .Lx00046_2
.Lx00046_1:
 mov rax, qword ptr [r12 + 2984]
 mov rcx, qword ptr [r12 + 3080]
 sub rax, rcx
 mov qword ptr [r12 + 1312], 6
 mov qword ptr [r12 + 1320], rax
 jmp xchain00030_n91_α
.Lx00046_0:
 mov rdi, qword ptr [r12 + 2976]
 mov rsi, qword ptr [r12 + 2984]
 mov rdx, qword ptr [r12 + 3072]
 mov rcx, qword ptr [r12 + 3080]
 mov r8d, 1
 lea r9, [r12 + 1312]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00046_3
.Lx00046_2:
 mov rdi, qword ptr [r12 + 2976]
 mov rsi, qword ptr [r12 + 2984]
 mov rdx, qword ptr [r12 + 3072]
 mov rcx, qword ptr [r12 + 3080]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00030_n69_α
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
.Lx00046_3:
 jmp xchain00030_n91_α
 xchain00030_n82_β:
 jmp xchain00030_n69_α
# IR_VAR
 xchain00030_n83_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1256], rax
 jmp xchain00030_n92_α
 xchain00030_n83_β:
 jmp xchain00030_n76_α
# IR_LIT_INTEGER
 xchain00030_n84_α:
 mov qword ptr [r12 + 1152], 6
 mov rax, qword ptr [rip + .Lx00047_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain00030_n93_α
 xchain00030_n84_β:
 jmp xchain00030_n85_α
.Lx00047_0:
 .quad 9999
# IR_VAR
 xchain00030_n85_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 856], rax
 jmp xchain00030_n94_α
 xchain00030_n85_β:
 jmp xchain00030_n95_α
 xchain00030_n86_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1920]
 mov rdx, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 3104], rax
 mov qword ptr [r12 + 3112], rdx
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain00030_n71_α
 xchain00030_n86_β:
 jmp xchain00030_n71_α
 xchain00030_n87_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3088]
 cmp eax, 100
 je .Lx00048_0
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 100
 je .Lx00048_0
 mov eax, dword ptr [r12 + 3088]
 cmp eax, 6
 jne .Lx00048_2
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 6
 jne .Lx00048_2
.Lx00048_1:
 mov rax, qword ptr [r12 + 3096]
 mov rcx, qword ptr [r12 + 3000]
 cmp rax, rcx
 jge xchain00030_n51_β
 mov rcx, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 1856], rcx
 mov rcx, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 1864], rcx
 jmp xchain00030_n96_α
.Lx00048_0:
 mov rdi, qword ptr [r12 + 3088]
 mov rsi, qword ptr [r12 + 3096]
 mov rdx, qword ptr [r12 + 2992]
 mov rcx, qword ptr [r12 + 3000]
 mov r8d, 5
 lea r9, [r12 + 1856]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00048_1
 cmp eax, 1
 je xchain00030_n51_β
 jmp xchain00030_n96_α
.Lx00048_2:
 mov rdi, qword ptr [r12 + 3088]
 mov rsi, qword ptr [r12 + 3096]
 mov rdx, qword ptr [r12 + 2992]
 mov rcx, qword ptr [r12 + 3000]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00030_n51_β
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 1864], rax
 jmp xchain00030_n96_α
 xchain00030_n87_β:
 jmp xchain00030_n51_β
 xchain00030_n88_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3072]
 cmp eax, 100
 je .Lx00049_0
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 100
 je .Lx00049_0
 mov eax, dword ptr [r12 + 3072]
 cmp eax, 6
 jne .Lx00049_2
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 6
 jne .Lx00049_2
.Lx00049_1:
 mov rax, qword ptr [r12 + 3080]
 mov rcx, qword ptr [r12 + 2984]
 cmp rax, rcx
 jle xchain00030_n80_α
 mov rcx, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1696], rcx
 mov rcx, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1704], rcx
 jmp xchain00030_n97_α
.Lx00049_0:
 mov rdi, qword ptr [r12 + 3072]
 mov rsi, qword ptr [r12 + 3080]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 7
 lea r9, [r12 + 1696]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00049_1
 cmp eax, 1
 je xchain00030_n80_α
 jmp xchain00030_n97_α
.Lx00049_2:
 mov rdi, qword ptr [r12 + 3072]
 mov rsi, qword ptr [r12 + 3080]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00030_n80_α
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1704], rax
 jmp xchain00030_n97_α
 xchain00030_n88_β:
 jmp xchain00030_n80_α
# IR_VAR
 xchain00030_n89_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00030_n98_α
 xchain00030_n89_β:
 jmp xchain00030_n56_β
 xchain00030_n90_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1376]
 mov rdx, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain00030_n63_α
 xchain00030_n90_β:
 jmp xchain00030_n63_α
 xchain00030_n91_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3008]
 cmp eax, 100
 je .Lx00050_0
 mov eax, dword ptr [r12 + 1312]
 cmp eax, 100
 je .Lx00050_0
 mov eax, dword ptr [r12 + 3008]
 cmp eax, 6
 jne .Lx00050_2
 mov eax, dword ptr [r12 + 1312]
 cmp eax, 6
 jne .Lx00050_2
.Lx00050_1:
 mov rax, qword ptr [r12 + 3016]
 mov rcx, qword ptr [r12 + 1320]
 cmp rax, rcx
 jge xchain00030_n69_α
 mov rcx, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rcx
 mov rcx, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rcx
 jmp xchain00030_n99_α
.Lx00050_0:
 mov rdi, qword ptr [r12 + 3008]
 mov rsi, qword ptr [r12 + 3016]
 mov rdx, qword ptr [r12 + 1312]
 mov rcx, qword ptr [r12 + 1320]
 mov r8d, 5
 lea r9, [r12 + 1280]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00050_1
 cmp eax, 1
 je xchain00030_n69_α
 jmp xchain00030_n99_α
.Lx00050_2:
 mov rdi, qword ptr [r12 + 3008]
 mov rsi, qword ptr [r12 + 3016]
 mov rdx, qword ptr [r12 + 1312]
 mov rcx, qword ptr [r12 + 1320]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00030_n69_α
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rax
 jmp xchain00030_n99_α
 xchain00030_n91_β:
 jmp xchain00030_n69_α
 xchain00030_n92_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 3056]
 cmp eax, 100
 je .Lx00051_0
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 100
 je .Lx00051_0
 mov eax, dword ptr [r12 + 3056]
 cmp eax, 6
 jne .Lx00051_2
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 6
 jne .Lx00051_2
.Lx00051_1:
 mov rax, qword ptr [r12 + 3064]
 mov rcx, qword ptr [r12 + 2984]
 sub rax, rcx
 mov qword ptr [r12 + 1216], 6
 mov qword ptr [r12 + 1224], rax
 jmp xchain00030_n00052_α
.Lx00051_0:
 mov rdi, qword ptr [r12 + 3056]
 mov rsi, qword ptr [r12 + 3064]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 1
 lea r9, [r12 + 1216]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00051_3
.Lx00051_2:
 mov rdi, qword ptr [r12 + 3056]
 mov rsi, qword ptr [r12 + 3064]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00030_n76_α
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
.Lx00051_3:
 jmp xchain00030_n00052_α
 xchain00030_n92_β:
 jmp xchain00030_n76_α
 xchain00030_n93_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3008]
 cmp eax, 100
 je .Lx00053_0
 mov eax, dword ptr [r12 + 1152]
 cmp eax, 100
 je .Lx00053_0
 mov eax, dword ptr [r12 + 3008]
 cmp eax, 6
 jne .Lx00053_2
 mov eax, dword ptr [r12 + 1152]
 cmp eax, 6
 jne .Lx00053_2
.Lx00053_1:
 mov rax, qword ptr [r12 + 3016]
 mov rcx, qword ptr [r12 + 1160]
 cmp rax, rcx
 jle xchain00030_n85_α
 mov rcx, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rcx
 mov rcx, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rcx
 jmp xchain00030_n00001_α
.Lx00053_0:
 mov rdi, qword ptr [r12 + 3008]
 mov rsi, qword ptr [r12 + 3016]
 mov rdx, qword ptr [r12 + 1152]
 mov rcx, qword ptr [r12 + 1160]
 mov r8d, 7
 lea r9, [r12 + 1120]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00053_1
 cmp eax, 1
 je xchain00030_n85_α
 jmp xchain00030_n00001_α
.Lx00053_2:
 mov rdi, qword ptr [r12 + 3008]
 mov rsi, qword ptr [r12 + 3016]
 mov rdx, qword ptr [r12 + 1152]
 mov rcx, qword ptr [r12 + 1160]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00030_n85_α
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00030_n00001_α
 xchain00030_n93_β:
 jmp xchain00030_n85_α
# IR_VAR
 xchain00030_n94_α:
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 920], rax
 jmp xchain00030_n00054_α
 xchain00030_n94_β:
 jmp xchain00030_n95_α
# IR_VAR
 xchain00030_n95_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00030_n00055_α
 xchain00030_n95_β:
 jmp xchain00030_n00056_α
 xchain00030_n96_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1856]
 mov rdx, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 3088], rax
 mov qword ptr [r12 + 3096], rdx
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 jmp xchain00030_n00057_α
 xchain00030_n96_β:
 jmp xchain00030_n51_β
 xchain00030_n97_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1696]
 mov rdx, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 3072], rax
 mov qword ptr [r12 + 3080], rdx
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain00030_n80_α
 xchain00030_n97_β:
 jmp xchain00030_n80_α
 xchain00030_n98_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3056]
 cmp eax, 100
 je .Lx00058_0
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 100
 je .Lx00058_0
 mov eax, dword ptr [r12 + 3056]
 cmp eax, 6
 jne .Lx00058_2
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 6
 jne .Lx00058_2
.Lx00058_1:
 mov rax, qword ptr [r12 + 3064]
 mov rcx, qword ptr [r12 + 2984]
 cmp rax, rcx
 jge xchain00030_n56_β
 mov rcx, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1632], rcx
 mov rcx, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1640], rcx
 jmp xchain00030_n00059_α
.Lx00058_0:
 mov rdi, qword ptr [r12 + 3056]
 mov rsi, qword ptr [r12 + 3064]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 5
 lea r9, [r12 + 1632]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00058_1
 cmp eax, 1
 je xchain00030_n56_β
 jmp xchain00030_n00059_α
.Lx00058_2:
 mov rdi, qword ptr [r12 + 3056]
 mov rsi, qword ptr [r12 + 3064]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00030_n56_β
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 1640], rax
 jmp xchain00030_n00059_α
 xchain00030_n98_β:
 jmp xchain00030_n56_β
 xchain00030_n99_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1280]
 mov rdx, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain00030_n69_α
 xchain00030_n99_β:
 jmp xchain00030_n69_α
 xchain00030_n00052_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3008]
 cmp eax, 100
 je .Lx00060_0
 mov eax, dword ptr [r12 + 1216]
 cmp eax, 100
 je .Lx00060_0
 mov eax, dword ptr [r12 + 3008]
 cmp eax, 6
 jne .Lx00060_2
 mov eax, dword ptr [r12 + 1216]
 cmp eax, 6
 jne .Lx00060_2
.Lx00060_1:
 mov rax, qword ptr [r12 + 3016]
 mov rcx, qword ptr [r12 + 1224]
 cmp rax, rcx
 jge xchain00030_n76_α
 mov rcx, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1184], rcx
 mov rcx, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1192], rcx
 jmp xchain00030_n00061_α
.Lx00060_0:
 mov rdi, qword ptr [r12 + 3008]
 mov rsi, qword ptr [r12 + 3016]
 mov rdx, qword ptr [r12 + 1216]
 mov rcx, qword ptr [r12 + 1224]
 mov r8d, 5
 lea r9, [r12 + 1184]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00060_1
 cmp eax, 1
 je xchain00030_n76_α
 jmp xchain00030_n00061_α
.Lx00060_2:
 mov rdi, qword ptr [r12 + 3008]
 mov rsi, qword ptr [r12 + 3016]
 mov rdx, qword ptr [r12 + 1216]
 mov rcx, qword ptr [r12 + 1224]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00030_n76_α
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1192], rax
 jmp xchain00030_n00061_α
 xchain00030_n00052_β:
 jmp xchain00030_n76_α
 xchain00030_n00001_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain00030_n85_α
 xchain00030_n00001_β:
 jmp xchain00030_n85_α
# IR_LIT_INTEGER
 xchain00030_n00054_α:
 mov qword ptr [r12 + 928], 6
 mov rax, qword ptr [rip + .Lx00062_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain00030_n00002_α
 xchain00030_n00054_β:
 jmp xchain00030_n95_α
.Lx00062_0:
 .quad 4
 xchain00030_n00055_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+288]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn411: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn411]
 lea rsi, [r12 + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain00030_n00056_α
 jmp xchain00030_n00063_α
 xchain00030_n00055_β:
 jmp xchain00030_n00056_α
# IR_VAR
 xchain00030_n00056_α:
 mov rax, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 184], rax
 jmp xchain00030_n00064_α
 xchain00030_n00056_β:
 jmp xchain00030_n00065_α
 xchain00030_n00057_α:
 jmp xchain00030_n51_β
xchain00030_n00057_β:
 jmp xchain00030_n51_β
 xchain00030_n00059_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1632]
 mov rdx, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xchain00030_n00066_α
 xchain00030_n00059_β:
 jmp xchain00030_n56_β
 xchain00030_n00061_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1184]
 mov rdx, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain00030_n76_α
 xchain00030_n00061_β:
 jmp xchain00030_n76_α
 xchain00030_n00002_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+880]
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 888], rax
# marshal arg1 = producer-box slot [zr+928] -> [zr+896]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 904], rax
  .section .rodata
  .Lrkfn418: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn418]
 lea rsi, [r12 + 880]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain00030_n95_α
 jmp xchain00030_n00067_α
 xchain00030_n00002_β:
 jmp xchain00030_n95_α
 xchain00030_n00063_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 2992], rax
 mov qword ptr [r12 + 3000], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00030_n00003_α
 xchain00030_n00063_β:
 jmp xchain00030_n00056_α
# IR_UNOP
 xchain00030_n00064_α:
 mov eax, dword ptr [r12 + 2960]
 cmp eax, 99
 je xchain00030_n00065_α
 cmp eax, 0
 jne xchain00030_n00065_α
 mov qword ptr [r12 + 160], 0
 mov qword ptr [r12 + 168], 0
 jmp xchain00030_n00068_α
 xchain00030_n00064_β:
 jmp xchain00030_n00065_α
 xchain00030_n00065_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn422: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn422]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00030_n00069_α
 jmp xchain00030_n00069_α
 xchain00030_n00065_β:
 jmp xchain00030_n00069_α
 xchain00030_n00066_α:
 jmp xchain00030_n56_β
xchain00030_n00066_β:
 jmp xchain00030_n56_β
# IR_VAR
 xchain00030_n00067_α:
 mov rax, qword ptr [r12 + 3024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 3032]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00030_n00070_α
 xchain00030_n00067_β:
 jmp xchain00030_n95_α
# IR_VAR
 xchain00030_n00003_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00030_n00071_α
 xchain00030_n00003_β:
 jmp xchain00030_n00056_α
# IR_LIT_STRING
 xchain00030_n00068_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00072_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00030_n00073_α
 xchain00030_n00068_β:
 jmp xchain00030_n00065_α
.Lx00072_0:
 .quad .Lx00072_0_s
.Lx00072_0_s:
 .string "50005000"
# IR_RETURN
 xchain00030_n00069_α:
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_putchain_γ
# IR_LIT_INTEGER
 xchain00030_n00070_α:
 mov qword ptr [r12 + 1008], 6
 mov rax, qword ptr [rip + .Lx00074_0]
 mov qword ptr [r12 + 1016], rax
 jmp xchain00030_n00075_α
 xchain00030_n00070_β:
 jmp xchain00030_n95_α
.Lx00074_0:
 .quad 7
 xchain00030_n00071_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+224]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn431: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn431]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain00030_n00056_α
 jmp xchain00030_n00012_α
 xchain00030_n00071_β:
 jmp xchain00030_n00056_α
 xchain00030_n00073_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn433: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn433]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00030_n00065_α
 jmp xchain00030_n00076_α
 xchain00030_n00073_β:
 jmp xchain00030_n00065_α
 xchain00030_n00075_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+992] -> [zr+960]
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 968], rax
# marshal arg1 = producer-box slot [zr+1008] -> [zr+976]
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 984], rax
  .section .rodata
  .Lrkfn435: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn435]
 lea rsi, [r12 + 960]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je xchain00030_n95_α
 jmp xchain00030_n00077_α
 xchain00030_n00075_β:
 jmp xchain00030_n95_α
 xchain00030_n00012_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00030_n00078_α
 xchain00030_n00012_β:
 jmp xchain00030_n00056_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00030_n00076_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
 lea rax, [rip + xchain00030_n00065_α]
 mov qword ptr [r12 + 96], rax
 jmp xchain00030_n00065_α
 xchain00030_n00076_β:
 jmp xchain00030_n00065_α
# IR_VAR
 xchain00030_n00077_α:
 mov rax, qword ptr [r12 + 3040]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 3048]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00030_n00079_α
 xchain00030_n00077_β:
 jmp xchain00030_n95_α
 xchain00030_n00078_α:
 jmp xchain00030_n00080_α
xchain00030_n00078_β:
 jmp xchain00030_n00056_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00030_n00004_α:
 jmp qword ptr [r12 + 96]
 xchain00030_n00004_β:
 jmp xchain00030_n00065_α
# IR_LIT_INTEGER
 xchain00030_n00079_α:
 mov qword ptr [r12 + 1088], 6
 mov rax, qword ptr [rip + .Lx00081_0]
 mov qword ptr [r12 + 1096], rax
 jmp xchain00030_n00082_α
 xchain00030_n00079_β:
 jmp xchain00030_n95_α
.Lx00081_0:
 .quad 7
# IR_VAR
 xchain00030_n00080_α:
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 744], rax
 jmp xchain00030_n00083_α
 xchain00030_n00080_β:
 jmp xchain00030_n00084_α
 xchain00030_n00082_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1040]
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1048], rax
# marshal arg1 = producer-box slot [zr+1088] -> [zr+1056]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1064], rax
  .section .rodata
  .Lrkfn448: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn448]
 lea rsi, [r12 + 1040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 cmp eax, 99
 je xchain00030_n95_α
 jmp xchain00030_n00085_α
 xchain00030_n00082_β:
 jmp xchain00030_n95_α
# IR_LIT_INTEGER
 xchain00030_n00083_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx00086_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain00030_n00005_α
 xchain00030_n00083_β:
 jmp xchain00030_n00084_α
.Lx00086_0:
 .quad 0
# IR_VAR
 xchain00030_n00084_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 696], rax
 jmp xchain00030_n00087_α
 xchain00030_n00084_β:
 jmp xchain00030_n95_α
 xchain00030_n00085_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+784]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 792], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+800]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 808], rax
# marshal arg2 = producer-box slot [zr+944] -> [zr+816]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 824], rax
# marshal arg3 = producer-box slot [zr+1024] -> [zr+832]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn453: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn453]
 lea rsi, [r12 + 784]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain00030_n95_α
 jmp xchain00030_n95_α
 xchain00030_n00085_β:
 jmp xchain00030_n95_α
 xchain00030_n00005_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 100
 je .Lx00088_0
 mov eax, dword ptr [r12 + 752]
 cmp eax, 100
 je .Lx00088_0
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 6
 jne .Lx00088_2
 mov eax, dword ptr [r12 + 752]
 cmp eax, 6
 jne .Lx00088_2
.Lx00088_1:
 mov rax, qword ptr [r12 + 3000]
 mov rcx, qword ptr [r12 + 760]
 cmp rax, rcx
 je xchain00030_n00084_α
 mov rcx, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rcx
 mov rcx, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rcx
 jmp xchain00030_n00089_α
.Lx00088_0:
 mov rdi, qword ptr [r12 + 2992]
 mov rsi, qword ptr [r12 + 3000]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 mov r8d, 10
 lea r9, [r12 + 720]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00088_1
 cmp eax, 1
 je xchain00030_n00084_α
 jmp xchain00030_n00089_α
.Lx00088_2:
 mov rdi, qword ptr [r12 + 2992]
 mov rsi, qword ptr [r12 + 3000]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00030_n00084_α
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
 jmp xchain00030_n00089_α
 xchain00030_n00005_β:
 jmp xchain00030_n00084_α
# IR_LIT_INTEGER
 xchain00030_n00087_α:
 mov qword ptr [r12 + 704], 6
 mov rax, qword ptr [rip + .Lx00090_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00030_n00091_α
 xchain00030_n00087_β:
 jmp xchain00030_n95_α
.Lx00090_0:
 .quad 0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00030_n00089_α:
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 648], rax
 lea rax, [rip + xchain00030_n00084_α]
 mov qword ptr [r12 + 656], rax
 jmp xchain00030_n00092_α
 xchain00030_n00089_β:
 jmp xchain00030_n95_α
 xchain00030_n00091_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 100
 je .Lx00093_0
 mov eax, dword ptr [r12 + 704]
 cmp eax, 100
 je .Lx00093_0
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 6
 jne .Lx00093_2
 mov eax, dword ptr [r12 + 704]
 cmp eax, 6
 jne .Lx00093_2
.Lx00093_1:
 mov rax, qword ptr [r12 + 2984]
 mov rcx, qword ptr [r12 + 712]
 cmp rax, rcx
 je xchain00030_n95_α
 mov rcx, qword ptr [r12 + 704]
 mov qword ptr [r12 + 672], rcx
 mov rcx, qword ptr [r12 + 712]
 mov qword ptr [r12 + 680], rcx
 jmp xchain00030_n00094_α
.Lx00093_0:
 mov rdi, qword ptr [r12 + 2976]
 mov rsi, qword ptr [r12 + 2984]
 mov rdx, qword ptr [r12 + 704]
 mov rcx, qword ptr [r12 + 712]
 mov r8d, 10
 lea r9, [r12 + 672]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00093_1
 cmp eax, 1
 je xchain00030_n95_α
 jmp xchain00030_n00094_α
.Lx00093_2:
 mov rdi, qword ptr [r12 + 2976]
 mov rsi, qword ptr [r12 + 2984]
 mov rdx, qword ptr [r12 + 704]
 mov rcx, qword ptr [r12 + 712]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00030_n95_α
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 680], rax
 jmp xchain00030_n00094_α
 xchain00030_n00091_β:
 jmp xchain00030_n95_α
# IR_LIT_INTEGER
 xchain00030_n00092_α:
 mov qword ptr [r12 + 480], 6
 mov rax, qword ptr [rip + .Lx00095_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain00030_n00096_α
 xchain00030_n00092_β:
 jmp xchain00030_n95_α
.Lx00095_0:
 .quad 5000
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00030_n00097_α:
 jmp qword ptr [r12 + 656]
 xchain00030_n00097_β:
 jmp xchain00030_n95_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00030_n00094_α:
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
 lea rax, [rip + xchain00030_n95_α]
 mov qword ptr [r12 + 656], rax
 jmp xchain00030_n00092_α
 xchain00030_n00094_β:
 jmp xchain00030_n95_α
# IR_VAR
 xchain00030_n00096_α:
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 504], rax
 jmp xchain00030_n00098_α
 xchain00030_n00096_β:
 jmp xchain00030_n95_α
 xchain00030_n00098_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 480]
 cmp eax, 100
 je .Lx00099_0
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 100
 je .Lx00099_0
 mov eax, dword ptr [r12 + 480]
 cmp eax, 6
 jne .Lx00099_2
 mov eax, dword ptr [r12 + 2992]
 cmp eax, 6
 jne .Lx00099_2
.Lx00099_1:
 mov rax, qword ptr [r12 + 488]
 mov rcx, qword ptr [r12 + 3000]
 add rax, rcx
 mov qword ptr [r12 + 464], 6
 mov qword ptr [r12 + 472], rax
 jmp xchain00030_n00100_α
.Lx00099_0:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 2992]
 mov rcx, qword ptr [r12 + 3000]
 mov r8d, 0
 lea r9, [r12 + 464]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00099_3
.Lx00099_2:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 2992]
 mov rcx, qword ptr [r12 + 3000]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00030_n95_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
.Lx00099_3:
 jmp xchain00030_n00100_α
 xchain00030_n00098_β:
 jmp xchain00030_n95_α
# IR_LIT_INTEGER
 xchain00030_n00100_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00101_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00030_n00015_α
 xchain00030_n00100_β:
 jmp xchain00030_n95_α
.Lx00101_0:
 .quad 4
 xchain00030_n00015_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+448]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn469: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn469]
 lea rsi, [r12 + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain00030_n95_α
 jmp xchain00030_n00102_α
 xchain00030_n00015_β:
 jmp xchain00030_n95_α
# IR_LIT_INTEGER
 xchain00030_n00102_α:
 mov qword ptr [r12 + 592], 6
 mov rax, qword ptr [rip + .Lx00103_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00030_n00104_α
 xchain00030_n00102_β:
 jmp xchain00030_n95_α
.Lx00103_0:
 .quad 5000
# IR_VAR
 xchain00030_n00104_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 616], rax
 jmp xchain00030_n00105_α
 xchain00030_n00104_β:
 jmp xchain00030_n95_α
 xchain00030_n00105_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 592]
 cmp eax, 100
 je .Lx00106_0
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 100
 je .Lx00106_0
 mov eax, dword ptr [r12 + 592]
 cmp eax, 6
 jne .Lx00106_2
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 6
 jne .Lx00106_2
.Lx00106_1:
 mov rax, qword ptr [r12 + 600]
 mov rcx, qword ptr [r12 + 2984]
 add rax, rcx
 mov qword ptr [r12 + 576], 6
 mov qword ptr [r12 + 584], rax
 jmp xchain00030_n00107_α
.Lx00106_0:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 0
 lea r9, [r12 + 576]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00106_3
.Lx00106_2:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00030_n95_α
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
.Lx00106_3:
 jmp xchain00030_n00107_α
 xchain00030_n00105_β:
 jmp xchain00030_n95_α
# IR_LIT_INTEGER
 xchain00030_n00107_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx00108_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain00030_n00109_α
 xchain00030_n00107_β:
 jmp xchain00030_n95_α
.Lx00108_0:
 .quad 4
 xchain00030_n00109_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+544]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+560]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn476: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn476]
 lea rsi, [r12 + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain00030_n95_α
 jmp xchain00030_n00006_α
 xchain00030_n00109_β:
 jmp xchain00030_n95_α
 xchain00030_n00006_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+384]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+400]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn478: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn478]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain00030_n95_α
 jmp xchain00030_n00017_α
 xchain00030_n00006_β:
 jmp xchain00030_n95_α
 xchain00030_n00017_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 2960], rax
 mov qword ptr [r12 + 2968], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00030_n00110_α
 xchain00030_n00017_β:
 jmp xchain00030_n95_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00030_n00110_α:
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
 lea rax, [rip + xchain00030_n95_α]
 mov qword ptr [r12 + 336], rax
 jmp xchain00030_n95_α
 xchain00030_n00110_β:
 jmp xchain00030_n95_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00030_n00111_α:
 jmp qword ptr [r12 + 336]
 xchain00030_n00111_β:
 jmp xchain00030_n95_α
proc_putchain_β:
jmp proc_putchain_ω
proc_putchain_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 1344], rax
 pop rsi
proc_putdel_α_body:
# IR_VAR
 xchain00112_n0_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain00112_n1_α
 xchain00112_n0_β:
 jmp xchain00112_n2_α
# IR_VAR
 xchain00112_n1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1336], rax
 jmp xchain00112_n3_α
 xchain00112_n1_β:
 jmp xchain00112_n2_α
# IR_KEYWORD_read
 xchain00112_n2_α:
 mov rdi, qword ptr [rip + .Lx00113_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain00112_n4_α
 xchain00112_n2_β:
 jmp xchain00112_n7_α
.Lx00113_0:
 .quad .Lx00113_0_s
.Lx00113_0_s:
 .string "&progname"
 xchain00112_n3_α:
# BOX IR_CALL seek(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1312] -> [zr+1280]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rax
# marshal arg1 = producer-box slot [zr+1328] -> [zr+1296]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1304], rax
  .section .rodata
  .Lrkfn490: .string "seek"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn490]
 lea rsi, [r12 + 1280]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 cmp eax, 99
 je xchain00112_n2_α
 jmp xchain00112_n5_α
 xchain00112_n3_β:
 jmp xchain00112_n2_α
# IR_LIT_STRING
 xchain00112_n4_α:
 mov qword ptr [r12 + 1248], 1
 mov rax, qword ptr [rip + .Lx00114_0]
 mov qword ptr [r12 + 1256], rax
 jmp xchain00112_n6_α
 xchain00112_n4_β:
 jmp xchain00112_n7_α
.Lx00114_0:
 .quad .Lx00114_0_s
.Lx00114_0_s:
 .string ":can't reposition input file"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00112_n5_α:
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1144], rax
 lea rax, [rip + xchain00112_n2_α]
 mov qword ptr [r12 + 1152], rax
 jmp xchain00112_n7_α
 xchain00112_n5_β:
 jmp xchain00112_n7_α
 xchain00112_n6_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1184]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1192], rax
# marshal arg1 = producer-box slot [zr+1248] -> [zr+1200]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1208], rax
  .section .rodata
  .Lrkfn495: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn495]
 lea rsi, [r12 + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain00112_n7_α
 jmp xchain00112_n9_α
 xchain00112_n6_β:
 jmp xchain00112_n7_α
# IR_VAR
 xchain00112_n7_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain00112_n10_α
 xchain00112_n7_β:
 jmp xchain00112_n11_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00112_n8_α:
 jmp qword ptr [r12 + 1152]
 xchain00112_n8_β:
 jmp xchain00112_n7_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00112_n9_α:
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1144], rax
 lea rax, [rip + xchain00112_n7_α]
 mov qword ptr [r12 + 1152], rax
 jmp xchain00112_n7_α
 xchain00112_n9_β:
 jmp xchain00112_n7_α
 xchain00112_n10_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1104]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1112], rax
  .section .rodata
  .Lrkfn502: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn502]
 lea rsi, [r12 + 1104]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je xchain00112_n11_α
 jmp xchain00112_n12_α
 xchain00112_n10_β:
 jmp xchain00112_n11_α
# IR_KEYWORD_read
 xchain00112_n11_α:
 mov rdi, qword ptr [rip + .Lx00115_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00112_n13_α
 xchain00112_n11_β:
 jmp xchain00112_n17_α
.Lx00115_0:
 .quad .Lx00115_0_s
.Lx00115_0_s:
 .string "&progname"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00112_n12_α:
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 968], rax
 lea rax, [rip + xchain00112_n11_α]
 mov qword ptr [r12 + 976], rax
 jmp xchain00112_n14_α
 xchain00112_n12_β:
 jmp xchain00112_n17_α
# IR_LIT_STRING
 xchain00112_n13_α:
 mov qword ptr [r12 + 1072], 1
 mov rax, qword ptr [rip + .Lx00116_0]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00112_n16_α
 xchain00112_n13_β:
 jmp xchain00112_n17_α
.Lx00116_0:
 .quad .Lx00116_0_s
.Lx00116_0_s:
 .string ": input file changed during processing"
 xchain00112_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 960]
 mov rdx, qword ptr [r12 + 968]
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain00112_n17_α
 xchain00112_n14_β:
 jmp xchain00112_n17_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00112_n15_α:
 jmp qword ptr [r12 + 976]
 xchain00112_n15_β:
 jmp xchain00112_n17_α
 xchain00112_n16_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+1008]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1016], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+1024]
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1032], rax
  .section .rodata
  .Lrkfn511: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn511]
 lea rsi, [r12 + 1008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain00112_n17_α
 jmp xchain00112_n18_α
 xchain00112_n16_β:
 jmp xchain00112_n17_α
# IR_VAR
 xchain00112_n17_α:
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 936], rax
 jmp xchain00112_n19_α
 xchain00112_n17_β:
 jmp xchain00112_n20_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00112_n18_α:
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 968], rax
 lea rax, [rip + xchain00112_n17_α]
 mov qword ptr [r12 + 976], rax
 jmp xchain00112_n14_α
 xchain00112_n18_β:
 jmp xchain00112_n17_α
 xchain00112_n19_α:
  .section .rodata
  .Lcall00117_pname: .string "crack"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 928]
 mov rdx, qword ptr [r12 + 936]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00117_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain00112_n20_α
 jmp xchain00112_n21_α
xchain00112_n19_β:
 jmp xchain00112_n20_α
# IR_VAR
 xchain00112_n20_α:
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 840], rax
 jmp xchain00112_n22_α
 xchain00112_n20_β:
 jmp xchain00112_n23_α
 xchain00112_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00112_n20_α
 xchain00112_n21_β:
 jmp xchain00112_n20_α
# IR_LIT_INTEGER
 xchain00112_n22_α:
 mov qword ptr [r12 + 848], 6
 mov rax, qword ptr [rip + .Lx00118_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain00112_n24_α
 xchain00112_n22_β:
 jmp xchain00112_n23_α
.Lx00118_0:
 .quad 23
# IR_VAR
 xchain00112_n23_α:
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 40], rax
 jmp xchain00112_n25_α
 xchain00112_n23_β:
 jmp proc_putdel_ω
# IR_LIT_INTEGER
 xchain00112_n24_α:
 mov qword ptr [r12 + 864], 6
 mov rax, qword ptr [rip + .Lx00119_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain00112_n26_α
 xchain00112_n24_β:
 jmp xchain00112_n23_α
.Lx00119_0:
 .quad 0
# IR_RETURN
 xchain00112_n25_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_putdel_γ
# IR_SUBSCRIPT section
 xchain00112_n26_α:
 mov rdi, qword ptr [r12 + 832]
 mov rsi, qword ptr [r12 + 840]
 mov rdx, qword ptr [r12 + 848]
 mov rcx, qword ptr [r12 + 856]
 mov r8, qword ptr [r12 + 864]
 mov r9, qword ptr [r12 + 872]
 call subscript_get2@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00112_n27_α
 xchain00112_n26_β:
 jmp xchain00112_n23_α
# IR_GEN_SCAN
 xchain00112_n27_α:
 mov rdi, qword ptr [r12 + 816]
 mov rsi, qword ptr [r12 + 824]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00112_n28_α
 xchain00112_n27_β:
 jmp xchain00112_n23_α
# IR_VAR
 xchain00112_n28_α:
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 808], rax
 jmp xchain00112_n29_α
 xchain00112_n28_β:
 jmp xchain00112_n30_α
# IR_FIELD_GET
 xchain00112_n29_α:
 mov rdi, qword ptr [rip + .Lx00120_0]
 mov rsi, qword ptr [r12 + 800]
 mov rdx, qword ptr [r12 + 808]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00112_n30_α
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00112_n31_α
 xchain00112_n29_β:
 jmp xchain00112_n30_α
.Lx00120_0:
 .quad .Lx00120_0_s
.Lx00120_0_s:
 .string "rev"
# IR_LIT_INTEGER
 xchain00112_n30_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx00121_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain00112_n32_α
 xchain00112_n30_β:
 jmp xchain00112_n34_α
.Lx00121_0:
 .quad 0
# IR_UNOP
 xchain00112_n31_α:
 mov eax, dword ptr [r12 + 784]
 cmp eax, 99
 je xchain00112_n30_α
 cmp eax, 0
 jne xchain00112_n30_α
 mov qword ptr [r12 + 768], 0
 mov qword ptr [r12 + 776], 0
 jmp xchain00112_n33_α
 xchain00112_n31_β:
 jmp xchain00112_n30_α
# IR_SCAN_TAB
 xchain00112_n32_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00122_0
 add rax, r15
 add rax, 1
.Lx00122_0:
 cmp rax, 1
 jl xchain00112_n34_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00112_n34_α
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
 jmp xchain00112_n34_α
 xchain00112_n32_β:
 mov r14, qword ptr [r12 + 736]
 jmp xchain00112_n34_α
# IR_VAR
 xchain00112_n33_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00112_n35_α
 xchain00112_n33_β:
 jmp xchain00112_n40_α
# IR_VAR
 xchain00112_n34_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00112_n37_α
 xchain00112_n34_β:
 jmp xchain00112_n42_α
# IR_LIT_INTEGER
 xchain00112_n35_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx00123_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00112_n39_α
 xchain00112_n35_β:
 jmp xchain00112_n40_α
.Lx00123_0:
 .quad 4
 xchain00112_n36_α:
 jmp xchain00112_n40_α
xchain00112_n36_β:
 jmp xchain00112_n40_α
# IR_LIT_INTEGER
 xchain00112_n37_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00124_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00112_n41_α
 xchain00112_n37_β:
 jmp xchain00112_n42_α
.Lx00124_0:
 .quad 5000
 xchain00112_n38_α:
 jmp xchain00112_n42_α
xchain00112_n38_β:
 jmp xchain00112_n42_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00112_n39_α:
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00112_n40_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00112_n40_α
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
 jmp xchain00112_n43_α
 xchain00112_n39_β:
 mov r14, qword ptr [r12 + 240]
 jmp xchain00112_n40_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00112_n40_α:
 lea rax, [rip + xchain00112_n33_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain00112_n44_α
 xchain00112_n40_β:
 jmp proc_putdel_ω
# IR_LIT_INTEGER
 xchain00112_n41_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx00125_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00112_n46_α
 xchain00112_n41_β:
 jmp xchain00112_n42_α
.Lx00125_0:
 .quad 18446744073709551612
 xchain00112_n42_α:
 jmp xchain00112_n47_α
xchain00112_n42_β:
 jmp proc_putdel_ω
# IR_LIT_INTEGER
 xchain00112_n43_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx00126_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00112_n48_α
 xchain00112_n43_β:
 jmp xchain00112_n40_α
.Lx00126_0:
 .quad 5000
# IR_GEN_SCAN
 xchain00112_n44_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain00112_n23_α
 xchain00112_n44_β:
 jmp xchain00112_n23_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00112_n45_α:
 jmp qword ptr [r12 + 128]
 xchain00112_n45_β:
 jmp proc_putdel_ω
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00112_n46_α:
 mov rax, -4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00112_n42_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00112_n42_α
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
 jmp xchain00112_n49_α
 xchain00112_n46_β:
 mov r14, qword ptr [r12 + 544]
 jmp xchain00112_n42_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00112_n47_α:
 lea rax, [rip + xchain00112_n34_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain00112_n44_α
 xchain00112_n47_β:
 jmp proc_putdel_ω
 xchain00112_n48_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 224]
 cmp eax, 100
 je .Lx00127_0
 mov eax, dword ptr [r12 + 272]
 cmp eax, 100
 je .Lx00127_0
 mov eax, dword ptr [r12 + 224]
 cmp eax, 6
 jne .Lx00127_2
 mov eax, dword ptr [r12 + 272]
 cmp eax, 6
 jne .Lx00127_2
.Lx00127_1:
 mov rax, qword ptr [r12 + 232]
 mov rcx, qword ptr [r12 + 280]
 sub rax, rcx
 mov qword ptr [r12 + 208], 6
 mov qword ptr [r12 + 216], rax
 jmp xchain00112_n50_α
.Lx00127_0:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 mov r8d, 1
 lea r9, [r12 + 208]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00127_3
.Lx00127_2:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00112_n40_α
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
.Lx00127_3:
 jmp xchain00112_n50_α
 xchain00112_n48_β:
 jmp xchain00112_n40_α
 xchain00112_n49_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 512]
 cmp eax, 100
 je .Lx00128_0
 mov eax, dword ptr [r12 + 528]
 cmp eax, 100
 je .Lx00128_0
 mov eax, dword ptr [r12 + 512]
 cmp eax, 6
 jne .Lx00128_2
 mov eax, dword ptr [r12 + 528]
 cmp eax, 6
 jne .Lx00128_2
.Lx00128_1:
 mov rax, qword ptr [r12 + 520]
 mov rcx, qword ptr [r12 + 536]
 sub rax, rcx
 mov qword ptr [r12 + 496], 6
 mov qword ptr [r12 + 504], rax
 jmp xchain00112_n51_α
.Lx00128_0:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 1
 lea r9, [r12 + 496]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00128_3
.Lx00128_2:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00112_n42_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
.Lx00128_3:
 jmp xchain00112_n51_α
 xchain00112_n49_β:
 jmp xchain00112_n42_α
 xchain00112_n50_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn559: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn559]
 lea rsi, [r12 + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00112_n40_α
 jmp xchain00112_n52_α
 xchain00112_n50_β:
 jmp xchain00112_n40_α
 xchain00112_n51_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+448]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 456], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+464]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn561: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn561]
 lea rsi, [r12 + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain00112_n42_α
 jmp xchain00112_n53_α
 xchain00112_n51_β:
 jmp xchain00112_n42_α
# IR_VAR
 xchain00112_n52_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00112_n54_α
 xchain00112_n52_β:
 jmp xchain00112_n33_α
# IR_VAR
 xchain00112_n53_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00112_n55_α
 xchain00112_n53_β:
 jmp xchain00112_n34_α
# IR_LIT_INTEGER
 xchain00112_n54_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00112_n56_α
 xchain00112_n54_β:
 jmp xchain00112_n33_α
.Lx00129_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00112_n55_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx00130_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00112_n57_α
 xchain00112_n55_β:
 jmp xchain00112_n34_α
.Lx00130_0:
 .quad 5000
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00112_n56_α:
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00112_n33_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00112_n33_α
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
 jmp xchain00112_n58_α
 xchain00112_n56_β:
 mov r14, qword ptr [r12 + 384]
 jmp xchain00112_n33_α
# IR_LIT_INTEGER
 xchain00112_n57_α:
 mov qword ptr [r12 + 704], 6
 mov rax, qword ptr [rip + .Lx00131_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00112_n59_α
 xchain00112_n57_β:
 jmp xchain00112_n34_α
.Lx00131_0:
 .quad 18446744073709551612
# IR_LIT_INTEGER
 xchain00112_n58_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00132_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00112_n60_α
 xchain00112_n58_β:
 jmp xchain00112_n33_α
.Lx00132_0:
 .quad 5000
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00112_n59_α:
 mov rax, -4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00112_n34_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00112_n34_α
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
 jmp xchain00112_n61_α
 xchain00112_n59_β:
 mov r14, qword ptr [r12 + 688]
 jmp xchain00112_n34_α
 xchain00112_n60_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 368]
 cmp eax, 100
 je .Lx00133_0
 mov eax, dword ptr [r12 + 416]
 cmp eax, 100
 je .Lx00133_0
 mov eax, dword ptr [r12 + 368]
 cmp eax, 6
 jne .Lx00133_2
 mov eax, dword ptr [r12 + 416]
 cmp eax, 6
 jne .Lx00133_2
.Lx00133_1:
 mov rax, qword ptr [r12 + 376]
 mov rcx, qword ptr [r12 + 424]
 sub rax, rcx
 mov qword ptr [r12 + 352], 6
 mov qword ptr [r12 + 360], rax
 jmp xchain00112_n62_α
.Lx00133_0:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 1
 lea r9, [r12 + 352]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00133_3
.Lx00133_2:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00112_n33_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
.Lx00133_3:
 jmp xchain00112_n62_α
 xchain00112_n60_β:
 jmp xchain00112_n33_α
 xchain00112_n61_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 656]
 cmp eax, 100
 je .Lx00134_0
 mov eax, dword ptr [r12 + 672]
 cmp eax, 100
 je .Lx00134_0
 mov eax, dword ptr [r12 + 656]
 cmp eax, 6
 jne .Lx00134_2
 mov eax, dword ptr [r12 + 672]
 cmp eax, 6
 jne .Lx00134_2
.Lx00134_1:
 mov rax, qword ptr [r12 + 664]
 mov rcx, qword ptr [r12 + 680]
 sub rax, rcx
 mov qword ptr [r12 + 640], 6
 mov qword ptr [r12 + 648], rax
 jmp xchain00112_n63_α
.Lx00134_0:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 mov r8d, 1
 lea r9, [r12 + 640]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00134_3
.Lx00134_2:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00112_n34_α
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
.Lx00134_3:
 jmp xchain00112_n63_α
 xchain00112_n61_β:
 jmp xchain00112_n34_α
 xchain00112_n62_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn575: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn575]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00112_n33_α
 jmp xchain00112_n33_α
 xchain00112_n62_β:
 jmp xchain00112_n33_α
 xchain00112_n63_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn577: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn577]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain00112_n34_α
 jmp xchain00112_n34_α
 xchain00112_n63_β:
 jmp xchain00112_n34_α
proc_putdel_β:
jmp proc_putdel_ω
proc_putdel_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 2544], rax
 pop rsi
proc_collapse_α_body:
# IR_VAR
 xchain00135_n0_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 jmp xchain00135_n1_α
 xchain00135_n0_β:
 jmp xchain00135_n2_α
# IR_LIT_INTEGER
 xchain00135_n1_α:
 mov qword ptr [r12 + 2528], 6
 mov rax, qword ptr [rip + .Lx00136_0]
 mov qword ptr [r12 + 2536], rax
 jmp xchain00135_n3_α
 xchain00135_n1_β:
 jmp xchain00135_n2_α
.Lx00136_0:
 .quad 0
# IR_VAR
 xchain00135_n2_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 jmp xchain00135_n4_α
 xchain00135_n2_β:
 jmp xchain00135_n5_α
 xchain00135_n3_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2512]
 cmp eax, 100
 je .Lx00137_0
 mov eax, dword ptr [r12 + 2528]
 cmp eax, 100
 je .Lx00137_0
 mov eax, dword ptr [r12 + 2512]
 cmp eax, 6
 jne .Lx00137_2
 mov eax, dword ptr [r12 + 2528]
 cmp eax, 6
 jne .Lx00137_2
.Lx00137_1:
 mov rax, qword ptr [r12 + 2520]
 mov rcx, qword ptr [r12 + 2536]
 cmp rax, rcx
 jg xchain00135_n2_α
 mov rcx, qword ptr [r12 + 2528]
 mov qword ptr [r12 + 2496], rcx
 mov rcx, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 2504], rcx
 jmp xchain00135_n6_α
.Lx00137_0:
 mov rdi, qword ptr [r12 + 2512]
 mov rsi, qword ptr [r12 + 2520]
 mov rdx, qword ptr [r12 + 2528]
 mov rcx, qword ptr [r12 + 2536]
 mov r8d, 6
 lea r9, [r12 + 2496]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00137_1
 cmp eax, 1
 je xchain00135_n2_α
 jmp xchain00135_n6_α
.Lx00137_2:
 mov rdi, qword ptr [r12 + 2512]
 mov rsi, qword ptr [r12 + 2520]
 mov rdx, qword ptr [r12 + 2528]
 mov rcx, qword ptr [r12 + 2536]
 mov r8d, 6
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00135_n2_α
 mov rax, qword ptr [r12 + 2528]
 mov qword ptr [r12 + 2496], rax
 mov rax, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 2504], rax
 jmp xchain00135_n6_α
 xchain00135_n3_β:
 jmp xchain00135_n2_α
# IR_VAR
 xchain00135_n4_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 jmp xchain00135_n7_α
 xchain00135_n4_β:
 jmp xchain00135_n5_α
# IR_VAR
 xchain00135_n5_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 jmp xchain00135_n8_α
 xchain00135_n5_β:
 jmp xchain00135_n9_α
# IR_RETURN
 xchain00135_n6_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_collapse_γ
 xchain00135_n7_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2432]
 cmp eax, 100
 je .Lx00138_0
 mov eax, dword ptr [r12 + 2448]
 cmp eax, 100
 je .Lx00138_0
 mov eax, dword ptr [r12 + 2432]
 cmp eax, 6
 jne .Lx00138_2
 mov eax, dword ptr [r12 + 2448]
 cmp eax, 6
 jne .Lx00138_2
.Lx00138_1:
 mov rax, qword ptr [r12 + 2440]
 mov rcx, qword ptr [r12 + 2456]
 imul rax, rcx
 mov qword ptr [r12 + 2416], 6
 mov qword ptr [r12 + 2424], rax
 jmp xchain00135_n10_α
.Lx00138_0:
 mov rdi, qword ptr [r12 + 2432]
 mov rsi, qword ptr [r12 + 2440]
 mov rdx, qword ptr [r12 + 2448]
 mov rcx, qword ptr [r12 + 2456]
 mov r8d, 2
 lea r9, [r12 + 2416]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00138_3
.Lx00138_2:
 mov rdi, qword ptr [r12 + 2432]
 mov rsi, qword ptr [r12 + 2440]
 mov rdx, qword ptr [r12 + 2448]
 mov rcx, qword ptr [r12 + 2456]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00135_n5_α
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
.Lx00138_3:
 jmp xchain00135_n10_α
 xchain00135_n7_β:
 jmp xchain00135_n5_α
# IR_KEYWORD_read
 xchain00135_n8_α:
 mov rdi, qword ptr [rip + .Lx00139_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 jmp xchain00135_n11_α
 xchain00135_n8_β:
 jmp xchain00135_n9_α
.Lx00139_0:
 .quad .Lx00139_0_s
.Lx00139_0_s:
 .string "&pi"
# IR_VAR
 xchain00135_n9_α:
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 2240], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 2248], rax
 jmp xchain00135_n12_α
 xchain00135_n9_β:
 jmp xchain00135_n13_α
 xchain00135_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2416]
 mov rdx, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 jmp xchain00135_n5_α
 xchain00135_n10_β:
 jmp xchain00135_n5_α
 xchain00135_n11_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2336]
 cmp eax, 100
 je .Lx00140_0
 mov eax, dword ptr [r12 + 2352]
 cmp eax, 100
 je .Lx00140_0
 mov eax, dword ptr [r12 + 2336]
 cmp eax, 6
 jne .Lx00140_2
 mov eax, dword ptr [r12 + 2352]
 cmp eax, 6
 jne .Lx00140_2
.Lx00140_1:
 mov rax, qword ptr [r12 + 2344]
 mov rcx, qword ptr [r12 + 2360]
 imul rax, rcx
 mov qword ptr [r12 + 2320], 6
 mov qword ptr [r12 + 2328], rax
 jmp xchain00135_n14_α
.Lx00140_0:
 mov rdi, qword ptr [r12 + 2336]
 mov rsi, qword ptr [r12 + 2344]
 mov rdx, qword ptr [r12 + 2352]
 mov rcx, qword ptr [r12 + 2360]
 mov r8d, 2
 lea r9, [r12 + 2320]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00140_3
.Lx00140_2:
 mov rdi, qword ptr [r12 + 2336]
 mov rsi, qword ptr [r12 + 2344]
 mov rdx, qword ptr [r12 + 2352]
 mov rcx, qword ptr [r12 + 2360]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00135_n9_α
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
.Lx00140_3:
 jmp xchain00135_n14_α
 xchain00135_n11_β:
 jmp xchain00135_n9_α
# IR_KEYWORD_read
 xchain00135_n12_α:
 mov rdi, qword ptr [rip + .Lx00141_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 jmp xchain00135_n15_α
 xchain00135_n12_β:
 jmp xchain00135_n13_α
.Lx00141_0:
 .quad .Lx00141_0_s
.Lx00141_0_s:
 .string "&pi"
# IR_VAR
 xchain00135_n13_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 jmp xchain00135_n16_α
 xchain00135_n13_β:
 jmp xchain00135_n17_α
# IR_LIT_INTEGER
 xchain00135_n14_α:
 mov qword ptr [r12 + 2384], 6
 mov rax, qword ptr [rip + .Lx00142_0]
 mov qword ptr [r12 + 2392], rax
 jmp xchain00135_n18_α
 xchain00135_n14_β:
 jmp xchain00135_n9_α
.Lx00142_0:
 .quad 180
 xchain00135_n15_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2688]
 cmp eax, 100
 je .Lx00143_0
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 100
 je .Lx00143_0
 mov eax, dword ptr [r12 + 2688]
 cmp eax, 6
 jne .Lx00143_2
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 6
 jne .Lx00143_2
.Lx00143_1:
 mov rax, qword ptr [r12 + 2696]
 mov rcx, qword ptr [r12 + 2264]
 cmp rax, rcx
 jle xchain00135_n13_α
 mov rcx, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 2224], rcx
 mov rcx, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2232], rcx
 jmp xchain00135_n19_α
.Lx00143_0:
 mov rdi, qword ptr [r12 + 2688]
 mov rsi, qword ptr [r12 + 2696]
 mov rdx, qword ptr [r12 + 2256]
 mov rcx, qword ptr [r12 + 2264]
 mov r8d, 7
 lea r9, [r12 + 2224]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00143_1
 cmp eax, 1
 je xchain00135_n13_α
 jmp xchain00135_n19_α
.Lx00143_2:
 mov rdi, qword ptr [r12 + 2688]
 mov rsi, qword ptr [r12 + 2696]
 mov rdx, qword ptr [r12 + 2256]
 mov rcx, qword ptr [r12 + 2264]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00135_n13_α
 mov rax, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2232], rax
 jmp xchain00135_n19_α
 xchain00135_n15_β:
 jmp xchain00135_n13_α
# IR_VAR_REF
 xchain00135_n16_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain00135_n20_α
 xchain00135_n16_β:
 jmp xchain00135_n17_α
# IR_VAR_REF
 xchain00135_n17_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 jmp xchain00135_n21_α
 xchain00135_n17_β:
 jmp xchain00135_n27_α
 xchain00135_n18_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 100
 je .Lx00144_0
 mov eax, dword ptr [r12 + 2384]
 cmp eax, 100
 je .Lx00144_0
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 6
 jne .Lx00144_2
 mov eax, dword ptr [r12 + 2384]
 cmp eax, 6
 jne .Lx00144_2
.Lx00144_1:
 mov rax, qword ptr [r12 + 2328]
 mov rcx, qword ptr [r12 + 2392]
 cqo
 idiv rcx
 mov qword ptr [r12 + 2304], 6
 mov qword ptr [r12 + 2312], rax
 jmp xchain00135_n22_α
.Lx00144_0:
 mov rdi, qword ptr [r12 + 2320]
 mov rsi, qword ptr [r12 + 2328]
 mov rdx, qword ptr [r12 + 2384]
 mov rcx, qword ptr [r12 + 2392]
 mov r8d, 3
 lea r9, [r12 + 2304]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00144_3
.Lx00144_2:
 mov rdi, qword ptr [r12 + 2320]
 mov rsi, qword ptr [r12 + 2328]
 mov rdx, qword ptr [r12 + 2384]
 mov rcx, qword ptr [r12 + 2392]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00135_n9_α
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
.Lx00144_3:
 jmp xchain00135_n22_α
 xchain00135_n18_β:
 jmp xchain00135_n9_α
 xchain00135_n19_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2224]
 mov rdx, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 jmp xchain00135_n13_α
 xchain00135_n19_β:
 jmp xchain00135_n13_α
# IR_LIT_INTEGER
 xchain00135_n20_α:
 mov qword ptr [r12 + 2160], 6
 mov rax, qword ptr [rip + .Lx00145_0]
 mov qword ptr [r12 + 2168], rax
 jmp xchain00135_n23_α
 xchain00135_n20_β:
 jmp xchain00135_n17_α
.Lx00145_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00135_n21_α:
 mov qword ptr [r12 + 2048], 6
 mov rax, qword ptr [rip + .Lx00146_0]
 mov qword ptr [r12 + 2056], rax
 jmp xchain00135_n24_α
 xchain00135_n21_β:
 jmp xchain00135_n27_α
.Lx00146_0:
 .quad 1
 xchain00135_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2304]
 mov rdx, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain00135_n9_α
 xchain00135_n22_β:
 jmp xchain00135_n9_α
# IR_SUBSCRIPT x[i] variable
 xchain00135_n23_α:
 mov rdi, qword ptr [r12 + 2144]
 mov rsi, qword ptr [r12 + 2152]
 mov rdx, qword ptr [r12 + 2160]
 mov rcx, qword ptr [r12 + 2168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00135_n17_α
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain00135_n25_α
 xchain00135_n23_β:
 jmp xchain00135_n17_α
# IR_SUBSCRIPT x[i] variable
 xchain00135_n24_α:
 mov rdi, qword ptr [r12 + 2032]
 mov rsi, qword ptr [r12 + 2040]
 mov rdx, qword ptr [r12 + 2048]
 mov rcx, qword ptr [r12 + 2056]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00135_n27_α
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain00135_n26_α
 xchain00135_n24_β:
 jmp xchain00135_n27_α
# IR_DEREF variable -> value
 xchain00135_n25_α:
 mov rdi, qword ptr [r12 + 2176]
 mov rsi, qword ptr [r12 + 2184]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00135_n17_α
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain00135_n28_α
 xchain00135_n25_β:
 jmp xchain00135_n17_α
# IR_DEREF variable -> value
 xchain00135_n26_α:
 mov rdi, qword ptr [r12 + 2064]
 mov rsi, qword ptr [r12 + 2072]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00135_n27_α
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 jmp xchain00135_n29_α
 xchain00135_n26_β:
 jmp xchain00135_n27_α
# IR_VAR
 xchain00135_n27_α:
 mov rax, qword ptr [r12 + 2736]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 2744]
 mov qword ptr [r12 + 1992], rax
 jmp xchain00135_n30_α
 xchain00135_n27_β:
 jmp xchain00135_n31_α
 xchain00135_n28_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2128]
 cmp eax, 100
 je .Lx00147_0
 mov eax, dword ptr [r12 + 2192]
 cmp eax, 100
 je .Lx00147_0
 mov eax, dword ptr [r12 + 2128]
 cmp eax, 6
 jne .Lx00147_2
 mov eax, dword ptr [r12 + 2192]
 cmp eax, 6
 jne .Lx00147_2
.Lx00147_1:
 mov rax, qword ptr [r12 + 2136]
 mov rcx, qword ptr [r12 + 2200]
 imul rax, rcx
 mov qword ptr [r12 + 2112], 6
 mov qword ptr [r12 + 2120], rax
 jmp xchain00135_n32_α
.Lx00147_0:
 mov rdi, qword ptr [r12 + 2128]
 mov rsi, qword ptr [r12 + 2136]
 mov rdx, qword ptr [r12 + 2192]
 mov rcx, qword ptr [r12 + 2200]
 mov r8d, 2
 lea r9, [r12 + 2112]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00147_3
.Lx00147_2:
 mov rdi, qword ptr [r12 + 2128]
 mov rsi, qword ptr [r12 + 2136]
 mov rdx, qword ptr [r12 + 2192]
 mov rcx, qword ptr [r12 + 2200]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00135_n17_α
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
.Lx00147_3:
 jmp xchain00135_n32_α
 xchain00135_n28_β:
 jmp xchain00135_n17_α
 xchain00135_n29_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2080]
 mov rdx, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2736], rax
 mov qword ptr [r12 + 2744], rdx
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 jmp xchain00135_n27_α
 xchain00135_n29_β:
 jmp xchain00135_n27_α
# IR_VAR
 xchain00135_n30_α:
 mov rax, qword ptr [r12 + 2752]
 mov qword ptr [r12 + 2000], rax
 mov rax, qword ptr [r12 + 2760]
 mov qword ptr [r12 + 2008], rax
 jmp xchain00135_n33_α
 xchain00135_n30_β:
 jmp xchain00135_n31_α
# IR_LIT_INTEGER
 xchain00135_n31_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00148_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00135_n34_α
 xchain00135_n31_β:
 jmp xchain00135_n37_α
.Lx00148_0:
 .quad 2
 xchain00135_n32_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2112]
 mov rdx, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain00135_n17_α
 xchain00135_n32_β:
 jmp xchain00135_n17_α
 xchain00135_n33_α:
# BOX IR_CALL atan(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1960], rax
# marshal arg1 = producer-box slot [zr+2000] -> [zr+1968]
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 1976], rax
  .section .rodata
  .Lrkfn618: .string "atan"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn618]
 lea rsi, [r12 + 1952]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 cmp eax, 99
 je xchain00135_n31_α
 jmp xchain00135_n35_α
 xchain00135_n33_β:
 jmp xchain00135_n31_α
# IR_VAR
 xchain00135_n34_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00135_n36_α
 xchain00135_n34_β:
 jmp xchain00135_n37_α
 xchain00135_n35_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1936]
 mov rdx, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 2704], rax
 mov qword ptr [r12 + 2712], rdx
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain00135_n31_α
 xchain00135_n35_β:
 jmp xchain00135_n31_α
# IR_UNOP
 xchain00135_n36_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00135_n38_α
 xchain00135_n36_β:
 jmp xchain00135_n37_α
# IR_RETURN
 xchain00135_n37_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_collapse_γ
# IR_TO
 xchain00135_n38_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00149_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00135_n37_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00135_n39_α
 xchain00135_n38_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00149_0
 xchain00135_n39_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00135_n40_α
 xchain00135_n39_β:
 jmp xchain00135_n37_α
# IR_VAR
 xchain00135_n40_α:
 mov rax, qword ptr [r12 + 2752]
 mov qword ptr [r12 + 1904], rax
 mov rax, qword ptr [r12 + 2760]
 mov qword ptr [r12 + 1912], rax
 jmp xchain00135_n41_α
 xchain00135_n40_β:
 jmp xchain00135_n42_α
 xchain00135_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1904]
 mov rdx, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain00135_n42_α
 xchain00135_n41_β:
 jmp xchain00135_n42_α
# IR_VAR
 xchain00135_n42_α:
 mov rax, qword ptr [r12 + 2736]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 2744]
 mov qword ptr [r12 + 1880], rax
 jmp xchain00135_n43_α
 xchain00135_n42_β:
 jmp xchain00135_n44_α
 xchain00135_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1872]
 mov rdx, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 2656], rax
 mov qword ptr [r12 + 2664], rdx
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 jmp xchain00135_n44_α
 xchain00135_n43_β:
 jmp xchain00135_n44_α
# IR_VAR
 xchain00135_n44_α:
 mov rax, qword ptr [r12 + 2704]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 2712]
 mov qword ptr [r12 + 1848], rax
 jmp xchain00135_n45_α
 xchain00135_n44_β:
 jmp xchain00135_n46_α
 xchain00135_n45_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1840]
 mov rdx, qword ptr [r12 + 1848]
 mov qword ptr [r12 + 2720], rax
 mov qword ptr [r12 + 2728], rdx
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 jmp xchain00135_n46_α
 xchain00135_n45_β:
 jmp xchain00135_n46_α
# IR_VAR
 xchain00135_n46_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain00135_n47_α
 xchain00135_n46_β:
 jmp xchain00135_n48_α
# IR_VAR_REF
 xchain00135_n47_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain00135_n49_α
 xchain00135_n47_β:
 jmp xchain00135_n48_α
# IR_VAR_REF
 xchain00135_n48_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain00135_n50_α
 xchain00135_n48_β:
 jmp xchain00135_n53_α
# IR_VAR
 xchain00135_n49_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 1784], rax
 jmp xchain00135_n51_α
 xchain00135_n49_β:
 jmp xchain00135_n48_α
# IR_VAR
 xchain00135_n50_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00135_n52_α
 xchain00135_n50_β:
 jmp xchain00135_n53_α
# IR_SUBSCRIPT x[i] variable
 xchain00135_n51_α:
 mov rdi, qword ptr [r12 + 1760]
 mov rsi, qword ptr [r12 + 1768]
 mov rdx, qword ptr [r12 + 1776]
 mov rcx, qword ptr [r12 + 1784]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00135_n48_α
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain00135_n54_α
 xchain00135_n51_β:
 jmp xchain00135_n48_α
# IR_SUBSCRIPT x[i] variable
 xchain00135_n52_α:
 mov rdi, qword ptr [r12 + 1648]
 mov rsi, qword ptr [r12 + 1656]
 mov rdx, qword ptr [r12 + 1664]
 mov rcx, qword ptr [r12 + 1672]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00135_n53_α
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain00135_n55_α
 xchain00135_n52_β:
 jmp xchain00135_n53_α
# IR_VAR
 xchain00135_n53_α:
 mov rax, qword ptr [r12 + 2736]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 2744]
 mov qword ptr [r12 + 1608], rax
 jmp xchain00135_n56_α
 xchain00135_n53_β:
 jmp xchain00135_n57_α
# IR_DEREF variable -> value
 xchain00135_n54_α:
 mov rdi, qword ptr [r12 + 1792]
 mov rsi, qword ptr [r12 + 1800]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00135_n48_α
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain00135_n58_α
 xchain00135_n54_β:
 jmp xchain00135_n48_α
# IR_DEREF variable -> value
 xchain00135_n55_α:
 mov rdi, qword ptr [r12 + 1680]
 mov rsi, qword ptr [r12 + 1688]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00135_n53_α
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain00135_n59_α
 xchain00135_n55_β:
 jmp xchain00135_n53_α
# IR_VAR
 xchain00135_n56_α:
 mov rax, qword ptr [r12 + 2752]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 2760]
 mov qword ptr [r12 + 1624], rax
 jmp xchain00135_n60_α
 xchain00135_n56_β:
 jmp xchain00135_n57_α
# IR_VAR
 xchain00135_n57_α:
 mov rax, qword ptr [r12 + 2704]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 2712]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00135_n61_α
 xchain00135_n57_β:
 jmp xchain00135_n62_α
 xchain00135_n58_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1744]
 cmp eax, 100
 je .Lx00150_0
 mov eax, dword ptr [r12 + 1808]
 cmp eax, 100
 je .Lx00150_0
 mov eax, dword ptr [r12 + 1744]
 cmp eax, 6
 jne .Lx00150_2
 mov eax, dword ptr [r12 + 1808]
 cmp eax, 6
 jne .Lx00150_2
.Lx00150_1:
 mov rax, qword ptr [r12 + 1752]
 mov rcx, qword ptr [r12 + 1816]
 imul rax, rcx
 mov qword ptr [r12 + 1728], 6
 mov qword ptr [r12 + 1736], rax
 jmp xchain00135_n63_α
.Lx00150_0:
 mov rdi, qword ptr [r12 + 1744]
 mov rsi, qword ptr [r12 + 1752]
 mov rdx, qword ptr [r12 + 1808]
 mov rcx, qword ptr [r12 + 1816]
 mov r8d, 2
 lea r9, [r12 + 1728]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00150_3
.Lx00150_2:
 mov rdi, qword ptr [r12 + 1744]
 mov rsi, qword ptr [r12 + 1752]
 mov rdx, qword ptr [r12 + 1808]
 mov rcx, qword ptr [r12 + 1816]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00135_n48_α
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
.Lx00150_3:
 jmp xchain00135_n63_α
 xchain00135_n58_β:
 jmp xchain00135_n48_α
 xchain00135_n59_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1696]
 mov rdx, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 2736], rax
 mov qword ptr [r12 + 2744], rdx
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain00135_n53_α
 xchain00135_n59_β:
 jmp xchain00135_n53_α
 xchain00135_n60_α:
# BOX IR_CALL atan(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1568]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1576], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1584]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1592], rax
  .section .rodata
  .Lrkfn657: .string "atan"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn657]
 lea rsi, [r12 + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 cmp eax, 99
 je xchain00135_n57_α
 jmp xchain00135_n64_α
 xchain00135_n60_β:
 jmp xchain00135_n57_α
# IR_VAR
 xchain00135_n61_α:
 mov rax, qword ptr [r12 + 2720]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 2728]
 mov qword ptr [r12 + 1528], rax
 jmp xchain00135_n65_α
 xchain00135_n61_β:
 jmp xchain00135_n62_α
# IR_VAR
 xchain00135_n62_α:
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 1416], rax
 jmp xchain00135_n66_α
 xchain00135_n62_β:
 jmp xchain00135_n67_α
 xchain00135_n63_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1728]
 mov rdx, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain00135_n48_α
 xchain00135_n63_β:
 jmp xchain00135_n48_α
 xchain00135_n64_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1552]
 mov rdx, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 2704], rax
 mov qword ptr [r12 + 2712], rdx
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain00135_n57_α
 xchain00135_n64_β:
 jmp xchain00135_n57_α
 xchain00135_n65_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2704]
 cmp eax, 100
 je .Lx00151_0
 mov eax, dword ptr [r12 + 2720]
 cmp eax, 100
 je .Lx00151_0
 mov eax, dword ptr [r12 + 2704]
 cmp eax, 6
 jne .Lx00151_2
 mov eax, dword ptr [r12 + 2720]
 cmp eax, 6
 jne .Lx00151_2
.Lx00151_1:
 mov rax, qword ptr [r12 + 2712]
 mov rcx, qword ptr [r12 + 2728]
 sub rax, rcx
 mov qword ptr [r12 + 1488], 6
 mov qword ptr [r12 + 1496], rax
 jmp xchain00135_n68_α
.Lx00151_0:
 mov rdi, qword ptr [r12 + 2704]
 mov rsi, qword ptr [r12 + 2712]
 mov rdx, qword ptr [r12 + 2720]
 mov rcx, qword ptr [r12 + 2728]
 mov r8d, 1
 lea r9, [r12 + 1488]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00151_3
.Lx00151_2:
 mov rdi, qword ptr [r12 + 2704]
 mov rsi, qword ptr [r12 + 2712]
 mov rdx, qword ptr [r12 + 2720]
 mov rcx, qword ptr [r12 + 2728]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00135_n62_α
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
.Lx00151_3:
 jmp xchain00135_n68_α
 xchain00135_n65_β:
 jmp xchain00135_n62_α
# IR_VAR
 xchain00135_n66_α:
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 1432], rax
 jmp xchain00135_n69_α
 xchain00135_n66_β:
 jmp xchain00135_n67_α
# IR_VAR
 xchain00135_n67_α:
 mov rax, qword ptr [r12 + 2640]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 1240], rax
 jmp xchain00135_n70_α
 xchain00135_n67_β:
 jmp xchain00135_n71_α
 xchain00135_n68_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1472]
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 1480], rax
  .section .rodata
  .Lrkfn670: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn670]
 lea rsi, [r12 + 1472]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 cmp eax, 99
 je xchain00135_n62_α
 jmp xchain00135_n72_α
 xchain00135_n68_β:
 jmp xchain00135_n62_α
 xchain00135_n69_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2672]
 cmp eax, 100
 je .Lx00152_0
 mov eax, dword ptr [r12 + 2688]
 cmp eax, 100
 je .Lx00152_0
 mov eax, dword ptr [r12 + 2672]
 cmp eax, 6
 jne .Lx00152_2
 mov eax, dword ptr [r12 + 2688]
 cmp eax, 6
 jne .Lx00152_2
.Lx00152_1:
 mov rax, qword ptr [r12 + 2680]
 mov rcx, qword ptr [r12 + 2696]
 cmp rax, rcx
 jle xchain00135_n67_α
 mov rcx, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 1392], rcx
 mov rcx, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 1400], rcx
 jmp xchain00135_n38_β
.Lx00152_0:
 mov rdi, qword ptr [r12 + 2672]
 mov rsi, qword ptr [r12 + 2680]
 mov rdx, qword ptr [r12 + 2688]
 mov rcx, qword ptr [r12 + 2696]
 mov r8d, 7
 lea r9, [r12 + 1392]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00152_1
 cmp eax, 1
 je xchain00135_n67_α
 jmp xchain00135_n38_β
.Lx00152_2:
 mov rdi, qword ptr [r12 + 2672]
 mov rsi, qword ptr [r12 + 2680]
 mov rdx, qword ptr [r12 + 2688]
 mov rcx, qword ptr [r12 + 2696]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00135_n67_α
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00135_n38_β
 xchain00135_n69_β:
 jmp xchain00135_n67_α
# IR_VAR
 xchain00135_n70_α:
 mov rax, qword ptr [r12 + 2640]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 1256], rax
 jmp xchain00135_n74_α
 xchain00135_n70_β:
 jmp xchain00135_n71_α
# IR_VAR
 xchain00135_n71_α:
 mov rax, qword ptr [r12 + 2608]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 2616]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00135_n75_α
 xchain00135_n71_β:
 jmp xchain00135_n38_β
 xchain00135_n72_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1456]
 mov rdx, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain00135_n62_α
 xchain00135_n72_β:
 jmp xchain00135_n62_α
 xchain00135_n73_α:
 jmp xchain00135_n38_β
xchain00135_n73_β:
 jmp xchain00135_n38_β
 xchain00135_n74_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2640]
 cmp eax, 100
 je .Lx00153_0
 mov eax, dword ptr [r12 + 2640]
 cmp eax, 100
 je .Lx00153_0
 mov eax, dword ptr [r12 + 2640]
 cmp eax, 6
 jne .Lx00153_2
 mov eax, dword ptr [r12 + 2640]
 cmp eax, 6
 jne .Lx00153_2
.Lx00153_1:
 mov rax, qword ptr [r12 + 2648]
 mov rcx, qword ptr [r12 + 2648]
 imul rax, rcx
 mov qword ptr [r12 + 1216], 6
 mov qword ptr [r12 + 1224], rax
 jmp xchain00135_n76_α
.Lx00153_0:
 mov rdi, qword ptr [r12 + 2640]
 mov rsi, qword ptr [r12 + 2648]
 mov rdx, qword ptr [r12 + 2640]
 mov rcx, qword ptr [r12 + 2648]
 mov r8d, 2
 lea r9, [r12 + 1216]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00153_3
.Lx00153_2:
 mov rdi, qword ptr [r12 + 2640]
 mov rsi, qword ptr [r12 + 2648]
 mov rdx, qword ptr [r12 + 2640]
 mov rcx, qword ptr [r12 + 2648]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00135_n71_α
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
.Lx00153_3:
 jmp xchain00135_n76_α
 xchain00135_n74_β:
 jmp xchain00135_n71_α
# IR_VAR
 xchain00135_n75_α:
 mov rax, qword ptr [r12 + 2624]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00135_n77_α
 xchain00135_n75_β:
 jmp xchain00135_n38_β
# IR_VAR
 xchain00135_n76_α:
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 2664]
 mov qword ptr [r12 + 1288], rax
 jmp xchain00135_n78_α
 xchain00135_n76_β:
 jmp xchain00135_n71_α
 xchain00135_n77_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2608]
 cmp eax, 100
 je .Lx00154_0
 mov eax, dword ptr [r12 + 2624]
 cmp eax, 100
 je .Lx00154_0
 mov eax, dword ptr [r12 + 2608]
 cmp eax, 6
 jne .Lx00154_2
 mov eax, dword ptr [r12 + 2624]
 cmp eax, 6
 jne .Lx00154_2
.Lx00154_1:
 mov rax, qword ptr [r12 + 2616]
 mov rcx, qword ptr [r12 + 2632]
 cmp rax, rcx
 jg xchain00135_n38_β
 mov rcx, qword ptr [r12 + 2624]
 mov qword ptr [r12 + 1088], rcx
 mov rcx, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 1096], rcx
 jmp xchain00135_n79_α
.Lx00154_0:
 mov rdi, qword ptr [r12 + 2608]
 mov rsi, qword ptr [r12 + 2616]
 mov rdx, qword ptr [r12 + 2624]
 mov rcx, qword ptr [r12 + 2632]
 mov r8d, 6
 lea r9, [r12 + 1088]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00154_1
 cmp eax, 1
 je xchain00135_n38_β
 jmp xchain00135_n79_α
.Lx00154_2:
 mov rdi, qword ptr [r12 + 2608]
 mov rsi, qword ptr [r12 + 2616]
 mov rdx, qword ptr [r12 + 2624]
 mov rcx, qword ptr [r12 + 2632]
 mov r8d, 6
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00135_n38_β
 mov rax, qword ptr [r12 + 2624]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 1096], rax
 jmp xchain00135_n79_α
 xchain00135_n77_β:
 jmp xchain00135_n38_β
# IR_VAR
 xchain00135_n78_α:
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 2664]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00135_n80_α
 xchain00135_n78_β:
 jmp xchain00135_n71_α
# IR_VAR_REF
 xchain00135_n79_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain00135_n81_α
 xchain00135_n79_β:
 jmp xchain00135_n84_α
 xchain00135_n80_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2656]
 cmp eax, 100
 je .Lx00155_0
 mov eax, dword ptr [r12 + 2656]
 cmp eax, 100
 je .Lx00155_0
 mov eax, dword ptr [r12 + 2656]
 cmp eax, 6
 jne .Lx00155_2
 mov eax, dword ptr [r12 + 2656]
 cmp eax, 6
 jne .Lx00155_2
.Lx00155_1:
 mov rax, qword ptr [r12 + 2664]
 mov rcx, qword ptr [r12 + 2664]
 imul rax, rcx
 mov qword ptr [r12 + 1264], 6
 mov qword ptr [r12 + 1272], rax
 jmp xchain00135_n82_α
.Lx00155_0:
 mov rdi, qword ptr [r12 + 2656]
 mov rsi, qword ptr [r12 + 2664]
 mov rdx, qword ptr [r12 + 2656]
 mov rcx, qword ptr [r12 + 2664]
 mov r8d, 2
 lea r9, [r12 + 1264]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00155_3
.Lx00155_2:
 mov rdi, qword ptr [r12 + 2656]
 mov rsi, qword ptr [r12 + 2664]
 mov rdx, qword ptr [r12 + 2656]
 mov rcx, qword ptr [r12 + 2664]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00135_n71_α
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
.Lx00155_3:
 jmp xchain00135_n82_α
 xchain00135_n80_β:
 jmp xchain00135_n71_α
# IR_VAR
 xchain00135_n81_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 952], rax
 jmp xchain00135_n83_α
 xchain00135_n81_β:
 jmp xchain00135_n84_α
 xchain00135_n82_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1216]
 cmp eax, 100
 je .Lx00156_0
 mov eax, dword ptr [r12 + 1264]
 cmp eax, 100
 je .Lx00156_0
 mov eax, dword ptr [r12 + 1216]
 cmp eax, 6
 jne .Lx00156_2
 mov eax, dword ptr [r12 + 1264]
 cmp eax, 6
 jne .Lx00156_2
.Lx00156_1:
 mov rax, qword ptr [r12 + 1224]
 mov rcx, qword ptr [r12 + 1272]
 add rax, rcx
 mov qword ptr [r12 + 1200], 6
 mov qword ptr [r12 + 1208], rax
 jmp xchain00135_n85_α
.Lx00156_0:
 mov rdi, qword ptr [r12 + 1216]
 mov rsi, qword ptr [r12 + 1224]
 mov rdx, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1272]
 mov r8d, 0
 lea r9, [r12 + 1200]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00156_3
.Lx00156_2:
 mov rdi, qword ptr [r12 + 1216]
 mov rsi, qword ptr [r12 + 1224]
 mov rdx, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1272]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00135_n71_α
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
.Lx00156_3:
 jmp xchain00135_n85_α
 xchain00135_n82_β:
 jmp xchain00135_n71_α
# IR_SUBSCRIPT x[i] variable
 xchain00135_n83_α:
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00135_n84_α
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain00135_n86_α
 xchain00135_n83_β:
 jmp xchain00135_n84_α
# IR_VAR_REF
 xchain00135_n84_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00135_n87_α
 xchain00135_n84_β:
 jmp xchain00135_n91_α
# IR_VAR
 xchain00135_n85_α:
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 1352], rax
 jmp xchain00135_n88_α
 xchain00135_n85_β:
 jmp xchain00135_n71_α
# IR_DEREF variable -> value
 xchain00135_n86_α:
 mov rdi, qword ptr [r12 + 960]
 mov rsi, qword ptr [r12 + 968]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00135_n84_α
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain00135_n89_α
 xchain00135_n86_β:
 jmp xchain00135_n84_α
# IR_VAR
 xchain00135_n87_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 760], rax
 jmp xchain00135_n90_α
 xchain00135_n87_β:
 jmp xchain00135_n91_α
 xchain00135_n88_α:
# BOX IR_CALL sin(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1344] -> [zr+1328]
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1336], rax
  .section .rodata
  .Lrkfn701: .string "sin"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn701]
 lea rsi, [r12 + 1328]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 cmp eax, 99
 je xchain00135_n71_α
 jmp xchain00135_n92_α
 xchain00135_n88_β:
 jmp xchain00135_n71_α
# IR_VAR_REF
 xchain00135_n89_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain00135_n93_α
 xchain00135_n89_β:
 jmp xchain00135_n84_α
# IR_SUBSCRIPT x[i] variable
 xchain00135_n90_α:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00135_n91_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00135_n94_α
 xchain00135_n90_β:
 jmp xchain00135_n91_α
# IR_VAR
 xchain00135_n91_α:
 mov rax, qword ptr [r12 + 2592]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 680], rax
 jmp xchain00135_n95_α
 xchain00135_n91_β:
 jmp xchain00135_n38_β
 xchain00135_n92_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1200]
 cmp eax, 100
 je .Lx00157_0
 mov eax, dword ptr [r12 + 1312]
 cmp eax, 100
 je .Lx00157_0
 mov eax, dword ptr [r12 + 1200]
 cmp eax, 6
 jne .Lx00157_2
 mov eax, dword ptr [r12 + 1312]
 cmp eax, 6
 jne .Lx00157_2
.Lx00157_1:
 mov rax, qword ptr [r12 + 1208]
 mov rcx, qword ptr [r12 + 1320]
 imul rax, rcx
 mov qword ptr [r12 + 1184], 6
 mov qword ptr [r12 + 1192], rax
 jmp xchain00135_n96_α
.Lx00157_0:
 mov rdi, qword ptr [r12 + 1200]
 mov rsi, qword ptr [r12 + 1208]
 mov rdx, qword ptr [r12 + 1312]
 mov rcx, qword ptr [r12 + 1320]
 mov r8d, 2
 lea r9, [r12 + 1184]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00157_3
.Lx00157_2:
 mov rdi, qword ptr [r12 + 1200]
 mov rsi, qword ptr [r12 + 1208]
 mov rdx, qword ptr [r12 + 1312]
 mov rcx, qword ptr [r12 + 1320]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00135_n71_α
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
.Lx00157_3:
 jmp xchain00135_n96_α
 xchain00135_n92_β:
 jmp xchain00135_n71_α
# IR_VAR
 xchain00135_n93_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00135_n97_α
 xchain00135_n93_β:
 jmp xchain00135_n84_α
# IR_DEREF variable -> value
 xchain00135_n94_α:
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00135_n91_α
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00135_n98_α
 xchain00135_n94_β:
 jmp xchain00135_n91_α
 xchain00135_n95_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+656]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn712: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn712]
 lea rsi, [r12 + 656]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain00135_n38_β
 jmp xchain00135_n99_α
 xchain00135_n95_β:
 jmp xchain00135_n38_β
 xchain00135_n96_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1184] -> [zr+1168]
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1176], rax
  .section .rodata
  .Lrkfn714: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn714]
 lea rsi, [r12 + 1168]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain00135_n71_α
 jmp xchain00135_n00052_α
 xchain00135_n96_β:
 jmp xchain00135_n71_α
# IR_LIT_INTEGER
 xchain00135_n97_α:
 mov qword ptr [r12 + 1040], 6
 mov rax, qword ptr [rip + .Lx00158_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain00135_n00001_α
 xchain00135_n97_β:
 jmp xchain00135_n84_α
.Lx00158_0:
 .quad 1
# IR_VAR_REF
 xchain00135_n98_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00135_n00054_α
 xchain00135_n98_β:
 jmp xchain00135_n91_α
# IR_LIT_INTEGER
 xchain00135_n99_α:
 mov qword ptr [r12 + 688], 6
 mov rax, qword ptr [rip + .Lx00159_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain00135_n00055_α
 xchain00135_n99_β:
 jmp xchain00135_n38_β
.Lx00159_0:
 .quad 5000
 xchain00135_n00052_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1152]
 mov rdx, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 2608], rax
 mov qword ptr [r12 + 2616], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00135_n71_α
 xchain00135_n00052_β:
 jmp xchain00135_n71_α
 xchain00135_n00001_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2560]
 cmp eax, 100
 je .Lx00160_0
 mov eax, dword ptr [r12 + 1040]
 cmp eax, 100
 je .Lx00160_0
 mov eax, dword ptr [r12 + 2560]
 cmp eax, 6
 jne .Lx00160_2
 mov eax, dword ptr [r12 + 1040]
 cmp eax, 6
 jne .Lx00160_2
.Lx00160_1:
 mov rax, qword ptr [r12 + 2568]
 mov rcx, qword ptr [r12 + 1048]
 sub rax, rcx
 mov qword ptr [r12 + 1008], 6
 mov qword ptr [r12 + 1016], rax
 jmp xchain00135_n00056_α
.Lx00160_0:
 mov rdi, qword ptr [r12 + 2560]
 mov rsi, qword ptr [r12 + 2568]
 mov rdx, qword ptr [r12 + 1040]
 mov rcx, qword ptr [r12 + 1048]
 mov r8d, 1
 lea r9, [r12 + 1008]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00160_3
.Lx00160_2:
 mov rdi, qword ptr [r12 + 2560]
 mov rsi, qword ptr [r12 + 2568]
 mov rdx, qword ptr [r12 + 1040]
 mov rcx, qword ptr [r12 + 1048]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00135_n84_α
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
.Lx00160_3:
 jmp xchain00135_n00056_α
 xchain00135_n00001_β:
 jmp xchain00135_n84_α
# IR_VAR
 xchain00135_n00054_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 840], rax
 jmp xchain00135_n00057_α
 xchain00135_n00054_β:
 jmp xchain00135_n91_α
 xchain00135_n00055_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 640]
 cmp eax, 100
 je .Lx00161_0
 mov eax, dword ptr [r12 + 688]
 cmp eax, 100
 je .Lx00161_0
 mov eax, dword ptr [r12 + 640]
 cmp eax, 6
 jne .Lx00161_2
 mov eax, dword ptr [r12 + 688]
 cmp eax, 6
 jne .Lx00161_2
.Lx00161_1:
 mov rax, qword ptr [r12 + 648]
 mov rcx, qword ptr [r12 + 696]
 cmp rax, rcx
 jge xchain00135_n38_β
 mov rcx, qword ptr [r12 + 688]
 mov qword ptr [r12 + 624], rcx
 mov rcx, qword ptr [r12 + 696]
 mov qword ptr [r12 + 632], rcx
 jmp xchain00135_n00059_α
.Lx00161_0:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 mov r8d, 5
 lea r9, [r12 + 624]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00161_1
 cmp eax, 1
 je xchain00135_n38_β
 jmp xchain00135_n00059_α
.Lx00161_2:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00135_n38_β
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 632], rax
 jmp xchain00135_n00059_α
 xchain00135_n00055_β:
 jmp xchain00135_n38_β
# IR_SUBSCRIPT x[i] variable
 xchain00135_n00056_α:
 mov rdi, qword ptr [r12 + 992]
 mov rsi, qword ptr [r12 + 1000]
 mov rdx, qword ptr [r12 + 1008]
 mov rcx, qword ptr [r12 + 1016]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00135_n84_α
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain00135_n00061_α
 xchain00135_n00056_β:
 jmp xchain00135_n84_α
# IR_LIT_INTEGER
 xchain00135_n00057_α:
 mov qword ptr [r12 + 848], 6
 mov rax, qword ptr [rip + .Lx00162_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain00135_n00002_α
 xchain00135_n00057_β:
 jmp xchain00135_n91_α
.Lx00162_0:
 .quad 1
# IR_VAR
 xchain00135_n00059_α:
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 600], rax
 jmp xchain00135_n00063_α
 xchain00135_n00059_β:
 jmp xchain00135_n38_β
# IR_DEREF variable -> value
 xchain00135_n00061_α:
 mov rdi, qword ptr [r12 + 1056]
 mov rsi, qword ptr [r12 + 1064]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00135_n84_α
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain00135_n00064_α
 xchain00135_n00061_β:
 jmp xchain00135_n84_α
 xchain00135_n00002_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2560]
 cmp eax, 100
 je .Lx00163_0
 mov eax, dword ptr [r12 + 848]
 cmp eax, 100
 je .Lx00163_0
 mov eax, dword ptr [r12 + 2560]
 cmp eax, 6
 jne .Lx00163_2
 mov eax, dword ptr [r12 + 848]
 cmp eax, 6
 jne .Lx00163_2
.Lx00163_1:
 mov rax, qword ptr [r12 + 2568]
 mov rcx, qword ptr [r12 + 856]
 sub rax, rcx
 mov qword ptr [r12 + 816], 6
 mov qword ptr [r12 + 824], rax
 jmp xchain00135_n00065_α
.Lx00163_0:
 mov rdi, qword ptr [r12 + 2560]
 mov rsi, qword ptr [r12 + 2568]
 mov rdx, qword ptr [r12 + 848]
 mov rcx, qword ptr [r12 + 856]
 mov r8d, 1
 lea r9, [r12 + 816]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00163_3
.Lx00163_2:
 mov rdi, qword ptr [r12 + 2560]
 mov rsi, qword ptr [r12 + 2568]
 mov rdx, qword ptr [r12 + 848]
 mov rcx, qword ptr [r12 + 856]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00135_n91_α
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
.Lx00163_3:
 jmp xchain00135_n00065_α
 xchain00135_n00002_β:
 jmp xchain00135_n91_α
 xchain00135_n00063_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+576]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn731: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn731]
 lea rsi, [r12 + 576]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain00135_n38_β
 jmp xchain00135_n00066_α
 xchain00135_n00063_β:
 jmp xchain00135_n38_β
 xchain00135_n00064_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 976]
 cmp eax, 100
 je .Lx00164_0
 mov eax, dword ptr [r12 + 1072]
 cmp eax, 100
 je .Lx00164_0
 mov eax, dword ptr [r12 + 976]
 cmp eax, 6
 jne .Lx00164_2
 mov eax, dword ptr [r12 + 1072]
 cmp eax, 6
 jne .Lx00164_2
.Lx00164_1:
 mov rax, qword ptr [r12 + 984]
 mov rcx, qword ptr [r12 + 1080]
 add rax, rcx
 mov qword ptr [r12 + 912], 6
 mov qword ptr [r12 + 920], rax
 jmp xchain00135_n00067_α
.Lx00164_0:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1072]
 mov rcx, qword ptr [r12 + 1080]
 mov r8d, 0
 lea r9, [r12 + 912]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00164_3
.Lx00164_2:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1072]
 mov rcx, qword ptr [r12 + 1080]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00135_n84_α
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
.Lx00164_3:
 jmp xchain00135_n00067_α
 xchain00135_n00064_β:
 jmp xchain00135_n84_α
# IR_SUBSCRIPT x[i] variable
 xchain00135_n00065_α:
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, qword ptr [r12 + 816]
 mov rcx, qword ptr [r12 + 824]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00135_n91_α
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00135_n00003_α
 xchain00135_n00065_β:
 jmp xchain00135_n91_α
# IR_LIT_INTEGER
 xchain00135_n00066_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx00165_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00135_n00068_α
 xchain00135_n00066_β:
 jmp xchain00135_n38_β
.Lx00165_0:
 .quad 5000
 xchain00135_n00067_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00135_n84_α
 xchain00135_n00067_β:
 jmp xchain00135_n84_α
# IR_DEREF variable -> value
 xchain00135_n00003_α:
 mov rdi, qword ptr [r12 + 864]
 mov rsi, qword ptr [r12 + 872]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00135_n91_α
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00135_n00069_α
 xchain00135_n00003_β:
 jmp xchain00135_n91_α
 xchain00135_n00068_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 560]
 cmp eax, 100
 je .Lx00166_0
 mov eax, dword ptr [r12 + 608]
 cmp eax, 100
 je .Lx00166_0
 mov eax, dword ptr [r12 + 560]
 cmp eax, 6
 jne .Lx00166_2
 mov eax, dword ptr [r12 + 608]
 cmp eax, 6
 jne .Lx00166_2
.Lx00166_1:
 mov rax, qword ptr [r12 + 568]
 mov rcx, qword ptr [r12 + 616]
 cmp rax, rcx
 jge xchain00135_n38_β
 mov rcx, qword ptr [r12 + 608]
 mov qword ptr [r12 + 544], rcx
 mov rcx, qword ptr [r12 + 616]
 mov qword ptr [r12 + 552], rcx
 jmp xchain00135_n00070_α
.Lx00166_0:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 5
 lea r9, [r12 + 544]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00166_1
 cmp eax, 1
 je xchain00135_n38_β
 jmp xchain00135_n00070_α
.Lx00166_2:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00135_n38_β
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 552], rax
 jmp xchain00135_n00070_α
 xchain00135_n00068_β:
 jmp xchain00135_n38_β
 xchain00135_n00069_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 784]
 cmp eax, 100
 je .Lx00167_0
 mov eax, dword ptr [r12 + 880]
 cmp eax, 100
 je .Lx00167_0
 mov eax, dword ptr [r12 + 784]
 cmp eax, 6
 jne .Lx00167_2
 mov eax, dword ptr [r12 + 880]
 cmp eax, 6
 jne .Lx00167_2
.Lx00167_1:
 mov rax, qword ptr [r12 + 792]
 mov rcx, qword ptr [r12 + 888]
 add rax, rcx
 mov qword ptr [r12 + 720], 6
 mov qword ptr [r12 + 728], rax
 jmp xchain00135_n00071_α
.Lx00167_0:
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 880]
 mov rcx, qword ptr [r12 + 888]
 mov r8d, 0
 lea r9, [r12 + 720]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00167_3
.Lx00167_2:
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 880]
 mov rcx, qword ptr [r12 + 888]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00135_n91_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
.Lx00167_3:
 jmp xchain00135_n00071_α
 xchain00135_n00069_β:
 jmp xchain00135_n91_α
 xchain00135_n00070_α:
 jmp xchain00135_n00073_α
xchain00135_n00070_β:
 jmp xchain00135_n38_β
 xchain00135_n00071_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00135_n91_α
 xchain00135_n00071_β:
 jmp xchain00135_n91_α
# IR_VAR_REF
 xchain00135_n00073_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00135_n00075_α
 xchain00135_n00073_β:
 jmp xchain00135_n00076_α
# IR_VAR
 xchain00135_n00075_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 488], rax
 jmp xchain00135_n00012_α
 xchain00135_n00075_β:
 jmp xchain00135_n00076_α
# IR_SUBSCRIPT x[i] variable
 xchain00135_n00012_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00135_n00076_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00135_n00077_α
 xchain00135_n00012_β:
 jmp xchain00135_n00076_α
# IR_VAR_REF
 xchain00135_n00076_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00135_n00078_α
 xchain00135_n00076_β:
 jmp xchain00135_n00080_α
# IR_VAR
 xchain00135_n00077_α:
 mov rax, qword ptr [r12 + 2592]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 536], rax
 jmp xchain00135_n00004_α
 xchain00135_n00077_β:
 jmp xchain00135_n00076_α
# IR_VAR
 xchain00135_n00078_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 408], rax
 jmp xchain00135_n00079_α
 xchain00135_n00078_β:
 jmp xchain00135_n00080_α
# IR_ASSIGN_VAR
 xchain00135_n00004_α:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00135_n00076_α
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00135_n00076_α
 xchain00135_n00004_β:
 jmp xchain00135_n00076_α
# IR_SUBSCRIPT x[i] variable
 xchain00135_n00079_α:
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00135_n00080_α
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00135_n00082_α
 xchain00135_n00079_β:
 jmp xchain00135_n00080_α
# IR_VAR_REF
 xchain00135_n00080_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00135_n00083_α
 xchain00135_n00080_β:
 jmp xchain00135_n38_β
# IR_VAR
 xchain00135_n00082_α:
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 456], rax
 jmp xchain00135_n00084_α
 xchain00135_n00082_β:
 jmp xchain00135_n00080_α
# IR_VAR
 xchain00135_n00083_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 216], rax
 jmp xchain00135_n00085_α
 xchain00135_n00083_β:
 jmp xchain00135_n38_β
# IR_ASSIGN_VAR
 xchain00135_n00084_α:
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00135_n00080_α
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00135_n00080_α
 xchain00135_n00084_β:
 jmp xchain00135_n00080_α
# IR_LIT_INTEGER
 xchain00135_n00085_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00168_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00135_n00005_α
 xchain00135_n00085_β:
 jmp xchain00135_n38_β
.Lx00168_0:
 .quad 1
 xchain00135_n00005_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2560]
 cmp eax, 100
 je .Lx00169_0
 mov eax, dword ptr [r12 + 224]
 cmp eax, 100
 je .Lx00169_0
 mov eax, dword ptr [r12 + 2560]
 cmp eax, 6
 jne .Lx00169_2
 mov eax, dword ptr [r12 + 224]
 cmp eax, 6
 jne .Lx00169_2
.Lx00169_1:
 mov rax, qword ptr [r12 + 2568]
 mov rcx, qword ptr [r12 + 232]
 sub rax, rcx
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
 jmp xchain00135_n00087_α
.Lx00169_0:
 mov rdi, qword ptr [r12 + 2560]
 mov rsi, qword ptr [r12 + 2568]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 1
 lea r9, [r12 + 192]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00169_3
.Lx00169_2:
 mov rdi, qword ptr [r12 + 2560]
 mov rsi, qword ptr [r12 + 2568]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00135_n38_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
.Lx00169_3:
 jmp xchain00135_n00087_α
 xchain00135_n00005_β:
 jmp xchain00135_n38_β
# IR_SUBSCRIPT x[i] variable
 xchain00135_n00087_α:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00135_n38_β
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00135_n00089_α
 xchain00135_n00087_β:
 jmp xchain00135_n38_β
# IR_VAR_REF
 xchain00135_n00089_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00135_n00091_α
 xchain00135_n00089_β:
 jmp xchain00135_n38_β
# IR_VAR
 xchain00135_n00091_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 312], rax
 jmp xchain00135_n00092_α
 xchain00135_n00091_β:
 jmp xchain00135_n38_β
# IR_LIT_INTEGER
 xchain00135_n00092_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx00170_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00135_n00097_α
 xchain00135_n00092_β:
 jmp xchain00135_n38_β
.Lx00170_0:
 .quad 1
 xchain00135_n00097_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2560]
 cmp eax, 100
 je .Lx00171_0
 mov eax, dword ptr [r12 + 320]
 cmp eax, 100
 je .Lx00171_0
 mov eax, dword ptr [r12 + 2560]
 cmp eax, 6
 jne .Lx00171_2
 mov eax, dword ptr [r12 + 320]
 cmp eax, 6
 jne .Lx00171_2
.Lx00171_1:
 mov rax, qword ptr [r12 + 2568]
 mov rcx, qword ptr [r12 + 328]
 sub rax, rcx
 mov qword ptr [r12 + 288], 6
 mov qword ptr [r12 + 296], rax
 jmp xchain00135_n00094_α
.Lx00171_0:
 mov rdi, qword ptr [r12 + 2560]
 mov rsi, qword ptr [r12 + 2568]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 1
 lea r9, [r12 + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00171_3
.Lx00171_2:
 mov rdi, qword ptr [r12 + 2560]
 mov rsi, qword ptr [r12 + 2568]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00135_n38_β
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
.Lx00171_3:
 jmp xchain00135_n00094_α
 xchain00135_n00097_β:
 jmp xchain00135_n38_β
# IR_SUBSCRIPT x[i] variable
 xchain00135_n00094_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00135_n38_β
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00135_n00096_α
 xchain00135_n00094_β:
 jmp xchain00135_n38_β
# IR_LIT_INTEGER
 xchain00135_n00096_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00172_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00135_n00098_α
 xchain00135_n00096_β:
 jmp xchain00135_n38_β
.Lx00172_0:
 .quad 0
# IR_ASSIGN_VAR
 xchain00135_n00098_α:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00135_n38_β
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00135_n00100_α
 xchain00135_n00098_β:
 jmp xchain00135_n38_β
# IR_ASSIGN_VAR
 xchain00135_n00100_α:
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00135_n38_β
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00135_n00015_α
 xchain00135_n00100_β:
 jmp xchain00135_n38_β
 xchain00135_n00015_α:
 jmp xchain00135_n00102_α
xchain00135_n00015_β:
 jmp xchain00135_n38_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00135_n00102_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 152], rax
 lea rax, [rip + xchain00135_n38_β]
 mov qword ptr [r12 + 160], rax
 jmp xchain00135_n00104_α
 xchain00135_n00102_β:
 jmp xchain00135_n38_β
 xchain00135_n00104_α:
 jmp xchain00135_n00107_α
xchain00135_n00104_β:
 jmp xchain00135_n38_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00135_n00105_α:
 jmp qword ptr [r12 + 160]
 xchain00135_n00105_β:
 jmp xchain00135_n38_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00135_n00107_α:
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
 lea rax, [rip + xchain00135_n00105_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain00135_n00109_α
 xchain00135_n00107_β:
 jmp xchain00135_n38_β
 xchain00135_n00109_α:
 jmp xchain00135_n38_β
xchain00135_n00109_β:
 jmp xchain00135_n38_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00135_n00006_α:
 jmp qword ptr [r12 + 128]
 xchain00135_n00006_β:
 jmp xchain00135_n38_β
proc_collapse_β:
jmp proc_collapse_ω
proc_collapse_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 1248], rax
 pop rsi
proc_successor_α_body:
# IR_VAR_REF
 xchain00173_n0_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain00173_n1_α
 xchain00173_n0_β:
 jmp xchain00173_n3_α
# IR_VAR
 xchain00173_n1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1208], rax
 jmp xchain00173_n2_α
 xchain00173_n1_β:
 jmp xchain00173_n3_α
# IR_FIELD_GET
 xchain00173_n2_α:
 mov rdi, qword ptr [rip + .Lx00174_0]
 mov rsi, qword ptr [r12 + 1200]
 mov rdx, qword ptr [r12 + 1208]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00173_n3_α
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain00173_n4_α
 xchain00173_n2_β:
 jmp xchain00173_n3_α
.Lx00174_0:
 .quad .Lx00174_0_s
.Lx00174_0_s:
 .string "code"
# IR_VAR
 xchain00173_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00173_n5_α
 xchain00173_n3_β:
 jmp xchain00173_n6_α
# IR_SUBSCRIPT x[i] variable
 xchain00173_n4_α:
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 mov rdx, qword ptr [r12 + 1184]
 mov rcx, qword ptr [r12 + 1192]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00173_n3_α
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain00173_n7_α
 xchain00173_n4_β:
 jmp xchain00173_n3_α
# IR_FIELD_GET
 xchain00173_n5_α:
 mov rdi, qword ptr [rip + .Lx00175_0]
 mov rsi, qword ptr [r12 + 992]
 mov rdx, qword ptr [r12 + 1000]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00173_n6_α
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain00173_n8_α
 xchain00173_n5_β:
 jmp xchain00173_n6_α
.Lx00175_0:
 .quad .Lx00175_0_s
.Lx00175_0_s:
 .string "x2"
# IR_LIT_INTEGER
 xchain00173_n6_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00176_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00173_n9_α
 xchain00173_n6_β:
 jmp xchain00173_n13_α
.Lx00176_0:
 .quad 0
# IR_DEREF variable -> value
 xchain00173_n7_α:
 mov rdi, qword ptr [r12 + 1216]
 mov rsi, qword ptr [r12 + 1224]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00173_n3_α
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain00173_n10_α
 xchain00173_n7_β:
 jmp xchain00173_n3_α
# IR_VAR
 xchain00173_n8_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00173_n11_α
 xchain00173_n8_β:
 jmp xchain00173_n6_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00173_n9_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + xchain00173_n13_α]
 mov qword ptr [r12 + 64], rax
 jmp xchain00173_n12_α
 xchain00173_n9_β:
 jmp proc_successor_ω
 xchain00173_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1232]
 mov rdx, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain00173_n3_α
 xchain00173_n10_β:
 jmp xchain00173_n3_α
# IR_FIELD_GET
 xchain00173_n11_α:
 mov rdi, qword ptr [rip + .Lx00177_0]
 mov rsi, qword ptr [r12 + 1024]
 mov rdx, qword ptr [r12 + 1032]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00173_n6_α
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain00173_n15_α
 xchain00173_n11_β:
 jmp xchain00173_n6_α
.Lx00177_0:
 .quad .Lx00177_0_s
.Lx00177_0_s:
 .string "y2"
 xchain00173_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00173_n16_α
 xchain00173_n12_β:
 jmp proc_successor_ω
# IR_LIT_INTEGER
 xchain00173_n13_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00178_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00173_n17_α
 xchain00173_n13_β:
 jmp xchain00173_n20_α
.Lx00178_0:
 .quad 1
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00173_n14_α:
 jmp qword ptr [r12 + 64]
 xchain00173_n14_β:
 jmp proc_successor_ω
 xchain00173_n15_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 976]
 cmp eax, 100
 je .Lx00179_0
 mov eax, dword ptr [r12 + 1008]
 cmp eax, 100
 je .Lx00179_0
 mov eax, dword ptr [r12 + 976]
 cmp eax, 6
 jne .Lx00179_2
 mov eax, dword ptr [r12 + 1008]
 cmp eax, 6
 jne .Lx00179_2
.Lx00179_1:
 mov rax, qword ptr [r12 + 984]
 mov rcx, qword ptr [r12 + 1016]
 add rax, rcx
 mov qword ptr [r12 + 960], 6
 mov qword ptr [r12 + 968], rax
 jmp xchain00173_n18_α
.Lx00179_0:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1008]
 mov rcx, qword ptr [r12 + 1016]
 mov r8d, 0
 lea r9, [r12 + 960]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00179_3
.Lx00179_2:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1008]
 mov rcx, qword ptr [r12 + 1016]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00173_n6_α
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
.Lx00179_3:
 jmp xchain00173_n18_α
 xchain00173_n15_β:
 jmp xchain00173_n6_α
# IR_VAR_REF
 xchain00173_n16_α:
 lea rdi, [r12 + 1344]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00173_n19_α
 xchain00173_n16_β:
 jmp xchain00173_n14_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00173_n17_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + xchain00173_n20_α]
 mov qword ptr [r12 + 64], rax
 jmp xchain00173_n12_α
 xchain00173_n17_β:
 jmp proc_successor_ω
# IR_LIT_INTEGER
 xchain00173_n18_α:
 mov qword ptr [r12 + 1040], 6
 mov rax, qword ptr [rip + .Lx00180_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain00173_n21_α
 xchain00173_n18_β:
 jmp xchain00173_n6_α
.Lx00180_0:
 .quad 8
# IR_VAR
 xchain00173_n19_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 824], rax
 jmp xchain00173_n22_α
 xchain00173_n19_β:
 jmp xchain00173_n14_α
# IR_LIT_INTEGER
 xchain00173_n20_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx00181_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain00173_n24_α
 xchain00173_n20_β:
 jmp proc_successor_ω
.Lx00181_0:
 .quad 18446744073709551615
 xchain00173_n21_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+928]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 936], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+944]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lrkfn817: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn817]
 lea rsi, [r12 + 928]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain00173_n6_α
 jmp xchain00173_n25_α
 xchain00173_n21_β:
 jmp xchain00173_n6_α
# IR_FIELD_GET
 xchain00173_n22_α:
 mov rdi, qword ptr [rip + .Lx00182_0]
 mov rsi, qword ptr [r12 + 816]
 mov rdx, qword ptr [r12 + 824]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00173_n14_α
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00173_n26_α
 xchain00173_n22_β:
 jmp xchain00173_n14_α
.Lx00182_0:
 .quad .Lx00182_0_s
.Lx00182_0_s:
 .string "aindex"
 xchain00173_n23_α:
 jmp xchain00173_n14_α
xchain00173_n23_β:
 jmp xchain00173_n14_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00173_n24_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + proc_successor_ω]
 mov qword ptr [r12 + 64], rax
 jmp xchain00173_n12_α
 xchain00173_n24_β:
 jmp proc_successor_ω
# IR_VAR
 xchain00173_n25_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00173_n27_α
 xchain00173_n25_β:
 jmp xchain00173_n6_α
# IR_VAR
 xchain00173_n26_α:
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 840], rax
 jmp xchain00173_n28_α
 xchain00173_n26_β:
 jmp xchain00173_n14_α
# IR_FIELD_GET
 xchain00173_n27_α:
 mov rdi, qword ptr [rip + .Lx00183_0]
 mov rsi, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00173_n6_α
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain00173_n29_α
 xchain00173_n27_β:
 jmp xchain00173_n6_α
.Lx00183_0:
 .quad .Lx00183_0_s
.Lx00183_0_s:
 .string "x2"
 xchain00173_n28_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 800]
 cmp eax, 100
 je .Lx00184_0
 mov eax, dword ptr [r12 + 1264]
 cmp eax, 100
 je .Lx00184_0
 mov eax, dword ptr [r12 + 800]
 cmp eax, 6
 jne .Lx00184_2
 mov eax, dword ptr [r12 + 1264]
 cmp eax, 6
 jne .Lx00184_2
.Lx00184_1:
 mov rax, qword ptr [r12 + 808]
 mov rcx, qword ptr [r12 + 1272]
 add rax, rcx
 mov qword ptr [r12 + 784], 6
 mov qword ptr [r12 + 792], rax
 jmp xchain00173_n30_α
.Lx00184_0:
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1272]
 mov r8d, 0
 lea r9, [r12 + 784]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00184_3
.Lx00184_2:
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1272]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00173_n14_α
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
.Lx00184_3:
 jmp xchain00173_n30_α
 xchain00173_n28_β:
 jmp xchain00173_n14_α
# IR_LIT_INTEGER
 xchain00173_n29_α:
 mov qword ptr [r12 + 1136], 6
 mov rax, qword ptr [rip + .Lx00185_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain00173_n31_α
 xchain00173_n29_β:
 jmp xchain00173_n6_α
.Lx00185_0:
 .quad 7
# IR_SUBSCRIPT x[i] variable
 xchain00173_n30_α:
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00173_n14_α
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain00173_n32_α
 xchain00173_n30_β:
 jmp xchain00173_n14_α
 xchain00173_n31_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1072]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+1088]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn831: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn831]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00173_n6_α
 jmp xchain00173_n33_α
 xchain00173_n31_β:
 jmp xchain00173_n6_α
# IR_DEREF variable -> value
 xchain00173_n32_α:
 mov rdi, qword ptr [r12 + 848]
 mov rsi, qword ptr [r12 + 856]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00173_n14_α
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00173_n34_α
 xchain00173_n32_β:
 jmp xchain00173_n14_α
 xchain00173_n33_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 mov rdx, qword ptr [r12 + 1056]
 mov rcx, qword ptr [r12 + 1064]
 call str_concat_d@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00173_n35_α
 xchain00173_n33_β:
 jmp xchain00173_n6_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00173_n34_α:
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 744], rax
 lea rax, [rip + xchain00173_n23_α]
 mov qword ptr [r12 + 752], rax
 jmp xchain00173_n36_α
 xchain00173_n34_β:
 jmp xchain00173_n38_α
 xchain00173_n35_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00173_n6_α
 xchain00173_n35_β:
 jmp xchain00173_n6_α
 xchain00173_n36_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 736]
 mov rdx, qword ptr [r12 + 744]
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00173_n38_α
 xchain00173_n36_β:
 jmp xchain00173_n38_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00173_n37_α:
 jmp qword ptr [r12 + 752]
 xchain00173_n37_β:
 jmp xchain00173_n38_α
# IR_VAR_REF
 xchain00173_n38_α:
 lea rdi, [r12 + 1312]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain00173_n39_α
 xchain00173_n38_β:
 jmp xchain00173_n14_α
# IR_VAR
 xchain00173_n39_α:
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 680], rax
 jmp xchain00173_n40_α
 xchain00173_n39_β:
 jmp xchain00173_n14_α
# IR_SUBSCRIPT x[i] variable
 xchain00173_n40_α:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00173_n14_α
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00173_n41_α
 xchain00173_n40_β:
 jmp xchain00173_n14_α
# IR_DEREF variable -> value
 xchain00173_n41_α:
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00173_n14_α
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00173_n42_α
 xchain00173_n41_β:
 jmp xchain00173_n14_α
# IR_UNOP
 xchain00173_n42_α:
 mov eax, dword ptr [r12 + 704]
 cmp eax, 99
 je xchain00173_n14_α
 cmp eax, 0
 je xchain00173_n14_α
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 648], rax
 jmp xchain00173_n43_α
 xchain00173_n42_β:
 jmp xchain00173_n14_α
 xchain00173_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00173_n44_α
 xchain00173_n43_β:
 jmp xchain00173_n14_α
# IR_VAR
 xchain00173_n44_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 600], rax
 jmp xchain00173_n45_α
 xchain00173_n44_β:
 jmp xchain00173_n46_α
 xchain00173_n45_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+576]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn851: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn851]
 lea rsi, [r12 + 576]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain00173_n46_α
 jmp xchain00173_n47_α
 xchain00173_n45_β:
 jmp xchain00173_n46_α
# IR_VAR
 xchain00173_n46_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 536], rax
 jmp xchain00173_n48_α
 xchain00173_n46_β:
 jmp xchain00173_n14_α
# IR_LIT_STRING
 xchain00173_n47_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx00186_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00173_n49_α
 xchain00173_n47_β:
 jmp xchain00173_n46_α
.Lx00186_0:
 .quad .Lx00186_0_s
.Lx00186_0_s:
 .string "list"
# IR_LIST_BANG
 xchain00173_n48_α:
 mov qword ptr [r12 + 512], 0
.Lx00187_0:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 512]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp rax, 99
 je xchain00173_n14_α
 jmp xchain00173_n50_α
 xchain00173_n48_β:
 inc qword ptr [r12 + 512]
 jmp .Lx00187_0
 xchain00173_n49_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00173_n46_α
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00173_n51_α
 xchain00173_n49_β:
 jmp xchain00173_n46_α
 xchain00173_n50_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00173_n52_α
 xchain00173_n50_β:
 jmp xchain00173_n14_α
# IR_VAR
 xchain00173_n51_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00173_n53_α
 xchain00173_n51_β:
 jmp xchain00173_n54_α
# IR_VAR
 xchain00173_n52_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00173_n55_α
 xchain00173_n52_β:
 jmp xchain00173_n56_α
# IR_VAR
 xchain00173_n53_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 328], rax
 jmp xchain00173_n57_α
 xchain00173_n53_β:
 jmp xchain00173_n54_α
# IR_KEYWORD_null
 xchain00173_n54_α:
 mov qword ptr [r12 + 240], 0
 mov qword ptr [r12 + 248], 0
 jmp xchain00173_n58_α
 xchain00173_n54_β:
 jmp xchain00173_n14_α
# IR_VAR
 xchain00173_n55_α:
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 472], rax
 jmp xchain00173_n59_α
 xchain00173_n55_β:
 jmp xchain00173_n56_α
# IR_KEYWORD_null
 xchain00173_n56_α:
 mov qword ptr [r12 + 384], 0
 mov qword ptr [r12 + 392], 0
 jmp xchain00173_n60_α
 xchain00173_n56_β:
 jmp xchain00173_n48_β
 xchain00173_n57_α:
# BOX IR_CALL member(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn868: .string "member"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn868]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain00173_n54_α
 jmp xchain00173_n14_α
 xchain00173_n57_β:
 jmp xchain00173_n54_α
# IR_VAR
 xchain00173_n58_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 232], rax
 jmp xchain00173_n61_α
 xchain00173_n58_β:
 jmp proc_successor_ω
 xchain00173_n59_α:
# BOX IR_CALL member(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn872: .string "member"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn872]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00173_n56_α
 jmp xchain00173_n48_β
 xchain00173_n59_β:
 jmp xchain00173_n56_α
 xchain00173_n60_α:
 jmp xchain00173_n62_α
xchain00173_n60_β:
 jmp xchain00173_n14_α
# IR_RETURN
 xchain00173_n61_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_successor_γ
# IR_VAR
 xchain00173_n62_α:
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 376], rax
 jmp xchain00173_n63_α
 xchain00173_n62_β:
 jmp proc_successor_ω
# IR_RETURN
 xchain00173_n63_α:
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 2240], rax
 pop rsi
proc_crack_α_body:
# IR_VAR_REF
 xchain00188_n0_α:
 lea rdi, [rbx + 144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain00188_n1_α
 xchain00188_n0_β:
 jmp xchain00188_n3_α
# IR_NULLTEST_VAR
 xchain00188_n1_α:
 mov eax, dword ptr [r12 + 2176]
 cmp eax, 99
 je xchain00188_n3_α
 mov rdi, qword ptr [r12 + 2176]
 mov rsi, qword ptr [r12 + 2184]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00188_n3_α
 cmp eax, 0
 jne xchain00188_n3_α
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 2200], rax
 jmp xchain00188_n2_α
 xchain00188_n1_β:
 jmp xchain00188_n3_α
# IR_LIT_INTEGER
 xchain00188_n2_α:
 mov qword ptr [r12 + 2224], 6
 mov rax, qword ptr [rip + .Lx00189_0]
 mov qword ptr [r12 + 2232], rax
 jmp xchain00188_n4_α
 xchain00188_n2_β:
 jmp xchain00188_n3_α
.Lx00189_0:
 .quad 1
# IR_VAR
 xchain00188_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 2096], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 2104], rax
 jmp xchain00188_n5_α
 xchain00188_n3_β:
 jmp xchain00188_n6_α
# IR_ASSIGN_VAR
 xchain00188_n4_α:
 mov rdi, qword ptr [r12 + 2192]
 mov rsi, qword ptr [r12 + 2200]
 mov rdx, qword ptr [r12 + 2224]
 mov rcx, qword ptr [r12 + 2232]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00188_n3_α
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 jmp xchain00188_n7_α
 xchain00188_n4_β:
 jmp xchain00188_n3_α
# IR_GEN_SCAN
 xchain00188_n5_α:
 mov rdi, qword ptr [r12 + 2096]
 mov rsi, qword ptr [r12 + 2104]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00188_n8_α
 xchain00188_n5_β:
 jmp xchain00188_n6_α
# IR_VAR
 xchain00188_n6_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00188_n9_α
 xchain00188_n6_β:
 jmp proc_crack_ω
 xchain00188_n7_α:
# BOX IR_CALL crec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn890: .string "crec"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn890]
 lea rsi, [r12 + 2176]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 cmp eax, 99
 je xchain00188_n3_α
 jmp xchain00188_n10_α
 xchain00188_n7_β:
 jmp xchain00188_n3_α
# IR_VAR
 xchain00188_n8_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 jmp xchain00188_n11_α
 xchain00188_n8_β:
 jmp xchain00188_n12_α
# IR_RETURN
 xchain00188_n9_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_crack_γ
# IR_ASSIGN gva
 xchain00188_n10_α:
 mov rax, qword ptr [r12 + 2160]
 mov rdx, qword ptr [r12 + 2168]
 mov qword ptr [rbx + 128], rax
 mov qword ptr [rbx + 136], rdx
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain00188_n13_α
 xchain00188_n10_β:
 jmp xchain00188_n3_α
# IR_FIELD_GET lv
 xchain00188_n11_α:
 mov rdi, qword ptr [rip + .Lx00190_0]
 mov rsi, qword ptr [r12 + 2016]
 mov rdx, qword ptr [r12 + 2024]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00188_n12_α
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain00188_n14_α
 xchain00188_n11_β:
 jmp xchain00188_n12_α
.Lx00190_0:
 .quad .Lx00190_0_s
.Lx00190_0_s:
 .string "code"
# IR_LIT_INTEGER
 xchain00188_n12_α:
 mov qword ptr [r12 + 1984], 6
 mov rax, qword ptr [rip + .Lx00191_0]
 mov qword ptr [r12 + 1992], rax
 jmp xchain00188_n15_α
 xchain00188_n12_β:
 jmp xchain00188_n18_α
.Lx00191_0:
 .quad 4
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00188_n13_α:
 mov rax, qword ptr [r12 + 2144]
 mov qword ptr [r12 + 2112], rax
 mov rax, qword ptr [r12 + 2152]
 mov qword ptr [r12 + 2120], rax
 lea rax, [rip + xchain00188_n3_α]
 mov qword ptr [r12 + 2128], rax
 jmp xchain00188_n3_α
 xchain00188_n13_β:
 jmp xchain00188_n3_α
# IR_LIT_INTEGER
 xchain00188_n14_α:
 mov qword ptr [r12 + 2080], 6
 mov rax, qword ptr [rip + .Lx00192_0]
 mov qword ptr [r12 + 2088], rax
 jmp xchain00188_n17_α
 xchain00188_n14_β:
 jmp xchain00188_n12_α
.Lx00192_0:
 .quad 4
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00188_n15_α:
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00188_n18_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00188_n18_α
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
 jmp xchain00188_n18_α
 xchain00188_n15_β:
 mov r14, qword ptr [r12 + 1968]
 jmp xchain00188_n18_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00188_n16_α:
 jmp qword ptr [r12 + 2128]
 xchain00188_n16_β:
 jmp xchain00188_n3_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00188_n17_α:
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00188_n12_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00188_n12_α
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
 jmp xchain00188_n19_α
 xchain00188_n17_β:
 mov r14, qword ptr [r12 + 2064]
 jmp xchain00188_n12_α
# IR_LIT_INTEGER
 xchain00188_n18_α:
 mov qword ptr [r12 + 1936], 6
 mov rax, qword ptr [rip + .Lx00193_0]
 mov qword ptr [r12 + 1944], rax
 jmp xchain00188_n20_α
 xchain00188_n18_β:
 jmp xchain00188_n22_α
.Lx00193_0:
 .quad 7
# IR_ASSIGN_VAR
 xchain00188_n19_α:
 mov rdi, qword ptr [r12 + 2000]
 mov rsi, qword ptr [r12 + 2008]
 mov rdx, qword ptr [r12 + 2048]
 mov rcx, qword ptr [r12 + 2056]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00188_n12_α
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 jmp xchain00188_n12_α
 xchain00188_n19_β:
 jmp xchain00188_n12_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00188_n20_α:
 mov rax, 7
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00188_n22_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00188_n22_α
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
 jmp xchain00188_n21_α
 xchain00188_n20_β:
 mov r14, qword ptr [r12 + 1920]
 jmp xchain00188_n22_α
 xchain00188_n21_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1904] -> [zr+1888]
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1896], rax
  .section .rodata
  .Lrkfn910: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn910]
 lea rsi, [r12 + 1888]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 cmp eax, 99
 je xchain00188_n22_α
 jmp xchain00188_n23_α
 xchain00188_n21_β:
 jmp xchain00188_n22_α
# IR_LIT_INTEGER
 xchain00188_n22_α:
 mov qword ptr [r12 + 1824], 6
 mov rax, qword ptr [rip + .Lx00194_0]
 mov qword ptr [r12 + 1832], rax
 jmp xchain00188_n24_α
 xchain00188_n22_β:
 jmp xchain00188_n27_α
.Lx00194_0:
 .quad 7
 xchain00188_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1872]
 mov rdx, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 jmp xchain00188_n25_α
 xchain00188_n23_β:
 jmp xchain00188_n22_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00188_n24_α:
 mov rax, 7
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00188_n27_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00188_n27_α
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
 jmp xchain00188_n26_α
 xchain00188_n24_β:
 mov r14, qword ptr [r12 + 1808]
 jmp xchain00188_n27_α
 xchain00188_n25_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1856]
 mov rdx, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 jmp xchain00188_n22_α
 xchain00188_n25_β:
 jmp xchain00188_n22_α
 xchain00188_n26_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1776]
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1784], rax
  .section .rodata
  .Lrkfn917: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn917]
 lea rsi, [r12 + 1776]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 cmp eax, 99
 je xchain00188_n27_α
 jmp xchain00188_n28_α
 xchain00188_n26_β:
 jmp xchain00188_n27_α
# IR_VAR
 xchain00188_n27_α:
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00188_n29_α
 xchain00188_n27_β:
 jmp xchain00188_n30_α
 xchain00188_n28_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1760]
 mov rdx, qword ptr [r12 + 1768]
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain00188_n31_α
 xchain00188_n28_β:
 jmp xchain00188_n27_α
# IR_LIT_INTEGER
 xchain00188_n29_α:
 mov qword ptr [r12 + 1568], 6
 mov rax, qword ptr [rip + .Lx00195_0]
 mov qword ptr [r12 + 1576], rax
 jmp xchain00188_n32_α
 xchain00188_n29_β:
 jmp xchain00188_n30_α
.Lx00195_0:
 .quad 4
# IR_VAR
 xchain00188_n30_α:
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00188_n33_α
 xchain00188_n30_β:
 jmp xchain00188_n34_α
 xchain00188_n31_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1744]
 mov rdx, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain00188_n27_α
 xchain00188_n31_β:
 jmp xchain00188_n27_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00188_n32_α:
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00188_n30_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00188_n30_α
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
 jmp xchain00188_n35_α
 xchain00188_n32_β:
 mov r14, qword ptr [r12 + 1552]
 jmp xchain00188_n30_α
# IR_VAR
 xchain00188_n33_α:
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 1416], rax
 jmp xchain00188_n36_α
 xchain00188_n33_β:
 jmp xchain00188_n34_α
# IR_VAR
 xchain00188_n34_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain00188_n37_α
 xchain00188_n34_β:
 jmp xchain00188_n38_α
# IR_LIT_INTEGER
 xchain00188_n35_α:
 mov qword ptr [r12 + 1584], 6
 mov rax, qword ptr [rip + .Lx00196_0]
 mov qword ptr [r12 + 1592], rax
 jmp xchain00188_n39_α
 xchain00188_n35_β:
 jmp xchain00188_n30_α
.Lx00196_0:
 .quad 5000
 xchain00188_n36_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 100
 je .Lx00197_0
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 100
 je .Lx00197_0
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 6
 jne .Lx00197_2
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 6
 jne .Lx00197_2
.Lx00197_1:
 mov rax, qword ptr [r12 + 2328]
 mov rcx, qword ptr [r12 + 2296]
 add rax, rcx
 mov qword ptr [r12 + 1376], 6
 mov qword ptr [r12 + 1384], rax
 jmp xchain00188_n40_α
.Lx00197_0:
 mov rdi, qword ptr [r12 + 2320]
 mov rsi, qword ptr [r12 + 2328]
 mov rdx, qword ptr [r12 + 2288]
 mov rcx, qword ptr [r12 + 2296]
 mov r8d, 0
 lea r9, [r12 + 1376]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00197_3
.Lx00197_2:
 mov rdi, qword ptr [r12 + 2320]
 mov rsi, qword ptr [r12 + 2328]
 mov rdx, qword ptr [r12 + 2288]
 mov rcx, qword ptr [r12 + 2296]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00188_n34_α
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
.Lx00197_3:
 jmp xchain00188_n40_α
 xchain00188_n36_β:
 jmp xchain00188_n34_α
# IR_FIELD_GET lv
 xchain00188_n37_α:
 mov rdi, qword ptr [rip + .Lx00198_0]
 mov rsi, qword ptr [r12 + 1296]
 mov rdx, qword ptr [r12 + 1304]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00188_n38_α
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain00188_n41_α
 xchain00188_n37_β:
 jmp xchain00188_n38_α
.Lx00198_0:
 .quad .Lx00198_0_s
.Lx00198_0_s:
 .string "rev"
# IR_VAR
 xchain00188_n38_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain00188_n42_α
 xchain00188_n38_β:
 jmp xchain00188_n43_α
 xchain00188_n39_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1536]
 cmp eax, 100
 je .Lx00199_0
 mov eax, dword ptr [r12 + 1584]
 cmp eax, 100
 je .Lx00199_0
 mov eax, dword ptr [r12 + 1536]
 cmp eax, 6
 jne .Lx00199_2
 mov eax, dword ptr [r12 + 1584]
 cmp eax, 6
 jne .Lx00199_2
.Lx00199_1:
 mov rax, qword ptr [r12 + 1544]
 mov rcx, qword ptr [r12 + 1592]
 sub rax, rcx
 mov qword ptr [r12 + 1520], 6
 mov qword ptr [r12 + 1528], rax
 jmp xchain00188_n44_α
.Lx00199_0:
 mov rdi, qword ptr [r12 + 1536]
 mov rsi, qword ptr [r12 + 1544]
 mov rdx, qword ptr [r12 + 1584]
 mov rcx, qword ptr [r12 + 1592]
 mov r8d, 1
 lea r9, [r12 + 1520]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00199_3
.Lx00199_2:
 mov rdi, qword ptr [r12 + 1536]
 mov rsi, qword ptr [r12 + 1544]
 mov rdx, qword ptr [r12 + 1584]
 mov rcx, qword ptr [r12 + 1592]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00188_n30_α
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
.Lx00199_3:
 jmp xchain00188_n44_α
 xchain00188_n39_β:
 jmp xchain00188_n30_α
# IR_VAR
 xchain00188_n40_α:
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00188_n45_α
 xchain00188_n40_β:
 jmp xchain00188_n34_α
# IR_KEYWORD_null
 xchain00188_n41_α:
 mov qword ptr [r12 + 1328], 0
 mov qword ptr [r12 + 1336], 0
 jmp xchain00188_n46_α
 xchain00188_n41_β:
 jmp xchain00188_n38_α
# IR_FIELD_GET lv
 xchain00188_n42_α:
 mov rdi, qword ptr [rip + .Lx00200_0]
 mov rsi, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00188_n43_α
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00188_n47_α
 xchain00188_n42_β:
 jmp xchain00188_n43_α
.Lx00200_0:
 .quad .Lx00200_0_s
.Lx00200_0_s:
 .string "key"
# IR_VAR
 xchain00188_n43_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00188_n48_α
 xchain00188_n43_β:
 jmp xchain00188_n49_α
 xchain00188_n44_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2304]
 cmp eax, 100
 je .Lx00201_0
 mov eax, dword ptr [r12 + 1520]
 cmp eax, 100
 je .Lx00201_0
 mov eax, dword ptr [r12 + 2304]
 cmp eax, 6
 jne .Lx00201_2
 mov eax, dword ptr [r12 + 1520]
 cmp eax, 6
 jne .Lx00201_2
.Lx00201_1:
 mov rax, qword ptr [r12 + 2312]
 mov rcx, qword ptr [r12 + 1528]
 add rax, rcx
 mov qword ptr [r12 + 1488], 6
 mov qword ptr [r12 + 1496], rax
 jmp xchain00188_n50_α
.Lx00201_0:
 mov rdi, qword ptr [r12 + 2304]
 mov rsi, qword ptr [r12 + 2312]
 mov rdx, qword ptr [r12 + 1520]
 mov rcx, qword ptr [r12 + 1528]
 mov r8d, 0
 lea r9, [r12 + 1488]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00201_3
.Lx00201_2:
 mov rdi, qword ptr [r12 + 2304]
 mov rsi, qword ptr [r12 + 2312]
 mov rdx, qword ptr [r12 + 1520]
 mov rcx, qword ptr [r12 + 1528]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00188_n30_α
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
.Lx00201_3:
 jmp xchain00188_n50_α
 xchain00188_n44_β:
 jmp xchain00188_n30_α
# IR_VAR
 xchain00188_n45_α:
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 1464], rax
 jmp xchain00188_n51_α
 xchain00188_n45_β:
 jmp xchain00188_n34_α
# IR_ASSIGN_VAR
 xchain00188_n46_α:
 mov rdi, qword ptr [r12 + 1280]
 mov rsi, qword ptr [r12 + 1288]
 mov rdx, qword ptr [r12 + 1328]
 mov rcx, qword ptr [r12 + 1336]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00188_n38_α
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain00188_n52_α
 xchain00188_n46_β:
 jmp xchain00188_n38_α
# IR_VAR
 xchain00188_n47_α:
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 968], rax
 jmp xchain00188_n53_α
 xchain00188_n47_β:
 jmp xchain00188_n43_α
# IR_FIELD_GET lv
 xchain00188_n48_α:
 mov rdi, qword ptr [rip + .Lx00202_0]
 mov rsi, qword ptr [r12 + 784]
 mov rdx, qword ptr [r12 + 792]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00188_n49_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00188_n54_α
 xchain00188_n48_β:
 jmp xchain00188_n49_α
.Lx00202_0:
 .quad .Lx00202_0_s
.Lx00202_0_s:
 .string "x1"
# IR_VAR
 xchain00188_n49_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00188_n55_α
 xchain00188_n49_β:
 jmp xchain00188_n56_α
 xchain00188_n50_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1488]
 mov rdx, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain00188_n57_α
 xchain00188_n50_β:
 jmp xchain00188_n30_α
 xchain00188_n51_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2304]
 cmp eax, 100
 je .Lx00203_0
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 100
 je .Lx00203_0
 mov eax, dword ptr [r12 + 2304]
 cmp eax, 6
 jne .Lx00203_2
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 6
 jne .Lx00203_2
.Lx00203_1:
 mov rax, qword ptr [r12 + 2312]
 mov rcx, qword ptr [r12 + 2280]
 add rax, rcx
 mov qword ptr [r12 + 1424], 6
 mov qword ptr [r12 + 1432], rax
 jmp xchain00188_n58_α
.Lx00203_0:
 mov rdi, qword ptr [r12 + 2304]
 mov rsi, qword ptr [r12 + 2312]
 mov rdx, qword ptr [r12 + 2272]
 mov rcx, qword ptr [r12 + 2280]
 mov r8d, 0
 lea r9, [r12 + 1424]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00203_3
.Lx00203_2:
 mov rdi, qword ptr [r12 + 2304]
 mov rsi, qword ptr [r12 + 2312]
 mov rdx, qword ptr [r12 + 2272]
 mov rcx, qword ptr [r12 + 2280]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00188_n34_α
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
.Lx00203_3:
 jmp xchain00188_n58_α
 xchain00188_n51_β:
 jmp xchain00188_n34_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00188_n52_α:
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1096], rax
 lea rax, [rip + xchain00188_n38_α]
 mov qword ptr [r12 + 1104], rax
 jmp xchain00188_n38_α
 xchain00188_n52_β:
 jmp xchain00188_n38_α
# IR_VAR
 xchain00188_n53_α:
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 984], rax
 jmp xchain00188_n60_α
 xchain00188_n53_β:
 jmp xchain00188_n43_α
# IR_VAR
 xchain00188_n54_α:
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 824], rax
 jmp xchain00188_n61_α
 xchain00188_n54_β:
 jmp xchain00188_n49_α
# IR_FIELD_GET lv
 xchain00188_n55_α:
 mov rdi, qword ptr [rip + .Lx00204_0]
 mov rsi, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00188_n56_α
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00188_n62_α
 xchain00188_n55_β:
 jmp xchain00188_n56_α
.Lx00204_0:
 .quad .Lx00204_0_s
.Lx00204_0_s:
 .string "y1"
# IR_VAR
 xchain00188_n56_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain00188_n63_α
 xchain00188_n56_β:
 jmp xchain00188_n64_α
# IR_VAR
 xchain00188_n57_α:
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 1640], rax
 jmp xchain00188_n65_α
 xchain00188_n57_β:
 jmp xchain00188_n27_α
 xchain00188_n58_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1376]
 cmp eax, 100
 je .Lx00205_0
 mov eax, dword ptr [r12 + 1424]
 cmp eax, 100
 je .Lx00205_0
 mov eax, dword ptr [r12 + 1376]
 cmp eax, 6
 jne .Lx00205_2
 mov eax, dword ptr [r12 + 1424]
 cmp eax, 6
 jne .Lx00205_2
.Lx00205_1:
 mov rax, qword ptr [r12 + 1384]
 mov rcx, qword ptr [r12 + 1432]
 cmp rax, rcx
 jle xchain00188_n34_α
 mov rcx, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1360], rcx
 mov rcx, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1368], rcx
 jmp xchain00188_n66_α
.Lx00205_0:
 mov rdi, qword ptr [r12 + 1376]
 mov rsi, qword ptr [r12 + 1384]
 mov rdx, qword ptr [r12 + 1424]
 mov rcx, qword ptr [r12 + 1432]
 mov r8d, 7
 lea r9, [r12 + 1360]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00205_1
 cmp eax, 1
 je xchain00188_n34_α
 jmp xchain00188_n66_α
.Lx00205_2:
 mov rdi, qword ptr [r12 + 1376]
 mov rsi, qword ptr [r12 + 1384]
 mov rdx, qword ptr [r12 + 1424]
 mov rcx, qword ptr [r12 + 1432]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00188_n34_α
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1368], rax
 jmp xchain00188_n66_α
 xchain00188_n58_β:
 jmp xchain00188_n34_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00188_n59_α:
 jmp qword ptr [r12 + 1104]
 xchain00188_n59_β:
 jmp xchain00188_n38_α
 xchain00188_n60_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 100
 je .Lx00206_0
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 100
 je .Lx00206_0
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 6
 jne .Lx00206_2
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 6
 jne .Lx00206_2
.Lx00206_1:
 mov rax, qword ptr [r12 + 2328]
 mov rcx, qword ptr [r12 + 2296]
 add rax, rcx
 mov qword ptr [r12 + 944], 6
 mov qword ptr [r12 + 952], rax
 jmp xchain00188_n67_α
.Lx00206_0:
 mov rdi, qword ptr [r12 + 2320]
 mov rsi, qword ptr [r12 + 2328]
 mov rdx, qword ptr [r12 + 2288]
 mov rcx, qword ptr [r12 + 2296]
 mov r8d, 0
 lea r9, [r12 + 944]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00206_3
.Lx00206_2:
 mov rdi, qword ptr [r12 + 2320]
 mov rsi, qword ptr [r12 + 2328]
 mov rdx, qword ptr [r12 + 2288]
 mov rcx, qword ptr [r12 + 2296]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00188_n43_α
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
.Lx00206_3:
 jmp xchain00188_n67_α
 xchain00188_n60_β:
 jmp xchain00188_n43_α
# IR_ASSIGN_VAR
 xchain00188_n61_α:
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 mov rdx, qword ptr [r12 + 816]
 mov rcx, qword ptr [r12 + 824]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00188_n49_α
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00188_n49_α
 xchain00188_n61_β:
 jmp xchain00188_n49_α
# IR_VAR
 xchain00188_n62_α:
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 760], rax
 jmp xchain00188_n68_α
 xchain00188_n62_β:
 jmp xchain00188_n56_α
# IR_FIELD_GET lv
 xchain00188_n63_α:
 mov rdi, qword ptr [rip + .Lx00207_0]
 mov rsi, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00188_n64_α
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00188_n69_α
 xchain00188_n63_β:
 jmp xchain00188_n64_α
.Lx00207_0:
 .quad .Lx00207_0_s
.Lx00207_0_s:
 .string "x2"
# IR_VAR
 xchain00188_n64_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00188_n70_α
 xchain00188_n64_β:
 jmp xchain00188_n71_α
# IR_LIT_INTEGER
 xchain00188_n65_α:
 mov qword ptr [r12 + 1696], 6
 mov rax, qword ptr [rip + .Lx00208_0]
 mov qword ptr [r12 + 1704], rax
 jmp xchain00188_n72_α
 xchain00188_n65_β:
 jmp xchain00188_n27_α
.Lx00208_0:
 .quad 4
# IR_VAR
 xchain00188_n66_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain00188_n73_α
 xchain00188_n66_β:
 jmp xchain00188_n74_α
# IR_LIT_INTEGER
 xchain00188_n67_α:
 mov qword ptr [r12 + 992], 6
 mov rax, qword ptr [rip + .Lx00209_0]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00188_n75_α
 xchain00188_n67_β:
 jmp xchain00188_n43_α
.Lx00209_0:
 .quad 8
# IR_ASSIGN_VAR
 xchain00188_n68_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00188_n56_α
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00188_n56_α
 xchain00188_n68_β:
 jmp xchain00188_n56_α
# IR_VAR
 xchain00188_n69_α:
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 696], rax
 jmp xchain00188_n76_α
 xchain00188_n69_β:
 jmp xchain00188_n64_α
# IR_FIELD_GET lv
 xchain00188_n70_α:
 mov rdi, qword ptr [rip + .Lx00210_0]
 mov rsi, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00188_n71_α
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00188_n77_α
 xchain00188_n70_β:
 jmp xchain00188_n71_α
.Lx00210_0:
 .quad .Lx00210_0_s
.Lx00210_0_s:
 .string "y2"
# IR_VAR
 xchain00188_n71_α:
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 472], rax
 jmp xchain00188_n78_α
 xchain00188_n71_β:
 jmp xchain00188_n79_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00188_n72_α:
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00188_n27_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00188_n27_α
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
 jmp xchain00188_n80_α
 xchain00188_n72_β:
 mov r14, qword ptr [r12 + 1680]
 jmp xchain00188_n27_α
# IR_FIELD_GET lv
 xchain00188_n73_α:
 mov rdi, qword ptr [rip + .Lx00211_0]
 mov rsi, qword ptr [r12 + 1232]
 mov rdx, qword ptr [r12 + 1240]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00188_n74_α
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain00188_n81_α
 xchain00188_n73_β:
 jmp xchain00188_n74_α
.Lx00211_0:
 .quad .Lx00211_0_s
.Lx00211_0_s:
 .string "rev"
 xchain00188_n74_α:
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
 jmp xchain00188_n82_α
 xchain00188_n74_β:
 jmp xchain00188_n82_α
 xchain00188_n75_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+912]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 920], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+928]
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn983: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn983]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain00188_n43_α
 jmp xchain00188_n83_α
 xchain00188_n75_β:
 jmp xchain00188_n43_α
# IR_ASSIGN_VAR
 xchain00188_n76_α:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00188_n64_α
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00188_n64_α
 xchain00188_n76_β:
 jmp xchain00188_n64_α
# IR_VAR
 xchain00188_n77_α:
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 632], rax
 jmp xchain00188_n84_α
 xchain00188_n77_β:
 jmp xchain00188_n71_α
# IR_VAR
 xchain00188_n78_α:
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 488], rax
 jmp xchain00188_n85_α
 xchain00188_n78_β:
 jmp xchain00188_n79_α
# IR_VAR
 xchain00188_n79_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00188_n86_α
 xchain00188_n79_β:
 jmp xchain00188_n87_α
# IR_LIT_INTEGER
 xchain00188_n80_α:
 mov qword ptr [r12 + 1712], 6
 mov rax, qword ptr [rip + .Lx00212_0]
 mov qword ptr [r12 + 1720], rax
 jmp xchain00188_n88_α
 xchain00188_n80_β:
 jmp xchain00188_n27_α
.Lx00212_0:
 .quad 5000
# IR_LIT_INTEGER
 xchain00188_n81_α:
 mov qword ptr [r12 + 1264], 6
 mov rax, qword ptr [rip + .Lx00213_0]
 mov qword ptr [r12 + 1272], rax
 jmp xchain00188_n89_α
 xchain00188_n81_β:
 jmp xchain00188_n74_α
.Lx00213_0:
 .quad 1
 xchain00188_n82_α:
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
 jmp xchain00188_n90_α
 xchain00188_n82_β:
 jmp xchain00188_n38_α
# IR_VAR
 xchain00188_n83_α:
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 1064], rax
 jmp xchain00188_n91_α
 xchain00188_n83_β:
 jmp xchain00188_n43_α
# IR_ASSIGN_VAR
 xchain00188_n84_α:
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 mov rdx, qword ptr [r12 + 624]
 mov rcx, qword ptr [r12 + 632]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00188_n71_α
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00188_n71_α
 xchain00188_n84_β:
 jmp xchain00188_n71_α
 xchain00188_n85_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 100
 je .Lx00214_0
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 100
 je .Lx00214_0
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 6
 jne .Lx00214_2
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 6
 jne .Lx00214_2
.Lx00214_1:
 mov rax, qword ptr [r12 + 2280]
 mov rcx, qword ptr [r12 + 2296]
 sub rax, rcx
 mov qword ptr [r12 + 448], 6
 mov qword ptr [r12 + 456], rax
 jmp xchain00188_n92_α
.Lx00214_0:
 mov rdi, qword ptr [r12 + 2272]
 mov rsi, qword ptr [r12 + 2280]
 mov rdx, qword ptr [r12 + 2288]
 mov rcx, qword ptr [r12 + 2296]
 mov r8d, 1
 lea r9, [r12 + 448]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00214_3
.Lx00214_2:
 mov rdi, qword ptr [r12 + 2272]
 mov rsi, qword ptr [r12 + 2280]
 mov rdx, qword ptr [r12 + 2288]
 mov rcx, qword ptr [r12 + 2296]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00188_n79_α
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
.Lx00214_3:
 jmp xchain00188_n92_α
 xchain00188_n85_β:
 jmp xchain00188_n79_α
# IR_FIELD_GET lv
 xchain00188_n86_α:
 mov rdi, qword ptr [rip + .Lx00215_0]
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00188_n87_α
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00188_n93_α
 xchain00188_n86_β:
 jmp xchain00188_n87_α
.Lx00215_0:
 .quad .Lx00215_0_s
.Lx00215_0_s:
 .string "aindex"
# IR_GEN_SCAN
 xchain00188_n87_α:
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain00188_n6_α
 xchain00188_n87_β:
 jmp xchain00188_n6_α
 xchain00188_n88_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1664]
 cmp eax, 100
 je .Lx00216_0
 mov eax, dword ptr [r12 + 1712]
 cmp eax, 100
 je .Lx00216_0
 mov eax, dword ptr [r12 + 1664]
 cmp eax, 6
 jne .Lx00216_2
 mov eax, dword ptr [r12 + 1712]
 cmp eax, 6
 jne .Lx00216_2
.Lx00216_1:
 mov rax, qword ptr [r12 + 1672]
 mov rcx, qword ptr [r12 + 1720]
 sub rax, rcx
 mov qword ptr [r12 + 1648], 6
 mov qword ptr [r12 + 1656], rax
 jmp xchain00188_n94_α
.Lx00216_0:
 mov rdi, qword ptr [r12 + 1664]
 mov rsi, qword ptr [r12 + 1672]
 mov rdx, qword ptr [r12 + 1712]
 mov rcx, qword ptr [r12 + 1720]
 mov r8d, 1
 lea r9, [r12 + 1648]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00216_3
.Lx00216_2:
 mov rdi, qword ptr [r12 + 1664]
 mov rsi, qword ptr [r12 + 1672]
 mov rdx, qword ptr [r12 + 1712]
 mov rcx, qword ptr [r12 + 1720]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00188_n27_α
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
.Lx00216_3:
 jmp xchain00188_n94_α
 xchain00188_n88_β:
 jmp xchain00188_n27_α
# IR_ASSIGN_VAR
 xchain00188_n89_α:
 mov rdi, qword ptr [r12 + 1216]
 mov rsi, qword ptr [r12 + 1224]
 mov rdx, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1272]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00188_n74_α
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain00188_n74_α
 xchain00188_n89_β:
 jmp xchain00188_n74_α
 xchain00188_n90_α:
 jmp xchain00188_n95_α
xchain00188_n90_β:
 jmp xchain00188_n38_α
# IR_LIT_INTEGER
 xchain00188_n91_α:
 mov qword ptr [r12 + 1072], 6
 mov rax, qword ptr [rip + .Lx00217_0]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00188_n96_α
 xchain00188_n91_β:
 jmp xchain00188_n43_α
.Lx00217_0:
 .quad 7
# IR_VAR
 xchain00188_n92_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00188_n97_α
 xchain00188_n92_β:
 jmp xchain00188_n79_α
# IR_LIT_INTEGER
 xchain00188_n93_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00218_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00188_n98_α
 xchain00188_n93_β:
 jmp xchain00188_n87_α
.Lx00218_0:
 .quad 1
 xchain00188_n94_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 100
 je .Lx00219_0
 mov eax, dword ptr [r12 + 1648]
 cmp eax, 100
 je .Lx00219_0
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 6
 jne .Lx00219_2
 mov eax, dword ptr [r12 + 1648]
 cmp eax, 6
 jne .Lx00219_2
.Lx00219_1:
 mov rax, qword ptr [r12 + 2280]
 mov rcx, qword ptr [r12 + 1656]
 add rax, rcx
 mov qword ptr [r12 + 1616], 6
 mov qword ptr [r12 + 1624], rax
 jmp xchain00188_n99_α
.Lx00219_0:
 mov rdi, qword ptr [r12 + 2272]
 mov rsi, qword ptr [r12 + 2280]
 mov rdx, qword ptr [r12 + 1648]
 mov rcx, qword ptr [r12 + 1656]
 mov r8d, 0
 lea r9, [r12 + 1616]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00219_3
.Lx00219_2:
 mov rdi, qword ptr [r12 + 2272]
 mov rsi, qword ptr [r12 + 2280]
 mov rdx, qword ptr [r12 + 1648]
 mov rcx, qword ptr [r12 + 1656]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00188_n27_α
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
.Lx00219_3:
 jmp xchain00188_n99_α
 xchain00188_n94_β:
 jmp xchain00188_n27_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00188_n95_α:
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1096], rax
 lea rax, [rip + xchain00188_n38_α]
 mov qword ptr [r12 + 1104], rax
 jmp xchain00188_n38_α
 xchain00188_n95_β:
 jmp xchain00188_n38_α
 xchain00188_n96_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+1024]
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1032], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+1040]
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1048], rax
  .section .rodata
  .Lrkfn1010: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1010]
 lea rsi, [r12 + 1024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xchain00188_n43_α
 jmp xchain00188_n00052_α
 xchain00188_n96_β:
 jmp xchain00188_n43_α
# IR_VAR
 xchain00188_n97_α:
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 552], rax
 jmp xchain00188_n00001_α
 xchain00188_n97_β:
 jmp xchain00188_n79_α
# IR_LIT_INTEGER
 xchain00188_n98_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx00220_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00188_n00054_α
 xchain00188_n98_β:
 jmp xchain00188_n87_α
.Lx00220_0:
 .quad 5
 xchain00188_n99_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1616]
 mov rdx, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00188_n27_α
 xchain00188_n99_β:
 jmp xchain00188_n27_α
 xchain00188_n00052_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 896]
 mov rsi, qword ptr [r12 + 904]
 mov rdx, qword ptr [r12 + 1008]
 mov rcx, qword ptr [r12 + 1016]
 call str_concat_d@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00188_n00055_α
 xchain00188_n00052_β:
 jmp xchain00188_n43_α
# IR_VAR
 xchain00188_n00001_α:
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 568], rax
 jmp xchain00188_n00056_α
 xchain00188_n00001_β:
 jmp xchain00188_n79_α
# IR_VAR
 xchain00188_n00054_α:
 mov rax, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 312], rax
 jmp xchain00188_n00057_α
 xchain00188_n00054_β:
 jmp xchain00188_n87_α
# IR_ASSIGN_VAR
 xchain00188_n00055_α:
 mov rdi, qword ptr [r12 + 832]
 mov rsi, qword ptr [r12 + 840]
 mov rdx, qword ptr [r12 + 880]
 mov rcx, qword ptr [r12 + 888]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00188_n43_α
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00188_n43_α
 xchain00188_n00055_β:
 jmp xchain00188_n43_α
 xchain00188_n00056_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2304]
 cmp eax, 100
 je .Lx00221_0
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 100
 je .Lx00221_0
 mov eax, dword ptr [r12 + 2304]
 cmp eax, 6
 jne .Lx00221_2
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 6
 jne .Lx00221_2
.Lx00221_1:
 mov rax, qword ptr [r12 + 2312]
 mov rcx, qword ptr [r12 + 2328]
 sub rax, rcx
 mov qword ptr [r12 + 528], 6
 mov qword ptr [r12 + 536], rax
 jmp xchain00188_n00059_α
.Lx00221_0:
 mov rdi, qword ptr [r12 + 2304]
 mov rsi, qword ptr [r12 + 2312]
 mov rdx, qword ptr [r12 + 2320]
 mov rcx, qword ptr [r12 + 2328]
 mov r8d, 1
 lea r9, [r12 + 528]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00221_3
.Lx00221_2:
 mov rdi, qword ptr [r12 + 2304]
 mov rsi, qword ptr [r12 + 2312]
 mov rdx, qword ptr [r12 + 2320]
 mov rcx, qword ptr [r12 + 2328]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00188_n79_α
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
.Lx00221_3:
 jmp xchain00188_n00059_α
 xchain00188_n00056_β:
 jmp xchain00188_n79_α
# IR_KEYWORD_read
 xchain00188_n00057_α:
 mov rdi, qword ptr [rip + .Lx00222_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00188_n00061_α
 xchain00188_n00057_β:
 jmp xchain00188_n87_α
.Lx00222_0:
 .quad .Lx00222_0_s
.Lx00222_0_s:
 .string "&pi"
 xchain00188_n00059_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 512]
 cmp eax, 100
 je .Lx00223_0
 mov eax, dword ptr [r12 + 528]
 cmp eax, 100
 je .Lx00223_0
 mov eax, dword ptr [r12 + 512]
 cmp eax, 6
 jne .Lx00223_2
 mov eax, dword ptr [r12 + 528]
 cmp eax, 6
 jne .Lx00223_2
.Lx00223_1:
 mov rax, qword ptr [r12 + 520]
 mov rcx, qword ptr [r12 + 536]
 imul rax, rcx
 mov qword ptr [r12 + 496], 6
 mov qword ptr [r12 + 504], rax
 jmp xchain00188_n00002_α
.Lx00223_0:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 2
 lea r9, [r12 + 496]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00223_3
.Lx00223_2:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00188_n79_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
.Lx00223_3:
 jmp xchain00188_n00002_α
 xchain00188_n00059_β:
 jmp xchain00188_n79_α
 xchain00188_n00061_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 100
 je .Lx00224_0
 mov eax, dword ptr [r12 + 320]
 cmp eax, 100
 je .Lx00224_0
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 6
 jne .Lx00224_2
 mov eax, dword ptr [r12 + 320]
 cmp eax, 6
 jne .Lx00224_2
.Lx00224_1:
 mov rax, qword ptr [r12 + 2264]
 mov rcx, qword ptr [r12 + 328]
 cqo
 idiv rcx
 mov qword ptr [r12 + 288], 6
 mov qword ptr [r12 + 296], rax
 jmp xchain00188_n00063_α
.Lx00224_0:
 mov rdi, qword ptr [r12 + 2256]
 mov rsi, qword ptr [r12 + 2264]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 3
 lea r9, [r12 + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00224_3
.Lx00224_2:
 mov rdi, qword ptr [r12 + 2256]
 mov rsi, qword ptr [r12 + 2264]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00188_n87_α
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
.Lx00224_3:
 jmp xchain00188_n00063_α
 xchain00188_n00061_β:
 jmp xchain00188_n87_α
 xchain00188_n00002_α:
# BOX IR_CALL atan(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+432]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn1026: .string "atan"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1026]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00188_n79_α
 jmp xchain00188_n00064_α
 xchain00188_n00002_β:
 jmp xchain00188_n79_α
# IR_LIT_REAL
 xchain00188_n00063_α:
 mov qword ptr [r12 + 352], 7
 mov rax, qword ptr [rip + .Lx00225_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00188_n00065_α
 xchain00188_n00063_β:
 jmp xchain00188_n87_α
.Lx00225_0:
 .quad 4612248968380809216
 xchain00188_n00064_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00188_n79_α
 xchain00188_n00064_β:
 jmp xchain00188_n79_α
 xchain00188_n00065_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00188_n87_α
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00188_n00066_α
 xchain00188_n00065_β:
 jmp xchain00188_n87_α
 xchain00188_n00066_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00188_n87_α
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00188_n00067_α
 xchain00188_n00066_β:
 jmp xchain00188_n87_α
 xchain00188_n00067_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+224]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn1032: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1032]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain00188_n87_α
 jmp xchain00188_n00003_α
 xchain00188_n00067_β:
 jmp xchain00188_n87_α
# IR_LIT_INTEGER
 xchain00188_n00003_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00226_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00188_n00068_α
 xchain00188_n00003_β:
 jmp xchain00188_n87_α
.Lx00226_0:
 .quad 5
 xchain00188_n00068_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 208]
 cmp eax, 100
 je .Lx00227_0
 mov eax, dword ptr [r12 + 368]
 cmp eax, 100
 je .Lx00227_0
 mov eax, dword ptr [r12 + 208]
 cmp eax, 6
 jne .Lx00227_2
 mov eax, dword ptr [r12 + 368]
 cmp eax, 6
 jne .Lx00227_2
.Lx00227_1:
 mov rax, qword ptr [r12 + 216]
 mov rcx, qword ptr [r12 + 376]
 cqo
 idiv rcx
 mov rax, rdx
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
 jmp xchain00188_n00069_α
.Lx00227_0:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 mov r8d, 4
 lea r9, [r12 + 192]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00227_3
.Lx00227_2:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 mov r8d, 4
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00188_n87_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
.Lx00227_3:
 jmp xchain00188_n00069_α
 xchain00188_n00068_β:
 jmp xchain00188_n87_α
 xchain00188_n00069_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 176]
 cmp eax, 100
 je .Lx00228_0
 mov eax, dword ptr [r12 + 192]
 cmp eax, 100
 je .Lx00228_0
 mov eax, dword ptr [r12 + 176]
 cmp eax, 6
 jne .Lx00228_2
 mov eax, dword ptr [r12 + 192]
 cmp eax, 6
 jne .Lx00228_2
.Lx00228_1:
 mov rax, qword ptr [r12 + 184]
 mov rcx, qword ptr [r12 + 200]
 add rax, rcx
 mov qword ptr [r12 + 160], 6
 mov qword ptr [r12 + 168], rax
 jmp xchain00188_n00070_α
.Lx00228_0:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 0
 lea r9, [r12 + 160]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00228_3
.Lx00228_2:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00188_n87_α
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
.Lx00228_3:
 jmp xchain00188_n00070_α
 xchain00188_n00069_β:
 jmp xchain00188_n87_α
# IR_ASSIGN_VAR
 xchain00188_n00070_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00188_n87_α
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00188_n00071_α
 xchain00188_n00070_β:
 jmp xchain00188_n87_α
 xchain00188_n00071_α:
 jmp xchain00188_n00073_α
xchain00188_n00071_β:
 jmp xchain00188_n87_α
# IR_GEN_SCAN
 xchain00188_n00073_α:
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain00188_n6_α
 xchain00188_n00073_β:
 jmp xchain00188_n6_α
proc_crack_β:
jmp proc_crack_ω
proc_crack_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_options_α
proc_options_α:
#=======================================================================================================================
    .global proc_options_α
    .global proc_options_β
    .global proc_options_γ
    .global proc_options_ω
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
 mov qword ptr [r12 + 2368], rax
 pop rsi
proc_options_α_body:
# IR_VAR_REF
 xchain00229_n0_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 jmp xchain00229_n1_α
 xchain00229_n0_β:
 jmp xchain00229_n3_α
# IR_NULLTEST_VAR
 xchain00229_n1_α:
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 99
 je xchain00229_n3_α
 mov rdi, qword ptr [r12 + 2272]
 mov rsi, qword ptr [r12 + 2280]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00229_n3_α
 cmp eax, 0
 jne xchain00229_n3_α
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 2288], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2296], rax
 jmp xchain00229_n2_α
 xchain00229_n1_β:
 jmp xchain00229_n3_α
# IR_LIT_CHARSET
 xchain00229_n2_α:
 mov qword ptr [r12 + 2352], 1
 mov dword ptr [r12 + 2356], -1
 mov rax, qword ptr [rip + .Lx00230_0]
 mov qword ptr [r12 + 2360], rax
 jmp xchain00229_n4_α
 xchain00229_n2_β:
 jmp xchain00229_n3_α
.Lx00230_0:
 .quad .Lx00230_0_s
.Lx00230_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00229_n3_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1046: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1046]
 lea rsi, [r12 + 2272]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 cmp eax, 99
 je xchain00229_n6_α
 jmp xchain00229_n5_α
 xchain00229_n3_β:
 jmp xchain00229_n6_α
 xchain00229_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2352] -> [zr+2336]
 mov rax, qword ptr [r12 + 2352]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 2360]
 mov qword ptr [r12 + 2344], rax
  .section .rodata
  .Lrkfn1048: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1048]
 lea rsi, [r12 + 2336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 cmp eax, 99
 je xchain00229_n3_α
 jmp xchain00229_n7_α
 xchain00229_n4_β:
 jmp xchain00229_n3_α
 xchain00229_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2256]
 mov rdx, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain00229_n6_α
 xchain00229_n5_β:
 jmp xchain00229_n6_α
# IR_MAKE_LIST
 xchain00229_n6_α:
 lea rdi, [r12 + 2240]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 jmp xchain00229_n8_α
 xchain00229_n6_β:
 jmp xchain00229_n9_α
# IR_ASSIGN_VAR
 xchain00229_n7_α:
 mov rdi, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 mov rdx, qword ptr [r12 + 2320]
 mov rcx, qword ptr [r12 + 2328]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00229_n3_α
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 jmp xchain00229_n3_α
 xchain00229_n7_β:
 jmp xchain00229_n3_α
 xchain00229_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2224]
 mov rdx, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 jmp xchain00229_n9_α
 xchain00229_n8_β:
 jmp xchain00229_n9_α
# IR_VAR
 xchain00229_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00229_n10_α
 xchain00229_n9_β:
 jmp xchain00229_n11_α
 xchain00229_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn1057: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1057]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain00229_n11_α
 jmp xchain00229_n12_α
 xchain00229_n10_β:
 jmp xchain00229_n11_α
# IR_VAR
 xchain00229_n11_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00229_n13_α
 xchain00229_n11_β:
 jmp xchain00229_n14_α
 xchain00229_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00229_n15_α
 xchain00229_n12_β:
 jmp xchain00229_n11_α
# IR_VAR
 xchain00229_n13_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 168], rax
 jmp xchain00229_n16_α
 xchain00229_n13_β:
 jmp xchain00229_n14_α
# IR_VAR
 xchain00229_n14_α:
 mov rax, qword ptr [r12 + 2384]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 56], rax
 jmp xchain00229_n17_α
 xchain00229_n14_β:
 jmp proc_options_ω
# IR_VAR
 xchain00229_n15_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2200], rax
 jmp xchain00229_n18_α
 xchain00229_n15_β:
 jmp xchain00229_n9_α
 xchain00229_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+144]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn1068: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1068]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00229_n14_α
 jmp xchain00229_n19_α
 xchain00229_n16_β:
 jmp xchain00229_n14_α
# IR_RETURN
 xchain00229_n17_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_options_γ
# IR_GEN_SCAN
 xchain00229_n18_α:
 mov rdi, qword ptr [r12 + 2192]
 mov rsi, qword ptr [r12 + 2200]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00229_n20_α
 xchain00229_n18_β:
 jmp xchain00229_n9_α
 xchain00229_n19_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+80]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
# marshal arg1 = producer-box slot [zr+128] -> [zr+96]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn1073: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1073]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00229_n14_α
 jmp xchain00229_n11_α
 xchain00229_n19_β:
 jmp xchain00229_n14_α
# IR_LIT_STRING
 xchain00229_n20_α:
 mov qword ptr [r12 + 2176], 1
 mov rax, qword ptr [rip + .Lx00231_0]
 mov qword ptr [r12 + 2184], rax
 jmp xchain00229_n21_α
 xchain00229_n20_β:
 jmp xchain00229_n23_α
.Lx00231_0:
 .quad .Lx00231_0_s
.Lx00231_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00229_n21_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00229_n23_α
 mov rdi, qword ptr [rip + .Lx00232_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00229_n23_α
 mov qword ptr [r12 + 2144], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 2152], rax
 jmp xchain00229_n22_α
 xchain00229_n21_β:
 jmp xchain00229_n23_α
.Lx00232_0:
 .quad .Lx00232_0_s
.Lx00232_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00229_n22_α:
 mov rax, qword ptr [r12 + 2152]
 cmp rax, 1
 jge .Lx00233_0
 add rax, r15
 add rax, 1
.Lx00233_0:
 cmp rax, 1
 jl xchain00229_n23_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00229_n23_α
 mov qword ptr [r12 + 2128], r14
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
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 jmp xchain00229_n24_α
 xchain00229_n22_β:
 mov r14, qword ptr [r12 + 2128]
 jmp xchain00229_n23_α
# IR_VAR
 xchain00229_n23_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 2040], rax
 jmp xchain00229_n25_α
 xchain00229_n23_β:
 jmp xchain00229_n26_α
# IR_LIT_INTEGER
 xchain00229_n24_α:
 mov qword ptr [r12 + 2096], 6
 mov rax, qword ptr [rip + .Lx00234_0]
 mov qword ptr [r12 + 2104], rax
 jmp xchain00229_n27_α
 xchain00229_n24_β:
 jmp xchain00229_n29_α
.Lx00234_0:
 .quad 0
# IR_VAR
 xchain00229_n25_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2056], rax
 jmp xchain00229_n28_α
 xchain00229_n25_β:
 jmp xchain00229_n26_α
# IR_GEN_SCAN
 xchain00229_n26_α:
 lea rdi, [r12 + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 240]
 mov r14, qword ptr [r12 + 248]
 mov r15, qword ptr [r12 + 256]
 jmp xchain00229_n9_α
 xchain00229_n26_β:
 jmp xchain00229_n9_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00229_n27_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00235_0
 add rax, r15
 add rax, 1
.Lx00235_0:
 cmp rax, 1
 jl xchain00229_n29_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00229_n29_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00229_n29_α
 mov qword ptr [r12 + 2080], 6
 mov qword ptr [r12 + 2088], rax
 jmp xchain00229_n23_α
 xchain00229_n27_β:
 jmp xchain00229_n29_α
 xchain00229_n28_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2032] -> [zr+2000]
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 2000], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 2008], rax
# marshal arg1 = producer-box slot [zr+2048] -> [zr+2016]
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 2024], rax
  .section .rodata
  .Lrkfn1089: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1089]
 lea rsi, [r12 + 2000]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 cmp eax, 99
 je xchain00229_n26_α
 jmp xchain00229_n30_α
 xchain00229_n28_β:
 jmp xchain00229_n26_α
# IR_KEYWORD_null
 xchain00229_n29_α:
 mov qword ptr [r12 + 2064], 0
 mov qword ptr [r12 + 2072], 0
 jmp xchain00229_n31_α
 xchain00229_n29_β:
 jmp xchain00229_n23_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00229_n30_α:
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 312], rax
 lea rax, [rip + xchain00229_n26_α]
 mov qword ptr [r12 + 320], rax
 jmp xchain00229_n32_α
 xchain00229_n30_β:
 jmp xchain00229_n26_α
 xchain00229_n31_α:
 jmp xchain00229_n34_α
xchain00229_n31_β:
 jmp xchain00229_n23_α
# IR_GEN_SCAN
 xchain00229_n32_α:
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
 lea rdi, [r12 + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 240]
 mov r14, qword ptr [r12 + 248]
 mov r15, qword ptr [r12 + 256]
 jmp xchain00229_n9_α
 xchain00229_n32_β:
 jmp xchain00229_n9_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00229_n33_α:
 jmp qword ptr [r12 + 320]
 xchain00229_n33_β:
 jmp xchain00229_n26_α
# IR_LIT_STRING
 xchain00229_n34_α:
 mov qword ptr [r12 + 1968], 1
 mov rax, qword ptr [rip + .Lx00236_0]
 mov qword ptr [r12 + 1976], rax
 jmp xchain00229_n35_α
 xchain00229_n34_β:
 jmp xchain00229_n37_α
.Lx00236_0:
 .quad .Lx00236_0_s
.Lx00236_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00229_n35_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00229_n37_α
 mov rdi, qword ptr [rip + .Lx00237_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00229_n37_α
 mov qword ptr [r12 + 1936], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 1944], rax
 jmp xchain00229_n36_α
 xchain00229_n35_β:
 jmp xchain00229_n37_α
.Lx00237_0:
 .quad .Lx00237_0_s
.Lx00237_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00229_n36_α:
 mov rax, qword ptr [r12 + 1944]
 cmp rax, 1
 jge .Lx00238_0
 add rax, r15
 add rax, 1
.Lx00238_0:
 cmp rax, 1
 jl xchain00229_n37_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00229_n37_α
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
 jmp xchain00229_n38_α
 xchain00229_n36_β:
 mov r14, qword ptr [r12 + 1920]
 jmp xchain00229_n37_α
# IR_LIT_INTEGER
 xchain00229_n37_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00239_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00229_n39_α
 xchain00229_n37_β:
 jmp xchain00229_n45_α
.Lx00239_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00229_n38_α:
 mov qword ptr [r12 + 1888], 6
 mov rax, qword ptr [rip + .Lx00240_0]
 mov qword ptr [r12 + 1896], rax
 jmp xchain00229_n40_α
 xchain00229_n38_β:
 jmp xchain00229_n37_α
.Lx00240_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00229_n39_α:
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00229_n45_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00229_n45_α
 mov qword ptr [r12 + 368], r14
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
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00229_n41_α
 xchain00229_n39_β:
 mov r14, qword ptr [r12 + 368]
 jmp xchain00229_n45_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00229_n40_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00241_0
 add rax, r15
 add rax, 1
.Lx00241_0:
 cmp rax, 1
 jl xchain00229_n37_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00229_n37_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00229_n37_α
 mov qword ptr [r12 + 1872], 6
 mov qword ptr [r12 + 1880], rax
 jmp xchain00229_n43_α
 xchain00229_n40_β:
 jmp xchain00229_n37_α
 xchain00229_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00229_n44_α
 xchain00229_n41_β:
 jmp xchain00229_n45_α
 xchain00229_n42_α:
 jmp xchain00229_n45_α
xchain00229_n42_β:
 jmp xchain00229_n45_α
 xchain00229_n43_α:
 jmp xchain00229_n11_α
xchain00229_n43_β:
 jmp xchain00229_n37_α
# IR_VAR
 xchain00229_n44_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1800], rax
 jmp xchain00229_n47_α
 xchain00229_n44_β:
 jmp xchain00229_n48_α
 xchain00229_n45_α:
 jmp xchain00229_n49_α
xchain00229_n45_β:
 jmp xchain00229_n26_α
 xchain00229_n46_α:
 jmp xchain00229_n11_α
xchain00229_n46_β:
 jmp xchain00229_n11_α
# IR_VAR
 xchain00229_n47_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1816], rax
 jmp xchain00229_n50_α
 xchain00229_n47_β:
 jmp xchain00229_n48_α
# IR_LIT_STRING
 xchain00229_n48_α:
 mov qword ptr [r12 + 1664], 1
 mov rax, qword ptr [rip + .Lx00242_0]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00229_n51_α
 xchain00229_n48_β:
 jmp xchain00229_n37_α
.Lx00242_0:
 .quad .Lx00242_0_s
.Lx00242_0_s:
 .string "Unrecognized option: -"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00229_n49_α:
 lea rax, [rip + xchain00229_n52_α]
 mov qword ptr [r12 + 320], rax
 jmp xchain00229_n32_α
 xchain00229_n49_β:
 jmp xchain00229_n26_α
 xchain00229_n50_α:
# BOX IR_CALL_BUILTIN_GEN find(...) -> rt_call_arr_gen by-name [four-port generator; alpha zeroes resume cell, beta re-pumps invoke with persisted cell]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1744]
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1752], rax
# marshal arg1 = producer-box slot [zr+1808] -> [zr+1760]
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1768], rax
 mov qword ptr [r12 + 1776], 0
.Lx00243_60:
  .section .rodata
  .Lbynamegenfn1122: .string "find"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamegenfn1122]
 lea rsi, [r12 + 1744]
 mov edx, 2
 lea rcx, [r12 + 1776]
 call rt_call_arr_gen@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je xchain00229_n48_α
 jmp xchain00229_n53_α
xchain00229_n50_β:
 jmp .Lx00243_60
# IR_VAR
 xchain00229_n51_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1688], rax
 jmp xchain00229_n54_α
 xchain00229_n51_β:
 jmp xchain00229_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00229_n52_α:
 jmp qword ptr [r12 + 416]
 xchain00229_n52_β:
 jmp xchain00229_n37_α
# IR_LIT_INTEGER
 xchain00229_n53_α:
 mov qword ptr [r12 + 1824], 6
 mov rax, qword ptr [rip + .Lx00244_0]
 mov qword ptr [r12 + 1832], rax
 jmp xchain00229_n55_α
 xchain00229_n53_β:
 jmp xchain00229_n50_β
.Lx00244_0:
 .quad 1
 xchain00229_n54_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn1129: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1129]
 lea rsi, [r12 + 1632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 cmp eax, 99
 je xchain00229_n37_α
 jmp xchain00229_n56_α
 xchain00229_n54_β:
 jmp xchain00229_n37_α
 xchain00229_n55_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1728]
 cmp eax, 100
 je .Lx00245_0
 mov eax, dword ptr [r12 + 1824]
 cmp eax, 100
 je .Lx00245_0
 mov eax, dword ptr [r12 + 1728]
 cmp eax, 6
 jne .Lx00245_2
 mov eax, dword ptr [r12 + 1824]
 cmp eax, 6
 jne .Lx00245_2
.Lx00245_1:
 mov rax, qword ptr [r12 + 1736]
 mov rcx, qword ptr [r12 + 1832]
 add rax, rcx
 mov qword ptr [r12 + 1712], 6
 mov qword ptr [r12 + 1720], rax
 jmp xchain00229_n57_α
.Lx00245_0:
 mov rdi, qword ptr [r12 + 1728]
 mov rsi, qword ptr [r12 + 1736]
 mov rdx, qword ptr [r12 + 1824]
 mov rcx, qword ptr [r12 + 1832]
 mov r8d, 0
 lea r9, [r12 + 1712]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00245_3
.Lx00245_2:
 mov rdi, qword ptr [r12 + 1728]
 mov rsi, qword ptr [r12 + 1736]
 mov rdx, qword ptr [r12 + 1824]
 mov rcx, qword ptr [r12 + 1832]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00229_n48_α
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
.Lx00245_3:
 jmp xchain00229_n57_α
 xchain00229_n55_β:
 jmp xchain00229_n48_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00229_n56_α:
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 408], rax
 lea rax, [rip + xchain00229_n37_α]
 mov qword ptr [r12 + 416], rax
 jmp xchain00229_n37_α
 xchain00229_n56_β:
 jmp xchain00229_n37_α
 xchain00229_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1712]
 mov rdx, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain00229_n58_α
 xchain00229_n57_β:
 jmp xchain00229_n48_α
# IR_VAR_REF
 xchain00229_n58_α:
 lea rdi, [r12 + 2384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00229_n59_α
 xchain00229_n58_β:
 jmp xchain00229_n37_α
# IR_VAR
 xchain00229_n59_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 456], rax
 jmp xchain00229_n60_α
 xchain00229_n59_β:
 jmp xchain00229_n37_α
# IR_SUBSCRIPT x[i] variable
 xchain00229_n60_α:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00229_n37_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00229_n61_α
 xchain00229_n60_β:
 jmp xchain00229_n37_α
# IR_LIT_CHARSET
 xchain00229_n61_α:
 mov qword ptr [r12 + 1520], 1
 mov dword ptr [r12 + 1524], -1
 mov rax, qword ptr [rip + .Lx00246_0]
 mov qword ptr [r12 + 1528], rax
 jmp xchain00229_n62_α
 xchain00229_n61_β:
 jmp xchain00229_n65_α
.Lx00246_0:
 .quad .Lx00246_0_s
.Lx00246_0_s:
 .string "+.:"
# IR_VAR_REF
 xchain00229_n62_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain00229_n63_α
 xchain00229_n62_β:
 jmp xchain00229_n65_α
# IR_VAR
 xchain00229_n63_α:
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 1576], rax
 jmp xchain00229_n64_α
 xchain00229_n63_β:
 jmp xchain00229_n65_α
# IR_SUBSCRIPT x[i] variable
 xchain00229_n64_α:
 mov rdi, qword ptr [r12 + 1552]
 mov rsi, qword ptr [r12 + 1560]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00229_n65_α
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain00229_n66_α
 xchain00229_n64_β:
 jmp xchain00229_n65_α
# IR_LIT_INTEGER
 xchain00229_n65_α:
 mov qword ptr [r12 + 1456], 6
 mov rax, qword ptr [rip + .Lx00247_0]
 mov qword ptr [r12 + 1464], rax
 jmp xchain00229_n67_α
 xchain00229_n65_β:
 jmp xchain00229_n37_α
.Lx00247_0:
 .quad 1
# IR_DEREF variable -> value
 xchain00229_n66_α:
 mov rdi, qword ptr [r12 + 1584]
 mov rsi, qword ptr [r12 + 1592]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00229_n65_α
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00229_n68_α
 xchain00229_n66_β:
 jmp xchain00229_n65_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00229_n67_α:
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + xchain00229_n37_α]
 mov qword ptr [r12 + 512], rax
 jmp xchain00229_n69_α
 xchain00229_n67_β:
 jmp xchain00229_n37_α
 xchain00229_n68_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1600]
 mov rdx, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain00229_n71_α
 xchain00229_n68_β:
 jmp xchain00229_n65_α
# IR_ASSIGN_VAR
 xchain00229_n69_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00229_n37_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00229_n72_α
 xchain00229_n69_β:
 jmp xchain00229_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00229_n70_α:
 jmp qword ptr [r12 + 512]
 xchain00229_n70_β:
 jmp xchain00229_n37_α
 xchain00229_n71_α:
# BOX IR_CALL any(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+1520] -> [zr+1488]
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1496], rax
# marshal arg1 = producer-box slot [zr+1536] -> [zr+1504]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1512], rax
  .section .rodata
  .Lbynamefn1154: .string "any"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn1154]
 lea rsi, [r12 + 1488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 cmp eax, 99
 je xchain00229_n65_α
 jmp xchain00229_n73_α
xchain00229_n71_β:
 jmp xchain00229_n65_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00229_n72_α:
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 408], rax
 lea rax, [rip + xchain00229_n70_α]
 mov qword ptr [r12 + 416], rax
 jmp xchain00229_n37_α
 xchain00229_n72_β:
 jmp xchain00229_n37_α
# IR_LIT_STRING
 xchain00229_n73_α:
 mov qword ptr [r12 + 1392], 1
 mov rax, qword ptr [rip + .Lx00248_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00229_n74_α
 xchain00229_n73_β:
 jmp xchain00229_n77_α
.Lx00248_0:
 .quad .Lx00248_0_s
.Lx00248_0_s:
 .string ""
# IR_LIT_INTEGER
 xchain00229_n74_α:
 mov qword ptr [r12 + 1440], 6
 mov rax, qword ptr [rip + .Lx00249_0]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00229_n75_α
 xchain00229_n74_β:
 jmp xchain00229_n77_α
.Lx00249_0:
 .quad 0
# IR_SCAN_TAB
 xchain00229_n75_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00250_0
 add rax, r15
 add rax, 1
.Lx00250_0:
 cmp rax, 1
 jl xchain00229_n77_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00229_n77_α
 mov qword ptr [r12 + 1424], r14
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
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain00229_n76_α
 xchain00229_n75_β:
 mov r14, qword ptr [r12 + 1424]
 jmp xchain00229_n77_α
 xchain00229_n76_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 1392]
 mov rsi, qword ptr [r12 + 1400]
 mov rdx, qword ptr [r12 + 1408]
 mov rcx, qword ptr [r12 + 1416]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00229_n77_α
 mov rdi, qword ptr [r12 + 1408]
 mov rsi, qword ptr [r12 + 1416]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain00229_n78_α
 xchain00229_n76_β:
 jmp xchain00229_n77_α
# IR_VAR
 xchain00229_n77_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1368], rax
 jmp xchain00229_n79_α
 xchain00229_n77_β:
 jmp xchain00229_n80_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00229_n78_α:
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00229_n77_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00229_n81_α
 xchain00229_n78_β:
 jmp xchain00229_n85_α
 xchain00229_n79_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1344]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1352], rax
  .section .rodata
  .Lrkfn1167: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1167]
 lea rsi, [r12 + 1344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain00229_n80_α
 jmp xchain00229_n83_α
 xchain00229_n79_β:
 jmp xchain00229_n80_α
# IR_LIT_STRING
 xchain00229_n80_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx00251_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00229_n84_α
 xchain00229_n80_β:
 jmp xchain00229_n85_α
.Lx00251_0:
 .quad .Lx00251_0_s
.Lx00251_0_s:
 .string "No parameter following -"
 xchain00229_n81_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1216]
 mov rdx, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain00229_n85_α
 xchain00229_n81_β:
 jmp xchain00229_n85_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00229_n82_α:
 jmp qword ptr [r12 + 1232]
 xchain00229_n82_β:
 jmp xchain00229_n85_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00229_n83_α:
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00229_n80_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00229_n81_α
 xchain00229_n83_β:
 jmp xchain00229_n85_α
# IR_VAR
 xchain00229_n84_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1320], rax
 jmp xchain00229_n86_α
 xchain00229_n84_β:
 jmp xchain00229_n85_α
# IR_VAR
 xchain00229_n85_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 552], rax
 jmp xchain00229_n87_α
 xchain00229_n85_β:
 jmp xchain00229_n37_α
 xchain00229_n86_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1264]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1272], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1280]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rax
  .section .rodata
  .Lrkfn1179: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1179]
 lea rsi, [r12 + 1264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain00229_n85_α
 jmp xchain00229_n88_α
 xchain00229_n86_β:
 jmp xchain00229_n85_α
# IR_LIT_STRING
 xchain00229_n87_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx00252_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00229_n89_α
 xchain00229_n87_β:
 jmp xchain00229_n37_α
.Lx00252_0:
 .quad .Lx00252_0_s
.Lx00252_0_s:
 .string ":"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00229_n88_α:
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00229_n85_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00229_n81_α
 xchain00229_n88_β:
 jmp xchain00229_n85_α
 xchain00229_n89_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+1168]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 1176], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+1184]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lrkfn1184: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1184]
 lea rsi, [r12 + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain00229_n91_α
 jmp xchain00229_n90_α
 xchain00229_n89_β:
 jmp xchain00229_n91_α
# IR_VAR
 xchain00229_n90_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00229_n92_α
 xchain00229_n90_β:
 jmp xchain00229_n37_α
# IR_LIT_STRING
 xchain00229_n91_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx00253_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain00229_n93_α
 xchain00229_n91_β:
 jmp xchain00229_n37_α
.Lx00253_0:
 .quad .Lx00253_0_s
.Lx00253_0_s:
 .string "+"
 xchain00229_n92_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00229_n94_α
 xchain00229_n92_β:
 jmp xchain00229_n37_α
 xchain00229_n93_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+1072]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+1088]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn1190: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1190]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00229_n96_α
 jmp xchain00229_n95_α
 xchain00229_n93_β:
 jmp xchain00229_n96_α
# IR_VAR
 xchain00229_n94_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 536], rax
 jmp xchain00229_n97_α
 xchain00229_n94_β:
 jmp xchain00229_n37_α
# IR_VAR
 xchain00229_n95_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00229_n98_α
 xchain00229_n95_β:
 jmp xchain00229_n99_α
# IR_LIT_STRING
 xchain00229_n96_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx00254_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00229_n00052_α
 xchain00229_n96_β:
 jmp xchain00229_n37_α
.Lx00254_0:
 .quad .Lx00254_0_s
.Lx00254_0_s:
 .string "."
 xchain00229_n97_α:
 jmp xchain00229_n00001_α
xchain00229_n97_β:
 jmp xchain00229_n37_α
 xchain00229_n98_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+1008]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn1198: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1198]
 lea rsi, [r12 + 1008]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain00229_n99_α
 jmp xchain00229_n00054_α
 xchain00229_n98_β:
 jmp xchain00229_n99_α
# IR_LIT_STRING
 xchain00229_n99_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx00255_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00229_n00055_α
 xchain00229_n99_β:
 jmp xchain00229_n37_α
.Lx00255_0:
 .quad .Lx00255_0_s
.Lx00255_0_s:
 .string "-"
 xchain00229_n00052_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+800]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 808], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+816]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn1201: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1201]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain00229_n37_α
 jmp xchain00229_n00056_α
 xchain00229_n00052_β:
 jmp xchain00229_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00229_n00001_α:
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + xchain00229_n37_α]
 mov qword ptr [r12 + 512], rax
 jmp xchain00229_n69_α
 xchain00229_n00001_β:
 jmp xchain00229_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00229_n00054_α:
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00229_n99_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00229_n00063_α
 xchain00229_n00054_β:
 jmp xchain00229_n37_α
# IR_VAR
 xchain00229_n00055_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 968], rax
 jmp xchain00229_n00059_α
 xchain00229_n00055_β:
 jmp xchain00229_n37_α
# IR_VAR
 xchain00229_n00056_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 760], rax
 jmp xchain00229_n00061_α
 xchain00229_n00056_β:
 jmp xchain00229_n00002_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00229_n00057_α:
 jmp qword ptr [r12 + 864]
 xchain00229_n00057_β:
 jmp xchain00229_n37_α
# IR_LIT_STRING
 xchain00229_n00059_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx00256_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain00229_n00064_α
 xchain00229_n00059_β:
 jmp xchain00229_n37_α
.Lx00256_0:
 .quad .Lx00256_0_s
.Lx00256_0_s:
 .string " needs numeric parameter"
 xchain00229_n00061_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+736]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn1214: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1214]
 lea rsi, [r12 + 736]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain00229_n00002_α
 jmp xchain00229_n00065_α
 xchain00229_n00061_β:
 jmp xchain00229_n00002_α
# IR_LIT_STRING
 xchain00229_n00002_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00257_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00229_n00066_α
 xchain00229_n00002_β:
 jmp xchain00229_n37_α
.Lx00257_0:
 .quad .Lx00257_0_s
.Lx00257_0_s:
 .string "-"
 xchain00229_n00063_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00229_n94_α
 xchain00229_n00063_β:
 jmp xchain00229_n37_α
 xchain00229_n00064_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+896]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 920], rax
# marshal arg2 = producer-box slot [zr+976] -> [zr+928]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn1218: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1218]
 lea rsi, [r12 + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain00229_n37_α
 jmp xchain00229_n00067_α
 xchain00229_n00064_β:
 jmp xchain00229_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00229_n00065_α:
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 584], rax
 lea rax, [rip + xchain00229_n00002_α]
 mov qword ptr [r12 + 592], rax
 jmp xchain00229_n00069_α
 xchain00229_n00065_β:
 jmp xchain00229_n37_α
# IR_VAR
 xchain00229_n00066_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 696], rax
 jmp xchain00229_n00068_α
 xchain00229_n00066_β:
 jmp xchain00229_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00229_n00067_α:
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00229_n37_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00229_n00063_α
 xchain00229_n00067_β:
 jmp xchain00229_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00229_n00003_α:
 jmp qword ptr [r12 + 592]
 xchain00229_n00003_β:
 jmp xchain00229_n37_α
# IR_LIT_STRING
 xchain00229_n00068_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx00258_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00229_n00070_α
 xchain00229_n00068_β:
 jmp xchain00229_n37_α
.Lx00258_0:
 .quad .Lx00258_0_s
.Lx00258_0_s:
 .string " needs numeric parameter"
 xchain00229_n00069_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00229_n94_α
 xchain00229_n00069_β:
 jmp xchain00229_n37_α
 xchain00229_n00070_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 648], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn1230: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1230]
 lea rsi, [r12 + 624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain00229_n37_α
 jmp xchain00229_n00071_α
 xchain00229_n00070_β:
 jmp xchain00229_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00229_n00071_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
 lea rax, [rip + xchain00229_n37_α]
 mov qword ptr [r12 + 592], rax
 jmp xchain00229_n00069_α
 xchain00229_n00071_β:
 jmp xchain00229_n37_α
proc_options_β:
jmp proc_options_ω
proc_options_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 2368]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_options_ω:
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
  call core_lib_init@PLT
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
 mov qword ptr [r12 + 2096], rax
 pop rsi
main_α_body:
# IR_VAR
 xchain00259_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 2072], rax
 jmp xchain00259_n1_α
 xchain00259_n0_β:
 jmp xchain00259_n2_α
# IR_LIT_STRING
 xchain00259_n1_α:
 mov qword ptr [r12 + 2080], 1
 mov rax, qword ptr [rip + .Lx00260_0]
 mov qword ptr [r12 + 2088], rax
 jmp xchain00259_n3_α
 xchain00259_n1_β:
 jmp xchain00259_n2_α
.Lx00260_0:
 .quad .Lx00260_0_s
.Lx00260_0_s:
 .string "a.e."
# IR_VAR_REF
 xchain00259_n2_α:
 lea rdi, [r12 + 2176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 jmp xchain00259_n4_α
 xchain00259_n2_β:
 jmp xchain00259_n8_α
 xchain00259_n3_α:
  .section .rodata
  .Lcall00261_pname: .string "options"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2064]
 mov rdx, qword ptr [r12 + 2072]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 2080]
 mov rdx, qword ptr [r12 + 2088]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00261_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je xchain00259_n2_α
 jmp xchain00259_n5_α
xchain00259_n3_β:
 jmp xchain00259_n2_α
# IR_LIT_STRING
 xchain00259_n4_α:
 mov qword ptr [r12 + 1952], 1
 mov rax, qword ptr [rip + .Lx00262_0]
 mov qword ptr [r12 + 1960], rax
 jmp xchain00259_n6_α
 xchain00259_n4_β:
 jmp xchain00259_n8_α
.Lx00262_0:
 .quad .Lx00262_0_s
.Lx00262_0_s:
 .string "a"
 xchain00259_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2016]
 mov rdx, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain00259_n2_α
 xchain00259_n5_β:
 jmp xchain00259_n2_α
# IR_SUBSCRIPT x[i] variable
 xchain00259_n6_α:
 mov rdi, qword ptr [r12 + 1936]
 mov rsi, qword ptr [r12 + 1944]
 mov rdx, qword ptr [r12 + 1952]
 mov rcx, qword ptr [r12 + 1960]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00259_n8_α
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 jmp xchain00259_n7_α
 xchain00259_n6_β:
 jmp xchain00259_n8_α
# IR_DEREF variable -> value
 xchain00259_n7_α:
 mov rdi, qword ptr [r12 + 1968]
 mov rsi, qword ptr [r12 + 1976]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00259_n8_α
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xchain00259_n9_α
 xchain00259_n7_β:
 jmp xchain00259_n8_α
# IR_LIT_INTEGER
 xchain00259_n8_α:
 mov qword ptr [r12 + 1904], 6
 mov rax, qword ptr [rip + .Lx00263_0]
 mov qword ptr [r12 + 1912], rax
 jmp xchain00259_n10_α
 xchain00259_n8_β:
 jmp xchain00259_n13_α
.Lx00263_0:
 .quad 30
# IR_UNOP
 xchain00259_n9_α:
 mov eax, dword ptr [r12 + 1984]
 cmp eax, 99
 je xchain00259_n8_α
 cmp eax, 0
 je xchain00259_n8_α
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1920], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1928], rax
 jmp xchain00259_n11_α
 xchain00259_n9_β:
 jmp xchain00259_n8_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00259_n10_α:
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1880], rax
 lea rax, [rip + xchain00259_n13_α]
 mov qword ptr [r12 + 1888], rax
 jmp xchain00259_n12_α
 xchain00259_n10_β:
 jmp xchain00259_n13_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00259_n11_α:
 mov rax, qword ptr [r12 + 1920]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 1880], rax
 lea rax, [rip + xchain00259_n8_α]
 mov qword ptr [r12 + 1888], rax
 jmp xchain00259_n12_α
 xchain00259_n11_β:
 jmp xchain00259_n13_α
# IR_ASSIGN gva
 xchain00259_n12_α:
 mov rax, qword ptr [r12 + 1872]
 mov rdx, qword ptr [r12 + 1880]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 jmp xchain00259_n13_α
 xchain00259_n12_β:
 jmp xchain00259_n13_α
# IR_VAR_REF
 xchain00259_n13_α:
 lea rdi, [r12 + 2176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain00259_n15_α
 xchain00259_n13_β:
 jmp xchain00259_n18_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00259_n14_α:
 jmp qword ptr [r12 + 1888]
 xchain00259_n14_β:
 jmp xchain00259_n13_α
# IR_LIT_STRING
 xchain00259_n15_α:
 mov qword ptr [r12 + 1808], 1
 mov rax, qword ptr [rip + .Lx00264_0]
 mov qword ptr [r12 + 1816], rax
 jmp xchain00259_n16_α
 xchain00259_n15_β:
 jmp xchain00259_n18_α
.Lx00264_0:
 .quad .Lx00264_0_s
.Lx00264_0_s:
 .string "e"
# IR_SUBSCRIPT x[i] variable
 xchain00259_n16_α:
 mov rdi, qword ptr [r12 + 1792]
 mov rsi, qword ptr [r12 + 1800]
 mov rdx, qword ptr [r12 + 1808]
 mov rcx, qword ptr [r12 + 1816]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00259_n18_α
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 jmp xchain00259_n17_α
 xchain00259_n16_β:
 jmp xchain00259_n18_α
# IR_DEREF variable -> value
 xchain00259_n17_α:
 mov rdi, qword ptr [r12 + 1824]
 mov rsi, qword ptr [r12 + 1832]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00259_n18_α
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 jmp xchain00259_n19_α
 xchain00259_n17_β:
 jmp xchain00259_n18_α
# IR_LIT_INTEGER
 xchain00259_n18_α:
 mov qword ptr [r12 + 1760], 6
 mov rax, qword ptr [rip + .Lx00265_0]
 mov qword ptr [r12 + 1768], rax
 jmp xchain00259_n20_α
 xchain00259_n18_β:
 jmp xchain00259_n23_α
.Lx00265_0:
 .quad 4
# IR_UNOP
 xchain00259_n19_α:
 mov eax, dword ptr [r12 + 1840]
 cmp eax, 99
 je xchain00259_n18_α
 cmp eax, 0
 je xchain00259_n18_α
 mov rax, qword ptr [r12 + 1840]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1848]
 mov qword ptr [r12 + 1784], rax
 jmp xchain00259_n21_α
 xchain00259_n19_β:
 jmp xchain00259_n18_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00259_n20_α:
 mov rax, qword ptr [r12 + 1760]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 1768]
 mov qword ptr [r12 + 1736], rax
 lea rax, [rip + xchain00259_n23_α]
 mov qword ptr [r12 + 1744], rax
 jmp xchain00259_n22_α
 xchain00259_n20_β:
 jmp xchain00259_n23_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00259_n21_α:
 mov rax, qword ptr [r12 + 1776]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 1784]
 mov qword ptr [r12 + 1736], rax
 lea rax, [rip + xchain00259_n18_α]
 mov qword ptr [r12 + 1744], rax
 jmp xchain00259_n22_α
 xchain00259_n21_β:
 jmp xchain00259_n23_α
# IR_ASSIGN gva
 xchain00259_n22_α:
 mov rax, qword ptr [r12 + 1728]
 mov rdx, qword ptr [r12 + 1736]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain00259_n23_α
 xchain00259_n22_β:
 jmp xchain00259_n23_α
# IR_VAR
 xchain00259_n23_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1688], rax
 jmp xchain00259_n25_α
 xchain00259_n23_β:
 jmp xchain00259_n26_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00259_n24_α:
 jmp qword ptr [r12 + 1744]
 xchain00259_n24_β:
 jmp xchain00259_n23_α
# IR_UNOP
 xchain00259_n25_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 jmp xchain00259_n27_α
 xchain00259_n25_β:
 jmp xchain00259_n26_α
# IR_VAR
 xchain00259_n26_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1624], rax
 jmp xchain00259_n28_α
 xchain00259_n26_β:
 jmp xchain00259_n29_α
# IR_LIT_INTEGER
 xchain00259_n27_α:
 mov qword ptr [r12 + 1696], 6
 mov rax, qword ptr [rip + .Lx00266_0]
 mov qword ptr [r12 + 1704], rax
 jmp xchain00259_n30_α
 xchain00259_n27_β:
 jmp xchain00259_n26_α
.Lx00266_0:
 .quad 1
# IR_UNOP
 xchain00259_n28_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00259_n31_α
 xchain00259_n28_β:
 jmp xchain00259_n29_α
# IR_KEYWORD_read
 xchain00259_n29_α:
 mov rdi, qword ptr [rip + .Lx00267_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain00259_n32_α
 xchain00259_n29_β:
 jmp xchain00259_n39_α
.Lx00267_0:
 .quad .Lx00267_0_s
.Lx00267_0_s:
 .string "&input"
 xchain00259_n30_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1664]
 cmp eax, 100
 je .Lx00268_0
 mov eax, dword ptr [r12 + 1696]
 cmp eax, 100
 je .Lx00268_0
 mov eax, dword ptr [r12 + 1664]
 cmp eax, 6
 jne .Lx00268_2
 mov eax, dword ptr [r12 + 1696]
 cmp eax, 6
 jne .Lx00268_2
.Lx00268_1:
 mov rax, qword ptr [r12 + 1672]
 mov rcx, qword ptr [r12 + 1704]
 cmp rax, rcx
 jle xchain00259_n26_α
 mov rcx, qword ptr [r12 + 1696]
 mov qword ptr [r12 + 1648], rcx
 mov rcx, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 1656], rcx
 jmp xchain00259_n33_α
.Lx00268_0:
 mov rdi, qword ptr [r12 + 1664]
 mov rsi, qword ptr [r12 + 1672]
 mov rdx, qword ptr [r12 + 1696]
 mov rcx, qword ptr [r12 + 1704]
 mov r8d, 7
 lea r9, [r12 + 1648]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00268_1
 cmp eax, 1
 je xchain00259_n26_α
 jmp xchain00259_n33_α
.Lx00268_2:
 mov rdi, qword ptr [r12 + 1664]
 mov rsi, qword ptr [r12 + 1672]
 mov rdx, qword ptr [r12 + 1696]
 mov rcx, qword ptr [r12 + 1704]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00259_n26_α
 mov rax, qword ptr [r12 + 1696]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 1656], rax
 jmp xchain00259_n33_α
 xchain00259_n30_β:
 jmp xchain00259_n26_α
# IR_LIT_INTEGER
 xchain00259_n31_α:
 mov qword ptr [r12 + 1632], 6
 mov rax, qword ptr [rip + .Lx00269_0]
 mov qword ptr [r12 + 1640], rax
 jmp xchain00259_n34_α
 xchain00259_n31_β:
 jmp xchain00259_n29_α
.Lx00269_0:
 .quad 1
# IR_ASSIGN gva
 xchain00259_n32_α:
 mov rax, qword ptr [r12 + 1552]
 mov rdx, qword ptr [r12 + 1560]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain00259_n35_α
 xchain00259_n32_β:
 jmp xchain00259_n39_α
# IR_LIT_STRING
 xchain00259_n33_α:
 mov qword ptr [r12 + 1120], 1
 mov rax, qword ptr [rip + .Lx00270_0]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00259_n36_α
 xchain00259_n33_β:
 jmp xchain00259_n39_α
.Lx00270_0:
 .quad .Lx00270_0_s
.Lx00270_0_s:
 .string "usage: "
 xchain00259_n34_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1600]
 cmp eax, 100
 je .Lx00271_0
 mov eax, dword ptr [r12 + 1632]
 cmp eax, 100
 je .Lx00271_0
 mov eax, dword ptr [r12 + 1600]
 cmp eax, 6
 jne .Lx00271_2
 mov eax, dword ptr [r12 + 1632]
 cmp eax, 6
 jne .Lx00271_2
.Lx00271_1:
 mov rax, qword ptr [r12 + 1608]
 mov rcx, qword ptr [r12 + 1640]
 cmp rax, rcx
 jne xchain00259_n29_α
 mov rcx, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1584], rcx
 mov rcx, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1592], rcx
 jmp xchain00259_n37_α
.Lx00271_0:
 mov rdi, qword ptr [r12 + 1600]
 mov rsi, qword ptr [r12 + 1608]
 mov rdx, qword ptr [r12 + 1632]
 mov rcx, qword ptr [r12 + 1640]
 mov r8d, 9
 lea r9, [r12 + 1584]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00271_1
 cmp eax, 1
 je xchain00259_n29_α
 jmp xchain00259_n37_α
.Lx00271_2:
 mov rdi, qword ptr [r12 + 1600]
 mov rsi, qword ptr [r12 + 1608]
 mov rdx, qword ptr [r12 + 1632]
 mov rcx, qword ptr [r12 + 1640]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00259_n29_α
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1592], rax
 jmp xchain00259_n37_α
 xchain00259_n34_β:
 jmp xchain00259_n29_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00259_n35_α:
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1192], rax
 lea rax, [rip + xchain00259_n39_α]
 mov qword ptr [r12 + 1200], rax
 jmp xchain00259_n38_α
 xchain00259_n35_β:
 jmp xchain00259_n39_α
# IR_KEYWORD_read
 xchain00259_n36_α:
 mov rdi, qword ptr [rip + .Lx00272_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00259_n41_α
 xchain00259_n36_β:
 jmp xchain00259_n39_α
.Lx00272_0:
 .quad .Lx00272_0_s
.Lx00272_0_s:
 .string "&progname"
# IR_VAR_REF
 xchain00259_n37_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain00259_n42_α
 xchain00259_n37_β:
 jmp xchain00259_n52_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00259_n38_α:
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1032], rax
 lea rax, [rip + xchain00259_n40_α]
 mov qword ptr [r12 + 1040], rax
 jmp xchain00259_n39_α
 xchain00259_n38_β:
 jmp xchain00259_n39_α
# IR_VAR
 xchain00259_n39_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain00259_n44_α
 xchain00259_n39_β:
 jmp xchain00259_n45_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00259_n40_α:
 jmp qword ptr [r12 + 1200]
 xchain00259_n40_β:
 jmp xchain00259_n39_α
# IR_LIT_STRING
 xchain00259_n41_α:
 mov qword ptr [r12 + 1168], 1
 mov rax, qword ptr [rip + .Lx00273_0]
 mov qword ptr [r12 + 1176], rax
 jmp xchain00259_n46_α
 xchain00259_n41_β:
 jmp xchain00259_n39_α
.Lx00273_0:
 .quad .Lx00273_0_s
.Lx00273_0_s:
 .string " file"
# IR_LIT_INTEGER
 xchain00259_n42_α:
 mov qword ptr [r12 + 1488], 6
 mov rax, qword ptr [rip + .Lx00274_0]
 mov qword ptr [r12 + 1496], rax
 jmp xchain00259_n47_α
 xchain00259_n42_β:
 jmp xchain00259_n52_α
.Lx00274_0:
 .quad 1
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00259_n43_α:
 jmp qword ptr [r12 + 1040]
 xchain00259_n43_β:
 jmp xchain00259_n39_α
 xchain00259_n44_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+992]
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 1000], rax
  .section .rodata
  .Lrkfn1295: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1295]
 lea rsi, [r12 + 992]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain00259_n45_α
 jmp xchain00259_n48_α
 xchain00259_n44_β:
 jmp xchain00259_n45_α
# IR_KEYWORD_read
 xchain00259_n45_α:
 mov rdi, qword ptr [rip + .Lx00275_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain00259_n49_α
 xchain00259_n45_β:
 jmp xchain00259_n58_α
.Lx00275_0:
 .quad .Lx00275_0_s
.Lx00275_0_s:
 .string "&progname"
 xchain00259_n46_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1072]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+1088]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1096], rax
# marshal arg2 = producer-box slot [zr+1168] -> [zr+1104]
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1112], rax
  .section .rodata
  .Lrkfn1298: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1298]
 lea rsi, [r12 + 1072]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00259_n39_α
 jmp xchain00259_n50_α
 xchain00259_n46_β:
 jmp xchain00259_n39_α
# IR_SUBSCRIPT x[i] variable
 xchain00259_n47_α:
 mov rdi, qword ptr [r12 + 1472]
 mov rsi, qword ptr [r12 + 1480]
 mov rdx, qword ptr [r12 + 1488]
 mov rcx, qword ptr [r12 + 1496]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00259_n52_α
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 jmp xchain00259_n51_α
 xchain00259_n47_β:
 jmp xchain00259_n52_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00259_n48_α:
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00259_n45_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00259_n53_α
 xchain00259_n48_β:
 jmp xchain00259_n58_α
# IR_LIT_STRING
 xchain00259_n49_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx00276_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain00259_n55_α
 xchain00259_n49_β:
 jmp xchain00259_n58_α
.Lx00276_0:
 .quad .Lx00276_0_s
.Lx00276_0_s:
 .string ": empty file"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00259_n50_α:
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1032], rax
 lea rax, [rip + xchain00259_n39_α]
 mov qword ptr [r12 + 1040], rax
 jmp xchain00259_n39_α
 xchain00259_n50_β:
 jmp xchain00259_n39_α
# IR_DEREF variable -> value
 xchain00259_n51_α:
 mov rdi, qword ptr [r12 + 1504]
 mov rsi, qword ptr [r12 + 1512]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00259_n52_α
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain00259_n56_α
 xchain00259_n51_β:
 jmp xchain00259_n52_α
# IR_KEYWORD_read
 xchain00259_n52_α:
 mov rdi, qword ptr [rip + .Lx00277_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain00259_n57_α
 xchain00259_n52_β:
 jmp xchain00259_n39_α
.Lx00277_0:
 .quad .Lx00277_0_s
.Lx00277_0_s:
 .string "&progname"
 xchain00259_n53_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00259_n58_α
 xchain00259_n53_β:
 jmp xchain00259_n58_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00259_n54_α:
 jmp qword ptr [r12 + 864]
 xchain00259_n54_β:
 jmp xchain00259_n58_α
 xchain00259_n55_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+896]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 920], rax
  .section .rodata
  .Lrkfn1311: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1311]
 lea rsi, [r12 + 896]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain00259_n58_α
 jmp xchain00259_n59_α
 xchain00259_n55_β:
 jmp xchain00259_n58_α
 xchain00259_n56_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1520] -> [zr+1456]
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1464], rax
  .section .rodata
  .Lrkfn1313: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1313]
 lea rsi, [r12 + 1456]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 cmp eax, 99
 je xchain00259_n52_α
 jmp xchain00259_n60_α
 xchain00259_n56_β:
 jmp xchain00259_n52_α
# IR_LIT_STRING
 xchain00259_n57_α:
 mov qword ptr [r12 + 1360], 1
 mov rax, qword ptr [rip + .Lx00278_0]
 mov qword ptr [r12 + 1368], rax
 jmp xchain00259_n61_α
 xchain00259_n57_β:
 jmp xchain00259_n39_α
.Lx00278_0:
 .quad .Lx00278_0_s
.Lx00278_0_s:
 .string ": can't open "
# IR_VAR
 xchain00259_n58_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00259_n62_α
 xchain00259_n58_β:
 jmp xchain00259_n63_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00259_n59_α:
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00259_n58_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00259_n53_α
 xchain00259_n59_β:
 jmp xchain00259_n58_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00259_n60_α:
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1240], rax
 lea rax, [rip + xchain00259_n52_α]
 mov qword ptr [r12 + 1248], rax
 jmp xchain00259_n64_α
 xchain00259_n60_β:
 jmp xchain00259_n39_α
# IR_VAR_REF
 xchain00259_n61_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain00259_n66_α
 xchain00259_n61_β:
 jmp xchain00259_n39_α
 xchain00259_n62_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+800]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 808], rax
  .section .rodata
  .Lrkfn1323: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1323]
 lea rsi, [r12 + 800]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain00259_n63_α
 jmp xchain00259_n67_α
 xchain00259_n62_β:
 jmp xchain00259_n63_α
# IR_KEYWORD_read
 xchain00259_n63_α:
 mov rdi, qword ptr [rip + .Lx00279_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00259_n68_α
 xchain00259_n63_β:
 jmp xchain00259_n75_α
.Lx00279_0:
 .quad .Lx00279_0_s
.Lx00279_0_s:
 .string "&progname"
# IR_ASSIGN gva
 xchain00259_n64_α:
 mov rax, qword ptr [r12 + 1232]
 mov rdx, qword ptr [r12 + 1240]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain00259_n69_α
 xchain00259_n64_β:
 jmp xchain00259_n39_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00259_n65_α:
 jmp qword ptr [r12 + 1248]
 xchain00259_n65_β:
 jmp xchain00259_n39_α
# IR_LIT_INTEGER
 xchain00259_n66_α:
 mov qword ptr [r12 + 1392], 6
 mov rax, qword ptr [rip + .Lx00280_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00259_n70_α
 xchain00259_n66_β:
 jmp xchain00259_n39_α
.Lx00280_0:
 .quad 1
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00259_n67_α:
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 664], rax
 lea rax, [rip + xchain00259_n63_α]
 mov qword ptr [r12 + 672], rax
 jmp xchain00259_n71_α
 xchain00259_n67_β:
 jmp xchain00259_n75_α
# IR_LIT_STRING
 xchain00259_n68_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx00281_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain00259_n73_α
 xchain00259_n68_β:
 jmp xchain00259_n75_α
.Lx00281_0:
 .quad .Lx00281_0_s
.Lx00281_0_s:
 .string ": file truncated"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00259_n69_α:
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1192], rax
 lea rax, [rip + xchain00259_n65_α]
 mov qword ptr [r12 + 1200], rax
 jmp xchain00259_n38_α
 xchain00259_n69_β:
 jmp xchain00259_n39_α
# IR_SUBSCRIPT x[i] variable
 xchain00259_n70_α:
 mov rdi, qword ptr [r12 + 1376]
 mov rsi, qword ptr [r12 + 1384]
 mov rdx, qword ptr [r12 + 1392]
 mov rcx, qword ptr [r12 + 1400]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00259_n39_α
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain00259_n74_α
 xchain00259_n70_β:
 jmp xchain00259_n39_α
 xchain00259_n71_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00259_n75_α
 xchain00259_n71_β:
 jmp xchain00259_n75_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00259_n72_α:
 jmp qword ptr [r12 + 672]
 xchain00259_n72_β:
 jmp xchain00259_n75_α
 xchain00259_n73_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+704]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+720]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn1339: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1339]
 lea rsi, [r12 + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain00259_n75_α
 jmp xchain00259_n76_α
 xchain00259_n73_β:
 jmp xchain00259_n75_α
# IR_DEREF variable -> value
 xchain00259_n74_α:
 mov rdi, qword ptr [r12 + 1408]
 mov rsi, qword ptr [r12 + 1416]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00259_n39_α
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain00259_n77_α
 xchain00259_n74_β:
 jmp xchain00259_n39_α
# IR_VAR
 xchain00259_n75_α:
 mov rax, qword ptr [r12 + 2128]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 584], rax
 jmp xchain00259_n78_α
 xchain00259_n75_β:
 jmp xchain00259_n79_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00259_n76_α:
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 664], rax
 lea rax, [rip + xchain00259_n75_α]
 mov qword ptr [r12 + 672], rax
 jmp xchain00259_n71_α
 xchain00259_n76_β:
 jmp xchain00259_n75_α
 xchain00259_n77_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1280]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1288], rax
# marshal arg1 = producer-box slot [zr+1360] -> [zr+1296]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1304], rax
# marshal arg2 = producer-box slot [zr+1424] -> [zr+1312]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1320], rax
  .section .rodata
  .Lrkfn1346: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1346]
 lea rsi, [r12 + 1280]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 cmp eax, 99
 je xchain00259_n39_α
 jmp xchain00259_n80_α
 xchain00259_n77_β:
 jmp xchain00259_n39_α
# IR_LIT_INTEGER
 xchain00259_n78_α:
 mov qword ptr [r12 + 592], 6
 mov rax, qword ptr [rip + .Lx00282_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00259_n81_α
 xchain00259_n78_β:
 jmp xchain00259_n79_α
.Lx00282_0:
 .quad 16
# IR_VAR
 xchain00259_n79_α:
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 488], rax
 jmp xchain00259_n82_α
 xchain00259_n79_β:
 jmp xchain00259_n83_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00259_n80_α:
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1240], rax
 lea rax, [rip + xchain00259_n39_α]
 mov qword ptr [r12 + 1248], rax
 jmp xchain00259_n64_α
 xchain00259_n80_β:
 jmp xchain00259_n39_α
# IR_LIT_INTEGER
 xchain00259_n81_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx00283_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00259_n84_α
 xchain00259_n81_β:
 jmp xchain00259_n79_α
.Lx00283_0:
 .quad 7
# IR_LIT_INTEGER
 xchain00259_n82_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx00284_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00259_n85_α
 xchain00259_n82_β:
 jmp xchain00259_n83_α
.Lx00284_0:
 .quad 16
# IR_VAR
 xchain00259_n83_α:
 mov rax, qword ptr [r12 + 2144]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 2152]
 mov qword ptr [r12 + 344], rax
 jmp xchain00259_n86_α
 xchain00259_n83_β:
 jmp xchain00259_n87_α
 xchain00259_n84_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 592]
 cmp eax, 100
 je .Lx00285_0
 mov eax, dword ptr [r12 + 608]
 cmp eax, 100
 je .Lx00285_0
 mov eax, dword ptr [r12 + 592]
 cmp eax, 6
 jne .Lx00285_2
 mov eax, dword ptr [r12 + 608]
 cmp eax, 6
 jne .Lx00285_2
.Lx00285_1:
 mov rax, qword ptr [r12 + 600]
 mov rcx, qword ptr [r12 + 616]
 add rax, rcx
 mov qword ptr [r12 + 624], 6
 mov qword ptr [r12 + 632], rax
 jmp xchain00259_n88_α
.Lx00285_0:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 0
 lea r9, [r12 + 624]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00285_3
.Lx00285_2:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00259_n79_α
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
.Lx00285_3:
 jmp xchain00259_n88_α
 xchain00259_n84_β:
 jmp xchain00259_n79_α
# IR_LIT_INTEGER
 xchain00259_n85_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00286_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00259_n89_α
 xchain00259_n85_β:
 jmp xchain00259_n83_α
.Lx00286_0:
 .quad 7
# IR_VAR
 xchain00259_n86_α:
 mov rax, qword ptr [r12 + 2160]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 2168]
 mov qword ptr [r12 + 360], rax
 jmp xchain00259_n90_α
 xchain00259_n86_β:
 jmp xchain00259_n87_α
 xchain00259_n87_α:
  .section .rodata
  .Lcall00287_pname: .string "loadfile"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00287_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00259_n91_α
 jmp xchain00259_n91_α
xchain00259_n87_β:
 jmp xchain00259_n91_α
# IR_SUBSCRIPT section extended (x[i+:n]/x[i-:n]; end pre-computed by IR_BINOP; wraparound→ω)
 xchain00259_n88_α:
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 mov rdx, qword ptr [r12 + 592]
 mov rcx, qword ptr [r12 + 600]
 mov r8, qword ptr [r12 + 624]
 mov r9, qword ptr [r12 + 632]
 call subscript_get2_ext@PLT
 cmp eax, 99
 je xchain00259_n79_α
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00259_n92_α
 xchain00259_n88_β:
 jmp xchain00259_n79_α
 xchain00259_n89_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 496]
 cmp eax, 100
 je .Lx00288_0
 mov eax, dword ptr [r12 + 512]
 cmp eax, 100
 je .Lx00288_0
 mov eax, dword ptr [r12 + 496]
 cmp eax, 6
 jne .Lx00288_2
 mov eax, dword ptr [r12 + 512]
 cmp eax, 6
 jne .Lx00288_2
.Lx00288_1:
 mov rax, qword ptr [r12 + 504]
 mov rcx, qword ptr [r12 + 520]
 add rax, rcx
 mov qword ptr [r12 + 528], 6
 mov qword ptr [r12 + 536], rax
 jmp xchain00259_n93_α
.Lx00288_0:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 mov r8d, 0
 lea r9, [r12 + 528]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00288_3
.Lx00288_2:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00259_n83_α
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
.Lx00288_3:
 jmp xchain00259_n93_α
 xchain00259_n89_β:
 jmp xchain00259_n83_α
 xchain00259_n90_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2144]
 cmp eax, 100
 je .Lx00289_0
 mov eax, dword ptr [r12 + 2160]
 cmp eax, 100
 je .Lx00289_0
 mov eax, dword ptr [r12 + 2144]
 cmp eax, 6
 jne .Lx00289_2
 mov eax, dword ptr [r12 + 2160]
 cmp eax, 6
 jne .Lx00289_2
.Lx00289_1:
 mov rax, qword ptr [r12 + 2152]
 mov rcx, qword ptr [r12 + 2168]
 add rax, rcx
 mov qword ptr [r12 + 320], 6
 mov qword ptr [r12 + 328], rax
 jmp xchain00259_n94_α
.Lx00289_0:
 mov rdi, qword ptr [r12 + 2144]
 mov rsi, qword ptr [r12 + 2152]
 mov rdx, qword ptr [r12 + 2160]
 mov rcx, qword ptr [r12 + 2168]
 mov r8d, 0
 lea r9, [r12 + 320]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00289_3
.Lx00289_2:
 mov rdi, qword ptr [r12 + 2144]
 mov rsi, qword ptr [r12 + 2152]
 mov rdx, qword ptr [r12 + 2160]
 mov rcx, qword ptr [r12 + 2168]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00259_n87_α
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
.Lx00289_3:
 jmp xchain00259_n94_α
 xchain00259_n90_β:
 jmp xchain00259_n87_α
# IR_VAR
 xchain00259_n91_α:
 mov rax, qword ptr [r12 + 2128]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 216], rax
 jmp xchain00259_n95_α
 xchain00259_n91_β:
 jmp xchain00259_n96_α
 xchain00259_n92_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00259_n79_α
 xchain00259_n92_β:
 jmp xchain00259_n79_α
# IR_SUBSCRIPT section extended (x[i+:n]/x[i-:n]; end pre-computed by IR_BINOP; wraparound→ω)
 xchain00259_n93_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 mov r8, qword ptr [r12 + 528]
 mov r9, qword ptr [r12 + 536]
 call subscript_get2_ext@PLT
 cmp eax, 99
 je xchain00259_n83_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00259_n97_α
 xchain00259_n93_β:
 jmp xchain00259_n83_α
# IR_LIT_REAL
 xchain00259_n94_α:
 mov qword ptr [r12 + 368], 7
 mov rax, qword ptr [rip + .Lx00290_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00259_n98_α
 xchain00259_n94_β:
 jmp xchain00259_n87_α
.Lx00290_0:
 .quad 4611686018427387904
 xchain00259_n95_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn1370: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1370]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain00259_n96_α
 jmp xchain00259_n96_α
 xchain00259_n95_β:
 jmp xchain00259_n96_α
# IR_VAR
 xchain00259_n96_α:
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 168], rax
 jmp xchain00259_n99_α
 xchain00259_n96_β:
 jmp xchain00259_n00052_α
 xchain00259_n97_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00259_n83_α
 xchain00259_n97_β:
 jmp xchain00259_n83_α
 xchain00259_n98_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00259_n87_α
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00259_n00001_α
 xchain00259_n98_β:
 jmp xchain00259_n87_α
 xchain00259_n99_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+144]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn1376: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1376]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00259_n00052_α
 jmp xchain00259_n00052_α
 xchain00259_n99_β:
 jmp xchain00259_n00052_α
# IR_VAR
 xchain00259_n00052_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00259_n00054_α
 xchain00259_n00052_β:
 jmp main_ω
# IR_KEYWORD_read
 xchain00259_n00001_α:
 mov rdi, qword ptr [rip + .Lx00291_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00259_n00055_α
 xchain00259_n00001_β:
 jmp xchain00259_n87_α
.Lx00291_0:
 .quad .Lx00291_0_s
.Lx00291_0_s:
 .string "&pi"
 xchain00259_n00054_α:
  .section .rodata
  .Lcall00292_pname: .string "kgen"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00292_pname]
 mov esi, 1
 lea rdx, [r12 + 96]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp xchain00259_n00056_α
xchain00259_n00054_β:
 mov rdi, qword ptr [r12 + 96]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp xchain00259_n00056_α
# IR_LIT_INTEGER
 xchain00259_n00055_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00293_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00259_n00057_α
 xchain00259_n00055_β:
 jmp xchain00259_n87_α
.Lx00293_0:
 .quad 9999999
 xchain00259_n00056_α:
  .section .rodata
  .Lcall00294_pname: .string "dumpcode"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00294_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp xchain00259_n00054_β
xchain00259_n00056_β:
 jmp main_ω
 xchain00259_n00057_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 400]
 cmp eax, 100
 je .Lx00295_0
 mov eax, dword ptr [r12 + 432]
 cmp eax, 100
 je .Lx00295_0
 mov eax, dword ptr [r12 + 400]
 cmp eax, 6
 jne .Lx00295_2
 mov eax, dword ptr [r12 + 432]
 cmp eax, 6
 jne .Lx00295_2
.Lx00295_1:
 mov rax, qword ptr [r12 + 408]
 mov rcx, qword ptr [r12 + 440]
 cqo
 idiv rcx
 mov qword ptr [r12 + 384], 6
 mov qword ptr [r12 + 392], rax
 jmp xchain00259_n00059_α
.Lx00295_0:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 mov r8d, 3
 lea r9, [r12 + 384]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00295_3
.Lx00295_2:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00259_n87_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
.Lx00295_3:
 jmp xchain00259_n00059_α
 xchain00259_n00057_β:
 jmp xchain00259_n87_α
 xchain00259_n00059_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00259_n87_α
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00259_n00061_α
 xchain00259_n00059_β:
 jmp xchain00259_n87_α
 xchain00259_n00061_α:
# BOX IR_CALL sin(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+272]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn1385: .string "sin"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1385]
 lea rsi, [r12 + 272]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain00259_n87_α
 jmp xchain00259_n00002_α
 xchain00259_n00061_β:
 jmp xchain00259_n87_α
# IR_ASSIGN gva
 xchain00259_n00002_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00259_n87_α
 xchain00259_n00002_β:
 jmp xchain00259_n87_α
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
 mov rdi, qword ptr [r12 + 2096]
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
