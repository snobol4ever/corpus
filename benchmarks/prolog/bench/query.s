  .intel_syntax noprefix
  .text
  .globl proc_area_α
proc_area_α:
#=======================================================================================================================
    .global proc_area_α
    .global proc_area_β
    .global proc_area_γ
    .global proc_area_ω
push r12
  mov r12, rdi
  cmp esi, 0
  jne proc_area_β
proc_area_α_body:
xchain0_n0_α:
bb1_α:
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
 je proc_area_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_area_ω
xchain0_n1_α:
# IR_VAR_REF local
bb2_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4864], rax
 mov qword ptr [r12 + 4872], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
xchain0_n2_α:
# IR_LIT_STRING
bb3_α:
 mov qword ptr [r12 + 4880], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 4888], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "china"
xchain0_n3_α:
bb4_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4864] -> [r12+4832]
 mov rax, qword ptr [r12 + 4864]
 mov qword ptr [r12 + 4832], rax
 mov rax, qword ptr [r12 + 4872]
 mov qword ptr [r12 + 4840], rax
# marshal arg1 = producer-box slot [r12+4880] -> [r12+4848]
 mov rax, qword ptr [r12 + 4880]
 mov qword ptr [r12 + 4848], rax
 mov rax, qword ptr [r12 + 4888]
 mov qword ptr [r12 + 4856], rax
  .section .rodata
  .Lrkfn7: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn7]
 lea rsi, [r12 + 4832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4816], rax
 mov qword ptr [r12 + 4824], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
xchain0_n4_α:
# IR_VAR_REF local
bb5_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4784], rax
 mov qword ptr [r12 + 4792], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
xchain0_n5_α:
bb6_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+4720]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 4720], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 4728], rax
  .section .rodata
  .Lrkfn11: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn11]
 lea rsi, [r12 + 4720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4704], rax
 mov qword ptr [r12 + 4712], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_area_ω
xchain0_n6_α:
# IR_LIT_INTEGER
bb7_α:
 mov qword ptr [r12 + 4800], 6
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 4808], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n5_α
.Lx12_0:
 .quad 3380
xchain0_n7_α:
# IR_VAR_REF local
bb8_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4672], rax
 mov qword ptr [r12 + 4680], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n14_α
xchain0_n8_α:
bb9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4784] -> [r12+4752]
 mov rax, qword ptr [r12 + 4784]
 mov qword ptr [r12 + 4752], rax
 mov rax, qword ptr [r12 + 4792]
 mov qword ptr [r12 + 4760], rax
# marshal arg1 = producer-box slot [r12+4800] -> [r12+4768]
 mov rax, qword ptr [r12 + 4800]
 mov qword ptr [r12 + 4768], rax
 mov rax, qword ptr [r12 + 4808]
 mov qword ptr [r12 + 4776], rax
  .section .rodata
  .Lrkfn16: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn16]
 lea rsi, [r12 + 4752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4736], rax
 mov qword ptr [r12 + 4744], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n5_α
xchain0_n9_α:
# IR_LIT_STRING
bb10_α:
 mov qword ptr [r12 + 4688], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 4696], rax
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n14_α
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "india"
xchain0_n10_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb11_α:
 lea rax, [rip + xchain0_n5_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n10_β:
 jmp proc_area_ω
xchain0_n11_α:
bb12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4672] -> [r12+4640]
 mov rax, qword ptr [r12 + 4672]
 mov qword ptr [r12 + 4640], rax
 mov rax, qword ptr [r12 + 4680]
 mov qword ptr [r12 + 4648], rax
# marshal arg1 = producer-box slot [r12+4688] -> [r12+4656]
 mov rax, qword ptr [r12 + 4688]
 mov qword ptr [r12 + 4656], rax
 mov rax, qword ptr [r12 + 4696]
 mov qword ptr [r12 + 4664], rax
  .section .rodata
  .Lrkfn21: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn21]
 lea rsi, [r12 + 4640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4624], rax
 mov qword ptr [r12 + 4632], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
xchain0_n12_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb13_α:
 jmp qword ptr [r12 + 64]
 xchain0_n12_β:
 jmp proc_area_ω
xchain0_n13_α:
# IR_VAR_REF local
bb14_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4592], rax
 mov qword ptr [r12 + 4600], rdx
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n14_α
xchain0_n14_α:
bb15_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+4528]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 4528], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 4536], rax
  .section .rodata
  .Lrkfn27: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn27]
 lea rsi, [r12 + 4528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4512], rax
 mov qword ptr [r12 + 4520], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp proc_area_ω
xchain0_n15_α:
# IR_LIT_INTEGER
bb16_α:
 mov qword ptr [r12 + 4608], 6
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 4616], rax
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n14_α
.Lx28_0:
 .quad 1139
xchain0_n16_α:
# IR_VAR_REF local
bb17_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4480], rax
 mov qword ptr [r12 + 4488], rdx
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n22_α
xchain0_n17_α:
bb18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4592] -> [r12+4560]
 mov rax, qword ptr [r12 + 4592]
 mov qword ptr [r12 + 4560], rax
 mov rax, qword ptr [r12 + 4600]
 mov qword ptr [r12 + 4568], rax
# marshal arg1 = producer-box slot [r12+4608] -> [r12+4576]
 mov rax, qword ptr [r12 + 4608]
 mov qword ptr [r12 + 4576], rax
 mov rax, qword ptr [r12 + 4616]
 mov qword ptr [r12 + 4584], rax
  .section .rodata
  .Lrkfn32: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn32]
 lea rsi, [r12 + 4560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4544], rax
 mov qword ptr [r12 + 4552], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n14_α
xchain0_n18_α:
# IR_LIT_STRING
bb19_α:
 mov qword ptr [r12 + 4496], 1
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [r12 + 4504], rax
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n22_α
.Lx33_0:
 .quad .Lx33_0_s
.Lx33_0_s:
 .string "ussr"
xchain0_n19_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb20_α:
 lea rax, [rip + xchain0_n14_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n19_β:
 jmp proc_area_ω
xchain0_n20_α:
bb21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4480] -> [r12+4448]
 mov rax, qword ptr [r12 + 4480]
 mov qword ptr [r12 + 4448], rax
 mov rax, qword ptr [r12 + 4488]
 mov qword ptr [r12 + 4456], rax
# marshal arg1 = producer-box slot [r12+4496] -> [r12+4464]
 mov rax, qword ptr [r12 + 4496]
 mov qword ptr [r12 + 4464], rax
 mov rax, qword ptr [r12 + 4504]
 mov qword ptr [r12 + 4472], rax
  .section .rodata
  .Lrkfn37: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn37]
 lea rsi, [r12 + 4448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4432], rax
 mov qword ptr [r12 + 4440], rdx
 cmp eax, 99
 je xchain0_n22_α
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n22_α
xchain0_n21_α:
# IR_VAR_REF local
bb22_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4400], rax
 mov qword ptr [r12 + 4408], rdx
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n22_α
xchain0_n22_α:
bb23_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+4336]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 4336], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 4344], rax
  .section .rodata
  .Lrkfn41: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn41]
 lea rsi, [r12 + 4336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp proc_area_ω
xchain0_n23_α:
# IR_LIT_INTEGER
bb24_α:
 mov qword ptr [r12 + 4416], 6
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 4424], rax
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp xchain0_n22_α
.Lx42_0:
 .quad 8708
xchain0_n24_α:
# IR_VAR_REF local
bb25_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4288], rax
 mov qword ptr [r12 + 4296], rdx
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n30_α
xchain0_n25_α:
bb26_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4400] -> [r12+4368]
 mov rax, qword ptr [r12 + 4400]
 mov qword ptr [r12 + 4368], rax
 mov rax, qword ptr [r12 + 4408]
 mov qword ptr [r12 + 4376], rax
# marshal arg1 = producer-box slot [r12+4416] -> [r12+4384]
 mov rax, qword ptr [r12 + 4416]
 mov qword ptr [r12 + 4384], rax
 mov rax, qword ptr [r12 + 4424]
 mov qword ptr [r12 + 4392], rax
  .section .rodata
  .Lrkfn46: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn46]
 lea rsi, [r12 + 4368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4352], rax
 mov qword ptr [r12 + 4360], rdx
 cmp eax, 99
 je xchain0_n22_α
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp xchain0_n22_α
xchain0_n26_α:
# IR_LIT_STRING
bb27_α:
 mov qword ptr [r12 + 4304], 1
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [r12 + 4312], rax
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp xchain0_n30_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "usa"
xchain0_n27_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb28_α:
 lea rax, [rip + xchain0_n22_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n27_β:
 jmp proc_area_ω
xchain0_n28_α:
bb29_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4288] -> [r12+4256]
 mov rax, qword ptr [r12 + 4288]
 mov qword ptr [r12 + 4256], rax
 mov rax, qword ptr [r12 + 4296]
 mov qword ptr [r12 + 4264], rax
# marshal arg1 = producer-box slot [r12+4304] -> [r12+4272]
 mov rax, qword ptr [r12 + 4304]
 mov qword ptr [r12 + 4272], rax
 mov rax, qword ptr [r12 + 4312]
 mov qword ptr [r12 + 4280], rax
  .section .rodata
  .Lrkfn51: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn51]
 lea rsi, [r12 + 4256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4240], rax
 mov qword ptr [r12 + 4248], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp xchain0_n30_α
xchain0_n29_α:
# IR_VAR_REF local
bb30_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4208], rax
 mov qword ptr [r12 + 4216], rdx
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp xchain0_n30_α
xchain0_n30_α:
bb31_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+4144]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 4144], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 4152], rax
  .section .rodata
  .Lrkfn55: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn55]
 lea rsi, [r12 + 4144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4128], rax
 mov qword ptr [r12 + 4136], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp proc_area_ω
xchain0_n31_α:
# IR_LIT_INTEGER
bb32_α:
 mov qword ptr [r12 + 4224], 6
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [r12 + 4232], rax
 jmp xchain0_n33_α
 xchain0_n31_β:
 jmp xchain0_n30_α
.Lx56_0:
 .quad 3609
xchain0_n32_α:
# IR_VAR_REF local
bb33_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4096], rax
 mov qword ptr [r12 + 4104], rdx
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n38_α
xchain0_n33_α:
bb34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4208] -> [r12+4176]
 mov rax, qword ptr [r12 + 4208]
 mov qword ptr [r12 + 4176], rax
 mov rax, qword ptr [r12 + 4216]
 mov qword ptr [r12 + 4184], rax
# marshal arg1 = producer-box slot [r12+4224] -> [r12+4192]
 mov rax, qword ptr [r12 + 4224]
 mov qword ptr [r12 + 4192], rax
 mov rax, qword ptr [r12 + 4232]
 mov qword ptr [r12 + 4200], rax
  .section .rodata
  .Lrkfn60: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn60]
 lea rsi, [r12 + 4176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4160], rax
 mov qword ptr [r12 + 4168], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n35_α
 xchain0_n33_β:
 jmp xchain0_n30_α
xchain0_n34_α:
# IR_LIT_STRING
bb35_α:
 mov qword ptr [r12 + 4112], 1
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [r12 + 4120], rax
 jmp xchain0_n36_α
 xchain0_n34_β:
 jmp xchain0_n38_α
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "indonesia"
xchain0_n35_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb36_α:
 lea rax, [rip + xchain0_n30_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n35_β:
 jmp proc_area_ω
xchain0_n36_α:
bb37_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4096] -> [r12+4064]
 mov rax, qword ptr [r12 + 4096]
 mov qword ptr [r12 + 4064], rax
 mov rax, qword ptr [r12 + 4104]
 mov qword ptr [r12 + 4072], rax
# marshal arg1 = producer-box slot [r12+4112] -> [r12+4080]
 mov rax, qword ptr [r12 + 4112]
 mov qword ptr [r12 + 4080], rax
 mov rax, qword ptr [r12 + 4120]
 mov qword ptr [r12 + 4088], rax
  .section .rodata
  .Lrkfn65: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn65]
 lea rsi, [r12 + 4064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4048], rax
 mov qword ptr [r12 + 4056], rdx
 cmp eax, 99
 je xchain0_n38_α
 jmp xchain0_n37_α
 xchain0_n36_β:
 jmp xchain0_n38_α
xchain0_n37_α:
# IR_VAR_REF local
bb38_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4016], rax
 mov qword ptr [r12 + 4024], rdx
 jmp xchain0_n39_α
 xchain0_n37_β:
 jmp xchain0_n38_α
xchain0_n38_α:
bb39_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+3952]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3952], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3960], rax
  .section .rodata
  .Lrkfn69: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn69]
 lea rsi, [r12 + 3952]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3936], rax
 mov qword ptr [r12 + 3944], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n40_α
 xchain0_n38_β:
 jmp proc_area_ω
xchain0_n39_α:
# IR_LIT_INTEGER
bb40_α:
 mov qword ptr [r12 + 4032], 6
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [r12 + 4040], rax
 jmp xchain0_n41_α
 xchain0_n39_β:
 jmp xchain0_n38_α
.Lx70_0:
 .quad 570
xchain0_n40_α:
# IR_VAR_REF local
bb41_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3904], rax
 mov qword ptr [r12 + 3912], rdx
 jmp xchain0_n42_α
 xchain0_n40_β:
 jmp xchain0_n46_α
xchain0_n41_α:
bb42_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4016] -> [r12+3984]
 mov rax, qword ptr [r12 + 4016]
 mov qword ptr [r12 + 3984], rax
 mov rax, qword ptr [r12 + 4024]
 mov qword ptr [r12 + 3992], rax
# marshal arg1 = producer-box slot [r12+4032] -> [r12+4000]
 mov rax, qword ptr [r12 + 4032]
 mov qword ptr [r12 + 4000], rax
 mov rax, qword ptr [r12 + 4040]
 mov qword ptr [r12 + 4008], rax
  .section .rodata
  .Lrkfn74: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn74]
 lea rsi, [r12 + 3984]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3968], rax
 mov qword ptr [r12 + 3976], rdx
 cmp eax, 99
 je xchain0_n38_α
 jmp xchain0_n43_α
 xchain0_n41_β:
 jmp xchain0_n38_α
xchain0_n42_α:
# IR_LIT_STRING
bb43_α:
 mov qword ptr [r12 + 3920], 1
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [r12 + 3928], rax
 jmp xchain0_n44_α
 xchain0_n42_β:
 jmp xchain0_n46_α
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
 .string "japan"
xchain0_n43_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb44_α:
 lea rax, [rip + xchain0_n38_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n43_β:
 jmp proc_area_ω
xchain0_n44_α:
bb45_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3904] -> [r12+3872]
 mov rax, qword ptr [r12 + 3904]
 mov qword ptr [r12 + 3872], rax
 mov rax, qword ptr [r12 + 3912]
 mov qword ptr [r12 + 3880], rax
# marshal arg1 = producer-box slot [r12+3920] -> [r12+3888]
 mov rax, qword ptr [r12 + 3920]
 mov qword ptr [r12 + 3888], rax
 mov rax, qword ptr [r12 + 3928]
 mov qword ptr [r12 + 3896], rax
  .section .rodata
  .Lrkfn79: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn79]
 lea rsi, [r12 + 3872]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3856], rax
 mov qword ptr [r12 + 3864], rdx
 cmp eax, 99
 je xchain0_n46_α
 jmp xchain0_n45_α
 xchain0_n44_β:
 jmp xchain0_n46_α
xchain0_n45_α:
# IR_VAR_REF local
bb46_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3824], rax
 mov qword ptr [r12 + 3832], rdx
 jmp xchain0_n47_α
 xchain0_n45_β:
 jmp xchain0_n46_α
xchain0_n46_α:
bb47_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+3760]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3760], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3768], rax
  .section .rodata
  .Lrkfn83: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn83]
 lea rsi, [r12 + 3760]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3744], rax
 mov qword ptr [r12 + 3752], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n48_α
 xchain0_n46_β:
 jmp proc_area_ω
xchain0_n47_α:
# IR_LIT_INTEGER
bb48_α:
 mov qword ptr [r12 + 3840], 6
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [r12 + 3848], rax
 jmp xchain0_n49_α
 xchain0_n47_β:
 jmp xchain0_n46_α
.Lx84_0:
 .quad 148
xchain0_n48_α:
# IR_VAR_REF local
bb49_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3712], rax
 mov qword ptr [r12 + 3720], rdx
 jmp xchain0_n50_α
 xchain0_n48_β:
 jmp xchain0_n54_α
xchain0_n49_α:
bb50_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3824] -> [r12+3792]
 mov rax, qword ptr [r12 + 3824]
 mov qword ptr [r12 + 3792], rax
 mov rax, qword ptr [r12 + 3832]
 mov qword ptr [r12 + 3800], rax
# marshal arg1 = producer-box slot [r12+3840] -> [r12+3808]
 mov rax, qword ptr [r12 + 3840]
 mov qword ptr [r12 + 3808], rax
 mov rax, qword ptr [r12 + 3848]
 mov qword ptr [r12 + 3816], rax
  .section .rodata
  .Lrkfn88: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn88]
 lea rsi, [r12 + 3792]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3776], rax
 mov qword ptr [r12 + 3784], rdx
 cmp eax, 99
 je xchain0_n46_α
 jmp xchain0_n51_α
 xchain0_n49_β:
 jmp xchain0_n46_α
xchain0_n50_α:
# IR_LIT_STRING
bb51_α:
 mov qword ptr [r12 + 3728], 1
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [r12 + 3736], rax
 jmp xchain0_n52_α
 xchain0_n50_β:
 jmp xchain0_n54_α
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string "brazil"
xchain0_n51_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb52_α:
 lea rax, [rip + xchain0_n46_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n51_β:
 jmp proc_area_ω
xchain0_n52_α:
bb53_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3712] -> [r12+3680]
 mov rax, qword ptr [r12 + 3712]
 mov qword ptr [r12 + 3680], rax
 mov rax, qword ptr [r12 + 3720]
 mov qword ptr [r12 + 3688], rax
# marshal arg1 = producer-box slot [r12+3728] -> [r12+3696]
 mov rax, qword ptr [r12 + 3728]
 mov qword ptr [r12 + 3696], rax
 mov rax, qword ptr [r12 + 3736]
 mov qword ptr [r12 + 3704], rax
  .section .rodata
  .Lrkfn93: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn93]
 lea rsi, [r12 + 3680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3664], rax
 mov qword ptr [r12 + 3672], rdx
 cmp eax, 99
 je xchain0_n54_α
 jmp xchain0_n53_α
 xchain0_n52_β:
 jmp xchain0_n54_α
xchain0_n53_α:
# IR_VAR_REF local
bb54_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3632], rax
 mov qword ptr [r12 + 3640], rdx
 jmp xchain0_n55_α
 xchain0_n53_β:
 jmp xchain0_n54_α
xchain0_n54_α:
bb55_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+3568]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3568], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3576], rax
  .section .rodata
  .Lrkfn97: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn97]
 lea rsi, [r12 + 3568]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3552], rax
 mov qword ptr [r12 + 3560], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n56_α
 xchain0_n54_β:
 jmp proc_area_ω
xchain0_n55_α:
# IR_LIT_INTEGER
bb56_α:
 mov qword ptr [r12 + 3648], 6
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [r12 + 3656], rax
 jmp xchain0_n57_α
 xchain0_n55_β:
 jmp xchain0_n54_α
.Lx98_0:
 .quad 3288
xchain0_n56_α:
# IR_VAR_REF local
bb57_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3520], rax
 mov qword ptr [r12 + 3528], rdx
 jmp xchain0_n58_α
 xchain0_n56_β:
 jmp xchain0_n62_α
xchain0_n57_α:
bb58_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3632] -> [r12+3600]
 mov rax, qword ptr [r12 + 3632]
 mov qword ptr [r12 + 3600], rax
 mov rax, qword ptr [r12 + 3640]
 mov qword ptr [r12 + 3608], rax
# marshal arg1 = producer-box slot [r12+3648] -> [r12+3616]
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 3616], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 3624], rax
  .section .rodata
  .Lrkfn102: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn102]
 lea rsi, [r12 + 3600]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3584], rax
 mov qword ptr [r12 + 3592], rdx
 cmp eax, 99
 je xchain0_n54_α
 jmp xchain0_n59_α
 xchain0_n57_β:
 jmp xchain0_n54_α
xchain0_n58_α:
# IR_LIT_STRING
bb59_α:
 mov qword ptr [r12 + 3536], 1
 mov rax, qword ptr [rip + .Lx103_0]
 mov qword ptr [r12 + 3544], rax
 jmp xchain0_n60_α
 xchain0_n58_β:
 jmp xchain0_n62_α
.Lx103_0:
 .quad .Lx103_0_s
.Lx103_0_s:
 .string "bangladesh"
xchain0_n59_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb60_α:
 lea rax, [rip + xchain0_n54_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n59_β:
 jmp proc_area_ω
xchain0_n60_α:
bb61_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3520] -> [r12+3488]
 mov rax, qword ptr [r12 + 3520]
 mov qword ptr [r12 + 3488], rax
 mov rax, qword ptr [r12 + 3528]
 mov qword ptr [r12 + 3496], rax
# marshal arg1 = producer-box slot [r12+3536] -> [r12+3504]
 mov rax, qword ptr [r12 + 3536]
 mov qword ptr [r12 + 3504], rax
 mov rax, qword ptr [r12 + 3544]
 mov qword ptr [r12 + 3512], rax
  .section .rodata
  .Lrkfn107: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn107]
 lea rsi, [r12 + 3488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], rdx
 cmp eax, 99
 je xchain0_n62_α
 jmp xchain0_n61_α
 xchain0_n60_β:
 jmp xchain0_n62_α
xchain0_n61_α:
# IR_VAR_REF local
bb62_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3440], rax
 mov qword ptr [r12 + 3448], rdx
 jmp xchain0_n63_α
 xchain0_n61_β:
 jmp xchain0_n62_α
xchain0_n62_α:
bb63_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+3376]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3376], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3384], rax
  .section .rodata
  .Lrkfn111: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn111]
 lea rsi, [r12 + 3376]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3360], rax
 mov qword ptr [r12 + 3368], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n64_α
 xchain0_n62_β:
 jmp proc_area_ω
xchain0_n63_α:
# IR_LIT_INTEGER
bb64_α:
 mov qword ptr [r12 + 3456], 6
 mov rax, qword ptr [rip + .Lx112_0]
 mov qword ptr [r12 + 3464], rax
 jmp xchain0_n65_α
 xchain0_n63_β:
 jmp xchain0_n62_α
.Lx112_0:
 .quad 55
xchain0_n64_α:
# IR_VAR_REF local
bb65_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3328], rax
 mov qword ptr [r12 + 3336], rdx
 jmp xchain0_n66_α
 xchain0_n64_β:
 jmp xchain0_n70_α
xchain0_n65_α:
bb66_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3440] -> [r12+3408]
 mov rax, qword ptr [r12 + 3440]
 mov qword ptr [r12 + 3408], rax
 mov rax, qword ptr [r12 + 3448]
 mov qword ptr [r12 + 3416], rax
# marshal arg1 = producer-box slot [r12+3456] -> [r12+3424]
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 3424], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 3432], rax
  .section .rodata
  .Lrkfn116: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn116]
 lea rsi, [r12 + 3408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3392], rax
 mov qword ptr [r12 + 3400], rdx
 cmp eax, 99
 je xchain0_n62_α
 jmp xchain0_n67_α
 xchain0_n65_β:
 jmp xchain0_n62_α
xchain0_n66_α:
# IR_LIT_STRING
bb67_α:
 mov qword ptr [r12 + 3344], 1
 mov rax, qword ptr [rip + .Lx117_0]
 mov qword ptr [r12 + 3352], rax
 jmp xchain0_n68_α
 xchain0_n66_β:
 jmp xchain0_n70_α
.Lx117_0:
 .quad .Lx117_0_s
.Lx117_0_s:
 .string "pakistan"
xchain0_n67_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb68_α:
 lea rax, [rip + xchain0_n62_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n67_β:
 jmp proc_area_ω
xchain0_n68_α:
bb69_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3328] -> [r12+3296]
 mov rax, qword ptr [r12 + 3328]
 mov qword ptr [r12 + 3296], rax
 mov rax, qword ptr [r12 + 3336]
 mov qword ptr [r12 + 3304], rax
# marshal arg1 = producer-box slot [r12+3344] -> [r12+3312]
 mov rax, qword ptr [r12 + 3344]
 mov qword ptr [r12 + 3312], rax
 mov rax, qword ptr [r12 + 3352]
 mov qword ptr [r12 + 3320], rax
  .section .rodata
  .Lrkfn121: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn121]
 lea rsi, [r12 + 3296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3280], rax
 mov qword ptr [r12 + 3288], rdx
 cmp eax, 99
 je xchain0_n70_α
 jmp xchain0_n69_α
 xchain0_n68_β:
 jmp xchain0_n70_α
xchain0_n69_α:
# IR_VAR_REF local
bb70_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3248], rax
 mov qword ptr [r12 + 3256], rdx
 jmp xchain0_n71_α
 xchain0_n69_β:
 jmp xchain0_n70_α
xchain0_n70_α:
bb71_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+3184]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3184], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3192], rax
  .section .rodata
  .Lrkfn125: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn125]
 lea rsi, [r12 + 3184]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3168], rax
 mov qword ptr [r12 + 3176], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n72_α
 xchain0_n70_β:
 jmp proc_area_ω
xchain0_n71_α:
# IR_LIT_INTEGER
bb72_α:
 mov qword ptr [r12 + 3264], 6
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [r12 + 3272], rax
 jmp xchain0_n73_α
 xchain0_n71_β:
 jmp xchain0_n70_α
.Lx126_0:
 .quad 311
xchain0_n72_α:
# IR_VAR_REF local
bb73_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
 jmp xchain0_n74_α
 xchain0_n72_β:
 jmp xchain0_n78_α
xchain0_n73_α:
bb74_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3248] -> [r12+3216]
 mov rax, qword ptr [r12 + 3248]
 mov qword ptr [r12 + 3216], rax
 mov rax, qword ptr [r12 + 3256]
 mov qword ptr [r12 + 3224], rax
# marshal arg1 = producer-box slot [r12+3264] -> [r12+3232]
 mov rax, qword ptr [r12 + 3264]
 mov qword ptr [r12 + 3232], rax
 mov rax, qword ptr [r12 + 3272]
 mov qword ptr [r12 + 3240], rax
  .section .rodata
  .Lrkfn130: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn130]
 lea rsi, [r12 + 3216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3200], rax
 mov qword ptr [r12 + 3208], rdx
 cmp eax, 99
 je xchain0_n70_α
 jmp xchain0_n75_α
 xchain0_n73_β:
 jmp xchain0_n70_α
xchain0_n74_α:
# IR_LIT_STRING
bb75_α:
 mov qword ptr [r12 + 3152], 1
 mov rax, qword ptr [rip + .Lx131_0]
 mov qword ptr [r12 + 3160], rax
 jmp xchain0_n76_α
 xchain0_n74_β:
 jmp xchain0_n78_α
.Lx131_0:
 .quad .Lx131_0_s
.Lx131_0_s:
 .string "w_germany"
xchain0_n75_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb76_α:
 lea rax, [rip + xchain0_n70_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n75_β:
 jmp proc_area_ω
xchain0_n76_α:
bb77_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3136] -> [r12+3104]
 mov rax, qword ptr [r12 + 3136]
 mov qword ptr [r12 + 3104], rax
 mov rax, qword ptr [r12 + 3144]
 mov qword ptr [r12 + 3112], rax
# marshal arg1 = producer-box slot [r12+3152] -> [r12+3120]
 mov rax, qword ptr [r12 + 3152]
 mov qword ptr [r12 + 3120], rax
 mov rax, qword ptr [r12 + 3160]
 mov qword ptr [r12 + 3128], rax
  .section .rodata
  .Lrkfn135: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn135]
 lea rsi, [r12 + 3104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3088], rax
 mov qword ptr [r12 + 3096], rdx
 cmp eax, 99
 je xchain0_n78_α
 jmp xchain0_n77_α
 xchain0_n76_β:
 jmp xchain0_n78_α
xchain0_n77_α:
# IR_VAR_REF local
bb78_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 jmp xchain0_n79_α
 xchain0_n77_β:
 jmp xchain0_n78_α
xchain0_n78_α:
bb79_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+2992]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3000], rax
  .section .rodata
  .Lrkfn139: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn139]
 lea rsi, [r12 + 2992]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n80_α
 xchain0_n78_β:
 jmp proc_area_ω
xchain0_n79_α:
# IR_LIT_INTEGER
bb80_α:
 mov qword ptr [r12 + 3072], 6
 mov rax, qword ptr [rip + .Lx140_0]
 mov qword ptr [r12 + 3080], rax
 jmp xchain0_n81_α
 xchain0_n79_β:
 jmp xchain0_n78_α
.Lx140_0:
 .quad 96
xchain0_n80_α:
# IR_VAR_REF local
bb81_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2944], rax
 mov qword ptr [r12 + 2952], rdx
 jmp xchain0_n82_α
 xchain0_n80_β:
 jmp xchain0_n86_α
xchain0_n81_α:
bb82_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3056] -> [r12+3024]
 mov rax, qword ptr [r12 + 3056]
 mov qword ptr [r12 + 3024], rax
 mov rax, qword ptr [r12 + 3064]
 mov qword ptr [r12 + 3032], rax
# marshal arg1 = producer-box slot [r12+3072] -> [r12+3040]
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 3040], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 3048], rax
  .section .rodata
  .Lrkfn144: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn144]
 lea rsi, [r12 + 3024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 cmp eax, 99
 je xchain0_n78_α
 jmp xchain0_n83_α
 xchain0_n81_β:
 jmp xchain0_n78_α
xchain0_n82_α:
# IR_LIT_STRING
bb83_α:
 mov qword ptr [r12 + 2960], 1
 mov rax, qword ptr [rip + .Lx145_0]
 mov qword ptr [r12 + 2968], rax
 jmp xchain0_n84_α
 xchain0_n82_β:
 jmp xchain0_n86_α
.Lx145_0:
 .quad .Lx145_0_s
.Lx145_0_s:
 .string "nigeria"
xchain0_n83_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb84_α:
 lea rax, [rip + xchain0_n78_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n83_β:
 jmp proc_area_ω
xchain0_n84_α:
bb85_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2944] -> [r12+2912]
 mov rax, qword ptr [r12 + 2944]
 mov qword ptr [r12 + 2912], rax
 mov rax, qword ptr [r12 + 2952]
 mov qword ptr [r12 + 2920], rax
# marshal arg1 = producer-box slot [r12+2960] -> [r12+2928]
 mov rax, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 2928], rax
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 2936], rax
  .section .rodata
  .Lrkfn149: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn149]
 lea rsi, [r12 + 2912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2896], rax
 mov qword ptr [r12 + 2904], rdx
 cmp eax, 99
 je xchain0_n86_α
 jmp xchain0_n85_α
 xchain0_n84_β:
 jmp xchain0_n86_α
xchain0_n85_α:
# IR_VAR_REF local
bb86_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], rdx
 jmp xchain0_n87_α
 xchain0_n85_β:
 jmp xchain0_n86_α
xchain0_n86_α:
bb87_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+2800]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2800], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2808], rax
  .section .rodata
  .Lrkfn153: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn153]
 lea rsi, [r12 + 2800]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2784], rax
 mov qword ptr [r12 + 2792], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n88_α
 xchain0_n86_β:
 jmp proc_area_ω
xchain0_n87_α:
# IR_LIT_INTEGER
bb88_α:
 mov qword ptr [r12 + 2880], 6
 mov rax, qword ptr [rip + .Lx154_0]
 mov qword ptr [r12 + 2888], rax
 jmp xchain0_n89_α
 xchain0_n87_β:
 jmp xchain0_n86_α
.Lx154_0:
 .quad 373
xchain0_n88_α:
# IR_VAR_REF local
bb89_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 jmp xchain0_n90_α
 xchain0_n88_β:
 jmp xchain0_n94_α
xchain0_n89_α:
bb90_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn158: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn158]
 lea rsi, [r12 + 2832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 cmp eax, 99
 je xchain0_n86_α
 jmp xchain0_n91_α
 xchain0_n89_β:
 jmp xchain0_n86_α
xchain0_n90_α:
# IR_LIT_STRING
bb91_α:
 mov qword ptr [r12 + 2768], 1
 mov rax, qword ptr [rip + .Lx159_0]
 mov qword ptr [r12 + 2776], rax
 jmp xchain0_n92_α
 xchain0_n90_β:
 jmp xchain0_n94_α
.Lx159_0:
 .quad .Lx159_0_s
.Lx159_0_s:
 .string "mexico"
xchain0_n91_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb92_α:
 lea rax, [rip + xchain0_n86_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n91_β:
 jmp proc_area_ω
xchain0_n92_α:
bb93_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2752] -> [r12+2720]
 mov rax, qword ptr [r12 + 2752]
 mov qword ptr [r12 + 2720], rax
 mov rax, qword ptr [r12 + 2760]
 mov qword ptr [r12 + 2728], rax
# marshal arg1 = producer-box slot [r12+2768] -> [r12+2736]
 mov rax, qword ptr [r12 + 2768]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 2776]
 mov qword ptr [r12 + 2744], rax
  .section .rodata
  .Lrkfn163: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn163]
 lea rsi, [r12 + 2720]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2704], rax
 mov qword ptr [r12 + 2712], rdx
 cmp eax, 99
 je xchain0_n94_α
 jmp xchain0_n93_α
 xchain0_n92_β:
 jmp xchain0_n94_α
xchain0_n93_α:
# IR_VAR_REF local
bb94_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 jmp xchain0_n95_α
 xchain0_n93_β:
 jmp xchain0_n94_α
xchain0_n94_α:
bb95_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+2608]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2608], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2616], rax
  .section .rodata
  .Lrkfn167: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn167]
 lea rsi, [r12 + 2608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n96_α
 xchain0_n94_β:
 jmp proc_area_ω
xchain0_n95_α:
# IR_LIT_INTEGER
bb96_α:
 mov qword ptr [r12 + 2688], 6
 mov rax, qword ptr [rip + .Lx168_0]
 mov qword ptr [r12 + 2696], rax
 jmp xchain0_n97_α
 xchain0_n95_β:
 jmp xchain0_n94_α
.Lx168_0:
 .quad 764
xchain0_n96_α:
# IR_VAR_REF local
bb97_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 jmp xchain0_n98_α
 xchain0_n96_β:
 jmp xchain0_n102_α
xchain0_n97_α:
bb98_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2672] -> [r12+2640]
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 2640], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 2648], rax
# marshal arg1 = producer-box slot [r12+2688] -> [r12+2656]
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 2656], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 2664], rax
  .section .rodata
  .Lrkfn172: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn172]
 lea rsi, [r12 + 2640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 cmp eax, 99
 je xchain0_n94_α
 jmp xchain0_n99_α
 xchain0_n97_β:
 jmp xchain0_n94_α
xchain0_n98_α:
# IR_LIT_STRING
bb99_α:
 mov qword ptr [r12 + 2576], 1
 mov rax, qword ptr [rip + .Lx173_0]
 mov qword ptr [r12 + 2584], rax
 jmp xchain0_n100_α
 xchain0_n98_β:
 jmp xchain0_n102_α
.Lx173_0:
 .quad .Lx173_0_s
.Lx173_0_s:
 .string "uk"
xchain0_n99_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb100_α:
 lea rax, [rip + xchain0_n94_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n99_β:
 jmp proc_area_ω
xchain0_n100_α:
bb101_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2560] -> [r12+2528]
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 2528], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 2536], rax
# marshal arg1 = producer-box slot [r12+2576] -> [r12+2544]
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 2544], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 2552], rax
  .section .rodata
  .Lrkfn177: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn177]
 lea rsi, [r12 + 2528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 cmp eax, 99
 je xchain0_n102_α
 jmp xchain0_n101_α
 xchain0_n100_β:
 jmp xchain0_n102_α
xchain0_n101_α:
# IR_VAR_REF local
bb102_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 jmp xchain0_n103_α
 xchain0_n101_β:
 jmp xchain0_n102_α
xchain0_n102_α:
bb103_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+2416]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2416], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2424], rax
  .section .rodata
  .Lrkfn181: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn181]
 lea rsi, [r12 + 2416]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n104_α
 xchain0_n102_β:
 jmp proc_area_ω
xchain0_n103_α:
# IR_LIT_INTEGER
bb104_α:
 mov qword ptr [r12 + 2496], 6
 mov rax, qword ptr [rip + .Lx182_0]
 mov qword ptr [r12 + 2504], rax
 jmp xchain0_n105_α
 xchain0_n103_β:
 jmp xchain0_n102_α
.Lx182_0:
 .quad 86
xchain0_n104_α:
# IR_VAR_REF local
bb105_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2368], rax
 mov qword ptr [r12 + 2376], rdx
 jmp xchain0_n106_α
 xchain0_n104_β:
 jmp xchain0_n110_α
xchain0_n105_α:
bb106_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2480] -> [r12+2448]
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 2448], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 2456], rax
# marshal arg1 = producer-box slot [r12+2496] -> [r12+2464]
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 2464], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 2472], rax
  .section .rodata
  .Lrkfn186: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn186]
 lea rsi, [r12 + 2448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 cmp eax, 99
 je xchain0_n102_α
 jmp xchain0_n107_α
 xchain0_n105_β:
 jmp xchain0_n102_α
xchain0_n106_α:
# IR_LIT_STRING
bb107_α:
 mov qword ptr [r12 + 2384], 1
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [r12 + 2392], rax
 jmp xchain0_n108_α
 xchain0_n106_β:
 jmp xchain0_n110_α
.Lx187_0:
 .quad .Lx187_0_s
.Lx187_0_s:
 .string "italy"
xchain0_n107_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb108_α:
 lea rax, [rip + xchain0_n102_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n107_β:
 jmp proc_area_ω
xchain0_n108_α:
bb109_α:
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
  .Lrkfn191: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn191]
 lea rsi, [r12 + 2336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 cmp eax, 99
 je xchain0_n110_α
 jmp xchain0_n109_α
 xchain0_n108_β:
 jmp xchain0_n110_α
xchain0_n109_α:
# IR_VAR_REF local
bb110_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain0_n111_α
 xchain0_n109_β:
 jmp xchain0_n110_α
xchain0_n110_α:
bb111_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+2224]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2232], rax
  .section .rodata
  .Lrkfn195: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn195]
 lea rsi, [r12 + 2224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n112_α
 xchain0_n110_β:
 jmp proc_area_ω
xchain0_n111_α:
# IR_LIT_INTEGER
bb112_α:
 mov qword ptr [r12 + 2304], 6
 mov rax, qword ptr [rip + .Lx196_0]
 mov qword ptr [r12 + 2312], rax
 jmp xchain0_n113_α
 xchain0_n111_β:
 jmp xchain0_n110_α
.Lx196_0:
 .quad 116
xchain0_n112_α:
# IR_VAR_REF local
bb113_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain0_n114_α
 xchain0_n112_β:
 jmp xchain0_n118_α
xchain0_n113_α:
bb114_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2288] -> [r12+2256]
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 2256], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 2264], rax
# marshal arg1 = producer-box slot [r12+2304] -> [r12+2272]
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 2272], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2280], rax
  .section .rodata
  .Lrkfn200: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn200]
 lea rsi, [r12 + 2256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 cmp eax, 99
 je xchain0_n110_α
 jmp xchain0_n115_α
 xchain0_n113_β:
 jmp xchain0_n110_α
xchain0_n114_α:
# IR_LIT_STRING
bb115_α:
 mov qword ptr [r12 + 2192], 1
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [r12 + 2200], rax
 jmp xchain0_n116_α
 xchain0_n114_β:
 jmp xchain0_n118_α
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string "france"
xchain0_n115_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb116_α:
 lea rax, [rip + xchain0_n110_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n115_β:
 jmp proc_area_ω
xchain0_n116_α:
bb117_α:
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
  .Lrkfn205: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn205]
 lea rsi, [r12 + 2144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 cmp eax, 99
 je xchain0_n118_α
 jmp xchain0_n117_α
 xchain0_n116_β:
 jmp xchain0_n118_α
xchain0_n117_α:
# IR_VAR_REF local
bb118_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain0_n119_α
 xchain0_n117_β:
 jmp xchain0_n118_α
xchain0_n118_α:
bb119_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+2032]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2040], rax
  .section .rodata
  .Lrkfn209: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn209]
 lea rsi, [r12 + 2032]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n120_α
 xchain0_n118_β:
 jmp proc_area_ω
xchain0_n119_α:
# IR_LIT_INTEGER
bb120_α:
 mov qword ptr [r12 + 2112], 6
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [r12 + 2120], rax
 jmp xchain0_n121_α
 xchain0_n119_β:
 jmp xchain0_n118_α
.Lx210_0:
 .quad 213
xchain0_n120_α:
# IR_VAR_REF local
bb121_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xchain0_n122_α
 xchain0_n120_β:
 jmp xchain0_n126_α
xchain0_n121_α:
bb122_α:
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
  .Lrkfn214: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn214]
 lea rsi, [r12 + 2064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 cmp eax, 99
 je xchain0_n118_α
 jmp xchain0_n123_α
 xchain0_n121_β:
 jmp xchain0_n118_α
xchain0_n122_α:
# IR_LIT_STRING
bb123_α:
 mov qword ptr [r12 + 2000], 1
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [r12 + 2008], rax
 jmp xchain0_n124_α
 xchain0_n122_β:
 jmp xchain0_n126_α
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "philippines"
xchain0_n123_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb124_α:
 lea rax, [rip + xchain0_n118_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n123_β:
 jmp proc_area_ω
xchain0_n124_α:
bb125_α:
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
  .Lrkfn219: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn219]
 lea rsi, [r12 + 1952]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 cmp eax, 99
 je xchain0_n126_α
 jmp xchain0_n125_α
 xchain0_n124_β:
 jmp xchain0_n126_α
xchain0_n125_α:
# IR_VAR_REF local
bb126_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain0_n127_α
 xchain0_n125_β:
 jmp xchain0_n126_α
xchain0_n126_α:
bb127_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+1840]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1848], rax
  .section .rodata
  .Lrkfn223: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn223]
 lea rsi, [r12 + 1840]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n128_α
 xchain0_n126_β:
 jmp proc_area_ω
xchain0_n127_α:
# IR_LIT_INTEGER
bb128_α:
 mov qword ptr [r12 + 1920], 6
 mov rax, qword ptr [rip + .Lx224_0]
 mov qword ptr [r12 + 1928], rax
 jmp xchain0_n129_α
 xchain0_n127_β:
 jmp xchain0_n126_α
.Lx224_0:
 .quad 90
xchain0_n128_α:
# IR_VAR_REF local
bb129_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain0_n130_α
 xchain0_n128_β:
 jmp xchain0_n134_α
xchain0_n129_α:
bb130_α:
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
  .Lrkfn228: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn228]
 lea rsi, [r12 + 1872]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 cmp eax, 99
 je xchain0_n126_α
 jmp xchain0_n131_α
 xchain0_n129_β:
 jmp xchain0_n126_α
xchain0_n130_α:
# IR_LIT_STRING
bb131_α:
 mov qword ptr [r12 + 1808], 1
 mov rax, qword ptr [rip + .Lx229_0]
 mov qword ptr [r12 + 1816], rax
 jmp xchain0_n132_α
 xchain0_n130_β:
 jmp xchain0_n134_α
.Lx229_0:
 .quad .Lx229_0_s
.Lx229_0_s:
 .string "thailand"
xchain0_n131_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb132_α:
 lea rax, [rip + xchain0_n126_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n131_β:
 jmp proc_area_ω
xchain0_n132_α:
bb133_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1792] -> [r12+1760]
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1768], rax
# marshal arg1 = producer-box slot [r12+1808] -> [r12+1776]
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1784], rax
  .section .rodata
  .Lrkfn233: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn233]
 lea rsi, [r12 + 1760]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 cmp eax, 99
 je xchain0_n134_α
 jmp xchain0_n133_α
 xchain0_n132_β:
 jmp xchain0_n134_α
xchain0_n133_α:
# IR_VAR_REF local
bb134_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain0_n135_α
 xchain0_n133_β:
 jmp xchain0_n134_α
xchain0_n134_α:
bb135_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+1648]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1656], rax
  .section .rodata
  .Lrkfn237: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn237]
 lea rsi, [r12 + 1648]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n136_α
 xchain0_n134_β:
 jmp proc_area_ω
xchain0_n135_α:
# IR_LIT_INTEGER
bb136_α:
 mov qword ptr [r12 + 1728], 6
 mov rax, qword ptr [rip + .Lx238_0]
 mov qword ptr [r12 + 1736], rax
 jmp xchain0_n137_α
 xchain0_n135_β:
 jmp xchain0_n134_α
.Lx238_0:
 .quad 200
xchain0_n136_α:
# IR_VAR_REF local
bb137_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain0_n138_α
 xchain0_n136_β:
 jmp xchain0_n142_α
xchain0_n137_α:
bb138_α:
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
  .Lrkfn242: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn242]
 lea rsi, [r12 + 1680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 cmp eax, 99
 je xchain0_n134_α
 jmp xchain0_n139_α
 xchain0_n137_β:
 jmp xchain0_n134_α
xchain0_n138_α:
# IR_LIT_STRING
bb139_α:
 mov qword ptr [r12 + 1616], 1
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain0_n140_α
 xchain0_n138_β:
 jmp xchain0_n142_α
.Lx243_0:
 .quad .Lx243_0_s
.Lx243_0_s:
 .string "turkey"
xchain0_n139_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb140_α:
 lea rax, [rip + xchain0_n134_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n139_β:
 jmp proc_area_ω
xchain0_n140_α:
bb141_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1600] -> [r12+1568]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1576], rax
# marshal arg1 = producer-box slot [r12+1616] -> [r12+1584]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1592], rax
  .section .rodata
  .Lrkfn247: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn247]
 lea rsi, [r12 + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 cmp eax, 99
 je xchain0_n142_α
 jmp xchain0_n141_α
 xchain0_n140_β:
 jmp xchain0_n142_α
xchain0_n141_α:
# IR_VAR_REF local
bb142_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain0_n143_α
 xchain0_n141_β:
 jmp xchain0_n142_α
xchain0_n142_α:
bb143_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+1456]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1464], rax
  .section .rodata
  .Lrkfn251: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn251]
 lea rsi, [r12 + 1456]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n144_α
 xchain0_n142_β:
 jmp proc_area_ω
xchain0_n143_α:
# IR_LIT_INTEGER
bb144_α:
 mov qword ptr [r12 + 1536], 6
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [r12 + 1544], rax
 jmp xchain0_n145_α
 xchain0_n143_β:
 jmp xchain0_n142_α
.Lx252_0:
 .quad 296
xchain0_n144_α:
# IR_VAR_REF local
bb145_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain0_n146_α
 xchain0_n144_β:
 jmp xchain0_n150_α
xchain0_n145_α:
bb146_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1520] -> [r12+1488]
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1496], rax
# marshal arg1 = producer-box slot [r12+1536] -> [r12+1504]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1512], rax
  .section .rodata
  .Lrkfn256: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn256]
 lea rsi, [r12 + 1488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 cmp eax, 99
 je xchain0_n142_α
 jmp xchain0_n147_α
 xchain0_n145_β:
 jmp xchain0_n142_α
xchain0_n146_α:
# IR_LIT_STRING
bb147_α:
 mov qword ptr [r12 + 1424], 1
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [r12 + 1432], rax
 jmp xchain0_n148_α
 xchain0_n146_β:
 jmp xchain0_n150_α
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "egypt"
xchain0_n147_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb148_α:
 lea rax, [rip + xchain0_n142_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n147_β:
 jmp proc_area_ω
xchain0_n148_α:
bb149_α:
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
  .Lrkfn261: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn261]
 lea rsi, [r12 + 1376]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 cmp eax, 99
 je xchain0_n150_α
 jmp xchain0_n149_α
 xchain0_n148_β:
 jmp xchain0_n150_α
xchain0_n149_α:
# IR_VAR_REF local
bb150_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain0_n151_α
 xchain0_n149_β:
 jmp xchain0_n150_α
xchain0_n150_α:
bb151_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+1264]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1272], rax
  .section .rodata
  .Lrkfn265: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn265]
 lea rsi, [r12 + 1264]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n152_α
 xchain0_n150_β:
 jmp proc_area_ω
xchain0_n151_α:
# IR_LIT_INTEGER
bb152_α:
 mov qword ptr [r12 + 1344], 6
 mov rax, qword ptr [rip + .Lx266_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain0_n153_α
 xchain0_n151_β:
 jmp xchain0_n150_α
.Lx266_0:
 .quad 386
xchain0_n152_α:
# IR_VAR_REF local
bb153_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain0_n154_α
 xchain0_n152_β:
 jmp xchain0_n158_α
xchain0_n153_α:
bb154_α:
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
  .Lrkfn270: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn270]
 lea rsi, [r12 + 1296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xchain0_n150_α
 jmp xchain0_n155_α
 xchain0_n153_β:
 jmp xchain0_n150_α
xchain0_n154_α:
# IR_LIT_STRING
bb155_α:
 mov qword ptr [r12 + 1232], 1
 mov rax, qword ptr [rip + .Lx271_0]
 mov qword ptr [r12 + 1240], rax
 jmp xchain0_n156_α
 xchain0_n154_β:
 jmp xchain0_n158_α
.Lx271_0:
 .quad .Lx271_0_s
.Lx271_0_s:
 .string "spain"
xchain0_n155_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb156_α:
 lea rax, [rip + xchain0_n150_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n155_β:
 jmp proc_area_ω
xchain0_n156_α:
bb157_α:
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
  .Lrkfn275: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn275]
 lea rsi, [r12 + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain0_n158_α
 jmp xchain0_n157_α
 xchain0_n156_β:
 jmp xchain0_n158_α
xchain0_n157_α:
# IR_VAR_REF local
bb158_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain0_n159_α
 xchain0_n157_β:
 jmp xchain0_n158_α
xchain0_n158_α:
bb159_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+1072]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn279: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn279]
 lea rsi, [r12 + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n160_α
 xchain0_n158_β:
 jmp proc_area_ω
xchain0_n159_α:
# IR_LIT_INTEGER
bb160_α:
 mov qword ptr [r12 + 1152], 6
 mov rax, qword ptr [rip + .Lx280_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain0_n161_α
 xchain0_n159_β:
 jmp xchain0_n158_α
.Lx280_0:
 .quad 190
xchain0_n160_α:
# IR_VAR_REF local
bb161_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain0_n162_α
 xchain0_n160_β:
 jmp xchain0_n166_α
xchain0_n161_α:
bb162_α:
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
  .Lrkfn284: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn284]
 lea rsi, [r12 + 1104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je xchain0_n158_α
 jmp xchain0_n163_α
 xchain0_n161_β:
 jmp xchain0_n158_α
xchain0_n162_α:
# IR_LIT_STRING
bb163_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx285_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain0_n164_α
 xchain0_n162_β:
 jmp xchain0_n166_α
.Lx285_0:
 .quad .Lx285_0_s
.Lx285_0_s:
 .string "poland"
xchain0_n163_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb164_α:
 lea rax, [rip + xchain0_n158_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n163_β:
 jmp proc_area_ω
xchain0_n164_α:
bb165_α:
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
  .Lrkfn289: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn289]
 lea rsi, [r12 + 992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain0_n166_α
 jmp xchain0_n165_α
 xchain0_n164_β:
 jmp xchain0_n166_α
xchain0_n165_α:
# IR_VAR_REF local
bb166_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain0_n167_α
 xchain0_n165_β:
 jmp xchain0_n166_α
xchain0_n166_α:
bb167_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+880]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lrkfn293: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn293]
 lea rsi, [r12 + 880]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n168_α
 xchain0_n166_β:
 jmp proc_area_ω
xchain0_n167_α:
# IR_LIT_INTEGER
bb168_α:
 mov qword ptr [r12 + 960], 6
 mov rax, qword ptr [rip + .Lx294_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain0_n169_α
 xchain0_n167_β:
 jmp xchain0_n166_α
.Lx294_0:
 .quad 121
xchain0_n168_α:
# IR_VAR_REF local
bb169_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain0_n170_α
 xchain0_n168_β:
 jmp xchain0_n174_α
xchain0_n169_α:
bb170_α:
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
  .Lrkfn298: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn298]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain0_n166_α
 jmp xchain0_n171_α
 xchain0_n169_β:
 jmp xchain0_n166_α
xchain0_n170_α:
# IR_LIT_STRING
bb171_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx299_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain0_n172_α
 xchain0_n170_β:
 jmp xchain0_n174_α
.Lx299_0:
 .quad .Lx299_0_s
.Lx299_0_s:
 .string "s_korea"
xchain0_n171_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb172_α:
 lea rax, [rip + xchain0_n166_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n171_β:
 jmp proc_area_ω
xchain0_n172_α:
bb173_α:
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
  .Lrkfn303: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn303]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain0_n174_α
 jmp xchain0_n173_α
 xchain0_n172_β:
 jmp xchain0_n174_α
xchain0_n173_α:
# IR_VAR_REF local
bb174_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain0_n175_α
 xchain0_n173_β:
 jmp xchain0_n174_α
xchain0_n174_α:
bb175_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+688]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn307: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn307]
 lea rsi, [r12 + 688]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n176_α
 xchain0_n174_β:
 jmp proc_area_ω
xchain0_n175_α:
# IR_LIT_INTEGER
bb176_α:
 mov qword ptr [r12 + 768], 6
 mov rax, qword ptr [rip + .Lx308_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain0_n177_α
 xchain0_n175_β:
 jmp xchain0_n174_α
.Lx308_0:
 .quad 37
xchain0_n176_α:
# IR_VAR_REF local
bb177_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain0_n178_α
 xchain0_n176_β:
 jmp xchain0_n182_α
xchain0_n177_α:
bb178_α:
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
  .Lrkfn312: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn312]
 lea rsi, [r12 + 720]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain0_n174_α
 jmp xchain0_n179_α
 xchain0_n177_β:
 jmp xchain0_n174_α
xchain0_n178_α:
# IR_LIT_STRING
bb179_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx313_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain0_n180_α
 xchain0_n178_β:
 jmp xchain0_n182_α
.Lx313_0:
 .quad .Lx313_0_s
.Lx313_0_s:
 .string "iran"
xchain0_n179_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb180_α:
 lea rax, [rip + xchain0_n174_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n179_β:
 jmp proc_area_ω
xchain0_n180_α:
bb181_α:
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
  .Lrkfn317: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn317]
 lea rsi, [r12 + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain0_n182_α
 jmp xchain0_n181_α
 xchain0_n180_β:
 jmp xchain0_n182_α
xchain0_n181_α:
# IR_VAR_REF local
bb182_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n183_α
 xchain0_n181_β:
 jmp xchain0_n182_α
xchain0_n182_α:
bb183_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+496]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn321: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn321]
 lea rsi, [r12 + 496]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n184_α
 xchain0_n182_β:
 jmp proc_area_ω
xchain0_n183_α:
# IR_LIT_INTEGER
bb184_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx322_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n185_α
 xchain0_n183_β:
 jmp xchain0_n182_α
.Lx322_0:
 .quad 628
xchain0_n184_α:
# IR_VAR_REF local
bb185_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain0_n186_α
 xchain0_n184_β:
 jmp xchain0_n190_α
xchain0_n185_α:
bb186_α:
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
  .Lrkfn326: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn326]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain0_n182_α
 jmp xchain0_n187_α
 xchain0_n185_β:
 jmp xchain0_n182_α
xchain0_n186_α:
# IR_LIT_STRING
bb187_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx327_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n188_α
 xchain0_n186_β:
 jmp xchain0_n190_α
.Lx327_0:
 .quad .Lx327_0_s
.Lx327_0_s:
 .string "ethiopia"
xchain0_n187_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb188_α:
 lea rax, [rip + xchain0_n182_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n187_β:
 jmp proc_area_ω
xchain0_n188_α:
bb189_α:
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
  .Lrkfn331: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn331]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain0_n190_α
 jmp xchain0_n189_α
 xchain0_n188_β:
 jmp xchain0_n190_α
xchain0_n189_α:
# IR_VAR_REF local
bb190_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n191_α
 xchain0_n189_β:
 jmp xchain0_n190_α
xchain0_n190_α:
bb191_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+304]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn335: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn335]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je proc_area_ω
 jmp xchain0_n192_α
 xchain0_n190_β:
 jmp proc_area_ω
xchain0_n191_α:
# IR_LIT_INTEGER
bb192_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx336_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain0_n193_α
 xchain0_n191_β:
 jmp xchain0_n190_α
.Lx336_0:
 .quad 350
xchain0_n192_α:
# IR_VAR_REF local
bb193_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n194_α
 xchain0_n192_β:
 jmp xchain0_n198_α
xchain0_n193_α:
bb194_α:
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
  .Lrkfn340: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn340]
 lea rsi, [r12 + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain0_n190_α
 jmp xchain0_n195_α
 xchain0_n193_β:
 jmp xchain0_n190_α
xchain0_n194_α:
# IR_LIT_STRING
bb195_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx341_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n196_α
 xchain0_n194_β:
 jmp xchain0_n198_α
.Lx341_0:
 .quad .Lx341_0_s
.Lx341_0_s:
 .string "argentina"
xchain0_n195_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb196_α:
 lea rax, [rip + xchain0_n190_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n195_β:
 jmp proc_area_ω
xchain0_n196_α:
bb197_α:
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
  .Lrkfn345: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn345]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain0_n198_α
 jmp xchain0_n197_α
 xchain0_n196_β:
 jmp xchain0_n198_α
xchain0_n197_α:
# IR_VAR_REF local
bb198_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain0_n199_α
 xchain0_n197_β:
 jmp xchain0_n198_α
xchain0_n198_α:
bb199_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn349: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn349]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_area_ω
 jmp proc_area_ω
 xchain0_n198_β:
 jmp proc_area_ω
xchain0_n199_α:
# IR_LIT_INTEGER
bb200_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx350_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain0_n200_α
 xchain0_n199_β:
 jmp xchain0_n198_α
.Lx350_0:
 .quad 1080
xchain0_n200_α:
bb201_α:
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
  .Lrkfn352: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn352]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain0_n198_α
 jmp xchain0_n201_α
 xchain0_n200_β:
 jmp xchain0_n198_α
xchain0_n201_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb202_α:
 lea rax, [rip + xchain0_n198_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area_γ
 xchain0_n201_β:
 jmp proc_area_ω
proc_area_β:
jmp xchain0_n12_α
proc_area_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_area_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_query_α
proc_query_α:
#=======================================================================================================================
    .global proc_query_α
    .global proc_query_β
    .global proc_query_γ
    .global proc_query_ω
push r12
  mov r12, rdi
  cmp esi, 0
  jne proc_query_β
proc_query_α_body:
xchain355_n0_α:
bb203_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn357: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn357]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_query_ω
 jmp xchain355_n1_α
 xchain355_n0_β:
 jmp proc_query_ω
xchain355_n1_α:
# IR_VAR_REF local
bb204_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain355_n2_α
 xchain355_n1_β:
 jmp xchain355_n16_α
xchain355_n2_α:
# IR_LIT_STRING
bb205_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx360_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain355_n3_α
 xchain355_n2_β:
 jmp proc_query_ω
.Lx360_0:
 .quad .Lx360_0_s
.Lx360_0_s:
 .string "."
xchain355_n3_α:
# IR_VAR_REF local
bb206_α:
 lea rdi, [r12 + 1200]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain355_n4_α
 xchain355_n3_β:
 jmp proc_query_ω
xchain355_n4_α:
# IR_LIT_STRING
bb207_α:
 mov qword ptr [r12 + 1008], 1
 mov rax, qword ptr [rip + .Lx363_0]
 mov qword ptr [r12 + 1016], rax
 jmp xchain355_n5_α
 xchain355_n4_β:
 jmp proc_query_ω
.Lx363_0:
 .quad .Lx363_0_s
.Lx363_0_s:
 .string "."
xchain355_n5_α:
# IR_VAR_REF local
bb208_α:
 lea rdi, [r12 + 1168]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain355_n6_α
 xchain355_n5_β:
 jmp proc_query_ω
xchain355_n6_α:
# IR_LIT_STRING
bb209_α:
 mov qword ptr [r12 + 912], 1
 mov rax, qword ptr [rip + .Lx366_0]
 mov qword ptr [r12 + 920], rax
 jmp xchain355_n7_α
 xchain355_n6_β:
 jmp proc_query_ω
.Lx366_0:
 .quad .Lx366_0_s
.Lx366_0_s:
 .string "."
xchain355_n7_α:
# IR_VAR_REF local
bb210_α:
 lea rdi, [r12 + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain355_n8_α
 xchain355_n7_β:
 jmp proc_query_ω
xchain355_n8_α:
# IR_LIT_STRING
bb211_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx369_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain355_n9_α
 xchain355_n8_β:
 jmp proc_query_ω
.Lx369_0:
 .quad .Lx369_0_s
.Lx369_0_s:
 .string "."
xchain355_n9_α:
# IR_VAR_REF local
bb212_α:
 lea rdi, [r12 + 1152]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain355_n10_α
 xchain355_n9_β:
 jmp proc_query_ω
xchain355_n10_α:
# IR_LIT_STRING
bb213_α:
 mov qword ptr [r12 + 720], 1
 mov rax, qword ptr [rip + .Lx372_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain355_n11_α
 xchain355_n10_β:
 jmp proc_query_ω
.Lx372_0:
 .quad .Lx372_0_s
.Lx372_0_s:
 .string "[]"
xchain355_n11_α:
bb214_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+816] -> [r12+768]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 776], rax
# marshal arg1 = producer-box slot [r12+736] -> [r12+784]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 792], rax
# marshal arg2 = producer-box slot [r12+720] -> [r12+800]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 808], rax
  .section .rodata
  .Lrkfn374: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn374]
 lea rsi, [r12 + 768]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je proc_query_ω
 jmp xchain355_n12_α
 xchain355_n11_β:
 jmp proc_query_ω
xchain355_n12_α:
bb215_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+912] -> [r12+864]
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 872], rax
# marshal arg1 = producer-box slot [r12+832] -> [r12+880]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 888], rax
# marshal arg2 = producer-box slot [r12+752] -> [r12+896]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 904], rax
  .section .rodata
  .Lrkfn376: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn376]
 lea rsi, [r12 + 864]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je proc_query_ω
 jmp xchain355_n13_α
 xchain355_n12_β:
 jmp proc_query_ω
xchain355_n13_α:
bb216_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1008] -> [r12+960]
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 968], rax
# marshal arg1 = producer-box slot [r12+928] -> [r12+976]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 984], rax
# marshal arg2 = producer-box slot [r12+848] -> [r12+992]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 1000], rax
  .section .rodata
  .Lrkfn378: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn378]
 lea rsi, [r12 + 960]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je proc_query_ω
 jmp xchain355_n14_α
 xchain355_n13_β:
 jmp proc_query_ω
xchain355_n14_α:
bb217_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1104] -> [r12+1056]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1064], rax
# marshal arg1 = producer-box slot [r12+1024] -> [r12+1072]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1080], rax
# marshal arg2 = producer-box slot [r12+944] -> [r12+1088]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn380: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn380]
 lea rsi, [r12 + 1056]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 cmp eax, 99
 je xchain355_n16_α
 jmp xchain355_n15_α
 xchain355_n14_β:
 jmp xchain355_n16_α
xchain355_n15_α:
bb218_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+704] -> [r12+672]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 680], rax
# marshal arg1 = producer-box slot [r12+1040] -> [r12+688]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn382: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn382]
 lea rsi, [r12 + 672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je xchain355_n16_α
 jmp xchain355_n17_α
 xchain355_n15_β:
 jmp xchain355_n16_α
xchain355_n16_α:
bb219_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn384: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn384]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_query_ω
 jmp proc_query_ω
 xchain355_n16_β:
 jmp proc_query_ω
xchain355_n17_α:
# IR_VAR_REF local
bb220_α:
 lea rdi, [r12 + 1200]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain355_n18_α
 xchain355_n17_β:
 jmp xchain355_n16_α
xchain355_n18_α:
# IR_VAR_REF local
bb221_α:
 lea rdi, [r12 + 1168]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain355_n19_α
 xchain355_n18_β:
 jmp xchain355_n16_α
xchain355_n19_α:
bb222_α:
  .section .rodata
  .Lcall222_pname: .string "density"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 624]
 mov rdx, qword ptr [r12 + 632]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall222_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain355_n16_α
 jmp xchain355_n20_α
xchain355_n19_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain355_n16_α
 jmp xchain355_n20_α
xchain355_n20_α:
# IR_VAR_REF local
bb223_α:
 lea rdi, [r12 + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain355_n21_α
 xchain355_n20_β:
 jmp xchain355_n16_α
xchain355_n21_α:
# IR_VAR_REF local
bb224_α:
 lea rdi, [r12 + 1152]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain355_n22_α
 xchain355_n21_β:
 jmp xchain355_n16_α
xchain355_n22_α:
bb225_α:
  .section .rodata
  .Lcall225_pname: .string "density"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall225_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain355_n19_β
 jmp xchain355_n23_α
xchain355_n22_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain355_n19_β
 jmp xchain355_n23_α
xchain355_n23_α:
# IR_VAR
bb226_α:
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 472], rax
 jmp xchain355_n24_α
 xchain355_n23_β:
 jmp xchain355_n16_α
xchain355_n24_α:
# IR_VAR
bb227_α:
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 488], rax
 jmp xchain355_n25_α
 xchain355_n24_β:
 jmp xchain355_n16_α
xchain355_n25_α:
bb228_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn400: .string "$cmp_gt"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn400]
 lea rsi, [r12 + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain355_n22_β
 jmp xchain355_n26_α
 xchain355_n25_β:
 jmp xchain355_n22_β
xchain355_n26_α:
# IR_VAR_REF local
bb229_α:
 lea rdi, [r12 + 1120]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain355_n27_α
 xchain355_n26_β:
 jmp xchain355_n16_α
xchain355_n27_α:
# IR_LIT_INTEGER
bb230_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx403_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain355_n28_α
 xchain355_n27_β:
 jmp xchain355_n16_α
.Lx403_0:
 .quad 20
xchain355_n28_α:
# IR_VAR
bb231_α:
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 408], rax
 jmp xchain355_n29_α
 xchain355_n28_β:
 jmp xchain355_n16_α
xchain355_n29_α:
bb232_α:
# BOX IR_CALL $is_mul(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+368] -> [r12+320]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [r12+384] -> [r12+336]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 344], rax
# marshal arg2 = producer-box slot [r12+400] -> [r12+352]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn407: .string "$is_mul"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn407]
 lea rsi, [r12 + 320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain355_n22_β
 jmp xchain355_n30_α
 xchain355_n29_β:
 jmp xchain355_n22_β
xchain355_n30_α:
# IR_VAR_REF local
bb233_α:
 lea rdi, [r12 + 1136]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain355_n31_α
 xchain355_n30_β:
 jmp xchain355_n16_α
xchain355_n31_α:
# IR_LIT_INTEGER
bb234_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx410_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain355_n32_α
 xchain355_n31_β:
 jmp xchain355_n16_α
.Lx410_0:
 .quad 21
xchain355_n32_α:
# IR_VAR
bb235_α:
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 296], rax
 jmp xchain355_n33_α
 xchain355_n32_β:
 jmp xchain355_n16_α
xchain355_n33_α:
bb236_α:
# BOX IR_CALL $is_mul(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+256] -> [r12+208]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 216], rax
# marshal arg1 = producer-box slot [r12+272] -> [r12+224]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 232], rax
# marshal arg2 = producer-box slot [r12+288] -> [r12+240]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn414: .string "$is_mul"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn414]
 lea rsi, [r12 + 208]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain355_n22_β
 jmp xchain355_n34_α
 xchain355_n33_β:
 jmp xchain355_n22_β
xchain355_n34_α:
# IR_VAR
bb237_α:
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 168], rax
 jmp xchain355_n35_α
 xchain355_n34_β:
 jmp xchain355_n16_α
xchain355_n35_α:
# IR_VAR
bb238_α:
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 184], rax
 jmp xchain355_n36_α
 xchain355_n35_β:
 jmp xchain355_n16_α
xchain355_n36_α:
bb239_α:
# BOX IR_CALL $cmp_lt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+160] -> [r12+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [r12+176] -> [r12+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn420: .string "$cmp_lt"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn420]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain355_n22_β
 jmp xchain355_n37_α
 xchain355_n36_β:
 jmp xchain355_n22_β
xchain355_n37_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb240_α:
 lea rax, [rip + xchain355_n19_β]
 mov qword ptr [r12 + 48], rax
 jmp proc_query_γ
 xchain355_n37_β:
 jmp proc_query_ω
xchain355_n38_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb241_α:
 jmp qword ptr [r12 + 48]
 xchain355_n38_β:
 jmp proc_query_ω
proc_query_β:
jmp xchain355_n38_α
proc_query_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_query_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_pop_α
proc_pop_α:
#=======================================================================================================================
    .global proc_pop_α
    .global proc_pop_β
    .global proc_pop_γ
    .global proc_pop_ω
push r12
  mov r12, rdi
  cmp esi, 0
  jne proc_pop_β
proc_pop_α_body:
xchain425_n0_α:
bb242_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn427: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn427]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n1_α
 xchain425_n0_β:
 jmp proc_pop_ω
xchain425_n1_α:
# IR_VAR_REF local
bb243_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4864], rax
 mov qword ptr [r12 + 4872], rdx
 jmp xchain425_n2_α
 xchain425_n1_β:
 jmp xchain425_n5_α
xchain425_n2_α:
# IR_LIT_STRING
bb244_α:
 mov qword ptr [r12 + 4880], 1
 mov rax, qword ptr [rip + .Lx430_0]
 mov qword ptr [r12 + 4888], rax
 jmp xchain425_n3_α
 xchain425_n2_β:
 jmp xchain425_n5_α
.Lx430_0:
 .quad .Lx430_0_s
.Lx430_0_s:
 .string "china"
xchain425_n3_α:
bb245_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4864] -> [r12+4832]
 mov rax, qword ptr [r12 + 4864]
 mov qword ptr [r12 + 4832], rax
 mov rax, qword ptr [r12 + 4872]
 mov qword ptr [r12 + 4840], rax
# marshal arg1 = producer-box slot [r12+4880] -> [r12+4848]
 mov rax, qword ptr [r12 + 4880]
 mov qword ptr [r12 + 4848], rax
 mov rax, qword ptr [r12 + 4888]
 mov qword ptr [r12 + 4856], rax
  .section .rodata
  .Lrkfn432: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn432]
 lea rsi, [r12 + 4832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4816], rax
 mov qword ptr [r12 + 4824], rdx
 cmp eax, 99
 je xchain425_n5_α
 jmp xchain425_n4_α
 xchain425_n3_β:
 jmp xchain425_n5_α
xchain425_n4_α:
# IR_VAR_REF local
bb246_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4784], rax
 mov qword ptr [r12 + 4792], rdx
 jmp xchain425_n6_α
 xchain425_n4_β:
 jmp xchain425_n5_α
xchain425_n5_α:
bb247_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+4720]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 4720], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 4728], rax
  .section .rodata
  .Lrkfn436: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn436]
 lea rsi, [r12 + 4720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4704], rax
 mov qword ptr [r12 + 4712], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n7_α
 xchain425_n5_β:
 jmp proc_pop_ω
xchain425_n6_α:
# IR_LIT_INTEGER
bb248_α:
 mov qword ptr [r12 + 4800], 6
 mov rax, qword ptr [rip + .Lx437_0]
 mov qword ptr [r12 + 4808], rax
 jmp xchain425_n8_α
 xchain425_n6_β:
 jmp xchain425_n5_α
.Lx437_0:
 .quad 8250
xchain425_n7_α:
# IR_VAR_REF local
bb249_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4672], rax
 mov qword ptr [r12 + 4680], rdx
 jmp xchain425_n9_α
 xchain425_n7_β:
 jmp xchain425_n14_α
xchain425_n8_α:
bb250_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4784] -> [r12+4752]
 mov rax, qword ptr [r12 + 4784]
 mov qword ptr [r12 + 4752], rax
 mov rax, qword ptr [r12 + 4792]
 mov qword ptr [r12 + 4760], rax
# marshal arg1 = producer-box slot [r12+4800] -> [r12+4768]
 mov rax, qword ptr [r12 + 4800]
 mov qword ptr [r12 + 4768], rax
 mov rax, qword ptr [r12 + 4808]
 mov qword ptr [r12 + 4776], rax
  .section .rodata
  .Lrkfn441: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn441]
 lea rsi, [r12 + 4752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4736], rax
 mov qword ptr [r12 + 4744], rdx
 cmp eax, 99
 je xchain425_n5_α
 jmp xchain425_n10_α
 xchain425_n8_β:
 jmp xchain425_n5_α
xchain425_n9_α:
# IR_LIT_STRING
bb251_α:
 mov qword ptr [r12 + 4688], 1
 mov rax, qword ptr [rip + .Lx442_0]
 mov qword ptr [r12 + 4696], rax
 jmp xchain425_n11_α
 xchain425_n9_β:
 jmp xchain425_n14_α
.Lx442_0:
 .quad .Lx442_0_s
.Lx442_0_s:
 .string "india"
xchain425_n10_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb252_α:
 lea rax, [rip + xchain425_n5_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n10_β:
 jmp proc_pop_ω
xchain425_n11_α:
bb253_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4672] -> [r12+4640]
 mov rax, qword ptr [r12 + 4672]
 mov qword ptr [r12 + 4640], rax
 mov rax, qword ptr [r12 + 4680]
 mov qword ptr [r12 + 4648], rax
# marshal arg1 = producer-box slot [r12+4688] -> [r12+4656]
 mov rax, qword ptr [r12 + 4688]
 mov qword ptr [r12 + 4656], rax
 mov rax, qword ptr [r12 + 4696]
 mov qword ptr [r12 + 4664], rax
  .section .rodata
  .Lrkfn446: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn446]
 lea rsi, [r12 + 4640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4624], rax
 mov qword ptr [r12 + 4632], rdx
 cmp eax, 99
 je xchain425_n14_α
 jmp xchain425_n13_α
 xchain425_n11_β:
 jmp xchain425_n14_α
xchain425_n12_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb254_α:
 jmp qword ptr [r12 + 64]
 xchain425_n12_β:
 jmp proc_pop_ω
xchain425_n13_α:
# IR_VAR_REF local
bb255_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4592], rax
 mov qword ptr [r12 + 4600], rdx
 jmp xchain425_n15_α
 xchain425_n13_β:
 jmp xchain425_n14_α
xchain425_n14_α:
bb256_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+4528]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 4528], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 4536], rax
  .section .rodata
  .Lrkfn452: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn452]
 lea rsi, [r12 + 4528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4512], rax
 mov qword ptr [r12 + 4520], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n16_α
 xchain425_n14_β:
 jmp proc_pop_ω
xchain425_n15_α:
# IR_LIT_INTEGER
bb257_α:
 mov qword ptr [r12 + 4608], 6
 mov rax, qword ptr [rip + .Lx453_0]
 mov qword ptr [r12 + 4616], rax
 jmp xchain425_n17_α
 xchain425_n15_β:
 jmp xchain425_n14_α
.Lx453_0:
 .quad 5863
xchain425_n16_α:
# IR_VAR_REF local
bb258_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4480], rax
 mov qword ptr [r12 + 4488], rdx
 jmp xchain425_n18_α
 xchain425_n16_β:
 jmp xchain425_n22_α
xchain425_n17_α:
bb259_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4592] -> [r12+4560]
 mov rax, qword ptr [r12 + 4592]
 mov qword ptr [r12 + 4560], rax
 mov rax, qword ptr [r12 + 4600]
 mov qword ptr [r12 + 4568], rax
# marshal arg1 = producer-box slot [r12+4608] -> [r12+4576]
 mov rax, qword ptr [r12 + 4608]
 mov qword ptr [r12 + 4576], rax
 mov rax, qword ptr [r12 + 4616]
 mov qword ptr [r12 + 4584], rax
  .section .rodata
  .Lrkfn457: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn457]
 lea rsi, [r12 + 4560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4544], rax
 mov qword ptr [r12 + 4552], rdx
 cmp eax, 99
 je xchain425_n14_α
 jmp xchain425_n19_α
 xchain425_n17_β:
 jmp xchain425_n14_α
xchain425_n18_α:
# IR_LIT_STRING
bb260_α:
 mov qword ptr [r12 + 4496], 1
 mov rax, qword ptr [rip + .Lx458_0]
 mov qword ptr [r12 + 4504], rax
 jmp xchain425_n20_α
 xchain425_n18_β:
 jmp xchain425_n22_α
.Lx458_0:
 .quad .Lx458_0_s
.Lx458_0_s:
 .string "ussr"
xchain425_n19_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb261_α:
 lea rax, [rip + xchain425_n14_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n19_β:
 jmp proc_pop_ω
xchain425_n20_α:
bb262_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4480] -> [r12+4448]
 mov rax, qword ptr [r12 + 4480]
 mov qword ptr [r12 + 4448], rax
 mov rax, qword ptr [r12 + 4488]
 mov qword ptr [r12 + 4456], rax
# marshal arg1 = producer-box slot [r12+4496] -> [r12+4464]
 mov rax, qword ptr [r12 + 4496]
 mov qword ptr [r12 + 4464], rax
 mov rax, qword ptr [r12 + 4504]
 mov qword ptr [r12 + 4472], rax
  .section .rodata
  .Lrkfn462: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn462]
 lea rsi, [r12 + 4448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4432], rax
 mov qword ptr [r12 + 4440], rdx
 cmp eax, 99
 je xchain425_n22_α
 jmp xchain425_n21_α
 xchain425_n20_β:
 jmp xchain425_n22_α
xchain425_n21_α:
# IR_VAR_REF local
bb263_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4400], rax
 mov qword ptr [r12 + 4408], rdx
 jmp xchain425_n23_α
 xchain425_n21_β:
 jmp xchain425_n22_α
xchain425_n22_α:
bb264_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+4336]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 4336], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 4344], rax
  .section .rodata
  .Lrkfn466: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn466]
 lea rsi, [r12 + 4336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n24_α
 xchain425_n22_β:
 jmp proc_pop_ω
xchain425_n23_α:
# IR_LIT_INTEGER
bb265_α:
 mov qword ptr [r12 + 4416], 6
 mov rax, qword ptr [rip + .Lx467_0]
 mov qword ptr [r12 + 4424], rax
 jmp xchain425_n25_α
 xchain425_n23_β:
 jmp xchain425_n22_α
.Lx467_0:
 .quad 2521
xchain425_n24_α:
# IR_VAR_REF local
bb266_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4288], rax
 mov qword ptr [r12 + 4296], rdx
 jmp xchain425_n26_α
 xchain425_n24_β:
 jmp xchain425_n30_α
xchain425_n25_α:
bb267_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4400] -> [r12+4368]
 mov rax, qword ptr [r12 + 4400]
 mov qword ptr [r12 + 4368], rax
 mov rax, qword ptr [r12 + 4408]
 mov qword ptr [r12 + 4376], rax
# marshal arg1 = producer-box slot [r12+4416] -> [r12+4384]
 mov rax, qword ptr [r12 + 4416]
 mov qword ptr [r12 + 4384], rax
 mov rax, qword ptr [r12 + 4424]
 mov qword ptr [r12 + 4392], rax
  .section .rodata
  .Lrkfn471: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn471]
 lea rsi, [r12 + 4368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4352], rax
 mov qword ptr [r12 + 4360], rdx
 cmp eax, 99
 je xchain425_n22_α
 jmp xchain425_n27_α
 xchain425_n25_β:
 jmp xchain425_n22_α
xchain425_n26_α:
# IR_LIT_STRING
bb268_α:
 mov qword ptr [r12 + 4304], 1
 mov rax, qword ptr [rip + .Lx472_0]
 mov qword ptr [r12 + 4312], rax
 jmp xchain425_n28_α
 xchain425_n26_β:
 jmp xchain425_n30_α
.Lx472_0:
 .quad .Lx472_0_s
.Lx472_0_s:
 .string "usa"
xchain425_n27_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb269_α:
 lea rax, [rip + xchain425_n22_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n27_β:
 jmp proc_pop_ω
xchain425_n28_α:
bb270_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4288] -> [r12+4256]
 mov rax, qword ptr [r12 + 4288]
 mov qword ptr [r12 + 4256], rax
 mov rax, qword ptr [r12 + 4296]
 mov qword ptr [r12 + 4264], rax
# marshal arg1 = producer-box slot [r12+4304] -> [r12+4272]
 mov rax, qword ptr [r12 + 4304]
 mov qword ptr [r12 + 4272], rax
 mov rax, qword ptr [r12 + 4312]
 mov qword ptr [r12 + 4280], rax
  .section .rodata
  .Lrkfn476: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn476]
 lea rsi, [r12 + 4256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4240], rax
 mov qword ptr [r12 + 4248], rdx
 cmp eax, 99
 je xchain425_n30_α
 jmp xchain425_n29_α
 xchain425_n28_β:
 jmp xchain425_n30_α
xchain425_n29_α:
# IR_VAR_REF local
bb271_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4208], rax
 mov qword ptr [r12 + 4216], rdx
 jmp xchain425_n31_α
 xchain425_n29_β:
 jmp xchain425_n30_α
xchain425_n30_α:
bb272_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+4144]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 4144], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 4152], rax
  .section .rodata
  .Lrkfn480: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn480]
 lea rsi, [r12 + 4144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4128], rax
 mov qword ptr [r12 + 4136], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n32_α
 xchain425_n30_β:
 jmp proc_pop_ω
xchain425_n31_α:
# IR_LIT_INTEGER
bb273_α:
 mov qword ptr [r12 + 4224], 6
 mov rax, qword ptr [rip + .Lx481_0]
 mov qword ptr [r12 + 4232], rax
 jmp xchain425_n33_α
 xchain425_n31_β:
 jmp xchain425_n30_α
.Lx481_0:
 .quad 2119
xchain425_n32_α:
# IR_VAR_REF local
bb274_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4096], rax
 mov qword ptr [r12 + 4104], rdx
 jmp xchain425_n34_α
 xchain425_n32_β:
 jmp xchain425_n38_α
xchain425_n33_α:
bb275_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4208] -> [r12+4176]
 mov rax, qword ptr [r12 + 4208]
 mov qword ptr [r12 + 4176], rax
 mov rax, qword ptr [r12 + 4216]
 mov qword ptr [r12 + 4184], rax
# marshal arg1 = producer-box slot [r12+4224] -> [r12+4192]
 mov rax, qword ptr [r12 + 4224]
 mov qword ptr [r12 + 4192], rax
 mov rax, qword ptr [r12 + 4232]
 mov qword ptr [r12 + 4200], rax
  .section .rodata
  .Lrkfn485: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn485]
 lea rsi, [r12 + 4176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4160], rax
 mov qword ptr [r12 + 4168], rdx
 cmp eax, 99
 je xchain425_n30_α
 jmp xchain425_n35_α
 xchain425_n33_β:
 jmp xchain425_n30_α
xchain425_n34_α:
# IR_LIT_STRING
bb276_α:
 mov qword ptr [r12 + 4112], 1
 mov rax, qword ptr [rip + .Lx486_0]
 mov qword ptr [r12 + 4120], rax
 jmp xchain425_n36_α
 xchain425_n34_β:
 jmp xchain425_n38_α
.Lx486_0:
 .quad .Lx486_0_s
.Lx486_0_s:
 .string "indonesia"
xchain425_n35_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb277_α:
 lea rax, [rip + xchain425_n30_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n35_β:
 jmp proc_pop_ω
xchain425_n36_α:
bb278_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4096] -> [r12+4064]
 mov rax, qword ptr [r12 + 4096]
 mov qword ptr [r12 + 4064], rax
 mov rax, qword ptr [r12 + 4104]
 mov qword ptr [r12 + 4072], rax
# marshal arg1 = producer-box slot [r12+4112] -> [r12+4080]
 mov rax, qword ptr [r12 + 4112]
 mov qword ptr [r12 + 4080], rax
 mov rax, qword ptr [r12 + 4120]
 mov qword ptr [r12 + 4088], rax
  .section .rodata
  .Lrkfn490: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn490]
 lea rsi, [r12 + 4064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4048], rax
 mov qword ptr [r12 + 4056], rdx
 cmp eax, 99
 je xchain425_n38_α
 jmp xchain425_n37_α
 xchain425_n36_β:
 jmp xchain425_n38_α
xchain425_n37_α:
# IR_VAR_REF local
bb279_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4016], rax
 mov qword ptr [r12 + 4024], rdx
 jmp xchain425_n39_α
 xchain425_n37_β:
 jmp xchain425_n38_α
xchain425_n38_α:
bb280_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+3952]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3952], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3960], rax
  .section .rodata
  .Lrkfn494: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn494]
 lea rsi, [r12 + 3952]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3936], rax
 mov qword ptr [r12 + 3944], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n40_α
 xchain425_n38_β:
 jmp proc_pop_ω
xchain425_n39_α:
# IR_LIT_INTEGER
bb281_α:
 mov qword ptr [r12 + 4032], 6
 mov rax, qword ptr [rip + .Lx495_0]
 mov qword ptr [r12 + 4040], rax
 jmp xchain425_n41_α
 xchain425_n39_β:
 jmp xchain425_n38_α
.Lx495_0:
 .quad 1276
xchain425_n40_α:
# IR_VAR_REF local
bb282_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3904], rax
 mov qword ptr [r12 + 3912], rdx
 jmp xchain425_n42_α
 xchain425_n40_β:
 jmp xchain425_n46_α
xchain425_n41_α:
bb283_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4016] -> [r12+3984]
 mov rax, qword ptr [r12 + 4016]
 mov qword ptr [r12 + 3984], rax
 mov rax, qword ptr [r12 + 4024]
 mov qword ptr [r12 + 3992], rax
# marshal arg1 = producer-box slot [r12+4032] -> [r12+4000]
 mov rax, qword ptr [r12 + 4032]
 mov qword ptr [r12 + 4000], rax
 mov rax, qword ptr [r12 + 4040]
 mov qword ptr [r12 + 4008], rax
  .section .rodata
  .Lrkfn499: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn499]
 lea rsi, [r12 + 3984]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3968], rax
 mov qword ptr [r12 + 3976], rdx
 cmp eax, 99
 je xchain425_n38_α
 jmp xchain425_n43_α
 xchain425_n41_β:
 jmp xchain425_n38_α
xchain425_n42_α:
# IR_LIT_STRING
bb284_α:
 mov qword ptr [r12 + 3920], 1
 mov rax, qword ptr [rip + .Lx500_0]
 mov qword ptr [r12 + 3928], rax
 jmp xchain425_n44_α
 xchain425_n42_β:
 jmp xchain425_n46_α
.Lx500_0:
 .quad .Lx500_0_s
.Lx500_0_s:
 .string "japan"
xchain425_n43_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb285_α:
 lea rax, [rip + xchain425_n38_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n43_β:
 jmp proc_pop_ω
xchain425_n44_α:
bb286_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3904] -> [r12+3872]
 mov rax, qword ptr [r12 + 3904]
 mov qword ptr [r12 + 3872], rax
 mov rax, qword ptr [r12 + 3912]
 mov qword ptr [r12 + 3880], rax
# marshal arg1 = producer-box slot [r12+3920] -> [r12+3888]
 mov rax, qword ptr [r12 + 3920]
 mov qword ptr [r12 + 3888], rax
 mov rax, qword ptr [r12 + 3928]
 mov qword ptr [r12 + 3896], rax
  .section .rodata
  .Lrkfn504: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn504]
 lea rsi, [r12 + 3872]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3856], rax
 mov qword ptr [r12 + 3864], rdx
 cmp eax, 99
 je xchain425_n46_α
 jmp xchain425_n45_α
 xchain425_n44_β:
 jmp xchain425_n46_α
xchain425_n45_α:
# IR_VAR_REF local
bb287_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3824], rax
 mov qword ptr [r12 + 3832], rdx
 jmp xchain425_n47_α
 xchain425_n45_β:
 jmp xchain425_n46_α
xchain425_n46_α:
bb288_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+3760]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3760], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3768], rax
  .section .rodata
  .Lrkfn508: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn508]
 lea rsi, [r12 + 3760]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3744], rax
 mov qword ptr [r12 + 3752], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n48_α
 xchain425_n46_β:
 jmp proc_pop_ω
xchain425_n47_α:
# IR_LIT_INTEGER
bb289_α:
 mov qword ptr [r12 + 3840], 6
 mov rax, qword ptr [rip + .Lx509_0]
 mov qword ptr [r12 + 3848], rax
 jmp xchain425_n49_α
 xchain425_n47_β:
 jmp xchain425_n46_α
.Lx509_0:
 .quad 1097
xchain425_n48_α:
# IR_VAR_REF local
bb290_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3712], rax
 mov qword ptr [r12 + 3720], rdx
 jmp xchain425_n50_α
 xchain425_n48_β:
 jmp xchain425_n54_α
xchain425_n49_α:
bb291_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3824] -> [r12+3792]
 mov rax, qword ptr [r12 + 3824]
 mov qword ptr [r12 + 3792], rax
 mov rax, qword ptr [r12 + 3832]
 mov qword ptr [r12 + 3800], rax
# marshal arg1 = producer-box slot [r12+3840] -> [r12+3808]
 mov rax, qword ptr [r12 + 3840]
 mov qword ptr [r12 + 3808], rax
 mov rax, qword ptr [r12 + 3848]
 mov qword ptr [r12 + 3816], rax
  .section .rodata
  .Lrkfn513: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn513]
 lea rsi, [r12 + 3792]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3776], rax
 mov qword ptr [r12 + 3784], rdx
 cmp eax, 99
 je xchain425_n46_α
 jmp xchain425_n51_α
 xchain425_n49_β:
 jmp xchain425_n46_α
xchain425_n50_α:
# IR_LIT_STRING
bb292_α:
 mov qword ptr [r12 + 3728], 1
 mov rax, qword ptr [rip + .Lx514_0]
 mov qword ptr [r12 + 3736], rax
 jmp xchain425_n52_α
 xchain425_n50_β:
 jmp xchain425_n54_α
.Lx514_0:
 .quad .Lx514_0_s
.Lx514_0_s:
 .string "brazil"
xchain425_n51_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb293_α:
 lea rax, [rip + xchain425_n46_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n51_β:
 jmp proc_pop_ω
xchain425_n52_α:
bb294_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3712] -> [r12+3680]
 mov rax, qword ptr [r12 + 3712]
 mov qword ptr [r12 + 3680], rax
 mov rax, qword ptr [r12 + 3720]
 mov qword ptr [r12 + 3688], rax
# marshal arg1 = producer-box slot [r12+3728] -> [r12+3696]
 mov rax, qword ptr [r12 + 3728]
 mov qword ptr [r12 + 3696], rax
 mov rax, qword ptr [r12 + 3736]
 mov qword ptr [r12 + 3704], rax
  .section .rodata
  .Lrkfn518: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn518]
 lea rsi, [r12 + 3680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3664], rax
 mov qword ptr [r12 + 3672], rdx
 cmp eax, 99
 je xchain425_n54_α
 jmp xchain425_n53_α
 xchain425_n52_β:
 jmp xchain425_n54_α
xchain425_n53_α:
# IR_VAR_REF local
bb295_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3632], rax
 mov qword ptr [r12 + 3640], rdx
 jmp xchain425_n55_α
 xchain425_n53_β:
 jmp xchain425_n54_α
xchain425_n54_α:
bb296_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+3568]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3568], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3576], rax
  .section .rodata
  .Lrkfn522: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn522]
 lea rsi, [r12 + 3568]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3552], rax
 mov qword ptr [r12 + 3560], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n56_α
 xchain425_n54_β:
 jmp proc_pop_ω
xchain425_n55_α:
# IR_LIT_INTEGER
bb297_α:
 mov qword ptr [r12 + 3648], 6
 mov rax, qword ptr [rip + .Lx523_0]
 mov qword ptr [r12 + 3656], rax
 jmp xchain425_n57_α
 xchain425_n55_β:
 jmp xchain425_n54_α
.Lx523_0:
 .quad 1042
xchain425_n56_α:
# IR_VAR_REF local
bb298_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3520], rax
 mov qword ptr [r12 + 3528], rdx
 jmp xchain425_n58_α
 xchain425_n56_β:
 jmp xchain425_n62_α
xchain425_n57_α:
bb299_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3632] -> [r12+3600]
 mov rax, qword ptr [r12 + 3632]
 mov qword ptr [r12 + 3600], rax
 mov rax, qword ptr [r12 + 3640]
 mov qword ptr [r12 + 3608], rax
# marshal arg1 = producer-box slot [r12+3648] -> [r12+3616]
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 3616], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 3624], rax
  .section .rodata
  .Lrkfn527: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn527]
 lea rsi, [r12 + 3600]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3584], rax
 mov qword ptr [r12 + 3592], rdx
 cmp eax, 99
 je xchain425_n54_α
 jmp xchain425_n59_α
 xchain425_n57_β:
 jmp xchain425_n54_α
xchain425_n58_α:
# IR_LIT_STRING
bb300_α:
 mov qword ptr [r12 + 3536], 1
 mov rax, qword ptr [rip + .Lx528_0]
 mov qword ptr [r12 + 3544], rax
 jmp xchain425_n60_α
 xchain425_n58_β:
 jmp xchain425_n62_α
.Lx528_0:
 .quad .Lx528_0_s
.Lx528_0_s:
 .string "bangladesh"
xchain425_n59_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb301_α:
 lea rax, [rip + xchain425_n54_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n59_β:
 jmp proc_pop_ω
xchain425_n60_α:
bb302_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3520] -> [r12+3488]
 mov rax, qword ptr [r12 + 3520]
 mov qword ptr [r12 + 3488], rax
 mov rax, qword ptr [r12 + 3528]
 mov qword ptr [r12 + 3496], rax
# marshal arg1 = producer-box slot [r12+3536] -> [r12+3504]
 mov rax, qword ptr [r12 + 3536]
 mov qword ptr [r12 + 3504], rax
 mov rax, qword ptr [r12 + 3544]
 mov qword ptr [r12 + 3512], rax
  .section .rodata
  .Lrkfn532: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn532]
 lea rsi, [r12 + 3488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], rdx
 cmp eax, 99
 je xchain425_n62_α
 jmp xchain425_n61_α
 xchain425_n60_β:
 jmp xchain425_n62_α
xchain425_n61_α:
# IR_VAR_REF local
bb303_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3440], rax
 mov qword ptr [r12 + 3448], rdx
 jmp xchain425_n63_α
 xchain425_n61_β:
 jmp xchain425_n62_α
xchain425_n62_α:
bb304_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+3376]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3376], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3384], rax
  .section .rodata
  .Lrkfn536: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn536]
 lea rsi, [r12 + 3376]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3360], rax
 mov qword ptr [r12 + 3368], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n64_α
 xchain425_n62_β:
 jmp proc_pop_ω
xchain425_n63_α:
# IR_LIT_INTEGER
bb305_α:
 mov qword ptr [r12 + 3456], 6
 mov rax, qword ptr [rip + .Lx537_0]
 mov qword ptr [r12 + 3464], rax
 jmp xchain425_n65_α
 xchain425_n63_β:
 jmp xchain425_n62_α
.Lx537_0:
 .quad 750
xchain425_n64_α:
# IR_VAR_REF local
bb306_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3328], rax
 mov qword ptr [r12 + 3336], rdx
 jmp xchain425_n66_α
 xchain425_n64_β:
 jmp xchain425_n70_α
xchain425_n65_α:
bb307_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3440] -> [r12+3408]
 mov rax, qword ptr [r12 + 3440]
 mov qword ptr [r12 + 3408], rax
 mov rax, qword ptr [r12 + 3448]
 mov qword ptr [r12 + 3416], rax
# marshal arg1 = producer-box slot [r12+3456] -> [r12+3424]
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 3424], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 3432], rax
  .section .rodata
  .Lrkfn541: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn541]
 lea rsi, [r12 + 3408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3392], rax
 mov qword ptr [r12 + 3400], rdx
 cmp eax, 99
 je xchain425_n62_α
 jmp xchain425_n67_α
 xchain425_n65_β:
 jmp xchain425_n62_α
xchain425_n66_α:
# IR_LIT_STRING
bb308_α:
 mov qword ptr [r12 + 3344], 1
 mov rax, qword ptr [rip + .Lx542_0]
 mov qword ptr [r12 + 3352], rax
 jmp xchain425_n68_α
 xchain425_n66_β:
 jmp xchain425_n70_α
.Lx542_0:
 .quad .Lx542_0_s
.Lx542_0_s:
 .string "pakistan"
xchain425_n67_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb309_α:
 lea rax, [rip + xchain425_n62_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n67_β:
 jmp proc_pop_ω
xchain425_n68_α:
bb310_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3328] -> [r12+3296]
 mov rax, qword ptr [r12 + 3328]
 mov qword ptr [r12 + 3296], rax
 mov rax, qword ptr [r12 + 3336]
 mov qword ptr [r12 + 3304], rax
# marshal arg1 = producer-box slot [r12+3344] -> [r12+3312]
 mov rax, qword ptr [r12 + 3344]
 mov qword ptr [r12 + 3312], rax
 mov rax, qword ptr [r12 + 3352]
 mov qword ptr [r12 + 3320], rax
  .section .rodata
  .Lrkfn546: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn546]
 lea rsi, [r12 + 3296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3280], rax
 mov qword ptr [r12 + 3288], rdx
 cmp eax, 99
 je xchain425_n70_α
 jmp xchain425_n69_α
 xchain425_n68_β:
 jmp xchain425_n70_α
xchain425_n69_α:
# IR_VAR_REF local
bb311_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3248], rax
 mov qword ptr [r12 + 3256], rdx
 jmp xchain425_n71_α
 xchain425_n69_β:
 jmp xchain425_n70_α
xchain425_n70_α:
bb312_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+3184]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3184], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3192], rax
  .section .rodata
  .Lrkfn550: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn550]
 lea rsi, [r12 + 3184]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3168], rax
 mov qword ptr [r12 + 3176], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n72_α
 xchain425_n70_β:
 jmp proc_pop_ω
xchain425_n71_α:
# IR_LIT_INTEGER
bb313_α:
 mov qword ptr [r12 + 3264], 6
 mov rax, qword ptr [rip + .Lx551_0]
 mov qword ptr [r12 + 3272], rax
 jmp xchain425_n73_α
 xchain425_n71_β:
 jmp xchain425_n70_α
.Lx551_0:
 .quad 682
xchain425_n72_α:
# IR_VAR_REF local
bb314_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
 jmp xchain425_n74_α
 xchain425_n72_β:
 jmp xchain425_n78_α
xchain425_n73_α:
bb315_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3248] -> [r12+3216]
 mov rax, qword ptr [r12 + 3248]
 mov qword ptr [r12 + 3216], rax
 mov rax, qword ptr [r12 + 3256]
 mov qword ptr [r12 + 3224], rax
# marshal arg1 = producer-box slot [r12+3264] -> [r12+3232]
 mov rax, qword ptr [r12 + 3264]
 mov qword ptr [r12 + 3232], rax
 mov rax, qword ptr [r12 + 3272]
 mov qword ptr [r12 + 3240], rax
  .section .rodata
  .Lrkfn555: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn555]
 lea rsi, [r12 + 3216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3200], rax
 mov qword ptr [r12 + 3208], rdx
 cmp eax, 99
 je xchain425_n70_α
 jmp xchain425_n75_α
 xchain425_n73_β:
 jmp xchain425_n70_α
xchain425_n74_α:
# IR_LIT_STRING
bb316_α:
 mov qword ptr [r12 + 3152], 1
 mov rax, qword ptr [rip + .Lx556_0]
 mov qword ptr [r12 + 3160], rax
 jmp xchain425_n76_α
 xchain425_n74_β:
 jmp xchain425_n78_α
.Lx556_0:
 .quad .Lx556_0_s
.Lx556_0_s:
 .string "w_germany"
xchain425_n75_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb317_α:
 lea rax, [rip + xchain425_n70_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n75_β:
 jmp proc_pop_ω
xchain425_n76_α:
bb318_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3136] -> [r12+3104]
 mov rax, qword ptr [r12 + 3136]
 mov qword ptr [r12 + 3104], rax
 mov rax, qword ptr [r12 + 3144]
 mov qword ptr [r12 + 3112], rax
# marshal arg1 = producer-box slot [r12+3152] -> [r12+3120]
 mov rax, qword ptr [r12 + 3152]
 mov qword ptr [r12 + 3120], rax
 mov rax, qword ptr [r12 + 3160]
 mov qword ptr [r12 + 3128], rax
  .section .rodata
  .Lrkfn560: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn560]
 lea rsi, [r12 + 3104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3088], rax
 mov qword ptr [r12 + 3096], rdx
 cmp eax, 99
 je xchain425_n78_α
 jmp xchain425_n77_α
 xchain425_n76_β:
 jmp xchain425_n78_α
xchain425_n77_α:
# IR_VAR_REF local
bb319_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 jmp xchain425_n79_α
 xchain425_n77_β:
 jmp xchain425_n78_α
xchain425_n78_α:
bb320_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+2992]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3000], rax
  .section .rodata
  .Lrkfn564: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn564]
 lea rsi, [r12 + 2992]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n80_α
 xchain425_n78_β:
 jmp proc_pop_ω
xchain425_n79_α:
# IR_LIT_INTEGER
bb321_α:
 mov qword ptr [r12 + 3072], 6
 mov rax, qword ptr [rip + .Lx565_0]
 mov qword ptr [r12 + 3080], rax
 jmp xchain425_n81_α
 xchain425_n79_β:
 jmp xchain425_n78_α
.Lx565_0:
 .quad 620
xchain425_n80_α:
# IR_VAR_REF local
bb322_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2944], rax
 mov qword ptr [r12 + 2952], rdx
 jmp xchain425_n82_α
 xchain425_n80_β:
 jmp xchain425_n86_α
xchain425_n81_α:
bb323_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3056] -> [r12+3024]
 mov rax, qword ptr [r12 + 3056]
 mov qword ptr [r12 + 3024], rax
 mov rax, qword ptr [r12 + 3064]
 mov qword ptr [r12 + 3032], rax
# marshal arg1 = producer-box slot [r12+3072] -> [r12+3040]
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 3040], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 3048], rax
  .section .rodata
  .Lrkfn569: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn569]
 lea rsi, [r12 + 3024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 cmp eax, 99
 je xchain425_n78_α
 jmp xchain425_n83_α
 xchain425_n81_β:
 jmp xchain425_n78_α
xchain425_n82_α:
# IR_LIT_STRING
bb324_α:
 mov qword ptr [r12 + 2960], 1
 mov rax, qword ptr [rip + .Lx570_0]
 mov qword ptr [r12 + 2968], rax
 jmp xchain425_n84_α
 xchain425_n82_β:
 jmp xchain425_n86_α
.Lx570_0:
 .quad .Lx570_0_s
.Lx570_0_s:
 .string "nigeria"
xchain425_n83_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb325_α:
 lea rax, [rip + xchain425_n78_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n83_β:
 jmp proc_pop_ω
xchain425_n84_α:
bb326_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2944] -> [r12+2912]
 mov rax, qword ptr [r12 + 2944]
 mov qword ptr [r12 + 2912], rax
 mov rax, qword ptr [r12 + 2952]
 mov qword ptr [r12 + 2920], rax
# marshal arg1 = producer-box slot [r12+2960] -> [r12+2928]
 mov rax, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 2928], rax
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 2936], rax
  .section .rodata
  .Lrkfn574: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn574]
 lea rsi, [r12 + 2912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2896], rax
 mov qword ptr [r12 + 2904], rdx
 cmp eax, 99
 je xchain425_n86_α
 jmp xchain425_n85_α
 xchain425_n84_β:
 jmp xchain425_n86_α
xchain425_n85_α:
# IR_VAR_REF local
bb327_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], rdx
 jmp xchain425_n87_α
 xchain425_n85_β:
 jmp xchain425_n86_α
xchain425_n86_α:
bb328_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+2800]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2800], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2808], rax
  .section .rodata
  .Lrkfn578: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn578]
 lea rsi, [r12 + 2800]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2784], rax
 mov qword ptr [r12 + 2792], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n88_α
 xchain425_n86_β:
 jmp proc_pop_ω
xchain425_n87_α:
# IR_LIT_INTEGER
bb329_α:
 mov qword ptr [r12 + 2880], 6
 mov rax, qword ptr [rip + .Lx579_0]
 mov qword ptr [r12 + 2888], rax
 jmp xchain425_n89_α
 xchain425_n87_β:
 jmp xchain425_n86_α
.Lx579_0:
 .quad 613
xchain425_n88_α:
# IR_VAR_REF local
bb330_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 jmp xchain425_n90_α
 xchain425_n88_β:
 jmp xchain425_n94_α
xchain425_n89_α:
bb331_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn583: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn583]
 lea rsi, [r12 + 2832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 cmp eax, 99
 je xchain425_n86_α
 jmp xchain425_n91_α
 xchain425_n89_β:
 jmp xchain425_n86_α
xchain425_n90_α:
# IR_LIT_STRING
bb332_α:
 mov qword ptr [r12 + 2768], 1
 mov rax, qword ptr [rip + .Lx584_0]
 mov qword ptr [r12 + 2776], rax
 jmp xchain425_n92_α
 xchain425_n90_β:
 jmp xchain425_n94_α
.Lx584_0:
 .quad .Lx584_0_s
.Lx584_0_s:
 .string "mexico"
xchain425_n91_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb333_α:
 lea rax, [rip + xchain425_n86_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n91_β:
 jmp proc_pop_ω
xchain425_n92_α:
bb334_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2752] -> [r12+2720]
 mov rax, qword ptr [r12 + 2752]
 mov qword ptr [r12 + 2720], rax
 mov rax, qword ptr [r12 + 2760]
 mov qword ptr [r12 + 2728], rax
# marshal arg1 = producer-box slot [r12+2768] -> [r12+2736]
 mov rax, qword ptr [r12 + 2768]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 2776]
 mov qword ptr [r12 + 2744], rax
  .section .rodata
  .Lrkfn588: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn588]
 lea rsi, [r12 + 2720]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2704], rax
 mov qword ptr [r12 + 2712], rdx
 cmp eax, 99
 je xchain425_n94_α
 jmp xchain425_n93_α
 xchain425_n92_β:
 jmp xchain425_n94_α
xchain425_n93_α:
# IR_VAR_REF local
bb335_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 jmp xchain425_n95_α
 xchain425_n93_β:
 jmp xchain425_n94_α
xchain425_n94_α:
bb336_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+2608]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2608], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2616], rax
  .section .rodata
  .Lrkfn592: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn592]
 lea rsi, [r12 + 2608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n96_α
 xchain425_n94_β:
 jmp proc_pop_ω
xchain425_n95_α:
# IR_LIT_INTEGER
bb337_α:
 mov qword ptr [r12 + 2688], 6
 mov rax, qword ptr [rip + .Lx593_0]
 mov qword ptr [r12 + 2696], rax
 jmp xchain425_n97_α
 xchain425_n95_β:
 jmp xchain425_n94_α
.Lx593_0:
 .quad 581
xchain425_n96_α:
# IR_VAR_REF local
bb338_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 jmp xchain425_n98_α
 xchain425_n96_β:
 jmp xchain425_n102_α
xchain425_n97_α:
bb339_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2672] -> [r12+2640]
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 2640], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 2648], rax
# marshal arg1 = producer-box slot [r12+2688] -> [r12+2656]
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 2656], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 2664], rax
  .section .rodata
  .Lrkfn597: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn597]
 lea rsi, [r12 + 2640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 cmp eax, 99
 je xchain425_n94_α
 jmp xchain425_n99_α
 xchain425_n97_β:
 jmp xchain425_n94_α
xchain425_n98_α:
# IR_LIT_STRING
bb340_α:
 mov qword ptr [r12 + 2576], 1
 mov rax, qword ptr [rip + .Lx598_0]
 mov qword ptr [r12 + 2584], rax
 jmp xchain425_n100_α
 xchain425_n98_β:
 jmp xchain425_n102_α
.Lx598_0:
 .quad .Lx598_0_s
.Lx598_0_s:
 .string "uk"
xchain425_n99_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb341_α:
 lea rax, [rip + xchain425_n94_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n99_β:
 jmp proc_pop_ω
xchain425_n100_α:
bb342_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2560] -> [r12+2528]
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 2528], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 2536], rax
# marshal arg1 = producer-box slot [r12+2576] -> [r12+2544]
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 2544], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 2552], rax
  .section .rodata
  .Lrkfn602: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn602]
 lea rsi, [r12 + 2528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 cmp eax, 99
 je xchain425_n102_α
 jmp xchain425_n101_α
 xchain425_n100_β:
 jmp xchain425_n102_α
xchain425_n101_α:
# IR_VAR_REF local
bb343_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 jmp xchain425_n103_α
 xchain425_n101_β:
 jmp xchain425_n102_α
xchain425_n102_α:
bb344_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+2416]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2416], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2424], rax
  .section .rodata
  .Lrkfn606: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn606]
 lea rsi, [r12 + 2416]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n104_α
 xchain425_n102_β:
 jmp proc_pop_ω
xchain425_n103_α:
# IR_LIT_INTEGER
bb345_α:
 mov qword ptr [r12 + 2496], 6
 mov rax, qword ptr [rip + .Lx607_0]
 mov qword ptr [r12 + 2504], rax
 jmp xchain425_n105_α
 xchain425_n103_β:
 jmp xchain425_n102_α
.Lx607_0:
 .quad 559
xchain425_n104_α:
# IR_VAR_REF local
bb346_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2368], rax
 mov qword ptr [r12 + 2376], rdx
 jmp xchain425_n106_α
 xchain425_n104_β:
 jmp xchain425_n110_α
xchain425_n105_α:
bb347_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2480] -> [r12+2448]
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 2448], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 2456], rax
# marshal arg1 = producer-box slot [r12+2496] -> [r12+2464]
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 2464], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 2472], rax
  .section .rodata
  .Lrkfn611: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn611]
 lea rsi, [r12 + 2448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 cmp eax, 99
 je xchain425_n102_α
 jmp xchain425_n107_α
 xchain425_n105_β:
 jmp xchain425_n102_α
xchain425_n106_α:
# IR_LIT_STRING
bb348_α:
 mov qword ptr [r12 + 2384], 1
 mov rax, qword ptr [rip + .Lx612_0]
 mov qword ptr [r12 + 2392], rax
 jmp xchain425_n108_α
 xchain425_n106_β:
 jmp xchain425_n110_α
.Lx612_0:
 .quad .Lx612_0_s
.Lx612_0_s:
 .string "italy"
xchain425_n107_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb349_α:
 lea rax, [rip + xchain425_n102_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n107_β:
 jmp proc_pop_ω
xchain425_n108_α:
bb350_α:
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
  .Lrkfn616: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn616]
 lea rsi, [r12 + 2336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 cmp eax, 99
 je xchain425_n110_α
 jmp xchain425_n109_α
 xchain425_n108_β:
 jmp xchain425_n110_α
xchain425_n109_α:
# IR_VAR_REF local
bb351_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain425_n111_α
 xchain425_n109_β:
 jmp xchain425_n110_α
xchain425_n110_α:
bb352_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+2224]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2232], rax
  .section .rodata
  .Lrkfn620: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn620]
 lea rsi, [r12 + 2224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n112_α
 xchain425_n110_β:
 jmp proc_pop_ω
xchain425_n111_α:
# IR_LIT_INTEGER
bb353_α:
 mov qword ptr [r12 + 2304], 6
 mov rax, qword ptr [rip + .Lx621_0]
 mov qword ptr [r12 + 2312], rax
 jmp xchain425_n113_α
 xchain425_n111_β:
 jmp xchain425_n110_α
.Lx621_0:
 .quad 554
xchain425_n112_α:
# IR_VAR_REF local
bb354_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain425_n114_α
 xchain425_n112_β:
 jmp xchain425_n118_α
xchain425_n113_α:
bb355_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2288] -> [r12+2256]
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 2256], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 2264], rax
# marshal arg1 = producer-box slot [r12+2304] -> [r12+2272]
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 2272], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2280], rax
  .section .rodata
  .Lrkfn625: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn625]
 lea rsi, [r12 + 2256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 cmp eax, 99
 je xchain425_n110_α
 jmp xchain425_n115_α
 xchain425_n113_β:
 jmp xchain425_n110_α
xchain425_n114_α:
# IR_LIT_STRING
bb356_α:
 mov qword ptr [r12 + 2192], 1
 mov rax, qword ptr [rip + .Lx626_0]
 mov qword ptr [r12 + 2200], rax
 jmp xchain425_n116_α
 xchain425_n114_β:
 jmp xchain425_n118_α
.Lx626_0:
 .quad .Lx626_0_s
.Lx626_0_s:
 .string "france"
xchain425_n115_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb357_α:
 lea rax, [rip + xchain425_n110_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n115_β:
 jmp proc_pop_ω
xchain425_n116_α:
bb358_α:
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
  .Lrkfn630: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn630]
 lea rsi, [r12 + 2144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 cmp eax, 99
 je xchain425_n118_α
 jmp xchain425_n117_α
 xchain425_n116_β:
 jmp xchain425_n118_α
xchain425_n117_α:
# IR_VAR_REF local
bb359_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain425_n119_α
 xchain425_n117_β:
 jmp xchain425_n118_α
xchain425_n118_α:
bb360_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+2032]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2040], rax
  .section .rodata
  .Lrkfn634: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn634]
 lea rsi, [r12 + 2032]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n120_α
 xchain425_n118_β:
 jmp proc_pop_ω
xchain425_n119_α:
# IR_LIT_INTEGER
bb361_α:
 mov qword ptr [r12 + 2112], 6
 mov rax, qword ptr [rip + .Lx635_0]
 mov qword ptr [r12 + 2120], rax
 jmp xchain425_n121_α
 xchain425_n119_β:
 jmp xchain425_n118_α
.Lx635_0:
 .quad 525
xchain425_n120_α:
# IR_VAR_REF local
bb362_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xchain425_n122_α
 xchain425_n120_β:
 jmp xchain425_n126_α
xchain425_n121_α:
bb363_α:
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
  .Lrkfn639: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn639]
 lea rsi, [r12 + 2064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 cmp eax, 99
 je xchain425_n118_α
 jmp xchain425_n123_α
 xchain425_n121_β:
 jmp xchain425_n118_α
xchain425_n122_α:
# IR_LIT_STRING
bb364_α:
 mov qword ptr [r12 + 2000], 1
 mov rax, qword ptr [rip + .Lx640_0]
 mov qword ptr [r12 + 2008], rax
 jmp xchain425_n124_α
 xchain425_n122_β:
 jmp xchain425_n126_α
.Lx640_0:
 .quad .Lx640_0_s
.Lx640_0_s:
 .string "philippines"
xchain425_n123_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb365_α:
 lea rax, [rip + xchain425_n118_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n123_β:
 jmp proc_pop_ω
xchain425_n124_α:
bb366_α:
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
  .Lrkfn644: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn644]
 lea rsi, [r12 + 1952]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 cmp eax, 99
 je xchain425_n126_α
 jmp xchain425_n125_α
 xchain425_n124_β:
 jmp xchain425_n126_α
xchain425_n125_α:
# IR_VAR_REF local
bb367_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain425_n127_α
 xchain425_n125_β:
 jmp xchain425_n126_α
xchain425_n126_α:
bb368_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+1840]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1848], rax
  .section .rodata
  .Lrkfn648: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn648]
 lea rsi, [r12 + 1840]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n128_α
 xchain425_n126_β:
 jmp proc_pop_ω
xchain425_n127_α:
# IR_LIT_INTEGER
bb369_α:
 mov qword ptr [r12 + 1920], 6
 mov rax, qword ptr [rip + .Lx649_0]
 mov qword ptr [r12 + 1928], rax
 jmp xchain425_n129_α
 xchain425_n127_β:
 jmp xchain425_n126_α
.Lx649_0:
 .quad 415
xchain425_n128_α:
# IR_VAR_REF local
bb370_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain425_n130_α
 xchain425_n128_β:
 jmp xchain425_n134_α
xchain425_n129_α:
bb371_α:
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
  .Lrkfn653: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn653]
 lea rsi, [r12 + 1872]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 cmp eax, 99
 je xchain425_n126_α
 jmp xchain425_n131_α
 xchain425_n129_β:
 jmp xchain425_n126_α
xchain425_n130_α:
# IR_LIT_STRING
bb372_α:
 mov qword ptr [r12 + 1808], 1
 mov rax, qword ptr [rip + .Lx654_0]
 mov qword ptr [r12 + 1816], rax
 jmp xchain425_n132_α
 xchain425_n130_β:
 jmp xchain425_n134_α
.Lx654_0:
 .quad .Lx654_0_s
.Lx654_0_s:
 .string "thailand"
xchain425_n131_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb373_α:
 lea rax, [rip + xchain425_n126_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n131_β:
 jmp proc_pop_ω
xchain425_n132_α:
bb374_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1792] -> [r12+1760]
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1768], rax
# marshal arg1 = producer-box slot [r12+1808] -> [r12+1776]
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1784], rax
  .section .rodata
  .Lrkfn658: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn658]
 lea rsi, [r12 + 1760]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 cmp eax, 99
 je xchain425_n134_α
 jmp xchain425_n133_α
 xchain425_n132_β:
 jmp xchain425_n134_α
xchain425_n133_α:
# IR_VAR_REF local
bb375_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain425_n135_α
 xchain425_n133_β:
 jmp xchain425_n134_α
xchain425_n134_α:
bb376_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+1648]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1656], rax
  .section .rodata
  .Lrkfn662: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn662]
 lea rsi, [r12 + 1648]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n136_α
 xchain425_n134_β:
 jmp proc_pop_ω
xchain425_n135_α:
# IR_LIT_INTEGER
bb377_α:
 mov qword ptr [r12 + 1728], 6
 mov rax, qword ptr [rip + .Lx663_0]
 mov qword ptr [r12 + 1736], rax
 jmp xchain425_n137_α
 xchain425_n135_β:
 jmp xchain425_n134_α
.Lx663_0:
 .quad 410
xchain425_n136_α:
# IR_VAR_REF local
bb378_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain425_n138_α
 xchain425_n136_β:
 jmp xchain425_n142_α
xchain425_n137_α:
bb379_α:
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
  .Lrkfn667: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn667]
 lea rsi, [r12 + 1680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 cmp eax, 99
 je xchain425_n134_α
 jmp xchain425_n139_α
 xchain425_n137_β:
 jmp xchain425_n134_α
xchain425_n138_α:
# IR_LIT_STRING
bb380_α:
 mov qword ptr [r12 + 1616], 1
 mov rax, qword ptr [rip + .Lx668_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain425_n140_α
 xchain425_n138_β:
 jmp xchain425_n142_α
.Lx668_0:
 .quad .Lx668_0_s
.Lx668_0_s:
 .string "turkey"
xchain425_n139_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb381_α:
 lea rax, [rip + xchain425_n134_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n139_β:
 jmp proc_pop_ω
xchain425_n140_α:
bb382_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1600] -> [r12+1568]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1576], rax
# marshal arg1 = producer-box slot [r12+1616] -> [r12+1584]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1592], rax
  .section .rodata
  .Lrkfn672: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn672]
 lea rsi, [r12 + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 cmp eax, 99
 je xchain425_n142_α
 jmp xchain425_n141_α
 xchain425_n140_β:
 jmp xchain425_n142_α
xchain425_n141_α:
# IR_VAR_REF local
bb383_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain425_n143_α
 xchain425_n141_β:
 jmp xchain425_n142_α
xchain425_n142_α:
bb384_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+1456]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1464], rax
  .section .rodata
  .Lrkfn676: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn676]
 lea rsi, [r12 + 1456]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n144_α
 xchain425_n142_β:
 jmp proc_pop_ω
xchain425_n143_α:
# IR_LIT_INTEGER
bb385_α:
 mov qword ptr [r12 + 1536], 6
 mov rax, qword ptr [rip + .Lx677_0]
 mov qword ptr [r12 + 1544], rax
 jmp xchain425_n145_α
 xchain425_n143_β:
 jmp xchain425_n142_α
.Lx677_0:
 .quad 383
xchain425_n144_α:
# IR_VAR_REF local
bb386_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain425_n146_α
 xchain425_n144_β:
 jmp xchain425_n150_α
xchain425_n145_α:
bb387_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1520] -> [r12+1488]
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1496], rax
# marshal arg1 = producer-box slot [r12+1536] -> [r12+1504]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1512], rax
  .section .rodata
  .Lrkfn681: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn681]
 lea rsi, [r12 + 1488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 cmp eax, 99
 je xchain425_n142_α
 jmp xchain425_n147_α
 xchain425_n145_β:
 jmp xchain425_n142_α
xchain425_n146_α:
# IR_LIT_STRING
bb388_α:
 mov qword ptr [r12 + 1424], 1
 mov rax, qword ptr [rip + .Lx682_0]
 mov qword ptr [r12 + 1432], rax
 jmp xchain425_n148_α
 xchain425_n146_β:
 jmp xchain425_n150_α
.Lx682_0:
 .quad .Lx682_0_s
.Lx682_0_s:
 .string "egypt"
xchain425_n147_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb389_α:
 lea rax, [rip + xchain425_n142_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n147_β:
 jmp proc_pop_ω
xchain425_n148_α:
bb390_α:
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
  .Lrkfn686: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn686]
 lea rsi, [r12 + 1376]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 cmp eax, 99
 je xchain425_n150_α
 jmp xchain425_n149_α
 xchain425_n148_β:
 jmp xchain425_n150_α
xchain425_n149_α:
# IR_VAR_REF local
bb391_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain425_n151_α
 xchain425_n149_β:
 jmp xchain425_n150_α
xchain425_n150_α:
bb392_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+1264]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1272], rax
  .section .rodata
  .Lrkfn690: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn690]
 lea rsi, [r12 + 1264]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n152_α
 xchain425_n150_β:
 jmp proc_pop_ω
xchain425_n151_α:
# IR_LIT_INTEGER
bb393_α:
 mov qword ptr [r12 + 1344], 6
 mov rax, qword ptr [rip + .Lx691_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain425_n153_α
 xchain425_n151_β:
 jmp xchain425_n150_α
.Lx691_0:
 .quad 364
xchain425_n152_α:
# IR_VAR_REF local
bb394_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain425_n154_α
 xchain425_n152_β:
 jmp xchain425_n158_α
xchain425_n153_α:
bb395_α:
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
  .Lrkfn695: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn695]
 lea rsi, [r12 + 1296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xchain425_n150_α
 jmp xchain425_n155_α
 xchain425_n153_β:
 jmp xchain425_n150_α
xchain425_n154_α:
# IR_LIT_STRING
bb396_α:
 mov qword ptr [r12 + 1232], 1
 mov rax, qword ptr [rip + .Lx696_0]
 mov qword ptr [r12 + 1240], rax
 jmp xchain425_n156_α
 xchain425_n154_β:
 jmp xchain425_n158_α
.Lx696_0:
 .quad .Lx696_0_s
.Lx696_0_s:
 .string "spain"
xchain425_n155_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb397_α:
 lea rax, [rip + xchain425_n150_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n155_β:
 jmp proc_pop_ω
xchain425_n156_α:
bb398_α:
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
  .Lrkfn700: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn700]
 lea rsi, [r12 + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain425_n158_α
 jmp xchain425_n157_α
 xchain425_n156_β:
 jmp xchain425_n158_α
xchain425_n157_α:
# IR_VAR_REF local
bb399_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain425_n159_α
 xchain425_n157_β:
 jmp xchain425_n158_α
xchain425_n158_α:
bb400_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+1072]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn704: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn704]
 lea rsi, [r12 + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n160_α
 xchain425_n158_β:
 jmp proc_pop_ω
xchain425_n159_α:
# IR_LIT_INTEGER
bb401_α:
 mov qword ptr [r12 + 1152], 6
 mov rax, qword ptr [rip + .Lx705_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain425_n161_α
 xchain425_n159_β:
 jmp xchain425_n158_α
.Lx705_0:
 .quad 352
xchain425_n160_α:
# IR_VAR_REF local
bb402_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain425_n162_α
 xchain425_n160_β:
 jmp xchain425_n166_α
xchain425_n161_α:
bb403_α:
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
  .Lrkfn709: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn709]
 lea rsi, [r12 + 1104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je xchain425_n158_α
 jmp xchain425_n163_α
 xchain425_n161_β:
 jmp xchain425_n158_α
xchain425_n162_α:
# IR_LIT_STRING
bb404_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx710_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain425_n164_α
 xchain425_n162_β:
 jmp xchain425_n166_α
.Lx710_0:
 .quad .Lx710_0_s
.Lx710_0_s:
 .string "poland"
xchain425_n163_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb405_α:
 lea rax, [rip + xchain425_n158_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n163_β:
 jmp proc_pop_ω
xchain425_n164_α:
bb406_α:
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
  .Lrkfn714: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn714]
 lea rsi, [r12 + 992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain425_n166_α
 jmp xchain425_n165_α
 xchain425_n164_β:
 jmp xchain425_n166_α
xchain425_n165_α:
# IR_VAR_REF local
bb407_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain425_n167_α
 xchain425_n165_β:
 jmp xchain425_n166_α
xchain425_n166_α:
bb408_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+880]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lrkfn718: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn718]
 lea rsi, [r12 + 880]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n168_α
 xchain425_n166_β:
 jmp proc_pop_ω
xchain425_n167_α:
# IR_LIT_INTEGER
bb409_α:
 mov qword ptr [r12 + 960], 6
 mov rax, qword ptr [rip + .Lx719_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain425_n169_α
 xchain425_n167_β:
 jmp xchain425_n166_α
.Lx719_0:
 .quad 337
xchain425_n168_α:
# IR_VAR_REF local
bb410_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain425_n170_α
 xchain425_n168_β:
 jmp xchain425_n174_α
xchain425_n169_α:
bb411_α:
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
  .Lrkfn723: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn723]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain425_n166_α
 jmp xchain425_n171_α
 xchain425_n169_β:
 jmp xchain425_n166_α
xchain425_n170_α:
# IR_LIT_STRING
bb412_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx724_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain425_n172_α
 xchain425_n170_β:
 jmp xchain425_n174_α
.Lx724_0:
 .quad .Lx724_0_s
.Lx724_0_s:
 .string "s_korea"
xchain425_n171_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb413_α:
 lea rax, [rip + xchain425_n166_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n171_β:
 jmp proc_pop_ω
xchain425_n172_α:
bb414_α:
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
  .Lrkfn728: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn728]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain425_n174_α
 jmp xchain425_n173_α
 xchain425_n172_β:
 jmp xchain425_n174_α
xchain425_n173_α:
# IR_VAR_REF local
bb415_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain425_n175_α
 xchain425_n173_β:
 jmp xchain425_n174_α
xchain425_n174_α:
bb416_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+688]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn732: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn732]
 lea rsi, [r12 + 688]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n176_α
 xchain425_n174_β:
 jmp proc_pop_ω
xchain425_n175_α:
# IR_LIT_INTEGER
bb417_α:
 mov qword ptr [r12 + 768], 6
 mov rax, qword ptr [rip + .Lx733_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain425_n177_α
 xchain425_n175_β:
 jmp xchain425_n174_α
.Lx733_0:
 .quad 335
xchain425_n176_α:
# IR_VAR_REF local
bb418_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain425_n178_α
 xchain425_n176_β:
 jmp xchain425_n182_α
xchain425_n177_α:
bb419_α:
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
  .Lrkfn737: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn737]
 lea rsi, [r12 + 720]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain425_n174_α
 jmp xchain425_n179_α
 xchain425_n177_β:
 jmp xchain425_n174_α
xchain425_n178_α:
# IR_LIT_STRING
bb420_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx738_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain425_n180_α
 xchain425_n178_β:
 jmp xchain425_n182_α
.Lx738_0:
 .quad .Lx738_0_s
.Lx738_0_s:
 .string "iran"
xchain425_n179_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb421_α:
 lea rax, [rip + xchain425_n174_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n179_β:
 jmp proc_pop_ω
xchain425_n180_α:
bb422_α:
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
  .Lrkfn742: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn742]
 lea rsi, [r12 + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain425_n182_α
 jmp xchain425_n181_α
 xchain425_n180_β:
 jmp xchain425_n182_α
xchain425_n181_α:
# IR_VAR_REF local
bb423_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain425_n183_α
 xchain425_n181_β:
 jmp xchain425_n182_α
xchain425_n182_α:
bb424_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+496]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn746: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn746]
 lea rsi, [r12 + 496]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n184_α
 xchain425_n182_β:
 jmp proc_pop_ω
xchain425_n183_α:
# IR_LIT_INTEGER
bb425_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx747_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain425_n185_α
 xchain425_n183_β:
 jmp xchain425_n182_α
.Lx747_0:
 .quad 320
xchain425_n184_α:
# IR_VAR_REF local
bb426_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain425_n186_α
 xchain425_n184_β:
 jmp xchain425_n190_α
xchain425_n185_α:
bb427_α:
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
  .Lrkfn751: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn751]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain425_n182_α
 jmp xchain425_n187_α
 xchain425_n185_β:
 jmp xchain425_n182_α
xchain425_n186_α:
# IR_LIT_STRING
bb428_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx752_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain425_n188_α
 xchain425_n186_β:
 jmp xchain425_n190_α
.Lx752_0:
 .quad .Lx752_0_s
.Lx752_0_s:
 .string "ethiopia"
xchain425_n187_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb429_α:
 lea rax, [rip + xchain425_n182_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n187_β:
 jmp proc_pop_ω
xchain425_n188_α:
bb430_α:
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
  .Lrkfn756: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn756]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain425_n190_α
 jmp xchain425_n189_α
 xchain425_n188_β:
 jmp xchain425_n190_α
xchain425_n189_α:
# IR_VAR_REF local
bb431_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain425_n191_α
 xchain425_n189_β:
 jmp xchain425_n190_α
xchain425_n190_α:
bb432_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+304]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn760: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn760]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp xchain425_n192_α
 xchain425_n190_β:
 jmp proc_pop_ω
xchain425_n191_α:
# IR_LIT_INTEGER
bb433_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx761_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain425_n193_α
 xchain425_n191_β:
 jmp xchain425_n190_α
.Lx761_0:
 .quad 272
xchain425_n192_α:
# IR_VAR_REF local
bb434_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain425_n194_α
 xchain425_n192_β:
 jmp xchain425_n198_α
xchain425_n193_α:
bb435_α:
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
  .Lrkfn765: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn765]
 lea rsi, [r12 + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain425_n190_α
 jmp xchain425_n195_α
 xchain425_n193_β:
 jmp xchain425_n190_α
xchain425_n194_α:
# IR_LIT_STRING
bb436_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx766_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain425_n196_α
 xchain425_n194_β:
 jmp xchain425_n198_α
.Lx766_0:
 .quad .Lx766_0_s
.Lx766_0_s:
 .string "argentina"
xchain425_n195_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb437_α:
 lea rax, [rip + xchain425_n190_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n195_β:
 jmp proc_pop_ω
xchain425_n196_α:
bb438_α:
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
  .Lrkfn770: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn770]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain425_n198_α
 jmp xchain425_n197_α
 xchain425_n196_β:
 jmp xchain425_n198_α
xchain425_n197_α:
# IR_VAR_REF local
bb439_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain425_n199_α
 xchain425_n197_β:
 jmp xchain425_n198_α
xchain425_n198_α:
bb440_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn774: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn774]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_pop_ω
 jmp proc_pop_ω
 xchain425_n198_β:
 jmp proc_pop_ω
xchain425_n199_α:
# IR_LIT_INTEGER
bb441_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx775_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain425_n200_α
 xchain425_n199_β:
 jmp xchain425_n198_α
.Lx775_0:
 .quad 251
xchain425_n200_α:
bb442_α:
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
  .Lrkfn777: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn777]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain425_n198_α
 jmp xchain425_n201_α
 xchain425_n200_β:
 jmp xchain425_n198_α
xchain425_n201_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb443_α:
 lea rax, [rip + xchain425_n198_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop_γ
 xchain425_n201_β:
 jmp proc_pop_ω
proc_pop_β:
jmp xchain425_n12_α
proc_pop_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_pop_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_density_α
proc_density_α:
#=======================================================================================================================
    .global proc_density_α
    .global proc_density_β
    .global proc_density_γ
    .global proc_density_ω
push r12
  mov r12, rdi
  cmp esi, 0
  jne proc_density_β
proc_density_α_body:
xchain780_n0_α:
bb444_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn782: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn782]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_density_ω
 jmp xchain780_n1_α
 xchain780_n0_β:
 jmp proc_density_ω
xchain780_n1_α:
# IR_VAR_REF local
bb445_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain780_n2_α
 xchain780_n1_β:
 jmp xchain780_n5_α
xchain780_n2_α:
# IR_VAR_REF local
bb446_α:
 lea rdi, [r12 + 704]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain780_n3_α
 xchain780_n2_β:
 jmp xchain780_n5_α
xchain780_n3_α:
bb447_α:
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
  .Lrkfn788: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn788]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain780_n5_α
 jmp xchain780_n4_α
 xchain780_n3_β:
 jmp xchain780_n5_α
xchain780_n4_α:
# IR_VAR_REF local
bb448_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain780_n6_α
 xchain780_n4_β:
 jmp xchain780_n5_α
xchain780_n5_α:
bb449_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn792: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn792]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_density_ω
 jmp proc_density_ω
 xchain780_n5_β:
 jmp proc_density_ω
xchain780_n6_α:
# IR_VAR_REF local
bb450_α:
 lea rdi, [r12 + 656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain780_n7_α
 xchain780_n6_β:
 jmp xchain780_n5_α
xchain780_n7_α:
bb451_α:
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
  .Lrkfn796: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn796]
 lea rsi, [r12 + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain780_n5_α
 jmp xchain780_n8_α
 xchain780_n7_β:
 jmp xchain780_n5_α
xchain780_n8_α:
# IR_VAR_REF local
bb452_α:
 lea rdi, [r12 + 704]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain780_n9_α
 xchain780_n8_β:
 jmp xchain780_n5_α
xchain780_n9_α:
# IR_VAR_REF local
bb453_α:
 lea rdi, [r12 + 672]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain780_n10_α
 xchain780_n9_β:
 jmp xchain780_n5_α
xchain780_n10_α:
bb454_α:
  .section .rodata
  .Lcall454_pname: .string "pop"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall454_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain780_n5_α
 jmp xchain780_n11_α
xchain780_n10_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain780_n5_α
 jmp xchain780_n11_α
xchain780_n11_α:
# IR_VAR_REF local
bb455_α:
 lea rdi, [r12 + 704]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain780_n12_α
 xchain780_n11_β:
 jmp xchain780_n5_α
xchain780_n12_α:
# IR_VAR_REF local
bb456_α:
 lea rdi, [r12 + 688]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain780_n13_α
 xchain780_n12_β:
 jmp xchain780_n5_α
xchain780_n13_α:
bb457_α:
  .section .rodata
  .Lcall457_pname: .string "area"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall457_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain780_n10_β
 jmp xchain780_n14_α
xchain780_n13_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain780_n10_β
 jmp xchain780_n14_α
xchain780_n14_α:
# IR_VAR_REF local
bb458_α:
 lea rdi, [r12 + 656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain780_n15_α
 xchain780_n14_β:
 jmp xchain780_n5_α
xchain780_n15_α:
# IR_LIT_STRING
bb459_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx809_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain780_n16_α
 xchain780_n15_β:
 jmp proc_density_ω
.Lx809_0:
 .quad .Lx809_0_s
.Lx809_0_s:
 .string "*"
xchain780_n16_α:
# IR_VAR_REF local
bb460_α:
 lea rdi, [r12 + 672]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain780_n17_α
 xchain780_n16_β:
 jmp proc_density_ω
xchain780_n17_α:
# IR_LIT_INTEGER
bb461_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx812_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain780_n18_α
 xchain780_n17_β:
 jmp proc_density_ω
.Lx812_0:
 .quad 100
xchain780_n18_α:
bb462_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+304] -> [r12+256]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 264], rax
# marshal arg1 = producer-box slot [r12+208] -> [r12+272]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 280], rax
# marshal arg2 = producer-box slot [r12+224] -> [r12+288]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn814: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn814]
 lea rsi, [r12 + 256]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain780_n5_α
 jmp xchain780_n19_α
 xchain780_n18_β:
 jmp xchain780_n5_α
xchain780_n19_α:
# IR_VAR
bb463_α:
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 328], rax
 jmp xchain780_n20_α
 xchain780_n19_β:
 jmp xchain780_n5_α
xchain780_n20_α:
bb464_α:
# BOX IR_CALL $is_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+192] -> [r12+144]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [r12+240] -> [r12+160]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 168], rax
# marshal arg2 = producer-box slot [r12+320] -> [r12+176]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn818: .string "$is_idiv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn818]
 lea rsi, [r12 + 144]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain780_n13_β
 jmp xchain780_n21_α
 xchain780_n20_β:
 jmp xchain780_n13_β
xchain780_n21_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb465_α:
 lea rax, [rip + xchain780_n10_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_density_γ
 xchain780_n21_β:
 jmp proc_density_ω
xchain780_n22_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb466_α:
 jmp qword ptr [r12 + 64]
 xchain780_n22_β:
 jmp proc_density_ω
proc_density_β:
jmp xchain780_n22_α
proc_density_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_density_ω:
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
  .Lstartup_pname0: .string "area"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_area_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname1: .string "query"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_query_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname2: .string "pop"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_pop_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname3: .string "density"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_density_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
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
main_α_body:
xchain823_n0_α:
bb467_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn825: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn825]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain823_n1_α
 xchain823_n0_β:
 jmp main_ω
xchain823_n1_α:
# IR_LIT_STRING
bb468_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx826_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain823_n2_α
 xchain823_n1_β:
 jmp main_ω
.Lx826_0:
 .quad .Lx826_0_s
.Lx826_0_s:
 .string "."
xchain823_n2_α:
# IR_VAR_REF local
bb469_α:
 lea rdi, [r12 + 880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain823_n3_α
 xchain823_n2_β:
 jmp main_ω
xchain823_n3_α:
# IR_LIT_STRING
bb470_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx829_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain823_n4_α
 xchain823_n3_β:
 jmp main_ω
.Lx829_0:
 .quad .Lx829_0_s
.Lx829_0_s:
 .string "."
xchain823_n4_α:
# IR_VAR_REF local
bb471_α:
 lea rdi, [r12 + 912]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain823_n5_α
 xchain823_n4_β:
 jmp main_ω
xchain823_n5_α:
# IR_LIT_STRING
bb472_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx832_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain823_n6_α
 xchain823_n5_β:
 jmp main_ω
.Lx832_0:
 .quad .Lx832_0_s
.Lx832_0_s:
 .string "."
xchain823_n6_α:
# IR_VAR_REF local
bb473_α:
 lea rdi, [r12 + 864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain823_n7_α
 xchain823_n6_β:
 jmp main_ω
xchain823_n7_α:
# IR_LIT_STRING
bb474_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx835_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain823_n8_α
 xchain823_n7_β:
 jmp main_ω
.Lx835_0:
 .quad .Lx835_0_s
.Lx835_0_s:
 .string "."
xchain823_n8_α:
# IR_VAR_REF local
bb475_α:
 lea rdi, [r12 + 896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain823_n9_α
 xchain823_n8_β:
 jmp main_ω
xchain823_n9_α:
# IR_LIT_STRING
bb476_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx838_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain823_n10_α
 xchain823_n9_β:
 jmp main_ω
.Lx838_0:
 .quad .Lx838_0_s
.Lx838_0_s:
 .string "[]"
xchain823_n10_α:
bb477_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+560] -> [r12+512]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [r12+480] -> [r12+528]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 536], rax
# marshal arg2 = producer-box slot [r12+464] -> [r12+544]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn840: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn840]
 lea rsi, [r12 + 512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je main_ω
 jmp xchain823_n11_α
 xchain823_n10_β:
 jmp main_ω
xchain823_n11_α:
bb478_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+656] -> [r12+608]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 616], rax
# marshal arg1 = producer-box slot [r12+576] -> [r12+624]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 632], rax
# marshal arg2 = producer-box slot [r12+496] -> [r12+640]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn842: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn842]
 lea rsi, [r12 + 608]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je main_ω
 jmp xchain823_n12_α
 xchain823_n11_β:
 jmp main_ω
xchain823_n12_α:
bb479_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+752] -> [r12+704]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [r12+672] -> [r12+720]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 728], rax
# marshal arg2 = producer-box slot [r12+592] -> [r12+736]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn844: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn844]
 lea rsi, [r12 + 704]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je main_ω
 jmp xchain823_n13_α
 xchain823_n12_β:
 jmp main_ω
xchain823_n13_α:
bb480_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+848] -> [r12+800]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 808], rax
# marshal arg1 = producer-box slot [r12+768] -> [r12+816]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 824], rax
# marshal arg2 = producer-box slot [r12+688] -> [r12+832]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn846: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn846]
 lea rsi, [r12 + 800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain823_n15_α
 jmp xchain823_n14_α
 xchain823_n13_β:
 jmp xchain823_n15_α
xchain823_n14_α:
bb481_α:
  .section .rodata
  .Lcall481_pname: .string "query"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 784]
 mov rdx, qword ptr [r12 + 792]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall481_pname]
 mov esi, 1
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain823_n15_α
 jmp xchain823_n16_α
xchain823_n14_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain823_n15_α
 jmp xchain823_n16_α
xchain823_n15_α:
# IR_LIT_STRING
bb482_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx848_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain823_n17_α
 xchain823_n15_β:
 jmp xchain823_n20_α
.Lx848_0:
 .quad .Lx848_0_s
.Lx848_0_s:
 .string "none"
xchain823_n16_α:
# IR_LIT_STRING
bb483_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx849_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain823_n18_α
 xchain823_n16_β:
 jmp main_ω
.Lx849_0:
 .quad .Lx849_0_s
.Lx849_0_s:
 .string "."
xchain823_n17_α:
bb484_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+416] -> [r12+400]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn851: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn851]
 lea rsi, [r12 + 400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain823_n20_α
 jmp xchain823_n19_α
 xchain823_n17_β:
 jmp xchain823_n20_α
xchain823_n18_α:
# IR_VAR_REF local
bb485_α:
 lea rdi, [r12 + 880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain823_n21_α
 xchain823_n18_β:
 jmp main_ω
xchain823_n19_α:
# IR_LIT_STRING
bb486_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx854_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain823_n22_α
 xchain823_n19_β:
 jmp xchain823_n20_α
.Lx854_0:
 .quad .Lx854_0_s
.Lx854_0_s:
 .string ""
xchain823_n20_α:
bb487_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+48] -> [r12+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn856: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn856]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain823_n20_β:
 jmp main_ω
xchain823_n21_α:
# IR_LIT_STRING
bb488_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx857_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain823_n23_α
 xchain823_n21_β:
 jmp main_ω
.Lx857_0:
 .quad .Lx857_0_s
.Lx857_0_s:
 .string "."
xchain823_n22_α:
bb489_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn859: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn859]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain823_n20_α
 jmp xchain823_n24_α
 xchain823_n22_β:
 jmp xchain823_n20_α
xchain823_n23_α:
# IR_VAR_REF local
bb490_α:
 lea rdi, [r12 + 864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain823_n25_α
 xchain823_n23_β:
 jmp main_ω
xchain823_n24_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb491_α:
 lea rax, [rip + xchain823_n20_α]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain823_n24_β:
 jmp main_ω
xchain823_n25_α:
# IR_LIT_STRING
bb492_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx864_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain823_n27_α
 xchain823_n25_β:
 jmp main_ω
.Lx864_0:
 .quad .Lx864_0_s
.Lx864_0_s:
 .string "[]"
xchain823_n26_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb493_α:
 jmp qword ptr [r12 + 32]
 xchain823_n26_β:
 jmp main_ω
xchain823_n27_α:
bb494_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+272] -> [r12+224]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [r12+192] -> [r12+240]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 248], rax
# marshal arg2 = producer-box slot [r12+176] -> [r12+256]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn868: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn868]
 lea rsi, [r12 + 224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je main_ω
 jmp xchain823_n28_α
 xchain823_n27_β:
 jmp main_ω
xchain823_n28_α:
bb495_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+368] -> [r12+320]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [r12+288] -> [r12+336]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 344], rax
# marshal arg2 = producer-box slot [r12+208] -> [r12+352]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn870: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn870]
 lea rsi, [r12 + 320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain823_n20_α
 jmp xchain823_n29_α
 xchain823_n28_β:
 jmp xchain823_n20_α
xchain823_n29_α:
bb496_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+304] -> [r12+160]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn872: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn872]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain823_n20_α
 jmp xchain823_n19_α
 xchain823_n29_β:
 jmp xchain823_n20_α
main_β:
jmp xchain823_n26_α
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
