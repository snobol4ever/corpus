  .intel_syntax noprefix
  .text
  .globl proc_tabulate_α
proc_tabulate_α:
#=======================================================================================================================
    .global proc_tabulate_α
    .global proc_tabulate_β
    .global proc_tabulate_γ
    .global proc_tabulate_ω
push r12
  mov r12, rdi
proc_tabulate_α_body:
xchain0_n0_α:
# IR_VAR gva
bb1_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n3_α
xchain0_n1_α:
bb2_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1264] -> [r12+1248]
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1256], rax
  .section .rodata
  .Lrkfn3: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn3]
 lea rsi, [r12 + 1248]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n3_α
xchain0_n2_α:
# IR_ASSIGN gva
bb3_α:
 mov rax, qword ptr [r12 + 1232]
 mov rdx, qword ptr [r12 + 1240]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n3_α
xchain0_n3_α:
# IR_LIT_STRING
bb4_α:
 mov qword ptr [r12 + 1200], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 1208], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string ""
xchain0_n4_α:
bb5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1200]
 mov rdx, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n5_α
xchain0_n5_α:
# IR_VAR_REF gva
bb6_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp proc_tabulate_ω
xchain0_n6_α:
# IR_VAR
bb7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1144], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp proc_tabulate_ω
xchain0_n7_α:
# IR_SUBSCRIPT x[i] variable
bb8_α:
 mov rdi, qword ptr [r12 + 1120]
 mov rsi, qword ptr [r12 + 1128]
 mov rdx, qword ptr [r12 + 1136]
 mov rcx, qword ptr [r12 + 1144]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_tabulate_ω
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp proc_tabulate_ω
xchain0_n8_α:
# IR_DEREF variable -> value
bb9_α:
 mov rdi, qword ptr [r12 + 1152]
 mov rsi, qword ptr [r12 + 1160]
 call rt_deref@PLT
 cmp eax, 99
 je proc_tabulate_ω
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp proc_tabulate_ω
xchain0_n9_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp proc_tabulate_ω
xchain0_n10_α:
# IR_VAR
bb11_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 888], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n15_α
xchain0_n11_α:
# IR_LIT_CHARSET
bb12_α:
 mov qword ptr [r12 + 960], 1
 mov dword ptr [r12 + 964], -1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n15_α
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "0123456789"
xchain0_n12_α:
# IR_SCAN_UPTO
bb13_α:
 mov qword ptr [r12 + 944], r14
.Lx19_0:
 mov rax, qword ptr [r12 + 944]
 cmp rax, r15
 jge xchain0_n15_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx19_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx19_1
 mov qword ptr [r12 + 928], 6
 add rax, 1
 mov qword ptr [r12 + 936], rax
 jmp xchain0_n13_α
.Lx19_1:
 inc qword ptr [r12 + 944]
 jmp .Lx19_0
 xchain0_n12_β:
 inc qword ptr [r12 + 944]
 jmp .Lx19_0
.Lx19_2:
 .quad .Lx19_2_s
.Lx19_2_s:
 .string "0123456789"
xchain0_n13_α:
# IR_SCAN_TAB
bb14_α:
 mov rax, qword ptr [r12 + 936]
 cmp rax, 1
 jge .Lx21_0
 add rax, r15
 add rax, 1
.Lx21_0:
 cmp rax, 1
 jl xchain0_n15_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n15_α
 mov qword ptr [r12 + 912], r14
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
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain0_n14_α
 xchain0_n13_β:
 mov r14, qword ptr [r12 + 912]
 jmp xchain0_n15_α
xchain0_n14_α:
bb15_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1280]
 mov rsi, qword ptr [r12 + 1288]
 mov rdx, qword ptr [r12 + 896]
 mov rcx, qword ptr [r12 + 904]
 call str_concat_d@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp xchain0_n15_α
xchain0_n15_α:
# IR_VAR
bb16_α:
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 840], rax
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n20_α
xchain0_n16_α:
bb17_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 864]
 mov rdx, qword ptr [r12 + 872]
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n15_α
xchain0_n17_α:
# IR_UNOP
bb18_α:
 mov eax, dword ptr [r12 + 1312]
 cmp eax, 99
 je xchain0_n20_α
 cmp eax, 0
 jne xchain0_n20_α
 mov qword ptr [r12 + 816], 0
 mov qword ptr [r12 + 824], 0
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n20_α
xchain0_n18_α:
# IR_LIT_CHARSET
bb19_α:
 mov qword ptr [r12 + 1104], 1
 mov dword ptr [r12 + 1108], -1
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain0_n21_α
 xchain0_n18_β:
 jmp xchain0_n29_α
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
 .string "0123456789"
xchain0_n19_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb20_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 744], rax
 lea rax, [rip + xchain0_n20_α]
 mov qword ptr [r12 + 752], rax
 jmp xchain0_n22_α
 xchain0_n19_β:
 jmp xchain0_n32_α
xchain0_n20_α:
# IR_VAR
bb21_α:
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 792], rax
 jmp xchain0_n24_α
 xchain0_n20_β:
 jmp xchain0_n32_α
xchain0_n21_α:
# IR_SCAN_MANY
bb22_α:
 mov eax, r14d
.Lx33_0:
 cmp eax, r15d
 jge .Lx33_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx33_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx33_1
 add eax, 1
 jmp .Lx33_0
.Lx33_1:
 cmp eax, r14d
 je xchain0_n29_α
 mov qword ptr [r12 + 1088], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 1096], rcx
 jmp xchain0_n25_α
 xchain0_n21_β:
 jmp xchain0_n29_α
.Lx33_2:
 .quad .Lx33_2_s
.Lx33_2_s:
 .string "0123456789"
xchain0_n22_α:
# IR_VAR_REF gva
bb23_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain0_n26_α
 xchain0_n22_β:
 jmp xchain0_n35_α
xchain0_n23_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb24_α:
 jmp qword ptr [r12 + 752]
 xchain0_n23_β:
 jmp xchain0_n32_α
xchain0_n24_α:
# IR_VAR gva
bb25_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain0_n27_α
 xchain0_n24_β:
 jmp xchain0_n32_α
xchain0_n25_α:
# IR_SCAN_TAB
bb26_α:
 mov rax, qword ptr [r12 + 1096]
 cmp rax, 1
 jge .Lx40_0
 add rax, r15
 add rax, 1
.Lx40_0:
 cmp rax, 1
 jl xchain0_n29_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n29_α
 mov qword ptr [r12 + 1072], r14
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
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain0_n28_α
 xchain0_n25_β:
 mov r14, qword ptr [r12 + 1072]
 jmp xchain0_n29_α
xchain0_n26_α:
# IR_VAR
bb27_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 168], rax
 jmp xchain0_n30_α
 xchain0_n26_β:
 jmp xchain0_n35_α
xchain0_n27_α:
bb28_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 1312]
 mov rsi, qword ptr [r12 + 1320]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n32_α
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain0_n31_α
 xchain0_n27_β:
 jmp xchain0_n32_α
xchain0_n28_α:
bb29_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1056]
 mov rdx, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp xchain0_n29_α
xchain0_n29_α:
# IR_VAR
bb30_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1016], rax
 jmp xchain0_n33_α
 xchain0_n29_β:
 jmp xchain0_n10_α
xchain0_n30_α:
# IR_SUBSCRIPT x[i] variable
bb31_α:
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n35_α
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain0_n34_α
 xchain0_n30_β:
 jmp xchain0_n35_α
xchain0_n31_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb32_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 744], rax
 lea rax, [rip + xchain0_n32_α]
 mov qword ptr [r12 + 752], rax
 jmp xchain0_n22_α
 xchain0_n31_β:
 jmp xchain0_n32_α
xchain0_n32_α:
# IR_LIT_STRING
bb33_α:
 mov qword ptr [r12 + 720], 1
 mov rax, qword ptr [rip + .Lx50_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain0_n36_α
 xchain0_n32_β:
 jmp xchain0_n40_α
.Lx50_0:
 .quad .Lx50_0_s
.Lx50_0_s:
 .string "("
xchain0_n33_α:
# IR_VAR
bb34_α:
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1032], rax
 jmp xchain0_n37_α
 xchain0_n33_β:
 jmp xchain0_n10_α
xchain0_n34_α:
# IR_DEREF variable -> value
bb35_α:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n35_α
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n38_α
 xchain0_n34_β:
 jmp xchain0_n35_α
xchain0_n35_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp proc_tabulate_ω
 xchain0_n35_β:
 jmp proc_tabulate_ω
xchain0_n36_α:
# IR_SCAN_MATCH
bb37_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain0_n40_α
 mov rdi, qword ptr [rip + .Lx57_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain0_n40_α
 mov qword ptr [r12 + 688], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 696], rax
 jmp xchain0_n39_α
 xchain0_n36_β:
 jmp xchain0_n40_α
.Lx57_0:
 .quad .Lx57_0_s
.Lx57_0_s:
 .string "("
xchain0_n37_α:
bb38_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1280]
 mov rsi, qword ptr [r12 + 1288]
 mov rdx, qword ptr [r12 + 1312]
 mov rcx, qword ptr [r12 + 1320]
 call str_concat_d@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain0_n41_α
 xchain0_n37_β:
 jmp xchain0_n10_α
xchain0_n38_α:
# IR_VAR gva
bb39_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n42_α
 xchain0_n38_β:
 jmp xchain0_n35_α
xchain0_n39_α:
# IR_SCAN_TAB
bb40_α:
 mov rax, qword ptr [r12 + 696]
 cmp rax, 1
 jge .Lx61_0
 add rax, r15
 add rax, 1
.Lx61_0:
 cmp rax, 1
 jl xchain0_n40_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n40_α
 mov qword ptr [r12 + 672], r14
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
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain0_n43_α
 xchain0_n39_β:
 mov r14, qword ptr [r12 + 672]
 jmp xchain0_n40_α
xchain0_n40_α:
# IR_LIT_INTEGER
bb41_α:
 mov qword ptr [r12 + 640], 6
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain0_n44_α
 xchain0_n40_β:
 jmp xchain0_n51_α
.Lx62_0:
 .quad 1
xchain0_n41_α:
bb42_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 992]
 mov rdx, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain0_n45_α
 xchain0_n41_β:
 jmp xchain0_n10_α
xchain0_n42_α:
# IR_LIT_STRING
bb43_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx64_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n46_α
 xchain0_n42_β:
 jmp xchain0_n35_α
.Lx64_0:
 .quad .Lx64_0_s
.Lx64_0_s:
 .string ", "
xchain0_n43_α:
# IR_LIT_CHARSET
bb44_α:
 mov qword ptr [r12 + 608], 1
 mov dword ptr [r12 + 612], -1
 mov rax, qword ptr [rip + .Lx65_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain0_n47_α
 xchain0_n43_β:
 jmp xchain0_n51_α
.Lx65_0:
 .quad .Lx65_0_s
.Lx65_0_s:
 .string ")"
xchain0_n44_α:
bb45_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain0_n48_α
 xchain0_n44_β:
 jmp xchain0_n51_α
xchain0_n45_α:
 jmp xchain0_n10_α
xchain0_n45_β:
 jmp xchain0_n10_α
xchain0_n46_α:
bb47_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 call str_concat_d@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n49_α
 xchain0_n46_β:
 jmp xchain0_n35_α
xchain0_n47_α:
# IR_SCAN_UPTO
bb48_α:
 mov qword ptr [r12 + 592], r14
.Lx70_0:
 mov rax, qword ptr [r12 + 592]
 cmp rax, r15
 jge xchain0_n51_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx70_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx70_1
 mov qword ptr [r12 + 576], 6
 add rax, 1
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n50_α
.Lx70_1:
 inc qword ptr [r12 + 592]
 jmp .Lx70_0
 xchain0_n47_β:
 inc qword ptr [r12 + 592]
 jmp .Lx70_0
.Lx70_2:
 .quad .Lx70_2_s
.Lx70_2_s:
 .string ")"
xchain0_n48_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb49_α:
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + xchain0_n51_α]
 mov qword ptr [r12 + 512], rax
 jmp xchain0_n51_α
 xchain0_n48_β:
 jmp xchain0_n51_α
xchain0_n49_α:
bb50_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 call str_concat_d@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n53_α
 xchain0_n49_β:
 jmp xchain0_n35_α
xchain0_n50_α:
# IR_SCAN_TAB
bb51_α:
 mov rax, qword ptr [r12 + 584]
 cmp rax, 1
 jge .Lx75_0
 add rax, r15
 add rax, 1
.Lx75_0:
 cmp rax, 1
 jl xchain0_n51_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n51_α
 mov qword ptr [r12 + 560], r14
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
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain0_n54_α
 xchain0_n50_β:
 mov r14, qword ptr [r12 + 560]
 jmp xchain0_n51_α
xchain0_n51_α:
# IR_VAR_REF gva
bb52_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n55_α
 xchain0_n51_β:
 jmp xchain0_n35_α
xchain0_n52_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb53_α:
 jmp qword ptr [r12 + 512]
 xchain0_n52_β:
 jmp xchain0_n51_α
xchain0_n53_α:
# IR_ASSIGN_VAR write through variable
bb54_α:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 208]
 mov rcx, qword ptr [r12 + 216]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n35_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain0_n56_α
 xchain0_n53_β:
 jmp xchain0_n35_α
xchain0_n54_α:
bb55_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain0_n57_α
 xchain0_n54_β:
 jmp xchain0_n51_α
xchain0_n55_α:
# IR_VAR
bb56_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 312], rax
 jmp xchain0_n58_α
 xchain0_n55_β:
 jmp xchain0_n35_α
xchain0_n56_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb57_α:
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 120], rax
 lea rax, [rip + xchain0_n35_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain0_n59_α
 xchain0_n56_β:
 jmp xchain0_n35_α
xchain0_n57_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb58_α:
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + xchain0_n51_α]
 mov qword ptr [r12 + 512], rax
 jmp xchain0_n51_α
 xchain0_n57_β:
 jmp xchain0_n51_α
xchain0_n58_α:
# IR_SUBSCRIPT x[i] variable
bb59_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n35_α
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain0_n61_α
 xchain0_n58_β:
 jmp xchain0_n35_α
xchain0_n59_α:
 jmp xchain0_n62_α
xchain0_n59_β:
 jmp xchain0_n35_α
xchain0_n60_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb61_α:
 jmp qword ptr [r12 + 128]
 xchain0_n60_β:
 jmp xchain0_n35_α
xchain0_n61_α:
# IR_VAR
bb62_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 408], rax
 jmp xchain0_n63_α
 xchain0_n61_β:
 jmp xchain0_n35_α
xchain0_n62_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp proc_tabulate_γ
 xchain0_n62_β:
 jmp proc_tabulate_ω
xchain0_n63_α:
# IR_LIT_STRING
bb64_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx96_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain0_n64_α
 xchain0_n63_β:
 jmp xchain0_n35_α
.Lx96_0:
 .quad .Lx96_0_s
.Lx96_0_s:
 .string "("
xchain0_n64_α:
bb65_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1280]
 mov rsi, qword ptr [r12 + 1288]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 call str_concat_d@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain0_n65_α
 xchain0_n64_β:
 jmp xchain0_n35_α
xchain0_n65_α:
# IR_VAR
bb66_α:
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 456], rax
 jmp xchain0_n66_α
 xchain0_n65_β:
 jmp xchain0_n35_α
xchain0_n66_α:
# IR_LIT_INTEGER
bb67_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx00001_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n67_α
 xchain0_n66_β:
 jmp xchain0_n35_α
.Lx00001_0:
 .quad 1
xchain0_n67_α:
bb68_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1296]
 cmp eax, 100
 je .Lx00002_0
 mov eax, dword ptr [r12 + 464]
 cmp eax, 100
 je .Lx00002_0
 mov eax, dword ptr [r12 + 1296]
 cmp eax, 6
 jne .Lx00002_2
 mov eax, dword ptr [r12 + 464]
 cmp eax, 6
 jne .Lx00002_2
.Lx00002_1:
 mov rax, qword ptr [r12 + 1304]
 mov rcx, qword ptr [r12 + 472]
 add rax, rcx
 mov qword ptr [r12 + 432], 6
 mov qword ptr [r12 + 440], rax
 jmp xchain0_n68_α
.Lx00002_0:
 mov rdi, qword ptr [r12 + 1296]
 mov rsi, qword ptr [r12 + 1304]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 mov r8d, 0
 lea r9, [r12 + 432]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00002_3
.Lx00002_2:
 mov rdi, qword ptr [r12 + 1296]
 mov rsi, qword ptr [r12 + 1304]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n35_α
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
.Lx00002_3:
 jmp xchain0_n68_α
 xchain0_n67_β:
 jmp xchain0_n35_α
xchain0_n68_α:
bb69_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call str_concat_d@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n69_α
 xchain0_n68_β:
 jmp xchain0_n35_α
xchain0_n69_α:
# IR_LIT_STRING
bb70_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx00003_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain0_n70_α
 xchain0_n69_β:
 jmp xchain0_n35_α
.Lx00003_0:
 .quad .Lx00003_0_s
.Lx00003_0_s:
 .string "), "
xchain0_n70_α:
bb71_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 call str_concat_d@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n71_α
 xchain0_n70_β:
 jmp xchain0_n35_α
xchain0_n71_α:
# IR_ASSIGN_VAR write through variable
bb72_α:
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n35_α
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain0_n72_α
 xchain0_n71_β:
 jmp xchain0_n35_α
xchain0_n72_α:
 jmp xchain0_n73_α
xchain0_n72_β:
 jmp xchain0_n35_α
xchain0_n73_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb74_α:
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 120], rax
 lea rax, [rip + xchain0_n35_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain0_n59_α
 xchain0_n73_β:
 jmp xchain0_n35_α
proc_tabulate_β:
jmp proc_tabulate_ω
proc_tabulate_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_tabulate_ω:
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
xchain00004_n0_α:
# IR_VAR
bb75_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 168], rax
 jmp xchain00004_n1_α
 xchain00004_n0_β:
 jmp xchain00004_n3_α
xchain00004_n1_α:
# IR_UNOP
bb76_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00004_n2_α
 xchain00004_n1_β:
 jmp xchain00004_n3_α
xchain00004_n2_α:
# IR_VAR gva
bb77_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00004_n4_α
 xchain00004_n2_β:
 jmp xchain00004_n3_α
xchain00004_n3_α:
# IR_VAR
bb78_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00004_n5_α
 xchain00004_n3_β:
 jmp proc_format_ω
xchain00004_n4_α:
# IR_LIT_INTEGER
bb79_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx00005_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00004_n6_α
 xchain00004_n4_β:
 jmp xchain00004_n3_α
.Lx00005_0:
 .quad 2
xchain00004_n5_α:
# IR_LIT_INTEGER
bb80_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00006_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00004_n7_α
 xchain00004_n5_β:
 jmp proc_format_ω
.Lx00006_0:
 .quad 1
xchain00004_n6_α:
bb81_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 192]
 cmp eax, 100
 je .Lx00007_0
 mov eax, dword ptr [r12 + 208]
 cmp eax, 100
 je .Lx00007_0
 mov eax, dword ptr [r12 + 192]
 cmp eax, 6
 jne .Lx00007_2
 mov eax, dword ptr [r12 + 208]
 cmp eax, 6
 jne .Lx00007_2
.Lx00007_1:
 mov rax, qword ptr [r12 + 200]
 mov rcx, qword ptr [r12 + 216]
 add rax, rcx
 mov qword ptr [r12 + 176], 6
 mov qword ptr [r12 + 184], rax
 jmp xchain00004_n8_α
.Lx00007_0:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, qword ptr [r12 + 208]
 mov rcx, qword ptr [r12 + 216]
 mov r8d, 0
 lea r9, [r12 + 176]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00007_3
.Lx00007_2:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, qword ptr [r12 + 208]
 mov rcx, qword ptr [r12 + 216]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00004_n3_α
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
.Lx00007_3:
 jmp xchain00004_n8_α
 xchain00004_n6_β:
 jmp xchain00004_n3_α
xchain00004_n7_α:
# IR_LIT_INTEGER
bb82_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00008_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00004_n9_α
 xchain00004_n7_β:
 jmp proc_format_ω
.Lx00008_0:
 .quad 18446744073709551614
xchain00004_n8_α:
bb83_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 144]
 cmp eax, 100
 je .Lx00009_0
 mov eax, dword ptr [r12 + 176]
 cmp eax, 100
 je .Lx00009_0
 mov eax, dword ptr [r12 + 144]
 cmp eax, 6
 jne .Lx00009_2
 mov eax, dword ptr [r12 + 176]
 cmp eax, 6
 jne .Lx00009_2
.Lx00009_1:
 mov rax, qword ptr [r12 + 152]
 mov rcx, qword ptr [r12 + 184]
 cmp rax, rcx
 jle xchain00004_n3_α
 mov rcx, qword ptr [r12 + 176]
 mov qword ptr [r12 + 128], rcx
 mov rcx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 136], rcx
 jmp xchain00004_n10_α
.Lx00009_0:
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8d, 7
 lea r9, [r12 + 128]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00009_1
 cmp eax, 1
 je xchain00004_n3_α
 jmp xchain00004_n10_α
.Lx00009_2:
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00004_n3_α
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 136], rax
 jmp xchain00004_n10_α
 xchain00004_n8_β:
 jmp xchain00004_n3_α
xchain00004_n9_α:
# IR_SUBSCRIPT section
bb84_α:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 mov r8, qword ptr [r12 + 112]
 mov r9, qword ptr [r12 + 120]
 call subscript_get2@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain00004_n11_α
 xchain00004_n9_β:
 jmp proc_format_ω
xchain00004_n10_α:
# IR_VAR gva
bb85_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00004_n12_α
 xchain00004_n10_β:
 jmp xchain00004_n15_α
xchain00004_n11_α:
bb86_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+64] -> [r12+48]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lrkfn124: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn124]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je proc_format_ω
 jmp proc_format_γ
 xchain00004_n11_β:
 jmp proc_format_ω
xchain00004_n12_α:
# IR_LIT_INTEGER
bb87_α:
 mov qword ptr [r12 + 720], 6
 mov rax, qword ptr [rip + .Lx00010_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain00004_n13_α
 xchain00004_n12_β:
 jmp xchain00004_n15_α
.Lx00010_0:
 .quad 2
xchain00004_n13_α:
bb88_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 704]
 cmp eax, 100
 je .Lx00011_0
 mov eax, dword ptr [r12 + 720]
 cmp eax, 100
 je .Lx00011_0
 mov eax, dword ptr [r12 + 704]
 cmp eax, 6
 jne .Lx00011_2
 mov eax, dword ptr [r12 + 720]
 cmp eax, 6
 jne .Lx00011_2
.Lx00011_1:
 mov rax, qword ptr [r12 + 712]
 mov rcx, qword ptr [r12 + 728]
 add rax, rcx
 mov qword ptr [r12 + 688], 6
 mov qword ptr [r12 + 696], rax
 jmp xchain00004_n14_α
.Lx00011_0:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 720]
 mov rcx, qword ptr [r12 + 728]
 mov r8d, 0
 lea r9, [r12 + 688]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00011_3
.Lx00011_2:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 720]
 mov rcx, qword ptr [r12 + 728]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00004_n15_α
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
.Lx00011_3:
 jmp xchain00004_n14_α
 xchain00004_n13_β:
 jmp xchain00004_n15_α
xchain00004_n14_α:
bb89_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 688]
 mov rdx, qword ptr [r12 + 696]
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00004_n15_α
 xchain00004_n14_β:
 jmp xchain00004_n15_α
xchain00004_n15_α:
# IR_VAR_REF local
bb90_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00004_n16_α
 xchain00004_n15_β:
 jmp xchain00004_n15_α
xchain00004_n16_α:
# IR_VAR
bb91_α:
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 600], rax
 jmp xchain00004_n17_α
 xchain00004_n16_β:
 jmp xchain00004_n15_α
xchain00004_n17_α:
# IR_LIT_INTEGER
bb92_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx00012_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00004_n18_α
 xchain00004_n17_β:
 jmp xchain00004_n15_α
.Lx00012_0:
 .quad 1
xchain00004_n18_α:
bb93_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 736]
 cmp eax, 100
 je .Lx00013_0
 mov eax, dword ptr [r12 + 608]
 cmp eax, 100
 je .Lx00013_0
 mov eax, dword ptr [r12 + 736]
 cmp eax, 6
 jne .Lx00013_2
 mov eax, dword ptr [r12 + 608]
 cmp eax, 6
 jne .Lx00013_2
.Lx00013_1:
 mov rax, qword ptr [r12 + 744]
 mov rcx, qword ptr [r12 + 616]
 sub rax, rcx
 mov qword ptr [r12 + 576], 6
 mov qword ptr [r12 + 584], rax
 jmp xchain00004_n19_α
.Lx00013_0:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 1
 lea r9, [r12 + 576]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00013_3
.Lx00013_2:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00004_n15_α
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
.Lx00013_3:
 jmp xchain00004_n19_α
 xchain00004_n18_β:
 jmp xchain00004_n15_α
xchain00004_n19_α:
bb94_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00004_n20_α
 xchain00004_n19_β:
 jmp xchain00004_n15_α
xchain00004_n20_α:
# IR_SUBSCRIPT x[i] variable
bb95_α:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00004_n15_α
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00004_n21_α
 xchain00004_n20_β:
 jmp xchain00004_n15_α
xchain00004_n21_α:
# IR_DEREF variable -> value
bb96_α:
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00004_n15_α
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00004_n22_α
 xchain00004_n21_β:
 jmp xchain00004_n15_α
xchain00004_n22_α:
# IR_LIT_STRING
bb97_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00014_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00004_n23_α
 xchain00004_n22_β:
 jmp xchain00004_n15_α
.Lx00014_0:
 .quad .Lx00014_0_s
.Lx00014_0_s:
 .string " "
xchain00004_n23_α:
bb98_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 656]
 mov rcx, qword ptr [r12 + 664]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00004_n15_α
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00004_n24_α
 xchain00004_n23_β:
 jmp xchain00004_n15_α
xchain00004_n24_α:
# IR_VAR
bb99_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 488], rax
 jmp xchain00004_n25_α
 xchain00004_n24_β:
 jmp xchain00004_n29_α
xchain00004_n25_α:
# IR_LIT_INTEGER
bb00001_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx00015_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00004_n26_α
 xchain00004_n25_β:
 jmp xchain00004_n29_α
.Lx00015_0:
 .quad 1
xchain00004_n26_α:
# IR_VAR
bb00002_α:
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 520], rax
 jmp xchain00004_n27_α
 xchain00004_n26_β:
 jmp xchain00004_n29_α
xchain00004_n27_α:
# IR_SUBSCRIPT section
bb00016_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 mov r8, qword ptr [r12 + 512]
 mov r9, qword ptr [r12 + 520]
 call subscript_get2@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00004_n28_α
 xchain00004_n27_β:
 jmp xchain00004_n29_α
xchain00004_n28_α:
bb00003_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+464] -> [r12+448]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn146: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn146]
 lea rsi, [r12 + 448]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain00004_n29_α
 jmp xchain00004_n29_α
 xchain00004_n28_β:
 jmp xchain00004_n29_α
xchain00004_n29_α:
# IR_LIT_STRING
bb00017_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx00018_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00004_n30_α
 xchain00004_n29_β:
 jmp xchain00004_n0_α
.Lx00018_0:
 .quad .Lx00018_0_s
.Lx00018_0_s:
 .string " "
xchain00004_n30_α:
# IR_VAR gva
bb00019_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00004_n31_α
 xchain00004_n30_β:
 jmp xchain00004_n0_α
xchain00004_n31_α:
bb00020_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn150: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn150]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain00004_n0_α
 jmp xchain00004_n32_α
 xchain00004_n31_β:
 jmp xchain00004_n0_α
xchain00004_n32_α:
# IR_VAR
bb00021_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 360], rax
 jmp xchain00004_n33_α
 xchain00004_n32_β:
 jmp xchain00004_n0_α
xchain00004_n33_α:
# IR_VAR
bb00022_α:
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 392], rax
 jmp xchain00004_n34_α
 xchain00004_n33_β:
 jmp xchain00004_n0_α
xchain00004_n34_α:
# IR_LIT_INTEGER
bb00004_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00023_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00004_n35_α
 xchain00004_n34_β:
 jmp xchain00004_n0_α
.Lx00023_0:
 .quad 1
xchain00004_n35_α:
bb00024_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 736]
 cmp eax, 100
 je .Lx00025_0
 mov eax, dword ptr [r12 + 400]
 cmp eax, 100
 je .Lx00025_0
 mov eax, dword ptr [r12 + 736]
 cmp eax, 6
 jne .Lx00025_2
 mov eax, dword ptr [r12 + 400]
 cmp eax, 6
 jne .Lx00025_2
.Lx00025_1:
 mov rax, qword ptr [r12 + 744]
 mov rcx, qword ptr [r12 + 408]
 add rax, rcx
 mov qword ptr [r12 + 368], 6
 mov qword ptr [r12 + 376], rax
 jmp xchain00004_n36_α
.Lx00025_0:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 0
 lea r9, [r12 + 368]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00025_3
.Lx00025_2:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00004_n0_α
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
.Lx00025_3:
 jmp xchain00004_n36_α
 xchain00004_n35_β:
 jmp xchain00004_n0_α
xchain00004_n36_α:
# IR_LIT_INTEGER
bb00026_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00027_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00004_n37_α
 xchain00004_n36_β:
 jmp xchain00004_n0_α
.Lx00027_0:
 .quad 0
xchain00004_n37_α:
# IR_SUBSCRIPT section
bb00028_α:
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 mov r8, qword ptr [r12 + 416]
 mov r9, qword ptr [r12 + 424]
 call subscript_get2@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00004_n38_α
 xchain00004_n37_β:
 jmp xchain00004_n0_α
xchain00004_n38_α:
bb00029_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 call str_concat_d@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00004_n39_α
 xchain00004_n38_β:
 jmp xchain00004_n0_α
xchain00004_n39_α:
bb00030_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00004_n40_α
 xchain00004_n39_β:
 jmp xchain00004_n0_α
xchain00004_n40_α:
 jmp xchain00004_n0_α
xchain00004_n40_β:
 jmp xchain00004_n0_α
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
  .globl proc_item_α
proc_item_α:
#=======================================================================================================================
    .global proc_item_α
    .global proc_item_β
    .global proc_item_γ
    .global proc_item_ω
push r12
  mov r12, rdi
  cmp esi, 0
  jne proc_item_β
proc_item_α_body:
lea rax, [rip + xchain00031_n34_β]
mov qword ptr [r12 + 736], rax
xchain00031_n0_α:
bb00005_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn164: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn164]
 lea rsi, [r12 + 48]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je proc_item_ω
 jmp xchain00031_n1_α
 xchain00031_n0_β:
 jmp proc_item_ω
xchain00031_n1_α:
bb00006_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00031_n2_α
 xchain00031_n1_β:
 jmp proc_item_ω
xchain00031_n2_α:
# IR_VAR gva
bb00007_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00031_n3_α
 xchain00031_n2_β:
 jmp xchain00031_n6_α
xchain00031_n3_α:
# IR_LIT_INTEGER
bb00008_α:
 mov qword ptr [r12 + 720], 6
 mov rax, qword ptr [rip + .Lx00032_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain00031_n4_α
 xchain00031_n3_β:
 jmp xchain00031_n6_α
.Lx00032_0:
 .quad 1
xchain00031_n4_α:
bb00009_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 704]
 cmp eax, 100
 je .Lx00033_0
 mov eax, dword ptr [r12 + 720]
 cmp eax, 100
 je .Lx00033_0
 mov eax, dword ptr [r12 + 704]
 cmp eax, 6
 jne .Lx00033_2
 mov eax, dword ptr [r12 + 720]
 cmp eax, 6
 jne .Lx00033_2
.Lx00033_1:
 mov rax, qword ptr [r12 + 712]
 mov rcx, qword ptr [r12 + 728]
 add rax, rcx
 mov qword ptr [r12 + 688], 6
 mov qword ptr [r12 + 696], rax
 jmp xchain00031_n5_α
.Lx00033_0:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 720]
 mov rcx, qword ptr [r12 + 728]
 mov r8d, 0
 lea r9, [r12 + 688]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00033_3
.Lx00033_2:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 720]
 mov rcx, qword ptr [r12 + 728]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00031_n6_α
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
.Lx00033_3:
 jmp xchain00031_n5_α
 xchain00031_n4_β:
 jmp xchain00031_n6_α
xchain00031_n5_α:
# IR_ASSIGN gva
bb00034_α:
 mov rax, qword ptr [r12 + 688]
 mov rdx, qword ptr [r12 + 696]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00031_n6_α
 xchain00031_n5_β:
 jmp xchain00031_n6_α
xchain00031_n6_α:
# IR_VAR gva
bb00035_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00031_n7_α
 xchain00031_n6_β:
 jmp xchain00031_n10_α
xchain00031_n7_α:
# IR_LIT_INTEGER
bb00036_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx00037_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain00031_n8_α
 xchain00031_n7_β:
 jmp xchain00031_n10_α
.Lx00037_0:
 .quad 6
xchain00031_n8_α:
bb00038_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+608] -> [r12+576]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
# marshal arg1 = producer-box slot [r12+624] -> [r12+592]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn173: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn173]
 lea rsi, [r12 + 576]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain00031_n10_α
 jmp xchain00031_n9_α
 xchain00031_n8_β:
 jmp xchain00031_n10_α
xchain00031_n9_α:
# IR_LIT_STRING
bb00010_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx00039_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00031_n11_α
 xchain00031_n9_β:
 jmp xchain00031_n10_α
.Lx00039_0:
 .quad .Lx00039_0_s
.Lx00039_0_s:
 .string "  "
xchain00031_n10_α:
# IR_VAR
bb00011_α:
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 488], rax
 jmp xchain00031_n12_α
 xchain00031_n10_β:
 jmp xchain00031_n15_α
xchain00031_n11_α:
# IR_VAR
bb00040_α:
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 664], rax
 jmp xchain00031_n13_α
 xchain00031_n11_β:
 jmp xchain00031_n10_α
xchain00031_n12_α:
bb00041_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+480] -> [r12+464]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn180: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn180]
 lea rsi, [r12 + 464]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain00031_n15_α
 jmp xchain00031_n14_α
 xchain00031_n12_β:
 jmp xchain00031_n15_α
xchain00031_n13_α:
bb00042_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+560] -> [r12+512]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [r12+640] -> [r12+528]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 536], rax
# marshal arg2 = producer-box slot [r12+656] -> [r12+544]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn182: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn182]
 lea rsi, [r12 + 512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain00031_n10_α
 jmp xchain00031_n10_α
 xchain00031_n13_β:
 jmp xchain00031_n10_α
xchain00031_n14_α:
bb00043_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00031_n15_α
 xchain00031_n14_β:
 jmp xchain00031_n15_α
xchain00031_n15_α:
# IR_LIT_INTEGER
bb00044_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00045_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00031_n16_α
 xchain00031_n15_β:
 jmp xchain00031_n17_α
.Lx00045_0:
 .quad 1
xchain00031_n16_α:
bb00012_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00031_n17_α
 xchain00031_n16_β:
 jmp xchain00031_n17_α
xchain00031_n17_α:
# IR_VAR
bb00013_α:
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 392], rax
 jmp xchain00031_n18_α
 xchain00031_n17_β:
 jmp xchain00031_n0_α
xchain00031_n18_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00031_n19_α
 xchain00031_n18_β:
 jmp xchain00031_n0_α
xchain00031_n19_α:
# IR_LIT_CHARSET
bb00046_α:
 mov qword ptr [r12 + 176], 1
 mov dword ptr [r12 + 180], -1
 mov rax, qword ptr [rip + .Lx00047_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00031_n20_α
 xchain00031_n19_β:
 jmp xchain00031_n25_α
.Lx00047_0:
 .quad .Lx00047_0_s
.Lx00047_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
xchain00031_n20_α:
# IR_SCAN_UPTO
bb00048_α:
 mov qword ptr [r12 + 160], r14
.Lx00049_0:
 mov rax, qword ptr [r12 + 160]
 cmp rax, r15
 jge xchain00031_n25_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00049_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00049_1
 mov qword ptr [r12 + 144], 6
 add rax, 1
 mov qword ptr [r12 + 152], rax
 jmp xchain00031_n21_α
.Lx00049_1:
 inc qword ptr [r12 + 160]
 jmp .Lx00049_0
 xchain00031_n20_β:
 inc qword ptr [r12 + 160]
 jmp .Lx00049_0
.Lx00049_2:
 .quad .Lx00049_2_s
.Lx00049_2_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
xchain00031_n21_α:
# IR_SCAN_TAB
bb00014_α:
 mov rax, qword ptr [r12 + 152]
 cmp rax, 1
 jge .Lx00050_0
 add rax, r15
 add rax, 1
.Lx00050_0:
 cmp rax, 1
 jl xchain00031_n25_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00031_n25_α
 mov qword ptr [r12 + 128], r14
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
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00031_n22_α
 xchain00031_n21_β:
 mov r14, qword ptr [r12 + 128]
 jmp xchain00031_n25_α
xchain00031_n22_α:
# IR_LIT_CHARSET
bb00051_α:
 mov qword ptr [r12 + 368], 1
 mov dword ptr [r12 + 372], -1
 mov rax, qword ptr [rip + .Lx00052_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00031_n24_α
 xchain00031_n22_β:
 jmp xchain00031_n29_α
.Lx00052_0:
 .quad .Lx00052_0_s
.Lx00052_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
xchain00031_n23_α:
 jmp xchain00031_n25_α
xchain00031_n23_β:
 jmp xchain00031_n25_α
xchain00031_n24_α:
# IR_SCAN_MANY
bb00053_α:
 mov eax, r14d
.Lx00054_0:
 cmp eax, r15d
 jge .Lx00054_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00054_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00054_1
 add eax, 1
 jmp .Lx00054_0
.Lx00054_1:
 cmp eax, r14d
 je xchain00031_n29_α
 mov qword ptr [r12 + 352], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 360], rcx
 jmp xchain00031_n26_α
 xchain00031_n24_β:
 jmp xchain00031_n29_α
.Lx00054_2:
 .quad .Lx00054_2_s
.Lx00054_2_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
xchain00031_n25_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain00031_n27_α
 xchain00031_n25_β:
 jmp xchain00031_n0_α
xchain00031_n26_α:
# IR_SCAN_TAB
bb00055_α:
 mov rax, qword ptr [r12 + 360]
 cmp rax, 1
 jge .Lx00056_0
 add rax, r15
 add rax, 1
.Lx00056_0:
 cmp rax, 1
 jl xchain00031_n29_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00031_n29_α
 mov qword ptr [r12 + 336], r14
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
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00031_n28_α
 xchain00031_n26_β:
 mov r14, qword ptr [r12 + 336]
 jmp xchain00031_n29_α
xchain00031_n27_α:
 jmp xchain00031_n0_α
xchain00031_n27_β:
 jmp xchain00031_n0_α
xchain00031_n28_α:
bb00057_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00031_n29_α
 xchain00031_n28_β:
 jmp xchain00031_n29_α
xchain00031_n29_α:
# IR_VAR
bb00058_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 280], rax
 jmp xchain00031_n30_α
 xchain00031_n29_β:
 jmp xchain00031_n19_α
xchain00031_n30_α:
# IR_UNOP
bb00059_α:
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 call rt_size_d@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00031_n31_α
 xchain00031_n30_β:
 jmp xchain00031_n19_α
xchain00031_n31_α:
# IR_LIT_INTEGER
bb00018_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx00060_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00031_n32_α
 xchain00031_n31_β:
 jmp xchain00031_n19_α
.Lx00060_0:
 .quad 3
xchain00031_n32_α:
bb00061_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 256]
 cmp eax, 100
 je .Lx00062_0
 mov eax, dword ptr [r12 + 288]
 cmp eax, 100
 je .Lx00062_0
 mov eax, dword ptr [r12 + 256]
 cmp eax, 6
 jne .Lx00062_2
 mov eax, dword ptr [r12 + 288]
 cmp eax, 6
 jne .Lx00062_2
.Lx00062_1:
 mov rax, qword ptr [r12 + 264]
 mov rcx, qword ptr [r12 + 296]
 cmp rax, rcx
 jl xchain00031_n19_α
 mov rcx, qword ptr [r12 + 288]
 mov qword ptr [r12 + 240], rcx
 mov rcx, qword ptr [r12 + 296]
 mov qword ptr [r12 + 248], rcx
 jmp xchain00031_n33_α
.Lx00062_0:
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 mov r8d, 8
 lea r9, [r12 + 240]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00062_1
 cmp eax, 1
 je xchain00031_n19_α
 jmp xchain00031_n33_α
.Lx00062_2:
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 mov r8d, 8
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00031_n19_α
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 248], rax
 jmp xchain00031_n33_α
 xchain00031_n32_β:
 jmp xchain00031_n19_α
xchain00031_n33_α:
# IR_VAR
bb00063_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 232], rax
 jmp xchain00031_n34_α
 xchain00031_n33_β:
 jmp proc_item_ω
xchain00031_n34_α:
# IR_SUSPEND yield+resume
bb00064_α:
 lea rax, [rip + xchain00031_n34_β]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 8], rax
 jmp proc_item_γ
 xchain00031_n34_β:
 jmp xchain00031_n35_α
xchain00031_n35_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00065_α:
 lea rax, [rip + proc_item_ω]
 mov qword ptr [r12 + 208], rax
 jmp xchain00031_n36_α
 xchain00031_n35_β:
 jmp xchain00031_n19_α
xchain00031_n36_α:
 jmp xchain00031_n19_α
xchain00031_n36_β:
 jmp xchain00031_n19_α
xchain00031_n37_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00066_α:
 jmp qword ptr [r12 + 208]
 xchain00031_n37_β:
 jmp xchain00031_n19_α
proc_item_β:
jmp qword ptr [r12 + 736]
proc_item_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_item_ω:
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
  .Lstartup_pname0: .string "tabulate"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_tabulate_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname1: .string "format"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_format_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname2: .string "item"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_item_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "uses"
  .Lgvan1: .string "colmax"
  .Lgvan2: .string "namewidth"
  .Lgvan3: .string "lineno"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .section .bss
  .align 16
__gva: .space 64, 0
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
  mov edx, 4
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
xchain00067_n0_α:
# IR_LIT_STRING
bb00068_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx00069_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain00067_n1_α
 xchain00067_n0_β:
 jmp xchain00067_n2_α
.Lx00069_0:
 .quad .Lx00069_0_s
.Lx00069_0_s:
 .string "concord"
xchain00067_n1_α:
bb00023_α:
# BOX IR_CALL Init__(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+976] -> [r12+960]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 968], rax
  .section .rodata
  .Lbynamefn222: .string "Init__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn222]
 lea rsi, [r12 + 960]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je xchain00067_n2_α
 jmp xchain00067_n2_α
xchain00067_n1_β:
 jmp xchain00067_n2_α
xchain00067_n2_α:
# IR_VAR
bb00025_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 920], rax
 jmp xchain00067_n3_α
 xchain00067_n2_β:
 jmp xchain00067_n6_α
xchain00067_n3_α:
# IR_LIT_STRING
bb00027_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx00070_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain00067_n4_α
 xchain00067_n3_β:
 jmp xchain00067_n6_α
.Lx00070_0:
 .quad .Lx00070_0_s
.Lx00070_0_s:
 .string "l+w+"
xchain00067_n4_α:
bb00071_α:
# BOX IR_CALL options(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
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
  .Lbynamefn227: .string "options"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn227]
 lea rsi, [r12 + 880]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain00067_n6_α
 jmp xchain00067_n5_α
xchain00067_n4_β:
 jmp xchain00067_n6_α
xchain00067_n5_α:
bb00072_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 864]
 mov rdx, qword ptr [r12 + 872]
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain00067_n6_α
 xchain00067_n5_β:
 jmp xchain00067_n6_α
xchain00067_n6_α:
# IR_VAR_REF local
bb00073_α:
 lea rdi, [r12 + 1024]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00067_n7_α
 xchain00067_n6_β:
 jmp xchain00067_n10_α
xchain00067_n7_α:
# IR_LIT_STRING
bb00074_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx00075_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain00067_n8_α
 xchain00067_n7_β:
 jmp xchain00067_n10_α
.Lx00075_0:
 .quad .Lx00075_0_s
.Lx00075_0_s:
 .string "l"
xchain00067_n8_α:
# IR_SUBSCRIPT x[i] variable
bb00031_α:
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00067_n10_α
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00067_n9_α
 xchain00067_n8_β:
 jmp xchain00067_n10_α
xchain00067_n9_α:
# IR_DEREF variable -> value
bb00076_α:
 mov rdi, qword ptr [r12 + 816]
 mov rsi, qword ptr [r12 + 824]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00067_n10_α
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00067_n11_α
 xchain00067_n9_β:
 jmp xchain00067_n10_α
xchain00067_n10_α:
# IR_LIT_INTEGER
bb00077_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx00078_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain00067_n12_α
 xchain00067_n10_β:
 jmp xchain00067_n15_α
.Lx00078_0:
 .quad 72
xchain00067_n11_α:
# IR_UNOP
bb00079_α:
 mov eax, dword ptr [r12 + 832]
 cmp eax, 99
 je xchain00067_n10_α
 cmp eax, 0
 je xchain00067_n10_α
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 776], rax
 jmp xchain00067_n13_α
 xchain00067_n11_β:
 jmp xchain00067_n10_α
xchain00067_n12_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00080_α:
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
 lea rax, [rip + xchain00067_n15_α]
 mov qword ptr [r12 + 736], rax
 jmp xchain00067_n14_α
 xchain00067_n12_β:
 jmp xchain00067_n15_α
xchain00067_n13_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00032_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 728], rax
 lea rax, [rip + xchain00067_n10_α]
 mov qword ptr [r12 + 736], rax
 jmp xchain00067_n14_α
 xchain00067_n13_β:
 jmp xchain00067_n15_α
xchain00067_n14_α:
# IR_ASSIGN gva
bb00033_α:
 mov rax, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00067_n15_α
 xchain00067_n14_β:
 jmp xchain00067_n15_α
xchain00067_n15_α:
# IR_VAR_REF local
bb00081_α:
 lea rdi, [r12 + 1024]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00067_n17_α
 xchain00067_n15_β:
 jmp xchain00067_n20_α
xchain00067_n16_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00082_α:
 jmp qword ptr [r12 + 736]
 xchain00067_n16_β:
 jmp xchain00067_n15_α
xchain00067_n17_α:
# IR_LIT_STRING
bb00037_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00083_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00067_n18_α
 xchain00067_n17_β:
 jmp xchain00067_n20_α
.Lx00083_0:
 .quad .Lx00083_0_s
.Lx00083_0_s:
 .string "w"
xchain00067_n18_α:
# IR_SUBSCRIPT x[i] variable
bb00084_α:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 656]
 mov rcx, qword ptr [r12 + 664]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00067_n20_α
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00067_n19_α
 xchain00067_n18_β:
 jmp xchain00067_n20_α
xchain00067_n19_α:
# IR_DEREF variable -> value
bb00085_α:
 mov rdi, qword ptr [r12 + 672]
 mov rsi, qword ptr [r12 + 680]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00067_n20_α
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00067_n21_α
 xchain00067_n19_β:
 jmp xchain00067_n20_α
xchain00067_n20_α:
# IR_LIT_INTEGER
bb00039_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx00086_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00067_n22_α
 xchain00067_n20_β:
 jmp xchain00067_n25_α
.Lx00086_0:
 .quad 15
xchain00067_n21_α:
# IR_UNOP
bb00087_α:
 mov eax, dword ptr [r12 + 688]
 cmp eax, 99
 je xchain00067_n20_α
 cmp eax, 0
 je xchain00067_n20_α
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 632], rax
 jmp xchain00067_n23_α
 xchain00067_n21_β:
 jmp xchain00067_n20_α
xchain00067_n22_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00088_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
 lea rax, [rip + xchain00067_n25_α]
 mov qword ptr [r12 + 592], rax
 jmp xchain00067_n24_α
 xchain00067_n22_β:
 jmp xchain00067_n25_α
xchain00067_n23_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00089_α:
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 584], rax
 lea rax, [rip + xchain00067_n20_α]
 mov qword ptr [r12 + 592], rax
 jmp xchain00067_n24_α
 xchain00067_n23_β:
 jmp xchain00067_n25_α
xchain00067_n24_α:
# IR_ASSIGN gva
bb00090_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00067_n25_α
 xchain00067_n24_β:
 jmp xchain00067_n25_α
xchain00067_n25_α:
# IR_LIT_STRING
bb00091_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx00092_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain00067_n27_α
 xchain00067_n25_β:
 jmp xchain00067_n29_α
.Lx00092_0:
 .quad .Lx00092_0_s
.Lx00092_0_s:
 .string ""
xchain00067_n26_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00093_α:
 jmp qword ptr [r12 + 592]
 xchain00067_n26_β:
 jmp xchain00067_n25_α
xchain00067_n27_α:
bb00094_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+544] -> [r12+528]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn259: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn259]
 lea rsi, [r12 + 528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain00067_n29_α
 jmp xchain00067_n28_α
 xchain00067_n27_β:
 jmp xchain00067_n29_α
xchain00067_n28_α:
# IR_ASSIGN gva
bb00095_α:
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00067_n29_α
 xchain00067_n28_β:
 jmp xchain00067_n29_α
xchain00067_n29_α:
# IR_LIT_INTEGER
bb00096_α:
 mov qword ptr [r12 + 480], 6
 mov rax, qword ptr [rip + .Lx00097_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain00067_n30_α
 xchain00067_n29_β:
 jmp xchain00067_n31_α
.Lx00097_0:
 .quad 0
xchain00067_n30_α:
# IR_ASSIGN gva
bb00045_α:
 mov rax, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00067_n31_α
 xchain00067_n30_β:
 jmp xchain00067_n31_α
xchain00067_n31_α:
bb00098_α:
  .section .rodata
  .Lcall00098_pname: .string "item"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00098_pname]
 mov esi, 0
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain00067_n33_α
 jmp xchain00067_n32_α
xchain00067_n31_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain00067_n33_α
 jmp xchain00067_n32_α
xchain00067_n32_α:
# IR_VAR gva
bb00099_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00067_n34_α
 xchain00067_n32_β:
 jmp xchain00067_n31_β
xchain00067_n33_α:
# IR_VAR gva
bb00100_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00067_n35_α
 xchain00067_n33_β:
 jmp xchain00067_n38_α
xchain00067_n34_α:
bb00101_α:
  .section .rodata
  .Lcall00101_pname: .string "tabulate"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00101_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain00067_n33_α
 jmp xchain00067_n31_β
xchain00067_n34_β:
 jmp xchain00067_n33_α
xchain00067_n35_α:
# IR_LIT_INTEGER
bb00102_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00103_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00067_n36_α
 xchain00067_n35_β:
 jmp xchain00067_n38_α
.Lx00103_0:
 .quad 3
xchain00067_n36_α:
bb00047_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn269: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn269]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain00067_n38_α
 jmp xchain00067_n37_α
 xchain00067_n36_β:
 jmp xchain00067_n38_α
xchain00067_n37_α:
bb00104_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00067_n38_α
 xchain00067_n37_β:
 jmp xchain00067_n38_α
xchain00067_n38_α:
# IR_VAR
bb00049_α:
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 104], rax
 jmp xchain00067_n39_α
 xchain00067_n38_β:
 jmp xchain00067_n41_α
xchain00067_n39_α:
bb00105_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+80]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn274: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn274]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00067_n41_α
 jmp xchain00067_n40_α
 xchain00067_n39_β:
 jmp xchain00067_n41_α
xchain00067_n40_α:
bb00050_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00067_n42_α
 xchain00067_n40_β:
 jmp xchain00067_n41_α
xchain00067_n41_α:
bb00052_α:
# BOX IR_CALL Term__(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn277: .string "Term__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn277]
 lea rsi, [r12 + 48]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain00067_n41_β:
 jmp main_ω
xchain00067_n42_α:
# IR_VAR
bb00106_α:
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 216], rax
 jmp xchain00067_n43_α
 xchain00067_n42_β:
 jmp xchain00067_n38_α
xchain00067_n43_α:
# IR_VAR gva
bb00107_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00067_n44_α
 xchain00067_n43_β:
 jmp xchain00067_n38_α
xchain00067_n44_α:
bb00054_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+208] -> [r12+176]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
# marshal arg1 = producer-box slot [r12+224] -> [r12+192]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn282: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn282]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00067_n38_α
 jmp xchain00067_n45_α
 xchain00067_n44_β:
 jmp xchain00067_n38_α
xchain00067_n45_α:
# IR_VAR
bb00108_α:
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 280], rax
 jmp xchain00067_n46_α
 xchain00067_n45_β:
 jmp xchain00067_n38_α
xchain00067_n46_α:
bb00109_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+272] -> [r12+256]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn286: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn286]
 lea rsi, [r12 + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain00067_n38_α
 jmp xchain00067_n47_α
 xchain00067_n46_β:
 jmp xchain00067_n38_α
xchain00067_n47_α:
bb00110_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 call str_concat_d@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00067_n48_α
 xchain00067_n47_β:
 jmp xchain00067_n38_α
xchain00067_n48_α:
bb00056_α:
  .section .rodata
  .Lcall00056_pname: .string "format"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00056_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00067_n38_α
 jmp xchain00067_n38_α
xchain00067_n48_β:
 jmp xchain00067_n38_α
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
