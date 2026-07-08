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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1312], rax
 pop rsi
proc_addword_α_body:
# IR_VAR gva
 xchain0_n0_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
# IR_VAR
 xchain0_n1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1304], rax
 jmp xchain0_n3_α
 xchain0_n1_β:
 jmp xchain0_n2_α
# IR_VAR gva
 xchain0_n2_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain0_n4_α
 xchain0_n2_β:
 jmp proc_addword_ω
 xchain0_n3_α:
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
  .Lbynamefn6: .string "any"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn6]
 lea rsi, [r12 + 1248]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n5_α
xchain0_n3_β:
 jmp xchain0_n2_α
# IR_UNOP
 xchain0_n4_α:
 mov eax, dword ptr [r12 + 1216]
 cmp eax, 99
 je proc_addword_ω
 cmp eax, 0
 je proc_addword_ω
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1208], rax
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp proc_addword_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n5_α:
 lea rax, [rip + xchain0_n2_α]
 mov qword ptr [r12 + 1184], rax
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_addword_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n6_α:
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1176], rax
 lea rax, [rip + proc_addword_ω]
 mov qword ptr [r12 + 1184], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp proc_addword_ω
# IR_VAR_REF gva
 xchain0_n7_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n11_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n8_α:
 jmp qword ptr [r12 + 1184]
 xchain0_n8_β:
 jmp proc_addword_ω
# IR_VAR
 xchain0_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1096], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n11_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n10_α:
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 mov rdx, qword ptr [r12 + 1088]
 mov rcx, qword ptr [r12 + 1096]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n11_α
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n11_α
# IR_VAR_REF gva
 xchain0_n11_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n16_α
# IR_UNOP_TEST lv
 xchain0_n12_α:
 mov eax, dword ptr [r12 + 1104]
 cmp eax, 99
 je xchain0_n11_α
 mov rdi, qword ptr [r12 + 1104]
 mov rsi, qword ptr [r12 + 1112]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n11_α
 cmp eax, 0
 jne xchain0_n11_α
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1128], rax
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n11_α
# IR_VAR
 xchain0_n13_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1000], rax
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n16_α
 xchain0_n14_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn25: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn25]
 lea rsi, [r12 + 1168]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain0_n11_α
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp xchain0_n11_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n15_α:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 992]
 mov rcx, qword ptr [r12 + 1000]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n16_α
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n16_α
# IR_VAR
 xchain0_n16_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 888], rax
 jmp xchain0_n19_α
 xchain0_n16_β:
 jmp xchain0_n20_α
# IR_ASSIGN_VAR write through variable
 xchain0_n17_α:
 mov rdi, qword ptr [r12 + 1120]
 mov rsi, qword ptr [r12 + 1128]
 mov rdx, qword ptr [r12 + 1152]
 mov rcx, qword ptr [r12 + 1160]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n11_α
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain0_n11_α
 xchain0_n17_β:
 jmp xchain0_n11_α
# IR_LIT_STRING
 xchain0_n18_α:
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain0_n21_α
 xchain0_n18_β:
 jmp xchain0_n16_α
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "global"
# IR_VAR gva
 xchain0_n19_α:
 mov rax, qword ptr [rbx + 192]
 mov rdx, qword ptr [rbx + 200]
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain0_n22_α
 xchain0_n19_β:
 jmp xchain0_n20_α
# IR_VAR_REF gva
 xchain0_n20_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp xchain0_n27_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n21_α:
 mov rdi, qword ptr [r12 + 1008]
 mov rsi, qword ptr [r12 + 1016]
 mov rdx, qword ptr [r12 + 1024]
 mov rcx, qword ptr [r12 + 1032]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n16_α
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n16_α
# IR_UNOP
 xchain0_n22_α:
 mov eax, dword ptr [r12 + 944]
 cmp eax, 99
 je xchain0_n20_α
 cmp eax, 0
 je xchain0_n20_α
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 936], rax
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp xchain0_n20_α
# IR_VAR
 xchain0_n23_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 664], rax
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n27_α
# IR_DEREF variable -> value
 xchain0_n24_α:
 mov rdi, qword ptr [r12 + 1040]
 mov rsi, qword ptr [r12 + 1048]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n16_α
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain0_n28_α
 xchain0_n24_β:
 jmp xchain0_n16_α
# IR_LIST_BANG
 xchain0_n25_α:
 mov qword ptr [r12 + 912], 0
.Lx40_0:
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 912]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp rax, 99
 je xchain0_n20_α
 jmp xchain0_n29_α
 xchain0_n25_β:
 inc qword ptr [r12 + 912]
 jmp .Lx40_0
# IR_SUBSCRIPT x[i] variable
 xchain0_n26_α:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 656]
 mov rcx, qword ptr [r12 + 664]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n27_α
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain0_n30_α
 xchain0_n26_β:
 jmp xchain0_n27_α
# IR_VAR_REF gva
 xchain0_n27_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain0_n31_α
 xchain0_n27_β:
 jmp proc_addword_ω
# IR_UNOP
 xchain0_n28_α:
 mov eax, dword ptr [r12 + 1056]
 cmp eax, 99
 je xchain0_n16_α
 cmp eax, 0
 jne xchain0_n16_α
 mov qword ptr [r12 + 960], 0
 mov qword ptr [r12 + 968], 0
 jmp xchain0_n32_α
 xchain0_n28_β:
 jmp xchain0_n16_α
 xchain0_n29_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 896]
 mov rcx, qword ptr [r12 + 904]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n20_α
 mov rdi, qword ptr [r12 + 896]
 mov rsi, qword ptr [r12 + 904]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain0_n33_α
 xchain0_n29_β:
 jmp xchain0_n20_α
# IR_LIT_STRING
 xchain0_n30_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain0_n34_α
 xchain0_n30_β:
 jmp xchain0_n27_α
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "global"
# IR_VAR
 xchain0_n31_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 552], rax
 jmp xchain0_n35_α
 xchain0_n31_β:
 jmp proc_addword_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n32_α:
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 840], rax
 lea rax, [rip + xchain0_n16_α]
 mov qword ptr [r12 + 848], rax
 jmp xchain0_n36_α
 xchain0_n32_β:
 jmp xchain0_n20_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n33_α:
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
 lea rax, [rip + xchain0_n25_β]
 mov qword ptr [r12 + 848], rax
 jmp xchain0_n36_α
 xchain0_n33_β:
 jmp xchain0_n20_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n34_α:
 mov rdi, qword ptr [r12 + 672]
 mov rsi, qword ptr [r12 + 680]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n27_α
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain0_n38_α
 xchain0_n34_β:
 jmp xchain0_n27_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n35_α:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 552]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n39_α
 xchain0_n35_β:
 jmp proc_addword_ω
# IR_VAR_REF gva
 xchain0_n36_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n40_α
 xchain0_n36_β:
 jmp xchain0_n44_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n37_α:
 jmp qword ptr [r12 + 848]
 xchain0_n37_β:
 jmp xchain0_n20_α
# IR_UNOP_TEST lv
 xchain0_n38_α:
 mov eax, dword ptr [r12 + 704]
 cmp eax, 99
 je xchain0_n27_α
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n27_α
 cmp eax, 0
 jne xchain0_n27_α
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 728], rax
 jmp xchain0_n41_α
 xchain0_n38_β:
 jmp xchain0_n27_α
# IR_LIT_STRING
 xchain0_n39_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n42_α
 xchain0_n39_β:
 jmp proc_addword_ω
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
 .string "global"
# IR_VAR
 xchain0_n40_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 312], rax
 jmp xchain0_n43_α
 xchain0_n40_β:
 jmp xchain0_n44_α
# IR_VAR
 xchain0_n41_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 808], rax
 jmp xchain0_n45_α
 xchain0_n41_β:
 jmp xchain0_n27_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n42_α:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain0_n46_α
 xchain0_n42_β:
 jmp proc_addword_ω
# IR_SUBSCRIPT x[i] variable
 xchain0_n43_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n44_α
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain0_n47_α
 xchain0_n43_β:
 jmp xchain0_n44_α
# IR_VAR_REF gva
 xchain0_n44_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain0_n48_α
 xchain0_n44_β:
 jmp proc_addword_ω
# IR_LIT_STRING
 xchain0_n45_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx69_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain0_n49_α
 xchain0_n45_β:
 jmp xchain0_n27_α
.Lx69_0:
 .quad .Lx69_0_s
.Lx69_0_s:
 .string "global"
# IR_DEREF variable -> value
 xchain0_n46_α:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 call rt_deref@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain0_n50_α
 xchain0_n46_β:
 jmp proc_addword_ω
# IR_VAR
 xchain0_n47_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 344], rax
 jmp xchain0_n51_α
 xchain0_n47_β:
 jmp xchain0_n44_α
# IR_VAR
 xchain0_n48_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain0_n52_α
 xchain0_n48_β:
 jmp proc_addword_ω
# IR_MAKE_LIST
 xchain0_n49_α:
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
 jmp xchain0_n53_α
 xchain0_n49_β:
 jmp xchain0_n27_α
# IR_VAR
 xchain0_n50_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 632], rax
 jmp xchain0_n54_α
 xchain0_n50_β:
 jmp proc_addword_ω
# IR_SUBSCRIPT x[i] variable
 xchain0_n51_α:
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n44_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n55_α
 xchain0_n51_β:
 jmp xchain0_n44_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n52_α:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n56_α
 xchain0_n52_β:
 jmp proc_addword_ω
# IR_ASSIGN_VAR write through variable
 xchain0_n53_α:
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n27_α
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain0_n27_α
 xchain0_n53_β:
 jmp xchain0_n27_α
 xchain0_n54_α:
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
  .Lrkfn83: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn83]
 lea rsi, [r12 + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je proc_addword_ω
 jmp xchain0_n57_α
 xchain0_n54_β:
 jmp proc_addword_ω
# IR_UNOP_TEST lv
 xchain0_n55_α:
 mov eax, dword ptr [r12 + 352]
 cmp eax, 99
 je xchain0_n44_α
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n44_α
 cmp eax, 0
 jne xchain0_n44_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 376], rax
 jmp xchain0_n58_α
 xchain0_n55_β:
 jmp xchain0_n44_α
# IR_VAR
 xchain0_n56_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 232], rax
 jmp xchain0_n59_α
 xchain0_n56_β:
 jmp proc_addword_ω
 xchain0_n57_α:
 jmp xchain0_n60_α
xchain0_n57_β:
 jmp proc_addword_ω
# IR_VAR
 xchain0_n58_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 456], rax
 jmp xchain0_n61_α
 xchain0_n58_β:
 jmp xchain0_n44_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n59_α:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n62_α
 xchain0_n59_β:
 jmp proc_addword_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n60_α:
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + proc_addword_ω]
 mov qword ptr [r12 + 112], rax
 jmp xchain0_n63_α
 xchain0_n60_β:
 jmp proc_addword_ω
# IR_VAR
 xchain0_n61_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n65_α
 xchain0_n61_β:
 jmp xchain0_n44_α
# IR_DEREF variable -> value
 xchain0_n62_α:
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 call rt_deref@PLT
 cmp eax, 99
 je proc_addword_ω
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n66_α
 xchain0_n62_β:
 jmp proc_addword_ω
 xchain0_n63_α:
 jmp xchain0_n67_α
xchain0_n63_β:
 jmp proc_addword_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n64_α:
 jmp qword ptr [r12 + 112]
 xchain0_n64_β:
 jmp proc_addword_ω
# IR_MAKE_LIST
 xchain0_n65_α:
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
 jmp xchain0_n68_α
 xchain0_n65_β:
 jmp xchain0_n44_α
# IR_VAR
 xchain0_n66_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n69_α
 xchain0_n66_β:
 jmp proc_addword_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n67_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 72], rax
 lea rax, [rip + xchain0_n64_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_addword_γ
 xchain0_n67_β:
 jmp proc_addword_ω
# IR_ASSIGN_VAR write through variable
 xchain0_n68_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n44_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain0_n44_α
 xchain0_n68_β:
 jmp xchain0_n44_α
 xchain0_n69_α:
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
  .Lrkfn107: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn107]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je proc_addword_ω
 jmp xchain0_n71_α
 xchain0_n69_β:
 jmp proc_addword_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n70_α:
 jmp qword ptr [r12 + 80]
 xchain0_n70_β:
 jmp proc_addword_ω
 xchain0_n71_α:
 jmp xchain0_n72_α
xchain0_n71_β:
 jmp proc_addword_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n72_α:
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + proc_addword_ω]
 mov qword ptr [r12 + 112], rax
 jmp xchain0_n63_α
 xchain0_n72_β:
 jmp proc_addword_ω
proc_addword_β:
jmp proc_addword_ω
proc_addword_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1312]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 2640], rax
 pop rsi
proc_getword_α_body:
# IR_VAR_REF gva
 xchain00001_n0_α:
 lea rdi, [rbx + 256]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 jmp xchain00001_n1_α
 xchain00001_n0_β:
 jmp xchain00001_n5_α
# IR_UNOP_TEST lv
 xchain00001_n1_α:
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
# IR_LIT_INTEGER
 xchain00001_n2_α:
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
# IR_ASSIGN_VAR write through variable
 xchain00001_n4_α:
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
# IR_VAR gva
 xchain00001_n5_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 jmp xchain00001_n7_α
 xchain00001_n5_β:
 jmp xchain00001_n8_α
# IR_LIT_CHARSET
 xchain00001_n6_α:
 mov qword ptr [r12 + 2560], 1
 mov dword ptr [r12 + 2564], -1
 mov rax, qword ptr [rip + .Lx00003_0]
 mov qword ptr [r12 + 2568], rax
 jmp xchain00001_n9_α
 xchain00001_n6_β:
 jmp xchain00001_n5_α
.Lx00003_0:
 .quad .Lx00003_0_s
.Lx00003_0_s:
 .string "\t\n "
# IR_UNOP
 xchain00001_n7_α:
 mov rdi, qword ptr [r12 + 2464]
 mov rsi, qword ptr [r12 + 2472]
 call rt_size_d@PLT
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 jmp xchain00001_n10_α
 xchain00001_n7_β:
 jmp xchain00001_n8_α
# IR_VAR gva
 xchain00001_n8_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 jmp xchain00001_n11_α
 xchain00001_n8_β:
 jmp xchain00001_n12_α
# IR_UNOP
 xchain00001_n9_α:
 mov rdi, qword ptr [r12 + 2560]
 mov rsi, qword ptr [r12 + 2568]
 call rt_cset_compl@PLT
 mov qword ptr [r12 + 2544], rax
 mov qword ptr [r12 + 2552], rdx
 jmp xchain00001_n13_α
 xchain00001_n9_β:
 jmp xchain00001_n5_α
# IR_LIT_INTEGER
 xchain00001_n10_α:
 mov qword ptr [r12 + 2480], 6
 mov rax, qword ptr [rip + .Lx00004_0]
 mov qword ptr [r12 + 2488], rax
 jmp xchain00001_n14_α
 xchain00001_n10_β:
 jmp xchain00001_n8_α
.Lx00004_0:
 .quad 0
# IR_UNOP
 xchain00001_n11_α:
 mov eax, dword ptr [r12 + 2336]
 cmp eax, 99
 je xchain00001_n12_α
 cmp eax, 0
 jne xchain00001_n12_α
 mov qword ptr [r12 + 2320], 0
 mov qword ptr [r12 + 2328], 0
 jmp xchain00001_n15_α
 xchain00001_n11_β:
 jmp xchain00001_n12_α
# IR_VAR gva
 xchain00001_n12_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain00001_n16_α
 xchain00001_n12_β:
 jmp xchain00001_n17_α
# IR_ASSIGN gva
 xchain00001_n13_α:
 mov rax, qword ptr [r12 + 2544]
 mov rdx, qword ptr [r12 + 2552]
 mov qword ptr [rbx + 240], rax
 mov qword ptr [rbx + 248], rdx
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 jmp xchain00001_n18_α
 xchain00001_n13_β:
 jmp xchain00001_n5_α
 xchain00001_n14_α:
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
 jle xchain00001_n8_α
 mov rcx, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 2432], rcx
 mov rcx, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 2440], rcx
 jmp xchain00001_n19_α
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
 je xchain00001_n8_α
 jmp xchain00001_n19_α
.Lx00005_2:
 mov rdi, qword ptr [r12 + 2448]
 mov rsi, qword ptr [r12 + 2456]
 mov rdx, qword ptr [r12 + 2480]
 mov rcx, qword ptr [r12 + 2488]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n8_α
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 2432], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 2440], rax
 jmp xchain00001_n19_α
 xchain00001_n14_β:
 jmp xchain00001_n8_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00001_n15_α:
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 2200], rax
 lea rax, [rip + xchain00001_n12_α]
 mov qword ptr [r12 + 2208], rax
 jmp xchain00001_n20_α
 xchain00001_n15_β:
 jmp xchain00001_n17_α
# IR_VAR gva
 xchain00001_n16_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain00001_n22_α
 xchain00001_n16_β:
 jmp xchain00001_n17_α
# IR_VAR gva
 xchain00001_n17_α:
 mov rax, qword ptr [rbx + 240]
 mov rdx, qword ptr [rbx + 248]
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain00001_n23_α
 xchain00001_n17_β:
 jmp xchain00001_n24_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00001_n18_α:
 mov rax, qword ptr [r12 + 2528]
 mov qword ptr [r12 + 2496], rax
 mov rax, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 2504], rax
 lea rax, [rip + xchain00001_n3_α]
 mov qword ptr [r12 + 2512], rax
 jmp xchain00001_n3_α
 xchain00001_n18_β:
 jmp xchain00001_n5_α
# IR_VAR gva
 xchain00001_n19_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 jmp xchain00001_n26_α
 xchain00001_n19_β:
 jmp proc_getword_ω
# IR_VAR gva
 xchain00001_n20_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain00001_n27_α
 xchain00001_n20_β:
 jmp proc_getword_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n21_α:
 jmp qword ptr [r12 + 2208]
 xchain00001_n21_β:
 jmp xchain00001_n17_α
# IR_UNOP
 xchain00001_n22_α:
 mov rdi, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 call rt_size_d@PLT
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 jmp xchain00001_n28_α
 xchain00001_n22_β:
 jmp xchain00001_n17_α
# IR_VAR gva
 xchain00001_n23_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 jmp xchain00001_n29_α
 xchain00001_n23_β:
 jmp xchain00001_n24_α
# IR_VAR gva
 xchain00001_n24_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain00001_n30_α
 xchain00001_n24_β:
 jmp xchain00001_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n25_α:
 jmp qword ptr [r12 + 2512]
 xchain00001_n25_β:
 jmp xchain00001_n5_α
 xchain00001_n26_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2416] -> [r12+2400]
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2400], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2408], rax
  .section .rodata
  .Lrkfn146: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn146]
 lea rsi, [r12 + 2400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 cmp eax, 99
 je proc_getword_ω
 jmp xchain00001_n31_α
 xchain00001_n26_β:
 jmp proc_getword_ω
 xchain00001_n27_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2176] -> [r12+2160]
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 2160], rax
 mov rax, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 2168], rax
  .section .rodata
  .Lrkfn148: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn148]
 lea rsi, [r12 + 2160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 cmp eax, 99
 je proc_getword_ω
 jmp xchain00001_n32_α
 xchain00001_n27_β:
 jmp proc_getword_ω
# IR_LIT_INTEGER
 xchain00001_n28_α:
 mov qword ptr [r12 + 2304], 6
 mov rax, qword ptr [rip + .Lx00006_0]
 mov qword ptr [r12 + 2312], rax
 jmp xchain00001_n33_α
 xchain00001_n28_β:
 jmp xchain00001_n17_α
.Lx00006_0:
 .quad 1
# IR_VAR gva
 xchain00001_n29_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 jmp xchain00001_n34_α
 xchain00001_n29_β:
 jmp xchain00001_n24_α
# IR_UNOP
 xchain00001_n30_α:
 mov rdi, qword ptr [r12 + 1808]
 mov rsi, qword ptr [r12 + 1816]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain00001_n35_α
 xchain00001_n30_β:
 jmp xchain00001_n5_α
# IR_RETURN
 xchain00001_n31_α:
 mov rax, qword ptr [r12 + 2384]
 mov rdx, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_getword_γ
# IR_ASSIGN gva
 xchain00001_n32_α:
 mov rax, qword ptr [r12 + 2144]
 mov rdx, qword ptr [r12 + 2152]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 jmp xchain00001_n36_α
 xchain00001_n32_β:
 jmp proc_getword_ω
 xchain00001_n33_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 100
 je .Lx00007_0
 mov eax, dword ptr [r12 + 2304]
 cmp eax, 100
 je .Lx00007_0
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 6
 jne .Lx00007_2
 mov eax, dword ptr [r12 + 2304]
 cmp eax, 6
 jne .Lx00007_2
.Lx00007_1:
 mov rax, qword ptr [r12 + 2280]
 mov rcx, qword ptr [r12 + 2312]
 add rax, rcx
 mov qword ptr [r12 + 2256], 6
 mov qword ptr [r12 + 2264], rax
 jmp xchain00001_n37_α
.Lx00007_0:
 mov rdi, qword ptr [r12 + 2272]
 mov rsi, qword ptr [r12 + 2280]
 mov rdx, qword ptr [r12 + 2304]
 mov rcx, qword ptr [r12 + 2312]
 mov r8d, 0
 lea r9, [r12 + 2256]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00007_3
.Lx00007_2:
 mov rdi, qword ptr [r12 + 2272]
 mov rsi, qword ptr [r12 + 2280]
 mov rdx, qword ptr [r12 + 2304]
 mov rcx, qword ptr [r12 + 2312]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n17_α
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
.Lx00007_3:
 jmp xchain00001_n37_α
 xchain00001_n33_β:
 jmp xchain00001_n17_α
 xchain00001_n34_α:
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
  .Lbynamefn156: .string "upto"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn156]
 lea rsi, [r12 + 1872]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 cmp eax, 99
 je xchain00001_n24_α
 jmp xchain00001_n38_α
xchain00001_n34_β:
 jmp xchain00001_n24_α
# IR_LIT_INTEGER
 xchain00001_n35_α:
 mov qword ptr [r12 + 1824], 6
 mov rax, qword ptr [rip + .Lx00008_0]
 mov qword ptr [r12 + 1832], rax
 jmp xchain00001_n39_α
 xchain00001_n35_β:
 jmp xchain00001_n5_α
.Lx00008_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00001_n36_α:
 mov qword ptr [r12 + 2112], 6
 mov rax, qword ptr [rip + .Lx00009_0]
 mov qword ptr [r12 + 2120], rax
 jmp xchain00001_n40_α
 xchain00001_n36_β:
 jmp xchain00001_n44_α
.Lx00009_0:
 .quad 1
 xchain00001_n37_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2240]
 cmp eax, 100
 je .Lx00010_0
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 100
 je .Lx00010_0
 mov eax, dword ptr [r12 + 2240]
 cmp eax, 6
 jne .Lx00010_2
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 6
 jne .Lx00010_2
.Lx00010_1:
 mov rax, qword ptr [r12 + 2248]
 mov rcx, qword ptr [r12 + 2264]
 cmp rax, rcx
 jne xchain00001_n17_α
 mov rcx, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 2224], rcx
 mov rcx, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2232], rcx
 jmp xchain00001_n41_α
.Lx00010_0:
 mov rdi, qword ptr [r12 + 2240]
 mov rsi, qword ptr [r12 + 2248]
 mov rdx, qword ptr [r12 + 2256]
 mov rcx, qword ptr [r12 + 2264]
 mov r8d, 9
 lea r9, [r12 + 2224]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00010_1
 cmp eax, 1
 je xchain00001_n17_α
 jmp xchain00001_n41_α
.Lx00010_2:
 mov rdi, qword ptr [r12 + 2240]
 mov rsi, qword ptr [r12 + 2248]
 mov rdx, qword ptr [r12 + 2256]
 mov rcx, qword ptr [r12 + 2264]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n17_α
 mov rax, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2232], rax
 jmp xchain00001_n41_α
 xchain00001_n37_β:
 jmp xchain00001_n17_α
# IR_ASSIGN gva
 xchain00001_n38_α:
 mov rax, qword ptr [r12 + 1856]
 mov rdx, qword ptr [r12 + 1864]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 jmp xchain00001_n42_α
 xchain00001_n38_β:
 jmp xchain00001_n24_α
 xchain00001_n39_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1792]
 cmp eax, 100
 je .Lx00011_0
 mov eax, dword ptr [r12 + 1824]
 cmp eax, 100
 je .Lx00011_0
 mov eax, dword ptr [r12 + 1792]
 cmp eax, 6
 jne .Lx00011_2
 mov eax, dword ptr [r12 + 1824]
 cmp eax, 6
 jne .Lx00011_2
.Lx00011_1:
 mov rax, qword ptr [r12 + 1800]
 mov rcx, qword ptr [r12 + 1832]
 add rax, rcx
 mov qword ptr [r12 + 1776], 6
 mov qword ptr [r12 + 1784], rax
 jmp xchain00001_n43_α
.Lx00011_0:
 mov rdi, qword ptr [r12 + 1792]
 mov rsi, qword ptr [r12 + 1800]
 mov rdx, qword ptr [r12 + 1824]
 mov rcx, qword ptr [r12 + 1832]
 mov r8d, 0
 lea r9, [r12 + 1776]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00011_3
.Lx00011_2:
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
.Lx00011_3:
 jmp xchain00001_n43_α
 xchain00001_n39_β:
 jmp xchain00001_n5_α
# IR_ASSIGN gva
 xchain00001_n40_α:
 mov rax, qword ptr [r12 + 2112]
 mov rdx, qword ptr [r12 + 2120]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain00001_n44_α
 xchain00001_n40_β:
 jmp xchain00001_n44_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00001_n41_α:
 mov rax, qword ptr [r12 + 2224]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 2200], rax
 lea rax, [rip + xchain00001_n17_α]
 mov qword ptr [r12 + 2208], rax
 jmp xchain00001_n20_α
 xchain00001_n41_β:
 jmp xchain00001_n17_α
# IR_VAR gva
 xchain00001_n42_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain00001_n45_α
 xchain00001_n42_β:
 jmp xchain00001_n46_α
# IR_ASSIGN gva
 xchain00001_n43_α:
 mov rax, qword ptr [r12 + 1776]
 mov rdx, qword ptr [r12 + 1784]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain00001_n47_α
 xchain00001_n43_β:
 jmp xchain00001_n5_α
# IR_VAR gva
 xchain00001_n44_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain00001_n48_α
 xchain00001_n44_β:
 jmp xchain00001_n17_α
 xchain00001_n45_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1744]
 mov rdx, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain00001_n46_α
 xchain00001_n45_β:
 jmp xchain00001_n46_α
# IR_VAR_REF gva
 xchain00001_n46_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00001_n49_α
 xchain00001_n46_β:
 jmp xchain00001_n54_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00001_n47_α:
 mov rax, qword ptr [r12 + 1760]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 1768]
 mov qword ptr [r12 + 24], rax
 lea rax, [rip + xchain00001_n3_α]
 mov qword ptr [r12 + 32], rax
 jmp xchain00001_n50_α
 xchain00001_n47_β:
 jmp xchain00001_n5_α
# IR_LIT_INTEGER
 xchain00001_n48_α:
 mov qword ptr [r12 + 2080], 6
 mov rax, qword ptr [rip + .Lx00012_0]
 mov qword ptr [r12 + 2088], rax
 jmp xchain00001_n52_α
 xchain00001_n48_β:
 jmp xchain00001_n17_α
.Lx00012_0:
 .quad 1
# IR_VAR gva
 xchain00001_n49_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xchain00001_n53_α
 xchain00001_n49_β:
 jmp xchain00001_n54_α
 xchain00001_n50_α:
 jmp xchain00001_n5_α
xchain00001_n50_β:
 jmp xchain00001_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n51_α:
 jmp qword ptr [r12 + 32]
 xchain00001_n51_β:
 jmp xchain00001_n5_α
 xchain00001_n52_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2064]
 cmp eax, 100
 je .Lx00013_0
 mov eax, dword ptr [r12 + 2080]
 cmp eax, 100
 je .Lx00013_0
 mov eax, dword ptr [r12 + 2064]
 cmp eax, 6
 jne .Lx00013_2
 mov eax, dword ptr [r12 + 2080]
 cmp eax, 6
 jne .Lx00013_2
.Lx00013_1:
 mov rax, qword ptr [r12 + 2072]
 mov rcx, qword ptr [r12 + 2088]
 add rax, rcx
 mov qword ptr [r12 + 2048], 6
 mov qword ptr [r12 + 2056], rax
 jmp xchain00001_n55_α
.Lx00013_0:
 mov rdi, qword ptr [r12 + 2064]
 mov rsi, qword ptr [r12 + 2072]
 mov rdx, qword ptr [r12 + 2080]
 mov rcx, qword ptr [r12 + 2088]
 mov r8d, 0
 lea r9, [r12 + 2048]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00013_3
.Lx00013_2:
 mov rdi, qword ptr [r12 + 2064]
 mov rsi, qword ptr [r12 + 2072]
 mov rdx, qword ptr [r12 + 2080]
 mov rcx, qword ptr [r12 + 2088]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n17_α
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
.Lx00013_3:
 jmp xchain00001_n55_α
 xchain00001_n52_β:
 jmp xchain00001_n17_α
# IR_SUBSCRIPT x[i] variable
 xchain00001_n53_α:
 mov rdi, qword ptr [r12 + 1600]
 mov rsi, qword ptr [r12 + 1608]
 mov rdx, qword ptr [r12 + 1616]
 mov rcx, qword ptr [r12 + 1624]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00001_n54_α
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain00001_n56_α
 xchain00001_n53_β:
 jmp xchain00001_n54_α
# IR_VAR_REF gva
 xchain00001_n54_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 jmp xchain00001_n57_α
 xchain00001_n54_β:
 jmp xchain00001_n61_α
# IR_ASSIGN gva
 xchain00001_n55_α:
 mov rax, qword ptr [r12 + 2048]
 mov rdx, qword ptr [r12 + 2056]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 jmp xchain00001_n58_α
 xchain00001_n55_β:
 jmp xchain00001_n17_α
# IR_DEREF variable -> value
 xchain00001_n56_α:
 mov rdi, qword ptr [r12 + 1632]
 mov rsi, qword ptr [r12 + 1640]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n54_α
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain00001_n59_α
 xchain00001_n56_β:
 jmp xchain00001_n54_α
# IR_VAR gva
 xchain00001_n57_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain00001_n60_α
 xchain00001_n57_β:
 jmp xchain00001_n61_α
 xchain00001_n58_α:
 jmp xchain00001_n62_α
xchain00001_n58_β:
 jmp xchain00001_n17_α
# IR_LIT_STRING
 xchain00001_n59_α:
 mov qword ptr [r12 + 1712], 1
 mov rax, qword ptr [rip + .Lx00014_0]
 mov qword ptr [r12 + 1720], rax
 jmp xchain00001_n63_α
 xchain00001_n59_β:
 jmp xchain00001_n70_α
.Lx00014_0:
 .quad .Lx00014_0_s
.Lx00014_0_s:
 .string "'"
# IR_SUBSCRIPT x[i] variable
 xchain00001_n60_α:
 mov rdi, qword ptr [r12 + 1504]
 mov rsi, qword ptr [r12 + 1512]
 mov rdx, qword ptr [r12 + 1520]
 mov rcx, qword ptr [r12 + 1528]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00001_n61_α
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain00001_n64_α
 xchain00001_n60_β:
 jmp xchain00001_n61_α
# IR_VAR gva
 xchain00001_n61_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain00001_n65_α
 xchain00001_n61_β:
 jmp xchain00001_n66_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00001_n62_α:
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 2000], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 2008], rax
 lea rax, [rip + xchain00001_n17_α]
 mov qword ptr [r12 + 2016], rax
 jmp xchain00001_n67_α
 xchain00001_n62_β:
 jmp xchain00001_n17_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00001_n63_α:
 mov rax, qword ptr [r12 + 1712]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 1672], rax
 lea rax, [rip + xchain00001_n70_α]
 mov qword ptr [r12 + 1680], rax
 jmp xchain00001_n69_α
 xchain00001_n63_β:
 jmp xchain00001_n54_α
# IR_DEREF variable -> value
 xchain00001_n64_α:
 mov rdi, qword ptr [r12 + 1536]
 mov rsi, qword ptr [r12 + 1544]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n61_α
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain00001_n72_α
 xchain00001_n64_β:
 jmp xchain00001_n61_α
# IR_VAR gva
 xchain00001_n65_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain00001_n73_α
 xchain00001_n65_β:
 jmp xchain00001_n66_α
# IR_VAR gva
 xchain00001_n66_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain00001_n74_α
 xchain00001_n66_β:
 jmp xchain00001_n75_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00001_n67_α:
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 1976], rax
 lea rax, [rip + xchain00001_n68_α]
 mov qword ptr [r12 + 1984], rax
 jmp xchain00001_n17_α
 xchain00001_n67_β:
 jmp xchain00001_n17_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n68_α:
 jmp qword ptr [r12 + 2016]
 xchain00001_n68_β:
 jmp xchain00001_n17_α
 xchain00001_n69_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 1648]
 mov rsi, qword ptr [r12 + 1656]
 mov rdx, qword ptr [r12 + 1664]
 mov rcx, qword ptr [r12 + 1672]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n54_α
 mov rdi, qword ptr [r12 + 1664]
 mov rsi, qword ptr [r12 + 1672]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain00001_n77_α
 xchain00001_n69_β:
 jmp xchain00001_n54_α
# IR_LIT_STRING
 xchain00001_n70_α:
 mov qword ptr [r12 + 1696], 1
 mov rax, qword ptr [rip + .Lx00015_0]
 mov qword ptr [r12 + 1704], rax
 jmp xchain00001_n78_α
 xchain00001_n70_β:
 jmp xchain00001_n54_α
.Lx00015_0:
 .quad .Lx00015_0_s
.Lx00015_0_s:
 .string "\""
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n71_α:
 jmp qword ptr [r12 + 1680]
 xchain00001_n71_β:
 jmp xchain00001_n54_α
# IR_LIT_STRING
 xchain00001_n72_α:
 mov qword ptr [r12 + 1568], 1
 mov rax, qword ptr [rip + .Lx00016_0]
 mov qword ptr [r12 + 1576], rax
 jmp xchain00001_n79_α
 xchain00001_n72_β:
 jmp xchain00001_n61_α
.Lx00016_0:
 .quad .Lx00016_0_s
.Lx00016_0_s:
 .string "#"
# IR_VAR gva
 xchain00001_n73_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain00001_n80_α
 xchain00001_n73_β:
 jmp xchain00001_n66_α
# IR_LIT_INTEGER
 xchain00001_n74_α:
 mov qword ptr [r12 + 1344], 6
 mov rax, qword ptr [rip + .Lx00017_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain00001_n81_α
 xchain00001_n74_β:
 jmp xchain00001_n75_α
.Lx00017_0:
 .quad 1
# IR_VAR_REF gva
 xchain00001_n75_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain00001_n82_α
 xchain00001_n75_β:
 jmp proc_getword_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n76_α:
 jmp qword ptr [r12 + 1984]
 xchain00001_n76_β:
 jmp xchain00001_n17_α
# IR_VAR gva
 xchain00001_n77_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain00001_n83_α
 xchain00001_n77_β:
 jmp xchain00001_n84_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00001_n78_α:
 mov rax, qword ptr [r12 + 1696]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 1672], rax
 lea rax, [rip + xchain00001_n54_α]
 mov qword ptr [r12 + 1680], rax
 jmp xchain00001_n69_α
 xchain00001_n78_β:
 jmp xchain00001_n54_α
 xchain00001_n79_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 1552]
 mov rsi, qword ptr [r12 + 1560]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n61_α
 mov rdi, qword ptr [r12 + 1568]
 mov rsi, qword ptr [r12 + 1576]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 jmp xchain00001_n85_α
 xchain00001_n79_β:
 jmp xchain00001_n61_α
 xchain00001_n80_α:
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
  .Lbynamefn216: .string "many"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn216]
 lea rsi, [r12 + 1392]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 cmp eax, 99
 je xchain00001_n66_α
 jmp xchain00001_n86_α
xchain00001_n80_β:
 jmp xchain00001_n66_α
 xchain00001_n81_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1328]
 cmp eax, 100
 je .Lx00018_0
 mov eax, dword ptr [r12 + 1344]
 cmp eax, 100
 je .Lx00018_0
 mov eax, dword ptr [r12 + 1328]
 cmp eax, 6
 jne .Lx00018_2
 mov eax, dword ptr [r12 + 1344]
 cmp eax, 6
 jne .Lx00018_2
.Lx00018_1:
 mov rax, qword ptr [r12 + 1336]
 mov rcx, qword ptr [r12 + 1352]
 add rax, rcx
 mov qword ptr [r12 + 1312], 6
 mov qword ptr [r12 + 1320], rax
 jmp xchain00001_n87_α
.Lx00018_0:
 mov rdi, qword ptr [r12 + 1328]
 mov rsi, qword ptr [r12 + 1336]
 mov rdx, qword ptr [r12 + 1344]
 mov rcx, qword ptr [r12 + 1352]
 mov r8d, 0
 lea r9, [r12 + 1312]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00018_3
.Lx00018_2:
 mov rdi, qword ptr [r12 + 1328]
 mov rsi, qword ptr [r12 + 1336]
 mov rdx, qword ptr [r12 + 1344]
 mov rcx, qword ptr [r12 + 1352]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n75_α
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
.Lx00018_3:
 jmp xchain00001_n87_α
 xchain00001_n81_β:
 jmp xchain00001_n75_α
# IR_VAR gva
 xchain00001_n82_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain00001_n88_α
 xchain00001_n82_β:
 jmp proc_getword_ω
# IR_UNOP
 xchain00001_n83_α:
 mov eax, dword ptr [r12 + 976]
 cmp eax, 99
 je xchain00001_n84_α
 cmp eax, 0
 jne xchain00001_n84_α
 mov qword ptr [r12 + 960], 0
 mov qword ptr [r12 + 968], 0
 jmp xchain00001_n89_α
 xchain00001_n83_β:
 jmp xchain00001_n84_α
# IR_VAR gva
 xchain00001_n84_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain00001_n90_α
 xchain00001_n84_β:
 jmp xchain00001_n5_α
# IR_VAR gva
 xchain00001_n85_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain00001_n91_α
 xchain00001_n85_β:
 jmp xchain00001_n5_α
# IR_ASSIGN gva
 xchain00001_n86_α:
 mov rax, qword ptr [r12 + 1376]
 mov rdx, qword ptr [r12 + 1384]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain00001_n92_α
 xchain00001_n86_β:
 jmp xchain00001_n66_α
# IR_ASSIGN gva
 xchain00001_n87_α:
 mov rax, qword ptr [r12 + 1312]
 mov rdx, qword ptr [r12 + 1320]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain00001_n75_α
 xchain00001_n87_β:
 jmp xchain00001_n75_α
# IR_LIT_INTEGER
 xchain00001_n88_α:
 mov qword ptr [r12 + 1248], 6
 mov rax, qword ptr [rip + .Lx00019_0]
 mov qword ptr [r12 + 1256], rax
 jmp xchain00001_n93_α
 xchain00001_n88_β:
 jmp proc_getword_ω
.Lx00019_0:
 .quad 1
# IR_VAR_REF gva
 xchain00001_n89_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00001_n94_α
 xchain00001_n89_β:
 jmp xchain00001_n00020_α
# IR_LIT_INTEGER
 xchain00001_n90_α:
 mov qword ptr [r12 + 944], 6
 mov rax, qword ptr [rip + .Lx00021_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00001_n95_α
 xchain00001_n90_β:
 jmp xchain00001_n5_α
.Lx00021_0:
 .quad 1
# IR_UNOP
 xchain00001_n91_α:
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain00001_n96_α
 xchain00001_n91_β:
 jmp xchain00001_n5_α
# IR_VAR gva
 xchain00001_n92_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain00001_n97_α
 xchain00001_n92_β:
 jmp proc_getword_ω
 xchain00001_n93_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1232]
 cmp eax, 100
 je .Lx00022_0
 mov eax, dword ptr [r12 + 1248]
 cmp eax, 100
 je .Lx00022_0
 mov eax, dword ptr [r12 + 1232]
 cmp eax, 6
 jne .Lx00022_2
 mov eax, dword ptr [r12 + 1248]
 cmp eax, 6
 jne .Lx00022_2
.Lx00022_1:
 mov rax, qword ptr [r12 + 1240]
 mov rcx, qword ptr [r12 + 1256]
 sub rax, rcx
 mov qword ptr [r12 + 1216], 6
 mov qword ptr [r12 + 1224], rax
 jmp xchain00001_n98_α
.Lx00022_0:
 mov rdi, qword ptr [r12 + 1232]
 mov rsi, qword ptr [r12 + 1240]
 mov rdx, qword ptr [r12 + 1248]
 mov rcx, qword ptr [r12 + 1256]
 mov r8d, 1
 lea r9, [r12 + 1216]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00022_3
.Lx00022_2:
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
.Lx00022_3:
 jmp xchain00001_n98_α
 xchain00001_n93_β:
 jmp proc_getword_ω
# IR_VAR gva
 xchain00001_n94_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain00001_n99_α
 xchain00001_n94_β:
 jmp xchain00001_n00020_α
 xchain00001_n95_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 928]
 cmp eax, 100
 je .Lx00023_0
 mov eax, dword ptr [r12 + 944]
 cmp eax, 100
 je .Lx00023_0
 mov eax, dword ptr [r12 + 928]
 cmp eax, 6
 jne .Lx00023_2
 mov eax, dword ptr [r12 + 944]
 cmp eax, 6
 jne .Lx00023_2
.Lx00023_1:
 mov rax, qword ptr [r12 + 936]
 mov rcx, qword ptr [r12 + 952]
 add rax, rcx
 mov qword ptr [r12 + 912], 6
 mov qword ptr [r12 + 920], rax
 jmp xchain00001_n00024_α
.Lx00023_0:
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 mov r8d, 0
 lea r9, [r12 + 912]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00023_3
.Lx00023_2:
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
.Lx00023_3:
 jmp xchain00001_n00024_α
 xchain00001_n95_β:
 jmp xchain00001_n5_α
# IR_LIT_INTEGER
 xchain00001_n96_α:
 mov qword ptr [r12 + 1088], 6
 mov rax, qword ptr [rip + .Lx00025_0]
 mov qword ptr [r12 + 1096], rax
 jmp xchain00001_n00026_α
 xchain00001_n96_β:
 jmp xchain00001_n5_α
.Lx00025_0:
 .quad 1
# IR_VAR
 xchain00001_n97_α:
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 1176], rax
 jmp xchain00001_n00027_α
 xchain00001_n97_β:
 jmp proc_getword_ω
# IR_SUBSCRIPT x[i] variable
 xchain00001_n98_α:
 mov rdi, qword ptr [r12 + 1200]
 mov rsi, qword ptr [r12 + 1208]
 mov rdx, qword ptr [r12 + 1216]
 mov rcx, qword ptr [r12 + 1224]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_getword_ω
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain00001_n00028_α
 xchain00001_n98_β:
 jmp proc_getword_ω
# IR_SUBSCRIPT x[i] variable
 xchain00001_n99_α:
 mov rdi, qword ptr [r12 + 832]
 mov rsi, qword ptr [r12 + 840]
 mov rdx, qword ptr [r12 + 848]
 mov rcx, qword ptr [r12 + 856]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00001_n00020_α
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00001_n00029_α
 xchain00001_n99_β:
 jmp xchain00001_n00020_α
# IR_VAR gva
 xchain00001_n00020_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00001_n00030_α
 xchain00001_n00020_β:
 jmp xchain00001_n00031_α
# IR_ASSIGN gva
 xchain00001_n00024_α:
 mov rax, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00001_n00032_α
 xchain00001_n00024_β:
 jmp xchain00001_n5_α
 xchain00001_n00026_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1056]
 cmp eax, 100
 je .Lx00033_0
 mov eax, dword ptr [r12 + 1088]
 cmp eax, 100
 je .Lx00033_0
 mov eax, dword ptr [r12 + 1056]
 cmp eax, 6
 jne .Lx00033_2
 mov eax, dword ptr [r12 + 1088]
 cmp eax, 6
 jne .Lx00033_2
.Lx00033_1:
 mov rax, qword ptr [r12 + 1064]
 mov rcx, qword ptr [r12 + 1096]
 add rax, rcx
 mov qword ptr [r12 + 1040], 6
 mov qword ptr [r12 + 1048], rax
 jmp xchain00001_n00034_α
.Lx00033_0:
 mov rdi, qword ptr [r12 + 1056]
 mov rsi, qword ptr [r12 + 1064]
 mov rdx, qword ptr [r12 + 1088]
 mov rcx, qword ptr [r12 + 1096]
 mov r8d, 0
 lea r9, [r12 + 1040]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00033_3
.Lx00033_2:
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
.Lx00033_3:
 jmp xchain00001_n00034_α
 xchain00001_n00026_β:
 jmp xchain00001_n5_α
# IR_VAR gva
 xchain00001_n00027_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain00001_n00035_α
 xchain00001_n00027_β:
 jmp proc_getword_ω
# IR_DEREF variable -> value
 xchain00001_n00028_α:
 mov rdi, qword ptr [r12 + 1264]
 mov rsi, qword ptr [r12 + 1272]
 call rt_deref@PLT
 cmp eax, 99
 je proc_getword_ω
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain00001_n00036_α
 xchain00001_n00028_β:
 jmp proc_getword_ω
# IR_DEREF variable -> value
 xchain00001_n00029_α:
 mov rdi, qword ptr [r12 + 864]
 mov rsi, qword ptr [r12 + 872]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n00020_α
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00001_n00037_α
 xchain00001_n00029_β:
 jmp xchain00001_n00020_α
# IR_LIT_INTEGER
 xchain00001_n00030_α:
 mov qword ptr [r12 + 800], 6
 mov rax, qword ptr [rip + .Lx00038_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain00001_n00001_α
 xchain00001_n00030_β:
 jmp xchain00001_n00031_α
.Lx00038_0:
 .quad 1
 xchain00001_n00039_α:
 jmp xchain00001_n00031_α
xchain00001_n00039_β:
 jmp xchain00001_n00031_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00001_n00032_α:
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 88], rax
 lea rax, [rip + xchain00001_n3_α]
 mov qword ptr [r12 + 96], rax
 jmp xchain00001_n00040_α
 xchain00001_n00032_β:
 jmp xchain00001_n5_α
# IR_ASSIGN gva
 xchain00001_n00034_α:
 mov rax, qword ptr [r12 + 1040]
 mov rdx, qword ptr [r12 + 1048]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain00001_n00002_α
 xchain00001_n00034_β:
 jmp xchain00001_n5_α
# IR_SUBSCRIPT section
 xchain00001_n00035_α:
 mov rdi, qword ptr [r12 + 1152]
 mov rsi, qword ptr [r12 + 1160]
 mov rdx, qword ptr [r12 + 1168]
 mov rcx, qword ptr [r12 + 1176]
 mov r8, qword ptr [r12 + 1184]
 mov r9, qword ptr [r12 + 1192]
 call subscript_get2@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00001_n00041_α
 xchain00001_n00035_β:
 jmp proc_getword_ω
# IR_RETURN
 xchain00001_n00036_α:
 mov rax, qword ptr [r12 + 1280]
 mov rdx, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_getword_γ
 xchain00001_n00037_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 880]
 mov rdx, qword ptr [r12 + 888]
 mov qword ptr [r12 + 2656], rax
 mov qword ptr [r12 + 2664], rdx
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00001_n00020_α
 xchain00001_n00037_β:
 jmp xchain00001_n00020_α
 xchain00001_n00001_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 784]
 cmp eax, 100
 je .Lx00042_0
 mov eax, dword ptr [r12 + 800]
 cmp eax, 100
 je .Lx00042_0
 mov eax, dword ptr [r12 + 784]
 cmp eax, 6
 jne .Lx00042_2
 mov eax, dword ptr [r12 + 800]
 cmp eax, 6
 jne .Lx00042_2
.Lx00042_1:
 mov rax, qword ptr [r12 + 792]
 mov rcx, qword ptr [r12 + 808]
 add rax, rcx
 mov qword ptr [r12 + 768], 6
 mov qword ptr [r12 + 776], rax
 jmp xchain00001_n00043_α
.Lx00042_0:
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 mov r8d, 0
 lea r9, [r12 + 768]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00042_3
.Lx00042_2:
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00031_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
.Lx00042_3:
 jmp xchain00001_n00043_α
 xchain00001_n00001_β:
 jmp xchain00001_n00031_α
# IR_VAR
 xchain00001_n00031_α:
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 2664]
 mov qword ptr [r12 + 680], rax
 jmp xchain00001_n00044_α
 xchain00001_n00031_β:
 jmp xchain00001_n00003_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00001_n00040_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + xchain00001_n00045_α]
 mov qword ptr [r12 + 64], rax
 jmp xchain00001_n00046_α
 xchain00001_n00040_β:
 jmp xchain00001_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00045_α:
 jmp qword ptr [r12 + 96]
 xchain00001_n00045_β:
 jmp xchain00001_n5_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00001_n00002_α:
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
 lea rax, [rip + xchain00001_n3_α]
 mov qword ptr [r12 + 1008], rax
 jmp xchain00001_n00047_α
 xchain00001_n00002_β:
 jmp xchain00001_n5_α
# IR_RETURN
 xchain00001_n00041_α:
 mov rax, qword ptr [r12 + 1136]
 mov rdx, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_getword_γ
# IR_ASSIGN gva
 xchain00001_n00043_α:
 mov rax, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00001_n00031_α
 xchain00001_n00043_β:
 jmp xchain00001_n00031_α
# IR_LIT_CHARSET
 xchain00001_n00044_α:
 mov qword ptr [r12 + 688], 1
 mov dword ptr [r12 + 692], -1
 mov rax, qword ptr [rip + .Lx00048_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain00001_n00049_α
 xchain00001_n00044_β:
 jmp xchain00001_n00003_α
.Lx00048_0:
 .quad .Lx00048_0_s
.Lx00048_0_s:
 .string "\\"
# IR_LIT_INTEGER
 xchain00001_n00003_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx00050_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain00001_n00051_α
 xchain00001_n00003_β:
 jmp xchain00001_n00052_α
.Lx00050_0:
 .quad 1
 xchain00001_n00046_α:
 jmp xchain00001_n00053_α
xchain00001_n00046_β:
 jmp xchain00001_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00054_α:
 jmp qword ptr [r12 + 64]
 xchain00001_n00054_β:
 jmp xchain00001_n5_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00001_n00047_α:
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + xchain00001_n00004_α]
 mov qword ptr [r12 + 64], rax
 jmp xchain00001_n00046_α
 xchain00001_n00047_β:
 jmp xchain00001_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00004_α:
 jmp qword ptr [r12 + 1008]
 xchain00001_n00004_β:
 jmp xchain00001_n5_α
 xchain00001_n00049_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 672]
 mov rsi, qword ptr [r12 + 680]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00003_α
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain00001_n00005_α
 xchain00001_n00049_β:
 jmp xchain00001_n00003_α
# IR_ASSIGN gva
 xchain00001_n00051_α:
 mov rax, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00001_n00052_α
 xchain00001_n00051_β:
 jmp xchain00001_n00052_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00001_n00053_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 24], rax
 lea rax, [rip + xchain00001_n00054_α]
 mov qword ptr [r12 + 32], rax
 jmp xchain00001_n50_α
 xchain00001_n00053_β:
 jmp xchain00001_n5_α
# IR_VAR gva
 xchain00001_n00005_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00001_n00055_α
 xchain00001_n00005_β:
 jmp xchain00001_n00003_α
# IR_VAR gva
 xchain00001_n00052_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00001_n00056_α
 xchain00001_n00052_β:
 jmp xchain00001_n00057_α
# IR_VAR gva
 xchain00001_n00055_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00001_n00058_α
 xchain00001_n00055_β:
 jmp xchain00001_n00003_α
# IR_LIT_INTEGER
 xchain00001_n00056_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00059_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00001_n00060_α
 xchain00001_n00056_β:
 jmp xchain00001_n00057_α
.Lx00059_0:
 .quad 1
# IR_VAR gva
 xchain00001_n00057_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00001_n00061_α
 xchain00001_n00057_β:
 jmp proc_getword_ω
 xchain00001_n00058_α:
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
  .Lbynamefn282: .string "upto"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn282]
 lea rsi, [r12 + 608]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain00001_n00003_α
 jmp xchain00001_n00062_α
xchain00001_n00058_β:
 jmp xchain00001_n00003_α
 xchain00001_n00060_α:
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
 jmp xchain00001_n00064_α
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
 je xchain00001_n00057_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
.Lx00063_3:
 jmp xchain00001_n00064_α
 xchain00001_n00060_β:
 jmp xchain00001_n00057_α
 xchain00001_n00061_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+448] -> [r12+432]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn285: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn285]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je proc_getword_ω
 jmp xchain00001_n00065_α
 xchain00001_n00061_β:
 jmp proc_getword_ω
# IR_LIT_INTEGER
 xchain00001_n00062_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx00066_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00001_n00067_α
 xchain00001_n00062_β:
 jmp xchain00001_n00003_α
.Lx00066_0:
 .quad 1
# IR_ASSIGN gva
 xchain00001_n00064_α:
 mov rax, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00001_n00057_α
 xchain00001_n00064_β:
 jmp xchain00001_n00057_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00001_n00065_α:
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
 lea rax, [rip + proc_getword_ω]
 mov qword ptr [r12 + 400], rax
 jmp xchain00001_n00068_α
 xchain00001_n00065_β:
 jmp xchain00001_n00031_α
 xchain00001_n00067_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 592]
 cmp eax, 100
 je .Lx00069_0
 mov eax, dword ptr [r12 + 736]
 cmp eax, 100
 je .Lx00069_0
 mov eax, dword ptr [r12 + 592]
 cmp eax, 6
 jne .Lx00069_2
 mov eax, dword ptr [r12 + 736]
 cmp eax, 6
 jne .Lx00069_2
.Lx00069_1:
 mov rax, qword ptr [r12 + 600]
 mov rcx, qword ptr [r12 + 744]
 add rax, rcx
 mov qword ptr [r12 + 576], 6
 mov qword ptr [r12 + 584], rax
 jmp xchain00001_n00070_α
.Lx00069_0:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 mov r8d, 0
 lea r9, [r12 + 576]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00069_3
.Lx00069_2:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00003_α
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
.Lx00069_3:
 jmp xchain00001_n00070_α
 xchain00001_n00067_β:
 jmp xchain00001_n00003_α
# IR_ASSIGN gva
 xchain00001_n00068_α:
 mov rax, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00001_n00071_α
 xchain00001_n00068_β:
 jmp xchain00001_n00031_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00072_α:
 jmp qword ptr [r12 + 400]
 xchain00001_n00072_β:
 jmp xchain00001_n00031_α
# IR_ASSIGN gva
 xchain00001_n00070_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00001_n00073_α
 xchain00001_n00070_β:
 jmp xchain00001_n00003_α
 xchain00001_n00071_α:
 jmp xchain00001_n00074_α
xchain00001_n00071_β:
 jmp xchain00001_n00031_α
# IR_VAR_REF gva
 xchain00001_n00073_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00001_n00075_α
 xchain00001_n00073_β:
 jmp xchain00001_n00076_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00001_n00074_α:
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 120], rax
 lea rax, [rip + xchain00001_n00072_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain00001_n00039_α
 xchain00001_n00074_β:
 jmp xchain00001_n00031_α
# IR_VAR gva
 xchain00001_n00075_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00001_n00006_α
 xchain00001_n00075_β:
 jmp xchain00001_n00076_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00077_α:
 jmp qword ptr [r12 + 128]
 xchain00001_n00077_β:
 jmp xchain00001_n00031_α
# IR_LIT_INTEGER
 xchain00001_n00006_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx00078_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00001_n00079_α
 xchain00001_n00006_β:
 jmp xchain00001_n00076_α
.Lx00078_0:
 .quad 1
# IR_VAR gva
 xchain00001_n00076_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00001_n00080_α
 xchain00001_n00076_β:
 jmp xchain00001_n00031_α
 xchain00001_n00079_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 288]
 cmp eax, 100
 je .Lx00081_0
 mov eax, dword ptr [r12 + 304]
 cmp eax, 100
 je .Lx00081_0
 mov eax, dword ptr [r12 + 288]
 cmp eax, 6
 jne .Lx00081_2
 mov eax, dword ptr [r12 + 304]
 cmp eax, 6
 jne .Lx00081_2
.Lx00081_1:
 mov rax, qword ptr [r12 + 296]
 mov rcx, qword ptr [r12 + 312]
 sub rax, rcx
 mov qword ptr [r12 + 272], 6
 mov qword ptr [r12 + 280], rax
 jmp xchain00001_n00082_α
.Lx00081_0:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 mov r8d, 1
 lea r9, [r12 + 272]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00081_3
.Lx00081_2:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00076_α
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
.Lx00081_3:
 jmp xchain00001_n00082_α
 xchain00001_n00079_β:
 jmp xchain00001_n00076_α
# IR_LIT_INTEGER
 xchain00001_n00080_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00083_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00001_n00007_α
 xchain00001_n00080_β:
 jmp xchain00001_n00031_α
.Lx00083_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00001_n00082_α:
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00001_n00076_α
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00001_n00084_α
 xchain00001_n00082_β:
 jmp xchain00001_n00076_α
 xchain00001_n00007_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 208]
 cmp eax, 100
 je .Lx00085_0
 mov eax, dword ptr [r12 + 224]
 cmp eax, 100
 je .Lx00085_0
 mov eax, dword ptr [r12 + 208]
 cmp eax, 6
 jne .Lx00085_2
 mov eax, dword ptr [r12 + 224]
 cmp eax, 6
 jne .Lx00085_2
.Lx00085_1:
 mov rax, qword ptr [r12 + 216]
 mov rcx, qword ptr [r12 + 232]
 add rax, rcx
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
 jmp xchain00001_n00086_α
.Lx00085_0:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 0
 lea r9, [r12 + 192]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00085_3
.Lx00085_2:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00031_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
.Lx00085_3:
 jmp xchain00001_n00086_α
 xchain00001_n00007_β:
 jmp xchain00001_n00031_α
# IR_DEREF variable -> value
 xchain00001_n00084_α:
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n00076_α
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00001_n00008_α
 xchain00001_n00084_β:
 jmp xchain00001_n00076_α
# IR_ASSIGN gva
 xchain00001_n00086_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00001_n00009_α
 xchain00001_n00086_β:
 jmp xchain00001_n00031_α
# IR_VAR
 xchain00001_n00008_α:
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 2664]
 mov qword ptr [r12 + 360], rax
 jmp xchain00001_n00010_α
 xchain00001_n00008_β:
 jmp xchain00001_n00076_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00001_n00009_α:
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
 lea rax, [rip + xchain00001_n00039_α]
 mov qword ptr [r12 + 160], rax
 jmp xchain00001_n00087_α
 xchain00001_n00009_β:
 jmp xchain00001_n00031_α
 xchain00001_n00010_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 2656]
 mov rcx, qword ptr [r12 + 2664]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n00076_α
 mov rdi, qword ptr [r12 + 2656]
 mov rsi, qword ptr [r12 + 2664]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00001_n00088_α
 xchain00001_n00010_β:
 jmp xchain00001_n00076_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00001_n00087_α:
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
 lea rax, [rip + xchain00001_n00011_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain00001_n00039_α
 xchain00001_n00087_β:
 jmp xchain00001_n00031_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00011_α:
 jmp qword ptr [r12 + 160]
 xchain00001_n00011_β:
 jmp xchain00001_n00031_α
 xchain00001_n00089_α:
 jmp xchain00001_n00088_α
xchain00001_n00089_β:
 jmp xchain00001_n00088_α
 xchain00001_n00088_α:
 jmp xchain00001_n00090_α
xchain00001_n00088_β:
 jmp xchain00001_n5_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00001_n00090_α:
 lea rax, [rip + xchain00001_n00088_α]
 mov qword ptr [r12 + 96], rax
 jmp xchain00001_n00040_α
 xchain00001_n00090_β:
 jmp xchain00001_n5_α
proc_getword_β:
jmp proc_getword_ω
proc_getword_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 2640]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1968], rax
 pop rsi
proc_format_α_body:
# IR_VAR_REF gva
 xchain00091_n0_α:
 lea rdi, [rbx + 272]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain00091_n1_α
 xchain00091_n0_β:
 jmp xchain00091_n3_α
# IR_UNOP_TEST lv
 xchain00091_n1_α:
 mov eax, dword ptr [r12 + 1904]
 cmp eax, 99
 je xchain00091_n3_α
 mov rdi, qword ptr [r12 + 1904]
 mov rsi, qword ptr [r12 + 1912]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00091_n3_α
 cmp eax, 0
 jne xchain00091_n3_α
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 1920], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1928], rax
 jmp xchain00091_n2_α
 xchain00091_n1_β:
 jmp xchain00091_n3_α
# IR_LIT_INTEGER
 xchain00091_n2_α:
 mov qword ptr [r12 + 1952], 6
 mov rax, qword ptr [rip + .Lx00092_0]
 mov qword ptr [r12 + 1960], rax
 jmp xchain00091_n4_α
 xchain00091_n2_β:
 jmp xchain00091_n3_α
.Lx00092_0:
 .quad 1
# IR_MAKE_LIST
 xchain00091_n3_α:
 lea rdi, [r12 + 1584]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain00091_n5_α
 xchain00091_n3_β:
 jmp xchain00091_n7_α
# IR_ASSIGN_VAR write through variable
 xchain00091_n4_α:
 mov rdi, qword ptr [r12 + 1920]
 mov rsi, qword ptr [r12 + 1928]
 mov rdx, qword ptr [r12 + 1952]
 mov rcx, qword ptr [r12 + 1960]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00091_n3_α
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 jmp xchain00091_n6_α
 xchain00091_n4_β:
 jmp xchain00091_n3_α
 xchain00091_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1568]
 mov rdx, qword ptr [r12 + 1576]
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain00091_n7_α
 xchain00091_n5_β:
 jmp xchain00091_n7_α
# IR_VAR gva
 xchain00091_n6_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain00091_n8_α
 xchain00091_n6_β:
 jmp xchain00091_n9_α
# IR_VAR
 xchain00091_n7_α:
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 1536], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 1544], rax
 jmp xchain00091_n10_α
 xchain00091_n7_β:
 jmp xchain00091_n11_α
# IR_UNOP
 xchain00091_n8_α:
 mov eax, dword ptr [r12 + 1888]
 cmp eax, 99
 je xchain00091_n9_α
 cmp eax, 0
 je xchain00091_n9_α
 mov rax, qword ptr [r12 + 1888]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 1896]
 mov qword ptr [r12 + 1880], rax
 jmp xchain00091_n12_α
 xchain00091_n8_β:
 jmp xchain00091_n9_α
# IR_LIT_INTEGER
 xchain00091_n9_α:
 mov qword ptr [r12 + 1856], 6
 mov rax, qword ptr [rip + .Lx00093_0]
 mov qword ptr [r12 + 1864], rax
 jmp xchain00091_n13_α
 xchain00091_n9_β:
 jmp xchain00091_n18_α
.Lx00093_0:
 .quad 80
 xchain00091_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1536]
 mov rdx, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain00091_n11_α
 xchain00091_n10_β:
 jmp xchain00091_n11_α
# IR_VAR
 xchain00091_n11_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00091_n14_α
 xchain00091_n11_β:
 jmp xchain00091_n15_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00091_n12_α:
 mov rax, qword ptr [r12 + 1872]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 1832], rax
 lea rax, [rip + xchain00091_n9_α]
 mov qword ptr [r12 + 1840], rax
 jmp xchain00091_n16_α
 xchain00091_n12_β:
 jmp xchain00091_n18_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00091_n13_α:
 mov rax, qword ptr [r12 + 1856]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 1832], rax
 lea rax, [rip + xchain00091_n18_α]
 mov qword ptr [r12 + 1840], rax
 jmp xchain00091_n16_α
 xchain00091_n13_β:
 jmp xchain00091_n18_α
# IR_LIST_BANG
 xchain00091_n14_α:
 mov qword ptr [r12 + 224], 0
.Lx00094_0:
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 224]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp rax, 99
 je xchain00091_n15_α
 jmp xchain00091_n19_α
 xchain00091_n14_β:
 inc qword ptr [r12 + 224]
 jmp .Lx00094_0
# IR_VAR
 xchain00091_n15_α:
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 184], rax
 jmp xchain00091_n20_α
 xchain00091_n15_β:
 jmp xchain00091_n21_α
 xchain00091_n16_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1824]
 mov rdx, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain00091_n18_α
 xchain00091_n16_β:
 jmp xchain00091_n18_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00091_n17_α:
 jmp qword ptr [r12 + 1840]
 xchain00091_n17_β:
 jmp xchain00091_n18_α
# IR_VAR gva
 xchain00091_n18_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain00091_n22_α
 xchain00091_n18_β:
 jmp xchain00091_n23_α
 xchain00091_n19_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00091_n24_α
 xchain00091_n19_β:
 jmp xchain00091_n15_α
 xchain00091_n20_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn355: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn355]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00091_n21_α
 jmp xchain00091_n25_α
 xchain00091_n20_β:
 jmp xchain00091_n21_α
# IR_VAR
 xchain00091_n21_α:
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 104], rax
 jmp xchain00091_n26_α
 xchain00091_n21_β:
 jmp xchain00091_n27_α
# IR_UNOP
 xchain00091_n22_α:
 mov eax, dword ptr [r12 + 1792]
 cmp eax, 99
 je xchain00091_n23_α
 cmp eax, 0
 je xchain00091_n23_α
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1784], rax
 jmp xchain00091_n28_α
 xchain00091_n22_β:
 jmp xchain00091_n23_α
# IR_LIT_INTEGER
 xchain00091_n23_α:
 mov qword ptr [r12 + 1760], 6
 mov rax, qword ptr [rip + .Lx00095_0]
 mov qword ptr [r12 + 1768], rax
 jmp xchain00091_n29_α
 xchain00091_n23_β:
 jmp xchain00091_n35_α
.Lx00095_0:
 .quad 40
# IR_VAR
 xchain00091_n24_α:
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 312], rax
 jmp xchain00091_n30_α
 xchain00091_n24_β:
 jmp xchain00091_n14_β
 xchain00091_n25_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00091_n21_α
 xchain00091_n25_β:
 jmp xchain00091_n21_α
# IR_LIT_STRING
 xchain00091_n26_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00096_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00091_n31_α
 xchain00091_n26_β:
 jmp xchain00091_n27_α
.Lx00096_0:
 .quad .Lx00096_0_s
.Lx00096_0_s:
 .string "variable\tprocedure\t\tline numbers\n"
# IR_VAR
 xchain00091_n27_α:
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 40], rax
 jmp xchain00091_n32_α
 xchain00091_n27_β:
 jmp proc_format_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00091_n28_α:
 mov rax, qword ptr [r12 + 1776]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 1784]
 mov qword ptr [r12 + 1736], rax
 lea rax, [rip + xchain00091_n23_α]
 mov qword ptr [r12 + 1744], rax
 jmp xchain00091_n33_α
 xchain00091_n28_β:
 jmp xchain00091_n35_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00091_n29_α:
 mov rax, qword ptr [r12 + 1760]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 1768]
 mov qword ptr [r12 + 1736], rax
 lea rax, [rip + xchain00091_n35_α]
 mov qword ptr [r12 + 1744], rax
 jmp xchain00091_n33_α
 xchain00091_n29_β:
 jmp xchain00091_n35_α
# IR_LIST_BANG
 xchain00091_n30_α:
 mov qword ptr [r12 + 288], 0
.Lx00097_0:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 288]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp rax, 99
 je xchain00091_n14_β
 jmp xchain00091_n36_α
 xchain00091_n30_β:
 inc qword ptr [r12 + 288]
 jmp .Lx00097_0
 xchain00091_n31_α:
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
  .Lrkfn373: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn373]
 lea rsi, [r12 + 64]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain00091_n27_α
 jmp xchain00091_n27_α
 xchain00091_n31_β:
 jmp xchain00091_n27_α
# IR_RETURN
 xchain00091_n32_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_format_γ
 xchain00091_n33_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1728]
 mov rdx, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain00091_n35_α
 xchain00091_n33_β:
 jmp xchain00091_n35_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00091_n34_α:
 jmp qword ptr [r12 + 1744]
 xchain00091_n34_β:
 jmp xchain00091_n35_α
# IR_VAR gva
 xchain00091_n35_α:
 mov rax, qword ptr [rbx + 176]
 mov rdx, qword ptr [rbx + 184]
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain00091_n37_α
 xchain00091_n35_β:
 jmp xchain00091_n38_α
 xchain00091_n36_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00091_n39_α
 xchain00091_n36_β:
 jmp xchain00091_n14_β
# IR_UNOP
 xchain00091_n37_α:
 mov eax, dword ptr [r12 + 1696]
 cmp eax, 99
 je xchain00091_n38_α
 cmp eax, 0
 je xchain00091_n38_α
 mov rax, qword ptr [r12 + 1696]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 1688], rax
 jmp xchain00091_n40_α
 xchain00091_n37_β:
 jmp xchain00091_n38_α
# IR_LIT_INTEGER
 xchain00091_n38_α:
 mov qword ptr [r12 + 1664], 6
 mov rax, qword ptr [rip + .Lx00098_0]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00091_n41_α
 xchain00091_n38_β:
 jmp xchain00091_n3_α
.Lx00098_0:
 .quad 4
# IR_VAR_REF local
 xchain00091_n39_α:
 lea rdi, [r12 + 2016]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain00091_n42_α
 xchain00091_n39_β:
 jmp xchain00091_n48_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00091_n40_α:
 mov rax, qword ptr [r12 + 1680]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1688]
 mov qword ptr [r12 + 1640], rax
 lea rax, [rip + xchain00091_n38_α]
 mov qword ptr [r12 + 1648], rax
 jmp xchain00091_n43_α
 xchain00091_n40_β:
 jmp xchain00091_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00091_n41_α:
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1640], rax
 lea rax, [rip + xchain00091_n3_α]
 mov qword ptr [r12 + 1648], rax
 jmp xchain00091_n43_α
 xchain00091_n41_β:
 jmp xchain00091_n3_α
# IR_LIT_INTEGER
 xchain00091_n42_α:
 mov qword ptr [r12 + 1248], 6
 mov rax, qword ptr [rip + .Lx00099_0]
 mov qword ptr [r12 + 1256], rax
 jmp xchain00091_n45_α
 xchain00091_n42_β:
 jmp xchain00091_n48_α
.Lx00099_0:
 .quad 1
 xchain00091_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1632]
 mov rdx, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xchain00091_n46_α
 xchain00091_n43_β:
 jmp xchain00091_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00091_n44_α:
 jmp qword ptr [r12 + 1648]
 xchain00091_n44_β:
 jmp xchain00091_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00091_n45_α:
 mov rdi, qword ptr [r12 + 1232]
 mov rsi, qword ptr [r12 + 1240]
 mov rdx, qword ptr [r12 + 1248]
 mov rcx, qword ptr [r12 + 1256]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00091_n48_α
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain00091_n47_α
 xchain00091_n45_β:
 jmp xchain00091_n48_α
 xchain00091_n46_α:
 jmp xchain00091_n49_α
xchain00091_n46_β:
 jmp xchain00091_n3_α
# IR_DEREF variable -> value
 xchain00091_n47_α:
 mov rdi, qword ptr [r12 + 1264]
 mov rsi, qword ptr [r12 + 1272]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00091_n48_α
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain00091_n50_α
 xchain00091_n47_β:
 jmp xchain00091_n48_α
# IR_VAR gva
 xchain00091_n48_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00091_n51_α
 xchain00091_n48_β:
 jmp xchain00091_n52_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00091_n49_α:
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1592], rax
 lea rax, [rip + xchain00091_n44_α]
 mov qword ptr [r12 + 1600], rax
 jmp xchain00091_n3_α
 xchain00091_n49_β:
 jmp xchain00091_n3_α
# IR_LIT_INTEGER
 xchain00091_n50_α:
 mov qword ptr [r12 + 1296], 6
 mov rax, qword ptr [rip + .Lx00100_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00091_n54_α
 xchain00091_n50_β:
 jmp xchain00091_n48_α
.Lx00100_0:
 .quad 16
# IR_VAR_REF local
 xchain00091_n51_α:
 lea rdi, [r12 + 2016]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00091_n55_α
 xchain00091_n51_β:
 jmp xchain00091_n52_α
# IR_VAR
 xchain00091_n52_α:
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 568], rax
 jmp xchain00091_n56_α
 xchain00091_n52_β:
 jmp xchain00091_n57_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00091_n53_α:
 jmp qword ptr [r12 + 1600]
 xchain00091_n53_β:
 jmp xchain00091_n3_α
# IR_LIT_STRING
 xchain00091_n54_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx00101_0]
 mov qword ptr [r12 + 1320], rax
 jmp xchain00091_n58_α
 xchain00091_n54_β:
 jmp xchain00091_n48_α
.Lx00101_0:
 .quad .Lx00101_0_s
.Lx00101_0_s:
 .string " "
# IR_LIT_INTEGER
 xchain00091_n55_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx00102_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain00091_n59_α
 xchain00091_n55_β:
 jmp xchain00091_n52_α
.Lx00102_0:
 .quad 3
# IR_VAR
 xchain00091_n56_α:
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 584], rax
 jmp xchain00091_n60_α
 xchain00091_n56_β:
 jmp xchain00091_n57_α
# IR_VAR
 xchain00091_n57_α:
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 408], rax
 jmp xchain00091_n61_α
 xchain00091_n57_β:
 jmp xchain00091_n62_α
 xchain00091_n58_α:
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
  .Lrkfn412: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn412]
 lea rsi, [r12 + 1184]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain00091_n48_α
 jmp xchain00091_n63_α
 xchain00091_n58_β:
 jmp xchain00091_n48_α
# IR_VAR
 xchain00091_n59_α:
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 792], rax
 jmp xchain00091_n64_α
 xchain00091_n59_β:
 jmp xchain00091_n52_α
 xchain00091_n60_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2032]
 cmp eax, 100
 je .Lx00103_0
 mov eax, dword ptr [r12 + 2048]
 cmp eax, 100
 je .Lx00103_0
 mov eax, dword ptr [r12 + 2032]
 cmp eax, 6
 jne .Lx00103_2
 mov eax, dword ptr [r12 + 2048]
 cmp eax, 6
 jne .Lx00103_2
.Lx00103_1:
 mov rax, qword ptr [r12 + 2040]
 mov rcx, qword ptr [r12 + 2056]
 cmp rax, rcx
 jne xchain00091_n57_α
 mov rcx, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 544], rcx
 mov rcx, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 552], rcx
 jmp xchain00091_n65_α
.Lx00103_0:
 mov rdi, qword ptr [r12 + 2032]
 mov rsi, qword ptr [r12 + 2040]
 mov rdx, qword ptr [r12 + 2048]
 mov rcx, qword ptr [r12 + 2056]
 mov r8d, 9
 lea r9, [r12 + 544]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00103_1
 cmp eax, 1
 je xchain00091_n57_α
 jmp xchain00091_n65_α
.Lx00103_2:
 mov rdi, qword ptr [r12 + 2032]
 mov rsi, qword ptr [r12 + 2040]
 mov rdx, qword ptr [r12 + 2048]
 mov rcx, qword ptr [r12 + 2056]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00091_n57_α
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 552], rax
 jmp xchain00091_n65_α
 xchain00091_n60_β:
 jmp xchain00091_n57_α
# IR_VAR gva
 xchain00091_n61_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00091_n66_α
 xchain00091_n61_β:
 jmp xchain00091_n62_α
# IR_VAR
 xchain00091_n62_α:
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 344], rax
 jmp xchain00091_n67_α
 xchain00091_n62_β:
 jmp xchain00091_n30_β
# IR_VAR_REF local
 xchain00091_n63_α:
 lea rdi, [r12 + 2016]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain00091_n68_α
 xchain00091_n63_β:
 jmp xchain00091_n48_α
# IR_UNOP
 xchain00091_n64_α:
 mov rdi, qword ptr [r12 + 2016]
 mov rsi, qword ptr [r12 + 2024]
 call rt_size_d@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00091_n69_α
 xchain00091_n64_β:
 jmp xchain00091_n52_α
# IR_VAR gva
 xchain00091_n65_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00091_n70_α
 xchain00091_n65_β:
 jmp xchain00091_n57_α
 xchain00091_n66_α:
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
  .Lrkfn424: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn424]
 lea rsi, [r12 + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00091_n62_α
 jmp xchain00091_n62_α
 xchain00091_n66_β:
 jmp xchain00091_n62_α
 xchain00091_n67_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00091_n71_α
 xchain00091_n67_β:
 jmp xchain00091_n30_β
# IR_LIT_INTEGER
 xchain00091_n68_α:
 mov qword ptr [r12 + 1408], 6
 mov rax, qword ptr [rip + .Lx00104_0]
 mov qword ptr [r12 + 1416], rax
 jmp xchain00091_n72_α
 xchain00091_n68_β:
 jmp xchain00091_n48_α
.Lx00104_0:
 .quad 2
# IR_TO
 xchain00091_n69_α:
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 736], rax
.Lx00105_0:
 mov rax, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 776]
 cmp rax, rcx
 jg xchain00091_n52_α
 mov qword ptr [r12 + 720], 6
 mov qword ptr [r12 + 728], rax
 jmp xchain00091_n73_α
 xchain00091_n69_β:
 inc qword ptr [r12 + 736]
 jmp .Lx00105_0
# IR_LIT_INTEGER
 xchain00091_n70_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00106_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00091_n74_α
 xchain00091_n70_β:
 jmp xchain00091_n57_α
.Lx00106_0:
 .quad 1
 xchain00091_n71_α:
 jmp xchain00091_n30_β
xchain00091_n71_β:
 jmp xchain00091_n30_β
# IR_SUBSCRIPT x[i] variable
 xchain00091_n72_α:
 mov rdi, qword ptr [r12 + 1392]
 mov rsi, qword ptr [r12 + 1400]
 mov rdx, qword ptr [r12 + 1408]
 mov rcx, qword ptr [r12 + 1416]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00091_n48_α
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain00091_n75_α
 xchain00091_n72_β:
 jmp xchain00091_n48_α
# IR_SUBSCRIPT x[i] variable
 xchain00091_n73_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 720]
 mov rcx, qword ptr [r12 + 728]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00091_n52_α
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00091_n76_α
 xchain00091_n73_β:
 jmp xchain00091_n52_α
# IR_LIT_INTEGER
 xchain00091_n74_α:
 mov qword ptr [r12 + 528], 6
 mov rax, qword ptr [rip + .Lx00107_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain00091_n77_α
 xchain00091_n74_β:
 jmp xchain00091_n57_α
.Lx00107_0:
 .quad 18446744073709551610
# IR_DEREF variable -> value
 xchain00091_n75_α:
 mov rdi, qword ptr [r12 + 1424]
 mov rsi, qword ptr [r12 + 1432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00091_n48_α
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain00091_n78_α
 xchain00091_n75_β:
 jmp xchain00091_n48_α
# IR_DEREF variable -> value
 xchain00091_n76_α:
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00091_n52_α
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00091_n79_α
 xchain00091_n76_β:
 jmp xchain00091_n52_α
# IR_SUBSCRIPT section
 xchain00091_n77_α:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 mov r8, qword ptr [r12 + 528]
 mov r9, qword ptr [r12 + 536]
 call subscript_get2@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00091_n80_α
 xchain00091_n77_β:
 jmp xchain00091_n57_α
# IR_VAR
 xchain00091_n78_α:
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 1480], rax
 jmp xchain00091_n81_α
 xchain00091_n78_β:
 jmp xchain00091_n48_α
# IR_VAR
 xchain00091_n79_α:
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 840], rax
 jmp xchain00091_n82_α
 xchain00091_n79_β:
 jmp xchain00091_n69_β
# IR_ASSIGN gva
 xchain00091_n80_α:
 mov rax, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00091_n83_α
 xchain00091_n80_β:
 jmp xchain00091_n57_α
# IR_LIT_INTEGER
 xchain00091_n81_α:
 mov qword ptr [r12 + 1488], 6
 mov rax, qword ptr [rip + .Lx00108_0]
 mov qword ptr [r12 + 1496], rax
 jmp xchain00091_n84_α
 xchain00091_n81_β:
 jmp xchain00091_n48_α
.Lx00108_0:
 .quad 16
# IR_LIT_STRING
 xchain00091_n82_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx00109_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain00091_n85_α
 xchain00091_n82_β:
 jmp xchain00091_n69_β
.Lx00109_0:
 .quad .Lx00109_0_s
.Lx00109_0_s:
 .string " "
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00091_n83_α:
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
 lea rax, [rip + xchain00091_n57_α]
 mov qword ptr [r12 + 448], rax
 jmp xchain00091_n57_α
 xchain00091_n83_β:
 jmp xchain00091_n57_α
 xchain00091_n84_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2048]
 cmp eax, 100
 je .Lx00110_0
 mov eax, dword ptr [r12 + 1488]
 cmp eax, 100
 je .Lx00110_0
 mov eax, dword ptr [r12 + 2048]
 cmp eax, 6
 jne .Lx00110_2
 mov eax, dword ptr [r12 + 1488]
 cmp eax, 6
 jne .Lx00110_2
.Lx00110_1:
 mov rax, qword ptr [r12 + 2056]
 mov rcx, qword ptr [r12 + 1496]
 sub rax, rcx
 mov qword ptr [r12 + 1456], 6
 mov qword ptr [r12 + 1464], rax
 jmp xchain00091_n87_α
.Lx00110_0:
 mov rdi, qword ptr [r12 + 2048]
 mov rsi, qword ptr [r12 + 2056]
 mov rdx, qword ptr [r12 + 1488]
 mov rcx, qword ptr [r12 + 1496]
 mov r8d, 1
 lea r9, [r12 + 1456]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00110_3
.Lx00110_2:
 mov rdi, qword ptr [r12 + 2048]
 mov rsi, qword ptr [r12 + 2056]
 mov rdx, qword ptr [r12 + 1488]
 mov rcx, qword ptr [r12 + 1496]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00091_n48_α
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
.Lx00110_3:
 jmp xchain00091_n87_α
 xchain00091_n84_β:
 jmp xchain00091_n48_α
 xchain00091_n85_α:
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
  .Lrkfn448: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn448]
 lea rsi, [r12 + 656]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain00091_n52_α
 jmp xchain00091_n88_α
 xchain00091_n85_β:
 jmp xchain00091_n52_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00091_n86_α:
 jmp qword ptr [r12 + 448]
 xchain00091_n86_β:
 jmp xchain00091_n57_α
# IR_LIT_STRING
 xchain00091_n87_α:
 mov qword ptr [r12 + 1504], 1
 mov rax, qword ptr [rip + .Lx00111_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00091_n89_α
 xchain00091_n87_β:
 jmp xchain00091_n48_α
.Lx00111_0:
 .quad .Lx00111_0_s
.Lx00111_0_s:
 .string " "
 xchain00091_n88_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 mov rdx, qword ptr [r12 + 640]
 mov rcx, qword ptr [r12 + 648]
 call str_concat_d@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00091_n90_α
 xchain00091_n88_β:
 jmp xchain00091_n52_α
 xchain00091_n89_α:
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
  .Lrkfn454: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn454]
 lea rsi, [r12 + 1344]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain00091_n48_α
 jmp xchain00091_n91_α
 xchain00091_n89_β:
 jmp xchain00091_n48_α
# IR_ASSIGN gva
 xchain00091_n90_α:
 mov rax, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00091_n92_α
 xchain00091_n90_β:
 jmp xchain00091_n52_α
 xchain00091_n91_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 mov rdx, qword ptr [r12 + 1328]
 mov rcx, qword ptr [r12 + 1336]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain00091_n93_α
 xchain00091_n91_β:
 jmp xchain00091_n48_α
# IR_VAR
 xchain00091_n92_α:
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00091_n94_α
 xchain00091_n92_β:
 jmp xchain00091_n95_α
# IR_ASSIGN gva
 xchain00091_n93_α:
 mov rax, qword ptr [r12 + 1152]
 mov rdx, qword ptr [r12 + 1160]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00091_n48_α
 xchain00091_n93_β:
 jmp xchain00091_n48_α
# IR_VAR
 xchain00091_n94_α:
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00091_n96_α
 xchain00091_n94_β:
 jmp xchain00091_n95_α
# IR_VAR
 xchain00091_n95_α:
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 1016], rax
 jmp xchain00091_n97_α
 xchain00091_n95_β:
 jmp xchain00091_n69_β
 xchain00091_n96_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2032]
 cmp eax, 100
 je .Lx00112_0
 mov eax, dword ptr [r12 + 2064]
 cmp eax, 100
 je .Lx00112_0
 mov eax, dword ptr [r12 + 2032]
 cmp eax, 6
 jne .Lx00112_2
 mov eax, dword ptr [r12 + 2064]
 cmp eax, 6
 jne .Lx00112_2
.Lx00112_1:
 mov rax, qword ptr [r12 + 2040]
 mov rcx, qword ptr [r12 + 2072]
 add rax, rcx
 mov qword ptr [r12 + 1088], 6
 mov qword ptr [r12 + 1096], rax
 jmp xchain00091_n98_α
.Lx00112_0:
 mov rdi, qword ptr [r12 + 2032]
 mov rsi, qword ptr [r12 + 2040]
 mov rdx, qword ptr [r12 + 2064]
 mov rcx, qword ptr [r12 + 2072]
 mov r8d, 0
 lea r9, [r12 + 1088]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00112_3
.Lx00112_2:
 mov rdi, qword ptr [r12 + 2032]
 mov rsi, qword ptr [r12 + 2040]
 mov rdx, qword ptr [r12 + 2064]
 mov rcx, qword ptr [r12 + 2072]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00091_n95_α
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
.Lx00112_3:
 jmp xchain00091_n98_α
 xchain00091_n96_β:
 jmp xchain00091_n95_α
# IR_VAR
 xchain00091_n97_α:
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 1048], rax
 jmp xchain00091_n99_α
 xchain00091_n97_β:
 jmp xchain00091_n69_β
 xchain00091_n98_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1088]
 mov rdx, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain00091_n95_α
 xchain00091_n98_β:
 jmp xchain00091_n95_α
# IR_VAR
 xchain00091_n99_α:
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 1064], rax
 jmp xchain00091_n00020_α
 xchain00091_n99_β:
 jmp xchain00091_n69_β
 xchain00091_n00020_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2080]
 cmp eax, 100
 je .Lx00113_0
 mov eax, dword ptr [r12 + 2064]
 cmp eax, 100
 je .Lx00113_0
 mov eax, dword ptr [r12 + 2080]
 cmp eax, 6
 jne .Lx00113_2
 mov eax, dword ptr [r12 + 2064]
 cmp eax, 6
 jne .Lx00113_2
.Lx00113_1:
 mov rax, qword ptr [r12 + 2088]
 mov rcx, qword ptr [r12 + 2072]
 sub rax, rcx
 mov qword ptr [r12 + 1024], 6
 mov qword ptr [r12 + 1032], rax
 jmp xchain00091_n00024_α
.Lx00113_0:
 mov rdi, qword ptr [r12 + 2080]
 mov rsi, qword ptr [r12 + 2088]
 mov rdx, qword ptr [r12 + 2064]
 mov rcx, qword ptr [r12 + 2072]
 mov r8d, 1
 lea r9, [r12 + 1024]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00113_3
.Lx00113_2:
 mov rdi, qword ptr [r12 + 2080]
 mov rsi, qword ptr [r12 + 2088]
 mov rdx, qword ptr [r12 + 2064]
 mov rcx, qword ptr [r12 + 2072]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00091_n69_β
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
.Lx00113_3:
 jmp xchain00091_n00024_α
 xchain00091_n00020_β:
 jmp xchain00091_n69_β
 xchain00091_n00024_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2032]
 cmp eax, 100
 je .Lx00114_0
 mov eax, dword ptr [r12 + 1024]
 cmp eax, 100
 je .Lx00114_0
 mov eax, dword ptr [r12 + 2032]
 cmp eax, 6
 jne .Lx00114_2
 mov eax, dword ptr [r12 + 1024]
 cmp eax, 6
 jne .Lx00114_2
.Lx00114_1:
 mov rax, qword ptr [r12 + 2040]
 mov rcx, qword ptr [r12 + 1032]
 cmp rax, rcx
 jl xchain00091_n69_β
 mov rcx, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rcx
 mov rcx, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rcx
 jmp xchain00091_n00026_α
.Lx00114_0:
 mov rdi, qword ptr [r12 + 2032]
 mov rsi, qword ptr [r12 + 2040]
 mov rdx, qword ptr [r12 + 1024]
 mov rcx, qword ptr [r12 + 1032]
 mov r8d, 8
 lea r9, [r12 + 992]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00114_1
 cmp eax, 1
 je xchain00091_n69_β
 jmp xchain00091_n00026_α
.Lx00114_2:
 mov rdi, qword ptr [r12 + 2032]
 mov rsi, qword ptr [r12 + 2040]
 mov rdx, qword ptr [r12 + 1024]
 mov rcx, qword ptr [r12 + 1032]
 mov r8d, 8
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00091_n69_β
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00091_n00026_α
 xchain00091_n00024_β:
 jmp xchain00091_n69_β
# IR_VAR gva
 xchain00091_n00026_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain00091_n00027_α
 xchain00091_n00026_β:
 jmp xchain00091_n00028_α
# IR_LIT_STRING
 xchain00091_n00027_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx00115_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain00091_n00029_α
 xchain00091_n00027_β:
 jmp xchain00091_n00028_α
.Lx00115_0:
 .quad .Lx00115_0_s
.Lx00115_0_s:
 .string "\n\t\t\t\t\t"
# IR_VAR
 xchain00091_n00028_α:
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 920], rax
 jmp xchain00091_n00030_α
 xchain00091_n00028_β:
 jmp xchain00091_n69_β
 xchain00091_n00029_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 960]
 mov rsi, qword ptr [r12 + 968]
 mov rdx, qword ptr [r12 + 976]
 mov rcx, qword ptr [r12 + 984]
 call str_concat_d@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain00091_n00039_α
 xchain00091_n00029_β:
 jmp xchain00091_n00028_α
 xchain00091_n00030_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00091_n00032_α
 xchain00091_n00030_β:
 jmp xchain00091_n69_β
# IR_ASSIGN gva
 xchain00091_n00039_α:
 mov rax, qword ptr [r12 + 944]
 mov rdx, qword ptr [r12 + 952]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain00091_n00028_α
 xchain00091_n00039_β:
 jmp xchain00091_n00028_α
 xchain00091_n00032_α:
 jmp xchain00091_n00034_α
xchain00091_n00032_β:
 jmp xchain00091_n69_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00091_n00034_α:
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 872], rax
 lea rax, [rip + xchain00091_n69_β]
 mov qword ptr [r12 + 880], rax
 jmp xchain00091_n00035_α
 xchain00091_n00034_β:
 jmp xchain00091_n69_β
 xchain00091_n00035_α:
 jmp xchain00091_n69_β
xchain00091_n00035_β:
 jmp xchain00091_n69_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00091_n00036_α:
 jmp qword ptr [r12 + 880]
 xchain00091_n00036_β:
 jmp xchain00091_n69_β
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
 mov rdi, qword ptr [r12 + 1968]
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 6064], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain00116_n0_α:
 mov qword ptr [r12 + 6048], 1
 mov rax, qword ptr [rip + .Lx00117_0]
 mov qword ptr [r12 + 6056], rax
 jmp xchain00116_n1_α
 xchain00116_n0_β:
 jmp xchain00116_n2_α
.Lx00117_0:
 .quad .Lx00117_0_s
.Lx00117_0_s:
 .string "ipxref"
 xchain00116_n1_α:
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
 je xchain00116_n2_α
 jmp xchain00116_n2_α
xchain00116_n1_β:
 jmp xchain00116_n2_α
# IR_LIT_STRING
 xchain00116_n2_α:
 mov qword ptr [r12 + 5568], 1
 mov rax, qword ptr [rip + .Lx00118_0]
 mov qword ptr [r12 + 5576], rax
 jmp xchain00116_n3_α
 xchain00116_n2_β:
 jmp xchain00116_n32_α
.Lx00118_0:
 .quad .Lx00118_0_s
.Lx00118_0_s:
 .string "break"
# IR_LIT_STRING
 xchain00116_n3_α:
 mov qword ptr [r12 + 5584], 1
 mov rax, qword ptr [rip + .Lx00119_0]
 mov qword ptr [r12 + 5592], rax
 jmp xchain00116_n4_α
 xchain00116_n3_β:
 jmp xchain00116_n32_α
.Lx00119_0:
 .quad .Lx00119_0_s
.Lx00119_0_s:
 .string "by"
# IR_LIT_STRING
 xchain00116_n4_α:
 mov qword ptr [r12 + 5600], 1
 mov rax, qword ptr [rip + .Lx00120_0]
 mov qword ptr [r12 + 5608], rax
 jmp xchain00116_n5_α
 xchain00116_n4_β:
 jmp xchain00116_n32_α
.Lx00120_0:
 .quad .Lx00120_0_s
.Lx00120_0_s:
 .string "case"
# IR_LIT_STRING
 xchain00116_n5_α:
 mov qword ptr [r12 + 5616], 1
 mov rax, qword ptr [rip + .Lx00121_0]
 mov qword ptr [r12 + 5624], rax
 jmp xchain00116_n6_α
 xchain00116_n5_β:
 jmp xchain00116_n32_α
.Lx00121_0:
 .quad .Lx00121_0_s
.Lx00121_0_s:
 .string "default"
# IR_LIT_STRING
 xchain00116_n6_α:
 mov qword ptr [r12 + 5632], 1
 mov rax, qword ptr [rip + .Lx00122_0]
 mov qword ptr [r12 + 5640], rax
 jmp xchain00116_n7_α
 xchain00116_n6_β:
 jmp xchain00116_n32_α
.Lx00122_0:
 .quad .Lx00122_0_s
.Lx00122_0_s:
 .string "do"
# IR_LIT_STRING
 xchain00116_n7_α:
 mov qword ptr [r12 + 5648], 1
 mov rax, qword ptr [rip + .Lx00123_0]
 mov qword ptr [r12 + 5656], rax
 jmp xchain00116_n8_α
 xchain00116_n7_β:
 jmp xchain00116_n32_α
.Lx00123_0:
 .quad .Lx00123_0_s
.Lx00123_0_s:
 .string "dynamic"
# IR_LIT_STRING
 xchain00116_n8_α:
 mov qword ptr [r12 + 5664], 1
 mov rax, qword ptr [rip + .Lx00124_0]
 mov qword ptr [r12 + 5672], rax
 jmp xchain00116_n9_α
 xchain00116_n8_β:
 jmp xchain00116_n32_α
.Lx00124_0:
 .quad .Lx00124_0_s
.Lx00124_0_s:
 .string "else"
# IR_LIT_STRING
 xchain00116_n9_α:
 mov qword ptr [r12 + 5680], 1
 mov rax, qword ptr [rip + .Lx00125_0]
 mov qword ptr [r12 + 5688], rax
 jmp xchain00116_n10_α
 xchain00116_n9_β:
 jmp xchain00116_n32_α
.Lx00125_0:
 .quad .Lx00125_0_s
.Lx00125_0_s:
 .string "end"
# IR_LIT_STRING
 xchain00116_n10_α:
 mov qword ptr [r12 + 5696], 1
 mov rax, qword ptr [rip + .Lx00126_0]
 mov qword ptr [r12 + 5704], rax
 jmp xchain00116_n11_α
 xchain00116_n10_β:
 jmp xchain00116_n32_α
.Lx00126_0:
 .quad .Lx00126_0_s
.Lx00126_0_s:
 .string "every"
# IR_LIT_STRING
 xchain00116_n11_α:
 mov qword ptr [r12 + 5712], 1
 mov rax, qword ptr [rip + .Lx00127_0]
 mov qword ptr [r12 + 5720], rax
 jmp xchain00116_n12_α
 xchain00116_n11_β:
 jmp xchain00116_n32_α
.Lx00127_0:
 .quad .Lx00127_0_s
.Lx00127_0_s:
 .string "fail"
# IR_LIT_STRING
 xchain00116_n12_α:
 mov qword ptr [r12 + 5728], 1
 mov rax, qword ptr [rip + .Lx00128_0]
 mov qword ptr [r12 + 5736], rax
 jmp xchain00116_n13_α
 xchain00116_n12_β:
 jmp xchain00116_n32_α
.Lx00128_0:
 .quad .Lx00128_0_s
.Lx00128_0_s:
 .string "global"
# IR_LIT_STRING
 xchain00116_n13_α:
 mov qword ptr [r12 + 5744], 1
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [r12 + 5752], rax
 jmp xchain00116_n14_α
 xchain00116_n13_β:
 jmp xchain00116_n32_α
.Lx00129_0:
 .quad .Lx00129_0_s
.Lx00129_0_s:
 .string "if"
# IR_LIT_STRING
 xchain00116_n14_α:
 mov qword ptr [r12 + 5760], 1
 mov rax, qword ptr [rip + .Lx00130_0]
 mov qword ptr [r12 + 5768], rax
 jmp xchain00116_n15_α
 xchain00116_n14_β:
 jmp xchain00116_n32_α
.Lx00130_0:
 .quad .Lx00130_0_s
.Lx00130_0_s:
 .string "initial"
# IR_LIT_STRING
 xchain00116_n15_α:
 mov qword ptr [r12 + 5776], 1
 mov rax, qword ptr [rip + .Lx00131_0]
 mov qword ptr [r12 + 5784], rax
 jmp xchain00116_n16_α
 xchain00116_n15_β:
 jmp xchain00116_n32_α
.Lx00131_0:
 .quad .Lx00131_0_s
.Lx00131_0_s:
 .string "link"
# IR_LIT_STRING
 xchain00116_n16_α:
 mov qword ptr [r12 + 5792], 1
 mov rax, qword ptr [rip + .Lx00132_0]
 mov qword ptr [r12 + 5800], rax
 jmp xchain00116_n17_α
 xchain00116_n16_β:
 jmp xchain00116_n32_α
.Lx00132_0:
 .quad .Lx00132_0_s
.Lx00132_0_s:
 .string "local"
# IR_LIT_STRING
 xchain00116_n17_α:
 mov qword ptr [r12 + 5808], 1
 mov rax, qword ptr [rip + .Lx00133_0]
 mov qword ptr [r12 + 5816], rax
 jmp xchain00116_n18_α
 xchain00116_n17_β:
 jmp xchain00116_n32_α
.Lx00133_0:
 .quad .Lx00133_0_s
.Lx00133_0_s:
 .string "next"
# IR_LIT_STRING
 xchain00116_n18_α:
 mov qword ptr [r12 + 5824], 1
 mov rax, qword ptr [rip + .Lx00134_0]
 mov qword ptr [r12 + 5832], rax
 jmp xchain00116_n19_α
 xchain00116_n18_β:
 jmp xchain00116_n32_α
.Lx00134_0:
 .quad .Lx00134_0_s
.Lx00134_0_s:
 .string "not"
# IR_LIT_STRING
 xchain00116_n19_α:
 mov qword ptr [r12 + 5840], 1
 mov rax, qword ptr [rip + .Lx00135_0]
 mov qword ptr [r12 + 5848], rax
 jmp xchain00116_n20_α
 xchain00116_n19_β:
 jmp xchain00116_n32_α
.Lx00135_0:
 .quad .Lx00135_0_s
.Lx00135_0_s:
 .string "of"
# IR_LIT_STRING
 xchain00116_n20_α:
 mov qword ptr [r12 + 5856], 1
 mov rax, qword ptr [rip + .Lx00136_0]
 mov qword ptr [r12 + 5864], rax
 jmp xchain00116_n21_α
 xchain00116_n20_β:
 jmp xchain00116_n32_α
.Lx00136_0:
 .quad .Lx00136_0_s
.Lx00136_0_s:
 .string "procedure"
# IR_LIT_STRING
 xchain00116_n21_α:
 mov qword ptr [r12 + 5872], 1
 mov rax, qword ptr [rip + .Lx00137_0]
 mov qword ptr [r12 + 5880], rax
 jmp xchain00116_n22_α
 xchain00116_n21_β:
 jmp xchain00116_n32_α
.Lx00137_0:
 .quad .Lx00137_0_s
.Lx00137_0_s:
 .string "record"
# IR_LIT_STRING
 xchain00116_n22_α:
 mov qword ptr [r12 + 5888], 1
 mov rax, qword ptr [rip + .Lx00138_0]
 mov qword ptr [r12 + 5896], rax
 jmp xchain00116_n23_α
 xchain00116_n22_β:
 jmp xchain00116_n32_α
.Lx00138_0:
 .quad .Lx00138_0_s
.Lx00138_0_s:
 .string "repeat"
# IR_LIT_STRING
 xchain00116_n23_α:
 mov qword ptr [r12 + 5904], 1
 mov rax, qword ptr [rip + .Lx00139_0]
 mov qword ptr [r12 + 5912], rax
 jmp xchain00116_n24_α
 xchain00116_n23_β:
 jmp xchain00116_n32_α
.Lx00139_0:
 .quad .Lx00139_0_s
.Lx00139_0_s:
 .string "return"
# IR_LIT_STRING
 xchain00116_n24_α:
 mov qword ptr [r12 + 5920], 1
 mov rax, qword ptr [rip + .Lx00140_0]
 mov qword ptr [r12 + 5928], rax
 jmp xchain00116_n25_α
 xchain00116_n24_β:
 jmp xchain00116_n32_α
.Lx00140_0:
 .quad .Lx00140_0_s
.Lx00140_0_s:
 .string "static"
# IR_LIT_STRING
 xchain00116_n25_α:
 mov qword ptr [r12 + 5936], 1
 mov rax, qword ptr [rip + .Lx00141_0]
 mov qword ptr [r12 + 5944], rax
 jmp xchain00116_n26_α
 xchain00116_n25_β:
 jmp xchain00116_n32_α
.Lx00141_0:
 .quad .Lx00141_0_s
.Lx00141_0_s:
 .string "suspend"
# IR_LIT_STRING
 xchain00116_n26_α:
 mov qword ptr [r12 + 5952], 1
 mov rax, qword ptr [rip + .Lx00142_0]
 mov qword ptr [r12 + 5960], rax
 jmp xchain00116_n27_α
 xchain00116_n26_β:
 jmp xchain00116_n32_α
.Lx00142_0:
 .quad .Lx00142_0_s
.Lx00142_0_s:
 .string "then"
# IR_LIT_STRING
 xchain00116_n27_α:
 mov qword ptr [r12 + 5968], 1
 mov rax, qword ptr [rip + .Lx00143_0]
 mov qword ptr [r12 + 5976], rax
 jmp xchain00116_n28_α
 xchain00116_n27_β:
 jmp xchain00116_n32_α
.Lx00143_0:
 .quad .Lx00143_0_s
.Lx00143_0_s:
 .string "to"
# IR_LIT_STRING
 xchain00116_n28_α:
 mov qword ptr [r12 + 5984], 1
 mov rax, qword ptr [rip + .Lx00144_0]
 mov qword ptr [r12 + 5992], rax
 jmp xchain00116_n29_α
 xchain00116_n28_β:
 jmp xchain00116_n32_α
.Lx00144_0:
 .quad .Lx00144_0_s
.Lx00144_0_s:
 .string "until"
# IR_LIT_STRING
 xchain00116_n29_α:
 mov qword ptr [r12 + 6000], 1
 mov rax, qword ptr [rip + .Lx00145_0]
 mov qword ptr [r12 + 6008], rax
 jmp xchain00116_n30_α
 xchain00116_n29_β:
 jmp xchain00116_n32_α
.Lx00145_0:
 .quad .Lx00145_0_s
.Lx00145_0_s:
 .string "while"
# IR_MAKE_LIST
 xchain00116_n30_α:
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
 jmp xchain00116_n31_α
 xchain00116_n30_β:
 jmp xchain00116_n32_α
# IR_ASSIGN gva
 xchain00116_n31_α:
 mov rax, qword ptr [r12 + 5104]
 mov rdx, qword ptr [r12 + 5112]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 5088], rax
 mov qword ptr [r12 + 5096], rdx
 jmp xchain00116_n32_α
 xchain00116_n31_β:
 jmp xchain00116_n32_α
# IR_LIT_INTEGER
 xchain00116_n32_α:
 mov qword ptr [r12 + 5072], 6
 mov rax, qword ptr [rip + .Lx00146_0]
 mov qword ptr [r12 + 5080], rax
 jmp xchain00116_n33_α
 xchain00116_n32_β:
 jmp xchain00116_n34_α
.Lx00146_0:
 .quad 0
# IR_ASSIGN gva
 xchain00116_n33_α:
 mov rax, qword ptr [r12 + 5072]
 mov rdx, qword ptr [r12 + 5080]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 5056], rax
 mov qword ptr [r12 + 5064], rdx
 jmp xchain00116_n34_α
 xchain00116_n33_β:
 jmp xchain00116_n34_α
 xchain00116_n34_α:
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
 je xchain00116_n36_α
 jmp xchain00116_n35_α
 xchain00116_n34_β:
 jmp xchain00116_n36_α
# IR_ASSIGN gva
 xchain00116_n35_α:
 mov rax, qword ptr [r12 + 5040]
 mov rdx, qword ptr [r12 + 5048]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 5024], rax
 mov qword ptr [r12 + 5032], rdx
 jmp xchain00116_n36_α
 xchain00116_n35_β:
 jmp xchain00116_n36_α
# IR_MAKE_LIST
 xchain00116_n36_α:
 lea rdi, [r12 + 5024]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 5008], rax
 mov qword ptr [r12 + 5016], rdx
 jmp xchain00116_n37_α
 xchain00116_n36_β:
 jmp xchain00116_n38_α
 xchain00116_n37_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 5008]
 mov rdx, qword ptr [r12 + 5016]
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 mov qword ptr [r12 + 4992], rax
 mov qword ptr [r12 + 5000], rdx
 jmp xchain00116_n38_α
 xchain00116_n37_β:
 jmp xchain00116_n38_α
# IR_MAKE_LIST
 xchain00116_n38_α:
 lea rdi, [r12 + 4992]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 4976], rax
 mov qword ptr [r12 + 4984], rdx
 jmp xchain00116_n39_α
 xchain00116_n38_β:
 jmp xchain00116_n40_α
# IR_ASSIGN gva
 xchain00116_n39_α:
 mov rax, qword ptr [r12 + 4976]
 mov rdx, qword ptr [r12 + 4984]
 mov qword ptr [rbx + 192], rax
 mov qword ptr [rbx + 200], rdx
 mov qword ptr [r12 + 4960], rax
 mov qword ptr [r12 + 4968], rdx
 jmp xchain00116_n40_α
 xchain00116_n39_β:
 jmp xchain00116_n40_α
# IR_MAKE_LIST
 xchain00116_n40_α:
 lea rdi, [r12 + 4960]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 4944], rax
 mov qword ptr [r12 + 4952], rdx
 jmp xchain00116_n41_α
 xchain00116_n40_β:
 jmp xchain00116_n42_α
# IR_ASSIGN gva
 xchain00116_n41_α:
 mov rax, qword ptr [r12 + 4944]
 mov rdx, qword ptr [r12 + 4952]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 4928], rax
 mov qword ptr [r12 + 4936], rdx
 jmp xchain00116_n42_α
 xchain00116_n41_β:
 jmp xchain00116_n42_α
# IR_LIT_STRING
 xchain00116_n42_α:
 mov qword ptr [r12 + 4912], 1
 mov rax, qword ptr [rip + .Lx00147_0]
 mov qword ptr [r12 + 4920], rax
 jmp xchain00116_n43_α
 xchain00116_n42_β:
 jmp xchain00116_n44_α
.Lx00147_0:
 .quad .Lx00147_0_s
.Lx00147_0_s:
 .string "global"
 xchain00116_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 4912]
 mov rdx, qword ptr [r12 + 4920]
 mov qword ptr [r12 + 6144], rax
 mov qword ptr [r12 + 6152], rdx
 mov qword ptr [r12 + 4896], rax
 mov qword ptr [r12 + 4904], rdx
 jmp xchain00116_n44_α
 xchain00116_n43_β:
 jmp xchain00116_n44_α
# IR_LIT_CHARSET
 xchain00116_n44_α:
 mov qword ptr [r12 + 4864], 1
 mov dword ptr [r12 + 4868], -1
 mov rax, qword ptr [rip + .Lx00148_0]
 mov qword ptr [r12 + 4872], rax
 jmp xchain00116_n45_α
 xchain00116_n44_β:
 jmp xchain00116_n48_α
.Lx00148_0:
 .quad .Lx00148_0_s
.Lx00148_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
# IR_LIT_CHARSET
 xchain00116_n45_α:
 mov qword ptr [r12 + 4880], 1
 mov dword ptr [r12 + 4884], -1
 mov rax, qword ptr [rip + .Lx00149_0]
 mov qword ptr [r12 + 4888], rax
 jmp xchain00116_n46_α
 xchain00116_n45_β:
 jmp xchain00116_n48_α
.Lx00149_0:
 .quad .Lx00149_0_s
.Lx00149_0_s:
 .string "_"
 xchain00116_n46_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 4864]
 mov rsi, qword ptr [r12 + 4872]
 mov rdx, qword ptr [r12 + 4880]
 mov rcx, qword ptr [r12 + 4888]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00116_n48_α
 mov qword ptr [r12 + 4848], rax
 mov qword ptr [r12 + 4856], rdx
 jmp xchain00116_n47_α
 xchain00116_n46_β:
 jmp xchain00116_n48_α
# IR_ASSIGN gva
 xchain00116_n47_α:
 mov rax, qword ptr [r12 + 4848]
 mov rdx, qword ptr [r12 + 4856]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 4832], rax
 mov qword ptr [r12 + 4840], rdx
 jmp xchain00116_n48_α
 xchain00116_n47_β:
 jmp xchain00116_n48_α
# IR_VAR gva
 xchain00116_n48_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 4800], rax
 mov qword ptr [r12 + 4808], rdx
 jmp xchain00116_n49_α
 xchain00116_n48_β:
 jmp xchain00116_n50_α
# IR_LIT_CHARSET
 xchain00116_n49_α:
 mov qword ptr [r12 + 4816], 1
 mov dword ptr [r12 + 4820], -1
 mov rax, qword ptr [rip + .Lx00150_0]
 mov qword ptr [r12 + 4824], rax
 jmp xchain00116_n51_α
 xchain00116_n49_β:
 jmp xchain00116_n50_α
.Lx00150_0:
 .quad .Lx00150_0_s
.Lx00150_0_s:
 .string "0123456789"
# IR_VAR
 xchain00116_n50_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 4736], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 4744], rax
 jmp xchain00116_n52_α
 xchain00116_n50_β:
 jmp xchain00116_n53_α
 xchain00116_n51_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 4800]
 mov rsi, qword ptr [r12 + 4808]
 mov rdx, qword ptr [r12 + 4816]
 mov rcx, qword ptr [r12 + 4824]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00116_n50_α
 mov qword ptr [r12 + 4784], rax
 mov qword ptr [r12 + 4792], rdx
 jmp xchain00116_n54_α
 xchain00116_n51_β:
 jmp xchain00116_n50_α
# IR_LIT_STRING
 xchain00116_n52_α:
 mov qword ptr [r12 + 4752], 1
 mov rax, qword ptr [rip + .Lx00151_0]
 mov qword ptr [r12 + 4760], rax
 jmp xchain00116_n55_α
 xchain00116_n52_β:
 jmp xchain00116_n53_α
.Lx00151_0:
 .quad .Lx00151_0_s
.Lx00151_0_s:
 .string "qxw+l+c+"
# IR_VAR_REF local
 xchain00116_n53_α:
 lea rdi, [r12 + 6192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4608], rax
 mov qword ptr [r12 + 4616], rdx
 jmp xchain00116_n56_α
 xchain00116_n53_β:
 jmp xchain00116_n60_α
# IR_ASSIGN gva
 xchain00116_n54_α:
 mov rax, qword ptr [r12 + 4784]
 mov rdx, qword ptr [r12 + 4792]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 4768], rax
 mov qword ptr [r12 + 4776], rdx
 jmp xchain00116_n50_α
 xchain00116_n54_β:
 jmp xchain00116_n50_α
 xchain00116_n55_α:
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
  .Lbynamefn550: .string "options"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn550]
 lea rsi, [r12 + 4704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4688], rax
 mov qword ptr [r12 + 4696], rdx
 cmp eax, 99
 je xchain00116_n53_α
 jmp xchain00116_n57_α
xchain00116_n55_β:
 jmp xchain00116_n53_α
# IR_LIT_STRING
 xchain00116_n56_α:
 mov qword ptr [r12 + 4624], 1
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [r12 + 4632], rax
 jmp xchain00116_n58_α
 xchain00116_n56_β:
 jmp xchain00116_n60_α
.Lx00152_0:
 .quad .Lx00152_0_s
.Lx00152_0_s:
 .string "q"
 xchain00116_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 4688]
 mov rdx, qword ptr [r12 + 4696]
 mov qword ptr [r12 + 6192], rax
 mov qword ptr [r12 + 6200], rdx
 mov qword ptr [r12 + 4672], rax
 mov qword ptr [r12 + 4680], rdx
 jmp xchain00116_n53_α
 xchain00116_n57_β:
 jmp xchain00116_n53_α
# IR_SUBSCRIPT x[i] variable
 xchain00116_n58_α:
 mov rdi, qword ptr [r12 + 4608]
 mov rsi, qword ptr [r12 + 4616]
 mov rdx, qword ptr [r12 + 4624]
 mov rcx, qword ptr [r12 + 4632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00116_n60_α
 mov qword ptr [r12 + 4640], rax
 mov qword ptr [r12 + 4648], rdx
 jmp xchain00116_n59_α
 xchain00116_n58_β:
 jmp xchain00116_n60_α
# IR_DEREF variable -> value
 xchain00116_n59_α:
 mov rdi, qword ptr [r12 + 4640]
 mov rsi, qword ptr [r12 + 4648]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00116_n60_α
 mov qword ptr [r12 + 4656], rax
 mov qword ptr [r12 + 4664], rdx
 jmp xchain00116_n61_α
 xchain00116_n59_β:
 jmp xchain00116_n60_α
# IR_VAR_REF local
 xchain00116_n60_α:
 lea rdi, [r12 + 6192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4464], rax
 mov qword ptr [r12 + 4472], rdx
 jmp xchain00116_n62_α
 xchain00116_n60_β:
 jmp xchain00116_n67_α
# IR_UNOP
 xchain00116_n61_α:
 mov eax, dword ptr [r12 + 4656]
 cmp eax, 99
 je xchain00116_n60_α
 cmp eax, 0
 je xchain00116_n60_α
 mov rax, qword ptr [r12 + 4656]
 mov qword ptr [r12 + 4592], rax
 mov rax, qword ptr [r12 + 4664]
 mov qword ptr [r12 + 4600], rax
 jmp xchain00116_n63_α
 xchain00116_n61_β:
 jmp xchain00116_n60_α
# IR_LIT_STRING
 xchain00116_n62_α:
 mov qword ptr [r12 + 4480], 1
 mov rax, qword ptr [rip + .Lx00153_0]
 mov qword ptr [r12 + 4488], rax
 jmp xchain00116_n64_α
 xchain00116_n62_β:
 jmp xchain00116_n67_α
.Lx00153_0:
 .quad .Lx00153_0_s
.Lx00153_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain00116_n63_α:
 mov qword ptr [r12 + 4576], 6
 mov rax, qword ptr [rip + .Lx00154_0]
 mov qword ptr [r12 + 4584], rax
 jmp xchain00116_n65_α
 xchain00116_n63_β:
 jmp xchain00116_n60_α
.Lx00154_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00116_n64_α:
 mov rdi, qword ptr [r12 + 4464]
 mov rsi, qword ptr [r12 + 4472]
 mov rdx, qword ptr [r12 + 4480]
 mov rcx, qword ptr [r12 + 4488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00116_n67_α
 mov qword ptr [r12 + 4496], rax
 mov qword ptr [r12 + 4504], rdx
 jmp xchain00116_n66_α
 xchain00116_n64_β:
 jmp xchain00116_n67_α
# IR_ASSIGN gva
 xchain00116_n65_α:
 mov rax, qword ptr [r12 + 4576]
 mov rdx, qword ptr [r12 + 4584]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 4560], rax
 mov qword ptr [r12 + 4568], rdx
 jmp xchain00116_n68_α
 xchain00116_n65_β:
 jmp xchain00116_n60_α
# IR_DEREF variable -> value
 xchain00116_n66_α:
 mov rdi, qword ptr [r12 + 4496]
 mov rsi, qword ptr [r12 + 4504]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00116_n67_α
 mov qword ptr [r12 + 4512], rax
 mov qword ptr [r12 + 4520], rdx
 jmp xchain00116_n69_α
 xchain00116_n66_β:
 jmp xchain00116_n67_α
# IR_VAR_REF local
 xchain00116_n67_α:
 lea rdi, [r12 + 6192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 jmp xchain00116_n70_α
 xchain00116_n67_β:
 jmp xchain00116_n76_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n68_α:
 mov rax, qword ptr [r12 + 4560]
 mov qword ptr [r12 + 4528], rax
 mov rax, qword ptr [r12 + 4568]
 mov qword ptr [r12 + 4536], rax
 lea rax, [rip + xchain00116_n60_α]
 mov qword ptr [r12 + 4544], rax
 jmp xchain00116_n60_α
 xchain00116_n68_β:
 jmp xchain00116_n60_α
# IR_UNOP
 xchain00116_n69_α:
 mov eax, dword ptr [r12 + 4512]
 cmp eax, 99
 je xchain00116_n67_α
 cmp eax, 0
 je xchain00116_n67_α
 mov rax, qword ptr [r12 + 4512]
 mov qword ptr [r12 + 4448], rax
 mov rax, qword ptr [r12 + 4520]
 mov qword ptr [r12 + 4456], rax
 jmp xchain00116_n72_α
 xchain00116_n69_β:
 jmp xchain00116_n67_α
# IR_LIT_STRING
 xchain00116_n70_α:
 mov qword ptr [r12 + 4336], 1
 mov rax, qword ptr [rip + .Lx00155_0]
 mov qword ptr [r12 + 4344], rax
 jmp xchain00116_n73_α
 xchain00116_n70_β:
 jmp xchain00116_n76_α
.Lx00155_0:
 .quad .Lx00155_0_s
.Lx00155_0_s:
 .string "w"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00116_n71_α:
 jmp qword ptr [r12 + 4544]
 xchain00116_n71_β:
 jmp xchain00116_n60_α
# IR_LIT_INTEGER
 xchain00116_n72_α:
 mov qword ptr [r12 + 4432], 6
 mov rax, qword ptr [rip + .Lx00156_0]
 mov qword ptr [r12 + 4440], rax
 jmp xchain00116_n74_α
 xchain00116_n72_β:
 jmp xchain00116_n67_α
.Lx00156_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00116_n73_α:
 mov rdi, qword ptr [r12 + 4320]
 mov rsi, qword ptr [r12 + 4328]
 mov rdx, qword ptr [r12 + 4336]
 mov rcx, qword ptr [r12 + 4344]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00116_n76_α
 mov qword ptr [r12 + 4352], rax
 mov qword ptr [r12 + 4360], rdx
 jmp xchain00116_n75_α
 xchain00116_n73_β:
 jmp xchain00116_n76_α
# IR_ASSIGN gva
 xchain00116_n74_α:
 mov rax, qword ptr [r12 + 4432]
 mov rdx, qword ptr [r12 + 4440]
 mov qword ptr [rbx + 128], rax
 mov qword ptr [rbx + 136], rdx
 mov qword ptr [r12 + 4416], rax
 mov qword ptr [r12 + 4424], rdx
 jmp xchain00116_n77_α
 xchain00116_n74_β:
 jmp xchain00116_n67_α
# IR_DEREF variable -> value
 xchain00116_n75_α:
 mov rdi, qword ptr [r12 + 4352]
 mov rsi, qword ptr [r12 + 4360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00116_n76_α
 mov qword ptr [r12 + 4368], rax
 mov qword ptr [r12 + 4376], rdx
 jmp xchain00116_n78_α
 xchain00116_n75_β:
 jmp xchain00116_n76_α
# IR_VAR_REF local
 xchain00116_n76_α:
 lea rdi, [r12 + 6192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4224], rax
 mov qword ptr [r12 + 4232], rdx
 jmp xchain00116_n79_α
 xchain00116_n76_β:
 jmp xchain00116_n84_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n77_α:
 mov rax, qword ptr [r12 + 4416]
 mov qword ptr [r12 + 4384], rax
 mov rax, qword ptr [r12 + 4424]
 mov qword ptr [r12 + 4392], rax
 lea rax, [rip + xchain00116_n67_α]
 mov qword ptr [r12 + 4400], rax
 jmp xchain00116_n67_α
 xchain00116_n77_β:
 jmp xchain00116_n67_α
# IR_UNOP
 xchain00116_n78_α:
 mov eax, dword ptr [r12 + 4368]
 cmp eax, 99
 je xchain00116_n76_α
 cmp eax, 0
 je xchain00116_n76_α
 mov rax, qword ptr [r12 + 4368]
 mov qword ptr [r12 + 4304], rax
 mov rax, qword ptr [r12 + 4376]
 mov qword ptr [r12 + 4312], rax
 jmp xchain00116_n81_α
 xchain00116_n78_β:
 jmp xchain00116_n76_α
# IR_LIT_STRING
 xchain00116_n79_α:
 mov qword ptr [r12 + 4240], 1
 mov rax, qword ptr [rip + .Lx00157_0]
 mov qword ptr [r12 + 4248], rax
 jmp xchain00116_n82_α
 xchain00116_n79_β:
 jmp xchain00116_n84_α
.Lx00157_0:
 .quad .Lx00157_0_s
.Lx00157_0_s:
 .string "l"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00116_n80_α:
 jmp qword ptr [r12 + 4400]
 xchain00116_n80_β:
 jmp xchain00116_n67_α
# IR_ASSIGN gva
 xchain00116_n81_α:
 mov rax, qword ptr [r12 + 4304]
 mov rdx, qword ptr [r12 + 4312]
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rdx
 mov qword ptr [r12 + 4288], rax
 mov qword ptr [r12 + 4296], rdx
 jmp xchain00116_n76_α
 xchain00116_n81_β:
 jmp xchain00116_n76_α
# IR_SUBSCRIPT x[i] variable
 xchain00116_n82_α:
 mov rdi, qword ptr [r12 + 4224]
 mov rsi, qword ptr [r12 + 4232]
 mov rdx, qword ptr [r12 + 4240]
 mov rcx, qword ptr [r12 + 4248]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00116_n84_α
 mov qword ptr [r12 + 4256], rax
 mov qword ptr [r12 + 4264], rdx
 jmp xchain00116_n83_α
 xchain00116_n82_β:
 jmp xchain00116_n84_α
# IR_DEREF variable -> value
 xchain00116_n83_α:
 mov rdi, qword ptr [r12 + 4256]
 mov rsi, qword ptr [r12 + 4264]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00116_n84_α
 mov qword ptr [r12 + 4272], rax
 mov qword ptr [r12 + 4280], rdx
 jmp xchain00116_n85_α
 xchain00116_n83_β:
 jmp xchain00116_n84_α
# IR_VAR_REF local
 xchain00116_n84_α:
 lea rdi, [r12 + 6192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4128], rax
 mov qword ptr [r12 + 4136], rdx
 jmp xchain00116_n86_α
 xchain00116_n84_β:
 jmp xchain00116_n90_α
# IR_UNOP
 xchain00116_n85_α:
 mov eax, dword ptr [r12 + 4272]
 cmp eax, 99
 je xchain00116_n84_α
 cmp eax, 0
 je xchain00116_n84_α
 mov rax, qword ptr [r12 + 4272]
 mov qword ptr [r12 + 4208], rax
 mov rax, qword ptr [r12 + 4280]
 mov qword ptr [r12 + 4216], rax
 jmp xchain00116_n87_α
 xchain00116_n85_β:
 jmp xchain00116_n84_α
# IR_LIT_STRING
 xchain00116_n86_α:
 mov qword ptr [r12 + 4144], 1
 mov rax, qword ptr [rip + .Lx00158_0]
 mov qword ptr [r12 + 4152], rax
 jmp xchain00116_n88_α
 xchain00116_n86_β:
 jmp xchain00116_n90_α
.Lx00158_0:
 .quad .Lx00158_0_s
.Lx00158_0_s:
 .string "c"
# IR_ASSIGN gva
 xchain00116_n87_α:
 mov rax, qword ptr [r12 + 4208]
 mov rdx, qword ptr [r12 + 4216]
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rdx
 mov qword ptr [r12 + 4192], rax
 mov qword ptr [r12 + 4200], rdx
 jmp xchain00116_n84_α
 xchain00116_n87_β:
 jmp xchain00116_n84_α
# IR_SUBSCRIPT x[i] variable
 xchain00116_n88_α:
 mov rdi, qword ptr [r12 + 4128]
 mov rsi, qword ptr [r12 + 4136]
 mov rdx, qword ptr [r12 + 4144]
 mov rcx, qword ptr [r12 + 4152]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00116_n90_α
 mov qword ptr [r12 + 4160], rax
 mov qword ptr [r12 + 4168], rdx
 jmp xchain00116_n89_α
 xchain00116_n88_β:
 jmp xchain00116_n90_α
# IR_DEREF variable -> value
 xchain00116_n89_α:
 mov rdi, qword ptr [r12 + 4160]
 mov rsi, qword ptr [r12 + 4168]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00116_n90_α
 mov qword ptr [r12 + 4176], rax
 mov qword ptr [r12 + 4184], rdx
 jmp xchain00116_n91_α
 xchain00116_n89_β:
 jmp xchain00116_n90_α
# IR_VAR_REF local
 xchain00116_n90_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4016], rax
 mov qword ptr [r12 + 4024], rdx
 jmp xchain00116_n92_α
 xchain00116_n90_β:
 jmp xchain00116_n96_α
# IR_UNOP
 xchain00116_n91_α:
 mov eax, dword ptr [r12 + 4176]
 cmp eax, 99
 je xchain00116_n90_α
 cmp eax, 0
 je xchain00116_n90_α
 mov rax, qword ptr [r12 + 4176]
 mov qword ptr [r12 + 4112], rax
 mov rax, qword ptr [r12 + 4184]
 mov qword ptr [r12 + 4120], rax
 jmp xchain00116_n93_α
 xchain00116_n91_β:
 jmp xchain00116_n90_α
# IR_LIT_INTEGER
 xchain00116_n92_α:
 mov qword ptr [r12 + 4032], 6
 mov rax, qword ptr [rip + .Lx00159_0]
 mov qword ptr [r12 + 4040], rax
 jmp xchain00116_n94_α
 xchain00116_n92_β:
 jmp xchain00116_n96_α
.Lx00159_0:
 .quad 1
# IR_ASSIGN gva
 xchain00116_n93_α:
 mov rax, qword ptr [r12 + 4112]
 mov rdx, qword ptr [r12 + 4120]
 mov qword ptr [rbx + 176], rax
 mov qword ptr [rbx + 184], rdx
 mov qword ptr [r12 + 4096], rax
 mov qword ptr [r12 + 4104], rdx
 jmp xchain00116_n90_α
 xchain00116_n93_β:
 jmp xchain00116_n90_α
# IR_SUBSCRIPT x[i] variable
 xchain00116_n94_α:
 mov rdi, qword ptr [r12 + 4016]
 mov rsi, qword ptr [r12 + 4024]
 mov rdx, qword ptr [r12 + 4032]
 mov rcx, qword ptr [r12 + 4040]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00116_n96_α
 mov qword ptr [r12 + 4048], rax
 mov qword ptr [r12 + 4056], rdx
 jmp xchain00116_n95_α
 xchain00116_n94_β:
 jmp xchain00116_n96_α
# IR_DEREF variable -> value
 xchain00116_n95_α:
 mov rdi, qword ptr [r12 + 4048]
 mov rsi, qword ptr [r12 + 4056]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00116_n96_α
 mov qword ptr [r12 + 4064], rax
 mov qword ptr [r12 + 4072], rdx
 jmp xchain00116_n97_α
 xchain00116_n95_β:
 jmp xchain00116_n96_α
 xchain00116_n96_α:
  .section .rodata
  .Lcall00160_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00160_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain00116_n99_α
 jmp xchain00116_n98_α
xchain00116_n96_β:
 jmp xchain00116_n99_α
# IR_LIT_STRING
 xchain00116_n97_α:
 mov qword ptr [r12 + 4080], 1
 mov rax, qword ptr [rip + .Lx00161_0]
 mov qword ptr [r12 + 4088], rax
 jmp xchain00116_n00020_α
 xchain00116_n97_β:
 jmp xchain00116_n96_α
.Lx00161_0:
 .quad .Lx00161_0_s
.Lx00161_0_s:
 .string "r"
 xchain00116_n98_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 752]
 mov rdx, qword ptr [r12 + 760]
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00116_n00024_α
 xchain00116_n98_β:
 jmp xchain00116_n99_α
# IR_VAR gva
 xchain00116_n99_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00116_n00026_α
 xchain00116_n99_β:
 jmp xchain00116_n00027_α
 xchain00116_n00020_α:
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
 je xchain00116_n96_α
 jmp xchain00116_n00028_α
 xchain00116_n00020_β:
 jmp xchain00116_n96_α
# IR_VAR
 xchain00116_n00024_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3920], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3928], rax
 jmp xchain00116_n00029_α
 xchain00116_n00024_β:
 jmp xchain00116_n00030_α
 xchain00116_n00026_α:
  .section .rodata
  .Lcall00162_pname: .string "format"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00162_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain00116_n00027_α
 jmp xchain00116_n00039_α
xchain00116_n00026_β:
 jmp xchain00116_n00027_α
# IR_LIT_STRING
 xchain00116_n00027_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx00163_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00116_n00032_α
 xchain00116_n00027_β:
 jmp xchain00116_n00001_α
.Lx00163_0:
 .quad .Lx00163_0_s
.Lx00163_0_s:
 .string "\n\nprocedures:\tlines:\n"
# IR_ASSIGN gva
 xchain00116_n00028_α:
 mov rax, qword ptr [r12 + 3968]
 mov rdx, qword ptr [r12 + 3976]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 3952], rax
 mov qword ptr [r12 + 3960], rdx
 jmp xchain00116_n96_α
 xchain00116_n00028_β:
 jmp xchain00116_n96_α
# IR_LIT_STRING
 xchain00116_n00029_α:
 mov qword ptr [r12 + 3936], 1
 mov rax, qword ptr [rip + .Lx00164_0]
 mov qword ptr [r12 + 3944], rax
 jmp xchain00116_n00034_α
 xchain00116_n00029_β:
 jmp xchain00116_n00030_α
.Lx00164_0:
 .quad .Lx00164_0_s
.Lx00164_0_s:
 .string "link"
# IR_VAR
 xchain00116_n00030_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3872], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3880], rax
 jmp xchain00116_n00035_α
 xchain00116_n00030_β:
 jmp xchain00116_n00036_α
# IR_LIST_BANG
 xchain00116_n00039_α:
 mov qword ptr [r12 + 672], 0
.Lx00165_0:
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 mov rdx, qword ptr [r12 + 672]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp rax, 99
 je xchain00116_n00027_α
 jmp xchain00116_n00037_α
 xchain00116_n00039_β:
 inc qword ptr [r12 + 672]
 jmp .Lx00165_0
 xchain00116_n00032_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+608] -> [r12+592]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn617: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn617]
 lea rsi, [r12 + 592]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain00116_n00001_α
 jmp xchain00116_n00001_α
 xchain00116_n00032_β:
 jmp xchain00116_n00001_α
 xchain00116_n00034_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 3936]
 mov rcx, qword ptr [r12 + 3944]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00116_n00030_α
 mov rdi, qword ptr [r12 + 3936]
 mov rsi, qword ptr [r12 + 3944]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3904], rax
 mov qword ptr [r12 + 3912], rdx
 jmp xchain00116_n00031_α
 xchain00116_n00034_β:
 jmp xchain00116_n00030_α
# IR_LIT_STRING
 xchain00116_n00035_α:
 mov qword ptr [r12 + 3888], 1
 mov rax, qword ptr [rip + .Lx00166_0]
 mov qword ptr [r12 + 3896], rax
 jmp xchain00116_n00040_α
 xchain00116_n00035_β:
 jmp xchain00116_n00036_α
.Lx00166_0:
 .quad .Lx00166_0_s
.Lx00166_0_s:
 .string "procedure"
# IR_VAR
 xchain00116_n00036_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3760], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3768], rax
 jmp xchain00116_n00045_α
 xchain00116_n00036_β:
 jmp xchain00116_n00002_α
 xchain00116_n00037_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+656] -> [r12+640]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn623: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn623]
 lea rsi, [r12 + 640]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain00116_n00027_α
 jmp xchain00116_n00039_β
 xchain00116_n00037_β:
 jmp xchain00116_n00027_α
# IR_MAKE_LIST
 xchain00116_n00001_α:
 lea rdi, [r12 + 576]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00116_n00041_α
 xchain00116_n00001_β:
 jmp xchain00116_n00047_α
# IR_MAKE_LIST
 xchain00116_n00031_α:
 lea rdi, [r12 + 864]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain00116_n00043_α
 xchain00116_n00031_β:
 jmp xchain00116_n00004_α
 xchain00116_n00040_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 3888]
 mov rcx, qword ptr [r12 + 3896]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00116_n00036_α
 mov rdi, qword ptr [r12 + 3888]
 mov rsi, qword ptr [r12 + 3896]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3856], rax
 mov qword ptr [r12 + 3864], rdx
 jmp xchain00116_n00044_α
 xchain00116_n00040_β:
 jmp xchain00116_n00036_α
# IR_LIT_STRING
 xchain00116_n00045_α:
 mov qword ptr [r12 + 3840], 1
 mov rax, qword ptr [rip + .Lx00167_0]
 mov qword ptr [r12 + 3848], rax
 jmp xchain00116_n00003_α
 xchain00116_n00045_β:
 jmp xchain00116_n00005_α
.Lx00167_0:
 .quad .Lx00167_0_s
.Lx00167_0_s:
 .string "global"
# IR_VAR
 xchain00116_n00002_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3648], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3656], rax
 jmp xchain00116_n00046_α
 xchain00116_n00002_β:
 jmp xchain00116_n00054_α
 xchain00116_n00041_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 6080], rax
 mov qword ptr [r12 + 6088], rdx
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00116_n00047_α
 xchain00116_n00041_β:
 jmp xchain00116_n00047_α
# IR_ASSIGN gva
 xchain00116_n00043_α:
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00116_n00004_α
 xchain00116_n00043_β:
 jmp xchain00116_n00004_α
# IR_VAR
 xchain00116_n00044_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 1224], rax
 jmp xchain00116_n00049_α
 xchain00116_n00044_β:
 jmp xchain00116_n00051_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00003_α:
 mov rax, qword ptr [r12 + 3840]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 3848]
 mov qword ptr [r12 + 3784], rax
 lea rax, [rip + xchain00116_n00005_α]
 mov qword ptr [r12 + 3792], rax
 jmp xchain00116_n00053_α
 xchain00116_n00003_β:
 jmp xchain00116_n00002_α
# IR_LIT_STRING
 xchain00116_n00046_α:
 mov qword ptr [r12 + 3728], 1
 mov rax, qword ptr [rip + .Lx00168_0]
 mov qword ptr [r12 + 3736], rax
 jmp xchain00116_n00055_α
 xchain00116_n00046_β:
 jmp xchain00116_n00070_α
.Lx00168_0:
 .quad .Lx00168_0_s
.Lx00168_0_s:
 .string "local"
# IR_VAR
 xchain00116_n00054_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3600], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3608], rax
 jmp xchain00116_n00056_α
 xchain00116_n00054_β:
 jmp xchain00116_n00057_α
# IR_VAR
 xchain00116_n00047_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 216], rax
 jmp xchain00116_n00058_α
 xchain00116_n00047_β:
 jmp xchain00116_n00060_α
# IR_LIT_STRING
 xchain00116_n00004_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx00169_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain00116_n00061_α
 xchain00116_n00004_β:
 jmp xchain00116_n96_α
.Lx00169_0:
 .quad .Lx00169_0_s
.Lx00169_0_s:
 .string ""
# IR_LIT_STRING
 xchain00116_n00049_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx00170_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00116_n00062_α
 xchain00116_n00049_β:
 jmp xchain00116_n00051_α
.Lx00170_0:
 .quad .Lx00170_0_s
.Lx00170_0_s:
 .string ""
 xchain00116_n00051_α:
  .section .rodata
  .Lcall00171_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00171_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain00116_n99_α
 jmp xchain00116_n00064_α
xchain00116_n00051_β:
 jmp xchain00116_n99_α
 xchain00116_n00053_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 3776]
 mov rcx, qword ptr [r12 + 3784]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00116_n00002_α
 mov rdi, qword ptr [r12 + 3776]
 mov rsi, qword ptr [r12 + 3784]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3744], rax
 mov qword ptr [r12 + 3752], rdx
 jmp xchain00116_n00067_α
 xchain00116_n00053_β:
 jmp xchain00116_n00002_α
# IR_LIT_STRING
 xchain00116_n00005_α:
 mov qword ptr [r12 + 3824], 1
 mov rax, qword ptr [rip + .Lx00172_0]
 mov qword ptr [r12 + 3832], rax
 jmp xchain00116_n00068_α
 xchain00116_n00005_β:
 jmp xchain00116_n00008_α
.Lx00172_0:
 .quad .Lx00172_0_s
.Lx00172_0_s:
 .string "link"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00116_n00052_α:
 jmp qword ptr [r12 + 3792]
 xchain00116_n00052_β:
 jmp xchain00116_n00002_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00055_α:
 mov rax, qword ptr [r12 + 3728]
 mov qword ptr [r12 + 3664], rax
 mov rax, qword ptr [r12 + 3736]
 mov qword ptr [r12 + 3672], rax
 lea rax, [rip + xchain00116_n00070_α]
 mov qword ptr [r12 + 3680], rax
 jmp xchain00116_n00072_α
 xchain00116_n00055_β:
 jmp xchain00116_n00054_α
# IR_LIT_STRING
 xchain00116_n00056_α:
 mov qword ptr [r12 + 3616], 1
 mov rax, qword ptr [rip + .Lx00173_0]
 mov qword ptr [r12 + 3624], rax
 jmp xchain00116_n00073_α
 xchain00116_n00056_β:
 jmp xchain00116_n00057_α
.Lx00173_0:
 .quad .Lx00173_0_s
.Lx00173_0_s:
 .string "end"
# IR_VAR
 xchain00116_n00057_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3520], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3528], rax
 jmp xchain00116_n00074_α
 xchain00116_n00057_β:
 jmp xchain00116_n00075_α
# IR_LIST_BANG
 xchain00116_n00058_α:
 mov qword ptr [r12 + 192], 0
.Lx00174_0:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 192]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp rax, 99
 je xchain00116_n00060_α
 jmp xchain00116_n00077_α
 xchain00116_n00058_β:
 inc qword ptr [r12 + 192]
 jmp .Lx00174_0
# IR_VAR
 xchain00116_n00060_α:
 mov rax, qword ptr [r12 + 6080]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 6088]
 mov qword ptr [r12 + 152], rax
 jmp xchain00116_n00006_α
 xchain00116_n00060_β:
 jmp xchain00116_n00076_α
# IR_ASSIGN gva
 xchain00116_n00061_α:
 mov rax, qword ptr [r12 + 816]
 mov rdx, qword ptr [r12 + 824]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00116_n96_α
 xchain00116_n00061_β:
 jmp xchain00116_n96_α
# IR_VAR gva
 xchain00116_n00062_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain00116_n00080_α
 xchain00116_n00062_β:
 jmp xchain00116_n00051_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00064_α:
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rax
 lea rax, [rip + xchain00116_n00065_α]
 mov qword ptr [r12 + 1136], rax
 jmp xchain00116_n00082_α
 xchain00116_n00064_β:
 jmp xchain00116_n00175_α
 xchain00116_n00065_α:
 jmp xchain00116_n99_α
xchain00116_n00065_β:
 jmp xchain00116_n99_α
 xchain00116_n00067_α:
  .section .rodata
  .Lcall00120_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00120_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 cmp eax, 99
 je xchain00116_n99_α
 jmp xchain00116_n00084_α
xchain00116_n00067_β:
 jmp xchain00116_n99_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00068_α:
 mov rax, qword ptr [r12 + 3824]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 3832]
 mov qword ptr [r12 + 3784], rax
 lea rax, [rip + xchain00116_n00008_α]
 mov qword ptr [r12 + 3792], rax
 jmp xchain00116_n00053_α
 xchain00116_n00068_β:
 jmp xchain00116_n00002_α
 xchain00116_n00072_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 3664]
 mov rcx, qword ptr [r12 + 3672]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00116_n00054_α
 mov rdi, qword ptr [r12 + 3664]
 mov rsi, qword ptr [r12 + 3672]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3632], rax
 mov qword ptr [r12 + 3640], rdx
 jmp xchain00116_n00009_α
 xchain00116_n00072_β:
 jmp xchain00116_n00054_α
# IR_LIT_STRING
 xchain00116_n00070_α:
 mov qword ptr [r12 + 3712], 1
 mov rax, qword ptr [rip + .Lx00176_0]
 mov qword ptr [r12 + 3720], rax
 jmp xchain00116_n00010_α
 xchain00116_n00070_β:
 jmp xchain00116_n00012_α
.Lx00176_0:
 .quad .Lx00176_0_s
.Lx00176_0_s:
 .string "dynamic"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00116_n00071_α:
 jmp qword ptr [r12 + 3680]
 xchain00116_n00071_β:
 jmp xchain00116_n00054_α
 xchain00116_n00073_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 3616]
 mov rcx, qword ptr [r12 + 3624]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00116_n00057_α
 mov rdi, qword ptr [r12 + 3616]
 mov rsi, qword ptr [r12 + 3624]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3584], rax
 mov qword ptr [r12 + 3592], rdx
 jmp xchain00116_n00087_α
 xchain00116_n00073_β:
 jmp xchain00116_n00057_α
# IR_VAR gva
 xchain00116_n00074_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 3568], rax
 mov qword ptr [r12 + 3576], rdx
 jmp xchain00116_n00011_α
 xchain00116_n00074_β:
 jmp xchain00116_n00075_α
# IR_VAR gva
 xchain00116_n00075_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 3488], rax
 mov qword ptr [r12 + 3496], rdx
 jmp xchain00116_n00089_α
 xchain00116_n00075_β:
 jmp xchain00116_n00088_α
 xchain00116_n00077_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 6096], rax
 mov qword ptr [r12 + 6104], rdx
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00116_n00090_α
 xchain00116_n00077_β:
 jmp xchain00116_n00060_α
 xchain00116_n00006_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+128]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn676: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn676]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00116_n00076_α
 jmp xchain00116_n00177_α
 xchain00116_n00006_β:
 jmp xchain00116_n00076_α
 xchain00116_n00076_α:
# BOX IR_CALL Term__(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn678: .string "Term__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn678]
 lea rsi, [r12 + 48]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain00116_n00076_β:
 jmp main_ω
 xchain00116_n00079_α:
 jmp xchain00116_n96_α
xchain00116_n00079_β:
 jmp xchain00116_n96_α
# IR_LIT_INTEGER
 xchain00116_n00080_α:
 mov qword ptr [r12 + 1328], 6
 mov rax, qword ptr [rip + .Lx00178_0]
 mov qword ptr [r12 + 1336], rax
 jmp xchain00116_n00179_α
 xchain00116_n00080_β:
 jmp xchain00116_n00051_α
.Lx00178_0:
 .quad 0
 xchain00116_n00082_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 6144], rax
 mov qword ptr [r12 + 6152], rdx
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain00116_n00175_α
 xchain00116_n00082_β:
 jmp xchain00116_n00175_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00116_n00007_α:
 jmp qword ptr [r12 + 1136]
 xchain00116_n00007_β:
 jmp xchain00116_n00175_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00084_α:
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 1944], rax
 lea rax, [rip + xchain00116_n00086_α]
 mov qword ptr [r12 + 1952], rax
 jmp xchain00116_n00180_α
 xchain00116_n00084_β:
 jmp xchain00116_n00181_α
 xchain00116_n00086_α:
 jmp xchain00116_n99_α
xchain00116_n00086_β:
 jmp xchain00116_n99_α
# IR_LIT_STRING
 xchain00116_n00008_α:
 mov qword ptr [r12 + 3808], 1
 mov rax, qword ptr [rip + .Lx00182_0]
 mov qword ptr [r12 + 3816], rax
 jmp xchain00116_n00183_α
 xchain00116_n00008_β:
 jmp xchain00116_n00002_α
.Lx00182_0:
 .quad .Lx00182_0_s
.Lx00182_0_s:
 .string "record"
 xchain00116_n00009_α:
  .section .rodata
  .Lcall00138_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00138_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 cmp eax, 99
 je xchain00116_n99_α
 jmp xchain00116_n00184_α
xchain00116_n00009_β:
 jmp xchain00116_n99_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00010_α:
 mov rax, qword ptr [r12 + 3712]
 mov qword ptr [r12 + 3664], rax
 mov rax, qword ptr [r12 + 3720]
 mov qword ptr [r12 + 3672], rax
 lea rax, [rip + xchain00116_n00012_α]
 mov qword ptr [r12 + 3680], rax
 jmp xchain00116_n00072_α
 xchain00116_n00010_β:
 jmp xchain00116_n00054_α
# IR_LIT_STRING
 xchain00116_n00087_α:
 mov qword ptr [r12 + 3072], 1
 mov rax, qword ptr [rip + .Lx00185_0]
 mov qword ptr [r12 + 3080], rax
 jmp xchain00116_n00186_α
 xchain00116_n00087_β:
 jmp xchain00116_n00187_α
.Lx00185_0:
 .quad .Lx00185_0_s
.Lx00185_0_s:
 .string "global"
# IR_LIST_BANG
 xchain00116_n00011_α:
 mov qword ptr [r12 + 3552], 0
.Lx00188_0:
 mov rdi, qword ptr [r12 + 3568]
 mov rsi, qword ptr [r12 + 3576]
 mov rdx, qword ptr [r12 + 3552]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 3536], rax
 mov qword ptr [r12 + 3544], rdx
 cmp rax, 99
 je xchain00116_n00075_α
 jmp xchain00116_n00189_α
 xchain00116_n00011_β:
 inc qword ptr [r12 + 3552]
 jmp .Lx00188_0
 xchain00116_n00089_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3488]
 mov rdx, qword ptr [r12 + 3496]
 mov qword ptr [r12 + 6176], rax
 mov qword ptr [r12 + 6184], rdx
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], rdx
 jmp xchain00116_n00088_α
 xchain00116_n00089_β:
 jmp xchain00116_n00088_α
 xchain00116_n00088_α:
  .section .rodata
  .Lcall00143_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00143_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3440], rax
 mov qword ptr [r12 + 3448], rdx
 cmp eax, 99
 je xchain00116_n00190_α
 jmp xchain00116_n00191_α
xchain00116_n00088_β:
 jmp xchain00116_n00190_α
# IR_VAR
 xchain00116_n00090_α:
 mov rax, qword ptr [r12 + 6080]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 6088]
 mov qword ptr [r12 + 280], rax
 jmp xchain00116_n00013_α
 xchain00116_n00090_β:
 jmp xchain00116_n00058_β
# IR_LIST_BANG
 xchain00116_n00177_α:
 mov qword ptr [r12 + 96], 0
.Lx00192_0:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 96]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp rax, 99
 je xchain00116_n00076_α
 jmp xchain00116_n00193_α
 xchain00116_n00177_β:
 inc qword ptr [r12 + 96]
 jmp .Lx00192_0
 xchain00116_n00179_α:
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
  .Lrkfn701: .string "procrec"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn701]
 lea rsi, [r12 + 1248]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je xchain00116_n00051_α
 jmp xchain00116_n00194_α
 xchain00116_n00179_β:
 jmp xchain00116_n00051_α
# IR_VAR
 xchain00116_n00175_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 1096], rax
 jmp xchain00116_n00195_α
 xchain00116_n00175_β:
 jmp xchain00116_n00196_α
 xchain00116_n00180_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1936]
 mov rdx, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain00116_n00181_α
 xchain00116_n00180_β:
 jmp xchain00116_n00181_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00116_n00197_α:
 jmp qword ptr [r12 + 1952]
 xchain00116_n00197_β:
 jmp xchain00116_n00181_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00183_α:
 mov rax, qword ptr [r12 + 3808]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 3816]
 mov qword ptr [r12 + 3784], rax
 lea rax, [rip + xchain00116_n00002_α]
 mov qword ptr [r12 + 3792], rax
 jmp xchain00116_n00053_α
 xchain00116_n00183_β:
 jmp xchain00116_n00002_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00184_α:
 mov rax, qword ptr [r12 + 2768]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 2776]
 mov qword ptr [r12 + 2744], rax
 lea rax, [rip + xchain00116_n00198_α]
 mov qword ptr [r12 + 2752], rax
 jmp xchain00116_n00199_α
 xchain00116_n00184_β:
 jmp xchain00116_n00200_α
 xchain00116_n00198_α:
 jmp xchain00116_n99_α
xchain00116_n00198_β:
 jmp xchain00116_n99_α
# IR_LIT_STRING
 xchain00116_n00012_α:
 mov qword ptr [r12 + 3696], 1
 mov rax, qword ptr [rip + .Lx00201_0]
 mov qword ptr [r12 + 3704], rax
 jmp xchain00116_n00014_α
 xchain00116_n00012_β:
 jmp xchain00116_n00054_α
.Lx00201_0:
 .quad .Lx00201_0_s
.Lx00201_0_s:
 .string "static"
 xchain00116_n00186_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3072]
 mov rdx, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 6144], rax
 mov qword ptr [r12 + 6152], rdx
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 jmp xchain00116_n00187_α
 xchain00116_n00186_β:
 jmp xchain00116_n00187_α
 xchain00116_n00189_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 3536]
 mov rcx, qword ptr [r12 + 3544]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00116_n00075_α
 mov rdi, qword ptr [r12 + 3536]
 mov rsi, qword ptr [r12 + 3544]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 jmp xchain00116_n96_α
 xchain00116_n00189_β:
 jmp xchain00116_n00075_α
 xchain00116_n00191_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3440]
 mov rdx, qword ptr [r12 + 3448]
 mov qword ptr [r12 + 6160], rax
 mov qword ptr [r12 + 6168], rdx
 mov qword ptr [r12 + 3424], rax
 mov qword ptr [r12 + 3432], rdx
 jmp xchain00116_n00202_α
 xchain00116_n00191_β:
 jmp xchain00116_n00190_α
# IR_VAR gva
 xchain00116_n00190_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 3376], rax
 mov qword ptr [r12 + 3384], rdx
 jmp xchain00116_n00203_α
 xchain00116_n00190_β:
 jmp xchain00116_n00204_α
# IR_VAR
 xchain00116_n00013_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 424], rax
 jmp xchain00116_n00205_α
 xchain00116_n00013_β:
 jmp xchain00116_n00058_β
 xchain00116_n00193_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+64]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 72], rax
  .section .rodata
  .Lrkfn720: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn720]
 lea rsi, [r12 + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain00116_n00076_α
 jmp xchain00116_n00177_β
 xchain00116_n00193_β:
 jmp xchain00116_n00076_α
 xchain00116_n00194_α:
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
  .Lrkfn722: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn722]
 lea rsi, [r12 + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain00116_n00051_α
 jmp xchain00116_n00051_α
 xchain00116_n00194_β:
 jmp xchain00116_n00051_α
 xchain00116_n00195_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1088] -> [r12+1072]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn724: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn724]
 lea rsi, [r12 + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00116_n00196_α
 jmp xchain00116_n00206_α
 xchain00116_n00195_β:
 jmp xchain00116_n00196_α
# IR_VAR
 xchain00116_n00196_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00116_n00207_α
 xchain00116_n00196_β:
 jmp xchain00116_n00208_α
# IR_VAR
 xchain00116_n00181_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 1880], rax
 jmp xchain00116_n00209_α
 xchain00116_n00181_β:
 jmp xchain00116_n00210_α
 xchain00116_n00199_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2736]
 mov rdx, qword ptr [r12 + 2744]
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 mov qword ptr [r12 + 2720], rax
 mov qword ptr [r12 + 2728], rdx
 jmp xchain00116_n00200_α
 xchain00116_n00199_β:
 jmp xchain00116_n00200_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00116_n00211_α:
 jmp qword ptr [r12 + 2752]
 xchain00116_n00211_β:
 jmp xchain00116_n00200_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00014_α:
 mov rax, qword ptr [r12 + 3696]
 mov qword ptr [r12 + 3664], rax
 mov rax, qword ptr [r12 + 3704]
 mov qword ptr [r12 + 3672], rax
 lea rax, [rip + xchain00116_n00054_α]
 mov qword ptr [r12 + 3680], rax
 jmp xchain00116_n00072_α
 xchain00116_n00014_β:
 jmp xchain00116_n00054_α
# IR_MAKE_LIST
 xchain00116_n00187_α:
 lea rdi, [r12 + 3056]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 3040], rax
 mov qword ptr [r12 + 3048], rdx
 jmp xchain00116_n00212_α
 xchain00116_n00187_β:
 jmp xchain00116_n00213_α
 xchain00116_n00214_α:
 jmp xchain00116_n96_α
xchain00116_n00214_β:
 jmp xchain00116_n96_α
# IR_LIT_STRING
 xchain00116_n00202_α:
 mov qword ptr [r12 + 3456], 1
 mov rax, qword ptr [rip + .Lx00215_0]
 mov qword ptr [r12 + 3464], rax
 jmp xchain00116_n00216_α
 xchain00116_n00202_β:
 jmp xchain00116_n00190_α
.Lx00215_0:
 .quad .Lx00215_0_s
.Lx00215_0_s:
 .string "("
# IR_VAR
 xchain00116_n00203_α:
 mov rax, qword ptr [r12 + 6160]
 mov qword ptr [r12 + 3392], rax
 mov rax, qword ptr [r12 + 6168]
 mov qword ptr [r12 + 3400], rax
 jmp xchain00116_n00015_α
 xchain00116_n00203_β:
 jmp xchain00116_n00204_α
# IR_VAR
 xchain00116_n00204_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3184], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3192], rax
 jmp xchain00116_n00217_α
 xchain00116_n00204_β:
 jmp xchain00116_n96_α
# IR_FIELD_GET
 xchain00116_n00205_α:
 mov rdi, qword ptr [rip + .Lx00218_0]
 mov rsi, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00116_n00058_β
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00116_n00219_α
 xchain00116_n00205_β:
 jmp xchain00116_n00058_β
.Lx00218_0:
 .quad .Lx00218_0_s
.Lx00218_0_s:
 .string "pname"
 xchain00116_n00206_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1056]
 mov rdx, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 6096], rax
 mov qword ptr [r12 + 6104], rdx
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00116_n00196_α
 xchain00116_n00206_β:
 jmp xchain00116_n00196_α
# IR_FIELD_GET lv
 xchain00116_n00207_α:
 mov rdi, qword ptr [rip + .Lx00220_0]
 mov rsi, qword ptr [r12 + 992]
 mov rdx, qword ptr [r12 + 1000]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00116_n00208_α
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain00116_n00016_α
 xchain00116_n00207_β:
 jmp xchain00116_n00208_α
.Lx00220_0:
 .quad .Lx00220_0_s
.Lx00220_0_s:
 .string "pname"
# IR_VAR
 xchain00116_n00208_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 952], rax
 jmp xchain00116_n00221_α
 xchain00116_n00208_β:
 jmp xchain00116_n96_α
# IR_LIT_STRING
 xchain00116_n00209_α:
 mov qword ptr [r12 + 1888], 1
 mov rax, qword ptr [rip + .Lx00222_0]
 mov qword ptr [r12 + 1896], rax
 jmp xchain00116_n00017_α
 xchain00116_n00209_β:
 jmp xchain00116_n00210_α
.Lx00222_0:
 .quad .Lx00222_0_s
.Lx00222_0_s:
 .string "global"
 xchain00116_n00210_α:
  .section .rodata
  .Lcall00223_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00223_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 cmp eax, 99
 je xchain00116_n00224_α
 jmp xchain00116_n00225_α
xchain00116_n00210_β:
 jmp xchain00116_n00224_α
# IR_VAR gva
 xchain00116_n00200_α:
 mov rax, qword ptr [rbx + 192]
 mov rdx, qword ptr [rbx + 200]
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 jmp xchain00116_n00226_α
 xchain00116_n00200_β:
 jmp xchain00116_n00227_α
# IR_ASSIGN gva
 xchain00116_n00212_α:
 mov rax, qword ptr [r12 + 3040]
 mov rdx, qword ptr [r12 + 3048]
 mov qword ptr [rbx + 192], rax
 mov qword ptr [rbx + 200], rdx
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 jmp xchain00116_n00213_α
 xchain00116_n00212_β:
 jmp xchain00116_n00213_α
 xchain00116_n00216_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 3424]
 mov rsi, qword ptr [r12 + 3432]
 mov rdx, qword ptr [r12 + 3456]
 mov rcx, qword ptr [r12 + 3464]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00116_n00190_α
 mov rdi, qword ptr [r12 + 3456]
 mov rsi, qword ptr [r12 + 3464]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3408], rax
 mov qword ptr [r12 + 3416], rdx
 jmp xchain00116_n00228_α
 xchain00116_n00216_β:
 jmp xchain00116_n00190_α
 xchain00116_n00015_α:
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
  .Lrkfn753: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn753]
 lea rsi, [r12 + 3344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3328], rax
 mov qword ptr [r12 + 3336], rdx
 cmp eax, 99
 je xchain00116_n00204_α
 jmp xchain00116_n00229_α
 xchain00116_n00015_β:
 jmp xchain00116_n00204_α
# IR_VAR
 xchain00116_n00217_α:
 mov rax, qword ptr [r12 + 6144]
 mov qword ptr [r12 + 3200], rax
 mov rax, qword ptr [r12 + 6152]
 mov qword ptr [r12 + 3208], rax
 jmp xchain00116_n00230_α
 xchain00116_n00217_β:
 jmp xchain00116_n96_α
# IR_LIT_INTEGER
 xchain00116_n00219_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00231_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00116_n00232_α
 xchain00116_n00219_β:
 jmp xchain00116_n00058_β
.Lx00231_0:
 .quad 16
# IR_VAR
 xchain00116_n00016_α:
 mov rax, qword ptr [r12 + 6144]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 6152]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00116_n00233_α
 xchain00116_n00016_β:
 jmp xchain00116_n00208_α
# IR_VAR
 xchain00116_n00221_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 968], rax
 jmp xchain00116_n00018_α
 xchain00116_n00221_β:
 jmp xchain00116_n96_α
# IR_VAR gva
 xchain00116_n00017_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain00116_n00234_α
 xchain00116_n00017_β:
 jmp xchain00116_n00210_α
 xchain00116_n00225_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1488]
 mov rdx, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 6160], rax
 mov qword ptr [r12 + 6168], rdx
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain00116_n00235_α
 xchain00116_n00225_β:
 jmp xchain00116_n00224_α
# IR_VAR gva
 xchain00116_n00224_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain00116_n00236_α
 xchain00116_n00224_β:
 jmp xchain00116_n96_α
# IR_VAR
 xchain00116_n00226_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 2704], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 2712], rax
 jmp xchain00116_n00237_α
 xchain00116_n00226_β:
 jmp xchain00116_n00227_α
# IR_VAR
 xchain00116_n00227_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 2592], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 2600], rax
 jmp xchain00116_n00238_α
 xchain00116_n00227_β:
 jmp xchain00116_n00239_α
# IR_VAR
 xchain00116_n00213_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 3008], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 3016], rax
 jmp xchain00116_n00019_α
 xchain00116_n00213_β:
 jmp xchain00116_n00240_α
# IR_VAR
 xchain00116_n00228_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3296], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3304], rax
 jmp xchain00116_n00241_α
 xchain00116_n00228_β:
 jmp xchain00116_n00204_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00229_α:
 mov rax, qword ptr [r12 + 3328]
 mov qword ptr [r12 + 3232], rax
 mov rax, qword ptr [r12 + 3336]
 mov qword ptr [r12 + 3240], rax
 lea rax, [rip + xchain00116_n00204_α]
 mov qword ptr [r12 + 3248], rax
 jmp xchain00116_n00204_α
 xchain00116_n00229_β:
 jmp xchain00116_n00204_α
# IR_VAR
 xchain00116_n00230_α:
 mov rax, qword ptr [r12 + 6176]
 mov qword ptr [r12 + 3216], rax
 mov rax, qword ptr [r12 + 6184]
 mov qword ptr [r12 + 3224], rax
 jmp xchain00116_n00242_α
 xchain00116_n00230_β:
 jmp xchain00116_n96_α
# IR_LIT_STRING
 xchain00116_n00232_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx00243_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00116_n00244_α
 xchain00116_n00232_β:
 jmp xchain00116_n00058_β
.Lx00243_0:
 .quad .Lx00243_0_s
.Lx00243_0_s:
 .string " "
# IR_ASSIGN_VAR write through variable
 xchain00116_n00233_α:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1024]
 mov rcx, qword ptr [r12 + 1032]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00116_n00208_α
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain00116_n00208_α
 xchain00116_n00233_β:
 jmp xchain00116_n00208_α
 xchain00116_n00018_α:
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
  .Lrkfn779: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn779]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain00116_n96_α
 jmp xchain00116_n00022_α
 xchain00116_n00018_β:
 jmp xchain00116_n96_α
 xchain00116_n00234_α:
  .section .rodata
  .Lcall00245_pname: .string "addword"
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
   lea rdi, [rip + .Lcall00245_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 cmp eax, 99
 je xchain00116_n00210_α
 jmp xchain00116_n00210_α
xchain00116_n00234_β:
 jmp xchain00116_n00210_α
# IR_LIT_STRING
 xchain00116_n00235_α:
 mov qword ptr [r12 + 1504], 1
 mov rax, qword ptr [rip + .Lx00246_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00116_n00247_α
 xchain00116_n00235_β:
 jmp xchain00116_n00224_α
.Lx00246_0:
 .quad .Lx00246_0_s
.Lx00246_0_s:
 .string ","
# IR_VAR
 xchain00116_n00236_α:
 mov rax, qword ptr [r12 + 6160]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 6168]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00116_n00023_α
 xchain00116_n00236_β:
 jmp xchain00116_n96_α
 xchain00116_n00237_α:
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
  .Lrkfn785: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn785]
 lea rsi, [r12 + 2656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 cmp eax, 99
 je xchain00116_n00227_α
 jmp xchain00116_n00227_α
 xchain00116_n00237_β:
 jmp xchain00116_n00227_α
# IR_VAR
 xchain00116_n00238_α:
 mov rax, qword ptr [r12 + 6144]
 mov qword ptr [r12 + 2608], rax
 mov rax, qword ptr [r12 + 6152]
 mov qword ptr [r12 + 2616], rax
 jmp xchain00116_n00025_α
 xchain00116_n00238_β:
 jmp xchain00116_n00239_α
 xchain00116_n00239_α:
  .section .rodata
  .Lcall00248_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00248_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 cmp eax, 99
 je xchain00116_n00249_α
 jmp xchain00116_n00250_α
xchain00116_n00239_β:
 jmp xchain00116_n00249_α
 xchain00116_n00019_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3008] -> [r12+2992]
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 3000], rax
  .section .rodata
  .Lrkfn790: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn790]
 lea rsi, [r12 + 2992]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 cmp eax, 99
 je xchain00116_n00240_α
 jmp xchain00116_n00251_α
 xchain00116_n00019_β:
 jmp xchain00116_n00240_α
# IR_VAR
 xchain00116_n00240_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 2912], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 2920], rax
 jmp xchain00116_n00252_α
 xchain00116_n00240_β:
 jmp xchain00116_n00253_α
# IR_LIT_STRING
 xchain00116_n00241_α:
 mov qword ptr [r12 + 3312], 1
 mov rax, qword ptr [rip + .Lx00254_0]
 mov qword ptr [r12 + 3320], rax
 jmp xchain00116_n00255_α
 xchain00116_n00241_β:
 jmp xchain00116_n00204_α
.Lx00254_0:
 .quad .Lx00254_0_s
.Lx00254_0_s:
 .string " *"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00116_n00021_α:
 jmp qword ptr [r12 + 3248]
 xchain00116_n00021_β:
 jmp xchain00116_n00204_α
 xchain00116_n00242_α:
  .section .rodata
  .Lcall00256_pname: .string "addword"
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
   lea rdi, [rip + .Lcall00256_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 cmp eax, 99
 je xchain00116_n96_α
 jmp xchain00116_n00033_α
xchain00116_n00242_β:
 jmp xchain00116_n96_α
 xchain00116_n00244_α:
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
  .Lrkfn798: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn798]
 lea rsi, [r12 + 352]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain00116_n00058_β
 jmp xchain00116_n00257_α
 xchain00116_n00244_β:
 jmp xchain00116_n00058_β
 xchain00116_n00022_α:
 jmp xchain00116_n00258_α
xchain00116_n00022_β:
 jmp xchain00116_n96_α
 xchain00116_n00247_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 1472]
 mov rsi, qword ptr [r12 + 1480]
 mov rdx, qword ptr [r12 + 1504]
 mov rcx, qword ptr [r12 + 1512]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00116_n00224_α
 mov rdi, qword ptr [r12 + 1504]
 mov rsi, qword ptr [r12 + 1512]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain00116_n00259_α
 xchain00116_n00247_β:
 jmp xchain00116_n00224_α
 xchain00116_n00023_α:
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
  .Lrkfn802: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn802]
 lea rsi, [r12 + 1392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 cmp eax, 99
 je xchain00116_n96_α
 jmp xchain00116_n00038_α
 xchain00116_n00023_β:
 jmp xchain00116_n96_α
# IR_VAR gva
 xchain00116_n00025_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 jmp xchain00116_n00260_α
 xchain00116_n00025_β:
 jmp xchain00116_n00239_α
 xchain00116_n00250_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2128]
 mov rdx, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 6160], rax
 mov qword ptr [r12 + 6168], rdx
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 jmp xchain00116_n00261_α
 xchain00116_n00250_β:
 jmp xchain00116_n00249_α
# IR_VAR gva
 xchain00116_n00249_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain00116_n00262_α
 xchain00116_n00249_β:
 jmp xchain00116_n96_α
 xchain00116_n00251_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2976]
 mov rdx, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 6096], rax
 mov qword ptr [r12 + 6104], rdx
 mov qword ptr [r12 + 2960], rax
 mov qword ptr [r12 + 2968], rdx
 jmp xchain00116_n00240_α
 xchain00116_n00251_β:
 jmp xchain00116_n00240_α
# IR_FIELD_GET lv
 xchain00116_n00252_α:
 mov rdi, qword ptr [rip + .Lx00263_0]
 mov rsi, qword ptr [r12 + 2912]
 mov rdx, qword ptr [r12 + 2920]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00116_n00253_α
 mov qword ptr [r12 + 2896], rax
 mov qword ptr [r12 + 2904], rdx
 jmp xchain00116_n00264_α
 xchain00116_n00252_β:
 jmp xchain00116_n00253_α
.Lx00263_0:
 .quad .Lx00263_0_s
.Lx00263_0_s:
 .string "lastline"
# IR_VAR
 xchain00116_n00253_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 2864], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 2872], rax
 jmp xchain00116_n00265_α
 xchain00116_n00253_β:
 jmp xchain00116_n96_α
 xchain00116_n00255_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 3312]
 mov rcx, qword ptr [r12 + 3320]
 call str_concat_d@PLT
 mov qword ptr [r12 + 3280], rax
 mov qword ptr [r12 + 3288], rdx
 jmp xchain00116_n00266_α
 xchain00116_n00255_β:
 jmp xchain00116_n00204_α
 xchain00116_n00033_α:
 jmp xchain00116_n00267_α
xchain00116_n00033_β:
 jmp xchain00116_n96_α
# IR_VAR
 xchain00116_n00257_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 488], rax
 jmp xchain00116_n00042_α
 xchain00116_n00257_β:
 jmp xchain00116_n00058_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00258_α:
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 872], rax
 lea rax, [rip + xchain00116_n96_α]
 mov qword ptr [r12 + 880], rax
 jmp xchain00116_n00268_α
 xchain00116_n00258_β:
 jmp xchain00116_n96_α
# IR_VAR
 xchain00116_n00259_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 1752], rax
 jmp xchain00116_n00269_α
 xchain00116_n00259_β:
 jmp xchain00116_n00270_α
 xchain00116_n00038_α:
 jmp xchain00116_n00271_α
xchain00116_n00038_β:
 jmp xchain00116_n96_α
 xchain00116_n00260_α:
  .section .rodata
  .Lcall00159_pname: .string "addword"
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
   lea rdi, [rip + .Lcall00159_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 cmp eax, 99
 je xchain00116_n00239_α
 jmp xchain00116_n00239_α
xchain00116_n00260_β:
 jmp xchain00116_n00239_α
# IR_LIT_STRING
 xchain00116_n00261_α:
 mov qword ptr [r12 + 2144], 1
 mov rax, qword ptr [rip + .Lx00272_0]
 mov qword ptr [r12 + 2152], rax
 jmp xchain00116_n00273_α
 xchain00116_n00261_β:
 jmp xchain00116_n00249_α
.Lx00272_0:
 .quad .Lx00272_0_s
.Lx00272_0_s:
 .string ","
# IR_VAR
 xchain00116_n00262_α:
 mov rax, qword ptr [r12 + 6160]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 6168]
 mov qword ptr [r12 + 2088], rax
 jmp xchain00116_n00274_α
 xchain00116_n00262_β:
 jmp xchain00116_n96_α
# IR_VAR gva
 xchain00116_n00264_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2944], rax
 mov qword ptr [r12 + 2952], rdx
 jmp xchain00116_n00275_α
 xchain00116_n00264_β:
 jmp xchain00116_n00253_α
# IR_VAR
 xchain00116_n00265_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 2880], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 2888], rax
 jmp xchain00116_n00276_α
 xchain00116_n00265_β:
 jmp xchain00116_n96_α
 xchain00116_n00266_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3280]
 mov rdx, qword ptr [r12 + 3288]
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 mov qword ptr [r12 + 3264], rax
 mov qword ptr [r12 + 3272], rdx
 jmp xchain00116_n00277_α
 xchain00116_n00266_β:
 jmp xchain00116_n00204_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00267_α:
 mov rax, qword ptr [r12 + 3120]
 mov qword ptr [r12 + 3088], rax
 mov rax, qword ptr [r12 + 3128]
 mov qword ptr [r12 + 3096], rax
 lea rax, [rip + xchain00116_n96_α]
 mov qword ptr [r12 + 3104], rax
 jmp xchain00116_n00048_α
 xchain00116_n00267_β:
 jmp xchain00116_n96_α
# IR_FIELD_GET
 xchain00116_n00042_α:
 mov rdi, qword ptr [rip + .Lx00278_0]
 mov rsi, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00116_n00058_β
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00116_n00279_α
 xchain00116_n00042_β:
 jmp xchain00116_n00058_β
.Lx00278_0:
 .quad .Lx00278_0_s
.Lx00278_0_s:
 .string "begline"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00268_α:
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 776], rax
 lea rax, [rip + xchain00116_n00280_α]
 mov qword ptr [r12 + 784], rax
 jmp xchain00116_n96_α
 xchain00116_n00268_β:
 jmp xchain00116_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00116_n00280_α:
 jmp qword ptr [r12 + 880]
 xchain00116_n00280_β:
 jmp xchain00116_n96_α
# IR_VAR gva
 xchain00116_n00269_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain00116_n00281_α
 xchain00116_n00269_β:
 jmp xchain00116_n00270_α
 xchain00116_n00270_α:
  .section .rodata
  .Lcall00282_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00282_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 cmp eax, 99
 je xchain00116_n00224_α
 jmp xchain00116_n00283_α
xchain00116_n00270_β:
 jmp xchain00116_n00224_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00271_α:
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1352], rax
 lea rax, [rip + xchain00116_n96_α]
 mov qword ptr [r12 + 1360], rax
 jmp xchain00116_n00284_α
 xchain00116_n00271_β:
 jmp xchain00116_n96_α
 xchain00116_n00273_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 2112]
 mov rsi, qword ptr [r12 + 2120]
 mov rdx, qword ptr [r12 + 2144]
 mov rcx, qword ptr [r12 + 2152]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00116_n00249_α
 mov rdi, qword ptr [r12 + 2144]
 mov rsi, qword ptr [r12 + 2152]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain00116_n00285_α
 xchain00116_n00273_β:
 jmp xchain00116_n00249_α
 xchain00116_n00274_α:
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
  .Lrkfn840: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn840]
 lea rsi, [r12 + 2032]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je xchain00116_n96_α
 jmp xchain00116_n00286_α
 xchain00116_n00274_β:
 jmp xchain00116_n96_α
# IR_ASSIGN_VAR write through variable
 xchain00116_n00275_α:
 mov rdi, qword ptr [r12 + 2896]
 mov rsi, qword ptr [r12 + 2904]
 mov rdx, qword ptr [r12 + 2944]
 mov rcx, qword ptr [r12 + 2952]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00116_n00253_α
 mov qword ptr [r12 + 2928], rax
 mov qword ptr [r12 + 2936], rdx
 jmp xchain00116_n00253_α
 xchain00116_n00275_β:
 jmp xchain00116_n00253_α
 xchain00116_n00276_α:
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
  .Lrkfn843: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn843]
 lea rsi, [r12 + 2832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 cmp eax, 99
 je xchain00116_n96_α
 jmp xchain00116_n00287_α
 xchain00116_n00276_β:
 jmp xchain00116_n96_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00277_α:
 mov rax, qword ptr [r12 + 3264]
 mov qword ptr [r12 + 3232], rax
 mov rax, qword ptr [r12 + 3272]
 mov qword ptr [r12 + 3240], rax
 lea rax, [rip + xchain00116_n00204_α]
 mov qword ptr [r12 + 3248], rax
 jmp xchain00116_n00204_α
 xchain00116_n00277_β:
 jmp xchain00116_n00204_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00048_α:
 mov rax, qword ptr [r12 + 3088]
 mov qword ptr [r12 + 2784], rax
 mov rax, qword ptr [r12 + 3096]
 mov qword ptr [r12 + 2792], rax
 lea rax, [rip + xchain00116_n00050_α]
 mov qword ptr [r12 + 2800], rax
 jmp xchain00116_n00288_α
 xchain00116_n00048_β:
 jmp xchain00116_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00116_n00050_α:
 jmp qword ptr [r12 + 3104]
 xchain00116_n00050_β:
 jmp xchain00116_n96_α
 xchain00116_n00279_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 call str_concat_d@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00116_n00289_α
 xchain00116_n00279_β:
 jmp xchain00116_n00058_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00116_n00290_α:
 jmp qword ptr [r12 + 784]
 xchain00116_n00290_β:
 jmp xchain00116_n96_α
# IR_LIST_BANG
 xchain00116_n00281_α:
 mov qword ptr [r12 + 1776], 0
.Lx00291_0:
 mov rdi, qword ptr [r12 + 1792]
 mov rsi, qword ptr [r12 + 1800]
 mov rdx, qword ptr [r12 + 1776]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 cmp rax, 99
 je xchain00116_n00270_α
 jmp xchain00116_n00292_α
 xchain00116_n00281_β:
 inc qword ptr [r12 + 1776]
 jmp .Lx00291_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00283_α:
 mov rax, qword ptr [r12 + 1680]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1688]
 mov qword ptr [r12 + 1656], rax
 lea rax, [rip + xchain00116_n00293_α]
 mov qword ptr [r12 + 1664], rax
 jmp xchain00116_n00059_α
 xchain00116_n00283_β:
 jmp xchain00116_n00294_α
 xchain00116_n00293_α:
 jmp xchain00116_n00224_α
xchain00116_n00293_β:
 jmp xchain00116_n00224_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00284_α:
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 872], rax
 lea rax, [rip + xchain00116_n00295_α]
 mov qword ptr [r12 + 880], rax
 jmp xchain00116_n00268_α
 xchain00116_n00284_β:
 jmp xchain00116_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00116_n00295_α:
 jmp qword ptr [r12 + 1360]
 xchain00116_n00295_β:
 jmp xchain00116_n96_α
# IR_VAR
 xchain00116_n00285_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 2464], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 2472], rax
 jmp xchain00116_n00296_α
 xchain00116_n00285_β:
 jmp xchain00116_n00297_α
 xchain00116_n00286_α:
 jmp xchain00116_n00063_α
xchain00116_n00286_β:
 jmp xchain00116_n96_α
 xchain00116_n00287_α:
 jmp xchain00116_n00298_α
xchain00116_n00287_β:
 jmp xchain00116_n96_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00288_α:
 mov rax, qword ptr [r12 + 2784]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 2792]
 mov qword ptr [r12 + 1992], rax
 lea rax, [rip + xchain00116_n00299_α]
 mov qword ptr [r12 + 2000], rax
 jmp xchain00116_n00300_α
 xchain00116_n00288_β:
 jmp xchain00116_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00116_n00299_α:
 jmp qword ptr [r12 + 2800]
 xchain00116_n00299_β:
 jmp xchain00116_n96_α
# IR_LIT_STRING
 xchain00116_n00289_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx00301_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00116_n00302_α
 xchain00116_n00289_β:
 jmp xchain00116_n00058_β
.Lx00301_0:
 .quad .Lx00301_0_s
.Lx00301_0_s:
 .string "-"
 xchain00116_n00292_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 1760]
 mov rcx, qword ptr [r12 + 1768]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00116_n00270_α
 mov rdi, qword ptr [r12 + 1760]
 mov rsi, qword ptr [r12 + 1768]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain00116_n00224_α
 xchain00116_n00292_β:
 jmp xchain00116_n00270_α
 xchain00116_n00059_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1648]
 mov rdx, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain00116_n00294_α
 xchain00116_n00059_β:
 jmp xchain00116_n00294_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00116_n00303_α:
 jmp qword ptr [r12 + 1664]
 xchain00116_n00303_β:
 jmp xchain00116_n00294_α
# IR_VAR gva
 xchain00116_n00296_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 jmp xchain00116_n00069_α
 xchain00116_n00296_β:
 jmp xchain00116_n00297_α
 xchain00116_n00297_α:
  .section .rodata
  .Lcall00304_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00304_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je xchain00116_n00249_α
 jmp xchain00116_n00305_α
xchain00116_n00297_β:
 jmp xchain00116_n00249_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00063_α:
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 1992], rax
 lea rax, [rip + xchain00116_n96_α]
 mov qword ptr [r12 + 2000], rax
 jmp xchain00116_n00300_α
 xchain00116_n00063_β:
 jmp xchain00116_n96_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00298_α:
 mov rax, qword ptr [r12 + 2816]
 mov qword ptr [r12 + 2784], rax
 mov rax, qword ptr [r12 + 2824]
 mov qword ptr [r12 + 2792], rax
 lea rax, [rip + xchain00116_n96_α]
 mov qword ptr [r12 + 2800], rax
 jmp xchain00116_n00288_α
 xchain00116_n00298_β:
 jmp xchain00116_n96_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00300_α:
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1352], rax
 lea rax, [rip + xchain00116_n00066_α]
 mov qword ptr [r12 + 1360], rax
 jmp xchain00116_n00284_α
 xchain00116_n00300_β:
 jmp xchain00116_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00116_n00066_α:
 jmp qword ptr [r12 + 2000]
 xchain00116_n00066_β:
 jmp xchain00116_n96_α
 xchain00116_n00302_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call str_concat_d@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00116_n00306_α
 xchain00116_n00302_β:
 jmp xchain00116_n00058_β
 xchain00116_n00307_α:
 jmp xchain00116_n00224_α
xchain00116_n00307_β:
 jmp xchain00116_n00224_α
# IR_VAR
 xchain00116_n00294_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 1592], rax
 jmp xchain00116_n00308_α
 xchain00116_n00294_β:
 jmp xchain00116_n00210_α
# IR_LIST_BANG
 xchain00116_n00069_α:
 mov qword ptr [r12 + 2496], 0
.Lx00309_0:
 mov rdi, qword ptr [r12 + 2512]
 mov rsi, qword ptr [r12 + 2520]
 mov rdx, qword ptr [r12 + 2496]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 cmp rax, 99
 je xchain00116_n00297_α
 jmp xchain00116_n00310_α
 xchain00116_n00069_β:
 inc qword ptr [r12 + 2496]
 jmp .Lx00309_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00305_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 2368], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 2376], rax
 lea rax, [rip + xchain00116_n00311_α]
 mov qword ptr [r12 + 2384], rax
 jmp xchain00116_n00312_α
 xchain00116_n00305_β:
 jmp xchain00116_n00313_α
 xchain00116_n00311_α:
 jmp xchain00116_n00249_α
xchain00116_n00311_β:
 jmp xchain00116_n00249_α
# IR_VAR
 xchain00116_n00306_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 536], rax
 jmp xchain00116_n00314_α
 xchain00116_n00306_β:
 jmp xchain00116_n00058_β
# IR_LIT_STRING
 xchain00116_n00308_α:
 mov qword ptr [r12 + 1600], 1
 mov rax, qword ptr [rip + .Lx00315_0]
 mov qword ptr [r12 + 1608], rax
 jmp xchain00116_n00316_α
 xchain00116_n00308_β:
 jmp xchain00116_n00210_α
.Lx00315_0:
 .quad .Lx00315_0_s
.Lx00315_0_s:
 .string "global"
 xchain00116_n00310_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 2480]
 mov rcx, qword ptr [r12 + 2488]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00116_n00297_α
 mov rdi, qword ptr [r12 + 2480]
 mov rsi, qword ptr [r12 + 2488]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 jmp xchain00116_n00249_α
 xchain00116_n00310_β:
 jmp xchain00116_n00297_α
 xchain00116_n00312_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2368]
 mov rdx, qword ptr [r12 + 2376]
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 jmp xchain00116_n00313_α
 xchain00116_n00312_β:
 jmp xchain00116_n00313_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00116_n00317_α:
 jmp qword ptr [r12 + 2384]
 xchain00116_n00317_β:
 jmp xchain00116_n00313_α
# IR_FIELD_GET
 xchain00116_n00314_α:
 mov rdi, qword ptr [rip + .Lx00318_0]
 mov rsi, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00116_n00058_β
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00116_n00319_α
 xchain00116_n00314_β:
 jmp xchain00116_n00058_β
.Lx00318_0:
 .quad .Lx00318_0_s
.Lx00318_0_s:
 .string "lastline"
# IR_VAR gva
 xchain00116_n00316_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xchain00116_n00078_α
 xchain00116_n00316_β:
 jmp xchain00116_n00210_α
 xchain00116_n00320_α:
 jmp xchain00116_n00249_α
xchain00116_n00320_β:
 jmp xchain00116_n00249_α
# IR_VAR gva
 xchain00116_n00313_α:
 mov rax, qword ptr [rbx + 192]
 mov rdx, qword ptr [rbx + 200]
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 jmp xchain00116_n00321_α
 xchain00116_n00313_β:
 jmp xchain00116_n00081_α
 xchain00116_n00319_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 call str_concat_d@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00116_n00083_α
 xchain00116_n00319_β:
 jmp xchain00116_n00058_β
 xchain00116_n00078_α:
  .section .rodata
  .Lcall00322_pname: .string "addword"
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
   lea rdi, [rip + .Lcall00322_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 cmp eax, 99
 je xchain00116_n00210_α
 jmp xchain00116_n00323_α
xchain00116_n00078_β:
 jmp xchain00116_n00210_α
# IR_VAR
 xchain00116_n00321_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 2344], rax
 jmp xchain00116_n00085_α
 xchain00116_n00321_β:
 jmp xchain00116_n00081_α
# IR_VAR
 xchain00116_n00081_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 2232], rax
 jmp xchain00116_n00324_α
 xchain00116_n00081_β:
 jmp xchain00116_n00239_α
 xchain00116_n00083_α:
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
  .Lrkfn912: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn912]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00116_n00058_β
 jmp xchain00116_n00058_β
 xchain00116_n00083_β:
 jmp xchain00116_n00058_β
 xchain00116_n00323_α:
 jmp xchain00116_n00210_α
xchain00116_n00323_β:
 jmp xchain00116_n00210_α
 xchain00116_n00085_α:
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
  .Lrkfn915: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn915]
 lea rsi, [r12 + 2288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 cmp eax, 99
 je xchain00116_n00081_α
 jmp xchain00116_n00081_α
 xchain00116_n00085_β:
 jmp xchain00116_n00081_α
# IR_VAR
 xchain00116_n00324_α:
 mov rax, qword ptr [r12 + 6144]
 mov qword ptr [r12 + 2240], rax
 mov rax, qword ptr [r12 + 6152]
 mov qword ptr [r12 + 2248], rax
 jmp xchain00116_n00325_α
 xchain00116_n00324_β:
 jmp xchain00116_n00239_α
# IR_VAR gva
 xchain00116_n00325_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 jmp xchain00116_n00326_α
 xchain00116_n00325_β:
 jmp xchain00116_n00239_α
 xchain00116_n00326_α:
  .section .rodata
  .Lcall00327_pname: .string "addword"
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
   lea rdi, [rip + .Lcall00327_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 cmp eax, 99
 je xchain00116_n00239_α
 jmp xchain00116_n00328_α
xchain00116_n00326_β:
 jmp xchain00116_n00239_α
 xchain00116_n00328_α:
 jmp xchain00116_n00239_α
xchain00116_n00328_β:
 jmp xchain00116_n00239_α
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
 mov rdi, qword ptr [r12 + 6064]
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
