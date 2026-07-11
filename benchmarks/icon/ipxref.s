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
# BOX CALL any(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
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
  .Lbynamefn4: .string "any"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn4]
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
# IR_MOVE_LABEL
 xchain0_n5_α:
 lea rax, [rip + xchain0_n2_α]
 mov qword ptr [r12 + 1184], rax
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_addword_ω
# IR_MOVE_LABEL
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
  .Lrkfn24: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn24]
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
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain0_n21_α
 xchain0_n18_β:
 jmp xchain0_n16_α
.Lx29_0:
 .quad .Lx29_0_s
.Lx29_0_s:
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
.Lx39_0:
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
 jmp .Lx39_0
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
 jz xchain0_n25_β
 mov rdi, qword ptr [r12 + 896]
 mov rsi, qword ptr [r12 + 904]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain0_n33_α
 xchain0_n29_β:
 jmp xchain0_n25_β
# IR_LIT_STRING
 xchain0_n30_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain0_n34_α
 xchain0_n30_β:
 jmp xchain0_n27_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
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
# IR_MOVE_LABEL
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
# IR_MOVE_LABEL
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
 mov rax, qword ptr [rip + .Lx59_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n42_α
 xchain0_n39_β:
 jmp proc_addword_ω
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
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
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain0_n49_α
 xchain0_n45_β:
 jmp xchain0_n27_α
.Lx68_0:
 .quad .Lx68_0_s
.Lx68_0_s:
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
  .Lrkfn82: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn82]
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
# IR_MOVE_LABEL
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
# IR_MOVE_LABEL
 xchain0_n67_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 72], rax
 lea rax, [rip + xchain0_n64_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_addword_ω
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
  .Lrkfn106: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn106]
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
# IR_MOVE_LABEL
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
 mov qword ptr [r12 + 2832], rax
 pop rsi
proc_getword_α_body:
# IR_VAR_REF
 xchain00001_n0_α:
 lea rdi, [rbx + 304]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 jmp xchain00001_n1_α
 xchain00001_n0_β:
 jmp xchain00001_n5_α
# IR_NULLTEST_VAR
 xchain00001_n1_α:
 mov eax, dword ptr [r12 + 2768]
 cmp eax, 99
 je xchain00001_n5_α
 mov rdi, qword ptr [r12 + 2768]
 mov rsi, qword ptr [r12 + 2776]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n5_α
 cmp eax, 0
 jne xchain00001_n5_α
 mov rax, qword ptr [r12 + 2768]
 mov qword ptr [r12 + 2784], rax
 mov rax, qword ptr [r12 + 2776]
 mov qword ptr [r12 + 2792], rax
 jmp xchain00001_n2_α
 xchain00001_n1_β:
 jmp xchain00001_n5_α
# IR_LIT_INTEGER
 xchain00001_n2_α:
 mov qword ptr [r12 + 2816], 6
 mov rax, qword ptr [rip + .Lx00002_0]
 mov qword ptr [r12 + 2824], rax
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
 mov rdi, qword ptr [r12 + 2784]
 mov rsi, qword ptr [r12 + 2792]
 mov rdx, qword ptr [r12 + 2816]
 mov rcx, qword ptr [r12 + 2824]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00001_n5_α
 mov qword ptr [r12 + 2800], rax
 mov qword ptr [r12 + 2808], rdx
 jmp xchain00001_n6_α
 xchain00001_n4_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n5_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2656], rax
 mov qword ptr [r12 + 2664], rdx
 jmp xchain00001_n7_α
 xchain00001_n5_β:
 jmp xchain00001_n8_α
# IR_LIT_CHARSET
 xchain00001_n6_α:
 mov qword ptr [r12 + 2752], 1
 mov dword ptr [r12 + 2756], -1
 mov rax, qword ptr [rip + .Lx00003_0]
 mov qword ptr [r12 + 2760], rax
 jmp xchain00001_n9_α
 xchain00001_n6_β:
 jmp xchain00001_n5_α
.Lx00003_0:
 .quad .Lx00003_0_s
.Lx00003_0_s:
 .string "\t\n "
# IR_UNOP
 xchain00001_n7_α:
 mov rdi, qword ptr [r12 + 2656]
 mov rsi, qword ptr [r12 + 2664]
 call rt_size_d@PLT
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 jmp xchain00001_n10_α
 xchain00001_n7_β:
 jmp xchain00001_n8_α
# IR_VAR
 xchain00001_n8_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 jmp xchain00001_n11_α
 xchain00001_n8_β:
 jmp xchain00001_n12_α
# IR_UNOP
 xchain00001_n9_α:
 mov rdi, qword ptr [r12 + 2752]
 mov rsi, qword ptr [r12 + 2760]
 call rt_cset_compl@PLT
 mov qword ptr [r12 + 2736], rax
 mov qword ptr [r12 + 2744], rdx
 jmp xchain00001_n13_α
 xchain00001_n9_β:
 jmp xchain00001_n5_α
# IR_LIT_INTEGER
 xchain00001_n10_α:
 mov qword ptr [r12 + 2672], 6
 mov rax, qword ptr [rip + .Lx00004_0]
 mov qword ptr [r12 + 2680], rax
 jmp xchain00001_n14_α
 xchain00001_n10_β:
 jmp xchain00001_n8_α
.Lx00004_0:
 .quad 0
# IR_UNOP
 xchain00001_n11_α:
 mov eax, dword ptr [r12 + 2528]
 cmp eax, 99
 je xchain00001_n12_α
 cmp eax, 0
 jne xchain00001_n12_α
 mov qword ptr [r12 + 2512], 0
 mov qword ptr [r12 + 2520], 0
 jmp xchain00001_n15_α
 xchain00001_n11_β:
 jmp xchain00001_n12_α
# IR_VAR
 xchain00001_n12_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 jmp xchain00001_n16_α
 xchain00001_n12_β:
 jmp xchain00001_n17_α
# IR_ASSIGN gva
 xchain00001_n13_α:
 mov rax, qword ptr [r12 + 2736]
 mov rdx, qword ptr [r12 + 2744]
 mov qword ptr [rbx + 288], rax
 mov qword ptr [rbx + 296], rdx
 mov qword ptr [r12 + 2720], rax
 mov qword ptr [r12 + 2728], rdx
 jmp xchain00001_n18_α
 xchain00001_n13_β:
 jmp xchain00001_n5_α
 xchain00001_n14_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2640]
 cmp eax, 100
 je .Lx00005_0
 mov eax, dword ptr [r12 + 2672]
 cmp eax, 100
 je .Lx00005_0
 mov eax, dword ptr [r12 + 2640]
 cmp eax, 6
 jne .Lx00005_2
 mov eax, dword ptr [r12 + 2672]
 cmp eax, 6
 jne .Lx00005_2
.Lx00005_1:
 mov rax, qword ptr [r12 + 2648]
 mov rcx, qword ptr [r12 + 2680]
 cmp rax, rcx
 jle xchain00001_n8_α
 mov rcx, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 2624], rcx
 mov rcx, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 2632], rcx
 jmp xchain00001_n19_α
.Lx00005_0:
 mov rdi, qword ptr [r12 + 2640]
 mov rsi, qword ptr [r12 + 2648]
 mov rdx, qword ptr [r12 + 2672]
 mov rcx, qword ptr [r12 + 2680]
 mov r8d, 7
 lea r9, [r12 + 2624]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00005_1
 cmp eax, 1
 je xchain00001_n8_α
 jmp xchain00001_n19_α
.Lx00005_2:
 mov rdi, qword ptr [r12 + 2640]
 mov rsi, qword ptr [r12 + 2648]
 mov rdx, qword ptr [r12 + 2672]
 mov rcx, qword ptr [r12 + 2680]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n8_α
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 2624], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 2632], rax
 jmp xchain00001_n19_α
 xchain00001_n14_β:
 jmp xchain00001_n8_α
# IR_MOVE_LABEL
 xchain00001_n15_α:
 mov rax, qword ptr [r12 + 2512]
 mov qword ptr [r12 + 2368], rax
 mov rax, qword ptr [r12 + 2520]
 mov qword ptr [r12 + 2376], rax
 lea rax, [rip + xchain00001_n12_α]
 mov qword ptr [r12 + 2384], rax
 jmp xchain00001_n20_α
 xchain00001_n15_β:
 jmp xchain00001_n17_α
# IR_VAR
 xchain00001_n16_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 jmp xchain00001_n22_α
 xchain00001_n16_β:
 jmp xchain00001_n17_α
# IR_VAR
 xchain00001_n17_α:
 mov rax, qword ptr [rbx + 288]
 mov rdx, qword ptr [rbx + 296]
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 jmp xchain00001_n23_α
 xchain00001_n17_β:
 jmp xchain00001_n24_α
# IR_MOVE_LABEL
 xchain00001_n18_α:
 mov rax, qword ptr [r12 + 2720]
 mov qword ptr [r12 + 2688], rax
 mov rax, qword ptr [r12 + 2728]
 mov qword ptr [r12 + 2696], rax
 lea rax, [rip + xchain00001_n3_α]
 mov qword ptr [r12 + 2704], rax
 jmp xchain00001_n3_α
 xchain00001_n18_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n19_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2608], rax
 mov qword ptr [r12 + 2616], rdx
 jmp xchain00001_n26_α
 xchain00001_n19_β:
 jmp proc_getword_ω
# IR_VAR
 xchain00001_n20_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 jmp xchain00001_n27_α
 xchain00001_n20_β:
 jmp proc_getword_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n21_α:
 jmp qword ptr [r12 + 2384]
 xchain00001_n21_β:
 jmp xchain00001_n17_α
# IR_UNOP
 xchain00001_n22_α:
 mov rdi, qword ptr [r12 + 2480]
 mov rsi, qword ptr [r12 + 2488]
 call rt_size_d@PLT
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 jmp xchain00001_n28_α
 xchain00001_n22_β:
 jmp xchain00001_n17_α
# IR_VAR
 xchain00001_n23_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain00001_n29_α
 xchain00001_n23_β:
 jmp xchain00001_n24_α
# IR_VAR
 xchain00001_n24_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 jmp xchain00001_n30_α
 xchain00001_n24_β:
 jmp xchain00001_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n25_α:
 jmp qword ptr [r12 + 2704]
 xchain00001_n25_β:
 jmp xchain00001_n5_α
 xchain00001_n26_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2608] -> [zr+2592]
 mov rax, qword ptr [r12 + 2608]
 mov qword ptr [r12 + 2592], rax
 mov rax, qword ptr [r12 + 2616]
 mov qword ptr [r12 + 2600], rax
  .section .rodata
  .Lrkfn145: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn145]
 lea rsi, [r12 + 2592]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 cmp eax, 99
 je proc_getword_ω
 jmp xchain00001_n31_α
 xchain00001_n26_β:
 jmp proc_getword_ω
 xchain00001_n27_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2352] -> [zr+2336]
 mov rax, qword ptr [r12 + 2352]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 2360]
 mov qword ptr [r12 + 2344], rax
  .section .rodata
  .Lrkfn147: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn147]
 lea rsi, [r12 + 2336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 cmp eax, 99
 je proc_getword_ω
 jmp xchain00001_n32_α
 xchain00001_n27_β:
 jmp proc_getword_ω
# IR_LIT_INTEGER
 xchain00001_n28_α:
 mov qword ptr [r12 + 2496], 6
 mov rax, qword ptr [rip + .Lx00006_0]
 mov qword ptr [r12 + 2504], rax
 jmp xchain00001_n33_α
 xchain00001_n28_β:
 jmp xchain00001_n17_α
.Lx00006_0:
 .quad 1
# IR_VAR
 xchain00001_n29_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 jmp xchain00001_n34_α
 xchain00001_n29_β:
 jmp xchain00001_n24_α
# IR_UNOP
 xchain00001_n30_α:
 mov rdi, qword ptr [r12 + 1968]
 mov rsi, qword ptr [r12 + 1976]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 jmp xchain00001_n35_α
 xchain00001_n30_β:
 jmp xchain00001_n5_α
# IR_RETURN
 xchain00001_n31_α:
 mov rax, qword ptr [r12 + 2576]
 mov rdx, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_getword_γ
# IR_ASSIGN gva
 xchain00001_n32_α:
 mov rax, qword ptr [r12 + 2320]
 mov rdx, qword ptr [r12 + 2328]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 jmp xchain00001_n36_α
 xchain00001_n32_β:
 jmp proc_getword_ω
# IR_COERCE_NUMERIC
 xchain00001_n33_α:
 mov eax, dword ptr [r12 + 2464]
 cmp eax, 7
 je .Lx00007_1
 cmp eax, 6
 jne .Lx00007_0
 mov eax, dword ptr [r12 + 2496]
 cmp eax, 6
 jne .Lx00007_0
.Lx00007_1:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 2448], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 2456], rax
 jmp .Lx00007_2
.Lx00007_0:
 lea rdi, [r12 + 2464]
 lea rsi, [r12 + 2496]
 lea rdx, [r12 + 2448]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00007_2:
 jmp xchain00001_n37_α
 xchain00001_n33_β:
 jmp xchain00001_n17_α
 xchain00001_n34_α:
# BOX CALL upto(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+2080] -> [zr+2032]
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2040], rax
# marshal arg1 = producer-box slot [zr+2096] -> [zr+2048]
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2056], rax
# marshal arg2 = producer-box slot [zr+2112] -> [zr+2064]
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 2072], rax
  .section .rodata
  .Lbynamefn108: .string "upto"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn108]
 lea rsi, [r12 + 2032]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je xchain00001_n24_α
 jmp xchain00001_n38_α
 xchain00001_n34_β:
 jmp xchain00001_n24_α
# IR_LIT_INTEGER
 xchain00001_n35_α:
 mov qword ptr [r12 + 1984], 6
 mov rax, qword ptr [rip + .Lx00008_0]
 mov qword ptr [r12 + 1992], rax
 jmp xchain00001_n39_α
 xchain00001_n35_β:
 jmp xchain00001_n5_α
.Lx00008_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00001_n36_α:
 mov qword ptr [r12 + 2288], 6
 mov rax, qword ptr [rip + .Lx00009_0]
 mov qword ptr [r12 + 2296], rax
 jmp xchain00001_n40_α
 xchain00001_n36_β:
 jmp xchain00001_n44_α
.Lx00009_0:
 .quad 1
 xchain00001_n37_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2448]
 cmp eax, 100
 je .Lx00010_0
 mov eax, dword ptr [r12 + 2448]
 cmp eax, 6
 jne .Lx00010_2
.Lx00010_1:
 mov rax, qword ptr [r12 + 2456]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 2432], 6
 mov qword ptr [r12 + 2440], rax
 jmp xchain00001_n41_α
.Lx00010_0:
 mov rdi, qword ptr [r12 + 2448]
 mov rsi, qword ptr [r12 + 2456]
 mov rdx, qword ptr [r12 + 2496]
 mov rcx, qword ptr [r12 + 2504]
 mov r8d, 0
 lea r9, [r12 + 2432]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00010_3
.Lx00010_2:
 mov rdi, qword ptr [r12 + 2448]
 mov rsi, qword ptr [r12 + 2456]
 mov rdx, qword ptr [r12 + 2496]
 mov rcx, qword ptr [r12 + 2504]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n17_α
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
.Lx00010_3:
 jmp xchain00001_n41_α
 xchain00001_n37_β:
 jmp xchain00001_n17_α
# IR_ASSIGN gva
 xchain00001_n38_α:
 mov rax, qword ptr [r12 + 2016]
 mov rdx, qword ptr [r12 + 2024]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain00001_n42_α
 xchain00001_n38_β:
 jmp xchain00001_n24_α
# IR_COERCE_NUMERIC
 xchain00001_n39_α:
 mov eax, dword ptr [r12 + 1952]
 cmp eax, 7
 je .Lx00011_1
 cmp eax, 6
 jne .Lx00011_0
 mov eax, dword ptr [r12 + 1984]
 cmp eax, 6
 jne .Lx00011_0
.Lx00011_1:
 mov rax, qword ptr [r12 + 1952]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 1960]
 mov qword ptr [r12 + 1944], rax
 jmp .Lx00011_2
.Lx00011_0:
 lea rdi, [r12 + 1952]
 lea rsi, [r12 + 1984]
 lea rdx, [r12 + 1936]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00011_2:
 jmp xchain00001_n43_α
 xchain00001_n39_β:
 jmp xchain00001_n5_α
# IR_ASSIGN gva
 xchain00001_n40_α:
 mov rax, qword ptr [r12 + 2288]
 mov rdx, qword ptr [r12 + 2296]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 jmp xchain00001_n44_α
 xchain00001_n40_β:
 jmp xchain00001_n44_α
 xchain00001_n41_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2416]
 cmp eax, 100
 je .Lx00012_0
 mov eax, dword ptr [r12 + 2432]
 cmp eax, 100
 je .Lx00012_0
 mov eax, dword ptr [r12 + 2416]
 cmp eax, 6
 jne .Lx00012_2
 mov eax, dword ptr [r12 + 2432]
 cmp eax, 6
 jne .Lx00012_2
.Lx00012_1:
 mov rax, qword ptr [r12 + 2424]
 mov rcx, qword ptr [r12 + 2440]
 cmp rax, rcx
 jne xchain00001_n17_α
 mov rcx, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 2400], rcx
 mov rcx, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 2408], rcx
 jmp xchain00001_n45_α
.Lx00012_0:
 mov rdi, qword ptr [r12 + 2416]
 mov rsi, qword ptr [r12 + 2424]
 mov rdx, qword ptr [r12 + 2432]
 mov rcx, qword ptr [r12 + 2440]
 mov r8d, 9
 lea r9, [r12 + 2400]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00012_1
 cmp eax, 1
 je xchain00001_n17_α
 jmp xchain00001_n45_α
.Lx00012_2:
 mov rdi, qword ptr [r12 + 2416]
 mov rsi, qword ptr [r12 + 2424]
 mov rdx, qword ptr [r12 + 2432]
 mov rcx, qword ptr [r12 + 2440]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n17_α
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 2400], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 2408], rax
 jmp xchain00001_n45_α
 xchain00001_n41_β:
 jmp xchain00001_n17_α
# IR_VAR
 xchain00001_n42_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain00001_n46_α
 xchain00001_n42_β:
 jmp xchain00001_n47_α
 xchain00001_n43_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1936]
 cmp eax, 100
 je .Lx00013_0
 mov eax, dword ptr [r12 + 1936]
 cmp eax, 6
 jne .Lx00013_2
.Lx00013_1:
 mov rax, qword ptr [r12 + 1944]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 1920], 6
 mov qword ptr [r12 + 1928], rax
 jmp xchain00001_n48_α
.Lx00013_0:
 mov rdi, qword ptr [r12 + 1936]
 mov rsi, qword ptr [r12 + 1944]
 mov rdx, qword ptr [r12 + 1984]
 mov rcx, qword ptr [r12 + 1992]
 mov r8d, 0
 lea r9, [r12 + 1920]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00013_3
.Lx00013_2:
 mov rdi, qword ptr [r12 + 1936]
 mov rsi, qword ptr [r12 + 1944]
 mov rdx, qword ptr [r12 + 1984]
 mov rcx, qword ptr [r12 + 1992]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n5_α
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
.Lx00013_3:
 jmp xchain00001_n48_α
 xchain00001_n43_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n44_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain00001_n49_α
 xchain00001_n44_β:
 jmp xchain00001_n17_α
# IR_MOVE_LABEL
 xchain00001_n45_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 2368], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 2376], rax
 lea rax, [rip + xchain00001_n17_α]
 mov qword ptr [r12 + 2384], rax
 jmp xchain00001_n20_α
 xchain00001_n45_β:
 jmp xchain00001_n17_α
 xchain00001_n46_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1888]
 mov rdx, qword ptr [r12 + 1896]
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], rdx
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 jmp xchain00001_n47_α
 xchain00001_n46_β:
 jmp xchain00001_n47_α
# IR_VAR_REF
 xchain00001_n47_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain00001_n50_α
 xchain00001_n47_β:
 jmp xchain00001_n54_α
# IR_ASSIGN gva
 xchain00001_n48_α:
 mov rax, qword ptr [r12 + 1920]
 mov rdx, qword ptr [r12 + 1928]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain00001_n51_α
 xchain00001_n48_β:
 jmp xchain00001_n5_α
# IR_LIT_INTEGER
 xchain00001_n49_α:
 mov qword ptr [r12 + 2256], 6
 mov rax, qword ptr [rip + .Lx00014_0]
 mov qword ptr [r12 + 2264], rax
 jmp xchain00001_n52_α
 xchain00001_n49_β:
 jmp xchain00001_n17_α
.Lx00014_0:
 .quad 1
# IR_VAR
 xchain00001_n50_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain00001_n53_α
 xchain00001_n50_β:
 jmp xchain00001_n54_α
# IR_MOVE_LABEL
 xchain00001_n51_α:
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 24], rax
 lea rax, [rip + xchain00001_n3_α]
 mov qword ptr [r12 + 32], rax
 jmp xchain00001_n55_α
 xchain00001_n51_β:
 jmp xchain00001_n5_α
# IR_COERCE_NUMERIC
 xchain00001_n52_α:
 mov eax, dword ptr [r12 + 2240]
 cmp eax, 7
 je .Lx00015_1
 cmp eax, 6
 jne .Lx00015_0
 mov eax, dword ptr [r12 + 2256]
 cmp eax, 6
 jne .Lx00015_0
.Lx00015_1:
 mov rax, qword ptr [r12 + 2240]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 2248]
 mov qword ptr [r12 + 2232], rax
 jmp .Lx00015_2
.Lx00015_0:
 lea rdi, [r12 + 2240]
 lea rsi, [r12 + 2256]
 lea rdx, [r12 + 2224]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00015_2:
 jmp xchain00001_n57_α
 xchain00001_n52_β:
 jmp xchain00001_n17_α
# IR_SUBSCRIPT x[i] variable
 xchain00001_n53_α:
 mov rdi, qword ptr [r12 + 1744]
 mov rsi, qword ptr [r12 + 1752]
 mov rdx, qword ptr [r12 + 1760]
 mov rcx, qword ptr [r12 + 1768]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00001_n54_α
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 jmp xchain00001_n58_α
 xchain00001_n53_β:
 jmp xchain00001_n54_α
# IR_VAR_REF
 xchain00001_n54_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain00001_n59_α
 xchain00001_n54_β:
 jmp xchain00001_n63_α
 xchain00001_n55_α:
 jmp xchain00001_n5_α
xchain00001_n55_β:
 jmp xchain00001_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n56_α:
 jmp qword ptr [r12 + 32]
 xchain00001_n56_β:
 jmp xchain00001_n5_α
 xchain00001_n57_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2224]
 cmp eax, 100
 je .Lx00016_0
 mov eax, dword ptr [r12 + 2224]
 cmp eax, 6
 jne .Lx00016_2
.Lx00016_1:
 mov rax, qword ptr [r12 + 2232]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 2208], 6
 mov qword ptr [r12 + 2216], rax
 jmp xchain00001_n60_α
.Lx00016_0:
 mov rdi, qword ptr [r12 + 2224]
 mov rsi, qword ptr [r12 + 2232]
 mov rdx, qword ptr [r12 + 2256]
 mov rcx, qword ptr [r12 + 2264]
 mov r8d, 0
 lea r9, [r12 + 2208]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00016_3
.Lx00016_2:
 mov rdi, qword ptr [r12 + 2224]
 mov rsi, qword ptr [r12 + 2232]
 mov rdx, qword ptr [r12 + 2256]
 mov rcx, qword ptr [r12 + 2264]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n17_α
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
.Lx00016_3:
 jmp xchain00001_n60_α
 xchain00001_n57_β:
 jmp xchain00001_n17_α
# IR_DEREF variable -> value
 xchain00001_n58_α:
 mov rdi, qword ptr [r12 + 1776]
 mov rsi, qword ptr [r12 + 1784]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n54_α
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain00001_n61_α
 xchain00001_n58_β:
 jmp xchain00001_n54_α
# IR_VAR
 xchain00001_n59_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 jmp xchain00001_n62_α
 xchain00001_n59_β:
 jmp xchain00001_n63_α
# IR_ASSIGN gva
 xchain00001_n60_α:
 mov rax, qword ptr [r12 + 2208]
 mov rdx, qword ptr [r12 + 2216]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain00001_n64_α
 xchain00001_n60_β:
 jmp xchain00001_n17_α
# IR_LIT_STRING
 xchain00001_n61_α:
 mov qword ptr [r12 + 1856], 1
 mov rax, qword ptr [rip + .Lx00017_0]
 mov qword ptr [r12 + 1864], rax
 jmp xchain00001_n65_α
 xchain00001_n61_β:
 jmp xchain00001_n71_α
.Lx00017_0:
 .quad .Lx00017_0_s
.Lx00017_0_s:
 .string "'"
# IR_SUBSCRIPT x[i] variable
 xchain00001_n62_α:
 mov rdi, qword ptr [r12 + 1648]
 mov rsi, qword ptr [r12 + 1656]
 mov rdx, qword ptr [r12 + 1664]
 mov rcx, qword ptr [r12 + 1672]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00001_n63_α
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain00001_n66_α
 xchain00001_n62_β:
 jmp xchain00001_n63_α
# IR_VAR
 xchain00001_n63_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain00001_n67_α
 xchain00001_n63_β:
 jmp xchain00001_n68_α
 xchain00001_n64_α:
 jmp xchain00001_n69_α
xchain00001_n64_β:
 jmp xchain00001_n17_α
# IR_MOVE_LABEL
 xchain00001_n65_α:
 mov rax, qword ptr [r12 + 1856]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 1816], rax
 lea rax, [rip + xchain00001_n71_α]
 mov qword ptr [r12 + 1824], rax
 jmp xchain00001_n70_α
 xchain00001_n65_β:
 jmp xchain00001_n54_α
# IR_DEREF variable -> value
 xchain00001_n66_α:
 mov rdi, qword ptr [r12 + 1680]
 mov rsi, qword ptr [r12 + 1688]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n63_α
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain00001_n73_α
 xchain00001_n66_β:
 jmp xchain00001_n63_α
# IR_VAR
 xchain00001_n67_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00001_n74_α
 xchain00001_n67_β:
 jmp xchain00001_n68_α
# IR_VAR
 xchain00001_n68_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain00001_n75_α
 xchain00001_n68_β:
 jmp xchain00001_n76_α
# IR_MOVE_LABEL
 xchain00001_n69_α:
 mov rax, qword ptr [r12 + 2192]
 mov qword ptr [r12 + 2160], rax
 mov rax, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 2168], rax
 lea rax, [rip + xchain00001_n17_α]
 mov qword ptr [r12 + 2176], rax
 jmp xchain00001_n77_α
 xchain00001_n69_β:
 jmp xchain00001_n17_α
 xchain00001_n70_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 1792]
 mov rsi, qword ptr [r12 + 1800]
 mov rdx, qword ptr [r12 + 1808]
 mov rcx, qword ptr [r12 + 1816]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n72_α
 mov rdi, qword ptr [r12 + 1808]
 mov rsi, qword ptr [r12 + 1816]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain00001_n79_α
 xchain00001_n70_β:
 jmp xchain00001_n72_α
# IR_LIT_STRING
 xchain00001_n71_α:
 mov qword ptr [r12 + 1840], 1
 mov rax, qword ptr [rip + .Lx00018_0]
 mov qword ptr [r12 + 1848], rax
 jmp xchain00001_n80_α
 xchain00001_n71_β:
 jmp xchain00001_n54_α
.Lx00018_0:
 .quad .Lx00018_0_s
.Lx00018_0_s:
 .string "\""
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n72_α:
 jmp qword ptr [r12 + 1824]
 xchain00001_n72_β:
 jmp xchain00001_n54_α
# IR_LIT_STRING
 xchain00001_n73_α:
 mov qword ptr [r12 + 1712], 1
 mov rax, qword ptr [rip + .Lx00019_0]
 mov qword ptr [r12 + 1720], rax
 jmp xchain00001_n81_α
 xchain00001_n73_β:
 jmp xchain00001_n63_α
.Lx00019_0:
 .quad .Lx00019_0_s
.Lx00019_0_s:
 .string "#"
# IR_VAR
 xchain00001_n74_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xchain00001_n82_α
 xchain00001_n74_β:
 jmp xchain00001_n68_α
# IR_LIT_INTEGER
 xchain00001_n75_α:
 mov qword ptr [r12 + 1488], 6
 mov rax, qword ptr [rip + .Lx00020_0]
 mov qword ptr [r12 + 1496], rax
 jmp xchain00001_n83_α
 xchain00001_n75_β:
 jmp xchain00001_n76_α
.Lx00020_0:
 .quad 1
# IR_VAR_REF
 xchain00001_n76_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain00001_n84_α
 xchain00001_n76_β:
 jmp proc_getword_ω
# IR_MOVE_LABEL
 xchain00001_n77_α:
 mov rax, qword ptr [r12 + 2160]
 mov qword ptr [r12 + 2128], rax
 mov rax, qword ptr [r12 + 2168]
 mov qword ptr [r12 + 2136], rax
 lea rax, [rip + xchain00001_n78_α]
 mov qword ptr [r12 + 2144], rax
 jmp xchain00001_n17_α
 xchain00001_n77_β:
 jmp xchain00001_n17_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n78_α:
 jmp qword ptr [r12 + 2176]
 xchain00001_n78_β:
 jmp xchain00001_n17_α
# IR_VAR
 xchain00001_n79_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain00001_n86_α
 xchain00001_n79_β:
 jmp xchain00001_n87_α
# IR_MOVE_LABEL
 xchain00001_n80_α:
 mov rax, qword ptr [r12 + 1840]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 1848]
 mov qword ptr [r12 + 1816], rax
 lea rax, [rip + xchain00001_n54_α]
 mov qword ptr [r12 + 1824], rax
 jmp xchain00001_n70_α
 xchain00001_n80_β:
 jmp xchain00001_n54_α
 xchain00001_n81_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 1696]
 mov rsi, qword ptr [r12 + 1704]
 mov rdx, qword ptr [r12 + 1712]
 mov rcx, qword ptr [r12 + 1720]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n63_α
 mov rdi, qword ptr [r12 + 1712]
 mov rsi, qword ptr [r12 + 1720]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain00001_n88_α
 xchain00001_n81_β:
 jmp xchain00001_n63_α
 xchain00001_n82_α:
# BOX CALL many(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+1584] -> [zr+1536]
 mov rax, qword ptr [r12 + 1584]
 mov qword ptr [r12 + 1536], rax
 mov rax, qword ptr [r12 + 1592]
 mov qword ptr [r12 + 1544], rax
# marshal arg1 = producer-box slot [zr+1600] -> [zr+1552]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1552], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1560], rax
# marshal arg2 = producer-box slot [zr+1616] -> [zr+1568]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1576], rax
  .section .rodata
  .Lbynamefn156: .string "many"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn156]
 lea rsi, [r12 + 1536]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 cmp eax, 99
 je xchain00001_n68_α
 jmp xchain00001_n89_α
 xchain00001_n82_β:
 jmp xchain00001_n68_α
# IR_COERCE_NUMERIC
 xchain00001_n83_α:
 mov eax, dword ptr [r12 + 1472]
 cmp eax, 7
 je .Lx00021_1
 cmp eax, 6
 jne .Lx00021_0
 mov eax, dword ptr [r12 + 1488]
 cmp eax, 6
 jne .Lx00021_0
.Lx00021_1:
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 1464], rax
 jmp .Lx00021_2
.Lx00021_0:
 lea rdi, [r12 + 1472]
 lea rsi, [r12 + 1488]
 lea rdx, [r12 + 1456]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00021_2:
 jmp xchain00001_n90_α
 xchain00001_n83_β:
 jmp xchain00001_n76_α
# IR_VAR
 xchain00001_n84_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain00001_n91_α
 xchain00001_n84_β:
 jmp proc_getword_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n85_α:
 jmp qword ptr [r12 + 2144]
 xchain00001_n85_β:
 jmp xchain00001_n17_α
# IR_UNOP
 xchain00001_n86_α:
 mov eax, dword ptr [r12 + 1072]
 cmp eax, 99
 je xchain00001_n87_α
 cmp eax, 0
 jne xchain00001_n87_α
 mov qword ptr [r12 + 1056], 0
 mov qword ptr [r12 + 1064], 0
 jmp xchain00001_n92_α
 xchain00001_n86_β:
 jmp xchain00001_n87_α
# IR_VAR
 xchain00001_n87_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain00001_n93_α
 xchain00001_n87_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n88_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain00001_n94_α
 xchain00001_n88_β:
 jmp xchain00001_n5_α
# IR_ASSIGN gva
 xchain00001_n89_α:
 mov rax, qword ptr [r12 + 1520]
 mov rdx, qword ptr [r12 + 1528]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 jmp xchain00001_n95_α
 xchain00001_n89_β:
 jmp xchain00001_n68_α
 xchain00001_n90_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1456]
 cmp eax, 100
 je .Lx00022_0
 mov eax, dword ptr [r12 + 1456]
 cmp eax, 6
 jne .Lx00022_2
.Lx00022_1:
 mov rax, qword ptr [r12 + 1464]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 1440], 6
 mov qword ptr [r12 + 1448], rax
 jmp xchain00001_n96_α
.Lx00022_0:
 mov rdi, qword ptr [r12 + 1456]
 mov rsi, qword ptr [r12 + 1464]
 mov rdx, qword ptr [r12 + 1488]
 mov rcx, qword ptr [r12 + 1496]
 mov r8d, 0
 lea r9, [r12 + 1440]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00022_3
.Lx00022_2:
 mov rdi, qword ptr [r12 + 1456]
 mov rsi, qword ptr [r12 + 1464]
 mov rdx, qword ptr [r12 + 1488]
 mov rcx, qword ptr [r12 + 1496]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n76_α
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
.Lx00022_3:
 jmp xchain00001_n96_α
 xchain00001_n90_β:
 jmp xchain00001_n76_α
# IR_LIT_INTEGER
 xchain00001_n91_α:
 mov qword ptr [r12 + 1376], 6
 mov rax, qword ptr [rip + .Lx00023_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain00001_n97_α
 xchain00001_n91_β:
 jmp proc_getword_ω
.Lx00023_0:
 .quad 1
# IR_VAR_REF
 xchain00001_n92_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain00001_n98_α
 xchain00001_n92_β:
 jmp xchain00001_n00024_α
# IR_LIT_INTEGER
 xchain00001_n93_α:
 mov qword ptr [r12 + 1040], 6
 mov rax, qword ptr [rip + .Lx00025_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain00001_n99_α
 xchain00001_n93_β:
 jmp xchain00001_n5_α
.Lx00025_0:
 .quad 1
# IR_UNOP
 xchain00001_n94_α:
 mov rdi, qword ptr [r12 + 1184]
 mov rsi, qword ptr [r12 + 1192]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain00001_n00026_α
 xchain00001_n94_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n95_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain00001_n00027_α
 xchain00001_n95_β:
 jmp proc_getword_ω
# IR_ASSIGN gva
 xchain00001_n96_α:
 mov rax, qword ptr [r12 + 1440]
 mov rdx, qword ptr [r12 + 1448]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain00001_n76_α
 xchain00001_n96_β:
 jmp xchain00001_n76_α
# IR_COERCE_NUMERIC
 xchain00001_n97_α:
 mov eax, dword ptr [r12 + 1360]
 cmp eax, 7
 je .Lx00028_1
 cmp eax, 6
 jne .Lx00028_0
 mov eax, dword ptr [r12 + 1376]
 cmp eax, 6
 jne .Lx00028_0
.Lx00028_1:
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1352], rax
 jmp .Lx00028_2
.Lx00028_0:
 lea rdi, [r12 + 1360]
 lea rsi, [r12 + 1376]
 lea rdx, [r12 + 1344]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00028_2:
 jmp xchain00001_n00029_α
 xchain00001_n97_β:
 jmp proc_getword_ω
# IR_VAR
 xchain00001_n98_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain00001_n00030_α
 xchain00001_n98_β:
 jmp xchain00001_n00024_α
# IR_COERCE_NUMERIC
 xchain00001_n99_α:
 mov eax, dword ptr [r12 + 1024]
 cmp eax, 7
 je .Lx00031_1
 cmp eax, 6
 jne .Lx00031_0
 mov eax, dword ptr [r12 + 1040]
 cmp eax, 6
 jne .Lx00031_0
.Lx00031_1:
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1016], rax
 jmp .Lx00031_2
.Lx00031_0:
 lea rdi, [r12 + 1024]
 lea rsi, [r12 + 1040]
 lea rdx, [r12 + 1008]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00031_2:
 jmp xchain00001_n00032_α
 xchain00001_n99_β:
 jmp xchain00001_n5_α
# IR_LIT_INTEGER
 xchain00001_n00026_α:
 mov qword ptr [r12 + 1200], 6
 mov rax, qword ptr [rip + .Lx00033_0]
 mov qword ptr [r12 + 1208], rax
 jmp xchain00001_n00034_α
 xchain00001_n00026_β:
 jmp xchain00001_n5_α
.Lx00033_0:
 .quad 1
# IR_VAR
 xchain00001_n00027_α:
 mov rax, qword ptr [r12 + 2864]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 2872]
 mov qword ptr [r12 + 1288], rax
 jmp xchain00001_n00035_α
 xchain00001_n00027_β:
 jmp proc_getword_ω
 xchain00001_n00029_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1344]
 cmp eax, 100
 je .Lx00036_0
 mov eax, dword ptr [r12 + 1344]
 cmp eax, 6
 jne .Lx00036_2
.Lx00036_1:
 mov rax, qword ptr [r12 + 1352]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [r12 + 1328], 6
 mov qword ptr [r12 + 1336], rax
 jmp xchain00001_n00037_α
.Lx00036_0:
 mov rdi, qword ptr [r12 + 1344]
 mov rsi, qword ptr [r12 + 1352]
 mov rdx, qword ptr [r12 + 1376]
 mov rcx, qword ptr [r12 + 1384]
 mov r8d, 1
 lea r9, [r12 + 1328]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00036_3
.Lx00036_2:
 mov rdi, qword ptr [r12 + 1344]
 mov rsi, qword ptr [r12 + 1352]
 mov rdx, qword ptr [r12 + 1376]
 mov rcx, qword ptr [r12 + 1384]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_getword_ω
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
.Lx00036_3:
 jmp xchain00001_n00037_α
 xchain00001_n00029_β:
 jmp proc_getword_ω
# IR_SUBSCRIPT x[i] variable
 xchain00001_n00030_α:
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 mov rdx, qword ptr [r12 + 928]
 mov rcx, qword ptr [r12 + 936]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00001_n00024_α
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain00001_n00038_α
 xchain00001_n00030_β:
 jmp xchain00001_n00024_α
# IR_VAR
 xchain00001_n00024_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00001_n00039_α
 xchain00001_n00024_β:
 jmp xchain00001_n00040_α
 xchain00001_n00032_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1008]
 cmp eax, 100
 je .Lx00041_0
 mov eax, dword ptr [r12 + 1008]
 cmp eax, 6
 jne .Lx00041_2
.Lx00041_1:
 mov rax, qword ptr [r12 + 1016]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 992], 6
 mov qword ptr [r12 + 1000], rax
 jmp xchain00001_n00001_α
.Lx00041_0:
 mov rdi, qword ptr [r12 + 1008]
 mov rsi, qword ptr [r12 + 1016]
 mov rdx, qword ptr [r12 + 1040]
 mov rcx, qword ptr [r12 + 1048]
 mov r8d, 0
 lea r9, [r12 + 992]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00041_3
.Lx00041_2:
 mov rdi, qword ptr [r12 + 1008]
 mov rsi, qword ptr [r12 + 1016]
 mov rdx, qword ptr [r12 + 1040]
 mov rcx, qword ptr [r12 + 1048]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n5_α
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
.Lx00041_3:
 jmp xchain00001_n00001_α
 xchain00001_n00032_β:
 jmp xchain00001_n5_α
# IR_COERCE_NUMERIC
 xchain00001_n00034_α:
 mov eax, dword ptr [r12 + 1168]
 cmp eax, 7
 je .Lx00042_1
 cmp eax, 6
 jne .Lx00042_0
 mov eax, dword ptr [r12 + 1200]
 cmp eax, 6
 jne .Lx00042_0
.Lx00042_1:
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1160], rax
 jmp .Lx00042_2
.Lx00042_0:
 lea rdi, [r12 + 1168]
 lea rsi, [r12 + 1200]
 lea rdx, [r12 + 1152]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00042_2:
 jmp xchain00001_n00043_α
 xchain00001_n00034_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n00035_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain00001_n00044_α
 xchain00001_n00035_β:
 jmp proc_getword_ω
# IR_SUBSCRIPT x[i] variable
 xchain00001_n00037_α:
 mov rdi, qword ptr [r12 + 1312]
 mov rsi, qword ptr [r12 + 1320]
 mov rdx, qword ptr [r12 + 1328]
 mov rcx, qword ptr [r12 + 1336]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_getword_ω
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain00001_n00045_α
 xchain00001_n00037_β:
 jmp proc_getword_ω
# IR_DEREF variable -> value
 xchain00001_n00038_α:
 mov rdi, qword ptr [r12 + 944]
 mov rsi, qword ptr [r12 + 952]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n00024_α
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain00001_n00002_α
 xchain00001_n00038_β:
 jmp xchain00001_n00024_α
# IR_LIT_INTEGER
 xchain00001_n00039_α:
 mov qword ptr [r12 + 880], 6
 mov rax, qword ptr [rip + .Lx00046_0]
 mov qword ptr [r12 + 888], rax
 jmp xchain00001_n00047_α
 xchain00001_n00039_β:
 jmp xchain00001_n00040_α
.Lx00046_0:
 .quad 1
 xchain00001_n00048_α:
 jmp xchain00001_n00040_α
xchain00001_n00048_β:
 jmp xchain00001_n00040_α
# IR_ASSIGN gva
 xchain00001_n00001_α:
 mov rax, qword ptr [r12 + 992]
 mov rdx, qword ptr [r12 + 1000]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain00001_n00049_α
 xchain00001_n00001_β:
 jmp xchain00001_n5_α
 xchain00001_n00043_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1152]
 cmp eax, 100
 je .Lx00050_0
 mov eax, dword ptr [r12 + 1152]
 cmp eax, 6
 jne .Lx00050_2
.Lx00050_1:
 mov rax, qword ptr [r12 + 1160]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 1136], 6
 mov qword ptr [r12 + 1144], rax
 jmp xchain00001_n00003_α
.Lx00050_0:
 mov rdi, qword ptr [r12 + 1152]
 mov rsi, qword ptr [r12 + 1160]
 mov rdx, qword ptr [r12 + 1200]
 mov rcx, qword ptr [r12 + 1208]
 mov r8d, 0
 lea r9, [r12 + 1136]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00050_3
.Lx00050_2:
 mov rdi, qword ptr [r12 + 1152]
 mov rsi, qword ptr [r12 + 1160]
 mov rdx, qword ptr [r12 + 1200]
 mov rcx, qword ptr [r12 + 1208]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n5_α
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
.Lx00050_3:
 jmp xchain00001_n00003_α
 xchain00001_n00043_β:
 jmp xchain00001_n5_α
# IR_SUBSCRIPT section
 xchain00001_n00044_α:
 mov rdi, qword ptr [r12 + 1264]
 mov rsi, qword ptr [r12 + 1272]
 mov rdx, qword ptr [r12 + 1280]
 mov rcx, qword ptr [r12 + 1288]
 mov r8, qword ptr [r12 + 1296]
 mov r9, qword ptr [r12 + 1304]
 call subscript_get2@PLT
 cmp eax, 99
 je proc_getword_ω
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain00001_n00051_α
 xchain00001_n00044_β:
 jmp proc_getword_ω
# IR_DEREF variable -> value
 xchain00001_n00045_α:
 mov rdi, qword ptr [r12 + 1392]
 mov rsi, qword ptr [r12 + 1400]
 call rt_deref@PLT
 cmp eax, 99
 je proc_getword_ω
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain00001_n00052_α
 xchain00001_n00045_β:
 jmp proc_getword_ω
 xchain00001_n00002_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 960]
 mov rdx, qword ptr [r12 + 968]
 mov qword ptr [r12 + 2848], rax
 mov qword ptr [r12 + 2856], rdx
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00001_n00024_α
 xchain00001_n00002_β:
 jmp xchain00001_n00024_α
# IR_COERCE_NUMERIC
 xchain00001_n00047_α:
 mov eax, dword ptr [r12 + 864]
 cmp eax, 7
 je .Lx00053_1
 cmp eax, 6
 jne .Lx00053_0
 mov eax, dword ptr [r12 + 880]
 cmp eax, 6
 jne .Lx00053_0
.Lx00053_1:
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 856], rax
 jmp .Lx00053_2
.Lx00053_0:
 lea rdi, [r12 + 864]
 lea rsi, [r12 + 880]
 lea rdx, [r12 + 848]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00053_2:
 jmp xchain00001_n00054_α
 xchain00001_n00047_β:
 jmp xchain00001_n00040_α
# IR_VAR
 xchain00001_n00040_α:
 mov rax, qword ptr [r12 + 2848]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 2856]
 mov qword ptr [r12 + 744], rax
 jmp xchain00001_n00004_α
 xchain00001_n00040_β:
 jmp xchain00001_n00055_α
# IR_MOVE_LABEL
 xchain00001_n00049_α:
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 88], rax
 lea rax, [rip + xchain00001_n3_α]
 mov qword ptr [r12 + 96], rax
 jmp xchain00001_n00056_α
 xchain00001_n00049_β:
 jmp xchain00001_n5_α
# IR_ASSIGN gva
 xchain00001_n00003_α:
 mov rax, qword ptr [r12 + 1136]
 mov rdx, qword ptr [r12 + 1144]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain00001_n00005_α
 xchain00001_n00003_β:
 jmp xchain00001_n5_α
# IR_RETURN
 xchain00001_n00051_α:
 mov rax, qword ptr [r12 + 1248]
 mov rdx, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_getword_γ
# IR_RETURN
 xchain00001_n00052_α:
 mov rax, qword ptr [r12 + 1408]
 mov rdx, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_getword_γ
 xchain00001_n00054_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 848]
 cmp eax, 100
 je .Lx00057_0
 mov eax, dword ptr [r12 + 848]
 cmp eax, 6
 jne .Lx00057_2
.Lx00057_1:
 mov rax, qword ptr [r12 + 856]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 832], 6
 mov qword ptr [r12 + 840], rax
 jmp xchain00001_n00058_α
.Lx00057_0:
 mov rdi, qword ptr [r12 + 848]
 mov rsi, qword ptr [r12 + 856]
 mov rdx, qword ptr [r12 + 880]
 mov rcx, qword ptr [r12 + 888]
 mov r8d, 0
 lea r9, [r12 + 832]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00057_3
.Lx00057_2:
 mov rdi, qword ptr [r12 + 848]
 mov rsi, qword ptr [r12 + 856]
 mov rdx, qword ptr [r12 + 880]
 mov rcx, qword ptr [r12 + 888]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00040_α
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
.Lx00057_3:
 jmp xchain00001_n00058_α
 xchain00001_n00054_β:
 jmp xchain00001_n00040_α
# IR_LIT_CHARSET
 xchain00001_n00004_α:
 mov qword ptr [r12 + 752], 1
 mov dword ptr [r12 + 756], -1
 mov rax, qword ptr [rip + .Lx00059_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain00001_n00060_α
 xchain00001_n00004_β:
 jmp xchain00001_n00055_α
.Lx00059_0:
 .quad .Lx00059_0_s
.Lx00059_0_s:
 .string "\\"
# IR_LIT_INTEGER
 xchain00001_n00055_α:
 mov qword ptr [r12 + 592], 6
 mov rax, qword ptr [rip + .Lx00061_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00001_n00062_α
 xchain00001_n00055_β:
 jmp xchain00001_n00063_α
.Lx00061_0:
 .quad 1
# IR_MOVE_LABEL
 xchain00001_n00056_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + xchain00001_n00064_α]
 mov qword ptr [r12 + 64], rax
 jmp xchain00001_n00065_α
 xchain00001_n00056_β:
 jmp xchain00001_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00064_α:
 jmp qword ptr [r12 + 96]
 xchain00001_n00064_β:
 jmp xchain00001_n5_α
# IR_MOVE_LABEL
 xchain00001_n00005_α:
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1096], rax
 lea rax, [rip + xchain00001_n3_α]
 mov qword ptr [r12 + 1104], rax
 jmp xchain00001_n00066_α
 xchain00001_n00005_β:
 jmp xchain00001_n5_α
# IR_ASSIGN gva
 xchain00001_n00058_α:
 mov rax, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00001_n00040_α
 xchain00001_n00058_β:
 jmp xchain00001_n00040_α
 xchain00001_n00060_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00055_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00001_n00067_α
 xchain00001_n00060_β:
 jmp xchain00001_n00055_α
# IR_ASSIGN gva
 xchain00001_n00062_α:
 mov rax, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00001_n00063_α
 xchain00001_n00062_β:
 jmp xchain00001_n00063_α
 xchain00001_n00065_α:
 jmp xchain00001_n00068_α
xchain00001_n00065_β:
 jmp xchain00001_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00069_α:
 jmp qword ptr [r12 + 64]
 xchain00001_n00069_β:
 jmp xchain00001_n5_α
# IR_MOVE_LABEL
 xchain00001_n00066_α:
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + xchain00001_n00070_α]
 mov qword ptr [r12 + 64], rax
 jmp xchain00001_n00065_α
 xchain00001_n00066_β:
 jmp xchain00001_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00070_α:
 jmp qword ptr [r12 + 1104]
 xchain00001_n00070_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n00067_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00001_n00071_α
 xchain00001_n00067_β:
 jmp xchain00001_n00055_α
# IR_VAR
 xchain00001_n00063_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00001_n00072_α
 xchain00001_n00063_β:
 jmp xchain00001_n00073_α
# IR_MOVE_LABEL
 xchain00001_n00068_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 24], rax
 lea rax, [rip + xchain00001_n00069_α]
 mov qword ptr [r12 + 32], rax
 jmp xchain00001_n55_α
 xchain00001_n00068_β:
 jmp xchain00001_n5_α
# IR_VAR
 xchain00001_n00071_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00001_n00074_α
 xchain00001_n00071_β:
 jmp xchain00001_n00055_α
# IR_LIT_INTEGER
 xchain00001_n00072_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx00075_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00001_n00076_α
 xchain00001_n00072_β:
 jmp xchain00001_n00073_α
.Lx00075_0:
 .quad 1
# IR_VAR
 xchain00001_n00073_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00001_n00077_α
 xchain00001_n00073_β:
 jmp proc_getword_ω
 xchain00001_n00074_α:
# BOX CALL upto(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+720] -> [zr+672]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 680], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+688]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 696], rax
# marshal arg2 = producer-box slot [zr+784] -> [zr+704]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 712], rax
  .section .rodata
  .Lbynamefn216: .string "upto"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn216]
 lea rsi, [r12 + 672]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je xchain00001_n00055_α
 jmp xchain00001_n00078_α
 xchain00001_n00074_β:
 jmp xchain00001_n00055_α
# IR_COERCE_NUMERIC
 xchain00001_n00076_α:
 mov eax, dword ptr [r12 + 544]
 cmp eax, 7
 je .Lx00079_1
 cmp eax, 6
 jne .Lx00079_0
 mov eax, dword ptr [r12 + 560]
 cmp eax, 6
 jne .Lx00079_0
.Lx00079_1:
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 536], rax
 jmp .Lx00079_2
.Lx00079_0:
 lea rdi, [r12 + 544]
 lea rsi, [r12 + 560]
 lea rdx, [r12 + 528]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00079_2:
 jmp xchain00001_n00080_α
 xchain00001_n00076_β:
 jmp xchain00001_n00073_α
 xchain00001_n00077_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+464]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn298: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn298]
 lea rsi, [r12 + 464]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je proc_getword_ω
 jmp xchain00001_n00081_α
 xchain00001_n00077_β:
 jmp proc_getword_ω
# IR_LIT_INTEGER
 xchain00001_n00078_α:
 mov qword ptr [r12 + 800], 6
 mov rax, qword ptr [rip + .Lx00082_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain00001_n00006_α
 xchain00001_n00078_β:
 jmp xchain00001_n00055_α
.Lx00082_0:
 .quad 1
 xchain00001_n00080_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 528]
 cmp eax, 100
 je .Lx00083_0
 mov eax, dword ptr [r12 + 528]
 cmp eax, 6
 jne .Lx00083_2
.Lx00083_1:
 mov rax, qword ptr [r12 + 536]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 512], 6
 mov qword ptr [r12 + 520], rax
 jmp xchain00001_n00084_α
.Lx00083_0:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov r8d, 0
 lea r9, [r12 + 512]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00083_3
.Lx00083_2:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00073_α
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
.Lx00083_3:
 jmp xchain00001_n00084_α
 xchain00001_n00080_β:
 jmp xchain00001_n00073_α
# IR_MOVE_LABEL
 xchain00001_n00081_α:
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
 lea rax, [rip + proc_getword_ω]
 mov qword ptr [r12 + 432], rax
 jmp xchain00001_n00085_α
 xchain00001_n00081_β:
 jmp xchain00001_n00040_α
# IR_COERCE_NUMERIC
 xchain00001_n00006_α:
 mov eax, dword ptr [r12 + 656]
 cmp eax, 7
 je .Lx00086_1
 cmp eax, 6
 jne .Lx00086_0
 mov eax, dword ptr [r12 + 800]
 cmp eax, 6
 jne .Lx00086_0
.Lx00086_1:
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 648], rax
 jmp .Lx00086_2
.Lx00086_0:
 lea rdi, [r12 + 656]
 lea rsi, [r12 + 800]
 lea rdx, [r12 + 640]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00086_2:
 jmp xchain00001_n00087_α
 xchain00001_n00006_β:
 jmp xchain00001_n00055_α
# IR_ASSIGN gva
 xchain00001_n00084_α:
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00001_n00073_α
 xchain00001_n00084_β:
 jmp xchain00001_n00073_α
# IR_ASSIGN gva
 xchain00001_n00085_α:
 mov rax, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00001_n00088_α
 xchain00001_n00085_β:
 jmp xchain00001_n00040_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00089_α:
 jmp qword ptr [r12 + 432]
 xchain00001_n00089_β:
 jmp xchain00001_n00040_α
 xchain00001_n00087_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 640]
 cmp eax, 100
 je .Lx00090_0
 mov eax, dword ptr [r12 + 640]
 cmp eax, 6
 jne .Lx00090_2
.Lx00090_1:
 mov rax, qword ptr [r12 + 648]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 624], 6
 mov qword ptr [r12 + 632], rax
 jmp xchain00001_n00007_α
.Lx00090_0:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 mov r8d, 0
 lea r9, [r12 + 624]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00090_3
.Lx00090_2:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00055_α
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
.Lx00090_3:
 jmp xchain00001_n00007_α
 xchain00001_n00087_β:
 jmp xchain00001_n00055_α
 xchain00001_n00088_α:
 jmp xchain00001_n00091_α
xchain00001_n00088_β:
 jmp xchain00001_n00040_α
# IR_ASSIGN gva
 xchain00001_n00007_α:
 mov rax, qword ptr [r12 + 624]
 mov rdx, qword ptr [r12 + 632]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00001_n00008_α
 xchain00001_n00007_β:
 jmp xchain00001_n00055_α
# IR_MOVE_LABEL
 xchain00001_n00091_α:
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 120], rax
 lea rax, [rip + xchain00001_n00089_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain00001_n00048_α
 xchain00001_n00091_β:
 jmp xchain00001_n00040_α
# IR_VAR_REF
 xchain00001_n00008_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00001_n00010_α
 xchain00001_n00008_β:
 jmp xchain00001_n00092_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00009_α:
 jmp qword ptr [r12 + 128]
 xchain00001_n00009_β:
 jmp xchain00001_n00040_α
# IR_VAR
 xchain00001_n00010_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00001_n00093_α
 xchain00001_n00010_β:
 jmp xchain00001_n00092_α
# IR_LIT_INTEGER
 xchain00001_n00093_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00094_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00001_n00011_α
 xchain00001_n00093_β:
 jmp xchain00001_n00092_α
.Lx00094_0:
 .quad 1
# IR_VAR
 xchain00001_n00092_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00001_n00095_α
 xchain00001_n00092_β:
 jmp xchain00001_n00040_α
# IR_COERCE_NUMERIC
 xchain00001_n00011_α:
 mov eax, dword ptr [r12 + 320]
 cmp eax, 7
 je .Lx00096_1
 cmp eax, 6
 jne .Lx00096_0
 mov eax, dword ptr [r12 + 336]
 cmp eax, 6
 jne .Lx00096_0
.Lx00096_1:
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 312], rax
 jmp .Lx00096_2
.Lx00096_0:
 lea rdi, [r12 + 320]
 lea rsi, [r12 + 336]
 lea rdx, [r12 + 304]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00096_2:
 jmp xchain00001_n00012_α
 xchain00001_n00011_β:
 jmp xchain00001_n00092_α
# IR_LIT_INTEGER
 xchain00001_n00095_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx00097_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00001_n00098_α
 xchain00001_n00095_β:
 jmp xchain00001_n00040_α
.Lx00097_0:
 .quad 1
 xchain00001_n00012_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 304]
 cmp eax, 100
 je .Lx00099_0
 mov eax, dword ptr [r12 + 304]
 cmp eax, 6
 jne .Lx00099_2
.Lx00099_1:
 mov rax, qword ptr [r12 + 312]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [r12 + 288], 6
 mov qword ptr [r12 + 296], rax
 jmp xchain00001_n00013_α
.Lx00099_0:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 mov r8d, 1
 lea r9, [r12 + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00099_3
.Lx00099_2:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00092_α
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
.Lx00099_3:
 jmp xchain00001_n00013_α
 xchain00001_n00012_β:
 jmp xchain00001_n00092_α
# IR_COERCE_NUMERIC
 xchain00001_n00098_α:
 mov eax, dword ptr [r12 + 224]
 cmp eax, 7
 je .Lx00100_1
 cmp eax, 6
 jne .Lx00100_0
 mov eax, dword ptr [r12 + 240]
 cmp eax, 6
 jne .Lx00100_0
.Lx00100_1:
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
 jmp .Lx00100_2
.Lx00100_0:
 lea rdi, [r12 + 224]
 lea rsi, [r12 + 240]
 lea rdx, [r12 + 208]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00100_2:
 jmp xchain00001_n00101_α
 xchain00001_n00098_β:
 jmp xchain00001_n00040_α
# IR_SUBSCRIPT x[i] variable
 xchain00001_n00013_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00001_n00092_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00001_n00102_α
 xchain00001_n00013_β:
 jmp xchain00001_n00092_α
 xchain00001_n00101_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 208]
 cmp eax, 100
 je .Lx00103_0
 mov eax, dword ptr [r12 + 208]
 cmp eax, 6
 jne .Lx00103_2
.Lx00103_1:
 mov rax, qword ptr [r12 + 216]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
 jmp xchain00001_n00104_α
.Lx00103_0:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 mov r8d, 0
 lea r9, [r12 + 192]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00103_3
.Lx00103_2:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00001_n00040_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
.Lx00103_3:
 jmp xchain00001_n00104_α
 xchain00001_n00101_β:
 jmp xchain00001_n00040_α
# IR_DEREF variable -> value
 xchain00001_n00102_α:
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n00092_α
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00001_n00105_α
 xchain00001_n00102_β:
 jmp xchain00001_n00092_α
# IR_ASSIGN gva
 xchain00001_n00104_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00001_n00106_α
 xchain00001_n00104_β:
 jmp xchain00001_n00040_α
# IR_VAR
 xchain00001_n00105_α:
 mov rax, qword ptr [r12 + 2848]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 2856]
 mov qword ptr [r12 + 392], rax
 jmp xchain00001_n00107_α
 xchain00001_n00105_β:
 jmp xchain00001_n00092_α
# IR_MOVE_LABEL
 xchain00001_n00106_α:
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
 lea rax, [rip + xchain00001_n00048_α]
 mov qword ptr [r12 + 160], rax
 jmp xchain00001_n00108_α
 xchain00001_n00106_β:
 jmp xchain00001_n00040_α
 xchain00001_n00107_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 2848]
 mov rcx, qword ptr [r12 + 2856]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00001_n00092_α
 mov rdi, qword ptr [r12 + 2848]
 mov rsi, qword ptr [r12 + 2856]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00001_n00109_α
 xchain00001_n00107_β:
 jmp xchain00001_n00092_α
# IR_MOVE_LABEL
 xchain00001_n00108_α:
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
 lea rax, [rip + xchain00001_n00014_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain00001_n00048_α
 xchain00001_n00108_β:
 jmp xchain00001_n00040_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n00014_α:
 jmp qword ptr [r12 + 160]
 xchain00001_n00014_β:
 jmp xchain00001_n00040_α
 xchain00001_n00110_α:
 jmp xchain00001_n00109_α
xchain00001_n00110_β:
 jmp xchain00001_n00109_α
 xchain00001_n00109_α:
 jmp xchain00001_n00111_α
xchain00001_n00109_β:
 jmp xchain00001_n5_α
# IR_MOVE_LABEL
 xchain00001_n00111_α:
 lea rax, [rip + xchain00001_n00109_α]
 mov qword ptr [r12 + 96], rax
 jmp xchain00001_n00056_α
 xchain00001_n00111_β:
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
 mov rdi, qword ptr [r12 + 2832]
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
 mov qword ptr [r12 + 2048], rax
 pop rsi
proc_format_α_body:
# IR_VAR_REF
 xchain00112_n0_α:
 lea rdi, [rbx + 320]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xchain00112_n1_α
 xchain00112_n0_β:
 jmp xchain00112_n3_α
# IR_NULLTEST_VAR
 xchain00112_n1_α:
 mov eax, dword ptr [r12 + 1984]
 cmp eax, 99
 je xchain00112_n3_α
 mov rdi, qword ptr [r12 + 1984]
 mov rsi, qword ptr [r12 + 1992]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00112_n3_α
 cmp eax, 0
 jne xchain00112_n3_α
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 2000], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 2008], rax
 jmp xchain00112_n2_α
 xchain00112_n1_β:
 jmp xchain00112_n3_α
# IR_LIT_INTEGER
 xchain00112_n2_α:
 mov qword ptr [r12 + 2032], 6
 mov rax, qword ptr [rip + .Lx00113_0]
 mov qword ptr [r12 + 2040], rax
 jmp xchain00112_n4_α
 xchain00112_n2_β:
 jmp xchain00112_n3_α
.Lx00113_0:
 .quad 1
# IR_MAKE_LIST
 xchain00112_n3_α:
 lea rdi, [r12 + 1664]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain00112_n5_α
 xchain00112_n3_β:
 jmp xchain00112_n7_α
# IR_ASSIGN_VAR
 xchain00112_n4_α:
 mov rdi, qword ptr [r12 + 2000]
 mov rsi, qword ptr [r12 + 2008]
 mov rdx, qword ptr [r12 + 2032]
 mov rcx, qword ptr [r12 + 2040]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00112_n3_α
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 jmp xchain00112_n6_α
 xchain00112_n4_β:
 jmp xchain00112_n3_α
 xchain00112_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1648]
 mov rdx, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain00112_n7_α
 xchain00112_n5_β:
 jmp xchain00112_n7_α
# IR_VAR
 xchain00112_n6_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 jmp xchain00112_n8_α
 xchain00112_n6_β:
 jmp xchain00112_n9_α
# IR_VAR
 xchain00112_n7_α:
 mov rax, qword ptr [r12 + 2128]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 1624], rax
 jmp xchain00112_n10_α
 xchain00112_n7_β:
 jmp xchain00112_n11_α
# IR_UNOP
 xchain00112_n8_α:
 mov eax, dword ptr [r12 + 1968]
 cmp eax, 99
 je xchain00112_n9_α
 cmp eax, 0
 je xchain00112_n9_α
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 1960], rax
 jmp xchain00112_n12_α
 xchain00112_n8_β:
 jmp xchain00112_n9_α
# IR_LIT_INTEGER
 xchain00112_n9_α:
 mov qword ptr [r12 + 1936], 6
 mov rax, qword ptr [rip + .Lx00114_0]
 mov qword ptr [r12 + 1944], rax
 jmp xchain00112_n13_α
 xchain00112_n9_β:
 jmp xchain00112_n18_α
.Lx00114_0:
 .quad 80
 xchain00112_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1616]
 mov rdx, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00112_n11_α
 xchain00112_n10_β:
 jmp xchain00112_n11_α
# IR_VAR
 xchain00112_n11_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00112_n14_α
 xchain00112_n11_β:
 jmp xchain00112_n15_α
# IR_MOVE_LABEL
 xchain00112_n12_α:
 mov rax, qword ptr [r12 + 1952]
 mov qword ptr [r12 + 1904], rax
 mov rax, qword ptr [r12 + 1960]
 mov qword ptr [r12 + 1912], rax
 lea rax, [rip + xchain00112_n9_α]
 mov qword ptr [r12 + 1920], rax
 jmp xchain00112_n16_α
 xchain00112_n12_β:
 jmp xchain00112_n18_α
# IR_MOVE_LABEL
 xchain00112_n13_α:
 mov rax, qword ptr [r12 + 1936]
 mov qword ptr [r12 + 1904], rax
 mov rax, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 1912], rax
 lea rax, [rip + xchain00112_n18_α]
 mov qword ptr [r12 + 1920], rax
 jmp xchain00112_n16_α
 xchain00112_n13_β:
 jmp xchain00112_n18_α
# IR_LIST_BANG
 xchain00112_n14_α:
 mov qword ptr [r12 + 224], 0
.Lx00115_0:
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 224]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp rax, 99
 je xchain00112_n15_α
 jmp xchain00112_n19_α
 xchain00112_n14_β:
 inc qword ptr [r12 + 224]
 jmp .Lx00115_0
# IR_VAR
 xchain00112_n15_α:
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 184], rax
 jmp xchain00112_n20_α
 xchain00112_n15_β:
 jmp xchain00112_n21_α
 xchain00112_n16_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1904]
 mov rdx, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain00112_n18_α
 xchain00112_n16_β:
 jmp xchain00112_n18_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00112_n17_α:
 jmp qword ptr [r12 + 1920]
 xchain00112_n17_β:
 jmp xchain00112_n18_α
# IR_VAR
 xchain00112_n18_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 jmp xchain00112_n22_α
 xchain00112_n18_β:
 jmp xchain00112_n23_α
 xchain00112_n19_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00112_n24_α
 xchain00112_n19_β:
 jmp xchain00112_n15_α
 xchain00112_n20_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn375: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn375]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00112_n21_α
 jmp xchain00112_n25_α
 xchain00112_n20_β:
 jmp xchain00112_n21_α
# IR_VAR
 xchain00112_n21_α:
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 104], rax
 jmp xchain00112_n26_α
 xchain00112_n21_β:
 jmp xchain00112_n27_α
# IR_UNOP
 xchain00112_n22_α:
 mov eax, dword ptr [r12 + 1872]
 cmp eax, 99
 je xchain00112_n23_α
 cmp eax, 0
 je xchain00112_n23_α
 mov rax, qword ptr [r12 + 1872]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 1864], rax
 jmp xchain00112_n28_α
 xchain00112_n22_β:
 jmp xchain00112_n23_α
# IR_LIT_INTEGER
 xchain00112_n23_α:
 mov qword ptr [r12 + 1840], 6
 mov rax, qword ptr [rip + .Lx00116_0]
 mov qword ptr [r12 + 1848], rax
 jmp xchain00112_n29_α
 xchain00112_n23_β:
 jmp xchain00112_n35_α
.Lx00116_0:
 .quad 40
# IR_VAR
 xchain00112_n24_α:
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 312], rax
 jmp xchain00112_n30_α
 xchain00112_n24_β:
 jmp xchain00112_n14_β
 xchain00112_n25_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00112_n21_α
 xchain00112_n25_β:
 jmp xchain00112_n21_α
# IR_LIT_STRING
 xchain00112_n26_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00117_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00112_n31_α
 xchain00112_n26_β:
 jmp xchain00112_n27_α
.Lx00117_0:
 .quad .Lx00117_0_s
.Lx00117_0_s:
 .string "variable\tprocedure\t\tline numbers\n"
# IR_VAR
 xchain00112_n27_α:
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 40], rax
 jmp xchain00112_n32_α
 xchain00112_n27_β:
 jmp proc_format_ω
# IR_MOVE_LABEL
 xchain00112_n28_α:
 mov rax, qword ptr [r12 + 1856]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 1816], rax
 lea rax, [rip + xchain00112_n23_α]
 mov qword ptr [r12 + 1824], rax
 jmp xchain00112_n33_α
 xchain00112_n28_β:
 jmp xchain00112_n35_α
# IR_MOVE_LABEL
 xchain00112_n29_α:
 mov rax, qword ptr [r12 + 1840]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 1848]
 mov qword ptr [r12 + 1816], rax
 lea rax, [rip + xchain00112_n35_α]
 mov qword ptr [r12 + 1824], rax
 jmp xchain00112_n33_α
 xchain00112_n29_β:
 jmp xchain00112_n35_α
# IR_LIST_BANG
 xchain00112_n30_α:
 mov qword ptr [r12 + 288], 0
.Lx00118_0:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 288]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp rax, 99
 je xchain00112_n14_β
 jmp xchain00112_n36_α
 xchain00112_n30_β:
 inc qword ptr [r12 + 288]
 jmp .Lx00118_0
 xchain00112_n31_α:
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
  .Lrkfn393: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn393]
 lea rsi, [r12 + 64]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain00112_n27_α
 jmp xchain00112_n27_α
 xchain00112_n31_β:
 jmp xchain00112_n27_α
# IR_RETURN
 xchain00112_n32_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_format_γ
 xchain00112_n33_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1808]
 mov rdx, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain00112_n35_α
 xchain00112_n33_β:
 jmp xchain00112_n35_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00112_n34_α:
 jmp qword ptr [r12 + 1824]
 xchain00112_n34_β:
 jmp xchain00112_n35_α
# IR_VAR
 xchain00112_n35_α:
 mov rax, qword ptr [rbx + 176]
 mov rdx, qword ptr [rbx + 184]
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 jmp xchain00112_n37_α
 xchain00112_n35_β:
 jmp xchain00112_n38_α
 xchain00112_n36_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00112_n39_α
 xchain00112_n36_β:
 jmp xchain00112_n14_β
# IR_UNOP
 xchain00112_n37_α:
 mov eax, dword ptr [r12 + 1776]
 cmp eax, 99
 je xchain00112_n38_α
 cmp eax, 0
 je xchain00112_n38_α
 mov rax, qword ptr [r12 + 1776]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1784]
 mov qword ptr [r12 + 1768], rax
 jmp xchain00112_n40_α
 xchain00112_n37_β:
 jmp xchain00112_n38_α
# IR_LIT_INTEGER
 xchain00112_n38_α:
 mov qword ptr [r12 + 1744], 6
 mov rax, qword ptr [rip + .Lx00119_0]
 mov qword ptr [r12 + 1752], rax
 jmp xchain00112_n41_α
 xchain00112_n38_β:
 jmp xchain00112_n3_α
.Lx00119_0:
 .quad 4
# IR_VAR_REF
 xchain00112_n39_α:
 lea rdi, [r12 + 2096]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain00112_n42_α
 xchain00112_n39_β:
 jmp xchain00112_n48_α
# IR_MOVE_LABEL
 xchain00112_n40_α:
 mov rax, qword ptr [r12 + 1760]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 1768]
 mov qword ptr [r12 + 1720], rax
 lea rax, [rip + xchain00112_n38_α]
 mov qword ptr [r12 + 1728], rax
 jmp xchain00112_n43_α
 xchain00112_n40_β:
 jmp xchain00112_n3_α
# IR_MOVE_LABEL
 xchain00112_n41_α:
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 1720], rax
 lea rax, [rip + xchain00112_n3_α]
 mov qword ptr [r12 + 1728], rax
 jmp xchain00112_n43_α
 xchain00112_n41_β:
 jmp xchain00112_n3_α
# IR_LIT_INTEGER
 xchain00112_n42_α:
 mov qword ptr [r12 + 1312], 6
 mov rax, qword ptr [rip + .Lx00120_0]
 mov qword ptr [r12 + 1320], rax
 jmp xchain00112_n45_α
 xchain00112_n42_β:
 jmp xchain00112_n48_α
.Lx00120_0:
 .quad 1
 xchain00112_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1712]
 mov rdx, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain00112_n46_α
 xchain00112_n43_β:
 jmp xchain00112_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00112_n44_α:
 jmp qword ptr [r12 + 1728]
 xchain00112_n44_β:
 jmp xchain00112_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00112_n45_α:
 mov rdi, qword ptr [r12 + 1296]
 mov rsi, qword ptr [r12 + 1304]
 mov rdx, qword ptr [r12 + 1312]
 mov rcx, qword ptr [r12 + 1320]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00112_n48_α
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain00112_n47_α
 xchain00112_n45_β:
 jmp xchain00112_n48_α
 xchain00112_n46_α:
 jmp xchain00112_n49_α
xchain00112_n46_β:
 jmp xchain00112_n3_α
# IR_DEREF variable -> value
 xchain00112_n47_α:
 mov rdi, qword ptr [r12 + 1328]
 mov rsi, qword ptr [r12 + 1336]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00112_n48_α
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain00112_n50_α
 xchain00112_n47_β:
 jmp xchain00112_n48_α
# IR_VAR
 xchain00112_n48_α:
 mov rax, qword ptr [r12 + 2144]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 2152]
 mov qword ptr [r12 + 632], rax
 jmp xchain00112_n51_α
 xchain00112_n48_β:
 jmp xchain00112_n52_α
# IR_MOVE_LABEL
 xchain00112_n49_α:
 mov rax, qword ptr [r12 + 1696]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 1672], rax
 lea rax, [rip + xchain00112_n44_α]
 mov qword ptr [r12 + 1680], rax
 jmp xchain00112_n3_α
 xchain00112_n49_β:
 jmp xchain00112_n3_α
# IR_LIT_INTEGER
 xchain00112_n50_α:
 mov qword ptr [r12 + 1360], 6
 mov rax, qword ptr [rip + .Lx00121_0]
 mov qword ptr [r12 + 1368], rax
 jmp xchain00112_n54_α
 xchain00112_n50_β:
 jmp xchain00112_n48_α
.Lx00121_0:
 .quad 16
# IR_VAR_REF
 xchain00112_n51_α:
 lea rdi, [r12 + 2096]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00112_n55_α
 xchain00112_n51_β:
 jmp xchain00112_n52_α
# IR_VAR
 xchain00112_n52_α:
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 568], rax
 jmp xchain00112_n56_α
 xchain00112_n52_β:
 jmp xchain00112_n57_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00112_n53_α:
 jmp qword ptr [r12 + 1680]
 xchain00112_n53_β:
 jmp xchain00112_n3_α
# IR_LIT_STRING
 xchain00112_n54_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx00122_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain00112_n58_α
 xchain00112_n54_β:
 jmp xchain00112_n48_α
.Lx00122_0:
 .quad .Lx00122_0_s
.Lx00122_0_s:
 .string " "
# IR_LIT_INTEGER
 xchain00112_n55_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx00123_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain00112_n59_α
 xchain00112_n55_β:
 jmp xchain00112_n52_α
.Lx00123_0:
 .quad 3
# IR_VAR
 xchain00112_n56_α:
 mov rax, qword ptr [r12 + 2128]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 584], rax
 jmp xchain00112_n60_α
 xchain00112_n56_β:
 jmp xchain00112_n57_α
# IR_VAR
 xchain00112_n57_α:
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 408], rax
 jmp xchain00112_n61_α
 xchain00112_n57_β:
 jmp xchain00112_n62_α
 xchain00112_n58_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1344] -> [zr+1248]
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1256], rax
# marshal arg1 = producer-box slot [zr+1360] -> [zr+1264]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1272], rax
# marshal arg2 = producer-box slot [zr+1376] -> [zr+1280]
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1288], rax
  .section .rodata
  .Lrkfn433: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn433]
 lea rsi, [r12 + 1248]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je xchain00112_n48_α
 jmp xchain00112_n63_α
 xchain00112_n58_β:
 jmp xchain00112_n48_α
# IR_VAR
 xchain00112_n59_α:
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 792], rax
 jmp xchain00112_n64_α
 xchain00112_n59_β:
 jmp xchain00112_n52_α
 xchain00112_n60_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2112]
 cmp eax, 100
 je .Lx00124_0
 mov eax, dword ptr [r12 + 2128]
 cmp eax, 100
 je .Lx00124_0
 mov eax, dword ptr [r12 + 2112]
 cmp eax, 6
 jne .Lx00124_2
 mov eax, dword ptr [r12 + 2128]
 cmp eax, 6
 jne .Lx00124_2
.Lx00124_1:
 mov rax, qword ptr [r12 + 2120]
 mov rcx, qword ptr [r12 + 2136]
 cmp rax, rcx
 jne xchain00112_n57_α
 mov rcx, qword ptr [r12 + 2128]
 mov qword ptr [r12 + 544], rcx
 mov rcx, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 552], rcx
 jmp xchain00112_n65_α
.Lx00124_0:
 mov rdi, qword ptr [r12 + 2112]
 mov rsi, qword ptr [r12 + 2120]
 mov rdx, qword ptr [r12 + 2128]
 mov rcx, qword ptr [r12 + 2136]
 mov r8d, 9
 lea r9, [r12 + 544]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00124_1
 cmp eax, 1
 je xchain00112_n57_α
 jmp xchain00112_n65_α
.Lx00124_2:
 mov rdi, qword ptr [r12 + 2112]
 mov rsi, qword ptr [r12 + 2120]
 mov rdx, qword ptr [r12 + 2128]
 mov rcx, qword ptr [r12 + 2136]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00112_n57_α
 mov rax, qword ptr [r12 + 2128]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 552], rax
 jmp xchain00112_n65_α
 xchain00112_n60_β:
 jmp xchain00112_n57_α
# IR_VAR
 xchain00112_n61_α:
 mov rax, qword ptr [r12 + 2144]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 2152]
 mov qword ptr [r12 + 424], rax
 jmp xchain00112_n66_α
 xchain00112_n61_β:
 jmp xchain00112_n62_α
# IR_VAR
 xchain00112_n62_α:
 mov rax, qword ptr [r12 + 2128]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 344], rax
 jmp xchain00112_n67_α
 xchain00112_n62_β:
 jmp xchain00112_n30_β
# IR_VAR_REF
 xchain00112_n63_α:
 lea rdi, [r12 + 2096]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain00112_n68_α
 xchain00112_n63_β:
 jmp xchain00112_n48_α
# IR_UNOP
 xchain00112_n64_α:
 mov rdi, qword ptr [r12 + 2096]
 mov rsi, qword ptr [r12 + 2104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00112_n69_α
 xchain00112_n64_β:
 jmp xchain00112_n52_α
# IR_VAR
 xchain00112_n65_α:
 mov rax, qword ptr [r12 + 2144]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 2152]
 mov qword ptr [r12 + 504], rax
 jmp xchain00112_n70_α
 xchain00112_n65_β:
 jmp xchain00112_n57_α
 xchain00112_n66_α:
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
  .Lrkfn447: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn447]
 lea rsi, [r12 + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00112_n62_α
 jmp xchain00112_n62_α
 xchain00112_n66_β:
 jmp xchain00112_n62_α
 xchain00112_n67_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00112_n71_α
 xchain00112_n67_β:
 jmp xchain00112_n30_β
# IR_LIT_INTEGER
 xchain00112_n68_α:
 mov qword ptr [r12 + 1472], 6
 mov rax, qword ptr [rip + .Lx00125_0]
 mov qword ptr [r12 + 1480], rax
 jmp xchain00112_n72_α
 xchain00112_n68_β:
 jmp xchain00112_n48_α
.Lx00125_0:
 .quad 2
# IR_TO
 xchain00112_n69_α:
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 736], rax
.Lx00126_0:
 mov rax, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 776]
 cmp rax, rcx
 jg xchain00112_n52_α
 mov qword ptr [r12 + 720], 6
 mov qword ptr [r12 + 728], rax
 jmp xchain00112_n73_α
 xchain00112_n69_β:
 inc qword ptr [r12 + 736]
 jmp .Lx00126_0
# IR_LIT_INTEGER
 xchain00112_n70_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00127_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00112_n74_α
 xchain00112_n70_β:
 jmp xchain00112_n57_α
.Lx00127_0:
 .quad 1
 xchain00112_n71_α:
 jmp xchain00112_n30_β
xchain00112_n71_β:
 jmp xchain00112_n30_β
# IR_SUBSCRIPT x[i] variable
 xchain00112_n72_α:
 mov rdi, qword ptr [r12 + 1456]
 mov rsi, qword ptr [r12 + 1464]
 mov rdx, qword ptr [r12 + 1472]
 mov rcx, qword ptr [r12 + 1480]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00112_n48_α
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 jmp xchain00112_n75_α
 xchain00112_n72_β:
 jmp xchain00112_n48_α
# IR_SUBSCRIPT x[i] variable
 xchain00112_n73_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 720]
 mov rcx, qword ptr [r12 + 728]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00112_n69_β
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00112_n76_α
 xchain00112_n73_β:
 jmp xchain00112_n69_β
# IR_LIT_INTEGER
 xchain00112_n74_α:
 mov qword ptr [r12 + 528], 6
 mov rax, qword ptr [rip + .Lx00128_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain00112_n77_α
 xchain00112_n74_β:
 jmp xchain00112_n57_α
.Lx00128_0:
 .quad 18446744073709551610
# IR_DEREF variable -> value
 xchain00112_n75_α:
 mov rdi, qword ptr [r12 + 1488]
 mov rsi, qword ptr [r12 + 1496]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00112_n48_α
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 jmp xchain00112_n78_α
 xchain00112_n75_β:
 jmp xchain00112_n48_α
# IR_DEREF variable -> value
 xchain00112_n76_α:
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00112_n69_β
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00112_n79_α
 xchain00112_n76_β:
 jmp xchain00112_n69_β
# IR_SUBSCRIPT section
 xchain00112_n77_α:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 mov r8, qword ptr [r12 + 528]
 mov r9, qword ptr [r12 + 536]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00112_n57_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00112_n80_α
 xchain00112_n77_β:
 jmp xchain00112_n57_α
# IR_VAR
 xchain00112_n78_α:
 mov rax, qword ptr [r12 + 2128]
 mov qword ptr [r12 + 1552], rax
 mov rax, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 1560], rax
 jmp xchain00112_n81_α
 xchain00112_n78_β:
 jmp xchain00112_n48_α
# IR_VAR
 xchain00112_n79_α:
 mov rax, qword ptr [r12 + 2160]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 2168]
 mov qword ptr [r12 + 840], rax
 jmp xchain00112_n82_α
 xchain00112_n79_β:
 jmp xchain00112_n69_β
 xchain00112_n80_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00112_n83_α
 xchain00112_n80_β:
 jmp xchain00112_n57_α
# IR_LIT_INTEGER
 xchain00112_n81_α:
 mov qword ptr [r12 + 1568], 6
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [r12 + 1576], rax
 jmp xchain00112_n84_α
 xchain00112_n81_β:
 jmp xchain00112_n48_α
.Lx00129_0:
 .quad 16
# IR_LIT_STRING
 xchain00112_n82_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx00130_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain00112_n85_α
 xchain00112_n82_β:
 jmp xchain00112_n69_β
.Lx00130_0:
 .quad .Lx00130_0_s
.Lx00130_0_s:
 .string " "
# IR_MOVE_LABEL
 xchain00112_n83_α:
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
 lea rax, [rip + xchain00112_n57_α]
 mov qword ptr [r12 + 448], rax
 jmp xchain00112_n57_α
 xchain00112_n83_β:
 jmp xchain00112_n57_α
# IR_COERCE_NUMERIC
 xchain00112_n84_α:
 mov eax, dword ptr [r12 + 2128]
 cmp eax, 7
 je .Lx00131_1
 cmp eax, 6
 jne .Lx00131_0
 mov eax, dword ptr [r12 + 1568]
 cmp eax, 6
 jne .Lx00131_0
.Lx00131_1:
 mov rax, qword ptr [r12 + 2128]
 mov qword ptr [r12 + 1536], rax
 mov rax, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 1544], rax
 jmp .Lx00131_2
.Lx00131_0:
 lea rdi, [r12 + 2128]
 lea rsi, [r12 + 1568]
 lea rdx, [r12 + 1536]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00131_2:
 jmp xchain00112_n87_α
 xchain00112_n84_β:
 jmp xchain00112_n48_α
 xchain00112_n85_α:
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
  .Lrkfn472: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn472]
 lea rsi, [r12 + 656]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain00112_n52_α
 jmp xchain00112_n88_α
 xchain00112_n85_β:
 jmp xchain00112_n52_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00112_n86_α:
 jmp qword ptr [r12 + 448]
 xchain00112_n86_β:
 jmp xchain00112_n57_α
 xchain00112_n87_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1536]
 cmp eax, 100
 je .Lx00132_0
 mov eax, dword ptr [r12 + 1536]
 cmp eax, 6
 jne .Lx00132_2
.Lx00132_1:
 mov rax, qword ptr [r12 + 1544]
 mov rcx, 16
 sub rax, rcx
 mov qword ptr [r12 + 1520], 6
 mov qword ptr [r12 + 1528], rax
 jmp xchain00112_n89_α
.Lx00132_0:
 mov rdi, qword ptr [r12 + 1536]
 mov rsi, qword ptr [r12 + 1544]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 mov r8d, 1
 lea r9, [r12 + 1520]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00132_3
.Lx00132_2:
 mov rdi, qword ptr [r12 + 1536]
 mov rsi, qword ptr [r12 + 1544]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00112_n48_α
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
.Lx00132_3:
 jmp xchain00112_n89_α
 xchain00112_n87_β:
 jmp xchain00112_n48_α
 xchain00112_n88_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 2144]
 mov rsi, qword ptr [r12 + 2152]
 mov rdx, qword ptr [r12 + 640]
 mov rcx, qword ptr [r12 + 648]
 call str_concat_d@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00112_n90_α
 xchain00112_n88_β:
 jmp xchain00112_n52_α
# IR_LIT_STRING
 xchain00112_n89_α:
 mov qword ptr [r12 + 1584], 1
 mov rax, qword ptr [rip + .Lx00133_0]
 mov qword ptr [r12 + 1592], rax
 jmp xchain00112_n91_α
 xchain00112_n89_β:
 jmp xchain00112_n48_α
.Lx00133_0:
 .quad .Lx00133_0_s
.Lx00133_0_s:
 .string " "
 xchain00112_n90_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00112_n92_α
 xchain00112_n90_β:
 jmp xchain00112_n52_α
 xchain00112_n91_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1408]
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1416], rax
# marshal arg1 = producer-box slot [zr+1520] -> [zr+1424]
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1432], rax
# marshal arg2 = producer-box slot [zr+1584] -> [zr+1440]
 mov rax, qword ptr [r12 + 1584]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 1592]
 mov qword ptr [r12 + 1448], rax
  .section .rodata
  .Lrkfn480: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn480]
 lea rsi, [r12 + 1408]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 cmp eax, 99
 je xchain00112_n48_α
 jmp xchain00112_n93_α
 xchain00112_n91_β:
 jmp xchain00112_n48_α
# IR_VAR
 xchain00112_n92_α:
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 1176], rax
 jmp xchain00112_n94_α
 xchain00112_n92_β:
 jmp xchain00112_n95_α
 xchain00112_n93_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1232]
 mov rsi, qword ptr [r12 + 1240]
 mov rdx, qword ptr [r12 + 1392]
 mov rcx, qword ptr [r12 + 1400]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain00112_n96_α
 xchain00112_n93_β:
 jmp xchain00112_n48_α
# IR_VAR
 xchain00112_n94_α:
 mov rax, qword ptr [r12 + 2160]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 2168]
 mov qword ptr [r12 + 1192], rax
 jmp xchain00112_n97_α
 xchain00112_n94_β:
 jmp xchain00112_n95_α
# IR_VAR
 xchain00112_n95_α:
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 1016], rax
 jmp xchain00112_n98_α
 xchain00112_n95_β:
 jmp xchain00112_n69_β
 xchain00112_n96_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1216]
 mov rdx, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain00112_n48_α
 xchain00112_n96_β:
 jmp xchain00112_n48_α
# IR_COERCE_NUMERIC
 xchain00112_n97_α:
 mov eax, dword ptr [r12 + 2112]
 cmp eax, 7
 je .Lx00134_1
 cmp eax, 6
 jne .Lx00134_0
 mov eax, dword ptr [r12 + 2160]
 cmp eax, 6
 jne .Lx00134_0
.Lx00134_1:
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 1160], rax
 jmp .Lx00134_2
.Lx00134_0:
 lea rdi, [r12 + 2112]
 lea rsi, [r12 + 2160]
 lea rdx, [r12 + 1152]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00134_2:
 jmp xchain00112_n99_α
 xchain00112_n97_β:
 jmp xchain00112_n95_α
# IR_VAR
 xchain00112_n98_α:
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00112_n00026_α
 xchain00112_n98_β:
 jmp xchain00112_n69_β
# IR_COERCE_NUMERIC
 xchain00112_n99_α:
 mov eax, dword ptr [r12 + 2160]
 cmp eax, 7
 je .Lx00135_1
 cmp eax, 6
 jne .Lx00135_0
 mov eax, dword ptr [r12 + 2112]
 cmp eax, 6
 jne .Lx00135_0
.Lx00135_1:
 mov rax, qword ptr [r12 + 2160]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 2168]
 mov qword ptr [r12 + 1144], rax
 jmp .Lx00135_2
.Lx00135_0:
 lea rdi, [r12 + 2160]
 lea rsi, [r12 + 2112]
 lea rdx, [r12 + 1136]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00135_2:
 jmp xchain00112_n00027_α
 xchain00112_n99_β:
 jmp xchain00112_n95_α
# IR_VAR
 xchain00112_n00026_α:
 mov rax, qword ptr [r12 + 2160]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 2168]
 mov qword ptr [r12 + 1096], rax
 jmp xchain00112_n00029_α
 xchain00112_n00026_β:
 jmp xchain00112_n69_β
 xchain00112_n00027_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1152]
 cmp eax, 100
 je .Lx00136_0
 mov eax, dword ptr [r12 + 1136]
 cmp eax, 100
 je .Lx00136_0
 mov eax, dword ptr [r12 + 1152]
 cmp eax, 6
 jne .Lx00136_2
 mov eax, dword ptr [r12 + 1136]
 cmp eax, 6
 jne .Lx00136_2
.Lx00136_1:
 mov rax, qword ptr [r12 + 1160]
 mov rcx, qword ptr [r12 + 1144]
 add rax, rcx
 mov qword ptr [r12 + 1120], 6
 mov qword ptr [r12 + 1128], rax
 jmp xchain00112_n00030_α
.Lx00136_0:
 mov rdi, qword ptr [r12 + 1152]
 mov rsi, qword ptr [r12 + 1160]
 mov rdx, qword ptr [r12 + 1136]
 mov rcx, qword ptr [r12 + 1144]
 mov r8d, 0
 lea r9, [r12 + 1120]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00136_3
.Lx00136_2:
 mov rdi, qword ptr [r12 + 1152]
 mov rsi, qword ptr [r12 + 1160]
 mov rdx, qword ptr [r12 + 1136]
 mov rcx, qword ptr [r12 + 1144]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00112_n95_α
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
.Lx00136_3:
 jmp xchain00112_n00030_α
 xchain00112_n00027_β:
 jmp xchain00112_n95_α
# IR_COERCE_NUMERIC
 xchain00112_n00029_α:
 mov eax, dword ptr [r12 + 2176]
 cmp eax, 7
 je .Lx00137_1
 cmp eax, 6
 jne .Lx00137_0
 mov eax, dword ptr [r12 + 2160]
 cmp eax, 6
 jne .Lx00137_0
.Lx00137_1:
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 1064], rax
 jmp .Lx00137_2
.Lx00137_0:
 lea rdi, [r12 + 2176]
 lea rsi, [r12 + 2160]
 lea rdx, [r12 + 1056]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00137_2:
 jmp xchain00112_n00024_α
 xchain00112_n00029_β:
 jmp xchain00112_n69_β
 xchain00112_n00030_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain00112_n95_α
 xchain00112_n00030_β:
 jmp xchain00112_n95_α
# IR_COERCE_NUMERIC
 xchain00112_n00024_α:
 mov eax, dword ptr [r12 + 2160]
 cmp eax, 7
 je .Lx00138_1
 cmp eax, 6
 jne .Lx00138_0
 mov eax, dword ptr [r12 + 2176]
 cmp eax, 6
 jne .Lx00138_0
.Lx00138_1:
 mov rax, qword ptr [r12 + 2160]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 2168]
 mov qword ptr [r12 + 1048], rax
 jmp .Lx00138_2
.Lx00138_0:
 lea rdi, [r12 + 2160]
 lea rsi, [r12 + 2176]
 lea rdx, [r12 + 1040]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00138_2:
 jmp xchain00112_n00032_α
 xchain00112_n00024_β:
 jmp xchain00112_n69_β
 xchain00112_n00032_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1056]
 cmp eax, 100
 je .Lx00139_0
 mov eax, dword ptr [r12 + 1040]
 cmp eax, 100
 je .Lx00139_0
 mov eax, dword ptr [r12 + 1056]
 cmp eax, 6
 jne .Lx00139_2
 mov eax, dword ptr [r12 + 1040]
 cmp eax, 6
 jne .Lx00139_2
.Lx00139_1:
 mov rax, qword ptr [r12 + 1064]
 mov rcx, qword ptr [r12 + 1048]
 sub rax, rcx
 mov qword ptr [r12 + 1024], 6
 mov qword ptr [r12 + 1032], rax
 jmp xchain00112_n00034_α
.Lx00139_0:
 mov rdi, qword ptr [r12 + 1056]
 mov rsi, qword ptr [r12 + 1064]
 mov rdx, qword ptr [r12 + 1040]
 mov rcx, qword ptr [r12 + 1048]
 mov r8d, 1
 lea r9, [r12 + 1024]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00139_3
.Lx00139_2:
 mov rdi, qword ptr [r12 + 1056]
 mov rsi, qword ptr [r12 + 1064]
 mov rdx, qword ptr [r12 + 1040]
 mov rcx, qword ptr [r12 + 1048]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00112_n69_β
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
.Lx00139_3:
 jmp xchain00112_n00034_α
 xchain00112_n00032_β:
 jmp xchain00112_n69_β
 xchain00112_n00034_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 2112]
 cmp eax, 100
 je .Lx00140_0
 mov eax, dword ptr [r12 + 1024]
 cmp eax, 100
 je .Lx00140_0
 mov eax, dword ptr [r12 + 2112]
 cmp eax, 6
 jne .Lx00140_2
 mov eax, dword ptr [r12 + 1024]
 cmp eax, 6
 jne .Lx00140_2
.Lx00140_1:
 mov rax, qword ptr [r12 + 2120]
 mov rcx, qword ptr [r12 + 1032]
 cmp rax, rcx
 jl xchain00112_n69_β
 mov rcx, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rcx
 mov rcx, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rcx
 jmp xchain00112_n00035_α
.Lx00140_0:
 mov rdi, qword ptr [r12 + 2112]
 mov rsi, qword ptr [r12 + 2120]
 mov rdx, qword ptr [r12 + 1024]
 mov rcx, qword ptr [r12 + 1032]
 mov r8d, 8
 lea r9, [r12 + 992]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00140_1
 cmp eax, 1
 je xchain00112_n69_β
 jmp xchain00112_n00035_α
.Lx00140_2:
 mov rdi, qword ptr [r12 + 2112]
 mov rsi, qword ptr [r12 + 2120]
 mov rdx, qword ptr [r12 + 1024]
 mov rcx, qword ptr [r12 + 1032]
 mov r8d, 8
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00112_n69_β
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00112_n00035_α
 xchain00112_n00034_β:
 jmp xchain00112_n69_β
# IR_VAR
 xchain00112_n00035_α:
 mov rax, qword ptr [r12 + 2144]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 2152]
 mov qword ptr [r12 + 968], rax
 jmp xchain00112_n00037_α
 xchain00112_n00035_β:
 jmp xchain00112_n00038_α
# IR_LIT_STRING
 xchain00112_n00037_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx00141_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain00112_n00039_α
 xchain00112_n00037_β:
 jmp xchain00112_n00038_α
.Lx00141_0:
 .quad .Lx00141_0_s
.Lx00141_0_s:
 .string "\n\t\t\t\t\t"
# IR_VAR
 xchain00112_n00038_α:
 mov rax, qword ptr [r12 + 2128]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 920], rax
 jmp xchain00112_n00048_α
 xchain00112_n00038_β:
 jmp xchain00112_n69_β
 xchain00112_n00039_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 2144]
 mov rsi, qword ptr [r12 + 2152]
 mov rdx, qword ptr [r12 + 976]
 mov rcx, qword ptr [r12 + 984]
 call str_concat_d@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain00112_n00001_α
 xchain00112_n00039_β:
 jmp xchain00112_n00038_α
 xchain00112_n00048_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00112_n00043_α
 xchain00112_n00048_β:
 jmp xchain00112_n69_β
 xchain00112_n00001_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 944]
 mov rdx, qword ptr [r12 + 952]
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain00112_n00038_α
 xchain00112_n00001_β:
 jmp xchain00112_n00038_α
 xchain00112_n00043_α:
 jmp xchain00112_n00044_α
xchain00112_n00043_β:
 jmp xchain00112_n69_β
# IR_MOVE_LABEL
 xchain00112_n00044_α:
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 872], rax
 lea rax, [rip + xchain00112_n69_β]
 mov qword ptr [r12 + 880], rax
 jmp xchain00112_n00045_α
 xchain00112_n00044_β:
 jmp xchain00112_n69_β
 xchain00112_n00045_α:
 jmp xchain00112_n69_β
xchain00112_n00045_β:
 jmp xchain00112_n69_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00112_n00002_α:
 jmp qword ptr [r12 + 880]
 xchain00112_n00002_β:
 jmp xchain00112_n69_β
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
 mov rdi, qword ptr [r12 + 2048]
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
 mov qword ptr [r12 + 2384], rax
 pop rsi
proc_options_α_body:
# IR_VAR_REF
 xchain00142_n0_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain00142_n1_α
 xchain00142_n0_β:
 jmp xchain00142_n3_α
# IR_NULLTEST_VAR
 xchain00142_n1_α:
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 99
 je xchain00142_n3_α
 mov rdi, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00142_n3_α
 cmp eax, 0
 jne xchain00142_n3_α
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 2304], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 2312], rax
 jmp xchain00142_n2_α
 xchain00142_n1_β:
 jmp xchain00142_n3_α
# IR_LIT_CHARSET
 xchain00142_n2_α:
 mov qword ptr [r12 + 2368], 1
 mov dword ptr [r12 + 2372], -1
 mov rax, qword ptr [rip + .Lx00143_0]
 mov qword ptr [r12 + 2376], rax
 jmp xchain00142_n4_α
 xchain00142_n2_β:
 jmp xchain00142_n3_α
.Lx00143_0:
 .quad .Lx00143_0_s
.Lx00143_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00142_n3_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn525: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn525]
 lea rsi, [r12 + 2288]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 cmp eax, 99
 je xchain00142_n6_α
 jmp xchain00142_n5_α
 xchain00142_n3_β:
 jmp xchain00142_n6_α
 xchain00142_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2368] -> [zr+2352]
 mov rax, qword ptr [r12 + 2368]
 mov qword ptr [r12 + 2352], rax
 mov rax, qword ptr [r12 + 2376]
 mov qword ptr [r12 + 2360], rax
  .section .rodata
  .Lrkfn527: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn527]
 lea rsi, [r12 + 2352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 cmp eax, 99
 je xchain00142_n3_α
 jmp xchain00142_n7_α
 xchain00142_n4_β:
 jmp xchain00142_n3_α
 xchain00142_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2272]
 mov rdx, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 jmp xchain00142_n6_α
 xchain00142_n5_β:
 jmp xchain00142_n6_α
# IR_MAKE_LIST
 xchain00142_n6_α:
 lea rdi, [r12 + 2256]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain00142_n8_α
 xchain00142_n6_β:
 jmp xchain00142_n9_α
# IR_ASSIGN_VAR
 xchain00142_n7_α:
 mov rdi, qword ptr [r12 + 2304]
 mov rsi, qword ptr [r12 + 2312]
 mov rdx, qword ptr [r12 + 2336]
 mov rcx, qword ptr [r12 + 2344]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00142_n3_α
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 jmp xchain00142_n3_α
 xchain00142_n7_β:
 jmp xchain00142_n3_α
 xchain00142_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2240]
 mov rdx, qword ptr [r12 + 2248]
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 jmp xchain00142_n9_α
 xchain00142_n8_β:
 jmp xchain00142_n9_α
# IR_VAR
 xchain00142_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00142_n10_α
 xchain00142_n9_β:
 jmp xchain00142_n11_α
 xchain00142_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn536: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn536]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain00142_n11_α
 jmp xchain00142_n12_α
 xchain00142_n10_β:
 jmp xchain00142_n11_α
# IR_VAR
 xchain00142_n11_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00142_n13_α
 xchain00142_n11_β:
 jmp xchain00142_n14_α
 xchain00142_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00142_n15_α
 xchain00142_n12_β:
 jmp xchain00142_n11_α
# IR_VAR
 xchain00142_n13_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 168], rax
 jmp xchain00142_n16_α
 xchain00142_n13_β:
 jmp xchain00142_n14_α
# IR_VAR
 xchain00142_n14_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 56], rax
 jmp xchain00142_n17_α
 xchain00142_n14_β:
 jmp proc_options_ω
# IR_VAR
 xchain00142_n15_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 2208], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 2216], rax
 jmp xchain00142_n18_α
 xchain00142_n15_β:
 jmp xchain00142_n9_α
 xchain00142_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+144]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn547: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn547]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00142_n14_α
 jmp xchain00142_n19_α
 xchain00142_n16_β:
 jmp xchain00142_n14_α
# IR_RETURN
 xchain00142_n17_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_options_γ
# IR_GEN_SCAN
 xchain00142_n18_α:
 mov rdi, qword ptr [r12 + 2208]
 mov rsi, qword ptr [r12 + 2216]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00142_n20_α
 xchain00142_n18_β:
 jmp xchain00142_n9_α
 xchain00142_n19_α:
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
  .Lrkfn552: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn552]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00142_n14_α
 jmp xchain00142_n11_α
 xchain00142_n19_β:
 jmp xchain00142_n14_α
# IR_LIT_STRING
 xchain00142_n20_α:
 mov qword ptr [r12 + 2192], 1
 mov rax, qword ptr [rip + .Lx00144_0]
 mov qword ptr [r12 + 2200], rax
 jmp xchain00142_n21_α
 xchain00142_n20_β:
 jmp xchain00142_n23_α
.Lx00144_0:
 .quad .Lx00144_0_s
.Lx00144_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00142_n21_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00142_n23_α
 mov rdi, qword ptr [rip + .Lx00145_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00142_n23_α
 mov qword ptr [r12 + 2160], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 2168], rax
 jmp xchain00142_n22_α
 xchain00142_n21_β:
 jmp xchain00142_n23_α
.Lx00145_0:
 .quad .Lx00145_0_s
.Lx00145_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00142_n22_α:
 mov rax, qword ptr [r12 + 2168]
 cmp rax, 1
 jge .Lx00146_0
 add rax, r15
 add rax, 1
.Lx00146_0:
 cmp rax, 1
 jl xchain00142_n23_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00142_n23_α
 mov qword ptr [r12 + 2144], r14
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
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 jmp xchain00142_n24_α
 xchain00142_n22_β:
 mov r14, qword ptr [r12 + 2144]
 jmp xchain00142_n23_α
# IR_VAR
 xchain00142_n23_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2056], rax
 jmp xchain00142_n25_α
 xchain00142_n23_β:
 jmp xchain00142_n26_α
# IR_LIT_INTEGER
 xchain00142_n24_α:
 mov qword ptr [r12 + 2112], 6
 mov rax, qword ptr [rip + .Lx00147_0]
 mov qword ptr [r12 + 2120], rax
 jmp xchain00142_n27_α
 xchain00142_n24_β:
 jmp xchain00142_n29_α
.Lx00147_0:
 .quad 0
# IR_VAR
 xchain00142_n25_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 2072], rax
 jmp xchain00142_n28_α
 xchain00142_n25_β:
 jmp xchain00142_n26_α
# IR_GEN_SCAN
 xchain00142_n26_α:
 lea rdi, [r12 + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 240]
 mov r14, qword ptr [r12 + 248]
 mov r15, qword ptr [r12 + 256]
 jmp xchain00142_n9_α
 xchain00142_n26_β:
 jmp xchain00142_n9_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00142_n27_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00148_0
 add rax, r15
 add rax, 1
.Lx00148_0:
 cmp rax, 1
 jl xchain00142_n29_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00142_n29_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00142_n29_α
 mov qword ptr [r12 + 2096], 6
 mov qword ptr [r12 + 2104], rax
 jmp xchain00142_n23_α
 xchain00142_n27_β:
 jmp xchain00142_n29_α
 xchain00142_n28_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2048] -> [zr+2016]
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 2024], rax
# marshal arg1 = producer-box slot [zr+2064] -> [zr+2032]
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 2040], rax
  .section .rodata
  .Lrkfn568: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn568]
 lea rsi, [r12 + 2016]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 cmp eax, 99
 je xchain00142_n26_α
 jmp xchain00142_n30_α
 xchain00142_n28_β:
 jmp xchain00142_n26_α
# KEYWORD_null
 xchain00142_n29_α:
 mov qword ptr [r12 + 2080], 0
 mov qword ptr [r12 + 2088], 0
 jmp xchain00142_n31_α
 xchain00142_n29_β:
 jmp xchain00142_n23_α
# IR_MOVE_LABEL
 xchain00142_n30_α:
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 312], rax
 lea rax, [rip + xchain00142_n26_α]
 mov qword ptr [r12 + 320], rax
 jmp xchain00142_n32_α
 xchain00142_n30_β:
 jmp xchain00142_n26_α
 xchain00142_n31_α:
 jmp xchain00142_n34_α
xchain00142_n31_β:
 jmp xchain00142_n23_α
# IR_GEN_SCAN
 xchain00142_n32_α:
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
 lea rdi, [r12 + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 240]
 mov r14, qword ptr [r12 + 248]
 mov r15, qword ptr [r12 + 256]
 jmp xchain00142_n9_α
 xchain00142_n32_β:
 jmp xchain00142_n9_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00142_n33_α:
 jmp qword ptr [r12 + 320]
 xchain00142_n33_β:
 jmp xchain00142_n26_α
# IR_LIT_STRING
 xchain00142_n34_α:
 mov qword ptr [r12 + 1984], 1
 mov rax, qword ptr [rip + .Lx00149_0]
 mov qword ptr [r12 + 1992], rax
 jmp xchain00142_n35_α
 xchain00142_n34_β:
 jmp xchain00142_n37_α
.Lx00149_0:
 .quad .Lx00149_0_s
.Lx00149_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00142_n35_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00142_n37_α
 mov rdi, qword ptr [rip + .Lx00150_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00142_n37_α
 mov qword ptr [r12 + 1952], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 1960], rax
 jmp xchain00142_n36_α
 xchain00142_n35_β:
 jmp xchain00142_n37_α
.Lx00150_0:
 .quad .Lx00150_0_s
.Lx00150_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00142_n36_α:
 mov rax, qword ptr [r12 + 1960]
 cmp rax, 1
 jge .Lx00151_0
 add rax, r15
 add rax, 1
.Lx00151_0:
 cmp rax, 1
 jl xchain00142_n37_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00142_n37_α
 mov qword ptr [r12 + 1936], r14
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
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain00142_n38_α
 xchain00142_n36_β:
 mov r14, qword ptr [r12 + 1936]
 jmp xchain00142_n37_α
# IR_LIT_INTEGER
 xchain00142_n37_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00142_n39_α
 xchain00142_n37_β:
 jmp xchain00142_n45_α
.Lx00152_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00142_n38_α:
 mov qword ptr [r12 + 1904], 6
 mov rax, qword ptr [rip + .Lx00153_0]
 mov qword ptr [r12 + 1912], rax
 jmp xchain00142_n40_α
 xchain00142_n38_β:
 jmp xchain00142_n37_α
.Lx00153_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00142_n39_α:
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00142_n45_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00142_n45_α
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
 jmp xchain00142_n41_α
 xchain00142_n39_β:
 mov r14, qword ptr [r12 + 368]
 jmp xchain00142_n45_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00142_n40_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00154_0
 add rax, r15
 add rax, 1
.Lx00154_0:
 cmp rax, 1
 jl xchain00142_n37_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00142_n37_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00142_n37_α
 mov qword ptr [r12 + 1888], 6
 mov qword ptr [r12 + 1896], rax
 jmp xchain00142_n43_α
 xchain00142_n40_β:
 jmp xchain00142_n37_α
 xchain00142_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00142_n44_α
 xchain00142_n41_β:
 jmp xchain00142_n45_α
 xchain00142_n42_α:
 jmp xchain00142_n45_α
xchain00142_n42_β:
 jmp xchain00142_n45_α
 xchain00142_n43_α:
 jmp xchain00142_n11_α
xchain00142_n43_β:
 jmp xchain00142_n37_α
# IR_VAR
 xchain00142_n44_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 1816], rax
 jmp xchain00142_n47_α
 xchain00142_n44_β:
 jmp xchain00142_n48_α
 xchain00142_n45_α:
 jmp xchain00142_n49_α
xchain00142_n45_β:
 jmp xchain00142_n26_α
 xchain00142_n46_α:
 jmp xchain00142_n11_α
xchain00142_n46_β:
 jmp xchain00142_n11_α
# IR_VAR
 xchain00142_n47_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1832], rax
 jmp xchain00142_n50_α
 xchain00142_n47_β:
 jmp xchain00142_n48_α
# IR_LIT_STRING
 xchain00142_n48_α:
 mov qword ptr [r12 + 1664], 1
 mov rax, qword ptr [rip + .Lx00155_0]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00142_n51_α
 xchain00142_n48_β:
 jmp xchain00142_n37_α
.Lx00155_0:
 .quad .Lx00155_0_s
.Lx00155_0_s:
 .string "Unrecognized option: -"
# IR_MOVE_LABEL
 xchain00142_n49_α:
 lea rax, [rip + xchain00142_n52_α]
 mov qword ptr [r12 + 320], rax
 jmp xchain00142_n32_α
 xchain00142_n49_β:
 jmp xchain00142_n26_α
 xchain00142_n50_α:
# BOX CALL_GEN find(...) -> rt_call_arr_gen by-name [four-port generator; alpha zeroes resume cell, beta re-pumps invoke with persisted cell]
# marshal arg0 = producer-box slot [zr+1808] -> [zr+1760]
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1768], rax
# marshal arg1 = producer-box slot [zr+1824] -> [zr+1776]
 mov rax, qword ptr [r12 + 1824]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 1784], rax
 mov qword ptr [r12 + 1792], 0
.Lx00156_60:
  .section .rodata
  .Lbynamegenfn418: .string "find"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn418]
 lea rsi, [r12 + 1760]
 mov edx, 2
 lea rcx, [r12 + 1792]
 call rt_call_arr_gen@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 cmp eax, 99
 je xchain00142_n48_α
 jmp xchain00142_n53_α
 xchain00142_n50_β:
 jmp .Lx00156_60
# IR_VAR
 xchain00142_n51_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 1688], rax
 jmp xchain00142_n54_α
 xchain00142_n51_β:
 jmp xchain00142_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00142_n52_α:
 jmp qword ptr [r12 + 416]
 xchain00142_n52_β:
 jmp xchain00142_n37_α
# IR_LIT_INTEGER
 xchain00142_n53_α:
 mov qword ptr [r12 + 1840], 6
 mov rax, qword ptr [rip + .Lx00157_0]
 mov qword ptr [r12 + 1848], rax
 jmp xchain00142_n55_α
 xchain00142_n53_β:
 jmp xchain00142_n50_β
.Lx00157_0:
 .quad 1
 xchain00142_n54_α:
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
  .Lrkfn607: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn607]
 lea rsi, [r12 + 1632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 cmp eax, 99
 je xchain00142_n37_α
 jmp xchain00142_n56_α
 xchain00142_n54_β:
 jmp xchain00142_n37_α
# IR_COERCE_NUMERIC
 xchain00142_n55_α:
 mov eax, dword ptr [r12 + 1744]
 cmp eax, 7
 je .Lx00158_1
 cmp eax, 6
 jne .Lx00158_0
 mov eax, dword ptr [r12 + 1840]
 cmp eax, 6
 jne .Lx00158_0
.Lx00158_1:
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 1736], rax
 jmp .Lx00158_2
.Lx00158_0:
 lea rdi, [r12 + 1744]
 lea rsi, [r12 + 1840]
 lea rdx, [r12 + 1728]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00158_2:
 jmp xchain00142_n57_α
 xchain00142_n55_β:
 jmp xchain00142_n48_α
# IR_MOVE_LABEL
 xchain00142_n56_α:
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 408], rax
 lea rax, [rip + xchain00142_n37_α]
 mov qword ptr [r12 + 416], rax
 jmp xchain00142_n37_α
 xchain00142_n56_β:
 jmp xchain00142_n37_α
 xchain00142_n57_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1728]
 cmp eax, 100
 je .Lx00159_0
 mov eax, dword ptr [r12 + 1728]
 cmp eax, 6
 jne .Lx00159_2
.Lx00159_1:
 mov rax, qword ptr [r12 + 1736]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 1712], 6
 mov qword ptr [r12 + 1720], rax
 jmp xchain00142_n58_α
.Lx00159_0:
 mov rdi, qword ptr [r12 + 1728]
 mov rsi, qword ptr [r12 + 1736]
 mov rdx, qword ptr [r12 + 1840]
 mov rcx, qword ptr [r12 + 1848]
 mov r8d, 0
 lea r9, [r12 + 1712]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00159_3
.Lx00159_2:
 mov rdi, qword ptr [r12 + 1728]
 mov rsi, qword ptr [r12 + 1736]
 mov rdx, qword ptr [r12 + 1840]
 mov rcx, qword ptr [r12 + 1848]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00142_n48_α
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
.Lx00159_3:
 jmp xchain00142_n58_α
 xchain00142_n57_β:
 jmp xchain00142_n48_α
 xchain00142_n58_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1712]
 mov rdx, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain00142_n59_α
 xchain00142_n58_β:
 jmp xchain00142_n48_α
# IR_VAR_REF
 xchain00142_n59_α:
 lea rdi, [r12 + 2400]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00142_n60_α
 xchain00142_n59_β:
 jmp xchain00142_n37_α
# IR_VAR
 xchain00142_n60_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 456], rax
 jmp xchain00142_n61_α
 xchain00142_n60_β:
 jmp xchain00142_n37_α
# IR_SUBSCRIPT x[i] variable
 xchain00142_n61_α:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00142_n37_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00142_n62_α
 xchain00142_n61_β:
 jmp xchain00142_n37_α
# IR_LIT_CHARSET
 xchain00142_n62_α:
 mov qword ptr [r12 + 1520], 1
 mov dword ptr [r12 + 1524], -1
 mov rax, qword ptr [rip + .Lx00160_0]
 mov qword ptr [r12 + 1528], rax
 jmp xchain00142_n63_α
 xchain00142_n62_β:
 jmp xchain00142_n66_α
.Lx00160_0:
 .quad .Lx00160_0_s
.Lx00160_0_s:
 .string "+.:"
# IR_VAR_REF
 xchain00142_n63_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain00142_n64_α
 xchain00142_n63_β:
 jmp xchain00142_n66_α
# IR_VAR
 xchain00142_n64_α:
 mov rax, qword ptr [r12 + 2512]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 2520]
 mov qword ptr [r12 + 1576], rax
 jmp xchain00142_n65_α
 xchain00142_n64_β:
 jmp xchain00142_n66_α
# IR_SUBSCRIPT x[i] variable
 xchain00142_n65_α:
 mov rdi, qword ptr [r12 + 1552]
 mov rsi, qword ptr [r12 + 1560]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00142_n66_α
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain00142_n67_α
 xchain00142_n65_β:
 jmp xchain00142_n66_α
# IR_LIT_INTEGER
 xchain00142_n66_α:
 mov qword ptr [r12 + 1456], 6
 mov rax, qword ptr [rip + .Lx00161_0]
 mov qword ptr [r12 + 1464], rax
 jmp xchain00142_n68_α
 xchain00142_n66_β:
 jmp xchain00142_n37_α
.Lx00161_0:
 .quad 1
# IR_DEREF variable -> value
 xchain00142_n67_α:
 mov rdi, qword ptr [r12 + 1584]
 mov rsi, qword ptr [r12 + 1592]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00142_n66_α
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00142_n69_α
 xchain00142_n67_β:
 jmp xchain00142_n66_α
# IR_MOVE_LABEL
 xchain00142_n68_α:
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + xchain00142_n37_α]
 mov qword ptr [r12 + 512], rax
 jmp xchain00142_n70_α
 xchain00142_n68_β:
 jmp xchain00142_n37_α
 xchain00142_n69_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1600]
 mov rdx, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain00142_n72_α
 xchain00142_n69_β:
 jmp xchain00142_n66_α
# IR_ASSIGN_VAR
 xchain00142_n70_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00142_n37_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00142_n73_α
 xchain00142_n70_β:
 jmp xchain00142_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00142_n71_α:
 jmp qword ptr [r12 + 512]
 xchain00142_n71_β:
 jmp xchain00142_n37_α
 xchain00142_n72_α:
# BOX CALL any(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
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
  .Lbynamefn440: .string "any"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn440]
 lea rsi, [r12 + 1488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 cmp eax, 99
 je xchain00142_n66_α
 jmp xchain00142_n74_α
 xchain00142_n72_β:
 jmp xchain00142_n66_α
# IR_MOVE_LABEL
 xchain00142_n73_α:
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 408], rax
 lea rax, [rip + xchain00142_n71_α]
 mov qword ptr [r12 + 416], rax
 jmp xchain00142_n37_α
 xchain00142_n73_β:
 jmp xchain00142_n37_α
# IR_LIT_STRING
 xchain00142_n74_α:
 mov qword ptr [r12 + 1392], 1
 mov rax, qword ptr [rip + .Lx00162_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00142_n75_α
 xchain00142_n74_β:
 jmp xchain00142_n78_α
.Lx00162_0:
 .quad .Lx00162_0_s
.Lx00162_0_s:
 .string ""
# IR_LIT_INTEGER
 xchain00142_n75_α:
 mov qword ptr [r12 + 1440], 6
 mov rax, qword ptr [rip + .Lx00163_0]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00142_n76_α
 xchain00142_n75_β:
 jmp xchain00142_n78_α
.Lx00163_0:
 .quad 0
# IR_SCAN_TAB
 xchain00142_n76_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00164_0
 add rax, r15
 add rax, 1
.Lx00164_0:
 cmp rax, 1
 jl xchain00142_n78_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00142_n78_α
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
 jmp xchain00142_n77_α
 xchain00142_n76_β:
 mov r14, qword ptr [r12 + 1424]
 jmp xchain00142_n78_α
 xchain00142_n77_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 1392]
 mov rsi, qword ptr [r12 + 1400]
 mov rdx, qword ptr [r12 + 1408]
 mov rcx, qword ptr [r12 + 1416]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00142_n78_α
 mov rdi, qword ptr [r12 + 1408]
 mov rsi, qword ptr [r12 + 1416]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain00142_n79_α
 xchain00142_n77_β:
 jmp xchain00142_n78_α
# IR_VAR
 xchain00142_n78_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1368], rax
 jmp xchain00142_n80_α
 xchain00142_n78_β:
 jmp xchain00142_n81_α
# IR_MOVE_LABEL
 xchain00142_n79_α:
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00142_n78_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00142_n82_α
 xchain00142_n79_β:
 jmp xchain00142_n86_α
 xchain00142_n80_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1344]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1352], rax
  .section .rodata
  .Lrkfn646: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn646]
 lea rsi, [r12 + 1344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain00142_n81_α
 jmp xchain00142_n84_α
 xchain00142_n80_β:
 jmp xchain00142_n81_α
# IR_LIT_STRING
 xchain00142_n81_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx00165_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00142_n85_α
 xchain00142_n81_β:
 jmp xchain00142_n86_α
.Lx00165_0:
 .quad .Lx00165_0_s
.Lx00165_0_s:
 .string "No parameter following -"
 xchain00142_n82_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1216]
 mov rdx, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain00142_n86_α
 xchain00142_n82_β:
 jmp xchain00142_n86_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00142_n83_α:
 jmp qword ptr [r12 + 1232]
 xchain00142_n83_β:
 jmp xchain00142_n86_α
# IR_MOVE_LABEL
 xchain00142_n84_α:
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00142_n81_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00142_n82_α
 xchain00142_n84_β:
 jmp xchain00142_n86_α
# IR_VAR
 xchain00142_n85_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 1320], rax
 jmp xchain00142_n87_α
 xchain00142_n85_β:
 jmp xchain00142_n86_α
# IR_VAR
 xchain00142_n86_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 552], rax
 jmp xchain00142_n88_α
 xchain00142_n86_β:
 jmp xchain00142_n37_α
 xchain00142_n87_α:
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
  .Lrkfn658: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn658]
 lea rsi, [r12 + 1264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain00142_n86_α
 jmp xchain00142_n89_α
 xchain00142_n87_β:
 jmp xchain00142_n86_α
# IR_LIT_STRING
 xchain00142_n88_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx00166_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00142_n90_α
 xchain00142_n88_β:
 jmp xchain00142_n37_α
.Lx00166_0:
 .quad .Lx00166_0_s
.Lx00166_0_s:
 .string ":"
# IR_MOVE_LABEL
 xchain00142_n89_α:
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00142_n86_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00142_n82_α
 xchain00142_n89_β:
 jmp xchain00142_n86_α
 xchain00142_n90_α:
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
  .Lrkfn663: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn663]
 lea rsi, [r12 + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain00142_n92_α
 jmp xchain00142_n91_α
 xchain00142_n90_β:
 jmp xchain00142_n92_α
# IR_VAR
 xchain00142_n91_α:
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00142_n93_α
 xchain00142_n91_β:
 jmp xchain00142_n37_α
# IR_LIT_STRING
 xchain00142_n92_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx00167_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain00142_n94_α
 xchain00142_n92_β:
 jmp xchain00142_n37_α
.Lx00167_0:
 .quad .Lx00167_0_s
.Lx00167_0_s:
 .string "+"
 xchain00142_n93_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00142_n95_α
 xchain00142_n93_β:
 jmp xchain00142_n37_α
 xchain00142_n94_α:
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
  .Lrkfn669: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn669]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00142_n97_α
 jmp xchain00142_n96_α
 xchain00142_n94_β:
 jmp xchain00142_n97_α
# IR_VAR
 xchain00142_n95_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 536], rax
 jmp xchain00142_n98_α
 xchain00142_n95_β:
 jmp xchain00142_n37_α
# IR_VAR
 xchain00142_n96_α:
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00142_n99_α
 xchain00142_n96_β:
 jmp xchain00142_n00026_α
# IR_LIT_STRING
 xchain00142_n97_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx00168_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00142_n00027_α
 xchain00142_n97_β:
 jmp xchain00142_n37_α
.Lx00168_0:
 .quad .Lx00168_0_s
.Lx00168_0_s:
 .string "."
 xchain00142_n98_α:
 jmp xchain00142_n00029_α
xchain00142_n98_β:
 jmp xchain00142_n37_α
 xchain00142_n99_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+1008]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn677: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn677]
 lea rsi, [r12 + 1008]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain00142_n00026_α
 jmp xchain00142_n00030_α
 xchain00142_n99_β:
 jmp xchain00142_n00026_α
# IR_LIT_STRING
 xchain00142_n00026_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx00169_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00142_n00024_α
 xchain00142_n00026_β:
 jmp xchain00142_n37_α
.Lx00169_0:
 .quad .Lx00169_0_s
.Lx00169_0_s:
 .string "-"
 xchain00142_n00027_α:
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
  .Lrkfn680: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn680]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain00142_n37_α
 jmp xchain00142_n00032_α
 xchain00142_n00027_β:
 jmp xchain00142_n37_α
# IR_MOVE_LABEL
 xchain00142_n00029_α:
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + xchain00142_n37_α]
 mov qword ptr [r12 + 512], rax
 jmp xchain00142_n70_α
 xchain00142_n00029_β:
 jmp xchain00142_n37_α
# IR_MOVE_LABEL
 xchain00142_n00030_α:
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00142_n00026_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00142_n00039_α
 xchain00142_n00030_β:
 jmp xchain00142_n37_α
# IR_VAR
 xchain00142_n00024_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 968], rax
 jmp xchain00142_n00035_α
 xchain00142_n00024_β:
 jmp xchain00142_n37_α
# IR_VAR
 xchain00142_n00032_α:
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 760], rax
 jmp xchain00142_n00037_α
 xchain00142_n00032_β:
 jmp xchain00142_n00038_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00142_n00034_α:
 jmp qword ptr [r12 + 864]
 xchain00142_n00034_β:
 jmp xchain00142_n37_α
# IR_LIT_STRING
 xchain00142_n00035_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx00170_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain00142_n00048_α
 xchain00142_n00035_β:
 jmp xchain00142_n37_α
.Lx00170_0:
 .quad .Lx00170_0_s
.Lx00170_0_s:
 .string " needs numeric parameter"
 xchain00142_n00037_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+736]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn693: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn693]
 lea rsi, [r12 + 736]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain00142_n00038_α
 jmp xchain00142_n00001_α
 xchain00142_n00037_β:
 jmp xchain00142_n00038_α
# IR_LIT_STRING
 xchain00142_n00038_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00171_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00142_n00043_α
 xchain00142_n00038_β:
 jmp xchain00142_n37_α
.Lx00171_0:
 .quad .Lx00171_0_s
.Lx00171_0_s:
 .string "-"
 xchain00142_n00039_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00142_n95_α
 xchain00142_n00039_β:
 jmp xchain00142_n37_α
 xchain00142_n00048_α:
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
  .Lrkfn697: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn697]
 lea rsi, [r12 + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain00142_n37_α
 jmp xchain00142_n00044_α
 xchain00142_n00048_β:
 jmp xchain00142_n37_α
# IR_MOVE_LABEL
 xchain00142_n00001_α:
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 584], rax
 lea rax, [rip + xchain00142_n00038_α]
 mov qword ptr [r12 + 592], rax
 jmp xchain00142_n00047_α
 xchain00142_n00001_β:
 jmp xchain00142_n37_α
# IR_VAR
 xchain00142_n00043_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 696], rax
 jmp xchain00142_n00002_α
 xchain00142_n00043_β:
 jmp xchain00142_n37_α
# IR_MOVE_LABEL
 xchain00142_n00044_α:
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00142_n37_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00142_n00039_α
 xchain00142_n00044_β:
 jmp xchain00142_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00142_n00045_α:
 jmp qword ptr [r12 + 592]
 xchain00142_n00045_β:
 jmp xchain00142_n37_α
# IR_LIT_STRING
 xchain00142_n00002_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx00172_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00142_n00040_α
 xchain00142_n00002_β:
 jmp xchain00142_n37_α
.Lx00172_0:
 .quad .Lx00172_0_s
.Lx00172_0_s:
 .string " needs numeric parameter"
 xchain00142_n00047_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00142_n95_α
 xchain00142_n00047_β:
 jmp xchain00142_n37_α
 xchain00142_n00040_α:
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
  .Lrkfn709: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn709]
 lea rsi, [r12 + 624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain00142_n37_α
 jmp xchain00142_n00049_α
 xchain00142_n00040_β:
 jmp xchain00142_n37_α
# IR_MOVE_LABEL
 xchain00142_n00049_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
 lea rax, [rip + xchain00142_n37_α]
 mov qword ptr [r12 + 592], rax
 jmp xchain00142_n00047_α
 xchain00142_n00049_β:
 jmp xchain00142_n37_α
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
 mov rdi, qword ptr [r12 + 2384]
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
 xchain00173_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 344], rax
 jmp xchain00173_n1_α
 xchain00173_n0_β:
 jmp xchain00173_n2_α
# IR_ASSIGN gva
 xchain00173_n1_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00173_n2_α
 xchain00173_n1_β:
 jmp xchain00173_n2_α
 xchain00173_n2_α:
  .section .rodata
  .Lcall00134_pname: .string "Signature__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00134_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain00173_n3_α
 jmp xchain00173_n3_α
xchain00173_n2_β:
 jmp xchain00173_n3_α
 xchain00173_n3_α:
  .section .rodata
  .Lcall00174_pname: .string "Regions__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00174_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00173_n4_α
 jmp xchain00173_n4_α
xchain00173_n3_β:
 jmp xchain00173_n4_α
 xchain00173_n4_α:
  .section .rodata
  .Lcall00175_pname: .string "Time__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00175_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain00173_n5_α
 jmp xchain00173_n5_α
xchain00173_n4_β:
 jmp xchain00173_n5_α
# IR_LIT_STRING
 xchain00173_n5_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00176_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00173_n6_α
 xchain00173_n5_β:
 jmp xchain00173_n8_α
.Lx00176_0:
 .quad .Lx00176_0_s
.Lx00176_0_s:
 .string "OUTPUT"
 xchain00173_n6_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+240]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn721: .string "getenv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn721]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00173_n8_α
 jmp xchain00173_n7_α
 xchain00173_n6_β:
 jmp xchain00173_n8_α
# IR_LIT_STRING
 xchain00173_n7_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00177_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00173_n9_α
 xchain00173_n7_β:
 jmp xchain00173_n12_α
.Lx00177_0:
 .quad .Lx00177_0_s
.Lx00177_0_s:
 .string "*** Benchmarking with output ***"
# IR_VAR
 xchain00173_n8_α:
 mov rdi, qword ptr [rip + .Lx00178_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00173_n11_α
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00173_n10_α
 xchain00173_n8_β:
 jmp xchain00173_n11_α
.Lx00178_0:
 .quad .Lx00178_0_s
.Lx00178_0_s:
 .string "write"
 xchain00173_n9_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn725: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn725]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain00173_n12_α
 jmp xchain00173_n12_α
 xchain00173_n9_β:
 jmp xchain00173_n12_α
# IR_ASSIGN gva
 xchain00173_n10_α:
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00173_n11_α
 xchain00173_n10_β:
 jmp xchain00173_n11_α
# IR_VAR
 xchain00173_n11_α:
 mov rdi, qword ptr [rip + .Lx00179_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00173_n14_α
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00173_n13_α
 xchain00173_n11_β:
 jmp xchain00173_n14_α
.Lx00179_0:
 .quad .Lx00179_0_s
.Lx00179_0_s:
 .string "writes"
# IR_RETURN
 xchain00173_n12_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Init___γ
# IR_ASSIGN gva
 xchain00173_n13_α:
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [rbx + 240], rax
 mov qword ptr [rbx + 248], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00173_n14_α
 xchain00173_n13_β:
 jmp xchain00173_n14_α
# IR_LIT_INTEGER
 xchain00173_n14_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00180_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00173_n15_α
 xchain00173_n14_β:
 jmp xchain00173_n17_α
.Lx00180_0:
 .quad 1
# IR_ASSIGN global
 xchain00173_n15_α:
 mov rsi, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov rdi, qword ptr [rip + .Lx00181_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00173_n16_α
 xchain00173_n15_β:
 jmp xchain00173_n17_α
.Lx00181_0:
 .quad .Lx00181_0_s
.Lx00181_0_s:
 .string "writes"
# IR_ASSIGN global
 xchain00173_n16_α:
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov rdi, qword ptr [rip + .Lx00182_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00173_n17_α
 xchain00173_n16_β:
 jmp xchain00173_n17_α
.Lx00182_0:
 .quad .Lx00182_0_s
.Lx00182_0_s:
 .string "write"
# IR_RETURN
 xchain00173_n17_α:
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
 xchain00183_n0_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx00184_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00183_n1_α
 xchain00183_n0_β:
 jmp xchain00183_n3_α
.Lx00184_0:
 .quad .Lx00184_0_s
.Lx00184_0_s:
 .string "OUTPUT"
 xchain00183_n1_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+304]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn737: .string "getenv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn737]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00183_n3_α
 jmp xchain00183_n2_α
 xchain00183_n1_β:
 jmp xchain00183_n3_α
# IR_VAR
 xchain00183_n2_α:
 mov rax, qword ptr [rbx + 256]
 mov rdx, qword ptr [rbx + 264]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00183_n4_α
 xchain00183_n2_β:
 jmp xchain00183_n5_α
# KEYWORD_null
 xchain00183_n3_α:
 mov qword ptr [r12 + 272], 0
 mov qword ptr [r12 + 280], 0
 jmp xchain00183_n6_α
 xchain00183_n3_β:
 jmp xchain00183_n2_α
# IR_LIT_STRING
 xchain00183_n4_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00185_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00183_n7_α
 xchain00183_n4_β:
 jmp xchain00183_n5_α
.Lx00185_0:
 .quad .Lx00185_0_s
.Lx00185_0_s:
 .string " elapsed time = "
 xchain00183_n5_α:
  .section .rodata
  .Lcall00186_pname: .string "Regions__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00186_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain00183_n8_α
 jmp xchain00183_n8_α
xchain00183_n5_β:
 jmp xchain00183_n8_α
# IR_VAR
 xchain00183_n6_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00183_n9_α
 xchain00183_n6_β:
 jmp xchain00183_n10_α
 xchain00183_n7_α:
  .section .rodata
  .Lcall00187_pname: .string "Time__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00187_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00183_n5_α
 jmp xchain00183_n11_α
xchain00183_n7_β:
 jmp xchain00183_n5_α
 xchain00183_n8_α:
  .section .rodata
  .Lcall00188_pname: .string "Storage__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00188_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain00183_n12_α
 jmp xchain00183_n12_α
xchain00183_n8_β:
 jmp xchain00183_n12_α
# IR_ASSIGN global
 xchain00183_n9_α:
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov rdi, qword ptr [rip + .Lx00189_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00183_n10_α
 xchain00183_n9_β:
 jmp xchain00183_n10_α
.Lx00189_0:
 .quad .Lx00189_0_s
.Lx00189_0_s:
 .string "write"
# IR_VAR
 xchain00183_n10_α:
 mov rax, qword ptr [rbx + 240]
 mov rdx, qword ptr [rbx + 248]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00183_n13_α
 xchain00183_n10_β:
 jmp xchain00183_n2_α
 xchain00183_n11_α:
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
  .Lrkfn748: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn748]
 lea rsi, [r12 + 80]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00183_n5_α
 jmp xchain00183_n5_α
 xchain00183_n11_β:
 jmp xchain00183_n5_α
 xchain00183_n12_α:
  .section .rodata
  .Lcall00190_pname: .string "Collections__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00190_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain00183_n14_α
 jmp xchain00183_n14_α
xchain00183_n12_β:
 jmp xchain00183_n14_α
# IR_ASSIGN global
 xchain00183_n13_α:
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov rdi, qword ptr [rip + .Lx00191_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00183_n15_α
 xchain00183_n13_β:
 jmp xchain00183_n2_α
.Lx00191_0:
 .quad .Lx00191_0_s
.Lx00191_0_s:
 .string "writes"
# IR_RETURN
 xchain00183_n14_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Term___γ
 xchain00183_n15_α:
 jmp xchain00183_n16_α
xchain00183_n15_β:
 jmp xchain00183_n2_α
# IR_MOVE_LABEL
 xchain00183_n16_α:
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
 lea rax, [rip + xchain00183_n2_α]
 mov qword ptr [r12 + 192], rax
 jmp xchain00183_n2_α
 xchain00183_n16_β:
 jmp xchain00183_n2_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00183_n17_α:
 jmp qword ptr [r12 + 192]
 xchain00183_n17_β:
 jmp xchain00183_n2_α
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
 xchain00192_n0_α:
 lea rdi, [rbx + 352]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00192_n1_α
 xchain00192_n0_β:
 jmp xchain00192_n3_α
# IR_NULLTEST_VAR
 xchain00192_n1_α:
 mov eax, dword ptr [r12 + 720]
 cmp eax, 99
 je xchain00192_n3_α
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00192_n3_α
 cmp eax, 0
 jne xchain00192_n3_α
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 744], rax
 jmp xchain00192_n2_α
 xchain00192_n1_β:
 jmp xchain00192_n3_α
# IR_LIT_INTEGER
 xchain00192_n2_α:
 mov qword ptr [r12 + 768], 6
 mov rax, qword ptr [rip + .Lx00193_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain00192_n4_α
 xchain00192_n2_β:
 jmp xchain00192_n3_α
.Lx00193_0:
 .quad 1
# IR_MAKE_LIST
 xchain00192_n3_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00192_n5_α
 xchain00192_n3_β:
 jmp xchain00192_n7_α
# IR_ASSIGN_VAR
 xchain00192_n4_α:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00192_n3_α
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00192_n6_α
 xchain00192_n4_β:
 jmp xchain00192_n3_α
 xchain00192_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00192_n7_α
 xchain00192_n5_β:
 jmp xchain00192_n7_α
# IR_LIT_STRING
 xchain00192_n6_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00194_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00192_n8_α
 xchain00192_n6_β:
 jmp xchain00192_n3_α
.Lx00194_0:
 .quad .Lx00194_0_s
.Lx00194_0_s:
 .string "total"
# IR_VAR
 xchain00192_n7_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 456], rax
 jmp xchain00192_n9_α
 xchain00192_n7_β:
 jmp xchain00192_n10_α
# IR_LIT_STRING
 xchain00192_n8_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00195_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00192_n11_α
 xchain00192_n8_β:
 jmp xchain00192_n3_α
.Lx00195_0:
 .quad .Lx00195_0_s
.Lx00195_0_s:
 .string "static"
# KEYWORD_gen
 xchain00192_n9_α:
 mov qword ptr [r12 + 480], 0
.Lx00196_1:
 mov rdi, qword ptr [rip + .Lx00196_0]
 mov rsi, qword ptr [r12 + 480]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00192_n10_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov rax, qword ptr [r12 + 480]
 add rax, 1
 mov qword ptr [r12 + 480], rax
 jmp xchain00192_n12_α
 xchain00192_n9_β:
 jmp .Lx00196_1
.Lx00196_0:
 .quad .Lx00196_0_s
.Lx00196_0_s:
 .string "&collections"
# IR_LIT_STRING
 xchain00192_n10_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00197_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00192_n13_α
 xchain00192_n10_β:
 jmp xchain00192_n15_α
.Lx00197_0:
 .quad .Lx00197_0_s
.Lx00197_0_s:
 .string "collections"
# IR_LIT_STRING
 xchain00192_n11_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx00198_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain00192_n14_α
 xchain00192_n11_β:
 jmp xchain00192_n3_α
.Lx00198_0:
 .quad .Lx00198_0_s
.Lx00198_0_s:
 .string "string"
 xchain00192_n12_α:
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
  .Lrkfn774: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn774]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00192_n10_α
 jmp xchain00192_n9_β
 xchain00192_n12_β:
 jmp xchain00192_n10_α
 xchain00192_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+368]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn776: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn776]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00192_n15_α
 jmp xchain00192_n15_α
 xchain00192_n13_β:
 jmp xchain00192_n15_α
# IR_LIT_STRING
 xchain00192_n14_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx00199_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00192_n16_α
 xchain00192_n14_β:
 jmp xchain00192_n3_α
.Lx00199_0:
 .quad .Lx00199_0_s
.Lx00199_0_s:
 .string "block"
# IR_LIT_INTEGER
 xchain00192_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00200_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00192_n17_α
 xchain00192_n15_β:
 jmp xchain00192_n20_α
.Lx00200_0:
 .quad 1
# IR_MAKE_LIST
 xchain00192_n16_α:
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
 jmp xchain00192_n18_α
 xchain00192_n16_β:
 jmp xchain00192_n3_α
# IR_VAR
 xchain00192_n17_α:
 mov rax, qword ptr [rbx + 336]
 mov rdx, qword ptr [rbx + 344]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00192_n19_α
 xchain00192_n17_β:
 jmp xchain00192_n20_α
# IR_ASSIGN gva
 xchain00192_n18_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 336], rax
 mov qword ptr [rbx + 344], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00192_n21_α
 xchain00192_n18_β:
 jmp xchain00192_n3_α
# IR_UNOP
 xchain00192_n19_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00192_n22_α
 xchain00192_n19_β:
 jmp xchain00192_n20_α
# IR_RETURN
 xchain00192_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Collections___γ
# IR_MOVE_LABEL
 xchain00192_n21_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain00192_n3_α]
 mov qword ptr [r12 + 544], rax
 jmp xchain00192_n3_α
 xchain00192_n21_β:
 jmp xchain00192_n3_α
# IR_TO
 xchain00192_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00201_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00192_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00192_n24_α
 xchain00192_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00201_0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00192_n23_α:
 jmp qword ptr [r12 + 544]
 xchain00192_n23_β:
 jmp xchain00192_n3_α
 xchain00192_n24_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00192_n25_α
 xchain00192_n24_β:
 jmp xchain00192_n20_α
# IR_VAR_REF
 xchain00192_n25_α:
 lea rdi, [rbx + 336]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00192_n26_α
 xchain00192_n25_β:
 jmp xchain00192_n22_β
# IR_VAR
 xchain00192_n26_α:
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 184], rax
 jmp xchain00192_n27_α
 xchain00192_n26_β:
 jmp xchain00192_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00192_n27_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00192_n22_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00192_n28_α
 xchain00192_n27_β:
 jmp xchain00192_n22_β
# IR_DEREF variable -> value
 xchain00192_n28_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00192_n22_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00192_n29_α
 xchain00192_n28_β:
 jmp xchain00192_n22_β
# IR_VAR_REF
 xchain00192_n29_α:
 lea rdi, [r12 + 816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00192_n30_α
 xchain00192_n29_β:
 jmp xchain00192_n22_β
# IR_VAR
 xchain00192_n30_α:
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 296], rax
 jmp xchain00192_n31_α
 xchain00192_n30_β:
 jmp xchain00192_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00192_n31_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00192_n22_β
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00192_n32_α
 xchain00192_n31_β:
 jmp xchain00192_n22_β
# IR_DEREF variable -> value
 xchain00192_n32_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00192_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00192_n33_α
 xchain00192_n32_β:
 jmp xchain00192_n22_β
# IR_LIT_INTEGER
 xchain00192_n33_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00202_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00192_n34_α
 xchain00192_n33_β:
 jmp xchain00192_n22_β
.Lx00202_0:
 .quad 8
 xchain00192_n34_α:
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
  .Lrkfn806: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn806]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00192_n22_β
 jmp xchain00192_n35_α
 xchain00192_n34_β:
 jmp xchain00192_n22_β
 xchain00192_n35_α:
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
  .Lrkfn808: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn808]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00192_n22_β
 jmp xchain00192_n22_β
 xchain00192_n35_β:
 jmp xchain00192_n22_β
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
 xchain00203_n0_α:
 lea rdi, [rbx + 384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00203_n1_α
 xchain00203_n0_β:
 jmp xchain00203_n3_α
# IR_NULLTEST_VAR
 xchain00203_n1_α:
 mov eax, dword ptr [r12 + 688]
 cmp eax, 99
 je xchain00203_n3_α
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00203_n3_α
 cmp eax, 0
 jne xchain00203_n3_α
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 712], rax
 jmp xchain00203_n2_α
 xchain00203_n1_β:
 jmp xchain00203_n3_α
# IR_LIT_INTEGER
 xchain00203_n2_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx00204_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00203_n4_α
 xchain00203_n2_β:
 jmp xchain00203_n3_α
.Lx00204_0:
 .quad 1
# IR_MAKE_LIST
 xchain00203_n3_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00203_n5_α
 xchain00203_n3_β:
 jmp xchain00203_n7_α
# IR_ASSIGN_VAR
 xchain00203_n4_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00203_n3_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00203_n6_α
 xchain00203_n4_β:
 jmp xchain00203_n3_α
 xchain00203_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00203_n7_α
 xchain00203_n5_β:
 jmp xchain00203_n7_α
# IR_LIT_STRING
 xchain00203_n6_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx00205_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00203_n8_α
 xchain00203_n6_β:
 jmp xchain00203_n3_α
.Lx00205_0:
 .quad .Lx00205_0_s
.Lx00205_0_s:
 .string "static"
# IR_VAR
 xchain00203_n7_α:
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 456], rax
 jmp xchain00203_n9_α
 xchain00203_n7_β:
 jmp xchain00203_n10_α
# IR_LIT_STRING
 xchain00203_n8_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00206_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00203_n11_α
 xchain00203_n8_β:
 jmp xchain00203_n3_α
.Lx00206_0:
 .quad .Lx00206_0_s
.Lx00206_0_s:
 .string "string"
# KEYWORD_gen
 xchain00203_n9_α:
 mov qword ptr [r12 + 480], 0
.Lx00207_1:
 mov rdi, qword ptr [rip + .Lx00207_0]
 mov rsi, qword ptr [r12 + 480]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00203_n10_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov rax, qword ptr [r12 + 480]
 add rax, 1
 mov qword ptr [r12 + 480], rax
 jmp xchain00203_n12_α
 xchain00203_n9_β:
 jmp .Lx00207_1
.Lx00207_0:
 .quad .Lx00207_0_s
.Lx00207_0_s:
 .string "&regions"
# IR_LIT_STRING
 xchain00203_n10_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00208_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00203_n13_α
 xchain00203_n10_β:
 jmp xchain00203_n15_α
.Lx00208_0:
 .quad .Lx00208_0_s
.Lx00208_0_s:
 .string "regions"
# IR_LIT_STRING
 xchain00203_n11_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00209_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00203_n14_α
 xchain00203_n11_β:
 jmp xchain00203_n3_α
.Lx00209_0:
 .quad .Lx00209_0_s
.Lx00209_0_s:
 .string "block"
 xchain00203_n12_α:
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
  .Lrkfn826: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn826]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00203_n10_α
 jmp xchain00203_n9_β
 xchain00203_n12_β:
 jmp xchain00203_n10_α
 xchain00203_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+368]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn828: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn828]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00203_n15_α
 jmp xchain00203_n15_α
 xchain00203_n13_β:
 jmp xchain00203_n15_α
# IR_MAKE_LIST
 xchain00203_n14_α:
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
 jmp xchain00203_n16_α
 xchain00203_n14_β:
 jmp xchain00203_n3_α
# IR_LIT_INTEGER
 xchain00203_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00210_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00203_n17_α
 xchain00203_n15_β:
 jmp xchain00203_n20_α
.Lx00210_0:
 .quad 1
# IR_ASSIGN gva
 xchain00203_n16_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 368], rax
 mov qword ptr [rbx + 376], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00203_n18_α
 xchain00203_n16_β:
 jmp xchain00203_n3_α
# IR_VAR
 xchain00203_n17_α:
 mov rax, qword ptr [rbx + 368]
 mov rdx, qword ptr [rbx + 376]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00203_n19_α
 xchain00203_n17_β:
 jmp xchain00203_n20_α
# IR_MOVE_LABEL
 xchain00203_n18_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain00203_n3_α]
 mov qword ptr [r12 + 544], rax
 jmp xchain00203_n3_α
 xchain00203_n18_β:
 jmp xchain00203_n3_α
# IR_UNOP
 xchain00203_n19_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00203_n22_α
 xchain00203_n19_β:
 jmp xchain00203_n20_α
# IR_RETURN
 xchain00203_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Regions___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00203_n21_α:
 jmp qword ptr [r12 + 544]
 xchain00203_n21_β:
 jmp xchain00203_n3_α
# IR_TO
 xchain00203_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00211_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00203_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00203_n23_α
 xchain00203_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00211_0
 xchain00203_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00203_n24_α
 xchain00203_n23_β:
 jmp xchain00203_n20_α
# IR_VAR_REF
 xchain00203_n24_α:
 lea rdi, [rbx + 368]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00203_n25_α
 xchain00203_n24_β:
 jmp xchain00203_n22_β
# IR_VAR
 xchain00203_n25_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 184], rax
 jmp xchain00203_n26_α
 xchain00203_n25_β:
 jmp xchain00203_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00203_n26_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00203_n22_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00203_n27_α
 xchain00203_n26_β:
 jmp xchain00203_n22_β
# IR_DEREF variable -> value
 xchain00203_n27_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00203_n22_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00203_n28_α
 xchain00203_n27_β:
 jmp xchain00203_n22_β
# IR_VAR_REF
 xchain00203_n28_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00203_n29_α
 xchain00203_n28_β:
 jmp xchain00203_n22_β
# IR_VAR
 xchain00203_n29_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 296], rax
 jmp xchain00203_n30_α
 xchain00203_n29_β:
 jmp xchain00203_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00203_n30_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00203_n22_β
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00203_n31_α
 xchain00203_n30_β:
 jmp xchain00203_n22_β
# IR_DEREF variable -> value
 xchain00203_n31_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00203_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00203_n32_α
 xchain00203_n31_β:
 jmp xchain00203_n22_β
# IR_LIT_INTEGER
 xchain00203_n32_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00212_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00203_n33_α
 xchain00203_n32_β:
 jmp xchain00203_n22_β
.Lx00212_0:
 .quad 8
 xchain00203_n33_α:
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
  .Lrkfn857: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn857]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00203_n22_β
 jmp xchain00203_n34_α
 xchain00203_n33_β:
 jmp xchain00203_n22_β
 xchain00203_n34_α:
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
  .Lrkfn859: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn859]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00203_n22_β
 jmp xchain00203_n22_β
 xchain00203_n34_β:
 jmp xchain00203_n22_β
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
# KEYWORD_read
 xchain00213_n0_α:
 mov rdi, qword ptr [rip + .Lx00214_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00213_n1_α
 xchain00213_n0_β:
 jmp xchain00213_n2_α
.Lx00214_0:
 .quad .Lx00214_0_s
.Lx00214_0_s:
 .string "&version"
 xchain00213_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn863: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn863]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00213_n2_α
 jmp xchain00213_n2_α
 xchain00213_n1_β:
 jmp xchain00213_n2_α
# KEYWORD_read
 xchain00213_n2_α:
 mov rdi, qword ptr [rip + .Lx00215_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00213_n3_α
 xchain00213_n2_β:
 jmp xchain00213_n4_α
.Lx00215_0:
 .quad .Lx00215_0_s
.Lx00215_0_s:
 .string "&host"
 xchain00213_n3_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+96]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn866: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn866]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain00213_n4_α
 jmp xchain00213_n4_α
 xchain00213_n3_β:
 jmp xchain00213_n4_α
# KEYWORD_gen
 xchain00213_n4_α:
 mov qword ptr [r12 + 64], 0
.Lx00216_1:
 mov rdi, qword ptr [rip + .Lx00216_0]
 mov rsi, qword ptr [r12 + 64]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00213_n6_α
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov rax, qword ptr [r12 + 64]
 add rax, 1
 mov qword ptr [r12 + 64], rax
 jmp xchain00213_n5_α
 xchain00213_n4_β:
 jmp .Lx00216_1
.Lx00216_0:
 .quad .Lx00216_0_s
.Lx00216_0_s:
 .string "&features"
 xchain00213_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lrkfn869: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn869]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain00213_n6_α
 jmp xchain00213_n4_β
 xchain00213_n5_β:
 jmp xchain00213_n6_α
# IR_RETURN
 xchain00213_n6_α:
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
 xchain00217_n0_α:
 lea rdi, [rbx + 416]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00217_n1_α
 xchain00217_n0_β:
 jmp xchain00217_n3_α
# IR_NULLTEST_VAR
 xchain00217_n1_α:
 mov eax, dword ptr [r12 + 688]
 cmp eax, 99
 je xchain00217_n3_α
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00217_n3_α
 cmp eax, 0
 jne xchain00217_n3_α
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 712], rax
 jmp xchain00217_n2_α
 xchain00217_n1_β:
 jmp xchain00217_n3_α
# IR_LIT_INTEGER
 xchain00217_n2_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx00218_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00217_n4_α
 xchain00217_n2_β:
 jmp xchain00217_n3_α
.Lx00218_0:
 .quad 1
# IR_MAKE_LIST
 xchain00217_n3_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00217_n5_α
 xchain00217_n3_β:
 jmp xchain00217_n7_α
# IR_ASSIGN_VAR
 xchain00217_n4_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00217_n3_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00217_n6_α
 xchain00217_n4_β:
 jmp xchain00217_n3_α
 xchain00217_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00217_n7_α
 xchain00217_n5_β:
 jmp xchain00217_n7_α
# IR_LIT_STRING
 xchain00217_n6_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx00219_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00217_n8_α
 xchain00217_n6_β:
 jmp xchain00217_n3_α
.Lx00219_0:
 .quad .Lx00219_0_s
.Lx00219_0_s:
 .string "static"
# IR_VAR
 xchain00217_n7_α:
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 456], rax
 jmp xchain00217_n9_α
 xchain00217_n7_β:
 jmp xchain00217_n10_α
# IR_LIT_STRING
 xchain00217_n8_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00220_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00217_n11_α
 xchain00217_n8_β:
 jmp xchain00217_n3_α
.Lx00220_0:
 .quad .Lx00220_0_s
.Lx00220_0_s:
 .string "string"
# KEYWORD_gen
 xchain00217_n9_α:
 mov qword ptr [r12 + 480], 0
.Lx00221_1:
 mov rdi, qword ptr [rip + .Lx00221_0]
 mov rsi, qword ptr [r12 + 480]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00217_n10_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov rax, qword ptr [r12 + 480]
 add rax, 1
 mov qword ptr [r12 + 480], rax
 jmp xchain00217_n12_α
 xchain00217_n9_β:
 jmp .Lx00221_1
.Lx00221_0:
 .quad .Lx00221_0_s
.Lx00221_0_s:
 .string "&storage"
# IR_LIT_STRING
 xchain00217_n10_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00222_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00217_n13_α
 xchain00217_n10_β:
 jmp xchain00217_n15_α
.Lx00222_0:
 .quad .Lx00222_0_s
.Lx00222_0_s:
 .string "storage"
# IR_LIT_STRING
 xchain00217_n11_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00223_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00217_n14_α
 xchain00217_n11_β:
 jmp xchain00217_n3_α
.Lx00223_0:
 .quad .Lx00223_0_s
.Lx00223_0_s:
 .string "block"
 xchain00217_n12_α:
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
  .Lrkfn888: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn888]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00217_n10_α
 jmp xchain00217_n9_β
 xchain00217_n12_β:
 jmp xchain00217_n10_α
 xchain00217_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+368]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn890: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn890]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00217_n15_α
 jmp xchain00217_n15_α
 xchain00217_n13_β:
 jmp xchain00217_n15_α
# IR_MAKE_LIST
 xchain00217_n14_α:
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
 jmp xchain00217_n16_α
 xchain00217_n14_β:
 jmp xchain00217_n3_α
# IR_LIT_INTEGER
 xchain00217_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00224_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00217_n17_α
 xchain00217_n15_β:
 jmp xchain00217_n20_α
.Lx00224_0:
 .quad 1
# IR_ASSIGN gva
 xchain00217_n16_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 400], rax
 mov qword ptr [rbx + 408], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00217_n18_α
 xchain00217_n16_β:
 jmp xchain00217_n3_α
# IR_VAR
 xchain00217_n17_α:
 mov rax, qword ptr [rbx + 400]
 mov rdx, qword ptr [rbx + 408]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00217_n19_α
 xchain00217_n17_β:
 jmp xchain00217_n20_α
# IR_MOVE_LABEL
 xchain00217_n18_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain00217_n3_α]
 mov qword ptr [r12 + 544], rax
 jmp xchain00217_n3_α
 xchain00217_n18_β:
 jmp xchain00217_n3_α
# IR_UNOP
 xchain00217_n19_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00217_n22_α
 xchain00217_n19_β:
 jmp xchain00217_n20_α
# IR_RETURN
 xchain00217_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Storage___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00217_n21_α:
 jmp qword ptr [r12 + 544]
 xchain00217_n21_β:
 jmp xchain00217_n3_α
# IR_TO
 xchain00217_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00225_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00217_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00217_n23_α
 xchain00217_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00225_0
 xchain00217_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00217_n24_α
 xchain00217_n23_β:
 jmp xchain00217_n20_α
# IR_VAR_REF
 xchain00217_n24_α:
 lea rdi, [rbx + 400]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00217_n25_α
 xchain00217_n24_β:
 jmp xchain00217_n22_β
# IR_VAR
 xchain00217_n25_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 184], rax
 jmp xchain00217_n26_α
 xchain00217_n25_β:
 jmp xchain00217_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00217_n26_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00217_n22_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00217_n27_α
 xchain00217_n26_β:
 jmp xchain00217_n22_β
# IR_DEREF variable -> value
 xchain00217_n27_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00217_n22_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00217_n28_α
 xchain00217_n27_β:
 jmp xchain00217_n22_β
# IR_VAR_REF
 xchain00217_n28_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00217_n29_α
 xchain00217_n28_β:
 jmp xchain00217_n22_β
# IR_VAR
 xchain00217_n29_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 296], rax
 jmp xchain00217_n30_α
 xchain00217_n29_β:
 jmp xchain00217_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00217_n30_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00217_n22_β
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00217_n31_α
 xchain00217_n30_β:
 jmp xchain00217_n22_β
# IR_DEREF variable -> value
 xchain00217_n31_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00217_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00217_n32_α
 xchain00217_n31_β:
 jmp xchain00217_n22_β
# IR_LIT_INTEGER
 xchain00217_n32_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00226_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00217_n33_α
 xchain00217_n32_β:
 jmp xchain00217_n22_β
.Lx00226_0:
 .quad 8
 xchain00217_n33_α:
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
  .Lrkfn919: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn919]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00217_n22_β
 jmp xchain00217_n34_α
 xchain00217_n33_β:
 jmp xchain00217_n22_β
 xchain00217_n34_α:
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
  .Lrkfn921: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn921]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00217_n22_β
 jmp xchain00217_n22_β
 xchain00217_n34_β:
 jmp xchain00217_n22_β
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
 mov qword ptr [r12 + 256], rax
 pop rsi
proc_Time___α_body:
# IR_VAR_REF
 xchain00227_n0_α:
 lea rdi, [rbx + 448]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00227_n1_α
 xchain00227_n0_β:
 jmp xchain00227_n3_α
# IR_NULLTEST_VAR
 xchain00227_n1_α:
 mov eax, dword ptr [r12 + 192]
 cmp eax, 99
 je xchain00227_n3_α
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00227_n3_α
 cmp eax, 0
 jne xchain00227_n3_α
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 216], rax
 jmp xchain00227_n2_α
 xchain00227_n1_β:
 jmp xchain00227_n3_α
# IR_LIT_INTEGER
 xchain00227_n2_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx00228_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00227_n4_α
 xchain00227_n2_β:
 jmp xchain00227_n3_α
.Lx00228_0:
 .quad 1
# KEYWORD_read
 xchain00227_n3_α:
 mov rdi, qword ptr [rip + .Lx00229_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain00227_n5_α
 xchain00227_n3_β:
 jmp proc_Time___ω
.Lx00229_0:
 .quad .Lx00229_0_s
.Lx00229_0_s:
 .string "&time"
# IR_ASSIGN_VAR
 xchain00227_n4_α:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00227_n3_α
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00227_n6_α
 xchain00227_n4_β:
 jmp xchain00227_n3_α
# IR_VAR
 xchain00227_n5_α:
 mov rax, qword ptr [rbx + 432]
 mov rdx, qword ptr [rbx + 440]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00227_n7_α
 xchain00227_n5_β:
 jmp proc_Time___ω
# KEYWORD_read
 xchain00227_n6_α:
 mov rdi, qword ptr [rip + .Lx00230_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00227_n8_α
 xchain00227_n6_β:
 jmp xchain00227_n3_α
.Lx00230_0:
 .quad .Lx00230_0_s
.Lx00230_0_s:
 .string "&time"
# IR_COERCE_NUMERIC
 xchain00227_n7_α:
 mov eax, dword ptr [r12 + 64]
 cmp eax, 7
 je .Lx00231_1
 cmp eax, 6
 jne .Lx00231_0
 mov eax, dword ptr [r12 + 96]
 cmp eax, 6
 jne .Lx00231_0
.Lx00231_1:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 56], rax
 jmp .Lx00231_2
.Lx00231_0:
 lea rdi, [r12 + 64]
 lea rsi, [r12 + 96]
 lea rdx, [r12 + 48]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00231_2:
 jmp xchain00227_n9_α
 xchain00227_n7_β:
 jmp proc_Time___ω
# IR_ASSIGN gva
 xchain00227_n8_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [rbx + 432], rax
 mov qword ptr [rbx + 440], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00227_n10_α
 xchain00227_n8_β:
 jmp xchain00227_n3_α
# IR_COERCE_NUMERIC
 xchain00227_n9_α:
 mov eax, dword ptr [r12 + 96]
 cmp eax, 7
 je .Lx00232_1
 cmp eax, 6
 jne .Lx00232_0
 mov eax, dword ptr [r12 + 64]
 cmp eax, 6
 jne .Lx00232_0
.Lx00232_1:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 40], rax
 jmp .Lx00232_2
.Lx00232_0:
 lea rdi, [r12 + 96]
 lea rsi, [r12 + 64]
 lea rdx, [r12 + 32]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00232_2:
 jmp xchain00227_n11_α
 xchain00227_n9_β:
 jmp proc_Time___ω
# IR_MOVE_LABEL
 xchain00227_n10_α:
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
 lea rax, [rip + xchain00227_n3_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain00227_n3_α
 xchain00227_n10_β:
 jmp xchain00227_n3_α
 xchain00227_n11_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 48]
 cmp eax, 100
 je .Lx00233_0
 mov eax, dword ptr [r12 + 32]
 cmp eax, 100
 je .Lx00233_0
 mov eax, dword ptr [r12 + 48]
 cmp eax, 6
 jne .Lx00233_2
 mov eax, dword ptr [r12 + 32]
 cmp eax, 6
 jne .Lx00233_2
.Lx00233_1:
 mov rax, qword ptr [r12 + 56]
 mov rcx, qword ptr [r12 + 40]
 sub rax, rcx
 mov qword ptr [r12 + 16], 6
 mov qword ptr [r12 + 24], rax
 jmp xchain00227_n13_α
.Lx00233_0:
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov r8d, 1
 lea r9, [r12 + 16]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00233_3
.Lx00233_2:
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_Time___ω
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
.Lx00233_3:
 jmp xchain00227_n13_α
 xchain00227_n11_β:
 jmp proc_Time___ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00227_n12_α:
 jmp qword ptr [r12 + 128]
 xchain00227_n12_β:
 jmp xchain00227_n3_α
# IR_RETURN
 xchain00227_n13_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Time___γ
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
 mov rdi, qword ptr [r12 + 256]
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
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1328
  call rt_proc_set_frame_bytes@PLT
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
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2880
  call rt_proc_set_frame_bytes@PLT
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
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2192
  call rt_proc_set_frame_bytes@PLT
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
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2528
  call rt_proc_set_frame_bytes@PLT
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
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 400
  call rt_proc_set_frame_bytes@PLT
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
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 384
  call rt_proc_set_frame_bytes@PLT
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
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 832
  call rt_proc_set_frame_bytes@PLT
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
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 800
  call rt_proc_set_frame_bytes@PLT
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
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 224
  call rt_proc_set_frame_bytes@PLT
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
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 800
  call rt_proc_set_frame_bytes@PLT
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
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 272
  call rt_proc_set_frame_bytes@PLT
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
 xchain00234_n0_α:
 mov qword ptr [r12 + 6048], 1
 mov rax, qword ptr [rip + .Lx00235_0]
 mov qword ptr [r12 + 6056], rax
 jmp xchain00234_n1_α
 xchain00234_n0_β:
 jmp xchain00234_n2_α
.Lx00235_0:
 .quad .Lx00235_0_s
.Lx00235_0_s:
 .string "ipxref"
 xchain00234_n1_α:
  .section .rodata
  .Lcall00236_pname: .string "Init__"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 6048]
 mov rdx, qword ptr [r12 + 6056]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00236_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 6016], rax
 mov qword ptr [r12 + 6024], rdx
 cmp eax, 99
 je xchain00234_n2_α
 jmp xchain00234_n2_α
xchain00234_n1_β:
 jmp xchain00234_n2_α
# IR_LIT_STRING
 xchain00234_n2_α:
 mov qword ptr [r12 + 5568], 1
 mov rax, qword ptr [rip + .Lx00237_0]
 mov qword ptr [r12 + 5576], rax
 jmp xchain00234_n3_α
 xchain00234_n2_β:
 jmp xchain00234_n32_α
.Lx00237_0:
 .quad .Lx00237_0_s
.Lx00237_0_s:
 .string "break"
# IR_LIT_STRING
 xchain00234_n3_α:
 mov qword ptr [r12 + 5584], 1
 mov rax, qword ptr [rip + .Lx00238_0]
 mov qword ptr [r12 + 5592], rax
 jmp xchain00234_n4_α
 xchain00234_n3_β:
 jmp xchain00234_n32_α
.Lx00238_0:
 .quad .Lx00238_0_s
.Lx00238_0_s:
 .string "by"
# IR_LIT_STRING
 xchain00234_n4_α:
 mov qword ptr [r12 + 5600], 1
 mov rax, qword ptr [rip + .Lx00239_0]
 mov qword ptr [r12 + 5608], rax
 jmp xchain00234_n5_α
 xchain00234_n4_β:
 jmp xchain00234_n32_α
.Lx00239_0:
 .quad .Lx00239_0_s
.Lx00239_0_s:
 .string "case"
# IR_LIT_STRING
 xchain00234_n5_α:
 mov qword ptr [r12 + 5616], 1
 mov rax, qword ptr [rip + .Lx00240_0]
 mov qword ptr [r12 + 5624], rax
 jmp xchain00234_n6_α
 xchain00234_n5_β:
 jmp xchain00234_n32_α
.Lx00240_0:
 .quad .Lx00240_0_s
.Lx00240_0_s:
 .string "default"
# IR_LIT_STRING
 xchain00234_n6_α:
 mov qword ptr [r12 + 5632], 1
 mov rax, qword ptr [rip + .Lx00241_0]
 mov qword ptr [r12 + 5640], rax
 jmp xchain00234_n7_α
 xchain00234_n6_β:
 jmp xchain00234_n32_α
.Lx00241_0:
 .quad .Lx00241_0_s
.Lx00241_0_s:
 .string "do"
# IR_LIT_STRING
 xchain00234_n7_α:
 mov qword ptr [r12 + 5648], 1
 mov rax, qword ptr [rip + .Lx00242_0]
 mov qword ptr [r12 + 5656], rax
 jmp xchain00234_n8_α
 xchain00234_n7_β:
 jmp xchain00234_n32_α
.Lx00242_0:
 .quad .Lx00242_0_s
.Lx00242_0_s:
 .string "dynamic"
# IR_LIT_STRING
 xchain00234_n8_α:
 mov qword ptr [r12 + 5664], 1
 mov rax, qword ptr [rip + .Lx00243_0]
 mov qword ptr [r12 + 5672], rax
 jmp xchain00234_n9_α
 xchain00234_n8_β:
 jmp xchain00234_n32_α
.Lx00243_0:
 .quad .Lx00243_0_s
.Lx00243_0_s:
 .string "else"
# IR_LIT_STRING
 xchain00234_n9_α:
 mov qword ptr [r12 + 5680], 1
 mov rax, qword ptr [rip + .Lx00244_0]
 mov qword ptr [r12 + 5688], rax
 jmp xchain00234_n10_α
 xchain00234_n9_β:
 jmp xchain00234_n32_α
.Lx00244_0:
 .quad .Lx00244_0_s
.Lx00244_0_s:
 .string "end"
# IR_LIT_STRING
 xchain00234_n10_α:
 mov qword ptr [r12 + 5696], 1
 mov rax, qword ptr [rip + .Lx00245_0]
 mov qword ptr [r12 + 5704], rax
 jmp xchain00234_n11_α
 xchain00234_n10_β:
 jmp xchain00234_n32_α
.Lx00245_0:
 .quad .Lx00245_0_s
.Lx00245_0_s:
 .string "every"
# IR_LIT_STRING
 xchain00234_n11_α:
 mov qword ptr [r12 + 5712], 1
 mov rax, qword ptr [rip + .Lx00246_0]
 mov qword ptr [r12 + 5720], rax
 jmp xchain00234_n12_α
 xchain00234_n11_β:
 jmp xchain00234_n32_α
.Lx00246_0:
 .quad .Lx00246_0_s
.Lx00246_0_s:
 .string "fail"
# IR_LIT_STRING
 xchain00234_n12_α:
 mov qword ptr [r12 + 5728], 1
 mov rax, qword ptr [rip + .Lx00247_0]
 mov qword ptr [r12 + 5736], rax
 jmp xchain00234_n13_α
 xchain00234_n12_β:
 jmp xchain00234_n32_α
.Lx00247_0:
 .quad .Lx00247_0_s
.Lx00247_0_s:
 .string "global"
# IR_LIT_STRING
 xchain00234_n13_α:
 mov qword ptr [r12 + 5744], 1
 mov rax, qword ptr [rip + .Lx00248_0]
 mov qword ptr [r12 + 5752], rax
 jmp xchain00234_n14_α
 xchain00234_n13_β:
 jmp xchain00234_n32_α
.Lx00248_0:
 .quad .Lx00248_0_s
.Lx00248_0_s:
 .string "if"
# IR_LIT_STRING
 xchain00234_n14_α:
 mov qword ptr [r12 + 5760], 1
 mov rax, qword ptr [rip + .Lx00249_0]
 mov qword ptr [r12 + 5768], rax
 jmp xchain00234_n15_α
 xchain00234_n14_β:
 jmp xchain00234_n32_α
.Lx00249_0:
 .quad .Lx00249_0_s
.Lx00249_0_s:
 .string "initial"
# IR_LIT_STRING
 xchain00234_n15_α:
 mov qword ptr [r12 + 5776], 1
 mov rax, qword ptr [rip + .Lx00250_0]
 mov qword ptr [r12 + 5784], rax
 jmp xchain00234_n16_α
 xchain00234_n15_β:
 jmp xchain00234_n32_α
.Lx00250_0:
 .quad .Lx00250_0_s
.Lx00250_0_s:
 .string "link"
# IR_LIT_STRING
 xchain00234_n16_α:
 mov qword ptr [r12 + 5792], 1
 mov rax, qword ptr [rip + .Lx00251_0]
 mov qword ptr [r12 + 5800], rax
 jmp xchain00234_n17_α
 xchain00234_n16_β:
 jmp xchain00234_n32_α
.Lx00251_0:
 .quad .Lx00251_0_s
.Lx00251_0_s:
 .string "local"
# IR_LIT_STRING
 xchain00234_n17_α:
 mov qword ptr [r12 + 5808], 1
 mov rax, qword ptr [rip + .Lx00252_0]
 mov qword ptr [r12 + 5816], rax
 jmp xchain00234_n18_α
 xchain00234_n17_β:
 jmp xchain00234_n32_α
.Lx00252_0:
 .quad .Lx00252_0_s
.Lx00252_0_s:
 .string "next"
# IR_LIT_STRING
 xchain00234_n18_α:
 mov qword ptr [r12 + 5824], 1
 mov rax, qword ptr [rip + .Lx00253_0]
 mov qword ptr [r12 + 5832], rax
 jmp xchain00234_n19_α
 xchain00234_n18_β:
 jmp xchain00234_n32_α
.Lx00253_0:
 .quad .Lx00253_0_s
.Lx00253_0_s:
 .string "not"
# IR_LIT_STRING
 xchain00234_n19_α:
 mov qword ptr [r12 + 5840], 1
 mov rax, qword ptr [rip + .Lx00254_0]
 mov qword ptr [r12 + 5848], rax
 jmp xchain00234_n20_α
 xchain00234_n19_β:
 jmp xchain00234_n32_α
.Lx00254_0:
 .quad .Lx00254_0_s
.Lx00254_0_s:
 .string "of"
# IR_LIT_STRING
 xchain00234_n20_α:
 mov qword ptr [r12 + 5856], 1
 mov rax, qword ptr [rip + .Lx00255_0]
 mov qword ptr [r12 + 5864], rax
 jmp xchain00234_n21_α
 xchain00234_n20_β:
 jmp xchain00234_n32_α
.Lx00255_0:
 .quad .Lx00255_0_s
.Lx00255_0_s:
 .string "procedure"
# IR_LIT_STRING
 xchain00234_n21_α:
 mov qword ptr [r12 + 5872], 1
 mov rax, qword ptr [rip + .Lx00256_0]
 mov qword ptr [r12 + 5880], rax
 jmp xchain00234_n22_α
 xchain00234_n21_β:
 jmp xchain00234_n32_α
.Lx00256_0:
 .quad .Lx00256_0_s
.Lx00256_0_s:
 .string "record"
# IR_LIT_STRING
 xchain00234_n22_α:
 mov qword ptr [r12 + 5888], 1
 mov rax, qword ptr [rip + .Lx00257_0]
 mov qword ptr [r12 + 5896], rax
 jmp xchain00234_n23_α
 xchain00234_n22_β:
 jmp xchain00234_n32_α
.Lx00257_0:
 .quad .Lx00257_0_s
.Lx00257_0_s:
 .string "repeat"
# IR_LIT_STRING
 xchain00234_n23_α:
 mov qword ptr [r12 + 5904], 1
 mov rax, qword ptr [rip + .Lx00258_0]
 mov qword ptr [r12 + 5912], rax
 jmp xchain00234_n24_α
 xchain00234_n23_β:
 jmp xchain00234_n32_α
.Lx00258_0:
 .quad .Lx00258_0_s
.Lx00258_0_s:
 .string "return"
# IR_LIT_STRING
 xchain00234_n24_α:
 mov qword ptr [r12 + 5920], 1
 mov rax, qword ptr [rip + .Lx00259_0]
 mov qword ptr [r12 + 5928], rax
 jmp xchain00234_n25_α
 xchain00234_n24_β:
 jmp xchain00234_n32_α
.Lx00259_0:
 .quad .Lx00259_0_s
.Lx00259_0_s:
 .string "static"
# IR_LIT_STRING
 xchain00234_n25_α:
 mov qword ptr [r12 + 5936], 1
 mov rax, qword ptr [rip + .Lx00260_0]
 mov qword ptr [r12 + 5944], rax
 jmp xchain00234_n26_α
 xchain00234_n25_β:
 jmp xchain00234_n32_α
.Lx00260_0:
 .quad .Lx00260_0_s
.Lx00260_0_s:
 .string "suspend"
# IR_LIT_STRING
 xchain00234_n26_α:
 mov qword ptr [r12 + 5952], 1
 mov rax, qword ptr [rip + .Lx00261_0]
 mov qword ptr [r12 + 5960], rax
 jmp xchain00234_n27_α
 xchain00234_n26_β:
 jmp xchain00234_n32_α
.Lx00261_0:
 .quad .Lx00261_0_s
.Lx00261_0_s:
 .string "then"
# IR_LIT_STRING
 xchain00234_n27_α:
 mov qword ptr [r12 + 5968], 1
 mov rax, qword ptr [rip + .Lx00262_0]
 mov qword ptr [r12 + 5976], rax
 jmp xchain00234_n28_α
 xchain00234_n27_β:
 jmp xchain00234_n32_α
.Lx00262_0:
 .quad .Lx00262_0_s
.Lx00262_0_s:
 .string "to"
# IR_LIT_STRING
 xchain00234_n28_α:
 mov qword ptr [r12 + 5984], 1
 mov rax, qword ptr [rip + .Lx00263_0]
 mov qword ptr [r12 + 5992], rax
 jmp xchain00234_n29_α
 xchain00234_n28_β:
 jmp xchain00234_n32_α
.Lx00263_0:
 .quad .Lx00263_0_s
.Lx00263_0_s:
 .string "until"
# IR_LIT_STRING
 xchain00234_n29_α:
 mov qword ptr [r12 + 6000], 1
 mov rax, qword ptr [rip + .Lx00264_0]
 mov qword ptr [r12 + 6008], rax
 jmp xchain00234_n30_α
 xchain00234_n29_β:
 jmp xchain00234_n32_α
.Lx00264_0:
 .quad .Lx00264_0_s
.Lx00264_0_s:
 .string "while"
# IR_MAKE_LIST
 xchain00234_n30_α:
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
 jmp xchain00234_n31_α
 xchain00234_n30_β:
 jmp xchain00234_n32_α
# IR_ASSIGN gva
 xchain00234_n31_α:
 mov rax, qword ptr [r12 + 5104]
 mov rdx, qword ptr [r12 + 5112]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 5088], rax
 mov qword ptr [r12 + 5096], rdx
 jmp xchain00234_n32_α
 xchain00234_n31_β:
 jmp xchain00234_n32_α
# IR_LIT_INTEGER
 xchain00234_n32_α:
 mov qword ptr [r12 + 5072], 6
 mov rax, qword ptr [rip + .Lx00265_0]
 mov qword ptr [r12 + 5080], rax
 jmp xchain00234_n33_α
 xchain00234_n32_β:
 jmp xchain00234_n34_α
.Lx00265_0:
 .quad 0
# IR_ASSIGN gva
 xchain00234_n33_α:
 mov rax, qword ptr [r12 + 5072]
 mov rdx, qword ptr [r12 + 5080]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 5056], rax
 mov qword ptr [r12 + 5064], rdx
 jmp xchain00234_n34_α
 xchain00234_n33_β:
 jmp xchain00234_n34_α
 xchain00234_n34_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn979: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn979]
 lea rsi, [r12 + 5056]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5040], rax
 mov qword ptr [r12 + 5048], rdx
 cmp eax, 99
 je xchain00234_n36_α
 jmp xchain00234_n35_α
 xchain00234_n34_β:
 jmp xchain00234_n36_α
# IR_ASSIGN gva
 xchain00234_n35_α:
 mov rax, qword ptr [r12 + 5040]
 mov rdx, qword ptr [r12 + 5048]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 5024], rax
 mov qword ptr [r12 + 5032], rdx
 jmp xchain00234_n36_α
 xchain00234_n35_β:
 jmp xchain00234_n36_α
# IR_MAKE_LIST
 xchain00234_n36_α:
 lea rdi, [r12 + 5024]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 5008], rax
 mov qword ptr [r12 + 5016], rdx
 jmp xchain00234_n37_α
 xchain00234_n36_β:
 jmp xchain00234_n38_α
 xchain00234_n37_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 5008]
 mov rdx, qword ptr [r12 + 5016]
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 mov qword ptr [r12 + 4992], rax
 mov qword ptr [r12 + 5000], rdx
 jmp xchain00234_n38_α
 xchain00234_n37_β:
 jmp xchain00234_n38_α
# IR_MAKE_LIST
 xchain00234_n38_α:
 lea rdi, [r12 + 4992]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 4976], rax
 mov qword ptr [r12 + 4984], rdx
 jmp xchain00234_n39_α
 xchain00234_n38_β:
 jmp xchain00234_n40_α
# IR_ASSIGN gva
 xchain00234_n39_α:
 mov rax, qword ptr [r12 + 4976]
 mov rdx, qword ptr [r12 + 4984]
 mov qword ptr [rbx + 192], rax
 mov qword ptr [rbx + 200], rdx
 mov qword ptr [r12 + 4960], rax
 mov qword ptr [r12 + 4968], rdx
 jmp xchain00234_n40_α
 xchain00234_n39_β:
 jmp xchain00234_n40_α
# IR_MAKE_LIST
 xchain00234_n40_α:
 lea rdi, [r12 + 4960]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 4944], rax
 mov qword ptr [r12 + 4952], rdx
 jmp xchain00234_n41_α
 xchain00234_n40_β:
 jmp xchain00234_n42_α
# IR_ASSIGN gva
 xchain00234_n41_α:
 mov rax, qword ptr [r12 + 4944]
 mov rdx, qword ptr [r12 + 4952]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 4928], rax
 mov qword ptr [r12 + 4936], rdx
 jmp xchain00234_n42_α
 xchain00234_n41_β:
 jmp xchain00234_n42_α
# IR_LIT_STRING
 xchain00234_n42_α:
 mov qword ptr [r12 + 4912], 1
 mov rax, qword ptr [rip + .Lx00266_0]
 mov qword ptr [r12 + 4920], rax
 jmp xchain00234_n43_α
 xchain00234_n42_β:
 jmp xchain00234_n44_α
.Lx00266_0:
 .quad .Lx00266_0_s
.Lx00266_0_s:
 .string "global"
 xchain00234_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 4912]
 mov rdx, qword ptr [r12 + 4920]
 mov qword ptr [r12 + 6144], rax
 mov qword ptr [r12 + 6152], rdx
 mov qword ptr [r12 + 4896], rax
 mov qword ptr [r12 + 4904], rdx
 jmp xchain00234_n44_α
 xchain00234_n43_β:
 jmp xchain00234_n44_α
# IR_LIT_CHARSET
 xchain00234_n44_α:
 mov qword ptr [r12 + 4864], 1
 mov dword ptr [r12 + 4868], -1
 mov rax, qword ptr [rip + .Lx00267_0]
 mov qword ptr [r12 + 4872], rax
 jmp xchain00234_n45_α
 xchain00234_n44_β:
 jmp xchain00234_n48_α
.Lx00267_0:
 .quad .Lx00267_0_s
.Lx00267_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
# IR_LIT_CHARSET
 xchain00234_n45_α:
 mov qword ptr [r12 + 4880], 1
 mov dword ptr [r12 + 4884], -1
 mov rax, qword ptr [rip + .Lx00268_0]
 mov qword ptr [r12 + 4888], rax
 jmp xchain00234_n46_α
 xchain00234_n45_β:
 jmp xchain00234_n48_α
.Lx00268_0:
 .quad .Lx00268_0_s
.Lx00268_0_s:
 .string "_"
 xchain00234_n46_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 4864]
 mov rsi, qword ptr [r12 + 4872]
 mov rdx, qword ptr [r12 + 4880]
 mov rcx, qword ptr [r12 + 4888]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00234_n48_α
 mov qword ptr [r12 + 4848], rax
 mov qword ptr [r12 + 4856], rdx
 jmp xchain00234_n47_α
 xchain00234_n46_β:
 jmp xchain00234_n48_α
# IR_ASSIGN gva
 xchain00234_n47_α:
 mov rax, qword ptr [r12 + 4848]
 mov rdx, qword ptr [r12 + 4856]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 4832], rax
 mov qword ptr [r12 + 4840], rdx
 jmp xchain00234_n48_α
 xchain00234_n47_β:
 jmp xchain00234_n48_α
# IR_VAR
 xchain00234_n48_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 4800], rax
 mov qword ptr [r12 + 4808], rdx
 jmp xchain00234_n49_α
 xchain00234_n48_β:
 jmp xchain00234_n50_α
# IR_LIT_CHARSET
 xchain00234_n49_α:
 mov qword ptr [r12 + 4816], 1
 mov dword ptr [r12 + 4820], -1
 mov rax, qword ptr [rip + .Lx00269_0]
 mov qword ptr [r12 + 4824], rax
 jmp xchain00234_n51_α
 xchain00234_n49_β:
 jmp xchain00234_n50_α
.Lx00269_0:
 .quad .Lx00269_0_s
.Lx00269_0_s:
 .string "0123456789"
# IR_VAR
 xchain00234_n50_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 4736], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 4744], rax
 jmp xchain00234_n52_α
 xchain00234_n50_β:
 jmp xchain00234_n53_α
 xchain00234_n51_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 4800]
 mov rsi, qword ptr [r12 + 4808]
 mov rdx, qword ptr [r12 + 4816]
 mov rcx, qword ptr [r12 + 4824]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00234_n50_α
 mov qword ptr [r12 + 4784], rax
 mov qword ptr [r12 + 4792], rdx
 jmp xchain00234_n54_α
 xchain00234_n51_β:
 jmp xchain00234_n50_α
# IR_LIT_STRING
 xchain00234_n52_α:
 mov qword ptr [r12 + 4752], 1
 mov rax, qword ptr [rip + .Lx00270_0]
 mov qword ptr [r12 + 4760], rax
 jmp xchain00234_n55_α
 xchain00234_n52_β:
 jmp xchain00234_n53_α
.Lx00270_0:
 .quad .Lx00270_0_s
.Lx00270_0_s:
 .string "qxw+l+c+"
# IR_VAR_REF
 xchain00234_n53_α:
 lea rdi, [r12 + 6192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4608], rax
 mov qword ptr [r12 + 4616], rdx
 jmp xchain00234_n56_α
 xchain00234_n53_β:
 jmp xchain00234_n60_α
# IR_ASSIGN gva
 xchain00234_n54_α:
 mov rax, qword ptr [r12 + 4784]
 mov rdx, qword ptr [r12 + 4792]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 4768], rax
 mov qword ptr [r12 + 4776], rdx
 jmp xchain00234_n50_α
 xchain00234_n54_β:
 jmp xchain00234_n50_α
 xchain00234_n55_α:
  .section .rodata
  .Lcall00172_pname: .string "options"
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
   lea rdi, [rip + .Lcall00172_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4688], rax
 mov qword ptr [r12 + 4696], rdx
 cmp eax, 99
 je xchain00234_n53_α
 jmp xchain00234_n57_α
xchain00234_n55_β:
 jmp xchain00234_n53_α
# IR_LIT_STRING
 xchain00234_n56_α:
 mov qword ptr [r12 + 4624], 1
 mov rax, qword ptr [rip + .Lx00271_0]
 mov qword ptr [r12 + 4632], rax
 jmp xchain00234_n58_α
 xchain00234_n56_β:
 jmp xchain00234_n60_α
.Lx00271_0:
 .quad .Lx00271_0_s
.Lx00271_0_s:
 .string "q"
 xchain00234_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 4688]
 mov rdx, qword ptr [r12 + 4696]
 mov qword ptr [r12 + 6192], rax
 mov qword ptr [r12 + 6200], rdx
 mov qword ptr [r12 + 4672], rax
 mov qword ptr [r12 + 4680], rdx
 jmp xchain00234_n53_α
 xchain00234_n57_β:
 jmp xchain00234_n53_α
# IR_SUBSCRIPT x[i] variable
 xchain00234_n58_α:
 mov rdi, qword ptr [r12 + 4608]
 mov rsi, qword ptr [r12 + 4616]
 mov rdx, qword ptr [r12 + 4624]
 mov rcx, qword ptr [r12 + 4632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00234_n60_α
 mov qword ptr [r12 + 4640], rax
 mov qword ptr [r12 + 4648], rdx
 jmp xchain00234_n59_α
 xchain00234_n58_β:
 jmp xchain00234_n60_α
# IR_DEREF variable -> value
 xchain00234_n59_α:
 mov rdi, qword ptr [r12 + 4640]
 mov rsi, qword ptr [r12 + 4648]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00234_n60_α
 mov qword ptr [r12 + 4656], rax
 mov qword ptr [r12 + 4664], rdx
 jmp xchain00234_n61_α
 xchain00234_n59_β:
 jmp xchain00234_n60_α
# IR_VAR_REF
 xchain00234_n60_α:
 lea rdi, [r12 + 6192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4464], rax
 mov qword ptr [r12 + 4472], rdx
 jmp xchain00234_n62_α
 xchain00234_n60_β:
 jmp xchain00234_n67_α
# IR_UNOP
 xchain00234_n61_α:
 mov eax, dword ptr [r12 + 4656]
 cmp eax, 99
 je xchain00234_n60_α
 cmp eax, 0
 je xchain00234_n60_α
 mov rax, qword ptr [r12 + 4656]
 mov qword ptr [r12 + 4592], rax
 mov rax, qword ptr [r12 + 4664]
 mov qword ptr [r12 + 4600], rax
 jmp xchain00234_n63_α
 xchain00234_n61_β:
 jmp xchain00234_n60_α
# IR_LIT_STRING
 xchain00234_n62_α:
 mov qword ptr [r12 + 4480], 1
 mov rax, qword ptr [rip + .Lx00272_0]
 mov qword ptr [r12 + 4488], rax
 jmp xchain00234_n64_α
 xchain00234_n62_β:
 jmp xchain00234_n67_α
.Lx00272_0:
 .quad .Lx00272_0_s
.Lx00272_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain00234_n63_α:
 mov qword ptr [r12 + 4576], 6
 mov rax, qword ptr [rip + .Lx00273_0]
 mov qword ptr [r12 + 4584], rax
 jmp xchain00234_n65_α
 xchain00234_n63_β:
 jmp xchain00234_n60_α
.Lx00273_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00234_n64_α:
 mov rdi, qword ptr [r12 + 4464]
 mov rsi, qword ptr [r12 + 4472]
 mov rdx, qword ptr [r12 + 4480]
 mov rcx, qword ptr [r12 + 4488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00234_n67_α
 mov qword ptr [r12 + 4496], rax
 mov qword ptr [r12 + 4504], rdx
 jmp xchain00234_n66_α
 xchain00234_n64_β:
 jmp xchain00234_n67_α
# IR_ASSIGN gva
 xchain00234_n65_α:
 mov rax, qword ptr [r12 + 4576]
 mov rdx, qword ptr [r12 + 4584]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 4560], rax
 mov qword ptr [r12 + 4568], rdx
 jmp xchain00234_n68_α
 xchain00234_n65_β:
 jmp xchain00234_n60_α
# IR_DEREF variable -> value
 xchain00234_n66_α:
 mov rdi, qword ptr [r12 + 4496]
 mov rsi, qword ptr [r12 + 4504]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00234_n67_α
 mov qword ptr [r12 + 4512], rax
 mov qword ptr [r12 + 4520], rdx
 jmp xchain00234_n69_α
 xchain00234_n66_β:
 jmp xchain00234_n67_α
# IR_VAR_REF
 xchain00234_n67_α:
 lea rdi, [r12 + 6192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 jmp xchain00234_n70_α
 xchain00234_n67_β:
 jmp xchain00234_n76_α
# IR_MOVE_LABEL
 xchain00234_n68_α:
 mov rax, qword ptr [r12 + 4560]
 mov qword ptr [r12 + 4528], rax
 mov rax, qword ptr [r12 + 4568]
 mov qword ptr [r12 + 4536], rax
 lea rax, [rip + xchain00234_n60_α]
 mov qword ptr [r12 + 4544], rax
 jmp xchain00234_n60_α
 xchain00234_n68_β:
 jmp xchain00234_n60_α
# IR_UNOP
 xchain00234_n69_α:
 mov eax, dword ptr [r12 + 4512]
 cmp eax, 99
 je xchain00234_n67_α
 cmp eax, 0
 je xchain00234_n67_α
 mov rax, qword ptr [r12 + 4512]
 mov qword ptr [r12 + 4448], rax
 mov rax, qword ptr [r12 + 4520]
 mov qword ptr [r12 + 4456], rax
 jmp xchain00234_n72_α
 xchain00234_n69_β:
 jmp xchain00234_n67_α
# IR_LIT_STRING
 xchain00234_n70_α:
 mov qword ptr [r12 + 4336], 1
 mov rax, qword ptr [rip + .Lx00274_0]
 mov qword ptr [r12 + 4344], rax
 jmp xchain00234_n73_α
 xchain00234_n70_β:
 jmp xchain00234_n76_α
.Lx00274_0:
 .quad .Lx00274_0_s
.Lx00274_0_s:
 .string "w"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00234_n71_α:
 jmp qword ptr [r12 + 4544]
 xchain00234_n71_β:
 jmp xchain00234_n60_α
# IR_LIT_INTEGER
 xchain00234_n72_α:
 mov qword ptr [r12 + 4432], 6
 mov rax, qword ptr [rip + .Lx00275_0]
 mov qword ptr [r12 + 4440], rax
 jmp xchain00234_n74_α
 xchain00234_n72_β:
 jmp xchain00234_n67_α
.Lx00275_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00234_n73_α:
 mov rdi, qword ptr [r12 + 4320]
 mov rsi, qword ptr [r12 + 4328]
 mov rdx, qword ptr [r12 + 4336]
 mov rcx, qword ptr [r12 + 4344]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00234_n76_α
 mov qword ptr [r12 + 4352], rax
 mov qword ptr [r12 + 4360], rdx
 jmp xchain00234_n75_α
 xchain00234_n73_β:
 jmp xchain00234_n76_α
# IR_ASSIGN gva
 xchain00234_n74_α:
 mov rax, qword ptr [r12 + 4432]
 mov rdx, qword ptr [r12 + 4440]
 mov qword ptr [rbx + 128], rax
 mov qword ptr [rbx + 136], rdx
 mov qword ptr [r12 + 4416], rax
 mov qword ptr [r12 + 4424], rdx
 jmp xchain00234_n77_α
 xchain00234_n74_β:
 jmp xchain00234_n67_α
# IR_DEREF variable -> value
 xchain00234_n75_α:
 mov rdi, qword ptr [r12 + 4352]
 mov rsi, qword ptr [r12 + 4360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00234_n76_α
 mov qword ptr [r12 + 4368], rax
 mov qword ptr [r12 + 4376], rdx
 jmp xchain00234_n78_α
 xchain00234_n75_β:
 jmp xchain00234_n76_α
# IR_VAR_REF
 xchain00234_n76_α:
 lea rdi, [r12 + 6192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4224], rax
 mov qword ptr [r12 + 4232], rdx
 jmp xchain00234_n79_α
 xchain00234_n76_β:
 jmp xchain00234_n84_α
# IR_MOVE_LABEL
 xchain00234_n77_α:
 mov rax, qword ptr [r12 + 4416]
 mov qword ptr [r12 + 4384], rax
 mov rax, qword ptr [r12 + 4424]
 mov qword ptr [r12 + 4392], rax
 lea rax, [rip + xchain00234_n67_α]
 mov qword ptr [r12 + 4400], rax
 jmp xchain00234_n67_α
 xchain00234_n77_β:
 jmp xchain00234_n67_α
# IR_UNOP
 xchain00234_n78_α:
 mov eax, dword ptr [r12 + 4368]
 cmp eax, 99
 je xchain00234_n76_α
 cmp eax, 0
 je xchain00234_n76_α
 mov rax, qword ptr [r12 + 4368]
 mov qword ptr [r12 + 4304], rax
 mov rax, qword ptr [r12 + 4376]
 mov qword ptr [r12 + 4312], rax
 jmp xchain00234_n81_α
 xchain00234_n78_β:
 jmp xchain00234_n76_α
# IR_LIT_STRING
 xchain00234_n79_α:
 mov qword ptr [r12 + 4240], 1
 mov rax, qword ptr [rip + .Lx00276_0]
 mov qword ptr [r12 + 4248], rax
 jmp xchain00234_n82_α
 xchain00234_n79_β:
 jmp xchain00234_n84_α
.Lx00276_0:
 .quad .Lx00276_0_s
.Lx00276_0_s:
 .string "l"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00234_n80_α:
 jmp qword ptr [r12 + 4400]
 xchain00234_n80_β:
 jmp xchain00234_n67_α
# IR_ASSIGN gva
 xchain00234_n81_α:
 mov rax, qword ptr [r12 + 4304]
 mov rdx, qword ptr [r12 + 4312]
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rdx
 mov qword ptr [r12 + 4288], rax
 mov qword ptr [r12 + 4296], rdx
 jmp xchain00234_n76_α
 xchain00234_n81_β:
 jmp xchain00234_n76_α
# IR_SUBSCRIPT x[i] variable
 xchain00234_n82_α:
 mov rdi, qword ptr [r12 + 4224]
 mov rsi, qword ptr [r12 + 4232]
 mov rdx, qword ptr [r12 + 4240]
 mov rcx, qword ptr [r12 + 4248]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00234_n84_α
 mov qword ptr [r12 + 4256], rax
 mov qword ptr [r12 + 4264], rdx
 jmp xchain00234_n83_α
 xchain00234_n82_β:
 jmp xchain00234_n84_α
# IR_DEREF variable -> value
 xchain00234_n83_α:
 mov rdi, qword ptr [r12 + 4256]
 mov rsi, qword ptr [r12 + 4264]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00234_n84_α
 mov qword ptr [r12 + 4272], rax
 mov qword ptr [r12 + 4280], rdx
 jmp xchain00234_n85_α
 xchain00234_n83_β:
 jmp xchain00234_n84_α
# IR_VAR_REF
 xchain00234_n84_α:
 lea rdi, [r12 + 6192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4128], rax
 mov qword ptr [r12 + 4136], rdx
 jmp xchain00234_n86_α
 xchain00234_n84_β:
 jmp xchain00234_n90_α
# IR_UNOP
 xchain00234_n85_α:
 mov eax, dword ptr [r12 + 4272]
 cmp eax, 99
 je xchain00234_n84_α
 cmp eax, 0
 je xchain00234_n84_α
 mov rax, qword ptr [r12 + 4272]
 mov qword ptr [r12 + 4208], rax
 mov rax, qword ptr [r12 + 4280]
 mov qword ptr [r12 + 4216], rax
 jmp xchain00234_n87_α
 xchain00234_n85_β:
 jmp xchain00234_n84_α
# IR_LIT_STRING
 xchain00234_n86_α:
 mov qword ptr [r12 + 4144], 1
 mov rax, qword ptr [rip + .Lx00277_0]
 mov qword ptr [r12 + 4152], rax
 jmp xchain00234_n88_α
 xchain00234_n86_β:
 jmp xchain00234_n90_α
.Lx00277_0:
 .quad .Lx00277_0_s
.Lx00277_0_s:
 .string "c"
# IR_ASSIGN gva
 xchain00234_n87_α:
 mov rax, qword ptr [r12 + 4208]
 mov rdx, qword ptr [r12 + 4216]
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rdx
 mov qword ptr [r12 + 4192], rax
 mov qword ptr [r12 + 4200], rdx
 jmp xchain00234_n84_α
 xchain00234_n87_β:
 jmp xchain00234_n84_α
# IR_SUBSCRIPT x[i] variable
 xchain00234_n88_α:
 mov rdi, qword ptr [r12 + 4128]
 mov rsi, qword ptr [r12 + 4136]
 mov rdx, qword ptr [r12 + 4144]
 mov rcx, qword ptr [r12 + 4152]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00234_n90_α
 mov qword ptr [r12 + 4160], rax
 mov qword ptr [r12 + 4168], rdx
 jmp xchain00234_n89_α
 xchain00234_n88_β:
 jmp xchain00234_n90_α
# IR_DEREF variable -> value
 xchain00234_n89_α:
 mov rdi, qword ptr [r12 + 4160]
 mov rsi, qword ptr [r12 + 4168]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00234_n90_α
 mov qword ptr [r12 + 4176], rax
 mov qword ptr [r12 + 4184], rdx
 jmp xchain00234_n91_α
 xchain00234_n89_β:
 jmp xchain00234_n90_α
# IR_VAR_REF
 xchain00234_n90_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4016], rax
 mov qword ptr [r12 + 4024], rdx
 jmp xchain00234_n92_α
 xchain00234_n90_β:
 jmp xchain00234_n96_α
# IR_UNOP
 xchain00234_n91_α:
 mov eax, dword ptr [r12 + 4176]
 cmp eax, 99
 je xchain00234_n90_α
 cmp eax, 0
 je xchain00234_n90_α
 mov rax, qword ptr [r12 + 4176]
 mov qword ptr [r12 + 4112], rax
 mov rax, qword ptr [r12 + 4184]
 mov qword ptr [r12 + 4120], rax
 jmp xchain00234_n93_α
 xchain00234_n91_β:
 jmp xchain00234_n90_α
# IR_LIT_INTEGER
 xchain00234_n92_α:
 mov qword ptr [r12 + 4032], 6
 mov rax, qword ptr [rip + .Lx00278_0]
 mov qword ptr [r12 + 4040], rax
 jmp xchain00234_n94_α
 xchain00234_n92_β:
 jmp xchain00234_n96_α
.Lx00278_0:
 .quad 1
# IR_ASSIGN gva
 xchain00234_n93_α:
 mov rax, qword ptr [r12 + 4112]
 mov rdx, qword ptr [r12 + 4120]
 mov qword ptr [rbx + 176], rax
 mov qword ptr [rbx + 184], rdx
 mov qword ptr [r12 + 4096], rax
 mov qword ptr [r12 + 4104], rdx
 jmp xchain00234_n90_α
 xchain00234_n93_β:
 jmp xchain00234_n90_α
# IR_SUBSCRIPT x[i] variable
 xchain00234_n94_α:
 mov rdi, qword ptr [r12 + 4016]
 mov rsi, qword ptr [r12 + 4024]
 mov rdx, qword ptr [r12 + 4032]
 mov rcx, qword ptr [r12 + 4040]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00234_n96_α
 mov qword ptr [r12 + 4048], rax
 mov qword ptr [r12 + 4056], rdx
 jmp xchain00234_n95_α
 xchain00234_n94_β:
 jmp xchain00234_n96_α
# IR_DEREF variable -> value
 xchain00234_n95_α:
 mov rdi, qword ptr [r12 + 4048]
 mov rsi, qword ptr [r12 + 4056]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00234_n96_α
 mov qword ptr [r12 + 4064], rax
 mov qword ptr [r12 + 4072], rdx
 jmp xchain00234_n97_α
 xchain00234_n95_β:
 jmp xchain00234_n96_α
 xchain00234_n96_α:
  .section .rodata
  .Lcall00279_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00279_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain00234_n99_α
 jmp xchain00234_n98_α
xchain00234_n96_β:
 jmp xchain00234_n99_α
# IR_LIT_STRING
 xchain00234_n97_α:
 mov qword ptr [r12 + 4080], 1
 mov rax, qword ptr [rip + .Lx00280_0]
 mov qword ptr [r12 + 4088], rax
 jmp xchain00234_n00026_α
 xchain00234_n97_β:
 jmp xchain00234_n96_α
.Lx00280_0:
 .quad .Lx00280_0_s
.Lx00280_0_s:
 .string "r"
 xchain00234_n98_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 752]
 mov rdx, qword ptr [r12 + 760]
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00234_n00027_α
 xchain00234_n98_β:
 jmp xchain00234_n99_α
# IR_VAR
 xchain00234_n99_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00234_n00029_α
 xchain00234_n99_β:
 jmp xchain00234_n00030_α
 xchain00234_n00026_α:
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
  .Lrkfn1060: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1060]
 lea rsi, [r12 + 3984]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3968], rax
 mov qword ptr [r12 + 3976], rdx
 cmp eax, 99
 je xchain00234_n96_α
 jmp xchain00234_n00024_α
 xchain00234_n00026_β:
 jmp xchain00234_n96_α
# IR_VAR
 xchain00234_n00027_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3920], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3928], rax
 jmp xchain00234_n00032_α
 xchain00234_n00027_β:
 jmp xchain00234_n00034_α
 xchain00234_n00029_α:
  .section .rodata
  .Lcall00281_pname: .string "format"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00281_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain00234_n00030_α
 jmp xchain00234_n00035_α
xchain00234_n00029_β:
 jmp xchain00234_n00030_α
# IR_LIT_STRING
 xchain00234_n00030_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx00282_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00234_n00037_α
 xchain00234_n00030_β:
 jmp xchain00234_n00043_α
.Lx00282_0:
 .quad .Lx00282_0_s
.Lx00282_0_s:
 .string "\n\nprocedures:\tlines:\n"
# IR_ASSIGN gva
 xchain00234_n00024_α:
 mov rax, qword ptr [r12 + 3968]
 mov rdx, qword ptr [r12 + 3976]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 3952], rax
 mov qword ptr [r12 + 3960], rdx
 jmp xchain00234_n96_α
 xchain00234_n00024_β:
 jmp xchain00234_n96_α
# IR_LIT_STRING
 xchain00234_n00032_α:
 mov qword ptr [r12 + 3936], 1
 mov rax, qword ptr [rip + .Lx00283_0]
 mov qword ptr [r12 + 3944], rax
 jmp xchain00234_n00038_α
 xchain00234_n00032_β:
 jmp xchain00234_n00034_α
.Lx00283_0:
 .quad .Lx00283_0_s
.Lx00283_0_s:
 .string "link"
# IR_VAR
 xchain00234_n00034_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3872], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3880], rax
 jmp xchain00234_n00039_α
 xchain00234_n00034_β:
 jmp xchain00234_n00048_α
# IR_LIST_BANG
 xchain00234_n00035_α:
 mov qword ptr [r12 + 672], 0
.Lx00284_0:
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 mov rdx, qword ptr [r12 + 672]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp rax, 99
 je xchain00234_n00030_α
 jmp xchain00234_n00001_α
 xchain00234_n00035_β:
 inc qword ptr [r12 + 672]
 jmp .Lx00284_0
 xchain00234_n00037_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+592]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn1072: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1072]
 lea rsi, [r12 + 592]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain00234_n00043_α
 jmp xchain00234_n00043_α
 xchain00234_n00037_β:
 jmp xchain00234_n00043_α
 xchain00234_n00038_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 3936]
 mov rcx, qword ptr [r12 + 3944]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00234_n00034_α
 mov rdi, qword ptr [r12 + 3936]
 mov rsi, qword ptr [r12 + 3944]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3904], rax
 mov qword ptr [r12 + 3912], rdx
 jmp xchain00234_n00044_α
 xchain00234_n00038_β:
 jmp xchain00234_n00034_α
# IR_LIT_STRING
 xchain00234_n00039_α:
 mov qword ptr [r12 + 3888], 1
 mov rax, qword ptr [rip + .Lx00285_0]
 mov qword ptr [r12 + 3896], rax
 jmp xchain00234_n00045_α
 xchain00234_n00039_β:
 jmp xchain00234_n00048_α
.Lx00285_0:
 .quad .Lx00285_0_s
.Lx00285_0_s:
 .string "procedure"
# IR_VAR
 xchain00234_n00048_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3760], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3768], rax
 jmp xchain00234_n00002_α
 xchain00234_n00048_β:
 jmp xchain00234_n00047_α
 xchain00234_n00001_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+640]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn1078: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1078]
 lea rsi, [r12 + 640]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain00234_n00030_α
 jmp xchain00234_n00035_β
 xchain00234_n00001_β:
 jmp xchain00234_n00030_α
# IR_MAKE_LIST
 xchain00234_n00043_α:
 lea rdi, [r12 + 576]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00234_n00040_α
 xchain00234_n00043_β:
 jmp xchain00234_n00004_α
# IR_MAKE_LIST
 xchain00234_n00044_α:
 lea rdi, [r12 + 864]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain00234_n00049_α
 xchain00234_n00044_β:
 jmp xchain00234_n00055_α
 xchain00234_n00045_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 3888]
 mov rcx, qword ptr [r12 + 3896]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00234_n00048_α
 mov rdi, qword ptr [r12 + 3888]
 mov rsi, qword ptr [r12 + 3896]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3856], rax
 mov qword ptr [r12 + 3864], rdx
 jmp xchain00234_n00003_α
 xchain00234_n00045_β:
 jmp xchain00234_n00048_α
# IR_LIT_STRING
 xchain00234_n00002_α:
 mov qword ptr [r12 + 3840], 1
 mov rax, qword ptr [rip + .Lx00286_0]
 mov qword ptr [r12 + 3848], rax
 jmp xchain00234_n00051_α
 xchain00234_n00002_β:
 jmp xchain00234_n00058_α
.Lx00286_0:
 .quad .Lx00286_0_s
.Lx00286_0_s:
 .string "global"
# IR_VAR
 xchain00234_n00047_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3648], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3656], rax
 jmp xchain00234_n00052_α
 xchain00234_n00047_β:
 jmp xchain00234_n00054_α
 xchain00234_n00040_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 6080], rax
 mov qword ptr [r12 + 6088], rdx
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00234_n00004_α
 xchain00234_n00040_β:
 jmp xchain00234_n00004_α
# IR_ASSIGN gva
 xchain00234_n00049_α:
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00234_n00055_α
 xchain00234_n00049_β:
 jmp xchain00234_n00055_α
# IR_VAR
 xchain00234_n00003_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 1224], rax
 jmp xchain00234_n00056_α
 xchain00234_n00003_β:
 jmp xchain00234_n00064_α
# IR_MOVE_LABEL
 xchain00234_n00051_α:
 mov rax, qword ptr [r12 + 3840]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 3848]
 mov qword ptr [r12 + 3784], rax
 lea rax, [rip + xchain00234_n00058_α]
 mov qword ptr [r12 + 3792], rax
 jmp xchain00234_n00005_α
 xchain00234_n00051_β:
 jmp xchain00234_n00047_α
# IR_LIT_STRING
 xchain00234_n00052_α:
 mov qword ptr [r12 + 3728], 1
 mov rax, qword ptr [rip + .Lx00287_0]
 mov qword ptr [r12 + 3736], rax
 jmp xchain00234_n00062_α
 xchain00234_n00052_β:
 jmp xchain00234_n00076_α
.Lx00287_0:
 .quad .Lx00287_0_s
.Lx00287_0_s:
 .string "local"
# IR_VAR
 xchain00234_n00054_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3600], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3608], rax
 jmp xchain00234_n00065_α
 xchain00234_n00054_β:
 jmp xchain00234_n00069_α
# IR_VAR
 xchain00234_n00004_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 216], rax
 jmp xchain00234_n00066_α
 xchain00234_n00004_β:
 jmp xchain00234_n00070_α
# IR_LIT_STRING
 xchain00234_n00055_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx00288_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain00234_n00067_α
 xchain00234_n00055_β:
 jmp xchain00234_n96_α
.Lx00288_0:
 .quad .Lx00288_0_s
.Lx00288_0_s:
 .string ""
# IR_LIT_STRING
 xchain00234_n00056_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx00289_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00234_n00063_α
 xchain00234_n00056_β:
 jmp xchain00234_n00064_α
.Lx00289_0:
 .quad .Lx00289_0_s
.Lx00289_0_s:
 .string ""
 xchain00234_n00064_α:
  .section .rodata
  .Lcall00200_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00200_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain00234_n99_α
 jmp xchain00234_n00068_α
xchain00234_n00064_β:
 jmp xchain00234_n99_α
 xchain00234_n00005_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 3776]
 mov rcx, qword ptr [r12 + 3784]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00234_n00060_α
 mov rdi, qword ptr [r12 + 3776]
 mov rsi, qword ptr [r12 + 3784]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3744], rax
 mov qword ptr [r12 + 3752], rdx
 jmp xchain00234_n00072_α
 xchain00234_n00005_β:
 jmp xchain00234_n00060_α
# IR_LIT_STRING
 xchain00234_n00058_α:
 mov qword ptr [r12 + 3824], 1
 mov rax, qword ptr [rip + .Lx00290_0]
 mov qword ptr [r12 + 3832], rax
 jmp xchain00234_n00073_α
 xchain00234_n00058_β:
 jmp xchain00234_n00009_α
.Lx00290_0:
 .quad .Lx00290_0_s
.Lx00290_0_s:
 .string "link"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00234_n00060_α:
 jmp qword ptr [r12 + 3792]
 xchain00234_n00060_β:
 jmp xchain00234_n00047_α
# IR_MOVE_LABEL
 xchain00234_n00062_α:
 mov rax, qword ptr [r12 + 3728]
 mov qword ptr [r12 + 3664], rax
 mov rax, qword ptr [r12 + 3736]
 mov qword ptr [r12 + 3672], rax
 lea rax, [rip + xchain00234_n00076_α]
 mov qword ptr [r12 + 3680], rax
 jmp xchain00234_n00074_α
 xchain00234_n00062_β:
 jmp xchain00234_n00054_α
# IR_LIT_STRING
 xchain00234_n00065_α:
 mov qword ptr [r12 + 3616], 1
 mov rax, qword ptr [rip + .Lx00291_0]
 mov qword ptr [r12 + 3624], rax
 jmp xchain00234_n00078_α
 xchain00234_n00065_β:
 jmp xchain00234_n00069_α
.Lx00291_0:
 .quad .Lx00291_0_s
.Lx00291_0_s:
 .string "end"
# IR_VAR
 xchain00234_n00069_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3520], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3528], rax
 jmp xchain00234_n00080_α
 xchain00234_n00069_β:
 jmp xchain00234_n00081_α
# IR_LIST_BANG
 xchain00234_n00066_α:
 mov qword ptr [r12 + 192], 0
.Lx00292_0:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 192]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp rax, 99
 je xchain00234_n00070_α
 jmp xchain00234_n00006_α
 xchain00234_n00066_β:
 inc qword ptr [r12 + 192]
 jmp .Lx00292_0
# IR_VAR
 xchain00234_n00070_α:
 mov rax, qword ptr [r12 + 6080]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 6088]
 mov qword ptr [r12 + 152], rax
 jmp xchain00234_n00084_α
 xchain00234_n00070_β:
 jmp xchain00234_n00085_α
# IR_ASSIGN gva
 xchain00234_n00067_α:
 mov rax, qword ptr [r12 + 816]
 mov rdx, qword ptr [r12 + 824]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00234_n96_α
 xchain00234_n00067_β:
 jmp xchain00234_n96_α
# IR_VAR
 xchain00234_n00063_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain00234_n00087_α
 xchain00234_n00063_β:
 jmp xchain00234_n00064_α
# IR_MOVE_LABEL
 xchain00234_n00068_α:
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rax
 lea rax, [rip + xchain00234_n00071_α]
 mov qword ptr [r12 + 1136], rax
 jmp xchain00234_n00088_α
 xchain00234_n00068_β:
 jmp xchain00234_n00102_α
 xchain00234_n00071_α:
 jmp xchain00234_n99_α
xchain00234_n00071_β:
 jmp xchain00234_n99_α
 xchain00234_n00072_α:
  .section .rodata
  .Lcall00293_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00293_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 cmp eax, 99
 je xchain00234_n99_α
 jmp xchain00234_n00091_α
xchain00234_n00072_β:
 jmp xchain00234_n99_α
# IR_MOVE_LABEL
 xchain00234_n00073_α:
 mov rax, qword ptr [r12 + 3824]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 3832]
 mov qword ptr [r12 + 3784], rax
 lea rax, [rip + xchain00234_n00009_α]
 mov qword ptr [r12 + 3792], rax
 jmp xchain00234_n00005_α
 xchain00234_n00073_β:
 jmp xchain00234_n00047_α
 xchain00234_n00074_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 3664]
 mov rcx, qword ptr [r12 + 3672]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00234_n00077_α
 mov rdi, qword ptr [r12 + 3664]
 mov rsi, qword ptr [r12 + 3672]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3632], rax
 mov qword ptr [r12 + 3640], rdx
 jmp xchain00234_n00010_α
 xchain00234_n00074_β:
 jmp xchain00234_n00077_α
# IR_LIT_STRING
 xchain00234_n00076_α:
 mov qword ptr [r12 + 3712], 1
 mov rax, qword ptr [rip + .Lx00294_0]
 mov qword ptr [r12 + 3720], rax
 jmp xchain00234_n00093_α
 xchain00234_n00076_β:
 jmp xchain00234_n00014_α
.Lx00294_0:
 .quad .Lx00294_0_s
.Lx00294_0_s:
 .string "dynamic"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00234_n00077_α:
 jmp qword ptr [r12 + 3680]
 xchain00234_n00077_β:
 jmp xchain00234_n00054_α
 xchain00234_n00078_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 3616]
 mov rcx, qword ptr [r12 + 3624]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00234_n00069_α
 mov rdi, qword ptr [r12 + 3616]
 mov rsi, qword ptr [r12 + 3624]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3584], rax
 mov qword ptr [r12 + 3592], rdx
 jmp xchain00234_n00092_α
 xchain00234_n00078_β:
 jmp xchain00234_n00069_α
# IR_VAR
 xchain00234_n00080_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 3568], rax
 mov qword ptr [r12 + 3576], rdx
 jmp xchain00234_n00011_α
 xchain00234_n00080_β:
 jmp xchain00234_n00081_α
# IR_VAR
 xchain00234_n00081_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 3488], rax
 mov qword ptr [r12 + 3496], rdx
 jmp xchain00234_n00095_α
 xchain00234_n00081_β:
 jmp xchain00234_n00012_α
 xchain00234_n00006_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 6096], rax
 mov qword ptr [r12 + 6104], rdx
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00234_n00098_α
 xchain00234_n00006_β:
 jmp xchain00234_n00070_α
 xchain00234_n00084_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn1131: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1131]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00234_n00085_α
 jmp xchain00234_n00013_α
 xchain00234_n00084_β:
 jmp xchain00234_n00085_α
 xchain00234_n00085_α:
  .section .rodata
  .Lcall00295_pname: .string "Term__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00295_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
xchain00234_n00085_β:
 jmp main_ω
 xchain00234_n00089_α:
 jmp xchain00234_n96_α
xchain00234_n00089_β:
 jmp xchain00234_n96_α
# IR_LIT_INTEGER
 xchain00234_n00087_α:
 mov qword ptr [r12 + 1328], 6
 mov rax, qword ptr [rip + .Lx00296_0]
 mov qword ptr [r12 + 1336], rax
 jmp xchain00234_n00101_α
 xchain00234_n00087_β:
 jmp xchain00234_n00064_α
.Lx00296_0:
 .quad 0
 xchain00234_n00088_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 6144], rax
 mov qword ptr [r12 + 6152], rdx
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain00234_n00102_α
 xchain00234_n00088_β:
 jmp xchain00234_n00102_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00234_n00007_α:
 jmp qword ptr [r12 + 1136]
 xchain00234_n00007_β:
 jmp xchain00234_n00102_α
# IR_MOVE_LABEL
 xchain00234_n00091_α:
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 1944], rax
 lea rax, [rip + xchain00234_n00008_α]
 mov qword ptr [r12 + 1952], rax
 jmp xchain00234_n00104_α
 xchain00234_n00091_β:
 jmp xchain00234_n00297_α
 xchain00234_n00008_α:
 jmp xchain00234_n99_α
xchain00234_n00008_β:
 jmp xchain00234_n99_α
# IR_LIT_STRING
 xchain00234_n00009_α:
 mov qword ptr [r12 + 3808], 1
 mov rax, qword ptr [rip + .Lx00298_0]
 mov qword ptr [r12 + 3816], rax
 jmp xchain00234_n00106_α
 xchain00234_n00009_β:
 jmp xchain00234_n00047_α
.Lx00298_0:
 .quad .Lx00298_0_s
.Lx00298_0_s:
 .string "record"
 xchain00234_n00010_α:
  .section .rodata
  .Lcall00203_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00203_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 cmp eax, 99
 je xchain00234_n99_α
 jmp xchain00234_n00107_α
xchain00234_n00010_β:
 jmp xchain00234_n99_α
# IR_MOVE_LABEL
 xchain00234_n00093_α:
 mov rax, qword ptr [r12 + 3712]
 mov qword ptr [r12 + 3664], rax
 mov rax, qword ptr [r12 + 3720]
 mov qword ptr [r12 + 3672], rax
 lea rax, [rip + xchain00234_n00014_α]
 mov qword ptr [r12 + 3680], rax
 jmp xchain00234_n00074_α
 xchain00234_n00093_β:
 jmp xchain00234_n00054_α
# IR_LIT_STRING
 xchain00234_n00092_α:
 mov qword ptr [r12 + 3072], 1
 mov rax, qword ptr [rip + .Lx00299_0]
 mov qword ptr [r12 + 3080], rax
 jmp xchain00234_n00110_α
 xchain00234_n00092_β:
 jmp xchain00234_n00300_α
.Lx00299_0:
 .quad .Lx00299_0_s
.Lx00299_0_s:
 .string "global"
# IR_LIST_BANG
 xchain00234_n00011_α:
 mov qword ptr [r12 + 3552], 0
.Lx00301_0:
 mov rdi, qword ptr [r12 + 3568]
 mov rsi, qword ptr [r12 + 3576]
 mov rdx, qword ptr [r12 + 3552]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 3536], rax
 mov qword ptr [r12 + 3544], rdx
 cmp rax, 99
 je xchain00234_n00081_α
 jmp xchain00234_n00109_α
 xchain00234_n00011_β:
 inc qword ptr [r12 + 3552]
 jmp .Lx00301_0
 xchain00234_n00095_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3488]
 mov rdx, qword ptr [r12 + 3496]
 mov qword ptr [r12 + 6176], rax
 mov qword ptr [r12 + 6184], rdx
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], rdx
 jmp xchain00234_n00012_α
 xchain00234_n00095_β:
 jmp xchain00234_n00012_α
 xchain00234_n00012_α:
  .section .rodata
  .Lcall00302_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00302_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3440], rax
 mov qword ptr [r12 + 3448], rdx
 cmp eax, 99
 je xchain00234_n00303_α
 jmp xchain00234_n00111_α
xchain00234_n00012_β:
 jmp xchain00234_n00303_α
# IR_VAR
 xchain00234_n00098_α:
 mov rax, qword ptr [r12 + 6080]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 6088]
 mov qword ptr [r12 + 280], rax
 jmp xchain00234_n00015_α
 xchain00234_n00098_β:
 jmp xchain00234_n00066_β
# IR_LIST_BANG
 xchain00234_n00013_α:
 mov qword ptr [r12 + 96], 0
.Lx00304_0:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 96]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp rax, 99
 je xchain00234_n00085_α
 jmp xchain00234_n00305_α
 xchain00234_n00013_β:
 inc qword ptr [r12 + 96]
 jmp .Lx00304_0
 xchain00234_n00101_α:
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
  .Lrkfn1155: .string "procrec"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1155]
 lea rsi, [r12 + 1248]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je xchain00234_n00064_α
 jmp xchain00234_n00306_α
 xchain00234_n00101_β:
 jmp xchain00234_n00064_α
# IR_VAR
 xchain00234_n00102_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 1096], rax
 jmp xchain00234_n00307_α
 xchain00234_n00102_β:
 jmp xchain00234_n00308_α
 xchain00234_n00104_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1936]
 mov rdx, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain00234_n00297_α
 xchain00234_n00104_β:
 jmp xchain00234_n00297_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00234_n00105_α:
 jmp qword ptr [r12 + 1952]
 xchain00234_n00105_β:
 jmp xchain00234_n00297_α
# IR_MOVE_LABEL
 xchain00234_n00106_α:
 mov rax, qword ptr [r12 + 3808]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 3816]
 mov qword ptr [r12 + 3784], rax
 lea rax, [rip + xchain00234_n00047_α]
 mov qword ptr [r12 + 3792], rax
 jmp xchain00234_n00005_α
 xchain00234_n00106_β:
 jmp xchain00234_n00047_α
# IR_MOVE_LABEL
 xchain00234_n00107_α:
 mov rax, qword ptr [r12 + 2768]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 2776]
 mov qword ptr [r12 + 2744], rax
 lea rax, [rip + xchain00234_n00108_α]
 mov qword ptr [r12 + 2752], rax
 jmp xchain00234_n00309_α
 xchain00234_n00107_β:
 jmp xchain00234_n00310_α
 xchain00234_n00108_α:
 jmp xchain00234_n99_α
xchain00234_n00108_β:
 jmp xchain00234_n99_α
# IR_LIT_STRING
 xchain00234_n00014_α:
 mov qword ptr [r12 + 3696], 1
 mov rax, qword ptr [rip + .Lx00311_0]
 mov qword ptr [r12 + 3704], rax
 jmp xchain00234_n00312_α
 xchain00234_n00014_β:
 jmp xchain00234_n00054_α
.Lx00311_0:
 .quad .Lx00311_0_s
.Lx00311_0_s:
 .string "static"
 xchain00234_n00110_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3072]
 mov rdx, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 6144], rax
 mov qword ptr [r12 + 6152], rdx
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 jmp xchain00234_n00300_α
 xchain00234_n00110_β:
 jmp xchain00234_n00300_α
 xchain00234_n00109_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 3536]
 mov rcx, qword ptr [r12 + 3544]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00234_n00011_β
 mov rdi, qword ptr [r12 + 3536]
 mov rsi, qword ptr [r12 + 3544]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 jmp xchain00234_n96_α
 xchain00234_n00109_β:
 jmp xchain00234_n00011_β
 xchain00234_n00111_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3440]
 mov rdx, qword ptr [r12 + 3448]
 mov qword ptr [r12 + 6160], rax
 mov qword ptr [r12 + 6168], rdx
 mov qword ptr [r12 + 3424], rax
 mov qword ptr [r12 + 3432], rdx
 jmp xchain00234_n00017_α
 xchain00234_n00111_β:
 jmp xchain00234_n00303_α
# IR_VAR
 xchain00234_n00303_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 3376], rax
 mov qword ptr [r12 + 3384], rdx
 jmp xchain00234_n00313_α
 xchain00234_n00303_β:
 jmp xchain00234_n00314_α
# IR_VAR
 xchain00234_n00015_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 424], rax
 jmp xchain00234_n00315_α
 xchain00234_n00015_β:
 jmp xchain00234_n00066_β
 xchain00234_n00305_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+64]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 72], rax
  .section .rodata
  .Lrkfn1174: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1174]
 lea rsi, [r12 + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain00234_n00085_α
 jmp xchain00234_n00013_β
 xchain00234_n00305_β:
 jmp xchain00234_n00085_α
 xchain00234_n00306_α:
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
  .Lrkfn1176: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1176]
 lea rsi, [r12 + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain00234_n00064_α
 jmp xchain00234_n00064_α
 xchain00234_n00306_β:
 jmp xchain00234_n00064_α
 xchain00234_n00307_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1072]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn1178: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1178]
 lea rsi, [r12 + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00234_n00308_α
 jmp xchain00234_n00316_α
 xchain00234_n00307_β:
 jmp xchain00234_n00308_α
# IR_VAR
 xchain00234_n00308_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00234_n00317_α
 xchain00234_n00308_β:
 jmp xchain00234_n00318_α
# IR_VAR
 xchain00234_n00297_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 1880], rax
 jmp xchain00234_n00319_α
 xchain00234_n00297_β:
 jmp xchain00234_n00320_α
 xchain00234_n00309_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2736]
 mov rdx, qword ptr [r12 + 2744]
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 mov qword ptr [r12 + 2720], rax
 mov qword ptr [r12 + 2728], rdx
 jmp xchain00234_n00310_α
 xchain00234_n00309_β:
 jmp xchain00234_n00310_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00234_n00016_α:
 jmp qword ptr [r12 + 2752]
 xchain00234_n00016_β:
 jmp xchain00234_n00310_α
# IR_MOVE_LABEL
 xchain00234_n00312_α:
 mov rax, qword ptr [r12 + 3696]
 mov qword ptr [r12 + 3664], rax
 mov rax, qword ptr [r12 + 3704]
 mov qword ptr [r12 + 3672], rax
 lea rax, [rip + xchain00234_n00054_α]
 mov qword ptr [r12 + 3680], rax
 jmp xchain00234_n00074_α
 xchain00234_n00312_β:
 jmp xchain00234_n00054_α
# IR_MAKE_LIST
 xchain00234_n00300_α:
 lea rdi, [r12 + 3056]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 3040], rax
 mov qword ptr [r12 + 3048], rdx
 jmp xchain00234_n00321_α
 xchain00234_n00300_β:
 jmp xchain00234_n00322_α
 xchain00234_n00323_α:
 jmp xchain00234_n96_α
xchain00234_n00323_β:
 jmp xchain00234_n96_α
# IR_LIT_STRING
 xchain00234_n00017_α:
 mov qword ptr [r12 + 3456], 1
 mov rax, qword ptr [rip + .Lx00324_0]
 mov qword ptr [r12 + 3464], rax
 jmp xchain00234_n00325_α
 xchain00234_n00017_β:
 jmp xchain00234_n00303_α
.Lx00324_0:
 .quad .Lx00324_0_s
.Lx00324_0_s:
 .string "("
# IR_VAR
 xchain00234_n00313_α:
 mov rax, qword ptr [r12 + 6160]
 mov qword ptr [r12 + 3392], rax
 mov rax, qword ptr [r12 + 6168]
 mov qword ptr [r12 + 3400], rax
 jmp xchain00234_n00018_α
 xchain00234_n00313_β:
 jmp xchain00234_n00314_α
# IR_VAR
 xchain00234_n00314_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3184], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3192], rax
 jmp xchain00234_n00326_α
 xchain00234_n00314_β:
 jmp xchain00234_n96_α
# IR_FIELD_GET
 xchain00234_n00315_α:
 mov rdi, qword ptr [rip + .Lx00327_0]
 mov rsi, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00234_n00066_β
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00234_n00328_α
 xchain00234_n00315_β:
 jmp xchain00234_n00066_β
.Lx00327_0:
 .quad .Lx00327_0_s
.Lx00327_0_s:
 .string "pname"
 xchain00234_n00316_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1056]
 mov rdx, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 6096], rax
 mov qword ptr [r12 + 6104], rdx
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00234_n00308_α
 xchain00234_n00316_β:
 jmp xchain00234_n00308_α
# IR_FIELD_GET lv
 xchain00234_n00317_α:
 mov rdi, qword ptr [rip + .Lx00329_0]
 mov rsi, qword ptr [r12 + 992]
 mov rdx, qword ptr [r12 + 1000]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00234_n00318_α
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain00234_n00019_α
 xchain00234_n00317_β:
 jmp xchain00234_n00318_α
.Lx00329_0:
 .quad .Lx00329_0_s
.Lx00329_0_s:
 .string "pname"
# IR_VAR
 xchain00234_n00318_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 952], rax
 jmp xchain00234_n00330_α
 xchain00234_n00318_β:
 jmp xchain00234_n96_α
# IR_LIT_STRING
 xchain00234_n00319_α:
 mov qword ptr [r12 + 1888], 1
 mov rax, qword ptr [rip + .Lx00331_0]
 mov qword ptr [r12 + 1896], rax
 jmp xchain00234_n00020_α
 xchain00234_n00319_β:
 jmp xchain00234_n00320_α
.Lx00331_0:
 .quad .Lx00331_0_s
.Lx00331_0_s:
 .string "global"
 xchain00234_n00320_α:
  .section .rodata
  .Lcall00332_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00332_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 cmp eax, 99
 je xchain00234_n00333_α
 jmp xchain00234_n00334_α
xchain00234_n00320_β:
 jmp xchain00234_n00333_α
# IR_VAR
 xchain00234_n00310_α:
 mov rax, qword ptr [rbx + 192]
 mov rdx, qword ptr [rbx + 200]
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 jmp xchain00234_n00335_α
 xchain00234_n00310_β:
 jmp xchain00234_n00336_α
# IR_ASSIGN gva
 xchain00234_n00321_α:
 mov rax, qword ptr [r12 + 3040]
 mov rdx, qword ptr [r12 + 3048]
 mov qword ptr [rbx + 192], rax
 mov qword ptr [rbx + 200], rdx
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 jmp xchain00234_n00322_α
 xchain00234_n00321_β:
 jmp xchain00234_n00322_α
 xchain00234_n00325_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 3424]
 mov rsi, qword ptr [r12 + 3432]
 mov rdx, qword ptr [r12 + 3456]
 mov rcx, qword ptr [r12 + 3464]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00234_n00303_α
 mov rdi, qword ptr [r12 + 3456]
 mov rsi, qword ptr [r12 + 3464]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 3408], rax
 mov qword ptr [r12 + 3416], rdx
 jmp xchain00234_n00337_α
 xchain00234_n00325_β:
 jmp xchain00234_n00303_α
 xchain00234_n00018_α:
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
  .Lrkfn1207: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1207]
 lea rsi, [r12 + 3344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3328], rax
 mov qword ptr [r12 + 3336], rdx
 cmp eax, 99
 je xchain00234_n00314_α
 jmp xchain00234_n00338_α
 xchain00234_n00018_β:
 jmp xchain00234_n00314_α
# IR_VAR
 xchain00234_n00326_α:
 mov rax, qword ptr [r12 + 6144]
 mov qword ptr [r12 + 3200], rax
 mov rax, qword ptr [r12 + 6152]
 mov qword ptr [r12 + 3208], rax
 jmp xchain00234_n00339_α
 xchain00234_n00326_β:
 jmp xchain00234_n96_α
# IR_LIT_INTEGER
 xchain00234_n00328_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00340_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00234_n00341_α
 xchain00234_n00328_β:
 jmp xchain00234_n00066_β
.Lx00340_0:
 .quad 16
# IR_VAR
 xchain00234_n00019_α:
 mov rax, qword ptr [r12 + 6144]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 6152]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00234_n00342_α
 xchain00234_n00019_β:
 jmp xchain00234_n00318_α
# IR_VAR
 xchain00234_n00330_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 968], rax
 jmp xchain00234_n00343_α
 xchain00234_n00330_β:
 jmp xchain00234_n96_α
# IR_VAR
 xchain00234_n00020_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain00234_n00344_α
 xchain00234_n00020_β:
 jmp xchain00234_n00320_α
 xchain00234_n00334_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1488]
 mov rdx, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 6160], rax
 mov qword ptr [r12 + 6168], rdx
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain00234_n00021_α
 xchain00234_n00334_β:
 jmp xchain00234_n00333_α
# IR_VAR
 xchain00234_n00333_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain00234_n00345_α
 xchain00234_n00333_β:
 jmp xchain00234_n96_α
# IR_VAR
 xchain00234_n00335_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 2704], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 2712], rax
 jmp xchain00234_n00346_α
 xchain00234_n00335_β:
 jmp xchain00234_n00336_α
# IR_VAR
 xchain00234_n00336_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 2592], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 2600], rax
 jmp xchain00234_n00347_α
 xchain00234_n00336_β:
 jmp xchain00234_n00348_α
# IR_VAR
 xchain00234_n00322_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 3008], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 3016], rax
 jmp xchain00234_n00349_α
 xchain00234_n00322_β:
 jmp xchain00234_n00350_α
# IR_VAR
 xchain00234_n00337_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 3296], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 3304], rax
 jmp xchain00234_n00351_α
 xchain00234_n00337_β:
 jmp xchain00234_n00314_α
# IR_MOVE_LABEL
 xchain00234_n00338_α:
 mov rax, qword ptr [r12 + 3328]
 mov qword ptr [r12 + 3232], rax
 mov rax, qword ptr [r12 + 3336]
 mov qword ptr [r12 + 3240], rax
 lea rax, [rip + xchain00234_n00314_α]
 mov qword ptr [r12 + 3248], rax
 jmp xchain00234_n00314_α
 xchain00234_n00338_β:
 jmp xchain00234_n00314_α
# IR_VAR
 xchain00234_n00339_α:
 mov rax, qword ptr [r12 + 6176]
 mov qword ptr [r12 + 3216], rax
 mov rax, qword ptr [r12 + 6184]
 mov qword ptr [r12 + 3224], rax
 jmp xchain00234_n00023_α
 xchain00234_n00339_β:
 jmp xchain00234_n96_α
# IR_LIT_STRING
 xchain00234_n00341_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx00352_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00234_n00353_α
 xchain00234_n00341_β:
 jmp xchain00234_n00066_β
.Lx00352_0:
 .quad .Lx00352_0_s
.Lx00352_0_s:
 .string " "
# IR_ASSIGN_VAR
 xchain00234_n00342_α:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1024]
 mov rcx, qword ptr [r12 + 1032]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00234_n00318_α
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain00234_n00318_α
 xchain00234_n00342_β:
 jmp xchain00234_n00318_α
 xchain00234_n00343_α:
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
  .Lrkfn1233: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1233]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain00234_n96_α
 jmp xchain00234_n00354_α
 xchain00234_n00343_β:
 jmp xchain00234_n96_α
 xchain00234_n00344_α:
  .section .rodata
  .Lcall00355_pname: .string "addword"
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
   lea rdi, [rip + .Lcall00355_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 cmp eax, 99
 je xchain00234_n00320_α
 jmp xchain00234_n00320_α
xchain00234_n00344_β:
 jmp xchain00234_n00320_α
# IR_LIT_STRING
 xchain00234_n00021_α:
 mov qword ptr [r12 + 1504], 1
 mov rax, qword ptr [rip + .Lx00356_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00234_n00025_α
 xchain00234_n00021_β:
 jmp xchain00234_n00333_α
.Lx00356_0:
 .quad .Lx00356_0_s
.Lx00356_0_s:
 .string ","
# IR_VAR
 xchain00234_n00345_α:
 mov rax, qword ptr [r12 + 6160]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 6168]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00234_n00357_α
 xchain00234_n00345_β:
 jmp xchain00234_n96_α
 xchain00234_n00346_α:
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
  .Lrkfn1239: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1239]
 lea rsi, [r12 + 2656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 cmp eax, 99
 je xchain00234_n00336_α
 jmp xchain00234_n00336_α
 xchain00234_n00346_β:
 jmp xchain00234_n00336_α
# IR_VAR
 xchain00234_n00347_α:
 mov rax, qword ptr [r12 + 6144]
 mov qword ptr [r12 + 2608], rax
 mov rax, qword ptr [r12 + 6152]
 mov qword ptr [r12 + 2616], rax
 jmp xchain00234_n00358_α
 xchain00234_n00347_β:
 jmp xchain00234_n00348_α
 xchain00234_n00348_α:
  .section .rodata
  .Lcall00359_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00359_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 cmp eax, 99
 je xchain00234_n00360_α
 jmp xchain00234_n00361_α
xchain00234_n00348_β:
 jmp xchain00234_n00360_α
 xchain00234_n00349_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3008] -> [zr+2992]
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 3000], rax
  .section .rodata
  .Lrkfn1244: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1244]
 lea rsi, [r12 + 2992]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 cmp eax, 99
 je xchain00234_n00350_α
 jmp xchain00234_n00028_α
 xchain00234_n00349_β:
 jmp xchain00234_n00350_α
# IR_VAR
 xchain00234_n00350_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 2912], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 2920], rax
 jmp xchain00234_n00362_α
 xchain00234_n00350_β:
 jmp xchain00234_n00363_α
# IR_LIT_STRING
 xchain00234_n00351_α:
 mov qword ptr [r12 + 3312], 1
 mov rax, qword ptr [rip + .Lx00364_0]
 mov qword ptr [r12 + 3320], rax
 jmp xchain00234_n00031_α
 xchain00234_n00351_β:
 jmp xchain00234_n00314_α
.Lx00364_0:
 .quad .Lx00364_0_s
.Lx00364_0_s:
 .string " *"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00234_n00022_α:
 jmp qword ptr [r12 + 3248]
 xchain00234_n00022_β:
 jmp xchain00234_n00314_α
 xchain00234_n00023_α:
  .section .rodata
  .Lcall00365_pname: .string "addword"
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
   lea rdi, [rip + .Lcall00365_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 cmp eax, 99
 je xchain00234_n96_α
 jmp xchain00234_n00033_α
xchain00234_n00023_β:
 jmp xchain00234_n96_α
 xchain00234_n00353_α:
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
  .Lrkfn1252: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1252]
 lea rsi, [r12 + 352]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain00234_n00066_β
 jmp xchain00234_n00366_α
 xchain00234_n00353_β:
 jmp xchain00234_n00066_β
 xchain00234_n00354_α:
 jmp xchain00234_n00367_α
xchain00234_n00354_β:
 jmp xchain00234_n96_α
 xchain00234_n00025_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 1472]
 mov rsi, qword ptr [r12 + 1480]
 mov rdx, qword ptr [r12 + 1504]
 mov rcx, qword ptr [r12 + 1512]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00234_n00333_α
 mov rdi, qword ptr [r12 + 1504]
 mov rsi, qword ptr [r12 + 1512]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain00234_n00036_α
 xchain00234_n00025_β:
 jmp xchain00234_n00333_α
 xchain00234_n00357_α:
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
  .Lrkfn1256: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1256]
 lea rsi, [r12 + 1392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 cmp eax, 99
 je xchain00234_n96_α
 jmp xchain00234_n00368_α
 xchain00234_n00357_β:
 jmp xchain00234_n96_α
# IR_VAR
 xchain00234_n00358_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 jmp xchain00234_n00369_α
 xchain00234_n00358_β:
 jmp xchain00234_n00348_α
 xchain00234_n00361_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2128]
 mov rdx, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 6160], rax
 mov qword ptr [r12 + 6168], rdx
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 jmp xchain00234_n00041_α
 xchain00234_n00361_β:
 jmp xchain00234_n00360_α
# IR_VAR
 xchain00234_n00360_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain00234_n00370_α
 xchain00234_n00360_β:
 jmp xchain00234_n96_α
 xchain00234_n00028_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2976]
 mov rdx, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 6096], rax
 mov qword ptr [r12 + 6104], rdx
 mov qword ptr [r12 + 2960], rax
 mov qword ptr [r12 + 2968], rdx
 jmp xchain00234_n00350_α
 xchain00234_n00028_β:
 jmp xchain00234_n00350_α
# IR_FIELD_GET lv
 xchain00234_n00362_α:
 mov rdi, qword ptr [rip + .Lx00371_0]
 mov rsi, qword ptr [r12 + 2912]
 mov rdx, qword ptr [r12 + 2920]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00234_n00363_α
 mov qword ptr [r12 + 2896], rax
 mov qword ptr [r12 + 2904], rdx
 jmp xchain00234_n00042_α
 xchain00234_n00362_β:
 jmp xchain00234_n00363_α
.Lx00371_0:
 .quad .Lx00371_0_s
.Lx00371_0_s:
 .string "lastline"
# IR_VAR
 xchain00234_n00363_α:
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 2864], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 2872], rax
 jmp xchain00234_n00372_α
 xchain00234_n00363_β:
 jmp xchain00234_n96_α
 xchain00234_n00031_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 3312]
 mov rcx, qword ptr [r12 + 3320]
 call str_concat_d@PLT
 mov qword ptr [r12 + 3280], rax
 mov qword ptr [r12 + 3288], rdx
 jmp xchain00234_n00373_α
 xchain00234_n00031_β:
 jmp xchain00234_n00314_α
 xchain00234_n00033_α:
 jmp xchain00234_n00374_α
xchain00234_n00033_β:
 jmp xchain00234_n96_α
# IR_VAR
 xchain00234_n00366_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 488], rax
 jmp xchain00234_n00046_α
 xchain00234_n00366_β:
 jmp xchain00234_n00066_β
# IR_MOVE_LABEL
 xchain00234_n00367_α:
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 872], rax
 lea rax, [rip + xchain00234_n96_α]
 mov qword ptr [r12 + 880], rax
 jmp xchain00234_n00375_α
 xchain00234_n00367_β:
 jmp xchain00234_n96_α
# IR_VAR
 xchain00234_n00036_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 1752], rax
 jmp xchain00234_n00050_α
 xchain00234_n00036_β:
 jmp xchain00234_n00376_α
 xchain00234_n00368_α:
 jmp xchain00234_n00377_α
xchain00234_n00368_β:
 jmp xchain00234_n96_α
 xchain00234_n00369_α:
  .section .rodata
  .Lcall00378_pname: .string "addword"
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
   lea rdi, [rip + .Lcall00378_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 cmp eax, 99
 je xchain00234_n00348_α
 jmp xchain00234_n00348_α
xchain00234_n00369_β:
 jmp xchain00234_n00348_α
# IR_LIT_STRING
 xchain00234_n00041_α:
 mov qword ptr [r12 + 2144], 1
 mov rax, qword ptr [rip + .Lx00379_0]
 mov qword ptr [r12 + 2152], rax
 jmp xchain00234_n00380_α
 xchain00234_n00041_β:
 jmp xchain00234_n00360_α
.Lx00379_0:
 .quad .Lx00379_0_s
.Lx00379_0_s:
 .string ","
# IR_VAR
 xchain00234_n00370_α:
 mov rax, qword ptr [r12 + 6160]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 6168]
 mov qword ptr [r12 + 2088], rax
 jmp xchain00234_n00381_α
 xchain00234_n00370_β:
 jmp xchain00234_n96_α
# IR_VAR
 xchain00234_n00042_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2944], rax
 mov qword ptr [r12 + 2952], rdx
 jmp xchain00234_n00053_α
 xchain00234_n00042_β:
 jmp xchain00234_n00363_α
# IR_VAR
 xchain00234_n00372_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 2880], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 2888], rax
 jmp xchain00234_n00382_α
 xchain00234_n00372_β:
 jmp xchain00234_n96_α
 xchain00234_n00373_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3280]
 mov rdx, qword ptr [r12 + 3288]
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 mov qword ptr [r12 + 3264], rax
 mov qword ptr [r12 + 3272], rdx
 jmp xchain00234_n00383_α
 xchain00234_n00373_β:
 jmp xchain00234_n00314_α
# IR_MOVE_LABEL
 xchain00234_n00374_α:
 mov rax, qword ptr [r12 + 3120]
 mov qword ptr [r12 + 3088], rax
 mov rax, qword ptr [r12 + 3128]
 mov qword ptr [r12 + 3096], rax
 lea rax, [rip + xchain00234_n96_α]
 mov qword ptr [r12 + 3104], rax
 jmp xchain00234_n00384_α
 xchain00234_n00374_β:
 jmp xchain00234_n96_α
# IR_FIELD_GET
 xchain00234_n00046_α:
 mov rdi, qword ptr [rip + .Lx00385_0]
 mov rsi, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00234_n00066_β
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00234_n00386_α
 xchain00234_n00046_β:
 jmp xchain00234_n00066_β
.Lx00385_0:
 .quad .Lx00385_0_s
.Lx00385_0_s:
 .string "begline"
# IR_MOVE_LABEL
 xchain00234_n00375_α:
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 776], rax
 lea rax, [rip + xchain00234_n00387_α]
 mov qword ptr [r12 + 784], rax
 jmp xchain00234_n96_α
 xchain00234_n00375_β:
 jmp xchain00234_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00234_n00387_α:
 jmp qword ptr [r12 + 880]
 xchain00234_n00387_β:
 jmp xchain00234_n96_α
# IR_VAR
 xchain00234_n00050_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain00234_n00388_α
 xchain00234_n00050_β:
 jmp xchain00234_n00376_α
 xchain00234_n00376_α:
  .section .rodata
  .Lcall00389_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00389_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 cmp eax, 99
 je xchain00234_n00333_α
 jmp xchain00234_n00057_α
xchain00234_n00376_β:
 jmp xchain00234_n00333_α
# IR_MOVE_LABEL
 xchain00234_n00377_α:
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1352], rax
 lea rax, [rip + xchain00234_n96_α]
 mov qword ptr [r12 + 1360], rax
 jmp xchain00234_n00061_α
 xchain00234_n00377_β:
 jmp xchain00234_n96_α
 xchain00234_n00380_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 2112]
 mov rsi, qword ptr [r12 + 2120]
 mov rdx, qword ptr [r12 + 2144]
 mov rcx, qword ptr [r12 + 2152]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00234_n00360_α
 mov rdi, qword ptr [r12 + 2144]
 mov rsi, qword ptr [r12 + 2152]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain00234_n00390_α
 xchain00234_n00380_β:
 jmp xchain00234_n00360_α
 xchain00234_n00381_α:
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
  .Lrkfn1294: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1294]
 lea rsi, [r12 + 2032]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je xchain00234_n96_α
 jmp xchain00234_n00391_α
 xchain00234_n00381_β:
 jmp xchain00234_n96_α
# IR_ASSIGN_VAR
 xchain00234_n00053_α:
 mov rdi, qword ptr [r12 + 2896]
 mov rsi, qword ptr [r12 + 2904]
 mov rdx, qword ptr [r12 + 2944]
 mov rcx, qword ptr [r12 + 2952]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00234_n00363_α
 mov qword ptr [r12 + 2928], rax
 mov qword ptr [r12 + 2936], rdx
 jmp xchain00234_n00363_α
 xchain00234_n00053_β:
 jmp xchain00234_n00363_α
 xchain00234_n00382_α:
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
  .Lrkfn1297: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1297]
 lea rsi, [r12 + 2832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 cmp eax, 99
 je xchain00234_n96_α
 jmp xchain00234_n00392_α
 xchain00234_n00382_β:
 jmp xchain00234_n96_α
# IR_MOVE_LABEL
 xchain00234_n00383_α:
 mov rax, qword ptr [r12 + 3264]
 mov qword ptr [r12 + 3232], rax
 mov rax, qword ptr [r12 + 3272]
 mov qword ptr [r12 + 3240], rax
 lea rax, [rip + xchain00234_n00314_α]
 mov qword ptr [r12 + 3248], rax
 jmp xchain00234_n00314_α
 xchain00234_n00383_β:
 jmp xchain00234_n00314_α
# IR_MOVE_LABEL
 xchain00234_n00384_α:
 mov rax, qword ptr [r12 + 3088]
 mov qword ptr [r12 + 2784], rax
 mov rax, qword ptr [r12 + 3096]
 mov qword ptr [r12 + 2792], rax
 lea rax, [rip + xchain00234_n00393_α]
 mov qword ptr [r12 + 2800], rax
 jmp xchain00234_n00394_α
 xchain00234_n00384_β:
 jmp xchain00234_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00234_n00393_α:
 jmp qword ptr [r12 + 3104]
 xchain00234_n00393_β:
 jmp xchain00234_n96_α
 xchain00234_n00386_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 call str_concat_d@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00234_n00395_α
 xchain00234_n00386_β:
 jmp xchain00234_n00066_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00234_n00396_α:
 jmp qword ptr [r12 + 784]
 xchain00234_n00396_β:
 jmp xchain00234_n96_α
# IR_LIST_BANG
 xchain00234_n00388_α:
 mov qword ptr [r12 + 1776], 0
.Lx00397_0:
 mov rdi, qword ptr [r12 + 1792]
 mov rsi, qword ptr [r12 + 1800]
 mov rdx, qword ptr [r12 + 1776]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 cmp rax, 99
 je xchain00234_n00376_α
 jmp xchain00234_n00398_α
 xchain00234_n00388_β:
 inc qword ptr [r12 + 1776]
 jmp .Lx00397_0
# IR_MOVE_LABEL
 xchain00234_n00057_α:
 mov rax, qword ptr [r12 + 1680]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1688]
 mov qword ptr [r12 + 1656], rax
 lea rax, [rip + xchain00234_n00059_α]
 mov qword ptr [r12 + 1664], rax
 jmp xchain00234_n00399_α
 xchain00234_n00057_β:
 jmp xchain00234_n00400_α
 xchain00234_n00059_α:
 jmp xchain00234_n00333_α
xchain00234_n00059_β:
 jmp xchain00234_n00333_α
# IR_MOVE_LABEL
 xchain00234_n00061_α:
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 872], rax
 lea rax, [rip + xchain00234_n00401_α]
 mov qword ptr [r12 + 880], rax
 jmp xchain00234_n00375_α
 xchain00234_n00061_β:
 jmp xchain00234_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00234_n00401_α:
 jmp qword ptr [r12 + 1360]
 xchain00234_n00401_β:
 jmp xchain00234_n96_α
# IR_VAR
 xchain00234_n00390_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 2464], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 2472], rax
 jmp xchain00234_n00402_α
 xchain00234_n00390_β:
 jmp xchain00234_n00403_α
 xchain00234_n00391_α:
 jmp xchain00234_n00404_α
xchain00234_n00391_β:
 jmp xchain00234_n96_α
 xchain00234_n00392_α:
 jmp xchain00234_n00405_α
xchain00234_n00392_β:
 jmp xchain00234_n96_α
# IR_MOVE_LABEL
 xchain00234_n00394_α:
 mov rax, qword ptr [r12 + 2784]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 2792]
 mov qword ptr [r12 + 1992], rax
 lea rax, [rip + xchain00234_n00406_α]
 mov qword ptr [r12 + 2000], rax
 jmp xchain00234_n00407_α
 xchain00234_n00394_β:
 jmp xchain00234_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00234_n00406_α:
 jmp qword ptr [r12 + 2800]
 xchain00234_n00406_β:
 jmp xchain00234_n96_α
# IR_LIT_STRING
 xchain00234_n00395_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx00408_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00234_n00409_α
 xchain00234_n00395_β:
 jmp xchain00234_n00066_β
.Lx00408_0:
 .quad .Lx00408_0_s
.Lx00408_0_s:
 .string "-"
 xchain00234_n00398_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 1760]
 mov rcx, qword ptr [r12 + 1768]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00234_n00388_β
 mov rdi, qword ptr [r12 + 1760]
 mov rsi, qword ptr [r12 + 1768]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain00234_n00333_α
 xchain00234_n00398_β:
 jmp xchain00234_n00388_β
 xchain00234_n00399_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1648]
 mov rdx, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain00234_n00400_α
 xchain00234_n00399_β:
 jmp xchain00234_n00400_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00234_n00410_α:
 jmp qword ptr [r12 + 1664]
 xchain00234_n00410_β:
 jmp xchain00234_n00400_α
# IR_VAR
 xchain00234_n00402_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 jmp xchain00234_n00411_α
 xchain00234_n00402_β:
 jmp xchain00234_n00403_α
 xchain00234_n00403_α:
  .section .rodata
  .Lcall00412_pname: .string "getword"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00412_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je xchain00234_n00360_α
 jmp xchain00234_n00413_α
xchain00234_n00403_β:
 jmp xchain00234_n00360_α
# IR_MOVE_LABEL
 xchain00234_n00404_α:
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 1992], rax
 lea rax, [rip + xchain00234_n96_α]
 mov qword ptr [r12 + 2000], rax
 jmp xchain00234_n00407_α
 xchain00234_n00404_β:
 jmp xchain00234_n96_α
# IR_MOVE_LABEL
 xchain00234_n00405_α:
 mov rax, qword ptr [r12 + 2816]
 mov qword ptr [r12 + 2784], rax
 mov rax, qword ptr [r12 + 2824]
 mov qword ptr [r12 + 2792], rax
 lea rax, [rip + xchain00234_n96_α]
 mov qword ptr [r12 + 2800], rax
 jmp xchain00234_n00394_α
 xchain00234_n00405_β:
 jmp xchain00234_n96_α
# IR_MOVE_LABEL
 xchain00234_n00407_α:
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1352], rax
 lea rax, [rip + xchain00234_n00414_α]
 mov qword ptr [r12 + 1360], rax
 jmp xchain00234_n00061_α
 xchain00234_n00407_β:
 jmp xchain00234_n96_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00234_n00414_α:
 jmp qword ptr [r12 + 2000]
 xchain00234_n00414_β:
 jmp xchain00234_n96_α
 xchain00234_n00409_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call str_concat_d@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00234_n00415_α
 xchain00234_n00409_β:
 jmp xchain00234_n00066_β
 xchain00234_n00416_α:
 jmp xchain00234_n00333_α
xchain00234_n00416_β:
 jmp xchain00234_n00333_α
# IR_VAR
 xchain00234_n00400_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 1592], rax
 jmp xchain00234_n00417_α
 xchain00234_n00400_β:
 jmp xchain00234_n00320_α
# IR_LIST_BANG
 xchain00234_n00411_α:
 mov qword ptr [r12 + 2496], 0
.Lx00418_0:
 mov rdi, qword ptr [r12 + 2512]
 mov rsi, qword ptr [r12 + 2520]
 mov rdx, qword ptr [r12 + 2496]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 cmp rax, 99
 je xchain00234_n00403_α
 jmp xchain00234_n00419_α
 xchain00234_n00411_β:
 inc qword ptr [r12 + 2496]
 jmp .Lx00418_0
# IR_MOVE_LABEL
 xchain00234_n00413_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 2368], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 2376], rax
 lea rax, [rip + xchain00234_n00075_α]
 mov qword ptr [r12 + 2384], rax
 jmp xchain00234_n00079_α
 xchain00234_n00413_β:
 jmp xchain00234_n00420_α
 xchain00234_n00075_α:
 jmp xchain00234_n00360_α
xchain00234_n00075_β:
 jmp xchain00234_n00360_α
# IR_VAR
 xchain00234_n00415_α:
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 536], rax
 jmp xchain00234_n00421_α
 xchain00234_n00415_β:
 jmp xchain00234_n00066_β
# IR_LIT_STRING
 xchain00234_n00417_α:
 mov qword ptr [r12 + 1600], 1
 mov rax, qword ptr [rip + .Lx00422_0]
 mov qword ptr [r12 + 1608], rax
 jmp xchain00234_n00082_α
 xchain00234_n00417_β:
 jmp xchain00234_n00320_α
.Lx00422_0:
 .quad .Lx00422_0_s
.Lx00422_0_s:
 .string "global"
 xchain00234_n00419_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 6128]
 mov rsi, qword ptr [r12 + 6136]
 mov rdx, qword ptr [r12 + 2480]
 mov rcx, qword ptr [r12 + 2488]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00234_n00411_β
 mov rdi, qword ptr [r12 + 2480]
 mov rsi, qword ptr [r12 + 2488]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 jmp xchain00234_n00360_α
 xchain00234_n00419_β:
 jmp xchain00234_n00411_β
 xchain00234_n00079_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2368]
 mov rdx, qword ptr [r12 + 2376]
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 jmp xchain00234_n00420_α
 xchain00234_n00079_β:
 jmp xchain00234_n00420_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00234_n00423_α:
 jmp qword ptr [r12 + 2384]
 xchain00234_n00423_β:
 jmp xchain00234_n00420_α
# IR_FIELD_GET
 xchain00234_n00421_α:
 mov rdi, qword ptr [rip + .Lx00424_0]
 mov rsi, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00234_n00066_β
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00234_n00425_α
 xchain00234_n00421_β:
 jmp xchain00234_n00066_β
.Lx00424_0:
 .quad .Lx00424_0_s
.Lx00424_0_s:
 .string "lastline"
# IR_VAR
 xchain00234_n00082_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xchain00234_n00426_α
 xchain00234_n00082_β:
 jmp xchain00234_n00320_α
 xchain00234_n00083_α:
 jmp xchain00234_n00360_α
xchain00234_n00083_β:
 jmp xchain00234_n00360_α
# IR_VAR
 xchain00234_n00420_α:
 mov rax, qword ptr [rbx + 192]
 mov rdx, qword ptr [rbx + 200]
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 jmp xchain00234_n00086_α
 xchain00234_n00420_β:
 jmp xchain00234_n00427_α
 xchain00234_n00425_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 call str_concat_d@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00234_n00428_α
 xchain00234_n00425_β:
 jmp xchain00234_n00066_β
 xchain00234_n00426_α:
  .section .rodata
  .Lcall00246_pname: .string "addword"
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
   lea rdi, [rip + .Lcall00246_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 cmp eax, 99
 je xchain00234_n00320_α
 jmp xchain00234_n00429_α
xchain00234_n00426_β:
 jmp xchain00234_n00320_α
# IR_VAR
 xchain00234_n00086_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 2344], rax
 jmp xchain00234_n00430_α
 xchain00234_n00086_β:
 jmp xchain00234_n00427_α
# IR_VAR
 xchain00234_n00427_α:
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 2232], rax
 jmp xchain00234_n00090_α
 xchain00234_n00427_β:
 jmp xchain00234_n00348_α
 xchain00234_n00428_α:
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
  .Lrkfn1366: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1366]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00234_n00066_β
 jmp xchain00234_n00066_β
 xchain00234_n00428_β:
 jmp xchain00234_n00066_β
 xchain00234_n00429_α:
 jmp xchain00234_n00320_α
xchain00234_n00429_β:
 jmp xchain00234_n00320_α
 xchain00234_n00430_α:
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
  .Lrkfn1369: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1369]
 lea rsi, [r12 + 2288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 cmp eax, 99
 je xchain00234_n00427_α
 jmp xchain00234_n00427_α
 xchain00234_n00430_β:
 jmp xchain00234_n00427_α
# IR_VAR
 xchain00234_n00090_α:
 mov rax, qword ptr [r12 + 6144]
 mov qword ptr [r12 + 2240], rax
 mov rax, qword ptr [r12 + 6152]
 mov qword ptr [r12 + 2248], rax
 jmp xchain00234_n00431_α
 xchain00234_n00090_β:
 jmp xchain00234_n00348_α
# IR_VAR
 xchain00234_n00431_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 jmp xchain00234_n00432_α
 xchain00234_n00431_β:
 jmp xchain00234_n00348_α
 xchain00234_n00432_α:
  .section .rodata
  .Lcall00254_pname: .string "addword"
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
   lea rdi, [rip + .Lcall00254_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 cmp eax, 99
 je xchain00234_n00348_α
 jmp xchain00234_n00433_α
xchain00234_n00432_β:
 jmp xchain00234_n00348_α
 xchain00234_n00433_α:
 jmp xchain00234_n00348_α
xchain00234_n00433_β:
 jmp xchain00234_n00348_α
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
