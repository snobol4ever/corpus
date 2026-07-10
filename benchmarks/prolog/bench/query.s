  .intel_syntax noprefix
  .text
  .globl proc_area$2_α
proc_area$2_α:
#=======================================================================================================================
    .global proc_area$2_α
    .global proc_area$2_β
    .global proc_area$2_γ
    .global proc_area$2_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_area$2_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 4896], rax
 pop rsi
proc_area$2_α_body:
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
 je proc_area$2_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_area$2_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4864], rax
 mov qword ptr [r12 + 4872], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n2_α:
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
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4864] -> [zr+4832]
 mov rax, qword ptr [r12 + 4864]
 mov qword ptr [r12 + 4832], rax
 mov rax, qword ptr [r12 + 4872]
 mov qword ptr [r12 + 4840], rax
# marshal arg1 = producer-box slot [zr+4880] -> [zr+4848]
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
# IR_VAR_REF
 xchain0_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4784], rax
 mov qword ptr [r12 + 4792], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4720]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 4720], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 4728], rax
  .section .rodata
  .Lrkfn11: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn11]
 lea rsi, [r12 + 4720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4704], rax
 mov qword ptr [r12 + 4712], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n6_α:
 mov qword ptr [r12 + 4800], 6
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 4808], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n5_α
.Lx12_0:
 .quad 3380
# IR_VAR_REF
 xchain0_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4672], rax
 mov qword ptr [r12 + 4680], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n14_α
 xchain0_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4784] -> [zr+4752]
 mov rax, qword ptr [r12 + 4784]
 mov qword ptr [r12 + 4752], rax
 mov rax, qword ptr [r12 + 4792]
 mov qword ptr [r12 + 4760], rax
# marshal arg1 = producer-box slot [zr+4800] -> [zr+4768]
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
# IR_LIT_STRING
 xchain0_n9_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n10_α:
 lea rax, [rip + xchain0_n5_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n10_β:
 jmp proc_area$2_ω
 xchain0_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4672] -> [zr+4640]
 mov rax, qword ptr [r12 + 4672]
 mov qword ptr [r12 + 4640], rax
 mov rax, qword ptr [r12 + 4680]
 mov qword ptr [r12 + 4648], rax
# marshal arg1 = producer-box slot [zr+4688] -> [zr+4656]
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
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n12_α:
 jmp qword ptr [r12 + 64]
 xchain0_n12_β:
 jmp proc_area$2_ω
# IR_VAR_REF
 xchain0_n13_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4592], rax
 mov qword ptr [r12 + 4600], rdx
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n14_α
 xchain0_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4528]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 4528], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 4536], rax
  .section .rodata
  .Lrkfn27: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn27]
 lea rsi, [r12 + 4528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4512], rax
 mov qword ptr [r12 + 4520], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n15_α:
 mov qword ptr [r12 + 4608], 6
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 4616], rax
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n14_α
.Lx28_0:
 .quad 1139
# IR_VAR_REF
 xchain0_n16_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4480], rax
 mov qword ptr [r12 + 4488], rdx
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n22_α
 xchain0_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4592] -> [zr+4560]
 mov rax, qword ptr [r12 + 4592]
 mov qword ptr [r12 + 4560], rax
 mov rax, qword ptr [r12 + 4600]
 mov qword ptr [r12 + 4568], rax
# marshal arg1 = producer-box slot [zr+4608] -> [zr+4576]
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
# IR_LIT_STRING
 xchain0_n18_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n19_α:
 lea rax, [rip + xchain0_n14_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n19_β:
 jmp proc_area$2_ω
 xchain0_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4480] -> [zr+4448]
 mov rax, qword ptr [r12 + 4480]
 mov qword ptr [r12 + 4448], rax
 mov rax, qword ptr [r12 + 4488]
 mov qword ptr [r12 + 4456], rax
# marshal arg1 = producer-box slot [zr+4496] -> [zr+4464]
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
# IR_VAR_REF
 xchain0_n21_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4400], rax
 mov qword ptr [r12 + 4408], rdx
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n22_α
 xchain0_n22_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4336]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 4336], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 4344], rax
  .section .rodata
  .Lrkfn41: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn41]
 lea rsi, [r12 + 4336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n23_α:
 mov qword ptr [r12 + 4416], 6
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 4424], rax
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp xchain0_n22_α
.Lx42_0:
 .quad 8708
# IR_VAR_REF
 xchain0_n24_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4288], rax
 mov qword ptr [r12 + 4296], rdx
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n30_α
 xchain0_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4400] -> [zr+4368]
 mov rax, qword ptr [r12 + 4400]
 mov qword ptr [r12 + 4368], rax
 mov rax, qword ptr [r12 + 4408]
 mov qword ptr [r12 + 4376], rax
# marshal arg1 = producer-box slot [zr+4416] -> [zr+4384]
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
# IR_LIT_STRING
 xchain0_n26_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n27_α:
 lea rax, [rip + xchain0_n22_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n27_β:
 jmp proc_area$2_ω
 xchain0_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4288] -> [zr+4256]
 mov rax, qword ptr [r12 + 4288]
 mov qword ptr [r12 + 4256], rax
 mov rax, qword ptr [r12 + 4296]
 mov qword ptr [r12 + 4264], rax
# marshal arg1 = producer-box slot [zr+4304] -> [zr+4272]
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
# IR_VAR_REF
 xchain0_n29_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4208], rax
 mov qword ptr [r12 + 4216], rdx
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp xchain0_n30_α
 xchain0_n30_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4144]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 4144], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 4152], rax
  .section .rodata
  .Lrkfn55: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn55]
 lea rsi, [r12 + 4144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4128], rax
 mov qword ptr [r12 + 4136], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n31_α:
 mov qword ptr [r12 + 4224], 6
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [r12 + 4232], rax
 jmp xchain0_n33_α
 xchain0_n31_β:
 jmp xchain0_n30_α
.Lx56_0:
 .quad 3609
# IR_VAR_REF
 xchain0_n32_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4096], rax
 mov qword ptr [r12 + 4104], rdx
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n38_α
 xchain0_n33_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4208] -> [zr+4176]
 mov rax, qword ptr [r12 + 4208]
 mov qword ptr [r12 + 4176], rax
 mov rax, qword ptr [r12 + 4216]
 mov qword ptr [r12 + 4184], rax
# marshal arg1 = producer-box slot [zr+4224] -> [zr+4192]
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
# IR_LIT_STRING
 xchain0_n34_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n35_α:
 lea rax, [rip + xchain0_n30_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n35_β:
 jmp proc_area$2_ω
 xchain0_n36_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4096] -> [zr+4064]
 mov rax, qword ptr [r12 + 4096]
 mov qword ptr [r12 + 4064], rax
 mov rax, qword ptr [r12 + 4104]
 mov qword ptr [r12 + 4072], rax
# marshal arg1 = producer-box slot [zr+4112] -> [zr+4080]
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
# IR_VAR_REF
 xchain0_n37_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4016], rax
 mov qword ptr [r12 + 4024], rdx
 jmp xchain0_n39_α
 xchain0_n37_β:
 jmp xchain0_n38_α
 xchain0_n38_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3952]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3952], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3960], rax
  .section .rodata
  .Lrkfn69: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn69]
 lea rsi, [r12 + 3952]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3936], rax
 mov qword ptr [r12 + 3944], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n40_α
 xchain0_n38_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n39_α:
 mov qword ptr [r12 + 4032], 6
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [r12 + 4040], rax
 jmp xchain0_n41_α
 xchain0_n39_β:
 jmp xchain0_n38_α
.Lx70_0:
 .quad 570
# IR_VAR_REF
 xchain0_n40_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3904], rax
 mov qword ptr [r12 + 3912], rdx
 jmp xchain0_n42_α
 xchain0_n40_β:
 jmp xchain0_n46_α
 xchain0_n41_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4016] -> [zr+3984]
 mov rax, qword ptr [r12 + 4016]
 mov qword ptr [r12 + 3984], rax
 mov rax, qword ptr [r12 + 4024]
 mov qword ptr [r12 + 3992], rax
# marshal arg1 = producer-box slot [zr+4032] -> [zr+4000]
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
# IR_LIT_STRING
 xchain0_n42_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n43_α:
 lea rax, [rip + xchain0_n38_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n43_β:
 jmp proc_area$2_ω
 xchain0_n44_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3904] -> [zr+3872]
 mov rax, qword ptr [r12 + 3904]
 mov qword ptr [r12 + 3872], rax
 mov rax, qword ptr [r12 + 3912]
 mov qword ptr [r12 + 3880], rax
# marshal arg1 = producer-box slot [zr+3920] -> [zr+3888]
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
# IR_VAR_REF
 xchain0_n45_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3824], rax
 mov qword ptr [r12 + 3832], rdx
 jmp xchain0_n47_α
 xchain0_n45_β:
 jmp xchain0_n46_α
 xchain0_n46_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3760]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3760], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3768], rax
  .section .rodata
  .Lrkfn83: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn83]
 lea rsi, [r12 + 3760]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3744], rax
 mov qword ptr [r12 + 3752], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n48_α
 xchain0_n46_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n47_α:
 mov qword ptr [r12 + 3840], 6
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [r12 + 3848], rax
 jmp xchain0_n49_α
 xchain0_n47_β:
 jmp xchain0_n46_α
.Lx84_0:
 .quad 148
# IR_VAR_REF
 xchain0_n48_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3712], rax
 mov qword ptr [r12 + 3720], rdx
 jmp xchain0_n50_α
 xchain0_n48_β:
 jmp xchain0_n54_α
 xchain0_n49_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3824] -> [zr+3792]
 mov rax, qword ptr [r12 + 3824]
 mov qword ptr [r12 + 3792], rax
 mov rax, qword ptr [r12 + 3832]
 mov qword ptr [r12 + 3800], rax
# marshal arg1 = producer-box slot [zr+3840] -> [zr+3808]
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
# IR_LIT_STRING
 xchain0_n50_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n51_α:
 lea rax, [rip + xchain0_n46_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n51_β:
 jmp proc_area$2_ω
 xchain0_n52_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3712] -> [zr+3680]
 mov rax, qword ptr [r12 + 3712]
 mov qword ptr [r12 + 3680], rax
 mov rax, qword ptr [r12 + 3720]
 mov qword ptr [r12 + 3688], rax
# marshal arg1 = producer-box slot [zr+3728] -> [zr+3696]
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
# IR_VAR_REF
 xchain0_n53_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3632], rax
 mov qword ptr [r12 + 3640], rdx
 jmp xchain0_n55_α
 xchain0_n53_β:
 jmp xchain0_n54_α
 xchain0_n54_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3568]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3568], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3576], rax
  .section .rodata
  .Lrkfn97: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn97]
 lea rsi, [r12 + 3568]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3552], rax
 mov qword ptr [r12 + 3560], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n56_α
 xchain0_n54_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n55_α:
 mov qword ptr [r12 + 3648], 6
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [r12 + 3656], rax
 jmp xchain0_n57_α
 xchain0_n55_β:
 jmp xchain0_n54_α
.Lx98_0:
 .quad 3288
# IR_VAR_REF
 xchain0_n56_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3520], rax
 mov qword ptr [r12 + 3528], rdx
 jmp xchain0_n58_α
 xchain0_n56_β:
 jmp xchain0_n62_α
 xchain0_n57_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3632] -> [zr+3600]
 mov rax, qword ptr [r12 + 3632]
 mov qword ptr [r12 + 3600], rax
 mov rax, qword ptr [r12 + 3640]
 mov qword ptr [r12 + 3608], rax
# marshal arg1 = producer-box slot [zr+3648] -> [zr+3616]
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
# IR_LIT_STRING
 xchain0_n58_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n59_α:
 lea rax, [rip + xchain0_n54_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n59_β:
 jmp proc_area$2_ω
 xchain0_n60_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3520] -> [zr+3488]
 mov rax, qword ptr [r12 + 3520]
 mov qword ptr [r12 + 3488], rax
 mov rax, qword ptr [r12 + 3528]
 mov qword ptr [r12 + 3496], rax
# marshal arg1 = producer-box slot [zr+3536] -> [zr+3504]
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
# IR_VAR_REF
 xchain0_n61_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3440], rax
 mov qword ptr [r12 + 3448], rdx
 jmp xchain0_n63_α
 xchain0_n61_β:
 jmp xchain0_n62_α
 xchain0_n62_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3376]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3376], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3384], rax
  .section .rodata
  .Lrkfn111: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn111]
 lea rsi, [r12 + 3376]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3360], rax
 mov qword ptr [r12 + 3368], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n64_α
 xchain0_n62_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n63_α:
 mov qword ptr [r12 + 3456], 6
 mov rax, qword ptr [rip + .Lx112_0]
 mov qword ptr [r12 + 3464], rax
 jmp xchain0_n65_α
 xchain0_n63_β:
 jmp xchain0_n62_α
.Lx112_0:
 .quad 55
# IR_VAR_REF
 xchain0_n64_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3328], rax
 mov qword ptr [r12 + 3336], rdx
 jmp xchain0_n66_α
 xchain0_n64_β:
 jmp xchain0_n70_α
 xchain0_n65_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3440] -> [zr+3408]
 mov rax, qword ptr [r12 + 3440]
 mov qword ptr [r12 + 3408], rax
 mov rax, qword ptr [r12 + 3448]
 mov qword ptr [r12 + 3416], rax
# marshal arg1 = producer-box slot [zr+3456] -> [zr+3424]
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
# IR_LIT_STRING
 xchain0_n66_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n67_α:
 lea rax, [rip + xchain0_n62_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n67_β:
 jmp proc_area$2_ω
 xchain0_n68_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3328] -> [zr+3296]
 mov rax, qword ptr [r12 + 3328]
 mov qword ptr [r12 + 3296], rax
 mov rax, qword ptr [r12 + 3336]
 mov qword ptr [r12 + 3304], rax
# marshal arg1 = producer-box slot [zr+3344] -> [zr+3312]
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
# IR_VAR_REF
 xchain0_n69_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3248], rax
 mov qword ptr [r12 + 3256], rdx
 jmp xchain0_n71_α
 xchain0_n69_β:
 jmp xchain0_n70_α
 xchain0_n70_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3184]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3184], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3192], rax
  .section .rodata
  .Lrkfn125: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn125]
 lea rsi, [r12 + 3184]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3168], rax
 mov qword ptr [r12 + 3176], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n72_α
 xchain0_n70_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n71_α:
 mov qword ptr [r12 + 3264], 6
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [r12 + 3272], rax
 jmp xchain0_n73_α
 xchain0_n71_β:
 jmp xchain0_n70_α
.Lx126_0:
 .quad 311
# IR_VAR_REF
 xchain0_n72_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
 jmp xchain0_n74_α
 xchain0_n72_β:
 jmp xchain0_n78_α
 xchain0_n73_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3248] -> [zr+3216]
 mov rax, qword ptr [r12 + 3248]
 mov qword ptr [r12 + 3216], rax
 mov rax, qword ptr [r12 + 3256]
 mov qword ptr [r12 + 3224], rax
# marshal arg1 = producer-box slot [zr+3264] -> [zr+3232]
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
# IR_LIT_STRING
 xchain0_n74_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n75_α:
 lea rax, [rip + xchain0_n70_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n75_β:
 jmp proc_area$2_ω
 xchain0_n76_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3136] -> [zr+3104]
 mov rax, qword ptr [r12 + 3136]
 mov qword ptr [r12 + 3104], rax
 mov rax, qword ptr [r12 + 3144]
 mov qword ptr [r12 + 3112], rax
# marshal arg1 = producer-box slot [zr+3152] -> [zr+3120]
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
# IR_VAR_REF
 xchain0_n77_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 jmp xchain0_n79_α
 xchain0_n77_β:
 jmp xchain0_n78_α
 xchain0_n78_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2992]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3000], rax
  .section .rodata
  .Lrkfn139: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn139]
 lea rsi, [r12 + 2992]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n80_α
 xchain0_n78_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n79_α:
 mov qword ptr [r12 + 3072], 6
 mov rax, qword ptr [rip + .Lx140_0]
 mov qword ptr [r12 + 3080], rax
 jmp xchain0_n81_α
 xchain0_n79_β:
 jmp xchain0_n78_α
.Lx140_0:
 .quad 96
# IR_VAR_REF
 xchain0_n80_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2944], rax
 mov qword ptr [r12 + 2952], rdx
 jmp xchain0_n82_α
 xchain0_n80_β:
 jmp xchain0_n86_α
 xchain0_n81_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3056] -> [zr+3024]
 mov rax, qword ptr [r12 + 3056]
 mov qword ptr [r12 + 3024], rax
 mov rax, qword ptr [r12 + 3064]
 mov qword ptr [r12 + 3032], rax
# marshal arg1 = producer-box slot [zr+3072] -> [zr+3040]
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
# IR_LIT_STRING
 xchain0_n82_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n83_α:
 lea rax, [rip + xchain0_n78_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n83_β:
 jmp proc_area$2_ω
 xchain0_n84_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2944] -> [zr+2912]
 mov rax, qword ptr [r12 + 2944]
 mov qword ptr [r12 + 2912], rax
 mov rax, qword ptr [r12 + 2952]
 mov qword ptr [r12 + 2920], rax
# marshal arg1 = producer-box slot [zr+2960] -> [zr+2928]
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
# IR_VAR_REF
 xchain0_n85_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], rdx
 jmp xchain0_n87_α
 xchain0_n85_β:
 jmp xchain0_n86_α
 xchain0_n86_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2800]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2800], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2808], rax
  .section .rodata
  .Lrkfn153: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn153]
 lea rsi, [r12 + 2800]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2784], rax
 mov qword ptr [r12 + 2792], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n88_α
 xchain0_n86_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n87_α:
 mov qword ptr [r12 + 2880], 6
 mov rax, qword ptr [rip + .Lx154_0]
 mov qword ptr [r12 + 2888], rax
 jmp xchain0_n89_α
 xchain0_n87_β:
 jmp xchain0_n86_α
.Lx154_0:
 .quad 373
# IR_VAR_REF
 xchain0_n88_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 jmp xchain0_n90_α
 xchain0_n88_β:
 jmp xchain0_n94_α
 xchain0_n89_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# IR_LIT_STRING
 xchain0_n90_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n91_α:
 lea rax, [rip + xchain0_n86_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n91_β:
 jmp proc_area$2_ω
 xchain0_n92_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2752] -> [zr+2720]
 mov rax, qword ptr [r12 + 2752]
 mov qword ptr [r12 + 2720], rax
 mov rax, qword ptr [r12 + 2760]
 mov qword ptr [r12 + 2728], rax
# marshal arg1 = producer-box slot [zr+2768] -> [zr+2736]
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
# IR_VAR_REF
 xchain0_n93_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 jmp xchain0_n95_α
 xchain0_n93_β:
 jmp xchain0_n94_α
 xchain0_n94_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2608]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2608], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2616], rax
  .section .rodata
  .Lrkfn167: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn167]
 lea rsi, [r12 + 2608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n96_α
 xchain0_n94_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n95_α:
 mov qword ptr [r12 + 2688], 6
 mov rax, qword ptr [rip + .Lx168_0]
 mov qword ptr [r12 + 2696], rax
 jmp xchain0_n97_α
 xchain0_n95_β:
 jmp xchain0_n94_α
.Lx168_0:
 .quad 764
# IR_VAR_REF
 xchain0_n96_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 jmp xchain0_n98_α
 xchain0_n96_β:
 jmp xchain0_n102_α
 xchain0_n97_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2672] -> [zr+2640]
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 2640], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 2648], rax
# marshal arg1 = producer-box slot [zr+2688] -> [zr+2656]
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
# IR_LIT_STRING
 xchain0_n98_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n99_α:
 lea rax, [rip + xchain0_n94_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n99_β:
 jmp proc_area$2_ω
 xchain0_n100_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2560] -> [zr+2528]
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 2528], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 2536], rax
# marshal arg1 = producer-box slot [zr+2576] -> [zr+2544]
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
# IR_VAR_REF
 xchain0_n101_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 jmp xchain0_n103_α
 xchain0_n101_β:
 jmp xchain0_n102_α
 xchain0_n102_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2416]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2416], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2424], rax
  .section .rodata
  .Lrkfn181: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn181]
 lea rsi, [r12 + 2416]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n104_α
 xchain0_n102_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n103_α:
 mov qword ptr [r12 + 2496], 6
 mov rax, qword ptr [rip + .Lx182_0]
 mov qword ptr [r12 + 2504], rax
 jmp xchain0_n105_α
 xchain0_n103_β:
 jmp xchain0_n102_α
.Lx182_0:
 .quad 86
# IR_VAR_REF
 xchain0_n104_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2368], rax
 mov qword ptr [r12 + 2376], rdx
 jmp xchain0_n106_α
 xchain0_n104_β:
 jmp xchain0_n110_α
 xchain0_n105_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2480] -> [zr+2448]
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 2448], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 2456], rax
# marshal arg1 = producer-box slot [zr+2496] -> [zr+2464]
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
# IR_LIT_STRING
 xchain0_n106_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n107_α:
 lea rax, [rip + xchain0_n102_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n107_β:
 jmp proc_area$2_ω
 xchain0_n108_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2368] -> [zr+2336]
 mov rax, qword ptr [r12 + 2368]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 2376]
 mov qword ptr [r12 + 2344], rax
# marshal arg1 = producer-box slot [zr+2384] -> [zr+2352]
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
# IR_VAR_REF
 xchain0_n109_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain0_n111_α
 xchain0_n109_β:
 jmp xchain0_n110_α
 xchain0_n110_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2224]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2232], rax
  .section .rodata
  .Lrkfn195: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn195]
 lea rsi, [r12 + 2224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n112_α
 xchain0_n110_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n111_α:
 mov qword ptr [r12 + 2304], 6
 mov rax, qword ptr [rip + .Lx196_0]
 mov qword ptr [r12 + 2312], rax
 jmp xchain0_n113_α
 xchain0_n111_β:
 jmp xchain0_n110_α
.Lx196_0:
 .quad 116
# IR_VAR_REF
 xchain0_n112_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain0_n114_α
 xchain0_n112_β:
 jmp xchain0_n118_α
 xchain0_n113_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2288] -> [zr+2256]
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 2256], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 2264], rax
# marshal arg1 = producer-box slot [zr+2304] -> [zr+2272]
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
# IR_LIT_STRING
 xchain0_n114_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n115_α:
 lea rax, [rip + xchain0_n110_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n115_β:
 jmp proc_area$2_ω
 xchain0_n116_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2176] -> [zr+2144]
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 2144], rax
 mov rax, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 2152], rax
# marshal arg1 = producer-box slot [zr+2192] -> [zr+2160]
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
# IR_VAR_REF
 xchain0_n117_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain0_n119_α
 xchain0_n117_β:
 jmp xchain0_n118_α
 xchain0_n118_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2032]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2040], rax
  .section .rodata
  .Lrkfn209: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn209]
 lea rsi, [r12 + 2032]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n120_α
 xchain0_n118_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n119_α:
 mov qword ptr [r12 + 2112], 6
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [r12 + 2120], rax
 jmp xchain0_n121_α
 xchain0_n119_β:
 jmp xchain0_n118_α
.Lx210_0:
 .quad 213
# IR_VAR_REF
 xchain0_n120_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xchain0_n122_α
 xchain0_n120_β:
 jmp xchain0_n126_α
 xchain0_n121_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2096] -> [zr+2064]
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2072], rax
# marshal arg1 = producer-box slot [zr+2112] -> [zr+2080]
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
# IR_LIT_STRING
 xchain0_n122_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n123_α:
 lea rax, [rip + xchain0_n118_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n123_β:
 jmp proc_area$2_ω
 xchain0_n124_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1960], rax
# marshal arg1 = producer-box slot [zr+2000] -> [zr+1968]
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
# IR_VAR_REF
 xchain0_n125_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain0_n127_α
 xchain0_n125_β:
 jmp xchain0_n126_α
 xchain0_n126_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1840]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1848], rax
  .section .rodata
  .Lrkfn223: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn223]
 lea rsi, [r12 + 1840]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n128_α
 xchain0_n126_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n127_α:
 mov qword ptr [r12 + 1920], 6
 mov rax, qword ptr [rip + .Lx224_0]
 mov qword ptr [r12 + 1928], rax
 jmp xchain0_n129_α
 xchain0_n127_β:
 jmp xchain0_n126_α
.Lx224_0:
 .quad 90
# IR_VAR_REF
 xchain0_n128_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain0_n130_α
 xchain0_n128_β:
 jmp xchain0_n134_α
 xchain0_n129_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1904] -> [zr+1872]
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1880], rax
# marshal arg1 = producer-box slot [zr+1920] -> [zr+1888]
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
# IR_LIT_STRING
 xchain0_n130_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n131_α:
 lea rax, [rip + xchain0_n126_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n131_β:
 jmp proc_area$2_ω
 xchain0_n132_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1760]
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1768], rax
# marshal arg1 = producer-box slot [zr+1808] -> [zr+1776]
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
# IR_VAR_REF
 xchain0_n133_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain0_n135_α
 xchain0_n133_β:
 jmp xchain0_n134_α
 xchain0_n134_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1648]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1656], rax
  .section .rodata
  .Lrkfn237: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn237]
 lea rsi, [r12 + 1648]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n136_α
 xchain0_n134_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n135_α:
 mov qword ptr [r12 + 1728], 6
 mov rax, qword ptr [rip + .Lx238_0]
 mov qword ptr [r12 + 1736], rax
 jmp xchain0_n137_α
 xchain0_n135_β:
 jmp xchain0_n134_α
.Lx238_0:
 .quad 200
# IR_VAR_REF
 xchain0_n136_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain0_n138_α
 xchain0_n136_β:
 jmp xchain0_n142_α
 xchain0_n137_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1712] -> [zr+1680]
 mov rax, qword ptr [r12 + 1712]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 1688], rax
# marshal arg1 = producer-box slot [zr+1728] -> [zr+1696]
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
# IR_LIT_STRING
 xchain0_n138_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n139_α:
 lea rax, [rip + xchain0_n134_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n139_β:
 jmp proc_area$2_ω
 xchain0_n140_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1568]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1576], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1584]
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
# IR_VAR_REF
 xchain0_n141_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain0_n143_α
 xchain0_n141_β:
 jmp xchain0_n142_α
 xchain0_n142_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1456]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1464], rax
  .section .rodata
  .Lrkfn251: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn251]
 lea rsi, [r12 + 1456]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n144_α
 xchain0_n142_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n143_α:
 mov qword ptr [r12 + 1536], 6
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [r12 + 1544], rax
 jmp xchain0_n145_α
 xchain0_n143_β:
 jmp xchain0_n142_α
.Lx252_0:
 .quad 296
# IR_VAR_REF
 xchain0_n144_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain0_n146_α
 xchain0_n144_β:
 jmp xchain0_n150_α
 xchain0_n145_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# IR_LIT_STRING
 xchain0_n146_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n147_α:
 lea rax, [rip + xchain0_n142_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n147_β:
 jmp proc_area$2_ω
 xchain0_n148_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1376]
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1384], rax
# marshal arg1 = producer-box slot [zr+1424] -> [zr+1392]
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
# IR_VAR_REF
 xchain0_n149_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain0_n151_α
 xchain0_n149_β:
 jmp xchain0_n150_α
 xchain0_n150_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1264]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1272], rax
  .section .rodata
  .Lrkfn265: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn265]
 lea rsi, [r12 + 1264]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n152_α
 xchain0_n150_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n151_α:
 mov qword ptr [r12 + 1344], 6
 mov rax, qword ptr [rip + .Lx266_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain0_n153_α
 xchain0_n151_β:
 jmp xchain0_n150_α
.Lx266_0:
 .quad 386
# IR_VAR_REF
 xchain0_n152_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain0_n154_α
 xchain0_n152_β:
 jmp xchain0_n158_α
 xchain0_n153_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1296]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1304], rax
# marshal arg1 = producer-box slot [zr+1344] -> [zr+1312]
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
# IR_LIT_STRING
 xchain0_n154_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n155_α:
 lea rax, [rip + xchain0_n150_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n155_β:
 jmp proc_area$2_ω
 xchain0_n156_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# IR_VAR_REF
 xchain0_n157_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain0_n159_α
 xchain0_n157_β:
 jmp xchain0_n158_α
 xchain0_n158_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1072]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn279: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn279]
 lea rsi, [r12 + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n160_α
 xchain0_n158_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n159_α:
 mov qword ptr [r12 + 1152], 6
 mov rax, qword ptr [rip + .Lx280_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain0_n161_α
 xchain0_n159_β:
 jmp xchain0_n158_α
.Lx280_0:
 .quad 190
# IR_VAR_REF
 xchain0_n160_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain0_n162_α
 xchain0_n160_β:
 jmp xchain0_n166_α
 xchain0_n161_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1104]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1112], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+1120]
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
# IR_LIT_STRING
 xchain0_n162_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n163_α:
 lea rax, [rip + xchain0_n158_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n163_β:
 jmp proc_area$2_ω
 xchain0_n164_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+992]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+1008]
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
# IR_VAR_REF
 xchain0_n165_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain0_n167_α
 xchain0_n165_β:
 jmp xchain0_n166_α
 xchain0_n166_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+880]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lrkfn293: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn293]
 lea rsi, [r12 + 880]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n168_α
 xchain0_n166_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n167_α:
 mov qword ptr [r12 + 960], 6
 mov rax, qword ptr [rip + .Lx294_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain0_n169_α
 xchain0_n167_β:
 jmp xchain0_n166_α
.Lx294_0:
 .quad 121
# IR_VAR_REF
 xchain0_n168_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain0_n170_α
 xchain0_n168_β:
 jmp xchain0_n174_α
 xchain0_n169_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# IR_LIT_STRING
 xchain0_n170_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n171_α:
 lea rax, [rip + xchain0_n166_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n171_β:
 jmp proc_area$2_ω
 xchain0_n172_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 808], rax
# marshal arg1 = producer-box slot [zr+848] -> [zr+816]
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
# IR_VAR_REF
 xchain0_n173_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain0_n175_α
 xchain0_n173_β:
 jmp xchain0_n174_α
 xchain0_n174_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+688]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn307: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn307]
 lea rsi, [r12 + 688]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n176_α
 xchain0_n174_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n175_α:
 mov qword ptr [r12 + 768], 6
 mov rax, qword ptr [rip + .Lx308_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain0_n177_α
 xchain0_n175_β:
 jmp xchain0_n174_α
.Lx308_0:
 .quad 37
# IR_VAR_REF
 xchain0_n176_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain0_n178_α
 xchain0_n176_β:
 jmp xchain0_n182_α
 xchain0_n177_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+720]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+736]
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
# IR_LIT_STRING
 xchain0_n178_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n179_α:
 lea rax, [rip + xchain0_n174_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n179_β:
 jmp proc_area$2_ω
 xchain0_n180_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 616], rax
# marshal arg1 = producer-box slot [zr+656] -> [zr+624]
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
# IR_VAR_REF
 xchain0_n181_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n183_α
 xchain0_n181_β:
 jmp xchain0_n182_α
 xchain0_n182_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+496]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn321: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn321]
 lea rsi, [r12 + 496]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n184_α
 xchain0_n182_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n183_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx322_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n185_α
 xchain0_n183_β:
 jmp xchain0_n182_α
.Lx322_0:
 .quad 628
# IR_VAR_REF
 xchain0_n184_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain0_n186_α
 xchain0_n184_β:
 jmp xchain0_n190_α
 xchain0_n185_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+528]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+544]
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
# IR_LIT_STRING
 xchain0_n186_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n187_α:
 lea rax, [rip + xchain0_n182_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n187_β:
 jmp proc_area$2_ω
 xchain0_n188_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# IR_VAR_REF
 xchain0_n189_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n191_α
 xchain0_n189_β:
 jmp xchain0_n190_α
 xchain0_n190_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+304]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn335: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn335]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je proc_area$2_ω
 jmp xchain0_n192_α
 xchain0_n190_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n191_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx336_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain0_n193_α
 xchain0_n191_β:
 jmp xchain0_n190_α
.Lx336_0:
 .quad 350
# IR_VAR_REF
 xchain0_n192_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n194_α
 xchain0_n192_β:
 jmp xchain0_n198_α
 xchain0_n193_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+352]
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
# IR_LIT_STRING
 xchain0_n194_α:
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n195_α:
 lea rax, [rip + xchain0_n190_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n195_β:
 jmp proc_area$2_ω
 xchain0_n196_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+240]
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
# IR_VAR_REF
 xchain0_n197_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain0_n199_α
 xchain0_n197_β:
 jmp xchain0_n198_α
 xchain0_n198_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+112]
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
 je proc_area$2_ω
 jmp proc_area$2_ω
 xchain0_n198_β:
 jmp proc_area$2_ω
# IR_LIT_INTEGER
 xchain0_n199_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx350_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain0_n200_α
 xchain0_n199_β:
 jmp xchain0_n198_α
.Lx350_0:
 .quad 1080
 xchain0_n200_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n201_α:
 lea rax, [rip + xchain0_n198_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_area$2_γ
 xchain0_n201_β:
 jmp proc_area$2_ω
proc_area$2_β:
jmp xchain0_n12_α
proc_area$2_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 4896]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_area$2_ω:
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
  .globl proc_query$1_α
proc_query$1_α:
#=======================================================================================================================
    .global proc_query$1_α
    .global proc_query$1_β
    .global proc_query$1_γ
    .global proc_query$1_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_query$1_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1216], rax
 pop rsi
proc_query$1_α_body:
 xchain355_n0_α:
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
 je proc_query$1_ω
 jmp xchain355_n1_α
 xchain355_n0_β:
 jmp proc_query$1_ω
# IR_VAR_REF
 xchain355_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain355_n2_α
 xchain355_n1_β:
 jmp xchain355_n16_α
# IR_LIT_STRING
 xchain355_n2_α:
 mov qword ptr [r12 + 1200], 1
 mov rax, qword ptr [rip + .Lx360_0]
 mov qword ptr [r12 + 1208], rax
 jmp xchain355_n3_α
 xchain355_n2_β:
 jmp proc_query$1_ω
.Lx360_0:
 .quad .Lx360_0_s
.Lx360_0_s:
 .string "."
# IR_VAR_REF
 xchain355_n3_α:
 lea rdi, [r12 + 1312]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain355_n4_α
 xchain355_n3_β:
 jmp proc_query$1_ω
# IR_LIT_STRING
 xchain355_n4_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx363_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain355_n5_α
 xchain355_n4_β:
 jmp proc_query$1_ω
.Lx363_0:
 .quad .Lx363_0_s
.Lx363_0_s:
 .string "."
# IR_VAR_REF
 xchain355_n5_α:
 lea rdi, [r12 + 1280]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain355_n6_α
 xchain355_n5_β:
 jmp proc_query$1_ω
# IR_LIT_STRING
 xchain355_n6_α:
 mov qword ptr [r12 + 1008], 1
 mov rax, qword ptr [rip + .Lx366_0]
 mov qword ptr [r12 + 1016], rax
 jmp xchain355_n7_α
 xchain355_n6_β:
 jmp proc_query$1_ω
.Lx366_0:
 .quad .Lx366_0_s
.Lx366_0_s:
 .string "."
# IR_VAR_REF
 xchain355_n7_α:
 lea rdi, [r12 + 1296]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain355_n8_α
 xchain355_n7_β:
 jmp proc_query$1_ω
# IR_LIT_STRING
 xchain355_n8_α:
 mov qword ptr [r12 + 912], 1
 mov rax, qword ptr [rip + .Lx369_0]
 mov qword ptr [r12 + 920], rax
 jmp xchain355_n9_α
 xchain355_n8_β:
 jmp proc_query$1_ω
.Lx369_0:
 .quad .Lx369_0_s
.Lx369_0_s:
 .string "."
# IR_VAR_REF
 xchain355_n9_α:
 lea rdi, [r12 + 1264]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain355_n10_α
 xchain355_n9_β:
 jmp proc_query$1_ω
# IR_LIT_STRING
 xchain355_n10_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx372_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain355_n11_α
 xchain355_n10_β:
 jmp proc_query$1_ω
.Lx372_0:
 .quad .Lx372_0_s
.Lx372_0_s:
 .string "[]"
 xchain355_n11_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+864]
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 872], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+880]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 888], rax
# marshal arg2 = producer-box slot [zr+816] -> [zr+896]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 904], rax
  .section .rodata
  .Lrkfn374: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn374]
 lea rsi, [r12 + 864]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je proc_query$1_ω
 jmp xchain355_n12_α
 xchain355_n11_β:
 jmp proc_query$1_ω
 xchain355_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+960]
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 968], rax
# marshal arg1 = producer-box slot [zr+928] -> [zr+976]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 984], rax
# marshal arg2 = producer-box slot [zr+848] -> [zr+992]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 1000], rax
  .section .rodata
  .Lrkfn376: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn376]
 lea rsi, [r12 + 960]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je proc_query$1_ω
 jmp xchain355_n13_α
 xchain355_n12_β:
 jmp proc_query$1_ω
 xchain355_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1056]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1064], rax
# marshal arg1 = producer-box slot [zr+1024] -> [zr+1072]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1080], rax
# marshal arg2 = producer-box slot [zr+944] -> [zr+1088]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn378: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn378]
 lea rsi, [r12 + 1056]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 cmp eax, 99
 je proc_query$1_ω
 jmp xchain355_n14_α
 xchain355_n13_β:
 jmp proc_query$1_ω
 xchain355_n14_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1200] -> [zr+1152]
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1160], rax
# marshal arg1 = producer-box slot [zr+1120] -> [zr+1168]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1176], rax
# marshal arg2 = producer-box slot [zr+1040] -> [zr+1184]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lrkfn380: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn380]
 lea rsi, [r12 + 1152]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 cmp eax, 99
 je xchain355_n16_α
 jmp xchain355_n15_α
 xchain355_n14_β:
 jmp xchain355_n16_α
 xchain355_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+768]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 776], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+784]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 792], rax
  .section .rodata
  .Lrkfn382: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn382]
 lea rsi, [r12 + 768]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain355_n16_α
 jmp xchain355_n17_α
 xchain355_n15_β:
 jmp xchain355_n16_α
 xchain355_n16_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+96]
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
 je proc_query$1_ω
 jmp proc_query$1_ω
 xchain355_n16_β:
 jmp proc_query$1_ω
# IR_VAR_REF
 xchain355_n17_α:
 lea rdi, [r12 + 1312]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain355_n18_α
 xchain355_n17_β:
 jmp xchain355_n16_α
# IR_VAR_REF
 xchain355_n18_α:
 lea rdi, [r12 + 1280]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain355_n19_α
 xchain355_n18_β:
 jmp xchain355_n16_α
 xchain355_n19_α:
  .section .rodata
  .Lcall222_pname: .string "density/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 736]
 mov rdx, qword ptr [r12 + 744]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall222_pname]
 mov esi, 2
 lea rdx, [r12 + 704]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je xchain355_n16_α
 jmp xchain355_n20_α
xchain355_n19_β:
 lea rdi, [r12 + 704]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je xchain355_n16_α
 jmp xchain355_n20_α
# IR_VAR_REF
 xchain355_n20_α:
 lea rdi, [r12 + 1296]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain355_n21_α
 xchain355_n20_β:
 jmp xchain355_n16_α
# IR_VAR_REF
 xchain355_n21_α:
 lea rdi, [r12 + 1264]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain355_n22_α
 xchain355_n21_β:
 jmp xchain355_n16_α
 xchain355_n22_α:
  .section .rodata
  .Lcall225_pname: .string "density/2"
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
   lea rdi, [rip + .Lcall225_pname]
 mov esi, 2
 lea rdx, [r12 + 608]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain355_n19_β
 jmp xchain355_n23_α
xchain355_n22_β:
 lea rdi, [r12 + 608]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain355_n19_β
 jmp xchain355_n23_α
# IR_VAR
 xchain355_n23_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 536], rax
 jmp xchain355_n24_α
 xchain355_n23_β:
 jmp xchain355_n16_α
# IR_VAR
 xchain355_n24_α:
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 552], rax
 jmp xchain355_n25_α
 xchain355_n24_β:
 jmp xchain355_n16_α
 xchain355_n25_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+496]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn400: .string "$cmp_gt"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn400]
 lea rsi, [r12 + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain355_n22_β
 jmp xchain355_n26_α
 xchain355_n25_β:
 jmp xchain355_n22_β
# IR_VAR_REF
 xchain355_n26_α:
 lea rdi, [r12 + 1232]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain355_n27_α
 xchain355_n26_β:
 jmp xchain355_n16_α
# IR_LIT_INTEGER
 xchain355_n27_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx403_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain355_n28_α
 xchain355_n27_β:
 jmp proc_query$1_ω
.Lx403_0:
 .quad 20
# IR_VAR
 xchain355_n28_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 472], rax
 jmp xchain355_n29_α
 xchain355_n28_β:
 jmp proc_query$1_ω
 xchain355_n29_α:
# BOX IR_CALL $ax_mul(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn407: .string "$ax_mul"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn407]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain355_n16_α
 jmp xchain355_n30_α
 xchain355_n29_β:
 jmp xchain355_n16_α
 xchain355_n30_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+368]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn409: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn409]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain355_n22_β
 jmp xchain355_n31_α
 xchain355_n30_β:
 jmp xchain355_n22_β
# IR_VAR_REF
 xchain355_n31_α:
 lea rdi, [r12 + 1248]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain355_n32_α
 xchain355_n31_β:
 jmp xchain355_n16_α
# IR_LIT_INTEGER
 xchain355_n32_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx412_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain355_n33_α
 xchain355_n32_β:
 jmp proc_query$1_ω
.Lx412_0:
 .quad 21
# IR_VAR
 xchain355_n33_α:
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 328], rax
 jmp xchain355_n34_α
 xchain355_n33_β:
 jmp proc_query$1_ω
 xchain355_n34_α:
# BOX IR_CALL $ax_mul(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn416: .string "$ax_mul"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn416]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain355_n16_α
 jmp xchain355_n35_α
 xchain355_n34_β:
 jmp xchain355_n16_α
 xchain355_n35_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn418: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn418]
 lea rsi, [r12 + 208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain355_n22_β
 jmp xchain355_n36_α
 xchain355_n35_β:
 jmp xchain355_n22_β
# IR_VAR
 xchain355_n36_α:
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 168], rax
 jmp xchain355_n37_α
 xchain355_n36_β:
 jmp xchain355_n16_α
# IR_VAR
 xchain355_n37_α:
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 184], rax
 jmp xchain355_n38_α
 xchain355_n37_β:
 jmp xchain355_n16_α
 xchain355_n38_α:
# BOX IR_CALL $cmp_lt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn424: .string "$cmp_lt"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn424]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain355_n22_β
 jmp xchain355_n39_α
 xchain355_n38_β:
 jmp xchain355_n22_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain355_n39_α:
 lea rax, [rip + xchain355_n22_β]
 mov qword ptr [r12 + 48], rax
 jmp proc_query$1_γ
 xchain355_n39_β:
 jmp proc_query$1_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain355_n40_α:
 jmp qword ptr [r12 + 48]
 xchain355_n40_β:
 jmp proc_query$1_ω
proc_query$1_β:
jmp xchain355_n40_α
proc_query$1_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1216]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_query$1_ω:
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
  .globl proc_pop$2_α
proc_pop$2_α:
#=======================================================================================================================
    .global proc_pop$2_α
    .global proc_pop$2_β
    .global proc_pop$2_γ
    .global proc_pop$2_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_pop$2_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 4896], rax
 pop rsi
proc_pop$2_α_body:
 xchain429_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn431: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn431]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n1_α
 xchain429_n0_β:
 jmp proc_pop$2_ω
# IR_VAR_REF
 xchain429_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4864], rax
 mov qword ptr [r12 + 4872], rdx
 jmp xchain429_n2_α
 xchain429_n1_β:
 jmp xchain429_n5_α
# IR_LIT_STRING
 xchain429_n2_α:
 mov qword ptr [r12 + 4880], 1
 mov rax, qword ptr [rip + .Lx434_0]
 mov qword ptr [r12 + 4888], rax
 jmp xchain429_n3_α
 xchain429_n2_β:
 jmp xchain429_n5_α
.Lx434_0:
 .quad .Lx434_0_s
.Lx434_0_s:
 .string "china"
 xchain429_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4864] -> [zr+4832]
 mov rax, qword ptr [r12 + 4864]
 mov qword ptr [r12 + 4832], rax
 mov rax, qword ptr [r12 + 4872]
 mov qword ptr [r12 + 4840], rax
# marshal arg1 = producer-box slot [zr+4880] -> [zr+4848]
 mov rax, qword ptr [r12 + 4880]
 mov qword ptr [r12 + 4848], rax
 mov rax, qword ptr [r12 + 4888]
 mov qword ptr [r12 + 4856], rax
  .section .rodata
  .Lrkfn436: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn436]
 lea rsi, [r12 + 4832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4816], rax
 mov qword ptr [r12 + 4824], rdx
 cmp eax, 99
 je xchain429_n5_α
 jmp xchain429_n4_α
 xchain429_n3_β:
 jmp xchain429_n5_α
# IR_VAR_REF
 xchain429_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4784], rax
 mov qword ptr [r12 + 4792], rdx
 jmp xchain429_n6_α
 xchain429_n4_β:
 jmp xchain429_n5_α
 xchain429_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4720]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 4720], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 4728], rax
  .section .rodata
  .Lrkfn440: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn440]
 lea rsi, [r12 + 4720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4704], rax
 mov qword ptr [r12 + 4712], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n7_α
 xchain429_n5_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n6_α:
 mov qword ptr [r12 + 4800], 6
 mov rax, qword ptr [rip + .Lx441_0]
 mov qword ptr [r12 + 4808], rax
 jmp xchain429_n8_α
 xchain429_n6_β:
 jmp xchain429_n5_α
.Lx441_0:
 .quad 8250
# IR_VAR_REF
 xchain429_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4672], rax
 mov qword ptr [r12 + 4680], rdx
 jmp xchain429_n9_α
 xchain429_n7_β:
 jmp xchain429_n14_α
 xchain429_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4784] -> [zr+4752]
 mov rax, qword ptr [r12 + 4784]
 mov qword ptr [r12 + 4752], rax
 mov rax, qword ptr [r12 + 4792]
 mov qword ptr [r12 + 4760], rax
# marshal arg1 = producer-box slot [zr+4800] -> [zr+4768]
 mov rax, qword ptr [r12 + 4800]
 mov qword ptr [r12 + 4768], rax
 mov rax, qword ptr [r12 + 4808]
 mov qword ptr [r12 + 4776], rax
  .section .rodata
  .Lrkfn445: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn445]
 lea rsi, [r12 + 4752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4736], rax
 mov qword ptr [r12 + 4744], rdx
 cmp eax, 99
 je xchain429_n5_α
 jmp xchain429_n10_α
 xchain429_n8_β:
 jmp xchain429_n5_α
# IR_LIT_STRING
 xchain429_n9_α:
 mov qword ptr [r12 + 4688], 1
 mov rax, qword ptr [rip + .Lx446_0]
 mov qword ptr [r12 + 4696], rax
 jmp xchain429_n11_α
 xchain429_n9_β:
 jmp xchain429_n14_α
.Lx446_0:
 .quad .Lx446_0_s
.Lx446_0_s:
 .string "india"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n10_α:
 lea rax, [rip + xchain429_n5_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n10_β:
 jmp proc_pop$2_ω
 xchain429_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4672] -> [zr+4640]
 mov rax, qword ptr [r12 + 4672]
 mov qword ptr [r12 + 4640], rax
 mov rax, qword ptr [r12 + 4680]
 mov qword ptr [r12 + 4648], rax
# marshal arg1 = producer-box slot [zr+4688] -> [zr+4656]
 mov rax, qword ptr [r12 + 4688]
 mov qword ptr [r12 + 4656], rax
 mov rax, qword ptr [r12 + 4696]
 mov qword ptr [r12 + 4664], rax
  .section .rodata
  .Lrkfn450: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn450]
 lea rsi, [r12 + 4640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4624], rax
 mov qword ptr [r12 + 4632], rdx
 cmp eax, 99
 je xchain429_n14_α
 jmp xchain429_n13_α
 xchain429_n11_β:
 jmp xchain429_n14_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain429_n12_α:
 jmp qword ptr [r12 + 64]
 xchain429_n12_β:
 jmp proc_pop$2_ω
# IR_VAR_REF
 xchain429_n13_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4592], rax
 mov qword ptr [r12 + 4600], rdx
 jmp xchain429_n15_α
 xchain429_n13_β:
 jmp xchain429_n14_α
 xchain429_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4528]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 4528], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 4536], rax
  .section .rodata
  .Lrkfn456: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn456]
 lea rsi, [r12 + 4528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4512], rax
 mov qword ptr [r12 + 4520], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n16_α
 xchain429_n14_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n15_α:
 mov qword ptr [r12 + 4608], 6
 mov rax, qword ptr [rip + .Lx457_0]
 mov qword ptr [r12 + 4616], rax
 jmp xchain429_n17_α
 xchain429_n15_β:
 jmp xchain429_n14_α
.Lx457_0:
 .quad 5863
# IR_VAR_REF
 xchain429_n16_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4480], rax
 mov qword ptr [r12 + 4488], rdx
 jmp xchain429_n18_α
 xchain429_n16_β:
 jmp xchain429_n22_α
 xchain429_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4592] -> [zr+4560]
 mov rax, qword ptr [r12 + 4592]
 mov qword ptr [r12 + 4560], rax
 mov rax, qword ptr [r12 + 4600]
 mov qword ptr [r12 + 4568], rax
# marshal arg1 = producer-box slot [zr+4608] -> [zr+4576]
 mov rax, qword ptr [r12 + 4608]
 mov qword ptr [r12 + 4576], rax
 mov rax, qword ptr [r12 + 4616]
 mov qword ptr [r12 + 4584], rax
  .section .rodata
  .Lrkfn461: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn461]
 lea rsi, [r12 + 4560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4544], rax
 mov qword ptr [r12 + 4552], rdx
 cmp eax, 99
 je xchain429_n14_α
 jmp xchain429_n19_α
 xchain429_n17_β:
 jmp xchain429_n14_α
# IR_LIT_STRING
 xchain429_n18_α:
 mov qword ptr [r12 + 4496], 1
 mov rax, qword ptr [rip + .Lx462_0]
 mov qword ptr [r12 + 4504], rax
 jmp xchain429_n20_α
 xchain429_n18_β:
 jmp xchain429_n22_α
.Lx462_0:
 .quad .Lx462_0_s
.Lx462_0_s:
 .string "ussr"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n19_α:
 lea rax, [rip + xchain429_n14_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n19_β:
 jmp proc_pop$2_ω
 xchain429_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4480] -> [zr+4448]
 mov rax, qword ptr [r12 + 4480]
 mov qword ptr [r12 + 4448], rax
 mov rax, qword ptr [r12 + 4488]
 mov qword ptr [r12 + 4456], rax
# marshal arg1 = producer-box slot [zr+4496] -> [zr+4464]
 mov rax, qword ptr [r12 + 4496]
 mov qword ptr [r12 + 4464], rax
 mov rax, qword ptr [r12 + 4504]
 mov qword ptr [r12 + 4472], rax
  .section .rodata
  .Lrkfn466: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn466]
 lea rsi, [r12 + 4448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4432], rax
 mov qword ptr [r12 + 4440], rdx
 cmp eax, 99
 je xchain429_n22_α
 jmp xchain429_n21_α
 xchain429_n20_β:
 jmp xchain429_n22_α
# IR_VAR_REF
 xchain429_n21_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4400], rax
 mov qword ptr [r12 + 4408], rdx
 jmp xchain429_n23_α
 xchain429_n21_β:
 jmp xchain429_n22_α
 xchain429_n22_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4336]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 4336], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 4344], rax
  .section .rodata
  .Lrkfn470: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn470]
 lea rsi, [r12 + 4336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n24_α
 xchain429_n22_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n23_α:
 mov qword ptr [r12 + 4416], 6
 mov rax, qword ptr [rip + .Lx471_0]
 mov qword ptr [r12 + 4424], rax
 jmp xchain429_n25_α
 xchain429_n23_β:
 jmp xchain429_n22_α
.Lx471_0:
 .quad 2521
# IR_VAR_REF
 xchain429_n24_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4288], rax
 mov qword ptr [r12 + 4296], rdx
 jmp xchain429_n26_α
 xchain429_n24_β:
 jmp xchain429_n30_α
 xchain429_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4400] -> [zr+4368]
 mov rax, qword ptr [r12 + 4400]
 mov qword ptr [r12 + 4368], rax
 mov rax, qword ptr [r12 + 4408]
 mov qword ptr [r12 + 4376], rax
# marshal arg1 = producer-box slot [zr+4416] -> [zr+4384]
 mov rax, qword ptr [r12 + 4416]
 mov qword ptr [r12 + 4384], rax
 mov rax, qword ptr [r12 + 4424]
 mov qword ptr [r12 + 4392], rax
  .section .rodata
  .Lrkfn475: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn475]
 lea rsi, [r12 + 4368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4352], rax
 mov qword ptr [r12 + 4360], rdx
 cmp eax, 99
 je xchain429_n22_α
 jmp xchain429_n27_α
 xchain429_n25_β:
 jmp xchain429_n22_α
# IR_LIT_STRING
 xchain429_n26_α:
 mov qword ptr [r12 + 4304], 1
 mov rax, qword ptr [rip + .Lx476_0]
 mov qword ptr [r12 + 4312], rax
 jmp xchain429_n28_α
 xchain429_n26_β:
 jmp xchain429_n30_α
.Lx476_0:
 .quad .Lx476_0_s
.Lx476_0_s:
 .string "usa"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n27_α:
 lea rax, [rip + xchain429_n22_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n27_β:
 jmp proc_pop$2_ω
 xchain429_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4288] -> [zr+4256]
 mov rax, qword ptr [r12 + 4288]
 mov qword ptr [r12 + 4256], rax
 mov rax, qword ptr [r12 + 4296]
 mov qword ptr [r12 + 4264], rax
# marshal arg1 = producer-box slot [zr+4304] -> [zr+4272]
 mov rax, qword ptr [r12 + 4304]
 mov qword ptr [r12 + 4272], rax
 mov rax, qword ptr [r12 + 4312]
 mov qword ptr [r12 + 4280], rax
  .section .rodata
  .Lrkfn480: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn480]
 lea rsi, [r12 + 4256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4240], rax
 mov qword ptr [r12 + 4248], rdx
 cmp eax, 99
 je xchain429_n30_α
 jmp xchain429_n29_α
 xchain429_n28_β:
 jmp xchain429_n30_α
# IR_VAR_REF
 xchain429_n29_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4208], rax
 mov qword ptr [r12 + 4216], rdx
 jmp xchain429_n31_α
 xchain429_n29_β:
 jmp xchain429_n30_α
 xchain429_n30_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4144]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 4144], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 4152], rax
  .section .rodata
  .Lrkfn484: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn484]
 lea rsi, [r12 + 4144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4128], rax
 mov qword ptr [r12 + 4136], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n32_α
 xchain429_n30_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n31_α:
 mov qword ptr [r12 + 4224], 6
 mov rax, qword ptr [rip + .Lx485_0]
 mov qword ptr [r12 + 4232], rax
 jmp xchain429_n33_α
 xchain429_n31_β:
 jmp xchain429_n30_α
.Lx485_0:
 .quad 2119
# IR_VAR_REF
 xchain429_n32_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4096], rax
 mov qword ptr [r12 + 4104], rdx
 jmp xchain429_n34_α
 xchain429_n32_β:
 jmp xchain429_n38_α
 xchain429_n33_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4208] -> [zr+4176]
 mov rax, qword ptr [r12 + 4208]
 mov qword ptr [r12 + 4176], rax
 mov rax, qword ptr [r12 + 4216]
 mov qword ptr [r12 + 4184], rax
# marshal arg1 = producer-box slot [zr+4224] -> [zr+4192]
 mov rax, qword ptr [r12 + 4224]
 mov qword ptr [r12 + 4192], rax
 mov rax, qword ptr [r12 + 4232]
 mov qword ptr [r12 + 4200], rax
  .section .rodata
  .Lrkfn489: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn489]
 lea rsi, [r12 + 4176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4160], rax
 mov qword ptr [r12 + 4168], rdx
 cmp eax, 99
 je xchain429_n30_α
 jmp xchain429_n35_α
 xchain429_n33_β:
 jmp xchain429_n30_α
# IR_LIT_STRING
 xchain429_n34_α:
 mov qword ptr [r12 + 4112], 1
 mov rax, qword ptr [rip + .Lx490_0]
 mov qword ptr [r12 + 4120], rax
 jmp xchain429_n36_α
 xchain429_n34_β:
 jmp xchain429_n38_α
.Lx490_0:
 .quad .Lx490_0_s
.Lx490_0_s:
 .string "indonesia"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n35_α:
 lea rax, [rip + xchain429_n30_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n35_β:
 jmp proc_pop$2_ω
 xchain429_n36_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4096] -> [zr+4064]
 mov rax, qword ptr [r12 + 4096]
 mov qword ptr [r12 + 4064], rax
 mov rax, qword ptr [r12 + 4104]
 mov qword ptr [r12 + 4072], rax
# marshal arg1 = producer-box slot [zr+4112] -> [zr+4080]
 mov rax, qword ptr [r12 + 4112]
 mov qword ptr [r12 + 4080], rax
 mov rax, qword ptr [r12 + 4120]
 mov qword ptr [r12 + 4088], rax
  .section .rodata
  .Lrkfn494: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn494]
 lea rsi, [r12 + 4064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4048], rax
 mov qword ptr [r12 + 4056], rdx
 cmp eax, 99
 je xchain429_n38_α
 jmp xchain429_n37_α
 xchain429_n36_β:
 jmp xchain429_n38_α
# IR_VAR_REF
 xchain429_n37_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4016], rax
 mov qword ptr [r12 + 4024], rdx
 jmp xchain429_n39_α
 xchain429_n37_β:
 jmp xchain429_n38_α
 xchain429_n38_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3952]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3952], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3960], rax
  .section .rodata
  .Lrkfn498: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn498]
 lea rsi, [r12 + 3952]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3936], rax
 mov qword ptr [r12 + 3944], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n40_α
 xchain429_n38_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n39_α:
 mov qword ptr [r12 + 4032], 6
 mov rax, qword ptr [rip + .Lx499_0]
 mov qword ptr [r12 + 4040], rax
 jmp xchain429_n41_α
 xchain429_n39_β:
 jmp xchain429_n38_α
.Lx499_0:
 .quad 1276
# IR_VAR_REF
 xchain429_n40_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3904], rax
 mov qword ptr [r12 + 3912], rdx
 jmp xchain429_n42_α
 xchain429_n40_β:
 jmp xchain429_n46_α
 xchain429_n41_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4016] -> [zr+3984]
 mov rax, qword ptr [r12 + 4016]
 mov qword ptr [r12 + 3984], rax
 mov rax, qword ptr [r12 + 4024]
 mov qword ptr [r12 + 3992], rax
# marshal arg1 = producer-box slot [zr+4032] -> [zr+4000]
 mov rax, qword ptr [r12 + 4032]
 mov qword ptr [r12 + 4000], rax
 mov rax, qword ptr [r12 + 4040]
 mov qword ptr [r12 + 4008], rax
  .section .rodata
  .Lrkfn503: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn503]
 lea rsi, [r12 + 3984]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3968], rax
 mov qword ptr [r12 + 3976], rdx
 cmp eax, 99
 je xchain429_n38_α
 jmp xchain429_n43_α
 xchain429_n41_β:
 jmp xchain429_n38_α
# IR_LIT_STRING
 xchain429_n42_α:
 mov qword ptr [r12 + 3920], 1
 mov rax, qword ptr [rip + .Lx504_0]
 mov qword ptr [r12 + 3928], rax
 jmp xchain429_n44_α
 xchain429_n42_β:
 jmp xchain429_n46_α
.Lx504_0:
 .quad .Lx504_0_s
.Lx504_0_s:
 .string "japan"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n43_α:
 lea rax, [rip + xchain429_n38_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n43_β:
 jmp proc_pop$2_ω
 xchain429_n44_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3904] -> [zr+3872]
 mov rax, qword ptr [r12 + 3904]
 mov qword ptr [r12 + 3872], rax
 mov rax, qword ptr [r12 + 3912]
 mov qword ptr [r12 + 3880], rax
# marshal arg1 = producer-box slot [zr+3920] -> [zr+3888]
 mov rax, qword ptr [r12 + 3920]
 mov qword ptr [r12 + 3888], rax
 mov rax, qword ptr [r12 + 3928]
 mov qword ptr [r12 + 3896], rax
  .section .rodata
  .Lrkfn508: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn508]
 lea rsi, [r12 + 3872]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3856], rax
 mov qword ptr [r12 + 3864], rdx
 cmp eax, 99
 je xchain429_n46_α
 jmp xchain429_n45_α
 xchain429_n44_β:
 jmp xchain429_n46_α
# IR_VAR_REF
 xchain429_n45_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3824], rax
 mov qword ptr [r12 + 3832], rdx
 jmp xchain429_n47_α
 xchain429_n45_β:
 jmp xchain429_n46_α
 xchain429_n46_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3760]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3760], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3768], rax
  .section .rodata
  .Lrkfn512: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn512]
 lea rsi, [r12 + 3760]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3744], rax
 mov qword ptr [r12 + 3752], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n48_α
 xchain429_n46_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n47_α:
 mov qword ptr [r12 + 3840], 6
 mov rax, qword ptr [rip + .Lx513_0]
 mov qword ptr [r12 + 3848], rax
 jmp xchain429_n49_α
 xchain429_n47_β:
 jmp xchain429_n46_α
.Lx513_0:
 .quad 1097
# IR_VAR_REF
 xchain429_n48_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3712], rax
 mov qword ptr [r12 + 3720], rdx
 jmp xchain429_n50_α
 xchain429_n48_β:
 jmp xchain429_n54_α
 xchain429_n49_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3824] -> [zr+3792]
 mov rax, qword ptr [r12 + 3824]
 mov qword ptr [r12 + 3792], rax
 mov rax, qword ptr [r12 + 3832]
 mov qword ptr [r12 + 3800], rax
# marshal arg1 = producer-box slot [zr+3840] -> [zr+3808]
 mov rax, qword ptr [r12 + 3840]
 mov qword ptr [r12 + 3808], rax
 mov rax, qword ptr [r12 + 3848]
 mov qword ptr [r12 + 3816], rax
  .section .rodata
  .Lrkfn517: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn517]
 lea rsi, [r12 + 3792]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3776], rax
 mov qword ptr [r12 + 3784], rdx
 cmp eax, 99
 je xchain429_n46_α
 jmp xchain429_n51_α
 xchain429_n49_β:
 jmp xchain429_n46_α
# IR_LIT_STRING
 xchain429_n50_α:
 mov qword ptr [r12 + 3728], 1
 mov rax, qword ptr [rip + .Lx518_0]
 mov qword ptr [r12 + 3736], rax
 jmp xchain429_n52_α
 xchain429_n50_β:
 jmp xchain429_n54_α
.Lx518_0:
 .quad .Lx518_0_s
.Lx518_0_s:
 .string "brazil"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n51_α:
 lea rax, [rip + xchain429_n46_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n51_β:
 jmp proc_pop$2_ω
 xchain429_n52_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3712] -> [zr+3680]
 mov rax, qword ptr [r12 + 3712]
 mov qword ptr [r12 + 3680], rax
 mov rax, qword ptr [r12 + 3720]
 mov qword ptr [r12 + 3688], rax
# marshal arg1 = producer-box slot [zr+3728] -> [zr+3696]
 mov rax, qword ptr [r12 + 3728]
 mov qword ptr [r12 + 3696], rax
 mov rax, qword ptr [r12 + 3736]
 mov qword ptr [r12 + 3704], rax
  .section .rodata
  .Lrkfn522: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn522]
 lea rsi, [r12 + 3680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3664], rax
 mov qword ptr [r12 + 3672], rdx
 cmp eax, 99
 je xchain429_n54_α
 jmp xchain429_n53_α
 xchain429_n52_β:
 jmp xchain429_n54_α
# IR_VAR_REF
 xchain429_n53_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3632], rax
 mov qword ptr [r12 + 3640], rdx
 jmp xchain429_n55_α
 xchain429_n53_β:
 jmp xchain429_n54_α
 xchain429_n54_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3568]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3568], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3576], rax
  .section .rodata
  .Lrkfn526: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn526]
 lea rsi, [r12 + 3568]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3552], rax
 mov qword ptr [r12 + 3560], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n56_α
 xchain429_n54_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n55_α:
 mov qword ptr [r12 + 3648], 6
 mov rax, qword ptr [rip + .Lx527_0]
 mov qword ptr [r12 + 3656], rax
 jmp xchain429_n57_α
 xchain429_n55_β:
 jmp xchain429_n54_α
.Lx527_0:
 .quad 1042
# IR_VAR_REF
 xchain429_n56_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3520], rax
 mov qword ptr [r12 + 3528], rdx
 jmp xchain429_n58_α
 xchain429_n56_β:
 jmp xchain429_n62_α
 xchain429_n57_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3632] -> [zr+3600]
 mov rax, qword ptr [r12 + 3632]
 mov qword ptr [r12 + 3600], rax
 mov rax, qword ptr [r12 + 3640]
 mov qword ptr [r12 + 3608], rax
# marshal arg1 = producer-box slot [zr+3648] -> [zr+3616]
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 3616], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 3624], rax
  .section .rodata
  .Lrkfn531: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn531]
 lea rsi, [r12 + 3600]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3584], rax
 mov qword ptr [r12 + 3592], rdx
 cmp eax, 99
 je xchain429_n54_α
 jmp xchain429_n59_α
 xchain429_n57_β:
 jmp xchain429_n54_α
# IR_LIT_STRING
 xchain429_n58_α:
 mov qword ptr [r12 + 3536], 1
 mov rax, qword ptr [rip + .Lx532_0]
 mov qword ptr [r12 + 3544], rax
 jmp xchain429_n60_α
 xchain429_n58_β:
 jmp xchain429_n62_α
.Lx532_0:
 .quad .Lx532_0_s
.Lx532_0_s:
 .string "bangladesh"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n59_α:
 lea rax, [rip + xchain429_n54_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n59_β:
 jmp proc_pop$2_ω
 xchain429_n60_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3520] -> [zr+3488]
 mov rax, qword ptr [r12 + 3520]
 mov qword ptr [r12 + 3488], rax
 mov rax, qword ptr [r12 + 3528]
 mov qword ptr [r12 + 3496], rax
# marshal arg1 = producer-box slot [zr+3536] -> [zr+3504]
 mov rax, qword ptr [r12 + 3536]
 mov qword ptr [r12 + 3504], rax
 mov rax, qword ptr [r12 + 3544]
 mov qword ptr [r12 + 3512], rax
  .section .rodata
  .Lrkfn536: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn536]
 lea rsi, [r12 + 3488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], rdx
 cmp eax, 99
 je xchain429_n62_α
 jmp xchain429_n61_α
 xchain429_n60_β:
 jmp xchain429_n62_α
# IR_VAR_REF
 xchain429_n61_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3440], rax
 mov qword ptr [r12 + 3448], rdx
 jmp xchain429_n63_α
 xchain429_n61_β:
 jmp xchain429_n62_α
 xchain429_n62_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3376]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3376], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3384], rax
  .section .rodata
  .Lrkfn540: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn540]
 lea rsi, [r12 + 3376]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3360], rax
 mov qword ptr [r12 + 3368], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n64_α
 xchain429_n62_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n63_α:
 mov qword ptr [r12 + 3456], 6
 mov rax, qword ptr [rip + .Lx541_0]
 mov qword ptr [r12 + 3464], rax
 jmp xchain429_n65_α
 xchain429_n63_β:
 jmp xchain429_n62_α
.Lx541_0:
 .quad 750
# IR_VAR_REF
 xchain429_n64_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3328], rax
 mov qword ptr [r12 + 3336], rdx
 jmp xchain429_n66_α
 xchain429_n64_β:
 jmp xchain429_n70_α
 xchain429_n65_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3440] -> [zr+3408]
 mov rax, qword ptr [r12 + 3440]
 mov qword ptr [r12 + 3408], rax
 mov rax, qword ptr [r12 + 3448]
 mov qword ptr [r12 + 3416], rax
# marshal arg1 = producer-box slot [zr+3456] -> [zr+3424]
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 3424], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 3432], rax
  .section .rodata
  .Lrkfn545: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn545]
 lea rsi, [r12 + 3408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3392], rax
 mov qword ptr [r12 + 3400], rdx
 cmp eax, 99
 je xchain429_n62_α
 jmp xchain429_n67_α
 xchain429_n65_β:
 jmp xchain429_n62_α
# IR_LIT_STRING
 xchain429_n66_α:
 mov qword ptr [r12 + 3344], 1
 mov rax, qword ptr [rip + .Lx546_0]
 mov qword ptr [r12 + 3352], rax
 jmp xchain429_n68_α
 xchain429_n66_β:
 jmp xchain429_n70_α
.Lx546_0:
 .quad .Lx546_0_s
.Lx546_0_s:
 .string "pakistan"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n67_α:
 lea rax, [rip + xchain429_n62_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n67_β:
 jmp proc_pop$2_ω
 xchain429_n68_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3328] -> [zr+3296]
 mov rax, qword ptr [r12 + 3328]
 mov qword ptr [r12 + 3296], rax
 mov rax, qword ptr [r12 + 3336]
 mov qword ptr [r12 + 3304], rax
# marshal arg1 = producer-box slot [zr+3344] -> [zr+3312]
 mov rax, qword ptr [r12 + 3344]
 mov qword ptr [r12 + 3312], rax
 mov rax, qword ptr [r12 + 3352]
 mov qword ptr [r12 + 3320], rax
  .section .rodata
  .Lrkfn550: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn550]
 lea rsi, [r12 + 3296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3280], rax
 mov qword ptr [r12 + 3288], rdx
 cmp eax, 99
 je xchain429_n70_α
 jmp xchain429_n69_α
 xchain429_n68_β:
 jmp xchain429_n70_α
# IR_VAR_REF
 xchain429_n69_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3248], rax
 mov qword ptr [r12 + 3256], rdx
 jmp xchain429_n71_α
 xchain429_n69_β:
 jmp xchain429_n70_α
 xchain429_n70_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3184]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3184], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3192], rax
  .section .rodata
  .Lrkfn554: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn554]
 lea rsi, [r12 + 3184]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3168], rax
 mov qword ptr [r12 + 3176], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n72_α
 xchain429_n70_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n71_α:
 mov qword ptr [r12 + 3264], 6
 mov rax, qword ptr [rip + .Lx555_0]
 mov qword ptr [r12 + 3272], rax
 jmp xchain429_n73_α
 xchain429_n71_β:
 jmp xchain429_n70_α
.Lx555_0:
 .quad 682
# IR_VAR_REF
 xchain429_n72_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
 jmp xchain429_n74_α
 xchain429_n72_β:
 jmp xchain429_n78_α
 xchain429_n73_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3248] -> [zr+3216]
 mov rax, qword ptr [r12 + 3248]
 mov qword ptr [r12 + 3216], rax
 mov rax, qword ptr [r12 + 3256]
 mov qword ptr [r12 + 3224], rax
# marshal arg1 = producer-box slot [zr+3264] -> [zr+3232]
 mov rax, qword ptr [r12 + 3264]
 mov qword ptr [r12 + 3232], rax
 mov rax, qword ptr [r12 + 3272]
 mov qword ptr [r12 + 3240], rax
  .section .rodata
  .Lrkfn559: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn559]
 lea rsi, [r12 + 3216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3200], rax
 mov qword ptr [r12 + 3208], rdx
 cmp eax, 99
 je xchain429_n70_α
 jmp xchain429_n75_α
 xchain429_n73_β:
 jmp xchain429_n70_α
# IR_LIT_STRING
 xchain429_n74_α:
 mov qword ptr [r12 + 3152], 1
 mov rax, qword ptr [rip + .Lx560_0]
 mov qword ptr [r12 + 3160], rax
 jmp xchain429_n76_α
 xchain429_n74_β:
 jmp xchain429_n78_α
.Lx560_0:
 .quad .Lx560_0_s
.Lx560_0_s:
 .string "w_germany"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n75_α:
 lea rax, [rip + xchain429_n70_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n75_β:
 jmp proc_pop$2_ω
 xchain429_n76_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3136] -> [zr+3104]
 mov rax, qword ptr [r12 + 3136]
 mov qword ptr [r12 + 3104], rax
 mov rax, qword ptr [r12 + 3144]
 mov qword ptr [r12 + 3112], rax
# marshal arg1 = producer-box slot [zr+3152] -> [zr+3120]
 mov rax, qword ptr [r12 + 3152]
 mov qword ptr [r12 + 3120], rax
 mov rax, qword ptr [r12 + 3160]
 mov qword ptr [r12 + 3128], rax
  .section .rodata
  .Lrkfn564: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn564]
 lea rsi, [r12 + 3104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3088], rax
 mov qword ptr [r12 + 3096], rdx
 cmp eax, 99
 je xchain429_n78_α
 jmp xchain429_n77_α
 xchain429_n76_β:
 jmp xchain429_n78_α
# IR_VAR_REF
 xchain429_n77_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 jmp xchain429_n79_α
 xchain429_n77_β:
 jmp xchain429_n78_α
 xchain429_n78_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2992]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3000], rax
  .section .rodata
  .Lrkfn568: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn568]
 lea rsi, [r12 + 2992]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n80_α
 xchain429_n78_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n79_α:
 mov qword ptr [r12 + 3072], 6
 mov rax, qword ptr [rip + .Lx569_0]
 mov qword ptr [r12 + 3080], rax
 jmp xchain429_n81_α
 xchain429_n79_β:
 jmp xchain429_n78_α
.Lx569_0:
 .quad 620
# IR_VAR_REF
 xchain429_n80_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2944], rax
 mov qword ptr [r12 + 2952], rdx
 jmp xchain429_n82_α
 xchain429_n80_β:
 jmp xchain429_n86_α
 xchain429_n81_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3056] -> [zr+3024]
 mov rax, qword ptr [r12 + 3056]
 mov qword ptr [r12 + 3024], rax
 mov rax, qword ptr [r12 + 3064]
 mov qword ptr [r12 + 3032], rax
# marshal arg1 = producer-box slot [zr+3072] -> [zr+3040]
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 3040], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 3048], rax
  .section .rodata
  .Lrkfn573: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn573]
 lea rsi, [r12 + 3024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 cmp eax, 99
 je xchain429_n78_α
 jmp xchain429_n83_α
 xchain429_n81_β:
 jmp xchain429_n78_α
# IR_LIT_STRING
 xchain429_n82_α:
 mov qword ptr [r12 + 2960], 1
 mov rax, qword ptr [rip + .Lx574_0]
 mov qword ptr [r12 + 2968], rax
 jmp xchain429_n84_α
 xchain429_n82_β:
 jmp xchain429_n86_α
.Lx574_0:
 .quad .Lx574_0_s
.Lx574_0_s:
 .string "nigeria"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n83_α:
 lea rax, [rip + xchain429_n78_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n83_β:
 jmp proc_pop$2_ω
 xchain429_n84_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2944] -> [zr+2912]
 mov rax, qword ptr [r12 + 2944]
 mov qword ptr [r12 + 2912], rax
 mov rax, qword ptr [r12 + 2952]
 mov qword ptr [r12 + 2920], rax
# marshal arg1 = producer-box slot [zr+2960] -> [zr+2928]
 mov rax, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 2928], rax
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 2936], rax
  .section .rodata
  .Lrkfn578: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn578]
 lea rsi, [r12 + 2912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2896], rax
 mov qword ptr [r12 + 2904], rdx
 cmp eax, 99
 je xchain429_n86_α
 jmp xchain429_n85_α
 xchain429_n84_β:
 jmp xchain429_n86_α
# IR_VAR_REF
 xchain429_n85_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], rdx
 jmp xchain429_n87_α
 xchain429_n85_β:
 jmp xchain429_n86_α
 xchain429_n86_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2800]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2800], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2808], rax
  .section .rodata
  .Lrkfn582: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn582]
 lea rsi, [r12 + 2800]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2784], rax
 mov qword ptr [r12 + 2792], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n88_α
 xchain429_n86_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n87_α:
 mov qword ptr [r12 + 2880], 6
 mov rax, qword ptr [rip + .Lx583_0]
 mov qword ptr [r12 + 2888], rax
 jmp xchain429_n89_α
 xchain429_n87_β:
 jmp xchain429_n86_α
.Lx583_0:
 .quad 613
# IR_VAR_REF
 xchain429_n88_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 jmp xchain429_n90_α
 xchain429_n88_β:
 jmp xchain429_n94_α
 xchain429_n89_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn587: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn587]
 lea rsi, [r12 + 2832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 cmp eax, 99
 je xchain429_n86_α
 jmp xchain429_n91_α
 xchain429_n89_β:
 jmp xchain429_n86_α
# IR_LIT_STRING
 xchain429_n90_α:
 mov qword ptr [r12 + 2768], 1
 mov rax, qword ptr [rip + .Lx588_0]
 mov qword ptr [r12 + 2776], rax
 jmp xchain429_n92_α
 xchain429_n90_β:
 jmp xchain429_n94_α
.Lx588_0:
 .quad .Lx588_0_s
.Lx588_0_s:
 .string "mexico"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n91_α:
 lea rax, [rip + xchain429_n86_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n91_β:
 jmp proc_pop$2_ω
 xchain429_n92_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2752] -> [zr+2720]
 mov rax, qword ptr [r12 + 2752]
 mov qword ptr [r12 + 2720], rax
 mov rax, qword ptr [r12 + 2760]
 mov qword ptr [r12 + 2728], rax
# marshal arg1 = producer-box slot [zr+2768] -> [zr+2736]
 mov rax, qword ptr [r12 + 2768]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 2776]
 mov qword ptr [r12 + 2744], rax
  .section .rodata
  .Lrkfn592: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn592]
 lea rsi, [r12 + 2720]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2704], rax
 mov qword ptr [r12 + 2712], rdx
 cmp eax, 99
 je xchain429_n94_α
 jmp xchain429_n93_α
 xchain429_n92_β:
 jmp xchain429_n94_α
# IR_VAR_REF
 xchain429_n93_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 jmp xchain429_n95_α
 xchain429_n93_β:
 jmp xchain429_n94_α
 xchain429_n94_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2608]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2608], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2616], rax
  .section .rodata
  .Lrkfn596: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn596]
 lea rsi, [r12 + 2608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n96_α
 xchain429_n94_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n95_α:
 mov qword ptr [r12 + 2688], 6
 mov rax, qword ptr [rip + .Lx597_0]
 mov qword ptr [r12 + 2696], rax
 jmp xchain429_n97_α
 xchain429_n95_β:
 jmp xchain429_n94_α
.Lx597_0:
 .quad 581
# IR_VAR_REF
 xchain429_n96_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 jmp xchain429_n98_α
 xchain429_n96_β:
 jmp xchain429_n102_α
 xchain429_n97_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2672] -> [zr+2640]
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 2640], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 2648], rax
# marshal arg1 = producer-box slot [zr+2688] -> [zr+2656]
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 2656], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 2664], rax
  .section .rodata
  .Lrkfn601: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn601]
 lea rsi, [r12 + 2640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 cmp eax, 99
 je xchain429_n94_α
 jmp xchain429_n99_α
 xchain429_n97_β:
 jmp xchain429_n94_α
# IR_LIT_STRING
 xchain429_n98_α:
 mov qword ptr [r12 + 2576], 1
 mov rax, qword ptr [rip + .Lx602_0]
 mov qword ptr [r12 + 2584], rax
 jmp xchain429_n100_α
 xchain429_n98_β:
 jmp xchain429_n102_α
.Lx602_0:
 .quad .Lx602_0_s
.Lx602_0_s:
 .string "uk"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n99_α:
 lea rax, [rip + xchain429_n94_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n99_β:
 jmp proc_pop$2_ω
 xchain429_n100_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2560] -> [zr+2528]
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 2528], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 2536], rax
# marshal arg1 = producer-box slot [zr+2576] -> [zr+2544]
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 2544], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 2552], rax
  .section .rodata
  .Lrkfn606: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn606]
 lea rsi, [r12 + 2528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 cmp eax, 99
 je xchain429_n102_α
 jmp xchain429_n101_α
 xchain429_n100_β:
 jmp xchain429_n102_α
# IR_VAR_REF
 xchain429_n101_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 jmp xchain429_n103_α
 xchain429_n101_β:
 jmp xchain429_n102_α
 xchain429_n102_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2416]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2416], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2424], rax
  .section .rodata
  .Lrkfn610: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn610]
 lea rsi, [r12 + 2416]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n104_α
 xchain429_n102_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n103_α:
 mov qword ptr [r12 + 2496], 6
 mov rax, qword ptr [rip + .Lx611_0]
 mov qword ptr [r12 + 2504], rax
 jmp xchain429_n105_α
 xchain429_n103_β:
 jmp xchain429_n102_α
.Lx611_0:
 .quad 559
# IR_VAR_REF
 xchain429_n104_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2368], rax
 mov qword ptr [r12 + 2376], rdx
 jmp xchain429_n106_α
 xchain429_n104_β:
 jmp xchain429_n110_α
 xchain429_n105_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2480] -> [zr+2448]
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 2448], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 2456], rax
# marshal arg1 = producer-box slot [zr+2496] -> [zr+2464]
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 2464], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 2472], rax
  .section .rodata
  .Lrkfn615: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn615]
 lea rsi, [r12 + 2448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 cmp eax, 99
 je xchain429_n102_α
 jmp xchain429_n107_α
 xchain429_n105_β:
 jmp xchain429_n102_α
# IR_LIT_STRING
 xchain429_n106_α:
 mov qword ptr [r12 + 2384], 1
 mov rax, qword ptr [rip + .Lx616_0]
 mov qword ptr [r12 + 2392], rax
 jmp xchain429_n108_α
 xchain429_n106_β:
 jmp xchain429_n110_α
.Lx616_0:
 .quad .Lx616_0_s
.Lx616_0_s:
 .string "italy"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n107_α:
 lea rax, [rip + xchain429_n102_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n107_β:
 jmp proc_pop$2_ω
 xchain429_n108_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2368] -> [zr+2336]
 mov rax, qword ptr [r12 + 2368]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 2376]
 mov qword ptr [r12 + 2344], rax
# marshal arg1 = producer-box slot [zr+2384] -> [zr+2352]
 mov rax, qword ptr [r12 + 2384]
 mov qword ptr [r12 + 2352], rax
 mov rax, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 2360], rax
  .section .rodata
  .Lrkfn620: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn620]
 lea rsi, [r12 + 2336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 cmp eax, 99
 je xchain429_n110_α
 jmp xchain429_n109_α
 xchain429_n108_β:
 jmp xchain429_n110_α
# IR_VAR_REF
 xchain429_n109_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain429_n111_α
 xchain429_n109_β:
 jmp xchain429_n110_α
 xchain429_n110_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2224]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2232], rax
  .section .rodata
  .Lrkfn624: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn624]
 lea rsi, [r12 + 2224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n112_α
 xchain429_n110_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n111_α:
 mov qword ptr [r12 + 2304], 6
 mov rax, qword ptr [rip + .Lx625_0]
 mov qword ptr [r12 + 2312], rax
 jmp xchain429_n113_α
 xchain429_n111_β:
 jmp xchain429_n110_α
.Lx625_0:
 .quad 554
# IR_VAR_REF
 xchain429_n112_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain429_n114_α
 xchain429_n112_β:
 jmp xchain429_n118_α
 xchain429_n113_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2288] -> [zr+2256]
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 2256], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 2264], rax
# marshal arg1 = producer-box slot [zr+2304] -> [zr+2272]
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 2272], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2280], rax
  .section .rodata
  .Lrkfn629: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn629]
 lea rsi, [r12 + 2256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 cmp eax, 99
 je xchain429_n110_α
 jmp xchain429_n115_α
 xchain429_n113_β:
 jmp xchain429_n110_α
# IR_LIT_STRING
 xchain429_n114_α:
 mov qword ptr [r12 + 2192], 1
 mov rax, qword ptr [rip + .Lx630_0]
 mov qword ptr [r12 + 2200], rax
 jmp xchain429_n116_α
 xchain429_n114_β:
 jmp xchain429_n118_α
.Lx630_0:
 .quad .Lx630_0_s
.Lx630_0_s:
 .string "france"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n115_α:
 lea rax, [rip + xchain429_n110_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n115_β:
 jmp proc_pop$2_ω
 xchain429_n116_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2176] -> [zr+2144]
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 2144], rax
 mov rax, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 2152], rax
# marshal arg1 = producer-box slot [zr+2192] -> [zr+2160]
 mov rax, qword ptr [r12 + 2192]
 mov qword ptr [r12 + 2160], rax
 mov rax, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 2168], rax
  .section .rodata
  .Lrkfn634: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn634]
 lea rsi, [r12 + 2144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 cmp eax, 99
 je xchain429_n118_α
 jmp xchain429_n117_α
 xchain429_n116_β:
 jmp xchain429_n118_α
# IR_VAR_REF
 xchain429_n117_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain429_n119_α
 xchain429_n117_β:
 jmp xchain429_n118_α
 xchain429_n118_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2032]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2040], rax
  .section .rodata
  .Lrkfn638: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn638]
 lea rsi, [r12 + 2032]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n120_α
 xchain429_n118_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n119_α:
 mov qword ptr [r12 + 2112], 6
 mov rax, qword ptr [rip + .Lx639_0]
 mov qword ptr [r12 + 2120], rax
 jmp xchain429_n121_α
 xchain429_n119_β:
 jmp xchain429_n118_α
.Lx639_0:
 .quad 525
# IR_VAR_REF
 xchain429_n120_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xchain429_n122_α
 xchain429_n120_β:
 jmp xchain429_n126_α
 xchain429_n121_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2096] -> [zr+2064]
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2072], rax
# marshal arg1 = producer-box slot [zr+2112] -> [zr+2080]
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 2088], rax
  .section .rodata
  .Lrkfn643: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn643]
 lea rsi, [r12 + 2064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 cmp eax, 99
 je xchain429_n118_α
 jmp xchain429_n123_α
 xchain429_n121_β:
 jmp xchain429_n118_α
# IR_LIT_STRING
 xchain429_n122_α:
 mov qword ptr [r12 + 2000], 1
 mov rax, qword ptr [rip + .Lx644_0]
 mov qword ptr [r12 + 2008], rax
 jmp xchain429_n124_α
 xchain429_n122_β:
 jmp xchain429_n126_α
.Lx644_0:
 .quad .Lx644_0_s
.Lx644_0_s:
 .string "philippines"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n123_α:
 lea rax, [rip + xchain429_n118_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n123_β:
 jmp proc_pop$2_ω
 xchain429_n124_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1960], rax
# marshal arg1 = producer-box slot [zr+2000] -> [zr+1968]
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 1976], rax
  .section .rodata
  .Lrkfn648: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn648]
 lea rsi, [r12 + 1952]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 cmp eax, 99
 je xchain429_n126_α
 jmp xchain429_n125_α
 xchain429_n124_β:
 jmp xchain429_n126_α
# IR_VAR_REF
 xchain429_n125_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain429_n127_α
 xchain429_n125_β:
 jmp xchain429_n126_α
 xchain429_n126_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1840]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1848], rax
  .section .rodata
  .Lrkfn652: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn652]
 lea rsi, [r12 + 1840]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n128_α
 xchain429_n126_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n127_α:
 mov qword ptr [r12 + 1920], 6
 mov rax, qword ptr [rip + .Lx653_0]
 mov qword ptr [r12 + 1928], rax
 jmp xchain429_n129_α
 xchain429_n127_β:
 jmp xchain429_n126_α
.Lx653_0:
 .quad 415
# IR_VAR_REF
 xchain429_n128_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain429_n130_α
 xchain429_n128_β:
 jmp xchain429_n134_α
 xchain429_n129_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1904] -> [zr+1872]
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1880], rax
# marshal arg1 = producer-box slot [zr+1920] -> [zr+1888]
 mov rax, qword ptr [r12 + 1920]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 1896], rax
  .section .rodata
  .Lrkfn657: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn657]
 lea rsi, [r12 + 1872]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 cmp eax, 99
 je xchain429_n126_α
 jmp xchain429_n131_α
 xchain429_n129_β:
 jmp xchain429_n126_α
# IR_LIT_STRING
 xchain429_n130_α:
 mov qword ptr [r12 + 1808], 1
 mov rax, qword ptr [rip + .Lx658_0]
 mov qword ptr [r12 + 1816], rax
 jmp xchain429_n132_α
 xchain429_n130_β:
 jmp xchain429_n134_α
.Lx658_0:
 .quad .Lx658_0_s
.Lx658_0_s:
 .string "thailand"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n131_α:
 lea rax, [rip + xchain429_n126_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n131_β:
 jmp proc_pop$2_ω
 xchain429_n132_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1760]
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1768], rax
# marshal arg1 = producer-box slot [zr+1808] -> [zr+1776]
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1784], rax
  .section .rodata
  .Lrkfn662: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn662]
 lea rsi, [r12 + 1760]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 cmp eax, 99
 je xchain429_n134_α
 jmp xchain429_n133_α
 xchain429_n132_β:
 jmp xchain429_n134_α
# IR_VAR_REF
 xchain429_n133_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain429_n135_α
 xchain429_n133_β:
 jmp xchain429_n134_α
 xchain429_n134_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1648]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1656], rax
  .section .rodata
  .Lrkfn666: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn666]
 lea rsi, [r12 + 1648]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n136_α
 xchain429_n134_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n135_α:
 mov qword ptr [r12 + 1728], 6
 mov rax, qword ptr [rip + .Lx667_0]
 mov qword ptr [r12 + 1736], rax
 jmp xchain429_n137_α
 xchain429_n135_β:
 jmp xchain429_n134_α
.Lx667_0:
 .quad 410
# IR_VAR_REF
 xchain429_n136_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain429_n138_α
 xchain429_n136_β:
 jmp xchain429_n142_α
 xchain429_n137_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1712] -> [zr+1680]
 mov rax, qword ptr [r12 + 1712]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 1688], rax
# marshal arg1 = producer-box slot [zr+1728] -> [zr+1696]
 mov rax, qword ptr [r12 + 1728]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 1704], rax
  .section .rodata
  .Lrkfn671: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn671]
 lea rsi, [r12 + 1680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 cmp eax, 99
 je xchain429_n134_α
 jmp xchain429_n139_α
 xchain429_n137_β:
 jmp xchain429_n134_α
# IR_LIT_STRING
 xchain429_n138_α:
 mov qword ptr [r12 + 1616], 1
 mov rax, qword ptr [rip + .Lx672_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain429_n140_α
 xchain429_n138_β:
 jmp xchain429_n142_α
.Lx672_0:
 .quad .Lx672_0_s
.Lx672_0_s:
 .string "turkey"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n139_α:
 lea rax, [rip + xchain429_n134_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n139_β:
 jmp proc_pop$2_ω
 xchain429_n140_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1568]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1576], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1584]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1592], rax
  .section .rodata
  .Lrkfn676: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn676]
 lea rsi, [r12 + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 cmp eax, 99
 je xchain429_n142_α
 jmp xchain429_n141_α
 xchain429_n140_β:
 jmp xchain429_n142_α
# IR_VAR_REF
 xchain429_n141_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain429_n143_α
 xchain429_n141_β:
 jmp xchain429_n142_α
 xchain429_n142_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1456]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1464], rax
  .section .rodata
  .Lrkfn680: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn680]
 lea rsi, [r12 + 1456]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n144_α
 xchain429_n142_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n143_α:
 mov qword ptr [r12 + 1536], 6
 mov rax, qword ptr [rip + .Lx681_0]
 mov qword ptr [r12 + 1544], rax
 jmp xchain429_n145_α
 xchain429_n143_β:
 jmp xchain429_n142_α
.Lx681_0:
 .quad 383
# IR_VAR_REF
 xchain429_n144_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain429_n146_α
 xchain429_n144_β:
 jmp xchain429_n150_α
 xchain429_n145_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn685: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn685]
 lea rsi, [r12 + 1488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 cmp eax, 99
 je xchain429_n142_α
 jmp xchain429_n147_α
 xchain429_n145_β:
 jmp xchain429_n142_α
# IR_LIT_STRING
 xchain429_n146_α:
 mov qword ptr [r12 + 1424], 1
 mov rax, qword ptr [rip + .Lx686_0]
 mov qword ptr [r12 + 1432], rax
 jmp xchain429_n148_α
 xchain429_n146_β:
 jmp xchain429_n150_α
.Lx686_0:
 .quad .Lx686_0_s
.Lx686_0_s:
 .string "egypt"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n147_α:
 lea rax, [rip + xchain429_n142_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n147_β:
 jmp proc_pop$2_ω
 xchain429_n148_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1376]
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1384], rax
# marshal arg1 = producer-box slot [zr+1424] -> [zr+1392]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1400], rax
  .section .rodata
  .Lrkfn690: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn690]
 lea rsi, [r12 + 1376]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 cmp eax, 99
 je xchain429_n150_α
 jmp xchain429_n149_α
 xchain429_n148_β:
 jmp xchain429_n150_α
# IR_VAR_REF
 xchain429_n149_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain429_n151_α
 xchain429_n149_β:
 jmp xchain429_n150_α
 xchain429_n150_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1264]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1272], rax
  .section .rodata
  .Lrkfn694: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn694]
 lea rsi, [r12 + 1264]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n152_α
 xchain429_n150_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n151_α:
 mov qword ptr [r12 + 1344], 6
 mov rax, qword ptr [rip + .Lx695_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain429_n153_α
 xchain429_n151_β:
 jmp xchain429_n150_α
.Lx695_0:
 .quad 364
# IR_VAR_REF
 xchain429_n152_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain429_n154_α
 xchain429_n152_β:
 jmp xchain429_n158_α
 xchain429_n153_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1296]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1304], rax
# marshal arg1 = producer-box slot [zr+1344] -> [zr+1312]
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1320], rax
  .section .rodata
  .Lrkfn699: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn699]
 lea rsi, [r12 + 1296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xchain429_n150_α
 jmp xchain429_n155_α
 xchain429_n153_β:
 jmp xchain429_n150_α
# IR_LIT_STRING
 xchain429_n154_α:
 mov qword ptr [r12 + 1232], 1
 mov rax, qword ptr [rip + .Lx700_0]
 mov qword ptr [r12 + 1240], rax
 jmp xchain429_n156_α
 xchain429_n154_β:
 jmp xchain429_n158_α
.Lx700_0:
 .quad .Lx700_0_s
.Lx700_0_s:
 .string "spain"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n155_α:
 lea rax, [rip + xchain429_n150_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n155_β:
 jmp proc_pop$2_ω
 xchain429_n156_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn704: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn704]
 lea rsi, [r12 + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain429_n158_α
 jmp xchain429_n157_α
 xchain429_n156_β:
 jmp xchain429_n158_α
# IR_VAR_REF
 xchain429_n157_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain429_n159_α
 xchain429_n157_β:
 jmp xchain429_n158_α
 xchain429_n158_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1072]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn708: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn708]
 lea rsi, [r12 + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n160_α
 xchain429_n158_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n159_α:
 mov qword ptr [r12 + 1152], 6
 mov rax, qword ptr [rip + .Lx709_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain429_n161_α
 xchain429_n159_β:
 jmp xchain429_n158_α
.Lx709_0:
 .quad 352
# IR_VAR_REF
 xchain429_n160_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain429_n162_α
 xchain429_n160_β:
 jmp xchain429_n166_α
 xchain429_n161_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1104]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1112], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+1120]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rax
  .section .rodata
  .Lrkfn713: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn713]
 lea rsi, [r12 + 1104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je xchain429_n158_α
 jmp xchain429_n163_α
 xchain429_n161_β:
 jmp xchain429_n158_α
# IR_LIT_STRING
 xchain429_n162_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx714_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain429_n164_α
 xchain429_n162_β:
 jmp xchain429_n166_α
.Lx714_0:
 .quad .Lx714_0_s
.Lx714_0_s:
 .string "poland"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n163_α:
 lea rax, [rip + xchain429_n158_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n163_β:
 jmp proc_pop$2_ω
 xchain429_n164_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+992]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+1008]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn718: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn718]
 lea rsi, [r12 + 992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain429_n166_α
 jmp xchain429_n165_α
 xchain429_n164_β:
 jmp xchain429_n166_α
# IR_VAR_REF
 xchain429_n165_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain429_n167_α
 xchain429_n165_β:
 jmp xchain429_n166_α
 xchain429_n166_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+880]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lrkfn722: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn722]
 lea rsi, [r12 + 880]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n168_α
 xchain429_n166_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n167_α:
 mov qword ptr [r12 + 960], 6
 mov rax, qword ptr [rip + .Lx723_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain429_n169_α
 xchain429_n167_β:
 jmp xchain429_n166_α
.Lx723_0:
 .quad 337
# IR_VAR_REF
 xchain429_n168_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain429_n170_α
 xchain429_n168_β:
 jmp xchain429_n174_α
 xchain429_n169_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn727: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn727]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain429_n166_α
 jmp xchain429_n171_α
 xchain429_n169_β:
 jmp xchain429_n166_α
# IR_LIT_STRING
 xchain429_n170_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx728_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain429_n172_α
 xchain429_n170_β:
 jmp xchain429_n174_α
.Lx728_0:
 .quad .Lx728_0_s
.Lx728_0_s:
 .string "s_korea"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n171_α:
 lea rax, [rip + xchain429_n166_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n171_β:
 jmp proc_pop$2_ω
 xchain429_n172_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 808], rax
# marshal arg1 = producer-box slot [zr+848] -> [zr+816]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn732: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn732]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain429_n174_α
 jmp xchain429_n173_α
 xchain429_n172_β:
 jmp xchain429_n174_α
# IR_VAR_REF
 xchain429_n173_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain429_n175_α
 xchain429_n173_β:
 jmp xchain429_n174_α
 xchain429_n174_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+688]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn736: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn736]
 lea rsi, [r12 + 688]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n176_α
 xchain429_n174_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n175_α:
 mov qword ptr [r12 + 768], 6
 mov rax, qword ptr [rip + .Lx737_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain429_n177_α
 xchain429_n175_β:
 jmp xchain429_n174_α
.Lx737_0:
 .quad 335
# IR_VAR_REF
 xchain429_n176_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain429_n178_α
 xchain429_n176_β:
 jmp xchain429_n182_α
 xchain429_n177_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+720]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+736]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn741: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn741]
 lea rsi, [r12 + 720]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain429_n174_α
 jmp xchain429_n179_α
 xchain429_n177_β:
 jmp xchain429_n174_α
# IR_LIT_STRING
 xchain429_n178_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx742_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain429_n180_α
 xchain429_n178_β:
 jmp xchain429_n182_α
.Lx742_0:
 .quad .Lx742_0_s
.Lx742_0_s:
 .string "iran"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n179_α:
 lea rax, [rip + xchain429_n174_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n179_β:
 jmp proc_pop$2_ω
 xchain429_n180_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 616], rax
# marshal arg1 = producer-box slot [zr+656] -> [zr+624]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lrkfn746: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn746]
 lea rsi, [r12 + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain429_n182_α
 jmp xchain429_n181_α
 xchain429_n180_β:
 jmp xchain429_n182_α
# IR_VAR_REF
 xchain429_n181_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain429_n183_α
 xchain429_n181_β:
 jmp xchain429_n182_α
 xchain429_n182_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+496]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn750: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn750]
 lea rsi, [r12 + 496]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n184_α
 xchain429_n182_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n183_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx751_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain429_n185_α
 xchain429_n183_β:
 jmp xchain429_n182_α
.Lx751_0:
 .quad 320
# IR_VAR_REF
 xchain429_n184_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain429_n186_α
 xchain429_n184_β:
 jmp xchain429_n190_α
 xchain429_n185_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+528]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+544]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn755: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn755]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain429_n182_α
 jmp xchain429_n187_α
 xchain429_n185_β:
 jmp xchain429_n182_α
# IR_LIT_STRING
 xchain429_n186_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx756_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain429_n188_α
 xchain429_n186_β:
 jmp xchain429_n190_α
.Lx756_0:
 .quad .Lx756_0_s
.Lx756_0_s:
 .string "ethiopia"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n187_α:
 lea rax, [rip + xchain429_n182_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n187_β:
 jmp proc_pop$2_ω
 xchain429_n188_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn760: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn760]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain429_n190_α
 jmp xchain429_n189_α
 xchain429_n188_β:
 jmp xchain429_n190_α
# IR_VAR_REF
 xchain429_n189_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain429_n191_α
 xchain429_n189_β:
 jmp xchain429_n190_α
 xchain429_n190_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+304]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn764: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn764]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp xchain429_n192_α
 xchain429_n190_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n191_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx765_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain429_n193_α
 xchain429_n191_β:
 jmp xchain429_n190_α
.Lx765_0:
 .quad 272
# IR_VAR_REF
 xchain429_n192_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain429_n194_α
 xchain429_n192_β:
 jmp xchain429_n198_α
 xchain429_n193_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn769: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn769]
 lea rsi, [r12 + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain429_n190_α
 jmp xchain429_n195_α
 xchain429_n193_β:
 jmp xchain429_n190_α
# IR_LIT_STRING
 xchain429_n194_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx770_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain429_n196_α
 xchain429_n194_β:
 jmp xchain429_n198_α
.Lx770_0:
 .quad .Lx770_0_s
.Lx770_0_s:
 .string "argentina"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n195_α:
 lea rax, [rip + xchain429_n190_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n195_β:
 jmp proc_pop$2_ω
 xchain429_n196_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn774: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn774]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain429_n198_α
 jmp xchain429_n197_α
 xchain429_n196_β:
 jmp xchain429_n198_α
# IR_VAR_REF
 xchain429_n197_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain429_n199_α
 xchain429_n197_β:
 jmp xchain429_n198_α
 xchain429_n198_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn778: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn778]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_pop$2_ω
 jmp proc_pop$2_ω
 xchain429_n198_β:
 jmp proc_pop$2_ω
# IR_LIT_INTEGER
 xchain429_n199_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx779_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain429_n200_α
 xchain429_n199_β:
 jmp xchain429_n198_α
.Lx779_0:
 .quad 251
 xchain429_n200_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn781: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn781]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain429_n198_α
 jmp xchain429_n201_α
 xchain429_n200_β:
 jmp xchain429_n198_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain429_n201_α:
 lea rax, [rip + xchain429_n198_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pop$2_γ
 xchain429_n201_β:
 jmp proc_pop$2_ω
proc_pop$2_β:
jmp xchain429_n12_α
proc_pop$2_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 4896]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_pop$2_ω:
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
  .globl proc_density$2_α
proc_density$2_α:
#=======================================================================================================================
    .global proc_density$2_α
    .global proc_density$2_β
    .global proc_density$2_γ
    .global proc_density$2_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_density$2_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 688], rax
 pop rsi
proc_density$2_α_body:
 xchain784_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn786: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn786]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_density$2_ω
 jmp xchain784_n1_α
 xchain784_n0_β:
 jmp proc_density$2_ω
# IR_VAR_REF
 xchain784_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain784_n2_α
 xchain784_n1_β:
 jmp xchain784_n5_α
# IR_VAR_REF
 xchain784_n2_α:
 lea rdi, [r12 + 752]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain784_n3_α
 xchain784_n2_β:
 jmp xchain784_n5_α
 xchain784_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn792: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn792]
 lea rsi, [r12 + 624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain784_n5_α
 jmp xchain784_n4_α
 xchain784_n3_β:
 jmp xchain784_n5_α
# IR_VAR_REF
 xchain784_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain784_n6_α
 xchain784_n4_β:
 jmp xchain784_n5_α
 xchain784_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn796: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn796]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_density$2_ω
 jmp proc_density$2_ω
 xchain784_n5_β:
 jmp proc_density$2_ω
# IR_VAR_REF
 xchain784_n6_α:
 lea rdi, [r12 + 704]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain784_n7_α
 xchain784_n6_β:
 jmp xchain784_n5_α
 xchain784_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn800: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn800]
 lea rsi, [r12 + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain784_n5_α
 jmp xchain784_n8_α
 xchain784_n7_β:
 jmp xchain784_n5_α
# IR_VAR_REF
 xchain784_n8_α:
 lea rdi, [r12 + 752]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain784_n9_α
 xchain784_n8_β:
 jmp xchain784_n5_α
# IR_VAR_REF
 xchain784_n9_α:
 lea rdi, [r12 + 720]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain784_n10_α
 xchain784_n9_β:
 jmp xchain784_n5_α
 xchain784_n10_α:
  .section .rodata
  .Lcall456_pname: .string "pop/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall456_pname]
 mov esi, 2
 lea rdx, [r12 + 480]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain784_n5_α
 jmp xchain784_n11_α
xchain784_n10_β:
 lea rdi, [r12 + 480]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain784_n5_α
 jmp xchain784_n11_α
# IR_VAR_REF
 xchain784_n11_α:
 lea rdi, [r12 + 752]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain784_n12_α
 xchain784_n11_β:
 jmp xchain784_n5_α
# IR_VAR_REF
 xchain784_n12_α:
 lea rdi, [r12 + 736]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain784_n13_α
 xchain784_n12_β:
 jmp xchain784_n5_α
 xchain784_n13_α:
  .section .rodata
  .Lcall459_pname: .string "area/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall459_pname]
 mov esi, 2
 lea rdx, [r12 + 384]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain784_n10_β
 jmp xchain784_n14_α
xchain784_n13_β:
 lea rdi, [r12 + 384]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain784_n10_β
 jmp xchain784_n14_α
# IR_VAR_REF
 xchain784_n14_α:
 lea rdi, [r12 + 704]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain784_n15_α
 xchain784_n14_β:
 jmp xchain784_n5_α
# IR_VAR
 xchain784_n15_α:
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 296], rax
 jmp xchain784_n16_α
 xchain784_n15_β:
 jmp proc_density$2_ω
# IR_LIT_INTEGER
 xchain784_n16_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx815_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain784_n17_α
 xchain784_n16_β:
 jmp proc_density$2_ω
.Lx815_0:
 .quad 100
 xchain784_n17_α:
# BOX IR_CALL $ax_mul(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
# marshal arg1 = producer-box slot [zr+304] -> [zr+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn817: .string "$ax_mul"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn817]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain784_n5_α
 jmp xchain784_n18_α
 xchain784_n17_β:
 jmp xchain784_n5_α
# IR_VAR
 xchain784_n18_α:
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 328], rax
 jmp xchain784_n19_α
 xchain784_n18_β:
 jmp proc_density$2_ω
 xchain784_n19_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+208]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 216], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+224]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn821: .string "$ax_idiv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn821]
 lea rsi, [r12 + 208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain784_n5_α
 jmp xchain784_n20_α
 xchain784_n19_β:
 jmp xchain784_n5_α
 xchain784_n20_α:
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
  .Lrkfn823: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn823]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain784_n13_β
 jmp xchain784_n21_α
 xchain784_n20_β:
 jmp xchain784_n13_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain784_n21_α:
 lea rax, [rip + xchain784_n13_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_density$2_γ
 xchain784_n21_β:
 jmp proc_density$2_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain784_n22_α:
 jmp qword ptr [r12 + 64]
 xchain784_n22_β:
 jmp proc_density$2_ω
proc_density$2_β:
jmp xchain784_n22_α
proc_density$2_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 688]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_density$2_ω:
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
  .Lstartup_pname0: .string "area/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_area$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 4912
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname1: .string "query/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_query$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1328
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname2: .string "pop/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_pop$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 4912
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname3: .string "density/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_density$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 768
  call rt_proc_set_frame_bytes@PLT
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
 mov qword ptr [r12 + 880], rax
 pop rsi
main_α_body:
 xchain828_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn830: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn830]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain828_n1_α
 xchain828_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain828_n1_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx831_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain828_n2_α
 xchain828_n1_β:
 jmp main_ω
.Lx831_0:
 .quad .Lx831_0_s
.Lx831_0_s:
 .string "."
# IR_VAR_REF
 xchain828_n2_α:
 lea rdi, [r12 + 912]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain828_n3_α
 xchain828_n2_β:
 jmp main_ω
# IR_LIT_STRING
 xchain828_n3_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx834_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain828_n4_α
 xchain828_n3_β:
 jmp main_ω
.Lx834_0:
 .quad .Lx834_0_s
.Lx834_0_s:
 .string "."
# IR_VAR_REF
 xchain828_n4_α:
 lea rdi, [r12 + 944]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain828_n5_α
 xchain828_n4_β:
 jmp main_ω
# IR_LIT_STRING
 xchain828_n5_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx837_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain828_n6_α
 xchain828_n5_β:
 jmp main_ω
.Lx837_0:
 .quad .Lx837_0_s
.Lx837_0_s:
 .string "."
# IR_VAR_REF
 xchain828_n6_α:
 lea rdi, [r12 + 896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain828_n7_α
 xchain828_n6_β:
 jmp main_ω
# IR_LIT_STRING
 xchain828_n7_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx840_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain828_n8_α
 xchain828_n7_β:
 jmp main_ω
.Lx840_0:
 .quad .Lx840_0_s
.Lx840_0_s:
 .string "."
# IR_VAR_REF
 xchain828_n8_α:
 lea rdi, [r12 + 928]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain828_n9_α
 xchain828_n8_β:
 jmp main_ω
# IR_LIT_STRING
 xchain828_n9_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx843_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain828_n10_α
 xchain828_n9_β:
 jmp main_ω
.Lx843_0:
 .quad .Lx843_0_s
.Lx843_0_s:
 .string "[]"
 xchain828_n10_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+528]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 536], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+544]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 552], rax
# marshal arg2 = producer-box slot [zr+480] -> [zr+560]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn845: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn845]
 lea rsi, [r12 + 528]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je main_ω
 jmp xchain828_n11_α
 xchain828_n10_β:
 jmp main_ω
 xchain828_n11_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+640]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 648], rax
# marshal arg2 = producer-box slot [zr+512] -> [zr+656]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn847: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn847]
 lea rsi, [r12 + 624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je main_ω
 jmp xchain828_n12_α
 xchain828_n11_β:
 jmp main_ω
 xchain828_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+720]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 728], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+736]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 744], rax
# marshal arg2 = producer-box slot [zr+608] -> [zr+752]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 760], rax
  .section .rodata
  .Lrkfn849: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn849]
 lea rsi, [r12 + 720]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je main_ω
 jmp xchain828_n13_α
 xchain828_n12_β:
 jmp main_ω
 xchain828_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+816]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 824], rax
# marshal arg1 = producer-box slot [zr+784] -> [zr+832]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 840], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+848]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn851: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn851]
 lea rsi, [r12 + 816]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain828_n15_α
 jmp xchain828_n14_α
 xchain828_n13_β:
 jmp xchain828_n15_α
 xchain828_n14_α:
  .section .rodata
  .Lcall483_pname: .string "query/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 800]
 mov rdx, qword ptr [r12 + 808]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall483_pname]
 mov esi, 1
 lea rdx, [r12 + 464]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain828_n15_α
 jmp xchain828_n16_α
xchain828_n14_β:
 lea rdi, [r12 + 464]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain828_n15_α
 jmp xchain828_n16_α
# IR_LIT_STRING
 xchain828_n15_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx853_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain828_n17_α
 xchain828_n15_β:
 jmp xchain828_n20_α
.Lx853_0:
 .quad .Lx853_0_s
.Lx853_0_s:
 .string "none"
# IR_LIT_STRING
 xchain828_n16_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx854_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain828_n18_α
 xchain828_n16_β:
 jmp main_ω
.Lx854_0:
 .quad .Lx854_0_s
.Lx854_0_s:
 .string "."
 xchain828_n17_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+400]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn856: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn856]
 lea rsi, [r12 + 400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain828_n20_α
 jmp xchain828_n19_α
 xchain828_n17_β:
 jmp xchain828_n20_α
# IR_VAR_REF
 xchain828_n18_α:
 lea rdi, [r12 + 912]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain828_n21_α
 xchain828_n18_β:
 jmp main_ω
# IR_LIT_STRING
 xchain828_n19_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx859_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain828_n22_α
 xchain828_n19_β:
 jmp xchain828_n20_α
.Lx859_0:
 .quad .Lx859_0_s
.Lx859_0_s:
 .string ""
 xchain828_n20_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn861: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn861]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain828_n20_β:
 jmp main_ω
# IR_LIT_STRING
 xchain828_n21_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx862_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain828_n23_α
 xchain828_n21_β:
 jmp main_ω
.Lx862_0:
 .quad .Lx862_0_s
.Lx862_0_s:
 .string "."
 xchain828_n22_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn864: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn864]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain828_n20_α
 jmp xchain828_n24_α
 xchain828_n22_β:
 jmp xchain828_n20_α
# IR_VAR_REF
 xchain828_n23_α:
 lea rdi, [r12 + 896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain828_n25_α
 xchain828_n23_β:
 jmp main_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain828_n24_α:
 lea rax, [rip + xchain828_n20_α]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain828_n24_β:
 jmp main_ω
# IR_LIT_STRING
 xchain828_n25_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx869_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain828_n27_α
 xchain828_n25_β:
 jmp main_ω
.Lx869_0:
 .quad .Lx869_0_s
.Lx869_0_s:
 .string "[]"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain828_n26_α:
 jmp qword ptr [r12 + 32]
 xchain828_n26_β:
 jmp main_ω
 xchain828_n27_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+224]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+240]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 248], rax
# marshal arg2 = producer-box slot [zr+176] -> [zr+256]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn873: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn873]
 lea rsi, [r12 + 224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je main_ω
 jmp xchain828_n28_α
 xchain828_n27_β:
 jmp main_ω
 xchain828_n28_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+336]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 344], rax
# marshal arg2 = producer-box slot [zr+208] -> [zr+352]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn875: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn875]
 lea rsi, [r12 + 320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain828_n20_α
 jmp xchain828_n29_α
 xchain828_n28_β:
 jmp xchain828_n20_α
 xchain828_n29_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+160]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn877: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn877]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain828_n20_α
 jmp xchain828_n19_α
 xchain828_n29_β:
 jmp xchain828_n20_α
main_β:
jmp xchain828_n26_α
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
 mov rdi, qword ptr [r12 + 880]
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
