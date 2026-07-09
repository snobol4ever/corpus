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
 mov qword ptr [r12 + 1376], rax
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
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [r12 + 1360], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 1368], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
.Lx5_0:
 .quad 0
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1344] -> [zr+1312]
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1320], rax
# marshal arg1 = producer-box slot [zr+1360] -> [zr+1328]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1336], rax
  .section .rodata
  .Lrkfn7: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn7]
 lea rsi, [r12 + 1312]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1200]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1208], rax
  .section .rodata
  .Lrkfn11: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn11]
 lea rsi, [r12 + 1200]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 cmp eax, 99
 je proc_fib_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_fib_ω
# IR_LIT_INTEGER
 xchain0_n6_α:
 mov qword ptr [r12 + 1280], 6
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 1288], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n5_α
.Lx12_0:
 .quad 1
# IR_VAR_REF local
 xchain0_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n14_α
 xchain0_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1232]
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1240], rax
# marshal arg1 = producer-box slot [zr+1280] -> [zr+1248]
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1256], rax
  .section .rodata
  .Lrkfn16: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn16]
 lea rsi, [r12 + 1232]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n9_α:
 mov qword ptr [r12 + 1168], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 1176], rax
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
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1120]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rax
# marshal arg1 = producer-box slot [zr+1168] -> [zr+1136]
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1144], rax
  .section .rodata
  .Lrkfn20: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 1120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
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
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n14_α
 xchain0_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1008]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn26: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn26]
 lea rsi, [r12 + 1008]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
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
 mov qword ptr [r12 + 1088], 6
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [r12 + 1096], rax
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n14_α
.Lx29_0:
 .quad 1
# IR_VAR_REF local
 xchain0_n17_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n24_α
 xchain0_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn33: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn33]
 lea rsi, [r12 + 1040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n19_α:
 lea rdi, [r12 + 1472]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
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
# marshal arg0 = producer-box slot [zr+960] -> [zr+928]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 936], rax
# marshal arg1 = producer-box slot [zr+976] -> [zr+944]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lrkfn38: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 928]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
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
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp xchain0_n24_α
 xchain0_n24_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+112]
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
 lea rdi, [r12 + 1392]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp xchain0_n24_α
 xchain0_n26_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+848]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+864]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 872], rax
  .section .rodata
  .Lrkfn48: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn48]
 lea rsi, [r12 + 848]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n24_α
# IR_VAR
 xchain0_n27_α:
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 808], rax
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp xchain0_n24_α
# IR_LIT_INTEGER
 xchain0_n28_α:
 mov qword ptr [r12 + 816], 6
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp xchain0_n24_α
.Lx51_0:
 .quad 1
 xchain0_n29_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+768]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 776], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+784]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
  .section .rodata
  .Lrkfn53: .string "$cmp_gt"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn53]
 lea rsi, [r12 + 768]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n30_α
 xchain0_n29_β:
 jmp xchain0_n24_α
# IR_VAR_REF local
 xchain0_n30_α:
 lea rdi, [r12 + 1456]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain0_n31_α
 xchain0_n30_β:
 jmp xchain0_n24_α
# IR_VAR
 xchain0_n31_α:
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 728], rax
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp proc_fib_ω
# IR_LIT_INTEGER
 xchain0_n32_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp proc_fib_ω
.Lx58_0:
 .quad 1
 xchain0_n33_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+720] -> [zr+688]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 696], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+704]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 712], rax
  .section .rodata
  .Lrkfn60: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn60]
 lea rsi, [r12 + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n34_α
 xchain0_n33_β:
 jmp xchain0_n24_α
 xchain0_n34_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+624]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+640]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn62: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn62]
 lea rsi, [r12 + 624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n35_α
 xchain0_n34_β:
 jmp xchain0_n24_α
# IR_VAR_REF local
 xchain0_n35_α:
 lea rdi, [r12 + 1440]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain0_n36_α
 xchain0_n35_β:
 jmp xchain0_n24_α
# IR_VAR
 xchain0_n36_α:
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n37_α
 xchain0_n36_β:
 jmp proc_fib_ω
# IR_LIT_INTEGER
 xchain0_n37_α:
 mov qword ptr [r12 + 592], 6
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain0_n38_α
 xchain0_n37_β:
 jmp proc_fib_ω
.Lx67_0:
 .quad 2
 xchain0_n38_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+544]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn69: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn69]
 lea rsi, [r12 + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n39_α
 xchain0_n38_β:
 jmp xchain0_n24_α
 xchain0_n39_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 488], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+496]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn71: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn71]
 lea rsi, [r12 + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n40_α
 xchain0_n39_β:
 jmp xchain0_n24_α
# IR_VAR_REF local
 xchain0_n40_α:
 lea rdi, [r12 + 1456]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n41_α
 xchain0_n40_β:
 jmp xchain0_n24_α
# IR_VAR_REF local
 xchain0_n41_α:
 lea rdi, [r12 + 1408]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain0_n42_α
 xchain0_n41_β:
 jmp xchain0_n24_α
 xchain0_n42_α:
  .section .rodata
  .Lcall43_pname: .string "fib"
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
   lea rdi, [rip + .Lcall43_pname]
 mov esi, 2
 lea rdx, [r12 + 416]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n43_α
xchain0_n42_β:
 mov rdi, qword ptr [r12 + 416]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n43_α
# IR_VAR_REF local
 xchain0_n43_α:
 lea rdi, [r12 + 1440]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain0_n44_α
 xchain0_n43_β:
 jmp xchain0_n24_α
# IR_VAR_REF local
 xchain0_n44_α:
 lea rdi, [r12 + 1424]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n45_α
 xchain0_n44_β:
 jmp xchain0_n24_α
 xchain0_n45_α:
  .section .rodata
  .Lcall46_pname: .string "fib"
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
   lea rdi, [rip + .Lcall46_pname]
 mov esi, 2
 lea rdx, [r12 + 320]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain0_n42_β
 jmp xchain0_n46_α
xchain0_n45_β:
 mov rdi, qword ptr [r12 + 320]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain0_n42_β
 jmp xchain0_n46_α
# IR_VAR_REF local
 xchain0_n46_α:
 lea rdi, [r12 + 1392]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain0_n47_α
 xchain0_n46_β:
 jmp xchain0_n24_α
# IR_VAR
 xchain0_n47_α:
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 248], rax
 jmp xchain0_n48_α
 xchain0_n47_β:
 jmp proc_fib_ω
# IR_VAR
 xchain0_n48_α:
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 264], rax
 jmp xchain0_n49_α
 xchain0_n48_β:
 jmp proc_fib_ω
 xchain0_n49_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+208]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 216], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+224]
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
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+160]
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
 mov rdi, qword ptr [r12 + 1376]
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
 mov qword ptr [r12 + 288], rax
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
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx97_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain94_n2_α
 xchain94_n1_β:
 jmp xchain94_n5_α
.Lx97_0:
 .quad 20
# IR_VAR_REF local
 xchain94_n2_α:
 lea rdi, [r12 + 304]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain94_n3_α
 xchain94_n2_β:
 jmp xchain94_n5_α
 xchain94_n3_α:
  .section .rodata
  .Lcall56_pname: .string "fib"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall56_pname]
 mov esi, 2
 lea rdx, [r12 + 240]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain94_n5_α
 jmp xchain94_n4_α
xchain94_n3_β:
 mov rdi, qword ptr [r12 + 240]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain94_n5_α
 jmp xchain94_n4_α
# IR_VAR
 xchain94_n4_α:
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 184], rax
 jmp xchain94_n6_α
 xchain94_n4_β:
 jmp xchain94_n5_α
 xchain94_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+80]
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
# marshal arg0 = producer-box slot [zr+176] -> [zr+160]
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
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
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
 mov rdi, qword ptr [r12 + 288]
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
