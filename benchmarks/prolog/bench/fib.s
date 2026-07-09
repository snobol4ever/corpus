  .intel_syntax noprefix
  .text
  .globl proc_fib_α
proc_fib_α:
#=======================================================================================================================
    .global proc_fib_α
    .global proc_fib_β
    .global proc_fib_γ
    .global proc_fib_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_fib_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1344], rax
 pop rsi
proc_fib_α_body:
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_fib_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_fib_ω
# IR_VAR_REF local
 xchain0_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [r12 + 1328], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 1336], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
.Lx5_0:
 .quad 0
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn7: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn7]
 lea rsi, [r12 + 1280]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+1168]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1176], rax
  .section .rodata
  .Lrkfn11: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn11]
 lea rsi, [r12 + 1168]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je proc_fib_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_fib_ω
# IR_LIT_INTEGER
 xchain0_n6_α:
 mov qword ptr [r12 + 1248], 6
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 1256], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n5_α
.Lx12_0:
 .quad 1
# IR_VAR_REF local
 xchain0_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n14_α
 xchain0_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1232] -> [r12+1200]
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1208], rax
# marshal arg1 = producer-box slot [r12+1248] -> [r12+1216]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1224], rax
  .section .rodata
  .Lrkfn16: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn16]
 lea rsi, [r12 + 1200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n9_α:
 mov qword ptr [r12 + 1136], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n14_α
.Lx17_0:
 .quad 1
 xchain0_n10_α:
# IR_CUT
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n5_α
 xchain0_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1120] -> [r12+1088]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1096], rax
# marshal arg1 = producer-box slot [r12+1136] -> [r12+1104]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1112], rax
  .section .rodata
  .Lrkfn20: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 1088]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n12_α:
 lea rax, [rip + xchain0_n5_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_fib_γ
 xchain0_n12_β:
 jmp proc_fib_ω
# IR_VAR_REF local
 xchain0_n13_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n14_α
 xchain0_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+976]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 984], rax
  .section .rodata
  .Lrkfn26: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn26]
 lea rsi, [r12 + 976]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je proc_fib_ω
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp proc_fib_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n15_α:
 jmp qword ptr [r12 + 64]
 xchain0_n15_β:
 jmp proc_fib_ω
# IR_LIT_INTEGER
 xchain0_n16_α:
 mov qword ptr [r12 + 1056], 6
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [r12 + 1064], rax
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n14_α
.Lx29_0:
 .quad 1
# IR_VAR_REF local
 xchain0_n17_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n24_α
 xchain0_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1040] -> [r12+1008]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1016], rax
# marshal arg1 = producer-box slot [r12+1056] -> [r12+1024]
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1032], rax
  .section .rodata
  .Lrkfn33: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn33]
 lea rsi, [r12 + 1008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n19_α:
 lea rdi, [r12 + 1440]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n24_α
 xchain0_n20_α:
# IR_CUT
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n14_α
 xchain0_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+928] -> [r12+896]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [r12+944] -> [r12+912]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 920], rax
  .section .rodata
  .Lrkfn38: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 896]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n24_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n22_α:
 lea rax, [rip + xchain0_n14_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_fib_γ
 xchain0_n22_β:
 jmp proc_fib_ω
# IR_VAR_REF local
 xchain0_n23_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp xchain0_n24_α
 xchain0_n24_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn44: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn44]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_fib_ω
 jmp proc_fib_ω
 xchain0_n24_β:
 jmp proc_fib_ω
# IR_VAR_REF local
 xchain0_n25_α:
 lea rdi, [r12 + 1360]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp xchain0_n24_α
 xchain0_n26_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+848] -> [r12+816]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 824], rax
# marshal arg1 = producer-box slot [r12+864] -> [r12+832]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn48: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn48]
 lea rsi, [r12 + 816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n24_α
# IR_VAR
 xchain0_n27_α:
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 776], rax
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp xchain0_n24_α
# IR_LIT_INTEGER
 xchain0_n28_α:
 mov qword ptr [r12 + 784], 6
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp xchain0_n24_α
.Lx51_0:
 .quad 1
 xchain0_n29_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+768] -> [r12+736]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 744], rax
# marshal arg1 = producer-box slot [r12+784] -> [r12+752]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 760], rax
  .section .rodata
  .Lrkfn53: .string "$cmp_gt"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn53]
 lea rsi, [r12 + 736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n30_α
 xchain0_n29_β:
 jmp xchain0_n24_α
# IR_VAR_REF local
 xchain0_n30_α:
 lea rdi, [r12 + 1424]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain0_n31_α
 xchain0_n30_β:
 jmp xchain0_n24_α
# IR_VAR
 xchain0_n31_α:
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 696], rax
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp proc_fib_ω
# IR_LIT_INTEGER
 xchain0_n32_α:
 mov qword ptr [r12 + 704], 6
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp proc_fib_ω
.Lx58_0:
 .quad 1
 xchain0_n33_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+688] -> [r12+656]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 664], rax
# marshal arg1 = producer-box slot [r12+704] -> [r12+672]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn60: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn60]
 lea rsi, [r12 + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n34_α
 xchain0_n33_β:
 jmp xchain0_n24_α
 xchain0_n34_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn62: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn62]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n35_α
 xchain0_n34_β:
 jmp xchain0_n24_α
# IR_VAR_REF local
 xchain0_n35_α:
 lea rdi, [r12 + 1408]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain0_n36_α
 xchain0_n35_β:
 jmp xchain0_n24_α
# IR_VAR
 xchain0_n36_α:
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 552], rax
 jmp xchain0_n37_α
 xchain0_n36_β:
 jmp proc_fib_ω
# IR_LIT_INTEGER
 xchain0_n37_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain0_n38_α
 xchain0_n37_β:
 jmp proc_fib_ω
.Lx67_0:
 .quad 2
 xchain0_n38_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+544] -> [r12+512]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [r12+560] -> [r12+528]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn69: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn69]
 lea rsi, [r12 + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n39_α
 xchain0_n38_β:
 jmp xchain0_n24_α
 xchain0_n39_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn71: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn71]
 lea rsi, [r12 + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n40_α
 xchain0_n39_β:
 jmp xchain0_n24_α
# IR_VAR_REF local
 xchain0_n40_α:
 lea rdi, [r12 + 1424]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain0_n41_α
 xchain0_n40_β:
 jmp xchain0_n24_α
# IR_VAR_REF local
 xchain0_n41_α:
 lea rdi, [r12 + 1376]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain0_n42_α
 xchain0_n41_β:
 jmp xchain0_n24_α
 xchain0_n42_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR_REF local
 xchain0_n43_α:
 lea rdi, [r12 + 1408]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain0_n44_α
 xchain0_n43_β:
 jmp xchain0_n24_α
# IR_VAR_REF local
 xchain0_n44_α:
 lea rdi, [r12 + 1392]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain0_n45_α
 xchain0_n44_β:
 jmp xchain0_n24_α
 xchain0_n45_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR_REF local
 xchain0_n46_α:
 lea rdi, [r12 + 1360]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain0_n47_α
 xchain0_n46_β:
 jmp xchain0_n24_α
# IR_VAR
 xchain0_n47_α:
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 248], rax
 jmp xchain0_n48_α
 xchain0_n47_β:
 jmp proc_fib_ω
# IR_VAR
 xchain0_n48_α:
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 264], rax
 jmp xchain0_n49_α
 xchain0_n48_β:
 jmp proc_fib_ω
 xchain0_n49_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+240] -> [r12+208]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 216], rax
# marshal arg1 = producer-box slot [r12+256] -> [r12+224]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn89: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn89]
 lea rsi, [r12 + 208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n50_α
 xchain0_n49_β:
 jmp xchain0_n24_α
 xchain0_n50_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [r12+192] -> [r12+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn91: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn91]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain0_n45_β
 jmp xchain0_n51_α
 xchain0_n50_β:
 jmp xchain0_n45_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n51_α:
 lea rax, [rip + xchain0_n24_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_fib_γ
 xchain0_n51_β:
 jmp proc_fib_ω
proc_fib_β:
jmp xchain0_n15_α
proc_fib_γ:
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
proc_fib_ω:
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
  .Lstartup_pname0: .string "fib"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_fib_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  pop rbp
  ret
  .globl main
main:
  push rbp
  mov rbp, rsp
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  call rt_frame@PLT
  mov rdi, rax
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
 mov qword ptr [r12 + 272], rax
 pop rsi
main_α_body:
 xchain94_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn96: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn96]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain94_n1_α
 xchain94_n0_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain94_n1_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx97_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain94_n2_α
 xchain94_n1_β:
 jmp xchain94_n5_α
.Lx97_0:
 .quad 20
# IR_VAR_REF local
 xchain94_n2_α:
 lea rdi, [r12 + 288]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain94_n3_α
 xchain94_n2_β:
 jmp xchain94_n5_α
 xchain94_n3_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR
 xchain94_n4_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 184], rax
 jmp xchain94_n6_α
 xchain94_n4_β:
 jmp xchain94_n5_α
 xchain94_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+48] -> [r12+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn104: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn104]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain94_n5_β:
 jmp main_ω
 xchain94_n6_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn106: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn106]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain94_n3_β
 jmp xchain94_n7_α
 xchain94_n6_β:
 jmp xchain94_n3_β
# IR_LIT_STRING
 xchain94_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx107_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain94_n8_α
 xchain94_n7_β:
 jmp xchain94_n5_α
.Lx107_0:
 .quad .Lx107_0_s
.Lx107_0_s:
 .string ""
 xchain94_n8_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn109: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn109]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain94_n3_β
 jmp xchain94_n9_α
 xchain94_n8_β:
 jmp xchain94_n3_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain94_n9_α:
 lea rax, [rip + xchain94_n3_β]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain94_n9_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain94_n10_α:
 jmp qword ptr [r12 + 32]
 xchain94_n10_β:
 jmp main_ω
main_β:
jmp xchain94_n10_α
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
 mov rdi, qword ptr [r12 + 272]
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
.section .rodata
.S0: .string "bb_call_proc_staged: generator call on an op kind without a callgen.act ZLS2 handle grant (zeta_storage.c widens only IR_PROC_GEN / IR_CALL_PROC_STAGED)"
.text
