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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1280], rax
 pop rsi
proc_tabulate_α_body:
# IR_VAR gva
 xchain0_n0_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
 xchain0_n1_α:
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
 je xchain0_n2_α
 jmp xchain0_n3_α
 xchain0_n1_β:
 jmp xchain0_n2_α
# IR_LIT_STRING
 xchain0_n2_α:
 mov qword ptr [r12 + 1200], 1
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 1208], rax
 jmp xchain0_n4_α
 xchain0_n2_β:
 jmp xchain0_n5_α
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string ""
# IR_ASSIGN gva
 xchain0_n3_α:
 mov rax, qword ptr [r12 + 1232]
 mov rdx, qword ptr [r12 + 1240]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain0_n2_α
 xchain0_n3_β:
 jmp xchain0_n2_α
 xchain0_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1200]
 mov rdx, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n5_α
# IR_VAR_REF gva
 xchain0_n5_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp proc_tabulate_ω
# IR_VAR
 xchain0_n6_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1144], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp proc_tabulate_ω
# IR_SUBSCRIPT x[i] variable
 xchain0_n7_α:
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
# IR_DEREF variable -> value
 xchain0_n8_α:
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
# IR_GEN_SCAN
 xchain0_n9_α:
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
# IR_VAR
 xchain0_n10_α:
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 888], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n12_α
# IR_LIT_CHARSET
 xchain0_n11_α:
 mov qword ptr [r12 + 960], 1
 mov dword ptr [r12 + 964], -1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n12_α
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "0123456789"
# IR_VAR
 xchain0_n12_α:
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 840], rax
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n15_α
# IR_SCAN_UPTO
 xchain0_n13_α:
 mov qword ptr [r12 + 944], r14
.Lx21_0:
 mov rax, qword ptr [r12 + 944]
 cmp rax, r15
 jge xchain0_n12_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx21_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx21_1
 mov qword ptr [r12 + 928], 6
 add rax, 1
 mov qword ptr [r12 + 936], rax
 jmp xchain0_n16_α
.Lx21_1:
 inc qword ptr [r12 + 944]
 jmp .Lx21_0
 xchain0_n13_β:
 inc qword ptr [r12 + 944]
 jmp .Lx21_0
.Lx21_2:
 .quad .Lx21_2_s
.Lx21_2_s:
 .string "0123456789"
# IR_UNOP
 xchain0_n14_α:
 mov eax, dword ptr [r12 + 1328]
 cmp eax, 99
 je xchain0_n15_α
 cmp eax, 0
 jne xchain0_n15_α
 mov qword ptr [r12 + 816], 0
 mov qword ptr [r12 + 824], 0
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp xchain0_n15_α
# IR_VAR
 xchain0_n15_α:
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 792], rax
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n19_α
# IR_SCAN_TAB
 xchain0_n16_α:
 mov rax, qword ptr [r12 + 936]
 cmp rax, 1
 jge .Lx26_0
 add rax, r15
 add rax, 1
.Lx26_0:
 cmp rax, 1
 jl xchain0_n12_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n12_α
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
 jmp xchain0_n20_α
 xchain0_n16_β:
 mov r14, qword ptr [r12 + 912]
 jmp xchain0_n12_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n17_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 744], rax
 lea rax, [rip + xchain0_n15_α]
 mov qword ptr [r12 + 752], rax
 jmp xchain0_n21_α
 xchain0_n17_β:
 jmp xchain0_n19_α
# IR_VAR gva
 xchain0_n18_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain0_n23_α
 xchain0_n18_β:
 jmp xchain0_n19_α
# IR_LIT_STRING
 xchain0_n19_α:
 mov qword ptr [r12 + 720], 1
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain0_n24_α
 xchain0_n19_β:
 jmp xchain0_n29_α
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "("
 xchain0_n20_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1296]
 mov rsi, qword ptr [r12 + 1304]
 mov rdx, qword ptr [r12 + 896]
 mov rcx, qword ptr [r12 + 904]
 call str_concat_d@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain0_n25_α
 xchain0_n20_β:
 jmp xchain0_n12_α
# IR_VAR_REF gva
 xchain0_n21_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain0_n26_α
 xchain0_n21_β:
 jmp xchain0_n32_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n22_α:
 jmp qword ptr [r12 + 752]
 xchain0_n22_β:
 jmp xchain0_n19_α
 xchain0_n23_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 1328]
 mov rsi, qword ptr [r12 + 1336]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n19_α
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain0_n27_α
 xchain0_n23_β:
 jmp xchain0_n19_α
# IR_SCAN_MATCH
 xchain0_n24_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain0_n29_α
 mov rdi, qword ptr [rip + .Lx38_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain0_n29_α
 mov qword ptr [r12 + 688], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 696], rax
 jmp xchain0_n28_α
 xchain0_n24_β:
 jmp xchain0_n29_α
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "("
 xchain0_n25_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 864]
 mov rdx, qword ptr [r12 + 872]
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain0_n30_α
 xchain0_n25_β:
 jmp xchain0_n12_α
# IR_VAR
 xchain0_n26_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 168], rax
 jmp xchain0_n31_α
 xchain0_n26_β:
 jmp xchain0_n32_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n27_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 744], rax
 lea rax, [rip + xchain0_n19_α]
 mov qword ptr [r12 + 752], rax
 jmp xchain0_n21_α
 xchain0_n27_β:
 jmp xchain0_n19_α
# IR_SCAN_TAB
 xchain0_n28_α:
 mov rax, qword ptr [r12 + 696]
 cmp rax, 1
 jge .Lx45_0
 add rax, r15
 add rax, 1
.Lx45_0:
 cmp rax, 1
 jl xchain0_n29_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n29_α
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
 jmp xchain0_n33_α
 xchain0_n28_β:
 mov r14, qword ptr [r12 + 672]
 jmp xchain0_n29_α
# IR_LIT_INTEGER
 xchain0_n29_α:
 mov qword ptr [r12 + 640], 6
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain0_n34_α
 xchain0_n29_β:
 jmp xchain0_n42_α
.Lx46_0:
 .quad 1
# IR_LIT_CHARSET
 xchain0_n30_α:
 mov qword ptr [r12 + 1104], 1
 mov dword ptr [r12 + 1108], -1
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain0_n35_α
 xchain0_n30_β:
 jmp xchain0_n45_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "0123456789"
# IR_SUBSCRIPT x[i] variable
 xchain0_n31_α:
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n32_α
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain0_n36_α
 xchain0_n31_β:
 jmp xchain0_n32_α
# IR_GEN_SCAN
 xchain0_n32_α:
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp proc_tabulate_ω
 xchain0_n32_β:
 jmp proc_tabulate_ω
# IR_LIT_CHARSET
 xchain0_n33_α:
 mov qword ptr [r12 + 608], 1
 mov dword ptr [r12 + 612], -1
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain0_n37_α
 xchain0_n33_β:
 jmp xchain0_n42_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string ")"
 xchain0_n34_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain0_n38_α
 xchain0_n34_β:
 jmp xchain0_n42_α
# IR_SCAN_MANY
 xchain0_n35_α:
 mov eax, r14d
.Lx54_0:
 cmp eax, r15d
 jge .Lx54_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx54_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx54_1
 add eax, 1
 jmp .Lx54_0
.Lx54_1:
 cmp eax, r14d
 je xchain0_n45_α
 mov qword ptr [r12 + 1088], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 1096], rcx
 jmp xchain0_n39_α
 xchain0_n35_β:
 jmp xchain0_n45_α
.Lx54_2:
 .quad .Lx54_2_s
.Lx54_2_s:
 .string "0123456789"
# IR_DEREF variable -> value
 xchain0_n36_α:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n32_α
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n40_α
 xchain0_n36_β:
 jmp xchain0_n32_α
# IR_SCAN_UPTO
 xchain0_n37_α:
 mov qword ptr [r12 + 592], r14
.Lx57_0:
 mov rax, qword ptr [r12 + 592]
 cmp rax, r15
 jge xchain0_n42_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx57_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx57_1
 mov qword ptr [r12 + 576], 6
 add rax, 1
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n41_α
.Lx57_1:
 inc qword ptr [r12 + 592]
 jmp .Lx57_0
 xchain0_n37_β:
 inc qword ptr [r12 + 592]
 jmp .Lx57_0
.Lx57_2:
 .quad .Lx57_2_s
.Lx57_2_s:
 .string ")"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n38_α:
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + xchain0_n42_α]
 mov qword ptr [r12 + 512], rax
 jmp xchain0_n42_α
 xchain0_n38_β:
 jmp xchain0_n42_α
# IR_SCAN_TAB
 xchain0_n39_α:
 mov rax, qword ptr [r12 + 1096]
 cmp rax, 1
 jge .Lx61_0
 add rax, r15
 add rax, 1
.Lx61_0:
 cmp rax, 1
 jl xchain0_n45_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n45_α
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
 jmp xchain0_n44_α
 xchain0_n39_β:
 mov r14, qword ptr [r12 + 1072]
 jmp xchain0_n45_α
# IR_VAR gva
 xchain0_n40_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n46_α
 xchain0_n40_β:
 jmp xchain0_n32_α
# IR_SCAN_TAB
 xchain0_n41_α:
 mov rax, qword ptr [r12 + 584]
 cmp rax, 1
 jge .Lx64_0
 add rax, r15
 add rax, 1
.Lx64_0:
 cmp rax, 1
 jl xchain0_n42_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n42_α
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
 jmp xchain0_n47_α
 xchain0_n41_β:
 mov r14, qword ptr [r12 + 560]
 jmp xchain0_n42_α
# IR_VAR_REF gva
 xchain0_n42_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n48_α
 xchain0_n42_β:
 jmp xchain0_n32_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n43_α:
 jmp qword ptr [r12 + 512]
 xchain0_n43_β:
 jmp xchain0_n42_α
 xchain0_n44_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1056]
 mov rdx, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain0_n45_α
 xchain0_n44_β:
 jmp xchain0_n45_α
# IR_VAR
 xchain0_n45_α:
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1016], rax
 jmp xchain0_n49_α
 xchain0_n45_β:
 jmp xchain0_n10_α
# IR_LIT_STRING
 xchain0_n46_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx72_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n50_α
 xchain0_n46_β:
 jmp xchain0_n32_α
.Lx72_0:
 .quad .Lx72_0_s
.Lx72_0_s:
 .string ", "
 xchain0_n47_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain0_n51_α
 xchain0_n47_β:
 jmp xchain0_n42_α
# IR_VAR
 xchain0_n48_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 312], rax
 jmp xchain0_n52_α
 xchain0_n48_β:
 jmp xchain0_n32_α
# IR_VAR
 xchain0_n49_α:
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1032], rax
 jmp xchain0_n53_α
 xchain0_n49_β:
 jmp xchain0_n10_α
 xchain0_n50_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 call str_concat_d@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n54_α
 xchain0_n50_β:
 jmp xchain0_n32_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n51_α:
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + xchain0_n42_α]
 mov qword ptr [r12 + 512], rax
 jmp xchain0_n42_α
 xchain0_n51_β:
 jmp xchain0_n42_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n52_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n32_α
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain0_n55_α
 xchain0_n52_β:
 jmp xchain0_n32_α
 xchain0_n53_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1296]
 mov rsi, qword ptr [r12 + 1304]
 mov rdx, qword ptr [r12 + 1328]
 mov rcx, qword ptr [r12 + 1336]
 call str_concat_d@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain0_n56_α
 xchain0_n53_β:
 jmp xchain0_n10_α
 xchain0_n54_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 call str_concat_d@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n57_α
 xchain0_n54_β:
 jmp xchain0_n32_α
# IR_VAR
 xchain0_n55_α:
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 408], rax
 jmp xchain0_n58_α
 xchain0_n55_β:
 jmp xchain0_n32_α
 xchain0_n56_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 992]
 mov rdx, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain0_n59_α
 xchain0_n56_β:
 jmp xchain0_n10_α
# IR_ASSIGN_VAR write through variable
 xchain0_n57_α:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 208]
 mov rcx, qword ptr [r12 + 216]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n32_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain0_n60_α
 xchain0_n57_β:
 jmp xchain0_n32_α
# IR_LIT_STRING
 xchain0_n58_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain0_n61_α
 xchain0_n58_β:
 jmp xchain0_n32_α
.Lx88_0:
 .quad .Lx88_0_s
.Lx88_0_s:
 .string "("
 xchain0_n59_α:
 jmp xchain0_n10_α
xchain0_n59_β:
 jmp xchain0_n10_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n60_α:
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 120], rax
 lea rax, [rip + xchain0_n32_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain0_n62_α
 xchain0_n60_β:
 jmp xchain0_n32_α
 xchain0_n61_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1296]
 mov rsi, qword ptr [r12 + 1304]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 call str_concat_d@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain0_n64_α
 xchain0_n61_β:
 jmp xchain0_n32_α
 xchain0_n62_α:
 jmp xchain0_n65_α
xchain0_n62_β:
 jmp xchain0_n32_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n63_α:
 jmp qword ptr [r12 + 128]
 xchain0_n63_β:
 jmp xchain0_n32_α
# IR_VAR
 xchain0_n64_α:
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 456], rax
 jmp xchain0_n66_α
 xchain0_n64_β:
 jmp xchain0_n32_α
# IR_GEN_SCAN
 xchain0_n65_α:
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp proc_tabulate_γ
 xchain0_n65_β:
 jmp proc_tabulate_ω
# IR_LIT_INTEGER
 xchain0_n66_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx00001_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n67_α
 xchain0_n66_β:
 jmp xchain0_n32_α
.Lx00001_0:
 .quad 1
 xchain0_n67_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1312]
 cmp eax, 100
 je .Lx00002_0
 mov eax, dword ptr [r12 + 464]
 cmp eax, 100
 je .Lx00002_0
 mov eax, dword ptr [r12 + 1312]
 cmp eax, 6
 jne .Lx00002_2
 mov eax, dword ptr [r12 + 464]
 cmp eax, 6
 jne .Lx00002_2
.Lx00002_1:
 mov rax, qword ptr [r12 + 1320]
 mov rcx, qword ptr [r12 + 472]
 add rax, rcx
 mov qword ptr [r12 + 432], 6
 mov qword ptr [r12 + 440], rax
 jmp xchain0_n68_α
.Lx00002_0:
 mov rdi, qword ptr [r12 + 1312]
 mov rsi, qword ptr [r12 + 1320]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 mov r8d, 0
 lea r9, [r12 + 432]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00002_3
.Lx00002_2:
 mov rdi, qword ptr [r12 + 1312]
 mov rsi, qword ptr [r12 + 1320]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n32_α
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
.Lx00002_3:
 jmp xchain0_n68_α
 xchain0_n67_β:
 jmp xchain0_n32_α
 xchain0_n68_α:
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
 jmp xchain0_n32_α
# IR_LIT_STRING
 xchain0_n69_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx00003_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain0_n70_α
 xchain0_n69_β:
 jmp xchain0_n32_α
.Lx00003_0:
 .quad .Lx00003_0_s
.Lx00003_0_s:
 .string "), "
 xchain0_n70_α:
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
 jmp xchain0_n32_α
# IR_ASSIGN_VAR write through variable
 xchain0_n71_α:
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n32_α
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain0_n72_α
 xchain0_n71_β:
 jmp xchain0_n32_α
 xchain0_n72_α:
 jmp xchain0_n73_α
xchain0_n72_β:
 jmp xchain0_n32_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n73_α:
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 120], rax
 lea rax, [rip + xchain0_n32_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain0_n62_α
 xchain0_n73_β:
 jmp xchain0_n32_α
proc_tabulate_β:
jmp proc_tabulate_ω
proc_tabulate_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1280]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 736], rax
 pop rsi
proc_format_α_body:
# IR_VAR
 xchain00004_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 168], rax
 jmp xchain00004_n1_α
 xchain00004_n0_β:
 jmp xchain00004_n2_α
# IR_UNOP
 xchain00004_n1_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00004_n3_α
 xchain00004_n1_β:
 jmp xchain00004_n2_α
# IR_VAR
 xchain00004_n2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00004_n4_α
 xchain00004_n2_β:
 jmp proc_format_ω
# IR_VAR gva
 xchain00004_n3_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00004_n5_α
 xchain00004_n3_β:
 jmp xchain00004_n2_α
# IR_LIT_INTEGER
 xchain00004_n4_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00005_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00004_n6_α
 xchain00004_n4_β:
 jmp proc_format_ω
.Lx00005_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00004_n5_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx00006_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00004_n7_α
 xchain00004_n5_β:
 jmp xchain00004_n2_α
.Lx00006_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00004_n6_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00007_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00004_n8_α
 xchain00004_n6_β:
 jmp proc_format_ω
.Lx00007_0:
 .quad 18446744073709551614
 xchain00004_n7_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 192]
 cmp eax, 100
 je .Lx00008_0
 mov eax, dword ptr [r12 + 208]
 cmp eax, 100
 je .Lx00008_0
 mov eax, dword ptr [r12 + 192]
 cmp eax, 6
 jne .Lx00008_2
 mov eax, dword ptr [r12 + 208]
 cmp eax, 6
 jne .Lx00008_2
.Lx00008_1:
 mov rax, qword ptr [r12 + 200]
 mov rcx, qword ptr [r12 + 216]
 add rax, rcx
 mov qword ptr [r12 + 176], 6
 mov qword ptr [r12 + 184], rax
 jmp xchain00004_n9_α
.Lx00008_0:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, qword ptr [r12 + 208]
 mov rcx, qword ptr [r12 + 216]
 mov r8d, 0
 lea r9, [r12 + 176]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00008_3
.Lx00008_2:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, qword ptr [r12 + 208]
 mov rcx, qword ptr [r12 + 216]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00004_n2_α
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
.Lx00008_3:
 jmp xchain00004_n9_α
 xchain00004_n7_β:
 jmp xchain00004_n2_α
# IR_SUBSCRIPT section
 xchain00004_n8_α:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 mov r8, qword ptr [r12 + 112]
 mov r9, qword ptr [r12 + 120]
 call subscript_get2@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain00004_n10_α
 xchain00004_n8_β:
 jmp proc_format_ω
 xchain00004_n9_α:
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
 jle xchain00004_n2_α
 mov rcx, qword ptr [r12 + 176]
 mov qword ptr [r12 + 128], rcx
 mov rcx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 136], rcx
 jmp xchain00004_n11_α
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
 je xchain00004_n2_α
 jmp xchain00004_n11_α
.Lx00009_2:
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00004_n2_α
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 136], rax
 jmp xchain00004_n11_α
 xchain00004_n9_β:
 jmp xchain00004_n2_α
 xchain00004_n10_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+64] -> [r12+48]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lrkfn123: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn123]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je proc_format_ω
 jmp proc_format_γ
 xchain00004_n10_β:
 jmp proc_format_ω
# IR_VAR gva
 xchain00004_n11_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00004_n12_α
 xchain00004_n11_β:
 jmp xchain00004_n13_α
# IR_LIT_INTEGER
 xchain00004_n12_α:
 mov qword ptr [r12 + 720], 6
 mov rax, qword ptr [rip + .Lx00010_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain00004_n14_α
 xchain00004_n12_β:
 jmp xchain00004_n13_α
.Lx00010_0:
 .quad 2
# IR_VAR_REF local
 xchain00004_n13_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00004_n15_α
 xchain00004_n13_β:
 jmp xchain00004_n13_α
 xchain00004_n14_α:
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
 jmp xchain00004_n16_α
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
 je xchain00004_n13_α
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
.Lx00011_3:
 jmp xchain00004_n16_α
 xchain00004_n14_β:
 jmp xchain00004_n13_α
# IR_VAR
 xchain00004_n15_α:
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 600], rax
 jmp xchain00004_n17_α
 xchain00004_n15_β:
 jmp xchain00004_n13_α
 xchain00004_n16_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 688]
 mov rdx, qword ptr [r12 + 696]
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00004_n13_α
 xchain00004_n16_β:
 jmp xchain00004_n13_α
# IR_LIT_INTEGER
 xchain00004_n17_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx00012_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00004_n18_α
 xchain00004_n17_β:
 jmp xchain00004_n13_α
.Lx00012_0:
 .quad 1
 xchain00004_n18_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 752]
 cmp eax, 100
 je .Lx00013_0
 mov eax, dword ptr [r12 + 608]
 cmp eax, 100
 je .Lx00013_0
 mov eax, dword ptr [r12 + 752]
 cmp eax, 6
 jne .Lx00013_2
 mov eax, dword ptr [r12 + 608]
 cmp eax, 6
 jne .Lx00013_2
.Lx00013_1:
 mov rax, qword ptr [r12 + 760]
 mov rcx, qword ptr [r12 + 616]
 sub rax, rcx
 mov qword ptr [r12 + 576], 6
 mov qword ptr [r12 + 584], rax
 jmp xchain00004_n19_α
.Lx00013_0:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 1
 lea r9, [r12 + 576]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00013_3
.Lx00013_2:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00004_n13_α
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
.Lx00013_3:
 jmp xchain00004_n19_α
 xchain00004_n18_β:
 jmp xchain00004_n13_α
 xchain00004_n19_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00004_n20_α
 xchain00004_n19_β:
 jmp xchain00004_n13_α
# IR_SUBSCRIPT x[i] variable
 xchain00004_n20_α:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00004_n13_α
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00004_n21_α
 xchain00004_n20_β:
 jmp xchain00004_n13_α
# IR_DEREF variable -> value
 xchain00004_n21_α:
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00004_n13_α
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00004_n22_α
 xchain00004_n21_β:
 jmp xchain00004_n13_α
# IR_LIT_STRING
 xchain00004_n22_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00014_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00004_n23_α
 xchain00004_n22_β:
 jmp xchain00004_n13_α
.Lx00014_0:
 .quad .Lx00014_0_s
.Lx00014_0_s:
 .string " "
 xchain00004_n23_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 656]
 mov rcx, qword ptr [r12 + 664]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00004_n13_α
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00004_n24_α
 xchain00004_n23_β:
 jmp xchain00004_n13_α
# IR_VAR
 xchain00004_n24_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 488], rax
 jmp xchain00004_n25_α
 xchain00004_n24_β:
 jmp xchain00004_n26_α
# IR_LIT_INTEGER
 xchain00004_n25_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx00015_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00004_n27_α
 xchain00004_n25_β:
 jmp xchain00004_n26_α
.Lx00015_0:
 .quad 1
# IR_LIT_STRING
 xchain00004_n26_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx00016_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00004_n28_α
 xchain00004_n26_β:
 jmp xchain00004_n0_α
.Lx00016_0:
 .quad .Lx00016_0_s
.Lx00016_0_s:
 .string " "
# IR_VAR
 xchain00004_n27_α:
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 520], rax
 jmp xchain00004_n29_α
 xchain00004_n27_β:
 jmp xchain00004_n26_α
# IR_VAR gva
 xchain00004_n28_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00004_n30_α
 xchain00004_n28_β:
 jmp xchain00004_n0_α
# IR_SUBSCRIPT section
 xchain00004_n29_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 mov r8, qword ptr [r12 + 512]
 mov r9, qword ptr [r12 + 520]
 call subscript_get2@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00004_n31_α
 xchain00004_n29_β:
 jmp xchain00004_n26_α
 xchain00004_n30_α:
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
  .Lrkfn148: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn148]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain00004_n0_α
 jmp xchain00004_n32_α
 xchain00004_n30_β:
 jmp xchain00004_n0_α
 xchain00004_n31_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+464] -> [r12+448]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn150: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn150]
 lea rsi, [r12 + 448]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain00004_n26_α
 jmp xchain00004_n26_α
 xchain00004_n31_β:
 jmp xchain00004_n26_α
# IR_VAR
 xchain00004_n32_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 360], rax
 jmp xchain00004_n33_α
 xchain00004_n32_β:
 jmp xchain00004_n0_α
# IR_VAR
 xchain00004_n33_α:
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 392], rax
 jmp xchain00004_n34_α
 xchain00004_n33_β:
 jmp xchain00004_n0_α
# IR_LIT_INTEGER
 xchain00004_n34_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00017_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00004_n35_α
 xchain00004_n34_β:
 jmp xchain00004_n0_α
.Lx00017_0:
 .quad 1
 xchain00004_n35_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 752]
 cmp eax, 100
 je .Lx00018_0
 mov eax, dword ptr [r12 + 400]
 cmp eax, 100
 je .Lx00018_0
 mov eax, dword ptr [r12 + 752]
 cmp eax, 6
 jne .Lx00018_2
 mov eax, dword ptr [r12 + 400]
 cmp eax, 6
 jne .Lx00018_2
.Lx00018_1:
 mov rax, qword ptr [r12 + 760]
 mov rcx, qword ptr [r12 + 408]
 add rax, rcx
 mov qword ptr [r12 + 368], 6
 mov qword ptr [r12 + 376], rax
 jmp xchain00004_n36_α
.Lx00018_0:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 0
 lea r9, [r12 + 368]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00018_3
.Lx00018_2:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00004_n0_α
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
.Lx00018_3:
 jmp xchain00004_n36_α
 xchain00004_n35_β:
 jmp xchain00004_n0_α
# IR_LIT_INTEGER
 xchain00004_n36_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00019_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00004_n37_α
 xchain00004_n36_β:
 jmp xchain00004_n0_α
.Lx00019_0:
 .quad 0
# IR_SUBSCRIPT section
 xchain00004_n37_α:
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
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 736]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 752], rax
 pop rsi
proc_item_α_body:
lea rax, [rip + xchain00020_n34_β]
mov qword ptr [r12 + 736], rax
 xchain00020_n0_α:
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
 jmp xchain00020_n1_α
 xchain00020_n0_β:
 jmp proc_item_ω
 xchain00020_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00020_n2_α
 xchain00020_n1_β:
 jmp proc_item_ω
# IR_VAR gva
 xchain00020_n2_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00020_n3_α
 xchain00020_n2_β:
 jmp xchain00020_n4_α
# IR_LIT_INTEGER
 xchain00020_n3_α:
 mov qword ptr [r12 + 720], 6
 mov rax, qword ptr [rip + .Lx00021_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain00020_n5_α
 xchain00020_n3_β:
 jmp xchain00020_n4_α
.Lx00021_0:
 .quad 1
# IR_VAR gva
 xchain00020_n4_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00020_n6_α
 xchain00020_n4_β:
 jmp xchain00020_n7_α
 xchain00020_n5_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 704]
 cmp eax, 100
 je .Lx00022_0
 mov eax, dword ptr [r12 + 720]
 cmp eax, 100
 je .Lx00022_0
 mov eax, dword ptr [r12 + 704]
 cmp eax, 6
 jne .Lx00022_2
 mov eax, dword ptr [r12 + 720]
 cmp eax, 6
 jne .Lx00022_2
.Lx00022_1:
 mov rax, qword ptr [r12 + 712]
 mov rcx, qword ptr [r12 + 728]
 add rax, rcx
 mov qword ptr [r12 + 688], 6
 mov qword ptr [r12 + 696], rax
 jmp xchain00020_n8_α
.Lx00022_0:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 720]
 mov rcx, qword ptr [r12 + 728]
 mov r8d, 0
 lea r9, [r12 + 688]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00022_3
.Lx00022_2:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 720]
 mov rcx, qword ptr [r12 + 728]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00020_n4_α
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
.Lx00022_3:
 jmp xchain00020_n8_α
 xchain00020_n5_β:
 jmp xchain00020_n4_α
# IR_LIT_INTEGER
 xchain00020_n6_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx00023_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain00020_n9_α
 xchain00020_n6_β:
 jmp xchain00020_n7_α
.Lx00023_0:
 .quad 6
# IR_VAR
 xchain00020_n7_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 488], rax
 jmp xchain00020_n10_α
 xchain00020_n7_β:
 jmp xchain00020_n11_α
# IR_ASSIGN gva
 xchain00020_n8_α:
 mov rax, qword ptr [r12 + 688]
 mov rdx, qword ptr [r12 + 696]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00020_n4_α
 xchain00020_n8_β:
 jmp xchain00020_n4_α
 xchain00020_n9_α:
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
  .Lrkfn175: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn175]
 lea rsi, [r12 + 576]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain00020_n7_α
 jmp xchain00020_n12_α
 xchain00020_n9_β:
 jmp xchain00020_n7_α
 xchain00020_n10_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+480] -> [r12+464]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn177: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn177]
 lea rsi, [r12 + 464]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain00020_n11_α
 jmp xchain00020_n13_α
 xchain00020_n10_β:
 jmp xchain00020_n11_α
# IR_LIT_INTEGER
 xchain00020_n11_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00024_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00020_n14_α
 xchain00020_n11_β:
 jmp xchain00020_n16_α
.Lx00024_0:
 .quad 1
# IR_LIT_STRING
 xchain00020_n12_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx00025_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00020_n15_α
 xchain00020_n12_β:
 jmp xchain00020_n7_α
.Lx00025_0:
 .quad .Lx00025_0_s
.Lx00025_0_s:
 .string "  "
 xchain00020_n13_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00020_n11_α
 xchain00020_n13_β:
 jmp xchain00020_n11_α
 xchain00020_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00020_n16_α
 xchain00020_n14_β:
 jmp xchain00020_n16_α
# IR_VAR
 xchain00020_n15_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 664], rax
 jmp xchain00020_n17_α
 xchain00020_n15_β:
 jmp xchain00020_n7_α
# IR_VAR
 xchain00020_n16_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 392], rax
 jmp xchain00020_n18_α
 xchain00020_n16_β:
 jmp xchain00020_n0_α
 xchain00020_n17_α:
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
  .Lrkfn187: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn187]
 lea rsi, [r12 + 512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain00020_n7_α
 jmp xchain00020_n7_α
 xchain00020_n17_β:
 jmp xchain00020_n7_α
# IR_GEN_SCAN
 xchain00020_n18_α:
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00020_n19_α
 xchain00020_n18_β:
 jmp xchain00020_n0_α
# IR_LIT_CHARSET
 xchain00020_n19_α:
 mov qword ptr [r12 + 176], 1
 mov dword ptr [r12 + 180], -1
 mov rax, qword ptr [rip + .Lx00026_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00020_n20_α
 xchain00020_n19_β:
 jmp xchain00020_n25_α
.Lx00026_0:
 .quad .Lx00026_0_s
.Lx00026_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
# IR_SCAN_UPTO
 xchain00020_n20_α:
 mov qword ptr [r12 + 160], r14
.Lx00027_0:
 mov rax, qword ptr [r12 + 160]
 cmp rax, r15
 jge xchain00020_n25_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00027_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00027_1
 mov qword ptr [r12 + 144], 6
 add rax, 1
 mov qword ptr [r12 + 152], rax
 jmp xchain00020_n21_α
.Lx00027_1:
 inc qword ptr [r12 + 160]
 jmp .Lx00027_0
 xchain00020_n20_β:
 inc qword ptr [r12 + 160]
 jmp .Lx00027_0
.Lx00027_2:
 .quad .Lx00027_2_s
.Lx00027_2_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
# IR_SCAN_TAB
 xchain00020_n21_α:
 mov rax, qword ptr [r12 + 152]
 cmp rax, 1
 jge .Lx00028_0
 add rax, r15
 add rax, 1
.Lx00028_0:
 cmp rax, 1
 jl xchain00020_n25_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00020_n25_α
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
 jmp xchain00020_n22_α
 xchain00020_n21_β:
 mov r14, qword ptr [r12 + 128]
 jmp xchain00020_n25_α
# IR_LIT_CHARSET
 xchain00020_n22_α:
 mov qword ptr [r12 + 368], 1
 mov dword ptr [r12 + 372], -1
 mov rax, qword ptr [rip + .Lx00029_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00020_n24_α
 xchain00020_n22_β:
 jmp xchain00020_n29_α
.Lx00029_0:
 .quad .Lx00029_0_s
.Lx00029_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00020_n23_α:
 jmp xchain00020_n25_α
xchain00020_n23_β:
 jmp xchain00020_n25_α
# IR_SCAN_MANY
 xchain00020_n24_α:
 mov eax, r14d
.Lx00030_0:
 cmp eax, r15d
 jge .Lx00030_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00030_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00030_1
 add eax, 1
 jmp .Lx00030_0
.Lx00030_1:
 cmp eax, r14d
 je xchain00020_n29_α
 mov qword ptr [r12 + 352], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 360], rcx
 jmp xchain00020_n26_α
 xchain00020_n24_β:
 jmp xchain00020_n29_α
.Lx00030_2:
 .quad .Lx00030_2_s
.Lx00030_2_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
# IR_GEN_SCAN
 xchain00020_n25_α:
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain00020_n27_α
 xchain00020_n25_β:
 jmp xchain00020_n0_α
# IR_SCAN_TAB
 xchain00020_n26_α:
 mov rax, qword ptr [r12 + 360]
 cmp rax, 1
 jge .Lx00031_0
 add rax, r15
 add rax, 1
.Lx00031_0:
 cmp rax, 1
 jl xchain00020_n29_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00020_n29_α
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
 jmp xchain00020_n28_α
 xchain00020_n26_β:
 mov r14, qword ptr [r12 + 336]
 jmp xchain00020_n29_α
 xchain00020_n27_α:
 jmp xchain00020_n0_α
xchain00020_n27_β:
 jmp xchain00020_n0_α
 xchain00020_n28_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00020_n29_α
 xchain00020_n28_β:
 jmp xchain00020_n29_α
# IR_VAR
 xchain00020_n29_α:
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 280], rax
 jmp xchain00020_n30_α
 xchain00020_n29_β:
 jmp xchain00020_n19_α
# IR_UNOP
 xchain00020_n30_α:
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 call rt_size_d@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00020_n31_α
 xchain00020_n30_β:
 jmp xchain00020_n19_α
# IR_LIT_INTEGER
 xchain00020_n31_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx00032_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00020_n32_α
 xchain00020_n31_β:
 jmp xchain00020_n19_α
.Lx00032_0:
 .quad 3
 xchain00020_n32_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 256]
 cmp eax, 100
 je .Lx00033_0
 mov eax, dword ptr [r12 + 288]
 cmp eax, 100
 je .Lx00033_0
 mov eax, dword ptr [r12 + 256]
 cmp eax, 6
 jne .Lx00033_2
 mov eax, dword ptr [r12 + 288]
 cmp eax, 6
 jne .Lx00033_2
.Lx00033_1:
 mov rax, qword ptr [r12 + 264]
 mov rcx, qword ptr [r12 + 296]
 cmp rax, rcx
 jl xchain00020_n19_α
 mov rcx, qword ptr [r12 + 288]
 mov qword ptr [r12 + 240], rcx
 mov rcx, qword ptr [r12 + 296]
 mov qword ptr [r12 + 248], rcx
 jmp xchain00020_n33_α
.Lx00033_0:
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 mov r8d, 8
 lea r9, [r12 + 240]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00033_1
 cmp eax, 1
 je xchain00020_n19_α
 jmp xchain00020_n33_α
.Lx00033_2:
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 mov r8d, 8
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00020_n19_α
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 248], rax
 jmp xchain00020_n33_α
 xchain00020_n32_β:
 jmp xchain00020_n19_α
# IR_VAR
 xchain00020_n33_α:
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 232], rax
 jmp xchain00020_n34_α
 xchain00020_n33_β:
 jmp proc_item_ω
# IR_SUSPEND yield+resume
 xchain00020_n34_α:
 lea rax, [rip + xchain00020_n34_β]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 8], rax
 jmp proc_item_γ
 xchain00020_n34_β:
 jmp xchain00020_n35_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00020_n35_α:
 lea rax, [rip + proc_item_ω]
 mov qword ptr [r12 + 208], rax
 jmp xchain00020_n36_α
 xchain00020_n35_β:
 jmp xchain00020_n19_α
 xchain00020_n36_α:
 jmp xchain00020_n19_α
xchain00020_n36_β:
 jmp xchain00020_n19_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00020_n37_α:
 jmp qword ptr [r12 + 208]
 xchain00020_n37_β:
 jmp xchain00020_n19_α
proc_item_β:
jmp qword ptr [r12 + 736]
proc_item_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 752]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
# IR_LIT_STRING
 xchain00034_n0_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx00035_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain00034_n1_α
 xchain00034_n0_β:
 jmp xchain00034_n2_α
.Lx00035_0:
 .quad .Lx00035_0_s
.Lx00035_0_s:
 .string "concord"
 xchain00034_n1_α:
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
 je xchain00034_n2_α
 jmp xchain00034_n2_α
xchain00034_n1_β:
 jmp xchain00034_n2_α
# IR_VAR
 xchain00034_n2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 920], rax
 jmp xchain00034_n3_α
 xchain00034_n2_β:
 jmp xchain00034_n4_α
# IR_LIT_STRING
 xchain00034_n3_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx00036_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain00034_n5_α
 xchain00034_n3_β:
 jmp xchain00034_n4_α
.Lx00036_0:
 .quad .Lx00036_0_s
.Lx00036_0_s:
 .string "l+w+"
# IR_VAR_REF local
 xchain00034_n4_α:
 lea rdi, [r12 + 1040]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00034_n6_α
 xchain00034_n4_β:
 jmp xchain00034_n10_α
 xchain00034_n5_α:
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
  .Lbynamefn229: .string "options"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn229]
 lea rsi, [r12 + 880]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain00034_n4_α
 jmp xchain00034_n7_α
xchain00034_n5_β:
 jmp xchain00034_n4_α
# IR_LIT_STRING
 xchain00034_n6_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx00037_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain00034_n8_α
 xchain00034_n6_β:
 jmp xchain00034_n10_α
.Lx00037_0:
 .quad .Lx00037_0_s
.Lx00037_0_s:
 .string "l"
 xchain00034_n7_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 864]
 mov rdx, qword ptr [r12 + 872]
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain00034_n4_α
 xchain00034_n7_β:
 jmp xchain00034_n4_α
# IR_SUBSCRIPT x[i] variable
 xchain00034_n8_α:
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00034_n10_α
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00034_n9_α
 xchain00034_n8_β:
 jmp xchain00034_n10_α
# IR_DEREF variable -> value
 xchain00034_n9_α:
 mov rdi, qword ptr [r12 + 816]
 mov rsi, qword ptr [r12 + 824]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00034_n10_α
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00034_n11_α
 xchain00034_n9_β:
 jmp xchain00034_n10_α
# IR_LIT_INTEGER
 xchain00034_n10_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx00038_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain00034_n12_α
 xchain00034_n10_β:
 jmp xchain00034_n15_α
.Lx00038_0:
 .quad 72
# IR_UNOP
 xchain00034_n11_α:
 mov eax, dword ptr [r12 + 832]
 cmp eax, 99
 je xchain00034_n10_α
 cmp eax, 0
 je xchain00034_n10_α
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 776], rax
 jmp xchain00034_n13_α
 xchain00034_n11_β:
 jmp xchain00034_n10_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00034_n12_α:
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
 lea rax, [rip + xchain00034_n15_α]
 mov qword ptr [r12 + 736], rax
 jmp xchain00034_n14_α
 xchain00034_n12_β:
 jmp xchain00034_n15_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00034_n13_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 728], rax
 lea rax, [rip + xchain00034_n10_α]
 mov qword ptr [r12 + 736], rax
 jmp xchain00034_n14_α
 xchain00034_n13_β:
 jmp xchain00034_n15_α
# IR_ASSIGN gva
 xchain00034_n14_α:
 mov rax, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00034_n15_α
 xchain00034_n14_β:
 jmp xchain00034_n15_α
# IR_VAR_REF local
 xchain00034_n15_α:
 lea rdi, [r12 + 1040]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00034_n17_α
 xchain00034_n15_β:
 jmp xchain00034_n20_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00034_n16_α:
 jmp qword ptr [r12 + 736]
 xchain00034_n16_β:
 jmp xchain00034_n15_α
# IR_LIT_STRING
 xchain00034_n17_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00039_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00034_n18_α
 xchain00034_n17_β:
 jmp xchain00034_n20_α
.Lx00039_0:
 .quad .Lx00039_0_s
.Lx00039_0_s:
 .string "w"
# IR_SUBSCRIPT x[i] variable
 xchain00034_n18_α:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 656]
 mov rcx, qword ptr [r12 + 664]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00034_n20_α
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00034_n19_α
 xchain00034_n18_β:
 jmp xchain00034_n20_α
# IR_DEREF variable -> value
 xchain00034_n19_α:
 mov rdi, qword ptr [r12 + 672]
 mov rsi, qword ptr [r12 + 680]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00034_n20_α
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00034_n21_α
 xchain00034_n19_β:
 jmp xchain00034_n20_α
# IR_LIT_INTEGER
 xchain00034_n20_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx00040_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00034_n22_α
 xchain00034_n20_β:
 jmp xchain00034_n25_α
.Lx00040_0:
 .quad 15
# IR_UNOP
 xchain00034_n21_α:
 mov eax, dword ptr [r12 + 688]
 cmp eax, 99
 je xchain00034_n20_α
 cmp eax, 0
 je xchain00034_n20_α
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 632], rax
 jmp xchain00034_n23_α
 xchain00034_n21_β:
 jmp xchain00034_n20_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00034_n22_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
 lea rax, [rip + xchain00034_n25_α]
 mov qword ptr [r12 + 592], rax
 jmp xchain00034_n24_α
 xchain00034_n22_β:
 jmp xchain00034_n25_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00034_n23_α:
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 584], rax
 lea rax, [rip + xchain00034_n20_α]
 mov qword ptr [r12 + 592], rax
 jmp xchain00034_n24_α
 xchain00034_n23_β:
 jmp xchain00034_n25_α
# IR_ASSIGN gva
 xchain00034_n24_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00034_n25_α
 xchain00034_n24_β:
 jmp xchain00034_n25_α
# IR_LIT_STRING
 xchain00034_n25_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx00041_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain00034_n27_α
 xchain00034_n25_β:
 jmp xchain00034_n29_α
.Lx00041_0:
 .quad .Lx00041_0_s
.Lx00041_0_s:
 .string ""
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00034_n26_α:
 jmp qword ptr [r12 + 592]
 xchain00034_n26_β:
 jmp xchain00034_n25_α
 xchain00034_n27_α:
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
 je xchain00034_n29_α
 jmp xchain00034_n28_α
 xchain00034_n27_β:
 jmp xchain00034_n29_α
# IR_ASSIGN gva
 xchain00034_n28_α:
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00034_n29_α
 xchain00034_n28_β:
 jmp xchain00034_n29_α
# IR_LIT_INTEGER
 xchain00034_n29_α:
 mov qword ptr [r12 + 480], 6
 mov rax, qword ptr [rip + .Lx00042_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain00034_n30_α
 xchain00034_n29_β:
 jmp xchain00034_n31_α
.Lx00042_0:
 .quad 0
# IR_ASSIGN gva
 xchain00034_n30_α:
 mov rax, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00034_n31_α
 xchain00034_n30_β:
 jmp xchain00034_n31_α
 xchain00034_n31_α:
  .section .rodata
  .Lcall00043_pname: .string "item"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00043_pname]
 mov esi, 0
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain00034_n33_α
 jmp xchain00034_n32_α
xchain00034_n31_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain00034_n33_α
 jmp xchain00034_n32_α
# IR_VAR gva
 xchain00034_n32_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00034_n34_α
 xchain00034_n32_β:
 jmp xchain00034_n31_β
# IR_VAR gva
 xchain00034_n33_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00034_n35_α
 xchain00034_n33_β:
 jmp xchain00034_n36_α
 xchain00034_n34_α:
  .section .rodata
  .Lcall00044_pname: .string "tabulate"
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
   lea rdi, [rip + .Lcall00044_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain00034_n33_α
 jmp xchain00034_n31_β
xchain00034_n34_β:
 jmp xchain00034_n33_α
# IR_LIT_INTEGER
 xchain00034_n35_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00045_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00034_n37_α
 xchain00034_n35_β:
 jmp xchain00034_n36_α
.Lx00045_0:
 .quad 3
# IR_VAR
 xchain00034_n36_α:
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 104], rax
 jmp xchain00034_n38_α
 xchain00034_n36_β:
 jmp xchain00034_n39_α
 xchain00034_n37_α:
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
  .Lrkfn271: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn271]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain00034_n36_α
 jmp xchain00034_n40_α
 xchain00034_n37_β:
 jmp xchain00034_n36_α
 xchain00034_n38_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+80]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn273: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn273]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00034_n39_α
 jmp xchain00034_n41_α
 xchain00034_n38_β:
 jmp xchain00034_n39_α
 xchain00034_n39_α:
# BOX IR_CALL Term__(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn275: .string "Term__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn275]
 lea rsi, [r12 + 48]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain00034_n39_β:
 jmp main_ω
 xchain00034_n40_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00034_n36_α
 xchain00034_n40_β:
 jmp xchain00034_n36_α
 xchain00034_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00034_n42_α
 xchain00034_n41_β:
 jmp xchain00034_n39_α
# IR_VAR
 xchain00034_n42_α:
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 216], rax
 jmp xchain00034_n43_α
 xchain00034_n42_β:
 jmp xchain00034_n36_α
# IR_VAR gva
 xchain00034_n43_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00034_n44_α
 xchain00034_n43_β:
 jmp xchain00034_n36_α
 xchain00034_n44_α:
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
 je xchain00034_n36_α
 jmp xchain00034_n45_α
 xchain00034_n44_β:
 jmp xchain00034_n36_α
# IR_VAR
 xchain00034_n45_α:
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 280], rax
 jmp xchain00034_n46_α
 xchain00034_n45_β:
 jmp xchain00034_n36_α
 xchain00034_n46_α:
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
 je xchain00034_n36_α
 jmp xchain00034_n47_α
 xchain00034_n46_β:
 jmp xchain00034_n36_α
 xchain00034_n47_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 call str_concat_d@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00034_n48_α
 xchain00034_n47_β:
 jmp xchain00034_n36_α
 xchain00034_n48_α:
  .section .rodata
  .Lcall00031_pname: .string "format"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00031_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00034_n36_α
 jmp xchain00034_n36_α
xchain00034_n48_β:
 jmp xchain00034_n36_α
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
pop r12
ret
