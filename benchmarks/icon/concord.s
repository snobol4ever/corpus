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
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1248]
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
# marshal arg0 = producer-box slot [zr+64] -> [zr+48]
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
# marshal arg0 = producer-box slot [zr+464] -> [zr+448]
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
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
# marshal arg0 = producer-box slot [zr+608] -> [zr+576]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+592]
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
# marshal arg0 = producer-box slot [zr+480] -> [zr+464]
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
# marshal arg0 = producer-box slot [zr+560] -> [zr+512]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+528]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 536], rax
# marshal arg2 = producer-box slot [zr+656] -> [zr+544]
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
mov rsp, rbp
pop rbp
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
# IR_VAR_REF local
 xchain00034_n0_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 jmp xchain00034_n1_α
 xchain00034_n0_β:
 jmp xchain00034_n3_α
# IR_UNOP_TEST lv
 xchain00034_n1_α:
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 99
 je xchain00034_n3_α
 mov rdi, qword ptr [r12 + 2272]
 mov rsi, qword ptr [r12 + 2280]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00034_n3_α
 cmp eax, 0
 jne xchain00034_n3_α
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 2288], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2296], rax
 jmp xchain00034_n2_α
 xchain00034_n1_β:
 jmp xchain00034_n3_α
# IR_LIT_CHARSET
 xchain00034_n2_α:
 mov qword ptr [r12 + 2352], 1
 mov dword ptr [r12 + 2356], -1
 mov rax, qword ptr [rip + .Lx00035_0]
 mov qword ptr [r12 + 2360], rax
 jmp xchain00034_n4_α
 xchain00034_n2_β:
 jmp xchain00034_n3_α
.Lx00035_0:
 .quad .Lx00035_0_s
.Lx00035_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00034_n3_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn225: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn225]
 lea rsi, [r12 + 2272]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 cmp eax, 99
 je xchain00034_n6_α
 jmp xchain00034_n5_α
 xchain00034_n3_β:
 jmp xchain00034_n6_α
 xchain00034_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2352] -> [zr+2336]
 mov rax, qword ptr [r12 + 2352]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 2360]
 mov qword ptr [r12 + 2344], rax
  .section .rodata
  .Lrkfn227: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn227]
 lea rsi, [r12 + 2336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 cmp eax, 99
 je xchain00034_n3_α
 jmp xchain00034_n7_α
 xchain00034_n4_β:
 jmp xchain00034_n3_α
 xchain00034_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2256]
 mov rdx, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain00034_n6_α
 xchain00034_n5_β:
 jmp xchain00034_n6_α
# IR_MAKE_LIST
 xchain00034_n6_α:
 lea rdi, [r12 + 2240]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 jmp xchain00034_n8_α
 xchain00034_n6_β:
 jmp xchain00034_n9_α
# IR_ASSIGN_VAR write through variable
 xchain00034_n7_α:
 mov rdi, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 mov rdx, qword ptr [r12 + 2320]
 mov rcx, qword ptr [r12 + 2328]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00034_n3_α
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 jmp xchain00034_n3_α
 xchain00034_n7_β:
 jmp xchain00034_n3_α
 xchain00034_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2224]
 mov rdx, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 jmp xchain00034_n9_α
 xchain00034_n8_β:
 jmp xchain00034_n9_α
# IR_VAR
 xchain00034_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00034_n10_α
 xchain00034_n9_β:
 jmp xchain00034_n11_α
 xchain00034_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn236: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn236]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain00034_n11_α
 jmp xchain00034_n12_α
 xchain00034_n10_β:
 jmp xchain00034_n11_α
# IR_VAR
 xchain00034_n11_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00034_n13_α
 xchain00034_n11_β:
 jmp xchain00034_n14_α
 xchain00034_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00034_n15_α
 xchain00034_n12_β:
 jmp xchain00034_n11_α
# IR_VAR
 xchain00034_n13_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 168], rax
 jmp xchain00034_n16_α
 xchain00034_n13_β:
 jmp xchain00034_n14_α
# IR_VAR
 xchain00034_n14_α:
 mov rax, qword ptr [r12 + 2384]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 56], rax
 jmp xchain00034_n17_α
 xchain00034_n14_β:
 jmp proc_options_ω
# IR_VAR
 xchain00034_n15_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2200], rax
 jmp xchain00034_n18_α
 xchain00034_n15_β:
 jmp xchain00034_n9_α
 xchain00034_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+144]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn247: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn247]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00034_n14_α
 jmp xchain00034_n19_α
 xchain00034_n16_β:
 jmp xchain00034_n14_α
# IR_RETURN
 xchain00034_n17_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_options_γ
# IR_GEN_SCAN
 xchain00034_n18_α:
 mov rdi, qword ptr [r12 + 2192]
 mov rsi, qword ptr [r12 + 2200]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00034_n20_α
 xchain00034_n18_β:
 jmp xchain00034_n9_α
 xchain00034_n19_α:
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
  .Lrkfn252: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn252]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00034_n14_α
 jmp xchain00034_n11_α
 xchain00034_n19_β:
 jmp xchain00034_n14_α
# IR_LIT_STRING
 xchain00034_n20_α:
 mov qword ptr [r12 + 2176], 1
 mov rax, qword ptr [rip + .Lx00036_0]
 mov qword ptr [r12 + 2184], rax
 jmp xchain00034_n21_α
 xchain00034_n20_β:
 jmp xchain00034_n23_α
.Lx00036_0:
 .quad .Lx00036_0_s
.Lx00036_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00034_n21_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00034_n23_α
 mov rdi, qword ptr [rip + .Lx00037_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00034_n23_α
 mov qword ptr [r12 + 2144], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 2152], rax
 jmp xchain00034_n22_α
 xchain00034_n21_β:
 jmp xchain00034_n23_α
.Lx00037_0:
 .quad .Lx00037_0_s
.Lx00037_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00034_n22_α:
 mov rax, qword ptr [r12 + 2152]
 cmp rax, 1
 jge .Lx00038_0
 add rax, r15
 add rax, 1
.Lx00038_0:
 cmp rax, 1
 jl xchain00034_n23_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00034_n23_α
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
 jmp xchain00034_n24_α
 xchain00034_n22_β:
 mov r14, qword ptr [r12 + 2128]
 jmp xchain00034_n23_α
# IR_VAR
 xchain00034_n23_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 2040], rax
 jmp xchain00034_n25_α
 xchain00034_n23_β:
 jmp xchain00034_n26_α
# IR_LIT_INTEGER
 xchain00034_n24_α:
 mov qword ptr [r12 + 2096], 6
 mov rax, qword ptr [rip + .Lx00039_0]
 mov qword ptr [r12 + 2104], rax
 jmp xchain00034_n27_α
 xchain00034_n24_β:
 jmp xchain00034_n29_α
.Lx00039_0:
 .quad 0
# IR_VAR
 xchain00034_n25_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2056], rax
 jmp xchain00034_n28_α
 xchain00034_n25_β:
 jmp xchain00034_n26_α
# IR_GEN_SCAN
 xchain00034_n26_α:
 lea rdi, [r12 + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 240]
 mov r14, qword ptr [r12 + 248]
 mov r15, qword ptr [r12 + 256]
 jmp xchain00034_n9_α
 xchain00034_n26_β:
 jmp xchain00034_n9_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00034_n27_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00040_0
 add rax, r15
 add rax, 1
.Lx00040_0:
 cmp rax, 1
 jl xchain00034_n29_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00034_n29_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00034_n29_α
 mov qword ptr [r12 + 2080], 6
 mov qword ptr [r12 + 2088], rax
 jmp xchain00034_n23_α
 xchain00034_n27_β:
 jmp xchain00034_n29_α
 xchain00034_n28_α:
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
  .Lrkfn268: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn268]
 lea rsi, [r12 + 2000]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 cmp eax, 99
 je xchain00034_n26_α
 jmp xchain00034_n30_α
 xchain00034_n28_β:
 jmp xchain00034_n26_α
# IR_KEYWORD_null
 xchain00034_n29_α:
 mov qword ptr [r12 + 2064], 0
 mov qword ptr [r12 + 2072], 0
 jmp xchain00034_n31_α
 xchain00034_n29_β:
 jmp xchain00034_n23_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00034_n30_α:
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 312], rax
 lea rax, [rip + xchain00034_n26_α]
 mov qword ptr [r12 + 320], rax
 jmp xchain00034_n32_α
 xchain00034_n30_β:
 jmp xchain00034_n26_α
 xchain00034_n31_α:
 jmp xchain00034_n34_α
xchain00034_n31_β:
 jmp xchain00034_n23_α
# IR_GEN_SCAN
 xchain00034_n32_α:
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
 lea rdi, [r12 + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 240]
 mov r14, qword ptr [r12 + 248]
 mov r15, qword ptr [r12 + 256]
 jmp xchain00034_n9_α
 xchain00034_n32_β:
 jmp xchain00034_n9_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00034_n33_α:
 jmp qword ptr [r12 + 320]
 xchain00034_n33_β:
 jmp xchain00034_n26_α
# IR_LIT_STRING
 xchain00034_n34_α:
 mov qword ptr [r12 + 1968], 1
 mov rax, qword ptr [rip + .Lx00041_0]
 mov qword ptr [r12 + 1976], rax
 jmp xchain00034_n35_α
 xchain00034_n34_β:
 jmp xchain00034_n37_α
.Lx00041_0:
 .quad .Lx00041_0_s
.Lx00041_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00034_n35_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00034_n37_α
 mov rdi, qword ptr [rip + .Lx00042_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00034_n37_α
 mov qword ptr [r12 + 1936], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 1944], rax
 jmp xchain00034_n36_α
 xchain00034_n35_β:
 jmp xchain00034_n37_α
.Lx00042_0:
 .quad .Lx00042_0_s
.Lx00042_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00034_n36_α:
 mov rax, qword ptr [r12 + 1944]
 cmp rax, 1
 jge .Lx00043_0
 add rax, r15
 add rax, 1
.Lx00043_0:
 cmp rax, 1
 jl xchain00034_n37_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00034_n37_α
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
 jmp xchain00034_n38_α
 xchain00034_n36_β:
 mov r14, qword ptr [r12 + 1920]
 jmp xchain00034_n37_α
# IR_LIT_INTEGER
 xchain00034_n37_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00044_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00034_n39_α
 xchain00034_n37_β:
 jmp xchain00034_n45_α
.Lx00044_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00034_n38_α:
 mov qword ptr [r12 + 1888], 6
 mov rax, qword ptr [rip + .Lx00045_0]
 mov qword ptr [r12 + 1896], rax
 jmp xchain00034_n40_α
 xchain00034_n38_β:
 jmp xchain00034_n37_α
.Lx00045_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00034_n39_α:
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00034_n45_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00034_n45_α
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
 jmp xchain00034_n41_α
 xchain00034_n39_β:
 mov r14, qword ptr [r12 + 368]
 jmp xchain00034_n45_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00034_n40_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00046_0
 add rax, r15
 add rax, 1
.Lx00046_0:
 cmp rax, 1
 jl xchain00034_n37_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00034_n37_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00034_n37_α
 mov qword ptr [r12 + 1872], 6
 mov qword ptr [r12 + 1880], rax
 jmp xchain00034_n43_α
 xchain00034_n40_β:
 jmp xchain00034_n37_α
 xchain00034_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00034_n44_α
 xchain00034_n41_β:
 jmp xchain00034_n45_α
 xchain00034_n42_α:
 jmp xchain00034_n45_α
xchain00034_n42_β:
 jmp xchain00034_n45_α
 xchain00034_n43_α:
 jmp xchain00034_n11_α
xchain00034_n43_β:
 jmp xchain00034_n37_α
# IR_VAR
 xchain00034_n44_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1800], rax
 jmp xchain00034_n47_α
 xchain00034_n44_β:
 jmp xchain00034_n48_α
 xchain00034_n45_α:
 jmp xchain00034_n49_α
xchain00034_n45_β:
 jmp xchain00034_n26_α
 xchain00034_n46_α:
 jmp xchain00034_n11_α
xchain00034_n46_β:
 jmp xchain00034_n11_α
# IR_VAR
 xchain00034_n47_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1816], rax
 jmp xchain00034_n50_α
 xchain00034_n47_β:
 jmp xchain00034_n48_α
# IR_LIT_STRING
 xchain00034_n48_α:
 mov qword ptr [r12 + 1664], 1
 mov rax, qword ptr [rip + .Lx00047_0]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00034_n51_α
 xchain00034_n48_β:
 jmp xchain00034_n37_α
.Lx00047_0:
 .quad .Lx00047_0_s
.Lx00047_0_s:
 .string "Unrecognized option: -"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00034_n49_α:
 lea rax, [rip + xchain00034_n52_α]
 mov qword ptr [r12 + 320], rax
 jmp xchain00034_n32_α
 xchain00034_n49_β:
 jmp xchain00034_n26_α
 xchain00034_n50_α:
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
.Lx00048_60:
  .section .rodata
  .Lbynamegenfn301: .string "find"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamegenfn301]
 lea rsi, [r12 + 1744]
 mov edx, 2
 lea rcx, [r12 + 1776]
 call rt_call_arr_gen@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je xchain00034_n48_α
 jmp xchain00034_n53_α
xchain00034_n50_β:
 jmp .Lx00048_60
# IR_VAR
 xchain00034_n51_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1688], rax
 jmp xchain00034_n54_α
 xchain00034_n51_β:
 jmp xchain00034_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00034_n52_α:
 jmp qword ptr [r12 + 416]
 xchain00034_n52_β:
 jmp xchain00034_n37_α
# IR_LIT_INTEGER
 xchain00034_n53_α:
 mov qword ptr [r12 + 1824], 6
 mov rax, qword ptr [rip + .Lx00049_0]
 mov qword ptr [r12 + 1832], rax
 jmp xchain00034_n55_α
 xchain00034_n53_β:
 jmp xchain00034_n50_β
.Lx00049_0:
 .quad 1
 xchain00034_n54_α:
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
  .Lrkfn308: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn308]
 lea rsi, [r12 + 1632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 cmp eax, 99
 je xchain00034_n37_α
 jmp xchain00034_n56_α
 xchain00034_n54_β:
 jmp xchain00034_n37_α
 xchain00034_n55_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1728]
 cmp eax, 100
 je .Lx00050_0
 mov eax, dword ptr [r12 + 1824]
 cmp eax, 100
 je .Lx00050_0
 mov eax, dword ptr [r12 + 1728]
 cmp eax, 6
 jne .Lx00050_2
 mov eax, dword ptr [r12 + 1824]
 cmp eax, 6
 jne .Lx00050_2
.Lx00050_1:
 mov rax, qword ptr [r12 + 1736]
 mov rcx, qword ptr [r12 + 1832]
 add rax, rcx
 mov qword ptr [r12 + 1712], 6
 mov qword ptr [r12 + 1720], rax
 jmp xchain00034_n57_α
.Lx00050_0:
 mov rdi, qword ptr [r12 + 1728]
 mov rsi, qword ptr [r12 + 1736]
 mov rdx, qword ptr [r12 + 1824]
 mov rcx, qword ptr [r12 + 1832]
 mov r8d, 0
 lea r9, [r12 + 1712]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00050_3
.Lx00050_2:
 mov rdi, qword ptr [r12 + 1728]
 mov rsi, qword ptr [r12 + 1736]
 mov rdx, qword ptr [r12 + 1824]
 mov rcx, qword ptr [r12 + 1832]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00034_n48_α
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
.Lx00050_3:
 jmp xchain00034_n57_α
 xchain00034_n55_β:
 jmp xchain00034_n48_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00034_n56_α:
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 408], rax
 lea rax, [rip + xchain00034_n37_α]
 mov qword ptr [r12 + 416], rax
 jmp xchain00034_n37_α
 xchain00034_n56_β:
 jmp xchain00034_n37_α
 xchain00034_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1712]
 mov rdx, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain00034_n58_α
 xchain00034_n57_β:
 jmp xchain00034_n48_α
# IR_VAR_REF local
 xchain00034_n58_α:
 lea rdi, [r12 + 2384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00034_n59_α
 xchain00034_n58_β:
 jmp xchain00034_n37_α
# IR_VAR
 xchain00034_n59_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 456], rax
 jmp xchain00034_n60_α
 xchain00034_n59_β:
 jmp xchain00034_n37_α
# IR_SUBSCRIPT x[i] variable
 xchain00034_n60_α:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00034_n37_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00034_n61_α
 xchain00034_n60_β:
 jmp xchain00034_n37_α
# IR_LIT_CHARSET
 xchain00034_n61_α:
 mov qword ptr [r12 + 1520], 1
 mov dword ptr [r12 + 1524], -1
 mov rax, qword ptr [rip + .Lx00051_0]
 mov qword ptr [r12 + 1528], rax
 jmp xchain00034_n62_α
 xchain00034_n61_β:
 jmp xchain00034_n65_α
.Lx00051_0:
 .quad .Lx00051_0_s
.Lx00051_0_s:
 .string "+.:"
# IR_VAR_REF local
 xchain00034_n62_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain00034_n63_α
 xchain00034_n62_β:
 jmp xchain00034_n65_α
# IR_VAR
 xchain00034_n63_α:
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 1576], rax
 jmp xchain00034_n64_α
 xchain00034_n63_β:
 jmp xchain00034_n65_α
# IR_SUBSCRIPT x[i] variable
 xchain00034_n64_α:
 mov rdi, qword ptr [r12 + 1552]
 mov rsi, qword ptr [r12 + 1560]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00034_n65_α
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain00034_n66_α
 xchain00034_n64_β:
 jmp xchain00034_n65_α
# IR_LIT_INTEGER
 xchain00034_n65_α:
 mov qword ptr [r12 + 1456], 6
 mov rax, qword ptr [rip + .Lx00052_0]
 mov qword ptr [r12 + 1464], rax
 jmp xchain00034_n67_α
 xchain00034_n65_β:
 jmp xchain00034_n37_α
.Lx00052_0:
 .quad 1
# IR_DEREF variable -> value
 xchain00034_n66_α:
 mov rdi, qword ptr [r12 + 1584]
 mov rsi, qword ptr [r12 + 1592]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00034_n65_α
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00034_n68_α
 xchain00034_n66_β:
 jmp xchain00034_n65_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00034_n67_α:
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + xchain00034_n37_α]
 mov qword ptr [r12 + 512], rax
 jmp xchain00034_n69_α
 xchain00034_n67_β:
 jmp xchain00034_n37_α
 xchain00034_n68_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1600]
 mov rdx, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain00034_n71_α
 xchain00034_n68_β:
 jmp xchain00034_n65_α
# IR_ASSIGN_VAR write through variable
 xchain00034_n69_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00034_n37_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00034_n72_α
 xchain00034_n69_β:
 jmp xchain00034_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00034_n70_α:
 jmp qword ptr [r12 + 512]
 xchain00034_n70_β:
 jmp xchain00034_n37_α
 xchain00034_n71_α:
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
  .Lbynamefn333: .string "any"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn333]
 lea rsi, [r12 + 1488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 cmp eax, 99
 je xchain00034_n65_α
 jmp xchain00034_n73_α
xchain00034_n71_β:
 jmp xchain00034_n65_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00034_n72_α:
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 408], rax
 lea rax, [rip + xchain00034_n70_α]
 mov qword ptr [r12 + 416], rax
 jmp xchain00034_n37_α
 xchain00034_n72_β:
 jmp xchain00034_n37_α
# IR_LIT_STRING
 xchain00034_n73_α:
 mov qword ptr [r12 + 1392], 1
 mov rax, qword ptr [rip + .Lx00053_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00034_n74_α
 xchain00034_n73_β:
 jmp xchain00034_n77_α
.Lx00053_0:
 .quad .Lx00053_0_s
.Lx00053_0_s:
 .string ""
# IR_LIT_INTEGER
 xchain00034_n74_α:
 mov qword ptr [r12 + 1440], 6
 mov rax, qword ptr [rip + .Lx00054_0]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00034_n75_α
 xchain00034_n74_β:
 jmp xchain00034_n77_α
.Lx00054_0:
 .quad 0
# IR_SCAN_TAB
 xchain00034_n75_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00055_0
 add rax, r15
 add rax, 1
.Lx00055_0:
 cmp rax, 1
 jl xchain00034_n77_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00034_n77_α
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
 jmp xchain00034_n76_α
 xchain00034_n75_β:
 mov r14, qword ptr [r12 + 1424]
 jmp xchain00034_n77_α
 xchain00034_n76_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 1392]
 mov rsi, qword ptr [r12 + 1400]
 mov rdx, qword ptr [r12 + 1408]
 mov rcx, qword ptr [r12 + 1416]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00034_n77_α
 mov rdi, qword ptr [r12 + 1408]
 mov rsi, qword ptr [r12 + 1416]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain00034_n78_α
 xchain00034_n76_β:
 jmp xchain00034_n77_α
# IR_VAR
 xchain00034_n77_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1368], rax
 jmp xchain00034_n79_α
 xchain00034_n77_β:
 jmp xchain00034_n80_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00034_n78_α:
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00034_n77_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00034_n81_α
 xchain00034_n78_β:
 jmp xchain00034_n85_α
 xchain00034_n79_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1344]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1352], rax
  .section .rodata
  .Lrkfn346: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn346]
 lea rsi, [r12 + 1344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain00034_n80_α
 jmp xchain00034_n83_α
 xchain00034_n79_β:
 jmp xchain00034_n80_α
# IR_LIT_STRING
 xchain00034_n80_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx00056_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00034_n84_α
 xchain00034_n80_β:
 jmp xchain00034_n85_α
.Lx00056_0:
 .quad .Lx00056_0_s
.Lx00056_0_s:
 .string "No parameter following -"
 xchain00034_n81_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1216]
 mov rdx, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain00034_n85_α
 xchain00034_n81_β:
 jmp xchain00034_n85_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00034_n82_α:
 jmp qword ptr [r12 + 1232]
 xchain00034_n82_β:
 jmp xchain00034_n85_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00034_n83_α:
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00034_n80_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00034_n81_α
 xchain00034_n83_β:
 jmp xchain00034_n85_α
# IR_VAR
 xchain00034_n84_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1320], rax
 jmp xchain00034_n86_α
 xchain00034_n84_β:
 jmp xchain00034_n85_α
# IR_VAR
 xchain00034_n85_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 552], rax
 jmp xchain00034_n87_α
 xchain00034_n85_β:
 jmp xchain00034_n37_α
 xchain00034_n86_α:
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
  .Lrkfn358: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn358]
 lea rsi, [r12 + 1264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain00034_n85_α
 jmp xchain00034_n88_α
 xchain00034_n86_β:
 jmp xchain00034_n85_α
# IR_LIT_STRING
 xchain00034_n87_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx00057_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00034_n89_α
 xchain00034_n87_β:
 jmp xchain00034_n37_α
.Lx00057_0:
 .quad .Lx00057_0_s
.Lx00057_0_s:
 .string ":"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00034_n88_α:
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00034_n85_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00034_n81_α
 xchain00034_n88_β:
 jmp xchain00034_n85_α
 xchain00034_n89_α:
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
  .Lrkfn363: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn363]
 lea rsi, [r12 + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain00034_n91_α
 jmp xchain00034_n90_α
 xchain00034_n89_β:
 jmp xchain00034_n91_α
# IR_VAR
 xchain00034_n90_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00034_n92_α
 xchain00034_n90_β:
 jmp xchain00034_n37_α
# IR_LIT_STRING
 xchain00034_n91_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx00058_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain00034_n93_α
 xchain00034_n91_β:
 jmp xchain00034_n37_α
.Lx00058_0:
 .quad .Lx00058_0_s
.Lx00058_0_s:
 .string "+"
 xchain00034_n92_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00034_n94_α
 xchain00034_n92_β:
 jmp xchain00034_n37_α
 xchain00034_n93_α:
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
  .Lrkfn369: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn369]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00034_n96_α
 jmp xchain00034_n95_α
 xchain00034_n93_β:
 jmp xchain00034_n96_α
# IR_VAR
 xchain00034_n94_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 536], rax
 jmp xchain00034_n97_α
 xchain00034_n94_β:
 jmp xchain00034_n37_α
# IR_VAR
 xchain00034_n95_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00034_n98_α
 xchain00034_n95_β:
 jmp xchain00034_n99_α
# IR_LIT_STRING
 xchain00034_n96_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx00059_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00034_n00001_α
 xchain00034_n96_β:
 jmp xchain00034_n37_α
.Lx00059_0:
 .quad .Lx00059_0_s
.Lx00059_0_s:
 .string "."
 xchain00034_n97_α:
 jmp xchain00034_n00002_α
xchain00034_n97_β:
 jmp xchain00034_n37_α
 xchain00034_n98_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+1008]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn377: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn377]
 lea rsi, [r12 + 1008]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain00034_n99_α
 jmp xchain00034_n00060_α
 xchain00034_n98_β:
 jmp xchain00034_n99_α
# IR_LIT_STRING
 xchain00034_n99_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx00061_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00034_n00003_α
 xchain00034_n99_β:
 jmp xchain00034_n37_α
.Lx00061_0:
 .quad .Lx00061_0_s
.Lx00061_0_s:
 .string "-"
 xchain00034_n00001_α:
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
  .Lrkfn380: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn380]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain00034_n37_α
 jmp xchain00034_n00062_α
 xchain00034_n00001_β:
 jmp xchain00034_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00034_n00002_α:
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + xchain00034_n37_α]
 mov qword ptr [r12 + 512], rax
 jmp xchain00034_n69_α
 xchain00034_n00002_β:
 jmp xchain00034_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00034_n00060_α:
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00034_n99_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00034_n00004_α
 xchain00034_n00060_β:
 jmp xchain00034_n37_α
# IR_VAR
 xchain00034_n00003_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 968], rax
 jmp xchain00034_n00063_α
 xchain00034_n00003_β:
 jmp xchain00034_n37_α
# IR_VAR
 xchain00034_n00062_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 760], rax
 jmp xchain00034_n00064_α
 xchain00034_n00062_β:
 jmp xchain00034_n00065_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00034_n00066_α:
 jmp qword ptr [r12 + 864]
 xchain00034_n00066_β:
 jmp xchain00034_n37_α
# IR_LIT_STRING
 xchain00034_n00063_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx00067_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain00034_n00068_α
 xchain00034_n00063_β:
 jmp xchain00034_n37_α
.Lx00067_0:
 .quad .Lx00067_0_s
.Lx00067_0_s:
 .string " needs numeric parameter"
 xchain00034_n00064_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+736]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn393: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn393]
 lea rsi, [r12 + 736]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain00034_n00065_α
 jmp xchain00034_n00069_α
 xchain00034_n00064_β:
 jmp xchain00034_n00065_α
# IR_LIT_STRING
 xchain00034_n00065_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00070_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00034_n00071_α
 xchain00034_n00065_β:
 jmp xchain00034_n37_α
.Lx00070_0:
 .quad .Lx00070_0_s
.Lx00070_0_s:
 .string "-"
 xchain00034_n00004_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00034_n94_α
 xchain00034_n00004_β:
 jmp xchain00034_n37_α
 xchain00034_n00068_α:
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
  .Lrkfn397: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn397]
 lea rsi, [r12 + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain00034_n37_α
 jmp xchain00034_n00072_α
 xchain00034_n00068_β:
 jmp xchain00034_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00034_n00069_α:
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 584], rax
 lea rax, [rip + xchain00034_n00065_α]
 mov qword ptr [r12 + 592], rax
 jmp xchain00034_n00005_α
 xchain00034_n00069_β:
 jmp xchain00034_n37_α
# IR_VAR
 xchain00034_n00071_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 696], rax
 jmp xchain00034_n00073_α
 xchain00034_n00071_β:
 jmp xchain00034_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00034_n00072_α:
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00034_n37_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00034_n00004_α
 xchain00034_n00072_β:
 jmp xchain00034_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00034_n00074_α:
 jmp qword ptr [r12 + 592]
 xchain00034_n00074_β:
 jmp xchain00034_n37_α
# IR_LIT_STRING
 xchain00034_n00073_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx00075_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00034_n00006_α
 xchain00034_n00073_β:
 jmp xchain00034_n37_α
.Lx00075_0:
 .quad .Lx00075_0_s
.Lx00075_0_s:
 .string " needs numeric parameter"
 xchain00034_n00005_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00034_n94_α
 xchain00034_n00005_β:
 jmp xchain00034_n37_α
 xchain00034_n00006_α:
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
  .Lrkfn409: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn409]
 lea rsi, [r12 + 624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain00034_n37_α
 jmp xchain00034_n00007_α
 xchain00034_n00006_β:
 jmp xchain00034_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00034_n00007_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
 lea rax, [rip + xchain00034_n37_α]
 mov qword ptr [r12 + 592], rax
 jmp xchain00034_n00005_α
 xchain00034_n00007_β:
 jmp xchain00034_n37_α
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
  .globl proc_Init___α
proc_Init___α:
#=======================================================================================================================
    .global proc_Init___α
    .global proc_Init___β
    .global proc_Init___γ
    .global proc_Init___ω
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
 mov qword ptr [r12 + 352], rax
 pop rsi
proc_Init___α_body:
# IR_VAR
 xchain00076_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 344], rax
 jmp xchain00076_n1_α
 xchain00076_n0_β:
 jmp xchain00076_n2_α
# IR_ASSIGN gva
 xchain00076_n1_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00076_n2_α
 xchain00076_n1_β:
 jmp xchain00076_n2_α
 xchain00076_n2_α:
  .section .rodata
  .Lcall00077_pname: .string "Signature__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00077_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain00076_n3_α
 jmp xchain00076_n3_α
xchain00076_n2_β:
 jmp xchain00076_n3_α
 xchain00076_n3_α:
  .section .rodata
  .Lcall00078_pname: .string "Regions__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00078_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00076_n4_α
 jmp xchain00076_n4_α
xchain00076_n3_β:
 jmp xchain00076_n4_α
 xchain00076_n4_α:
  .section .rodata
  .Lcall00041_pname: .string "Time__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00041_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain00076_n5_α
 jmp xchain00076_n5_α
xchain00076_n4_β:
 jmp xchain00076_n5_α
# IR_LIT_STRING
 xchain00076_n5_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00079_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00076_n6_α
 xchain00076_n5_β:
 jmp xchain00076_n8_α
.Lx00079_0:
 .quad .Lx00079_0_s
.Lx00079_0_s:
 .string "OUTPUT"
 xchain00076_n6_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+240]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn421: .string "getenv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn421]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00076_n8_α
 jmp xchain00076_n7_α
 xchain00076_n6_β:
 jmp xchain00076_n8_α
# IR_LIT_STRING
 xchain00076_n7_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00080_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00076_n9_α
 xchain00076_n7_β:
 jmp xchain00076_n12_α
.Lx00080_0:
 .quad .Lx00080_0_s
.Lx00080_0_s:
 .string "*** Benchmarking with output ***"
# IR_VAR
 xchain00076_n8_α:
 mov rdi, qword ptr [rip + .Lx00081_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00076_n11_α
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00076_n10_α
 xchain00076_n8_β:
 jmp xchain00076_n11_α
.Lx00081_0:
 .quad .Lx00081_0_s
.Lx00081_0_s:
 .string "write"
 xchain00076_n9_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn425: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn425]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain00076_n12_α
 jmp xchain00076_n12_α
 xchain00076_n9_β:
 jmp xchain00076_n12_α
# IR_ASSIGN gva
 xchain00076_n10_α:
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00076_n11_α
 xchain00076_n10_β:
 jmp xchain00076_n11_α
# IR_VAR
 xchain00076_n11_α:
 mov rdi, qword ptr [rip + .Lx00082_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00076_n14_α
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00076_n13_α
 xchain00076_n11_β:
 jmp xchain00076_n14_α
.Lx00082_0:
 .quad .Lx00082_0_s
.Lx00082_0_s:
 .string "writes"
# IR_RETURN
 xchain00076_n12_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Init___γ
# IR_ASSIGN gva
 xchain00076_n13_α:
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00076_n14_α
 xchain00076_n13_β:
 jmp xchain00076_n14_α
# IR_LIT_INTEGER
 xchain00076_n14_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00083_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00076_n15_α
 xchain00076_n14_β:
 jmp xchain00076_n17_α
.Lx00083_0:
 .quad 1
# IR_ASSIGN global
 xchain00076_n15_α:
 mov rsi, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov rdi, qword ptr [rip + .Lx00084_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00076_n16_α
 xchain00076_n15_β:
 jmp xchain00076_n17_α
.Lx00084_0:
 .quad .Lx00084_0_s
.Lx00084_0_s:
 .string "writes"
# IR_ASSIGN global
 xchain00076_n16_α:
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov rdi, qword ptr [rip + .Lx00085_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00076_n17_α
 xchain00076_n16_β:
 jmp xchain00076_n17_α
.Lx00085_0:
 .quad .Lx00085_0_s
.Lx00085_0_s:
 .string "write"
# IR_RETURN
 xchain00076_n17_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Init___γ
proc_Init___β:
jmp proc_Init___ω
proc_Init___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 352]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Init___ω:
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
  .globl proc_Term___α
proc_Term___α:
#=======================================================================================================================
    .global proc_Term___α
    .global proc_Term___β
    .global proc_Term___γ
    .global proc_Term___ω
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
 mov qword ptr [r12 + 336], rax
 pop rsi
proc_Term___α_body:
# IR_LIT_STRING
 xchain00086_n0_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx00087_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00086_n1_α
 xchain00086_n0_β:
 jmp xchain00086_n3_α
.Lx00087_0:
 .quad .Lx00087_0_s
.Lx00087_0_s:
 .string "OUTPUT"
 xchain00086_n1_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+304]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn437: .string "getenv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn437]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00086_n3_α
 jmp xchain00086_n2_α
 xchain00086_n1_β:
 jmp xchain00086_n3_α
# IR_VAR gva
 xchain00086_n2_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00086_n4_α
 xchain00086_n2_β:
 jmp xchain00086_n5_α
# IR_KEYWORD_null
 xchain00086_n3_α:
 mov qword ptr [r12 + 272], 0
 mov qword ptr [r12 + 280], 0
 jmp xchain00086_n6_α
 xchain00086_n3_β:
 jmp xchain00086_n2_α
# IR_LIT_STRING
 xchain00086_n4_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00088_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00086_n7_α
 xchain00086_n4_β:
 jmp xchain00086_n5_α
.Lx00088_0:
 .quad .Lx00088_0_s
.Lx00088_0_s:
 .string " elapsed time = "
 xchain00086_n5_α:
  .section .rodata
  .Lcall00089_pname: .string "Regions__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00089_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain00086_n8_α
 jmp xchain00086_n8_α
xchain00086_n5_β:
 jmp xchain00086_n8_α
# IR_VAR gva
 xchain00086_n6_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00086_n9_α
 xchain00086_n6_β:
 jmp xchain00086_n10_α
 xchain00086_n7_α:
  .section .rodata
  .Lcall00090_pname: .string "Time__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00090_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00086_n5_α
 jmp xchain00086_n11_α
xchain00086_n7_β:
 jmp xchain00086_n5_α
 xchain00086_n8_α:
  .section .rodata
  .Lcall00091_pname: .string "Storage__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00091_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain00086_n12_α
 jmp xchain00086_n12_α
xchain00086_n8_β:
 jmp xchain00086_n12_α
# IR_ASSIGN global
 xchain00086_n9_α:
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov rdi, qword ptr [rip + .Lx00092_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00086_n10_α
 xchain00086_n9_β:
 jmp xchain00086_n10_α
.Lx00092_0:
 .quad .Lx00092_0_s
.Lx00092_0_s:
 .string "write"
# IR_VAR gva
 xchain00086_n10_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00086_n13_α
 xchain00086_n10_β:
 jmp xchain00086_n2_α
 xchain00086_n11_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+80]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 88], rax
# marshal arg1 = producer-box slot [zr+144] -> [zr+96]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 104], rax
# marshal arg2 = producer-box slot [zr+160] -> [zr+112]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn448: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn448]
 lea rsi, [r12 + 80]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00086_n5_α
 jmp xchain00086_n5_α
 xchain00086_n11_β:
 jmp xchain00086_n5_α
 xchain00086_n12_α:
  .section .rodata
  .Lcall00093_pname: .string "Collections__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00093_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain00086_n14_α
 jmp xchain00086_n14_α
xchain00086_n12_β:
 jmp xchain00086_n14_α
# IR_ASSIGN global
 xchain00086_n13_α:
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov rdi, qword ptr [rip + .Lx00094_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00086_n15_α
 xchain00086_n13_β:
 jmp xchain00086_n2_α
.Lx00094_0:
 .quad .Lx00094_0_s
.Lx00094_0_s:
 .string "writes"
# IR_RETURN
 xchain00086_n14_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Term___γ
 xchain00086_n15_α:
 jmp xchain00086_n16_α
xchain00086_n15_β:
 jmp xchain00086_n2_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00086_n16_α:
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
 lea rax, [rip + xchain00086_n2_α]
 mov qword ptr [r12 + 192], rax
 jmp xchain00086_n2_α
 xchain00086_n16_β:
 jmp xchain00086_n2_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00086_n17_α:
 jmp qword ptr [r12 + 192]
 xchain00086_n17_β:
 jmp xchain00086_n2_α
proc_Term___β:
jmp proc_Term___ω
proc_Term___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 336]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Term___ω:
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
  .globl proc_Collections___α
proc_Collections___α:
#=======================================================================================================================
    .global proc_Collections___α
    .global proc_Collections___β
    .global proc_Collections___γ
    .global proc_Collections___ω
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
 mov qword ptr [r12 + 784], rax
 pop rsi
proc_Collections___α_body:
# IR_VAR_REF gva
 xchain00095_n0_α:
 lea rdi, [rbx + 128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00095_n1_α
 xchain00095_n0_β:
 jmp xchain00095_n3_α
# IR_UNOP_TEST lv
 xchain00095_n1_α:
 mov eax, dword ptr [r12 + 720]
 cmp eax, 99
 je xchain00095_n3_α
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00095_n3_α
 cmp eax, 0
 jne xchain00095_n3_α
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 744], rax
 jmp xchain00095_n2_α
 xchain00095_n1_β:
 jmp xchain00095_n3_α
# IR_LIT_INTEGER
 xchain00095_n2_α:
 mov qword ptr [r12 + 768], 6
 mov rax, qword ptr [rip + .Lx00096_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain00095_n4_α
 xchain00095_n2_β:
 jmp xchain00095_n3_α
.Lx00096_0:
 .quad 1
# IR_MAKE_LIST
 xchain00095_n3_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00095_n5_α
 xchain00095_n3_β:
 jmp xchain00095_n7_α
# IR_ASSIGN_VAR write through variable
 xchain00095_n4_α:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00095_n3_α
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00095_n6_α
 xchain00095_n4_β:
 jmp xchain00095_n3_α
 xchain00095_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00095_n7_α
 xchain00095_n5_β:
 jmp xchain00095_n7_α
# IR_LIT_STRING
 xchain00095_n6_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00097_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00095_n8_α
 xchain00095_n6_β:
 jmp xchain00095_n3_α
.Lx00097_0:
 .quad .Lx00097_0_s
.Lx00097_0_s:
 .string "total"
# IR_VAR
 xchain00095_n7_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 456], rax
 jmp xchain00095_n9_α
 xchain00095_n7_β:
 jmp xchain00095_n10_α
# IR_LIT_STRING
 xchain00095_n8_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00098_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00095_n11_α
 xchain00095_n8_β:
 jmp xchain00095_n3_α
.Lx00098_0:
 .quad .Lx00098_0_s
.Lx00098_0_s:
 .string "static"
# IR_KEYWORD_gen
 xchain00095_n9_α:
 mov qword ptr [r12 + 480], 0
.Lx00099_1:
 mov rdi, qword ptr [rip + .Lx00099_0]
 mov rsi, qword ptr [r12 + 480]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00095_n10_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov rax, qword ptr [r12 + 480]
 add rax, 1
 mov qword ptr [r12 + 480], rax
 jmp xchain00095_n12_α
 xchain00095_n9_β:
 jmp .Lx00099_1
.Lx00099_0:
 .quad .Lx00099_0_s
.Lx00099_0_s:
 .string "&collections"
# IR_LIT_STRING
 xchain00095_n10_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00100_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00095_n13_α
 xchain00095_n10_β:
 jmp xchain00095_n15_α
.Lx00100_0:
 .quad .Lx00100_0_s
.Lx00100_0_s:
 .string "collections"
# IR_LIT_STRING
 xchain00095_n11_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx00101_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain00095_n14_α
 xchain00095_n11_β:
 jmp xchain00095_n3_α
.Lx00101_0:
 .quad .Lx00101_0_s
.Lx00101_0_s:
 .string "string"
 xchain00095_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn474: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn474]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00095_n10_α
 jmp xchain00095_n9_β
 xchain00095_n12_β:
 jmp xchain00095_n10_α
 xchain00095_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+368]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn476: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn476]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00095_n15_α
 jmp xchain00095_n15_α
 xchain00095_n13_β:
 jmp xchain00095_n15_α
# IR_LIT_STRING
 xchain00095_n14_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx00102_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00095_n16_α
 xchain00095_n14_β:
 jmp xchain00095_n3_α
.Lx00102_0:
 .quad .Lx00102_0_s
.Lx00102_0_s:
 .string "block"
# IR_LIT_INTEGER
 xchain00095_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00103_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00095_n17_α
 xchain00095_n15_β:
 jmp xchain00095_n20_α
.Lx00103_0:
 .quad 1
# IR_MAKE_LIST
 xchain00095_n16_α:
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 600], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 616], rax
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 632], rax
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 648], rax
 lea rdi, [r12 + 592]
 mov esi, 4
 call rt_make_list@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00095_n18_α
 xchain00095_n16_β:
 jmp xchain00095_n3_α
# IR_VAR gva
 xchain00095_n17_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00095_n19_α
 xchain00095_n17_β:
 jmp xchain00095_n20_α
# IR_ASSIGN gva
 xchain00095_n18_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00095_n21_α
 xchain00095_n18_β:
 jmp xchain00095_n3_α
# IR_UNOP
 xchain00095_n19_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00095_n22_α
 xchain00095_n19_β:
 jmp xchain00095_n20_α
# IR_RETURN
 xchain00095_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Collections___γ
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00095_n21_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain00095_n3_α]
 mov qword ptr [r12 + 544], rax
 jmp xchain00095_n3_α
 xchain00095_n21_β:
 jmp xchain00095_n3_α
# IR_TO
 xchain00095_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00104_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00095_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00095_n24_α
 xchain00095_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00104_0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00095_n23_α:
 jmp qword ptr [r12 + 544]
 xchain00095_n23_β:
 jmp xchain00095_n3_α
 xchain00095_n24_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00095_n25_α
 xchain00095_n24_β:
 jmp xchain00095_n20_α
# IR_VAR_REF gva
 xchain00095_n25_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00095_n26_α
 xchain00095_n25_β:
 jmp xchain00095_n22_β
# IR_VAR
 xchain00095_n26_α:
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 184], rax
 jmp xchain00095_n27_α
 xchain00095_n26_β:
 jmp xchain00095_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00095_n27_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00095_n22_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00095_n28_α
 xchain00095_n27_β:
 jmp xchain00095_n22_β
# IR_DEREF variable -> value
 xchain00095_n28_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00095_n22_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00095_n29_α
 xchain00095_n28_β:
 jmp xchain00095_n22_β
# IR_VAR_REF local
 xchain00095_n29_α:
 lea rdi, [r12 + 816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00095_n30_α
 xchain00095_n29_β:
 jmp xchain00095_n22_β
# IR_VAR
 xchain00095_n30_α:
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 296], rax
 jmp xchain00095_n31_α
 xchain00095_n30_β:
 jmp xchain00095_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00095_n31_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00095_n22_β
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00095_n32_α
 xchain00095_n31_β:
 jmp xchain00095_n22_β
# IR_DEREF variable -> value
 xchain00095_n32_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00095_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00095_n33_α
 xchain00095_n32_β:
 jmp xchain00095_n22_β
# IR_LIT_INTEGER
 xchain00095_n33_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00105_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00095_n34_α
 xchain00095_n33_β:
 jmp xchain00095_n22_β
.Lx00105_0:
 .quad 8
 xchain00095_n34_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+240]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+256]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn506: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn506]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00095_n22_β
 jmp xchain00095_n35_α
 xchain00095_n34_β:
 jmp xchain00095_n22_β
 xchain00095_n35_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+128]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+144]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn508: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn508]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00095_n22_β
 jmp xchain00095_n22_β
 xchain00095_n35_β:
 jmp xchain00095_n22_β
proc_Collections___β:
jmp proc_Collections___ω
proc_Collections___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 784]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Collections___ω:
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
  .globl proc_Regions___α
proc_Regions___α:
#=======================================================================================================================
    .global proc_Regions___α
    .global proc_Regions___β
    .global proc_Regions___γ
    .global proc_Regions___ω
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
 mov qword ptr [r12 + 752], rax
 pop rsi
proc_Regions___α_body:
# IR_VAR_REF gva
 xchain00106_n0_α:
 lea rdi, [rbx + 160]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00106_n1_α
 xchain00106_n0_β:
 jmp xchain00106_n3_α
# IR_UNOP_TEST lv
 xchain00106_n1_α:
 mov eax, dword ptr [r12 + 688]
 cmp eax, 99
 je xchain00106_n3_α
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00106_n3_α
 cmp eax, 0
 jne xchain00106_n3_α
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 712], rax
 jmp xchain00106_n2_α
 xchain00106_n1_β:
 jmp xchain00106_n3_α
# IR_LIT_INTEGER
 xchain00106_n2_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx00107_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00106_n4_α
 xchain00106_n2_β:
 jmp xchain00106_n3_α
.Lx00107_0:
 .quad 1
# IR_MAKE_LIST
 xchain00106_n3_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00106_n5_α
 xchain00106_n3_β:
 jmp xchain00106_n7_α
# IR_ASSIGN_VAR write through variable
 xchain00106_n4_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00106_n3_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00106_n6_α
 xchain00106_n4_β:
 jmp xchain00106_n3_α
 xchain00106_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00106_n7_α
 xchain00106_n5_β:
 jmp xchain00106_n7_α
# IR_LIT_STRING
 xchain00106_n6_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx00108_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00106_n8_α
 xchain00106_n6_β:
 jmp xchain00106_n3_α
.Lx00108_0:
 .quad .Lx00108_0_s
.Lx00108_0_s:
 .string "static"
# IR_VAR
 xchain00106_n7_α:
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 456], rax
 jmp xchain00106_n9_α
 xchain00106_n7_β:
 jmp xchain00106_n10_α
# IR_LIT_STRING
 xchain00106_n8_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00109_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00106_n11_α
 xchain00106_n8_β:
 jmp xchain00106_n3_α
.Lx00109_0:
 .quad .Lx00109_0_s
.Lx00109_0_s:
 .string "string"
# IR_KEYWORD_gen
 xchain00106_n9_α:
 mov qword ptr [r12 + 480], 0
.Lx00110_1:
 mov rdi, qword ptr [rip + .Lx00110_0]
 mov rsi, qword ptr [r12 + 480]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00106_n10_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov rax, qword ptr [r12 + 480]
 add rax, 1
 mov qword ptr [r12 + 480], rax
 jmp xchain00106_n12_α
 xchain00106_n9_β:
 jmp .Lx00110_1
.Lx00110_0:
 .quad .Lx00110_0_s
.Lx00110_0_s:
 .string "&regions"
# IR_LIT_STRING
 xchain00106_n10_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00111_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00106_n13_α
 xchain00106_n10_β:
 jmp xchain00106_n15_α
.Lx00111_0:
 .quad .Lx00111_0_s
.Lx00111_0_s:
 .string "regions"
# IR_LIT_STRING
 xchain00106_n11_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00112_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00106_n14_α
 xchain00106_n11_β:
 jmp xchain00106_n3_α
.Lx00112_0:
 .quad .Lx00112_0_s
.Lx00112_0_s:
 .string "block"
 xchain00106_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn526: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn526]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00106_n10_α
 jmp xchain00106_n9_β
 xchain00106_n12_β:
 jmp xchain00106_n10_α
 xchain00106_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+368]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn528: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn528]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00106_n15_α
 jmp xchain00106_n15_α
 xchain00106_n13_β:
 jmp xchain00106_n15_α
# IR_MAKE_LIST
 xchain00106_n14_α:
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 600], rax
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 616], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 632], rax
 lea rdi, [r12 + 592]
 mov esi, 3
 call rt_make_list@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00106_n16_α
 xchain00106_n14_β:
 jmp xchain00106_n3_α
# IR_LIT_INTEGER
 xchain00106_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00113_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00106_n17_α
 xchain00106_n15_β:
 jmp xchain00106_n20_α
.Lx00113_0:
 .quad 1
# IR_ASSIGN gva
 xchain00106_n16_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00106_n18_α
 xchain00106_n16_β:
 jmp xchain00106_n3_α
# IR_VAR gva
 xchain00106_n17_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00106_n19_α
 xchain00106_n17_β:
 jmp xchain00106_n20_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00106_n18_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain00106_n3_α]
 mov qword ptr [r12 + 544], rax
 jmp xchain00106_n3_α
 xchain00106_n18_β:
 jmp xchain00106_n3_α
# IR_UNOP
 xchain00106_n19_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00106_n22_α
 xchain00106_n19_β:
 jmp xchain00106_n20_α
# IR_RETURN
 xchain00106_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Regions___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00106_n21_α:
 jmp qword ptr [r12 + 544]
 xchain00106_n21_β:
 jmp xchain00106_n3_α
# IR_TO
 xchain00106_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00114_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00106_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00106_n23_α
 xchain00106_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00114_0
 xchain00106_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00106_n24_α
 xchain00106_n23_β:
 jmp xchain00106_n20_α
# IR_VAR_REF gva
 xchain00106_n24_α:
 lea rdi, [rbx + 144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00106_n25_α
 xchain00106_n24_β:
 jmp xchain00106_n22_β
# IR_VAR
 xchain00106_n25_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 184], rax
 jmp xchain00106_n26_α
 xchain00106_n25_β:
 jmp xchain00106_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00106_n26_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00106_n22_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00106_n27_α
 xchain00106_n26_β:
 jmp xchain00106_n22_β
# IR_DEREF variable -> value
 xchain00106_n27_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00106_n22_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00106_n28_α
 xchain00106_n27_β:
 jmp xchain00106_n22_β
# IR_VAR_REF local
 xchain00106_n28_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00106_n29_α
 xchain00106_n28_β:
 jmp xchain00106_n22_β
# IR_VAR
 xchain00106_n29_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 296], rax
 jmp xchain00106_n30_α
 xchain00106_n29_β:
 jmp xchain00106_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00106_n30_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00106_n22_β
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00106_n31_α
 xchain00106_n30_β:
 jmp xchain00106_n22_β
# IR_DEREF variable -> value
 xchain00106_n31_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00106_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00106_n32_α
 xchain00106_n31_β:
 jmp xchain00106_n22_β
# IR_LIT_INTEGER
 xchain00106_n32_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00115_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00106_n33_α
 xchain00106_n32_β:
 jmp xchain00106_n22_β
.Lx00115_0:
 .quad 8
 xchain00106_n33_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+240]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+256]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn557: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn557]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00106_n22_β
 jmp xchain00106_n34_α
 xchain00106_n33_β:
 jmp xchain00106_n22_β
 xchain00106_n34_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+128]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+144]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn559: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn559]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00106_n22_β
 jmp xchain00106_n22_β
 xchain00106_n34_β:
 jmp xchain00106_n22_β
proc_Regions___β:
jmp proc_Regions___ω
proc_Regions___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 752]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Regions___ω:
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
  .globl proc_Signature___α
proc_Signature___α:
#=======================================================================================================================
    .global proc_Signature___α
    .global proc_Signature___β
    .global proc_Signature___γ
    .global proc_Signature___ω
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
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_Signature___α_body:
# IR_KEYWORD_read
 xchain00116_n0_α:
 mov rdi, qword ptr [rip + .Lx00117_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00116_n1_α
 xchain00116_n0_β:
 jmp xchain00116_n2_α
.Lx00117_0:
 .quad .Lx00117_0_s
.Lx00117_0_s:
 .string "&version"
 xchain00116_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn563: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn563]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00116_n2_α
 jmp xchain00116_n2_α
 xchain00116_n1_β:
 jmp xchain00116_n2_α
# IR_KEYWORD_read
 xchain00116_n2_α:
 mov rdi, qword ptr [rip + .Lx00118_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00116_n3_α
 xchain00116_n2_β:
 jmp xchain00116_n4_α
.Lx00118_0:
 .quad .Lx00118_0_s
.Lx00118_0_s:
 .string "&host"
 xchain00116_n3_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+96]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn566: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn566]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain00116_n4_α
 jmp xchain00116_n4_α
 xchain00116_n3_β:
 jmp xchain00116_n4_α
# IR_KEYWORD_gen
 xchain00116_n4_α:
 mov qword ptr [r12 + 64], 0
.Lx00119_1:
 mov rdi, qword ptr [rip + .Lx00119_0]
 mov rsi, qword ptr [r12 + 64]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00116_n6_α
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov rax, qword ptr [r12 + 64]
 add rax, 1
 mov qword ptr [r12 + 64], rax
 jmp xchain00116_n5_α
 xchain00116_n4_β:
 jmp .Lx00119_1
.Lx00119_0:
 .quad .Lx00119_0_s
.Lx00119_0_s:
 .string "&features"
 xchain00116_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lrkfn569: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn569]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain00116_n6_α
 jmp xchain00116_n4_β
 xchain00116_n5_β:
 jmp xchain00116_n6_α
# IR_RETURN
 xchain00116_n6_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Signature___γ
proc_Signature___β:
jmp proc_Signature___ω
proc_Signature___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 208]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Signature___ω:
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
  .globl proc_Storage___α
proc_Storage___α:
#=======================================================================================================================
    .global proc_Storage___α
    .global proc_Storage___β
    .global proc_Storage___γ
    .global proc_Storage___ω
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
 mov qword ptr [r12 + 752], rax
 pop rsi
proc_Storage___α_body:
# IR_VAR_REF gva
 xchain00120_n0_α:
 lea rdi, [rbx + 192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00120_n1_α
 xchain00120_n0_β:
 jmp xchain00120_n3_α
# IR_UNOP_TEST lv
 xchain00120_n1_α:
 mov eax, dword ptr [r12 + 688]
 cmp eax, 99
 je xchain00120_n3_α
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00120_n3_α
 cmp eax, 0
 jne xchain00120_n3_α
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 712], rax
 jmp xchain00120_n2_α
 xchain00120_n1_β:
 jmp xchain00120_n3_α
# IR_LIT_INTEGER
 xchain00120_n2_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx00121_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00120_n4_α
 xchain00120_n2_β:
 jmp xchain00120_n3_α
.Lx00121_0:
 .quad 1
# IR_MAKE_LIST
 xchain00120_n3_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00120_n5_α
 xchain00120_n3_β:
 jmp xchain00120_n7_α
# IR_ASSIGN_VAR write through variable
 xchain00120_n4_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00120_n3_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00120_n6_α
 xchain00120_n4_β:
 jmp xchain00120_n3_α
 xchain00120_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00120_n7_α
 xchain00120_n5_β:
 jmp xchain00120_n7_α
# IR_LIT_STRING
 xchain00120_n6_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx00122_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00120_n8_α
 xchain00120_n6_β:
 jmp xchain00120_n3_α
.Lx00122_0:
 .quad .Lx00122_0_s
.Lx00122_0_s:
 .string "static"
# IR_VAR
 xchain00120_n7_α:
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 456], rax
 jmp xchain00120_n9_α
 xchain00120_n7_β:
 jmp xchain00120_n10_α
# IR_LIT_STRING
 xchain00120_n8_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00123_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00120_n11_α
 xchain00120_n8_β:
 jmp xchain00120_n3_α
.Lx00123_0:
 .quad .Lx00123_0_s
.Lx00123_0_s:
 .string "string"
# IR_KEYWORD_gen
 xchain00120_n9_α:
 mov qword ptr [r12 + 480], 0
.Lx00124_1:
 mov rdi, qword ptr [rip + .Lx00124_0]
 mov rsi, qword ptr [r12 + 480]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00120_n10_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov rax, qword ptr [r12 + 480]
 add rax, 1
 mov qword ptr [r12 + 480], rax
 jmp xchain00120_n12_α
 xchain00120_n9_β:
 jmp .Lx00124_1
.Lx00124_0:
 .quad .Lx00124_0_s
.Lx00124_0_s:
 .string "&storage"
# IR_LIT_STRING
 xchain00120_n10_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00125_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00120_n13_α
 xchain00120_n10_β:
 jmp xchain00120_n15_α
.Lx00125_0:
 .quad .Lx00125_0_s
.Lx00125_0_s:
 .string "storage"
# IR_LIT_STRING
 xchain00120_n11_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00126_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00120_n14_α
 xchain00120_n11_β:
 jmp xchain00120_n3_α
.Lx00126_0:
 .quad .Lx00126_0_s
.Lx00126_0_s:
 .string "block"
 xchain00120_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn588: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn588]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00120_n10_α
 jmp xchain00120_n9_β
 xchain00120_n12_β:
 jmp xchain00120_n10_α
 xchain00120_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+368]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn590: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn590]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00120_n15_α
 jmp xchain00120_n15_α
 xchain00120_n13_β:
 jmp xchain00120_n15_α
# IR_MAKE_LIST
 xchain00120_n14_α:
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 600], rax
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 616], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 632], rax
 lea rdi, [r12 + 592]
 mov esi, 3
 call rt_make_list@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00120_n16_α
 xchain00120_n14_β:
 jmp xchain00120_n3_α
# IR_LIT_INTEGER
 xchain00120_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00127_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00120_n17_α
 xchain00120_n15_β:
 jmp xchain00120_n20_α
.Lx00127_0:
 .quad 1
# IR_ASSIGN gva
 xchain00120_n16_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 176], rax
 mov qword ptr [rbx + 184], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00120_n18_α
 xchain00120_n16_β:
 jmp xchain00120_n3_α
# IR_VAR gva
 xchain00120_n17_α:
 mov rax, qword ptr [rbx + 176]
 mov rdx, qword ptr [rbx + 184]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00120_n19_α
 xchain00120_n17_β:
 jmp xchain00120_n20_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00120_n18_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain00120_n3_α]
 mov qword ptr [r12 + 544], rax
 jmp xchain00120_n3_α
 xchain00120_n18_β:
 jmp xchain00120_n3_α
# IR_UNOP
 xchain00120_n19_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00120_n22_α
 xchain00120_n19_β:
 jmp xchain00120_n20_α
# IR_RETURN
 xchain00120_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Storage___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00120_n21_α:
 jmp qword ptr [r12 + 544]
 xchain00120_n21_β:
 jmp xchain00120_n3_α
# IR_TO
 xchain00120_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00128_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00120_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00120_n23_α
 xchain00120_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00128_0
 xchain00120_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00120_n24_α
 xchain00120_n23_β:
 jmp xchain00120_n20_α
# IR_VAR_REF gva
 xchain00120_n24_α:
 lea rdi, [rbx + 176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00120_n25_α
 xchain00120_n24_β:
 jmp xchain00120_n22_β
# IR_VAR
 xchain00120_n25_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 184], rax
 jmp xchain00120_n26_α
 xchain00120_n25_β:
 jmp xchain00120_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00120_n26_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00120_n22_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00120_n27_α
 xchain00120_n26_β:
 jmp xchain00120_n22_β
# IR_DEREF variable -> value
 xchain00120_n27_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00120_n22_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00120_n28_α
 xchain00120_n27_β:
 jmp xchain00120_n22_β
# IR_VAR_REF local
 xchain00120_n28_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00120_n29_α
 xchain00120_n28_β:
 jmp xchain00120_n22_β
# IR_VAR
 xchain00120_n29_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 296], rax
 jmp xchain00120_n30_α
 xchain00120_n29_β:
 jmp xchain00120_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00120_n30_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00120_n22_β
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00120_n31_α
 xchain00120_n30_β:
 jmp xchain00120_n22_β
# IR_DEREF variable -> value
 xchain00120_n31_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00120_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00120_n32_α
 xchain00120_n31_β:
 jmp xchain00120_n22_β
# IR_LIT_INTEGER
 xchain00120_n32_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00120_n33_α
 xchain00120_n32_β:
 jmp xchain00120_n22_β
.Lx00129_0:
 .quad 8
 xchain00120_n33_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+240]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+256]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn619: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn619]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00120_n22_β
 jmp xchain00120_n34_α
 xchain00120_n33_β:
 jmp xchain00120_n22_β
 xchain00120_n34_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+128]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+144]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn621: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn621]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00120_n22_β
 jmp xchain00120_n22_β
 xchain00120_n34_β:
 jmp xchain00120_n22_β
proc_Storage___β:
jmp proc_Storage___ω
proc_Storage___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 752]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Storage___ω:
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
  .globl proc_Time___α
proc_Time___α:
#=======================================================================================================================
    .global proc_Time___α
    .global proc_Time___β
    .global proc_Time___γ
    .global proc_Time___ω
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
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_Time___α_body:
# IR_VAR_REF gva
 xchain00130_n0_α:
 lea rdi, [rbx + 224]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00130_n1_α
 xchain00130_n0_β:
 jmp xchain00130_n3_α
# IR_UNOP_TEST lv
 xchain00130_n1_α:
 mov eax, dword ptr [r12 + 160]
 cmp eax, 99
 je xchain00130_n3_α
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00130_n3_α
 cmp eax, 0
 jne xchain00130_n3_α
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 184], rax
 jmp xchain00130_n2_α
 xchain00130_n1_β:
 jmp xchain00130_n3_α
# IR_LIT_INTEGER
 xchain00130_n2_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx00131_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00130_n4_α
 xchain00130_n2_β:
 jmp xchain00130_n3_α
.Lx00131_0:
 .quad 1
# IR_KEYWORD_read
 xchain00130_n3_α:
 mov rdi, qword ptr [rip + .Lx00132_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00130_n5_α
 xchain00130_n3_β:
 jmp proc_Time___ω
.Lx00132_0:
 .quad .Lx00132_0_s
.Lx00132_0_s:
 .string "&time"
# IR_ASSIGN_VAR write through variable
 xchain00130_n4_α:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 208]
 mov rcx, qword ptr [r12 + 216]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00130_n3_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00130_n6_α
 xchain00130_n4_β:
 jmp xchain00130_n3_α
# IR_VAR gva
 xchain00130_n5_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain00130_n7_α
 xchain00130_n5_β:
 jmp proc_Time___ω
# IR_KEYWORD_read
 xchain00130_n6_α:
 mov rdi, qword ptr [rip + .Lx00133_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00130_n8_α
 xchain00130_n6_β:
 jmp xchain00130_n3_α
.Lx00133_0:
 .quad .Lx00133_0_s
.Lx00133_0_s:
 .string "&time"
 xchain00130_n7_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 32]
 cmp eax, 100
 je .Lx00134_0
 mov eax, dword ptr [r12 + 64]
 cmp eax, 100
 je .Lx00134_0
 mov eax, dword ptr [r12 + 32]
 cmp eax, 6
 jne .Lx00134_2
 mov eax, dword ptr [r12 + 64]
 cmp eax, 6
 jne .Lx00134_2
.Lx00134_1:
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 72]
 sub rax, rcx
 mov qword ptr [r12 + 16], 6
 mov qword ptr [r12 + 24], rax
 jmp xchain00130_n9_α
.Lx00134_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 72]
 mov r8d, 1
 lea r9, [r12 + 16]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00134_3
.Lx00134_2:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 72]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_Time___ω
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
.Lx00134_3:
 jmp xchain00130_n9_α
 xchain00130_n7_β:
 jmp proc_Time___ω
# IR_ASSIGN gva
 xchain00130_n8_α:
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00130_n10_α
 xchain00130_n8_β:
 jmp xchain00130_n3_α
# IR_RETURN
 xchain00130_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Time___γ
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00130_n10_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
 lea rax, [rip + xchain00130_n3_α]
 mov qword ptr [r12 + 96], rax
 jmp xchain00130_n3_α
 xchain00130_n10_β:
 jmp xchain00130_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00130_n11_α:
 jmp qword ptr [r12 + 96]
 xchain00130_n11_β:
 jmp xchain00130_n3_α
proc_Time___β:
jmp proc_Time___ω
proc_Time___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Time___ω:
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
  .section .rodata
  .Lstartup_pname3: .string "options"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_options_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname4: .string "Init__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_Init___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname5: .string "Term__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_Term___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname6: .string "Collections__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_Collections___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname7: .string "Regions__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_Regions___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname8: .string "Signature__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + proc_Signature___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname9: .string "Storage__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname9]
  lea rsi, [rip + proc_Storage___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname10: .string "Time__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname10]
  lea rsi, [rip + proc_Time___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "uses"
  .Lgvan1: .string "colmax"
  .Lgvan2: .string "namewidth"
  .Lgvan3: .string "lineno"
  .Lgvan4: .string "Save__"
  .Lgvan5: .string "Saves__"
  .Lgvan6: .string "Name__"
  .Lgvan7: .string "Collections____STATIC__labels"
  .Lgvan8: .string "Collections____INITFLAG__0"
  .Lgvan9: .string "Regions____STATIC__labels"
  .Lgvan10: .string "Regions____INITFLAG__0"
  .Lgvan11: .string "Storage____STATIC__labels"
  .Lgvan12: .string "Storage____INITFLAG__0"
  .Lgvan13: .string "Time____STATIC__lasttime"
  .Lgvan14: .string "Time____INITFLAG__0"
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
  .section .bss
  .align 16
__gva: .space 240, 0
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
  mov edx, 15
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
 mov qword ptr [r12 + 1008], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain00135_n0_α:
 mov qword ptr [r12 + 992], 1
 mov rax, qword ptr [rip + .Lx00136_0]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00135_n1_α
 xchain00135_n0_β:
 jmp xchain00135_n2_α
.Lx00136_0:
 .quad .Lx00136_0_s
.Lx00136_0_s:
 .string "concord"
 xchain00135_n1_α:
  .section .rodata
  .Lcall00087_pname: .string "Init__"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 992]
 mov rdx, qword ptr [r12 + 1000]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00087_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je xchain00135_n2_α
 jmp xchain00135_n2_α
xchain00135_n1_β:
 jmp xchain00135_n2_α
# IR_VAR
 xchain00135_n2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 936], rax
 jmp xchain00135_n3_α
 xchain00135_n2_β:
 jmp xchain00135_n4_α
# IR_LIT_STRING
 xchain00135_n3_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx00137_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00135_n5_α
 xchain00135_n3_β:
 jmp xchain00135_n4_α
.Lx00137_0:
 .quad .Lx00137_0_s
.Lx00137_0_s:
 .string "l+w+"
# IR_VAR_REF local
 xchain00135_n4_α:
 lea rdi, [r12 + 1056]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00135_n6_α
 xchain00135_n4_β:
 jmp xchain00135_n10_α
 xchain00135_n5_α:
  .section .rodata
  .Lcall00138_pname: .string "options"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 928]
 mov rdx, qword ptr [r12 + 936]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 944]
 mov rdx, qword ptr [r12 + 952]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00138_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain00135_n4_α
 jmp xchain00135_n7_α
xchain00135_n5_β:
 jmp xchain00135_n4_α
# IR_LIT_STRING
 xchain00135_n6_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx00139_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain00135_n8_α
 xchain00135_n6_β:
 jmp xchain00135_n10_α
.Lx00139_0:
 .quad .Lx00139_0_s
.Lx00139_0_s:
 .string "l"
 xchain00135_n7_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 880]
 mov rdx, qword ptr [r12 + 888]
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00135_n4_α
 xchain00135_n7_β:
 jmp xchain00135_n4_α
# IR_SUBSCRIPT x[i] variable
 xchain00135_n8_α:
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, qword ptr [r12 + 816]
 mov rcx, qword ptr [r12 + 824]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00135_n10_α
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00135_n9_α
 xchain00135_n8_β:
 jmp xchain00135_n10_α
# IR_DEREF variable -> value
 xchain00135_n9_α:
 mov rdi, qword ptr [r12 + 832]
 mov rsi, qword ptr [r12 + 840]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00135_n10_α
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain00135_n11_α
 xchain00135_n9_β:
 jmp xchain00135_n10_α
# IR_LIT_INTEGER
 xchain00135_n10_α:
 mov qword ptr [r12 + 768], 6
 mov rax, qword ptr [rip + .Lx00140_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain00135_n12_α
 xchain00135_n10_β:
 jmp xchain00135_n15_α
.Lx00140_0:
 .quad 72
# IR_UNOP
 xchain00135_n11_α:
 mov eax, dword ptr [r12 + 848]
 cmp eax, 99
 je xchain00135_n10_α
 cmp eax, 0
 je xchain00135_n10_α
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 792], rax
 jmp xchain00135_n13_α
 xchain00135_n11_β:
 jmp xchain00135_n10_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00135_n12_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 744], rax
 lea rax, [rip + xchain00135_n15_α]
 mov qword ptr [r12 + 752], rax
 jmp xchain00135_n14_α
 xchain00135_n12_β:
 jmp xchain00135_n15_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00135_n13_α:
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 744], rax
 lea rax, [rip + xchain00135_n10_α]
 mov qword ptr [r12 + 752], rax
 jmp xchain00135_n14_α
 xchain00135_n13_β:
 jmp xchain00135_n15_α
# IR_ASSIGN gva
 xchain00135_n14_α:
 mov rax, qword ptr [r12 + 736]
 mov rdx, qword ptr [r12 + 744]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00135_n15_α
 xchain00135_n14_β:
 jmp xchain00135_n15_α
# IR_VAR_REF local
 xchain00135_n15_α:
 lea rdi, [r12 + 1056]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain00135_n17_α
 xchain00135_n15_β:
 jmp xchain00135_n20_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00135_n16_α:
 jmp qword ptr [r12 + 752]
 xchain00135_n16_β:
 jmp xchain00135_n15_α
# IR_LIT_STRING
 xchain00135_n17_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00141_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00135_n18_α
 xchain00135_n17_β:
 jmp xchain00135_n20_α
.Lx00141_0:
 .quad .Lx00141_0_s
.Lx00141_0_s:
 .string "w"
# IR_SUBSCRIPT x[i] variable
 xchain00135_n18_α:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00135_n20_α
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00135_n19_α
 xchain00135_n18_β:
 jmp xchain00135_n20_α
# IR_DEREF variable -> value
 xchain00135_n19_α:
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00135_n20_α
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00135_n21_α
 xchain00135_n19_β:
 jmp xchain00135_n20_α
# IR_LIT_INTEGER
 xchain00135_n20_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx00142_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain00135_n22_α
 xchain00135_n20_β:
 jmp xchain00135_n25_α
.Lx00142_0:
 .quad 15
# IR_UNOP
 xchain00135_n21_α:
 mov eax, dword ptr [r12 + 704]
 cmp eax, 99
 je xchain00135_n20_α
 cmp eax, 0
 je xchain00135_n20_α
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 648], rax
 jmp xchain00135_n23_α
 xchain00135_n21_β:
 jmp xchain00135_n20_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00135_n22_α:
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 600], rax
 lea rax, [rip + xchain00135_n25_α]
 mov qword ptr [r12 + 608], rax
 jmp xchain00135_n24_α
 xchain00135_n22_β:
 jmp xchain00135_n25_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00135_n23_α:
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 600], rax
 lea rax, [rip + xchain00135_n20_α]
 mov qword ptr [r12 + 608], rax
 jmp xchain00135_n24_α
 xchain00135_n23_β:
 jmp xchain00135_n25_α
# IR_ASSIGN gva
 xchain00135_n24_α:
 mov rax, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00135_n25_α
 xchain00135_n24_β:
 jmp xchain00135_n25_α
# IR_LIT_STRING
 xchain00135_n25_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx00143_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00135_n27_α
 xchain00135_n25_β:
 jmp xchain00135_n29_α
.Lx00143_0:
 .quad .Lx00143_0_s
.Lx00143_0_s:
 .string ""
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00135_n26_α:
 jmp qword ptr [r12 + 608]
 xchain00135_n26_β:
 jmp xchain00135_n25_α
 xchain00135_n27_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+544]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn676: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn676]
 lea rsi, [r12 + 544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain00135_n29_α
 jmp xchain00135_n28_α
 xchain00135_n27_β:
 jmp xchain00135_n29_α
# IR_ASSIGN gva
 xchain00135_n28_α:
 mov rax, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00135_n29_α
 xchain00135_n28_β:
 jmp xchain00135_n29_α
# IR_LIT_INTEGER
 xchain00135_n29_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx00144_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00135_n30_α
 xchain00135_n29_β:
 jmp xchain00135_n31_α
.Lx00144_0:
 .quad 0
# IR_ASSIGN gva
 xchain00135_n30_α:
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00135_n31_α
 xchain00135_n30_β:
 jmp xchain00135_n31_α
 xchain00135_n31_α:
  .section .rodata
  .Lcall00145_pname: .string "item"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00145_pname]
 mov esi, 0
 lea rdx, [r12 + 448]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain00135_n33_α
 jmp xchain00135_n32_α
xchain00135_n31_β:
 mov rdi, qword ptr [r12 + 448]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain00135_n33_α
 jmp xchain00135_n32_α
# IR_VAR gva
 xchain00135_n32_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00135_n34_α
 xchain00135_n32_β:
 jmp xchain00135_n31_β
# IR_VAR gva
 xchain00135_n33_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00135_n35_α
 xchain00135_n33_β:
 jmp xchain00135_n36_α
 xchain00135_n34_α:
  .section .rodata
  .Lcall00146_pname: .string "tabulate"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00146_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain00135_n33_α
 jmp xchain00135_n31_β
xchain00135_n34_β:
 jmp xchain00135_n33_α
# IR_LIT_INTEGER
 xchain00135_n35_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00147_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00135_n37_α
 xchain00135_n35_β:
 jmp xchain00135_n36_α
.Lx00147_0:
 .quad 3
# IR_VAR
 xchain00135_n36_α:
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 104], rax
 jmp xchain00135_n38_α
 xchain00135_n36_β:
 jmp xchain00135_n39_α
 xchain00135_n37_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn688: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn688]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain00135_n36_α
 jmp xchain00135_n40_α
 xchain00135_n37_β:
 jmp xchain00135_n36_α
 xchain00135_n38_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+80]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn690: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn690]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00135_n39_α
 jmp xchain00135_n41_α
 xchain00135_n38_β:
 jmp xchain00135_n39_α
 xchain00135_n39_α:
  .section .rodata
  .Lcall00148_pname: .string "Term__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00148_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain00135_n39_β:
 jmp main_ω
 xchain00135_n40_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00135_n36_α
 xchain00135_n40_β:
 jmp xchain00135_n36_α
 xchain00135_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00135_n42_α
 xchain00135_n41_β:
 jmp xchain00135_n39_α
# IR_VAR
 xchain00135_n42_α:
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 216], rax
 jmp xchain00135_n43_α
 xchain00135_n42_β:
 jmp xchain00135_n36_α
# IR_VAR gva
 xchain00135_n43_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00135_n44_α
 xchain00135_n43_β:
 jmp xchain00135_n36_α
 xchain00135_n44_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+176]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn698: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn698]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00135_n36_α
 jmp xchain00135_n45_α
 xchain00135_n44_β:
 jmp xchain00135_n36_α
# IR_VAR
 xchain00135_n45_α:
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 280], rax
 jmp xchain00135_n46_α
 xchain00135_n45_β:
 jmp xchain00135_n36_α
 xchain00135_n46_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+256]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn702: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn702]
 lea rsi, [r12 + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain00135_n36_α
 jmp xchain00135_n47_α
 xchain00135_n46_β:
 jmp xchain00135_n36_α
 xchain00135_n47_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 call str_concat_d@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00135_n48_α
 xchain00135_n47_β:
 jmp xchain00135_n36_α
 xchain00135_n48_α:
  .section .rodata
  .Lcall00149_pname: .string "format"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00149_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00135_n36_α
 jmp xchain00135_n36_α
xchain00135_n48_β:
 jmp xchain00135_n36_α
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
 mov rdi, qword ptr [r12 + 1008]
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
