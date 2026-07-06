  .intel_syntax noprefix
  .text
  .globl proc_addword_α
proc_addword_α:
#=======================================================================================================================
    .global proc_addword_α
    .global proc_addword_β
    .global proc_addword_γ
    .global proc_addword_ω
push r12
  mov r12, rdi
proc_addword_α_body:
xchain0_n0_α:
# IR_VAR gva
bb1_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n4_α
xchain0_n1_α:
# IR_VAR
bb2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1304], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n4_α
xchain0_n2_α:
bb3_α:
# BOX IR_CALL any(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1280] -> [r12+1248]
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1256], rax
# marshal arg1 = producer-box slot [r12+1296] -> [r12+1264]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1272], rax
  .section .rodata
  .Lbynamefn5: .string "any"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn5]
 lea rsi, [r12 + 1248]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n3_α
xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb4_α:
 lea rax, [rip + xchain0_n4_α]
 mov qword ptr [r12 + 1184], rax
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp proc_addword_ω
xchain0_n4_α:
# IR_VAR gva
bb5_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain0_n7_α
 xchain0_n4_β:
 jmp proc_addword_ω
xchain0_n5_α:
# IR_VAR_REF gva
bb6_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain0_n8_α
 xchain0_n5_β:
 jmp xchain0_n12_α
xchain0_n6_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb7_α:
 jmp qword ptr [r12 + 1184]
 xchain0_n6_β:
 jmp proc_addword_ω
xchain0_n7_α:
# IR_UNOP
bb8_α:
 mov eax, dword ptr [r12 + 1216]
 cmp eax, 99
 je proc_addword_ω
 cmp eax, 0
 je proc_addword_ω
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1208], rax
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp proc_addword_ω
xchain0_n8_α:
# IR_VAR
bb9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1096], rax
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n12_α
xchain0_n9_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb10_α:
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1176], rax
 lea rax, [rip + proc_addword_ω]
 mov qword ptr [r12 + 1184], rax
 jmp xchain0_n5_α
 xchain0_n9_β:
 jmp proc_addword_ω
xchain0_n10_α:
# IR_SUBSCRIPT x[i] variable
bb11_α:
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 mov rdx, qword ptr [r12 + 1088]
 mov rcx, qword ptr [r12 + 1096]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n12_α
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n12_α
xchain0_n11_α:
# IR_UNOP_TEST lv
bb12_α:
 mov eax, dword ptr [r12 + 1104]
 cmp eax, 99
 je xchain0_n12_α
 mov rdi, qword ptr [r12 + 1104]
 mov rsi, qword ptr [r12 + 1112]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n12_α
 cmp eax, 0
 jne xchain0_n12_α
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1128], rax
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n12_α
xchain0_n12_α:
# IR_VAR_REF gva
bb13_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n18_α
xchain0_n13_α:
bb14_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn23: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn23]
 lea rsi, [r12 + 1168]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n12_α
xchain0_n14_α:
# IR_VAR
bb15_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1000], rax
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp xchain0_n18_α
xchain0_n15_α:
# IR_ASSIGN_VAR write through variable
bb16_α:
 mov rdi, qword ptr [r12 + 1120]
 mov rsi, qword ptr [r12 + 1128]
 mov rdx, qword ptr [r12 + 1152]
 mov rcx, qword ptr [r12 + 1160]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n12_α
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain0_n12_α
 xchain0_n15_β:
 jmp xchain0_n12_α
xchain0_n16_α:
# IR_SUBSCRIPT x[i] variable
bb17_α:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 992]
 mov rcx, qword ptr [r12 + 1000]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n18_α
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n18_α
xchain0_n17_α:
# IR_LIT_STRING
bb18_α:
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n18_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "global"
xchain0_n18_α:
# IR_VAR
bb19_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 888], rax
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n25_α
xchain0_n19_α:
# IR_SUBSCRIPT x[i] variable
bb20_α:
 mov rdi, qword ptr [r12 + 1008]
 mov rsi, qword ptr [r12 + 1016]
 mov rdx, qword ptr [r12 + 1024]
 mov rcx, qword ptr [r12 + 1032]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n18_α
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n18_α
xchain0_n20_α:
# IR_VAR gva
bb21_α:
 mov rax, qword ptr [rbx + 192]
 mov rdx, qword ptr [rbx + 200]
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n25_α
xchain0_n21_α:
# IR_DEREF variable -> value
bb22_α:
 mov rdi, qword ptr [r12 + 1040]
 mov rsi, qword ptr [r12 + 1048]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n18_α
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n18_α
xchain0_n22_α:
# IR_UNOP
bb23_α:
 mov eax, dword ptr [r12 + 944]
 cmp eax, 99
 je xchain0_n25_α
 cmp eax, 0
 je xchain0_n25_α
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 936], rax
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n25_α
xchain0_n23_α:
# IR_UNOP
bb24_α:
 mov eax, dword ptr [r12 + 1056]
 cmp eax, 99
 je xchain0_n18_α
 cmp eax, 0
 jne xchain0_n18_α
 mov qword ptr [r12 + 960], 0
 mov qword ptr [r12 + 968], 0
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n18_α
xchain0_n24_α:
# IR_LIST_BANG
bb25_α:
 mov qword ptr [r12 + 912], 0
.Lx37_0:
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 912]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp rax, 99
 je xchain0_n25_α
 jmp xchain0_n27_α
 xchain0_n24_β:
 inc qword ptr [r12 + 912]
 jmp .Lx37_0
xchain0_n25_α:
# IR_VAR_REF gva
bb26_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain0_n28_α
 xchain0_n25_β:
 jmp xchain0_n35_α
xchain0_n26_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb27_α:
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 840], rax
 lea rax, [rip + xchain0_n18_α]
 mov qword ptr [r12 + 848], rax
 jmp xchain0_n29_α
 xchain0_n26_β:
 jmp xchain0_n25_α
xchain0_n27_α:
bb28_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 896]
 mov rcx, qword ptr [r12 + 904]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n25_α
 mov rdi, qword ptr [r12 + 896]
 mov rsi, qword ptr [r12 + 904]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain0_n31_α
 xchain0_n27_β:
 jmp xchain0_n25_α
xchain0_n28_α:
# IR_VAR
bb29_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 664], rax
 jmp xchain0_n32_α
 xchain0_n28_β:
 jmp xchain0_n35_α
xchain0_n29_α:
# IR_VAR_REF gva
bb30_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n33_α
 xchain0_n29_β:
 jmp xchain0_n40_α
xchain0_n30_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb31_α:
 jmp qword ptr [r12 + 848]
 xchain0_n30_β:
 jmp xchain0_n25_α
xchain0_n31_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb32_α:
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
 lea rax, [rip + xchain0_n24_β]
 mov qword ptr [r12 + 848], rax
 jmp xchain0_n29_α
 xchain0_n31_β:
 jmp xchain0_n25_α
xchain0_n32_α:
# IR_SUBSCRIPT x[i] variable
bb33_α:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 656]
 mov rcx, qword ptr [r12 + 664]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n35_α
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n35_α
xchain0_n33_α:
# IR_VAR
bb34_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 312], rax
 jmp xchain0_n36_α
 xchain0_n33_β:
 jmp xchain0_n40_α
xchain0_n34_α:
# IR_LIT_STRING
bb35_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx54_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain0_n37_α
 xchain0_n34_β:
 jmp xchain0_n35_α
.Lx54_0:
 .quad .Lx54_0_s
.Lx54_0_s:
 .string "global"
xchain0_n35_α:
# IR_VAR_REF gva
bb36_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain0_n38_α
 xchain0_n35_β:
 jmp proc_addword_ω
xchain0_n36_α:
# IR_SUBSCRIPT x[i] variable
bb37_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n40_α
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain0_n39_α
 xchain0_n36_β:
 jmp xchain0_n40_α
xchain0_n37_α:
# IR_SUBSCRIPT x[i] variable
bb38_α:
 mov rdi, qword ptr [r12 + 672]
 mov rsi, qword ptr [r12 + 680]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n35_α
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain0_n41_α
 xchain0_n37_β:
 jmp xchain0_n35_α
xchain0_n38_α:
# IR_VAR
bb39_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 552], rax
 jmp xchain0_n42_α
 xchain0_n38_β:
 jmp proc_addword_ω
xchain0_n39_α:
# IR_VAR
bb40_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 344], rax
 jmp xchain0_n43_α
 xchain0_n39_β:
 jmp xchain0_n40_α
xchain0_n40_α:
# IR_VAR_REF gva
bb41_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain0_n44_α
 xchain0_n40_β:
 jmp proc_addword_ω
xchain0_n41_α:
# IR_UNOP_TEST lv
bb42_α:
 mov eax, dword ptr [r12 + 704]
 cmp eax, 99
 je xchain0_n35_α
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n35_α
 cmp eax, 0
 jne xchain0_n35_α
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 728], rax
 jmp xchain0_n45_α
 xchain0_n41_β:
 jmp xchain0_n35_α
xchain0_n42_α:
# IR_SUBSCRIPT x[i] variable
bb43_α:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 552]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n46_α
 xchain0_n42_β:
 jmp proc_addword_ω
xchain0_n43_α:
# IR_SUBSCRIPT x[i] variable
bb44_α:
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n40_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n47_α
 xchain0_n43_β:
 jmp xchain0_n40_α
xchain0_n44_α:
# IR_VAR
bb45_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain0_n48_α
 xchain0_n44_β:
 jmp proc_addword_ω
xchain0_n45_α:
# IR_VAR
bb46_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 808], rax
 jmp xchain0_n49_α
 xchain0_n45_β:
 jmp xchain0_n35_α
xchain0_n46_α:
# IR_LIT_STRING
bb47_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx72_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n50_α
 xchain0_n46_β:
 jmp proc_addword_ω
.Lx72_0:
 .quad .Lx72_0_s
.Lx72_0_s:
 .string "global"
xchain0_n47_α:
# IR_UNOP_TEST lv
bb48_α:
 mov eax, dword ptr [r12 + 352]
 cmp eax, 99
 je xchain0_n40_α
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n40_α
 cmp eax, 0
 jne xchain0_n40_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 376], rax
 jmp xchain0_n51_α
 xchain0_n47_β:
 jmp xchain0_n40_α
xchain0_n48_α:
# IR_SUBSCRIPT x[i] variable
bb49_α:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n52_α
 xchain0_n48_β:
 jmp proc_addword_ω
xchain0_n49_α:
# IR_LIT_STRING
bb50_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain0_n53_α
 xchain0_n49_β:
 jmp xchain0_n35_α
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
 .string "global"
xchain0_n50_α:
# IR_SUBSCRIPT x[i] variable
bb51_α:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain0_n54_α
 xchain0_n50_β:
 jmp proc_addword_ω
xchain0_n51_α:
# IR_VAR
bb52_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 456], rax
 jmp xchain0_n55_α
 xchain0_n51_β:
 jmp xchain0_n40_α
xchain0_n52_α:
# IR_VAR
bb53_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 232], rax
 jmp xchain0_n56_α
 xchain0_n52_β:
 jmp proc_addword_ω
xchain0_n53_α:
# IR_MAKE_LIST
bb54_α:
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 776], rax
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
 lea rdi, [r12 + 768]
 mov esi, 2
 call rt_make_list@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain0_n57_α
 xchain0_n53_β:
 jmp xchain0_n35_α
xchain0_n54_α:
# IR_DEREF variable -> value
bb55_α:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 call rt_deref@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain0_n58_α
 xchain0_n54_β:
 jmp proc_addword_ω
xchain0_n55_α:
# IR_VAR
bb56_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n59_α
 xchain0_n55_β:
 jmp xchain0_n40_α
xchain0_n56_α:
# IR_SUBSCRIPT x[i] variable
bb57_α:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n60_α
 xchain0_n56_β:
 jmp proc_addword_ω
xchain0_n57_α:
# IR_ASSIGN_VAR write through variable
bb58_α:
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n35_α
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain0_n35_α
 xchain0_n57_β:
 jmp xchain0_n35_α
xchain0_n58_α:
# IR_VAR
bb59_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 632], rax
 jmp xchain0_n61_α
 xchain0_n58_β:
 jmp proc_addword_ω
xchain0_n59_α:
# IR_MAKE_LIST
bb60_α:
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
 lea rdi, [r12 + 416]
 mov esi, 2
 call rt_make_list@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain0_n62_α
 xchain0_n59_β:
 jmp xchain0_n40_α
xchain0_n60_α:
# IR_DEREF variable -> value
bb61_α:
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 call rt_deref@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n63_α
 xchain0_n60_β:
 jmp proc_addword_ω
xchain0_n61_α:
bb62_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+608] -> [r12+496]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = producer-box slot [r12+624] -> [r12+512]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn94: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn94]
 lea rsi, [r12 + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je proc_addword_ω
 jmp xchain0_n64_α
 xchain0_n61_β:
 jmp proc_addword_ω
xchain0_n62_α:
# IR_ASSIGN_VAR write through variable
bb63_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n40_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain0_n40_α
 xchain0_n62_β:
 jmp xchain0_n40_α
xchain0_n63_α:
# IR_VAR
bb64_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n65_α
 xchain0_n63_β:
 jmp proc_addword_ω
xchain0_n64_α:
 jmp xchain0_n66_α
xchain0_n64_β:
 jmp proc_addword_ω
xchain0_n65_α:
bb66_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+256] -> [r12+144]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [r12+272] -> [r12+160]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn100: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn100]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je proc_addword_ω
 jmp xchain0_n67_α
 xchain0_n65_β:
 jmp proc_addword_ω
xchain0_n66_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb67_α:
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + proc_addword_ω]
 mov qword ptr [r12 + 112], rax
 jmp xchain0_n68_α
 xchain0_n66_β:
 jmp proc_addword_ω
xchain0_n67_α:
 jmp xchain0_n70_α
xchain0_n67_β:
 jmp proc_addword_ω
xchain0_n68_α:
 jmp xchain0_n71_α
xchain0_n68_β:
 jmp proc_addword_ω
xchain0_n69_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb70_α:
 jmp qword ptr [r12 + 112]
 xchain0_n69_β:
 jmp proc_addword_ω
xchain0_n70_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb71_α:
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + proc_addword_ω]
 mov qword ptr [r12 + 112], rax
 jmp xchain0_n68_α
 xchain0_n70_β:
 jmp proc_addword_ω
xchain0_n71_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb72_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 72], rax
 lea rax, [rip + xchain0_n69_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_addword_γ
 xchain0_n71_β:
 jmp proc_addword_ω
xchain0_n72_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb73_α:
 jmp qword ptr [r12 + 80]
 xchain0_n72_β:
 jmp proc_addword_ω
proc_addword_β:
jmp proc_addword_ω
proc_addword_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_addword_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_getword_α
proc_getword_α:
#=======================================================================================================================
    .global proc_getword_α
    .global proc_getword_β
    .global proc_getword_γ
    .global proc_getword_ω
push r12
  mov r12, rdi
proc_getword_α_body:
xchain00001_n0_α:
# IR_VAR_REF gva
bb74_α:
 lea rdi, [rbx + 256]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 jmp xchain00001_n1_α
 xchain00001_n0_β:
 jmp xchain00001_n5_α
xchain00001_n1_α:
# IR_UNOP_TEST lv
bb75_α:
 mov eax, dword ptr [r12 + 2576]
 cmp eax, 99
 je xchain00001_n5_α
 mov rdi, qword ptr [r12 + 2576]
 mov rsi, qword ptr [r12 + 2584]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n5_α
 cmp eax, 0
 jne xchain00001_n5_α
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 2592], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 2600], rax
 jmp xchain00001_n2_α
 xchain00001_n1_β:
 jmp xchain00001_n5_α
xchain00001_n2_α:
# IR_LIT_INTEGER
bb76_α:
 mov qword ptr [r12 + 2624], 6
 mov rax, qword ptr [rip + .Lx00002_0]
 mov qword ptr [r12 + 2632], rax
 jmp xchain00001_n4_α
 xchain00001_n2_β:
 jmp xchain00001_n5_α
.Lx00002_0:
 .quad 1
xchain00001_n3_α:
 jmp xchain00001_n5_α
xchain00001_n3_β:
 jmp xchain00001_n5_α
xchain00001_n4_α:
# IR_ASSIGN_VAR write through variable
bb78_α:
 mov rdi, qword ptr [r12 + 2592]
 mov rsi, qword ptr [r12 + 2600]
 mov rdx, qword ptr [r12 + 2624]
 mov rcx, qword ptr [r12 + 2632]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00001_n5_α
 mov qword ptr [r12 + 2608], rax
 mov qword ptr [r12 + 2616], rdx
 jmp xchain00001_n6_α
 xchain00001_n4_β:
 jmp xchain00001_n5_α
xchain00001_n5_α:
# IR_VAR gva
bb79_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 jmp xchain00001_n7_α
 xchain00001_n5_β:
 jmp xchain00001_n10_α
xchain00001_n6_α:
# IR_LIT_CHARSET
bb80_α:
 mov qword ptr [r12 + 2560], 1
 mov dword ptr [r12 + 2564], -1
 mov rax, qword ptr [rip + .Lx00003_0]
 mov qword ptr [r12 + 2568], rax
 jmp xchain00001_n8_α
 xchain00001_n6_β:
 jmp xchain00001_n5_α
.Lx00003_0:
 .quad .Lx00003_0_s
.Lx00003_0_s:
 .string "\t\n "
xchain00001_n7_α:
# IR_UNOP
bb81_α:
 mov rdi, qword ptr [r12 + 2464]
 mov rsi, qword ptr [r12 + 2472]
 call rt_size_d@PLT
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 jmp xchain00001_n9_α
 xchain00001_n7_β:
 jmp xchain00001_n10_α
xchain00001_n8_α:
# IR_UNOP
bb82_α:
 mov rdi, qword ptr [r12 + 2560]
 mov rsi, qword ptr [r12 + 2568]
 call rt_cset_compl@PLT
 mov qword ptr [r12 + 2544], rax
 mov qword ptr [r12 + 2552], rdx
 jmp xchain00001_n11_α
 xchain00001_n8_β:
 jmp xchain00001_n5_α
xchain00001_n9_α:
# IR_LIT_INTEGER
bb83_α:
 mov qword ptr [r12 + 2480], 6
 mov rax, qword ptr [rip + .Lx00004_0]
 mov qword ptr [r12 + 2488], rax
 jmp xchain00001_n12_α
 xchain00001_n9_β:
 jmp xchain00001_n10_α
.Lx00004_0:
 .quad 0
xchain00001_n10_α:
# IR_VAR gva
bb84_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 jmp xchain00001_n13_α
 xchain00001_n10_β:
 jmp xchain00001_n17_α
xchain00001_n11_α:
# IR_ASSIGN gva
bb85_α:
 mov rax, qword ptr [r12 + 2544]
 mov rdx, qword ptr [r12 + 2552]
 mov qword ptr [rbx + 240], rax
 mov qword ptr [rbx + 248], rdx
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 jmp xchain00001_n14_α
 xchain00001_n11_β:
 jmp xchain00001_n5_α
xchain00001_n12_α:
bb86_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2448]
 cmp eax, 100
 je .Lx00005_0
 mov eax, dword ptr [r12 + 2480]
 cmp eax, 100
 je .Lx00005_0
 mov eax, dword ptr [r12 + 2448]
 cmp eax, 6
 jne .Lx00005_2
 mov eax, dword ptr [r12 + 2480]
 cmp eax, 6
 jne .Lx00005_2
.Lx00005_1:
 mov rax, qword ptr [r12 + 2456]
 mov rcx, qword ptr [r12 + 2488]
 cmp rax, rcx
 jle xchain00001_n10_α
 mov rcx, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 2432], rcx
 mov rcx, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 2440], rcx
 jmp xchain00001_n15_α
.Lx00005_0:
 mov rdi, qword ptr [r12 + 2448]
 mov rsi, qword ptr [r12 + 2456]
 mov rdx, qword ptr [r12 + 2480]
 mov rcx, qword ptr [r12 + 2488]
 mov r8d, 7
 lea r9, [r12 + 2432]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00005_1
 cmp eax, 1
 je xchain00001_n10_α
 jmp xchain00001_n15_α
.Lx00005_2:
 mov rdi, qword ptr [r12 + 2448]
 mov rsi, qword ptr [r12 + 2456]
 mov rdx, qword ptr [r12 + 2480]
 mov rcx, qword ptr [r12 + 2488]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n10_α
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 2432], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 2440], rax
 jmp xchain00001_n15_α
 xchain00001_n12_β:
 jmp xchain00001_n10_α
xchain00001_n13_α:
# IR_UNOP
bb87_α:
 mov eax, dword ptr [r12 + 2336]
 cmp eax, 99
 je xchain00001_n17_α
 cmp eax, 0
 jne xchain00001_n17_α
 mov qword ptr [r12 + 2320], 0
 mov qword ptr [r12 + 2328], 0
 jmp xchain00001_n16_α
 xchain00001_n13_β:
 jmp xchain00001_n17_α
xchain00001_n14_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb88_α:
 mov rax, qword ptr [r12 + 2528]
 mov qword ptr [r12 + 2496], rax
 mov rax, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 2504], rax
 lea rax, [rip + xchain00001_n3_α]
 mov qword ptr [r12 + 2512], rax
 jmp xchain00001_n3_α
 xchain00001_n14_β:
 jmp xchain00001_n5_α
xchain00001_n15_α:
# IR_VAR gva
bb89_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 jmp xchain00001_n19_α
 xchain00001_n15_β:
 jmp proc_getword_ω
xchain00001_n16_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb90_α:
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 2200], rax
 lea rax, [rip + xchain00001_n17_α]
 mov qword ptr [r12 + 2208], rax
 jmp xchain00001_n20_α
 xchain00001_n16_β:
 jmp xchain00001_n28_α
xchain00001_n17_α:
# IR_VAR gva
bb91_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain00001_n22_α
 xchain00001_n17_β:
 jmp xchain00001_n28_α
xchain00001_n18_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb92_α:
 jmp qword ptr [r12 + 2512]
 xchain00001_n18_β:
 jmp xchain00001_n5_α
xchain00001_n19_α:
bb93_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2416] -> [r12+2400]
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2400], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2408], rax
  .section .rodata
  .Lrkfn138: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn138]
 lea rsi, [r12 + 2400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 cmp eax, 99
 je proc_getword_ω
 jmp xchain00001_n23_α
 xchain00001_n19_β:
 jmp proc_getword_ω
xchain00001_n20_α:
# IR_VAR gva
bb94_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain00001_n24_α
 xchain00001_n20_β:
 jmp proc_getword_ω
xchain00001_n21_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb95_α:
 jmp qword ptr [r12 + 2208]
 xchain00001_n21_β:
 jmp xchain00001_n28_α
xchain00001_n22_α:
# IR_VAR gva
bb96_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain00001_n25_α
 xchain00001_n22_β:
 jmp xchain00001_n28_α
xchain00001_n23_α:
# IR_RETURN
bb97_α:
 mov rax, qword ptr [r12 + 2384]
 mov rdx, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_getword_γ
xchain00001_n24_α:
bb98_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2176] -> [r12+2160]
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 2160], rax
 mov rax, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 2168], rax
  .section .rodata
  .Lrkfn145: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn145]
 lea rsi, [r12 + 2160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 cmp eax, 99
 je proc_getword_ω
 jmp xchain00001_n26_α
 xchain00001_n24_β:
 jmp proc_getword_ω
xchain00001_n25_α:
# IR_UNOP
bb99_α:
 mov rdi, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 call rt_size_d@PLT
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 jmp xchain00001_n27_α
 xchain00001_n25_β:
 jmp xchain00001_n28_α
xchain00001_n26_α:
# IR_ASSIGN gva
bb00006_α:
 mov rax, qword ptr [r12 + 2144]
 mov rdx, qword ptr [r12 + 2152]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 jmp xchain00001_n29_α
 xchain00001_n26_β:
 jmp proc_getword_ω
xchain00001_n27_α:
# IR_LIT_INTEGER
bb00007_α:
 mov qword ptr [r12 + 2304], 6
 mov rax, qword ptr [rip + .Lx00008_0]
 mov qword ptr [r12 + 2312], rax
 jmp xchain00001_n30_α
 xchain00001_n27_β:
 jmp xchain00001_n28_α
.Lx00008_0:
 .quad 1
xchain00001_n28_α:
# IR_VAR gva
bb00009_α:
 mov rax, qword ptr [rbx + 240]
 mov rdx, qword ptr [rbx + 248]
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain00001_n31_α
 xchain00001_n28_β:
 jmp xchain00001_n40_α
xchain00001_n29_α:
# IR_LIT_INTEGER
bb00010_α:
 mov qword ptr [r12 + 2112], 6
 mov rax, qword ptr [rip + .Lx00011_0]
 mov qword ptr [r12 + 2120], rax
 jmp xchain00001_n32_α
 xchain00001_n29_β:
 jmp xchain00001_n35_α
.Lx00011_0:
 .quad 1
xchain00001_n30_α:
bb00012_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 100
 je .Lx00013_0
 mov eax, dword ptr [r12 + 2304]
 cmp eax, 100
 je .Lx00013_0
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 6
 jne .Lx00013_2
 mov eax, dword ptr [r12 + 2304]
 cmp eax, 6
 jne .Lx00013_2
.Lx00013_1:
 mov rax, qword ptr [r12 + 2280]
 mov rcx, qword ptr [r12 + 2312]
 add rax, rcx
 mov qword ptr [r12 + 2256], 6
 mov qword ptr [r12 + 2264], rax
 jmp xchain00001_n33_α
.Lx00013_0:
 mov rdi, qword ptr [r12 + 2272]
 mov rsi, qword ptr [r12 + 2280]
 mov rdx, qword ptr [r12 + 2304]
 mov rcx, qword ptr [r12 + 2312]
 mov r8d, 0
 lea r9, [r12 + 2256]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00013_3
.Lx00013_2:
 mov rdi, qword ptr [r12 + 2272]
 mov rsi, qword ptr [r12 + 2280]
 mov rdx, qword ptr [r12 + 2304]
 mov rcx, qword ptr [r12 + 2312]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n28_α
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
.Lx00013_3:
 jmp xchain00001_n33_α
 xchain00001_n30_β:
 jmp xchain00001_n28_α
xchain00001_n31_α:
# IR_VAR gva
bb00014_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 jmp xchain00001_n34_α
 xchain00001_n31_β:
 jmp xchain00001_n40_α
xchain00001_n32_α:
# IR_ASSIGN gva
bb00015_α:
 mov rax, qword ptr [r12 + 2112]
 mov rdx, qword ptr [r12 + 2120]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain00001_n35_α
 xchain00001_n32_β:
 jmp xchain00001_n35_α
xchain00001_n33_α:
bb00016_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2240]
 cmp eax, 100
 je .Lx00017_0
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 100
 je .Lx00017_0
 mov eax, dword ptr [r12 + 2240]
 cmp eax, 6
 jne .Lx00017_2
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 6
 jne .Lx00017_2
.Lx00017_1:
 mov rax, qword ptr [r12 + 2248]
 mov rcx, qword ptr [r12 + 2264]
 cmp rax, rcx
 jne xchain00001_n28_α
 mov rcx, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 2224], rcx
 mov rcx, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2232], rcx
 jmp xchain00001_n36_α
.Lx00017_0:
 mov rdi, qword ptr [r12 + 2240]
 mov rsi, qword ptr [r12 + 2248]
 mov rdx, qword ptr [r12 + 2256]
 mov rcx, qword ptr [r12 + 2264]
 mov r8d, 9
 lea r9, [r12 + 2224]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00017_1
 cmp eax, 1
 je xchain00001_n28_α
 jmp xchain00001_n36_α
.Lx00017_2:
 mov rdi, qword ptr [r12 + 2240]
 mov rsi, qword ptr [r12 + 2248]
 mov rdx, qword ptr [r12 + 2256]
 mov rcx, qword ptr [r12 + 2264]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n28_α
 mov rax, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2232], rax
 jmp xchain00001_n36_α
 xchain00001_n33_β:
 jmp xchain00001_n28_α
xchain00001_n34_α:
# IR_VAR gva
bb00018_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 jmp xchain00001_n37_α
 xchain00001_n34_β:
 jmp xchain00001_n40_α
xchain00001_n35_α:
# IR_VAR gva
bb00019_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain00001_n38_α
 xchain00001_n35_β:
 jmp xchain00001_n28_α
xchain00001_n36_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00020_α:
 mov rax, qword ptr [r12 + 2224]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 2200], rax
 lea rax, [rip + xchain00001_n28_α]
 mov qword ptr [r12 + 2208], rax
 jmp xchain00001_n20_α
 xchain00001_n36_β:
 jmp xchain00001_n28_α
xchain00001_n37_α:
bb00021_α:
# BOX IR_CALL upto(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1920] -> [r12+1872]
 mov rax, qword ptr [r12 + 1920]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 1880], rax
# marshal arg1 = producer-box slot [r12+1936] -> [r12+1888]
 mov rax, qword ptr [r12 + 1936]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 1896], rax
# marshal arg2 = producer-box slot [r12+1952] -> [r12+1904]
 mov rax, qword ptr [r12 + 1952]
 mov qword ptr [r12 + 1904], rax
 mov rax, qword ptr [r12 + 1960]
 mov qword ptr [r12 + 1912], rax
  .section .rodata
  .Lbynamefn160: .string "upto"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn160]
 lea rsi, [r12 + 1872]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 cmp eax, 99
 je xchain00001_n40_α
 jmp xchain00001_n39_α
xchain00001_n37_β:
 jmp xchain00001_n40_α
xchain00001_n38_α:
# IR_LIT_INTEGER
bb00022_α:
 mov qword ptr [r12 + 2080], 6
 mov rax, qword ptr [rip + .Lx00023_0]
 mov qword ptr [r12 + 2088], rax
 jmp xchain00001_n41_α
 xchain00001_n38_β:
 jmp xchain00001_n28_α
.Lx00023_0:
 .quad 1
xchain00001_n39_α:
# IR_ASSIGN gva
bb00001_α:
 mov rax, qword ptr [r12 + 1856]
 mov rdx, qword ptr [r12 + 1864]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 jmp xchain00001_n42_α
 xchain00001_n39_β:
 jmp xchain00001_n40_α
xchain00001_n40_α:
# IR_VAR gva
bb00024_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain00001_n43_α
 xchain00001_n40_β:
 jmp xchain00001_n5_α
xchain00001_n41_α:
bb00025_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2064]
 cmp eax, 100
 je .Lx00026_0
 mov eax, dword ptr [r12 + 2080]
 cmp eax, 100
 je .Lx00026_0
 mov eax, dword ptr [r12 + 2064]
 cmp eax, 6
 jne .Lx00026_2
 mov eax, dword ptr [r12 + 2080]
 cmp eax, 6
 jne .Lx00026_2
.Lx00026_1:
 mov rax, qword ptr [r12 + 2072]
 mov rcx, qword ptr [r12 + 2088]
 add rax, rcx
 mov qword ptr [r12 + 2048], 6
 mov qword ptr [r12 + 2056], rax
 jmp xchain00001_n44_α
.Lx00026_0:
 mov rdi, qword ptr [r12 + 2064]
 mov rsi, qword ptr [r12 + 2072]
 mov rdx, qword ptr [r12 + 2080]
 mov rcx, qword ptr [r12 + 2088]
 mov r8d, 0
 lea r9, [r12 + 2048]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00026_3
.Lx00026_2:
 mov rdi, qword ptr [r12 + 2064]
 mov rsi, qword ptr [r12 + 2072]
 mov rdx, qword ptr [r12 + 2080]
 mov rcx, qword ptr [r12 + 2088]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n28_α
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
.Lx00026_3:
 jmp xchain00001_n44_α
 xchain00001_n41_β:
 jmp xchain00001_n28_α
xchain00001_n42_α:
# IR_VAR gva
bb00027_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain00001_n45_α
 xchain00001_n42_β:
 jmp xchain00001_n48_α
xchain00001_n43_α:
# IR_UNOP
bb00002_α:
 mov rdi, qword ptr [r12 + 1808]
 mov rsi, qword ptr [r12 + 1816]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain00001_n46_α
 xchain00001_n43_β:
 jmp xchain00001_n5_α
xchain00001_n44_α:
# IR_ASSIGN gva
bb00028_α:
 mov rax, qword ptr [r12 + 2048]
 mov rdx, qword ptr [r12 + 2056]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 jmp xchain00001_n47_α
 xchain00001_n44_β:
 jmp xchain00001_n28_α
xchain00001_n45_α:
bb00029_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1744]
 mov rdx, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 2656], rax
 mov qword ptr [r12 + 2664], rdx
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain00001_n48_α
 xchain00001_n45_β:
 jmp xchain00001_n48_α
xchain00001_n46_α:
# IR_LIT_INTEGER
bb00030_α:
 mov qword ptr [r12 + 1824], 6
 mov rax, qword ptr [rip + .Lx00031_0]
 mov qword ptr [r12 + 1832], rax
 jmp xchain00001_n49_α
 xchain00001_n46_β:
 jmp xchain00001_n5_α
.Lx00031_0:
 .quad 1
xchain00001_n47_α:
 jmp xchain00001_n50_α
xchain00001_n47_β:
 jmp xchain00001_n28_α
xchain00001_n48_α:
# IR_VAR_REF gva
bb00032_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00001_n51_α
 xchain00001_n48_β:
 jmp xchain00001_n59_α
xchain00001_n49_α:
bb00033_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1792]
 cmp eax, 100
 je .Lx00034_0
 mov eax, dword ptr [r12 + 1824]
 cmp eax, 100
 je .Lx00034_0
 mov eax, dword ptr [r12 + 1792]
 cmp eax, 6
 jne .Lx00034_2
 mov eax, dword ptr [r12 + 1824]
 cmp eax, 6
 jne .Lx00034_2
.Lx00034_1:
 mov rax, qword ptr [r12 + 1800]
 mov rcx, qword ptr [r12 + 1832]
 add rax, rcx
 mov qword ptr [r12 + 1776], 6
 mov qword ptr [r12 + 1784], rax
 jmp xchain00001_n52_α
.Lx00034_0:
 mov rdi, qword ptr [r12 + 1792]
 mov rsi, qword ptr [r12 + 1800]
 mov rdx, qword ptr [r12 + 1824]
 mov rcx, qword ptr [r12 + 1832]
 mov r8d, 0
 lea r9, [r12 + 1776]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00034_3
.Lx00034_2:
 mov rdi, qword ptr [r12 + 1792]
 mov rsi, qword ptr [r12 + 1800]
 mov rdx, qword ptr [r12 + 1824]
 mov rcx, qword ptr [r12 + 1832]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n5_α
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
.Lx00034_3:
 jmp xchain00001_n52_α
 xchain00001_n49_β:
 jmp xchain00001_n5_α
xchain00001_n50_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00004_α:
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 2000], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 2008], rax
 lea rax, [rip + xchain00001_n28_α]
 mov qword ptr [r12 + 2016], rax
 jmp xchain00001_n53_α
 xchain00001_n50_β:
 jmp xchain00001_n28_α
xchain00001_n51_α:
# IR_VAR gva
bb00035_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xchain00001_n55_α
 xchain00001_n51_β:
 jmp xchain00001_n59_α
xchain00001_n52_α:
# IR_ASSIGN gva
bb00036_α:
 mov rax, qword ptr [r12 + 1776]
 mov rdx, qword ptr [r12 + 1784]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain00001_n56_α
 xchain00001_n52_β:
 jmp xchain00001_n5_α
xchain00001_n53_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00005_α:
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 1976], rax
 lea rax, [rip + xchain00001_n54_α]
 mov qword ptr [r12 + 1984], rax
 jmp xchain00001_n28_α
 xchain00001_n53_β:
 jmp xchain00001_n28_α
xchain00001_n54_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00037_α:
 jmp qword ptr [r12 + 2016]
 xchain00001_n54_β:
 jmp xchain00001_n28_α
xchain00001_n55_α:
# IR_SUBSCRIPT x[i] variable
bb00038_α:
 mov rdi, qword ptr [r12 + 1600]
 mov rsi, qword ptr [r12 + 1608]
 mov rdx, qword ptr [r12 + 1616]
 mov rcx, qword ptr [r12 + 1624]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00001_n59_α
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain00001_n58_α
 xchain00001_n55_β:
 jmp xchain00001_n59_α
xchain00001_n56_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00039_α:
 mov rax, qword ptr [r12 + 1760]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 1768]
 mov qword ptr [r12 + 24], rax
 lea rax, [rip + xchain00001_n3_α]
 mov qword ptr [r12 + 32], rax
 jmp xchain00001_n60_α
 xchain00001_n56_β:
 jmp xchain00001_n5_α
xchain00001_n57_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00040_α:
 jmp qword ptr [r12 + 1984]
 xchain00001_n57_β:
 jmp xchain00001_n28_α
xchain00001_n58_α:
# IR_DEREF variable -> value
bb00041_α:
 mov rdi, qword ptr [r12 + 1632]
 mov rsi, qword ptr [r12 + 1640]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n59_α
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain00001_n62_α
 xchain00001_n58_β:
 jmp xchain00001_n59_α
xchain00001_n59_α:
# IR_VAR_REF gva
bb00042_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 jmp xchain00001_n63_α
 xchain00001_n59_β:
 jmp xchain00001_n70_α
xchain00001_n60_α:
 jmp xchain00001_n5_α
xchain00001_n60_β:
 jmp xchain00001_n5_α
xchain00001_n61_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00043_α:
 jmp qword ptr [r12 + 32]
 xchain00001_n61_β:
 jmp xchain00001_n5_α
xchain00001_n62_α:
# IR_LIT_STRING
bb00044_α:
 mov qword ptr [r12 + 1712], 1
 mov rax, qword ptr [rip + .Lx00045_0]
 mov qword ptr [r12 + 1720], rax
 jmp xchain00001_n64_α
 xchain00001_n62_β:
 jmp xchain00001_n67_α
.Lx00045_0:
 .quad .Lx00045_0_s
.Lx00045_0_s:
 .string "'"
xchain00001_n63_α:
# IR_VAR gva
bb00046_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain00001_n65_α
 xchain00001_n63_β:
 jmp xchain00001_n70_α
xchain00001_n64_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00047_α:
 mov rax, qword ptr [r12 + 1712]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 1672], rax
 lea rax, [rip + xchain00001_n67_α]
 mov qword ptr [r12 + 1680], rax
 jmp xchain00001_n66_α
 xchain00001_n64_β:
 jmp xchain00001_n59_α
xchain00001_n65_α:
# IR_SUBSCRIPT x[i] variable
bb00048_α:
 mov rdi, qword ptr [r12 + 1504]
 mov rsi, qword ptr [r12 + 1512]
 mov rdx, qword ptr [r12 + 1520]
 mov rcx, qword ptr [r12 + 1528]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00001_n70_α
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain00001_n69_α
 xchain00001_n65_β:
 jmp xchain00001_n70_α
xchain00001_n66_α:
bb00049_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 1648]
 mov rsi, qword ptr [r12 + 1656]
 mov rdx, qword ptr [r12 + 1664]
 mov rcx, qword ptr [r12 + 1672]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n59_α
 mov rdi, qword ptr [r12 + 1664]
 mov rsi, qword ptr [r12 + 1672]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain00001_n71_α
 xchain00001_n66_β:
 jmp xchain00001_n59_α
xchain00001_n67_α:
# IR_LIT_STRING
bb00050_α:
 mov qword ptr [r12 + 1696], 1
 mov rax, qword ptr [rip + .Lx00051_0]
 mov qword ptr [r12 + 1704], rax
 jmp xchain00001_n72_α
 xchain00001_n67_β:
 jmp xchain00001_n59_α
.Lx00051_0:
 .quad .Lx00051_0_s
.Lx00051_0_s:
 .string "\""
xchain00001_n68_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00052_α:
 jmp qword ptr [r12 + 1680]
 xchain00001_n68_β:
 jmp xchain00001_n59_α
xchain00001_n69_α:
# IR_DEREF variable -> value
bb00053_α:
 mov rdi, qword ptr [r12 + 1536]
 mov rsi, qword ptr [r12 + 1544]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n70_α
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain00001_n73_α
 xchain00001_n69_β:
 jmp xchain00001_n70_α
xchain00001_n70_α:
# IR_VAR gva
bb00054_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain00001_n74_α
 xchain00001_n70_β:
 jmp xchain00001_n86_α
xchain00001_n71_α:
# IR_VAR gva
bb00055_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain00001_n75_α
 xchain00001_n71_β:
 jmp xchain00001_n79_α
xchain00001_n72_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00056_α:
 mov rax, qword ptr [r12 + 1696]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 1672], rax
 lea rax, [rip + xchain00001_n59_α]
 mov qword ptr [r12 + 1680], rax
 jmp xchain00001_n66_α
 xchain00001_n72_β:
 jmp xchain00001_n59_α
xchain00001_n73_α:
# IR_LIT_STRING
bb00057_α:
 mov qword ptr [r12 + 1568], 1
 mov rax, qword ptr [rip + .Lx00058_0]
 mov qword ptr [r12 + 1576], rax
 jmp xchain00001_n76_α
 xchain00001_n73_β:
 jmp xchain00001_n70_α
.Lx00058_0:
 .quad .Lx00058_0_s
.Lx00058_0_s:
 .string "#"
xchain00001_n74_α:
# IR_VAR gva
bb00008_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain00001_n77_α
 xchain00001_n74_β:
 jmp xchain00001_n86_α
xchain00001_n75_α:
# IR_UNOP
bb00059_α:
 mov eax, dword ptr [r12 + 976]
 cmp eax, 99
 je xchain00001_n79_α
 cmp eax, 0
 jne xchain00001_n79_α
 mov qword ptr [r12 + 960], 0
 mov qword ptr [r12 + 968], 0
 jmp xchain00001_n78_α
 xchain00001_n75_β:
 jmp xchain00001_n79_α
xchain00001_n76_α:
bb00011_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 1552]
 mov rsi, qword ptr [r12 + 1560]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n70_α
 mov rdi, qword ptr [r12 + 1568]
 mov rsi, qword ptr [r12 + 1576]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 jmp xchain00001_n80_α
 xchain00001_n76_β:
 jmp xchain00001_n70_α
xchain00001_n77_α:
# IR_VAR gva
bb00013_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain00001_n81_α
 xchain00001_n77_β:
 jmp xchain00001_n86_α
xchain00001_n78_α:
# IR_VAR_REF gva
bb00060_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00001_n82_α
 xchain00001_n78_β:
 jmp xchain00001_n93_α
xchain00001_n79_α:
# IR_VAR gva
bb00061_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain00001_n83_α
 xchain00001_n79_β:
 jmp xchain00001_n5_α
xchain00001_n80_α:
# IR_VAR gva
bb00017_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain00001_n84_α
 xchain00001_n80_β:
 jmp xchain00001_n5_α
xchain00001_n81_α:
bb00062_α:
# BOX IR_CALL many(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1440] -> [r12+1392]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1400], rax
# marshal arg1 = producer-box slot [r12+1456] -> [r12+1408]
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1416], rax
# marshal arg2 = producer-box slot [r12+1472] -> [r12+1424]
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 1432], rax
  .section .rodata
  .Lbynamefn217: .string "many"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn217]
 lea rsi, [r12 + 1392]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 cmp eax, 99
 je xchain00001_n86_α
 jmp xchain00001_n85_α
xchain00001_n81_β:
 jmp xchain00001_n86_α
xchain00001_n82_α:
# IR_VAR gva
bb00063_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain00001_n87_α
 xchain00001_n82_β:
 jmp xchain00001_n93_α
xchain00001_n83_α:
# IR_LIT_INTEGER
bb00064_α:
 mov qword ptr [r12 + 944], 6
 mov rax, qword ptr [rip + .Lx00065_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00001_n88_α
 xchain00001_n83_β:
 jmp xchain00001_n5_α
.Lx00065_0:
 .quad 1
xchain00001_n84_α:
# IR_UNOP
bb00066_α:
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain00001_n89_α
 xchain00001_n84_β:
 jmp xchain00001_n5_α
xchain00001_n85_α:
# IR_ASSIGN gva
bb00067_α:
 mov rax, qword ptr [r12 + 1376]
 mov rdx, qword ptr [r12 + 1384]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain00001_n90_α
 xchain00001_n85_β:
 jmp xchain00001_n86_α
xchain00001_n86_α:
# IR_VAR gva
bb00068_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain00001_n91_α
 xchain00001_n86_β:
 jmp xchain00001_n00012_α
xchain00001_n87_α:
# IR_SUBSCRIPT x[i] variable
bb00023_α:
 mov rdi, qword ptr [r12 + 832]
 mov rsi, qword ptr [r12 + 840]
 mov rdx, qword ptr [r12 + 848]
 mov rcx, qword ptr [r12 + 856]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00001_n93_α
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00001_n92_α
 xchain00001_n87_β:
 jmp xchain00001_n93_α
xchain00001_n88_α:
bb00069_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 928]
 cmp eax, 100
 je .Lx00070_0
 mov eax, dword ptr [r12 + 944]
 cmp eax, 100
 je .Lx00070_0
 mov eax, dword ptr [r12 + 928]
 cmp eax, 6
 jne .Lx00070_2
 mov eax, dword ptr [r12 + 944]
 cmp eax, 6
 jne .Lx00070_2
.Lx00070_1:
 mov rax, qword ptr [r12 + 936]
 mov rcx, qword ptr [r12 + 952]
 add rax, rcx
 mov qword ptr [r12 + 912], 6
 mov qword ptr [r12 + 920], rax
 jmp xchain00001_n94_α
.Lx00070_0:
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 mov r8d, 0
 lea r9, [r12 + 912]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00070_3
.Lx00070_2:
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n5_α
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
.Lx00070_3:
 jmp xchain00001_n94_α
 xchain00001_n88_β:
 jmp xchain00001_n5_α
xchain00001_n89_α:
# IR_LIT_INTEGER
bb00071_α:
 mov qword ptr [r12 + 1088], 6
 mov rax, qword ptr [rip + .Lx00072_0]
 mov qword ptr [r12 + 1096], rax
 jmp xchain00001_n95_α
 xchain00001_n89_β:
 jmp xchain00001_n5_α
.Lx00072_0:
 .quad 1
xchain00001_n90_α:
# IR_VAR gva
bb00026_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain00001_n96_α
 xchain00001_n90_β:
 jmp proc_getword_ω
xchain00001_n91_α:
# IR_LIT_INTEGER
bb00073_α:
 mov qword ptr [r12 + 1344], 6
 mov rax, qword ptr [rip + .Lx00074_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain00001_n97_α
 xchain00001_n91_β:
 jmp xchain00001_n00012_α
.Lx00074_0:
 .quad 1
xchain00001_n92_α:
# IR_DEREF variable -> value
bb00075_α:
 mov rdi, qword ptr [r12 + 864]
 mov rsi, qword ptr [r12 + 872]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n93_α
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00001_n98_α
 xchain00001_n92_β:
 jmp xchain00001_n93_α
xchain00001_n93_α:
# IR_VAR gva
bb00076_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00001_n99_α
 xchain00001_n93_β:
 jmp xchain00001_n00029_α
xchain00001_n94_α:
# IR_ASSIGN gva
bb00077_α:
 mov rax, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00001_n00006_α
 xchain00001_n94_β:
 jmp xchain00001_n5_α
xchain00001_n95_α:
bb00031_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1056]
 cmp eax, 100
 je .Lx00078_0
 mov eax, dword ptr [r12 + 1088]
 cmp eax, 100
 je .Lx00078_0
 mov eax, dword ptr [r12 + 1056]
 cmp eax, 6
 jne .Lx00078_2
 mov eax, dword ptr [r12 + 1088]
 cmp eax, 6
 jne .Lx00078_2
.Lx00078_1:
 mov rax, qword ptr [r12 + 1064]
 mov rcx, qword ptr [r12 + 1096]
 add rax, rcx
 mov qword ptr [r12 + 1040], 6
 mov qword ptr [r12 + 1048], rax
 jmp xchain00001_n00007_α
.Lx00078_0:
 mov rdi, qword ptr [r12 + 1056]
 mov rsi, qword ptr [r12 + 1064]
 mov rdx, qword ptr [r12 + 1088]
 mov rcx, qword ptr [r12 + 1096]
 mov r8d, 0
 lea r9, [r12 + 1040]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00078_3
.Lx00078_2:
 mov rdi, qword ptr [r12 + 1056]
 mov rsi, qword ptr [r12 + 1064]
 mov rdx, qword ptr [r12 + 1088]
 mov rcx, qword ptr [r12 + 1096]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n5_α
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
.Lx00078_3:
 jmp xchain00001_n00007_α
 xchain00001_n95_β:
 jmp xchain00001_n5_α
xchain00001_n96_α:
# IR_VAR
bb00079_α:
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 2664]
 mov qword ptr [r12 + 1176], rax
 jmp xchain00001_n00009_α
 xchain00001_n96_β:
 jmp proc_getword_ω
xchain00001_n97_α:
bb00080_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1328]
 cmp eax, 100
 je .Lx00081_0
 mov eax, dword ptr [r12 + 1344]
 cmp eax, 100
 je .Lx00081_0
 mov eax, dword ptr [r12 + 1328]
 cmp eax, 6
 jne .Lx00081_2
 mov eax, dword ptr [r12 + 1344]
 cmp eax, 6
 jne .Lx00081_2
.Lx00081_1:
 mov rax, qword ptr [r12 + 1336]
 mov rcx, qword ptr [r12 + 1352]
 add rax, rcx
 mov qword ptr [r12 + 1312], 6
 mov qword ptr [r12 + 1320], rax
 jmp xchain00001_n00010_α
.Lx00081_0:
 mov rdi, qword ptr [r12 + 1328]
 mov rsi, qword ptr [r12 + 1336]
 mov rdx, qword ptr [r12 + 1344]
 mov rcx, qword ptr [r12 + 1352]
 mov r8d, 0
 lea r9, [r12 + 1312]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00081_3
.Lx00081_2:
 mov rdi, qword ptr [r12 + 1328]
 mov rsi, qword ptr [r12 + 1336]
 mov rdx, qword ptr [r12 + 1344]
 mov rcx, qword ptr [r12 + 1352]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00012_α
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
.Lx00081_3:
 jmp xchain00001_n00010_α
 xchain00001_n97_β:
 jmp xchain00001_n00012_α
xchain00001_n98_α:
bb00082_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 880]
 mov rdx, qword ptr [r12 + 888]
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00001_n93_α
 xchain00001_n98_β:
 jmp xchain00001_n93_α
xchain00001_n99_α:
# IR_LIT_INTEGER
bb00034_α:
 mov qword ptr [r12 + 800], 6
 mov rax, qword ptr [rip + .Lx00083_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain00001_n00014_α
 xchain00001_n99_β:
 jmp xchain00001_n00029_α
.Lx00083_0:
 .quad 1
xchain00001_n00006_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00084_α:
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 88], rax
 lea rax, [rip + xchain00001_n3_α]
 mov qword ptr [r12 + 96], rax
 jmp xchain00001_n00015_α
 xchain00001_n00006_β:
 jmp xchain00001_n5_α
xchain00001_n00007_α:
# IR_ASSIGN gva
bb00085_α:
 mov rax, qword ptr [r12 + 1040]
 mov rdx, qword ptr [r12 + 1048]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain00001_n00018_α
 xchain00001_n00007_β:
 jmp xchain00001_n5_α
xchain00001_n00009_α:
# IR_VAR gva
bb00086_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain00001_n00019_α
 xchain00001_n00009_β:
 jmp proc_getword_ω
xchain00001_n00010_α:
# IR_ASSIGN gva
bb00087_α:
 mov rax, qword ptr [r12 + 1312]
 mov rdx, qword ptr [r12 + 1320]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain00001_n00012_α
 xchain00001_n00010_β:
 jmp xchain00001_n00012_α
xchain00001_n00012_α:
# IR_VAR_REF gva
bb00088_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain00001_n00020_α
 xchain00001_n00012_β:
 jmp proc_getword_ω
xchain00001_n00014_α:
bb00089_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 784]
 cmp eax, 100
 je .Lx00090_0
 mov eax, dword ptr [r12 + 800]
 cmp eax, 100
 je .Lx00090_0
 mov eax, dword ptr [r12 + 784]
 cmp eax, 6
 jne .Lx00090_2
 mov eax, dword ptr [r12 + 800]
 cmp eax, 6
 jne .Lx00090_2
.Lx00090_1:
 mov rax, qword ptr [r12 + 792]
 mov rcx, qword ptr [r12 + 808]
 add rax, rcx
 mov qword ptr [r12 + 768], 6
 mov qword ptr [r12 + 776], rax
 jmp xchain00001_n00021_α
.Lx00090_0:
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 mov r8d, 0
 lea r9, [r12 + 768]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00090_3
.Lx00090_2:
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00029_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
.Lx00090_3:
 jmp xchain00001_n00021_α
 xchain00001_n00014_β:
 jmp xchain00001_n00029_α
xchain00001_n00015_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00091_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + xchain00001_n00016_α]
 mov qword ptr [r12 + 64], rax
 jmp xchain00001_n00001_α
 xchain00001_n00015_β:
 jmp xchain00001_n5_α
xchain00001_n00016_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00092_α:
 jmp qword ptr [r12 + 96]
 xchain00001_n00016_β:
 jmp xchain00001_n5_α
xchain00001_n00018_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00093_α:
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
 lea rax, [rip + xchain00001_n3_α]
 mov qword ptr [r12 + 1008], rax
 jmp xchain00001_n00025_α
 xchain00001_n00018_β:
 jmp xchain00001_n5_α
xchain00001_n00019_α:
# IR_SUBSCRIPT section
bb00094_α:
 mov rdi, qword ptr [r12 + 1152]
 mov rsi, qword ptr [r12 + 1160]
 mov rdx, qword ptr [r12 + 1168]
 mov rcx, qword ptr [r12 + 1176]
 mov r8, qword ptr [r12 + 1184]
 mov r9, qword ptr [r12 + 1192]
 call subscript_get2@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00001_n00002_α
 xchain00001_n00019_β:
 jmp proc_getword_ω
xchain00001_n00020_α:
# IR_VAR gva
bb00095_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain00001_n00028_α
 xchain00001_n00020_β:
 jmp proc_getword_ω
xchain00001_n00021_α:
# IR_ASSIGN gva
bb00096_α:
 mov rax, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00001_n00029_α
 xchain00001_n00021_β:
 jmp xchain00001_n00029_α
xchain00001_n00022_α:
 jmp xchain00001_n00029_α
xchain00001_n00022_β:
 jmp xchain00001_n00029_α
xchain00001_n00001_α:
 jmp xchain00001_n00030_α
xchain00001_n00001_β:
 jmp xchain00001_n5_α
xchain00001_n00024_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00097_α:
 jmp qword ptr [r12 + 64]
 xchain00001_n00024_β:
 jmp xchain00001_n5_α
xchain00001_n00025_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00098_α:
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + xchain00001_n00027_α]
 mov qword ptr [r12 + 64], rax
 jmp xchain00001_n00001_α
 xchain00001_n00025_β:
 jmp xchain00001_n5_α
xchain00001_n00027_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00099_α:
 jmp qword ptr [r12 + 1008]
 xchain00001_n00027_β:
 jmp xchain00001_n5_α
xchain00001_n00002_α:
# IR_RETURN
bb00100_α:
 mov rax, qword ptr [r12 + 1136]
 mov rdx, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_getword_γ
xchain00001_n00028_α:
# IR_LIT_INTEGER
bb00101_α:
 mov qword ptr [r12 + 1248], 6
 mov rax, qword ptr [rip + .Lx00102_0]
 mov qword ptr [r12 + 1256], rax
 jmp xchain00001_n00003_α
 xchain00001_n00028_β:
 jmp proc_getword_ω
.Lx00102_0:
 .quad 1
xchain00001_n00029_α:
# IR_VAR
bb00045_α:
 mov rax, qword ptr [r12 + 2640]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 680], rax
 jmp xchain00001_n00032_α
 xchain00001_n00029_β:
 jmp xchain00001_n00005_α
xchain00001_n00030_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00103_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 24], rax
 lea rax, [rip + xchain00001_n00024_α]
 mov qword ptr [r12 + 32], rax
 jmp xchain00001_n60_α
 xchain00001_n00030_β:
 jmp xchain00001_n5_α
xchain00001_n00003_α:
bb00104_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1232]
 cmp eax, 100
 je .Lx00105_0
 mov eax, dword ptr [r12 + 1248]
 cmp eax, 100
 je .Lx00105_0
 mov eax, dword ptr [r12 + 1232]
 cmp eax, 6
 jne .Lx00105_2
 mov eax, dword ptr [r12 + 1248]
 cmp eax, 6
 jne .Lx00105_2
.Lx00105_1:
 mov rax, qword ptr [r12 + 1240]
 mov rcx, qword ptr [r12 + 1256]
 sub rax, rcx
 mov qword ptr [r12 + 1216], 6
 mov qword ptr [r12 + 1224], rax
 jmp xchain00001_n00033_α
.Lx00105_0:
 mov rdi, qword ptr [r12 + 1232]
 mov rsi, qword ptr [r12 + 1240]
 mov rdx, qword ptr [r12 + 1248]
 mov rcx, qword ptr [r12 + 1256]
 mov r8d, 1
 lea r9, [r12 + 1216]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00105_3
.Lx00105_2:
 mov rdi, qword ptr [r12 + 1232]
 mov rsi, qword ptr [r12 + 1240]
 mov rdx, qword ptr [r12 + 1248]
 mov rcx, qword ptr [r12 + 1256]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_getword_ω
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
.Lx00105_3:
 jmp xchain00001_n00033_α
 xchain00001_n00003_β:
 jmp proc_getword_ω
xchain00001_n00032_α:
# IR_LIT_CHARSET
bb00106_α:
 mov qword ptr [r12 + 688], 1
 mov dword ptr [r12 + 692], -1
 mov rax, qword ptr [rip + .Lx00107_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain00001_n00004_α
 xchain00001_n00032_β:
 jmp xchain00001_n00005_α
.Lx00107_0:
 .quad .Lx00107_0_s
.Lx00107_0_s:
 .string "\\"
xchain00001_n00033_α:
# IR_SUBSCRIPT x[i] variable
bb00108_α:
 mov rdi, qword ptr [r12 + 1200]
 mov rsi, qword ptr [r12 + 1208]
 mov rdx, qword ptr [r12 + 1216]
 mov rcx, qword ptr [r12 + 1224]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_getword_ω
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain00001_n00035_α
 xchain00001_n00033_β:
 jmp proc_getword_ω
xchain00001_n00004_α:
bb00109_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 672]
 mov rsi, qword ptr [r12 + 680]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00005_α
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain00001_n00036_α
 xchain00001_n00004_β:
 jmp xchain00001_n00005_α
xchain00001_n00035_α:
# IR_DEREF variable -> value
bb00051_α:
 mov rdi, qword ptr [r12 + 1264]
 mov rsi, qword ptr [r12 + 1272]
 call rt_deref@PLT
 cmp eax, 99
 je proc_getword_ω
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain00001_n00037_α
 xchain00001_n00035_β:
 jmp proc_getword_ω
xchain00001_n00036_α:
# IR_VAR gva
bb00110_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00001_n00038_α
 xchain00001_n00036_β:
 jmp xchain00001_n00005_α
xchain00001_n00005_α:
# IR_LIT_INTEGER
bb00111_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx00112_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain00001_n00039_α
 xchain00001_n00005_β:
 jmp xchain00001_n00041_α
.Lx00112_0:
 .quad 1
xchain00001_n00037_α:
# IR_RETURN
bb00113_α:
 mov rax, qword ptr [r12 + 1280]
 mov rdx, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_getword_γ
xchain00001_n00038_α:
# IR_VAR gva
bb00114_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00001_n00040_α
 xchain00001_n00038_β:
 jmp xchain00001_n00005_α
xchain00001_n00039_α:
# IR_ASSIGN gva
bb00115_α:
 mov rax, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00001_n00041_α
 xchain00001_n00039_β:
 jmp xchain00001_n00041_α
xchain00001_n00040_α:
bb00116_α:
# BOX IR_CALL upto(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+656] -> [r12+608]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 616], rax
# marshal arg1 = producer-box slot [r12+704] -> [r12+624]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 632], rax
# marshal arg2 = producer-box slot [r12+720] -> [r12+640]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lbynamefn279: .string "upto"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn279]
 lea rsi, [r12 + 608]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain00001_n00005_α
 jmp xchain00001_n00042_α
xchain00001_n00040_β:
 jmp xchain00001_n00005_α
xchain00001_n00041_α:
# IR_VAR gva
bb00117_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00001_n00118_α
 xchain00001_n00041_β:
 jmp xchain00001_n00048_α
xchain00001_n00042_α:
# IR_LIT_INTEGER
bb00058_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx00119_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00001_n00043_α
 xchain00001_n00042_β:
 jmp xchain00001_n00005_α
.Lx00119_0:
 .quad 1
xchain00001_n00118_α:
# IR_LIT_INTEGER
bb00120_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00121_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00001_n00044_α
 xchain00001_n00118_β:
 jmp xchain00001_n00048_α
.Lx00121_0:
 .quad 1
xchain00001_n00043_α:
bb00122_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 592]
 cmp eax, 100
 je .Lx00123_0
 mov eax, dword ptr [r12 + 736]
 cmp eax, 100
 je .Lx00123_0
 mov eax, dword ptr [r12 + 592]
 cmp eax, 6
 jne .Lx00123_2
 mov eax, dword ptr [r12 + 736]
 cmp eax, 6
 jne .Lx00123_2
.Lx00123_1:
 mov rax, qword ptr [r12 + 600]
 mov rcx, qword ptr [r12 + 744]
 add rax, rcx
 mov qword ptr [r12 + 576], 6
 mov qword ptr [r12 + 584], rax
 jmp xchain00001_n00046_α
.Lx00123_0:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 mov r8d, 0
 lea r9, [r12 + 576]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00123_3
.Lx00123_2:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00005_α
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
.Lx00123_3:
 jmp xchain00001_n00046_α
 xchain00001_n00043_β:
 jmp xchain00001_n00005_α
xchain00001_n00044_α:
bb00124_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 496]
 cmp eax, 100
 je .Lx00125_0
 mov eax, dword ptr [r12 + 512]
 cmp eax, 100
 je .Lx00125_0
 mov eax, dword ptr [r12 + 496]
 cmp eax, 6
 jne .Lx00125_2
 mov eax, dword ptr [r12 + 512]
 cmp eax, 6
 jne .Lx00125_2
.Lx00125_1:
 mov rax, qword ptr [r12 + 504]
 mov rcx, qword ptr [r12 + 520]
 add rax, rcx
 mov qword ptr [r12 + 480], 6
 mov qword ptr [r12 + 488], rax
 jmp xchain00001_n00047_α
.Lx00125_0:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 mov r8d, 0
 lea r9, [r12 + 480]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00125_3
.Lx00125_2:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00048_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
.Lx00125_3:
 jmp xchain00001_n00047_α
 xchain00001_n00044_β:
 jmp xchain00001_n00048_α
xchain00001_n00046_α:
# IR_ASSIGN gva
bb00126_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00001_n00049_α
 xchain00001_n00046_β:
 jmp xchain00001_n00005_α
xchain00001_n00047_α:
# IR_ASSIGN gva
bb00127_α:
 mov rax, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00001_n00048_α
 xchain00001_n00047_β:
 jmp xchain00001_n00048_α
xchain00001_n00048_α:
# IR_VAR gva
bb00128_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00001_n00050_α
 xchain00001_n00048_β:
 jmp proc_getword_ω
xchain00001_n00049_α:
# IR_VAR_REF gva
bb00129_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00001_n00052_α
 xchain00001_n00049_β:
 jmp xchain00001_n00011_α
xchain00001_n00050_α:
bb00130_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+448] -> [r12+432]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn291: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn291]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je proc_getword_ω
 jmp xchain00001_n00053_α
 xchain00001_n00050_β:
 jmp proc_getword_ω
xchain00001_n00052_α:
# IR_VAR gva
bb00131_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00001_n00054_α
 xchain00001_n00052_β:
 jmp xchain00001_n00011_α
xchain00001_n00053_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00132_α:
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
 lea rax, [rip + proc_getword_ω]
 mov qword ptr [r12 + 400], rax
 jmp xchain00001_n00055_α
 xchain00001_n00053_β:
 jmp xchain00001_n00029_α
xchain00001_n00054_α:
# IR_LIT_INTEGER
bb00133_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx00134_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00001_n00057_α
 xchain00001_n00054_β:
 jmp xchain00001_n00011_α
.Lx00134_0:
 .quad 1
xchain00001_n00055_α:
# IR_ASSIGN gva
bb00065_α:
 mov rax, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00001_n00008_α
 xchain00001_n00055_β:
 jmp xchain00001_n00029_α
xchain00001_n00056_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00135_α:
 jmp qword ptr [r12 + 400]
 xchain00001_n00056_β:
 jmp xchain00001_n00029_α
xchain00001_n00057_α:
bb00136_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 288]
 cmp eax, 100
 je .Lx00137_0
 mov eax, dword ptr [r12 + 304]
 cmp eax, 100
 je .Lx00137_0
 mov eax, dword ptr [r12 + 288]
 cmp eax, 6
 jne .Lx00137_2
 mov eax, dword ptr [r12 + 304]
 cmp eax, 6
 jne .Lx00137_2
.Lx00137_1:
 mov rax, qword ptr [r12 + 296]
 mov rcx, qword ptr [r12 + 312]
 sub rax, rcx
 mov qword ptr [r12 + 272], 6
 mov qword ptr [r12 + 280], rax
 jmp xchain00001_n00059_α
.Lx00137_0:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 mov r8d, 1
 lea r9, [r12 + 272]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00137_3
.Lx00137_2:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00011_α
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
.Lx00137_3:
 jmp xchain00001_n00059_α
 xchain00001_n00057_β:
 jmp xchain00001_n00011_α
xchain00001_n00008_α:
 jmp xchain00001_n00013_α
xchain00001_n00008_β:
 jmp xchain00001_n00029_α
xchain00001_n00059_α:
# IR_SUBSCRIPT x[i] variable
bb00138_α:
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00001_n00011_α
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00001_n00060_α
 xchain00001_n00059_β:
 jmp xchain00001_n00011_α
xchain00001_n00011_α:
# IR_VAR gva
bb00070_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00001_n00061_α
 xchain00001_n00011_β:
 jmp xchain00001_n00029_α
xchain00001_n00013_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00072_α:
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 120], rax
 lea rax, [rip + xchain00001_n00056_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain00001_n00022_α
 xchain00001_n00013_β:
 jmp xchain00001_n00029_α
xchain00001_n00060_α:
# IR_DEREF variable -> value
bb00139_α:
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n00011_α
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00001_n00062_α
 xchain00001_n00060_β:
 jmp xchain00001_n00011_α
xchain00001_n00061_α:
# IR_LIT_INTEGER
bb00074_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00140_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00001_n00063_α
 xchain00001_n00061_β:
 jmp xchain00001_n00029_α
.Lx00140_0:
 .quad 1
xchain00001_n00017_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00141_α:
 jmp qword ptr [r12 + 128]
 xchain00001_n00017_β:
 jmp xchain00001_n00029_α
xchain00001_n00062_α:
# IR_VAR
bb00142_α:
 mov rax, qword ptr [r12 + 2640]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 360], rax
 jmp xchain00001_n00064_α
 xchain00001_n00062_β:
 jmp xchain00001_n00011_α
xchain00001_n00063_α:
bb00143_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 208]
 cmp eax, 100
 je .Lx00144_0
 mov eax, dword ptr [r12 + 224]
 cmp eax, 100
 je .Lx00144_0
 mov eax, dword ptr [r12 + 208]
 cmp eax, 6
 jne .Lx00144_2
 mov eax, dword ptr [r12 + 224]
 cmp eax, 6
 jne .Lx00144_2
.Lx00144_1:
 mov rax, qword ptr [r12 + 216]
 mov rcx, qword ptr [r12 + 232]
 add rax, rcx
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
 jmp xchain00001_n00066_α
.Lx00144_0:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 0
 lea r9, [r12 + 192]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00144_3
.Lx00144_2:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00029_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
.Lx00144_3:
 jmp xchain00001_n00066_α
 xchain00001_n00063_β:
 jmp xchain00001_n00029_α
xchain00001_n00064_α:
bb00078_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 2640]
 mov rcx, qword ptr [r12 + 2648]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n00011_α
 mov rdi, qword ptr [r12 + 2640]
 mov rsi, qword ptr [r12 + 2648]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00001_n00023_α
 xchain00001_n00064_β:
 jmp xchain00001_n00011_α
xchain00001_n00066_α:
# IR_ASSIGN gva
bb00145_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00001_n00068_α
 xchain00001_n00066_β:
 jmp xchain00001_n00029_α
xchain00001_n00067_α:
 jmp xchain00001_n00023_α
xchain00001_n00067_β:
 jmp xchain00001_n00023_α
xchain00001_n00068_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00081_α:
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
 lea rax, [rip + xchain00001_n00022_α]
 mov qword ptr [r12 + 160], rax
 jmp xchain00001_n00069_α
 xchain00001_n00068_β:
 jmp xchain00001_n00029_α
xchain00001_n00023_α:
 jmp xchain00001_n00026_α
xchain00001_n00023_β:
 jmp xchain00001_n5_α
xchain00001_n00069_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00083_α:
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
 lea rax, [rip + xchain00001_n00071_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain00001_n00022_α
 xchain00001_n00069_β:
 jmp xchain00001_n00029_α
xchain00001_n00071_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00146_α:
 jmp qword ptr [r12 + 160]
 xchain00001_n00071_β:
 jmp xchain00001_n00029_α
xchain00001_n00026_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00147_α:
 lea rax, [rip + xchain00001_n00023_α]
 mov qword ptr [r12 + 96], rax
 jmp xchain00001_n00015_α
 xchain00001_n00026_β:
 jmp xchain00001_n5_α
proc_getword_β:
jmp proc_getword_ω
proc_getword_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_getword_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_format_α
proc_format_α:
#=======================================================================================================================
    .global proc_format_α
    .global proc_format_β
    .global proc_format_γ
    .global proc_format_ω
push r12
  mov r12, rdi
proc_format_α_body:
xchain00148_n0_α:
# IR_VAR_REF gva
bb00149_α:
 lea rdi, [rbx + 272]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain00148_n1_α
 xchain00148_n0_β:
 jmp xchain00148_n3_α
xchain00148_n1_α:
# IR_UNOP_TEST lv
bb00150_α:
 mov eax, dword ptr [r12 + 1904]
 cmp eax, 99
 je xchain00148_n3_α
 mov rdi, qword ptr [r12 + 1904]
 mov rsi, qword ptr [r12 + 1912]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00148_n3_α
 cmp eax, 0
 jne xchain00148_n3_α
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 1920], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1928], rax
 jmp xchain00148_n2_α
 xchain00148_n1_β:
 jmp xchain00148_n3_α
xchain00148_n2_α:
# IR_LIT_INTEGER
bb00151_α:
 mov qword ptr [r12 + 1952], 6
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [r12 + 1960], rax
 jmp xchain00148_n4_α
 xchain00148_n2_β:
 jmp xchain00148_n3_α
.Lx00152_0:
 .quad 1
xchain00148_n3_α:
# IR_MAKE_LIST
bb00153_α:
 lea rdi, [r12 + 1584]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain00148_n5_α
 xchain00148_n3_β:
 jmp xchain00148_n7_α
xchain00148_n4_α:
# IR_ASSIGN_VAR write through variable
bb00154_α:
 mov rdi, qword ptr [r12 + 1920]
 mov rsi, qword ptr [r12 + 1928]
 mov rdx, qword ptr [r12 + 1952]
 mov rcx, qword ptr [r12 + 1960]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00148_n3_α
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 jmp xchain00148_n6_α
 xchain00148_n4_β:
 jmp xchain00148_n3_α
xchain00148_n5_α:
bb00090_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1568]
 mov rdx, qword ptr [r12 + 1576]
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain00148_n7_α
 xchain00148_n5_β:
 jmp xchain00148_n7_α
xchain00148_n6_α:
# IR_VAR gva
bb00155_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain00148_n8_α
 xchain00148_n6_β:
 jmp xchain00148_n11_α
xchain00148_n7_α:
# IR_VAR
bb00156_α:
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 1536], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 1544], rax
 jmp xchain00148_n9_α
 xchain00148_n7_β:
 jmp xchain00148_n12_α
xchain00148_n8_α:
# IR_UNOP
bb00157_α:
 mov eax, dword ptr [r12 + 1888]
 cmp eax, 99
 je xchain00148_n11_α
 cmp eax, 0
 je xchain00148_n11_α
 mov rax, qword ptr [r12 + 1888]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 1896]
 mov qword ptr [r12 + 1880], rax
 jmp xchain00148_n10_α
 xchain00148_n8_β:
 jmp xchain00148_n11_α
xchain00148_n9_α:
bb00158_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1536]
 mov rdx, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain00148_n12_α
 xchain00148_n9_β:
 jmp xchain00148_n12_α
xchain00148_n10_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00159_α:
 mov rax, qword ptr [r12 + 1872]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 1832], rax
 lea rax, [rip + xchain00148_n11_α]
 mov qword ptr [r12 + 1840], rax
 jmp xchain00148_n13_α
 xchain00148_n10_β:
 jmp xchain00148_n17_α
xchain00148_n11_α:
# IR_LIT_INTEGER
bb00160_α:
 mov qword ptr [r12 + 1856], 6
 mov rax, qword ptr [rip + .Lx00161_0]
 mov qword ptr [r12 + 1864], rax
 jmp xchain00148_n15_α
 xchain00148_n11_β:
 jmp xchain00148_n17_α
.Lx00161_0:
 .quad 80
xchain00148_n12_α:
# IR_VAR
bb00162_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00148_n16_α
 xchain00148_n12_β:
 jmp xchain00148_n00012_α
xchain00148_n13_α:
bb00163_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1824]
 mov rdx, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain00148_n17_α
 xchain00148_n13_β:
 jmp xchain00148_n17_α
xchain00148_n14_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00164_α:
 jmp qword ptr [r12 + 1840]
 xchain00148_n14_β:
 jmp xchain00148_n17_α
xchain00148_n15_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00165_α:
 mov rax, qword ptr [r12 + 1856]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 1832], rax
 lea rax, [rip + xchain00148_n17_α]
 mov qword ptr [r12 + 1840], rax
 jmp xchain00148_n13_α
 xchain00148_n15_β:
 jmp xchain00148_n17_α
xchain00148_n16_α:
# IR_LIST_BANG
bb00166_α:
 mov qword ptr [r12 + 224], 0
.Lx00167_0:
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 224]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp rax, 99
 je xchain00148_n00012_α
 jmp xchain00148_n18_α
 xchain00148_n16_β:
 inc qword ptr [r12 + 224]
 jmp .Lx00167_0
xchain00148_n17_α:
# IR_VAR gva
bb00168_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain00148_n19_α
 xchain00148_n17_β:
 jmp xchain00148_n22_α
xchain00148_n18_α:
bb00169_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00148_n20_α
 xchain00148_n18_β:
 jmp xchain00148_n00012_α
xchain00148_n19_α:
# IR_UNOP
bb00170_α:
 mov eax, dword ptr [r12 + 1792]
 cmp eax, 99
 je xchain00148_n22_α
 cmp eax, 0
 je xchain00148_n22_α
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1784], rax
 jmp xchain00148_n21_α
 xchain00148_n19_β:
 jmp xchain00148_n22_α
xchain00148_n20_α:
# IR_VAR
bb00171_α:
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 312], rax
 jmp xchain00148_n23_α
 xchain00148_n20_β:
 jmp xchain00148_n16_β
xchain00148_n21_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00172_α:
 mov rax, qword ptr [r12 + 1776]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 1784]
 mov qword ptr [r12 + 1736], rax
 lea rax, [rip + xchain00148_n22_α]
 mov qword ptr [r12 + 1744], rax
 jmp xchain00148_n24_α
 xchain00148_n21_β:
 jmp xchain00148_n28_α
xchain00148_n22_α:
# IR_LIT_INTEGER
bb00173_α:
 mov qword ptr [r12 + 1760], 6
 mov rax, qword ptr [rip + .Lx00174_0]
 mov qword ptr [r12 + 1768], rax
 jmp xchain00148_n26_α
 xchain00148_n22_β:
 jmp xchain00148_n28_α
.Lx00174_0:
 .quad 40
xchain00148_n23_α:
# IR_LIST_BANG
bb00175_α:
 mov qword ptr [r12 + 288], 0
.Lx00176_0:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 288]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp rax, 99
 je xchain00148_n16_β
 jmp xchain00148_n27_α
 xchain00148_n23_β:
 inc qword ptr [r12 + 288]
 jmp .Lx00176_0
xchain00148_n24_α:
bb00102_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1728]
 mov rdx, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain00148_n28_α
 xchain00148_n24_β:
 jmp xchain00148_n28_α
xchain00148_n25_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00177_α:
 jmp qword ptr [r12 + 1744]
 xchain00148_n25_β:
 jmp xchain00148_n28_α
xchain00148_n26_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00178_α:
 mov rax, qword ptr [r12 + 1760]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 1768]
 mov qword ptr [r12 + 1736], rax
 lea rax, [rip + xchain00148_n28_α]
 mov qword ptr [r12 + 1744], rax
 jmp xchain00148_n24_α
 xchain00148_n26_β:
 jmp xchain00148_n28_α
xchain00148_n27_α:
bb00179_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00148_n29_α
 xchain00148_n27_β:
 jmp xchain00148_n16_β
xchain00148_n28_α:
# IR_VAR gva
bb00180_α:
 mov rax, qword ptr [rbx + 176]
 mov rdx, qword ptr [rbx + 184]
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain00148_n30_α
 xchain00148_n28_β:
 jmp xchain00148_n33_α
xchain00148_n29_α:
# IR_VAR_REF local
bb00105_α:
 lea rdi, [r12 + 2000]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain00148_n31_α
 xchain00148_n29_β:
 jmp xchain00148_n39_α
xchain00148_n30_α:
# IR_UNOP
bb00107_α:
 mov eax, dword ptr [r12 + 1696]
 cmp eax, 99
 je xchain00148_n33_α
 cmp eax, 0
 je xchain00148_n33_α
 mov rax, qword ptr [r12 + 1696]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 1688], rax
 jmp xchain00148_n32_α
 xchain00148_n30_β:
 jmp xchain00148_n33_α
xchain00148_n31_α:
# IR_LIT_INTEGER
bb00181_α:
 mov qword ptr [r12 + 1248], 6
 mov rax, qword ptr [rip + .Lx00182_0]
 mov qword ptr [r12 + 1256], rax
 jmp xchain00148_n34_α
 xchain00148_n31_β:
 jmp xchain00148_n39_α
.Lx00182_0:
 .quad 1
xchain00148_n32_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00183_α:
 mov rax, qword ptr [r12 + 1680]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1688]
 mov qword ptr [r12 + 1640], rax
 lea rax, [rip + xchain00148_n33_α]
 mov qword ptr [r12 + 1648], rax
 jmp xchain00148_n35_α
 xchain00148_n32_β:
 jmp xchain00148_n3_α
xchain00148_n33_α:
# IR_LIT_INTEGER
bb00184_α:
 mov qword ptr [r12 + 1664], 6
 mov rax, qword ptr [rip + .Lx00185_0]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00148_n37_α
 xchain00148_n33_β:
 jmp xchain00148_n3_α
.Lx00185_0:
 .quad 4
xchain00148_n34_α:
# IR_SUBSCRIPT x[i] variable
bb00186_α:
 mov rdi, qword ptr [r12 + 1232]
 mov rsi, qword ptr [r12 + 1240]
 mov rdx, qword ptr [r12 + 1248]
 mov rcx, qword ptr [r12 + 1256]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00148_n39_α
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain00148_n38_α
 xchain00148_n34_β:
 jmp xchain00148_n39_α
xchain00148_n35_α:
bb00112_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1632]
 mov rdx, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xchain00148_n40_α
 xchain00148_n35_β:
 jmp xchain00148_n3_α
xchain00148_n36_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00187_α:
 jmp qword ptr [r12 + 1648]
 xchain00148_n36_β:
 jmp xchain00148_n3_α
xchain00148_n37_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00188_α:
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1640], rax
 lea rax, [rip + xchain00148_n3_α]
 mov qword ptr [r12 + 1648], rax
 jmp xchain00148_n35_α
 xchain00148_n37_β:
 jmp xchain00148_n3_α
xchain00148_n38_α:
# IR_DEREF variable -> value
bb00189_α:
 mov rdi, qword ptr [r12 + 1264]
 mov rsi, qword ptr [r12 + 1272]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00148_n39_α
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain00148_n41_α
 xchain00148_n38_β:
 jmp xchain00148_n39_α
xchain00148_n39_α:
# IR_VAR gva
bb00190_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00148_n42_α
 xchain00148_n39_β:
 jmp xchain00148_n53_α
xchain00148_n40_α:
 jmp xchain00148_n43_α
xchain00148_n40_β:
 jmp xchain00148_n3_α
xchain00148_n41_α:
# IR_LIT_INTEGER
bb00191_α:
 mov qword ptr [r12 + 1296], 6
 mov rax, qword ptr [rip + .Lx00192_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00148_n44_α
 xchain00148_n41_β:
 jmp xchain00148_n39_α
.Lx00192_0:
 .quad 16
xchain00148_n42_α:
# IR_VAR_REF local
bb00119_α:
 lea rdi, [r12 + 2000]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00148_n45_α
 xchain00148_n42_β:
 jmp xchain00148_n53_α
xchain00148_n43_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00121_α:
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1592], rax
 lea rax, [rip + xchain00148_n36_α]
 mov qword ptr [r12 + 1600], rax
 jmp xchain00148_n3_α
 xchain00148_n43_β:
 jmp xchain00148_n3_α
xchain00148_n44_α:
# IR_LIT_STRING
bb00123_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx00193_0]
 mov qword ptr [r12 + 1320], rax
 jmp xchain00148_n47_α
 xchain00148_n44_β:
 jmp xchain00148_n39_α
.Lx00193_0:
 .quad .Lx00193_0_s
.Lx00193_0_s:
 .string " "
xchain00148_n45_α:
# IR_LIT_INTEGER
bb00125_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx00194_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain00148_n48_α
 xchain00148_n45_β:
 jmp xchain00148_n53_α
.Lx00194_0:
 .quad 3
xchain00148_n46_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00195_α:
 jmp qword ptr [r12 + 1600]
 xchain00148_n46_β:
 jmp xchain00148_n3_α
xchain00148_n47_α:
bb00196_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1280] -> [r12+1184]
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1192], rax
# marshal arg1 = producer-box slot [r12+1296] -> [r12+1200]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1208], rax
# marshal arg2 = producer-box slot [r12+1312] -> [r12+1216]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1224], rax
  .section .rodata
  .Lrkfn393: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn393]
 lea rsi, [r12 + 1184]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain00148_n39_α
 jmp xchain00148_n49_α
 xchain00148_n47_β:
 jmp xchain00148_n39_α
xchain00148_n48_α:
# IR_VAR
bb00197_α:
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 792], rax
 jmp xchain00148_n50_α
 xchain00148_n48_β:
 jmp xchain00148_n53_α
xchain00148_n49_α:
# IR_VAR_REF local
bb00198_α:
 lea rdi, [r12 + 2000]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain00148_n51_α
 xchain00148_n49_β:
 jmp xchain00148_n39_α
xchain00148_n50_α:
# IR_UNOP
bb00199_α:
 mov rdi, qword ptr [r12 + 2000]
 mov rsi, qword ptr [r12 + 2008]
 call rt_size_d@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00148_n52_α
 xchain00148_n50_β:
 jmp xchain00148_n53_α
xchain00148_n51_α:
# IR_LIT_INTEGER
bb00200_α:
 mov qword ptr [r12 + 1408], 6
 mov rax, qword ptr [rip + .Lx00201_0]
 mov qword ptr [r12 + 1416], rax
 jmp xchain00148_n54_α
 xchain00148_n51_β:
 jmp xchain00148_n39_α
.Lx00201_0:
 .quad 2
xchain00148_n52_α:
# IR_TO
bb00202_α:
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 736], rax
.Lx00203_0:
 mov rax, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 776]
 cmp rax, rcx
 jg xchain00148_n53_α
 mov qword ptr [r12 + 720], 6
 mov qword ptr [r12 + 728], rax
 jmp xchain00148_n55_α
 xchain00148_n52_β:
 inc qword ptr [r12 + 736]
 jmp .Lx00203_0
xchain00148_n53_α:
# IR_VAR
bb00204_α:
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 568], rax
 jmp xchain00148_n56_α
 xchain00148_n53_β:
 jmp xchain00148_n63_α
xchain00148_n54_α:
# IR_SUBSCRIPT x[i] variable
bb00205_α:
 mov rdi, qword ptr [r12 + 1392]
 mov rsi, qword ptr [r12 + 1400]
 mov rdx, qword ptr [r12 + 1408]
 mov rcx, qword ptr [r12 + 1416]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00148_n39_α
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain00148_n57_α
 xchain00148_n54_β:
 jmp xchain00148_n39_α
xchain00148_n55_α:
# IR_SUBSCRIPT x[i] variable
bb00206_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 720]
 mov rcx, qword ptr [r12 + 728]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00148_n53_α
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00148_n58_α
 xchain00148_n55_β:
 jmp xchain00148_n53_α
xchain00148_n56_α:
# IR_VAR
bb00134_α:
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 584], rax
 jmp xchain00148_n59_α
 xchain00148_n56_β:
 jmp xchain00148_n63_α
xchain00148_n57_α:
# IR_DEREF variable -> value
bb00207_α:
 mov rdi, qword ptr [r12 + 1424]
 mov rsi, qword ptr [r12 + 1432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00148_n39_α
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain00148_n60_α
 xchain00148_n57_β:
 jmp xchain00148_n39_α
xchain00148_n58_α:
# IR_DEREF variable -> value
bb00208_α:
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00148_n53_α
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00148_n61_α
 xchain00148_n58_β:
 jmp xchain00148_n53_α
xchain00148_n59_α:
bb00209_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2016]
 cmp eax, 100
 je .Lx00210_0
 mov eax, dword ptr [r12 + 2032]
 cmp eax, 100
 je .Lx00210_0
 mov eax, dword ptr [r12 + 2016]
 cmp eax, 6
 jne .Lx00210_2
 mov eax, dword ptr [r12 + 2032]
 cmp eax, 6
 jne .Lx00210_2
.Lx00210_1:
 mov rax, qword ptr [r12 + 2024]
 mov rcx, qword ptr [r12 + 2040]
 cmp rax, rcx
 jne xchain00148_n63_α
 mov rcx, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 544], rcx
 mov rcx, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 552], rcx
 jmp xchain00148_n62_α
.Lx00210_0:
 mov rdi, qword ptr [r12 + 2016]
 mov rsi, qword ptr [r12 + 2024]
 mov rdx, qword ptr [r12 + 2032]
 mov rcx, qword ptr [r12 + 2040]
 mov r8d, 9
 lea r9, [r12 + 544]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00210_1
 cmp eax, 1
 je xchain00148_n63_α
 jmp xchain00148_n62_α
.Lx00210_2:
 mov rdi, qword ptr [r12 + 2016]
 mov rsi, qword ptr [r12 + 2024]
 mov rdx, qword ptr [r12 + 2032]
 mov rcx, qword ptr [r12 + 2040]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00148_n63_α
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 552], rax
 jmp xchain00148_n62_α
 xchain00148_n59_β:
 jmp xchain00148_n63_α
xchain00148_n60_α:
# IR_VAR
bb00137_α:
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 1480], rax
 jmp xchain00148_n64_α
 xchain00148_n60_β:
 jmp xchain00148_n39_α
xchain00148_n61_α:
# IR_VAR
bb00211_α:
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 840], rax
 jmp xchain00148_n65_α
 xchain00148_n61_β:
 jmp xchain00148_n52_β
xchain00148_n62_α:
# IR_VAR gva
bb00212_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00148_n66_α
 xchain00148_n62_β:
 jmp xchain00148_n63_α
xchain00148_n63_α:
# IR_VAR
bb00213_α:
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 408], rax
 jmp xchain00148_n67_α
 xchain00148_n63_β:
 jmp xchain00148_n75_α
xchain00148_n64_α:
# IR_LIT_INTEGER
bb00214_α:
 mov qword ptr [r12 + 1488], 6
 mov rax, qword ptr [rip + .Lx00215_0]
 mov qword ptr [r12 + 1496], rax
 jmp xchain00148_n68_α
 xchain00148_n64_β:
 jmp xchain00148_n39_α
.Lx00215_0:
 .quad 16
xchain00148_n65_α:
# IR_LIT_STRING
bb00216_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx00217_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain00148_n69_α
 xchain00148_n65_β:
 jmp xchain00148_n52_β
.Lx00217_0:
 .quad .Lx00217_0_s
.Lx00217_0_s:
 .string " "
xchain00148_n66_α:
# IR_LIT_INTEGER
bb00218_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00219_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00148_n70_α
 xchain00148_n66_β:
 jmp xchain00148_n63_α
.Lx00219_0:
 .quad 1
xchain00148_n67_α:
# IR_VAR gva
bb00140_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00148_n71_α
 xchain00148_n67_β:
 jmp xchain00148_n75_α
xchain00148_n68_α:
bb00220_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2032]
 cmp eax, 100
 je .Lx00221_0
 mov eax, dword ptr [r12 + 1488]
 cmp eax, 100
 je .Lx00221_0
 mov eax, dword ptr [r12 + 2032]
 cmp eax, 6
 jne .Lx00221_2
 mov eax, dword ptr [r12 + 1488]
 cmp eax, 6
 jne .Lx00221_2
.Lx00221_1:
 mov rax, qword ptr [r12 + 2040]
 mov rcx, qword ptr [r12 + 1496]
 sub rax, rcx
 mov qword ptr [r12 + 1456], 6
 mov qword ptr [r12 + 1464], rax
 jmp xchain00148_n72_α
.Lx00221_0:
 mov rdi, qword ptr [r12 + 2032]
 mov rsi, qword ptr [r12 + 2040]
 mov rdx, qword ptr [r12 + 1488]
 mov rcx, qword ptr [r12 + 1496]
 mov r8d, 1
 lea r9, [r12 + 1456]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00221_3
.Lx00221_2:
 mov rdi, qword ptr [r12 + 2032]
 mov rsi, qword ptr [r12 + 2040]
 mov rdx, qword ptr [r12 + 1488]
 mov rcx, qword ptr [r12 + 1496]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00148_n39_α
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
.Lx00221_3:
 jmp xchain00148_n72_α
 xchain00148_n68_β:
 jmp xchain00148_n39_α
xchain00148_n69_α:
bb00222_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+816] -> [r12+656]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 664], rax
# marshal arg1 = producer-box slot [r12+832] -> [r12+672]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 680], rax
# marshal arg2 = producer-box slot [r12+848] -> [r12+688]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn424: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn424]
 lea rsi, [r12 + 656]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain00148_n53_α
 jmp xchain00148_n73_α
 xchain00148_n69_β:
 jmp xchain00148_n53_α
xchain00148_n70_α:
# IR_LIT_INTEGER
bb00223_α:
 mov qword ptr [r12 + 528], 6
 mov rax, qword ptr [rip + .Lx00224_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain00148_n74_α
 xchain00148_n70_β:
 jmp xchain00148_n63_α
.Lx00224_0:
 .quad 18446744073709551610
xchain00148_n71_α:
bb00225_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+400] -> [r12+368]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 376], rax
# marshal arg1 = producer-box slot [r12+416] -> [r12+384]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lrkfn427: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn427]
 lea rsi, [r12 + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00148_n75_α
 jmp xchain00148_n75_α
 xchain00148_n71_β:
 jmp xchain00148_n75_α
xchain00148_n72_α:
# IR_LIT_STRING
bb00144_α:
 mov qword ptr [r12 + 1504], 1
 mov rax, qword ptr [rip + .Lx00226_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00148_n76_α
 xchain00148_n72_β:
 jmp xchain00148_n39_α
.Lx00226_0:
 .quad .Lx00226_0_s
.Lx00226_0_s:
 .string " "
xchain00148_n73_α:
bb00227_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 mov rdx, qword ptr [r12 + 640]
 mov rcx, qword ptr [r12 + 648]
 call str_concat_d@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00148_n77_α
 xchain00148_n73_β:
 jmp xchain00148_n53_α
xchain00148_n74_α:
# IR_SUBSCRIPT section
bb00228_α:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 mov r8, qword ptr [r12 + 528]
 mov r9, qword ptr [r12 + 536]
 call subscript_get2@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00148_n78_α
 xchain00148_n74_β:
 jmp xchain00148_n63_α
xchain00148_n75_α:
# IR_VAR
bb00229_α:
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 344], rax
 jmp xchain00148_n79_α
 xchain00148_n75_β:
 jmp xchain00148_n23_β
xchain00148_n76_α:
bb00230_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1440] -> [r12+1344]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1352], rax
# marshal arg1 = producer-box slot [r12+1456] -> [r12+1360]
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1368], rax
# marshal arg2 = producer-box slot [r12+1504] -> [r12+1376]
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1384], rax
  .section .rodata
  .Lrkfn434: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn434]
 lea rsi, [r12 + 1344]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain00148_n39_α
 jmp xchain00148_n80_α
 xchain00148_n76_β:
 jmp xchain00148_n39_α
xchain00148_n77_α:
# IR_ASSIGN gva
bb00231_α:
 mov rax, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00148_n81_α
 xchain00148_n77_β:
 jmp xchain00148_n53_α
xchain00148_n78_α:
# IR_ASSIGN gva
bb00232_α:
 mov rax, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00148_n82_α
 xchain00148_n78_β:
 jmp xchain00148_n63_α
xchain00148_n79_α:
bb00233_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00148_n83_α
 xchain00148_n79_β:
 jmp xchain00148_n23_β
xchain00148_n80_α:
bb00234_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 mov rdx, qword ptr [r12 + 1328]
 mov rcx, qword ptr [r12 + 1336]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain00148_n84_α
 xchain00148_n80_β:
 jmp xchain00148_n39_α
xchain00148_n81_α:
# IR_VAR
bb00235_α:
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00148_n85_α
 xchain00148_n81_β:
 jmp xchain00148_n89_α
xchain00148_n82_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00236_α:
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
 lea rax, [rip + xchain00148_n63_α]
 mov qword ptr [r12 + 448], rax
 jmp xchain00148_n63_α
 xchain00148_n82_β:
 jmp xchain00148_n63_α
xchain00148_n83_α:
 jmp xchain00148_n23_β
xchain00148_n83_β:
 jmp xchain00148_n23_β
xchain00148_n84_α:
# IR_ASSIGN gva
bb00237_α:
 mov rax, qword ptr [r12 + 1152]
 mov rdx, qword ptr [r12 + 1160]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00148_n39_α
 xchain00148_n84_β:
 jmp xchain00148_n39_α
xchain00148_n85_α:
# IR_VAR
bb00148_α:
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00148_n87_α
 xchain00148_n85_β:
 jmp xchain00148_n89_α
xchain00148_n86_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00238_α:
 jmp qword ptr [r12 + 448]
 xchain00148_n86_β:
 jmp xchain00148_n63_α
xchain00148_n87_α:
bb00239_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2016]
 cmp eax, 100
 je .Lx00240_0
 mov eax, dword ptr [r12 + 2048]
 cmp eax, 100
 je .Lx00240_0
 mov eax, dword ptr [r12 + 2016]
 cmp eax, 6
 jne .Lx00240_2
 mov eax, dword ptr [r12 + 2048]
 cmp eax, 6
 jne .Lx00240_2
.Lx00240_1:
 mov rax, qword ptr [r12 + 2024]
 mov rcx, qword ptr [r12 + 2056]
 add rax, rcx
 mov qword ptr [r12 + 1088], 6
 mov qword ptr [r12 + 1096], rax
 jmp xchain00148_n88_α
.Lx00240_0:
 mov rdi, qword ptr [r12 + 2016]
 mov rsi, qword ptr [r12 + 2024]
 mov rdx, qword ptr [r12 + 2048]
 mov rcx, qword ptr [r12 + 2056]
 mov r8d, 0
 lea r9, [r12 + 1088]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00240_3
.Lx00240_2:
 mov rdi, qword ptr [r12 + 2016]
 mov rsi, qword ptr [r12 + 2024]
 mov rdx, qword ptr [r12 + 2048]
 mov rcx, qword ptr [r12 + 2056]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00148_n89_α
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
.Lx00240_3:
 jmp xchain00148_n88_α
 xchain00148_n87_β:
 jmp xchain00148_n89_α
xchain00148_n88_α:
bb00241_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1088]
 mov rdx, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain00148_n89_α
 xchain00148_n88_β:
 jmp xchain00148_n89_α
xchain00148_n89_α:
# IR_VAR
bb00152_α:
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 1016], rax
 jmp xchain00148_n90_α
 xchain00148_n89_β:
 jmp xchain00148_n52_β
xchain00148_n90_α:
# IR_VAR
bb00242_α:
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 1048], rax
 jmp xchain00148_n91_α
 xchain00148_n90_β:
 jmp xchain00148_n52_β
xchain00148_n91_α:
# IR_VAR
bb00243_α:
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 1064], rax
 jmp xchain00148_n92_α
 xchain00148_n91_β:
 jmp xchain00148_n52_β
xchain00148_n92_α:
bb00244_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2064]
 cmp eax, 100
 je .Lx00245_0
 mov eax, dword ptr [r12 + 2048]
 cmp eax, 100
 je .Lx00245_0
 mov eax, dword ptr [r12 + 2064]
 cmp eax, 6
 jne .Lx00245_2
 mov eax, dword ptr [r12 + 2048]
 cmp eax, 6
 jne .Lx00245_2
.Lx00245_1:
 mov rax, qword ptr [r12 + 2072]
 mov rcx, qword ptr [r12 + 2056]
 sub rax, rcx
 mov qword ptr [r12 + 1024], 6
 mov qword ptr [r12 + 1032], rax
 jmp xchain00148_n93_α
.Lx00245_0:
 mov rdi, qword ptr [r12 + 2064]
 mov rsi, qword ptr [r12 + 2072]
 mov rdx, qword ptr [r12 + 2048]
 mov rcx, qword ptr [r12 + 2056]
 mov r8d, 1
 lea r9, [r12 + 1024]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00245_3
.Lx00245_2:
 mov rdi, qword ptr [r12 + 2064]
 mov rsi, qword ptr [r12 + 2072]
 mov rdx, qword ptr [r12 + 2048]
 mov rcx, qword ptr [r12 + 2056]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00148_n52_β
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
.Lx00245_3:
 jmp xchain00148_n93_α
 xchain00148_n92_β:
 jmp xchain00148_n52_β
xchain00148_n93_α:
bb00246_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2016]
 cmp eax, 100
 je .Lx00247_0
 mov eax, dword ptr [r12 + 1024]
 cmp eax, 100
 je .Lx00247_0
 mov eax, dword ptr [r12 + 2016]
 cmp eax, 6
 jne .Lx00247_2
 mov eax, dword ptr [r12 + 1024]
 cmp eax, 6
 jne .Lx00247_2
.Lx00247_1:
 mov rax, qword ptr [r12 + 2024]
 mov rcx, qword ptr [r12 + 1032]
 cmp rax, rcx
 jl xchain00148_n52_β
 mov rcx, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rcx
 mov rcx, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rcx
 jmp xchain00148_n94_α
.Lx00247_0:
 mov rdi, qword ptr [r12 + 2016]
 mov rsi, qword ptr [r12 + 2024]
 mov rdx, qword ptr [r12 + 1024]
 mov rcx, qword ptr [r12 + 1032]
 mov r8d, 8
 lea r9, [r12 + 992]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00247_1
 cmp eax, 1
 je xchain00148_n52_β
 jmp xchain00148_n94_α
.Lx00247_2:
 mov rdi, qword ptr [r12 + 2016]
 mov rsi, qword ptr [r12 + 2024]
 mov rdx, qword ptr [r12 + 1024]
 mov rcx, qword ptr [r12 + 1032]
 mov r8d, 8
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00148_n52_β
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00148_n94_α
 xchain00148_n93_β:
 jmp xchain00148_n52_β
xchain00148_n94_α:
# IR_VAR gva
bb00248_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain00148_n95_α
 xchain00148_n94_β:
 jmp xchain00148_n98_α
xchain00148_n95_α:
# IR_LIT_STRING
bb00249_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx00250_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain00148_n96_α
 xchain00148_n95_β:
 jmp xchain00148_n98_α
.Lx00250_0:
 .quad .Lx00250_0_s
.Lx00250_0_s:
 .string "\n\t\t\t\t\t"
xchain00148_n96_α:
bb00251_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 960]
 mov rsi, qword ptr [r12 + 968]
 mov rdx, qword ptr [r12 + 976]
 mov rcx, qword ptr [r12 + 984]
 call str_concat_d@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain00148_n97_α
 xchain00148_n96_β:
 jmp xchain00148_n98_α
xchain00148_n97_α:
# IR_ASSIGN gva
bb00252_α:
 mov rax, qword ptr [r12 + 944]
 mov rdx, qword ptr [r12 + 952]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain00148_n98_α
 xchain00148_n97_β:
 jmp xchain00148_n98_α
xchain00148_n98_α:
# IR_VAR
bb00253_α:
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 920], rax
 jmp xchain00148_n99_α
 xchain00148_n98_β:
 jmp xchain00148_n52_β
xchain00148_n99_α:
bb00254_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00148_n00006_α
 xchain00148_n99_β:
 jmp xchain00148_n52_β
xchain00148_n00006_α:
 jmp xchain00148_n00007_α
xchain00148_n00006_β:
 jmp xchain00148_n52_β
xchain00148_n00007_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00161_α:
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 872], rax
 lea rax, [rip + xchain00148_n52_β]
 mov qword ptr [r12 + 880], rax
 jmp xchain00148_n00009_α
 xchain00148_n00007_β:
 jmp xchain00148_n52_β
xchain00148_n00009_α:
 jmp xchain00148_n52_β
xchain00148_n00009_β:
 jmp xchain00148_n52_β
xchain00148_n00010_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00255_α:
 jmp qword ptr [r12 + 880]
 xchain00148_n00010_β:
 jmp xchain00148_n52_β
xchain00148_n00012_α:
# IR_VAR
bb00256_α:
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 184], rax
 jmp xchain00148_n00014_α
 xchain00148_n00012_β:
 jmp xchain00148_n00016_α
xchain00148_n00014_α:
bb00257_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn475: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn475]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00148_n00016_α
 jmp xchain00148_n00015_α
 xchain00148_n00014_β:
 jmp xchain00148_n00016_α
xchain00148_n00015_α:
bb00258_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00148_n00016_α
 xchain00148_n00015_β:
 jmp xchain00148_n00016_α
xchain00148_n00016_α:
# IR_VAR
bb00259_α:
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 104], rax
 jmp xchain00148_n00018_α
 xchain00148_n00016_β:
 jmp xchain00148_n00020_α
xchain00148_n00018_α:
# IR_LIT_STRING
bb00260_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00261_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00148_n00019_α
 xchain00148_n00018_β:
 jmp xchain00148_n00020_α
.Lx00261_0:
 .quad .Lx00261_0_s
.Lx00261_0_s:
 .string "variable\tprocedure\t\tline numbers\n"
xchain00148_n00019_α:
bb00262_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn481: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn481]
 lea rsi, [r12 + 64]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain00148_n00020_α
 jmp xchain00148_n00020_α
 xchain00148_n00019_β:
 jmp xchain00148_n00020_α
xchain00148_n00020_α:
# IR_VAR
bb00167_α:
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 40], rax
 jmp xchain00148_n00021_α
 xchain00148_n00020_β:
 jmp proc_format_ω
xchain00148_n00021_α:
# IR_RETURN
bb00263_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_format_γ
proc_format_β:
jmp proc_format_ω
proc_format_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_format_ω:
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
  .Lclassspec0: .string "procrec(pname,begline,lastline)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec0]
  call record_register@PLT
  .section .rodata
  .Lstartup_pname0: .string "addword"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_addword_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname1: .string "getword"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_getword_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname2: .string "format"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_format_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "resword"
  .Lgvan1: .string "linenum"
  .Lgvan2: .string "letters"
  .Lgvan3: .string "alphas"
  .Lgvan4: .string "var"
  .Lgvan5: .string "buffer"
  .Lgvan6: .string "qflag"
  .Lgvan7: .string "infile"
  .Lgvan8: .string "xflag"
  .Lgvan9: .string "inmaxcol"
  .Lgvan10: .string "inlmarg"
  .Lgvan11: .string "inchunk"
  .Lgvan12: .string "localvar"
  .Lgvan13: .string "lin"
  .Lgvan14: .string "getword__STATIC__i"
  .Lgvan15: .string "getword__STATIC__nonwhite"
  .Lgvan16: .string "getword__INITFLAG__0"
  .Lgvan17: .string "format__INITFLAG__0"
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
  .quad .Lgvan10
  .quad .Lgvan11
  .quad .Lgvan12
  .quad .Lgvan13
  .quad .Lgvan14
  .quad .Lgvan15
  .quad .Lgvan16
  .quad .Lgvan17
  .section .bss
  .align 16
__gva: .space 288, 0
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
  mov edx, 18
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
xchain00264_n0_α:
# IR_LIT_STRING
bb00265_α:
 mov qword ptr [r12 + 6048], 1
 mov rax, qword ptr [rip + .Lx00266_0]
 mov qword ptr [r12 + 6056], rax
 jmp xchain00264_n1_α
 xchain00264_n0_β:
 jmp xchain00264_n2_α
.Lx00266_0:
 .quad .Lx00266_0_s
.Lx00266_0_s:
 .string "ipxref"
xchain00264_n1_α:
bb00267_α:
# BOX IR_CALL Init__(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+6048] -> [r12+6032]
 mov rax, qword ptr [r12 + 6048]
 mov qword ptr [r12 + 6032], rax
 mov rax, qword ptr [r12 + 6056]
 mov qword ptr [r12 + 6040], rax
  .section .rodata
  .Lbynamefn488: .string "Init__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn488]
 lea rsi, [r12 + 6032]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6016], rax
 mov qword ptr [r12 + 6024], rdx
 cmp eax, 99
 je xchain00264_n2_α
 jmp xchain00264_n2_α
xchain00264_n1_β:
 jmp xchain00264_n2_α
xchain00264_n2_α:
# IR_LIT_STRING
bb00268_α:
 mov qword ptr [r12 + 5568], 1
 mov rax, qword ptr [rip + .Lx00269_0]
 mov qword ptr [r12 + 5576], rax
 jmp xchain00264_n3_α
 xchain00264_n2_β:
 jmp xchain00264_n32_α
.Lx00269_0:
 .quad .Lx00269_0_s
.Lx00269_0_s:
 .string "break"
xchain00264_n3_α:
# IR_LIT_STRING
bb00270_α:
 mov qword ptr [r12 + 5584], 1
 mov rax, qword ptr [rip + .Lx00271_0]
 mov qword ptr [r12 + 5592], rax
 jmp xchain00264_n4_α
 xchain00264_n3_β:
 jmp xchain00264_n32_α
.Lx00271_0:
 .quad .Lx00271_0_s
.Lx00271_0_s:
 .string "by"
xchain00264_n4_α:
# IR_LIT_STRING
bb00272_α:
 mov qword ptr [r12 + 5600], 1
 mov rax, qword ptr [rip + .Lx00273_0]
 mov qword ptr [r12 + 5608], rax
 jmp xchain00264_n5_α
 xchain00264_n4_β:
 jmp xchain00264_n32_α
.Lx00273_0:
 .quad .Lx00273_0_s
.Lx00273_0_s:
 .string "case"
xchain00264_n5_α:
# IR_LIT_STRING
bb00274_α:
 mov qword ptr [r12 + 5616], 1
 mov rax, qword ptr [rip + .Lx00275_0]
 mov qword ptr [r12 + 5624], rax
 jmp xchain00264_n6_α
 xchain00264_n5_β:
 jmp xchain00264_n32_α
.Lx00275_0:
 .quad .Lx00275_0_s
.Lx00275_0_s:
 .string "default"
xchain00264_n6_α:
# IR_LIT_STRING
bb00174_α:
 mov qword ptr [r12 + 5632], 1
 mov rax, qword ptr [rip + .Lx00276_0]
 mov qword ptr [r12 + 5640], rax
 jmp xchain00264_n7_α
 xchain00264_n6_β:
 jmp xchain00264_n32_α
.Lx00276_0:
 .quad .Lx00276_0_s
.Lx00276_0_s:
 .string "do"
xchain00264_n7_α:
# IR_LIT_STRING
bb00277_α:
 mov qword ptr [r12 + 5648], 1
 mov rax, qword ptr [rip + .Lx00278_0]
 mov qword ptr [r12 + 5656], rax
 jmp xchain00264_n8_α
 xchain00264_n7_β:
 jmp xchain00264_n32_α
.Lx00278_0:
 .quad .Lx00278_0_s
.Lx00278_0_s:
 .string "dynamic"
xchain00264_n8_α:
# IR_LIT_STRING
bb00176_α:
 mov qword ptr [r12 + 5664], 1
 mov rax, qword ptr [rip + .Lx00279_0]
 mov qword ptr [r12 + 5672], rax
 jmp xchain00264_n9_α
 xchain00264_n8_β:
 jmp xchain00264_n32_α
.Lx00279_0:
 .quad .Lx00279_0_s
.Lx00279_0_s:
 .string "else"
xchain00264_n9_α:
# IR_LIT_STRING
bb00280_α:
 mov qword ptr [r12 + 5680], 1
 mov rax, qword ptr [rip + .Lx00281_0]
 mov qword ptr [r12 + 5688], rax
 jmp xchain00264_n10_α
 xchain00264_n9_β:
 jmp xchain00264_n32_α
.Lx00281_0:
 .quad .Lx00281_0_s
.Lx00281_0_s:
 .string "end"
xchain00264_n10_α:
# IR_LIT_STRING
bb00282_α:
 mov qword ptr [r12 + 5696], 1
 mov rax, qword ptr [rip + .Lx00283_0]
 mov qword ptr [r12 + 5704], rax
 jmp xchain00264_n11_α
 xchain00264_n10_β:
 jmp xchain00264_n32_α
.Lx00283_0:
 .quad .Lx00283_0_s
.Lx00283_0_s:
 .string "every"
xchain00264_n11_α:
# IR_LIT_STRING
bb00284_α:
 mov qword ptr [r12 + 5712], 1
 mov rax, qword ptr [rip + .Lx00285_0]
 mov qword ptr [r12 + 5720], rax
 jmp xchain00264_n12_α
 xchain00264_n11_β:
 jmp xchain00264_n32_α
.Lx00285_0:
 .quad .Lx00285_0_s
.Lx00285_0_s:
 .string "fail"
xchain00264_n12_α:
# IR_LIT_STRING
bb00286_α:
 mov qword ptr [r12 + 5728], 1
 mov rax, qword ptr [rip + .Lx00287_0]
 mov qword ptr [r12 + 5736], rax
 jmp xchain00264_n13_α
 xchain00264_n12_β:
 jmp xchain00264_n32_α
.Lx00287_0:
 .quad .Lx00287_0_s
.Lx00287_0_s:
 .string "global"
xchain00264_n13_α:
# IR_LIT_STRING
bb00288_α:
 mov qword ptr [r12 + 5744], 1
 mov rax, qword ptr [rip + .Lx00289_0]
 mov qword ptr [r12 + 5752], rax
 jmp xchain00264_n14_α
 xchain00264_n13_β:
 jmp xchain00264_n32_α
.Lx00289_0:
 .quad .Lx00289_0_s
.Lx00289_0_s:
 .string "if"
xchain00264_n14_α:
# IR_LIT_STRING
bb00290_α:
 mov qword ptr [r12 + 5760], 1
 mov rax, qword ptr [rip + .Lx00291_0]
 mov qword ptr [r12 + 5768], rax
 jmp xchain00264_n15_α
 xchain00264_n14_β:
 jmp xchain00264_n32_α
.Lx00291_0:
 .quad .Lx00291_0_s
.Lx00291_0_s:
 .string "initial"
xchain00264_n15_α:
# IR_LIT_STRING
bb00292_α:
 mov qword ptr [r12 + 5776], 1
 mov rax, qword ptr [rip + .Lx00293_0]
 mov qword ptr [r12 + 5784], rax
 jmp xchain00264_n16_α
 xchain00264_n15_β:
 jmp xchain00264_n32_α
.Lx00293_0:
 .quad .Lx00293_0_s
.Lx00293_0_s:
 .string "link"
xchain00264_n16_α:
# IR_LIT_STRING
bb00294_α:
 mov qword ptr [r12 + 5792], 1
 mov rax, qword ptr [rip + .Lx00295_0]
 mov qword ptr [r12 + 5800], rax
 jmp xchain00264_n17_α
 xchain00264_n16_β:
 jmp xchain00264_n32_α
.Lx00295_0:
 .quad .Lx00295_0_s
.Lx00295_0_s:
 .string "local"
xchain00264_n17_α:
# IR_LIT_STRING
bb00296_α:
 mov qword ptr [r12 + 5808], 1
 mov rax, qword ptr [rip + .Lx00297_0]
 mov qword ptr [r12 + 5816], rax
 jmp xchain00264_n18_α
 xchain00264_n17_β:
 jmp xchain00264_n32_α
.Lx00297_0:
 .quad .Lx00297_0_s
.Lx00297_0_s:
 .string "next"
xchain00264_n18_α:
# IR_LIT_STRING
bb00298_α:
 mov qword ptr [r12 + 5824], 1
 mov rax, qword ptr [rip + .Lx00299_0]
 mov qword ptr [r12 + 5832], rax
 jmp xchain00264_n19_α
 xchain00264_n18_β:
 jmp xchain00264_n32_α
.Lx00299_0:
 .quad .Lx00299_0_s
.Lx00299_0_s:
 .string "not"
xchain00264_n19_α:
# IR_LIT_STRING
bb00182_α:
 mov qword ptr [r12 + 5840], 1
 mov rax, qword ptr [rip + .Lx00300_0]
 mov qword ptr [r12 + 5848], rax
 jmp xchain00264_n20_α
 xchain00264_n19_β:
 jmp xchain00264_n32_α
.Lx00300_0:
 .quad .Lx00300_0_s
.Lx00300_0_s:
 .string "of"
xchain00264_n20_α:
# IR_LIT_STRING
bb00301_α:
 mov qword ptr [r12 + 5856], 1
 mov rax, qword ptr [rip + .Lx00302_0]
 mov qword ptr [r12 + 5864], rax
 jmp xchain00264_n21_α
 xchain00264_n20_β:
 jmp xchain00264_n32_α
.Lx00302_0:
 .quad .Lx00302_0_s
.Lx00302_0_s:
 .string "procedure"
xchain00264_n21_α:
# IR_LIT_STRING
bb00303_α:
 mov qword ptr [r12 + 5872], 1
 mov rax, qword ptr [rip + .Lx00304_0]
 mov qword ptr [r12 + 5880], rax
 jmp xchain00264_n22_α
 xchain00264_n21_β:
 jmp xchain00264_n32_α
.Lx00304_0:
 .quad .Lx00304_0_s
.Lx00304_0_s:
 .string "record"
xchain00264_n22_α:
# IR_LIT_STRING
bb00185_α:
 mov qword ptr [r12 + 5888], 1
 mov rax, qword ptr [rip + .Lx00305_0]
 mov qword ptr [r12 + 5896], rax
 jmp xchain00264_n23_α
 xchain00264_n22_β:
 jmp xchain00264_n32_α
.Lx00305_0:
 .quad .Lx00305_0_s
.Lx00305_0_s:
 .string "repeat"
xchain00264_n23_α:
# IR_LIT_STRING
bb00306_α:
 mov qword ptr [r12 + 5904], 1
 mov rax, qword ptr [rip + .Lx00307_0]
 mov qword ptr [r12 + 5912], rax
 jmp xchain00264_n24_α
 xchain00264_n23_β:
 jmp xchain00264_n32_α
.Lx00307_0:
 .quad .Lx00307_0_s
.Lx00307_0_s:
 .string "return"
xchain00264_n24_α:
# IR_LIT_STRING
bb00308_α:
 mov qword ptr [r12 + 5920], 1
 mov rax, qword ptr [rip + .Lx00309_0]
 mov qword ptr [r12 + 5928], rax
 jmp xchain00264_n25_α
 xchain00264_n24_β:
 jmp xchain00264_n32_α
.Lx00309_0:
 .quad .Lx00309_0_s
.Lx00309_0_s:
 .string "static"
xchain00264_n25_α:
# IR_LIT_STRING
bb00310_α:
 mov qword ptr [r12 + 5936], 1
 mov rax, qword ptr [rip + .Lx00311_0]
 mov qword ptr [r12 + 5944], rax
 jmp xchain00264_n26_α
 xchain00264_n25_β:
 jmp xchain00264_n32_α
.Lx00311_0:
 .quad .Lx00311_0_s
.Lx00311_0_s:
 .string "suspend"
xchain00264_n26_α:
# IR_LIT_STRING
bb00312_α:
 mov qword ptr [r12 + 5952], 1
 mov rax, qword ptr [rip + .Lx00313_0]
 mov qword ptr [r12 + 5960], rax
 jmp xchain00264_n27_α
 xchain00264_n26_β:
 jmp xchain00264_n32_α
.Lx00313_0:
 .quad .Lx00313_0_s
.Lx00313_0_s:
 .string "then"
xchain00264_n27_α:
# IR_LIT_STRING
bb00314_α:
 mov qword ptr [r12 + 5968], 1
 mov rax, qword ptr [rip + .Lx00315_0]
 mov qword ptr [r12 + 5976], rax
 jmp xchain00264_n28_α
 xchain00264_n27_β:
 jmp xchain00264_n32_α
.Lx00315_0:
 .quad .Lx00315_0_s
.Lx00315_0_s:
 .string "to"
xchain00264_n28_α:
# IR_LIT_STRING
bb00316_α:
 mov qword ptr [r12 + 5984], 1
 mov rax, qword ptr [rip + .Lx00317_0]
 mov qword ptr [r12 + 5992], rax
 jmp xchain00264_n29_α
 xchain00264_n28_β:
 jmp xchain00264_n32_α
.Lx00317_0:
 .quad .Lx00317_0_s
.Lx00317_0_s:
 .string "until"
xchain00264_n29_α:
# IR_LIT_STRING
bb00318_α:
 mov qword ptr [r12 + 6000], 1
 mov rax, qword ptr [rip + .Lx00319_0]
 mov qword ptr [r12 + 6008], rax
 jmp xchain00264_n30_α
 xchain00264_n29_β:
 jmp xchain00264_n32_α
.Lx00319_0:
 .quad .Lx00319_0_s
.Lx00319_0_s:
 .string "while"
xchain00264_n30_α:
# IR_MAKE_LIST
bb00320_α:
 mov rax, qword ptr [r12 + 5568]
 mov qword ptr [r12 + 5120], rax
 mov rax, qword ptr [r12 + 5576]
 mov qword ptr [r12 + 5128], rax
 mov rax, qword ptr [r12 + 5584]
 mov qword ptr [r12 + 5136], rax
 mov rax, qword ptr [r12 + 5592]
 mov qword ptr [r12 + 5144], rax
 mov rax, qword ptr [r12 + 5600]
 mov qword ptr [r12 + 5152], rax
 mov rax, qword ptr [r12 + 5608]
 mov qword ptr [r12 + 5160], rax
 mov rax, qword ptr [r12 + 5616]
 mov qword ptr [r12 + 5168], rax
 mov rax, qword ptr [r12 + 5624]
 mov qword ptr [r12 + 5176], rax
 mov rax, qword ptr [r12 + 5632]
 mov qword ptr [r12 + 5184], rax
 mov rax, qword ptr [r12 + 5640]
 mov qword ptr [r12 + 5192], rax
 mov rax, qword ptr [r12 + 5648]
 mov qword ptr [r12 + 5200], rax
 mov rax, qword ptr [r12 + 5656]
 mov qword ptr [r12 + 5208], rax
 mov rax, qword ptr [r12 + 5664]
 mov qword ptr [r12 + 5216], rax
 mov rax, qword ptr [r12 + 5672]
 mov qword ptr [r12 + 5224], rax
 mov rax, qword ptr [r12 + 5680]
 mov qword ptr [r12 + 5232], rax
 mov rax, qword ptr [r12 + 5688]
 mov qword ptr [r12 + 5240], rax
 mov rax, qword ptr [r12 + 5696]
 mov qword ptr [r12 + 5248], rax
 mov rax, qword ptr [r12 + 5704]
 mov qword ptr [r12 + 5256], rax
 mov rax, qword ptr [r12 + 5712]
 mov qword ptr [r12 + 5264], rax
 mov rax, qword ptr [r12 + 5720]
 mov qword ptr [r12 + 5272], rax
 mov rax, qword ptr [r12 + 5728]
 mov qword ptr [r12 + 5280], rax
 mov rax, qword ptr [r12 + 5736]
 mov qword ptr [r12 + 5288], rax
 mov rax, qword ptr [r12 + 5744]
 mov qword ptr [r12 + 5296], rax
 mov rax, qword ptr [r12 + 5752]
 mov qword ptr [r12 + 5304], rax
 mov rax, qword ptr [r12 + 5760]
 mov qword ptr [r12 + 5312], rax
 mov rax, qword ptr [r12 + 5768]
 mov qword ptr [r12 + 5320], rax
 mov rax, qword ptr [r12 + 5776]
 mov qword ptr [r12 + 5328], rax
 mov rax, qword ptr [r12 + 5784]
 mov qword ptr [r12 + 5336], rax
 mov rax, qword ptr [r12 + 5792]
 mov qword ptr [r12 + 5344], rax
 mov rax, qword ptr [r12 + 5800]
 mov qword ptr [r12 + 5352], rax
 mov rax, qword ptr [r12 + 5808]
 mov qword ptr [r12 + 5360], rax
 mov rax, qword ptr [r12 + 5816]
 mov qword ptr [r12 + 5368], rax
 mov rax, qword ptr [r12 + 5824]
 mov qword ptr [r12 + 5376], rax
 mov rax, qword ptr [r12 + 5832]
 mov qword ptr [r12 + 5384], rax
 mov rax, qword ptr [r12 + 5840]
 mov qword ptr [r12 + 5392], rax
 mov rax, qword ptr [r12 + 5848]
 mov qword ptr [r12 + 5400], rax
 mov rax, qword ptr [r12 + 5856]
 mov qword ptr [r12 + 5408], rax
 mov rax, qword ptr [r12 + 5864]
 mov qword ptr [r12 + 5416], rax
 mov rax, qword ptr [r12 + 5872]
 mov qword ptr [r12 + 5424], rax
 mov rax, qword ptr [r12 + 5880]
 mov qword ptr [r12 + 5432], rax
 mov rax, qword ptr [r12 + 5888]
 mov qword ptr [r12 + 5440], rax
 mov rax, qword ptr [r12 + 5896]
 mov qword ptr [r12 + 5448], rax
 mov rax, qword ptr [r12 + 5904]
 mov qword ptr [r12 + 5456], rax
 mov rax, qword ptr [r12 + 5912]
 mov qword ptr [r12 + 5464], rax
 mov rax, qword ptr [r12 + 5920]
 mov qword ptr [r12 + 5472], rax
 mov rax, qword ptr [r12 + 5928]
 mov qword ptr [r12 + 5480], rax
 mov rax, qword ptr [r12 + 5936]
 mov qword ptr [r12 + 5488], rax
 mov rax, qword ptr [r12 + 5944]
 mov qword ptr [r12 + 5496], rax
 mov rax, qword ptr [r12 + 5952]
 mov qword ptr [r12 + 5504], rax
 mov rax, qword ptr [r12 + 5960]
 mov qword ptr [r12 + 5512], rax
 mov rax, qword ptr [r12 + 5968]
 mov qword ptr [r12 + 5520], rax
 mov rax, qword ptr [r12 + 5976]
 mov qword ptr [r12 + 5528], rax
 mov rax, qword ptr [r12 + 5984]
 mov qword ptr [r12 + 5536], rax
 mov rax, qword ptr [r12 + 5992]
 mov qword ptr [r12 + 5544], rax
 mov rax, qword ptr [r12 + 6000]
 mov qword ptr [r12 + 5552], rax
 mov rax, qword ptr [r12 + 6008]
 mov qword ptr [r12 + 5560], rax
 lea rdi, [r12 + 5120]
 mov esi, 28
 call rt_make_list@PLT
 mov qword ptr [r12 + 5104], rax
 mov qword ptr [r12 + 5112], rdx
 jmp xchain00264_n31_α
 xchain00264_n30_β:
 jmp xchain00264_n32_α
xchain00264_n31_α:
# IR_ASSIGN gva
bb00321_α:
 mov rax, qword ptr [r12 + 5104]
 mov rdx, qword ptr [r12 + 5112]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 5088], rax
 mov qword ptr [r12 + 5096], rdx
 jmp xchain00264_n32_α
 xchain00264_n31_β:
 jmp xchain00264_n32_α
xchain00264_n32_α:
# IR_LIT_INTEGER
bb00192_α:
 mov qword ptr [r12 + 5072], 6
 mov rax, qword ptr [rip + .Lx00322_0]
 mov qword ptr [r12 + 5080], rax
 jmp xchain00264_n33_α
 xchain00264_n32_β:
 jmp xchain00264_n34_α
.Lx00322_0:
 .quad 0
xchain00264_n33_α:
# IR_ASSIGN gva
bb00323_α:
 mov rax, qword ptr [r12 + 5072]
 mov rdx, qword ptr [r12 + 5080]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 5056], rax
 mov qword ptr [r12 + 5064], rdx
 jmp xchain00264_n34_α
 xchain00264_n33_β:
 jmp xchain00264_n34_α
xchain00264_n34_α:
bb00324_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn523: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn523]
 lea rsi, [r12 + 5056]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5040], rax
 mov qword ptr [r12 + 5048], rdx
 cmp eax, 99
 je xchain00264_n36_α
 jmp xchain00264_n35_α
 xchain00264_n34_β:
 jmp xchain00264_n36_α
xchain00264_n35_α:
# IR_ASSIGN gva
bb00325_α:
 mov rax, qword ptr [r12 + 5040]
 mov rdx, qword ptr [r12 + 5048]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 5024], rax
 mov qword ptr [r12 + 5032], rdx
 jmp xchain00264_n36_α
 xchain00264_n35_β:
 jmp xchain00264_n36_α
xchain00264_n36_α:
# IR_MAKE_LIST
bb00326_α:
 lea rdi, [r12 + 5024]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 5008], rax
 mov qword ptr [r12 + 5016], rdx
 jmp xchain00264_n37_α
 xchain00264_n36_β:
 jmp xchain00264_n38_α
xchain00264_n37_α:
bb00193_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 5008]
 mov rdx, qword ptr [r12 + 5016]
 mov qword ptr [r12 + 6096], rax
 mov qword ptr [r12 + 6104], rdx
 mov qword ptr [r12 + 4992], rax
 mov qword ptr [r12 + 5000], rdx
 jmp xchain00264_n38_α
 xchain00264_n37_β:
 jmp xchain00264_n38_α
xchain00264_n38_α:
# IR_MAKE_LIST
bb00194_α:
 lea rdi, [r12 + 4992]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 4976], rax
 mov qword ptr [r12 + 4984], rdx
 jmp xchain00264_n39_α
 xchain00264_n38_β:
 jmp xchain00264_n40_α
xchain00264_n39_α:
# IR_ASSIGN gva
bb00327_α:
 mov rax, qword ptr [r12 + 4976]
 mov rdx, qword ptr [r12 + 4984]
 mov qword ptr [rbx + 192], rax
 mov qword ptr [rbx + 200], rdx
 mov qword ptr [r12 + 4960], rax
 mov qword ptr [r12 + 4968], rdx
 jmp xchain00264_n40_α
 xchain00264_n39_β:
 jmp xchain00264_n40_α
xchain00264_n40_α:
# IR_MAKE_LIST
bb00328_α:
 lea rdi, [r12 + 4960]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 4944], rax
 mov qword ptr [r12 + 4952], rdx
 jmp xchain00264_n41_α
 xchain00264_n40_β:
 jmp xchain00264_n42_α
xchain00264_n41_α:
# IR_ASSIGN gva
bb00329_α:
 mov rax, qword ptr [r12 + 4944]
 mov rdx, qword ptr [r12 + 4952]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 4928], rax
 mov qword ptr [r12 + 4936], rdx
 jmp xchain00264_n42_α
 xchain00264_n41_β:
 jmp xchain00264_n42_α
xchain00264_n42_α:
# IR_LIT_STRING
bb00330_α:
 mov qword ptr [r12 + 4912], 1
 mov rax, qword ptr [rip + .Lx00331_0]
 mov qword ptr [r12 + 4920], rax
 jmp xchain00264_n43_α
 xchain00264_n42_β:
 jmp xchain00264_n44_α
.Lx00331_0:
 .quad .Lx00331_0_s
.Lx00331_0_s:
 .string "global"
xchain00264_n43_α:
bb00332_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 4912]
 mov rdx, qword ptr [r12 + 4920]
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 mov qword ptr [r12 + 4896], rax
 mov qword ptr [r12 + 4904], rdx
 jmp xchain00264_n44_α
 xchain00264_n43_β:
 jmp xchain00264_n44_α
xchain00264_n44_α:
# IR_LIT_CHARSET
bb00333_α:
 mov qword ptr [r12 + 4864], 1
 mov dword ptr [r12 + 4868], -1
 mov rax, qword ptr [rip + .Lx00334_0]
 mov qword ptr [r12 + 4872], rax
 jmp xchain00264_n45_α
 xchain00264_n44_β:
 jmp xchain00264_n48_α
.Lx00334_0:
 .quad .Lx00334_0_s
.Lx00334_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
xchain00264_n45_α:
# IR_LIT_CHARSET
bb00335_α:
 mov qword ptr [r12 + 4880], 1
 mov dword ptr [r12 + 4884], -1
 mov rax, qword ptr [rip + .Lx00336_0]
 mov qword ptr [r12 + 4888], rax
 jmp xchain00264_n46_α
 xchain00264_n45_β:
 jmp xchain00264_n48_α
.Lx00336_0:
 .quad .Lx00336_0_s
.Lx00336_0_s:
 .string "_"
xchain00264_n46_α:
bb00337_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 4864]
 mov rsi, qword ptr [r12 + 4872]
 mov rdx, qword ptr [r12 + 4880]
 mov rcx, qword ptr [r12 + 4888]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00264_n48_α
 mov qword ptr [r12 + 4848], rax
 mov qword ptr [r12 + 4856], rdx
 jmp xchain00264_n47_α
 xchain00264_n46_β:
 jmp xchain00264_n48_α
xchain00264_n47_α:
# IR_ASSIGN gva
bb00338_α:
 mov rax, qword ptr [r12 + 4848]
 mov rdx, qword ptr [r12 + 4856]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 4832], rax
 mov qword ptr [r12 + 4840], rdx
 jmp xchain00264_n48_α
 xchain00264_n47_β:
 jmp xchain00264_n48_α
xchain00264_n48_α:
# IR_VAR gva
bb00201_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 4800], rax
 mov qword ptr [r12 + 4808], rdx
 jmp xchain00264_n49_α
 xchain00264_n48_β:
 jmp xchain00264_n52_α
xchain00264_n49_α:
# IR_LIT_CHARSET
bb00339_α:
 mov qword ptr [r12 + 4816], 1
 mov dword ptr [r12 + 4820], -1
 mov rax, qword ptr [rip + .Lx00340_0]
 mov qword ptr [r12 + 4824], rax
 jmp xchain00264_n50_α
 xchain00264_n49_β:
 jmp xchain00264_n52_α
.Lx00340_0:
 .quad .Lx00340_0_s
.Lx00340_0_s:
 .string "0123456789"
xchain00264_n50_α:
bb00203_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 4800]
 mov rsi, qword ptr [r12 + 4808]
 mov rdx, qword ptr [r12 + 4816]
 mov rcx, qword ptr [r12 + 4824]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00264_n52_α
 mov qword ptr [r12 + 4784], rax
 mov qword ptr [r12 + 4792], rdx
 jmp xchain00264_n51_α
 xchain00264_n50_β:
 jmp xchain00264_n52_α
xchain00264_n51_α:
# IR_ASSIGN gva
bb00341_α:
 mov rax, qword ptr [r12 + 4784]
 mov rdx, qword ptr [r12 + 4792]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 4768], rax
 mov qword ptr [r12 + 4776], rdx
 jmp xchain00264_n52_α
 xchain00264_n51_β:
 jmp xchain00264_n52_α
xchain00264_n52_α:
# IR_VAR
bb00342_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 4736], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 4744], rax
 jmp xchain00264_n53_α
 xchain00264_n52_β:
 jmp xchain00264_n56_α
xchain00264_n53_α:
# IR_LIT_STRING
bb00343_α:
 mov qword ptr [r12 + 4752], 1
 mov rax, qword ptr [rip + .Lx00344_0]
 mov qword ptr [r12 + 4760], rax
 jmp xchain00264_n54_α
 xchain00264_n53_β:
 jmp xchain00264_n56_α
.Lx00344_0:
 .quad .Lx00344_0_s
.Lx00344_0_s:
 .string "qxw+l+c+"
xchain00264_n54_α:
bb00345_α:
# BOX IR_CALL options(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+4736] -> [r12+4704]
 mov rax, qword ptr [r12 + 4736]
 mov qword ptr [r12 + 4704], rax
 mov rax, qword ptr [r12 + 4744]
 mov qword ptr [r12 + 4712], rax
# marshal arg1 = producer-box slot [r12+4752] -> [r12+4720]
 mov rax, qword ptr [r12 + 4752]
 mov qword ptr [r12 + 4720], rax
 mov rax, qword ptr [r12 + 4760]
 mov qword ptr [r12 + 4728], rax
  .section .rodata
  .Lbynamefn548: .string "options"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn548]
 lea rsi, [r12 + 4704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4688], rax
 mov qword ptr [r12 + 4696], rdx
 cmp eax, 99
 je xchain00264_n56_α
 jmp xchain00264_n55_α
xchain00264_n54_β:
 jmp xchain00264_n56_α
xchain00264_n55_α:
bb00346_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 4688]
 mov rdx, qword ptr [r12 + 4696]
 mov qword ptr [r12 + 6176], rax
 mov qword ptr [r12 + 6184], rdx
 mov qword ptr [r12 + 4672], rax
 mov qword ptr [r12 + 4680], rdx
 jmp xchain00264_n56_α
 xchain00264_n55_β:
 jmp xchain00264_n56_α
xchain00264_n56_α:
# IR_VAR_REF local
bb00347_α:
 lea rdi, [r12 + 6176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4608], rax
 mov qword ptr [r12 + 4616], rdx
 jmp xchain00264_n57_α
 xchain00264_n56_β:
 jmp xchain00264_n60_α
xchain00264_n57_α:
# IR_LIT_STRING
bb00348_α:
 mov qword ptr [r12 + 4624], 1
 mov rax, qword ptr [rip + .Lx00349_0]
 mov qword ptr [r12 + 4632], rax
 jmp xchain00264_n58_α
 xchain00264_n57_β:
 jmp xchain00264_n60_α
.Lx00349_0:
 .quad .Lx00349_0_s
.Lx00349_0_s:
 .string "q"
xchain00264_n58_α:
# IR_SUBSCRIPT x[i] variable
bb00350_α:
 mov rdi, qword ptr [r12 + 4608]
 mov rsi, qword ptr [r12 + 4616]
 mov rdx, qword ptr [r12 + 4624]
 mov rcx, qword ptr [r12 + 4632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00264_n60_α
 mov qword ptr [r12 + 4640], rax
 mov qword ptr [r12 + 4648], rdx
 jmp xchain00264_n59_α
 xchain00264_n58_β:
 jmp xchain00264_n60_α
xchain00264_n59_α:
# IR_DEREF variable -> value
bb00210_α:
 mov rdi, qword ptr [r12 + 4640]
 mov rsi, qword ptr [r12 + 4648]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00264_n60_α
 mov qword ptr [r12 + 4656], rax
 mov qword ptr [r12 + 4664], rdx
 jmp xchain00264_n61_α
 xchain00264_n59_β:
 jmp xchain00264_n60_α
xchain00264_n60_α:
# IR_VAR_REF local
bb00351_α:
 lea rdi, [r12 + 6176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4464], rax
 mov qword ptr [r12 + 4472], rdx
 jmp xchain00264_n62_α
 xchain00264_n60_β:
 jmp xchain00264_n67_α
xchain00264_n61_α:
# IR_UNOP
bb00352_α:
 mov eax, dword ptr [r12 + 4656]
 cmp eax, 99
 je xchain00264_n60_α
 cmp eax, 0
 je xchain00264_n60_α
 mov rax, qword ptr [r12 + 4656]
 mov qword ptr [r12 + 4592], rax
 mov rax, qword ptr [r12 + 4664]
 mov qword ptr [r12 + 4600], rax
 jmp xchain00264_n63_α
 xchain00264_n61_β:
 jmp xchain00264_n60_α
xchain00264_n62_α:
# IR_LIT_STRING
bb00353_α:
 mov qword ptr [r12 + 4480], 1
 mov rax, qword ptr [rip + .Lx00354_0]
 mov qword ptr [r12 + 4488], rax
 jmp xchain00264_n64_α
 xchain00264_n62_β:
 jmp xchain00264_n67_α
.Lx00354_0:
 .quad .Lx00354_0_s
.Lx00354_0_s:
 .string "x"
xchain00264_n63_α:
# IR_LIT_INTEGER
bb00355_α:
 mov qword ptr [r12 + 4576], 6
 mov rax, qword ptr [rip + .Lx00356_0]
 mov qword ptr [r12 + 4584], rax
 jmp xchain00264_n65_α
 xchain00264_n63_β:
 jmp xchain00264_n60_α
.Lx00356_0:
 .quad 1
xchain00264_n64_α:
# IR_SUBSCRIPT x[i] variable
bb00357_α:
 mov rdi, qword ptr [r12 + 4464]
 mov rsi, qword ptr [r12 + 4472]
 mov rdx, qword ptr [r12 + 4480]
 mov rcx, qword ptr [r12 + 4488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00264_n67_α
 mov qword ptr [r12 + 4496], rax
 mov qword ptr [r12 + 4504], rdx
 jmp xchain00264_n66_α
 xchain00264_n64_β:
 jmp xchain00264_n67_α
xchain00264_n65_α:
# IR_ASSIGN gva
bb00358_α:
 mov rax, qword ptr [r12 + 4576]
 mov rdx, qword ptr [r12 + 4584]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 4560], rax
 mov qword ptr [r12 + 4568], rdx
 jmp xchain00264_n68_α
 xchain00264_n65_β:
 jmp xchain00264_n60_α
xchain00264_n66_α:
# IR_DEREF variable -> value
bb00359_α:
 mov rdi, qword ptr [r12 + 4496]
 mov rsi, qword ptr [r12 + 4504]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00264_n67_α
 mov qword ptr [r12 + 4512], rax
 mov qword ptr [r12 + 4520], rdx
 jmp xchain00264_n69_α
 xchain00264_n66_β:
 jmp xchain00264_n67_α
xchain00264_n67_α:
# IR_VAR_REF local
bb00215_α:
 lea rdi, [r12 + 6176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 jmp xchain00264_n70_α
 xchain00264_n67_β:
 jmp xchain00264_n76_α
xchain00264_n68_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00217_α:
 mov rax, qword ptr [r12 + 4560]
 mov qword ptr [r12 + 4528], rax
 mov rax, qword ptr [r12 + 4568]
 mov qword ptr [r12 + 4536], rax
 lea rax, [rip + xchain00264_n60_α]
 mov qword ptr [r12 + 4544], rax
 jmp xchain00264_n60_α
 xchain00264_n68_β:
 jmp xchain00264_n60_α
xchain00264_n69_α:
# IR_UNOP
bb00219_α:
 mov eax, dword ptr [r12 + 4512]
 cmp eax, 99
 je xchain00264_n67_α
 cmp eax, 0
 je xchain00264_n67_α
 mov rax, qword ptr [r12 + 4512]
 mov qword ptr [r12 + 4448], rax
 mov rax, qword ptr [r12 + 4520]
 mov qword ptr [r12 + 4456], rax
 jmp xchain00264_n72_α
 xchain00264_n69_β:
 jmp xchain00264_n67_α
xchain00264_n70_α:
# IR_LIT_STRING
bb00360_α:
 mov qword ptr [r12 + 4336], 1
 mov rax, qword ptr [rip + .Lx00361_0]
 mov qword ptr [r12 + 4344], rax
 jmp xchain00264_n73_α
 xchain00264_n70_β:
 jmp xchain00264_n76_α
.Lx00361_0:
 .quad .Lx00361_0_s
.Lx00361_0_s:
 .string "w"
xchain00264_n71_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00221_α:
 jmp qword ptr [r12 + 4544]
 xchain00264_n71_β:
 jmp xchain00264_n60_α
xchain00264_n72_α:
# IR_LIT_INTEGER
bb00362_α:
 mov qword ptr [r12 + 4432], 6
 mov rax, qword ptr [rip + .Lx00363_0]
 mov qword ptr [r12 + 4440], rax
 jmp xchain00264_n74_α
 xchain00264_n72_β:
 jmp xchain00264_n67_α
.Lx00363_0:
 .quad 1
xchain00264_n73_α:
# IR_SUBSCRIPT x[i] variable
bb00364_α:
 mov rdi, qword ptr [r12 + 4320]
 mov rsi, qword ptr [r12 + 4328]
 mov rdx, qword ptr [r12 + 4336]
 mov rcx, qword ptr [r12 + 4344]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00264_n76_α
 mov qword ptr [r12 + 4352], rax
 mov qword ptr [r12 + 4360], rdx
 jmp xchain00264_n75_α
 xchain00264_n73_β:
 jmp xchain00264_n76_α
xchain00264_n74_α:
# IR_ASSIGN gva
bb00224_α:
 mov rax, qword ptr [r12 + 4432]
 mov rdx, qword ptr [r12 + 4440]
 mov qword ptr [rbx + 128], rax
 mov qword ptr [rbx + 136], rdx
 mov qword ptr [r12 + 4416], rax
 mov qword ptr [r12 + 4424], rdx
 jmp xchain00264_n77_α
 xchain00264_n74_β:
 jmp xchain00264_n67_α
xchain00264_n75_α:
# IR_DEREF variable -> value
bb00365_α:
 mov rdi, qword ptr [r12 + 4352]
 mov rsi, qword ptr [r12 + 4360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00264_n76_α
 mov qword ptr [r12 + 4368], rax
 mov qword ptr [r12 + 4376], rdx
 jmp xchain00264_n78_α
 xchain00264_n75_β:
 jmp xchain00264_n76_α
xchain00264_n76_α:
# IR_VAR_REF local
bb00366_α:
 lea rdi, [r12 + 6176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4224], rax
 mov qword ptr [r12 + 4232], rdx
 jmp xchain00264_n79_α
 xchain00264_n76_β:
 jmp xchain00264_n84_α
xchain00264_n77_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00226_α:
 mov rax, qword ptr [r12 + 4416]
 mov qword ptr [r12 + 4384], rax
 mov rax, qword ptr [r12 + 4424]
 mov qword ptr [r12 + 4392], rax
 lea rax, [rip + xchain00264_n67_α]
 mov qword ptr [r12 + 4400], rax
 jmp xchain00264_n67_α
 xchain00264_n77_β:
 jmp xchain00264_n67_α
xchain00264_n78_α:
# IR_UNOP
bb00367_α:
 mov eax, dword ptr [r12 + 4368]
 cmp eax, 99
 je xchain00264_n76_α
 cmp eax, 0
 je xchain00264_n76_α
 mov rax, qword ptr [r12 + 4368]
 mov qword ptr [r12 + 4304], rax
 mov rax, qword ptr [r12 + 4376]
 mov qword ptr [r12 + 4312], rax
 jmp xchain00264_n81_α
 xchain00264_n78_β:
 jmp xchain00264_n76_α
xchain00264_n79_α:
# IR_LIT_STRING
bb00368_α:
 mov qword ptr [r12 + 4240], 1
 mov rax, qword ptr [rip + .Lx00369_0]
 mov qword ptr [r12 + 4248], rax
 jmp xchain00264_n82_α
 xchain00264_n79_β:
 jmp xchain00264_n84_α
.Lx00369_0:
 .quad .Lx00369_0_s
.Lx00369_0_s:
 .string "l"
xchain00264_n80_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00370_α:
 jmp qword ptr [r12 + 4400]
 xchain00264_n80_β:
 jmp xchain00264_n67_α
xchain00264_n81_α:
# IR_ASSIGN gva
bb00371_α:
 mov rax, qword ptr [r12 + 4304]
 mov rdx, qword ptr [r12 + 4312]
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rdx
 mov qword ptr [r12 + 4288], rax
 mov qword ptr [r12 + 4296], rdx
 jmp xchain00264_n76_α
 xchain00264_n81_β:
 jmp xchain00264_n76_α
xchain00264_n82_α:
# IR_SUBSCRIPT x[i] variable
bb00372_α:
 mov rdi, qword ptr [r12 + 4224]
 mov rsi, qword ptr [r12 + 4232]
 mov rdx, qword ptr [r12 + 4240]
 mov rcx, qword ptr [r12 + 4248]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00264_n84_α
 mov qword ptr [r12 + 4256], rax
 mov qword ptr [r12 + 4264], rdx
 jmp xchain00264_n83_α
 xchain00264_n82_β:
 jmp xchain00264_n84_α
xchain00264_n83_α:
# IR_DEREF variable -> value
bb00373_α:
 mov rdi, qword ptr [r12 + 4256]
 mov rsi, qword ptr [r12 + 4264]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00264_n84_α
 mov qword ptr [r12 + 4272], rax
 mov qword ptr [r12 + 4280], rdx
 jmp xchain00264_n85_α
 xchain00264_n83_β:
 jmp xchain00264_n84_α
xchain00264_n84_α:
# IR_VAR_REF local
bb00374_α:
 lea rdi, [r12 + 6176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4128], rax
 mov qword ptr [r12 + 4136], rdx
 jmp xchain00264_n86_α
 xchain00264_n84_β:
 jmp xchain00264_n90_α
xchain00264_n85_α:
# IR_UNOP
bb00375_α:
 mov eax, dword ptr [r12 + 4272]
 cmp eax, 99
 je xchain00264_n84_α
 cmp eax, 0
 je xchain00264_n84_α
 mov rax, qword ptr [r12 + 4272]
 mov qword ptr [r12 + 4208], rax
 mov rax, qword ptr [r12 + 4280]
 mov qword ptr [r12 + 4216], rax
 jmp xchain00264_n87_α
 xchain00264_n85_β:
 jmp xchain00264_n84_α
xchain00264_n86_α:
# IR_LIT_STRING
bb00376_α:
 mov qword ptr [r12 + 4144], 1
 mov rax, qword ptr [rip + .Lx00377_0]
 mov qword ptr [r12 + 4152], rax
 jmp xchain00264_n88_α
 xchain00264_n86_β:
 jmp xchain00264_n90_α
.Lx00377_0:
 .quad .Lx00377_0_s
.Lx00377_0_s:
 .string "c"
xchain00264_n87_α:
# IR_ASSIGN gva
bb00378_α:
 mov rax, qword ptr [r12 + 4208]
 mov rdx, qword ptr [r12 + 4216]
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rdx
 mov qword ptr [r12 + 4192], rax
 mov qword ptr [r12 + 4200], rdx
 jmp xchain00264_n84_α
 xchain00264_n87_β:
 jmp xchain00264_n84_α
xchain00264_n88_α:
# IR_SUBSCRIPT x[i] variable
bb00379_α:
 mov rdi, qword ptr [r12 + 4128]
 mov rsi, qword ptr [r12 + 4136]
 mov rdx, qword ptr [r12 + 4144]
 mov rcx, qword ptr [r12 + 4152]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00264_n90_α
 mov qword ptr [r12 + 4160], rax
 mov qword ptr [r12 + 4168], rdx
 jmp xchain00264_n89_α
 xchain00264_n88_β:
 jmp xchain00264_n90_α
xchain00264_n89_α:
# IR_DEREF variable -> value
bb00380_α:
 mov rdi, qword ptr [r12 + 4160]
 mov rsi, qword ptr [r12 + 4168]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00264_n90_α
 mov qword ptr [r12 + 4176], rax
 mov qword ptr [r12 + 4184], rdx
 jmp xchain00264_n91_α
 xchain00264_n89_β:
 jmp xchain00264_n90_α
xchain00264_n90_α:
# IR_VAR_REF local
bb00381_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4016], rax
 mov qword ptr [r12 + 4024], rdx
 jmp xchain00264_n92_α
 xchain00264_n90_β:
 jmp xchain00264_n96_α
xchain00264_n91_α:
# IR_UNOP
bb00382_α:
 mov eax, dword ptr [r12 + 4176]
 cmp eax, 99
 je xchain00264_n90_α
 cmp eax, 0
 je xchain00264_n90_α
 mov rax, qword ptr [r12 + 4176]
 mov qword ptr [r12 + 4112], rax
 mov rax, qword ptr [r12 + 4184]
 mov qword ptr [r12 + 4120], rax
 jmp xchain00264_n93_α
 xchain00264_n91_β:
 jmp xchain00264_n90_α
xchain00264_n92_α:
# IR_LIT_INTEGER
bb00383_α:
 mov qword ptr [r12 + 4032], 6
 mov rax, qword ptr [rip + .Lx00384_0]
 mov qword ptr [r12 + 4040], rax
 jmp xchain00264_n94_α
 xchain00264_n92_β:
 jmp xchain00264_n96_α
.Lx00384_0:
 .quad 1
xchain00264_n93_α:
# IR_ASSIGN gva
bb00385_α:
 mov rax, qword ptr [r12 + 4112]
 mov rdx, qword ptr [r12 + 4120]
 mov qword ptr [rbx + 176], rax
 mov qword ptr [rbx + 184], rdx
 mov qword ptr [r12 + 4096], rax
 mov qword ptr [r12 + 4104], rdx
 jmp xchain00264_n90_α
 xchain00264_n93_β:
 jmp xchain00264_n90_α
xchain00264_n94_α:
# IR_SUBSCRIPT x[i] variable
bb00386_α:
 mov rdi, qword ptr [r12 + 4016]
 mov rsi, qword ptr [r12 + 4024]
 mov rdx, qword ptr [r12 + 4032]
 mov rcx, qword ptr [r12 + 4040]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00264_n96_α
 mov qword ptr [r12 + 4048], rax
 mov qword ptr [r12 + 4056], rdx
 jmp xchain00264_n95_α
 xchain00264_n94_β:
 jmp xchain00264_n96_α
xchain00264_n95_α:
# IR_DEREF variable -> value
bb00387_α:
 mov rdi, qword ptr [r12 + 4048]
 mov rsi, qword ptr [r12 + 4056]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00264_n96_α
 mov qword ptr [r12 + 4064], rax
 mov qword ptr [r12 + 4072], rdx
 jmp xchain00264_n97_α
 xchain00264_n95_β:
 jmp xchain00264_n96_α
xchain00264_n96_α:
bb00388_α:
  .section .rodata
  .Lcall00388_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00388_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain00264_n99_α
 jmp xchain00264_n98_α
xchain00264_n96_β:
 jmp xchain00264_n99_α
xchain00264_n97_α:
# IR_LIT_STRING
bb00389_α:
 mov qword ptr [r12 + 4080], 1
 mov rax, qword ptr [rip + .Lx00390_0]
 mov qword ptr [r12 + 4088], rax
 jmp xchain00264_n00006_α
 xchain00264_n97_β:
 jmp xchain00264_n96_α
.Lx00390_0:
 .quad .Lx00390_0_s
.Lx00390_0_s:
 .string "r"
xchain00264_n98_α:
bb00240_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 752]
 mov rdx, qword ptr [r12 + 760]
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00264_n00007_α
 xchain00264_n98_β:
 jmp xchain00264_n99_α
xchain00264_n99_α:
# IR_VAR gva
bb00391_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00264_n00009_α
 xchain00264_n99_β:
 jmp xchain00264_n00015_α
xchain00264_n00006_α:
bb00392_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4064] -> [r12+3984]
 mov rax, qword ptr [r12 + 4064]
 mov qword ptr [r12 + 3984], rax
 mov rax, qword ptr [r12 + 4072]
 mov qword ptr [r12 + 3992], rax
# marshal arg1 = producer-box slot [r12+4080] -> [r12+4000]
 mov rax, qword ptr [r12 + 4080]
 mov qword ptr [r12 + 4000], rax
 mov rax, qword ptr [r12 + 4088]
 mov qword ptr [r12 + 4008], rax
  .section .rodata
  .Lrkfn605: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn605]
 lea rsi, [r12 + 3984]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3968], rax
 mov qword ptr [r12 + 3976], rdx
 cmp eax, 99
 je xchain00264_n96_α
 jmp xchain00264_n00010_α
 xchain00264_n00006_β:
 jmp xchain00264_n96_α
xchain00264_n00007_α:
# IR_VAR
bb00393_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 3920], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 3928], rax
 jmp xchain00264_n00012_α
 xchain00264_n00007_β:
 jmp xchain00264_n00021_α
xchain00264_n00009_α:
bb00394_α:
  .section .rodata
  .Lcall00394_pname: .string "format"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00394_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain00264_n00015_α
 jmp xchain00264_n00014_α
xchain00264_n00009_β:
 jmp xchain00264_n00015_α
xchain00264_n00010_α:
# IR_ASSIGN gva
bb00395_α:
 mov rax, qword ptr [r12 + 3968]
 mov rdx, qword ptr [r12 + 3976]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 3952], rax
 mov qword ptr [r12 + 3960], rdx
 jmp xchain00264_n96_α
 xchain00264_n00010_β:
 jmp xchain00264_n96_α
xchain00264_n00012_α:
# IR_LIT_STRING
bb00396_α:
 mov qword ptr [r12 + 3936], 1
 mov rax, qword ptr [rip + .Lx00397_0]
 mov qword ptr [r12 + 3944], rax
 jmp xchain00264_n00016_α
 xchain00264_n00012_β:
 jmp xchain00264_n00021_α
.Lx00397_0:
 .quad .Lx00397_0_s
.Lx00397_0_s:
 .string "link"
xchain00264_n00014_α:
# IR_LIST_BANG
bb00398_α:
 mov qword ptr [r12 + 672], 0
.Lx00399_0:
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 mov rdx, qword ptr [r12 + 672]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp rax, 99
 je xchain00264_n00015_α
 jmp xchain00264_n00018_α
 xchain00264_n00014_β:
 inc qword ptr [r12 + 672]
 jmp .Lx00399_0
xchain00264_n00015_α:
# IR_LIT_STRING
bb00245_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx00400_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00264_n00019_α
 xchain00264_n00015_β:
 jmp xchain00264_n00022_α
.Lx00400_0:
 .quad .Lx00400_0_s
.Lx00400_0_s:
 .string "\n\nprocedures:\tlines:\n"
xchain00264_n00016_α:
bb00247_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6112]
 mov rsi, qword ptr [r12 + 6120]
 mov rdx, qword ptr [r12 + 3936]
 mov rcx, qword ptr [r12 + 3944]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00264_n00021_α
 mov rdi, qword ptr [r12 + 3936]
 mov rsi, qword ptr [r12 + 3944]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3904], rax
 mov qword ptr [r12 + 3912], rdx
 jmp xchain00264_n00020_α
 xchain00264_n00016_β:
 jmp xchain00264_n00021_α
xchain00264_n00018_α:
bb00401_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+656] -> [r12+640]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn616: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn616]
 lea rsi, [r12 + 640]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain00264_n00015_α
 jmp xchain00264_n00014_β
 xchain00264_n00018_β:
 jmp xchain00264_n00015_α
xchain00264_n00019_α:
bb00250_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+608] -> [r12+592]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn618: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn618]
 lea rsi, [r12 + 592]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain00264_n00022_α
 jmp xchain00264_n00022_α
 xchain00264_n00019_β:
 jmp xchain00264_n00022_α
xchain00264_n00020_α:
# IR_MAKE_LIST
bb00402_α:
 lea rdi, [r12 + 864]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain00264_n00001_α
 xchain00264_n00020_β:
 jmp xchain00264_n00027_α
xchain00264_n00021_α:
# IR_VAR
bb00403_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 3872], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 3880], rax
 jmp xchain00264_n00024_α
 xchain00264_n00021_β:
 jmp xchain00264_n00003_α
xchain00264_n00022_α:
# IR_MAKE_LIST
bb00404_α:
 lea rdi, [r12 + 576]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00264_n00025_α
 xchain00264_n00022_β:
 jmp xchain00264_n00028_α
xchain00264_n00001_α:
# IR_ASSIGN gva
bb00405_α:
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00264_n00027_α
 xchain00264_n00001_β:
 jmp xchain00264_n00027_α
xchain00264_n00024_α:
# IR_LIT_STRING
bb00406_α:
 mov qword ptr [r12 + 3888], 1
 mov rax, qword ptr [rip + .Lx00407_0]
 mov qword ptr [r12 + 3896], rax
 jmp xchain00264_n00002_α
 xchain00264_n00024_β:
 jmp xchain00264_n00003_α
.Lx00407_0:
 .quad .Lx00407_0_s
.Lx00407_0_s:
 .string "procedure"
xchain00264_n00025_α:
bb00408_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 6064], rax
 mov qword ptr [r12 + 6072], rdx
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00264_n00028_α
 xchain00264_n00025_β:
 jmp xchain00264_n00028_α
xchain00264_n00027_α:
# IR_LIT_STRING
bb00409_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx00410_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain00264_n00029_α
 xchain00264_n00027_β:
 jmp xchain00264_n96_α
.Lx00410_0:
 .quad .Lx00410_0_s
.Lx00410_0_s:
 .string ""
xchain00264_n00002_α:
bb00411_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6112]
 mov rsi, qword ptr [r12 + 6120]
 mov rdx, qword ptr [r12 + 3888]
 mov rcx, qword ptr [r12 + 3896]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00264_n00003_α
 mov rdi, qword ptr [r12 + 3888]
 mov rsi, qword ptr [r12 + 3896]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3856], rax
 mov qword ptr [r12 + 3864], rdx
 jmp xchain00264_n00030_α
 xchain00264_n00002_β:
 jmp xchain00264_n00003_α
xchain00264_n00028_α:
# IR_VAR
bb00412_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 216], rax
 jmp xchain00264_n00032_α
 xchain00264_n00028_β:
 jmp xchain00264_n00222_α
xchain00264_n00029_α:
# IR_ASSIGN gva
bb00413_α:
 mov rax, qword ptr [r12 + 816]
 mov rdx, qword ptr [r12 + 824]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00264_n96_α
 xchain00264_n00029_β:
 jmp xchain00264_n96_α
xchain00264_n00030_α:
# IR_VAR
bb00414_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 1224], rax
 jmp xchain00264_n00004_α
 xchain00264_n00030_β:
 jmp xchain00264_n00050_α
xchain00264_n00003_α:
# IR_VAR
bb00415_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 3760], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 3768], rax
 jmp xchain00264_n00035_α
 xchain00264_n00003_β:
 jmp xchain00264_n00046_α
xchain00264_n00032_α:
# IR_LIST_BANG
bb00416_α:
 mov qword ptr [r12 + 192], 0
.Lx00417_0:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 192]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp rax, 99
 je xchain00264_n00222_α
 jmp xchain00264_n00036_α
 xchain00264_n00032_β:
 inc qword ptr [r12 + 192]
 jmp .Lx00417_0
xchain00264_n00033_α:
 jmp xchain00264_n96_α
xchain00264_n00033_β:
 jmp xchain00264_n96_α
xchain00264_n00004_α:
# IR_LIT_STRING
bb00418_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx00419_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00264_n00005_α
 xchain00264_n00004_β:
 jmp xchain00264_n00050_α
.Lx00419_0:
 .quad .Lx00419_0_s
.Lx00419_0_s:
 .string ""
xchain00264_n00035_α:
# IR_LIT_STRING
bb00420_α:
 mov qword ptr [r12 + 3840], 1
 mov rax, qword ptr [rip + .Lx00421_0]
 mov qword ptr [r12 + 3848], rax
 jmp xchain00264_n00037_α
 xchain00264_n00035_β:
 jmp xchain00264_n00041_α
.Lx00421_0:
 .quad .Lx00421_0_s
.Lx00421_0_s:
 .string "global"
xchain00264_n00036_α:
bb00422_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 6080], rax
 mov qword ptr [r12 + 6088], rdx
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00264_n00038_α
 xchain00264_n00036_β:
 jmp xchain00264_n00222_α
xchain00264_n00005_α:
# IR_VAR gva
bb00423_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain00264_n00039_α
 xchain00264_n00005_β:
 jmp xchain00264_n00050_α
xchain00264_n00037_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00261_α:
 mov rax, qword ptr [r12 + 3840]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 3848]
 mov qword ptr [r12 + 3784], rax
 lea rax, [rip + xchain00264_n00041_α]
 mov qword ptr [r12 + 3792], rax
 jmp xchain00264_n00040_α
 xchain00264_n00037_β:
 jmp xchain00264_n00046_α
xchain00264_n00038_α:
# IR_VAR
bb00424_α:
 mov rax, qword ptr [r12 + 6064]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 6072]
 mov qword ptr [r12 + 280], rax
 jmp xchain00264_n00118_α
 xchain00264_n00038_β:
 jmp xchain00264_n00032_β
xchain00264_n00039_α:
# IR_LIT_INTEGER
bb00425_α:
 mov qword ptr [r12 + 1328], 6
 mov rax, qword ptr [rip + .Lx00426_0]
 mov qword ptr [r12 + 1336], rax
 jmp xchain00264_n00043_α
 xchain00264_n00039_β:
 jmp xchain00264_n00050_α
.Lx00426_0:
 .quad 0
xchain00264_n00040_α:
bb00427_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6112]
 mov rsi, qword ptr [r12 + 6120]
 mov rdx, qword ptr [r12 + 3776]
 mov rcx, qword ptr [r12 + 3784]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00264_n00046_α
 mov rdi, qword ptr [r12 + 3776]
 mov rsi, qword ptr [r12 + 3784]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3744], rax
 mov qword ptr [r12 + 3752], rdx
 jmp xchain00264_n00044_α
 xchain00264_n00040_β:
 jmp xchain00264_n00046_α
xchain00264_n00041_α:
# IR_LIT_STRING
bb00428_α:
 mov qword ptr [r12 + 3824], 1
 mov rax, qword ptr [rip + .Lx00429_0]
 mov qword ptr [r12 + 3832], rax
 jmp xchain00264_n00047_α
 xchain00264_n00041_β:
 jmp xchain00264_n00055_α
.Lx00429_0:
 .quad .Lx00429_0_s
.Lx00429_0_s:
 .string "link"
xchain00264_n00042_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00430_α:
 jmp qword ptr [r12 + 3792]
 xchain00264_n00042_β:
 jmp xchain00264_n00046_α
xchain00264_n00118_α:
# IR_VAR
bb00264_α:
 mov rax, qword ptr [r12 + 6080]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 6088]
 mov qword ptr [r12 + 424], rax
 jmp xchain00264_n00048_α
 xchain00264_n00118_β:
 jmp xchain00264_n00032_β
xchain00264_n00043_α:
bb00266_α:
# BOX IR_CALL procrec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1296] -> [r12+1248]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1256], rax
# marshal arg1 = producer-box slot [r12+1312] -> [r12+1264]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1272], rax
# marshal arg2 = producer-box slot [r12+1328] -> [r12+1280]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1288], rax
  .section .rodata
  .Lrkfn656: .string "procrec"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn656]
 lea rsi, [r12 + 1248]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je xchain00264_n00050_α
 jmp xchain00264_n00049_α
 xchain00264_n00043_β:
 jmp xchain00264_n00050_α
xchain00264_n00044_α:
bb00431_α:
  .section .rodata
  .Lcall00431_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00431_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 cmp eax, 99
 je xchain00264_n99_α
 jmp xchain00264_n00052_α
xchain00264_n00044_β:
 jmp xchain00264_n99_α
xchain00264_n00046_α:
# IR_VAR
bb00432_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 3648], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 3656], rax
 jmp xchain00264_n00054_α
 xchain00264_n00046_β:
 jmp xchain00264_n00026_α
xchain00264_n00047_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00269_α:
 mov rax, qword ptr [r12 + 3824]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 3832]
 mov qword ptr [r12 + 3784], rax
 lea rax, [rip + xchain00264_n00055_α]
 mov qword ptr [r12 + 3792], rax
 jmp xchain00264_n00040_α
 xchain00264_n00047_β:
 jmp xchain00264_n00046_α
xchain00264_n00048_α:
# IR_FIELD_GET
bb00271_α:
 mov rdi, qword ptr [rip + .Lx00433_0]
 mov rsi, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00264_n00032_β
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00264_n00056_α
 xchain00264_n00048_β:
 jmp xchain00264_n00032_β
.Lx00433_0:
 .quad .Lx00433_0_s
.Lx00433_0_s:
 .string "pname"
xchain00264_n00049_α:
bb00273_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1216] -> [r12+1184]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1192], rax
# marshal arg1 = producer-box slot [r12+1232] -> [r12+1200]
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1208], rax
  .section .rodata
  .Lrkfn664: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn664]
 lea rsi, [r12 + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain00264_n00050_α
 jmp xchain00264_n00050_α
 xchain00264_n00049_β:
 jmp xchain00264_n00050_α
xchain00264_n00050_α:
bb00275_α:
  .section .rodata
  .Lcall00275_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00275_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain00264_n99_α
 jmp xchain00264_n00057_α
xchain00264_n00050_β:
 jmp xchain00264_n99_α
xchain00264_n00052_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00276_α:
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 1944], rax
 lea rax, [rip + xchain00264_n00053_α]
 mov qword ptr [r12 + 1952], rax
 jmp xchain00264_n00059_α
 xchain00264_n00052_β:
 jmp xchain00264_n00063_α
xchain00264_n00053_α:
 jmp xchain00264_n99_α
xchain00264_n00053_β:
 jmp xchain00264_n99_α
xchain00264_n00054_α:
# IR_LIT_STRING
bb00279_α:
 mov qword ptr [r12 + 3728], 1
 mov rax, qword ptr [rip + .Lx00434_0]
 mov qword ptr [r12 + 3736], rax
 jmp xchain00264_n00013_α
 xchain00264_n00054_β:
 jmp xchain00264_n00066_α
.Lx00434_0:
 .quad .Lx00434_0_s
.Lx00434_0_s:
 .string "local"
xchain00264_n00055_α:
# IR_LIT_STRING
bb00281_α:
 mov qword ptr [r12 + 3808], 1
 mov rax, qword ptr [rip + .Lx00435_0]
 mov qword ptr [r12 + 3816], rax
 jmp xchain00264_n00060_α
 xchain00264_n00055_β:
 jmp xchain00264_n00046_α
.Lx00435_0:
 .quad .Lx00435_0_s
.Lx00435_0_s:
 .string "record"
xchain00264_n00056_α:
# IR_LIT_INTEGER
bb00283_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00436_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00264_n00061_α
 xchain00264_n00056_β:
 jmp xchain00264_n00032_β
.Lx00436_0:
 .quad 16
xchain00264_n00057_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00285_α:
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rax
 lea rax, [rip + xchain00264_n00008_α]
 mov qword ptr [r12 + 1136], rax
 jmp xchain00264_n00017_α
 xchain00264_n00057_β:
 jmp xchain00264_n00023_α
xchain00264_n00008_α:
 jmp xchain00264_n99_α
xchain00264_n00008_β:
 jmp xchain00264_n99_α
xchain00264_n00059_α:
bb00289_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1936]
 mov rdx, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain00264_n00063_α
 xchain00264_n00059_β:
 jmp xchain00264_n00063_α
xchain00264_n00011_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00291_α:
 jmp qword ptr [r12 + 1952]
 xchain00264_n00011_β:
 jmp xchain00264_n00063_α
xchain00264_n00013_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00293_α:
 mov rax, qword ptr [r12 + 3728]
 mov qword ptr [r12 + 3664], rax
 mov rax, qword ptr [r12 + 3736]
 mov qword ptr [r12 + 3672], rax
 lea rax, [rip + xchain00264_n00066_α]
 mov qword ptr [r12 + 3680], rax
 jmp xchain00264_n00064_α
 xchain00264_n00013_β:
 jmp xchain00264_n00026_α
xchain00264_n00060_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00295_α:
 mov rax, qword ptr [r12 + 3808]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 3816]
 mov qword ptr [r12 + 3784], rax
 lea rax, [rip + xchain00264_n00046_α]
 mov qword ptr [r12 + 3792], rax
 jmp xchain00264_n00040_α
 xchain00264_n00060_β:
 jmp xchain00264_n00046_α
xchain00264_n00061_α:
# IR_LIT_STRING
bb00297_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx00437_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00264_n00068_α
 xchain00264_n00061_β:
 jmp xchain00264_n00032_β
.Lx00437_0:
 .quad .Lx00437_0_s
.Lx00437_0_s:
 .string " "
xchain00264_n00017_α:
bb00299_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain00264_n00023_α
 xchain00264_n00017_β:
 jmp xchain00264_n00023_α
xchain00264_n00062_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00300_α:
 jmp qword ptr [r12 + 1136]
 xchain00264_n00062_β:
 jmp xchain00264_n00023_α
xchain00264_n00063_α:
# IR_VAR
bb00302_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 1880], rax
 jmp xchain00264_n00069_α
 xchain00264_n00063_β:
 jmp xchain00264_n00094_α
xchain00264_n00064_α:
bb00304_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6112]
 mov rsi, qword ptr [r12 + 6120]
 mov rdx, qword ptr [r12 + 3664]
 mov rcx, qword ptr [r12 + 3672]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00264_n00026_α
 mov rdi, qword ptr [r12 + 3664]
 mov rsi, qword ptr [r12 + 3672]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3632], rax
 mov qword ptr [r12 + 3640], rdx
 jmp xchain00264_n00071_α
 xchain00264_n00064_β:
 jmp xchain00264_n00026_α
xchain00264_n00066_α:
# IR_LIT_STRING
bb00305_α:
 mov qword ptr [r12 + 3712], 1
 mov rax, qword ptr [rip + .Lx00438_0]
 mov qword ptr [r12 + 3720], rax
 jmp xchain00264_n00073_α
 xchain00264_n00066_β:
 jmp xchain00264_n00082_α
.Lx00438_0:
 .quad .Lx00438_0_s
.Lx00438_0_s:
 .string "dynamic"
xchain00264_n00067_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00307_α:
 jmp qword ptr [r12 + 3680]
 xchain00264_n00067_β:
 jmp xchain00264_n00026_α
xchain00264_n00068_α:
bb00309_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+400] -> [r12+352]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = producer-box slot [r12+432] -> [r12+368]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 376], rax
# marshal arg2 = producer-box slot [r12+448] -> [r12+384]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lrkfn693: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn693]
 lea rsi, [r12 + 352]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain00264_n00032_β
 jmp xchain00264_n00075_α
 xchain00264_n00068_β:
 jmp xchain00264_n00032_β
xchain00264_n00023_α:
# IR_VAR
bb00311_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 1096], rax
 jmp xchain00264_n00076_α
 xchain00264_n00023_β:
 jmp xchain00264_n00085_α
xchain00264_n00069_α:
# IR_LIT_STRING
bb00313_α:
 mov qword ptr [r12 + 1888], 1
 mov rax, qword ptr [rip + .Lx00439_0]
 mov qword ptr [r12 + 1896], rax
 jmp xchain00264_n00077_α
 xchain00264_n00069_β:
 jmp xchain00264_n00094_α
.Lx00439_0:
 .quad .Lx00439_0_s
.Lx00439_0_s:
 .string "global"
xchain00264_n00071_α:
bb00315_α:
  .section .rodata
  .Lcall00315_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00315_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 cmp eax, 99
 je xchain00264_n99_α
 jmp xchain00264_n00031_α
xchain00264_n00071_β:
 jmp xchain00264_n99_α
xchain00264_n00026_α:
# IR_VAR
bb00317_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 3600], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 3608], rax
 jmp xchain00264_n00080_α
 xchain00264_n00026_β:
 jmp xchain00264_n00440_α
xchain00264_n00073_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00319_α:
 mov rax, qword ptr [r12 + 3712]
 mov qword ptr [r12 + 3664], rax
 mov rax, qword ptr [r12 + 3720]
 mov qword ptr [r12 + 3672], rax
 lea rax, [rip + xchain00264_n00082_α]
 mov qword ptr [r12 + 3680], rax
 jmp xchain00264_n00064_α
 xchain00264_n00073_β:
 jmp xchain00264_n00026_α
xchain00264_n00075_α:
# IR_VAR
bb00441_α:
 mov rax, qword ptr [r12 + 6080]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 6088]
 mov qword ptr [r12 + 488], rax
 jmp xchain00264_n00034_α
 xchain00264_n00075_β:
 jmp xchain00264_n00032_β
xchain00264_n00076_α:
bb00442_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1088] -> [r12+1072]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn705: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn705]
 lea rsi, [r12 + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00264_n00085_α
 jmp xchain00264_n00084_α
 xchain00264_n00076_β:
 jmp xchain00264_n00085_α
xchain00264_n00077_α:
# IR_VAR gva
bb00443_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain00264_n00086_α
 xchain00264_n00077_β:
 jmp xchain00264_n00094_α
xchain00264_n00031_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00322_α:
 mov rax, qword ptr [r12 + 2768]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 2776]
 mov qword ptr [r12 + 2744], rax
 lea rax, [rip + xchain00264_n00079_α]
 mov qword ptr [r12 + 2752], rax
 jmp xchain00264_n00087_α
 xchain00264_n00031_β:
 jmp xchain00264_n00095_α
xchain00264_n00079_α:
 jmp xchain00264_n99_α
xchain00264_n00079_β:
 jmp xchain00264_n99_α
xchain00264_n00080_α:
# IR_LIT_STRING
bb00444_α:
 mov qword ptr [r12 + 3616], 1
 mov rax, qword ptr [rip + .Lx00445_0]
 mov qword ptr [r12 + 3624], rax
 jmp xchain00264_n00089_α
 xchain00264_n00080_β:
 jmp xchain00264_n00440_α
.Lx00445_0:
 .quad .Lx00445_0_s
.Lx00445_0_s:
 .string "end"
xchain00264_n00082_α:
# IR_LIT_STRING
bb00446_α:
 mov qword ptr [r12 + 3696], 1
 mov rax, qword ptr [rip + .Lx00447_0]
 mov qword ptr [r12 + 3704], rax
 jmp xchain00264_n00091_α
 xchain00264_n00082_β:
 jmp xchain00264_n00026_α
.Lx00447_0:
 .quad .Lx00447_0_s
.Lx00447_0_s:
 .string "static"
xchain00264_n00034_α:
# IR_FIELD_GET
bb00448_α:
 mov rdi, qword ptr [rip + .Lx00449_0]
 mov rsi, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00264_n00032_β
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00264_n00092_α
 xchain00264_n00034_β:
 jmp xchain00264_n00032_β
.Lx00449_0:
 .quad .Lx00449_0_s
.Lx00449_0_s:
 .string "begline"
xchain00264_n00084_α:
bb00450_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1056]
 mov rdx, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 6080], rax
 mov qword ptr [r12 + 6088], rdx
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00264_n00085_α
 xchain00264_n00084_β:
 jmp xchain00264_n00085_α
xchain00264_n00085_α:
# IR_VAR
bb00451_α:
 mov rax, qword ptr [r12 + 6080]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 6088]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00264_n00093_α
 xchain00264_n00085_β:
 jmp xchain00264_n00113_α
xchain00264_n00086_α:
bb00452_α:
  .section .rodata
  .Lcall00452_pname: .string "addword"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1872]
 mov rdx, qword ptr [r12 + 1880]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1888]
 mov rdx, qword ptr [r12 + 1896]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 1904]
 mov rdx, qword ptr [r12 + 1912]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00452_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 cmp eax, 99
 je xchain00264_n00094_α
 jmp xchain00264_n00094_α
xchain00264_n00086_β:
 jmp xchain00264_n00094_α
xchain00264_n00087_α:
bb00453_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2736]
 mov rdx, qword ptr [r12 + 2744]
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 mov qword ptr [r12 + 2720], rax
 mov qword ptr [r12 + 2728], rdx
 jmp xchain00264_n00095_α
 xchain00264_n00087_β:
 jmp xchain00264_n00095_α
xchain00264_n00088_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00454_α:
 jmp qword ptr [r12 + 2752]
 xchain00264_n00088_β:
 jmp xchain00264_n00095_α
xchain00264_n00089_α:
bb00455_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6112]
 mov rsi, qword ptr [r12 + 6120]
 mov rdx, qword ptr [r12 + 3616]
 mov rcx, qword ptr [r12 + 3624]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00264_n00440_α
 mov rdi, qword ptr [r12 + 3616]
 mov rsi, qword ptr [r12 + 3624]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3584], rax
 mov qword ptr [r12 + 3592], rdx
 jmp xchain00264_n00096_α
 xchain00264_n00089_β:
 jmp xchain00264_n00440_α
xchain00264_n00091_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00456_α:
 mov rax, qword ptr [r12 + 3696]
 mov qword ptr [r12 + 3664], rax
 mov rax, qword ptr [r12 + 3704]
 mov qword ptr [r12 + 3672], rax
 lea rax, [rip + xchain00264_n00026_α]
 mov qword ptr [r12 + 3680], rax
 jmp xchain00264_n00064_α
 xchain00264_n00091_β:
 jmp xchain00264_n00026_α
xchain00264_n00092_α:
bb00457_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 call str_concat_d@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00264_n00458_α
 xchain00264_n00092_β:
 jmp xchain00264_n00032_β
xchain00264_n00093_α:
# IR_FIELD_GET lv
bb00459_α:
 mov rdi, qword ptr [rip + .Lx00460_0]
 mov rsi, qword ptr [r12 + 992]
 mov rdx, qword ptr [r12 + 1000]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00264_n00113_α
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain00264_n00097_α
 xchain00264_n00093_β:
 jmp xchain00264_n00113_α
.Lx00460_0:
 .quad .Lx00460_0_s
.Lx00460_0_s:
 .string "pname"
xchain00264_n00094_α:
bb00331_α:
  .section .rodata
  .Lcall00331_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00331_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 cmp eax, 99
 je xchain00264_n00099_α
 jmp xchain00264_n00098_α
xchain00264_n00094_β:
 jmp xchain00264_n00099_α
xchain00264_n00095_α:
# IR_VAR gva
bb00461_α:
 mov rax, qword ptr [rbx + 192]
 mov rdx, qword ptr [rbx + 200]
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 jmp xchain00264_n00100_α
 xchain00264_n00095_β:
 jmp xchain00264_n00116_α
xchain00264_n00096_α:
# IR_LIT_STRING
bb00334_α:
 mov qword ptr [r12 + 3072], 1
 mov rax, qword ptr [rip + .Lx00462_0]
 mov qword ptr [r12 + 3080], rax
 jmp xchain00264_n00101_α
 xchain00264_n00096_β:
 jmp xchain00264_n00051_α
.Lx00462_0:
 .quad .Lx00462_0_s
.Lx00462_0_s:
 .string "global"
xchain00264_n00440_α:
# IR_VAR
bb00336_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 3520], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 3528], rax
 jmp xchain00264_n00045_α
 xchain00264_n00440_β:
 jmp xchain00264_n00130_α
xchain00264_n00458_α:
# IR_LIT_STRING
bb00463_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx00464_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00264_n00103_α
 xchain00264_n00458_β:
 jmp xchain00264_n00032_β
.Lx00464_0:
 .quad .Lx00464_0_s
.Lx00464_0_s:
 .string "-"
xchain00264_n00097_α:
# IR_VAR
bb00465_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00264_n00104_α
 xchain00264_n00097_β:
 jmp xchain00264_n00113_α
xchain00264_n00098_α:
bb00466_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1488]
 mov rdx, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 6144], rax
 mov qword ptr [r12 + 6152], rdx
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain00264_n00106_α
 xchain00264_n00098_β:
 jmp xchain00264_n00099_α
xchain00264_n00099_α:
# IR_VAR gva
bb00340_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain00264_n00108_α
 xchain00264_n00099_β:
 jmp xchain00264_n96_α
xchain00264_n00100_α:
# IR_VAR
bb00467_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 2704], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 2712], rax
 jmp xchain00264_n00109_α
 xchain00264_n00100_β:
 jmp xchain00264_n00116_α
xchain00264_n00101_α:
bb00468_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3072]
 mov rdx, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 jmp xchain00264_n00051_α
 xchain00264_n00101_β:
 jmp xchain00264_n00051_α
xchain00264_n00045_α:
# IR_VAR gva
bb00469_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 3568], rax
 mov qword ptr [r12 + 3576], rdx
 jmp xchain00264_n00110_α
 xchain00264_n00045_β:
 jmp xchain00264_n00130_α
xchain00264_n00103_α:
bb00470_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call str_concat_d@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00264_n00111_α
 xchain00264_n00103_β:
 jmp xchain00264_n00032_β
xchain00264_n00104_α:
# IR_ASSIGN_VAR write through variable
bb00344_α:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1024]
 mov rcx, qword ptr [r12 + 1032]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00264_n00113_α
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain00264_n00113_α
 xchain00264_n00104_β:
 jmp xchain00264_n00113_α
xchain00264_n00106_α:
# IR_LIT_STRING
bb00471_α:
 mov qword ptr [r12 + 1504], 1
 mov rax, qword ptr [rip + .Lx00472_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00264_n00114_α
 xchain00264_n00106_β:
 jmp xchain00264_n00099_α
.Lx00472_0:
 .quad .Lx00472_0_s
.Lx00472_0_s:
 .string ","
xchain00264_n00108_α:
# IR_VAR
bb00473_α:
 mov rax, qword ptr [r12 + 6144]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 6152]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00264_n00115_α
 xchain00264_n00108_β:
 jmp xchain00264_n96_α
xchain00264_n00109_α:
bb00474_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2688] -> [r12+2656]
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 2656], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 2664], rax
# marshal arg1 = producer-box slot [r12+2704] -> [r12+2672]
 mov rax, qword ptr [r12 + 2704]
 mov qword ptr [r12 + 2672], rax
 mov rax, qword ptr [r12 + 2712]
 mov qword ptr [r12 + 2680], rax
  .section .rodata
  .Lrkfn745: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn745]
 lea rsi, [r12 + 2656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 cmp eax, 99
 je xchain00264_n00116_α
 jmp xchain00264_n00116_α
 xchain00264_n00109_β:
 jmp xchain00264_n00116_α
xchain00264_n00051_α:
# IR_MAKE_LIST
bb00475_α:
 lea rdi, [r12 + 3056]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 3040], rax
 mov qword ptr [r12 + 3048], rdx
 jmp xchain00264_n00117_α
 xchain00264_n00051_β:
 jmp xchain00264_n00128_α
xchain00264_n00110_α:
# IR_LIST_BANG
bb00476_α:
 mov qword ptr [r12 + 3552], 0
.Lx00477_0:
 mov rdi, qword ptr [r12 + 3568]
 mov rsi, qword ptr [r12 + 3576]
 mov rdx, qword ptr [r12 + 3552]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 3536], rax
 mov qword ptr [r12 + 3544], rdx
 cmp rax, 99
 je xchain00264_n00130_α
 jmp xchain00264_n00058_α
 xchain00264_n00110_β:
 inc qword ptr [r12 + 3552]
 jmp .Lx00477_0
xchain00264_n00111_α:
# IR_VAR
bb00349_α:
 mov rax, qword ptr [r12 + 6080]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 6088]
 mov qword ptr [r12 + 536], rax
 jmp xchain00264_n00120_α
 xchain00264_n00111_β:
 jmp xchain00264_n00032_β
xchain00264_n00113_α:
# IR_VAR
bb00478_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 952], rax
 jmp xchain00264_n00122_α
 xchain00264_n00113_β:
 jmp xchain00264_n96_α
xchain00264_n00114_α:
bb00479_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 1472]
 mov rsi, qword ptr [r12 + 1480]
 mov rdx, qword ptr [r12 + 1504]
 mov rcx, qword ptr [r12 + 1512]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00264_n00099_α
 mov rdi, qword ptr [r12 + 1504]
 mov rsi, qword ptr [r12 + 1512]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain00264_n00124_α
 xchain00264_n00114_β:
 jmp xchain00264_n00099_α
xchain00264_n00115_α:
bb00480_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1424] -> [r12+1392]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1400], rax
# marshal arg1 = producer-box slot [r12+1440] -> [r12+1408]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1416], rax
  .section .rodata
  .Lrkfn756: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn756]
 lea rsi, [r12 + 1392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 cmp eax, 99
 je xchain00264_n96_α
 jmp xchain00264_n00126_α
 xchain00264_n00115_β:
 jmp xchain00264_n96_α
xchain00264_n00116_α:
# IR_VAR
bb00481_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 2592], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 2600], rax
 jmp xchain00264_n00127_α
 xchain00264_n00116_β:
 jmp xchain00264_n00083_α
xchain00264_n00117_α:
# IR_ASSIGN gva
bb00482_α:
 mov rax, qword ptr [r12 + 3040]
 mov rdx, qword ptr [r12 + 3048]
 mov qword ptr [rbx + 192], rax
 mov qword ptr [rbx + 200], rdx
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 jmp xchain00264_n00128_α
 xchain00264_n00117_β:
 jmp xchain00264_n00128_α
xchain00264_n00058_α:
bb00354_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6112]
 mov rsi, qword ptr [r12 + 6120]
 mov rdx, qword ptr [r12 + 3536]
 mov rcx, qword ptr [r12 + 3544]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00264_n00130_α
 mov rdi, qword ptr [r12 + 3536]
 mov rsi, qword ptr [r12 + 3544]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 jmp xchain00264_n96_α
 xchain00264_n00058_β:
 jmp xchain00264_n00130_α
xchain00264_n00120_α:
# IR_FIELD_GET
bb00356_α:
 mov rdi, qword ptr [rip + .Lx00483_0]
 mov rsi, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00264_n00032_β
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00264_n00131_α
 xchain00264_n00120_β:
 jmp xchain00264_n00032_β
.Lx00483_0:
 .quad .Lx00483_0_s
.Lx00483_0_s:
 .string "lastline"
xchain00264_n00122_α:
# IR_VAR
bb00484_α:
 mov rax, qword ptr [r12 + 6080]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 6088]
 mov qword ptr [r12 + 968], rax
 jmp xchain00264_n00132_α
 xchain00264_n00122_β:
 jmp xchain00264_n96_α
xchain00264_n00124_α:
# IR_VAR
bb00485_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 1752], rax
 jmp xchain00264_n00133_α
 xchain00264_n00124_β:
 jmp xchain00264_n00151_α
xchain00264_n00126_α:
 jmp xchain00264_n00065_α
xchain00264_n00126_β:
 jmp xchain00264_n96_α
xchain00264_n00127_α:
# IR_VAR
bb00486_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 2608], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 2616], rax
 jmp xchain00264_n00135_α
 xchain00264_n00127_β:
 jmp xchain00264_n00083_α
xchain00264_n00128_α:
# IR_VAR
bb00487_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 3008], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 3016], rax
 jmp xchain00264_n00136_α
 xchain00264_n00128_β:
 jmp xchain00264_n00143_α
xchain00264_n00129_α:
 jmp xchain00264_n96_α
xchain00264_n00129_β:
 jmp xchain00264_n96_α
xchain00264_n00130_α:
# IR_VAR gva
bb00488_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 3488], rax
 mov qword ptr [r12 + 3496], rdx
 jmp xchain00264_n00489_α
 xchain00264_n00130_β:
 jmp xchain00264_n00078_α
xchain00264_n00131_α:
bb00490_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 call str_concat_d@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00264_n00138_α
 xchain00264_n00131_β:
 jmp xchain00264_n00032_β
xchain00264_n00132_α:
bb00361_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+944] -> [r12+912]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 920], rax
# marshal arg1 = producer-box slot [r12+960] -> [r12+928]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn775: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn775]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain00264_n96_α
 jmp xchain00264_n00070_α
 xchain00264_n00132_β:
 jmp xchain00264_n96_α
xchain00264_n00133_α:
# IR_VAR gva
bb00491_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain00264_n00072_α
 xchain00264_n00133_β:
 jmp xchain00264_n00151_α
xchain00264_n00065_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00492_α:
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1352], rax
 lea rax, [rip + xchain00264_n96_α]
 mov qword ptr [r12 + 1360], rax
 jmp xchain00264_n00139_α
 xchain00264_n00065_β:
 jmp xchain00264_n96_α
xchain00264_n00135_α:
# IR_VAR gva
bb00363_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 jmp xchain00264_n00141_α
 xchain00264_n00135_β:
 jmp xchain00264_n00083_α
xchain00264_n00136_α:
bb00493_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3008] -> [r12+2992]
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 3000], rax
  .section .rodata
  .Lrkfn781: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn781]
 lea rsi, [r12 + 2992]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 cmp eax, 99
 je xchain00264_n00143_α
 jmp xchain00264_n00142_α
 xchain00264_n00136_β:
 jmp xchain00264_n00143_α
xchain00264_n00489_α:
bb00494_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3488]
 mov rdx, qword ptr [r12 + 3496]
 mov qword ptr [r12 + 6160], rax
 mov qword ptr [r12 + 6168], rdx
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], rdx
 jmp xchain00264_n00078_α
 xchain00264_n00489_β:
 jmp xchain00264_n00078_α
xchain00264_n00138_α:
bb00495_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn784: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn784]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00264_n00032_β
 jmp xchain00264_n00032_β
 xchain00264_n00138_β:
 jmp xchain00264_n00032_β
xchain00264_n00070_α:
 jmp xchain00264_n00145_α
xchain00264_n00070_β:
 jmp xchain00264_n96_α
xchain00264_n00072_α:
# IR_LIST_BANG
bb00496_α:
 mov qword ptr [r12 + 1776], 0
.Lx00497_0:
 mov rdi, qword ptr [r12 + 1792]
 mov rsi, qword ptr [r12 + 1800]
 mov rdx, qword ptr [r12 + 1776]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 cmp rax, 99
 je xchain00264_n00151_α
 jmp xchain00264_n00498_α
 xchain00264_n00072_β:
 inc qword ptr [r12 + 1776]
 jmp .Lx00497_0
xchain00264_n00139_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00499_α:
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 872], rax
 lea rax, [rip + xchain00264_n00074_α]
 mov qword ptr [r12 + 880], rax
 jmp xchain00264_n00081_α
 xchain00264_n00139_β:
 jmp xchain00264_n96_α
xchain00264_n00074_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00500_α:
 jmp qword ptr [r12 + 1360]
 xchain00264_n00074_β:
 jmp xchain00264_n96_α
xchain00264_n00141_α:
bb00501_α:
  .section .rodata
  .Lcall00501_pname: .string "addword"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2592]
 mov rdx, qword ptr [r12 + 2600]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 2608]
 mov rdx, qword ptr [r12 + 2616]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 2624]
 mov rdx, qword ptr [r12 + 2632]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00501_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 cmp eax, 99
 je xchain00264_n00083_α
 jmp xchain00264_n00083_α
xchain00264_n00141_β:
 jmp xchain00264_n00083_α
xchain00264_n00142_α:
bb00369_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2976]
 mov rdx, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 6080], rax
 mov qword ptr [r12 + 6088], rdx
 mov qword ptr [r12 + 2960], rax
 mov qword ptr [r12 + 2968], rdx
 jmp xchain00264_n00143_α
 xchain00264_n00142_β:
 jmp xchain00264_n00143_α
xchain00264_n00143_α:
# IR_VAR
bb00502_α:
 mov rax, qword ptr [r12 + 6080]
 mov qword ptr [r12 + 2912], rax
 mov rax, qword ptr [r12 + 6088]
 mov qword ptr [r12 + 2920], rax
 jmp xchain00264_n00146_α
 xchain00264_n00143_β:
 jmp xchain00264_n00171_α
xchain00264_n00078_α:
bb00503_α:
  .section .rodata
  .Lcall00503_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00503_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3440], rax
 mov qword ptr [r12 + 3448], rdx
 cmp eax, 99
 je xchain00264_n00149_α
 jmp xchain00264_n00147_α
xchain00264_n00078_β:
 jmp xchain00264_n00149_α
xchain00264_n00145_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00504_α:
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 872], rax
 lea rax, [rip + xchain00264_n96_α]
 mov qword ptr [r12 + 880], rax
 jmp xchain00264_n00081_α
 xchain00264_n00145_β:
 jmp xchain00264_n96_α
xchain00264_n00498_α:
bb00505_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6112]
 mov rsi, qword ptr [r12 + 6120]
 mov rdx, qword ptr [r12 + 1760]
 mov rcx, qword ptr [r12 + 1768]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00264_n00151_α
 mov rdi, qword ptr [r12 + 1760]
 mov rsi, qword ptr [r12 + 1768]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain00264_n00099_α
 xchain00264_n00498_β:
 jmp xchain00264_n00151_α
xchain00264_n00081_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00506_α:
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 776], rax
 lea rax, [rip + xchain00264_n00507_α]
 mov qword ptr [r12 + 784], rax
 jmp xchain00264_n96_α
 xchain00264_n00081_β:
 jmp xchain00264_n96_α
xchain00264_n00507_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00508_α:
 jmp qword ptr [r12 + 880]
 xchain00264_n00507_β:
 jmp xchain00264_n96_α
xchain00264_n00083_α:
bb00509_α:
  .section .rodata
  .Lcall00509_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00509_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 cmp eax, 99
 je xchain00264_n00090_α
 jmp xchain00264_n00154_α
xchain00264_n00083_β:
 jmp xchain00264_n00090_α
xchain00264_n00146_α:
# IR_FIELD_GET lv
bb00510_α:
 mov rdi, qword ptr [rip + .Lx00511_0]
 mov rsi, qword ptr [r12 + 2912]
 mov rdx, qword ptr [r12 + 2920]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00264_n00171_α
 mov qword ptr [r12 + 2896], rax
 mov qword ptr [r12 + 2904], rdx
 jmp xchain00264_n00155_α
 xchain00264_n00146_β:
 jmp xchain00264_n00171_α
.Lx00511_0:
 .quad .Lx00511_0_s
.Lx00511_0_s:
 .string "lastline"
xchain00264_n00147_α:
bb00377_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3440]
 mov rdx, qword ptr [r12 + 3448]
 mov qword ptr [r12 + 6144], rax
 mov qword ptr [r12 + 6152], rdx
 mov qword ptr [r12 + 3424], rax
 mov qword ptr [r12 + 3432], rdx
 jmp xchain00264_n00156_α
 xchain00264_n00147_β:
 jmp xchain00264_n00149_α
xchain00264_n00149_α:
# IR_VAR gva
bb00512_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 3376], rax
 mov qword ptr [r12 + 3384], rdx
 jmp xchain00264_n00157_α
 xchain00264_n00149_β:
 jmp xchain00264_n00175_α
xchain00264_n00150_α:
 jmp xchain00264_n00099_α
xchain00264_n00150_β:
 jmp xchain00264_n00099_α
xchain00264_n00151_α:
bb00513_α:
  .section .rodata
  .Lcall00513_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00513_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 cmp eax, 99
 je xchain00264_n00099_α
 jmp xchain00264_n00158_α
xchain00264_n00151_β:
 jmp xchain00264_n00099_α
xchain00264_n00153_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00514_α:
 jmp qword ptr [r12 + 784]
 xchain00264_n00153_β:
 jmp xchain00264_n96_α
xchain00264_n00154_α:
bb00515_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2128]
 mov rdx, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 6144], rax
 mov qword ptr [r12 + 6152], rdx
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 jmp xchain00264_n00160_α
 xchain00264_n00154_β:
 jmp xchain00264_n00090_α
xchain00264_n00090_α:
# IR_VAR gva
bb00516_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain00264_n00162_α
 xchain00264_n00090_β:
 jmp xchain00264_n96_α
xchain00264_n00155_α:
# IR_VAR gva
bb00384_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2944], rax
 mov qword ptr [r12 + 2952], rdx
 jmp xchain00264_n00163_α
 xchain00264_n00155_β:
 jmp xchain00264_n00171_α
xchain00264_n00156_α:
# IR_LIT_STRING
bb00517_α:
 mov qword ptr [r12 + 3456], 1
 mov rax, qword ptr [rip + .Lx00518_0]
 mov qword ptr [r12 + 3464], rax
 jmp xchain00264_n00164_α
 xchain00264_n00156_β:
 jmp xchain00264_n00149_α
.Lx00518_0:
 .quad .Lx00518_0_s
.Lx00518_0_s:
 .string "("
xchain00264_n00157_α:
# IR_VAR
bb00519_α:
 mov rax, qword ptr [r12 + 6144]
 mov qword ptr [r12 + 3392], rax
 mov rax, qword ptr [r12 + 6152]
 mov qword ptr [r12 + 3400], rax
 jmp xchain00264_n00165_α
 xchain00264_n00157_β:
 jmp xchain00264_n00175_α
xchain00264_n00158_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00520_α:
 mov rax, qword ptr [r12 + 1680]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1688]
 mov qword ptr [r12 + 1656], rax
 lea rax, [rip + xchain00264_n00159_α]
 mov qword ptr [r12 + 1664], rax
 jmp xchain00264_n00166_α
 xchain00264_n00158_β:
 jmp xchain00264_n00102_α
xchain00264_n00159_α:
 jmp xchain00264_n00099_α
xchain00264_n00159_β:
 jmp xchain00264_n00099_α
xchain00264_n00160_α:
# IR_LIT_STRING
bb00390_α:
 mov qword ptr [r12 + 2144], 1
 mov rax, qword ptr [rip + .Lx00521_0]
 mov qword ptr [r12 + 2152], rax
 jmp xchain00264_n00169_α
 xchain00264_n00160_β:
 jmp xchain00264_n00090_α
.Lx00521_0:
 .quad .Lx00521_0_s
.Lx00521_0_s:
 .string ","
xchain00264_n00162_α:
# IR_VAR
bb00522_α:
 mov rax, qword ptr [r12 + 6144]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 6152]
 mov qword ptr [r12 + 2088], rax
 jmp xchain00264_n00170_α
 xchain00264_n00162_β:
 jmp xchain00264_n96_α
xchain00264_n00163_α:
# IR_ASSIGN_VAR write through variable
bb00523_α:
 mov rdi, qword ptr [r12 + 2896]
 mov rsi, qword ptr [r12 + 2904]
 mov rdx, qword ptr [r12 + 2944]
 mov rcx, qword ptr [r12 + 2952]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00264_n00171_α
 mov qword ptr [r12 + 2928], rax
 mov qword ptr [r12 + 2936], rdx
 jmp xchain00264_n00171_α
 xchain00264_n00163_β:
 jmp xchain00264_n00171_α
xchain00264_n00164_α:
bb00524_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 3424]
 mov rsi, qword ptr [r12 + 3432]
 mov rdx, qword ptr [r12 + 3456]
 mov rcx, qword ptr [r12 + 3464]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00264_n00149_α
 mov rdi, qword ptr [r12 + 3456]
 mov rsi, qword ptr [r12 + 3464]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3408], rax
 mov qword ptr [r12 + 3416], rdx
 jmp xchain00264_n00172_α
 xchain00264_n00164_β:
 jmp xchain00264_n00149_α
xchain00264_n00165_α:
bb00525_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3376] -> [r12+3344]
 mov rax, qword ptr [r12 + 3376]
 mov qword ptr [r12 + 3344], rax
 mov rax, qword ptr [r12 + 3384]
 mov qword ptr [r12 + 3352], rax
# marshal arg1 = producer-box slot [r12+3392] -> [r12+3360]
 mov rax, qword ptr [r12 + 3392]
 mov qword ptr [r12 + 3360], rax
 mov rax, qword ptr [r12 + 3400]
 mov qword ptr [r12 + 3368], rax
  .section .rodata
  .Lrkfn827: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn827]
 lea rsi, [r12 + 3344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3328], rax
 mov qword ptr [r12 + 3336], rdx
 cmp eax, 99
 je xchain00264_n00175_α
 jmp xchain00264_n00173_α
 xchain00264_n00165_β:
 jmp xchain00264_n00175_α
xchain00264_n00166_α:
bb00526_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1648]
 mov rdx, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain00264_n00102_α
 xchain00264_n00166_β:
 jmp xchain00264_n00102_α
xchain00264_n00168_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00527_α:
 jmp qword ptr [r12 + 1664]
 xchain00264_n00168_β:
 jmp xchain00264_n00102_α
xchain00264_n00169_α:
bb00528_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 2112]
 mov rsi, qword ptr [r12 + 2120]
 mov rdx, qword ptr [r12 + 2144]
 mov rcx, qword ptr [r12 + 2152]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00264_n00090_α
 mov rdi, qword ptr [r12 + 2144]
 mov rsi, qword ptr [r12 + 2152]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain00264_n00177_α
 xchain00264_n00169_β:
 jmp xchain00264_n00090_α
xchain00264_n00170_α:
bb00529_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2064] -> [r12+2032]
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 2040], rax
# marshal arg1 = producer-box slot [r12+2080] -> [r12+2048]
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2056], rax
  .section .rodata
  .Lrkfn833: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn833]
 lea rsi, [r12 + 2032]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je xchain00264_n96_α
 jmp xchain00264_n00178_α
 xchain00264_n00170_β:
 jmp xchain00264_n96_α
xchain00264_n00171_α:
# IR_VAR
bb00397_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 2864], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 2872], rax
 jmp xchain00264_n00179_α
 xchain00264_n00171_β:
 jmp xchain00264_n96_α
xchain00264_n00172_α:
# IR_VAR
bb00530_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 3296], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 3304], rax
 jmp xchain00264_n00180_α
 xchain00264_n00172_β:
 jmp xchain00264_n00175_α
xchain00264_n00173_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00399_α:
 mov rax, qword ptr [r12 + 3328]
 mov qword ptr [r12 + 3232], rax
 mov rax, qword ptr [r12 + 3336]
 mov qword ptr [r12 + 3240], rax
 lea rax, [rip + xchain00264_n00175_α]
 mov qword ptr [r12 + 3248], rax
 jmp xchain00264_n00175_α
 xchain00264_n00173_β:
 jmp xchain00264_n00175_α
xchain00264_n00175_α:
# IR_VAR
bb00400_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 3184], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 3192], rax
 jmp xchain00264_n00107_α
 xchain00264_n00175_β:
 jmp xchain00264_n96_α
xchain00264_n00102_α:
# IR_VAR
bb00531_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 1592], rax
 jmp xchain00264_n00181_α
 xchain00264_n00102_β:
 jmp xchain00264_n00094_α
xchain00264_n00177_α:
# IR_VAR
bb00532_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 2464], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 2472], rax
 jmp xchain00264_n00183_α
 xchain00264_n00177_β:
 jmp xchain00264_n00200_α
xchain00264_n00178_α:
 jmp xchain00264_n00184_α
xchain00264_n00178_β:
 jmp xchain00264_n96_α
xchain00264_n00179_α:
# IR_VAR
bb00533_α:
 mov rax, qword ptr [r12 + 6080]
 mov qword ptr [r12 + 2880], rax
 mov rax, qword ptr [r12 + 6088]
 mov qword ptr [r12 + 2888], rax
 jmp xchain00264_n00186_α
 xchain00264_n00179_β:
 jmp xchain00264_n96_α
xchain00264_n00180_α:
# IR_LIT_STRING
bb00534_α:
 mov qword ptr [r12 + 3312], 1
 mov rax, qword ptr [rip + .Lx00535_0]
 mov qword ptr [r12 + 3320], rax
 jmp xchain00264_n00112_α
 xchain00264_n00180_β:
 jmp xchain00264_n00175_α
.Lx00535_0:
 .quad .Lx00535_0_s
.Lx00535_0_s:
 .string " *"
xchain00264_n00105_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00536_α:
 jmp qword ptr [r12 + 3248]
 xchain00264_n00105_β:
 jmp xchain00264_n00175_α
xchain00264_n00107_α:
# IR_VAR
bb00537_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3200], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3208], rax
 jmp xchain00264_n00187_α
 xchain00264_n00107_β:
 jmp xchain00264_n96_α
xchain00264_n00181_α:
# IR_LIT_STRING
bb00538_α:
 mov qword ptr [r12 + 1600], 1
 mov rax, qword ptr [rip + .Lx00539_0]
 mov qword ptr [r12 + 1608], rax
 jmp xchain00264_n00188_α
 xchain00264_n00181_β:
 jmp xchain00264_n00094_α
.Lx00539_0:
 .quad .Lx00539_0_s
.Lx00539_0_s:
 .string "global"
xchain00264_n00183_α:
# IR_VAR gva
bb00540_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 jmp xchain00264_n00189_α
 xchain00264_n00183_β:
 jmp xchain00264_n00200_α
xchain00264_n00184_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00541_α:
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 1992], rax
 lea rax, [rip + xchain00264_n96_α]
 mov qword ptr [r12 + 2000], rax
 jmp xchain00264_n00190_α
 xchain00264_n00184_β:
 jmp xchain00264_n96_α
xchain00264_n00186_α:
bb00542_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2864] -> [r12+2832]
 mov rax, qword ptr [r12 + 2864]
 mov qword ptr [r12 + 2832], rax
 mov rax, qword ptr [r12 + 2872]
 mov qword ptr [r12 + 2840], rax
# marshal arg1 = producer-box slot [r12+2880] -> [r12+2848]
 mov rax, qword ptr [r12 + 2880]
 mov qword ptr [r12 + 2848], rax
 mov rax, qword ptr [r12 + 2888]
 mov qword ptr [r12 + 2856], rax
  .section .rodata
  .Lrkfn859: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn859]
 lea rsi, [r12 + 2832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 cmp eax, 99
 je xchain00264_n96_α
 jmp xchain00264_n00191_α
 xchain00264_n00186_β:
 jmp xchain00264_n96_α
xchain00264_n00112_α:
bb00543_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 6112]
 mov rsi, qword ptr [r12 + 6120]
 mov rdx, qword ptr [r12 + 3312]
 mov rcx, qword ptr [r12 + 3320]
 call str_concat_d@PLT
 mov qword ptr [r12 + 3280], rax
 mov qword ptr [r12 + 3288], rdx
 jmp xchain00264_n00119_α
 xchain00264_n00112_β:
 jmp xchain00264_n00175_α
xchain00264_n00187_α:
# IR_VAR
bb00407_α:
 mov rax, qword ptr [r12 + 6160]
 mov qword ptr [r12 + 3216], rax
 mov rax, qword ptr [r12 + 6168]
 mov qword ptr [r12 + 3224], rax
 jmp xchain00264_n00121_α
 xchain00264_n00187_β:
 jmp xchain00264_n96_α
xchain00264_n00188_α:
# IR_VAR gva
bb00544_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xchain00264_n00123_α
 xchain00264_n00188_β:
 jmp xchain00264_n00094_α
xchain00264_n00189_α:
# IR_LIST_BANG
bb00410_α:
 mov qword ptr [r12 + 2496], 0
.Lx00545_0:
 mov rdi, qword ptr [r12 + 2512]
 mov rsi, qword ptr [r12 + 2520]
 mov rdx, qword ptr [r12 + 2496]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 cmp rax, 99
 je xchain00264_n00200_α
 jmp xchain00264_n00125_α
 xchain00264_n00189_β:
 inc qword ptr [r12 + 2496]
 jmp .Lx00545_0
xchain00264_n00190_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00546_α:
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1352], rax
 lea rax, [rip + xchain00264_n00547_α]
 mov qword ptr [r12 + 1360], rax
 jmp xchain00264_n00139_α
 xchain00264_n00190_β:
 jmp xchain00264_n96_α
xchain00264_n00547_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00548_α:
 jmp qword ptr [r12 + 2000]
 xchain00264_n00547_β:
 jmp xchain00264_n96_α
xchain00264_n00191_α:
 jmp xchain00264_n00195_α
xchain00264_n00191_β:
 jmp xchain00264_n96_α
xchain00264_n00119_α:
bb00549_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3280]
 mov rdx, qword ptr [r12 + 3288]
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 mov qword ptr [r12 + 3264], rax
 mov qword ptr [r12 + 3272], rdx
 jmp xchain00264_n00196_α
 xchain00264_n00119_β:
 jmp xchain00264_n00175_α
xchain00264_n00121_α:
bb00550_α:
  .section .rodata
  .Lcall00550_pname: .string "addword"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3184]
 mov rdx, qword ptr [r12 + 3192]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 3200]
 mov rdx, qword ptr [r12 + 3208]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 3216]
 mov rdx, qword ptr [r12 + 3224]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00550_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 cmp eax, 99
 je xchain00264_n96_α
 jmp xchain00264_n00197_α
xchain00264_n00121_β:
 jmp xchain00264_n96_α
xchain00264_n00123_α:
bb00551_α:
  .section .rodata
  .Lcall00551_pname: .string "addword"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1584]
 mov rdx, qword ptr [r12 + 1592]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1600]
 mov rdx, qword ptr [r12 + 1608]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 1616]
 mov rdx, qword ptr [r12 + 1624]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00551_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 cmp eax, 99
 je xchain00264_n00094_α
 jmp xchain00264_n00198_α
xchain00264_n00123_β:
 jmp xchain00264_n00094_α
xchain00264_n00125_α:
bb00552_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6112]
 mov rsi, qword ptr [r12 + 6120]
 mov rdx, qword ptr [r12 + 2480]
 mov rcx, qword ptr [r12 + 2488]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00264_n00200_α
 mov rdi, qword ptr [r12 + 2480]
 mov rsi, qword ptr [r12 + 2488]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 jmp xchain00264_n00090_α
 xchain00264_n00125_β:
 jmp xchain00264_n00200_α
xchain00264_n00195_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00553_α:
 mov rax, qword ptr [r12 + 2816]
 mov qword ptr [r12 + 2784], rax
 mov rax, qword ptr [r12 + 2824]
 mov qword ptr [r12 + 2792], rax
 lea rax, [rip + xchain00264_n96_α]
 mov qword ptr [r12 + 2800], rax
 jmp xchain00264_n00202_α
 xchain00264_n00195_β:
 jmp xchain00264_n96_α
xchain00264_n00196_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00554_α:
 mov rax, qword ptr [r12 + 3264]
 mov qword ptr [r12 + 3232], rax
 mov rax, qword ptr [r12 + 3272]
 mov qword ptr [r12 + 3240], rax
 lea rax, [rip + xchain00264_n00175_α]
 mov qword ptr [r12 + 3248], rax
 jmp xchain00264_n00175_α
 xchain00264_n00196_β:
 jmp xchain00264_n00175_α
xchain00264_n00197_α:
 jmp xchain00264_n00205_α
xchain00264_n00197_β:
 jmp xchain00264_n96_α
xchain00264_n00198_α:
 jmp xchain00264_n00094_α
xchain00264_n00198_β:
 jmp xchain00264_n00094_α
xchain00264_n00199_α:
 jmp xchain00264_n00090_α
xchain00264_n00199_β:
 jmp xchain00264_n00090_α
xchain00264_n00200_α:
bb00421_α:
  .section .rodata
  .Lcall00421_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00421_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je xchain00264_n00090_α
 jmp xchain00264_n00206_α
xchain00264_n00200_β:
 jmp xchain00264_n00090_α
xchain00264_n00202_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00555_α:
 mov rax, qword ptr [r12 + 2784]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 2792]
 mov qword ptr [r12 + 1992], rax
 lea rax, [rip + xchain00264_n00204_α]
 mov qword ptr [r12 + 2000], rax
 jmp xchain00264_n00190_α
 xchain00264_n00202_β:
 jmp xchain00264_n96_α
xchain00264_n00204_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00556_α:
 jmp qword ptr [r12 + 2800]
 xchain00264_n00204_β:
 jmp xchain00264_n96_α
xchain00264_n00205_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00557_α:
 mov rax, qword ptr [r12 + 3120]
 mov qword ptr [r12 + 3088], rax
 mov rax, qword ptr [r12 + 3128]
 mov qword ptr [r12 + 3096], rax
 lea rax, [rip + xchain00264_n96_α]
 mov qword ptr [r12 + 3104], rax
 jmp xchain00264_n00207_α
 xchain00264_n00205_β:
 jmp xchain00264_n96_α
xchain00264_n00206_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00558_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 2368], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 2376], rax
 lea rax, [rip + xchain00264_n00134_α]
 mov qword ptr [r12 + 2384], rax
 jmp xchain00264_n00209_α
 xchain00264_n00206_β:
 jmp xchain00264_n00211_α
xchain00264_n00134_α:
 jmp xchain00264_n00090_α
xchain00264_n00134_β:
 jmp xchain00264_n00090_α
xchain00264_n00207_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00559_α:
 mov rax, qword ptr [r12 + 3088]
 mov qword ptr [r12 + 2784], rax
 mov rax, qword ptr [r12 + 3096]
 mov qword ptr [r12 + 2792], rax
 lea rax, [rip + xchain00264_n00208_α]
 mov qword ptr [r12 + 2800], rax
 jmp xchain00264_n00202_α
 xchain00264_n00207_β:
 jmp xchain00264_n96_α
xchain00264_n00208_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00426_α:
 jmp qword ptr [r12 + 3104]
 xchain00264_n00208_β:
 jmp xchain00264_n96_α
xchain00264_n00209_α:
bb00560_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2368]
 mov rdx, qword ptr [r12 + 2376]
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 jmp xchain00264_n00211_α
 xchain00264_n00209_β:
 jmp xchain00264_n00211_α
xchain00264_n00137_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00429_α:
 jmp qword ptr [r12 + 2384]
 xchain00264_n00137_β:
 jmp xchain00264_n00211_α
xchain00264_n00211_α:
# IR_VAR gva
bb00561_α:
 mov rax, qword ptr [rbx + 192]
 mov rdx, qword ptr [rbx + 200]
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 jmp xchain00264_n00212_α
 xchain00264_n00211_β:
 jmp xchain00264_n00214_α
xchain00264_n00212_α:
# IR_VAR
bb00562_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 2344], rax
 jmp xchain00264_n00213_α
 xchain00264_n00212_β:
 jmp xchain00264_n00214_α
xchain00264_n00213_α:
bb00563_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2320] -> [r12+2288]
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 2288], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 2296], rax
# marshal arg1 = producer-box slot [r12+2336] -> [r12+2304]
 mov rax, qword ptr [r12 + 2336]
 mov qword ptr [r12 + 2304], rax
 mov rax, qword ptr [r12 + 2344]
 mov qword ptr [r12 + 2312], rax
  .section .rodata
  .Lrkfn903: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn903]
 lea rsi, [r12 + 2288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 cmp eax, 99
 je xchain00264_n00214_α
 jmp xchain00264_n00214_α
 xchain00264_n00213_β:
 jmp xchain00264_n00214_α
xchain00264_n00214_α:
# IR_VAR
bb00564_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 2232], rax
 jmp xchain00264_n00216_α
 xchain00264_n00214_β:
 jmp xchain00264_n00083_α
xchain00264_n00216_α:
# IR_VAR
bb00565_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 2240], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 2248], rax
 jmp xchain00264_n00218_α
 xchain00264_n00216_β:
 jmp xchain00264_n00083_α
xchain00264_n00218_α:
# IR_VAR gva
bb00566_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 jmp xchain00264_n00140_α
 xchain00264_n00218_β:
 jmp xchain00264_n00083_α
xchain00264_n00140_α:
bb00567_α:
  .section .rodata
  .Lcall00567_pname: .string "addword"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2224]
 mov rdx, qword ptr [r12 + 2232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 2240]
 mov rdx, qword ptr [r12 + 2248]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 2256]
 mov rdx, qword ptr [r12 + 2264]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00567_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 cmp eax, 99
 je xchain00264_n00083_α
 jmp xchain00264_n00220_α
xchain00264_n00140_β:
 jmp xchain00264_n00083_α
xchain00264_n00220_α:
 jmp xchain00264_n00083_α
xchain00264_n00220_β:
 jmp xchain00264_n00083_α
xchain00264_n00222_α:
# IR_VAR
bb00568_α:
 mov rax, qword ptr [r12 + 6064]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 6072]
 mov qword ptr [r12 + 152], rax
 jmp xchain00264_n00223_α
 xchain00264_n00222_β:
 jmp xchain00264_n00144_α
xchain00264_n00223_α:
bb00569_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+128]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn914: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn914]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00264_n00144_α
 jmp xchain00264_n00225_α
 xchain00264_n00223_β:
 jmp xchain00264_n00144_α
xchain00264_n00225_α:
# IR_LIST_BANG
bb00570_α:
 mov qword ptr [r12 + 96], 0
.Lx00571_0:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 96]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp rax, 99
 je xchain00264_n00144_α
 jmp xchain00264_n00227_α
 xchain00264_n00225_β:
 inc qword ptr [r12 + 96]
 jmp .Lx00571_0
xchain00264_n00144_α:
bb00433_α:
# BOX IR_CALL Term__(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn918: .string "Term__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn918]
 lea rsi, [r12 + 48]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain00264_n00144_β:
 jmp main_ω
xchain00264_n00227_α:
bb00572_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+64]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 72], rax
  .section .rodata
  .Lrkfn920: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn920]
 lea rsi, [r12 + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain00264_n00144_α
 jmp xchain00264_n00225_β
 xchain00264_n00227_β:
 jmp xchain00264_n00144_α
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
