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
 mov qword ptr [r12 + 1312], rax
 pop rsi
proc_addword_α_body:
# IR_VAR
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
# IR_VAR
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
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1248]
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1256], rax
# marshal arg1 = producer-box slot [zr+1296] -> [zr+1264]
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
# IR_VAR_REF
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
# IR_VAR_REF
 xchain0_n11_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n16_α
# IR_NULLTEST_VAR
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
# IR_ASSIGN_VAR
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
# IR_VAR
 xchain0_n19_α:
 mov rax, qword ptr [rbx + 192]
 mov rdx, qword ptr [rbx + 200]
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain0_n22_α
 xchain0_n19_β:
 jmp xchain0_n20_α
# IR_VAR_REF
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
# IR_VAR_REF
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
# IR_VAR_REF
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
# IR_NULLTEST_VAR
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
# IR_VAR_REF
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
# IR_ASSIGN_VAR
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
# marshal arg0 = producer-box slot [zr+608] -> [zr+496]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+512]
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
# IR_NULLTEST_VAR
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
# IR_ASSIGN_VAR
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
# marshal arg0 = producer-box slot [zr+256] -> [zr+144]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+160]
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 2640], rax
 pop rsi
proc_getword_α_body:
# IR_VAR_REF
 xchain00001_n0_α:
 lea rdi, [rbx + 304]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 jmp xchain00001_n1_α
 xchain00001_n0_β:
 jmp xchain00001_n5_α
# IR_NULLTEST_VAR
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
# IR_ASSIGN_VAR
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
# IR_VAR
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
# IR_VAR
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
# IR_VAR
 xchain00001_n12_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain00001_n16_α
 xchain00001_n12_β:
 jmp xchain00001_n17_α
# IR_ASSIGN gva
 xchain00001_n13_α:
 mov rax, qword ptr [r12 + 2544]
 mov rdx, qword ptr [r12 + 2552]
 mov qword ptr [rbx + 288], rax
 mov qword ptr [rbx + 296], rdx
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
# IR_VAR
 xchain00001_n16_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain00001_n22_α
 xchain00001_n16_β:
 jmp xchain00001_n17_α
# IR_VAR
 xchain00001_n17_α:
 mov rax, qword ptr [rbx + 288]
 mov rdx, qword ptr [rbx + 296]
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
# IR_VAR
 xchain00001_n19_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 jmp xchain00001_n26_α
 xchain00001_n19_β:
 jmp proc_getword_ω
# IR_VAR
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
# IR_VAR
 xchain00001_n23_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 jmp xchain00001_n29_α
 xchain00001_n23_β:
 jmp xchain00001_n24_α
# IR_VAR
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
# marshal arg0 = producer-box slot [zr+2416] -> [zr+2400]
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
# marshal arg0 = producer-box slot [zr+2176] -> [zr+2160]
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
# IR_VAR
 xchain00001_n29_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
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
# marshal arg0 = producer-box slot [zr+1920] -> [zr+1872]
 mov rax, qword ptr [r12 + 1920]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 1880], rax
# marshal arg1 = producer-box slot [zr+1936] -> [zr+1888]
 mov rax, qword ptr [r12 + 1936]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 1896], rax
# marshal arg2 = producer-box slot [zr+1952] -> [zr+1904]
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
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
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
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
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
# IR_VAR
 xchain00001_n42_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain00001_n45_α
 xchain00001_n42_β:
 jmp xchain00001_n46_α
# IR_ASSIGN gva
 xchain00001_n43_α:
 mov rax, qword ptr [r12 + 1776]
 mov rdx, qword ptr [r12 + 1784]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain00001_n47_α
 xchain00001_n43_β:
 jmp xchain00001_n5_α
# IR_VAR
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
# IR_VAR_REF
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
# IR_VAR
 xchain00001_n49_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
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
# IR_VAR_REF
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
# IR_VAR
 xchain00001_n57_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
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
# IR_VAR
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
# IR_VAR
 xchain00001_n65_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain00001_n73_α
 xchain00001_n65_β:
 jmp xchain00001_n66_α
# IR_VAR
 xchain00001_n66_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
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
# IR_VAR
 xchain00001_n73_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
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
# IR_VAR_REF
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
# IR_VAR
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
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1392]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1400], rax
# marshal arg1 = producer-box slot [zr+1456] -> [zr+1408]
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1416], rax
# marshal arg2 = producer-box slot [zr+1472] -> [zr+1424]
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
# IR_VAR
 xchain00001_n82_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
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
# IR_VAR
 xchain00001_n84_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain00001_n90_α
 xchain00001_n84_β:
 jmp xchain00001_n5_α
# IR_VAR
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
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain00001_n92_α
 xchain00001_n86_β:
 jmp xchain00001_n66_α
# IR_ASSIGN gva
 xchain00001_n87_α:
 mov rax, qword ptr [r12 + 1312]
 mov rdx, qword ptr [r12 + 1320]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
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
# IR_VAR_REF
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
# IR_VAR
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
# IR_VAR
 xchain00001_n94_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
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
# IR_VAR
 xchain00001_n00020_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00001_n00030_α
 xchain00001_n00020_β:
 jmp xchain00001_n00031_α
# IR_ASSIGN gva
 xchain00001_n00024_α:
 mov rax, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
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
# IR_VAR
 xchain00001_n00027_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
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
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
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
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
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
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
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
# IR_VAR
 xchain00001_n00005_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00001_n00055_α
 xchain00001_n00005_β:
 jmp xchain00001_n00003_α
# IR_VAR
 xchain00001_n00052_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00001_n00056_α
 xchain00001_n00052_β:
 jmp xchain00001_n00057_α
# IR_VAR
 xchain00001_n00055_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
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
# IR_VAR
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
# marshal arg0 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 616], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+624]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 632], rax
# marshal arg2 = producer-box slot [zr+720] -> [zr+640]
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
# marshal arg0 = producer-box slot [zr+448] -> [zr+432]
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
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00001_n00073_α
 xchain00001_n00070_β:
 jmp xchain00001_n00003_α
 xchain00001_n00071_α:
 jmp xchain00001_n00074_α
xchain00001_n00071_β:
 jmp xchain00001_n00031_α
# IR_VAR_REF
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
# IR_VAR
 xchain00001_n00075_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
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
# IR_VAR
 xchain00001_n00076_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
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
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 1968], rax
 pop rsi
proc_format_α_body:
# IR_VAR_REF
 xchain00091_n0_α:
 lea rdi, [rbx + 320]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain00091_n1_α
 xchain00091_n0_β:
 jmp xchain00091_n3_α
# IR_NULLTEST_VAR
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
# IR_ASSIGN_VAR
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
# IR_VAR
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
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
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
# IR_VAR
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
# marshal arg0 = producer-box slot [zr+176] -> [zr+160]
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
# IR_VAR
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
# IR_VAR_REF
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
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
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
# IR_VAR
 xchain00091_n48_α:
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 632], rax
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
# IR_VAR_REF
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
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1184]
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1192], rax
# marshal arg1 = producer-box slot [zr+1296] -> [zr+1200]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1208], rax
# marshal arg2 = producer-box slot [zr+1312] -> [zr+1216]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1224], rax
  .section .rodata
  .Lrkfn413: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn413]
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
# IR_VAR
 xchain00091_n61_α:
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 424], rax
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
# IR_VAR_REF
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
# IR_VAR
 xchain00091_n65_α:
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 504], rax
 jmp xchain00091_n70_α
 xchain00091_n65_β:
 jmp xchain00091_n57_α
 xchain00091_n66_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+368]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 376], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+384]
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
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 840], rax
 jmp xchain00091_n82_α
 xchain00091_n79_β:
 jmp xchain00091_n69_β
 xchain00091_n80_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
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
# marshal arg0 = producer-box slot [zr+816] -> [zr+656]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 664], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+672]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 680], rax
# marshal arg2 = producer-box slot [zr+848] -> [zr+688]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn451: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn451]
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
 mov rdi, qword ptr [r12 + 2064]
 mov rsi, qword ptr [r12 + 2072]
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
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1344]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1352], rax
# marshal arg1 = producer-box slot [zr+1456] -> [zr+1360]
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1368], rax
# marshal arg2 = producer-box slot [zr+1504] -> [zr+1376]
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1384], rax
  .section .rodata
  .Lrkfn457: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn457]
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
 xchain00091_n90_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
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
 xchain00091_n93_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1152]
 mov rdx, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00091_n48_α
 xchain00091_n93_β:
 jmp xchain00091_n48_α
# IR_VAR
 xchain00091_n94_α:
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 2088]
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
 mov eax, dword ptr [r12 + 2080]
 cmp eax, 100
 je .Lx00112_0
 mov eax, dword ptr [r12 + 2032]
 cmp eax, 6
 jne .Lx00112_2
 mov eax, dword ptr [r12 + 2080]
 cmp eax, 6
 jne .Lx00112_2
.Lx00112_1:
 mov rax, qword ptr [r12 + 2040]
 mov rcx, qword ptr [r12 + 2088]
 add rax, rcx
 mov qword ptr [r12 + 1088], 6
 mov qword ptr [r12 + 1096], rax
 jmp xchain00091_n98_α
.Lx00112_0:
 mov rdi, qword ptr [r12 + 2032]
 mov rsi, qword ptr [r12 + 2040]
 mov rdx, qword ptr [r12 + 2080]
 mov rcx, qword ptr [r12 + 2088]
 mov r8d, 0
 lea r9, [r12 + 1088]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00112_3
.Lx00112_2:
 mov rdi, qword ptr [r12 + 2032]
 mov rsi, qword ptr [r12 + 2040]
 mov rdx, qword ptr [r12 + 2080]
 mov rcx, qword ptr [r12 + 2088]
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
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 2104]
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
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 1064], rax
 jmp xchain00091_n00020_α
 xchain00091_n99_β:
 jmp xchain00091_n69_β
 xchain00091_n00020_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2096]
 cmp eax, 100
 je .Lx00113_0
 mov eax, dword ptr [r12 + 2080]
 cmp eax, 100
 je .Lx00113_0
 mov eax, dword ptr [r12 + 2096]
 cmp eax, 6
 jne .Lx00113_2
 mov eax, dword ptr [r12 + 2080]
 cmp eax, 6
 jne .Lx00113_2
.Lx00113_1:
 mov rax, qword ptr [r12 + 2104]
 mov rcx, qword ptr [r12 + 2088]
 sub rax, rcx
 mov qword ptr [r12 + 1024], 6
 mov qword ptr [r12 + 1032], rax
 jmp xchain00091_n00024_α
.Lx00113_0:
 mov rdi, qword ptr [r12 + 2096]
 mov rsi, qword ptr [r12 + 2104]
 mov rdx, qword ptr [r12 + 2080]
 mov rcx, qword ptr [r12 + 2088]
 mov r8d, 1
 lea r9, [r12 + 1024]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00113_3
.Lx00113_2:
 mov rdi, qword ptr [r12 + 2096]
 mov rsi, qword ptr [r12 + 2104]
 mov rdx, qword ptr [r12 + 2080]
 mov rcx, qword ptr [r12 + 2088]
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
# IR_VAR
 xchain00091_n00026_α:
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 968], rax
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
 mov rdi, qword ptr [r12 + 2064]
 mov rsi, qword ptr [r12 + 2072]
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
 xchain00091_n00039_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 944]
 mov rdx, qword ptr [r12 + 952]
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
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
mov rsp, rbp
pop rbp
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
 xchain00116_n0_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 jmp xchain00116_n1_α
 xchain00116_n0_β:
 jmp xchain00116_n3_α
# IR_NULLTEST_VAR
 xchain00116_n1_α:
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 99
 je xchain00116_n3_α
 mov rdi, qword ptr [r12 + 2272]
 mov rsi, qword ptr [r12 + 2280]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00116_n3_α
 cmp eax, 0
 jne xchain00116_n3_α
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 2288], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2296], rax
 jmp xchain00116_n2_α
 xchain00116_n1_β:
 jmp xchain00116_n3_α
# IR_LIT_CHARSET
 xchain00116_n2_α:
 mov qword ptr [r12 + 2352], 1
 mov dword ptr [r12 + 2356], -1
 mov rax, qword ptr [rip + .Lx00117_0]
 mov qword ptr [r12 + 2360], rax
 jmp xchain00116_n4_α
 xchain00116_n2_β:
 jmp xchain00116_n3_α
.Lx00117_0:
 .quad .Lx00117_0_s
.Lx00117_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00116_n3_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn495: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn495]
 lea rsi, [r12 + 2272]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 cmp eax, 99
 je xchain00116_n6_α
 jmp xchain00116_n5_α
 xchain00116_n3_β:
 jmp xchain00116_n6_α
 xchain00116_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2352] -> [zr+2336]
 mov rax, qword ptr [r12 + 2352]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 2360]
 mov qword ptr [r12 + 2344], rax
  .section .rodata
  .Lrkfn497: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn497]
 lea rsi, [r12 + 2336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 cmp eax, 99
 je xchain00116_n3_α
 jmp xchain00116_n7_α
 xchain00116_n4_β:
 jmp xchain00116_n3_α
 xchain00116_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2256]
 mov rdx, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain00116_n6_α
 xchain00116_n5_β:
 jmp xchain00116_n6_α
# IR_MAKE_LIST
 xchain00116_n6_α:
 lea rdi, [r12 + 2240]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 jmp xchain00116_n8_α
 xchain00116_n6_β:
 jmp xchain00116_n9_α
# IR_ASSIGN_VAR
 xchain00116_n7_α:
 mov rdi, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 mov rdx, qword ptr [r12 + 2320]
 mov rcx, qword ptr [r12 + 2328]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00116_n3_α
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 jmp xchain00116_n3_α
 xchain00116_n7_β:
 jmp xchain00116_n3_α
 xchain00116_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2224]
 mov rdx, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 jmp xchain00116_n9_α
 xchain00116_n8_β:
 jmp xchain00116_n9_α
# IR_VAR
 xchain00116_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00116_n10_α
 xchain00116_n9_β:
 jmp xchain00116_n11_α
 xchain00116_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn506: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn506]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain00116_n11_α
 jmp xchain00116_n12_α
 xchain00116_n10_β:
 jmp xchain00116_n11_α
# IR_VAR
 xchain00116_n11_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00116_n13_α
 xchain00116_n11_β:
 jmp xchain00116_n14_α
 xchain00116_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00116_n15_α
 xchain00116_n12_β:
 jmp xchain00116_n11_α
# IR_VAR
 xchain00116_n13_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 168], rax
 jmp xchain00116_n16_α
 xchain00116_n13_β:
 jmp xchain00116_n14_α
# IR_VAR
 xchain00116_n14_α:
 mov rax, qword ptr [r12 + 2384]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 56], rax
 jmp xchain00116_n17_α
 xchain00116_n14_β:
 jmp proc_options_ω
# IR_VAR
 xchain00116_n15_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2200], rax
 jmp xchain00116_n18_α
 xchain00116_n15_β:
 jmp xchain00116_n9_α
 xchain00116_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+144]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn517: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn517]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00116_n14_α
 jmp xchain00116_n19_α
 xchain00116_n16_β:
 jmp xchain00116_n14_α
# IR_RETURN
 xchain00116_n17_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_options_γ
# IR_GEN_SCAN
 xchain00116_n18_α:
 mov rdi, qword ptr [r12 + 2192]
 mov rsi, qword ptr [r12 + 2200]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00116_n20_α
 xchain00116_n18_β:
 jmp xchain00116_n9_α
 xchain00116_n19_α:
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
  .Lrkfn522: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn522]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00116_n14_α
 jmp xchain00116_n11_α
 xchain00116_n19_β:
 jmp xchain00116_n14_α
# IR_LIT_STRING
 xchain00116_n20_α:
 mov qword ptr [r12 + 2176], 1
 mov rax, qword ptr [rip + .Lx00118_0]
 mov qword ptr [r12 + 2184], rax
 jmp xchain00116_n21_α
 xchain00116_n20_β:
 jmp xchain00116_n23_α
.Lx00118_0:
 .quad .Lx00118_0_s
.Lx00118_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00116_n21_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00116_n23_α
 mov rdi, qword ptr [rip + .Lx00119_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00116_n23_α
 mov qword ptr [r12 + 2144], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 2152], rax
 jmp xchain00116_n22_α
 xchain00116_n21_β:
 jmp xchain00116_n23_α
.Lx00119_0:
 .quad .Lx00119_0_s
.Lx00119_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00116_n22_α:
 mov rax, qword ptr [r12 + 2152]
 cmp rax, 1
 jge .Lx00120_0
 add rax, r15
 add rax, 1
.Lx00120_0:
 cmp rax, 1
 jl xchain00116_n23_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00116_n23_α
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
 jmp xchain00116_n24_α
 xchain00116_n22_β:
 mov r14, qword ptr [r12 + 2128]
 jmp xchain00116_n23_α
# IR_VAR
 xchain00116_n23_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 2040], rax
 jmp xchain00116_n25_α
 xchain00116_n23_β:
 jmp xchain00116_n26_α
# IR_LIT_INTEGER
 xchain00116_n24_α:
 mov qword ptr [r12 + 2096], 6
 mov rax, qword ptr [rip + .Lx00121_0]
 mov qword ptr [r12 + 2104], rax
 jmp xchain00116_n27_α
 xchain00116_n24_β:
 jmp xchain00116_n29_α
.Lx00121_0:
 .quad 0
# IR_VAR
 xchain00116_n25_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2056], rax
 jmp xchain00116_n28_α
 xchain00116_n25_β:
 jmp xchain00116_n26_α
# IR_GEN_SCAN
 xchain00116_n26_α:
 lea rdi, [r12 + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 240]
 mov r14, qword ptr [r12 + 248]
 mov r15, qword ptr [r12 + 256]
 jmp xchain00116_n9_α
 xchain00116_n26_β:
 jmp xchain00116_n9_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00116_n27_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00122_0
 add rax, r15
 add rax, 1
.Lx00122_0:
 cmp rax, 1
 jl xchain00116_n29_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00116_n29_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00116_n29_α
 mov qword ptr [r12 + 2080], 6
 mov qword ptr [r12 + 2088], rax
 jmp xchain00116_n23_α
 xchain00116_n27_β:
 jmp xchain00116_n29_α
 xchain00116_n28_α:
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
  .Lrkfn538: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn538]
 lea rsi, [r12 + 2000]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 cmp eax, 99
 je xchain00116_n26_α
 jmp xchain00116_n30_α
 xchain00116_n28_β:
 jmp xchain00116_n26_α
# IR_KEYWORD_null
 xchain00116_n29_α:
 mov qword ptr [r12 + 2064], 0
 mov qword ptr [r12 + 2072], 0
 jmp xchain00116_n31_α
 xchain00116_n29_β:
 jmp xchain00116_n23_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n30_α:
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 312], rax
 lea rax, [rip + xchain00116_n26_α]
 mov qword ptr [r12 + 320], rax
 jmp xchain00116_n32_α
 xchain00116_n30_β:
 jmp xchain00116_n26_α
 xchain00116_n31_α:
 jmp xchain00116_n34_α
xchain00116_n31_β:
 jmp xchain00116_n23_α
# IR_GEN_SCAN
 xchain00116_n32_α:
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
 lea rdi, [r12 + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 240]
 mov r14, qword ptr [r12 + 248]
 mov r15, qword ptr [r12 + 256]
 jmp xchain00116_n9_α
 xchain00116_n32_β:
 jmp xchain00116_n9_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00116_n33_α:
 jmp qword ptr [r12 + 320]
 xchain00116_n33_β:
 jmp xchain00116_n26_α
# IR_LIT_STRING
 xchain00116_n34_α:
 mov qword ptr [r12 + 1968], 1
 mov rax, qword ptr [rip + .Lx00123_0]
 mov qword ptr [r12 + 1976], rax
 jmp xchain00116_n35_α
 xchain00116_n34_β:
 jmp xchain00116_n37_α
.Lx00123_0:
 .quad .Lx00123_0_s
.Lx00123_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00116_n35_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00116_n37_α
 mov rdi, qword ptr [rip + .Lx00124_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00116_n37_α
 mov qword ptr [r12 + 1936], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 1944], rax
 jmp xchain00116_n36_α
 xchain00116_n35_β:
 jmp xchain00116_n37_α
.Lx00124_0:
 .quad .Lx00124_0_s
.Lx00124_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00116_n36_α:
 mov rax, qword ptr [r12 + 1944]
 cmp rax, 1
 jge .Lx00125_0
 add rax, r15
 add rax, 1
.Lx00125_0:
 cmp rax, 1
 jl xchain00116_n37_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00116_n37_α
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
 jmp xchain00116_n38_α
 xchain00116_n36_β:
 mov r14, qword ptr [r12 + 1920]
 jmp xchain00116_n37_α
# IR_LIT_INTEGER
 xchain00116_n37_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00126_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00116_n39_α
 xchain00116_n37_β:
 jmp xchain00116_n45_α
.Lx00126_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00116_n38_α:
 mov qword ptr [r12 + 1888], 6
 mov rax, qword ptr [rip + .Lx00127_0]
 mov qword ptr [r12 + 1896], rax
 jmp xchain00116_n40_α
 xchain00116_n38_β:
 jmp xchain00116_n37_α
.Lx00127_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00116_n39_α:
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00116_n45_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00116_n45_α
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
 jmp xchain00116_n41_α
 xchain00116_n39_β:
 mov r14, qword ptr [r12 + 368]
 jmp xchain00116_n45_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00116_n40_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00128_0
 add rax, r15
 add rax, 1
.Lx00128_0:
 cmp rax, 1
 jl xchain00116_n37_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00116_n37_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00116_n37_α
 mov qword ptr [r12 + 1872], 6
 mov qword ptr [r12 + 1880], rax
 jmp xchain00116_n43_α
 xchain00116_n40_β:
 jmp xchain00116_n37_α
 xchain00116_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00116_n44_α
 xchain00116_n41_β:
 jmp xchain00116_n45_α
 xchain00116_n42_α:
 jmp xchain00116_n45_α
xchain00116_n42_β:
 jmp xchain00116_n45_α
 xchain00116_n43_α:
 jmp xchain00116_n11_α
xchain00116_n43_β:
 jmp xchain00116_n37_α
# IR_VAR
 xchain00116_n44_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1800], rax
 jmp xchain00116_n47_α
 xchain00116_n44_β:
 jmp xchain00116_n48_α
 xchain00116_n45_α:
 jmp xchain00116_n49_α
xchain00116_n45_β:
 jmp xchain00116_n26_α
 xchain00116_n46_α:
 jmp xchain00116_n11_α
xchain00116_n46_β:
 jmp xchain00116_n11_α
# IR_VAR
 xchain00116_n47_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1816], rax
 jmp xchain00116_n50_α
 xchain00116_n47_β:
 jmp xchain00116_n48_α
# IR_LIT_STRING
 xchain00116_n48_α:
 mov qword ptr [r12 + 1664], 1
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00116_n51_α
 xchain00116_n48_β:
 jmp xchain00116_n37_α
.Lx00129_0:
 .quad .Lx00129_0_s
.Lx00129_0_s:
 .string "Unrecognized option: -"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n49_α:
 lea rax, [rip + xchain00116_n52_α]
 mov qword ptr [r12 + 320], rax
 jmp xchain00116_n32_α
 xchain00116_n49_β:
 jmp xchain00116_n26_α
 xchain00116_n50_α:
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
.Lx00130_60:
  .section .rodata
  .Lbynamegenfn571: .string "find"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamegenfn571]
 lea rsi, [r12 + 1744]
 mov edx, 2
 lea rcx, [r12 + 1776]
 call rt_call_arr_gen@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je xchain00116_n48_α
 jmp xchain00116_n53_α
xchain00116_n50_β:
 jmp .Lx00130_60
# IR_VAR
 xchain00116_n51_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1688], rax
 jmp xchain00116_n54_α
 xchain00116_n51_β:
 jmp xchain00116_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00116_n52_α:
 jmp qword ptr [r12 + 416]
 xchain00116_n52_β:
 jmp xchain00116_n37_α
# IR_LIT_INTEGER
 xchain00116_n53_α:
 mov qword ptr [r12 + 1824], 6
 mov rax, qword ptr [rip + .Lx00131_0]
 mov qword ptr [r12 + 1832], rax
 jmp xchain00116_n55_α
 xchain00116_n53_β:
 jmp xchain00116_n50_β
.Lx00131_0:
 .quad 1
 xchain00116_n54_α:
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
  .Lrkfn578: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn578]
 lea rsi, [r12 + 1632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 cmp eax, 99
 je xchain00116_n37_α
 jmp xchain00116_n56_α
 xchain00116_n54_β:
 jmp xchain00116_n37_α
 xchain00116_n55_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1728]
 cmp eax, 100
 je .Lx00132_0
 mov eax, dword ptr [r12 + 1824]
 cmp eax, 100
 je .Lx00132_0
 mov eax, dword ptr [r12 + 1728]
 cmp eax, 6
 jne .Lx00132_2
 mov eax, dword ptr [r12 + 1824]
 cmp eax, 6
 jne .Lx00132_2
.Lx00132_1:
 mov rax, qword ptr [r12 + 1736]
 mov rcx, qword ptr [r12 + 1832]
 add rax, rcx
 mov qword ptr [r12 + 1712], 6
 mov qword ptr [r12 + 1720], rax
 jmp xchain00116_n57_α
.Lx00132_0:
 mov rdi, qword ptr [r12 + 1728]
 mov rsi, qword ptr [r12 + 1736]
 mov rdx, qword ptr [r12 + 1824]
 mov rcx, qword ptr [r12 + 1832]
 mov r8d, 0
 lea r9, [r12 + 1712]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00132_3
.Lx00132_2:
 mov rdi, qword ptr [r12 + 1728]
 mov rsi, qword ptr [r12 + 1736]
 mov rdx, qword ptr [r12 + 1824]
 mov rcx, qword ptr [r12 + 1832]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00116_n48_α
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
.Lx00132_3:
 jmp xchain00116_n57_α
 xchain00116_n55_β:
 jmp xchain00116_n48_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n56_α:
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 408], rax
 lea rax, [rip + xchain00116_n37_α]
 mov qword ptr [r12 + 416], rax
 jmp xchain00116_n37_α
 xchain00116_n56_β:
 jmp xchain00116_n37_α
 xchain00116_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1712]
 mov rdx, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain00116_n58_α
 xchain00116_n57_β:
 jmp xchain00116_n48_α
# IR_VAR_REF
 xchain00116_n58_α:
 lea rdi, [r12 + 2384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00116_n59_α
 xchain00116_n58_β:
 jmp xchain00116_n37_α
# IR_VAR
 xchain00116_n59_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 456], rax
 jmp xchain00116_n60_α
 xchain00116_n59_β:
 jmp xchain00116_n37_α
# IR_SUBSCRIPT x[i] variable
 xchain00116_n60_α:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00116_n37_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00116_n61_α
 xchain00116_n60_β:
 jmp xchain00116_n37_α
# IR_LIT_CHARSET
 xchain00116_n61_α:
 mov qword ptr [r12 + 1520], 1
 mov dword ptr [r12 + 1524], -1
 mov rax, qword ptr [rip + .Lx00133_0]
 mov qword ptr [r12 + 1528], rax
 jmp xchain00116_n62_α
 xchain00116_n61_β:
 jmp xchain00116_n65_α
.Lx00133_0:
 .quad .Lx00133_0_s
.Lx00133_0_s:
 .string "+.:"
# IR_VAR_REF
 xchain00116_n62_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain00116_n63_α
 xchain00116_n62_β:
 jmp xchain00116_n65_α
# IR_VAR
 xchain00116_n63_α:
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 1576], rax
 jmp xchain00116_n64_α
 xchain00116_n63_β:
 jmp xchain00116_n65_α
# IR_SUBSCRIPT x[i] variable
 xchain00116_n64_α:
 mov rdi, qword ptr [r12 + 1552]
 mov rsi, qword ptr [r12 + 1560]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00116_n65_α
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain00116_n66_α
 xchain00116_n64_β:
 jmp xchain00116_n65_α
# IR_LIT_INTEGER
 xchain00116_n65_α:
 mov qword ptr [r12 + 1456], 6
 mov rax, qword ptr [rip + .Lx00134_0]
 mov qword ptr [r12 + 1464], rax
 jmp xchain00116_n67_α
 xchain00116_n65_β:
 jmp xchain00116_n37_α
.Lx00134_0:
 .quad 1
# IR_DEREF variable -> value
 xchain00116_n66_α:
 mov rdi, qword ptr [r12 + 1584]
 mov rsi, qword ptr [r12 + 1592]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00116_n65_α
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00116_n68_α
 xchain00116_n66_β:
 jmp xchain00116_n65_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n67_α:
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + xchain00116_n37_α]
 mov qword ptr [r12 + 512], rax
 jmp xchain00116_n69_α
 xchain00116_n67_β:
 jmp xchain00116_n37_α
 xchain00116_n68_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1600]
 mov rdx, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain00116_n71_α
 xchain00116_n68_β:
 jmp xchain00116_n65_α
# IR_ASSIGN_VAR
 xchain00116_n69_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00116_n37_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00116_n72_α
 xchain00116_n69_β:
 jmp xchain00116_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00116_n70_α:
 jmp qword ptr [r12 + 512]
 xchain00116_n70_β:
 jmp xchain00116_n37_α
 xchain00116_n71_α:
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
  .Lbynamefn603: .string "any"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn603]
 lea rsi, [r12 + 1488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 cmp eax, 99
 je xchain00116_n65_α
 jmp xchain00116_n73_α
xchain00116_n71_β:
 jmp xchain00116_n65_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n72_α:
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 408], rax
 lea rax, [rip + xchain00116_n70_α]
 mov qword ptr [r12 + 416], rax
 jmp xchain00116_n37_α
 xchain00116_n72_β:
 jmp xchain00116_n37_α
# IR_LIT_STRING
 xchain00116_n73_α:
 mov qword ptr [r12 + 1392], 1
 mov rax, qword ptr [rip + .Lx00135_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00116_n74_α
 xchain00116_n73_β:
 jmp xchain00116_n77_α
.Lx00135_0:
 .quad .Lx00135_0_s
.Lx00135_0_s:
 .string ""
# IR_LIT_INTEGER
 xchain00116_n74_α:
 mov qword ptr [r12 + 1440], 6
 mov rax, qword ptr [rip + .Lx00136_0]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00116_n75_α
 xchain00116_n74_β:
 jmp xchain00116_n77_α
.Lx00136_0:
 .quad 0
# IR_SCAN_TAB
 xchain00116_n75_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00137_0
 add rax, r15
 add rax, 1
.Lx00137_0:
 cmp rax, 1
 jl xchain00116_n77_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00116_n77_α
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
 jmp xchain00116_n76_α
 xchain00116_n75_β:
 mov r14, qword ptr [r12 + 1424]
 jmp xchain00116_n77_α
 xchain00116_n76_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 1392]
 mov rsi, qword ptr [r12 + 1400]
 mov rdx, qword ptr [r12 + 1408]
 mov rcx, qword ptr [r12 + 1416]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00116_n77_α
 mov rdi, qword ptr [r12 + 1408]
 mov rsi, qword ptr [r12 + 1416]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain00116_n78_α
 xchain00116_n76_β:
 jmp xchain00116_n77_α
# IR_VAR
 xchain00116_n77_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1368], rax
 jmp xchain00116_n79_α
 xchain00116_n77_β:
 jmp xchain00116_n80_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n78_α:
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00116_n77_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00116_n81_α
 xchain00116_n78_β:
 jmp xchain00116_n85_α
 xchain00116_n79_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1344]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1352], rax
  .section .rodata
  .Lrkfn616: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn616]
 lea rsi, [r12 + 1344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain00116_n80_α
 jmp xchain00116_n83_α
 xchain00116_n79_β:
 jmp xchain00116_n80_α
# IR_LIT_STRING
 xchain00116_n80_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx00138_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00116_n84_α
 xchain00116_n80_β:
 jmp xchain00116_n85_α
.Lx00138_0:
 .quad .Lx00138_0_s
.Lx00138_0_s:
 .string "No parameter following -"
 xchain00116_n81_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1216]
 mov rdx, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain00116_n85_α
 xchain00116_n81_β:
 jmp xchain00116_n85_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00116_n82_α:
 jmp qword ptr [r12 + 1232]
 xchain00116_n82_β:
 jmp xchain00116_n85_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n83_α:
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00116_n80_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00116_n81_α
 xchain00116_n83_β:
 jmp xchain00116_n85_α
# IR_VAR
 xchain00116_n84_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1320], rax
 jmp xchain00116_n86_α
 xchain00116_n84_β:
 jmp xchain00116_n85_α
# IR_VAR
 xchain00116_n85_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 552], rax
 jmp xchain00116_n87_α
 xchain00116_n85_β:
 jmp xchain00116_n37_α
 xchain00116_n86_α:
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
  .Lrkfn628: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn628]
 lea rsi, [r12 + 1264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain00116_n85_α
 jmp xchain00116_n88_α
 xchain00116_n86_β:
 jmp xchain00116_n85_α
# IR_LIT_STRING
 xchain00116_n87_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx00139_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00116_n89_α
 xchain00116_n87_β:
 jmp xchain00116_n37_α
.Lx00139_0:
 .quad .Lx00139_0_s
.Lx00139_0_s:
 .string ":"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n88_α:
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00116_n85_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00116_n81_α
 xchain00116_n88_β:
 jmp xchain00116_n85_α
 xchain00116_n89_α:
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
  .Lrkfn633: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn633]
 lea rsi, [r12 + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain00116_n91_α
 jmp xchain00116_n90_α
 xchain00116_n89_β:
 jmp xchain00116_n91_α
# IR_VAR
 xchain00116_n90_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00116_n92_α
 xchain00116_n90_β:
 jmp xchain00116_n37_α
# IR_LIT_STRING
 xchain00116_n91_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx00140_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain00116_n93_α
 xchain00116_n91_β:
 jmp xchain00116_n37_α
.Lx00140_0:
 .quad .Lx00140_0_s
.Lx00140_0_s:
 .string "+"
 xchain00116_n92_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00116_n94_α
 xchain00116_n92_β:
 jmp xchain00116_n37_α
 xchain00116_n93_α:
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
  .Lrkfn639: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn639]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00116_n96_α
 jmp xchain00116_n95_α
 xchain00116_n93_β:
 jmp xchain00116_n96_α
# IR_VAR
 xchain00116_n94_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 536], rax
 jmp xchain00116_n97_α
 xchain00116_n94_β:
 jmp xchain00116_n37_α
# IR_VAR
 xchain00116_n95_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00116_n98_α
 xchain00116_n95_β:
 jmp xchain00116_n99_α
# IR_LIT_STRING
 xchain00116_n96_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx00141_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00116_n00020_α
 xchain00116_n96_β:
 jmp xchain00116_n37_α
.Lx00141_0:
 .quad .Lx00141_0_s
.Lx00141_0_s:
 .string "."
 xchain00116_n97_α:
 jmp xchain00116_n00024_α
xchain00116_n97_β:
 jmp xchain00116_n37_α
 xchain00116_n98_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+1008]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn647: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn647]
 lea rsi, [r12 + 1008]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain00116_n99_α
 jmp xchain00116_n00026_α
 xchain00116_n98_β:
 jmp xchain00116_n99_α
# IR_LIT_STRING
 xchain00116_n99_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx00142_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00116_n00027_α
 xchain00116_n99_β:
 jmp xchain00116_n37_α
.Lx00142_0:
 .quad .Lx00142_0_s
.Lx00142_0_s:
 .string "-"
 xchain00116_n00020_α:
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
  .Lrkfn650: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn650]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain00116_n37_α
 jmp xchain00116_n00028_α
 xchain00116_n00020_β:
 jmp xchain00116_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00024_α:
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + xchain00116_n37_α]
 mov qword ptr [r12 + 512], rax
 jmp xchain00116_n69_α
 xchain00116_n00024_β:
 jmp xchain00116_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00026_α:
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00116_n99_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00116_n00034_α
 xchain00116_n00026_β:
 jmp xchain00116_n37_α
# IR_VAR
 xchain00116_n00027_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 968], rax
 jmp xchain00116_n00030_α
 xchain00116_n00027_β:
 jmp xchain00116_n37_α
# IR_VAR
 xchain00116_n00028_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 760], rax
 jmp xchain00116_n00039_α
 xchain00116_n00028_β:
 jmp xchain00116_n00032_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00116_n00029_α:
 jmp qword ptr [r12 + 864]
 xchain00116_n00029_β:
 jmp xchain00116_n37_α
# IR_LIT_STRING
 xchain00116_n00030_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx00143_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain00116_n00035_α
 xchain00116_n00030_β:
 jmp xchain00116_n37_α
.Lx00143_0:
 .quad .Lx00143_0_s
.Lx00143_0_s:
 .string " needs numeric parameter"
 xchain00116_n00039_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+736]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn663: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn663]
 lea rsi, [r12 + 736]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain00116_n00032_α
 jmp xchain00116_n00036_α
 xchain00116_n00039_β:
 jmp xchain00116_n00032_α
# IR_LIT_STRING
 xchain00116_n00032_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00144_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00116_n00037_α
 xchain00116_n00032_β:
 jmp xchain00116_n37_α
.Lx00144_0:
 .quad .Lx00144_0_s
.Lx00144_0_s:
 .string "-"
 xchain00116_n00034_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00116_n94_α
 xchain00116_n00034_β:
 jmp xchain00116_n37_α
 xchain00116_n00035_α:
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
  .Lrkfn667: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn667]
 lea rsi, [r12 + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain00116_n37_α
 jmp xchain00116_n00001_α
 xchain00116_n00035_β:
 jmp xchain00116_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00036_α:
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 584], rax
 lea rax, [rip + xchain00116_n00032_α]
 mov qword ptr [r12 + 592], rax
 jmp xchain00116_n00045_α
 xchain00116_n00036_β:
 jmp xchain00116_n37_α
# IR_VAR
 xchain00116_n00037_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 696], rax
 jmp xchain00116_n00040_α
 xchain00116_n00037_β:
 jmp xchain00116_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00001_α:
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00116_n37_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00116_n00034_α
 xchain00116_n00001_β:
 jmp xchain00116_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00116_n00031_α:
 jmp qword ptr [r12 + 592]
 xchain00116_n00031_β:
 jmp xchain00116_n37_α
# IR_LIT_STRING
 xchain00116_n00040_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx00145_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00116_n00002_α
 xchain00116_n00040_β:
 jmp xchain00116_n37_α
.Lx00145_0:
 .quad .Lx00145_0_s
.Lx00145_0_s:
 .string " needs numeric parameter"
 xchain00116_n00045_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00116_n94_α
 xchain00116_n00045_β:
 jmp xchain00116_n37_α
 xchain00116_n00002_α:
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
  .Lrkfn679: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn679]
 lea rsi, [r12 + 624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain00116_n37_α
 jmp xchain00116_n00041_α
 xchain00116_n00002_β:
 jmp xchain00116_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00116_n00041_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
 lea rax, [rip + xchain00116_n37_α]
 mov qword ptr [r12 + 592], rax
 jmp xchain00116_n00045_α
 xchain00116_n00041_β:
 jmp xchain00116_n37_α
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
 xchain00146_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 344], rax
 jmp xchain00146_n1_α
 xchain00146_n0_β:
 jmp xchain00146_n2_α
# IR_ASSIGN gva
 xchain00146_n1_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00146_n2_α
 xchain00146_n1_β:
 jmp xchain00146_n2_α
 xchain00146_n2_α:
  .section .rodata
  .Lcall00147_pname: .string "Signature__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00147_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain00146_n3_α
 jmp xchain00146_n3_α
xchain00146_n2_β:
 jmp xchain00146_n3_α
 xchain00146_n3_α:
  .section .rodata
  .Lcall00113_pname: .string "Regions__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00113_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00146_n4_α
 jmp xchain00146_n4_α
xchain00146_n3_β:
 jmp xchain00146_n4_α
 xchain00146_n4_α:
  .section .rodata
  .Lcall00114_pname: .string "Time__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00114_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain00146_n5_α
 jmp xchain00146_n5_α
xchain00146_n4_β:
 jmp xchain00146_n5_α
# IR_LIT_STRING
 xchain00146_n5_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00148_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00146_n6_α
 xchain00146_n5_β:
 jmp xchain00146_n8_α
.Lx00148_0:
 .quad .Lx00148_0_s
.Lx00148_0_s:
 .string "OUTPUT"
 xchain00146_n6_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+240]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn691: .string "getenv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn691]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00146_n8_α
 jmp xchain00146_n7_α
 xchain00146_n6_β:
 jmp xchain00146_n8_α
# IR_LIT_STRING
 xchain00146_n7_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00149_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00146_n9_α
 xchain00146_n7_β:
 jmp xchain00146_n12_α
.Lx00149_0:
 .quad .Lx00149_0_s
.Lx00149_0_s:
 .string "*** Benchmarking with output ***"
# IR_VAR
 xchain00146_n8_α:
 mov rdi, qword ptr [rip + .Lx00150_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00146_n11_α
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00146_n10_α
 xchain00146_n8_β:
 jmp xchain00146_n11_α
.Lx00150_0:
 .quad .Lx00150_0_s
.Lx00150_0_s:
 .string "write"
 xchain00146_n9_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn695: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn695]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain00146_n12_α
 jmp xchain00146_n12_α
 xchain00146_n9_β:
 jmp xchain00146_n12_α
# IR_ASSIGN gva
 xchain00146_n10_α:
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00146_n11_α
 xchain00146_n10_β:
 jmp xchain00146_n11_α
# IR_VAR
 xchain00146_n11_α:
 mov rdi, qword ptr [rip + .Lx00151_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00146_n14_α
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00146_n13_α
 xchain00146_n11_β:
 jmp xchain00146_n14_α
.Lx00151_0:
 .quad .Lx00151_0_s
.Lx00151_0_s:
 .string "writes"
# IR_RETURN
 xchain00146_n12_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Init___γ
# IR_ASSIGN gva
 xchain00146_n13_α:
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [rbx + 240], rax
 mov qword ptr [rbx + 248], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00146_n14_α
 xchain00146_n13_β:
 jmp xchain00146_n14_α
# IR_LIT_INTEGER
 xchain00146_n14_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00146_n15_α
 xchain00146_n14_β:
 jmp xchain00146_n17_α
.Lx00152_0:
 .quad 1
# IR_ASSIGN global
 xchain00146_n15_α:
 mov rsi, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov rdi, qword ptr [rip + .Lx00153_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00146_n16_α
 xchain00146_n15_β:
 jmp xchain00146_n17_α
.Lx00153_0:
 .quad .Lx00153_0_s
.Lx00153_0_s:
 .string "writes"
# IR_ASSIGN global
 xchain00146_n16_α:
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov rdi, qword ptr [rip + .Lx00154_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00146_n17_α
 xchain00146_n16_β:
 jmp xchain00146_n17_α
.Lx00154_0:
 .quad .Lx00154_0_s
.Lx00154_0_s:
 .string "write"
# IR_RETURN
 xchain00146_n17_α:
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
 xchain00155_n0_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx00156_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00155_n1_α
 xchain00155_n0_β:
 jmp xchain00155_n3_α
.Lx00156_0:
 .quad .Lx00156_0_s
.Lx00156_0_s:
 .string "OUTPUT"
 xchain00155_n1_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+304]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn707: .string "getenv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn707]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00155_n3_α
 jmp xchain00155_n2_α
 xchain00155_n1_β:
 jmp xchain00155_n3_α
# IR_VAR
 xchain00155_n2_α:
 mov rax, qword ptr [rbx + 256]
 mov rdx, qword ptr [rbx + 264]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00155_n4_α
 xchain00155_n2_β:
 jmp xchain00155_n5_α
# IR_KEYWORD_null
 xchain00155_n3_α:
 mov qword ptr [r12 + 272], 0
 mov qword ptr [r12 + 280], 0
 jmp xchain00155_n6_α
 xchain00155_n3_β:
 jmp xchain00155_n2_α
# IR_LIT_STRING
 xchain00155_n4_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00157_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00155_n7_α
 xchain00155_n4_β:
 jmp xchain00155_n5_α
.Lx00157_0:
 .quad .Lx00157_0_s
.Lx00157_0_s:
 .string " elapsed time = "
 xchain00155_n5_α:
  .section .rodata
  .Lcall00117_pname: .string "Regions__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00117_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain00155_n8_α
 jmp xchain00155_n8_α
xchain00155_n5_β:
 jmp xchain00155_n8_α
# IR_VAR
 xchain00155_n6_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00155_n9_α
 xchain00155_n6_β:
 jmp xchain00155_n10_α
 xchain00155_n7_α:
  .section .rodata
  .Lcall00158_pname: .string "Time__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00158_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00155_n5_α
 jmp xchain00155_n11_α
xchain00155_n7_β:
 jmp xchain00155_n5_α
 xchain00155_n8_α:
  .section .rodata
  .Lcall00159_pname: .string "Storage__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00159_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain00155_n12_α
 jmp xchain00155_n12_α
xchain00155_n8_β:
 jmp xchain00155_n12_α
# IR_ASSIGN global
 xchain00155_n9_α:
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov rdi, qword ptr [rip + .Lx00160_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00155_n10_α
 xchain00155_n9_β:
 jmp xchain00155_n10_α
.Lx00160_0:
 .quad .Lx00160_0_s
.Lx00160_0_s:
 .string "write"
# IR_VAR
 xchain00155_n10_α:
 mov rax, qword ptr [rbx + 240]
 mov rdx, qword ptr [rbx + 248]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00155_n13_α
 xchain00155_n10_β:
 jmp xchain00155_n2_α
 xchain00155_n11_α:
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
  .Lrkfn718: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn718]
 lea rsi, [r12 + 80]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00155_n5_α
 jmp xchain00155_n5_α
 xchain00155_n11_β:
 jmp xchain00155_n5_α
 xchain00155_n12_α:
  .section .rodata
  .Lcall00161_pname: .string "Collections__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00161_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain00155_n14_α
 jmp xchain00155_n14_α
xchain00155_n12_β:
 jmp xchain00155_n14_α
# IR_ASSIGN global
 xchain00155_n13_α:
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov rdi, qword ptr [rip + .Lx00162_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00155_n15_α
 xchain00155_n13_β:
 jmp xchain00155_n2_α
.Lx00162_0:
 .quad .Lx00162_0_s
.Lx00162_0_s:
 .string "writes"
# IR_RETURN
 xchain00155_n14_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Term___γ
 xchain00155_n15_α:
 jmp xchain00155_n16_α
xchain00155_n15_β:
 jmp xchain00155_n2_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00155_n16_α:
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
 lea rax, [rip + xchain00155_n2_α]
 mov qword ptr [r12 + 192], rax
 jmp xchain00155_n2_α
 xchain00155_n16_β:
 jmp xchain00155_n2_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00155_n17_α:
 jmp qword ptr [r12 + 192]
 xchain00155_n17_β:
 jmp xchain00155_n2_α
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
# IR_VAR_REF
 xchain00163_n0_α:
 lea rdi, [rbx + 352]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00163_n1_α
 xchain00163_n0_β:
 jmp xchain00163_n3_α
# IR_NULLTEST_VAR
 xchain00163_n1_α:
 mov eax, dword ptr [r12 + 720]
 cmp eax, 99
 je xchain00163_n3_α
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00163_n3_α
 cmp eax, 0
 jne xchain00163_n3_α
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 744], rax
 jmp xchain00163_n2_α
 xchain00163_n1_β:
 jmp xchain00163_n3_α
# IR_LIT_INTEGER
 xchain00163_n2_α:
 mov qword ptr [r12 + 768], 6
 mov rax, qword ptr [rip + .Lx00164_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain00163_n4_α
 xchain00163_n2_β:
 jmp xchain00163_n3_α
.Lx00164_0:
 .quad 1
# IR_MAKE_LIST
 xchain00163_n3_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00163_n5_α
 xchain00163_n3_β:
 jmp xchain00163_n7_α
# IR_ASSIGN_VAR
 xchain00163_n4_α:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00163_n3_α
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00163_n6_α
 xchain00163_n4_β:
 jmp xchain00163_n3_α
 xchain00163_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00163_n7_α
 xchain00163_n5_β:
 jmp xchain00163_n7_α
# IR_LIT_STRING
 xchain00163_n6_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00165_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00163_n8_α
 xchain00163_n6_β:
 jmp xchain00163_n3_α
.Lx00165_0:
 .quad .Lx00165_0_s
.Lx00165_0_s:
 .string "total"
# IR_VAR
 xchain00163_n7_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 456], rax
 jmp xchain00163_n9_α
 xchain00163_n7_β:
 jmp xchain00163_n10_α
# IR_LIT_STRING
 xchain00163_n8_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00166_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00163_n11_α
 xchain00163_n8_β:
 jmp xchain00163_n3_α
.Lx00166_0:
 .quad .Lx00166_0_s
.Lx00166_0_s:
 .string "static"
# IR_KEYWORD_gen
 xchain00163_n9_α:
 mov qword ptr [r12 + 480], 0
.Lx00167_1:
 mov rdi, qword ptr [rip + .Lx00167_0]
 mov rsi, qword ptr [r12 + 480]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00163_n10_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov rax, qword ptr [r12 + 480]
 add rax, 1
 mov qword ptr [r12 + 480], rax
 jmp xchain00163_n12_α
 xchain00163_n9_β:
 jmp .Lx00167_1
.Lx00167_0:
 .quad .Lx00167_0_s
.Lx00167_0_s:
 .string "&collections"
# IR_LIT_STRING
 xchain00163_n10_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00168_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00163_n13_α
 xchain00163_n10_β:
 jmp xchain00163_n15_α
.Lx00168_0:
 .quad .Lx00168_0_s
.Lx00168_0_s:
 .string "collections"
# IR_LIT_STRING
 xchain00163_n11_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx00169_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain00163_n14_α
 xchain00163_n11_β:
 jmp xchain00163_n3_α
.Lx00169_0:
 .quad .Lx00169_0_s
.Lx00169_0_s:
 .string "string"
 xchain00163_n12_α:
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
  .Lrkfn744: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn744]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00163_n10_α
 jmp xchain00163_n9_β
 xchain00163_n12_β:
 jmp xchain00163_n10_α
 xchain00163_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+368]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn746: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn746]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00163_n15_α
 jmp xchain00163_n15_α
 xchain00163_n13_β:
 jmp xchain00163_n15_α
# IR_LIT_STRING
 xchain00163_n14_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx00170_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00163_n16_α
 xchain00163_n14_β:
 jmp xchain00163_n3_α
.Lx00170_0:
 .quad .Lx00170_0_s
.Lx00170_0_s:
 .string "block"
# IR_LIT_INTEGER
 xchain00163_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00171_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00163_n17_α
 xchain00163_n15_β:
 jmp xchain00163_n20_α
.Lx00171_0:
 .quad 1
# IR_MAKE_LIST
 xchain00163_n16_α:
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
 jmp xchain00163_n18_α
 xchain00163_n16_β:
 jmp xchain00163_n3_α
# IR_VAR
 xchain00163_n17_α:
 mov rax, qword ptr [rbx + 336]
 mov rdx, qword ptr [rbx + 344]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00163_n19_α
 xchain00163_n17_β:
 jmp xchain00163_n20_α
# IR_ASSIGN gva
 xchain00163_n18_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 336], rax
 mov qword ptr [rbx + 344], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00163_n21_α
 xchain00163_n18_β:
 jmp xchain00163_n3_α
# IR_UNOP
 xchain00163_n19_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00163_n22_α
 xchain00163_n19_β:
 jmp xchain00163_n20_α
# IR_RETURN
 xchain00163_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Collections___γ
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00163_n21_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain00163_n3_α]
 mov qword ptr [r12 + 544], rax
 jmp xchain00163_n3_α
 xchain00163_n21_β:
 jmp xchain00163_n3_α
# IR_TO
 xchain00163_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00172_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00163_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00163_n24_α
 xchain00163_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00172_0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00163_n23_α:
 jmp qword ptr [r12 + 544]
 xchain00163_n23_β:
 jmp xchain00163_n3_α
 xchain00163_n24_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00163_n25_α
 xchain00163_n24_β:
 jmp xchain00163_n20_α
# IR_VAR_REF
 xchain00163_n25_α:
 lea rdi, [rbx + 336]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00163_n26_α
 xchain00163_n25_β:
 jmp xchain00163_n22_β
# IR_VAR
 xchain00163_n26_α:
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 184], rax
 jmp xchain00163_n27_α
 xchain00163_n26_β:
 jmp xchain00163_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00163_n27_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00163_n22_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00163_n28_α
 xchain00163_n27_β:
 jmp xchain00163_n22_β
# IR_DEREF variable -> value
 xchain00163_n28_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00163_n22_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00163_n29_α
 xchain00163_n28_β:
 jmp xchain00163_n22_β
# IR_VAR_REF
 xchain00163_n29_α:
 lea rdi, [r12 + 816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00163_n30_α
 xchain00163_n29_β:
 jmp xchain00163_n22_β
# IR_VAR
 xchain00163_n30_α:
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 296], rax
 jmp xchain00163_n31_α
 xchain00163_n30_β:
 jmp xchain00163_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00163_n31_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00163_n22_β
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00163_n32_α
 xchain00163_n31_β:
 jmp xchain00163_n22_β
# IR_DEREF variable -> value
 xchain00163_n32_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00163_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00163_n33_α
 xchain00163_n32_β:
 jmp xchain00163_n22_β
# IR_LIT_INTEGER
 xchain00163_n33_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00173_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00163_n34_α
 xchain00163_n33_β:
 jmp xchain00163_n22_β
.Lx00173_0:
 .quad 8
 xchain00163_n34_α:
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
  .Lrkfn776: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn776]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00163_n22_β
 jmp xchain00163_n35_α
 xchain00163_n34_β:
 jmp xchain00163_n22_β
 xchain00163_n35_α:
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
  .Lrkfn778: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn778]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00163_n22_β
 jmp xchain00163_n22_β
 xchain00163_n35_β:
 jmp xchain00163_n22_β
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
# IR_VAR_REF
 xchain00174_n0_α:
 lea rdi, [rbx + 384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00174_n1_α
 xchain00174_n0_β:
 jmp xchain00174_n3_α
# IR_NULLTEST_VAR
 xchain00174_n1_α:
 mov eax, dword ptr [r12 + 688]
 cmp eax, 99
 je xchain00174_n3_α
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00174_n3_α
 cmp eax, 0
 jne xchain00174_n3_α
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 712], rax
 jmp xchain00174_n2_α
 xchain00174_n1_β:
 jmp xchain00174_n3_α
# IR_LIT_INTEGER
 xchain00174_n2_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx00175_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00174_n4_α
 xchain00174_n2_β:
 jmp xchain00174_n3_α
.Lx00175_0:
 .quad 1
# IR_MAKE_LIST
 xchain00174_n3_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00174_n5_α
 xchain00174_n3_β:
 jmp xchain00174_n7_α
# IR_ASSIGN_VAR
 xchain00174_n4_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00174_n3_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00174_n6_α
 xchain00174_n4_β:
 jmp xchain00174_n3_α
 xchain00174_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00174_n7_α
 xchain00174_n5_β:
 jmp xchain00174_n7_α
# IR_LIT_STRING
 xchain00174_n6_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx00176_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00174_n8_α
 xchain00174_n6_β:
 jmp xchain00174_n3_α
.Lx00176_0:
 .quad .Lx00176_0_s
.Lx00176_0_s:
 .string "static"
# IR_VAR
 xchain00174_n7_α:
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 456], rax
 jmp xchain00174_n9_α
 xchain00174_n7_β:
 jmp xchain00174_n10_α
# IR_LIT_STRING
 xchain00174_n8_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00177_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00174_n11_α
 xchain00174_n8_β:
 jmp xchain00174_n3_α
.Lx00177_0:
 .quad .Lx00177_0_s
.Lx00177_0_s:
 .string "string"
# IR_KEYWORD_gen
 xchain00174_n9_α:
 mov qword ptr [r12 + 480], 0
.Lx00178_1:
 mov rdi, qword ptr [rip + .Lx00178_0]
 mov rsi, qword ptr [r12 + 480]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00174_n10_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov rax, qword ptr [r12 + 480]
 add rax, 1
 mov qword ptr [r12 + 480], rax
 jmp xchain00174_n12_α
 xchain00174_n9_β:
 jmp .Lx00178_1
.Lx00178_0:
 .quad .Lx00178_0_s
.Lx00178_0_s:
 .string "&regions"
# IR_LIT_STRING
 xchain00174_n10_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00179_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00174_n13_α
 xchain00174_n10_β:
 jmp xchain00174_n15_α
.Lx00179_0:
 .quad .Lx00179_0_s
.Lx00179_0_s:
 .string "regions"
# IR_LIT_STRING
 xchain00174_n11_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00180_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00174_n14_α
 xchain00174_n11_β:
 jmp xchain00174_n3_α
.Lx00180_0:
 .quad .Lx00180_0_s
.Lx00180_0_s:
 .string "block"
 xchain00174_n12_α:
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
  .Lrkfn796: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn796]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00174_n10_α
 jmp xchain00174_n9_β
 xchain00174_n12_β:
 jmp xchain00174_n10_α
 xchain00174_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+368]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn798: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn798]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00174_n15_α
 jmp xchain00174_n15_α
 xchain00174_n13_β:
 jmp xchain00174_n15_α
# IR_MAKE_LIST
 xchain00174_n14_α:
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
 jmp xchain00174_n16_α
 xchain00174_n14_β:
 jmp xchain00174_n3_α
# IR_LIT_INTEGER
 xchain00174_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00181_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00174_n17_α
 xchain00174_n15_β:
 jmp xchain00174_n20_α
.Lx00181_0:
 .quad 1
# IR_ASSIGN gva
 xchain00174_n16_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 368], rax
 mov qword ptr [rbx + 376], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00174_n18_α
 xchain00174_n16_β:
 jmp xchain00174_n3_α
# IR_VAR
 xchain00174_n17_α:
 mov rax, qword ptr [rbx + 368]
 mov rdx, qword ptr [rbx + 376]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00174_n19_α
 xchain00174_n17_β:
 jmp xchain00174_n20_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00174_n18_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain00174_n3_α]
 mov qword ptr [r12 + 544], rax
 jmp xchain00174_n3_α
 xchain00174_n18_β:
 jmp xchain00174_n3_α
# IR_UNOP
 xchain00174_n19_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00174_n22_α
 xchain00174_n19_β:
 jmp xchain00174_n20_α
# IR_RETURN
 xchain00174_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Regions___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00174_n21_α:
 jmp qword ptr [r12 + 544]
 xchain00174_n21_β:
 jmp xchain00174_n3_α
# IR_TO
 xchain00174_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00182_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00174_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00174_n23_α
 xchain00174_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00182_0
 xchain00174_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00174_n24_α
 xchain00174_n23_β:
 jmp xchain00174_n20_α
# IR_VAR_REF
 xchain00174_n24_α:
 lea rdi, [rbx + 368]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00174_n25_α
 xchain00174_n24_β:
 jmp xchain00174_n22_β
# IR_VAR
 xchain00174_n25_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 184], rax
 jmp xchain00174_n26_α
 xchain00174_n25_β:
 jmp xchain00174_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00174_n26_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00174_n22_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00174_n27_α
 xchain00174_n26_β:
 jmp xchain00174_n22_β
# IR_DEREF variable -> value
 xchain00174_n27_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00174_n22_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00174_n28_α
 xchain00174_n27_β:
 jmp xchain00174_n22_β
# IR_VAR_REF
 xchain00174_n28_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00174_n29_α
 xchain00174_n28_β:
 jmp xchain00174_n22_β
# IR_VAR
 xchain00174_n29_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 296], rax
 jmp xchain00174_n30_α
 xchain00174_n29_β:
 jmp xchain00174_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00174_n30_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00174_n22_β
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00174_n31_α
 xchain00174_n30_β:
 jmp xchain00174_n22_β
# IR_DEREF variable -> value
 xchain00174_n31_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00174_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00174_n32_α
 xchain00174_n31_β:
 jmp xchain00174_n22_β
# IR_LIT_INTEGER
 xchain00174_n32_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00183_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00174_n33_α
 xchain00174_n32_β:
 jmp xchain00174_n22_β
.Lx00183_0:
 .quad 8
 xchain00174_n33_α:
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
  .Lrkfn827: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn827]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00174_n22_β
 jmp xchain00174_n34_α
 xchain00174_n33_β:
 jmp xchain00174_n22_β
 xchain00174_n34_α:
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
  .Lrkfn829: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn829]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00174_n22_β
 jmp xchain00174_n22_β
 xchain00174_n34_β:
 jmp xchain00174_n22_β
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
 xchain00184_n0_α:
 mov rdi, qword ptr [rip + .Lx00185_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00184_n1_α
 xchain00184_n0_β:
 jmp xchain00184_n2_α
.Lx00185_0:
 .quad .Lx00185_0_s
.Lx00185_0_s:
 .string "&version"
 xchain00184_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn833: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn833]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00184_n2_α
 jmp xchain00184_n2_α
 xchain00184_n1_β:
 jmp xchain00184_n2_α
# IR_KEYWORD_read
 xchain00184_n2_α:
 mov rdi, qword ptr [rip + .Lx00186_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00184_n3_α
 xchain00184_n2_β:
 jmp xchain00184_n4_α
.Lx00186_0:
 .quad .Lx00186_0_s
.Lx00186_0_s:
 .string "&host"
 xchain00184_n3_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+96]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn836: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn836]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain00184_n4_α
 jmp xchain00184_n4_α
 xchain00184_n3_β:
 jmp xchain00184_n4_α
# IR_KEYWORD_gen
 xchain00184_n4_α:
 mov qword ptr [r12 + 64], 0
.Lx00187_1:
 mov rdi, qword ptr [rip + .Lx00187_0]
 mov rsi, qword ptr [r12 + 64]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00184_n6_α
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov rax, qword ptr [r12 + 64]
 add rax, 1
 mov qword ptr [r12 + 64], rax
 jmp xchain00184_n5_α
 xchain00184_n4_β:
 jmp .Lx00187_1
.Lx00187_0:
 .quad .Lx00187_0_s
.Lx00187_0_s:
 .string "&features"
 xchain00184_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lrkfn839: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn839]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain00184_n6_α
 jmp xchain00184_n4_β
 xchain00184_n5_β:
 jmp xchain00184_n6_α
# IR_RETURN
 xchain00184_n6_α:
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
# IR_VAR_REF
 xchain00188_n0_α:
 lea rdi, [rbx + 416]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00188_n1_α
 xchain00188_n0_β:
 jmp xchain00188_n3_α
# IR_NULLTEST_VAR
 xchain00188_n1_α:
 mov eax, dword ptr [r12 + 688]
 cmp eax, 99
 je xchain00188_n3_α
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00188_n3_α
 cmp eax, 0
 jne xchain00188_n3_α
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 712], rax
 jmp xchain00188_n2_α
 xchain00188_n1_β:
 jmp xchain00188_n3_α
# IR_LIT_INTEGER
 xchain00188_n2_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx00189_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00188_n4_α
 xchain00188_n2_β:
 jmp xchain00188_n3_α
.Lx00189_0:
 .quad 1
# IR_MAKE_LIST
 xchain00188_n3_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00188_n5_α
 xchain00188_n3_β:
 jmp xchain00188_n7_α
# IR_ASSIGN_VAR
 xchain00188_n4_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00188_n3_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00188_n6_α
 xchain00188_n4_β:
 jmp xchain00188_n3_α
 xchain00188_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00188_n7_α
 xchain00188_n5_β:
 jmp xchain00188_n7_α
# IR_LIT_STRING
 xchain00188_n6_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx00190_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00188_n8_α
 xchain00188_n6_β:
 jmp xchain00188_n3_α
.Lx00190_0:
 .quad .Lx00190_0_s
.Lx00190_0_s:
 .string "static"
# IR_VAR
 xchain00188_n7_α:
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 456], rax
 jmp xchain00188_n9_α
 xchain00188_n7_β:
 jmp xchain00188_n10_α
# IR_LIT_STRING
 xchain00188_n8_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00191_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00188_n11_α
 xchain00188_n8_β:
 jmp xchain00188_n3_α
.Lx00191_0:
 .quad .Lx00191_0_s
.Lx00191_0_s:
 .string "string"
# IR_KEYWORD_gen
 xchain00188_n9_α:
 mov qword ptr [r12 + 480], 0
.Lx00192_1:
 mov rdi, qword ptr [rip + .Lx00192_0]
 mov rsi, qword ptr [r12 + 480]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00188_n10_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov rax, qword ptr [r12 + 480]
 add rax, 1
 mov qword ptr [r12 + 480], rax
 jmp xchain00188_n12_α
 xchain00188_n9_β:
 jmp .Lx00192_1
.Lx00192_0:
 .quad .Lx00192_0_s
.Lx00192_0_s:
 .string "&storage"
# IR_LIT_STRING
 xchain00188_n10_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00193_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00188_n13_α
 xchain00188_n10_β:
 jmp xchain00188_n15_α
.Lx00193_0:
 .quad .Lx00193_0_s
.Lx00193_0_s:
 .string "storage"
# IR_LIT_STRING
 xchain00188_n11_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00194_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00188_n14_α
 xchain00188_n11_β:
 jmp xchain00188_n3_α
.Lx00194_0:
 .quad .Lx00194_0_s
.Lx00194_0_s:
 .string "block"
 xchain00188_n12_α:
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
  .Lrkfn858: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn858]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00188_n10_α
 jmp xchain00188_n9_β
 xchain00188_n12_β:
 jmp xchain00188_n10_α
 xchain00188_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+368]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn860: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn860]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00188_n15_α
 jmp xchain00188_n15_α
 xchain00188_n13_β:
 jmp xchain00188_n15_α
# IR_MAKE_LIST
 xchain00188_n14_α:
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
 jmp xchain00188_n16_α
 xchain00188_n14_β:
 jmp xchain00188_n3_α
# IR_LIT_INTEGER
 xchain00188_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00195_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00188_n17_α
 xchain00188_n15_β:
 jmp xchain00188_n20_α
.Lx00195_0:
 .quad 1
# IR_ASSIGN gva
 xchain00188_n16_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 400], rax
 mov qword ptr [rbx + 408], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00188_n18_α
 xchain00188_n16_β:
 jmp xchain00188_n3_α
# IR_VAR
 xchain00188_n17_α:
 mov rax, qword ptr [rbx + 400]
 mov rdx, qword ptr [rbx + 408]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00188_n19_α
 xchain00188_n17_β:
 jmp xchain00188_n20_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00188_n18_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain00188_n3_α]
 mov qword ptr [r12 + 544], rax
 jmp xchain00188_n3_α
 xchain00188_n18_β:
 jmp xchain00188_n3_α
# IR_UNOP
 xchain00188_n19_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00188_n22_α
 xchain00188_n19_β:
 jmp xchain00188_n20_α
# IR_RETURN
 xchain00188_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Storage___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00188_n21_α:
 jmp qword ptr [r12 + 544]
 xchain00188_n21_β:
 jmp xchain00188_n3_α
# IR_TO
 xchain00188_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00196_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00188_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00188_n23_α
 xchain00188_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00196_0
 xchain00188_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00188_n24_α
 xchain00188_n23_β:
 jmp xchain00188_n20_α
# IR_VAR_REF
 xchain00188_n24_α:
 lea rdi, [rbx + 400]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00188_n25_α
 xchain00188_n24_β:
 jmp xchain00188_n22_β
# IR_VAR
 xchain00188_n25_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 184], rax
 jmp xchain00188_n26_α
 xchain00188_n25_β:
 jmp xchain00188_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00188_n26_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00188_n22_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00188_n27_α
 xchain00188_n26_β:
 jmp xchain00188_n22_β
# IR_DEREF variable -> value
 xchain00188_n27_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00188_n22_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00188_n28_α
 xchain00188_n27_β:
 jmp xchain00188_n22_β
# IR_VAR_REF
 xchain00188_n28_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00188_n29_α
 xchain00188_n28_β:
 jmp xchain00188_n22_β
# IR_VAR
 xchain00188_n29_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 296], rax
 jmp xchain00188_n30_α
 xchain00188_n29_β:
 jmp xchain00188_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00188_n30_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00188_n22_β
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00188_n31_α
 xchain00188_n30_β:
 jmp xchain00188_n22_β
# IR_DEREF variable -> value
 xchain00188_n31_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00188_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00188_n32_α
 xchain00188_n31_β:
 jmp xchain00188_n22_β
# IR_LIT_INTEGER
 xchain00188_n32_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00197_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00188_n33_α
 xchain00188_n32_β:
 jmp xchain00188_n22_β
.Lx00197_0:
 .quad 8
 xchain00188_n33_α:
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
  .Lrkfn889: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn889]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00188_n22_β
 jmp xchain00188_n34_α
 xchain00188_n33_β:
 jmp xchain00188_n22_β
 xchain00188_n34_α:
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
  .Lrkfn891: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn891]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00188_n22_β
 jmp xchain00188_n22_β
 xchain00188_n34_β:
 jmp xchain00188_n22_β
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
# IR_VAR_REF
 xchain00198_n0_α:
 lea rdi, [rbx + 448]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00198_n1_α
 xchain00198_n0_β:
 jmp xchain00198_n3_α
# IR_NULLTEST_VAR
 xchain00198_n1_α:
 mov eax, dword ptr [r12 + 160]
 cmp eax, 99
 je xchain00198_n3_α
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00198_n3_α
 cmp eax, 0
 jne xchain00198_n3_α
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 184], rax
 jmp xchain00198_n2_α
 xchain00198_n1_β:
 jmp xchain00198_n3_α
# IR_LIT_INTEGER
 xchain00198_n2_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx00199_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00198_n4_α
 xchain00198_n2_β:
 jmp xchain00198_n3_α
.Lx00199_0:
 .quad 1
# IR_KEYWORD_read
 xchain00198_n3_α:
 mov rdi, qword ptr [rip + .Lx00200_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00198_n5_α
 xchain00198_n3_β:
 jmp proc_Time___ω
.Lx00200_0:
 .quad .Lx00200_0_s
.Lx00200_0_s:
 .string "&time"
# IR_ASSIGN_VAR
 xchain00198_n4_α:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 208]
 mov rcx, qword ptr [r12 + 216]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00198_n3_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00198_n6_α
 xchain00198_n4_β:
 jmp xchain00198_n3_α
# IR_VAR
 xchain00198_n5_α:
 mov rax, qword ptr [rbx + 432]
 mov rdx, qword ptr [rbx + 440]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain00198_n7_α
 xchain00198_n5_β:
 jmp proc_Time___ω
# IR_KEYWORD_read
 xchain00198_n6_α:
 mov rdi, qword ptr [rip + .Lx00201_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00198_n8_α
 xchain00198_n6_β:
 jmp xchain00198_n3_α
.Lx00201_0:
 .quad .Lx00201_0_s
.Lx00201_0_s:
 .string "&time"
 xchain00198_n7_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 32]
 cmp eax, 100
 je .Lx00202_0
 mov eax, dword ptr [r12 + 64]
 cmp eax, 100
 je .Lx00202_0
 mov eax, dword ptr [r12 + 32]
 cmp eax, 6
 jne .Lx00202_2
 mov eax, dword ptr [r12 + 64]
 cmp eax, 6
 jne .Lx00202_2
.Lx00202_1:
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 72]
 sub rax, rcx
 mov qword ptr [r12 + 16], 6
 mov qword ptr [r12 + 24], rax
 jmp xchain00198_n9_α
.Lx00202_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 72]
 mov r8d, 1
 lea r9, [r12 + 16]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00202_3
.Lx00202_2:
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
.Lx00202_3:
 jmp xchain00198_n9_α
 xchain00198_n7_β:
 jmp proc_Time___ω
# IR_ASSIGN gva
 xchain00198_n8_α:
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [rbx + 432], rax
 mov qword ptr [rbx + 440], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00198_n10_α
 xchain00198_n8_β:
 jmp xchain00198_n3_α
# IR_RETURN
 xchain00198_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Time___γ
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00198_n10_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
 lea rax, [rip + xchain00198_n3_α]
 mov qword ptr [r12 + 96], rax
 jmp xchain00198_n3_α
 xchain00198_n10_β:
 jmp xchain00198_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00198_n11_α:
 jmp qword ptr [r12 + 96]
 xchain00198_n11_β:
 jmp xchain00198_n3_α
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
  .Lgvan14: .string "Save__"
  .Lgvan15: .string "Saves__"
  .Lgvan16: .string "Name__"
  .Lgvan17: .string "getword__STATIC__i"
  .Lgvan18: .string "getword__STATIC__nonwhite"
  .Lgvan19: .string "getword__INITFLAG__0"
  .Lgvan20: .string "format__INITFLAG__0"
  .Lgvan21: .string "Collections____STATIC__labels"
  .Lgvan22: .string "Collections____INITFLAG__0"
  .Lgvan23: .string "Regions____STATIC__labels"
  .Lgvan24: .string "Regions____INITFLAG__0"
  .Lgvan25: .string "Storage____STATIC__labels"
  .Lgvan26: .string "Storage____INITFLAG__0"
  .Lgvan27: .string "Time____STATIC__lasttime"
  .Lgvan28: .string "Time____INITFLAG__0"
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
  .quad .Lgvan18
  .quad .Lgvan19
  .quad .Lgvan20
  .quad .Lgvan21
  .quad .Lgvan22
  .quad .Lgvan23
  .quad .Lgvan24
  .quad .Lgvan25
  .quad .Lgvan26
  .quad .Lgvan27
  .quad .Lgvan28
  .section .bss
  .align 16
__gva: .space 464, 0
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
  mov edx, 29
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
 mov qword ptr [r12 + 6064], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain00203_n0_α:
 mov qword ptr [r12 + 6048], 1
 mov rax, qword ptr [rip + .Lx00204_0]
 mov qword ptr [r12 + 6056], rax
 jmp xchain00203_n1_α
 xchain00203_n0_β:
 jmp xchain00203_n2_α
.Lx00204_0:
 .quad .Lx00204_0_s
.Lx00204_0_s:
 .string "ipxref"
 xchain00203_n1_α:
  .section .rodata
  .Lcall00205_pname: .string "Init__"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 6048]
 mov rdx, qword ptr [r12 + 6056]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00205_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 6016], rax
 mov qword ptr [r12 + 6024], rdx
 cmp eax, 99
 je xchain00203_n2_α
 jmp xchain00203_n2_α
xchain00203_n1_β:
 jmp xchain00203_n2_α
# IR_LIT_STRING
 xchain00203_n2_α:
 mov qword ptr [r12 + 5568], 1
 mov rax, qword ptr [rip + .Lx00206_0]
 mov qword ptr [r12 + 5576], rax
 jmp xchain00203_n3_α
 xchain00203_n2_β:
 jmp xchain00203_n32_α
.Lx00206_0:
 .quad .Lx00206_0_s
.Lx00206_0_s:
 .string "break"
# IR_LIT_STRING
 xchain00203_n3_α:
 mov qword ptr [r12 + 5584], 1
 mov rax, qword ptr [rip + .Lx00207_0]
 mov qword ptr [r12 + 5592], rax
 jmp xchain00203_n4_α
 xchain00203_n3_β:
 jmp xchain00203_n32_α
.Lx00207_0:
 .quad .Lx00207_0_s
.Lx00207_0_s:
 .string "by"
# IR_LIT_STRING
 xchain00203_n4_α:
 mov qword ptr [r12 + 5600], 1
 mov rax, qword ptr [rip + .Lx00208_0]
 mov qword ptr [r12 + 5608], rax
 jmp xchain00203_n5_α
 xchain00203_n4_β:
 jmp xchain00203_n32_α
.Lx00208_0:
 .quad .Lx00208_0_s
.Lx00208_0_s:
 .string "case"
# IR_LIT_STRING
 xchain00203_n5_α:
 mov qword ptr [r12 + 5616], 1
 mov rax, qword ptr [rip + .Lx00209_0]
 mov qword ptr [r12 + 5624], rax
 jmp xchain00203_n6_α
 xchain00203_n5_β:
 jmp xchain00203_n32_α
.Lx00209_0:
 .quad .Lx00209_0_s
.Lx00209_0_s:
 .string "default"
# IR_LIT_STRING
 xchain00203_n6_α:
 mov qword ptr [r12 + 5632], 1
 mov rax, qword ptr [rip + .Lx00210_0]
 mov qword ptr [r12 + 5640], rax
 jmp xchain00203_n7_α
 xchain00203_n6_β:
 jmp xchain00203_n32_α
.Lx00210_0:
 .quad .Lx00210_0_s
.Lx00210_0_s:
 .string "do"
# IR_LIT_STRING
 xchain00203_n7_α:
 mov qword ptr [r12 + 5648], 1
 mov rax, qword ptr [rip + .Lx00211_0]
 mov qword ptr [r12 + 5656], rax
 jmp xchain00203_n8_α
 xchain00203_n7_β:
 jmp xchain00203_n32_α
.Lx00211_0:
 .quad .Lx00211_0_s
.Lx00211_0_s:
 .string "dynamic"
# IR_LIT_STRING
 xchain00203_n8_α:
 mov qword ptr [r12 + 5664], 1
 mov rax, qword ptr [rip + .Lx00212_0]
 mov qword ptr [r12 + 5672], rax
 jmp xchain00203_n9_α
 xchain00203_n8_β:
 jmp xchain00203_n32_α
.Lx00212_0:
 .quad .Lx00212_0_s
.Lx00212_0_s:
 .string "else"
# IR_LIT_STRING
 xchain00203_n9_α:
 mov qword ptr [r12 + 5680], 1
 mov rax, qword ptr [rip + .Lx00213_0]
 mov qword ptr [r12 + 5688], rax
 jmp xchain00203_n10_α
 xchain00203_n9_β:
 jmp xchain00203_n32_α
.Lx00213_0:
 .quad .Lx00213_0_s
.Lx00213_0_s:
 .string "end"
# IR_LIT_STRING
 xchain00203_n10_α:
 mov qword ptr [r12 + 5696], 1
 mov rax, qword ptr [rip + .Lx00214_0]
 mov qword ptr [r12 + 5704], rax
 jmp xchain00203_n11_α
 xchain00203_n10_β:
 jmp xchain00203_n32_α
.Lx00214_0:
 .quad .Lx00214_0_s
.Lx00214_0_s:
 .string "every"
# IR_LIT_STRING
 xchain00203_n11_α:
 mov qword ptr [r12 + 5712], 1
 mov rax, qword ptr [rip + .Lx00215_0]
 mov qword ptr [r12 + 5720], rax
 jmp xchain00203_n12_α
 xchain00203_n11_β:
 jmp xchain00203_n32_α
.Lx00215_0:
 .quad .Lx00215_0_s
.Lx00215_0_s:
 .string "fail"
# IR_LIT_STRING
 xchain00203_n12_α:
 mov qword ptr [r12 + 5728], 1
 mov rax, qword ptr [rip + .Lx00216_0]
 mov qword ptr [r12 + 5736], rax
 jmp xchain00203_n13_α
 xchain00203_n12_β:
 jmp xchain00203_n32_α
.Lx00216_0:
 .quad .Lx00216_0_s
.Lx00216_0_s:
 .string "global"
# IR_LIT_STRING
 xchain00203_n13_α:
 mov qword ptr [r12 + 5744], 1
 mov rax, qword ptr [rip + .Lx00217_0]
 mov qword ptr [r12 + 5752], rax
 jmp xchain00203_n14_α
 xchain00203_n13_β:
 jmp xchain00203_n32_α
.Lx00217_0:
 .quad .Lx00217_0_s
.Lx00217_0_s:
 .string "if"
# IR_LIT_STRING
 xchain00203_n14_α:
 mov qword ptr [r12 + 5760], 1
 mov rax, qword ptr [rip + .Lx00218_0]
 mov qword ptr [r12 + 5768], rax
 jmp xchain00203_n15_α
 xchain00203_n14_β:
 jmp xchain00203_n32_α
.Lx00218_0:
 .quad .Lx00218_0_s
.Lx00218_0_s:
 .string "initial"
# IR_LIT_STRING
 xchain00203_n15_α:
 mov qword ptr [r12 + 5776], 1
 mov rax, qword ptr [rip + .Lx00219_0]
 mov qword ptr [r12 + 5784], rax
 jmp xchain00203_n16_α
 xchain00203_n15_β:
 jmp xchain00203_n32_α
.Lx00219_0:
 .quad .Lx00219_0_s
.Lx00219_0_s:
 .string "link"
# IR_LIT_STRING
 xchain00203_n16_α:
 mov qword ptr [r12 + 5792], 1
 mov rax, qword ptr [rip + .Lx00220_0]
 mov qword ptr [r12 + 5800], rax
 jmp xchain00203_n17_α
 xchain00203_n16_β:
 jmp xchain00203_n32_α
.Lx00220_0:
 .quad .Lx00220_0_s
.Lx00220_0_s:
 .string "local"
# IR_LIT_STRING
 xchain00203_n17_α:
 mov qword ptr [r12 + 5808], 1
 mov rax, qword ptr [rip + .Lx00221_0]
 mov qword ptr [r12 + 5816], rax
 jmp xchain00203_n18_α
 xchain00203_n17_β:
 jmp xchain00203_n32_α
.Lx00221_0:
 .quad .Lx00221_0_s
.Lx00221_0_s:
 .string "next"
# IR_LIT_STRING
 xchain00203_n18_α:
 mov qword ptr [r12 + 5824], 1
 mov rax, qword ptr [rip + .Lx00222_0]
 mov qword ptr [r12 + 5832], rax
 jmp xchain00203_n19_α
 xchain00203_n18_β:
 jmp xchain00203_n32_α
.Lx00222_0:
 .quad .Lx00222_0_s
.Lx00222_0_s:
 .string "not"
# IR_LIT_STRING
 xchain00203_n19_α:
 mov qword ptr [r12 + 5840], 1
 mov rax, qword ptr [rip + .Lx00223_0]
 mov qword ptr [r12 + 5848], rax
 jmp xchain00203_n20_α
 xchain00203_n19_β:
 jmp xchain00203_n32_α
.Lx00223_0:
 .quad .Lx00223_0_s
.Lx00223_0_s:
 .string "of"
# IR_LIT_STRING
 xchain00203_n20_α:
 mov qword ptr [r12 + 5856], 1
 mov rax, qword ptr [rip + .Lx00224_0]
 mov qword ptr [r12 + 5864], rax
 jmp xchain00203_n21_α
 xchain00203_n20_β:
 jmp xchain00203_n32_α
.Lx00224_0:
 .quad .Lx00224_0_s
.Lx00224_0_s:
 .string "procedure"
# IR_LIT_STRING
 xchain00203_n21_α:
 mov qword ptr [r12 + 5872], 1
 mov rax, qword ptr [rip + .Lx00225_0]
 mov qword ptr [r12 + 5880], rax
 jmp xchain00203_n22_α
 xchain00203_n21_β:
 jmp xchain00203_n32_α
.Lx00225_0:
 .quad .Lx00225_0_s
.Lx00225_0_s:
 .string "record"
# IR_LIT_STRING
 xchain00203_n22_α:
 mov qword ptr [r12 + 5888], 1
 mov rax, qword ptr [rip + .Lx00226_0]
 mov qword ptr [r12 + 5896], rax
 jmp xchain00203_n23_α
 xchain00203_n22_β:
 jmp xchain00203_n32_α
.Lx00226_0:
 .quad .Lx00226_0_s
.Lx00226_0_s:
 .string "repeat"
# IR_LIT_STRING
 xchain00203_n23_α:
 mov qword ptr [r12 + 5904], 1
 mov rax, qword ptr [rip + .Lx00227_0]
 mov qword ptr [r12 + 5912], rax
 jmp xchain00203_n24_α
 xchain00203_n23_β:
 jmp xchain00203_n32_α
.Lx00227_0:
 .quad .Lx00227_0_s
.Lx00227_0_s:
 .string "return"
# IR_LIT_STRING
 xchain00203_n24_α:
 mov qword ptr [r12 + 5920], 1
 mov rax, qword ptr [rip + .Lx00228_0]
 mov qword ptr [r12 + 5928], rax
 jmp xchain00203_n25_α
 xchain00203_n24_β:
 jmp xchain00203_n32_α
.Lx00228_0:
 .quad .Lx00228_0_s
.Lx00228_0_s:
 .string "static"
# IR_LIT_STRING
 xchain00203_n25_α:
 mov qword ptr [r12 + 5936], 1
 mov rax, qword ptr [rip + .Lx00229_0]
 mov qword ptr [r12 + 5944], rax
 jmp xchain00203_n26_α
 xchain00203_n25_β:
 jmp xchain00203_n32_α
.Lx00229_0:
 .quad .Lx00229_0_s
.Lx00229_0_s:
 .string "suspend"
# IR_LIT_STRING
 xchain00203_n26_α:
 mov qword ptr [r12 + 5952], 1
 mov rax, qword ptr [rip + .Lx00230_0]
 mov qword ptr [r12 + 5960], rax
 jmp xchain00203_n27_α
 xchain00203_n26_β:
 jmp xchain00203_n32_α
.Lx00230_0:
 .quad .Lx00230_0_s
.Lx00230_0_s:
 .string "then"
# IR_LIT_STRING
 xchain00203_n27_α:
 mov qword ptr [r12 + 5968], 1
 mov rax, qword ptr [rip + .Lx00231_0]
 mov qword ptr [r12 + 5976], rax
 jmp xchain00203_n28_α
 xchain00203_n27_β:
 jmp xchain00203_n32_α
.Lx00231_0:
 .quad .Lx00231_0_s
.Lx00231_0_s:
 .string "to"
# IR_LIT_STRING
 xchain00203_n28_α:
 mov qword ptr [r12 + 5984], 1
 mov rax, qword ptr [rip + .Lx00232_0]
 mov qword ptr [r12 + 5992], rax
 jmp xchain00203_n29_α
 xchain00203_n28_β:
 jmp xchain00203_n32_α
.Lx00232_0:
 .quad .Lx00232_0_s
.Lx00232_0_s:
 .string "until"
# IR_LIT_STRING
 xchain00203_n29_α:
 mov qword ptr [r12 + 6000], 1
 mov rax, qword ptr [rip + .Lx00233_0]
 mov qword ptr [r12 + 6008], rax
 jmp xchain00203_n30_α
 xchain00203_n29_β:
 jmp xchain00203_n32_α
.Lx00233_0:
 .quad .Lx00233_0_s
.Lx00233_0_s:
 .string "while"
# IR_MAKE_LIST
 xchain00203_n30_α:
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
 jmp xchain00203_n31_α
 xchain00203_n30_β:
 jmp xchain00203_n32_α
# IR_ASSIGN gva
 xchain00203_n31_α:
 mov rax, qword ptr [r12 + 5104]
 mov rdx, qword ptr [r12 + 5112]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 5088], rax
 mov qword ptr [r12 + 5096], rdx
 jmp xchain00203_n32_α
 xchain00203_n31_β:
 jmp xchain00203_n32_α
# IR_LIT_INTEGER
 xchain00203_n32_α:
 mov qword ptr [r12 + 5072], 6
 mov rax, qword ptr [rip + .Lx00234_0]
 mov qword ptr [r12 + 5080], rax
 jmp xchain00203_n33_α
 xchain00203_n32_β:
 jmp xchain00203_n34_α
.Lx00234_0:
 .quad 0
# IR_ASSIGN gva
 xchain00203_n33_α:
 mov rax, qword ptr [r12 + 5072]
 mov rdx, qword ptr [r12 + 5080]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 5056], rax
 mov qword ptr [r12 + 5064], rdx
 jmp xchain00203_n34_α
 xchain00203_n33_β:
 jmp xchain00203_n34_α
 xchain00203_n34_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn945: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn945]
 lea rsi, [r12 + 5056]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5040], rax
 mov qword ptr [r12 + 5048], rdx
 cmp eax, 99
 je xchain00203_n36_α
 jmp xchain00203_n35_α
 xchain00203_n34_β:
 jmp xchain00203_n36_α
# IR_ASSIGN gva
 xchain00203_n35_α:
 mov rax, qword ptr [r12 + 5040]
 mov rdx, qword ptr [r12 + 5048]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 5024], rax
 mov qword ptr [r12 + 5032], rdx
 jmp xchain00203_n36_α
 xchain00203_n35_β:
 jmp xchain00203_n36_α
# IR_MAKE_LIST
 xchain00203_n36_α:
 lea rdi, [r12 + 5024]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 5008], rax
 mov qword ptr [r12 + 5016], rdx
 jmp xchain00203_n37_α
 xchain00203_n36_β:
 jmp xchain00203_n38_α
 xchain00203_n37_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 5008]
 mov rdx, qword ptr [r12 + 5016]
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 mov qword ptr [r12 + 4992], rax
 mov qword ptr [r12 + 5000], rdx
 jmp xchain00203_n38_α
 xchain00203_n37_β:
 jmp xchain00203_n38_α
# IR_MAKE_LIST
 xchain00203_n38_α:
 lea rdi, [r12 + 4992]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 4976], rax
 mov qword ptr [r12 + 4984], rdx
 jmp xchain00203_n39_α
 xchain00203_n38_β:
 jmp xchain00203_n40_α
# IR_ASSIGN gva
 xchain00203_n39_α:
 mov rax, qword ptr [r12 + 4976]
 mov rdx, qword ptr [r12 + 4984]
 mov qword ptr [rbx + 192], rax
 mov qword ptr [rbx + 200], rdx
 mov qword ptr [r12 + 4960], rax
 mov qword ptr [r12 + 4968], rdx
 jmp xchain00203_n40_α
 xchain00203_n39_β:
 jmp xchain00203_n40_α
# IR_MAKE_LIST
 xchain00203_n40_α:
 lea rdi, [r12 + 4960]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 4944], rax
 mov qword ptr [r12 + 4952], rdx
 jmp xchain00203_n41_α
 xchain00203_n40_β:
 jmp xchain00203_n42_α
# IR_ASSIGN gva
 xchain00203_n41_α:
 mov rax, qword ptr [r12 + 4944]
 mov rdx, qword ptr [r12 + 4952]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 4928], rax
 mov qword ptr [r12 + 4936], rdx
 jmp xchain00203_n42_α
 xchain00203_n41_β:
 jmp xchain00203_n42_α
# IR_LIT_STRING
 xchain00203_n42_α:
 mov qword ptr [r12 + 4912], 1
 mov rax, qword ptr [rip + .Lx00235_0]
 mov qword ptr [r12 + 4920], rax
 jmp xchain00203_n43_α
 xchain00203_n42_β:
 jmp xchain00203_n44_α
.Lx00235_0:
 .quad .Lx00235_0_s
.Lx00235_0_s:
 .string "global"
 xchain00203_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 4912]
 mov rdx, qword ptr [r12 + 4920]
 mov qword ptr [r12 + 6144], rax
 mov qword ptr [r12 + 6152], rdx
 mov qword ptr [r12 + 4896], rax
 mov qword ptr [r12 + 4904], rdx
 jmp xchain00203_n44_α
 xchain00203_n43_β:
 jmp xchain00203_n44_α
# IR_LIT_CHARSET
 xchain00203_n44_α:
 mov qword ptr [r12 + 4864], 1
 mov dword ptr [r12 + 4868], -1
 mov rax, qword ptr [rip + .Lx00236_0]
 mov qword ptr [r12 + 4872], rax
 jmp xchain00203_n45_α
 xchain00203_n44_β:
 jmp xchain00203_n48_α
.Lx00236_0:
 .quad .Lx00236_0_s
.Lx00236_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
# IR_LIT_CHARSET
 xchain00203_n45_α:
 mov qword ptr [r12 + 4880], 1
 mov dword ptr [r12 + 4884], -1
 mov rax, qword ptr [rip + .Lx00237_0]
 mov qword ptr [r12 + 4888], rax
 jmp xchain00203_n46_α
 xchain00203_n45_β:
 jmp xchain00203_n48_α
.Lx00237_0:
 .quad .Lx00237_0_s
.Lx00237_0_s:
 .string "_"
 xchain00203_n46_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 4864]
 mov rsi, qword ptr [r12 + 4872]
 mov rdx, qword ptr [r12 + 4880]
 mov rcx, qword ptr [r12 + 4888]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00203_n48_α
 mov qword ptr [r12 + 4848], rax
 mov qword ptr [r12 + 4856], rdx
 jmp xchain00203_n47_α
 xchain00203_n46_β:
 jmp xchain00203_n48_α
# IR_ASSIGN gva
 xchain00203_n47_α:
 mov rax, qword ptr [r12 + 4848]
 mov rdx, qword ptr [r12 + 4856]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 4832], rax
 mov qword ptr [r12 + 4840], rdx
 jmp xchain00203_n48_α
 xchain00203_n47_β:
 jmp xchain00203_n48_α
# IR_VAR
 xchain00203_n48_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 4800], rax
 mov qword ptr [r12 + 4808], rdx
 jmp xchain00203_n49_α
 xchain00203_n48_β:
 jmp xchain00203_n50_α
# IR_LIT_CHARSET
 xchain00203_n49_α:
 mov qword ptr [r12 + 4816], 1
 mov dword ptr [r12 + 4820], -1
 mov rax, qword ptr [rip + .Lx00238_0]
 mov qword ptr [r12 + 4824], rax
 jmp xchain00203_n51_α
 xchain00203_n49_β:
 jmp xchain00203_n50_α
.Lx00238_0:
 .quad .Lx00238_0_s
.Lx00238_0_s:
 .string "0123456789"
# IR_VAR
 xchain00203_n50_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 4736], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 4744], rax
 jmp xchain00203_n52_α
 xchain00203_n50_β:
 jmp xchain00203_n53_α
 xchain00203_n51_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 4800]
 mov rsi, qword ptr [r12 + 4808]
 mov rdx, qword ptr [r12 + 4816]
 mov rcx, qword ptr [r12 + 4824]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00203_n50_α
 mov qword ptr [r12 + 4784], rax
 mov qword ptr [r12 + 4792], rdx
 jmp xchain00203_n54_α
 xchain00203_n51_β:
 jmp xchain00203_n50_α
# IR_LIT_STRING
 xchain00203_n52_α:
 mov qword ptr [r12 + 4752], 1
 mov rax, qword ptr [rip + .Lx00239_0]
 mov qword ptr [r12 + 4760], rax
 jmp xchain00203_n55_α
 xchain00203_n52_β:
 jmp xchain00203_n53_α
.Lx00239_0:
 .quad .Lx00239_0_s
.Lx00239_0_s:
 .string "qxw+l+c+"
# IR_VAR_REF
 xchain00203_n53_α:
 lea rdi, [r12 + 6192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4608], rax
 mov qword ptr [r12 + 4616], rdx
 jmp xchain00203_n56_α
 xchain00203_n53_β:
 jmp xchain00203_n60_α
# IR_ASSIGN gva
 xchain00203_n54_α:
 mov rax, qword ptr [r12 + 4784]
 mov rdx, qword ptr [r12 + 4792]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 4768], rax
 mov qword ptr [r12 + 4776], rdx
 jmp xchain00203_n50_α
 xchain00203_n54_β:
 jmp xchain00203_n50_α
 xchain00203_n55_α:
  .section .rodata
  .Lcall00240_pname: .string "options"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4736]
 mov rdx, qword ptr [r12 + 4744]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 4752]
 mov rdx, qword ptr [r12 + 4760]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00240_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4688], rax
 mov qword ptr [r12 + 4696], rdx
 cmp eax, 99
 je xchain00203_n53_α
 jmp xchain00203_n57_α
xchain00203_n55_β:
 jmp xchain00203_n53_α
# IR_LIT_STRING
 xchain00203_n56_α:
 mov qword ptr [r12 + 4624], 1
 mov rax, qword ptr [rip + .Lx00241_0]
 mov qword ptr [r12 + 4632], rax
 jmp xchain00203_n58_α
 xchain00203_n56_β:
 jmp xchain00203_n60_α
.Lx00241_0:
 .quad .Lx00241_0_s
.Lx00241_0_s:
 .string "q"
 xchain00203_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 4688]
 mov rdx, qword ptr [r12 + 4696]
 mov qword ptr [r12 + 6192], rax
 mov qword ptr [r12 + 6200], rdx
 mov qword ptr [r12 + 4672], rax
 mov qword ptr [r12 + 4680], rdx
 jmp xchain00203_n53_α
 xchain00203_n57_β:
 jmp xchain00203_n53_α
# IR_SUBSCRIPT x[i] variable
 xchain00203_n58_α:
 mov rdi, qword ptr [r12 + 4608]
 mov rsi, qword ptr [r12 + 4616]
 mov rdx, qword ptr [r12 + 4624]
 mov rcx, qword ptr [r12 + 4632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00203_n60_α
 mov qword ptr [r12 + 4640], rax
 mov qword ptr [r12 + 4648], rdx
 jmp xchain00203_n59_α
 xchain00203_n58_β:
 jmp xchain00203_n60_α
# IR_DEREF variable -> value
 xchain00203_n59_α:
 mov rdi, qword ptr [r12 + 4640]
 mov rsi, qword ptr [r12 + 4648]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00203_n60_α
 mov qword ptr [r12 + 4656], rax
 mov qword ptr [r12 + 4664], rdx
 jmp xchain00203_n61_α
 xchain00203_n59_β:
 jmp xchain00203_n60_α
# IR_VAR_REF
 xchain00203_n60_α:
 lea rdi, [r12 + 6192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4464], rax
 mov qword ptr [r12 + 4472], rdx
 jmp xchain00203_n62_α
 xchain00203_n60_β:
 jmp xchain00203_n67_α
# IR_UNOP
 xchain00203_n61_α:
 mov eax, dword ptr [r12 + 4656]
 cmp eax, 99
 je xchain00203_n60_α
 cmp eax, 0
 je xchain00203_n60_α
 mov rax, qword ptr [r12 + 4656]
 mov qword ptr [r12 + 4592], rax
 mov rax, qword ptr [r12 + 4664]
 mov qword ptr [r12 + 4600], rax
 jmp xchain00203_n63_α
 xchain00203_n61_β:
 jmp xchain00203_n60_α
# IR_LIT_STRING
 xchain00203_n62_α:
 mov qword ptr [r12 + 4480], 1
 mov rax, qword ptr [rip + .Lx00242_0]
 mov qword ptr [r12 + 4488], rax
 jmp xchain00203_n64_α
 xchain00203_n62_β:
 jmp xchain00203_n67_α
.Lx00242_0:
 .quad .Lx00242_0_s
.Lx00242_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain00203_n63_α:
 mov qword ptr [r12 + 4576], 6
 mov rax, qword ptr [rip + .Lx00243_0]
 mov qword ptr [r12 + 4584], rax
 jmp xchain00203_n65_α
 xchain00203_n63_β:
 jmp xchain00203_n60_α
.Lx00243_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00203_n64_α:
 mov rdi, qword ptr [r12 + 4464]
 mov rsi, qword ptr [r12 + 4472]
 mov rdx, qword ptr [r12 + 4480]
 mov rcx, qword ptr [r12 + 4488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00203_n67_α
 mov qword ptr [r12 + 4496], rax
 mov qword ptr [r12 + 4504], rdx
 jmp xchain00203_n66_α
 xchain00203_n64_β:
 jmp xchain00203_n67_α
# IR_ASSIGN gva
 xchain00203_n65_α:
 mov rax, qword ptr [r12 + 4576]
 mov rdx, qword ptr [r12 + 4584]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 4560], rax
 mov qword ptr [r12 + 4568], rdx
 jmp xchain00203_n68_α
 xchain00203_n65_β:
 jmp xchain00203_n60_α
# IR_DEREF variable -> value
 xchain00203_n66_α:
 mov rdi, qword ptr [r12 + 4496]
 mov rsi, qword ptr [r12 + 4504]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00203_n67_α
 mov qword ptr [r12 + 4512], rax
 mov qword ptr [r12 + 4520], rdx
 jmp xchain00203_n69_α
 xchain00203_n66_β:
 jmp xchain00203_n67_α
# IR_VAR_REF
 xchain00203_n67_α:
 lea rdi, [r12 + 6192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 jmp xchain00203_n70_α
 xchain00203_n67_β:
 jmp xchain00203_n76_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n68_α:
 mov rax, qword ptr [r12 + 4560]
 mov qword ptr [r12 + 4528], rax
 mov rax, qword ptr [r12 + 4568]
 mov qword ptr [r12 + 4536], rax
 lea rax, [rip + xchain00203_n60_α]
 mov qword ptr [r12 + 4544], rax
 jmp xchain00203_n60_α
 xchain00203_n68_β:
 jmp xchain00203_n60_α
# IR_UNOP
 xchain00203_n69_α:
 mov eax, dword ptr [r12 + 4512]
 cmp eax, 99
 je xchain00203_n67_α
 cmp eax, 0
 je xchain00203_n67_α
 mov rax, qword ptr [r12 + 4512]
 mov qword ptr [r12 + 4448], rax
 mov rax, qword ptr [r12 + 4520]
 mov qword ptr [r12 + 4456], rax
 jmp xchain00203_n72_α
 xchain00203_n69_β:
 jmp xchain00203_n67_α
# IR_LIT_STRING
 xchain00203_n70_α:
 mov qword ptr [r12 + 4336], 1
 mov rax, qword ptr [rip + .Lx00244_0]
 mov qword ptr [r12 + 4344], rax
 jmp xchain00203_n73_α
 xchain00203_n70_β:
 jmp xchain00203_n76_α
.Lx00244_0:
 .quad .Lx00244_0_s
.Lx00244_0_s:
 .string "w"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00203_n71_α:
 jmp qword ptr [r12 + 4544]
 xchain00203_n71_β:
 jmp xchain00203_n60_α
# IR_LIT_INTEGER
 xchain00203_n72_α:
 mov qword ptr [r12 + 4432], 6
 mov rax, qword ptr [rip + .Lx00245_0]
 mov qword ptr [r12 + 4440], rax
 jmp xchain00203_n74_α
 xchain00203_n72_β:
 jmp xchain00203_n67_α
.Lx00245_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00203_n73_α:
 mov rdi, qword ptr [r12 + 4320]
 mov rsi, qword ptr [r12 + 4328]
 mov rdx, qword ptr [r12 + 4336]
 mov rcx, qword ptr [r12 + 4344]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00203_n76_α
 mov qword ptr [r12 + 4352], rax
 mov qword ptr [r12 + 4360], rdx
 jmp xchain00203_n75_α
 xchain00203_n73_β:
 jmp xchain00203_n76_α
# IR_ASSIGN gva
 xchain00203_n74_α:
 mov rax, qword ptr [r12 + 4432]
 mov rdx, qword ptr [r12 + 4440]
 mov qword ptr [rbx + 128], rax
 mov qword ptr [rbx + 136], rdx
 mov qword ptr [r12 + 4416], rax
 mov qword ptr [r12 + 4424], rdx
 jmp xchain00203_n77_α
 xchain00203_n74_β:
 jmp xchain00203_n67_α
# IR_DEREF variable -> value
 xchain00203_n75_α:
 mov rdi, qword ptr [r12 + 4352]
 mov rsi, qword ptr [r12 + 4360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00203_n76_α
 mov qword ptr [r12 + 4368], rax
 mov qword ptr [r12 + 4376], rdx
 jmp xchain00203_n78_α
 xchain00203_n75_β:
 jmp xchain00203_n76_α
# IR_VAR_REF
 xchain00203_n76_α:
 lea rdi, [r12 + 6192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4224], rax
 mov qword ptr [r12 + 4232], rdx
 jmp xchain00203_n79_α
 xchain00203_n76_β:
 jmp xchain00203_n84_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n77_α:
 mov rax, qword ptr [r12 + 4416]
 mov qword ptr [r12 + 4384], rax
 mov rax, qword ptr [r12 + 4424]
 mov qword ptr [r12 + 4392], rax
 lea rax, [rip + xchain00203_n67_α]
 mov qword ptr [r12 + 4400], rax
 jmp xchain00203_n67_α
 xchain00203_n77_β:
 jmp xchain00203_n67_α
# IR_UNOP
 xchain00203_n78_α:
 mov eax, dword ptr [r12 + 4368]
 cmp eax, 99
 je xchain00203_n76_α
 cmp eax, 0
 je xchain00203_n76_α
 mov rax, qword ptr [r12 + 4368]
 mov qword ptr [r12 + 4304], rax
 mov rax, qword ptr [r12 + 4376]
 mov qword ptr [r12 + 4312], rax
 jmp xchain00203_n81_α
 xchain00203_n78_β:
 jmp xchain00203_n76_α
# IR_LIT_STRING
 xchain00203_n79_α:
 mov qword ptr [r12 + 4240], 1
 mov rax, qword ptr [rip + .Lx00246_0]
 mov qword ptr [r12 + 4248], rax
 jmp xchain00203_n82_α
 xchain00203_n79_β:
 jmp xchain00203_n84_α
.Lx00246_0:
 .quad .Lx00246_0_s
.Lx00246_0_s:
 .string "l"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00203_n80_α:
 jmp qword ptr [r12 + 4400]
 xchain00203_n80_β:
 jmp xchain00203_n67_α
# IR_ASSIGN gva
 xchain00203_n81_α:
 mov rax, qword ptr [r12 + 4304]
 mov rdx, qword ptr [r12 + 4312]
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rdx
 mov qword ptr [r12 + 4288], rax
 mov qword ptr [r12 + 4296], rdx
 jmp xchain00203_n76_α
 xchain00203_n81_β:
 jmp xchain00203_n76_α
# IR_SUBSCRIPT x[i] variable
 xchain00203_n82_α:
 mov rdi, qword ptr [r12 + 4224]
 mov rsi, qword ptr [r12 + 4232]
 mov rdx, qword ptr [r12 + 4240]
 mov rcx, qword ptr [r12 + 4248]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00203_n84_α
 mov qword ptr [r12 + 4256], rax
 mov qword ptr [r12 + 4264], rdx
 jmp xchain00203_n83_α
 xchain00203_n82_β:
 jmp xchain00203_n84_α
# IR_DEREF variable -> value
 xchain00203_n83_α:
 mov rdi, qword ptr [r12 + 4256]
 mov rsi, qword ptr [r12 + 4264]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00203_n84_α
 mov qword ptr [r12 + 4272], rax
 mov qword ptr [r12 + 4280], rdx
 jmp xchain00203_n85_α
 xchain00203_n83_β:
 jmp xchain00203_n84_α
# IR_VAR_REF
 xchain00203_n84_α:
 lea rdi, [r12 + 6192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4128], rax
 mov qword ptr [r12 + 4136], rdx
 jmp xchain00203_n86_α
 xchain00203_n84_β:
 jmp xchain00203_n90_α
# IR_UNOP
 xchain00203_n85_α:
 mov eax, dword ptr [r12 + 4272]
 cmp eax, 99
 je xchain00203_n84_α
 cmp eax, 0
 je xchain00203_n84_α
 mov rax, qword ptr [r12 + 4272]
 mov qword ptr [r12 + 4208], rax
 mov rax, qword ptr [r12 + 4280]
 mov qword ptr [r12 + 4216], rax
 jmp xchain00203_n87_α
 xchain00203_n85_β:
 jmp xchain00203_n84_α
# IR_LIT_STRING
 xchain00203_n86_α:
 mov qword ptr [r12 + 4144], 1
 mov rax, qword ptr [rip + .Lx00247_0]
 mov qword ptr [r12 + 4152], rax
 jmp xchain00203_n88_α
 xchain00203_n86_β:
 jmp xchain00203_n90_α
.Lx00247_0:
 .quad .Lx00247_0_s
.Lx00247_0_s:
 .string "c"
# IR_ASSIGN gva
 xchain00203_n87_α:
 mov rax, qword ptr [r12 + 4208]
 mov rdx, qword ptr [r12 + 4216]
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rdx
 mov qword ptr [r12 + 4192], rax
 mov qword ptr [r12 + 4200], rdx
 jmp xchain00203_n84_α
 xchain00203_n87_β:
 jmp xchain00203_n84_α
# IR_SUBSCRIPT x[i] variable
 xchain00203_n88_α:
 mov rdi, qword ptr [r12 + 4128]
 mov rsi, qword ptr [r12 + 4136]
 mov rdx, qword ptr [r12 + 4144]
 mov rcx, qword ptr [r12 + 4152]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00203_n90_α
 mov qword ptr [r12 + 4160], rax
 mov qword ptr [r12 + 4168], rdx
 jmp xchain00203_n89_α
 xchain00203_n88_β:
 jmp xchain00203_n90_α
# IR_DEREF variable -> value
 xchain00203_n89_α:
 mov rdi, qword ptr [r12 + 4160]
 mov rsi, qword ptr [r12 + 4168]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00203_n90_α
 mov qword ptr [r12 + 4176], rax
 mov qword ptr [r12 + 4184], rdx
 jmp xchain00203_n91_α
 xchain00203_n89_β:
 jmp xchain00203_n90_α
# IR_VAR_REF
 xchain00203_n90_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4016], rax
 mov qword ptr [r12 + 4024], rdx
 jmp xchain00203_n92_α
 xchain00203_n90_β:
 jmp xchain00203_n96_α
# IR_UNOP
 xchain00203_n91_α:
 mov eax, dword ptr [r12 + 4176]
 cmp eax, 99
 je xchain00203_n90_α
 cmp eax, 0
 je xchain00203_n90_α
 mov rax, qword ptr [r12 + 4176]
 mov qword ptr [r12 + 4112], rax
 mov rax, qword ptr [r12 + 4184]
 mov qword ptr [r12 + 4120], rax
 jmp xchain00203_n93_α
 xchain00203_n91_β:
 jmp xchain00203_n90_α
# IR_LIT_INTEGER
 xchain00203_n92_α:
 mov qword ptr [r12 + 4032], 6
 mov rax, qword ptr [rip + .Lx00248_0]
 mov qword ptr [r12 + 4040], rax
 jmp xchain00203_n94_α
 xchain00203_n92_β:
 jmp xchain00203_n96_α
.Lx00248_0:
 .quad 1
# IR_ASSIGN gva
 xchain00203_n93_α:
 mov rax, qword ptr [r12 + 4112]
 mov rdx, qword ptr [r12 + 4120]
 mov qword ptr [rbx + 176], rax
 mov qword ptr [rbx + 184], rdx
 mov qword ptr [r12 + 4096], rax
 mov qword ptr [r12 + 4104], rdx
 jmp xchain00203_n90_α
 xchain00203_n93_β:
 jmp xchain00203_n90_α
# IR_SUBSCRIPT x[i] variable
 xchain00203_n94_α:
 mov rdi, qword ptr [r12 + 4016]
 mov rsi, qword ptr [r12 + 4024]
 mov rdx, qword ptr [r12 + 4032]
 mov rcx, qword ptr [r12 + 4040]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00203_n96_α
 mov qword ptr [r12 + 4048], rax
 mov qword ptr [r12 + 4056], rdx
 jmp xchain00203_n95_α
 xchain00203_n94_β:
 jmp xchain00203_n96_α
# IR_DEREF variable -> value
 xchain00203_n95_α:
 mov rdi, qword ptr [r12 + 4048]
 mov rsi, qword ptr [r12 + 4056]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00203_n96_α
 mov qword ptr [r12 + 4064], rax
 mov qword ptr [r12 + 4072], rdx
 jmp xchain00203_n97_α
 xchain00203_n95_β:
 jmp xchain00203_n96_α
 xchain00203_n96_α:
  .section .rodata
  .Lcall00163_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00163_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain00203_n99_α
 jmp xchain00203_n98_α
xchain00203_n96_β:
 jmp xchain00203_n99_α
# IR_LIT_STRING
 xchain00203_n97_α:
 mov qword ptr [r12 + 4080], 1
 mov rax, qword ptr [rip + .Lx00249_0]
 mov qword ptr [r12 + 4088], rax
 jmp xchain00203_n00020_α
 xchain00203_n97_β:
 jmp xchain00203_n96_α
.Lx00249_0:
 .quad .Lx00249_0_s
.Lx00249_0_s:
 .string "r"
 xchain00203_n98_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 752]
 mov rdx, qword ptr [r12 + 760]
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00203_n00024_α
 xchain00203_n98_β:
 jmp xchain00203_n99_α
# IR_VAR
 xchain00203_n99_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00203_n00026_α
 xchain00203_n99_β:
 jmp xchain00203_n00027_α
 xchain00203_n00020_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4064] -> [zr+3984]
 mov rax, qword ptr [r12 + 4064]
 mov qword ptr [r12 + 3984], rax
 mov rax, qword ptr [r12 + 4072]
 mov qword ptr [r12 + 3992], rax
# marshal arg1 = producer-box slot [zr+4080] -> [zr+4000]
 mov rax, qword ptr [r12 + 4080]
 mov qword ptr [r12 + 4000], rax
 mov rax, qword ptr [r12 + 4088]
 mov qword ptr [r12 + 4008], rax
  .section .rodata
  .Lrkfn1026: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1026]
 lea rsi, [r12 + 3984]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3968], rax
 mov qword ptr [r12 + 3976], rdx
 cmp eax, 99
 je xchain00203_n96_α
 jmp xchain00203_n00028_α
 xchain00203_n00020_β:
 jmp xchain00203_n96_α
# IR_VAR
 xchain00203_n00024_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3920], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3928], rax
 jmp xchain00203_n00029_α
 xchain00203_n00024_β:
 jmp xchain00203_n00030_α
 xchain00203_n00026_α:
  .section .rodata
  .Lcall00250_pname: .string "format"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00250_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain00203_n00027_α
 jmp xchain00203_n00039_α
xchain00203_n00026_β:
 jmp xchain00203_n00027_α
# IR_LIT_STRING
 xchain00203_n00027_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx00251_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00203_n00032_α
 xchain00203_n00027_β:
 jmp xchain00203_n00001_α
.Lx00251_0:
 .quad .Lx00251_0_s
.Lx00251_0_s:
 .string "\n\nprocedures:\tlines:\n"
# IR_ASSIGN gva
 xchain00203_n00028_α:
 mov rax, qword ptr [r12 + 3968]
 mov rdx, qword ptr [r12 + 3976]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 3952], rax
 mov qword ptr [r12 + 3960], rdx
 jmp xchain00203_n96_α
 xchain00203_n00028_β:
 jmp xchain00203_n96_α
# IR_LIT_STRING
 xchain00203_n00029_α:
 mov qword ptr [r12 + 3936], 1
 mov rax, qword ptr [rip + .Lx00252_0]
 mov qword ptr [r12 + 3944], rax
 jmp xchain00203_n00034_α
 xchain00203_n00029_β:
 jmp xchain00203_n00030_α
.Lx00252_0:
 .quad .Lx00252_0_s
.Lx00252_0_s:
 .string "link"
# IR_VAR
 xchain00203_n00030_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3872], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3880], rax
 jmp xchain00203_n00035_α
 xchain00203_n00030_β:
 jmp xchain00203_n00036_α
# IR_LIST_BANG
 xchain00203_n00039_α:
 mov qword ptr [r12 + 672], 0
.Lx00253_0:
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 mov rdx, qword ptr [r12 + 672]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp rax, 99
 je xchain00203_n00027_α
 jmp xchain00203_n00037_α
 xchain00203_n00039_β:
 inc qword ptr [r12 + 672]
 jmp .Lx00253_0
 xchain00203_n00032_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+592]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn1038: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1038]
 lea rsi, [r12 + 592]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain00203_n00001_α
 jmp xchain00203_n00001_α
 xchain00203_n00032_β:
 jmp xchain00203_n00001_α
 xchain00203_n00034_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 3936]
 mov rcx, qword ptr [r12 + 3944]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00203_n00030_α
 mov rdi, qword ptr [r12 + 3936]
 mov rsi, qword ptr [r12 + 3944]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3904], rax
 mov qword ptr [r12 + 3912], rdx
 jmp xchain00203_n00031_α
 xchain00203_n00034_β:
 jmp xchain00203_n00030_α
# IR_LIT_STRING
 xchain00203_n00035_α:
 mov qword ptr [r12 + 3888], 1
 mov rax, qword ptr [rip + .Lx00254_0]
 mov qword ptr [r12 + 3896], rax
 jmp xchain00203_n00040_α
 xchain00203_n00035_β:
 jmp xchain00203_n00036_α
.Lx00254_0:
 .quad .Lx00254_0_s
.Lx00254_0_s:
 .string "procedure"
# IR_VAR
 xchain00203_n00036_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3760], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3768], rax
 jmp xchain00203_n00045_α
 xchain00203_n00036_β:
 jmp xchain00203_n00002_α
 xchain00203_n00037_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+640]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn1044: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1044]
 lea rsi, [r12 + 640]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain00203_n00027_α
 jmp xchain00203_n00039_β
 xchain00203_n00037_β:
 jmp xchain00203_n00027_α
# IR_MAKE_LIST
 xchain00203_n00001_α:
 lea rdi, [r12 + 576]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00203_n00041_α
 xchain00203_n00001_β:
 jmp xchain00203_n00047_α
# IR_MAKE_LIST
 xchain00203_n00031_α:
 lea rdi, [r12 + 864]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain00203_n00043_α
 xchain00203_n00031_β:
 jmp xchain00203_n00004_α
 xchain00203_n00040_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 3888]
 mov rcx, qword ptr [r12 + 3896]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00203_n00036_α
 mov rdi, qword ptr [r12 + 3888]
 mov rsi, qword ptr [r12 + 3896]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3856], rax
 mov qword ptr [r12 + 3864], rdx
 jmp xchain00203_n00044_α
 xchain00203_n00040_β:
 jmp xchain00203_n00036_α
# IR_LIT_STRING
 xchain00203_n00045_α:
 mov qword ptr [r12 + 3840], 1
 mov rax, qword ptr [rip + .Lx00255_0]
 mov qword ptr [r12 + 3848], rax
 jmp xchain00203_n00003_α
 xchain00203_n00045_β:
 jmp xchain00203_n00005_α
.Lx00255_0:
 .quad .Lx00255_0_s
.Lx00255_0_s:
 .string "global"
# IR_VAR
 xchain00203_n00002_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3648], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3656], rax
 jmp xchain00203_n00046_α
 xchain00203_n00002_β:
 jmp xchain00203_n00054_α
 xchain00203_n00041_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 6080], rax
 mov qword ptr [r12 + 6088], rdx
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00203_n00047_α
 xchain00203_n00041_β:
 jmp xchain00203_n00047_α
# IR_ASSIGN gva
 xchain00203_n00043_α:
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00203_n00004_α
 xchain00203_n00043_β:
 jmp xchain00203_n00004_α
# IR_VAR
 xchain00203_n00044_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 1224], rax
 jmp xchain00203_n00049_α
 xchain00203_n00044_β:
 jmp xchain00203_n00051_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00003_α:
 mov rax, qword ptr [r12 + 3840]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 3848]
 mov qword ptr [r12 + 3784], rax
 lea rax, [rip + xchain00203_n00005_α]
 mov qword ptr [r12 + 3792], rax
 jmp xchain00203_n00053_α
 xchain00203_n00003_β:
 jmp xchain00203_n00002_α
# IR_LIT_STRING
 xchain00203_n00046_α:
 mov qword ptr [r12 + 3728], 1
 mov rax, qword ptr [rip + .Lx00256_0]
 mov qword ptr [r12 + 3736], rax
 jmp xchain00203_n00055_α
 xchain00203_n00046_β:
 jmp xchain00203_n00070_α
.Lx00256_0:
 .quad .Lx00256_0_s
.Lx00256_0_s:
 .string "local"
# IR_VAR
 xchain00203_n00054_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3600], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3608], rax
 jmp xchain00203_n00056_α
 xchain00203_n00054_β:
 jmp xchain00203_n00057_α
# IR_VAR
 xchain00203_n00047_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 216], rax
 jmp xchain00203_n00058_α
 xchain00203_n00047_β:
 jmp xchain00203_n00060_α
# IR_LIT_STRING
 xchain00203_n00004_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx00257_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain00203_n00061_α
 xchain00203_n00004_β:
 jmp xchain00203_n96_α
.Lx00257_0:
 .quad .Lx00257_0_s
.Lx00257_0_s:
 .string ""
# IR_LIT_STRING
 xchain00203_n00049_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx00258_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00203_n00062_α
 xchain00203_n00049_β:
 jmp xchain00203_n00051_α
.Lx00258_0:
 .quad .Lx00258_0_s
.Lx00258_0_s:
 .string ""
 xchain00203_n00051_α:
  .section .rodata
  .Lcall00172_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00172_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain00203_n99_α
 jmp xchain00203_n00064_α
xchain00203_n00051_β:
 jmp xchain00203_n99_α
 xchain00203_n00053_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 3776]
 mov rcx, qword ptr [r12 + 3784]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00203_n00002_α
 mov rdi, qword ptr [r12 + 3776]
 mov rsi, qword ptr [r12 + 3784]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3744], rax
 mov qword ptr [r12 + 3752], rdx
 jmp xchain00203_n00067_α
 xchain00203_n00053_β:
 jmp xchain00203_n00002_α
# IR_LIT_STRING
 xchain00203_n00005_α:
 mov qword ptr [r12 + 3824], 1
 mov rax, qword ptr [rip + .Lx00259_0]
 mov qword ptr [r12 + 3832], rax
 jmp xchain00203_n00068_α
 xchain00203_n00005_β:
 jmp xchain00203_n00008_α
.Lx00259_0:
 .quad .Lx00259_0_s
.Lx00259_0_s:
 .string "link"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00203_n00052_α:
 jmp qword ptr [r12 + 3792]
 xchain00203_n00052_β:
 jmp xchain00203_n00002_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00055_α:
 mov rax, qword ptr [r12 + 3728]
 mov qword ptr [r12 + 3664], rax
 mov rax, qword ptr [r12 + 3736]
 mov qword ptr [r12 + 3672], rax
 lea rax, [rip + xchain00203_n00070_α]
 mov qword ptr [r12 + 3680], rax
 jmp xchain00203_n00072_α
 xchain00203_n00055_β:
 jmp xchain00203_n00054_α
# IR_LIT_STRING
 xchain00203_n00056_α:
 mov qword ptr [r12 + 3616], 1
 mov rax, qword ptr [rip + .Lx00260_0]
 mov qword ptr [r12 + 3624], rax
 jmp xchain00203_n00073_α
 xchain00203_n00056_β:
 jmp xchain00203_n00057_α
.Lx00260_0:
 .quad .Lx00260_0_s
.Lx00260_0_s:
 .string "end"
# IR_VAR
 xchain00203_n00057_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3520], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3528], rax
 jmp xchain00203_n00074_α
 xchain00203_n00057_β:
 jmp xchain00203_n00075_α
# IR_LIST_BANG
 xchain00203_n00058_α:
 mov qword ptr [r12 + 192], 0
.Lx00261_0:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 192]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp rax, 99
 je xchain00203_n00060_α
 jmp xchain00203_n00077_α
 xchain00203_n00058_β:
 inc qword ptr [r12 + 192]
 jmp .Lx00261_0
# IR_VAR
 xchain00203_n00060_α:
 mov rax, qword ptr [r12 + 6080]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 6088]
 mov qword ptr [r12 + 152], rax
 jmp xchain00203_n00006_α
 xchain00203_n00060_β:
 jmp xchain00203_n00076_α
# IR_ASSIGN gva
 xchain00203_n00061_α:
 mov rax, qword ptr [r12 + 816]
 mov rdx, qword ptr [r12 + 824]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00203_n96_α
 xchain00203_n00061_β:
 jmp xchain00203_n96_α
# IR_VAR
 xchain00203_n00062_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain00203_n00080_α
 xchain00203_n00062_β:
 jmp xchain00203_n00051_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00064_α:
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rax
 lea rax, [rip + xchain00203_n00065_α]
 mov qword ptr [r12 + 1136], rax
 jmp xchain00203_n00082_α
 xchain00203_n00064_β:
 jmp xchain00203_n00262_α
 xchain00203_n00065_α:
 jmp xchain00203_n99_α
xchain00203_n00065_β:
 jmp xchain00203_n99_α
 xchain00203_n00067_α:
  .section .rodata
  .Lcall00263_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00263_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 cmp eax, 99
 je xchain00203_n99_α
 jmp xchain00203_n00084_α
xchain00203_n00067_β:
 jmp xchain00203_n99_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00068_α:
 mov rax, qword ptr [r12 + 3824]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 3832]
 mov qword ptr [r12 + 3784], rax
 lea rax, [rip + xchain00203_n00008_α]
 mov qword ptr [r12 + 3792], rax
 jmp xchain00203_n00053_α
 xchain00203_n00068_β:
 jmp xchain00203_n00002_α
 xchain00203_n00072_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 3664]
 mov rcx, qword ptr [r12 + 3672]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00203_n00054_α
 mov rdi, qword ptr [r12 + 3664]
 mov rsi, qword ptr [r12 + 3672]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3632], rax
 mov qword ptr [r12 + 3640], rdx
 jmp xchain00203_n00009_α
 xchain00203_n00072_β:
 jmp xchain00203_n00054_α
# IR_LIT_STRING
 xchain00203_n00070_α:
 mov qword ptr [r12 + 3712], 1
 mov rax, qword ptr [rip + .Lx00264_0]
 mov qword ptr [r12 + 3720], rax
 jmp xchain00203_n00010_α
 xchain00203_n00070_β:
 jmp xchain00203_n00012_α
.Lx00264_0:
 .quad .Lx00264_0_s
.Lx00264_0_s:
 .string "dynamic"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00203_n00071_α:
 jmp qword ptr [r12 + 3680]
 xchain00203_n00071_β:
 jmp xchain00203_n00054_α
 xchain00203_n00073_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 3616]
 mov rcx, qword ptr [r12 + 3624]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00203_n00057_α
 mov rdi, qword ptr [r12 + 3616]
 mov rsi, qword ptr [r12 + 3624]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3584], rax
 mov qword ptr [r12 + 3592], rdx
 jmp xchain00203_n00087_α
 xchain00203_n00073_β:
 jmp xchain00203_n00057_α
# IR_VAR
 xchain00203_n00074_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 3568], rax
 mov qword ptr [r12 + 3576], rdx
 jmp xchain00203_n00011_α
 xchain00203_n00074_β:
 jmp xchain00203_n00075_α
# IR_VAR
 xchain00203_n00075_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 3488], rax
 mov qword ptr [r12 + 3496], rdx
 jmp xchain00203_n00089_α
 xchain00203_n00075_β:
 jmp xchain00203_n00088_α
 xchain00203_n00077_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 6096], rax
 mov qword ptr [r12 + 6104], rdx
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00203_n00090_α
 xchain00203_n00077_β:
 jmp xchain00203_n00060_α
 xchain00203_n00006_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn1097: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1097]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00203_n00076_α
 jmp xchain00203_n00265_α
 xchain00203_n00006_β:
 jmp xchain00203_n00076_α
 xchain00203_n00076_α:
  .section .rodata
  .Lcall00266_pname: .string "Term__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00266_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain00203_n00076_β:
 jmp main_ω
 xchain00203_n00079_α:
 jmp xchain00203_n96_α
xchain00203_n00079_β:
 jmp xchain00203_n96_α
# IR_LIT_INTEGER
 xchain00203_n00080_α:
 mov qword ptr [r12 + 1328], 6
 mov rax, qword ptr [rip + .Lx00267_0]
 mov qword ptr [r12 + 1336], rax
 jmp xchain00203_n00268_α
 xchain00203_n00080_β:
 jmp xchain00203_n00051_α
.Lx00267_0:
 .quad 0
 xchain00203_n00082_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 6144], rax
 mov qword ptr [r12 + 6152], rdx
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain00203_n00262_α
 xchain00203_n00082_β:
 jmp xchain00203_n00262_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00203_n00007_α:
 jmp qword ptr [r12 + 1136]
 xchain00203_n00007_β:
 jmp xchain00203_n00262_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00084_α:
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 1944], rax
 lea rax, [rip + xchain00203_n00086_α]
 mov qword ptr [r12 + 1952], rax
 jmp xchain00203_n00269_α
 xchain00203_n00084_β:
 jmp xchain00203_n00270_α
 xchain00203_n00086_α:
 jmp xchain00203_n99_α
xchain00203_n00086_β:
 jmp xchain00203_n99_α
# IR_LIT_STRING
 xchain00203_n00008_α:
 mov qword ptr [r12 + 3808], 1
 mov rax, qword ptr [rip + .Lx00271_0]
 mov qword ptr [r12 + 3816], rax
 jmp xchain00203_n00272_α
 xchain00203_n00008_β:
 jmp xchain00203_n00002_α
.Lx00271_0:
 .quad .Lx00271_0_s
.Lx00271_0_s:
 .string "record"
 xchain00203_n00009_α:
  .section .rodata
  .Lcall00273_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00273_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 cmp eax, 99
 je xchain00203_n99_α
 jmp xchain00203_n00274_α
xchain00203_n00009_β:
 jmp xchain00203_n99_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00010_α:
 mov rax, qword ptr [r12 + 3712]
 mov qword ptr [r12 + 3664], rax
 mov rax, qword ptr [r12 + 3720]
 mov qword ptr [r12 + 3672], rax
 lea rax, [rip + xchain00203_n00012_α]
 mov qword ptr [r12 + 3680], rax
 jmp xchain00203_n00072_α
 xchain00203_n00010_β:
 jmp xchain00203_n00054_α
# IR_LIT_STRING
 xchain00203_n00087_α:
 mov qword ptr [r12 + 3072], 1
 mov rax, qword ptr [rip + .Lx00275_0]
 mov qword ptr [r12 + 3080], rax
 jmp xchain00203_n00276_α
 xchain00203_n00087_β:
 jmp xchain00203_n00277_α
.Lx00275_0:
 .quad .Lx00275_0_s
.Lx00275_0_s:
 .string "global"
# IR_LIST_BANG
 xchain00203_n00011_α:
 mov qword ptr [r12 + 3552], 0
.Lx00278_0:
 mov rdi, qword ptr [r12 + 3568]
 mov rsi, qword ptr [r12 + 3576]
 mov rdx, qword ptr [r12 + 3552]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 3536], rax
 mov qword ptr [r12 + 3544], rdx
 cmp rax, 99
 je xchain00203_n00075_α
 jmp xchain00203_n00279_α
 xchain00203_n00011_β:
 inc qword ptr [r12 + 3552]
 jmp .Lx00278_0
 xchain00203_n00089_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3488]
 mov rdx, qword ptr [r12 + 3496]
 mov qword ptr [r12 + 6176], rax
 mov qword ptr [r12 + 6184], rdx
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], rdx
 jmp xchain00203_n00088_α
 xchain00203_n00089_β:
 jmp xchain00203_n00088_α
 xchain00203_n00088_α:
  .section .rodata
  .Lcall00180_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00180_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3440], rax
 mov qword ptr [r12 + 3448], rdx
 cmp eax, 99
 je xchain00203_n00280_α
 jmp xchain00203_n00281_α
xchain00203_n00088_β:
 jmp xchain00203_n00280_α
# IR_VAR
 xchain00203_n00090_α:
 mov rax, qword ptr [r12 + 6080]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 6088]
 mov qword ptr [r12 + 280], rax
 jmp xchain00203_n00013_α
 xchain00203_n00090_β:
 jmp xchain00203_n00058_β
# IR_LIST_BANG
 xchain00203_n00265_α:
 mov qword ptr [r12 + 96], 0
.Lx00282_0:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 96]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp rax, 99
 je xchain00203_n00076_α
 jmp xchain00203_n00283_α
 xchain00203_n00265_β:
 inc qword ptr [r12 + 96]
 jmp .Lx00282_0
 xchain00203_n00268_α:
# BOX IR_CALL procrec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1248]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1256], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1264]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1272], rax
# marshal arg2 = producer-box slot [zr+1328] -> [zr+1280]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1288], rax
  .section .rodata
  .Lrkfn1121: .string "procrec"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1121]
 lea rsi, [r12 + 1248]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je xchain00203_n00051_α
 jmp xchain00203_n00284_α
 xchain00203_n00268_β:
 jmp xchain00203_n00051_α
# IR_VAR
 xchain00203_n00262_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 1096], rax
 jmp xchain00203_n00285_α
 xchain00203_n00262_β:
 jmp xchain00203_n00286_α
 xchain00203_n00269_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1936]
 mov rdx, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain00203_n00270_α
 xchain00203_n00269_β:
 jmp xchain00203_n00270_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00203_n00287_α:
 jmp qword ptr [r12 + 1952]
 xchain00203_n00287_β:
 jmp xchain00203_n00270_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00272_α:
 mov rax, qword ptr [r12 + 3808]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 3816]
 mov qword ptr [r12 + 3784], rax
 lea rax, [rip + xchain00203_n00002_α]
 mov qword ptr [r12 + 3792], rax
 jmp xchain00203_n00053_α
 xchain00203_n00272_β:
 jmp xchain00203_n00002_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00274_α:
 mov rax, qword ptr [r12 + 2768]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 2776]
 mov qword ptr [r12 + 2744], rax
 lea rax, [rip + xchain00203_n00288_α]
 mov qword ptr [r12 + 2752], rax
 jmp xchain00203_n00289_α
 xchain00203_n00274_β:
 jmp xchain00203_n00290_α
 xchain00203_n00288_α:
 jmp xchain00203_n99_α
xchain00203_n00288_β:
 jmp xchain00203_n99_α
# IR_LIT_STRING
 xchain00203_n00012_α:
 mov qword ptr [r12 + 3696], 1
 mov rax, qword ptr [rip + .Lx00291_0]
 mov qword ptr [r12 + 3704], rax
 jmp xchain00203_n00014_α
 xchain00203_n00012_β:
 jmp xchain00203_n00054_α
.Lx00291_0:
 .quad .Lx00291_0_s
.Lx00291_0_s:
 .string "static"
 xchain00203_n00276_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3072]
 mov rdx, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 6144], rax
 mov qword ptr [r12 + 6152], rdx
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 jmp xchain00203_n00277_α
 xchain00203_n00276_β:
 jmp xchain00203_n00277_α
 xchain00203_n00279_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 3536]
 mov rcx, qword ptr [r12 + 3544]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00203_n00075_α
 mov rdi, qword ptr [r12 + 3536]
 mov rsi, qword ptr [r12 + 3544]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 jmp xchain00203_n96_α
 xchain00203_n00279_β:
 jmp xchain00203_n00075_α
 xchain00203_n00281_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3440]
 mov rdx, qword ptr [r12 + 3448]
 mov qword ptr [r12 + 6160], rax
 mov qword ptr [r12 + 6168], rdx
 mov qword ptr [r12 + 3424], rax
 mov qword ptr [r12 + 3432], rdx
 jmp xchain00203_n00292_α
 xchain00203_n00281_β:
 jmp xchain00203_n00280_α
# IR_VAR
 xchain00203_n00280_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 3376], rax
 mov qword ptr [r12 + 3384], rdx
 jmp xchain00203_n00293_α
 xchain00203_n00280_β:
 jmp xchain00203_n00294_α
# IR_VAR
 xchain00203_n00013_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 424], rax
 jmp xchain00203_n00295_α
 xchain00203_n00013_β:
 jmp xchain00203_n00058_β
 xchain00203_n00283_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+64]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 72], rax
  .section .rodata
  .Lrkfn1140: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1140]
 lea rsi, [r12 + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain00203_n00076_α
 jmp xchain00203_n00265_β
 xchain00203_n00283_β:
 jmp xchain00203_n00076_α
 xchain00203_n00284_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1184]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1192], rax
# marshal arg1 = producer-box slot [zr+1232] -> [zr+1200]
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1208], rax
  .section .rodata
  .Lrkfn1142: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1142]
 lea rsi, [r12 + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain00203_n00051_α
 jmp xchain00203_n00051_α
 xchain00203_n00284_β:
 jmp xchain00203_n00051_α
 xchain00203_n00285_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1072]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn1144: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1144]
 lea rsi, [r12 + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00203_n00286_α
 jmp xchain00203_n00296_α
 xchain00203_n00285_β:
 jmp xchain00203_n00286_α
# IR_VAR
 xchain00203_n00286_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00203_n00297_α
 xchain00203_n00286_β:
 jmp xchain00203_n00298_α
# IR_VAR
 xchain00203_n00270_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 1880], rax
 jmp xchain00203_n00299_α
 xchain00203_n00270_β:
 jmp xchain00203_n00300_α
 xchain00203_n00289_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2736]
 mov rdx, qword ptr [r12 + 2744]
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 mov qword ptr [r12 + 2720], rax
 mov qword ptr [r12 + 2728], rdx
 jmp xchain00203_n00290_α
 xchain00203_n00289_β:
 jmp xchain00203_n00290_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00203_n00301_α:
 jmp qword ptr [r12 + 2752]
 xchain00203_n00301_β:
 jmp xchain00203_n00290_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00014_α:
 mov rax, qword ptr [r12 + 3696]
 mov qword ptr [r12 + 3664], rax
 mov rax, qword ptr [r12 + 3704]
 mov qword ptr [r12 + 3672], rax
 lea rax, [rip + xchain00203_n00054_α]
 mov qword ptr [r12 + 3680], rax
 jmp xchain00203_n00072_α
 xchain00203_n00014_β:
 jmp xchain00203_n00054_α
# IR_MAKE_LIST
 xchain00203_n00277_α:
 lea rdi, [r12 + 3056]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 3040], rax
 mov qword ptr [r12 + 3048], rdx
 jmp xchain00203_n00302_α
 xchain00203_n00277_β:
 jmp xchain00203_n00303_α
 xchain00203_n00304_α:
 jmp xchain00203_n96_α
xchain00203_n00304_β:
 jmp xchain00203_n96_α
# IR_LIT_STRING
 xchain00203_n00292_α:
 mov qword ptr [r12 + 3456], 1
 mov rax, qword ptr [rip + .Lx00305_0]
 mov qword ptr [r12 + 3464], rax
 jmp xchain00203_n00306_α
 xchain00203_n00292_β:
 jmp xchain00203_n00280_α
.Lx00305_0:
 .quad .Lx00305_0_s
.Lx00305_0_s:
 .string "("
# IR_VAR
 xchain00203_n00293_α:
 mov rax, qword ptr [r12 + 6160]
 mov qword ptr [r12 + 3392], rax
 mov rax, qword ptr [r12 + 6168]
 mov qword ptr [r12 + 3400], rax
 jmp xchain00203_n00015_α
 xchain00203_n00293_β:
 jmp xchain00203_n00294_α
# IR_VAR
 xchain00203_n00294_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3184], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3192], rax
 jmp xchain00203_n00307_α
 xchain00203_n00294_β:
 jmp xchain00203_n96_α
# IR_FIELD_GET
 xchain00203_n00295_α:
 mov rdi, qword ptr [rip + .Lx00308_0]
 mov rsi, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00203_n00058_β
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00203_n00309_α
 xchain00203_n00295_β:
 jmp xchain00203_n00058_β
.Lx00308_0:
 .quad .Lx00308_0_s
.Lx00308_0_s:
 .string "pname"
 xchain00203_n00296_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1056]
 mov rdx, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 6096], rax
 mov qword ptr [r12 + 6104], rdx
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00203_n00286_α
 xchain00203_n00296_β:
 jmp xchain00203_n00286_α
# IR_FIELD_GET lv
 xchain00203_n00297_α:
 mov rdi, qword ptr [rip + .Lx00310_0]
 mov rsi, qword ptr [r12 + 992]
 mov rdx, qword ptr [r12 + 1000]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00203_n00298_α
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain00203_n00016_α
 xchain00203_n00297_β:
 jmp xchain00203_n00298_α
.Lx00310_0:
 .quad .Lx00310_0_s
.Lx00310_0_s:
 .string "pname"
# IR_VAR
 xchain00203_n00298_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 952], rax
 jmp xchain00203_n00311_α
 xchain00203_n00298_β:
 jmp xchain00203_n96_α
# IR_LIT_STRING
 xchain00203_n00299_α:
 mov qword ptr [r12 + 1888], 1
 mov rax, qword ptr [rip + .Lx00312_0]
 mov qword ptr [r12 + 1896], rax
 jmp xchain00203_n00017_α
 xchain00203_n00299_β:
 jmp xchain00203_n00300_α
.Lx00312_0:
 .quad .Lx00312_0_s
.Lx00312_0_s:
 .string "global"
 xchain00203_n00300_α:
  .section .rodata
  .Lcall00313_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00313_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 cmp eax, 99
 je xchain00203_n00314_α
 jmp xchain00203_n00315_α
xchain00203_n00300_β:
 jmp xchain00203_n00314_α
# IR_VAR
 xchain00203_n00290_α:
 mov rax, qword ptr [rbx + 192]
 mov rdx, qword ptr [rbx + 200]
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 jmp xchain00203_n00316_α
 xchain00203_n00290_β:
 jmp xchain00203_n00317_α
# IR_ASSIGN gva
 xchain00203_n00302_α:
 mov rax, qword ptr [r12 + 3040]
 mov rdx, qword ptr [r12 + 3048]
 mov qword ptr [rbx + 192], rax
 mov qword ptr [rbx + 200], rdx
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 jmp xchain00203_n00303_α
 xchain00203_n00302_β:
 jmp xchain00203_n00303_α
 xchain00203_n00306_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 3424]
 mov rsi, qword ptr [r12 + 3432]
 mov rdx, qword ptr [r12 + 3456]
 mov rcx, qword ptr [r12 + 3464]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00203_n00280_α
 mov rdi, qword ptr [r12 + 3456]
 mov rsi, qword ptr [r12 + 3464]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3408], rax
 mov qword ptr [r12 + 3416], rdx
 jmp xchain00203_n00318_α
 xchain00203_n00306_β:
 jmp xchain00203_n00280_α
 xchain00203_n00015_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3376] -> [zr+3344]
 mov rax, qword ptr [r12 + 3376]
 mov qword ptr [r12 + 3344], rax
 mov rax, qword ptr [r12 + 3384]
 mov qword ptr [r12 + 3352], rax
# marshal arg1 = producer-box slot [zr+3392] -> [zr+3360]
 mov rax, qword ptr [r12 + 3392]
 mov qword ptr [r12 + 3360], rax
 mov rax, qword ptr [r12 + 3400]
 mov qword ptr [r12 + 3368], rax
  .section .rodata
  .Lrkfn1173: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1173]
 lea rsi, [r12 + 3344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3328], rax
 mov qword ptr [r12 + 3336], rdx
 cmp eax, 99
 je xchain00203_n00294_α
 jmp xchain00203_n00319_α
 xchain00203_n00015_β:
 jmp xchain00203_n00294_α
# IR_VAR
 xchain00203_n00307_α:
 mov rax, qword ptr [r12 + 6144]
 mov qword ptr [r12 + 3200], rax
 mov rax, qword ptr [r12 + 6152]
 mov qword ptr [r12 + 3208], rax
 jmp xchain00203_n00320_α
 xchain00203_n00307_β:
 jmp xchain00203_n96_α
# IR_LIT_INTEGER
 xchain00203_n00309_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00321_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00203_n00322_α
 xchain00203_n00309_β:
 jmp xchain00203_n00058_β
.Lx00321_0:
 .quad 16
# IR_VAR
 xchain00203_n00016_α:
 mov rax, qword ptr [r12 + 6144]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 6152]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00203_n00323_α
 xchain00203_n00016_β:
 jmp xchain00203_n00298_α
# IR_VAR
 xchain00203_n00311_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 968], rax
 jmp xchain00203_n00018_α
 xchain00203_n00311_β:
 jmp xchain00203_n96_α
# IR_VAR
 xchain00203_n00017_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain00203_n00324_α
 xchain00203_n00017_β:
 jmp xchain00203_n00300_α
 xchain00203_n00315_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1488]
 mov rdx, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 6160], rax
 mov qword ptr [r12 + 6168], rdx
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain00203_n00325_α
 xchain00203_n00315_β:
 jmp xchain00203_n00314_α
# IR_VAR
 xchain00203_n00314_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain00203_n00326_α
 xchain00203_n00314_β:
 jmp xchain00203_n96_α
# IR_VAR
 xchain00203_n00316_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 2704], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 2712], rax
 jmp xchain00203_n00327_α
 xchain00203_n00316_β:
 jmp xchain00203_n00317_α
# IR_VAR
 xchain00203_n00317_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 2592], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 2600], rax
 jmp xchain00203_n00328_α
 xchain00203_n00317_β:
 jmp xchain00203_n00329_α
# IR_VAR
 xchain00203_n00303_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 3008], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 3016], rax
 jmp xchain00203_n00019_α
 xchain00203_n00303_β:
 jmp xchain00203_n00330_α
# IR_VAR
 xchain00203_n00318_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3296], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3304], rax
 jmp xchain00203_n00331_α
 xchain00203_n00318_β:
 jmp xchain00203_n00294_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00319_α:
 mov rax, qword ptr [r12 + 3328]
 mov qword ptr [r12 + 3232], rax
 mov rax, qword ptr [r12 + 3336]
 mov qword ptr [r12 + 3240], rax
 lea rax, [rip + xchain00203_n00294_α]
 mov qword ptr [r12 + 3248], rax
 jmp xchain00203_n00294_α
 xchain00203_n00319_β:
 jmp xchain00203_n00294_α
# IR_VAR
 xchain00203_n00320_α:
 mov rax, qword ptr [r12 + 6176]
 mov qword ptr [r12 + 3216], rax
 mov rax, qword ptr [r12 + 6184]
 mov qword ptr [r12 + 3224], rax
 jmp xchain00203_n00332_α
 xchain00203_n00320_β:
 jmp xchain00203_n96_α
# IR_LIT_STRING
 xchain00203_n00322_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx00333_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00203_n00334_α
 xchain00203_n00322_β:
 jmp xchain00203_n00058_β
.Lx00333_0:
 .quad .Lx00333_0_s
.Lx00333_0_s:
 .string " "
# IR_ASSIGN_VAR
 xchain00203_n00323_α:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1024]
 mov rcx, qword ptr [r12 + 1032]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00203_n00298_α
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain00203_n00298_α
 xchain00203_n00323_β:
 jmp xchain00203_n00298_α
 xchain00203_n00018_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+912]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 920], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+928]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn1199: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1199]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain00203_n96_α
 jmp xchain00203_n00022_α
 xchain00203_n00018_β:
 jmp xchain00203_n96_α
 xchain00203_n00324_α:
  .section .rodata
  .Lcall00335_pname: .string "addword"
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
   lea rdi, [rip + .Lcall00335_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 cmp eax, 99
 je xchain00203_n00300_α
 jmp xchain00203_n00300_α
xchain00203_n00324_β:
 jmp xchain00203_n00300_α
# IR_LIT_STRING
 xchain00203_n00325_α:
 mov qword ptr [r12 + 1504], 1
 mov rax, qword ptr [rip + .Lx00336_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00203_n00337_α
 xchain00203_n00325_β:
 jmp xchain00203_n00314_α
.Lx00336_0:
 .quad .Lx00336_0_s
.Lx00336_0_s:
 .string ","
# IR_VAR
 xchain00203_n00326_α:
 mov rax, qword ptr [r12 + 6160]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 6168]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00203_n00023_α
 xchain00203_n00326_β:
 jmp xchain00203_n96_α
 xchain00203_n00327_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2688] -> [zr+2656]
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 2656], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 2664], rax
# marshal arg1 = producer-box slot [zr+2704] -> [zr+2672]
 mov rax, qword ptr [r12 + 2704]
 mov qword ptr [r12 + 2672], rax
 mov rax, qword ptr [r12 + 2712]
 mov qword ptr [r12 + 2680], rax
  .section .rodata
  .Lrkfn1205: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1205]
 lea rsi, [r12 + 2656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 cmp eax, 99
 je xchain00203_n00317_α
 jmp xchain00203_n00317_α
 xchain00203_n00327_β:
 jmp xchain00203_n00317_α
# IR_VAR
 xchain00203_n00328_α:
 mov rax, qword ptr [r12 + 6144]
 mov qword ptr [r12 + 2608], rax
 mov rax, qword ptr [r12 + 6152]
 mov qword ptr [r12 + 2616], rax
 jmp xchain00203_n00025_α
 xchain00203_n00328_β:
 jmp xchain00203_n00329_α
 xchain00203_n00329_α:
  .section .rodata
  .Lcall00192_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00192_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 cmp eax, 99
 je xchain00203_n00338_α
 jmp xchain00203_n00339_α
xchain00203_n00329_β:
 jmp xchain00203_n00338_α
 xchain00203_n00019_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3008] -> [zr+2992]
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 3000], rax
  .section .rodata
  .Lrkfn1210: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1210]
 lea rsi, [r12 + 2992]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 cmp eax, 99
 je xchain00203_n00330_α
 jmp xchain00203_n00340_α
 xchain00203_n00019_β:
 jmp xchain00203_n00330_α
# IR_VAR
 xchain00203_n00330_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 2912], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 2920], rax
 jmp xchain00203_n00341_α
 xchain00203_n00330_β:
 jmp xchain00203_n00342_α
# IR_LIT_STRING
 xchain00203_n00331_α:
 mov qword ptr [r12 + 3312], 1
 mov rax, qword ptr [rip + .Lx00343_0]
 mov qword ptr [r12 + 3320], rax
 jmp xchain00203_n00344_α
 xchain00203_n00331_β:
 jmp xchain00203_n00294_α
.Lx00343_0:
 .quad .Lx00343_0_s
.Lx00343_0_s:
 .string " *"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00203_n00021_α:
 jmp qword ptr [r12 + 3248]
 xchain00203_n00021_β:
 jmp xchain00203_n00294_α
 xchain00203_n00332_α:
  .section .rodata
  .Lcall00345_pname: .string "addword"
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
   lea rdi, [rip + .Lcall00345_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 cmp eax, 99
 je xchain00203_n96_α
 jmp xchain00203_n00033_α
xchain00203_n00332_β:
 jmp xchain00203_n96_α
 xchain00203_n00334_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+352]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+368]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 376], rax
# marshal arg2 = producer-box slot [zr+448] -> [zr+384]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lrkfn1218: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1218]
 lea rsi, [r12 + 352]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain00203_n00058_β
 jmp xchain00203_n00346_α
 xchain00203_n00334_β:
 jmp xchain00203_n00058_β
 xchain00203_n00022_α:
 jmp xchain00203_n00347_α
xchain00203_n00022_β:
 jmp xchain00203_n96_α
 xchain00203_n00337_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 1472]
 mov rsi, qword ptr [r12 + 1480]
 mov rdx, qword ptr [r12 + 1504]
 mov rcx, qword ptr [r12 + 1512]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00203_n00314_α
 mov rdi, qword ptr [r12 + 1504]
 mov rsi, qword ptr [r12 + 1512]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain00203_n00348_α
 xchain00203_n00337_β:
 jmp xchain00203_n00314_α
 xchain00203_n00023_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1392]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1400], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1408]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1416], rax
  .section .rodata
  .Lrkfn1222: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1222]
 lea rsi, [r12 + 1392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 cmp eax, 99
 je xchain00203_n96_α
 jmp xchain00203_n00038_α
 xchain00203_n00023_β:
 jmp xchain00203_n96_α
# IR_VAR
 xchain00203_n00025_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 jmp xchain00203_n00349_α
 xchain00203_n00025_β:
 jmp xchain00203_n00329_α
 xchain00203_n00339_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2128]
 mov rdx, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 6160], rax
 mov qword ptr [r12 + 6168], rdx
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 jmp xchain00203_n00350_α
 xchain00203_n00339_β:
 jmp xchain00203_n00338_α
# IR_VAR
 xchain00203_n00338_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain00203_n00351_α
 xchain00203_n00338_β:
 jmp xchain00203_n96_α
 xchain00203_n00340_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2976]
 mov rdx, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 6096], rax
 mov qword ptr [r12 + 6104], rdx
 mov qword ptr [r12 + 2960], rax
 mov qword ptr [r12 + 2968], rdx
 jmp xchain00203_n00330_α
 xchain00203_n00340_β:
 jmp xchain00203_n00330_α
# IR_FIELD_GET lv
 xchain00203_n00341_α:
 mov rdi, qword ptr [rip + .Lx00352_0]
 mov rsi, qword ptr [r12 + 2912]
 mov rdx, qword ptr [r12 + 2920]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00203_n00342_α
 mov qword ptr [r12 + 2896], rax
 mov qword ptr [r12 + 2904], rdx
 jmp xchain00203_n00353_α
 xchain00203_n00341_β:
 jmp xchain00203_n00342_α
.Lx00352_0:
 .quad .Lx00352_0_s
.Lx00352_0_s:
 .string "lastline"
# IR_VAR
 xchain00203_n00342_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 2864], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 2872], rax
 jmp xchain00203_n00354_α
 xchain00203_n00342_β:
 jmp xchain00203_n96_α
 xchain00203_n00344_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 3312]
 mov rcx, qword ptr [r12 + 3320]
 call str_concat_d@PLT
 mov qword ptr [r12 + 3280], rax
 mov qword ptr [r12 + 3288], rdx
 jmp xchain00203_n00355_α
 xchain00203_n00344_β:
 jmp xchain00203_n00294_α
 xchain00203_n00033_α:
 jmp xchain00203_n00356_α
xchain00203_n00033_β:
 jmp xchain00203_n96_α
# IR_VAR
 xchain00203_n00346_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 488], rax
 jmp xchain00203_n00042_α
 xchain00203_n00346_β:
 jmp xchain00203_n00058_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00347_α:
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 872], rax
 lea rax, [rip + xchain00203_n96_α]
 mov qword ptr [r12 + 880], rax
 jmp xchain00203_n00357_α
 xchain00203_n00347_β:
 jmp xchain00203_n96_α
# IR_VAR
 xchain00203_n00348_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 1752], rax
 jmp xchain00203_n00358_α
 xchain00203_n00348_β:
 jmp xchain00203_n00359_α
 xchain00203_n00038_α:
 jmp xchain00203_n00360_α
xchain00203_n00038_β:
 jmp xchain00203_n96_α
 xchain00203_n00349_α:
  .section .rodata
  .Lcall00361_pname: .string "addword"
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
   lea rdi, [rip + .Lcall00361_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 cmp eax, 99
 je xchain00203_n00329_α
 jmp xchain00203_n00329_α
xchain00203_n00349_β:
 jmp xchain00203_n00329_α
# IR_LIT_STRING
 xchain00203_n00350_α:
 mov qword ptr [r12 + 2144], 1
 mov rax, qword ptr [rip + .Lx00362_0]
 mov qword ptr [r12 + 2152], rax
 jmp xchain00203_n00363_α
 xchain00203_n00350_β:
 jmp xchain00203_n00338_α
.Lx00362_0:
 .quad .Lx00362_0_s
.Lx00362_0_s:
 .string ","
# IR_VAR
 xchain00203_n00351_α:
 mov rax, qword ptr [r12 + 6160]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 6168]
 mov qword ptr [r12 + 2088], rax
 jmp xchain00203_n00364_α
 xchain00203_n00351_β:
 jmp xchain00203_n96_α
# IR_VAR
 xchain00203_n00353_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2944], rax
 mov qword ptr [r12 + 2952], rdx
 jmp xchain00203_n00365_α
 xchain00203_n00353_β:
 jmp xchain00203_n00342_α
# IR_VAR
 xchain00203_n00354_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 2880], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 2888], rax
 jmp xchain00203_n00366_α
 xchain00203_n00354_β:
 jmp xchain00203_n96_α
 xchain00203_n00355_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3280]
 mov rdx, qword ptr [r12 + 3288]
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 mov qword ptr [r12 + 3264], rax
 mov qword ptr [r12 + 3272], rdx
 jmp xchain00203_n00367_α
 xchain00203_n00355_β:
 jmp xchain00203_n00294_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00356_α:
 mov rax, qword ptr [r12 + 3120]
 mov qword ptr [r12 + 3088], rax
 mov rax, qword ptr [r12 + 3128]
 mov qword ptr [r12 + 3096], rax
 lea rax, [rip + xchain00203_n96_α]
 mov qword ptr [r12 + 3104], rax
 jmp xchain00203_n00048_α
 xchain00203_n00356_β:
 jmp xchain00203_n96_α
# IR_FIELD_GET
 xchain00203_n00042_α:
 mov rdi, qword ptr [rip + .Lx00368_0]
 mov rsi, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00203_n00058_β
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00203_n00369_α
 xchain00203_n00042_β:
 jmp xchain00203_n00058_β
.Lx00368_0:
 .quad .Lx00368_0_s
.Lx00368_0_s:
 .string "begline"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00357_α:
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 776], rax
 lea rax, [rip + xchain00203_n00370_α]
 mov qword ptr [r12 + 784], rax
 jmp xchain00203_n96_α
 xchain00203_n00357_β:
 jmp xchain00203_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00203_n00370_α:
 jmp qword ptr [r12 + 880]
 xchain00203_n00370_β:
 jmp xchain00203_n96_α
# IR_VAR
 xchain00203_n00358_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain00203_n00371_α
 xchain00203_n00358_β:
 jmp xchain00203_n00359_α
 xchain00203_n00359_α:
  .section .rodata
  .Lcall00197_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00197_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 cmp eax, 99
 je xchain00203_n00314_α
 jmp xchain00203_n00372_α
xchain00203_n00359_β:
 jmp xchain00203_n00314_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00360_α:
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1352], rax
 lea rax, [rip + xchain00203_n96_α]
 mov qword ptr [r12 + 1360], rax
 jmp xchain00203_n00373_α
 xchain00203_n00360_β:
 jmp xchain00203_n96_α
 xchain00203_n00363_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 2112]
 mov rsi, qword ptr [r12 + 2120]
 mov rdx, qword ptr [r12 + 2144]
 mov rcx, qword ptr [r12 + 2152]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00203_n00338_α
 mov rdi, qword ptr [r12 + 2144]
 mov rsi, qword ptr [r12 + 2152]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain00203_n00374_α
 xchain00203_n00363_β:
 jmp xchain00203_n00338_α
 xchain00203_n00364_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2064] -> [zr+2032]
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 2040], rax
# marshal arg1 = producer-box slot [zr+2080] -> [zr+2048]
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2056], rax
  .section .rodata
  .Lrkfn1260: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1260]
 lea rsi, [r12 + 2032]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je xchain00203_n96_α
 jmp xchain00203_n00375_α
 xchain00203_n00364_β:
 jmp xchain00203_n96_α
# IR_ASSIGN_VAR
 xchain00203_n00365_α:
 mov rdi, qword ptr [r12 + 2896]
 mov rsi, qword ptr [r12 + 2904]
 mov rdx, qword ptr [r12 + 2944]
 mov rcx, qword ptr [r12 + 2952]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00203_n00342_α
 mov qword ptr [r12 + 2928], rax
 mov qword ptr [r12 + 2936], rdx
 jmp xchain00203_n00342_α
 xchain00203_n00365_β:
 jmp xchain00203_n00342_α
 xchain00203_n00366_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2864] -> [zr+2832]
 mov rax, qword ptr [r12 + 2864]
 mov qword ptr [r12 + 2832], rax
 mov rax, qword ptr [r12 + 2872]
 mov qword ptr [r12 + 2840], rax
# marshal arg1 = producer-box slot [zr+2880] -> [zr+2848]
 mov rax, qword ptr [r12 + 2880]
 mov qword ptr [r12 + 2848], rax
 mov rax, qword ptr [r12 + 2888]
 mov qword ptr [r12 + 2856], rax
  .section .rodata
  .Lrkfn1263: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1263]
 lea rsi, [r12 + 2832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 cmp eax, 99
 je xchain00203_n96_α
 jmp xchain00203_n00376_α
 xchain00203_n00366_β:
 jmp xchain00203_n96_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00367_α:
 mov rax, qword ptr [r12 + 3264]
 mov qword ptr [r12 + 3232], rax
 mov rax, qword ptr [r12 + 3272]
 mov qword ptr [r12 + 3240], rax
 lea rax, [rip + xchain00203_n00294_α]
 mov qword ptr [r12 + 3248], rax
 jmp xchain00203_n00294_α
 xchain00203_n00367_β:
 jmp xchain00203_n00294_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00048_α:
 mov rax, qword ptr [r12 + 3088]
 mov qword ptr [r12 + 2784], rax
 mov rax, qword ptr [r12 + 3096]
 mov qword ptr [r12 + 2792], rax
 lea rax, [rip + xchain00203_n00050_α]
 mov qword ptr [r12 + 2800], rax
 jmp xchain00203_n00377_α
 xchain00203_n00048_β:
 jmp xchain00203_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00203_n00050_α:
 jmp qword ptr [r12 + 3104]
 xchain00203_n00050_β:
 jmp xchain00203_n96_α
 xchain00203_n00369_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 call str_concat_d@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00203_n00378_α
 xchain00203_n00369_β:
 jmp xchain00203_n00058_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00203_n00379_α:
 jmp qword ptr [r12 + 784]
 xchain00203_n00379_β:
 jmp xchain00203_n96_α
# IR_LIST_BANG
 xchain00203_n00371_α:
 mov qword ptr [r12 + 1776], 0
.Lx00380_0:
 mov rdi, qword ptr [r12 + 1792]
 mov rsi, qword ptr [r12 + 1800]
 mov rdx, qword ptr [r12 + 1776]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 cmp rax, 99
 je xchain00203_n00359_α
 jmp xchain00203_n00381_α
 xchain00203_n00371_β:
 inc qword ptr [r12 + 1776]
 jmp .Lx00380_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00372_α:
 mov rax, qword ptr [r12 + 1680]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1688]
 mov qword ptr [r12 + 1656], rax
 lea rax, [rip + xchain00203_n00382_α]
 mov qword ptr [r12 + 1664], rax
 jmp xchain00203_n00059_α
 xchain00203_n00372_β:
 jmp xchain00203_n00383_α
 xchain00203_n00382_α:
 jmp xchain00203_n00314_α
xchain00203_n00382_β:
 jmp xchain00203_n00314_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00373_α:
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 872], rax
 lea rax, [rip + xchain00203_n00384_α]
 mov qword ptr [r12 + 880], rax
 jmp xchain00203_n00357_α
 xchain00203_n00373_β:
 jmp xchain00203_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00203_n00384_α:
 jmp qword ptr [r12 + 1360]
 xchain00203_n00384_β:
 jmp xchain00203_n96_α
# IR_VAR
 xchain00203_n00374_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 2464], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 2472], rax
 jmp xchain00203_n00385_α
 xchain00203_n00374_β:
 jmp xchain00203_n00386_α
 xchain00203_n00375_α:
 jmp xchain00203_n00063_α
xchain00203_n00375_β:
 jmp xchain00203_n96_α
 xchain00203_n00376_α:
 jmp xchain00203_n00387_α
xchain00203_n00376_β:
 jmp xchain00203_n96_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00377_α:
 mov rax, qword ptr [r12 + 2784]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 2792]
 mov qword ptr [r12 + 1992], rax
 lea rax, [rip + xchain00203_n00388_α]
 mov qword ptr [r12 + 2000], rax
 jmp xchain00203_n00389_α
 xchain00203_n00377_β:
 jmp xchain00203_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00203_n00388_α:
 jmp qword ptr [r12 + 2800]
 xchain00203_n00388_β:
 jmp xchain00203_n96_α
# IR_LIT_STRING
 xchain00203_n00378_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx00390_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00203_n00391_α
 xchain00203_n00378_β:
 jmp xchain00203_n00058_β
.Lx00390_0:
 .quad .Lx00390_0_s
.Lx00390_0_s:
 .string "-"
 xchain00203_n00381_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 1760]
 mov rcx, qword ptr [r12 + 1768]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00203_n00359_α
 mov rdi, qword ptr [r12 + 1760]
 mov rsi, qword ptr [r12 + 1768]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain00203_n00314_α
 xchain00203_n00381_β:
 jmp xchain00203_n00359_α
 xchain00203_n00059_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1648]
 mov rdx, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain00203_n00383_α
 xchain00203_n00059_β:
 jmp xchain00203_n00383_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00203_n00392_α:
 jmp qword ptr [r12 + 1664]
 xchain00203_n00392_β:
 jmp xchain00203_n00383_α
# IR_VAR
 xchain00203_n00385_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 jmp xchain00203_n00069_α
 xchain00203_n00385_β:
 jmp xchain00203_n00386_α
 xchain00203_n00386_α:
  .section .rodata
  .Lcall00208_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00208_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je xchain00203_n00338_α
 jmp xchain00203_n00393_α
xchain00203_n00386_β:
 jmp xchain00203_n00338_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00063_α:
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 1992], rax
 lea rax, [rip + xchain00203_n96_α]
 mov qword ptr [r12 + 2000], rax
 jmp xchain00203_n00389_α
 xchain00203_n00063_β:
 jmp xchain00203_n96_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00387_α:
 mov rax, qword ptr [r12 + 2816]
 mov qword ptr [r12 + 2784], rax
 mov rax, qword ptr [r12 + 2824]
 mov qword ptr [r12 + 2792], rax
 lea rax, [rip + xchain00203_n96_α]
 mov qword ptr [r12 + 2800], rax
 jmp xchain00203_n00377_α
 xchain00203_n00387_β:
 jmp xchain00203_n96_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00389_α:
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1352], rax
 lea rax, [rip + xchain00203_n00066_α]
 mov qword ptr [r12 + 1360], rax
 jmp xchain00203_n00373_α
 xchain00203_n00389_β:
 jmp xchain00203_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00203_n00066_α:
 jmp qword ptr [r12 + 2000]
 xchain00203_n00066_β:
 jmp xchain00203_n96_α
 xchain00203_n00391_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call str_concat_d@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00203_n00394_α
 xchain00203_n00391_β:
 jmp xchain00203_n00058_β
 xchain00203_n00395_α:
 jmp xchain00203_n00314_α
xchain00203_n00395_β:
 jmp xchain00203_n00314_α
# IR_VAR
 xchain00203_n00383_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 1592], rax
 jmp xchain00203_n00396_α
 xchain00203_n00383_β:
 jmp xchain00203_n00300_α
# IR_LIST_BANG
 xchain00203_n00069_α:
 mov qword ptr [r12 + 2496], 0
.Lx00397_0:
 mov rdi, qword ptr [r12 + 2512]
 mov rsi, qword ptr [r12 + 2520]
 mov rdx, qword ptr [r12 + 2496]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 cmp rax, 99
 je xchain00203_n00386_α
 jmp xchain00203_n00398_α
 xchain00203_n00069_β:
 inc qword ptr [r12 + 2496]
 jmp .Lx00397_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00203_n00393_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 2368], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 2376], rax
 lea rax, [rip + xchain00203_n00399_α]
 mov qword ptr [r12 + 2384], rax
 jmp xchain00203_n00400_α
 xchain00203_n00393_β:
 jmp xchain00203_n00401_α
 xchain00203_n00399_α:
 jmp xchain00203_n00338_α
xchain00203_n00399_β:
 jmp xchain00203_n00338_α
# IR_VAR
 xchain00203_n00394_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 536], rax
 jmp xchain00203_n00402_α
 xchain00203_n00394_β:
 jmp xchain00203_n00058_β
# IR_LIT_STRING
 xchain00203_n00396_α:
 mov qword ptr [r12 + 1600], 1
 mov rax, qword ptr [rip + .Lx00403_0]
 mov qword ptr [r12 + 1608], rax
 jmp xchain00203_n00404_α
 xchain00203_n00396_β:
 jmp xchain00203_n00300_α
.Lx00403_0:
 .quad .Lx00403_0_s
.Lx00403_0_s:
 .string "global"
 xchain00203_n00398_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 2480]
 mov rcx, qword ptr [r12 + 2488]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00203_n00386_α
 mov rdi, qword ptr [r12 + 2480]
 mov rsi, qword ptr [r12 + 2488]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 jmp xchain00203_n00338_α
 xchain00203_n00398_β:
 jmp xchain00203_n00386_α
 xchain00203_n00400_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2368]
 mov rdx, qword ptr [r12 + 2376]
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 jmp xchain00203_n00401_α
 xchain00203_n00400_β:
 jmp xchain00203_n00401_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00203_n00405_α:
 jmp qword ptr [r12 + 2384]
 xchain00203_n00405_β:
 jmp xchain00203_n00401_α
# IR_FIELD_GET
 xchain00203_n00402_α:
 mov rdi, qword ptr [rip + .Lx00406_0]
 mov rsi, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00203_n00058_β
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00203_n00407_α
 xchain00203_n00402_β:
 jmp xchain00203_n00058_β
.Lx00406_0:
 .quad .Lx00406_0_s
.Lx00406_0_s:
 .string "lastline"
# IR_VAR
 xchain00203_n00404_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xchain00203_n00078_α
 xchain00203_n00404_β:
 jmp xchain00203_n00300_α
 xchain00203_n00408_α:
 jmp xchain00203_n00338_α
xchain00203_n00408_β:
 jmp xchain00203_n00338_α
# IR_VAR
 xchain00203_n00401_α:
 mov rax, qword ptr [rbx + 192]
 mov rdx, qword ptr [rbx + 200]
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 jmp xchain00203_n00409_α
 xchain00203_n00401_β:
 jmp xchain00203_n00081_α
 xchain00203_n00407_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 call str_concat_d@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00203_n00083_α
 xchain00203_n00407_β:
 jmp xchain00203_n00058_β
 xchain00203_n00078_α:
  .section .rodata
  .Lcall00229_pname: .string "addword"
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
   lea rdi, [rip + .Lcall00229_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 cmp eax, 99
 je xchain00203_n00300_α
 jmp xchain00203_n00410_α
xchain00203_n00078_β:
 jmp xchain00203_n00300_α
# IR_VAR
 xchain00203_n00409_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 2344], rax
 jmp xchain00203_n00085_α
 xchain00203_n00409_β:
 jmp xchain00203_n00081_α
# IR_VAR
 xchain00203_n00081_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 2232], rax
 jmp xchain00203_n00411_α
 xchain00203_n00081_β:
 jmp xchain00203_n00329_α
 xchain00203_n00083_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn1332: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1332]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00203_n00058_β
 jmp xchain00203_n00058_β
 xchain00203_n00083_β:
 jmp xchain00203_n00058_β
 xchain00203_n00410_α:
 jmp xchain00203_n00300_α
xchain00203_n00410_β:
 jmp xchain00203_n00300_α
 xchain00203_n00085_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2320] -> [zr+2288]
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 2288], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 2296], rax
# marshal arg1 = producer-box slot [zr+2336] -> [zr+2304]
 mov rax, qword ptr [r12 + 2336]
 mov qword ptr [r12 + 2304], rax
 mov rax, qword ptr [r12 + 2344]
 mov qword ptr [r12 + 2312], rax
  .section .rodata
  .Lrkfn1335: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1335]
 lea rsi, [r12 + 2288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 cmp eax, 99
 je xchain00203_n00081_α
 jmp xchain00203_n00081_α
 xchain00203_n00085_β:
 jmp xchain00203_n00081_α
# IR_VAR
 xchain00203_n00411_α:
 mov rax, qword ptr [r12 + 6144]
 mov qword ptr [r12 + 2240], rax
 mov rax, qword ptr [r12 + 6152]
 mov qword ptr [r12 + 2248], rax
 jmp xchain00203_n00412_α
 xchain00203_n00411_β:
 jmp xchain00203_n00329_α
# IR_VAR
 xchain00203_n00412_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 jmp xchain00203_n00413_α
 xchain00203_n00412_β:
 jmp xchain00203_n00329_α
 xchain00203_n00413_α:
  .section .rodata
  .Lcall00234_pname: .string "addword"
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
   lea rdi, [rip + .Lcall00234_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 cmp eax, 99
 je xchain00203_n00329_α
 jmp xchain00203_n00414_α
xchain00203_n00413_β:
 jmp xchain00203_n00329_α
 xchain00203_n00414_α:
 jmp xchain00203_n00329_α
xchain00203_n00414_β:
 jmp xchain00203_n00329_α
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
mov rsp, rbp
pop rbp
pop r12
ret
