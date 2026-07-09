  .intel_syntax noprefix
  .text
  .globl proc_dow_α
proc_dow_α:
#=======================================================================================================================
    .global proc_dow_α
    .global proc_dow_β
    .global proc_dow_γ
    .global proc_dow_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_dow_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1440], rax
 pop rsi
proc_dow_α_body:
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
 je proc_dow_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_dow_ω
# IR_VAR_REF local
 xchain0_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [r12 + 1424], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 1432], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
.Lx5_0:
 .quad 0
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1408] -> [r12+1376]
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1384], rax
# marshal arg1 = producer-box slot [r12+1424] -> [r12+1392]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1400], rax
  .section .rodata
  .Lrkfn7: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn7]
 lea rsi, [r12 + 1376]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+1264]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1272], rax
  .section .rodata
  .Lrkfn11: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn11]
 lea rsi, [r12 + 1264]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je proc_dow_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_dow_ω
# IR_LIT_STRING
 xchain0_n6_α:
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n5_α
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string "sun"
# IR_VAR_REF local
 xchain0_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n14_α
 xchain0_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1328] -> [r12+1296]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1304], rax
# marshal arg1 = producer-box slot [r12+1344] -> [r12+1312]
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1320], rax
  .section .rodata
  .Lrkfn16: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn16]
 lea rsi, [r12 + 1296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n9_α:
 mov qword ptr [r12 + 1232], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 1240], rax
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n14_α
.Lx17_0:
 .quad 1
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n10_α:
 lea rax, [rip + xchain0_n5_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_dow_γ
 xchain0_n10_β:
 jmp proc_dow_ω
 xchain0_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn21: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn21]
 lea rsi, [r12 + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n12_α:
 jmp qword ptr [r12 + 64]
 xchain0_n12_β:
 jmp proc_dow_ω
# IR_VAR_REF local
 xchain0_n13_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n14_α
 xchain0_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+1072]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn27: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn27]
 lea rsi, [r12 + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je proc_dow_ω
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp proc_dow_ω
# IR_LIT_STRING
 xchain0_n15_α:
 mov qword ptr [r12 + 1152], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n14_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "mon"
# IR_VAR_REF local
 xchain0_n16_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n22_α
 xchain0_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1136] -> [r12+1104]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1112], rax
# marshal arg1 = producer-box slot [r12+1152] -> [r12+1120]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rax
  .section .rodata
  .Lrkfn32: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn32]
 lea rsi, [r12 + 1104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n14_α
# IR_LIT_INTEGER
 xchain0_n18_α:
 mov qword ptr [r12 + 1040], 6
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n22_α
.Lx33_0:
 .quad 2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n19_α:
 lea rax, [rip + xchain0_n14_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_dow_γ
 xchain0_n19_β:
 jmp proc_dow_ω
 xchain0_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1024] -> [r12+992]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
# marshal arg1 = producer-box slot [r12+1040] -> [r12+1008]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn37: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn37]
 lea rsi, [r12 + 992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain0_n22_α
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n22_α
# IR_VAR_REF local
 xchain0_n21_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n22_α
 xchain0_n22_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+880]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lrkfn41: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn41]
 lea rsi, [r12 + 880]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je proc_dow_ω
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp proc_dow_ω
# IR_LIT_STRING
 xchain0_n23_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp xchain0_n22_α
.Lx42_0:
 .quad .Lx42_0_s
.Lx42_0_s:
 .string "tue"
# IR_VAR_REF local
 xchain0_n24_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n30_α
 xchain0_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn46: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn46]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain0_n22_α
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp xchain0_n22_α
# IR_LIT_INTEGER
 xchain0_n26_α:
 mov qword ptr [r12 + 848], 6
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp xchain0_n30_α
.Lx47_0:
 .quad 3
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n27_α:
 lea rax, [rip + xchain0_n22_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_dow_γ
 xchain0_n27_β:
 jmp proc_dow_ω
 xchain0_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+832] -> [r12+800]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 808], rax
# marshal arg1 = producer-box slot [r12+848] -> [r12+816]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn51: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn51]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp xchain0_n30_α
# IR_VAR_REF local
 xchain0_n29_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp xchain0_n30_α
 xchain0_n30_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+688]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn55: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn55]
 lea rsi, [r12 + 688]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je proc_dow_ω
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp proc_dow_ω
# IR_LIT_STRING
 xchain0_n31_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain0_n33_α
 xchain0_n31_β:
 jmp xchain0_n30_α
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "wed"
# IR_VAR_REF local
 xchain0_n32_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n38_α
 xchain0_n33_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+752] -> [r12+720]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
# marshal arg1 = producer-box slot [r12+768] -> [r12+736]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn60: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn60]
 lea rsi, [r12 + 720]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n35_α
 xchain0_n33_β:
 jmp xchain0_n30_α
# IR_LIT_INTEGER
 xchain0_n34_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain0_n36_α
 xchain0_n34_β:
 jmp xchain0_n38_α
.Lx61_0:
 .quad 4
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n35_α:
 lea rax, [rip + xchain0_n30_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_dow_γ
 xchain0_n35_β:
 jmp proc_dow_ω
 xchain0_n36_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+640] -> [r12+608]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 616], rax
# marshal arg1 = producer-box slot [r12+656] -> [r12+624]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lrkfn65: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn65]
 lea rsi, [r12 + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain0_n38_α
 jmp xchain0_n37_α
 xchain0_n36_β:
 jmp xchain0_n38_α
# IR_VAR_REF local
 xchain0_n37_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n39_α
 xchain0_n37_β:
 jmp xchain0_n38_α
 xchain0_n38_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+496]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn69: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn69]
 lea rsi, [r12 + 496]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je proc_dow_ω
 jmp xchain0_n40_α
 xchain0_n38_β:
 jmp proc_dow_ω
# IR_LIT_STRING
 xchain0_n39_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n41_α
 xchain0_n39_β:
 jmp xchain0_n38_α
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "thu"
# IR_VAR_REF local
 xchain0_n40_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain0_n42_α
 xchain0_n40_β:
 jmp xchain0_n46_α
 xchain0_n41_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+560] -> [r12+528]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
# marshal arg1 = producer-box slot [r12+576] -> [r12+544]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn74: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn74]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain0_n38_α
 jmp xchain0_n43_α
 xchain0_n41_β:
 jmp xchain0_n38_α
# IR_LIT_INTEGER
 xchain0_n42_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n44_α
 xchain0_n42_β:
 jmp xchain0_n46_α
.Lx75_0:
 .quad 5
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n43_α:
 lea rax, [rip + xchain0_n38_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_dow_γ
 xchain0_n43_β:
 jmp proc_dow_ω
 xchain0_n44_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+448] -> [r12+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [r12+464] -> [r12+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn79: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn79]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain0_n46_α
 jmp xchain0_n45_α
 xchain0_n44_β:
 jmp xchain0_n46_α
# IR_VAR_REF local
 xchain0_n45_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n47_α
 xchain0_n45_β:
 jmp xchain0_n46_α
 xchain0_n46_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+304]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn83: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn83]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je proc_dow_ω
 jmp xchain0_n48_α
 xchain0_n46_β:
 jmp proc_dow_ω
# IR_LIT_STRING
 xchain0_n47_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain0_n49_α
 xchain0_n47_β:
 jmp xchain0_n46_α
.Lx84_0:
 .quad .Lx84_0_s
.Lx84_0_s:
 .string "fri"
# IR_VAR_REF local
 xchain0_n48_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n50_α
 xchain0_n48_β:
 jmp xchain0_n54_α
 xchain0_n49_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+368] -> [r12+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = producer-box slot [r12+384] -> [r12+352]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn88: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn88]
 lea rsi, [r12 + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain0_n46_α
 jmp xchain0_n51_α
 xchain0_n49_β:
 jmp xchain0_n46_α
# IR_LIT_INTEGER
 xchain0_n50_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n52_α
 xchain0_n50_β:
 jmp xchain0_n54_α
.Lx89_0:
 .quad 6
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n51_α:
 lea rax, [rip + xchain0_n46_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_dow_γ
 xchain0_n51_β:
 jmp proc_dow_ω
 xchain0_n52_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+256] -> [r12+224]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [r12+272] -> [r12+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn93: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn93]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain0_n54_α
 jmp xchain0_n53_α
 xchain0_n52_β:
 jmp xchain0_n54_α
# IR_VAR_REF local
 xchain0_n53_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain0_n55_α
 xchain0_n53_β:
 jmp xchain0_n54_α
 xchain0_n54_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn97: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn97]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_dow_ω
 jmp proc_dow_ω
 xchain0_n54_β:
 jmp proc_dow_ω
# IR_LIT_STRING
 xchain0_n55_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain0_n56_α
 xchain0_n55_β:
 jmp xchain0_n54_α
.Lx98_0:
 .quad .Lx98_0_s
.Lx98_0_s:
 .string "sat"
 xchain0_n56_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn100: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn100]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain0_n54_α
 jmp xchain0_n57_α
 xchain0_n56_β:
 jmp xchain0_n54_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n57_α:
 lea rax, [rip + xchain0_n54_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_dow_γ
 xchain0_n57_β:
 jmp proc_dow_ω
proc_dow_β:
jmp xchain0_n12_α
proc_dow_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1440]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_dow_ω:
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
  .globl proc_day_of_week_α
proc_day_of_week_α:
#=======================================================================================================================
    .global proc_day_of_week_α
    .global proc_day_of_week_β
    .global proc_day_of_week_γ
    .global proc_day_of_week_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_day_of_week_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 768], rax
 pop rsi
proc_day_of_week_α_body:
 xchain103_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn105: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn105]
 lea rsi, [r12 + 128]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_day_of_week_ω
 jmp xchain103_n1_α
 xchain103_n0_β:
 jmp proc_day_of_week_ω
# IR_VAR_REF local
 xchain103_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain103_n2_α
 xchain103_n1_β:
 jmp xchain103_n5_α
# IR_VAR_REF local
 xchain103_n2_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain103_n3_α
 xchain103_n2_β:
 jmp xchain103_n5_α
 xchain103_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+736] -> [r12+704]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [r12+752] -> [r12+720]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn111: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn111]
 lea rsi, [r12 + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain103_n5_α
 jmp xchain103_n4_α
 xchain103_n3_β:
 jmp xchain103_n5_α
# IR_VAR_REF local
 xchain103_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain103_n6_α
 xchain103_n4_β:
 jmp xchain103_n5_α
 xchain103_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+112] -> [r12+144]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn115: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn115]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je proc_day_of_week_ω
 jmp proc_day_of_week_ω
 xchain103_n5_β:
 jmp proc_day_of_week_ω
# IR_VAR_REF local
 xchain103_n6_α:
 lea rdi, [r12 + 864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain103_n7_α
 xchain103_n6_β:
 jmp xchain103_n5_α
 xchain103_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+656] -> [r12+624]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [r12+672] -> [r12+640]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn119: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn119]
 lea rsi, [r12 + 624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain103_n5_α
 jmp xchain103_n8_α
 xchain103_n7_β:
 jmp xchain103_n5_α
# IR_VAR_REF local
 xchain103_n8_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain103_n9_α
 xchain103_n8_β:
 jmp xchain103_n5_α
# IR_VAR_REF local
 xchain103_n9_α:
 lea rdi, [r12 + 800]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain103_n10_α
 xchain103_n9_β:
 jmp xchain103_n5_α
 xchain103_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+576] -> [r12+544]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
# marshal arg1 = producer-box slot [r12+592] -> [r12+560]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn125: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn125]
 lea rsi, [r12 + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain103_n5_α
 jmp xchain103_n11_α
 xchain103_n10_β:
 jmp xchain103_n5_α
# IR_VAR_REF local
 xchain103_n11_α:
 lea rdi, [r12 + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain103_n12_α
 xchain103_n11_β:
 jmp xchain103_n5_α
# IR_VAR_REF local
 xchain103_n12_α:
 lea rdi, [r12 + 848]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain103_n13_α
 xchain103_n12_β:
 jmp xchain103_n5_α
 xchain103_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+496] -> [r12+464]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 472], rax
# marshal arg1 = producer-box slot [r12+512] -> [r12+480]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn131: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn131]
 lea rsi, [r12 + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain103_n5_α
 jmp xchain103_n14_α
 xchain103_n13_β:
 jmp xchain103_n5_α
# IR_VAR_REF local
 xchain103_n14_α:
 lea rdi, [r12 + 864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain103_n15_α
 xchain103_n14_β:
 jmp xchain103_n5_α
# IR_VAR_REF local
 xchain103_n15_α:
 lea rdi, [r12 + 816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain103_n16_α
 xchain103_n15_β:
 jmp xchain103_n5_α
# IR_VAR_REF local
 xchain103_n16_α:
 lea rdi, [r12 + 832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain103_n17_α
 xchain103_n16_β:
 jmp xchain103_n5_α
 xchain103_n17_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR_REF local
 xchain103_n18_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain103_n19_α
 xchain103_n18_β:
 jmp xchain103_n5_α
# IR_VAR_REF local
 xchain103_n19_α:
 lea rdi, [r12 + 800]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain103_n20_α
 xchain103_n19_β:
 jmp xchain103_n5_α
# IR_VAR_REF local
 xchain103_n20_α:
 lea rdi, [r12 + 816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain103_n21_α
 xchain103_n20_β:
 jmp xchain103_n5_α
# IR_VAR_REF local
 xchain103_n21_α:
 lea rdi, [r12 + 832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain103_n22_α
 xchain103_n21_β:
 jmp xchain103_n5_α
# IR_VAR_REF local
 xchain103_n22_α:
 lea rdi, [r12 + 848]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain103_n23_α
 xchain103_n22_β:
 jmp xchain103_n5_α
 xchain103_n23_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain103_n24_α:
 lea rax, [rip + xchain103_n17_β]
 mov qword ptr [r12 + 96], rax
 jmp proc_day_of_week_γ
 xchain103_n24_β:
 jmp proc_day_of_week_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain103_n25_α:
 jmp qword ptr [r12 + 96]
 xchain103_n25_β:
 jmp proc_day_of_week_ω
proc_day_of_week_β:
jmp xchain103_n25_α
proc_day_of_week_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 768]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_day_of_week_ω:
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
  .globl proc_cal_key_α
proc_cal_key_α:
#=======================================================================================================================
    .global proc_cal_key_α
    .global proc_cal_key_β
    .global proc_cal_key_γ
    .global proc_cal_key_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_cal_key_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 9904], rax
 pop rsi
proc_cal_key_α_body:
 xchain154_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn156: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn156]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n1_α
 xchain154_n0_β:
 jmp proc_cal_key_ω
# IR_VAR_REF local
 xchain154_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 9872], rax
 mov qword ptr [r12 + 9880], rdx
 jmp xchain154_n2_α
 xchain154_n1_β:
 jmp xchain154_n5_α
# IR_LIT_INTEGER
 xchain154_n2_α:
 mov qword ptr [r12 + 9888], 6
 mov rax, qword ptr [rip + .Lx159_0]
 mov qword ptr [r12 + 9896], rax
 jmp xchain154_n3_α
 xchain154_n2_β:
 jmp xchain154_n5_α
.Lx159_0:
 .quad 1
 xchain154_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+9872] -> [r12+9840]
 mov rax, qword ptr [r12 + 9872]
 mov qword ptr [r12 + 9840], rax
 mov rax, qword ptr [r12 + 9880]
 mov qword ptr [r12 + 9848], rax
# marshal arg1 = producer-box slot [r12+9888] -> [r12+9856]
 mov rax, qword ptr [r12 + 9888]
 mov qword ptr [r12 + 9856], rax
 mov rax, qword ptr [r12 + 9896]
 mov qword ptr [r12 + 9864], rax
  .section .rodata
  .Lrkfn161: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn161]
 lea rsi, [r12 + 9840]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 9824], rax
 mov qword ptr [r12 + 9832], rdx
 cmp eax, 99
 je xchain154_n5_α
 jmp xchain154_n4_α
 xchain154_n3_β:
 jmp xchain154_n5_α
# IR_VAR_REF local
 xchain154_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 9792], rax
 mov qword ptr [r12 + 9800], rdx
 jmp xchain154_n6_α
 xchain154_n4_β:
 jmp xchain154_n5_α
 xchain154_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+9648]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 9648], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 9656], rax
  .section .rodata
  .Lrkfn165: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn165]
 lea rsi, [r12 + 9648]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 9632], rax
 mov qword ptr [r12 + 9640], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n7_α
 xchain154_n5_β:
 jmp proc_cal_key_ω
# IR_LIT_INTEGER
 xchain154_n6_α:
 mov qword ptr [r12 + 9808], 6
 mov rax, qword ptr [rip + .Lx166_0]
 mov qword ptr [r12 + 9816], rax
 jmp xchain154_n8_α
 xchain154_n6_β:
 jmp xchain154_n5_α
.Lx166_0:
 .quad 6
# IR_VAR_REF local
 xchain154_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 9600], rax
 mov qword ptr [r12 + 9608], rdx
 jmp xchain154_n9_α
 xchain154_n7_β:
 jmp xchain154_n14_α
 xchain154_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+9792] -> [r12+9760]
 mov rax, qword ptr [r12 + 9792]
 mov qword ptr [r12 + 9760], rax
 mov rax, qword ptr [r12 + 9800]
 mov qword ptr [r12 + 9768], rax
# marshal arg1 = producer-box slot [r12+9808] -> [r12+9776]
 mov rax, qword ptr [r12 + 9808]
 mov qword ptr [r12 + 9776], rax
 mov rax, qword ptr [r12 + 9816]
 mov qword ptr [r12 + 9784], rax
  .section .rodata
  .Lrkfn170: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn170]
 lea rsi, [r12 + 9760]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 9744], rax
 mov qword ptr [r12 + 9752], rdx
 cmp eax, 99
 je xchain154_n5_α
 jmp xchain154_n10_α
 xchain154_n8_β:
 jmp xchain154_n5_α
# IR_LIT_INTEGER
 xchain154_n9_α:
 mov qword ptr [r12 + 9616], 6
 mov rax, qword ptr [rip + .Lx171_0]
 mov qword ptr [r12 + 9624], rax
 jmp xchain154_n11_α
 xchain154_n9_β:
 jmp xchain154_n14_α
.Lx171_0:
 .quad 2
# IR_VAR_REF local
 xchain154_n10_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 9712], rax
 mov qword ptr [r12 + 9720], rdx
 jmp xchain154_n12_α
 xchain154_n10_β:
 jmp xchain154_n5_α
 xchain154_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+9600] -> [r12+9568]
 mov rax, qword ptr [r12 + 9600]
 mov qword ptr [r12 + 9568], rax
 mov rax, qword ptr [r12 + 9608]
 mov qword ptr [r12 + 9576], rax
# marshal arg1 = producer-box slot [r12+9616] -> [r12+9584]
 mov rax, qword ptr [r12 + 9616]
 mov qword ptr [r12 + 9584], rax
 mov rax, qword ptr [r12 + 9624]
 mov qword ptr [r12 + 9592], rax
  .section .rodata
  .Lrkfn175: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn175]
 lea rsi, [r12 + 9568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 9552], rax
 mov qword ptr [r12 + 9560], rdx
 cmp eax, 99
 je xchain154_n14_α
 jmp xchain154_n13_α
 xchain154_n11_β:
 jmp xchain154_n14_α
# IR_LIT_INTEGER
 xchain154_n12_α:
 mov qword ptr [r12 + 9728], 6
 mov rax, qword ptr [rip + .Lx176_0]
 mov qword ptr [r12 + 9736], rax
 jmp xchain154_n15_α
 xchain154_n12_β:
 jmp xchain154_n5_α
.Lx176_0:
 .quad 1
# IR_VAR_REF local
 xchain154_n13_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 9520], rax
 mov qword ptr [r12 + 9528], rdx
 jmp xchain154_n16_α
 xchain154_n13_β:
 jmp xchain154_n14_α
 xchain154_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+9376]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 9376], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 9384], rax
  .section .rodata
  .Lrkfn180: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn180]
 lea rsi, [r12 + 9376]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 9360], rax
 mov qword ptr [r12 + 9368], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n17_α
 xchain154_n14_β:
 jmp proc_cal_key_ω
 xchain154_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+9712] -> [r12+9680]
 mov rax, qword ptr [r12 + 9712]
 mov qword ptr [r12 + 9680], rax
 mov rax, qword ptr [r12 + 9720]
 mov qword ptr [r12 + 9688], rax
# marshal arg1 = producer-box slot [r12+9728] -> [r12+9696]
 mov rax, qword ptr [r12 + 9728]
 mov qword ptr [r12 + 9696], rax
 mov rax, qword ptr [r12 + 9736]
 mov qword ptr [r12 + 9704], rax
  .section .rodata
  .Lrkfn182: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn182]
 lea rsi, [r12 + 9680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 9664], rax
 mov qword ptr [r12 + 9672], rdx
 cmp eax, 99
 je xchain154_n5_α
 jmp xchain154_n18_α
 xchain154_n15_β:
 jmp xchain154_n5_α
# IR_LIT_INTEGER
 xchain154_n16_α:
 mov qword ptr [r12 + 9536], 6
 mov rax, qword ptr [rip + .Lx183_0]
 mov qword ptr [r12 + 9544], rax
 jmp xchain154_n19_α
 xchain154_n16_β:
 jmp xchain154_n14_α
.Lx183_0:
 .quad 2
# IR_VAR_REF local
 xchain154_n17_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 9328], rax
 mov qword ptr [r12 + 9336], rdx
 jmp xchain154_n20_α
 xchain154_n17_β:
 jmp xchain154_n26_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n18_α:
 lea rax, [rip + xchain154_n5_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n18_β:
 jmp proc_cal_key_ω
 xchain154_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+9520] -> [r12+9488]
 mov rax, qword ptr [r12 + 9520]
 mov qword ptr [r12 + 9488], rax
 mov rax, qword ptr [r12 + 9528]
 mov qword ptr [r12 + 9496], rax
# marshal arg1 = producer-box slot [r12+9536] -> [r12+9504]
 mov rax, qword ptr [r12 + 9536]
 mov qword ptr [r12 + 9504], rax
 mov rax, qword ptr [r12 + 9544]
 mov qword ptr [r12 + 9512], rax
  .section .rodata
  .Lrkfn189: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn189]
 lea rsi, [r12 + 9488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 9472], rax
 mov qword ptr [r12 + 9480], rdx
 cmp eax, 99
 je xchain154_n14_α
 jmp xchain154_n22_α
 xchain154_n19_β:
 jmp xchain154_n14_α
# IR_LIT_INTEGER
 xchain154_n20_α:
 mov qword ptr [r12 + 9344], 6
 mov rax, qword ptr [rip + .Lx190_0]
 mov qword ptr [r12 + 9352], rax
 jmp xchain154_n23_α
 xchain154_n20_β:
 jmp xchain154_n26_α
.Lx190_0:
 .quad 3
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain154_n21_α:
 jmp qword ptr [r12 + 80]
 xchain154_n21_β:
 jmp proc_cal_key_ω
# IR_VAR_REF local
 xchain154_n22_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 9440], rax
 mov qword ptr [r12 + 9448], rdx
 jmp xchain154_n24_α
 xchain154_n22_β:
 jmp xchain154_n14_α
 xchain154_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+9328] -> [r12+9296]
 mov rax, qword ptr [r12 + 9328]
 mov qword ptr [r12 + 9296], rax
 mov rax, qword ptr [r12 + 9336]
 mov qword ptr [r12 + 9304], rax
# marshal arg1 = producer-box slot [r12+9344] -> [r12+9312]
 mov rax, qword ptr [r12 + 9344]
 mov qword ptr [r12 + 9312], rax
 mov rax, qword ptr [r12 + 9352]
 mov qword ptr [r12 + 9320], rax
  .section .rodata
  .Lrkfn196: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn196]
 lea rsi, [r12 + 9296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 9280], rax
 mov qword ptr [r12 + 9288], rdx
 cmp eax, 99
 je xchain154_n26_α
 jmp xchain154_n25_α
 xchain154_n23_β:
 jmp xchain154_n26_α
# IR_LIT_INTEGER
 xchain154_n24_α:
 mov qword ptr [r12 + 9456], 6
 mov rax, qword ptr [rip + .Lx197_0]
 mov qword ptr [r12 + 9464], rax
 jmp xchain154_n27_α
 xchain154_n24_β:
 jmp xchain154_n14_α
.Lx197_0:
 .quad 1
# IR_VAR_REF local
 xchain154_n25_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 9248], rax
 mov qword ptr [r12 + 9256], rdx
 jmp xchain154_n28_α
 xchain154_n25_β:
 jmp xchain154_n26_α
 xchain154_n26_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+9104]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 9104], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 9112], rax
  .section .rodata
  .Lrkfn201: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn201]
 lea rsi, [r12 + 9104]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 9088], rax
 mov qword ptr [r12 + 9096], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n29_α
 xchain154_n26_β:
 jmp proc_cal_key_ω
 xchain154_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+9440] -> [r12+9408]
 mov rax, qword ptr [r12 + 9440]
 mov qword ptr [r12 + 9408], rax
 mov rax, qword ptr [r12 + 9448]
 mov qword ptr [r12 + 9416], rax
# marshal arg1 = producer-box slot [r12+9456] -> [r12+9424]
 mov rax, qword ptr [r12 + 9456]
 mov qword ptr [r12 + 9424], rax
 mov rax, qword ptr [r12 + 9464]
 mov qword ptr [r12 + 9432], rax
  .section .rodata
  .Lrkfn203: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn203]
 lea rsi, [r12 + 9408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 9392], rax
 mov qword ptr [r12 + 9400], rdx
 cmp eax, 99
 je xchain154_n14_α
 jmp xchain154_n30_α
 xchain154_n27_β:
 jmp xchain154_n14_α
# IR_LIT_INTEGER
 xchain154_n28_α:
 mov qword ptr [r12 + 9264], 6
 mov rax, qword ptr [rip + .Lx204_0]
 mov qword ptr [r12 + 9272], rax
 jmp xchain154_n31_α
 xchain154_n28_β:
 jmp xchain154_n26_α
.Lx204_0:
 .quad 2
# IR_VAR_REF local
 xchain154_n29_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 9056], rax
 mov qword ptr [r12 + 9064], rdx
 jmp xchain154_n32_α
 xchain154_n29_β:
 jmp xchain154_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n30_α:
 lea rax, [rip + xchain154_n14_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n30_β:
 jmp proc_cal_key_ω
 xchain154_n31_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+9248] -> [r12+9216]
 mov rax, qword ptr [r12 + 9248]
 mov qword ptr [r12 + 9216], rax
 mov rax, qword ptr [r12 + 9256]
 mov qword ptr [r12 + 9224], rax
# marshal arg1 = producer-box slot [r12+9264] -> [r12+9232]
 mov rax, qword ptr [r12 + 9264]
 mov qword ptr [r12 + 9232], rax
 mov rax, qword ptr [r12 + 9272]
 mov qword ptr [r12 + 9240], rax
  .section .rodata
  .Lrkfn210: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn210]
 lea rsi, [r12 + 9216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 9200], rax
 mov qword ptr [r12 + 9208], rdx
 cmp eax, 99
 je xchain154_n26_α
 jmp xchain154_n33_α
 xchain154_n31_β:
 jmp xchain154_n26_α
# IR_LIT_INTEGER
 xchain154_n32_α:
 mov qword ptr [r12 + 9072], 6
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [r12 + 9080], rax
 jmp xchain154_n34_α
 xchain154_n32_β:
 jmp xchain154_n37_α
.Lx211_0:
 .quad 4
# IR_VAR_REF local
 xchain154_n33_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 9168], rax
 mov qword ptr [r12 + 9176], rdx
 jmp xchain154_n35_α
 xchain154_n33_β:
 jmp xchain154_n26_α
 xchain154_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+9056] -> [r12+9024]
 mov rax, qword ptr [r12 + 9056]
 mov qword ptr [r12 + 9024], rax
 mov rax, qword ptr [r12 + 9064]
 mov qword ptr [r12 + 9032], rax
# marshal arg1 = producer-box slot [r12+9072] -> [r12+9040]
 mov rax, qword ptr [r12 + 9072]
 mov qword ptr [r12 + 9040], rax
 mov rax, qword ptr [r12 + 9080]
 mov qword ptr [r12 + 9048], rax
  .section .rodata
  .Lrkfn215: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn215]
 lea rsi, [r12 + 9024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 9008], rax
 mov qword ptr [r12 + 9016], rdx
 cmp eax, 99
 je xchain154_n37_α
 jmp xchain154_n36_α
 xchain154_n34_β:
 jmp xchain154_n37_α
# IR_LIT_INTEGER
 xchain154_n35_α:
 mov qword ptr [r12 + 9184], 6
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [r12 + 9192], rax
 jmp xchain154_n38_α
 xchain154_n35_β:
 jmp xchain154_n26_α
.Lx216_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n36_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 8976], rax
 mov qword ptr [r12 + 8984], rdx
 jmp xchain154_n39_α
 xchain154_n36_β:
 jmp xchain154_n37_α
 xchain154_n37_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+8832]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 8832], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 8840], rax
  .section .rodata
  .Lrkfn220: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn220]
 lea rsi, [r12 + 8832]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8816], rax
 mov qword ptr [r12 + 8824], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n40_α
 xchain154_n37_β:
 jmp proc_cal_key_ω
 xchain154_n38_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+9168] -> [r12+9136]
 mov rax, qword ptr [r12 + 9168]
 mov qword ptr [r12 + 9136], rax
 mov rax, qword ptr [r12 + 9176]
 mov qword ptr [r12 + 9144], rax
# marshal arg1 = producer-box slot [r12+9184] -> [r12+9152]
 mov rax, qword ptr [r12 + 9184]
 mov qword ptr [r12 + 9152], rax
 mov rax, qword ptr [r12 + 9192]
 mov qword ptr [r12 + 9160], rax
  .section .rodata
  .Lrkfn222: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn222]
 lea rsi, [r12 + 9136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 9120], rax
 mov qword ptr [r12 + 9128], rdx
 cmp eax, 99
 je xchain154_n26_α
 jmp xchain154_n41_α
 xchain154_n38_β:
 jmp xchain154_n26_α
# IR_LIT_INTEGER
 xchain154_n39_α:
 mov qword ptr [r12 + 8992], 6
 mov rax, qword ptr [rip + .Lx223_0]
 mov qword ptr [r12 + 9000], rax
 jmp xchain154_n42_α
 xchain154_n39_β:
 jmp xchain154_n37_α
.Lx223_0:
 .quad 5
# IR_VAR_REF local
 xchain154_n40_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 8784], rax
 mov qword ptr [r12 + 8792], rdx
 jmp xchain154_n43_α
 xchain154_n40_β:
 jmp xchain154_n48_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n41_α:
 lea rax, [rip + xchain154_n26_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n41_β:
 jmp proc_cal_key_ω
 xchain154_n42_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+8976] -> [r12+8944]
 mov rax, qword ptr [r12 + 8976]
 mov qword ptr [r12 + 8944], rax
 mov rax, qword ptr [r12 + 8984]
 mov qword ptr [r12 + 8952], rax
# marshal arg1 = producer-box slot [r12+8992] -> [r12+8960]
 mov rax, qword ptr [r12 + 8992]
 mov qword ptr [r12 + 8960], rax
 mov rax, qword ptr [r12 + 9000]
 mov qword ptr [r12 + 8968], rax
  .section .rodata
  .Lrkfn229: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn229]
 lea rsi, [r12 + 8944]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8928], rax
 mov qword ptr [r12 + 8936], rdx
 cmp eax, 99
 je xchain154_n37_α
 jmp xchain154_n44_α
 xchain154_n42_β:
 jmp xchain154_n37_α
# IR_LIT_INTEGER
 xchain154_n43_α:
 mov qword ptr [r12 + 8800], 6
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [r12 + 8808], rax
 jmp xchain154_n45_α
 xchain154_n43_β:
 jmp xchain154_n48_α
.Lx230_0:
 .quad 5
# IR_VAR_REF local
 xchain154_n44_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 8896], rax
 mov qword ptr [r12 + 8904], rdx
 jmp xchain154_n46_α
 xchain154_n44_β:
 jmp xchain154_n37_α
 xchain154_n45_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+8784] -> [r12+8752]
 mov rax, qword ptr [r12 + 8784]
 mov qword ptr [r12 + 8752], rax
 mov rax, qword ptr [r12 + 8792]
 mov qword ptr [r12 + 8760], rax
# marshal arg1 = producer-box slot [r12+8800] -> [r12+8768]
 mov rax, qword ptr [r12 + 8800]
 mov qword ptr [r12 + 8768], rax
 mov rax, qword ptr [r12 + 8808]
 mov qword ptr [r12 + 8776], rax
  .section .rodata
  .Lrkfn234: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn234]
 lea rsi, [r12 + 8752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8736], rax
 mov qword ptr [r12 + 8744], rdx
 cmp eax, 99
 je xchain154_n48_α
 jmp xchain154_n47_α
 xchain154_n45_β:
 jmp xchain154_n48_α
# IR_LIT_INTEGER
 xchain154_n46_α:
 mov qword ptr [r12 + 8912], 6
 mov rax, qword ptr [rip + .Lx235_0]
 mov qword ptr [r12 + 8920], rax
 jmp xchain154_n49_α
 xchain154_n46_β:
 jmp xchain154_n37_α
.Lx235_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n47_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 8704], rax
 mov qword ptr [r12 + 8712], rdx
 jmp xchain154_n50_α
 xchain154_n47_β:
 jmp xchain154_n48_α
 xchain154_n48_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+8560]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 8560], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 8568], rax
  .section .rodata
  .Lrkfn239: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn239]
 lea rsi, [r12 + 8560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8544], rax
 mov qword ptr [r12 + 8552], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n51_α
 xchain154_n48_β:
 jmp proc_cal_key_ω
 xchain154_n49_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+8896] -> [r12+8864]
 mov rax, qword ptr [r12 + 8896]
 mov qword ptr [r12 + 8864], rax
 mov rax, qword ptr [r12 + 8904]
 mov qword ptr [r12 + 8872], rax
# marshal arg1 = producer-box slot [r12+8912] -> [r12+8880]
 mov rax, qword ptr [r12 + 8912]
 mov qword ptr [r12 + 8880], rax
 mov rax, qword ptr [r12 + 8920]
 mov qword ptr [r12 + 8888], rax
  .section .rodata
  .Lrkfn241: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn241]
 lea rsi, [r12 + 8864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8848], rax
 mov qword ptr [r12 + 8856], rdx
 cmp eax, 99
 je xchain154_n37_α
 jmp xchain154_n52_α
 xchain154_n49_β:
 jmp xchain154_n37_α
# IR_LIT_INTEGER
 xchain154_n50_α:
 mov qword ptr [r12 + 8720], 6
 mov rax, qword ptr [rip + .Lx242_0]
 mov qword ptr [r12 + 8728], rax
 jmp xchain154_n53_α
 xchain154_n50_β:
 jmp xchain154_n48_α
.Lx242_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n51_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 8512], rax
 mov qword ptr [r12 + 8520], rdx
 jmp xchain154_n54_α
 xchain154_n51_β:
 jmp xchain154_n59_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n52_α:
 lea rax, [rip + xchain154_n37_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n52_β:
 jmp proc_cal_key_ω
 xchain154_n53_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+8704] -> [r12+8672]
 mov rax, qword ptr [r12 + 8704]
 mov qword ptr [r12 + 8672], rax
 mov rax, qword ptr [r12 + 8712]
 mov qword ptr [r12 + 8680], rax
# marshal arg1 = producer-box slot [r12+8720] -> [r12+8688]
 mov rax, qword ptr [r12 + 8720]
 mov qword ptr [r12 + 8688], rax
 mov rax, qword ptr [r12 + 8728]
 mov qword ptr [r12 + 8696], rax
  .section .rodata
  .Lrkfn248: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn248]
 lea rsi, [r12 + 8672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8656], rax
 mov qword ptr [r12 + 8664], rdx
 cmp eax, 99
 je xchain154_n48_α
 jmp xchain154_n55_α
 xchain154_n53_β:
 jmp xchain154_n48_α
# IR_LIT_INTEGER
 xchain154_n54_α:
 mov qword ptr [r12 + 8528], 6
 mov rax, qword ptr [rip + .Lx249_0]
 mov qword ptr [r12 + 8536], rax
 jmp xchain154_n56_α
 xchain154_n54_β:
 jmp xchain154_n59_α
.Lx249_0:
 .quad 6
# IR_VAR_REF local
 xchain154_n55_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 8624], rax
 mov qword ptr [r12 + 8632], rdx
 jmp xchain154_n57_α
 xchain154_n55_β:
 jmp xchain154_n48_α
 xchain154_n56_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+8512] -> [r12+8480]
 mov rax, qword ptr [r12 + 8512]
 mov qword ptr [r12 + 8480], rax
 mov rax, qword ptr [r12 + 8520]
 mov qword ptr [r12 + 8488], rax
# marshal arg1 = producer-box slot [r12+8528] -> [r12+8496]
 mov rax, qword ptr [r12 + 8528]
 mov qword ptr [r12 + 8496], rax
 mov rax, qword ptr [r12 + 8536]
 mov qword ptr [r12 + 8504], rax
  .section .rodata
  .Lrkfn253: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn253]
 lea rsi, [r12 + 8480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8464], rax
 mov qword ptr [r12 + 8472], rdx
 cmp eax, 99
 je xchain154_n59_α
 jmp xchain154_n58_α
 xchain154_n56_β:
 jmp xchain154_n59_α
# IR_LIT_INTEGER
 xchain154_n57_α:
 mov qword ptr [r12 + 8640], 6
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [r12 + 8648], rax
 jmp xchain154_n60_α
 xchain154_n57_β:
 jmp xchain154_n48_α
.Lx254_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n58_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 8432], rax
 mov qword ptr [r12 + 8440], rdx
 jmp xchain154_n61_α
 xchain154_n58_β:
 jmp xchain154_n59_α
 xchain154_n59_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+8288]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 8288], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 8296], rax
  .section .rodata
  .Lrkfn258: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn258]
 lea rsi, [r12 + 8288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8272], rax
 mov qword ptr [r12 + 8280], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n62_α
 xchain154_n59_β:
 jmp proc_cal_key_ω
 xchain154_n60_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+8624] -> [r12+8592]
 mov rax, qword ptr [r12 + 8624]
 mov qword ptr [r12 + 8592], rax
 mov rax, qword ptr [r12 + 8632]
 mov qword ptr [r12 + 8600], rax
# marshal arg1 = producer-box slot [r12+8640] -> [r12+8608]
 mov rax, qword ptr [r12 + 8640]
 mov qword ptr [r12 + 8608], rax
 mov rax, qword ptr [r12 + 8648]
 mov qword ptr [r12 + 8616], rax
  .section .rodata
  .Lrkfn260: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn260]
 lea rsi, [r12 + 8592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8576], rax
 mov qword ptr [r12 + 8584], rdx
 cmp eax, 99
 je xchain154_n48_α
 jmp xchain154_n63_α
 xchain154_n60_β:
 jmp xchain154_n48_α
# IR_LIT_INTEGER
 xchain154_n61_α:
 mov qword ptr [r12 + 8448], 6
 mov rax, qword ptr [rip + .Lx261_0]
 mov qword ptr [r12 + 8456], rax
 jmp xchain154_n64_α
 xchain154_n61_β:
 jmp xchain154_n59_α
.Lx261_0:
 .quad 3
# IR_VAR_REF local
 xchain154_n62_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 8240], rax
 mov qword ptr [r12 + 8248], rdx
 jmp xchain154_n65_α
 xchain154_n62_β:
 jmp xchain154_n70_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n63_α:
 lea rax, [rip + xchain154_n48_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n63_β:
 jmp proc_cal_key_ω
 xchain154_n64_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+8432] -> [r12+8400]
 mov rax, qword ptr [r12 + 8432]
 mov qword ptr [r12 + 8400], rax
 mov rax, qword ptr [r12 + 8440]
 mov qword ptr [r12 + 8408], rax
# marshal arg1 = producer-box slot [r12+8448] -> [r12+8416]
 mov rax, qword ptr [r12 + 8448]
 mov qword ptr [r12 + 8416], rax
 mov rax, qword ptr [r12 + 8456]
 mov qword ptr [r12 + 8424], rax
  .section .rodata
  .Lrkfn267: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn267]
 lea rsi, [r12 + 8400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8384], rax
 mov qword ptr [r12 + 8392], rdx
 cmp eax, 99
 je xchain154_n59_α
 jmp xchain154_n66_α
 xchain154_n64_β:
 jmp xchain154_n59_α
# IR_LIT_INTEGER
 xchain154_n65_α:
 mov qword ptr [r12 + 8256], 6
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [r12 + 8264], rax
 jmp xchain154_n67_α
 xchain154_n65_β:
 jmp xchain154_n70_α
.Lx268_0:
 .quad 7
# IR_VAR_REF local
 xchain154_n66_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 8352], rax
 mov qword ptr [r12 + 8360], rdx
 jmp xchain154_n68_α
 xchain154_n66_β:
 jmp xchain154_n59_α
 xchain154_n67_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+8240] -> [r12+8208]
 mov rax, qword ptr [r12 + 8240]
 mov qword ptr [r12 + 8208], rax
 mov rax, qword ptr [r12 + 8248]
 mov qword ptr [r12 + 8216], rax
# marshal arg1 = producer-box slot [r12+8256] -> [r12+8224]
 mov rax, qword ptr [r12 + 8256]
 mov qword ptr [r12 + 8224], rax
 mov rax, qword ptr [r12 + 8264]
 mov qword ptr [r12 + 8232], rax
  .section .rodata
  .Lrkfn272: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn272]
 lea rsi, [r12 + 8208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8192], rax
 mov qword ptr [r12 + 8200], rdx
 cmp eax, 99
 je xchain154_n70_α
 jmp xchain154_n69_α
 xchain154_n67_β:
 jmp xchain154_n70_α
# IR_LIT_INTEGER
 xchain154_n68_α:
 mov qword ptr [r12 + 8368], 6
 mov rax, qword ptr [rip + .Lx273_0]
 mov qword ptr [r12 + 8376], rax
 jmp xchain154_n71_α
 xchain154_n68_β:
 jmp xchain154_n59_α
.Lx273_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n69_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 8160], rax
 mov qword ptr [r12 + 8168], rdx
 jmp xchain154_n72_α
 xchain154_n69_β:
 jmp xchain154_n70_α
 xchain154_n70_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+8016]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 8016], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 8024], rax
  .section .rodata
  .Lrkfn277: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn277]
 lea rsi, [r12 + 8016]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8000], rax
 mov qword ptr [r12 + 8008], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n73_α
 xchain154_n70_β:
 jmp proc_cal_key_ω
 xchain154_n71_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+8352] -> [r12+8320]
 mov rax, qword ptr [r12 + 8352]
 mov qword ptr [r12 + 8320], rax
 mov rax, qword ptr [r12 + 8360]
 mov qword ptr [r12 + 8328], rax
# marshal arg1 = producer-box slot [r12+8368] -> [r12+8336]
 mov rax, qword ptr [r12 + 8368]
 mov qword ptr [r12 + 8336], rax
 mov rax, qword ptr [r12 + 8376]
 mov qword ptr [r12 + 8344], rax
  .section .rodata
  .Lrkfn279: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn279]
 lea rsi, [r12 + 8320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8304], rax
 mov qword ptr [r12 + 8312], rdx
 cmp eax, 99
 je xchain154_n59_α
 jmp xchain154_n74_α
 xchain154_n71_β:
 jmp xchain154_n59_α
# IR_LIT_INTEGER
 xchain154_n72_α:
 mov qword ptr [r12 + 8176], 6
 mov rax, qword ptr [rip + .Lx280_0]
 mov qword ptr [r12 + 8184], rax
 jmp xchain154_n75_α
 xchain154_n72_β:
 jmp xchain154_n70_α
.Lx280_0:
 .quad 5
# IR_VAR_REF local
 xchain154_n73_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 7968], rax
 mov qword ptr [r12 + 7976], rdx
 jmp xchain154_n76_α
 xchain154_n73_β:
 jmp xchain154_n81_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n74_α:
 lea rax, [rip + xchain154_n59_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n74_β:
 jmp proc_cal_key_ω
 xchain154_n75_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+8160] -> [r12+8128]
 mov rax, qword ptr [r12 + 8160]
 mov qword ptr [r12 + 8128], rax
 mov rax, qword ptr [r12 + 8168]
 mov qword ptr [r12 + 8136], rax
# marshal arg1 = producer-box slot [r12+8176] -> [r12+8144]
 mov rax, qword ptr [r12 + 8176]
 mov qword ptr [r12 + 8144], rax
 mov rax, qword ptr [r12 + 8184]
 mov qword ptr [r12 + 8152], rax
  .section .rodata
  .Lrkfn286: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn286]
 lea rsi, [r12 + 8128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8112], rax
 mov qword ptr [r12 + 8120], rdx
 cmp eax, 99
 je xchain154_n70_α
 jmp xchain154_n77_α
 xchain154_n75_β:
 jmp xchain154_n70_α
# IR_LIT_INTEGER
 xchain154_n76_α:
 mov qword ptr [r12 + 7984], 6
 mov rax, qword ptr [rip + .Lx287_0]
 mov qword ptr [r12 + 7992], rax
 jmp xchain154_n78_α
 xchain154_n76_β:
 jmp xchain154_n81_α
.Lx287_0:
 .quad 8
# IR_VAR_REF local
 xchain154_n77_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 8080], rax
 mov qword ptr [r12 + 8088], rdx
 jmp xchain154_n79_α
 xchain154_n77_β:
 jmp xchain154_n70_α
 xchain154_n78_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+7968] -> [r12+7936]
 mov rax, qword ptr [r12 + 7968]
 mov qword ptr [r12 + 7936], rax
 mov rax, qword ptr [r12 + 7976]
 mov qword ptr [r12 + 7944], rax
# marshal arg1 = producer-box slot [r12+7984] -> [r12+7952]
 mov rax, qword ptr [r12 + 7984]
 mov qword ptr [r12 + 7952], rax
 mov rax, qword ptr [r12 + 7992]
 mov qword ptr [r12 + 7960], rax
  .section .rodata
  .Lrkfn291: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn291]
 lea rsi, [r12 + 7936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7920], rax
 mov qword ptr [r12 + 7928], rdx
 cmp eax, 99
 je xchain154_n81_α
 jmp xchain154_n80_α
 xchain154_n78_β:
 jmp xchain154_n81_α
# IR_LIT_INTEGER
 xchain154_n79_α:
 mov qword ptr [r12 + 8096], 6
 mov rax, qword ptr [rip + .Lx292_0]
 mov qword ptr [r12 + 8104], rax
 jmp xchain154_n82_α
 xchain154_n79_β:
 jmp xchain154_n70_α
.Lx292_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n80_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 7888], rax
 mov qword ptr [r12 + 7896], rdx
 jmp xchain154_n83_α
 xchain154_n80_β:
 jmp xchain154_n81_α
 xchain154_n81_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+7744]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 7744], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 7752], rax
  .section .rodata
  .Lrkfn296: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn296]
 lea rsi, [r12 + 7744]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7728], rax
 mov qword ptr [r12 + 7736], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n84_α
 xchain154_n81_β:
 jmp proc_cal_key_ω
 xchain154_n82_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+8080] -> [r12+8048]
 mov rax, qword ptr [r12 + 8080]
 mov qword ptr [r12 + 8048], rax
 mov rax, qword ptr [r12 + 8088]
 mov qword ptr [r12 + 8056], rax
# marshal arg1 = producer-box slot [r12+8096] -> [r12+8064]
 mov rax, qword ptr [r12 + 8096]
 mov qword ptr [r12 + 8064], rax
 mov rax, qword ptr [r12 + 8104]
 mov qword ptr [r12 + 8072], rax
  .section .rodata
  .Lrkfn298: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn298]
 lea rsi, [r12 + 8048]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8032], rax
 mov qword ptr [r12 + 8040], rdx
 cmp eax, 99
 je xchain154_n70_α
 jmp xchain154_n85_α
 xchain154_n82_β:
 jmp xchain154_n70_α
# IR_LIT_INTEGER
 xchain154_n83_α:
 mov qword ptr [r12 + 7904], 6
 mov rax, qword ptr [rip + .Lx299_0]
 mov qword ptr [r12 + 7912], rax
 jmp xchain154_n86_α
 xchain154_n83_β:
 jmp xchain154_n81_α
.Lx299_0:
 .quad 1
# IR_VAR_REF local
 xchain154_n84_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 7696], rax
 mov qword ptr [r12 + 7704], rdx
 jmp xchain154_n87_α
 xchain154_n84_β:
 jmp xchain154_n92_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n85_α:
 lea rax, [rip + xchain154_n70_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n85_β:
 jmp proc_cal_key_ω
 xchain154_n86_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+7888] -> [r12+7856]
 mov rax, qword ptr [r12 + 7888]
 mov qword ptr [r12 + 7856], rax
 mov rax, qword ptr [r12 + 7896]
 mov qword ptr [r12 + 7864], rax
# marshal arg1 = producer-box slot [r12+7904] -> [r12+7872]
 mov rax, qword ptr [r12 + 7904]
 mov qword ptr [r12 + 7872], rax
 mov rax, qword ptr [r12 + 7912]
 mov qword ptr [r12 + 7880], rax
  .section .rodata
  .Lrkfn305: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn305]
 lea rsi, [r12 + 7856]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7840], rax
 mov qword ptr [r12 + 7848], rdx
 cmp eax, 99
 je xchain154_n81_α
 jmp xchain154_n88_α
 xchain154_n86_β:
 jmp xchain154_n81_α
# IR_LIT_INTEGER
 xchain154_n87_α:
 mov qword ptr [r12 + 7712], 6
 mov rax, qword ptr [rip + .Lx306_0]
 mov qword ptr [r12 + 7720], rax
 jmp xchain154_n89_α
 xchain154_n87_β:
 jmp xchain154_n92_α
.Lx306_0:
 .quad 9
# IR_VAR_REF local
 xchain154_n88_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 7808], rax
 mov qword ptr [r12 + 7816], rdx
 jmp xchain154_n90_α
 xchain154_n88_β:
 jmp xchain154_n81_α
 xchain154_n89_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+7696] -> [r12+7664]
 mov rax, qword ptr [r12 + 7696]
 mov qword ptr [r12 + 7664], rax
 mov rax, qword ptr [r12 + 7704]
 mov qword ptr [r12 + 7672], rax
# marshal arg1 = producer-box slot [r12+7712] -> [r12+7680]
 mov rax, qword ptr [r12 + 7712]
 mov qword ptr [r12 + 7680], rax
 mov rax, qword ptr [r12 + 7720]
 mov qword ptr [r12 + 7688], rax
  .section .rodata
  .Lrkfn310: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn310]
 lea rsi, [r12 + 7664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7648], rax
 mov qword ptr [r12 + 7656], rdx
 cmp eax, 99
 je xchain154_n92_α
 jmp xchain154_n91_α
 xchain154_n89_β:
 jmp xchain154_n92_α
# IR_LIT_INTEGER
 xchain154_n90_α:
 mov qword ptr [r12 + 7824], 6
 mov rax, qword ptr [rip + .Lx311_0]
 mov qword ptr [r12 + 7832], rax
 jmp xchain154_n93_α
 xchain154_n90_β:
 jmp xchain154_n81_α
.Lx311_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n91_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 7616], rax
 mov qword ptr [r12 + 7624], rdx
 jmp xchain154_n94_α
 xchain154_n91_β:
 jmp xchain154_n92_α
 xchain154_n92_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+7472]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 7472], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 7480], rax
  .section .rodata
  .Lrkfn315: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn315]
 lea rsi, [r12 + 7472]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7456], rax
 mov qword ptr [r12 + 7464], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n95_α
 xchain154_n92_β:
 jmp proc_cal_key_ω
 xchain154_n93_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+7808] -> [r12+7776]
 mov rax, qword ptr [r12 + 7808]
 mov qword ptr [r12 + 7776], rax
 mov rax, qword ptr [r12 + 7816]
 mov qword ptr [r12 + 7784], rax
# marshal arg1 = producer-box slot [r12+7824] -> [r12+7792]
 mov rax, qword ptr [r12 + 7824]
 mov qword ptr [r12 + 7792], rax
 mov rax, qword ptr [r12 + 7832]
 mov qword ptr [r12 + 7800], rax
  .section .rodata
  .Lrkfn317: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn317]
 lea rsi, [r12 + 7776]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7760], rax
 mov qword ptr [r12 + 7768], rdx
 cmp eax, 99
 je xchain154_n81_α
 jmp xchain154_n96_α
 xchain154_n93_β:
 jmp xchain154_n81_α
# IR_LIT_INTEGER
 xchain154_n94_α:
 mov qword ptr [r12 + 7632], 6
 mov rax, qword ptr [rip + .Lx318_0]
 mov qword ptr [r12 + 7640], rax
 jmp xchain154_n97_α
 xchain154_n94_β:
 jmp xchain154_n92_α
.Lx318_0:
 .quad 4
# IR_VAR_REF local
 xchain154_n95_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 7424], rax
 mov qword ptr [r12 + 7432], rdx
 jmp xchain154_n98_α
 xchain154_n95_β:
 jmp xchain154_n103_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n96_α:
 lea rax, [rip + xchain154_n81_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n96_β:
 jmp proc_cal_key_ω
 xchain154_n97_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+7616] -> [r12+7584]
 mov rax, qword ptr [r12 + 7616]
 mov qword ptr [r12 + 7584], rax
 mov rax, qword ptr [r12 + 7624]
 mov qword ptr [r12 + 7592], rax
# marshal arg1 = producer-box slot [r12+7632] -> [r12+7600]
 mov rax, qword ptr [r12 + 7632]
 mov qword ptr [r12 + 7600], rax
 mov rax, qword ptr [r12 + 7640]
 mov qword ptr [r12 + 7608], rax
  .section .rodata
  .Lrkfn324: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn324]
 lea rsi, [r12 + 7584]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7568], rax
 mov qword ptr [r12 + 7576], rdx
 cmp eax, 99
 je xchain154_n92_α
 jmp xchain154_n99_α
 xchain154_n97_β:
 jmp xchain154_n92_α
# IR_LIT_INTEGER
 xchain154_n98_α:
 mov qword ptr [r12 + 7440], 6
 mov rax, qword ptr [rip + .Lx325_0]
 mov qword ptr [r12 + 7448], rax
 jmp xchain154_n100_α
 xchain154_n98_β:
 jmp xchain154_n103_α
.Lx325_0:
 .quad 10
# IR_VAR_REF local
 xchain154_n99_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 7536], rax
 mov qword ptr [r12 + 7544], rdx
 jmp xchain154_n101_α
 xchain154_n99_β:
 jmp xchain154_n92_α
 xchain154_n100_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+7424] -> [r12+7392]
 mov rax, qword ptr [r12 + 7424]
 mov qword ptr [r12 + 7392], rax
 mov rax, qword ptr [r12 + 7432]
 mov qword ptr [r12 + 7400], rax
# marshal arg1 = producer-box slot [r12+7440] -> [r12+7408]
 mov rax, qword ptr [r12 + 7440]
 mov qword ptr [r12 + 7408], rax
 mov rax, qword ptr [r12 + 7448]
 mov qword ptr [r12 + 7416], rax
  .section .rodata
  .Lrkfn329: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn329]
 lea rsi, [r12 + 7392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7376], rax
 mov qword ptr [r12 + 7384], rdx
 cmp eax, 99
 je xchain154_n103_α
 jmp xchain154_n102_α
 xchain154_n100_β:
 jmp xchain154_n103_α
# IR_LIT_INTEGER
 xchain154_n101_α:
 mov qword ptr [r12 + 7552], 6
 mov rax, qword ptr [rip + .Lx330_0]
 mov qword ptr [r12 + 7560], rax
 jmp xchain154_n104_α
 xchain154_n101_β:
 jmp xchain154_n92_α
.Lx330_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n102_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 7344], rax
 mov qword ptr [r12 + 7352], rdx
 jmp xchain154_n105_α
 xchain154_n102_β:
 jmp xchain154_n103_α
 xchain154_n103_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+7200]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 7200], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 7208], rax
  .section .rodata
  .Lrkfn334: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn334]
 lea rsi, [r12 + 7200]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7184], rax
 mov qword ptr [r12 + 7192], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n106_α
 xchain154_n103_β:
 jmp proc_cal_key_ω
 xchain154_n104_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+7536] -> [r12+7504]
 mov rax, qword ptr [r12 + 7536]
 mov qword ptr [r12 + 7504], rax
 mov rax, qword ptr [r12 + 7544]
 mov qword ptr [r12 + 7512], rax
# marshal arg1 = producer-box slot [r12+7552] -> [r12+7520]
 mov rax, qword ptr [r12 + 7552]
 mov qword ptr [r12 + 7520], rax
 mov rax, qword ptr [r12 + 7560]
 mov qword ptr [r12 + 7528], rax
  .section .rodata
  .Lrkfn336: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn336]
 lea rsi, [r12 + 7504]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7488], rax
 mov qword ptr [r12 + 7496], rdx
 cmp eax, 99
 je xchain154_n92_α
 jmp xchain154_n107_α
 xchain154_n104_β:
 jmp xchain154_n92_α
# IR_LIT_INTEGER
 xchain154_n105_α:
 mov qword ptr [r12 + 7360], 6
 mov rax, qword ptr [rip + .Lx337_0]
 mov qword ptr [r12 + 7368], rax
 jmp xchain154_n108_α
 xchain154_n105_β:
 jmp xchain154_n103_α
.Lx337_0:
 .quad 6
# IR_VAR_REF local
 xchain154_n106_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 7152], rax
 mov qword ptr [r12 + 7160], rdx
 jmp xchain154_n109_α
 xchain154_n106_β:
 jmp xchain154_n114_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n107_α:
 lea rax, [rip + xchain154_n92_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n107_β:
 jmp proc_cal_key_ω
 xchain154_n108_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+7344] -> [r12+7312]
 mov rax, qword ptr [r12 + 7344]
 mov qword ptr [r12 + 7312], rax
 mov rax, qword ptr [r12 + 7352]
 mov qword ptr [r12 + 7320], rax
# marshal arg1 = producer-box slot [r12+7360] -> [r12+7328]
 mov rax, qword ptr [r12 + 7360]
 mov qword ptr [r12 + 7328], rax
 mov rax, qword ptr [r12 + 7368]
 mov qword ptr [r12 + 7336], rax
  .section .rodata
  .Lrkfn343: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn343]
 lea rsi, [r12 + 7312]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7296], rax
 mov qword ptr [r12 + 7304], rdx
 cmp eax, 99
 je xchain154_n103_α
 jmp xchain154_n110_α
 xchain154_n108_β:
 jmp xchain154_n103_α
# IR_LIT_INTEGER
 xchain154_n109_α:
 mov qword ptr [r12 + 7168], 6
 mov rax, qword ptr [rip + .Lx344_0]
 mov qword ptr [r12 + 7176], rax
 jmp xchain154_n111_α
 xchain154_n109_β:
 jmp xchain154_n114_α
.Lx344_0:
 .quad 11
# IR_VAR_REF local
 xchain154_n110_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 7264], rax
 mov qword ptr [r12 + 7272], rdx
 jmp xchain154_n112_α
 xchain154_n110_β:
 jmp xchain154_n103_α
 xchain154_n111_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+7152] -> [r12+7120]
 mov rax, qword ptr [r12 + 7152]
 mov qword ptr [r12 + 7120], rax
 mov rax, qword ptr [r12 + 7160]
 mov qword ptr [r12 + 7128], rax
# marshal arg1 = producer-box slot [r12+7168] -> [r12+7136]
 mov rax, qword ptr [r12 + 7168]
 mov qword ptr [r12 + 7136], rax
 mov rax, qword ptr [r12 + 7176]
 mov qword ptr [r12 + 7144], rax
  .section .rodata
  .Lrkfn348: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn348]
 lea rsi, [r12 + 7120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7104], rax
 mov qword ptr [r12 + 7112], rdx
 cmp eax, 99
 je xchain154_n114_α
 jmp xchain154_n113_α
 xchain154_n111_β:
 jmp xchain154_n114_α
# IR_LIT_INTEGER
 xchain154_n112_α:
 mov qword ptr [r12 + 7280], 6
 mov rax, qword ptr [rip + .Lx349_0]
 mov qword ptr [r12 + 7288], rax
 jmp xchain154_n115_α
 xchain154_n112_β:
 jmp xchain154_n103_α
.Lx349_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n113_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 7072], rax
 mov qword ptr [r12 + 7080], rdx
 jmp xchain154_n116_α
 xchain154_n113_β:
 jmp xchain154_n114_α
 xchain154_n114_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+6928]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 6928], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 6936], rax
  .section .rodata
  .Lrkfn353: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn353]
 lea rsi, [r12 + 6928]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6912], rax
 mov qword ptr [r12 + 6920], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n117_α
 xchain154_n114_β:
 jmp proc_cal_key_ω
 xchain154_n115_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+7264] -> [r12+7232]
 mov rax, qword ptr [r12 + 7264]
 mov qword ptr [r12 + 7232], rax
 mov rax, qword ptr [r12 + 7272]
 mov qword ptr [r12 + 7240], rax
# marshal arg1 = producer-box slot [r12+7280] -> [r12+7248]
 mov rax, qword ptr [r12 + 7280]
 mov qword ptr [r12 + 7248], rax
 mov rax, qword ptr [r12 + 7288]
 mov qword ptr [r12 + 7256], rax
  .section .rodata
  .Lrkfn355: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn355]
 lea rsi, [r12 + 7232]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7216], rax
 mov qword ptr [r12 + 7224], rdx
 cmp eax, 99
 je xchain154_n103_α
 jmp xchain154_n118_α
 xchain154_n115_β:
 jmp xchain154_n103_α
# IR_LIT_INTEGER
 xchain154_n116_α:
 mov qword ptr [r12 + 7088], 6
 mov rax, qword ptr [rip + .Lx356_0]
 mov qword ptr [r12 + 7096], rax
 jmp xchain154_n119_α
 xchain154_n116_β:
 jmp xchain154_n114_α
.Lx356_0:
 .quad 2
# IR_VAR_REF local
 xchain154_n117_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6880], rax
 mov qword ptr [r12 + 6888], rdx
 jmp xchain154_n120_α
 xchain154_n117_β:
 jmp xchain154_n125_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n118_α:
 lea rax, [rip + xchain154_n103_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n118_β:
 jmp proc_cal_key_ω
 xchain154_n119_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+7072] -> [r12+7040]
 mov rax, qword ptr [r12 + 7072]
 mov qword ptr [r12 + 7040], rax
 mov rax, qword ptr [r12 + 7080]
 mov qword ptr [r12 + 7048], rax
# marshal arg1 = producer-box slot [r12+7088] -> [r12+7056]
 mov rax, qword ptr [r12 + 7088]
 mov qword ptr [r12 + 7056], rax
 mov rax, qword ptr [r12 + 7096]
 mov qword ptr [r12 + 7064], rax
  .section .rodata
  .Lrkfn362: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn362]
 lea rsi, [r12 + 7040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7024], rax
 mov qword ptr [r12 + 7032], rdx
 cmp eax, 99
 je xchain154_n114_α
 jmp xchain154_n121_α
 xchain154_n119_β:
 jmp xchain154_n114_α
# IR_LIT_INTEGER
 xchain154_n120_α:
 mov qword ptr [r12 + 6896], 6
 mov rax, qword ptr [rip + .Lx363_0]
 mov qword ptr [r12 + 6904], rax
 jmp xchain154_n122_α
 xchain154_n120_β:
 jmp xchain154_n125_α
.Lx363_0:
 .quad 12
# IR_VAR_REF local
 xchain154_n121_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6992], rax
 mov qword ptr [r12 + 7000], rdx
 jmp xchain154_n123_α
 xchain154_n121_β:
 jmp xchain154_n114_α
 xchain154_n122_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6880] -> [r12+6848]
 mov rax, qword ptr [r12 + 6880]
 mov qword ptr [r12 + 6848], rax
 mov rax, qword ptr [r12 + 6888]
 mov qword ptr [r12 + 6856], rax
# marshal arg1 = producer-box slot [r12+6896] -> [r12+6864]
 mov rax, qword ptr [r12 + 6896]
 mov qword ptr [r12 + 6864], rax
 mov rax, qword ptr [r12 + 6904]
 mov qword ptr [r12 + 6872], rax
  .section .rodata
  .Lrkfn367: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn367]
 lea rsi, [r12 + 6848]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6832], rax
 mov qword ptr [r12 + 6840], rdx
 cmp eax, 99
 je xchain154_n125_α
 jmp xchain154_n124_α
 xchain154_n122_β:
 jmp xchain154_n125_α
# IR_LIT_INTEGER
 xchain154_n123_α:
 mov qword ptr [r12 + 7008], 6
 mov rax, qword ptr [rip + .Lx368_0]
 mov qword ptr [r12 + 7016], rax
 jmp xchain154_n126_α
 xchain154_n123_β:
 jmp xchain154_n114_α
.Lx368_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n124_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6800], rax
 mov qword ptr [r12 + 6808], rdx
 jmp xchain154_n127_α
 xchain154_n124_β:
 jmp xchain154_n125_α
 xchain154_n125_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+6656]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 6656], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 6664], rax
  .section .rodata
  .Lrkfn372: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn372]
 lea rsi, [r12 + 6656]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6640], rax
 mov qword ptr [r12 + 6648], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n128_α
 xchain154_n125_β:
 jmp proc_cal_key_ω
 xchain154_n126_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6992] -> [r12+6960]
 mov rax, qword ptr [r12 + 6992]
 mov qword ptr [r12 + 6960], rax
 mov rax, qword ptr [r12 + 7000]
 mov qword ptr [r12 + 6968], rax
# marshal arg1 = producer-box slot [r12+7008] -> [r12+6976]
 mov rax, qword ptr [r12 + 7008]
 mov qword ptr [r12 + 6976], rax
 mov rax, qword ptr [r12 + 7016]
 mov qword ptr [r12 + 6984], rax
  .section .rodata
  .Lrkfn374: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn374]
 lea rsi, [r12 + 6960]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6944], rax
 mov qword ptr [r12 + 6952], rdx
 cmp eax, 99
 je xchain154_n114_α
 jmp xchain154_n129_α
 xchain154_n126_β:
 jmp xchain154_n114_α
# IR_LIT_INTEGER
 xchain154_n127_α:
 mov qword ptr [r12 + 6816], 6
 mov rax, qword ptr [rip + .Lx375_0]
 mov qword ptr [r12 + 6824], rax
 jmp xchain154_n130_α
 xchain154_n127_β:
 jmp xchain154_n125_α
.Lx375_0:
 .quad 4
# IR_VAR_REF local
 xchain154_n128_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6608], rax
 mov qword ptr [r12 + 6616], rdx
 jmp xchain154_n131_α
 xchain154_n128_β:
 jmp xchain154_n136_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n129_α:
 lea rax, [rip + xchain154_n114_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n129_β:
 jmp proc_cal_key_ω
 xchain154_n130_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6800] -> [r12+6768]
 mov rax, qword ptr [r12 + 6800]
 mov qword ptr [r12 + 6768], rax
 mov rax, qword ptr [r12 + 6808]
 mov qword ptr [r12 + 6776], rax
# marshal arg1 = producer-box slot [r12+6816] -> [r12+6784]
 mov rax, qword ptr [r12 + 6816]
 mov qword ptr [r12 + 6784], rax
 mov rax, qword ptr [r12 + 6824]
 mov qword ptr [r12 + 6792], rax
  .section .rodata
  .Lrkfn381: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn381]
 lea rsi, [r12 + 6768]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6752], rax
 mov qword ptr [r12 + 6760], rdx
 cmp eax, 99
 je xchain154_n125_α
 jmp xchain154_n132_α
 xchain154_n130_β:
 jmp xchain154_n125_α
# IR_LIT_STRING
 xchain154_n131_α:
 mov qword ptr [r12 + 6624], 1
 mov rax, qword ptr [rip + .Lx382_0]
 mov qword ptr [r12 + 6632], rax
 jmp xchain154_n133_α
 xchain154_n131_β:
 jmp xchain154_n136_α
.Lx382_0:
 .quad .Lx382_0_s
.Lx382_0_s:
 .string "jan"
# IR_VAR_REF local
 xchain154_n132_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6720], rax
 mov qword ptr [r12 + 6728], rdx
 jmp xchain154_n134_α
 xchain154_n132_β:
 jmp xchain154_n125_α
 xchain154_n133_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6608] -> [r12+6576]
 mov rax, qword ptr [r12 + 6608]
 mov qword ptr [r12 + 6576], rax
 mov rax, qword ptr [r12 + 6616]
 mov qword ptr [r12 + 6584], rax
# marshal arg1 = producer-box slot [r12+6624] -> [r12+6592]
 mov rax, qword ptr [r12 + 6624]
 mov qword ptr [r12 + 6592], rax
 mov rax, qword ptr [r12 + 6632]
 mov qword ptr [r12 + 6600], rax
  .section .rodata
  .Lrkfn386: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn386]
 lea rsi, [r12 + 6576]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6560], rax
 mov qword ptr [r12 + 6568], rdx
 cmp eax, 99
 je xchain154_n136_α
 jmp xchain154_n135_α
 xchain154_n133_β:
 jmp xchain154_n136_α
# IR_LIT_INTEGER
 xchain154_n134_α:
 mov qword ptr [r12 + 6736], 6
 mov rax, qword ptr [rip + .Lx387_0]
 mov qword ptr [r12 + 6744], rax
 jmp xchain154_n137_α
 xchain154_n134_β:
 jmp xchain154_n125_α
.Lx387_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n135_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6528], rax
 mov qword ptr [r12 + 6536], rdx
 jmp xchain154_n138_α
 xchain154_n135_β:
 jmp xchain154_n136_α
 xchain154_n136_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+6384]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 6384], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 6392], rax
  .section .rodata
  .Lrkfn391: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn391]
 lea rsi, [r12 + 6384]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6368], rax
 mov qword ptr [r12 + 6376], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n139_α
 xchain154_n136_β:
 jmp proc_cal_key_ω
 xchain154_n137_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6720] -> [r12+6688]
 mov rax, qword ptr [r12 + 6720]
 mov qword ptr [r12 + 6688], rax
 mov rax, qword ptr [r12 + 6728]
 mov qword ptr [r12 + 6696], rax
# marshal arg1 = producer-box slot [r12+6736] -> [r12+6704]
 mov rax, qword ptr [r12 + 6736]
 mov qword ptr [r12 + 6704], rax
 mov rax, qword ptr [r12 + 6744]
 mov qword ptr [r12 + 6712], rax
  .section .rodata
  .Lrkfn393: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn393]
 lea rsi, [r12 + 6688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6672], rax
 mov qword ptr [r12 + 6680], rdx
 cmp eax, 99
 je xchain154_n125_α
 jmp xchain154_n140_α
 xchain154_n137_β:
 jmp xchain154_n125_α
# IR_LIT_INTEGER
 xchain154_n138_α:
 mov qword ptr [r12 + 6544], 6
 mov rax, qword ptr [rip + .Lx394_0]
 mov qword ptr [r12 + 6552], rax
 jmp xchain154_n141_α
 xchain154_n138_β:
 jmp xchain154_n136_α
.Lx394_0:
 .quad 6
# IR_VAR_REF local
 xchain154_n139_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6336], rax
 mov qword ptr [r12 + 6344], rdx
 jmp xchain154_n142_α
 xchain154_n139_β:
 jmp xchain154_n147_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n140_α:
 lea rax, [rip + xchain154_n125_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n140_β:
 jmp proc_cal_key_ω
 xchain154_n141_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6528] -> [r12+6496]
 mov rax, qword ptr [r12 + 6528]
 mov qword ptr [r12 + 6496], rax
 mov rax, qword ptr [r12 + 6536]
 mov qword ptr [r12 + 6504], rax
# marshal arg1 = producer-box slot [r12+6544] -> [r12+6512]
 mov rax, qword ptr [r12 + 6544]
 mov qword ptr [r12 + 6512], rax
 mov rax, qword ptr [r12 + 6552]
 mov qword ptr [r12 + 6520], rax
  .section .rodata
  .Lrkfn400: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn400]
 lea rsi, [r12 + 6496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6480], rax
 mov qword ptr [r12 + 6488], rdx
 cmp eax, 99
 je xchain154_n136_α
 jmp xchain154_n143_α
 xchain154_n141_β:
 jmp xchain154_n136_α
# IR_LIT_STRING
 xchain154_n142_α:
 mov qword ptr [r12 + 6352], 1
 mov rax, qword ptr [rip + .Lx401_0]
 mov qword ptr [r12 + 6360], rax
 jmp xchain154_n144_α
 xchain154_n142_β:
 jmp xchain154_n147_α
.Lx401_0:
 .quad .Lx401_0_s
.Lx401_0_s:
 .string "feb"
# IR_VAR_REF local
 xchain154_n143_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6448], rax
 mov qword ptr [r12 + 6456], rdx
 jmp xchain154_n145_α
 xchain154_n143_β:
 jmp xchain154_n136_α
 xchain154_n144_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6336] -> [r12+6304]
 mov rax, qword ptr [r12 + 6336]
 mov qword ptr [r12 + 6304], rax
 mov rax, qword ptr [r12 + 6344]
 mov qword ptr [r12 + 6312], rax
# marshal arg1 = producer-box slot [r12+6352] -> [r12+6320]
 mov rax, qword ptr [r12 + 6352]
 mov qword ptr [r12 + 6320], rax
 mov rax, qword ptr [r12 + 6360]
 mov qword ptr [r12 + 6328], rax
  .section .rodata
  .Lrkfn405: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn405]
 lea rsi, [r12 + 6304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6288], rax
 mov qword ptr [r12 + 6296], rdx
 cmp eax, 99
 je xchain154_n147_α
 jmp xchain154_n146_α
 xchain154_n144_β:
 jmp xchain154_n147_α
# IR_LIT_INTEGER
 xchain154_n145_α:
 mov qword ptr [r12 + 6464], 6
 mov rax, qword ptr [rip + .Lx406_0]
 mov qword ptr [r12 + 6472], rax
 jmp xchain154_n148_α
 xchain154_n145_β:
 jmp xchain154_n136_α
.Lx406_0:
 .quad 1
# IR_VAR_REF local
 xchain154_n146_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6256], rax
 mov qword ptr [r12 + 6264], rdx
 jmp xchain154_n149_α
 xchain154_n146_β:
 jmp xchain154_n147_α
 xchain154_n147_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+6112]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 6112], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 6120], rax
  .section .rodata
  .Lrkfn410: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn410]
 lea rsi, [r12 + 6112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6096], rax
 mov qword ptr [r12 + 6104], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n150_α
 xchain154_n147_β:
 jmp proc_cal_key_ω
 xchain154_n148_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6448] -> [r12+6416]
 mov rax, qword ptr [r12 + 6448]
 mov qword ptr [r12 + 6416], rax
 mov rax, qword ptr [r12 + 6456]
 mov qword ptr [r12 + 6424], rax
# marshal arg1 = producer-box slot [r12+6464] -> [r12+6432]
 mov rax, qword ptr [r12 + 6464]
 mov qword ptr [r12 + 6432], rax
 mov rax, qword ptr [r12 + 6472]
 mov qword ptr [r12 + 6440], rax
  .section .rodata
  .Lrkfn412: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn412]
 lea rsi, [r12 + 6416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6400], rax
 mov qword ptr [r12 + 6408], rdx
 cmp eax, 99
 je xchain154_n136_α
 jmp xchain154_n151_α
 xchain154_n148_β:
 jmp xchain154_n136_α
# IR_LIT_INTEGER
 xchain154_n149_α:
 mov qword ptr [r12 + 6272], 6
 mov rax, qword ptr [rip + .Lx413_0]
 mov qword ptr [r12 + 6280], rax
 jmp xchain154_n152_α
 xchain154_n149_β:
 jmp xchain154_n147_α
.Lx413_0:
 .quad 2
# IR_VAR_REF local
 xchain154_n150_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6064], rax
 mov qword ptr [r12 + 6072], rdx
 jmp xchain154_n153_α
 xchain154_n150_β:
 jmp xchain154_n158_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n151_α:
 lea rax, [rip + xchain154_n136_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n151_β:
 jmp proc_cal_key_ω
 xchain154_n152_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6256] -> [r12+6224]
 mov rax, qword ptr [r12 + 6256]
 mov qword ptr [r12 + 6224], rax
 mov rax, qword ptr [r12 + 6264]
 mov qword ptr [r12 + 6232], rax
# marshal arg1 = producer-box slot [r12+6272] -> [r12+6240]
 mov rax, qword ptr [r12 + 6272]
 mov qword ptr [r12 + 6240], rax
 mov rax, qword ptr [r12 + 6280]
 mov qword ptr [r12 + 6248], rax
  .section .rodata
  .Lrkfn419: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn419]
 lea rsi, [r12 + 6224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6208], rax
 mov qword ptr [r12 + 6216], rdx
 cmp eax, 99
 je xchain154_n147_α
 jmp xchain154_n154_α
 xchain154_n152_β:
 jmp xchain154_n147_α
# IR_LIT_STRING
 xchain154_n153_α:
 mov qword ptr [r12 + 6080], 1
 mov rax, qword ptr [rip + .Lx420_0]
 mov qword ptr [r12 + 6088], rax
 jmp xchain154_n155_α
 xchain154_n153_β:
 jmp xchain154_n158_α
.Lx420_0:
 .quad .Lx420_0_s
.Lx420_0_s:
 .string "mar"
# IR_VAR_REF local
 xchain154_n154_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6176], rax
 mov qword ptr [r12 + 6184], rdx
 jmp xchain154_n156_α
 xchain154_n154_β:
 jmp xchain154_n147_α
 xchain154_n155_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6064] -> [r12+6032]
 mov rax, qword ptr [r12 + 6064]
 mov qword ptr [r12 + 6032], rax
 mov rax, qword ptr [r12 + 6072]
 mov qword ptr [r12 + 6040], rax
# marshal arg1 = producer-box slot [r12+6080] -> [r12+6048]
 mov rax, qword ptr [r12 + 6080]
 mov qword ptr [r12 + 6048], rax
 mov rax, qword ptr [r12 + 6088]
 mov qword ptr [r12 + 6056], rax
  .section .rodata
  .Lrkfn424: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn424]
 lea rsi, [r12 + 6032]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6016], rax
 mov qword ptr [r12 + 6024], rdx
 cmp eax, 99
 je xchain154_n158_α
 jmp xchain154_n157_α
 xchain154_n155_β:
 jmp xchain154_n158_α
# IR_LIT_INTEGER
 xchain154_n156_α:
 mov qword ptr [r12 + 6192], 6
 mov rax, qword ptr [rip + .Lx425_0]
 mov qword ptr [r12 + 6200], rax
 jmp xchain154_n159_α
 xchain154_n156_β:
 jmp xchain154_n147_α
.Lx425_0:
 .quad 1
# IR_VAR_REF local
 xchain154_n157_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5984], rax
 mov qword ptr [r12 + 5992], rdx
 jmp xchain154_n160_α
 xchain154_n157_β:
 jmp xchain154_n158_α
 xchain154_n158_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+5840]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 5840], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 5848], rax
  .section .rodata
  .Lrkfn429: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn429]
 lea rsi, [r12 + 5840]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5824], rax
 mov qword ptr [r12 + 5832], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n161_α
 xchain154_n158_β:
 jmp proc_cal_key_ω
 xchain154_n159_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6176] -> [r12+6144]
 mov rax, qword ptr [r12 + 6176]
 mov qword ptr [r12 + 6144], rax
 mov rax, qword ptr [r12 + 6184]
 mov qword ptr [r12 + 6152], rax
# marshal arg1 = producer-box slot [r12+6192] -> [r12+6160]
 mov rax, qword ptr [r12 + 6192]
 mov qword ptr [r12 + 6160], rax
 mov rax, qword ptr [r12 + 6200]
 mov qword ptr [r12 + 6168], rax
  .section .rodata
  .Lrkfn431: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn431]
 lea rsi, [r12 + 6144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 cmp eax, 99
 je xchain154_n147_α
 jmp xchain154_n162_α
 xchain154_n159_β:
 jmp xchain154_n147_α
# IR_LIT_INTEGER
 xchain154_n160_α:
 mov qword ptr [r12 + 6000], 6
 mov rax, qword ptr [rip + .Lx432_0]
 mov qword ptr [r12 + 6008], rax
 jmp xchain154_n163_α
 xchain154_n160_β:
 jmp xchain154_n158_α
.Lx432_0:
 .quad 2
# IR_VAR_REF local
 xchain154_n161_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5792], rax
 mov qword ptr [r12 + 5800], rdx
 jmp xchain154_n164_α
 xchain154_n161_β:
 jmp xchain154_n169_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n162_α:
 lea rax, [rip + xchain154_n147_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n162_β:
 jmp proc_cal_key_ω
 xchain154_n163_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5984] -> [r12+5952]
 mov rax, qword ptr [r12 + 5984]
 mov qword ptr [r12 + 5952], rax
 mov rax, qword ptr [r12 + 5992]
 mov qword ptr [r12 + 5960], rax
# marshal arg1 = producer-box slot [r12+6000] -> [r12+5968]
 mov rax, qword ptr [r12 + 6000]
 mov qword ptr [r12 + 5968], rax
 mov rax, qword ptr [r12 + 6008]
 mov qword ptr [r12 + 5976], rax
  .section .rodata
  .Lrkfn438: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn438]
 lea rsi, [r12 + 5952]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5936], rax
 mov qword ptr [r12 + 5944], rdx
 cmp eax, 99
 je xchain154_n158_α
 jmp xchain154_n165_α
 xchain154_n163_β:
 jmp xchain154_n158_α
# IR_LIT_STRING
 xchain154_n164_α:
 mov qword ptr [r12 + 5808], 1
 mov rax, qword ptr [rip + .Lx439_0]
 mov qword ptr [r12 + 5816], rax
 jmp xchain154_n166_α
 xchain154_n164_β:
 jmp xchain154_n169_α
.Lx439_0:
 .quad .Lx439_0_s
.Lx439_0_s:
 .string "apr"
# IR_VAR_REF local
 xchain154_n165_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5904], rax
 mov qword ptr [r12 + 5912], rdx
 jmp xchain154_n167_α
 xchain154_n165_β:
 jmp xchain154_n158_α
 xchain154_n166_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5792] -> [r12+5760]
 mov rax, qword ptr [r12 + 5792]
 mov qword ptr [r12 + 5760], rax
 mov rax, qword ptr [r12 + 5800]
 mov qword ptr [r12 + 5768], rax
# marshal arg1 = producer-box slot [r12+5808] -> [r12+5776]
 mov rax, qword ptr [r12 + 5808]
 mov qword ptr [r12 + 5776], rax
 mov rax, qword ptr [r12 + 5816]
 mov qword ptr [r12 + 5784], rax
  .section .rodata
  .Lrkfn443: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn443]
 lea rsi, [r12 + 5760]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5744], rax
 mov qword ptr [r12 + 5752], rdx
 cmp eax, 99
 je xchain154_n169_α
 jmp xchain154_n168_α
 xchain154_n166_β:
 jmp xchain154_n169_α
# IR_LIT_INTEGER
 xchain154_n167_α:
 mov qword ptr [r12 + 5920], 6
 mov rax, qword ptr [rip + .Lx444_0]
 mov qword ptr [r12 + 5928], rax
 jmp xchain154_n170_α
 xchain154_n167_β:
 jmp xchain154_n158_α
.Lx444_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n168_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5712], rax
 mov qword ptr [r12 + 5720], rdx
 jmp xchain154_n171_α
 xchain154_n168_β:
 jmp xchain154_n169_α
 xchain154_n169_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+5568]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 5568], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 5576], rax
  .section .rodata
  .Lrkfn448: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn448]
 lea rsi, [r12 + 5568]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5552], rax
 mov qword ptr [r12 + 5560], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n172_α
 xchain154_n169_β:
 jmp proc_cal_key_ω
 xchain154_n170_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5904] -> [r12+5872]
 mov rax, qword ptr [r12 + 5904]
 mov qword ptr [r12 + 5872], rax
 mov rax, qword ptr [r12 + 5912]
 mov qword ptr [r12 + 5880], rax
# marshal arg1 = producer-box slot [r12+5920] -> [r12+5888]
 mov rax, qword ptr [r12 + 5920]
 mov qword ptr [r12 + 5888], rax
 mov rax, qword ptr [r12 + 5928]
 mov qword ptr [r12 + 5896], rax
  .section .rodata
  .Lrkfn450: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn450]
 lea rsi, [r12 + 5872]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5856], rax
 mov qword ptr [r12 + 5864], rdx
 cmp eax, 99
 je xchain154_n158_α
 jmp xchain154_n173_α
 xchain154_n170_β:
 jmp xchain154_n158_α
# IR_LIT_INTEGER
 xchain154_n171_α:
 mov qword ptr [r12 + 5728], 6
 mov rax, qword ptr [rip + .Lx451_0]
 mov qword ptr [r12 + 5736], rax
 jmp xchain154_n174_α
 xchain154_n171_β:
 jmp xchain154_n169_α
.Lx451_0:
 .quad 5
# IR_VAR_REF local
 xchain154_n172_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5520], rax
 mov qword ptr [r12 + 5528], rdx
 jmp xchain154_n175_α
 xchain154_n172_β:
 jmp xchain154_n180_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n173_α:
 lea rax, [rip + xchain154_n158_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n173_β:
 jmp proc_cal_key_ω
 xchain154_n174_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5712] -> [r12+5680]
 mov rax, qword ptr [r12 + 5712]
 mov qword ptr [r12 + 5680], rax
 mov rax, qword ptr [r12 + 5720]
 mov qword ptr [r12 + 5688], rax
# marshal arg1 = producer-box slot [r12+5728] -> [r12+5696]
 mov rax, qword ptr [r12 + 5728]
 mov qword ptr [r12 + 5696], rax
 mov rax, qword ptr [r12 + 5736]
 mov qword ptr [r12 + 5704], rax
  .section .rodata
  .Lrkfn457: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn457]
 lea rsi, [r12 + 5680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5664], rax
 mov qword ptr [r12 + 5672], rdx
 cmp eax, 99
 je xchain154_n169_α
 jmp xchain154_n176_α
 xchain154_n174_β:
 jmp xchain154_n169_α
# IR_LIT_STRING
 xchain154_n175_α:
 mov qword ptr [r12 + 5536], 1
 mov rax, qword ptr [rip + .Lx458_0]
 mov qword ptr [r12 + 5544], rax
 jmp xchain154_n177_α
 xchain154_n175_β:
 jmp xchain154_n180_α
.Lx458_0:
 .quad .Lx458_0_s
.Lx458_0_s:
 .string "may"
# IR_VAR_REF local
 xchain154_n176_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5632], rax
 mov qword ptr [r12 + 5640], rdx
 jmp xchain154_n178_α
 xchain154_n176_β:
 jmp xchain154_n169_α
 xchain154_n177_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5520] -> [r12+5488]
 mov rax, qword ptr [r12 + 5520]
 mov qword ptr [r12 + 5488], rax
 mov rax, qword ptr [r12 + 5528]
 mov qword ptr [r12 + 5496], rax
# marshal arg1 = producer-box slot [r12+5536] -> [r12+5504]
 mov rax, qword ptr [r12 + 5536]
 mov qword ptr [r12 + 5504], rax
 mov rax, qword ptr [r12 + 5544]
 mov qword ptr [r12 + 5512], rax
  .section .rodata
  .Lrkfn462: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn462]
 lea rsi, [r12 + 5488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5472], rax
 mov qword ptr [r12 + 5480], rdx
 cmp eax, 99
 je xchain154_n180_α
 jmp xchain154_n179_α
 xchain154_n177_β:
 jmp xchain154_n180_α
# IR_LIT_INTEGER
 xchain154_n178_α:
 mov qword ptr [r12 + 5648], 6
 mov rax, qword ptr [rip + .Lx463_0]
 mov qword ptr [r12 + 5656], rax
 jmp xchain154_n181_α
 xchain154_n178_β:
 jmp xchain154_n169_α
.Lx463_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n179_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5440], rax
 mov qword ptr [r12 + 5448], rdx
 jmp xchain154_n182_α
 xchain154_n179_β:
 jmp xchain154_n180_α
 xchain154_n180_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+5296]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 5296], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 5304], rax
  .section .rodata
  .Lrkfn467: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn467]
 lea rsi, [r12 + 5296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5280], rax
 mov qword ptr [r12 + 5288], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n183_α
 xchain154_n180_β:
 jmp proc_cal_key_ω
 xchain154_n181_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5632] -> [r12+5600]
 mov rax, qword ptr [r12 + 5632]
 mov qword ptr [r12 + 5600], rax
 mov rax, qword ptr [r12 + 5640]
 mov qword ptr [r12 + 5608], rax
# marshal arg1 = producer-box slot [r12+5648] -> [r12+5616]
 mov rax, qword ptr [r12 + 5648]
 mov qword ptr [r12 + 5616], rax
 mov rax, qword ptr [r12 + 5656]
 mov qword ptr [r12 + 5624], rax
  .section .rodata
  .Lrkfn469: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn469]
 lea rsi, [r12 + 5600]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5584], rax
 mov qword ptr [r12 + 5592], rdx
 cmp eax, 99
 je xchain154_n169_α
 jmp xchain154_n184_α
 xchain154_n181_β:
 jmp xchain154_n169_α
# IR_LIT_INTEGER
 xchain154_n182_α:
 mov qword ptr [r12 + 5456], 6
 mov rax, qword ptr [rip + .Lx470_0]
 mov qword ptr [r12 + 5464], rax
 jmp xchain154_n185_α
 xchain154_n182_β:
 jmp xchain154_n180_α
.Lx470_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n183_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5248], rax
 mov qword ptr [r12 + 5256], rdx
 jmp xchain154_n186_α
 xchain154_n183_β:
 jmp xchain154_n191_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n184_α:
 lea rax, [rip + xchain154_n169_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n184_β:
 jmp proc_cal_key_ω
 xchain154_n185_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5440] -> [r12+5408]
 mov rax, qword ptr [r12 + 5440]
 mov qword ptr [r12 + 5408], rax
 mov rax, qword ptr [r12 + 5448]
 mov qword ptr [r12 + 5416], rax
# marshal arg1 = producer-box slot [r12+5456] -> [r12+5424]
 mov rax, qword ptr [r12 + 5456]
 mov qword ptr [r12 + 5424], rax
 mov rax, qword ptr [r12 + 5464]
 mov qword ptr [r12 + 5432], rax
  .section .rodata
  .Lrkfn476: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn476]
 lea rsi, [r12 + 5408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5392], rax
 mov qword ptr [r12 + 5400], rdx
 cmp eax, 99
 je xchain154_n180_α
 jmp xchain154_n187_α
 xchain154_n185_β:
 jmp xchain154_n180_α
# IR_LIT_STRING
 xchain154_n186_α:
 mov qword ptr [r12 + 5264], 1
 mov rax, qword ptr [rip + .Lx477_0]
 mov qword ptr [r12 + 5272], rax
 jmp xchain154_n188_α
 xchain154_n186_β:
 jmp xchain154_n191_α
.Lx477_0:
 .quad .Lx477_0_s
.Lx477_0_s:
 .string "jun"
# IR_VAR_REF local
 xchain154_n187_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5360], rax
 mov qword ptr [r12 + 5368], rdx
 jmp xchain154_n189_α
 xchain154_n187_β:
 jmp xchain154_n180_α
 xchain154_n188_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5248] -> [r12+5216]
 mov rax, qword ptr [r12 + 5248]
 mov qword ptr [r12 + 5216], rax
 mov rax, qword ptr [r12 + 5256]
 mov qword ptr [r12 + 5224], rax
# marshal arg1 = producer-box slot [r12+5264] -> [r12+5232]
 mov rax, qword ptr [r12 + 5264]
 mov qword ptr [r12 + 5232], rax
 mov rax, qword ptr [r12 + 5272]
 mov qword ptr [r12 + 5240], rax
  .section .rodata
  .Lrkfn481: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn481]
 lea rsi, [r12 + 5216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5200], rax
 mov qword ptr [r12 + 5208], rdx
 cmp eax, 99
 je xchain154_n191_α
 jmp xchain154_n190_α
 xchain154_n188_β:
 jmp xchain154_n191_α
# IR_LIT_INTEGER
 xchain154_n189_α:
 mov qword ptr [r12 + 5376], 6
 mov rax, qword ptr [rip + .Lx482_0]
 mov qword ptr [r12 + 5384], rax
 jmp xchain154_n192_α
 xchain154_n189_β:
 jmp xchain154_n180_α
.Lx482_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n190_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5168], rax
 mov qword ptr [r12 + 5176], rdx
 jmp xchain154_n193_α
 xchain154_n190_β:
 jmp xchain154_n191_α
 xchain154_n191_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+5024]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 5024], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 5032], rax
  .section .rodata
  .Lrkfn486: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn486]
 lea rsi, [r12 + 5024]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5008], rax
 mov qword ptr [r12 + 5016], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n194_α
 xchain154_n191_β:
 jmp proc_cal_key_ω
 xchain154_n192_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5360] -> [r12+5328]
 mov rax, qword ptr [r12 + 5360]
 mov qword ptr [r12 + 5328], rax
 mov rax, qword ptr [r12 + 5368]
 mov qword ptr [r12 + 5336], rax
# marshal arg1 = producer-box slot [r12+5376] -> [r12+5344]
 mov rax, qword ptr [r12 + 5376]
 mov qword ptr [r12 + 5344], rax
 mov rax, qword ptr [r12 + 5384]
 mov qword ptr [r12 + 5352], rax
  .section .rodata
  .Lrkfn488: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn488]
 lea rsi, [r12 + 5328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5312], rax
 mov qword ptr [r12 + 5320], rdx
 cmp eax, 99
 je xchain154_n180_α
 jmp xchain154_n195_α
 xchain154_n192_β:
 jmp xchain154_n180_α
# IR_LIT_INTEGER
 xchain154_n193_α:
 mov qword ptr [r12 + 5184], 6
 mov rax, qword ptr [rip + .Lx489_0]
 mov qword ptr [r12 + 5192], rax
 jmp xchain154_n196_α
 xchain154_n193_β:
 jmp xchain154_n191_α
.Lx489_0:
 .quad 3
# IR_VAR_REF local
 xchain154_n194_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4976], rax
 mov qword ptr [r12 + 4984], rdx
 jmp xchain154_n197_α
 xchain154_n194_β:
 jmp xchain154_n202_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n195_α:
 lea rax, [rip + xchain154_n180_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n195_β:
 jmp proc_cal_key_ω
 xchain154_n196_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5168] -> [r12+5136]
 mov rax, qword ptr [r12 + 5168]
 mov qword ptr [r12 + 5136], rax
 mov rax, qword ptr [r12 + 5176]
 mov qword ptr [r12 + 5144], rax
# marshal arg1 = producer-box slot [r12+5184] -> [r12+5152]
 mov rax, qword ptr [r12 + 5184]
 mov qword ptr [r12 + 5152], rax
 mov rax, qword ptr [r12 + 5192]
 mov qword ptr [r12 + 5160], rax
  .section .rodata
  .Lrkfn495: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn495]
 lea rsi, [r12 + 5136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5120], rax
 mov qword ptr [r12 + 5128], rdx
 cmp eax, 99
 je xchain154_n191_α
 jmp xchain154_n198_α
 xchain154_n196_β:
 jmp xchain154_n191_α
# IR_LIT_STRING
 xchain154_n197_α:
 mov qword ptr [r12 + 4992], 1
 mov rax, qword ptr [rip + .Lx496_0]
 mov qword ptr [r12 + 5000], rax
 jmp xchain154_n199_α
 xchain154_n197_β:
 jmp xchain154_n202_α
.Lx496_0:
 .quad .Lx496_0_s
.Lx496_0_s:
 .string "jul"
# IR_VAR_REF local
 xchain154_n198_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5088], rax
 mov qword ptr [r12 + 5096], rdx
 jmp xchain154_n200_α
 xchain154_n198_β:
 jmp xchain154_n191_α
 xchain154_n199_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4976] -> [r12+4944]
 mov rax, qword ptr [r12 + 4976]
 mov qword ptr [r12 + 4944], rax
 mov rax, qword ptr [r12 + 4984]
 mov qword ptr [r12 + 4952], rax
# marshal arg1 = producer-box slot [r12+4992] -> [r12+4960]
 mov rax, qword ptr [r12 + 4992]
 mov qword ptr [r12 + 4960], rax
 mov rax, qword ptr [r12 + 5000]
 mov qword ptr [r12 + 4968], rax
  .section .rodata
  .Lrkfn500: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn500]
 lea rsi, [r12 + 4944]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4928], rax
 mov qword ptr [r12 + 4936], rdx
 cmp eax, 99
 je xchain154_n202_α
 jmp xchain154_n201_α
 xchain154_n199_β:
 jmp xchain154_n202_α
# IR_LIT_INTEGER
 xchain154_n200_α:
 mov qword ptr [r12 + 5104], 6
 mov rax, qword ptr [rip + .Lx501_0]
 mov qword ptr [r12 + 5112], rax
 jmp xchain154_n203_α
 xchain154_n200_β:
 jmp xchain154_n191_α
.Lx501_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n201_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4896], rax
 mov qword ptr [r12 + 4904], rdx
 jmp xchain154_n204_α
 xchain154_n201_β:
 jmp xchain154_n202_α
 xchain154_n202_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+4752]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 4752], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 4760], rax
  .section .rodata
  .Lrkfn505: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn505]
 lea rsi, [r12 + 4752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4736], rax
 mov qword ptr [r12 + 4744], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n205_α
 xchain154_n202_β:
 jmp proc_cal_key_ω
 xchain154_n203_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5088] -> [r12+5056]
 mov rax, qword ptr [r12 + 5088]
 mov qword ptr [r12 + 5056], rax
 mov rax, qword ptr [r12 + 5096]
 mov qword ptr [r12 + 5064], rax
# marshal arg1 = producer-box slot [r12+5104] -> [r12+5072]
 mov rax, qword ptr [r12 + 5104]
 mov qword ptr [r12 + 5072], rax
 mov rax, qword ptr [r12 + 5112]
 mov qword ptr [r12 + 5080], rax
  .section .rodata
  .Lrkfn507: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn507]
 lea rsi, [r12 + 5056]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5040], rax
 mov qword ptr [r12 + 5048], rdx
 cmp eax, 99
 je xchain154_n191_α
 jmp xchain154_n206_α
 xchain154_n203_β:
 jmp xchain154_n191_α
# IR_LIT_INTEGER
 xchain154_n204_α:
 mov qword ptr [r12 + 4912], 6
 mov rax, qword ptr [rip + .Lx508_0]
 mov qword ptr [r12 + 4920], rax
 jmp xchain154_n207_α
 xchain154_n204_β:
 jmp xchain154_n202_α
.Lx508_0:
 .quad 5
# IR_VAR_REF local
 xchain154_n205_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4704], rax
 mov qword ptr [r12 + 4712], rdx
 jmp xchain154_n208_α
 xchain154_n205_β:
 jmp xchain154_n213_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n206_α:
 lea rax, [rip + xchain154_n191_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n206_β:
 jmp proc_cal_key_ω
 xchain154_n207_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4896] -> [r12+4864]
 mov rax, qword ptr [r12 + 4896]
 mov qword ptr [r12 + 4864], rax
 mov rax, qword ptr [r12 + 4904]
 mov qword ptr [r12 + 4872], rax
# marshal arg1 = producer-box slot [r12+4912] -> [r12+4880]
 mov rax, qword ptr [r12 + 4912]
 mov qword ptr [r12 + 4880], rax
 mov rax, qword ptr [r12 + 4920]
 mov qword ptr [r12 + 4888], rax
  .section .rodata
  .Lrkfn514: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn514]
 lea rsi, [r12 + 4864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4848], rax
 mov qword ptr [r12 + 4856], rdx
 cmp eax, 99
 je xchain154_n202_α
 jmp xchain154_n209_α
 xchain154_n207_β:
 jmp xchain154_n202_α
# IR_LIT_STRING
 xchain154_n208_α:
 mov qword ptr [r12 + 4720], 1
 mov rax, qword ptr [rip + .Lx515_0]
 mov qword ptr [r12 + 4728], rax
 jmp xchain154_n210_α
 xchain154_n208_β:
 jmp xchain154_n213_α
.Lx515_0:
 .quad .Lx515_0_s
.Lx515_0_s:
 .string "aug"
# IR_VAR_REF local
 xchain154_n209_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4816], rax
 mov qword ptr [r12 + 4824], rdx
 jmp xchain154_n211_α
 xchain154_n209_β:
 jmp xchain154_n202_α
 xchain154_n210_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4704] -> [r12+4672]
 mov rax, qword ptr [r12 + 4704]
 mov qword ptr [r12 + 4672], rax
 mov rax, qword ptr [r12 + 4712]
 mov qword ptr [r12 + 4680], rax
# marshal arg1 = producer-box slot [r12+4720] -> [r12+4688]
 mov rax, qword ptr [r12 + 4720]
 mov qword ptr [r12 + 4688], rax
 mov rax, qword ptr [r12 + 4728]
 mov qword ptr [r12 + 4696], rax
  .section .rodata
  .Lrkfn519: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn519]
 lea rsi, [r12 + 4672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4656], rax
 mov qword ptr [r12 + 4664], rdx
 cmp eax, 99
 je xchain154_n213_α
 jmp xchain154_n212_α
 xchain154_n210_β:
 jmp xchain154_n213_α
# IR_LIT_INTEGER
 xchain154_n211_α:
 mov qword ptr [r12 + 4832], 6
 mov rax, qword ptr [rip + .Lx520_0]
 mov qword ptr [r12 + 4840], rax
 jmp xchain154_n214_α
 xchain154_n211_β:
 jmp xchain154_n202_α
.Lx520_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n212_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4624], rax
 mov qword ptr [r12 + 4632], rdx
 jmp xchain154_n215_α
 xchain154_n212_β:
 jmp xchain154_n213_α
 xchain154_n213_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+4480]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 4480], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 4488], rax
  .section .rodata
  .Lrkfn524: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn524]
 lea rsi, [r12 + 4480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4464], rax
 mov qword ptr [r12 + 4472], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n216_α
 xchain154_n213_β:
 jmp proc_cal_key_ω
 xchain154_n214_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4816] -> [r12+4784]
 mov rax, qword ptr [r12 + 4816]
 mov qword ptr [r12 + 4784], rax
 mov rax, qword ptr [r12 + 4824]
 mov qword ptr [r12 + 4792], rax
# marshal arg1 = producer-box slot [r12+4832] -> [r12+4800]
 mov rax, qword ptr [r12 + 4832]
 mov qword ptr [r12 + 4800], rax
 mov rax, qword ptr [r12 + 4840]
 mov qword ptr [r12 + 4808], rax
  .section .rodata
  .Lrkfn526: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn526]
 lea rsi, [r12 + 4784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4768], rax
 mov qword ptr [r12 + 4776], rdx
 cmp eax, 99
 je xchain154_n202_α
 jmp xchain154_n217_α
 xchain154_n214_β:
 jmp xchain154_n202_α
# IR_LIT_INTEGER
 xchain154_n215_α:
 mov qword ptr [r12 + 4640], 6
 mov rax, qword ptr [rip + .Lx527_0]
 mov qword ptr [r12 + 4648], rax
 jmp xchain154_n218_α
 xchain154_n215_β:
 jmp xchain154_n213_α
.Lx527_0:
 .quad 1
# IR_VAR_REF local
 xchain154_n216_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4432], rax
 mov qword ptr [r12 + 4440], rdx
 jmp xchain154_n219_α
 xchain154_n216_β:
 jmp xchain154_n224_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n217_α:
 lea rax, [rip + xchain154_n202_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n217_β:
 jmp proc_cal_key_ω
 xchain154_n218_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4624] -> [r12+4592]
 mov rax, qword ptr [r12 + 4624]
 mov qword ptr [r12 + 4592], rax
 mov rax, qword ptr [r12 + 4632]
 mov qword ptr [r12 + 4600], rax
# marshal arg1 = producer-box slot [r12+4640] -> [r12+4608]
 mov rax, qword ptr [r12 + 4640]
 mov qword ptr [r12 + 4608], rax
 mov rax, qword ptr [r12 + 4648]
 mov qword ptr [r12 + 4616], rax
  .section .rodata
  .Lrkfn533: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn533]
 lea rsi, [r12 + 4592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4576], rax
 mov qword ptr [r12 + 4584], rdx
 cmp eax, 99
 je xchain154_n213_α
 jmp xchain154_n220_α
 xchain154_n218_β:
 jmp xchain154_n213_α
# IR_LIT_STRING
 xchain154_n219_α:
 mov qword ptr [r12 + 4448], 1
 mov rax, qword ptr [rip + .Lx534_0]
 mov qword ptr [r12 + 4456], rax
 jmp xchain154_n221_α
 xchain154_n219_β:
 jmp xchain154_n224_α
.Lx534_0:
 .quad .Lx534_0_s
.Lx534_0_s:
 .string "sep"
# IR_VAR_REF local
 xchain154_n220_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4544], rax
 mov qword ptr [r12 + 4552], rdx
 jmp xchain154_n222_α
 xchain154_n220_β:
 jmp xchain154_n213_α
 xchain154_n221_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4432] -> [r12+4400]
 mov rax, qword ptr [r12 + 4432]
 mov qword ptr [r12 + 4400], rax
 mov rax, qword ptr [r12 + 4440]
 mov qword ptr [r12 + 4408], rax
# marshal arg1 = producer-box slot [r12+4448] -> [r12+4416]
 mov rax, qword ptr [r12 + 4448]
 mov qword ptr [r12 + 4416], rax
 mov rax, qword ptr [r12 + 4456]
 mov qword ptr [r12 + 4424], rax
  .section .rodata
  .Lrkfn538: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn538]
 lea rsi, [r12 + 4400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4384], rax
 mov qword ptr [r12 + 4392], rdx
 cmp eax, 99
 je xchain154_n224_α
 jmp xchain154_n223_α
 xchain154_n221_β:
 jmp xchain154_n224_α
# IR_LIT_INTEGER
 xchain154_n222_α:
 mov qword ptr [r12 + 4560], 6
 mov rax, qword ptr [rip + .Lx539_0]
 mov qword ptr [r12 + 4568], rax
 jmp xchain154_n225_α
 xchain154_n222_β:
 jmp xchain154_n213_α
.Lx539_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n223_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4352], rax
 mov qword ptr [r12 + 4360], rdx
 jmp xchain154_n226_α
 xchain154_n223_β:
 jmp xchain154_n224_α
 xchain154_n224_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+4208]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 4208], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 4216], rax
  .section .rodata
  .Lrkfn543: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn543]
 lea rsi, [r12 + 4208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4192], rax
 mov qword ptr [r12 + 4200], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n227_α
 xchain154_n224_β:
 jmp proc_cal_key_ω
 xchain154_n225_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4544] -> [r12+4512]
 mov rax, qword ptr [r12 + 4544]
 mov qword ptr [r12 + 4512], rax
 mov rax, qword ptr [r12 + 4552]
 mov qword ptr [r12 + 4520], rax
# marshal arg1 = producer-box slot [r12+4560] -> [r12+4528]
 mov rax, qword ptr [r12 + 4560]
 mov qword ptr [r12 + 4528], rax
 mov rax, qword ptr [r12 + 4568]
 mov qword ptr [r12 + 4536], rax
  .section .rodata
  .Lrkfn545: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn545]
 lea rsi, [r12 + 4512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4496], rax
 mov qword ptr [r12 + 4504], rdx
 cmp eax, 99
 je xchain154_n213_α
 jmp xchain154_n228_α
 xchain154_n225_β:
 jmp xchain154_n213_α
# IR_LIT_INTEGER
 xchain154_n226_α:
 mov qword ptr [r12 + 4368], 6
 mov rax, qword ptr [rip + .Lx546_0]
 mov qword ptr [r12 + 4376], rax
 jmp xchain154_n229_α
 xchain154_n226_β:
 jmp xchain154_n224_α
.Lx546_0:
 .quad 4
# IR_VAR_REF local
 xchain154_n227_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4160], rax
 mov qword ptr [r12 + 4168], rdx
 jmp xchain154_n230_α
 xchain154_n227_β:
 jmp xchain154_n235_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n228_α:
 lea rax, [rip + xchain154_n213_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n228_β:
 jmp proc_cal_key_ω
 xchain154_n229_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4352] -> [r12+4320]
 mov rax, qword ptr [r12 + 4352]
 mov qword ptr [r12 + 4320], rax
 mov rax, qword ptr [r12 + 4360]
 mov qword ptr [r12 + 4328], rax
# marshal arg1 = producer-box slot [r12+4368] -> [r12+4336]
 mov rax, qword ptr [r12 + 4368]
 mov qword ptr [r12 + 4336], rax
 mov rax, qword ptr [r12 + 4376]
 mov qword ptr [r12 + 4344], rax
  .section .rodata
  .Lrkfn552: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn552]
 lea rsi, [r12 + 4320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4304], rax
 mov qword ptr [r12 + 4312], rdx
 cmp eax, 99
 je xchain154_n224_α
 jmp xchain154_n231_α
 xchain154_n229_β:
 jmp xchain154_n224_α
# IR_LIT_STRING
 xchain154_n230_α:
 mov qword ptr [r12 + 4176], 1
 mov rax, qword ptr [rip + .Lx553_0]
 mov qword ptr [r12 + 4184], rax
 jmp xchain154_n232_α
 xchain154_n230_β:
 jmp xchain154_n235_α
.Lx553_0:
 .quad .Lx553_0_s
.Lx553_0_s:
 .string "oct"
# IR_VAR_REF local
 xchain154_n231_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4272], rax
 mov qword ptr [r12 + 4280], rdx
 jmp xchain154_n233_α
 xchain154_n231_β:
 jmp xchain154_n224_α
 xchain154_n232_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4160] -> [r12+4128]
 mov rax, qword ptr [r12 + 4160]
 mov qword ptr [r12 + 4128], rax
 mov rax, qword ptr [r12 + 4168]
 mov qword ptr [r12 + 4136], rax
# marshal arg1 = producer-box slot [r12+4176] -> [r12+4144]
 mov rax, qword ptr [r12 + 4176]
 mov qword ptr [r12 + 4144], rax
 mov rax, qword ptr [r12 + 4184]
 mov qword ptr [r12 + 4152], rax
  .section .rodata
  .Lrkfn557: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn557]
 lea rsi, [r12 + 4128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4112], rax
 mov qword ptr [r12 + 4120], rdx
 cmp eax, 99
 je xchain154_n235_α
 jmp xchain154_n234_α
 xchain154_n232_β:
 jmp xchain154_n235_α
# IR_LIT_INTEGER
 xchain154_n233_α:
 mov qword ptr [r12 + 4288], 6
 mov rax, qword ptr [rip + .Lx558_0]
 mov qword ptr [r12 + 4296], rax
 jmp xchain154_n236_α
 xchain154_n233_β:
 jmp xchain154_n224_α
.Lx558_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n234_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4080], rax
 mov qword ptr [r12 + 4088], rdx
 jmp xchain154_n237_α
 xchain154_n234_β:
 jmp xchain154_n235_α
 xchain154_n235_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+3936]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 3936], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 3944], rax
  .section .rodata
  .Lrkfn562: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn562]
 lea rsi, [r12 + 3936]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3920], rax
 mov qword ptr [r12 + 3928], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n238_α
 xchain154_n235_β:
 jmp proc_cal_key_ω
 xchain154_n236_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4272] -> [r12+4240]
 mov rax, qword ptr [r12 + 4272]
 mov qword ptr [r12 + 4240], rax
 mov rax, qword ptr [r12 + 4280]
 mov qword ptr [r12 + 4248], rax
# marshal arg1 = producer-box slot [r12+4288] -> [r12+4256]
 mov rax, qword ptr [r12 + 4288]
 mov qword ptr [r12 + 4256], rax
 mov rax, qword ptr [r12 + 4296]
 mov qword ptr [r12 + 4264], rax
  .section .rodata
  .Lrkfn564: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn564]
 lea rsi, [r12 + 4240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4224], rax
 mov qword ptr [r12 + 4232], rdx
 cmp eax, 99
 je xchain154_n224_α
 jmp xchain154_n239_α
 xchain154_n236_β:
 jmp xchain154_n224_α
# IR_LIT_INTEGER
 xchain154_n237_α:
 mov qword ptr [r12 + 4096], 6
 mov rax, qword ptr [rip + .Lx565_0]
 mov qword ptr [r12 + 4104], rax
 jmp xchain154_n240_α
 xchain154_n237_β:
 jmp xchain154_n235_α
.Lx565_0:
 .quad 6
# IR_VAR_REF local
 xchain154_n238_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3888], rax
 mov qword ptr [r12 + 3896], rdx
 jmp xchain154_n241_α
 xchain154_n238_β:
 jmp xchain154_n246_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n239_α:
 lea rax, [rip + xchain154_n224_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n239_β:
 jmp proc_cal_key_ω
 xchain154_n240_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4080] -> [r12+4048]
 mov rax, qword ptr [r12 + 4080]
 mov qword ptr [r12 + 4048], rax
 mov rax, qword ptr [r12 + 4088]
 mov qword ptr [r12 + 4056], rax
# marshal arg1 = producer-box slot [r12+4096] -> [r12+4064]
 mov rax, qword ptr [r12 + 4096]
 mov qword ptr [r12 + 4064], rax
 mov rax, qword ptr [r12 + 4104]
 mov qword ptr [r12 + 4072], rax
  .section .rodata
  .Lrkfn571: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn571]
 lea rsi, [r12 + 4048]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4032], rax
 mov qword ptr [r12 + 4040], rdx
 cmp eax, 99
 je xchain154_n235_α
 jmp xchain154_n242_α
 xchain154_n240_β:
 jmp xchain154_n235_α
# IR_LIT_STRING
 xchain154_n241_α:
 mov qword ptr [r12 + 3904], 1
 mov rax, qword ptr [rip + .Lx572_0]
 mov qword ptr [r12 + 3912], rax
 jmp xchain154_n243_α
 xchain154_n241_β:
 jmp xchain154_n246_α
.Lx572_0:
 .quad .Lx572_0_s
.Lx572_0_s:
 .string "nov"
# IR_VAR_REF local
 xchain154_n242_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4000], rax
 mov qword ptr [r12 + 4008], rdx
 jmp xchain154_n244_α
 xchain154_n242_β:
 jmp xchain154_n235_α
 xchain154_n243_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3888] -> [r12+3856]
 mov rax, qword ptr [r12 + 3888]
 mov qword ptr [r12 + 3856], rax
 mov rax, qword ptr [r12 + 3896]
 mov qword ptr [r12 + 3864], rax
# marshal arg1 = producer-box slot [r12+3904] -> [r12+3872]
 mov rax, qword ptr [r12 + 3904]
 mov qword ptr [r12 + 3872], rax
 mov rax, qword ptr [r12 + 3912]
 mov qword ptr [r12 + 3880], rax
  .section .rodata
  .Lrkfn576: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn576]
 lea rsi, [r12 + 3856]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3840], rax
 mov qword ptr [r12 + 3848], rdx
 cmp eax, 99
 je xchain154_n246_α
 jmp xchain154_n245_α
 xchain154_n243_β:
 jmp xchain154_n246_α
# IR_LIT_INTEGER
 xchain154_n244_α:
 mov qword ptr [r12 + 4016], 6
 mov rax, qword ptr [rip + .Lx577_0]
 mov qword ptr [r12 + 4024], rax
 jmp xchain154_n247_α
 xchain154_n244_β:
 jmp xchain154_n235_α
.Lx577_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n245_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3808], rax
 mov qword ptr [r12 + 3816], rdx
 jmp xchain154_n248_α
 xchain154_n245_β:
 jmp xchain154_n246_α
 xchain154_n246_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+3664]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 3664], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 3672], rax
  .section .rodata
  .Lrkfn581: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn581]
 lea rsi, [r12 + 3664]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3648], rax
 mov qword ptr [r12 + 3656], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n249_α
 xchain154_n246_β:
 jmp proc_cal_key_ω
 xchain154_n247_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4000] -> [r12+3968]
 mov rax, qword ptr [r12 + 4000]
 mov qword ptr [r12 + 3968], rax
 mov rax, qword ptr [r12 + 4008]
 mov qword ptr [r12 + 3976], rax
# marshal arg1 = producer-box slot [r12+4016] -> [r12+3984]
 mov rax, qword ptr [r12 + 4016]
 mov qword ptr [r12 + 3984], rax
 mov rax, qword ptr [r12 + 4024]
 mov qword ptr [r12 + 3992], rax
  .section .rodata
  .Lrkfn583: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn583]
 lea rsi, [r12 + 3968]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3952], rax
 mov qword ptr [r12 + 3960], rdx
 cmp eax, 99
 je xchain154_n235_α
 jmp xchain154_n250_α
 xchain154_n247_β:
 jmp xchain154_n235_α
# IR_LIT_INTEGER
 xchain154_n248_α:
 mov qword ptr [r12 + 3824], 6
 mov rax, qword ptr [rip + .Lx584_0]
 mov qword ptr [r12 + 3832], rax
 jmp xchain154_n251_α
 xchain154_n248_β:
 jmp xchain154_n246_α
.Lx584_0:
 .quad 2
# IR_VAR_REF local
 xchain154_n249_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3616], rax
 mov qword ptr [r12 + 3624], rdx
 jmp xchain154_n252_α
 xchain154_n249_β:
 jmp xchain154_n257_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n250_α:
 lea rax, [rip + xchain154_n235_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n250_β:
 jmp proc_cal_key_ω
 xchain154_n251_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3808] -> [r12+3776]
 mov rax, qword ptr [r12 + 3808]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 3816]
 mov qword ptr [r12 + 3784], rax
# marshal arg1 = producer-box slot [r12+3824] -> [r12+3792]
 mov rax, qword ptr [r12 + 3824]
 mov qword ptr [r12 + 3792], rax
 mov rax, qword ptr [r12 + 3832]
 mov qword ptr [r12 + 3800], rax
  .section .rodata
  .Lrkfn590: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn590]
 lea rsi, [r12 + 3776]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3760], rax
 mov qword ptr [r12 + 3768], rdx
 cmp eax, 99
 je xchain154_n246_α
 jmp xchain154_n253_α
 xchain154_n251_β:
 jmp xchain154_n246_α
# IR_LIT_STRING
 xchain154_n252_α:
 mov qword ptr [r12 + 3632], 1
 mov rax, qword ptr [rip + .Lx591_0]
 mov qword ptr [r12 + 3640], rax
 jmp xchain154_n254_α
 xchain154_n252_β:
 jmp xchain154_n257_α
.Lx591_0:
 .quad .Lx591_0_s
.Lx591_0_s:
 .string "dec"
# IR_VAR_REF local
 xchain154_n253_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3728], rax
 mov qword ptr [r12 + 3736], rdx
 jmp xchain154_n255_α
 xchain154_n253_β:
 jmp xchain154_n246_α
 xchain154_n254_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3616] -> [r12+3584]
 mov rax, qword ptr [r12 + 3616]
 mov qword ptr [r12 + 3584], rax
 mov rax, qword ptr [r12 + 3624]
 mov qword ptr [r12 + 3592], rax
# marshal arg1 = producer-box slot [r12+3632] -> [r12+3600]
 mov rax, qword ptr [r12 + 3632]
 mov qword ptr [r12 + 3600], rax
 mov rax, qword ptr [r12 + 3640]
 mov qword ptr [r12 + 3608], rax
  .section .rodata
  .Lrkfn595: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn595]
 lea rsi, [r12 + 3584]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3568], rax
 mov qword ptr [r12 + 3576], rdx
 cmp eax, 99
 je xchain154_n257_α
 jmp xchain154_n256_α
 xchain154_n254_β:
 jmp xchain154_n257_α
# IR_LIT_INTEGER
 xchain154_n255_α:
 mov qword ptr [r12 + 3744], 6
 mov rax, qword ptr [rip + .Lx596_0]
 mov qword ptr [r12 + 3752], rax
 jmp xchain154_n258_α
 xchain154_n255_β:
 jmp xchain154_n246_α
.Lx596_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n256_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3536], rax
 mov qword ptr [r12 + 3544], rdx
 jmp xchain154_n259_α
 xchain154_n256_β:
 jmp xchain154_n257_α
 xchain154_n257_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+3392]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 3392], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 3400], rax
  .section .rodata
  .Lrkfn600: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn600]
 lea rsi, [r12 + 3392]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3376], rax
 mov qword ptr [r12 + 3384], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n260_α
 xchain154_n257_β:
 jmp proc_cal_key_ω
 xchain154_n258_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3728] -> [r12+3696]
 mov rax, qword ptr [r12 + 3728]
 mov qword ptr [r12 + 3696], rax
 mov rax, qword ptr [r12 + 3736]
 mov qword ptr [r12 + 3704], rax
# marshal arg1 = producer-box slot [r12+3744] -> [r12+3712]
 mov rax, qword ptr [r12 + 3744]
 mov qword ptr [r12 + 3712], rax
 mov rax, qword ptr [r12 + 3752]
 mov qword ptr [r12 + 3720], rax
  .section .rodata
  .Lrkfn602: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn602]
 lea rsi, [r12 + 3696]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3680], rax
 mov qword ptr [r12 + 3688], rdx
 cmp eax, 99
 je xchain154_n246_α
 jmp xchain154_n261_α
 xchain154_n258_β:
 jmp xchain154_n246_α
# IR_LIT_INTEGER
 xchain154_n259_α:
 mov qword ptr [r12 + 3552], 6
 mov rax, qword ptr [rip + .Lx603_0]
 mov qword ptr [r12 + 3560], rax
 jmp xchain154_n262_α
 xchain154_n259_β:
 jmp xchain154_n257_α
.Lx603_0:
 .quad 4
# IR_VAR_REF local
 xchain154_n260_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3344], rax
 mov qword ptr [r12 + 3352], rdx
 jmp xchain154_n263_α
 xchain154_n260_β:
 jmp xchain154_n268_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n261_α:
 lea rax, [rip + xchain154_n246_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n261_β:
 jmp proc_cal_key_ω
 xchain154_n262_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3536] -> [r12+3504]
 mov rax, qword ptr [r12 + 3536]
 mov qword ptr [r12 + 3504], rax
 mov rax, qword ptr [r12 + 3544]
 mov qword ptr [r12 + 3512], rax
# marshal arg1 = producer-box slot [r12+3552] -> [r12+3520]
 mov rax, qword ptr [r12 + 3552]
 mov qword ptr [r12 + 3520], rax
 mov rax, qword ptr [r12 + 3560]
 mov qword ptr [r12 + 3528], rax
  .section .rodata
  .Lrkfn609: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn609]
 lea rsi, [r12 + 3504]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3488], rax
 mov qword ptr [r12 + 3496], rdx
 cmp eax, 99
 je xchain154_n257_α
 jmp xchain154_n264_α
 xchain154_n262_β:
 jmp xchain154_n257_α
# IR_LIT_STRING
 xchain154_n263_α:
 mov qword ptr [r12 + 3360], 1
 mov rax, qword ptr [rip + .Lx610_0]
 mov qword ptr [r12 + 3368], rax
 jmp xchain154_n265_α
 xchain154_n263_β:
 jmp xchain154_n268_α
.Lx610_0:
 .quad .Lx610_0_s
.Lx610_0_s:
 .string "January"
# IR_VAR_REF local
 xchain154_n264_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3456], rax
 mov qword ptr [r12 + 3464], rdx
 jmp xchain154_n266_α
 xchain154_n264_β:
 jmp xchain154_n257_α
 xchain154_n265_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3344] -> [r12+3312]
 mov rax, qword ptr [r12 + 3344]
 mov qword ptr [r12 + 3312], rax
 mov rax, qword ptr [r12 + 3352]
 mov qword ptr [r12 + 3320], rax
# marshal arg1 = producer-box slot [r12+3360] -> [r12+3328]
 mov rax, qword ptr [r12 + 3360]
 mov qword ptr [r12 + 3328], rax
 mov rax, qword ptr [r12 + 3368]
 mov qword ptr [r12 + 3336], rax
  .section .rodata
  .Lrkfn614: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn614]
 lea rsi, [r12 + 3312]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3296], rax
 mov qword ptr [r12 + 3304], rdx
 cmp eax, 99
 je xchain154_n268_α
 jmp xchain154_n267_α
 xchain154_n265_β:
 jmp xchain154_n268_α
# IR_LIT_INTEGER
 xchain154_n266_α:
 mov qword ptr [r12 + 3472], 6
 mov rax, qword ptr [rip + .Lx615_0]
 mov qword ptr [r12 + 3480], rax
 jmp xchain154_n269_α
 xchain154_n266_β:
 jmp xchain154_n257_α
.Lx615_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n267_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3264], rax
 mov qword ptr [r12 + 3272], rdx
 jmp xchain154_n270_α
 xchain154_n267_β:
 jmp xchain154_n268_α
 xchain154_n268_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+3120]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 3120], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 3128], rax
  .section .rodata
  .Lrkfn619: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn619]
 lea rsi, [r12 + 3120]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3104], rax
 mov qword ptr [r12 + 3112], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n271_α
 xchain154_n268_β:
 jmp proc_cal_key_ω
 xchain154_n269_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3456] -> [r12+3424]
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 3424], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 3432], rax
# marshal arg1 = producer-box slot [r12+3472] -> [r12+3440]
 mov rax, qword ptr [r12 + 3472]
 mov qword ptr [r12 + 3440], rax
 mov rax, qword ptr [r12 + 3480]
 mov qword ptr [r12 + 3448], rax
  .section .rodata
  .Lrkfn621: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn621]
 lea rsi, [r12 + 3424]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3408], rax
 mov qword ptr [r12 + 3416], rdx
 cmp eax, 99
 je xchain154_n257_α
 jmp xchain154_n272_α
 xchain154_n269_β:
 jmp xchain154_n257_α
# IR_LIT_INTEGER
 xchain154_n270_α:
 mov qword ptr [r12 + 3280], 6
 mov rax, qword ptr [rip + .Lx622_0]
 mov qword ptr [r12 + 3288], rax
 jmp xchain154_n273_α
 xchain154_n270_β:
 jmp xchain154_n268_α
.Lx622_0:
 .quad 6
# IR_VAR_REF local
 xchain154_n271_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3072], rax
 mov qword ptr [r12 + 3080], rdx
 jmp xchain154_n274_α
 xchain154_n271_β:
 jmp xchain154_n279_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n272_α:
 lea rax, [rip + xchain154_n257_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n272_β:
 jmp proc_cal_key_ω
 xchain154_n273_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3264] -> [r12+3232]
 mov rax, qword ptr [r12 + 3264]
 mov qword ptr [r12 + 3232], rax
 mov rax, qword ptr [r12 + 3272]
 mov qword ptr [r12 + 3240], rax
# marshal arg1 = producer-box slot [r12+3280] -> [r12+3248]
 mov rax, qword ptr [r12 + 3280]
 mov qword ptr [r12 + 3248], rax
 mov rax, qword ptr [r12 + 3288]
 mov qword ptr [r12 + 3256], rax
  .section .rodata
  .Lrkfn628: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn628]
 lea rsi, [r12 + 3232]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3216], rax
 mov qword ptr [r12 + 3224], rdx
 cmp eax, 99
 je xchain154_n268_α
 jmp xchain154_n275_α
 xchain154_n273_β:
 jmp xchain154_n268_α
# IR_LIT_STRING
 xchain154_n274_α:
 mov qword ptr [r12 + 3088], 1
 mov rax, qword ptr [rip + .Lx629_0]
 mov qword ptr [r12 + 3096], rax
 jmp xchain154_n276_α
 xchain154_n274_β:
 jmp xchain154_n279_α
.Lx629_0:
 .quad .Lx629_0_s
.Lx629_0_s:
 .string "February"
# IR_VAR_REF local
 xchain154_n275_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3184], rax
 mov qword ptr [r12 + 3192], rdx
 jmp xchain154_n277_α
 xchain154_n275_β:
 jmp xchain154_n268_α
 xchain154_n276_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3072] -> [r12+3040]
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 3040], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 3048], rax
# marshal arg1 = producer-box slot [r12+3088] -> [r12+3056]
 mov rax, qword ptr [r12 + 3088]
 mov qword ptr [r12 + 3056], rax
 mov rax, qword ptr [r12 + 3096]
 mov qword ptr [r12 + 3064], rax
  .section .rodata
  .Lrkfn633: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn633]
 lea rsi, [r12 + 3040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 cmp eax, 99
 je xchain154_n279_α
 jmp xchain154_n278_α
 xchain154_n276_β:
 jmp xchain154_n279_α
# IR_LIT_INTEGER
 xchain154_n277_α:
 mov qword ptr [r12 + 3200], 6
 mov rax, qword ptr [rip + .Lx634_0]
 mov qword ptr [r12 + 3208], rax
 jmp xchain154_n280_α
 xchain154_n277_β:
 jmp xchain154_n268_α
.Lx634_0:
 .quad 1
# IR_VAR_REF local
 xchain154_n278_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2992], rax
 mov qword ptr [r12 + 3000], rdx
 jmp xchain154_n281_α
 xchain154_n278_β:
 jmp xchain154_n279_α
 xchain154_n279_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+2848]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 2848], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 2856], rax
  .section .rodata
  .Lrkfn638: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn638]
 lea rsi, [r12 + 2848]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2832], rax
 mov qword ptr [r12 + 2840], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n282_α
 xchain154_n279_β:
 jmp proc_cal_key_ω
 xchain154_n280_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3184] -> [r12+3152]
 mov rax, qword ptr [r12 + 3184]
 mov qword ptr [r12 + 3152], rax
 mov rax, qword ptr [r12 + 3192]
 mov qword ptr [r12 + 3160], rax
# marshal arg1 = producer-box slot [r12+3200] -> [r12+3168]
 mov rax, qword ptr [r12 + 3200]
 mov qword ptr [r12 + 3168], rax
 mov rax, qword ptr [r12 + 3208]
 mov qword ptr [r12 + 3176], rax
  .section .rodata
  .Lrkfn640: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn640]
 lea rsi, [r12 + 3152]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
 cmp eax, 99
 je xchain154_n268_α
 jmp xchain154_n283_α
 xchain154_n280_β:
 jmp xchain154_n268_α
# IR_LIT_INTEGER
 xchain154_n281_α:
 mov qword ptr [r12 + 3008], 6
 mov rax, qword ptr [rip + .Lx641_0]
 mov qword ptr [r12 + 3016], rax
 jmp xchain154_n284_α
 xchain154_n281_β:
 jmp xchain154_n279_α
.Lx641_0:
 .quad 2
# IR_VAR_REF local
 xchain154_n282_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2800], rax
 mov qword ptr [r12 + 2808], rdx
 jmp xchain154_n285_α
 xchain154_n282_β:
 jmp xchain154_n290_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n283_α:
 lea rax, [rip + xchain154_n268_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n283_β:
 jmp proc_cal_key_ω
 xchain154_n284_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2992] -> [r12+2960]
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 2960], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 2968], rax
# marshal arg1 = producer-box slot [r12+3008] -> [r12+2976]
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 2976], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 2984], rax
  .section .rodata
  .Lrkfn647: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn647]
 lea rsi, [r12 + 2960]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2944], rax
 mov qword ptr [r12 + 2952], rdx
 cmp eax, 99
 je xchain154_n279_α
 jmp xchain154_n286_α
 xchain154_n284_β:
 jmp xchain154_n279_α
# IR_LIT_STRING
 xchain154_n285_α:
 mov qword ptr [r12 + 2816], 1
 mov rax, qword ptr [rip + .Lx648_0]
 mov qword ptr [r12 + 2824], rax
 jmp xchain154_n287_α
 xchain154_n285_β:
 jmp xchain154_n290_α
.Lx648_0:
 .quad .Lx648_0_s
.Lx648_0_s:
 .string "March"
# IR_VAR_REF local
 xchain154_n286_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 jmp xchain154_n288_α
 xchain154_n286_β:
 jmp xchain154_n279_α
 xchain154_n287_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2800] -> [r12+2768]
 mov rax, qword ptr [r12 + 2800]
 mov qword ptr [r12 + 2768], rax
 mov rax, qword ptr [r12 + 2808]
 mov qword ptr [r12 + 2776], rax
# marshal arg1 = producer-box slot [r12+2816] -> [r12+2784]
 mov rax, qword ptr [r12 + 2816]
 mov qword ptr [r12 + 2784], rax
 mov rax, qword ptr [r12 + 2824]
 mov qword ptr [r12 + 2792], rax
  .section .rodata
  .Lrkfn652: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn652]
 lea rsi, [r12 + 2768]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 cmp eax, 99
 je xchain154_n290_α
 jmp xchain154_n289_α
 xchain154_n287_β:
 jmp xchain154_n290_α
# IR_LIT_INTEGER
 xchain154_n288_α:
 mov qword ptr [r12 + 2928], 6
 mov rax, qword ptr [rip + .Lx653_0]
 mov qword ptr [r12 + 2936], rax
 jmp xchain154_n291_α
 xchain154_n288_β:
 jmp xchain154_n279_α
.Lx653_0:
 .quad 1
# IR_VAR_REF local
 xchain154_n289_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2720], rax
 mov qword ptr [r12 + 2728], rdx
 jmp xchain154_n292_α
 xchain154_n289_β:
 jmp xchain154_n290_α
 xchain154_n290_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+2576]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 2576], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 2584], rax
  .section .rodata
  .Lrkfn657: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn657]
 lea rsi, [r12 + 2576]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n293_α
 xchain154_n290_β:
 jmp proc_cal_key_ω
 xchain154_n291_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2912] -> [r12+2880]
 mov rax, qword ptr [r12 + 2912]
 mov qword ptr [r12 + 2880], rax
 mov rax, qword ptr [r12 + 2920]
 mov qword ptr [r12 + 2888], rax
# marshal arg1 = producer-box slot [r12+2928] -> [r12+2896]
 mov rax, qword ptr [r12 + 2928]
 mov qword ptr [r12 + 2896], rax
 mov rax, qword ptr [r12 + 2936]
 mov qword ptr [r12 + 2904], rax
  .section .rodata
  .Lrkfn659: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn659]
 lea rsi, [r12 + 2880]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], rdx
 cmp eax, 99
 je xchain154_n279_α
 jmp xchain154_n294_α
 xchain154_n291_β:
 jmp xchain154_n279_α
# IR_LIT_INTEGER
 xchain154_n292_α:
 mov qword ptr [r12 + 2736], 6
 mov rax, qword ptr [rip + .Lx660_0]
 mov qword ptr [r12 + 2744], rax
 jmp xchain154_n295_α
 xchain154_n292_β:
 jmp xchain154_n290_α
.Lx660_0:
 .quad 2
# IR_VAR_REF local
 xchain154_n293_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 jmp xchain154_n296_α
 xchain154_n293_β:
 jmp xchain154_n301_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n294_α:
 lea rax, [rip + xchain154_n279_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n294_β:
 jmp proc_cal_key_ω
 xchain154_n295_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2720] -> [r12+2688]
 mov rax, qword ptr [r12 + 2720]
 mov qword ptr [r12 + 2688], rax
 mov rax, qword ptr [r12 + 2728]
 mov qword ptr [r12 + 2696], rax
# marshal arg1 = producer-box slot [r12+2736] -> [r12+2704]
 mov rax, qword ptr [r12 + 2736]
 mov qword ptr [r12 + 2704], rax
 mov rax, qword ptr [r12 + 2744]
 mov qword ptr [r12 + 2712], rax
  .section .rodata
  .Lrkfn666: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn666]
 lea rsi, [r12 + 2688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 cmp eax, 99
 je xchain154_n290_α
 jmp xchain154_n297_α
 xchain154_n295_β:
 jmp xchain154_n290_α
# IR_LIT_STRING
 xchain154_n296_α:
 mov qword ptr [r12 + 2544], 1
 mov rax, qword ptr [rip + .Lx667_0]
 mov qword ptr [r12 + 2552], rax
 jmp xchain154_n298_α
 xchain154_n296_β:
 jmp xchain154_n301_α
.Lx667_0:
 .quad .Lx667_0_s
.Lx667_0_s:
 .string "April"
# IR_VAR_REF local
 xchain154_n297_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 jmp xchain154_n299_α
 xchain154_n297_β:
 jmp xchain154_n290_α
 xchain154_n298_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2528] -> [r12+2496]
 mov rax, qword ptr [r12 + 2528]
 mov qword ptr [r12 + 2496], rax
 mov rax, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 2504], rax
# marshal arg1 = producer-box slot [r12+2544] -> [r12+2512]
 mov rax, qword ptr [r12 + 2544]
 mov qword ptr [r12 + 2512], rax
 mov rax, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 2520], rax
  .section .rodata
  .Lrkfn671: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn671]
 lea rsi, [r12 + 2496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 cmp eax, 99
 je xchain154_n301_α
 jmp xchain154_n300_α
 xchain154_n298_β:
 jmp xchain154_n301_α
# IR_LIT_INTEGER
 xchain154_n299_α:
 mov qword ptr [r12 + 2656], 6
 mov rax, qword ptr [rip + .Lx672_0]
 mov qword ptr [r12 + 2664], rax
 jmp xchain154_n302_α
 xchain154_n299_β:
 jmp xchain154_n290_α
.Lx672_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n300_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 jmp xchain154_n303_α
 xchain154_n300_β:
 jmp xchain154_n301_α
 xchain154_n301_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+2304]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 2304], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 2312], rax
  .section .rodata
  .Lrkfn676: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn676]
 lea rsi, [r12 + 2304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n304_α
 xchain154_n301_β:
 jmp proc_cal_key_ω
 xchain154_n302_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2640] -> [r12+2608]
 mov rax, qword ptr [r12 + 2640]
 mov qword ptr [r12 + 2608], rax
 mov rax, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 2616], rax
# marshal arg1 = producer-box slot [r12+2656] -> [r12+2624]
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 2624], rax
 mov rax, qword ptr [r12 + 2664]
 mov qword ptr [r12 + 2632], rax
  .section .rodata
  .Lrkfn678: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn678]
 lea rsi, [r12 + 2608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je xchain154_n290_α
 jmp xchain154_n305_α
 xchain154_n302_β:
 jmp xchain154_n290_α
# IR_LIT_INTEGER
 xchain154_n303_α:
 mov qword ptr [r12 + 2464], 6
 mov rax, qword ptr [rip + .Lx679_0]
 mov qword ptr [r12 + 2472], rax
 jmp xchain154_n306_α
 xchain154_n303_β:
 jmp xchain154_n301_α
.Lx679_0:
 .quad 5
# IR_VAR_REF local
 xchain154_n304_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 jmp xchain154_n307_α
 xchain154_n304_β:
 jmp xchain154_n312_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n305_α:
 lea rax, [rip + xchain154_n290_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n305_β:
 jmp proc_cal_key_ω
 xchain154_n306_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2448] -> [r12+2416]
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 2416], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 2424], rax
# marshal arg1 = producer-box slot [r12+2464] -> [r12+2432]
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 2432], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 2440], rax
  .section .rodata
  .Lrkfn685: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn685]
 lea rsi, [r12 + 2416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je xchain154_n301_α
 jmp xchain154_n308_α
 xchain154_n306_β:
 jmp xchain154_n301_α
# IR_LIT_STRING
 xchain154_n307_α:
 mov qword ptr [r12 + 2272], 1
 mov rax, qword ptr [rip + .Lx686_0]
 mov qword ptr [r12 + 2280], rax
 jmp xchain154_n309_α
 xchain154_n307_β:
 jmp xchain154_n312_α
.Lx686_0:
 .quad .Lx686_0_s
.Lx686_0_s:
 .string "May"
# IR_VAR_REF local
 xchain154_n308_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2368], rax
 mov qword ptr [r12 + 2376], rdx
 jmp xchain154_n310_α
 xchain154_n308_β:
 jmp xchain154_n301_α
 xchain154_n309_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2256] -> [r12+2224]
 mov rax, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2232], rax
# marshal arg1 = producer-box slot [r12+2272] -> [r12+2240]
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 2240], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2248], rax
  .section .rodata
  .Lrkfn690: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn690]
 lea rsi, [r12 + 2224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 cmp eax, 99
 je xchain154_n312_α
 jmp xchain154_n311_α
 xchain154_n309_β:
 jmp xchain154_n312_α
# IR_LIT_INTEGER
 xchain154_n310_α:
 mov qword ptr [r12 + 2384], 6
 mov rax, qword ptr [rip + .Lx691_0]
 mov qword ptr [r12 + 2392], rax
 jmp xchain154_n313_α
 xchain154_n310_β:
 jmp xchain154_n301_α
.Lx691_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n311_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain154_n314_α
 xchain154_n311_β:
 jmp xchain154_n312_α
 xchain154_n312_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+2032]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 2040], rax
  .section .rodata
  .Lrkfn695: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn695]
 lea rsi, [r12 + 2032]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n315_α
 xchain154_n312_β:
 jmp proc_cal_key_ω
 xchain154_n313_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2368] -> [r12+2336]
 mov rax, qword ptr [r12 + 2368]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 2376]
 mov qword ptr [r12 + 2344], rax
# marshal arg1 = producer-box slot [r12+2384] -> [r12+2352]
 mov rax, qword ptr [r12 + 2384]
 mov qword ptr [r12 + 2352], rax
 mov rax, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 2360], rax
  .section .rodata
  .Lrkfn697: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn697]
 lea rsi, [r12 + 2336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 cmp eax, 99
 je xchain154_n301_α
 jmp xchain154_n316_α
 xchain154_n313_β:
 jmp xchain154_n301_α
# IR_LIT_INTEGER
 xchain154_n314_α:
 mov qword ptr [r12 + 2192], 6
 mov rax, qword ptr [rip + .Lx698_0]
 mov qword ptr [r12 + 2200], rax
 jmp xchain154_n317_α
 xchain154_n314_β:
 jmp xchain154_n312_α
.Lx698_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n315_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xchain154_n318_α
 xchain154_n315_β:
 jmp xchain154_n323_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n316_α:
 lea rax, [rip + xchain154_n301_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n316_β:
 jmp proc_cal_key_ω
 xchain154_n317_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2176] -> [r12+2144]
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 2144], rax
 mov rax, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 2152], rax
# marshal arg1 = producer-box slot [r12+2192] -> [r12+2160]
 mov rax, qword ptr [r12 + 2192]
 mov qword ptr [r12 + 2160], rax
 mov rax, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 2168], rax
  .section .rodata
  .Lrkfn704: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn704]
 lea rsi, [r12 + 2144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 cmp eax, 99
 je xchain154_n312_α
 jmp xchain154_n319_α
 xchain154_n317_β:
 jmp xchain154_n312_α
# IR_LIT_STRING
 xchain154_n318_α:
 mov qword ptr [r12 + 2000], 1
 mov rax, qword ptr [rip + .Lx705_0]
 mov qword ptr [r12 + 2008], rax
 jmp xchain154_n320_α
 xchain154_n318_β:
 jmp xchain154_n323_α
.Lx705_0:
 .quad .Lx705_0_s
.Lx705_0_s:
 .string "June"
# IR_VAR_REF local
 xchain154_n319_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain154_n321_α
 xchain154_n319_β:
 jmp xchain154_n312_α
 xchain154_n320_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1984] -> [r12+1952]
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1960], rax
# marshal arg1 = producer-box slot [r12+2000] -> [r12+1968]
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 1976], rax
  .section .rodata
  .Lrkfn709: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn709]
 lea rsi, [r12 + 1952]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 cmp eax, 99
 je xchain154_n323_α
 jmp xchain154_n322_α
 xchain154_n320_β:
 jmp xchain154_n323_α
# IR_LIT_INTEGER
 xchain154_n321_α:
 mov qword ptr [r12 + 2112], 6
 mov rax, qword ptr [rip + .Lx710_0]
 mov qword ptr [r12 + 2120], rax
 jmp xchain154_n324_α
 xchain154_n321_β:
 jmp xchain154_n312_α
.Lx710_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n322_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain154_n325_α
 xchain154_n322_β:
 jmp xchain154_n323_α
 xchain154_n323_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+1760]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1768], rax
  .section .rodata
  .Lrkfn714: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn714]
 lea rsi, [r12 + 1760]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n326_α
 xchain154_n323_β:
 jmp proc_cal_key_ω
 xchain154_n324_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2096] -> [r12+2064]
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2072], rax
# marshal arg1 = producer-box slot [r12+2112] -> [r12+2080]
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 2088], rax
  .section .rodata
  .Lrkfn716: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn716]
 lea rsi, [r12 + 2064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 cmp eax, 99
 je xchain154_n312_α
 jmp xchain154_n327_α
 xchain154_n324_β:
 jmp xchain154_n312_α
# IR_LIT_INTEGER
 xchain154_n325_α:
 mov qword ptr [r12 + 1920], 6
 mov rax, qword ptr [rip + .Lx717_0]
 mov qword ptr [r12 + 1928], rax
 jmp xchain154_n328_α
 xchain154_n325_β:
 jmp xchain154_n323_α
.Lx717_0:
 .quad 3
# IR_VAR_REF local
 xchain154_n326_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain154_n329_α
 xchain154_n326_β:
 jmp xchain154_n334_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n327_α:
 lea rax, [rip + xchain154_n312_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n327_β:
 jmp proc_cal_key_ω
 xchain154_n328_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1904] -> [r12+1872]
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1880], rax
# marshal arg1 = producer-box slot [r12+1920] -> [r12+1888]
 mov rax, qword ptr [r12 + 1920]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 1896], rax
  .section .rodata
  .Lrkfn723: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn723]
 lea rsi, [r12 + 1872]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 cmp eax, 99
 je xchain154_n323_α
 jmp xchain154_n330_α
 xchain154_n328_β:
 jmp xchain154_n323_α
# IR_LIT_STRING
 xchain154_n329_α:
 mov qword ptr [r12 + 1728], 1
 mov rax, qword ptr [rip + .Lx724_0]
 mov qword ptr [r12 + 1736], rax
 jmp xchain154_n331_α
 xchain154_n329_β:
 jmp xchain154_n334_α
.Lx724_0:
 .quad .Lx724_0_s
.Lx724_0_s:
 .string "July"
# IR_VAR_REF local
 xchain154_n330_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 jmp xchain154_n332_α
 xchain154_n330_β:
 jmp xchain154_n323_α
 xchain154_n331_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1712] -> [r12+1680]
 mov rax, qword ptr [r12 + 1712]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 1688], rax
# marshal arg1 = producer-box slot [r12+1728] -> [r12+1696]
 mov rax, qword ptr [r12 + 1728]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 1704], rax
  .section .rodata
  .Lrkfn728: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn728]
 lea rsi, [r12 + 1680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 cmp eax, 99
 je xchain154_n334_α
 jmp xchain154_n333_α
 xchain154_n331_β:
 jmp xchain154_n334_α
# IR_LIT_INTEGER
 xchain154_n332_α:
 mov qword ptr [r12 + 1840], 6
 mov rax, qword ptr [rip + .Lx729_0]
 mov qword ptr [r12 + 1848], rax
 jmp xchain154_n335_α
 xchain154_n332_β:
 jmp xchain154_n323_α
.Lx729_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n333_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain154_n336_α
 xchain154_n333_β:
 jmp xchain154_n334_α
 xchain154_n334_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+1488]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1496], rax
  .section .rodata
  .Lrkfn733: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn733]
 lea rsi, [r12 + 1488]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n337_α
 xchain154_n334_β:
 jmp proc_cal_key_ω
 xchain154_n335_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1824] -> [r12+1792]
 mov rax, qword ptr [r12 + 1824]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 1800], rax
# marshal arg1 = producer-box slot [r12+1840] -> [r12+1808]
 mov rax, qword ptr [r12 + 1840]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 1848]
 mov qword ptr [r12 + 1816], rax
  .section .rodata
  .Lrkfn735: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn735]
 lea rsi, [r12 + 1792]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 cmp eax, 99
 je xchain154_n323_α
 jmp xchain154_n338_α
 xchain154_n335_β:
 jmp xchain154_n323_α
# IR_LIT_INTEGER
 xchain154_n336_α:
 mov qword ptr [r12 + 1648], 6
 mov rax, qword ptr [rip + .Lx736_0]
 mov qword ptr [r12 + 1656], rax
 jmp xchain154_n339_α
 xchain154_n336_β:
 jmp xchain154_n334_α
.Lx736_0:
 .quad 5
# IR_VAR_REF local
 xchain154_n337_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain154_n340_α
 xchain154_n337_β:
 jmp xchain154_n345_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n338_α:
 lea rax, [rip + xchain154_n323_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n338_β:
 jmp proc_cal_key_ω
 xchain154_n339_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1632] -> [r12+1600]
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1608], rax
# marshal arg1 = producer-box slot [r12+1648] -> [r12+1616]
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 1624], rax
  .section .rodata
  .Lrkfn742: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn742]
 lea rsi, [r12 + 1600]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 cmp eax, 99
 je xchain154_n334_α
 jmp xchain154_n341_α
 xchain154_n339_β:
 jmp xchain154_n334_α
# IR_LIT_STRING
 xchain154_n340_α:
 mov qword ptr [r12 + 1456], 1
 mov rax, qword ptr [rip + .Lx743_0]
 mov qword ptr [r12 + 1464], rax
 jmp xchain154_n342_α
 xchain154_n340_β:
 jmp xchain154_n345_α
.Lx743_0:
 .quad .Lx743_0_s
.Lx743_0_s:
 .string "August"
# IR_VAR_REF local
 xchain154_n341_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain154_n343_α
 xchain154_n341_β:
 jmp xchain154_n334_α
 xchain154_n342_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1440] -> [r12+1408]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1416], rax
# marshal arg1 = producer-box slot [r12+1456] -> [r12+1424]
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1432], rax
  .section .rodata
  .Lrkfn747: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn747]
 lea rsi, [r12 + 1408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 cmp eax, 99
 je xchain154_n345_α
 jmp xchain154_n344_α
 xchain154_n342_β:
 jmp xchain154_n345_α
# IR_LIT_INTEGER
 xchain154_n343_α:
 mov qword ptr [r12 + 1568], 6
 mov rax, qword ptr [rip + .Lx748_0]
 mov qword ptr [r12 + 1576], rax
 jmp xchain154_n346_α
 xchain154_n343_β:
 jmp xchain154_n334_α
.Lx748_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n344_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain154_n347_α
 xchain154_n344_β:
 jmp xchain154_n345_α
 xchain154_n345_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+1216]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1224], rax
  .section .rodata
  .Lrkfn752: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn752]
 lea rsi, [r12 + 1216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n348_α
 xchain154_n345_β:
 jmp proc_cal_key_ω
 xchain154_n346_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1552] -> [r12+1520]
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 1528], rax
# marshal arg1 = producer-box slot [r12+1568] -> [r12+1536]
 mov rax, qword ptr [r12 + 1568]
 mov qword ptr [r12 + 1536], rax
 mov rax, qword ptr [r12 + 1576]
 mov qword ptr [r12 + 1544], rax
  .section .rodata
  .Lrkfn754: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn754]
 lea rsi, [r12 + 1520]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 cmp eax, 99
 je xchain154_n334_α
 jmp xchain154_n349_α
 xchain154_n346_β:
 jmp xchain154_n334_α
# IR_LIT_INTEGER
 xchain154_n347_α:
 mov qword ptr [r12 + 1376], 6
 mov rax, qword ptr [rip + .Lx755_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain154_n350_α
 xchain154_n347_β:
 jmp xchain154_n345_α
.Lx755_0:
 .quad 1
# IR_VAR_REF local
 xchain154_n348_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain154_n351_α
 xchain154_n348_β:
 jmp xchain154_n356_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n349_α:
 lea rax, [rip + xchain154_n334_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n349_β:
 jmp proc_cal_key_ω
 xchain154_n350_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1360] -> [r12+1328]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1336], rax
# marshal arg1 = producer-box slot [r12+1376] -> [r12+1344]
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1352], rax
  .section .rodata
  .Lrkfn761: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn761]
 lea rsi, [r12 + 1328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 cmp eax, 99
 je xchain154_n345_α
 jmp xchain154_n352_α
 xchain154_n350_β:
 jmp xchain154_n345_α
# IR_LIT_STRING
 xchain154_n351_α:
 mov qword ptr [r12 + 1184], 1
 mov rax, qword ptr [rip + .Lx762_0]
 mov qword ptr [r12 + 1192], rax
 jmp xchain154_n353_α
 xchain154_n351_β:
 jmp xchain154_n356_α
.Lx762_0:
 .quad .Lx762_0_s
.Lx762_0_s:
 .string "September"
# IR_VAR_REF local
 xchain154_n352_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain154_n354_α
 xchain154_n352_β:
 jmp xchain154_n345_α
 xchain154_n353_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1168] -> [r12+1136]
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1144], rax
# marshal arg1 = producer-box slot [r12+1184] -> [r12+1152]
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1160], rax
  .section .rodata
  .Lrkfn766: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn766]
 lea rsi, [r12 + 1136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 cmp eax, 99
 je xchain154_n356_α
 jmp xchain154_n355_α
 xchain154_n353_β:
 jmp xchain154_n356_α
# IR_LIT_INTEGER
 xchain154_n354_α:
 mov qword ptr [r12 + 1296], 6
 mov rax, qword ptr [rip + .Lx767_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain154_n357_α
 xchain154_n354_β:
 jmp xchain154_n345_α
.Lx767_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n355_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain154_n358_α
 xchain154_n355_β:
 jmp xchain154_n356_α
 xchain154_n356_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+944]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lrkfn771: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn771]
 lea rsi, [r12 + 944]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n359_α
 xchain154_n356_β:
 jmp proc_cal_key_ω
 xchain154_n357_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn773: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn773]
 lea rsi, [r12 + 1248]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je xchain154_n345_α
 jmp xchain154_n360_α
 xchain154_n357_β:
 jmp xchain154_n345_α
# IR_LIT_INTEGER
 xchain154_n358_α:
 mov qword ptr [r12 + 1104], 6
 mov rax, qword ptr [rip + .Lx774_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain154_n361_α
 xchain154_n358_β:
 jmp xchain154_n356_α
.Lx774_0:
 .quad 4
# IR_VAR_REF local
 xchain154_n359_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain154_n362_α
 xchain154_n359_β:
 jmp xchain154_n367_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n360_α:
 lea rax, [rip + xchain154_n345_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n360_β:
 jmp proc_cal_key_ω
 xchain154_n361_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1088] -> [r12+1056]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1064], rax
# marshal arg1 = producer-box slot [r12+1104] -> [r12+1072]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn780: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn780]
 lea rsi, [r12 + 1056]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 cmp eax, 99
 je xchain154_n356_α
 jmp xchain154_n363_α
 xchain154_n361_β:
 jmp xchain154_n356_α
# IR_LIT_STRING
 xchain154_n362_α:
 mov qword ptr [r12 + 912], 1
 mov rax, qword ptr [rip + .Lx781_0]
 mov qword ptr [r12 + 920], rax
 jmp xchain154_n364_α
 xchain154_n362_β:
 jmp xchain154_n367_α
.Lx781_0:
 .quad .Lx781_0_s
.Lx781_0_s:
 .string "October"
# IR_VAR_REF local
 xchain154_n363_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain154_n365_α
 xchain154_n363_β:
 jmp xchain154_n356_α
 xchain154_n364_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+896] -> [r12+864]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 872], rax
# marshal arg1 = producer-box slot [r12+912] -> [r12+880]
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lrkfn785: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn785]
 lea rsi, [r12 + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je xchain154_n367_α
 jmp xchain154_n366_α
 xchain154_n364_β:
 jmp xchain154_n367_α
# IR_LIT_INTEGER
 xchain154_n365_α:
 mov qword ptr [r12 + 1024], 6
 mov rax, qword ptr [rip + .Lx786_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain154_n368_α
 xchain154_n365_β:
 jmp xchain154_n356_α
.Lx786_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n366_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain154_n369_α
 xchain154_n366_β:
 jmp xchain154_n367_α
 xchain154_n367_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+672]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn790: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn790]
 lea rsi, [r12 + 672]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n370_α
 xchain154_n367_β:
 jmp proc_cal_key_ω
 xchain154_n368_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1008] -> [r12+976]
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 984], rax
# marshal arg1 = producer-box slot [r12+1024] -> [r12+992]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
  .section .rodata
  .Lrkfn792: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn792]
 lea rsi, [r12 + 976]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je xchain154_n356_α
 jmp xchain154_n371_α
 xchain154_n368_β:
 jmp xchain154_n356_α
# IR_LIT_INTEGER
 xchain154_n369_α:
 mov qword ptr [r12 + 832], 6
 mov rax, qword ptr [rip + .Lx793_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain154_n372_α
 xchain154_n369_β:
 jmp xchain154_n367_α
.Lx793_0:
 .quad 6
# IR_VAR_REF local
 xchain154_n370_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain154_n373_α
 xchain154_n370_β:
 jmp xchain154_n378_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n371_α:
 lea rax, [rip + xchain154_n356_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n371_β:
 jmp proc_cal_key_ω
 xchain154_n372_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+816] -> [r12+784]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
# marshal arg1 = producer-box slot [r12+832] -> [r12+800]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 808], rax
  .section .rodata
  .Lrkfn799: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn799]
 lea rsi, [r12 + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain154_n367_α
 jmp xchain154_n374_α
 xchain154_n372_β:
 jmp xchain154_n367_α
# IR_LIT_STRING
 xchain154_n373_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx800_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain154_n375_α
 xchain154_n373_β:
 jmp xchain154_n378_α
.Lx800_0:
 .quad .Lx800_0_s
.Lx800_0_s:
 .string "November"
# IR_VAR_REF local
 xchain154_n374_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain154_n376_α
 xchain154_n374_β:
 jmp xchain154_n367_α
 xchain154_n375_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn804: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn804]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain154_n378_α
 jmp xchain154_n377_α
 xchain154_n375_β:
 jmp xchain154_n378_α
# IR_LIT_INTEGER
 xchain154_n376_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx805_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain154_n379_α
 xchain154_n376_β:
 jmp xchain154_n367_α
.Lx805_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n377_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain154_n380_α
 xchain154_n377_β:
 jmp xchain154_n378_α
 xchain154_n378_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+400]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn809: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn809]
 lea rsi, [r12 + 400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp xchain154_n381_α
 xchain154_n378_β:
 jmp proc_cal_key_ω
 xchain154_n379_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+736] -> [r12+704]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [r12+752] -> [r12+720]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn811: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn811]
 lea rsi, [r12 + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain154_n367_α
 jmp xchain154_n382_α
 xchain154_n379_β:
 jmp xchain154_n367_α
# IR_LIT_INTEGER
 xchain154_n380_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx812_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain154_n383_α
 xchain154_n380_β:
 jmp xchain154_n378_α
.Lx812_0:
 .quad 2
# IR_VAR_REF local
 xchain154_n381_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain154_n384_α
 xchain154_n381_β:
 jmp xchain154_n389_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n382_α:
 lea rax, [rip + xchain154_n367_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n382_β:
 jmp proc_cal_key_ω
 xchain154_n383_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn818: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn818]
 lea rsi, [r12 + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain154_n378_α
 jmp xchain154_n385_α
 xchain154_n383_β:
 jmp xchain154_n378_α
# IR_LIT_STRING
 xchain154_n384_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx819_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain154_n386_α
 xchain154_n384_β:
 jmp xchain154_n389_α
.Lx819_0:
 .quad .Lx819_0_s
.Lx819_0_s:
 .string "December"
# IR_VAR_REF local
 xchain154_n385_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain154_n387_α
 xchain154_n385_β:
 jmp xchain154_n378_α
 xchain154_n386_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn823: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn823]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain154_n389_α
 jmp xchain154_n388_α
 xchain154_n386_β:
 jmp xchain154_n389_α
# IR_LIT_INTEGER
 xchain154_n387_α:
 mov qword ptr [r12 + 480], 6
 mov rax, qword ptr [rip + .Lx824_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain154_n390_α
 xchain154_n387_β:
 jmp xchain154_n378_α
.Lx824_0:
 .quad 0
# IR_VAR_REF local
 xchain154_n388_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain154_n391_α
 xchain154_n388_β:
 jmp xchain154_n389_α
 xchain154_n389_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn828: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn828]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_cal_key_ω
 jmp proc_cal_key_ω
 xchain154_n389_β:
 jmp proc_cal_key_ω
 xchain154_n390_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+464] -> [r12+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
# marshal arg1 = producer-box slot [r12+480] -> [r12+448]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn830: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn830]
 lea rsi, [r12 + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain154_n378_α
 jmp xchain154_n392_α
 xchain154_n390_β:
 jmp xchain154_n378_α
# IR_LIT_INTEGER
 xchain154_n391_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx831_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain154_n393_α
 xchain154_n391_β:
 jmp xchain154_n389_α
.Lx831_0:
 .quad 4
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n392_α:
 lea rax, [rip + xchain154_n378_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n392_β:
 jmp proc_cal_key_ω
 xchain154_n393_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn835: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn835]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain154_n389_α
 jmp xchain154_n394_α
 xchain154_n393_β:
 jmp xchain154_n389_α
# IR_VAR_REF local
 xchain154_n394_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain154_n395_α
 xchain154_n394_β:
 jmp xchain154_n389_α
# IR_LIT_INTEGER
 xchain154_n395_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx838_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain154_n396_α
 xchain154_n395_β:
 jmp xchain154_n389_α
.Lx838_0:
 .quad 0
 xchain154_n396_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+192] -> [r12+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
# marshal arg1 = producer-box slot [r12+208] -> [r12+176]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn840: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn840]
 lea rsi, [r12 + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain154_n389_α
 jmp xchain154_n397_α
 xchain154_n396_β:
 jmp xchain154_n389_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain154_n397_α:
 lea rax, [rip + xchain154_n389_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_cal_key_γ
 xchain154_n397_β:
 jmp proc_cal_key_ω
proc_cal_key_β:
jmp xchain154_n21_α
proc_cal_key_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 9904]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_cal_key_ω:
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
  .globl proc_compute_it_α
proc_compute_it_α:
#=======================================================================================================================
    .global proc_compute_it_α
    .global proc_compute_it_β
    .global proc_compute_it_γ
    .global proc_compute_it_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_compute_it_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1728], rax
 pop rsi
proc_compute_it_α_body:
 xchain843_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn845: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn845]
 lea rsi, [r12 + 144]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je proc_compute_it_ω
 jmp xchain843_n1_α
 xchain843_n0_β:
 jmp proc_compute_it_ω
# IR_VAR_REF local
 xchain843_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain843_n2_α
 xchain843_n1_β:
 jmp xchain843_n5_α
# IR_VAR_REF local
 xchain843_n2_α:
 lea rdi, [r12 + 1744]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain843_n3_α
 xchain843_n2_β:
 jmp xchain843_n5_α
 xchain843_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1696] -> [r12+1664]
 mov rax, qword ptr [r12 + 1696]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 1672], rax
# marshal arg1 = producer-box slot [r12+1712] -> [r12+1680]
 mov rax, qword ptr [r12 + 1712]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 1688], rax
  .section .rodata
  .Lrkfn851: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn851]
 lea rsi, [r12 + 1664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 cmp eax, 99
 je xchain843_n5_α
 jmp xchain843_n4_α
 xchain843_n3_β:
 jmp xchain843_n5_α
# IR_VAR_REF local
 xchain843_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xchain843_n6_α
 xchain843_n4_β:
 jmp xchain843_n5_α
 xchain843_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+160]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn855: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn855]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je proc_compute_it_ω
 jmp proc_compute_it_ω
 xchain843_n5_β:
 jmp proc_compute_it_ω
# IR_VAR_REF local
 xchain843_n6_α:
 lea rdi, [r12 + 1840]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain843_n7_α
 xchain843_n6_β:
 jmp xchain843_n5_α
 xchain843_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1616] -> [r12+1584]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1592], rax
# marshal arg1 = producer-box slot [r12+1632] -> [r12+1600]
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1608], rax
  .section .rodata
  .Lrkfn859: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn859]
 lea rsi, [r12 + 1584]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 cmp eax, 99
 je xchain843_n5_α
 jmp xchain843_n8_α
 xchain843_n7_β:
 jmp xchain843_n5_α
# IR_VAR_REF local
 xchain843_n8_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain843_n9_α
 xchain843_n8_β:
 jmp xchain843_n5_α
# IR_VAR_REF local
 xchain843_n9_α:
 lea rdi, [r12 + 1856]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain843_n10_α
 xchain843_n9_β:
 jmp xchain843_n5_α
 xchain843_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1536] -> [r12+1504]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1512], rax
# marshal arg1 = producer-box slot [r12+1552] -> [r12+1520]
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 1528], rax
  .section .rodata
  .Lrkfn865: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn865]
 lea rsi, [r12 + 1504]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 cmp eax, 99
 je xchain843_n5_α
 jmp xchain843_n11_α
 xchain843_n10_β:
 jmp xchain843_n5_α
# IR_VAR_REF local
 xchain843_n11_α:
 lea rdi, [r12 + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain843_n12_α
 xchain843_n11_β:
 jmp xchain843_n5_α
# IR_VAR_REF local
 xchain843_n12_α:
 lea rdi, [r12 + 1776]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain843_n13_α
 xchain843_n12_β:
 jmp xchain843_n5_α
 xchain843_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1456] -> [r12+1424]
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1432], rax
# marshal arg1 = producer-box slot [r12+1472] -> [r12+1440]
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 1448], rax
  .section .rodata
  .Lrkfn871: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn871]
 lea rsi, [r12 + 1424]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 cmp eax, 99
 je xchain843_n5_α
 jmp xchain843_n14_α
 xchain843_n13_β:
 jmp xchain843_n5_α
# IR_VAR_REF local
 xchain843_n14_α:
 lea rdi, [r12 + 80]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain843_n15_α
 xchain843_n14_β:
 jmp xchain843_n5_α
# IR_VAR_REF local
 xchain843_n15_α:
 lea rdi, [r12 + 1792]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain843_n16_α
 xchain843_n15_β:
 jmp xchain843_n5_α
 xchain843_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1376] -> [r12+1344]
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1352], rax
# marshal arg1 = producer-box slot [r12+1392] -> [r12+1360]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1368], rax
  .section .rodata
  .Lrkfn877: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn877]
 lea rsi, [r12 + 1344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain843_n5_α
 jmp xchain843_n17_α
 xchain843_n16_β:
 jmp xchain843_n5_α
# IR_VAR_REF local
 xchain843_n17_α:
 lea rdi, [r12 + 1808]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain843_n18_α
 xchain843_n17_β:
 jmp xchain843_n5_α
# IR_VAR
 xchain843_n18_α:
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 1304], rax
 jmp xchain843_n19_α
 xchain843_n18_β:
 jmp proc_compute_it_ω
# IR_LIT_INTEGER
 xchain843_n19_α:
 mov qword ptr [r12 + 1312], 6
 mov rax, qword ptr [rip + .Lx882_0]
 mov qword ptr [r12 + 1320], rax
 jmp xchain843_n20_α
 xchain843_n19_β:
 jmp proc_compute_it_ω
.Lx882_0:
 .quad 100
 xchain843_n20_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1296] -> [r12+1264]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1272], rax
# marshal arg1 = producer-box slot [r12+1312] -> [r12+1280]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rax
  .section .rodata
  .Lrkfn884: .string "$ax_idiv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn884]
 lea rsi, [r12 + 1264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain843_n5_α
 jmp xchain843_n21_α
 xchain843_n20_β:
 jmp xchain843_n5_α
 xchain843_n21_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn886: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn886]
 lea rsi, [r12 + 1200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 cmp eax, 99
 je xchain843_n5_α
 jmp xchain843_n22_α
 xchain843_n21_β:
 jmp xchain843_n5_α
# IR_VAR_REF local
 xchain843_n22_α:
 lea rdi, [r12 + 1824]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain843_n23_α
 xchain843_n22_β:
 jmp xchain843_n5_α
# IR_VAR
 xchain843_n23_α:
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 1096], rax
 jmp xchain843_n24_α
 xchain843_n23_β:
 jmp proc_compute_it_ω
# IR_VAR
 xchain843_n24_α:
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1160], rax
 jmp xchain843_n25_α
 xchain843_n24_β:
 jmp proc_compute_it_ω
# IR_LIT_INTEGER
 xchain843_n25_α:
 mov qword ptr [r12 + 1168], 6
 mov rax, qword ptr [rip + .Lx893_0]
 mov qword ptr [r12 + 1176], rax
 jmp xchain843_n26_α
 xchain843_n25_β:
 jmp proc_compute_it_ω
.Lx893_0:
 .quad 100
 xchain843_n26_α:
# BOX IR_CALL $ax_mul(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1152] -> [r12+1120]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rax
# marshal arg1 = producer-box slot [r12+1168] -> [r12+1136]
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1144], rax
  .section .rodata
  .Lrkfn895: .string "$ax_mul"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn895]
 lea rsi, [r12 + 1120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 cmp eax, 99
 je xchain843_n5_α
 jmp xchain843_n27_α
 xchain843_n26_β:
 jmp xchain843_n5_α
 xchain843_n27_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1088] -> [r12+1056]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1064], rax
# marshal arg1 = producer-box slot [r12+1104] -> [r12+1072]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn897: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn897]
 lea rsi, [r12 + 1056]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 cmp eax, 99
 je xchain843_n5_α
 jmp xchain843_n28_α
 xchain843_n27_β:
 jmp xchain843_n5_α
 xchain843_n28_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1024] -> [r12+992]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
# marshal arg1 = producer-box slot [r12+1040] -> [r12+1008]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn899: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn899]
 lea rsi, [r12 + 992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain843_n5_α
 jmp xchain843_n29_α
 xchain843_n28_β:
 jmp xchain843_n5_α
# IR_VAR_REF local
 xchain843_n29_α:
 lea rdi, [r12 + 1760]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain843_n30_α
 xchain843_n29_β:
 jmp xchain843_n5_α
# IR_VAR
 xchain843_n30_α:
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 728], rax
 jmp xchain843_n31_α
 xchain843_n30_β:
 jmp proc_compute_it_ω
# IR_LIT_INTEGER
 xchain843_n31_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx904_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain843_n32_α
 xchain843_n31_β:
 jmp proc_compute_it_ω
.Lx904_0:
 .quad 5
 xchain843_n32_α:
# BOX IR_CALL $ax_mul(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+720] -> [r12+688]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 696], rax
# marshal arg1 = producer-box slot [r12+736] -> [r12+704]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 712], rax
  .section .rodata
  .Lrkfn906: .string "$ax_mul"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn906]
 lea rsi, [r12 + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je xchain843_n5_α
 jmp xchain843_n33_α
 xchain843_n32_β:
 jmp xchain843_n5_α
# IR_VAR
 xchain843_n33_α:
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 808], rax
 jmp xchain843_n34_α
 xchain843_n33_β:
 jmp proc_compute_it_ω
# IR_LIT_INTEGER
 xchain843_n34_α:
 mov qword ptr [r12 + 816], 6
 mov rax, qword ptr [rip + .Lx909_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain843_n35_α
 xchain843_n34_β:
 jmp proc_compute_it_ω
.Lx909_0:
 .quad 4
 xchain843_n35_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+800] -> [r12+768]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 776], rax
# marshal arg1 = producer-box slot [r12+816] -> [r12+784]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
  .section .rodata
  .Lrkfn911: .string "$ax_idiv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn911]
 lea rsi, [r12 + 768]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain843_n5_α
 jmp xchain843_n36_α
 xchain843_n35_β:
 jmp xchain843_n5_α
 xchain843_n36_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+672] -> [r12+640]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
# marshal arg1 = producer-box slot [r12+752] -> [r12+656]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn913: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn913]
 lea rsi, [r12 + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain843_n5_α
 jmp xchain843_n37_α
 xchain843_n36_β:
 jmp xchain843_n5_α
# IR_VAR
 xchain843_n37_α:
 mov rax, qword ptr [r12 + 1824]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 840], rax
 jmp xchain843_n38_α
 xchain843_n37_β:
 jmp proc_compute_it_ω
 xchain843_n38_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+624] -> [r12+592]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 600], rax
# marshal arg1 = producer-box slot [r12+832] -> [r12+608]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn917: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn917]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain843_n5_α
 jmp xchain843_n39_α
 xchain843_n38_β:
 jmp xchain843_n5_α
# IR_VAR
 xchain843_n39_α:
 mov rax, qword ptr [r12 + 1824]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 904], rax
 jmp xchain843_n40_α
 xchain843_n39_β:
 jmp proc_compute_it_ω
# IR_LIT_INTEGER
 xchain843_n40_α:
 mov qword ptr [r12 + 912], 6
 mov rax, qword ptr [rip + .Lx920_0]
 mov qword ptr [r12 + 920], rax
 jmp xchain843_n41_α
 xchain843_n40_β:
 jmp proc_compute_it_ω
.Lx920_0:
 .quad 4
 xchain843_n41_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+896] -> [r12+864]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 872], rax
# marshal arg1 = producer-box slot [r12+912] -> [r12+880]
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lrkfn922: .string "$ax_idiv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn922]
 lea rsi, [r12 + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je xchain843_n5_α
 jmp xchain843_n42_α
 xchain843_n41_β:
 jmp xchain843_n5_α
 xchain843_n42_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+576] -> [r12+544]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
# marshal arg1 = producer-box slot [r12+848] -> [r12+560]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn924: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn924]
 lea rsi, [r12 + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain843_n5_α
 jmp xchain843_n43_α
 xchain843_n42_β:
 jmp xchain843_n5_α
# IR_VAR
 xchain843_n43_α:
 mov rax, qword ptr [r12 + 1840]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 1848]
 mov qword ptr [r12 + 936], rax
 jmp xchain843_n44_α
 xchain843_n43_β:
 jmp proc_compute_it_ω
 xchain843_n44_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+528] -> [r12+496]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = producer-box slot [r12+928] -> [r12+512]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn928: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn928]
 lea rsi, [r12 + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain843_n5_α
 jmp xchain843_n45_α
 xchain843_n44_β:
 jmp xchain843_n5_α
# IR_VAR
 xchain843_n45_α:
 mov rax, qword ptr [r12 + 1856]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 952], rax
 jmp xchain843_n46_α
 xchain843_n45_β:
 jmp proc_compute_it_ω
 xchain843_n46_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+480] -> [r12+448]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 456], rax
# marshal arg1 = producer-box slot [r12+944] -> [r12+464]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn932: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn932]
 lea rsi, [r12 + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain843_n5_α
 jmp xchain843_n47_α
 xchain843_n46_β:
 jmp xchain843_n5_α
# IR_LIT_INTEGER
 xchain843_n47_α:
 mov qword ptr [r12 + 960], 6
 mov rax, qword ptr [rip + .Lx933_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain843_n48_α
 xchain843_n47_β:
 jmp proc_compute_it_ω
.Lx933_0:
 .quad 7
 xchain843_n48_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+432] -> [r12+400]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [r12+960] -> [r12+416]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn935: .string "$ax_mod"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn935]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain843_n5_α
 jmp xchain843_n49_α
 xchain843_n48_β:
 jmp xchain843_n5_α
 xchain843_n49_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+368] -> [r12+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = producer-box slot [r12+384] -> [r12+352]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn937: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn937]
 lea rsi, [r12 + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain843_n5_α
 jmp xchain843_n50_α
 xchain843_n49_β:
 jmp xchain843_n5_α
# IR_VAR_REF local
 xchain843_n50_α:
 lea rdi, [r12 + 1744]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain843_n51_α
 xchain843_n50_β:
 jmp xchain843_n5_α
# IR_VAR_REF local
 xchain843_n51_α:
 lea rdi, [r12 + 1760]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain843_n52_α
 xchain843_n51_β:
 jmp xchain843_n5_α
# IR_VAR_REF local
 xchain843_n52_α:
 lea rdi, [r12 + 1776]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain843_n53_α
 xchain843_n52_β:
 jmp xchain843_n5_α
# IR_VAR_REF local
 xchain843_n53_α:
 lea rdi, [r12 + 1792]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain843_n54_α
 xchain843_n53_β:
 jmp xchain843_n5_α
 xchain843_n54_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain843_n55_α:
 lea rax, [rip + xchain843_n5_α]
 mov qword ptr [r12 + 112], rax
 jmp proc_compute_it_γ
 xchain843_n55_β:
 jmp proc_compute_it_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain843_n56_α:
 jmp qword ptr [r12 + 112]
 xchain843_n56_β:
 jmp proc_compute_it_ω
proc_compute_it_β:
jmp xchain843_n56_α
proc_compute_it_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1728]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_compute_it_ω:
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
  .globl proc_leap_year_α
proc_leap_year_α:
#=======================================================================================================================
    .global proc_leap_year_α
    .global proc_leap_year_β
    .global proc_leap_year_γ
    .global proc_leap_year_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_leap_year_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 2576], rax
 pop rsi
proc_leap_year_α_body:
 xchain951_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn953: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn953]
 lea rsi, [r12 + 128]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_leap_year_ω
 jmp xchain951_n1_α
 xchain951_n0_β:
 jmp proc_leap_year_ω
# IR_VAR_REF local
 xchain951_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2544], rax
 mov qword ptr [r12 + 2552], rdx
 jmp xchain951_n2_α
 xchain951_n1_β:
 jmp xchain951_n5_α
# IR_VAR_REF local
 xchain951_n2_α:
 lea rdi, [r12 + 2672]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 jmp xchain951_n3_α
 xchain951_n2_β:
 jmp xchain951_n5_α
 xchain951_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2544] -> [r12+2512]
 mov rax, qword ptr [r12 + 2544]
 mov qword ptr [r12 + 2512], rax
 mov rax, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 2520], rax
# marshal arg1 = producer-box slot [r12+2560] -> [r12+2528]
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 2528], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 2536], rax
  .section .rodata
  .Lrkfn959: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn959]
 lea rsi, [r12 + 2512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 cmp eax, 99
 je xchain951_n5_α
 jmp xchain951_n4_α
 xchain951_n3_β:
 jmp xchain951_n5_α
# IR_VAR_REF local
 xchain951_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 jmp xchain951_n6_α
 xchain951_n4_β:
 jmp xchain951_n5_α
 xchain951_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+112] -> [r12+2016]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 2024], rax
  .section .rodata
  .Lrkfn963: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn963]
 lea rsi, [r12 + 2016]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 cmp eax, 99
 je proc_leap_year_ω
 jmp xchain951_n7_α
 xchain951_n5_β:
 jmp proc_leap_year_ω
# IR_VAR_REF local
 xchain951_n6_α:
 lea rdi, [r12 + 2624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 jmp xchain951_n8_α
 xchain951_n6_β:
 jmp xchain951_n5_α
# IR_VAR_REF local
 xchain951_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 jmp xchain951_n9_α
 xchain951_n7_β:
 jmp xchain951_n14_α
 xchain951_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2464] -> [r12+2432]
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 2432], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 2440], rax
# marshal arg1 = producer-box slot [r12+2480] -> [r12+2448]
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 2448], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 2456], rax
  .section .rodata
  .Lrkfn969: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn969]
 lea rsi, [r12 + 2432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 cmp eax, 99
 je xchain951_n5_α
 jmp xchain951_n10_α
 xchain951_n8_β:
 jmp xchain951_n5_α
# IR_VAR_REF local
 xchain951_n9_α:
 lea rdi, [r12 + 2672]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xchain951_n11_α
 xchain951_n9_β:
 jmp xchain951_n14_α
# IR_VAR_REF local
 xchain951_n10_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 jmp xchain951_n12_α
 xchain951_n10_β:
 jmp xchain951_n5_α
 xchain951_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1968] -> [r12+1936]
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 1944], rax
# marshal arg1 = producer-box slot [r12+1984] -> [r12+1952]
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1960], rax
  .section .rodata
  .Lrkfn975: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn975]
 lea rsi, [r12 + 1936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 cmp eax, 99
 je xchain951_n14_α
 jmp xchain951_n13_α
 xchain951_n11_β:
 jmp xchain951_n14_α
# IR_VAR_REF local
 xchain951_n12_α:
 lea rdi, [r12 + 2656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 jmp xchain951_n15_α
 xchain951_n12_β:
 jmp xchain951_n5_α
# IR_VAR_REF local
 xchain951_n13_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain951_n16_α
 xchain951_n13_β:
 jmp xchain951_n14_α
 xchain951_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+112] -> [r12+1296]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 1304], rax
  .section .rodata
  .Lrkfn981: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn981]
 lea rsi, [r12 + 1296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je proc_leap_year_ω
 jmp xchain951_n17_α
 xchain951_n14_β:
 jmp proc_leap_year_ω
 xchain951_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2384] -> [r12+2352]
 mov rax, qword ptr [r12 + 2384]
 mov qword ptr [r12 + 2352], rax
 mov rax, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 2360], rax
# marshal arg1 = producer-box slot [r12+2400] -> [r12+2368]
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 2368], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 2376], rax
  .section .rodata
  .Lrkfn983: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn983]
 lea rsi, [r12 + 2352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 cmp eax, 99
 je xchain951_n5_α
 jmp xchain951_n18_α
 xchain951_n15_β:
 jmp xchain951_n5_α
# IR_VAR_REF local
 xchain951_n16_α:
 lea rdi, [r12 + 2624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain951_n19_α
 xchain951_n16_β:
 jmp xchain951_n14_α
# IR_VAR_REF local
 xchain951_n17_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain951_n20_α
 xchain951_n17_β:
 jmp xchain951_n27_α
# IR_VAR_REF local
 xchain951_n18_α:
 lea rdi, [r12 + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 jmp xchain951_n21_α
 xchain951_n18_β:
 jmp xchain951_n5_α
 xchain951_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1888] -> [r12+1856]
 mov rax, qword ptr [r12 + 1888]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 1896]
 mov qword ptr [r12 + 1864], rax
# marshal arg1 = producer-box slot [r12+1904] -> [r12+1872]
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1880], rax
  .section .rodata
  .Lrkfn991: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn991]
 lea rsi, [r12 + 1856]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 cmp eax, 99
 je xchain951_n14_α
 jmp xchain951_n22_α
 xchain951_n19_β:
 jmp xchain951_n14_α
# IR_VAR_REF local
 xchain951_n20_α:
 lea rdi, [r12 + 2672]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain951_n23_α
 xchain951_n20_β:
 jmp xchain951_n27_α
# IR_VAR_REF local
 xchain951_n21_α:
 lea rdi, [r12 + 2608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 jmp xchain951_n24_α
 xchain951_n21_β:
 jmp xchain951_n5_α
# IR_VAR_REF local
 xchain951_n22_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain951_n25_α
 xchain951_n22_β:
 jmp xchain951_n14_α
 xchain951_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1248] -> [r12+1216]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1224], rax
# marshal arg1 = producer-box slot [r12+1264] -> [r12+1232]
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1240], rax
  .section .rodata
  .Lrkfn999: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn999]
 lea rsi, [r12 + 1216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je xchain951_n27_α
 jmp xchain951_n26_α
 xchain951_n23_β:
 jmp xchain951_n27_α
 xchain951_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2304] -> [r12+2272]
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 2272], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2280], rax
# marshal arg1 = producer-box slot [r12+2320] -> [r12+2288]
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 2288], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 2296], rax
  .section .rodata
  .Lrkfn1001: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1001]
 lea rsi, [r12 + 2272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 cmp eax, 99
 je xchain951_n5_α
 jmp xchain951_n28_α
 xchain951_n24_β:
 jmp xchain951_n5_α
# IR_VAR_REF local
 xchain951_n25_α:
 lea rdi, [r12 + 2640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 jmp xchain951_n29_α
 xchain951_n25_β:
 jmp xchain951_n14_α
# IR_VAR_REF local
 xchain951_n26_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain951_n30_α
 xchain951_n26_β:
 jmp xchain951_n27_α
 xchain951_n27_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+112] -> [r12+720]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn1007: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1007]
 lea rsi, [r12 + 720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je proc_leap_year_ω
 jmp xchain951_n31_α
 xchain951_n27_β:
 jmp proc_leap_year_ω
# IR_LIT_INTEGER
 xchain951_n28_α:
 mov qword ptr [r12 + 2160], 6
 mov rax, qword ptr [rip + .Lx1008_0]
 mov qword ptr [r12 + 2168], rax
 jmp xchain951_n32_α
 xchain951_n28_β:
 jmp xchain951_n5_α
.Lx1008_0:
 .quad 0
 xchain951_n29_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1808] -> [r12+1776]
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1784], rax
# marshal arg1 = producer-box slot [r12+1824] -> [r12+1792]
 mov rax, qword ptr [r12 + 1824]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 1800], rax
  .section .rodata
  .Lrkfn1010: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1010]
 lea rsi, [r12 + 1776]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 cmp eax, 99
 je xchain951_n14_α
 jmp xchain951_n33_α
 xchain951_n29_β:
 jmp xchain951_n14_α
# IR_VAR_REF local
 xchain951_n30_α:
 lea rdi, [r12 + 2624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain951_n34_α
 xchain951_n30_β:
 jmp xchain951_n27_α
# IR_VAR_REF local
 xchain951_n31_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain951_n35_α
 xchain951_n31_β:
 jmp xchain951_n44_α
# IR_VAR
 xchain951_n32_α:
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 2232], rax
 jmp xchain951_n36_α
 xchain951_n32_β:
 jmp proc_leap_year_ω
# IR_VAR_REF local
 xchain951_n33_α:
 lea rdi, [r12 + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain951_n37_α
 xchain951_n33_β:
 jmp xchain951_n14_α
 xchain951_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1168] -> [r12+1136]
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1144], rax
# marshal arg1 = producer-box slot [r12+1184] -> [r12+1152]
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1160], rax
  .section .rodata
  .Lrkfn1020: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1020]
 lea rsi, [r12 + 1136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 cmp eax, 99
 je xchain951_n27_α
 jmp xchain951_n38_α
 xchain951_n34_β:
 jmp xchain951_n27_α
# IR_VAR_REF local
 xchain951_n35_α:
 lea rdi, [r12 + 2656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain951_n39_α
 xchain951_n35_β:
 jmp xchain951_n44_α
# IR_LIT_INTEGER
 xchain951_n36_α:
 mov qword ptr [r12 + 2240], 6
 mov rax, qword ptr [rip + .Lx1023_0]
 mov qword ptr [r12 + 2248], rax
 jmp xchain951_n40_α
 xchain951_n36_β:
 jmp proc_leap_year_ω
.Lx1023_0:
 .quad 4
# IR_VAR_REF local
 xchain951_n37_α:
 lea rdi, [r12 + 2608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain951_n41_α
 xchain951_n37_β:
 jmp xchain951_n14_α
# IR_VAR_REF local
 xchain951_n38_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain951_n42_α
 xchain951_n38_β:
 jmp xchain951_n27_α
 xchain951_n39_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+672] -> [r12+640]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
# marshal arg1 = producer-box slot [r12+688] -> [r12+656]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn1029: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1029]
 lea rsi, [r12 + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain951_n44_α
 jmp xchain951_n43_α
 xchain951_n39_β:
 jmp xchain951_n44_α
 xchain951_n40_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2224] -> [r12+2192]
 mov rax, qword ptr [r12 + 2224]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 2200], rax
# marshal arg1 = producer-box slot [r12+2240] -> [r12+2208]
 mov rax, qword ptr [r12 + 2240]
 mov qword ptr [r12 + 2208], rax
 mov rax, qword ptr [r12 + 2248]
 mov qword ptr [r12 + 2216], rax
  .section .rodata
  .Lrkfn1031: .string "$ax_mod"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1031]
 lea rsi, [r12 + 2192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 cmp eax, 99
 je xchain951_n5_α
 jmp xchain951_n45_α
 xchain951_n40_β:
 jmp xchain951_n5_α
 xchain951_n41_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1728] -> [r12+1696]
 mov rax, qword ptr [r12 + 1728]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 1704], rax
# marshal arg1 = producer-box slot [r12+1744] -> [r12+1712]
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 1720], rax
  .section .rodata
  .Lrkfn1033: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1033]
 lea rsi, [r12 + 1696]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 cmp eax, 99
 je xchain951_n14_α
 jmp xchain951_n46_α
 xchain951_n41_β:
 jmp xchain951_n14_α
# IR_VAR_REF local
 xchain951_n42_α:
 lea rdi, [r12 + 2656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain951_n47_α
 xchain951_n42_β:
 jmp xchain951_n27_α
# IR_VAR_REF local
 xchain951_n43_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain951_n48_α
 xchain951_n43_β:
 jmp xchain951_n44_α
 xchain951_n44_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+112] -> [r12+144]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn1039: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1039]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je proc_leap_year_ω
 jmp proc_leap_year_ω
 xchain951_n44_β:
 jmp proc_leap_year_ω
 xchain951_n45_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2160] -> [r12+2128]
 mov rax, qword ptr [r12 + 2160]
 mov qword ptr [r12 + 2128], rax
 mov rax, qword ptr [r12 + 2168]
 mov qword ptr [r12 + 2136], rax
# marshal arg1 = producer-box slot [r12+2176] -> [r12+2144]
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 2144], rax
 mov rax, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 2152], rax
  .section .rodata
  .Lrkfn1041: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1041]
 lea rsi, [r12 + 2128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 cmp eax, 99
 je xchain951_n5_α
 jmp xchain951_n49_α
 xchain951_n45_β:
 jmp xchain951_n5_α
# IR_LIT_INTEGER
 xchain951_n46_α:
 mov qword ptr [r12 + 1584], 6
 mov rax, qword ptr [rip + .Lx1042_0]
 mov qword ptr [r12 + 1592], rax
 jmp xchain951_n50_α
 xchain951_n46_β:
 jmp xchain951_n14_α
.Lx1042_0:
 .quad 0
 xchain951_n47_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1088] -> [r12+1056]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1064], rax
# marshal arg1 = producer-box slot [r12+1104] -> [r12+1072]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn1044: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1044]
 lea rsi, [r12 + 1056]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 cmp eax, 99
 je xchain951_n27_α
 jmp xchain951_n51_α
 xchain951_n47_β:
 jmp xchain951_n27_α
# IR_VAR_REF local
 xchain951_n48_α:
 lea rdi, [r12 + 2624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain951_n52_α
 xchain951_n48_β:
 jmp xchain951_n44_α
 xchain951_n49_α:
# IR_CUT
 jmp xchain951_n53_α
 xchain951_n49_β:
 jmp xchain951_n5_α
# IR_VAR
 xchain951_n50_α:
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 1656], rax
 jmp xchain951_n54_α
 xchain951_n50_β:
 jmp proc_leap_year_ω
# IR_VAR_REF local
 xchain951_n51_α:
 lea rdi, [r12 + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain951_n55_α
 xchain951_n51_β:
 jmp xchain951_n27_α
 xchain951_n52_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+592] -> [r12+560]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
# marshal arg1 = producer-box slot [r12+608] -> [r12+576]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn1053: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1053]
 lea rsi, [r12 + 560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain951_n44_α
 jmp xchain951_n56_α
 xchain951_n52_β:
 jmp xchain951_n44_α
# IR_VAR_REF local
 xchain951_n53_α:
 lea rdi, [r12 + 2624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 jmp xchain951_n57_α
 xchain951_n53_β:
 jmp xchain951_n44_α
# IR_LIT_INTEGER
 xchain951_n54_α:
 mov qword ptr [r12 + 1664], 6
 mov rax, qword ptr [rip + .Lx1056_0]
 mov qword ptr [r12 + 1672], rax
 jmp xchain951_n58_α
 xchain951_n54_β:
 jmp proc_leap_year_ω
.Lx1056_0:
 .quad 100
# IR_VAR_REF local
 xchain951_n55_α:
 lea rdi, [r12 + 2608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain951_n59_α
 xchain951_n55_β:
 jmp xchain951_n27_α
# IR_VAR_REF local
 xchain951_n56_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain951_n60_α
 xchain951_n56_β:
 jmp xchain951_n44_α
# IR_VAR_REF local
 xchain951_n57_α:
 lea rdi, [r12 + 2608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain951_n61_α
 xchain951_n57_β:
 jmp xchain951_n44_α
 xchain951_n58_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1648] -> [r12+1616]
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 1624], rax
# marshal arg1 = producer-box slot [r12+1664] -> [r12+1632]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1640], rax
  .section .rodata
  .Lrkfn1064: .string "$ax_mod"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1064]
 lea rsi, [r12 + 1616]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 cmp eax, 99
 je xchain951_n14_α
 jmp xchain951_n62_α
 xchain951_n58_β:
 jmp xchain951_n14_α
 xchain951_n59_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1008] -> [r12+976]
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 984], rax
# marshal arg1 = producer-box slot [r12+1024] -> [r12+992]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
  .section .rodata
  .Lrkfn1066: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1066]
 lea rsi, [r12 + 976]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je xchain951_n27_α
 jmp xchain951_n63_α
 xchain951_n59_β:
 jmp xchain951_n27_α
# IR_VAR_REF local
 xchain951_n60_α:
 lea rdi, [r12 + 2640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain951_n64_α
 xchain951_n60_β:
 jmp xchain951_n44_α
 xchain951_n61_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
 xchain951_n62_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1584] -> [r12+1552]
 mov rax, qword ptr [r12 + 1584]
 mov qword ptr [r12 + 1552], rax
 mov rax, qword ptr [r12 + 1592]
 mov qword ptr [r12 + 1560], rax
# marshal arg1 = producer-box slot [r12+1600] -> [r12+1568]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1576], rax
  .section .rodata
  .Lrkfn1071: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1071]
 lea rsi, [r12 + 1552]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 cmp eax, 99
 je xchain951_n14_α
 jmp xchain951_n66_α
 xchain951_n62_β:
 jmp xchain951_n14_α
# IR_LIT_INTEGER
 xchain951_n63_α:
 mov qword ptr [r12 + 864], 6
 mov rax, qword ptr [rip + .Lx1072_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain951_n67_α
 xchain951_n63_β:
 jmp xchain951_n27_α
.Lx1072_0:
 .quad 0
 xchain951_n64_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+512] -> [r12+480]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 488], rax
# marshal arg1 = producer-box slot [r12+528] -> [r12+496]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn1074: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1074]
 lea rsi, [r12 + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain951_n44_α
 jmp xchain951_n68_α
 xchain951_n64_β:
 jmp xchain951_n44_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain951_n65_α:
 lea rax, [rip + xchain951_n5_α]
 mov qword ptr [r12 + 96], rax
 jmp proc_leap_year_γ
 xchain951_n65_β:
 jmp proc_leap_year_ω
 xchain951_n66_α:
# IR_CUT
 jmp xchain951_n70_α
 xchain951_n66_β:
 jmp xchain951_n14_α
# IR_VAR
 xchain951_n67_α:
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 936], rax
 jmp xchain951_n71_α
 xchain951_n67_β:
 jmp proc_leap_year_ω
# IR_VAR_REF local
 xchain951_n68_α:
 lea rdi, [r12 + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain951_n72_α
 xchain951_n68_β:
 jmp xchain951_n44_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain951_n69_α:
 jmp qword ptr [r12 + 96]
 xchain951_n69_β:
 jmp proc_leap_year_ω
# IR_VAR_REF local
 xchain951_n70_α:
 lea rdi, [r12 + 2656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain951_n73_α
 xchain951_n70_β:
 jmp xchain951_n44_α
# IR_LIT_INTEGER
 xchain951_n71_α:
 mov qword ptr [r12 + 944], 6
 mov rax, qword ptr [rip + .Lx1086_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain951_n74_α
 xchain951_n71_β:
 jmp proc_leap_year_ω
.Lx1086_0:
 .quad 400
# IR_VAR_REF local
 xchain951_n72_α:
 lea rdi, [r12 + 2608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain951_n75_α
 xchain951_n72_β:
 jmp xchain951_n44_α
# IR_VAR
 xchain951_n73_α:
 mov rax, qword ptr [r12 + 2624]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 1512], rax
 jmp xchain951_n76_α
 xchain951_n73_β:
 jmp proc_leap_year_ω
 xchain951_n74_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn1092: .string "$ax_mod"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1092]
 lea rsi, [r12 + 896]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain951_n27_α
 jmp xchain951_n77_α
 xchain951_n74_β:
 jmp xchain951_n27_α
 xchain951_n75_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+432] -> [r12+400]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [r12+448] -> [r12+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn1094: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1094]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain951_n44_α
 jmp xchain951_n78_α
 xchain951_n75_β:
 jmp xchain951_n44_α
# IR_VAR
 xchain951_n76_α:
 mov rax, qword ptr [r12 + 2640]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 1528], rax
 jmp xchain951_n79_α
 xchain951_n76_β:
 jmp proc_leap_year_ω
 xchain951_n77_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+864] -> [r12+832]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
# marshal arg1 = producer-box slot [r12+880] -> [r12+848]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn1098: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1098]
 lea rsi, [r12 + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain951_n27_α
 jmp xchain951_n80_α
 xchain951_n77_β:
 jmp xchain951_n27_α
# IR_VAR_REF local
 xchain951_n78_α:
 lea rdi, [r12 + 2592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain951_n81_α
 xchain951_n78_β:
 jmp xchain951_n44_α
 xchain951_n79_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1504] -> [r12+1472]
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1480], rax
# marshal arg1 = producer-box slot [r12+1520] -> [r12+1488]
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1496], rax
  .section .rodata
  .Lrkfn1102: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1102]
 lea rsi, [r12 + 1472]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 cmp eax, 99
 je xchain951_n44_α
 jmp xchain951_n82_α
 xchain951_n79_β:
 jmp xchain951_n44_α
 xchain951_n80_α:
# IR_CUT
 jmp xchain951_n83_α
 xchain951_n80_β:
 jmp xchain951_n27_α
# IR_VAR
 xchain951_n81_α:
 mov rax, qword ptr [r12 + 2624]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 360], rax
 jmp xchain951_n84_α
 xchain951_n81_β:
 jmp proc_leap_year_ω
 xchain951_n82_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1440] -> [r12+1408]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1416], rax
# marshal arg1 = producer-box slot [r12+1456] -> [r12+1424]
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1432], rax
  .section .rodata
  .Lrkfn1107: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1107]
 lea rsi, [r12 + 1408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 cmp eax, 99
 je xchain951_n44_α
 jmp xchain951_n85_α
 xchain951_n82_β:
 jmp xchain951_n44_α
# IR_VAR_REF local
 xchain951_n83_α:
 lea rdi, [r12 + 2624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain951_n86_α
 xchain951_n83_β:
 jmp xchain951_n44_α
# IR_VAR
 xchain951_n84_α:
 mov rax, qword ptr [r12 + 2640]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 376], rax
 jmp xchain951_n87_α
 xchain951_n84_β:
 jmp proc_leap_year_ω
# IR_VAR_REF local
 xchain951_n85_α:
 lea rdi, [r12 + 2656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain951_n88_α
 xchain951_n85_β:
 jmp xchain951_n44_α
# IR_VAR_REF local
 xchain951_n86_α:
 lea rdi, [r12 + 2608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain951_n89_α
 xchain951_n86_β:
 jmp xchain951_n44_α
 xchain951_n87_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn1117: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1117]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain951_n44_α
 jmp xchain951_n90_α
 xchain951_n87_β:
 jmp xchain951_n44_α
# IR_VAR_REF local
 xchain951_n88_α:
 lea rdi, [r12 + 2608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain951_n91_α
 xchain951_n88_β:
 jmp xchain951_n44_α
 xchain951_n89_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
 xchain951_n90_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+288] -> [r12+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
# marshal arg1 = producer-box slot [r12+304] -> [r12+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn1122: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1122]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain951_n44_α
 jmp xchain951_n93_α
 xchain951_n90_β:
 jmp xchain951_n44_α
 xchain951_n91_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain951_n92_α:
 lea rax, [rip + xchain951_n27_α]
 mov qword ptr [r12 + 96], rax
 jmp proc_leap_year_γ
 xchain951_n92_β:
 jmp proc_leap_year_ω
# IR_VAR_REF local
 xchain951_n93_α:
 lea rdi, [r12 + 2592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain951_n95_α
 xchain951_n93_β:
 jmp xchain951_n44_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain951_n94_α:
 lea rax, [rip + xchain951_n14_α]
 mov qword ptr [r12 + 96], rax
 jmp proc_leap_year_γ
 xchain951_n94_β:
 jmp proc_leap_year_ω
# IR_VAR_REF local
 xchain951_n95_α:
 lea rdi, [r12 + 2608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain951_n96_α
 xchain951_n95_β:
 jmp xchain951_n44_α
 xchain951_n96_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain951_n97_α:
 lea rax, [rip + xchain951_n44_α]
 mov qword ptr [r12 + 96], rax
 jmp proc_leap_year_γ
 xchain951_n97_β:
 jmp proc_leap_year_ω
proc_leap_year_β:
jmp xchain951_n69_α
proc_leap_year_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 2576]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_leap_year_ω:
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
  .Lstartup_pname0: .string "dow"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_dow_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname1: .string "day_of_week"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_day_of_week_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 4
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname2: .string "cal_key"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_cal_key_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname3: .string "compute_it"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_compute_it_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 5
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname4: .string "leap_year"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_leap_year_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 4
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
 mov qword ptr [r12 + 336], rax
 pop rsi
main_α_body:
 xchain1135_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1137: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1137]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain1135_n1_α
 xchain1135_n0_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain1135_n1_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx1138_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain1135_n2_α
 xchain1135_n1_β:
 jmp xchain1135_n7_α
.Lx1138_0:
 .quad 1993
# IR_LIT_INTEGER
 xchain1135_n2_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx1139_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain1135_n3_α
 xchain1135_n2_β:
 jmp xchain1135_n7_α
.Lx1139_0:
 .quad 4
# IR_LIT_INTEGER
 xchain1135_n3_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx1140_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain1135_n4_α
 xchain1135_n3_β:
 jmp xchain1135_n7_α
.Lx1140_0:
 .quad 9
# IR_VAR_REF local
 xchain1135_n4_α:
 lea rdi, [r12 + 352]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain1135_n5_α
 xchain1135_n4_β:
 jmp xchain1135_n7_α
 xchain1135_n5_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR
 xchain1135_n6_α:
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 184], rax
 jmp xchain1135_n8_α
 xchain1135_n6_β:
 jmp xchain1135_n7_α
 xchain1135_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+48] -> [r12+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn1147: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1147]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain1135_n7_β:
 jmp main_ω
 xchain1135_n8_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn1149: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1149]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain1135_n5_β
 jmp xchain1135_n9_α
 xchain1135_n8_β:
 jmp xchain1135_n5_β
# IR_LIT_STRING
 xchain1135_n9_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx1150_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain1135_n10_α
 xchain1135_n9_β:
 jmp xchain1135_n7_α
.Lx1150_0:
 .quad .Lx1150_0_s
.Lx1150_0_s:
 .string ""
 xchain1135_n10_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1152: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1152]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain1135_n5_β
 jmp xchain1135_n11_α
 xchain1135_n10_β:
 jmp xchain1135_n5_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain1135_n11_α:
 lea rax, [rip + xchain1135_n5_β]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain1135_n11_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain1135_n12_α:
 jmp qword ptr [r12 + 32]
 xchain1135_n12_β:
 jmp main_ω
main_β:
jmp xchain1135_n12_α
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
 mov rdi, qword ptr [r12 + 336]
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
