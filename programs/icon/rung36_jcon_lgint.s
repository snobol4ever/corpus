  .intel_syntax noprefix
  .text
  .globl proc_compiler_α
proc_compiler_α:
#=======================================================================================================================
    .global proc_compiler_α
    .global proc_compiler_β
    .global proc_compiler_γ
    .global proc_compiler_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_compiler_α_body:
xchain0_n0_α:
# IR_LIT_I
bb1_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
.Lx1_0:
 .quad 9223372036854775807
xchain0_n1_α:
bb2_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
# IR_LIT_I
bb3_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
.Lx3_0:
 .quad 9223372036854775809
xchain0_n3_α:
bb4_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
# IR_LIT_I
bb5_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
.Lx5_0:
 .quad 9223372036854775807
xchain0_n5_α:
bb6_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
# IR_LIT_S
bb7_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n9_α
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string "    a =  "
xchain0_n7_α:
# IR_VAR
bb8_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n9_α
xchain0_n8_α:
bb9_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+192]
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 200], rax
 jmp .Lx10_1
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "    a =  "
.Lx10_1:
# marshal arg1 = varslot [r12+16] -> [r12+208]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn11: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn11]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain0_n9_α
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n9_α
xchain0_n9_α:
# IR_LIT_S
bb10_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n12_α
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string "    b = "
xchain0_n10_α:
# IR_VAR
bb11_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n12_α
xchain0_n11_α:
bb12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx15_1
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "    b = "
.Lx15_1:
# marshal arg1 = varslot [r12+32] -> [r12+272]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn16: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn16]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n12_α
xchain0_n12_α:
# IR_LIT_S
bb13_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n15_α
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "    c =  "
xchain0_n13_α:
# IR_VAR
bb14_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n15_α
xchain0_n14_α:
bb15_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+320]
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [r12 + 328], rax
 jmp .Lx20_1
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "    c =  "
.Lx20_1:
# marshal arg1 = varslot [r12+48] -> [r12+336]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn21: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn21]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain0_n15_α
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n15_α
xchain0_n15_α:
# IR_LIT_S
bb16_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n20_α
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "a + b = "
xchain0_n16_α:
# IR_VAR
bb17_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n20_α
xchain0_n17_α:
# IR_VAR
bb18_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n20_α
xchain0_n18_α:
bb19_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 add rax, rcx
 mov qword ptr [r12 + 368], 6
 mov qword ptr [r12 + 376], rax
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp xchain0_n20_α
xchain0_n19_α:
bb20_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+400]
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 408], rax
 jmp .Lx28_1
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "a + b = "
.Lx28_1:
# marshal arg1 = nested producer-box slot [r12+368] -> [r12+416]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn29: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn29]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp xchain0_n20_α
xchain0_n20_α:
# IR_LIT_S
bb21_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n25_α
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "b + c =   "
xchain0_n21_α:
# IR_VAR
bb22_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp xchain0_n25_α
xchain0_n22_α:
# IR_VAR
bb23_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n25_α
xchain0_n23_α:
bb24_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 56]
 add rax, rcx
 mov qword ptr [r12 + 448], 6
 mov qword ptr [r12 + 456], rax
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n25_α
xchain0_n24_α:
bb25_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+480]
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [r12 + 488], rax
 jmp .Lx36_1
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "b + c =   "
.Lx36_1:
# marshal arg1 = nested producer-box slot [r12+448] -> [r12+496]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn37: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn37]
 lea rsi, [r12 + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain0_n25_α
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n25_α
xchain0_n25_α:
# IR_LIT_S
bb26_α:
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx38_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp xchain0_n30_α
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "c + a =  "
xchain0_n26_α:
# IR_VAR
bb27_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n30_α
xchain0_n27_α:
# IR_VAR
bb28_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp xchain0_n30_α
xchain0_n28_α:
bb29_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 56]
 mov rcx, qword ptr [r12 + 24]
 add rax, rcx
 mov qword ptr [r12 + 528], 6
 mov qword ptr [r12 + 536], rax
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp xchain0_n30_α
xchain0_n29_α:
bb30_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+560]
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [r12 + 568], rax
 jmp .Lx44_1
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "c + a =  "
.Lx44_1:
# marshal arg1 = nested producer-box slot [r12+528] -> [r12+576]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn45: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn45]
 lea rsi, [r12 + 560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n30_α
 xchain0_n29_β:
 jmp xchain0_n30_α
xchain0_n30_α:
# IR_RETURN
bb31_α:
 mov rax, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_compiler_γ
proc_compiler_β:
jmp proc_compiler_ω
proc_compiler_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_compiler_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_boundaries_α
proc_boundaries_α:
#=======================================================================================================================
    .global proc_boundaries_α
    .global proc_boundaries_β
    .global proc_boundaries_γ
    .global proc_boundaries_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_boundaries_α_body:
xchain47_n0_α:
# IR_LIT_S
bb32_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain47_n1_α
 xchain47_n0_β:
 jmp xchain47_n4_α
.Lx48_0:
 .quad .Lx48_0_s
.Lx48_0_s:
 .string "minint = "
xchain47_n1_α:
# IR_LIT_F
bb33_α:
 mov qword ptr [r12 + 64], 7
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain47_n2_α
 xchain47_n1_β:
 jmp xchain47_n4_α
.Lx49_0:
 .quad 14118784831806504960
xchain47_n2_α:
bb34_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain47_n3_α
 xchain47_n2_β:
 jmp xchain47_n4_α
xchain47_n3_α:
bb35_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+112]
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [r12 + 120], rax
 jmp .Lx51_1
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "minint = "
.Lx51_1:
# marshal arg1 = nested producer-box slot [r12+80] -> [r12+128]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn52: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn52]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain47_n4_α
 jmp xchain47_n4_α
 xchain47_n3_β:
 jmp xchain47_n4_α
xchain47_n4_α:
# IR_LIT_S
bb36_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain47_n5_α
 xchain47_n4_β:
 jmp xchain47_n8_α
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "maxint = "
xchain47_n5_α:
# IR_LIT_F
bb37_α:
 mov qword ptr [r12 + 160], 7
 mov rax, qword ptr [rip + .Lx54_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain47_n6_α
 xchain47_n5_β:
 jmp xchain47_n8_α
.Lx54_0:
 .quad 4895412794951729152
xchain47_n6_α:
bb38_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain47_n7_α
 xchain47_n6_β:
 jmp xchain47_n8_α
xchain47_n7_α:
bb39_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+208]
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [r12 + 216], rax
 jmp .Lx56_1
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "maxint = "
.Lx56_1:
# marshal arg1 = nested producer-box slot [r12+176] -> [r12+224]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn57: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn57]
 lea rsi, [r12 + 208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain47_n8_α
 jmp xchain47_n8_α
 xchain47_n7_β:
 jmp xchain47_n8_α
xchain47_n8_α:
# IR_LIT_S
bb40_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain47_n9_α
 xchain47_n8_β:
 jmp xchain47_n12_α
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "-minint = "
xchain47_n9_α:
# IR_VAR
bb41_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain47_n10_α
 xchain47_n9_β:
 jmp xchain47_n12_α
xchain47_n10_α:
# IR_UNOP
bb42_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_num_neg@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain47_n11_α
 xchain47_n10_β:
 jmp xchain47_n12_α
xchain47_n11_α:
bb43_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+288]
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [r12 + 296], rax
 jmp .Lx62_1
.Lx62_0:
 .quad .Lx62_0_s
.Lx62_0_s:
 .string "-minint = "
.Lx62_1:
# marshal arg1 = nested producer-box slot [r12+256] -> [r12+304]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn63: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn63]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain47_n12_α
 jmp xchain47_n12_α
 xchain47_n11_β:
 jmp xchain47_n12_α
xchain47_n12_α:
# IR_LIT_S
bb44_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx64_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain47_n13_α
 xchain47_n12_β:
 jmp xchain47_n15_α
.Lx64_0:
 .quad .Lx64_0_s
.Lx64_0_s:
 .string "abs(min) = "
xchain47_n13_α:
bb45_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+352]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn66: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn66]
 lea rsi, [r12 + 352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain47_n15_α
 jmp xchain47_n14_α
 xchain47_n13_β:
 jmp xchain47_n15_α
xchain47_n14_α:
bb46_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+384]
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 392], rax
 jmp .Lx67_1
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "abs(min) = "
.Lx67_1:
# marshal arg0 = varslot [r12+16] -> [r12+416]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lcallfn68: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn68]
 lea rsi, [r12 + 416]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
  .section .rodata
  .Lrkfn69: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn69]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain47_n15_α
 jmp xchain47_n15_α
 xchain47_n14_β:
 jmp xchain47_n15_α
xchain47_n15_α:
# IR_LIT_S
bb47_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain47_n16_α
 xchain47_n15_β:
 jmp xchain47_n20_α
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "minint * -1 = "
xchain47_n16_α:
# IR_VAR
bb48_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain47_n17_α
 xchain47_n16_β:
 jmp xchain47_n20_α
xchain47_n17_α:
# IR_LIT_I
bb49_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain47_n18_α
 xchain47_n17_β:
 jmp xchain47_n20_α
.Lx73_0:
 .quad 18446744073709551615
xchain47_n18_α:
bb50_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain47_n20_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain47_n19_α
 xchain47_n18_β:
 jmp xchain47_n20_α
xchain47_n19_α:
bb51_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+496]
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [r12 + 504], rax
 jmp .Lx75_1
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
 .string "minint * -1 = "
.Lx75_1:
# marshal arg1 = nested producer-box slot [r12+464] -> [r12+512]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn76: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn76]
 lea rsi, [r12 + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain47_n20_α
 jmp xchain47_n20_α
 xchain47_n19_β:
 jmp xchain47_n20_α
xchain47_n20_α:
# IR_LIT_S
bb52_α:
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx77_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain47_n21_α
 xchain47_n20_β:
 jmp xchain47_n25_α
.Lx77_0:
 .quad .Lx77_0_s
.Lx77_0_s:
 .string "minint / -1 = "
xchain47_n21_α:
# IR_VAR
bb53_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain47_n22_α
 xchain47_n21_β:
 jmp xchain47_n25_α
xchain47_n22_α:
# IR_LIT_I
bb54_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx80_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain47_n23_α
 xchain47_n22_β:
 jmp xchain47_n25_α
.Lx80_0:
 .quad 18446744073709551615
xchain47_n23_α:
bb55_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 552]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain47_n25_α
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain47_n24_α
 xchain47_n23_β:
 jmp xchain47_n25_α
xchain47_n24_α:
bb56_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+592]
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [r12 + 600], rax
 jmp .Lx82_1
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "minint / -1 = "
.Lx82_1:
# marshal arg1 = nested producer-box slot [r12+560] -> [r12+608]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn83: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn83]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain47_n25_α
 jmp xchain47_n25_α
 xchain47_n24_β:
 jmp xchain47_n25_α
xchain47_n25_α:
# IR_LIT_S
bb57_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain47_n26_α
 xchain47_n25_β:
 jmp xchain47_n28_α
.Lx84_0:
 .quad .Lx84_0_s
.Lx84_0_s:
 .string "(2^32)^2 = "
xchain47_n26_α:
# IR_LIT_F
bb58_α:
 mov qword ptr [r12 + 640], 7
 mov rax, qword ptr [rip + .Lx85_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain47_n27_α
 xchain47_n26_β:
 jmp xchain47_n28_α
.Lx85_0:
 .quad 4895412794951729152
xchain47_n27_α:
bb59_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+672]
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx86_0]
 mov qword ptr [r12 + 680], rax
 jmp .Lx86_1
.Lx86_0:
 .quad .Lx86_0_s
.Lx86_0_s:
 .string "(2^32)^2 = "
.Lx86_1:
# marshal arg1 = LIT_F -> [r12+688]
 mov qword ptr [r12 + 688], 7
 movabs rax, 4895412794951729152
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn87: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn87]
 lea rsi, [r12 + 672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je xchain47_n28_α
 jmp xchain47_n28_α
 xchain47_n27_β:
 jmp xchain47_n28_α
xchain47_n28_α:
# IR_RETURN
bb60_α:
 mov rax, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_boundaries_γ
proc_boundaries_β:
jmp proc_boundaries_ω
proc_boundaries_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_boundaries_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_fact_α
proc_fact_α:
#=======================================================================================================================
    .global proc_fact_α
    .global proc_fact_β
    .global proc_fact_γ
    .global proc_fact_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_fact_α_body:
xchain89_n0_α:
# IR_LIT_I
bb61_α:
 mov qword ptr [r12 + 48], 6
 mov rax, qword ptr [rip + .Lx90_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain89_n1_α
 xchain89_n0_β:
 jmp xchain89_n2_α
.Lx90_0:
 .quad 1
xchain89_n1_α:
bb62_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain89_n2_α
 xchain89_n1_β:
 jmp xchain89_n2_α
xchain89_n2_α:
# IR_VAR
bb63_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain89_n3_α
 xchain89_n2_β:
 jmp xchain89_n5_β
xchain89_n3_α:
# IR_LIT_I
bb64_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx94_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain89_n4_α
 xchain89_n3_β:
 jmp xchain89_n5_β
.Lx94_0:
 .quad 2
xchain89_n4_α:
# IR_VAR
bb65_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain89_n5_α
 xchain89_n4_β:
 jmp xchain89_n5_β
xchain89_n5_α:
# IR_TO
bb66_α:
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 112], rax
.Lx98_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 24]
 cmp rax, rcx
 jg xchain89_n8_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain89_n6_α
 xchain89_n5_β:
 inc qword ptr [r12 + 112]
 jmp .Lx98_0
xchain89_n6_α:
bb67_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 104]
 imul rax, rcx
 mov qword ptr [r12 + 120], 6
 mov qword ptr [r12 + 128], rax
 jmp xchain89_n7_α
 xchain89_n6_β:
 jmp xchain89_n5_β
xchain89_n7_α:
bb68_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 jmp xchain89_n5_β
 xchain89_n7_β:
 jmp xchain89_n5_β
xchain89_n8_α:
# IR_EVERY
 jmp xchain89_n9_α
 xchain89_n8_β:
 jmp xchain89_n9_α
xchain89_n9_α:
# IR_VAR
bb70_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain89_n10_α
 xchain89_n9_β:
 jmp xchain89_n13_α
xchain89_n10_α:
# IR_LIT_S
bb71_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx104_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain89_n11_α
 xchain89_n10_β:
 jmp xchain89_n13_α
.Lx104_0:
 .quad .Lx104_0_s
.Lx104_0_s:
 .string "! = "
xchain89_n11_α:
# IR_VAR
bb72_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain89_n12_α
 xchain89_n11_β:
 jmp xchain89_n13_α
xchain89_n12_α:
bb73_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+184]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 192], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+200]
 mov qword ptr [r12 + 200], 1
 mov rax, qword ptr [rip + .Lx107_2]
 mov qword ptr [r12 + 208], rax
 jmp .Lx107_3
.Lx107_2:
 .quad .Lx107_2_s
.Lx107_2_s:
 .string "! = "
.Lx107_3:
# marshal arg2 = varslot [r12+32] -> [r12+216]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 216], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 224], rax
  .section .rodata
  .Lrkfn108: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn108]
 lea rsi, [r12 + 184]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 cmp eax, 99
 je xchain89_n13_α
 jmp xchain89_n13_α
 xchain89_n12_β:
 jmp xchain89_n13_α
xchain89_n13_α:
# IR_RETURN
bb74_α:
 mov rax, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_fact_γ
proc_fact_β:
jmp proc_fact_ω
proc_fact_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_fact_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_fib_α
proc_fib_α:
#=======================================================================================================================
    .global proc_fib_α
    .global proc_fib_β
    .global proc_fib_γ
    .global proc_fib_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_fib_α_body:
xchain110_n0_α:
# IR_LIT_I
bb75_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx111_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain110_n1_α
 xchain110_n0_β:
 jmp xchain110_n4_α
.Lx111_0:
 .quad 1
xchain110_n1_α:
bb76_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain110_n2_α
 xchain110_n1_β:
 jmp xchain110_n4_α
xchain110_n2_α:
bb77_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain110_n3_α
 xchain110_n2_β:
 jmp xchain110_n4_α
xchain110_n3_α:
bb78_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain110_n4_α
 xchain110_n3_β:
 jmp xchain110_n4_α
xchain110_n4_α:
# IR_LIT_I
bb79_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx115_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain110_n5_α
 xchain110_n4_β:
 jmp xchain110_n6_β
.Lx115_0:
 .quad 3
xchain110_n5_α:
# IR_VAR
bb80_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain110_n6_α
 xchain110_n5_β:
 jmp xchain110_n6_β
xchain110_n6_α:
# IR_TO
bb81_α:
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 192], rax
.Lx119_0:
 mov rax, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 24]
 cmp rax, rcx
 jg xchain110_n17_α
 mov qword ptr [r12 + 176], 6
 mov qword ptr [r12 + 184], rax
 jmp xchain110_n7_α
 xchain110_n6_β:
 inc qword ptr [r12 + 192]
 jmp .Lx119_0
xchain110_n7_α:
bb82_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 jmp xchain110_n8_α
 xchain110_n7_β:
 jmp xchain110_n6_β
xchain110_n8_α:
# IR_VAR
bb83_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain110_n9_α
 xchain110_n8_β:
 jmp xchain110_n12_α
xchain110_n9_α:
# IR_VAR
bb84_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain110_n10_α
 xchain110_n9_β:
 jmp xchain110_n12_α
xchain110_n10_α:
bb85_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 72]
 mov rcx, qword ptr [r12 + 56]
 add rax, rcx
 mov qword ptr [r12 + 216], 6
 mov qword ptr [r12 + 224], rax
 jmp xchain110_n11_α
 xchain110_n10_β:
 jmp xchain110_n12_α
xchain110_n11_α:
bb86_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 224]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 jmp xchain110_n12_α
 xchain110_n11_β:
 jmp xchain110_n12_α
xchain110_n12_α:
# IR_VAR
bb87_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain110_n13_α
 xchain110_n12_β:
 jmp xchain110_n14_α
xchain110_n13_α:
bb88_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], rdx
 jmp xchain110_n14_α
 xchain110_n13_β:
 jmp xchain110_n14_α
xchain110_n14_α:
# IR_VAR
bb89_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain110_n15_α
 xchain110_n14_β:
 jmp xchain110_n6_β
xchain110_n15_α:
bb90_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 264], rax
 mov qword ptr [r12 + 272], rdx
 jmp xchain110_n16_α
 xchain110_n15_β:
 jmp xchain110_n6_β
xchain110_n16_α:
jmp xchain110_n6_β
xchain110_n16_β:
jmp xchain110_n6_β
xchain110_n17_α:
# IR_EVERY
 jmp xchain110_n18_α
 xchain110_n17_β:
 jmp xchain110_n18_α
xchain110_n18_α:
# IR_LIT_S
bb92_α:
 mov qword ptr [r12 + 280], 1
 mov rax, qword ptr [rip + .Lx134_0]
 mov qword ptr [r12 + 288], rax
 jmp xchain110_n19_α
 xchain110_n18_β:
 jmp xchain110_n23_α
.Lx134_0:
 .quad .Lx134_0_s
.Lx134_0_s:
 .string "F("
xchain110_n19_α:
# IR_VAR
bb93_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain110_n20_α
 xchain110_n19_β:
 jmp xchain110_n23_α
xchain110_n20_α:
# IR_LIT_S
bb94_α:
 mov qword ptr [r12 + 296], 1
 mov rax, qword ptr [rip + .Lx137_0]
 mov qword ptr [r12 + 304], rax
 jmp xchain110_n21_α
 xchain110_n20_β:
 jmp xchain110_n23_α
.Lx137_0:
 .quad .Lx137_0_s
.Lx137_0_s:
 .string ") = "
xchain110_n21_α:
# IR_VAR
bb95_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain110_n22_α
 xchain110_n21_β:
 jmp xchain110_n23_α
xchain110_n22_α:
bb96_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+328]
 mov qword ptr [r12 + 328], 1
 mov rax, qword ptr [rip + .Lx140_0]
 mov qword ptr [r12 + 336], rax
 jmp .Lx140_1
.Lx140_0:
 .quad .Lx140_0_s
.Lx140_0_s:
 .string "F("
.Lx140_1:
# marshal arg1 = varslot [r12+16] -> [r12+344]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 344], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 352], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+360]
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx140_4]
 mov qword ptr [r12 + 368], rax
 jmp .Lx140_5
.Lx140_4:
 .quad .Lx140_4_s
.Lx140_4_s:
 .string ") = "
.Lx140_5:
# marshal arg3 = varslot [r12+32] -> [r12+376]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 376], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 384], rax
  .section .rodata
  .Lrkfn141: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn141]
 lea rsi, [r12 + 328]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], rdx
 cmp eax, 99
 je xchain110_n23_α
 jmp xchain110_n23_α
 xchain110_n22_β:
 jmp xchain110_n23_α
xchain110_n23_α:
# IR_RETURN
bb97_α:
 mov rax, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 320]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_fib_γ
proc_fib_β:
jmp proc_fib_ω
proc_fib_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_fib_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_power_α
proc_power_α:
#=======================================================================================================================
    .global proc_power_α
    .global proc_power_β
    .global proc_power_γ
    .global proc_power_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_power_α_body:
xchain143_n0_α:
# IR_VAR
bb98_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain143_n1_α
 xchain143_n0_β:
 jmp xchain143_n8_α
xchain143_n1_α:
# IR_LIT_S
bb99_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx146_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain143_n2_α
 xchain143_n1_β:
 jmp xchain143_n8_α
.Lx146_0:
 .quad .Lx146_0_s
.Lx146_0_s:
 .string " ^ "
xchain143_n2_α:
# IR_VAR
bb100_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain143_n3_α
 xchain143_n2_β:
 jmp xchain143_n8_α
xchain143_n3_α:
# IR_LIT_S
bb101_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx149_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain143_n4_α
 xchain143_n3_β:
 jmp xchain143_n8_α
.Lx149_0:
 .quad .Lx149_0_s
.Lx149_0_s:
 .string " = "
xchain143_n4_α:
# IR_VAR
bb102_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain143_n5_α
 xchain143_n4_β:
 jmp xchain143_n8_α
xchain143_n5_α:
# IR_VAR
bb103_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain143_n6_α
 xchain143_n5_β:
 jmp xchain143_n8_α
xchain143_n6_α:
bb104_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov r8d, 18
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain143_n8_α
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain143_n7_α
 xchain143_n6_β:
 jmp xchain143_n8_α
xchain143_n7_α:
bb105_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+112]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+128]
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx155_2]
 mov qword ptr [r12 + 136], rax
 jmp .Lx155_3
.Lx155_2:
 .quad .Lx155_2_s
.Lx155_2_s:
 .string " ^ "
.Lx155_3:
# marshal arg2 = varslot [r12+32] -> [r12+144]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 152], rax
# marshal arg3 = LIT_S (string REG-RO sealed in-band) -> [r12+160]
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx155_6]
 mov qword ptr [r12 + 168], rax
 jmp .Lx155_7
.Lx155_6:
 .quad .Lx155_6_s
.Lx155_6_s:
 .string " = "
.Lx155_7:
# marshal arg4 = nested producer-box slot [r12+80] -> [r12+176]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn156: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn156]
 lea rsi, [r12 + 112]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain143_n8_α
 jmp xchain143_n8_α
 xchain143_n7_β:
 jmp xchain143_n8_α
xchain143_n8_α:
# IR_RETURN
bb106_α:
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_power_γ
proc_power_β:
jmp proc_power_ω
proc_power_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_power_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_impower_α
proc_impower_α:
#=======================================================================================================================
    .global proc_impower_α
    .global proc_impower_β
    .global proc_impower_γ
    .global proc_impower_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_impower_α_body:
xchain158_n0_α:
# IR_VAR
bb107_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain158_n1_α
 xchain158_n0_β:
 jmp xchain158_n6_α
xchain158_n1_α:
# IR_LIT_S
bb108_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx161_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain158_n2_α
 xchain158_n1_β:
 jmp xchain158_n6_α
.Lx161_0:
 .quad .Lx161_0_s
.Lx161_0_s:
 .string " ^ "
xchain158_n2_α:
# IR_VAR
bb109_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain158_n3_α
 xchain158_n2_β:
 jmp xchain158_n6_α
xchain158_n3_α:
# IR_LIT_S
bb110_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx164_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain158_n4_α
 xchain158_n3_β:
 jmp xchain158_n6_α
.Lx164_0:
 .quad .Lx164_0_s
.Lx164_0_s:
 .string " = "
xchain158_n4_α:
bb111_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+96]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn166: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn166]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain158_n6_α
 jmp xchain158_n5_α
 xchain158_n4_β:
 jmp xchain158_n6_α
xchain158_n5_α:
bb112_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+128]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+144]
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx167_2]
 mov qword ptr [r12 + 152], rax
 jmp .Lx167_3
.Lx167_2:
 .quad .Lx167_2_s
.Lx167_2_s:
 .string " ^ "
.Lx167_3:
# marshal arg2 = varslot [r12+32] -> [r12+160]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 168], rax
# marshal arg3 = LIT_S (string REG-RO sealed in-band) -> [r12+176]
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx167_6]
 mov qword ptr [r12 + 184], rax
 jmp .Lx167_7
.Lx167_6:
 .quad .Lx167_6_s
.Lx167_6_s:
 .string " = "
.Lx167_7:
# marshal arg0 = varslot [r12+16] -> [r12+208]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lcallfn168: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn168]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
  .section .rodata
  .Lrkfn169: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn169]
 lea rsi, [r12 + 128]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain158_n6_α
 jmp xchain158_n6_α
 xchain158_n5_β:
 jmp xchain158_n6_α
xchain158_n6_α:
# IR_RETURN
bb113_α:
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_impower_γ
proc_impower_β:
jmp proc_impower_ω
proc_impower_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_impower_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_minpower_α
proc_minpower_α:
#=======================================================================================================================
    .global proc_minpower_α
    .global proc_minpower_β
    .global proc_minpower_γ
    .global proc_minpower_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_minpower_α_body:
xchain171_n0_α:
# IR_LIT_F
bb114_α:
 mov qword ptr [r12 + 48], 7
 mov rax, qword ptr [rip + .Lx172_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain171_n1_α
 xchain171_n0_β:
 jmp xchain171_n4_α
.Lx172_0:
 .quad 4890909195324358656
xchain171_n1_α:
# IR_VAR
bb115_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain171_n2_α
 xchain171_n1_β:
 jmp xchain171_n4_α
xchain171_n2_α:
bb116_α:
# BOX IR_CALL seq(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_I -> [r12+80]
 mov qword ptr [r12 + 80], 6
 movabs rax, 1
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lbynamefn176: .string "seq"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn176]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain171_n4_α
 jmp xchain171_n3_α
xchain171_n2_β:
 jmp xchain171_n4_α
xchain171_n3_α:
bb117_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain171_n5_α
 xchain171_n3_β:
 jmp xchain171_n4_α
xchain171_n4_α:
bb118_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+128]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = LIT_I -> [r12+144]
 mov qword ptr [r12 + 144], 6
 movabs rax, 2
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn179: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn179]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_minpower_ω
 jmp xchain171_n6_α
 xchain171_n4_β:
 jmp proc_minpower_ω
xchain171_n5_α:
bb119_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 mov r8d, 18
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain171_n4_α
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain171_n7_α
 xchain171_n5_β:
 jmp xchain171_n4_α
xchain171_n6_α:
# IR_LIT_S
bb120_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx181_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain171_n8_α
 xchain171_n6_β:
 jmp proc_minpower_ω
.Lx181_0:
 .quad .Lx181_0_s
.Lx181_0_s:
 .string " ^"
xchain171_n7_α:
jmp xbinop182_lhs_done
xbinop182_lhs_done:
jmp xbinop182_rhs_done
xbinop182_rhs_done:
bb121_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 mov r8d, 6
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain171_n4_α
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 200], rax
 jmp xchain171_n4_α
 xchain171_n7_β:
 jmp xchain171_n4_α
xchain171_n8_α:
bb122_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+224]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = LIT_I -> [r12+240]
 mov qword ptr [r12 + 240], 6
 movabs rax, 3
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn185: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn185]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je proc_minpower_ω
 jmp xchain171_n9_α
 xchain171_n8_β:
 jmp proc_minpower_ω
xchain171_n9_α:
# IR_LIT_S
bb123_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain171_n10_α
 xchain171_n9_β:
 jmp proc_minpower_ω
.Lx186_0:
 .quad .Lx186_0_s
.Lx186_0_s:
 .string " ="
xchain171_n10_α:
bb124_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+288]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 296], rax
# marshal arg1 = LIT_I -> [r12+304]
 mov qword ptr [r12 + 304], 6
 movabs rax, 22
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn188: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn188]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je proc_minpower_ω
 jmp xchain171_n11_α
 xchain171_n10_β:
 jmp proc_minpower_ω
xchain171_n11_α:
bb125_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+416]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = LIT_I -> [r12+432]
 mov qword ptr [r12 + 432], 6
 movabs rax, 2
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lcallfn190: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn190]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+352]
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx189_2]
 mov qword ptr [r12 + 360], rax
 jmp .Lx189_3
.Lx189_2:
 .quad .Lx189_2_s
.Lx189_2_s:
 .string " ^"
.Lx189_3:
# marshal arg0 = varslot [r12+32] -> [r12+448]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 456], rax
# marshal arg1 = LIT_I -> [r12+464]
 mov qword ptr [r12 + 464], 6
 movabs rax, 3
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lcallfn191: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn191]
 lea rsi, [r12 + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
# marshal arg3 = LIT_S (string REG-RO sealed in-band) -> [r12+384]
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx189_6]
 mov qword ptr [r12 + 392], rax
 jmp .Lx189_7
.Lx189_6:
 .quad .Lx189_6_s
.Lx189_6_s:
 .string " ="
.Lx189_7:
# marshal arg0 = varslot [r12+16] -> [r12+480]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 488], rax
# marshal arg1 = LIT_I -> [r12+496]
 mov qword ptr [r12 + 496], 6
 movabs rax, 22
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lcallfn192: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn192]
 lea rsi, [r12 + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
  .section .rodata
  .Lrkfn193: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn193]
 lea rsi, [r12 + 336]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je proc_minpower_ω
 jmp proc_minpower_γ
 xchain171_n11_β:
 jmp proc_minpower_ω
proc_minpower_β:
jmp proc_minpower_ω
proc_minpower_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_minpower_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_bigexp_α
proc_bigexp_α:
#=======================================================================================================================
    .global proc_bigexp_α
    .global proc_bigexp_β
    .global proc_bigexp_γ
    .global proc_bigexp_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_bigexp_α_body:
xchain194_n0_α:
# IR_LIT_I
bb126_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx195_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain194_n1_α
 xchain194_n0_β:
 jmp xchain194_n2_α
.Lx195_0:
 .quad 18446744073709551615
xchain194_n1_α:
bb127_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain194_n2_α
 xchain194_n1_β:
 jmp xchain194_n2_α
xchain194_n2_α:
# IR_LIT_S
bb128_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx197_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain194_n3_α
 xchain194_n2_β:
 jmp xchain194_n5_α
.Lx197_0:
 .quad .Lx197_0_s
.Lx197_0_s:
 .string "       v = "
xchain194_n3_α:
# IR_VAR
bb129_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain194_n4_α
 xchain194_n3_β:
 jmp xchain194_n5_α
xchain194_n4_α:
bb130_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+128]
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx200_0]
 mov qword ptr [r12 + 136], rax
 jmp .Lx200_1
.Lx200_0:
 .quad .Lx200_0_s
.Lx200_0_s:
 .string "       v = "
.Lx200_1:
# marshal arg1 = varslot [r12+16] -> [r12+144]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn201: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn201]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain194_n5_α
 jmp xchain194_n5_α
 xchain194_n4_β:
 jmp xchain194_n5_α
xchain194_n5_α:
# IR_LIT_I
bb131_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain194_n6_α
 xchain194_n5_β:
 jmp proc_bigexp_ω
.Lx202_0:
 .quad 18446744073709551614
xchain194_n6_α:
# IR_LIT_I
bb132_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx203_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain194_n7_α
 xchain194_n6_β:
 jmp proc_bigexp_ω
.Lx203_0:
 .quad 2
xchain194_n7_α:
xaltg204_a0_start:
# IR_TO
bb133_α:
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 232], rax
.Lx206_0:
 mov rax, qword ptr [r12 + 232]
 mov rcx, qword ptr [r12 + 184]
 cmp rax, rcx
 jg xaltg204_a1_start
 mov qword ptr [r12 + 216], 6
 mov qword ptr [r12 + 224], rax
 jmp xaltg204_a0_succ
 xaltg204_a0_beta:
 inc qword ptr [r12 + 232]
 jmp .Lx206_0
xaltg204_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], 1
jmp xchain194_n8_α
xaltg204_a1_start:
xaltg204_a1_succ:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
jmp xchain194_n8_α
xchain194_n7_β:
jmp xchain194_n15_α
xchain194_n8_α:
bb135_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain194_n9_α
 xchain194_n8_β:
 jmp xchain194_n13_β
xchain194_n9_α:
bb136_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+48] -> [r12+272]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = LIT_I -> [r12+288]
 mov qword ptr [r12 + 288], 6
 movabs rax, 4
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn212: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn212]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain194_n7_β
 jmp xchain194_n10_α
 xchain194_n9_β:
 jmp xchain194_n7_β
xchain194_n10_α:
# IR_LIT_S
bb137_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain194_n11_α
 xchain194_n10_β:
 jmp xchain194_n7_β
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string " ^ v = "
xchain194_n11_α:
# IR_VAR
bb138_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain194_n12_α
 xchain194_n11_β:
 jmp proc_bigexp_ω
xchain194_n12_α:
# IR_VAR
bb139_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain194_n13_α
 xchain194_n12_β:
 jmp proc_bigexp_ω
xchain194_n13_α:
xaltg218_a0_start:
xaltg218_a0_succ:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
jmp xchain194_n14_α
xaltg218_a1_start:
xaltg218_a1_succ:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
jmp xchain194_n14_α
xchain194_n13_β:
jmp xchain194_n7_β
xchain194_n14_α:
bb142_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+48] -> [r12+360]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 360], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 368], rax
# marshal arg1 = varslot [r12+16] -> [r12+376]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 376], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 384], rax
# marshal arg2 = nested producer-box slot [r12+320] -> [r12+392]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 392], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 400], rax
  .section .rodata
  .Lrkfn224: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn224]
 lea rsi, [r12 + 360]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], rdx
 cmp eax, 99
 je xchain194_n7_β
 jmp xchain194_n7_β
 xchain194_n14_β:
 jmp xchain194_n7_β
xchain194_n15_α:
# IR_EVERY
 jmp xchain194_n16_α
 xchain194_n15_β:
 jmp xchain194_n16_α
xchain194_n16_α:
# IR_LIT_I
bb144_α:
 mov qword ptr [r12 + 408], 6
 mov rax, qword ptr [rip + .Lx226_0]
 mov qword ptr [r12 + 416], rax
 jmp xchain194_n17_α
 xchain194_n16_β:
 jmp xchain194_n18_α
.Lx226_0:
 .quad 0
xchain194_n17_α:
bb145_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 416]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 424], rax
 mov qword ptr [r12 + 432], rdx
 jmp xchain194_n18_α
 xchain194_n17_β:
 jmp xchain194_n18_α
xchain194_n18_α:
# IR_RETURN
bb146_α:
 mov rax, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 432]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_bigexp_γ
proc_bigexp_β:
jmp proc_bigexp_ω
proc_bigexp_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_bigexp_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_mersenne_α
proc_mersenne_α:
#=======================================================================================================================
    .global proc_mersenne_α
    .global proc_mersenne_β
    .global proc_mersenne_γ
    .global proc_mersenne_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_mersenne_α_body:
xchain229_n0_α:
# IR_LIT_S
bb147_α:
 mov qword ptr [r12 + 32], 1
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain229_n1_α
 xchain229_n0_β:
 jmp xchain229_n7_α
.Lx230_0:
 .quad .Lx230_0_s
.Lx230_0_s:
 .string "M("
xchain229_n1_α:
# IR_VAR
bb148_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain229_n2_α
 xchain229_n1_β:
 jmp xchain229_n7_α
xchain229_n2_α:
# IR_LIT_S
bb149_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx233_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain229_n3_α
 xchain229_n2_β:
 jmp xchain229_n7_α
.Lx233_0:
 .quad .Lx233_0_s
.Lx233_0_s:
 .string ") = "
xchain229_n3_α:
# IR_LIT_I
bb150_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx234_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain229_n4_α
 xchain229_n3_β:
 jmp xchain229_n7_α
.Lx234_0:
 .quad 2
xchain229_n4_α:
# IR_VAR
bb151_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain229_n5_α
 xchain229_n4_β:
 jmp xchain229_n7_α
xchain229_n5_α:
bb152_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 18
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain229_n7_α
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain229_n6_α
 xchain229_n5_β:
 jmp xchain229_n7_α
xchain229_n6_α:
# IR_LIT_I
bb153_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx238_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain229_n8_α
 xchain229_n6_β:
 jmp xchain229_n7_α
.Lx238_0:
 .quad 1
xchain229_n7_α:
# IR_RETURN
bb154_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_mersenne_γ
xchain229_n8_α:
bb155_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 88]
 mov rcx, qword ptr [r12 + 104]
 sub rax, rcx
 mov qword ptr [r12 + 112], 6
 mov qword ptr [r12 + 120], rax
 jmp xchain229_n9_α
 xchain229_n8_β:
 jmp xchain229_n7_α
xchain229_n9_α:
bb156_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+144]
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [r12 + 152], rax
 jmp .Lx241_1
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "M("
.Lx241_1:
# marshal arg1 = varslot [r12+16] -> [r12+160]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 168], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+176]
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx241_4]
 mov qword ptr [r12 + 184], rax
 jmp .Lx241_5
.Lx241_4:
 .quad .Lx241_4_s
.Lx241_4_s:
 .string ") = "
.Lx241_5:
# marshal arg3 = nested producer-box slot [r12+112] -> [r12+192]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn242: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn242]
 lea rsi, [r12 + 144]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain229_n7_α
 jmp xchain229_n7_α
 xchain229_n9_β:
 jmp xchain229_n7_α
proc_mersenne_β:
jmp proc_mersenne_ω
proc_mersenne_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_mersenne_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_perfect_α
proc_perfect_α:
#=======================================================================================================================
    .global proc_perfect_α
    .global proc_perfect_β
    .global proc_perfect_γ
    .global proc_perfect_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_perfect_α_body:
xchain243_n0_α:
# IR_LIT_S
bb157_α:
 mov qword ptr [r12 + 32], 1
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain243_n1_α
 xchain243_n0_β:
 jmp xchain243_n7_α
.Lx244_0:
 .quad .Lx244_0_s
.Lx244_0_s:
 .string "P("
xchain243_n1_α:
# IR_VAR
bb158_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain243_n2_α
 xchain243_n1_β:
 jmp xchain243_n7_α
xchain243_n2_α:
# IR_LIT_S
bb159_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain243_n3_α
 xchain243_n2_β:
 jmp xchain243_n7_α
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string ") = "
xchain243_n3_α:
# IR_LIT_I
bb160_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx248_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain243_n4_α
 xchain243_n3_β:
 jmp xchain243_n7_α
.Lx248_0:
 .quad 2
xchain243_n4_α:
# IR_VAR
bb161_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain243_n5_α
 xchain243_n4_β:
 jmp xchain243_n7_α
xchain243_n5_α:
bb162_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 18
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain243_n7_α
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain243_n6_α
 xchain243_n5_β:
 jmp xchain243_n7_α
xchain243_n6_α:
# IR_LIT_I
bb163_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain243_n8_α
 xchain243_n6_β:
 jmp xchain243_n7_α
.Lx252_0:
 .quad 1
xchain243_n7_α:
# IR_RETURN
bb164_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_perfect_γ
xchain243_n8_α:
bb165_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 88]
 mov rcx, qword ptr [r12 + 104]
 sub rax, rcx
 mov qword ptr [r12 + 112], 6
 mov qword ptr [r12 + 120], rax
 jmp xchain243_n9_α
 xchain243_n8_β:
 jmp xchain243_n7_α
xchain243_n9_α:
# IR_LIT_I
bb166_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain243_n10_α
 xchain243_n9_β:
 jmp xchain243_n7_α
.Lx255_0:
 .quad 2
xchain243_n10_α:
# IR_VAR
bb167_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain243_n11_α
 xchain243_n10_β:
 jmp xchain243_n7_α
xchain243_n11_α:
# IR_LIT_I
bb168_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx258_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain243_n12_α
 xchain243_n11_β:
 jmp xchain243_n7_α
.Lx258_0:
 .quad 1
xchain243_n12_α:
bb169_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 152]
 sub rax, rcx
 mov qword ptr [r12 + 160], 6
 mov qword ptr [r12 + 168], rax
 jmp xchain243_n13_α
 xchain243_n12_β:
 jmp xchain243_n7_α
xchain243_n13_α:
bb170_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 mov r8d, 18
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain243_n7_α
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain243_n14_α
 xchain243_n13_β:
 jmp xchain243_n7_α
xchain243_n14_α:
bb171_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 120]
 mov rcx, qword ptr [r12 + 184]
 imul rax, rcx
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
 jmp xchain243_n15_α
 xchain243_n14_β:
 jmp xchain243_n7_α
xchain243_n15_α:
bb172_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+224]
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx262_0]
 mov qword ptr [r12 + 232], rax
 jmp .Lx262_1
.Lx262_0:
 .quad .Lx262_0_s
.Lx262_0_s:
 .string "P("
.Lx262_1:
# marshal arg1 = varslot [r12+16] -> [r12+240]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx262_4]
 mov qword ptr [r12 + 264], rax
 jmp .Lx262_5
.Lx262_4:
 .quad .Lx262_4_s
.Lx262_4_s:
 .string ") = "
.Lx262_5:
# marshal arg3 = nested producer-box slot [r12+192] -> [r12+272]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn263: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn263]
 lea rsi, [r12 + 224]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain243_n7_α
 jmp xchain243_n7_α
 xchain243_n15_β:
 jmp xchain243_n7_α
proc_perfect_β:
jmp proc_perfect_ω
proc_perfect_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_perfect_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_tmul_α
proc_tmul_α:
#=======================================================================================================================
    .global proc_tmul_α
    .global proc_tmul_β
    .global proc_tmul_γ
    .global proc_tmul_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_tmul_α_body:
xchain264_n0_α:
# IR_LIT_I
bb173_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx265_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain264_n1_α
 xchain264_n0_β:
 jmp xchain264_n2_α
.Lx265_0:
 .quad 1
xchain264_n1_α:
bb174_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain264_n2_α
 xchain264_n1_β:
 jmp xchain264_n2_α
xchain264_n2_α:
# IR_LIT_I
bb175_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx267_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain264_n3_α
 xchain264_n2_β:
 jmp xchain264_n4_α
.Lx267_0:
 .quad 0
xchain264_n3_α:
bb176_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain264_n4_α
 xchain264_n3_β:
 jmp xchain264_n4_α
xchain264_n4_α:
# IR_VAR
bb177_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain264_n5_α
 xchain264_n4_β:
 jmp xchain264_n8_α
xchain264_n5_α:
# IR_LIT_F
bb178_α:
 mov qword ptr [r12 + 192], 7
 mov rax, qword ptr [rip + .Lx271_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain264_n6_α
 xchain264_n5_β:
 jmp xchain264_n8_α
.Lx271_0:
 .quad 4981134201117475473
xchain264_n6_α:
jmp xbinop272_lhs_done
xbinop272_lhs_done:
jmp xbinop272_rhs_done
xbinop272_rhs_done:
bb179_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain264_n8_α
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 216], rax
 jmp xchain264_n7_α
 xchain264_n6_β:
 jmp xchain264_n8_α
xchain264_n7_α:
# IR_VAR
bb180_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain264_n9_α
 xchain264_n7_β:
 jmp xchain264_n14_α
xchain264_n8_α:
xchain264_n8_β:
jmp xchain264_n10_α
jmp xchain264_n10_α
xchain264_n9_α:
# IR_LIT_I
bb181_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx276_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain264_n11_α
 xchain264_n9_β:
 jmp xchain264_n14_α
.Lx276_0:
 .quad 1
xchain264_n10_α:
# IR_VAR
bb182_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain264_n12_α
 xchain264_n10_β:
 jmp xchain264_n23_α
xchain264_n11_α:
bb183_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 56]
 mov rcx, qword ptr [r12 + 232]
 add rax, rcx
 mov qword ptr [r12 + 240], 6
 mov qword ptr [r12 + 248], rax
 jmp xchain264_n13_α
 xchain264_n11_β:
 jmp xchain264_n14_α
xchain264_n12_α:
# IR_LIT_S
bb184_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx280_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain264_n15_α
 xchain264_n12_β:
 jmp xchain264_n23_α
.Lx280_0:
 .quad .Lx280_0_s
.Lx280_0_s:
 .string " ^ "
xchain264_n13_α:
bb185_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain264_n14_α
 xchain264_n13_β:
 jmp xchain264_n14_α
xchain264_n14_α:
# IR_VAR
bb186_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain264_n16_α
 xchain264_n14_β:
 jmp xchain264_n18_α
xchain264_n15_α:
# IR_VAR
bb187_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain264_n17_α
 xchain264_n15_β:
 jmp xchain264_n23_α
xchain264_n16_α:
bb188_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain264_n18_α
 xchain264_n16_β:
 jmp xchain264_n18_α
xchain264_n17_α:
# IR_LIT_S
bb189_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx287_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain264_n19_α
 xchain264_n17_β:
 jmp xchain264_n23_α
.Lx287_0:
 .quad .Lx287_0_s
.Lx287_0_s:
 .string " = "
xchain264_n18_α:
# IR_VAR
bb190_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain264_n20_α
 xchain264_n18_β:
 jmp xchain264_n25_α
xchain264_n19_α:
# IR_VAR
bb191_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain264_n21_α
 xchain264_n19_β:
 jmp xchain264_n23_α
xchain264_n20_α:
# IR_VAR
bb192_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain264_n22_α
 xchain264_n20_β:
 jmp xchain264_n25_α
xchain264_n21_α:
bb193_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+336]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+352]
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx294_2]
 mov qword ptr [r12 + 360], rax
 jmp .Lx294_3
.Lx294_2:
 .quad .Lx294_2_s
.Lx294_2_s:
 .string " ^ "
.Lx294_3:
# marshal arg2 = varslot [r12+48] -> [r12+368]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 376], rax
# marshal arg3 = LIT_S (string REG-RO sealed in-band) -> [r12+384]
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx294_6]
 mov qword ptr [r12 + 392], rax
 jmp .Lx294_7
.Lx294_6:
 .quad .Lx294_6_s
.Lx294_6_s:
 .string " = "
.Lx294_7:
# marshal arg4 = varslot [r12+32] -> [r12+400]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn295: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn295]
 lea rsi, [r12 + 336]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain264_n23_α
 jmp xchain264_n23_α
 xchain264_n21_β:
 jmp xchain264_n23_α
xchain264_n22_α:
bb194_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 24]
 imul rax, rcx
 mov qword ptr [r12 + 416], 6
 mov qword ptr [r12 + 424], rax
 jmp xchain264_n24_α
 xchain264_n22_β:
 jmp xchain264_n25_α
xchain264_n23_α:
# IR_RETURN
bb195_α:
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tmul_γ
xchain264_n24_α:
bb196_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain264_n25_α
 xchain264_n24_β:
 jmp xchain264_n25_α
xchain264_n25_α:
# IR_VAR
bb197_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain264_n26_α
 xchain264_n25_β:
 jmp xchain264_n29_α
xchain264_n26_α:
# IR_VAR
bb198_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain264_n27_α
 xchain264_n26_β:
 jmp xchain264_n29_α
xchain264_n27_α:
bb199_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 72]
 cqo
 idiv rcx
 mov qword ptr [r12 + 448], 6
 mov qword ptr [r12 + 456], rax
 jmp xchain264_n28_α
 xchain264_n27_β:
 jmp xchain264_n29_α
xchain264_n28_α:
bb200_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain264_n29_α
 xchain264_n28_β:
 jmp xchain264_n29_α
xchain264_n29_α:
bb201_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+496]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn306: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn306]
 lea rsi, [r12 + 496]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain264_n31_α
 jmp xchain264_n30_α
 xchain264_n29_β:
 jmp xchain264_n31_α
xchain264_n30_α:
bb202_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+64] -> [r12+528]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn308: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn308]
 lea rsi, [r12 + 528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain264_n31_α
 jmp xchain264_n32_α
 xchain264_n30_β:
 jmp xchain264_n31_α
xchain264_n31_α:
bb203_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+112] -> [r12+560]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn310: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn310]
 lea rsi, [r12 + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain264_n34_α
 jmp xchain264_n33_α
 xchain264_n31_β:
 jmp xchain264_n34_α
xchain264_n32_α:
bb204_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 488]
 mov rcx, qword ptr [r12 + 520]
 cqo
 idiv rcx
 mov qword ptr [r12 + 576], 6
 mov qword ptr [r12 + 584], rax
 jmp xchain264_n35_α
 xchain264_n32_β:
 jmp xchain264_n31_α
xchain264_n33_α:
bb205_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain264_n34_α
 xchain264_n33_β:
 jmp xchain264_n34_α
xchain264_n34_α:
# IR_VAR
bb206_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xchain264_n36_α
 xchain264_n34_β:
 jmp xchain264_n39_α
xchain264_n35_α:
bb207_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain264_n31_α
 xchain264_n35_β:
 jmp xchain264_n31_α
xchain264_n36_α:
# IR_VAR
bb208_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain264_n37_α
 xchain264_n36_β:
 jmp xchain264_n39_α
xchain264_n37_α:
bb209_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 88]
 mov rcx, qword ptr [r12 + 24]
 cmp rax, rcx
 jne xchain264_n39_α
 mov rcx, qword ptr [r12 + 16]
 mov qword ptr [r12 + 624], rcx
 mov rcx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 632], rcx
 jmp xchain264_n38_α
 xchain264_n37_β:
 jmp xchain264_n39_α
xchain264_n38_α:
# IR_VAR
bb210_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 104], rax
 jmp xchain264_n40_α
 xchain264_n38_β:
 jmp xchain264_n39_α
xchain264_n39_α:
# IR_NOT
bb211_α:
 mov qword ptr [r12 + 640], 0
 mov qword ptr [r12 + 648], 0
 jmp xchain264_n41_α
 xchain264_n39_β:
 jmp xchain264_n4_α
xchain264_n40_α:
# IR_LIT_F
bb212_α:
 mov qword ptr [r12 + 656], 7
 mov rax, qword ptr [rip + .Lx322_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain264_n42_α
 xchain264_n40_β:
 jmp xchain264_n39_α
.Lx322_0:
 .quad 4397347889687374747
xchain264_n41_α:
# IR_VAR
bb213_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain264_n43_α
 xchain264_n41_β:
 jmp xchain264_n4_α
xchain264_n42_α:
jmp xbinop325_lhs_done
xbinop325_lhs_done:
jmp xbinop325_rhs_done
xbinop325_rhs_done:
bb214_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 656]
 mov rcx, qword ptr [r12 + 664]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain264_n39_α
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 680], rax
 jmp xchain264_n44_α
 xchain264_n42_β:
 jmp xchain264_n39_α
xchain264_n43_α:
# IR_LIT_S
bb215_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx327_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain264_n45_α
 xchain264_n43_β:
 jmp xchain264_n4_α
.Lx327_0:
 .quad .Lx327_0_s
.Lx327_0_s:
 .string " ^ "
xchain264_n44_α:
jmp xchain264_n4_α
xchain264_n44_β:
jmp xchain264_n39_α
xchain264_n45_α:
# IR_VAR
bb216_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain264_n46_α
 xchain264_n45_β:
 jmp xchain264_n4_α
xchain264_n46_α:
# IR_LIT_S
bb217_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx330_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain264_n47_α
 xchain264_n46_β:
 jmp xchain264_n4_α
.Lx330_0:
 .quad .Lx330_0_s
.Lx330_0_s:
 .string " = "
xchain264_n47_α:
# IR_VAR
bb218_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain264_n48_α
 xchain264_n47_β:
 jmp xchain264_n4_α
xchain264_n48_α:
# IR_LIT_S
bb219_α:
 mov qword ptr [r12 + 720], 1
 mov rax, qword ptr [rip + .Lx333_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain264_n49_α
 xchain264_n48_β:
 jmp xchain264_n4_α
.Lx333_0:
 .quad .Lx333_0_s
.Lx333_0_s:
 .string "\td="
xchain264_n49_α:
# IR_VAR
bb220_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xchain264_n50_α
 xchain264_n49_β:
 jmp xchain264_n4_α
xchain264_n50_α:
# IR_LIT_S
bb221_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx336_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain264_n51_α
 xchain264_n50_β:
 jmp xchain264_n4_α
.Lx336_0:
 .quad .Lx336_0_s
.Lx336_0_s:
 .string "\te="
xchain264_n51_α:
# IR_VAR
bb222_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 120], rax
 jmp xchain264_n52_α
 xchain264_n51_β:
 jmp xchain264_n4_α
xchain264_n52_α:
# IR_LIT_S
bb223_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx339_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain264_n53_α
 xchain264_n52_β:
 jmp xchain264_n4_α
.Lx339_0:
 .quad .Lx339_0_s
.Lx339_0_s:
 .string "\terr="
xchain264_n53_α:
# IR_VAR
bb224_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 104], rax
 jmp xchain264_n54_α
 xchain264_n53_β:
 jmp xchain264_n4_α
xchain264_n54_α:
bb225_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+784]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 792], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+800]
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx342_2]
 mov qword ptr [r12 + 808], rax
 jmp .Lx342_3
.Lx342_2:
 .quad .Lx342_2_s
.Lx342_2_s:
 .string " ^ "
.Lx342_3:
# marshal arg2 = varslot [r12+48] -> [r12+816]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 824], rax
# marshal arg3 = LIT_S (string REG-RO sealed in-band) -> [r12+832]
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx342_6]
 mov qword ptr [r12 + 840], rax
 jmp .Lx342_7
.Lx342_6:
 .quad .Lx342_6_s
.Lx342_6_s:
 .string " = "
.Lx342_7:
# marshal arg4 = varslot [r12+32] -> [r12+848]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 856], rax
# marshal arg5 = LIT_S (string REG-RO sealed in-band) -> [r12+864]
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx342_10]
 mov qword ptr [r12 + 872], rax
 jmp .Lx342_11
.Lx342_10:
 .quad .Lx342_10_s
.Lx342_10_s:
 .string "\td="
.Lx342_11:
# marshal arg6 = varslot [r12+80] -> [r12+880]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 888], rax
# marshal arg7 = LIT_S (string REG-RO sealed in-band) -> [r12+896]
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx342_14]
 mov qword ptr [r12 + 904], rax
 jmp .Lx342_15
.Lx342_14:
 .quad .Lx342_14_s
.Lx342_14_s:
 .string "\te="
.Lx342_15:
# marshal arg8 = varslot [r12+112] -> [r12+912]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 920], rax
# marshal arg9 = LIT_S (string REG-RO sealed in-band) -> [r12+928]
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx342_18]
 mov qword ptr [r12 + 936], rax
 jmp .Lx342_19
.Lx342_18:
 .quad .Lx342_18_s
.Lx342_18_s:
 .string "\terr="
.Lx342_19:
# marshal arg10 = varslot [r12+96] -> [r12+944]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lrkfn343: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn343]
 lea rsi, [r12 + 784]
 mov edx, 11
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain264_n4_α
 jmp xchain264_n55_α
 xchain264_n54_β:
 jmp xchain264_n4_α
xchain264_n55_α:
jmp xchain264_n4_α
xchain264_n55_β:
jmp xchain264_n4_α
proc_tmul_β:
jmp proc_tmul_ω
proc_tmul_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_tmul_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_conv_α
proc_conv_α:
#=======================================================================================================================
    .global proc_conv_α
    .global proc_conv_β
    .global proc_conv_γ
    .global proc_conv_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_conv_α_body:
xchain344_n0_α:
bb226_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+128]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn346: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn346]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain344_n2_α
 jmp xchain344_n1_α
 xchain344_n0_β:
 jmp xchain344_n2_α
xchain344_n1_α:
bb227_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain344_n2_α
 xchain344_n1_β:
 jmp xchain344_n2_α
xchain344_n2_α:
bb228_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+176]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn349: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn349]
 lea rsi, [r12 + 176]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain344_n4_α
 jmp xchain344_n3_α
 xchain344_n2_β:
 jmp xchain344_n4_α
xchain344_n3_α:
bb229_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain344_n4_α
 xchain344_n3_β:
 jmp xchain344_n4_α
xchain344_n4_α:
# IR_VAR
bb230_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain344_n5_α
 xchain344_n4_β:
 jmp xchain344_n8_α
xchain344_n5_α:
# IR_VAR
bb231_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain344_n6_α
 xchain344_n5_β:
 jmp xchain344_n8_α
xchain344_n6_α:
bb232_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 56]
 mov rcx, qword ptr [r12 + 24]
 cmp rax, rcx
 je xchain344_n8_α
 mov rcx, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rcx
 mov rcx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rcx
 jmp xchain344_n7_α
 xchain344_n6_β:
 jmp xchain344_n8_α
xchain344_n7_α:
# IR_LIT_S
bb233_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx356_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain344_n9_α
 xchain344_n7_β:
 jmp xchain344_n24_α
.Lx356_0:
 .quad .Lx356_0_s
.Lx356_0_s:
 .string "str conv err: n="
xchain344_n8_α:
bb234_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+256]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn358: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn358]
 lea rsi, [r12 + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain344_n11_α
 jmp xchain344_n10_α
 xchain344_n8_β:
 jmp xchain344_n11_α
xchain344_n9_α:
# IR_VAR
bb235_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain344_n12_α
 xchain344_n9_β:
 jmp xchain344_n24_α
xchain344_n10_α:
bb236_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain344_n11_α
 xchain344_n10_β:
 jmp xchain344_n11_α
xchain344_n11_α:
bb237_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+64] -> [r12+304]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn363: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn363]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain344_n14_α
 jmp xchain344_n13_α
 xchain344_n11_β:
 jmp xchain344_n14_α
xchain344_n12_α:
# IR_LIT_S
bb238_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx364_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain344_n15_α
 xchain344_n12_β:
 jmp xchain344_n24_α
.Lx364_0:
 .quad .Lx364_0_s
.Lx364_0_s:
 .string " sn="
xchain344_n13_α:
bb239_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain344_n14_α
 xchain344_n13_β:
 jmp xchain344_n14_α
xchain344_n14_α:
# IR_VAR
bb240_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain344_n16_α
 xchain344_n14_β:
 jmp xchain344_n21_α
xchain344_n15_α:
# IR_VAR
bb241_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain344_n17_α
 xchain344_n15_β:
 jmp xchain344_n24_α
xchain344_n16_α:
# IR_VAR
bb242_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain344_n18_α
 xchain344_n16_β:
 jmp xchain344_n21_α
xchain344_n17_α:
# IR_LIT_S
bb243_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx372_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain344_n19_α
 xchain344_n17_β:
 jmp xchain344_n24_α
.Lx372_0:
 .quad .Lx372_0_s
.Lx372_0_s:
 .string " in="
xchain344_n18_α:
bb244_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 56]
 sub rax, rcx
 mov qword ptr [r12 + 368], 6
 mov qword ptr [r12 + 376], rax
 jmp xchain344_n20_α
 xchain344_n18_β:
 jmp xchain344_n21_α
xchain344_n19_α:
# IR_VAR
bb245_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain344_n22_α
 xchain344_n19_β:
 jmp xchain344_n24_α
xchain344_n20_α:
bb246_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain344_n21_α
 xchain344_n20_β:
 jmp xchain344_n21_α
xchain344_n21_α:
# IR_VAR
bb247_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xchain344_n23_α
 xchain344_n21_β:
 jmp xchain344_n27_α
xchain344_n22_α:
bb248_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+416]
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx379_0]
 mov qword ptr [r12 + 424], rax
 jmp .Lx379_1
.Lx379_0:
 .quad .Lx379_0_s
.Lx379_0_s:
 .string "str conv err: n="
.Lx379_1:
# marshal arg1 = varslot [r12+16] -> [r12+432]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 440], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+448]
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx379_4]
 mov qword ptr [r12 + 456], rax
 jmp .Lx379_5
.Lx379_4:
 .quad .Lx379_4_s
.Lx379_4_s:
 .string " sn="
.Lx379_5:
# marshal arg3 = varslot [r12+32] -> [r12+464]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 472], rax
# marshal arg4 = LIT_S (string REG-RO sealed in-band) -> [r12+480]
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx379_8]
 mov qword ptr [r12 + 488], rax
 jmp .Lx379_9
.Lx379_8:
 .quad .Lx379_8_s
.Lx379_8_s:
 .string " in="
.Lx379_9:
# marshal arg5 = varslot [r12+48] -> [r12+496]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn380: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn380]
 lea rsi, [r12 + 416]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain344_n24_α
 jmp xchain344_n24_α
 xchain344_n22_β:
 jmp xchain344_n24_α
xchain344_n23_α:
# IR_VAR
bb249_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain344_n25_α
 xchain344_n23_β:
 jmp xchain344_n27_α
xchain344_n24_α:
# IR_RETURN
bb250_α:
 mov rax, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_conv_γ
xchain344_n25_α:
bb251_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 88]
 mov rcx, qword ptr [r12 + 72]
 cqo
 idiv rcx
 mov qword ptr [r12 + 512], 6
 mov qword ptr [r12 + 520], rax
 jmp xchain344_n26_α
 xchain344_n25_β:
 jmp xchain344_n27_α
xchain344_n26_α:
bb252_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain344_n27_α
 xchain344_n26_β:
 jmp xchain344_n27_α
xchain344_n27_α:
bb253_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+96] -> [r12+560]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn387: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn387]
 lea rsi, [r12 + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain344_n29_α
 jmp xchain344_n28_α
 xchain344_n27_β:
 jmp xchain344_n29_α
xchain344_n28_α:
# IR_LIT_F
bb254_α:
 mov qword ptr [r12 + 576], 7
 mov rax, qword ptr [rip + .Lx388_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain344_n30_α
 xchain344_n28_β:
 jmp xchain344_n29_α
.Lx388_0:
 .quad 4397347889687374747
xchain344_n29_α:
# IR_LIT_S
bb255_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx389_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain344_n31_α
 xchain344_n29_β:
 jmp xchain344_n35_α
.Lx389_0:
 .quad .Lx389_0_s
.Lx389_0_s:
 .string "conv ok: "
xchain344_n30_α:
jmp xbinop390_lhs_done
xbinop390_lhs_done:
jmp xbinop390_rhs_done
xbinop390_rhs_done:
bb256_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain344_n29_α
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 616], rax
 jmp xchain344_n32_α
 xchain344_n30_β:
 jmp xchain344_n29_α
xchain344_n31_α:
# IR_VAR
bb257_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain344_n33_α
 xchain344_n31_β:
 jmp xchain344_n35_α
xchain344_n32_α:
# IR_LIT_S
bb258_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx394_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain344_n34_α
 xchain344_n32_β:
 jmp xchain344_n35_α
.Lx394_0:
 .quad .Lx394_0_s
.Lx394_0_s:
 .string "real conv err: n="
xchain344_n33_α:
bb259_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+656]
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx395_0]
 mov qword ptr [r12 + 664], rax
 jmp .Lx395_1
.Lx395_0:
 .quad .Lx395_0_s
.Lx395_0_s:
 .string "conv ok: "
.Lx395_1:
# marshal arg1 = varslot [r12+16] -> [r12+672]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn396: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn396]
 lea rsi, [r12 + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain344_n35_α
 jmp xchain344_n35_α
 xchain344_n33_β:
 jmp xchain344_n35_α
xchain344_n34_α:
# IR_VAR
bb260_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain344_n36_α
 xchain344_n34_β:
 jmp xchain344_n35_α
xchain344_n35_α:
# IR_RETURN
bb261_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_conv_γ
xchain344_n36_α:
# IR_LIT_S
bb262_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx400_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain344_n37_α
 xchain344_n36_β:
 jmp xchain344_n35_α
.Lx400_0:
 .quad .Lx400_0_s
.Lx400_0_s:
 .string " rn="
xchain344_n37_α:
# IR_VAR
bb263_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain344_n38_α
 xchain344_n37_β:
 jmp xchain344_n35_α
xchain344_n38_α:
# IR_LIT_S
bb264_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx403_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain344_n39_α
 xchain344_n38_β:
 jmp xchain344_n35_α
.Lx403_0:
 .quad .Lx403_0_s
.Lx403_0_s:
 .string " in="
xchain344_n39_α:
# IR_VAR
bb265_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain344_n40_α
 xchain344_n39_β:
 jmp xchain344_n35_α
xchain344_n40_α:
# IR_LIT_S
bb266_α:
 mov qword ptr [r12 + 720], 1
 mov rax, qword ptr [rip + .Lx406_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain344_n41_α
 xchain344_n40_β:
 jmp xchain344_n35_α
.Lx406_0:
 .quad .Lx406_0_s
.Lx406_0_s:
 .string " d="
xchain344_n41_α:
# IR_VAR
bb267_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xchain344_n42_α
 xchain344_n41_β:
 jmp xchain344_n35_α
xchain344_n42_α:
# IR_LIT_S
bb268_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx409_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain344_n43_α
 xchain344_n42_β:
 jmp xchain344_n35_α
.Lx409_0:
 .quad .Lx409_0_s
.Lx409_0_s:
 .string " r="
xchain344_n43_α:
# IR_VAR
bb269_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 104], rax
 jmp xchain344_n44_α
 xchain344_n43_β:
 jmp xchain344_n35_α
xchain344_n44_α:
bb270_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+768]
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx412_0]
 mov qword ptr [r12 + 776], rax
 jmp .Lx412_1
.Lx412_0:
 .quad .Lx412_0_s
.Lx412_0_s:
 .string "real conv err: n="
.Lx412_1:
# marshal arg1 = varslot [r12+16] -> [r12+784]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 792], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+800]
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx412_4]
 mov qword ptr [r12 + 808], rax
 jmp .Lx412_5
.Lx412_4:
 .quad .Lx412_4_s
.Lx412_4_s:
 .string " rn="
.Lx412_5:
# marshal arg3 = varslot [r12+64] -> [r12+816]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 824], rax
# marshal arg4 = LIT_S (string REG-RO sealed in-band) -> [r12+832]
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx412_8]
 mov qword ptr [r12 + 840], rax
 jmp .Lx412_9
.Lx412_8:
 .quad .Lx412_8_s
.Lx412_8_s:
 .string " in="
.Lx412_9:
# marshal arg5 = varslot [r12+48] -> [r12+848]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 856], rax
# marshal arg6 = LIT_S (string REG-RO sealed in-band) -> [r12+864]
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx412_12]
 mov qword ptr [r12 + 872], rax
 jmp .Lx412_13
.Lx412_12:
 .quad .Lx412_12_s
.Lx412_12_s:
 .string " d="
.Lx412_13:
# marshal arg7 = varslot [r12+80] -> [r12+880]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 888], rax
# marshal arg8 = LIT_S (string REG-RO sealed in-band) -> [r12+896]
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx412_16]
 mov qword ptr [r12 + 904], rax
 jmp .Lx412_17
.Lx412_16:
 .quad .Lx412_16_s
.Lx412_16_s:
 .string " r="
.Lx412_17:
# marshal arg9 = varslot [r12+96] -> [r12+912]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 920], rax
  .section .rodata
  .Lrkfn413: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn413]
 lea rsi, [r12 + 768]
 mov edx, 10
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain344_n35_α
 jmp xchain344_n35_α
 xchain344_n44_β:
 jmp xchain344_n35_α
proc_conv_β:
jmp proc_conv_ω
proc_conv_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_conv_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_unops_α
proc_unops_α:
#=======================================================================================================================
    .global proc_unops_α
    .global proc_unops_β
    .global proc_unops_γ
    .global proc_unops_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_unops_α_body:
xchain414_n0_α:
# IR_LIT_S
bb271_α:
 mov qword ptr [r12 + 32], 1
 mov rax, qword ptr [rip + .Lx415_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain414_n1_α
 xchain414_n0_β:
 jmp xchain414_n8_α
.Lx415_0:
 .quad .Lx415_0_s
.Lx415_0_s:
 .string "u:  "
xchain414_n1_α:
# IR_VAR
bb272_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain414_n2_α
 xchain414_n1_β:
 jmp xchain414_n8_α
xchain414_n2_α:
# IR_LIT_S
bb273_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx418_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain414_n3_α
 xchain414_n2_β:
 jmp xchain414_n8_α
.Lx418_0:
 .quad .Lx418_0_s
.Lx418_0_s:
 .string "  "
xchain414_n3_α:
# IR_VAR
bb274_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain414_n4_α
 xchain414_n3_β:
 jmp xchain414_n8_α
xchain414_n4_α:
# IR_UNOP
bb275_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_num_neg@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain414_n5_α
 xchain414_n4_β:
 jmp xchain414_n8_α
xchain414_n5_α:
# IR_LIT_S
bb276_α:
 mov qword ptr [r12 + 80], 1
 mov rax, qword ptr [rip + .Lx422_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain414_n6_α
 xchain414_n5_β:
 jmp xchain414_n8_α
.Lx422_0:
 .quad .Lx422_0_s
.Lx422_0_s:
 .string "  "
xchain414_n6_α:
bb277_α:
# BOX IR_CALL icom(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+112]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn424: .string "icom"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn424]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain414_n8_α
 jmp xchain414_n7_α
 xchain414_n6_β:
 jmp xchain414_n8_α
xchain414_n7_α:
xargsub426_n0_α:
# IR_VAR
bb278_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xicnarg425_done
 xargsub426_n0_β:
 jmp xchain414_n8_α
xicnarg425_done:
xargsub430_n0_α:
# IR_LIT_I
bb279_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx431_0]
 mov qword ptr [r12 + 136], rax
 jmp xicnarg429_done
 xargsub430_n0_β:
 jmp xchain414_n8_α
.Lx431_0:
 .quad 0
xicnarg429_done:
bb280_α:
  .section .rodata
  .Lcall280_pname: .string "compares"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+16]
 mov rdx, qword ptr [r12+24]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+128]
 mov rdx, qword ptr [r12+136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall280_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain414_n8_α
 jmp xchain414_n9_α
xchain414_n7_β:
 jmp xchain414_n8_α
xchain414_n8_α:
bb281_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+176]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn434: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn434]
 lea rsi, [r12 + 176]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain414_n11_α
 jmp xchain414_n10_α
 xchain414_n8_β:
 jmp xchain414_n11_α
xchain414_n9_α:
bb282_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+208]
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx435_0]
 mov qword ptr [r12 + 216], rax
 jmp .Lx435_1
.Lx435_0:
 .quad .Lx435_0_s
.Lx435_0_s:
 .string "u:  "
.Lx435_1:
# marshal arg1 = varslot [r12+16] -> [r12+224]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+240]
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx435_4]
 mov qword ptr [r12 + 248], rax
 jmp .Lx435_5
.Lx435_4:
 .quad .Lx435_4_s
.Lx435_4_s:
 .string "  "
.Lx435_5:
# marshal arg3 = nested producer-box slot [r12+64] -> [r12+256]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 264], rax
# marshal arg4 = LIT_S (string REG-RO sealed in-band) -> [r12+272]
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx435_8]
 mov qword ptr [r12 + 280], rax
 jmp .Lx435_9
.Lx435_8:
 .quad .Lx435_8_s
.Lx435_8_s:
 .string "  "
.Lx435_9:
# marshal arg0 = varslot [r12+16] -> [r12+320]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lcallfn436: .string "icom"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn436]
 lea rsi, [r12 + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
# marshal arg0 = varslot [r12+16] -> [r12+336]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = LIT_I -> [r12+352]
 mov qword ptr [r12 + 352], 6
 movabs rax, 0
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lcallfn437: .string "compares"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn437]
 lea rsi, [r12 + 336]
 mov edx, 2
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
  .section .rodata
  .Lrkfn438: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn438]
 lea rsi, [r12 + 208]
 mov edx, 7
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain414_n8_α
 jmp xchain414_n8_α
 xchain414_n9_β:
 jmp xchain414_n8_α
xchain414_n10_α:
# IR_VAR
bb283_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain414_n12_α
 xchain414_n10_β:
 jmp xchain414_n15_α
xchain414_n11_α:
# IR_RETURN
bb284_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_unops_γ
xchain414_n12_α:
# IR_LIT_I
bb285_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx442_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain414_n13_α
 xchain414_n12_β:
 jmp xchain414_n15_α
.Lx442_0:
 .quad 0
xchain414_n13_α:
bb286_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 376]
 cmp rax, rcx
 jle xchain414_n15_α
 mov rcx, qword ptr [r12 + 368]
 mov qword ptr [r12 + 384], rcx
 mov rcx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 392], rcx
 jmp xchain414_n14_α
 xchain414_n13_β:
 jmp xchain414_n15_α
xchain414_n14_α:
# IR_VAR
bb287_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain414_n16_α
 xchain414_n14_β:
 jmp xchain414_n11_α
xchain414_n15_α:
# IR_VAR
bb288_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain414_n17_α
 xchain414_n15_β:
 jmp xchain414_n11_α
xchain414_n16_α:
bb289_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 392]
 mov rcx, qword ptr [r12 + 24]
 cmp rax, rcx
 je xchain414_n15_α
 mov rcx, qword ptr [r12 + 16]
 mov qword ptr [r12 + 400], rcx
 mov rcx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 408], rcx
 jmp xchain414_n18_α
 xchain414_n16_β:
 jmp xchain414_n15_α
xchain414_n17_α:
# IR_UNOP
bb290_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_num_neg@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain414_n16_α
 xchain414_n17_β:
 jmp xchain414_n11_α
xchain414_n18_α:
# IR_LIT_S
bb291_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx450_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain414_n19_α
 xchain414_n18_β:
 jmp xchain414_n11_α
.Lx450_0:
 .quad .Lx450_0_s
.Lx450_0_s:
 .string "  abs failure"
xchain414_n19_α:
bb292_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 call rt_write_any_nl@PLT
 jmp xchain414_n11_α
xchain414_n19_β:
xchain414_n19_β:
 jmp xchain414_n11_α
proc_unops_β:
jmp proc_unops_ω
proc_unops_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_unops_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_binops_α
proc_binops_α:
#=======================================================================================================================
    .global proc_binops_α
    .global proc_binops_β
    .global proc_binops_γ
    .global proc_binops_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_binops_α_body:
xchain452_n0_α:
# IR_LIT_S
bb293_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx453_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain452_n1_α
 xchain452_n0_β:
 jmp xchain452_n6_α
.Lx453_0:
 .quad .Lx453_0_s
.Lx453_0_s:
 .string "b:  "
xchain452_n1_α:
# IR_VAR
bb294_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain452_n2_α
 xchain452_n1_β:
 jmp xchain452_n6_α
xchain452_n2_α:
# IR_LIT_S
bb295_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx456_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain452_n3_α
 xchain452_n2_β:
 jmp xchain452_n6_α
.Lx456_0:
 .quad .Lx456_0_s
.Lx456_0_s:
 .string "  "
xchain452_n3_α:
# IR_VAR
bb296_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain452_n4_α
 xchain452_n3_β:
 jmp xchain452_n6_α
xchain452_n4_α:
xargsub460_n0_α:
# IR_VAR
bb297_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xicnarg459_done
 xargsub460_n0_β:
 jmp xchain452_n6_α
xicnarg459_done:
xargsub464_n0_α:
# IR_VAR
bb298_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xicnarg463_done
 xargsub464_n0_β:
 jmp xchain452_n6_α
xicnarg463_done:
bb299_α:
  .section .rodata
  .Lcall299_pname: .string "compares"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+16]
 mov rdx, qword ptr [r12+24]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+32]
 mov rdx, qword ptr [r12+40]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall299_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain452_n6_α
 jmp xchain452_n5_α
xchain452_n4_β:
 jmp xchain452_n6_α
xchain452_n5_α:
bb300_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+112]
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx468_0]
 mov qword ptr [r12 + 120], rax
 jmp .Lx468_1
.Lx468_0:
 .quad .Lx468_0_s
.Lx468_0_s:
 .string "b:  "
.Lx468_1:
# marshal arg1 = varslot [r12+16] -> [r12+128]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 136], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+144]
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx468_4]
 mov qword ptr [r12 + 152], rax
 jmp .Lx468_5
.Lx468_4:
 .quad .Lx468_4_s
.Lx468_4_s:
 .string "  "
.Lx468_5:
# marshal arg3 = varslot [r12+32] -> [r12+160]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 168], rax
# marshal arg0 = varslot [r12+16] -> [r12+192]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
# marshal arg1 = varslot [r12+32] -> [r12+208]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lcallfn469: .string "compares"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn469]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
  .section .rodata
  .Lrkfn470: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn470]
 lea rsi, [r12 + 112]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain452_n6_α
 jmp xchain452_n6_α
 xchain452_n5_β:
 jmp xchain452_n6_α
xchain452_n6_α:
# IR_LIT_S
bb301_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx471_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain452_n7_α
 xchain452_n6_β:
 jmp xchain452_n11_α
.Lx471_0:
 .quad .Lx471_0_s
.Lx471_0_s:
 .string "    +-   "
xchain452_n7_α:
# IR_VAR
bb302_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain452_n8_α
 xchain452_n7_β:
 jmp xchain452_n11_α
xchain452_n8_α:
# IR_VAR
bb303_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain452_n9_α
 xchain452_n8_β:
 jmp xchain452_n11_α
xchain452_n9_α:
bb304_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 add rax, rcx
 mov qword ptr [r12 + 240], 6
 mov qword ptr [r12 + 248], rax
 jmp xchain452_n10_α
 xchain452_n9_β:
 jmp xchain452_n11_α
xchain452_n10_α:
# IR_LIT_S
bb305_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx477_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain452_n12_α
 xchain452_n10_β:
 jmp xchain452_n11_α
.Lx477_0:
 .quad .Lx477_0_s
.Lx477_0_s:
 .string "  "
xchain452_n11_α:
# IR_LIT_S
bb306_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx478_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain452_n13_α
 xchain452_n11_β:
 jmp xchain452_n20_α
.Lx478_0:
 .quad .Lx478_0_s
.Lx478_0_s:
 .string "    */%  "
xchain452_n12_α:
# IR_VAR
bb307_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain452_n14_α
 xchain452_n12_β:
 jmp xchain452_n11_α
xchain452_n13_α:
# IR_VAR
bb308_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain452_n15_α
 xchain452_n13_β:
 jmp xchain452_n20_α
xchain452_n14_α:
# IR_VAR
bb309_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain452_n16_α
 xchain452_n14_β:
 jmp xchain452_n11_α
xchain452_n15_α:
# IR_VAR
bb310_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain452_n17_α
 xchain452_n15_β:
 jmp xchain452_n20_α
xchain452_n16_α:
bb311_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 sub rax, rcx
 mov qword ptr [r12 + 288], 6
 mov qword ptr [r12 + 296], rax
 jmp xchain452_n18_α
 xchain452_n16_β:
 jmp xchain452_n11_α
xchain452_n17_α:
bb312_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 imul rax, rcx
 mov qword ptr [r12 + 304], 6
 mov qword ptr [r12 + 312], rax
 jmp xchain452_n19_α
 xchain452_n17_β:
 jmp xchain452_n20_α
xchain452_n18_α:
bb313_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+336]
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx489_0]
 mov qword ptr [r12 + 344], rax
 jmp .Lx489_1
.Lx489_0:
 .quad .Lx489_0_s
.Lx489_0_s:
 .string "    +-   "
.Lx489_1:
# marshal arg1 = nested producer-box slot [r12+240] -> [r12+352]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 360], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+368]
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx489_4]
 mov qword ptr [r12 + 376], rax
 jmp .Lx489_5
.Lx489_4:
 .quad .Lx489_4_s
.Lx489_4_s:
 .string "  "
.Lx489_5:
# marshal arg3 = nested producer-box slot [r12+288] -> [r12+384]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lrkfn490: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn490]
 lea rsi, [r12 + 336]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain452_n11_α
 jmp xchain452_n11_α
 xchain452_n18_β:
 jmp xchain452_n11_α
xchain452_n19_α:
# IR_LIT_S
bb314_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx491_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain452_n21_α
 xchain452_n19_β:
 jmp xchain452_n20_α
.Lx491_0:
 .quad .Lx491_0_s
.Lx491_0_s:
 .string "  "
xchain452_n20_α:
# IR_LIT_S
bb315_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx492_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain452_n22_α
 xchain452_n20_β:
 jmp xchain452_n25_α
.Lx492_0:
 .quad .Lx492_0_s
.Lx492_0_s:
 .string "    &|!  "
xchain452_n21_α:
# IR_VAR
bb316_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain452_n23_α
 xchain452_n21_β:
 jmp xchain452_n20_α
xchain452_n22_α:
bb317_α:
# BOX IR_CALL iand(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+448]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 456], rax
# marshal arg1 = varslot [r12+32] -> [r12+464]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn496: .string "iand"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn496]
 lea rsi, [r12 + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain452_n25_α
 jmp xchain452_n24_α
 xchain452_n22_β:
 jmp xchain452_n25_α
xchain452_n23_α:
# IR_VAR
bb318_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain452_n26_α
 xchain452_n23_β:
 jmp xchain452_n20_α
xchain452_n24_α:
# IR_LIT_S
bb319_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx499_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain452_n27_α
 xchain452_n24_β:
 jmp xchain452_n25_α
.Lx499_0:
 .quad .Lx499_0_s
.Lx499_0_s:
 .string "  "
xchain452_n25_α:
# IR_RETURN
bb320_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_binops_γ
xchain452_n26_α:
bb321_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 cqo
 idiv rcx
 mov qword ptr [r12 + 496], 6
 mov qword ptr [r12 + 504], rax
 jmp xchain452_n28_α
 xchain452_n26_β:
 jmp xchain452_n20_α
xchain452_n27_α:
bb322_α:
# BOX IR_CALL ior(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+528]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 536], rax
# marshal arg1 = varslot [r12+32] -> [r12+544]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn503: .string "ior"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn503]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain452_n25_α
 jmp xchain452_n29_α
 xchain452_n27_β:
 jmp xchain452_n25_α
xchain452_n28_α:
# IR_LIT_S
bb323_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx504_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain452_n30_α
 xchain452_n28_β:
 jmp xchain452_n20_α
.Lx504_0:
 .quad .Lx504_0_s
.Lx504_0_s:
 .string "  "
xchain452_n29_α:
# IR_LIT_S
bb324_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx505_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain452_n31_α
 xchain452_n29_β:
 jmp xchain452_n25_α
.Lx505_0:
 .quad .Lx505_0_s
.Lx505_0_s:
 .string "  "
xchain452_n30_α:
# IR_VAR
bb325_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain452_n32_α
 xchain452_n30_β:
 jmp xchain452_n20_α
xchain452_n31_α:
bb326_α:
# BOX IR_CALL ixor(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+608]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 616], rax
# marshal arg1 = varslot [r12+32] -> [r12+624]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lrkfn509: .string "ixor"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn509]
 lea rsi, [r12 + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain452_n25_α
 jmp xchain452_n33_α
 xchain452_n31_β:
 jmp xchain452_n25_α
xchain452_n32_α:
# IR_VAR
bb327_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain452_n34_α
 xchain452_n32_β:
 jmp xchain452_n20_α
xchain452_n33_α:
bb328_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+656]
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx512_0]
 mov qword ptr [r12 + 664], rax
 jmp .Lx512_1
.Lx512_0:
 .quad .Lx512_0_s
.Lx512_0_s:
 .string "    &|!  "
.Lx512_1:
# marshal arg0 = varslot [r12+16] -> [r12+752]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 760], rax
# marshal arg1 = varslot [r12+32] -> [r12+768]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 776], rax
  .section .rodata
  .Lcallfn513: .string "iand"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn513]
 lea rsi, [r12 + 752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+688]
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx512_4]
 mov qword ptr [r12 + 696], rax
 jmp .Lx512_5
.Lx512_4:
 .quad .Lx512_4_s
.Lx512_4_s:
 .string "  "
.Lx512_5:
# marshal arg0 = varslot [r12+16] -> [r12+784]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 792], rax
# marshal arg1 = varslot [r12+32] -> [r12+800]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 808], rax
  .section .rodata
  .Lcallfn514: .string "ior"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn514]
 lea rsi, [r12 + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
# marshal arg4 = LIT_S (string REG-RO sealed in-band) -> [r12+720]
 mov qword ptr [r12 + 720], 1
 mov rax, qword ptr [rip + .Lx512_8]
 mov qword ptr [r12 + 728], rax
 jmp .Lx512_9
.Lx512_8:
 .quad .Lx512_8_s
.Lx512_8_s:
 .string "  "
.Lx512_9:
# marshal arg0 = varslot [r12+16] -> [r12+816]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 824], rax
# marshal arg1 = varslot [r12+32] -> [r12+832]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lcallfn515: .string "ixor"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn515]
 lea rsi, [r12 + 816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
  .section .rodata
  .Lrkfn516: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn516]
 lea rsi, [r12 + 656]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain452_n25_α
 jmp xchain452_n25_α
 xchain452_n33_β:
 jmp xchain452_n25_α
xchain452_n34_α:
bb329_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 cqo
 idiv rcx
 mov rax, rdx
 mov qword ptr [r12 + 848], 6
 mov qword ptr [r12 + 856], rax
 jmp xchain452_n35_α
 xchain452_n34_β:
 jmp xchain452_n20_α
xchain452_n35_α:
bb330_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+880]
 mov qword ptr [r12 + 880], 1
 mov rax, qword ptr [rip + .Lx518_0]
 mov qword ptr [r12 + 888], rax
 jmp .Lx518_1
.Lx518_0:
 .quad .Lx518_0_s
.Lx518_0_s:
 .string "    */%  "
.Lx518_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+896]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 904], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+912]
 mov qword ptr [r12 + 912], 1
 mov rax, qword ptr [rip + .Lx518_4]
 mov qword ptr [r12 + 920], rax
 jmp .Lx518_5
.Lx518_4:
 .quad .Lx518_4_s
.Lx518_4_s:
 .string "  "
.Lx518_5:
# marshal arg3 = nested producer-box slot [r12+496] -> [r12+928]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 936], rax
# marshal arg4 = LIT_S (string REG-RO sealed in-band) -> [r12+944]
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx518_8]
 mov qword ptr [r12 + 952], rax
 jmp .Lx518_9
.Lx518_8:
 .quad .Lx518_8_s
.Lx518_8_s:
 .string "  "
.Lx518_9:
# marshal arg5 = nested producer-box slot [r12+848] -> [r12+960]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 968], rax
  .section .rodata
  .Lrkfn519: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn519]
 lea rsi, [r12 + 880]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain452_n20_α
 jmp xchain452_n20_α
 xchain452_n35_β:
 jmp xchain452_n20_α
proc_binops_β:
jmp proc_binops_ω
proc_binops_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_binops_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_compares_α
proc_compares_α:
#=======================================================================================================================
    .global proc_compares_α
    .global proc_compares_β
    .global proc_compares_γ
    .global proc_compares_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_compares_α_body:
xchain520_n0_α:
# IR_LIT_S
bb331_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx521_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain520_n1_α
 xchain520_n0_β:
 jmp xchain520_n2_α
.Lx521_0:
 .quad .Lx521_0_s
.Lx521_0_s:
 .string " "
xchain520_n1_α:
bb332_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain520_n2_α
 xchain520_n1_β:
 jmp xchain520_n2_α
xchain520_n2_α:
# IR_VAR
bb333_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain520_n3_α
 xchain520_n2_β:
 jmp xchain520_n6_α
xchain520_n3_α:
# IR_VAR
bb334_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain520_n4_α
 xchain520_n3_β:
 jmp xchain520_n6_α
xchain520_n4_α:
bb335_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 cmp rax, rcx
 jge xchain520_n6_α
 mov rcx, qword ptr [r12 + 32]
 mov qword ptr [r12 + 96], rcx
 mov rcx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 104], rcx
 jmp xchain520_n5_α
 xchain520_n4_β:
 jmp xchain520_n6_α
xchain520_n5_α:
# IR_VAR
bb336_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain520_n7_α
 xchain520_n5_β:
 jmp xchain520_n6_α
xchain520_n6_α:
# IR_VAR
bb337_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain520_n8_α
 xchain520_n6_β:
 jmp xchain520_n13_α
xchain520_n7_α:
bb338_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain520_n6_α
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 120], rax
 jmp xchain520_n9_α
 xchain520_n7_β:
 jmp xchain520_n6_α
xchain520_n8_α:
# IR_VAR
bb339_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain520_n10_α
 xchain520_n8_β:
 jmp xchain520_n13_α
xchain520_n9_α:
# IR_VAR
bb340_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain520_n11_α
 xchain520_n9_β:
 jmp xchain520_n6_α
xchain520_n10_α:
bb341_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 cmp rax, rcx
 jg xchain520_n13_α
 mov rcx, qword ptr [r12 + 32]
 mov qword ptr [r12 + 128], rcx
 mov rcx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 136], rcx
 jmp xchain520_n12_α
 xchain520_n10_β:
 jmp xchain520_n13_α
xchain520_n11_α:
# IR_LIT_S
bb342_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx538_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain520_n14_α
 xchain520_n11_β:
 jmp xchain520_n6_α
.Lx538_0:
 .quad .Lx538_0_s
.Lx538_0_s:
 .string " <"
xchain520_n12_α:
# IR_VAR
bb343_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain520_n15_α
 xchain520_n12_β:
 jmp xchain520_n13_α
xchain520_n13_α:
# IR_VAR
bb344_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain520_n16_α
 xchain520_n13_β:
 jmp xchain520_n22_α
xchain520_n14_α:
bb345_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 call str_concat_d@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain520_n17_α
 xchain520_n14_β:
 jmp xchain520_n6_α
xchain520_n15_α:
bb346_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain520_n13_α
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 184], rax
 jmp xchain520_n18_α
 xchain520_n15_β:
 jmp xchain520_n13_α
xchain520_n16_α:
# IR_VAR
bb347_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain520_n19_α
 xchain520_n16_β:
 jmp xchain520_n22_α
xchain520_n17_α:
bb348_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain520_n6_α
 xchain520_n17_β:
 jmp xchain520_n6_α
xchain520_n18_α:
# IR_VAR
bb349_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain520_n20_α
 xchain520_n18_β:
 jmp xchain520_n13_α
xchain520_n19_α:
bb350_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 cmp rax, rcx
 jne xchain520_n22_α
 mov rcx, qword ptr [r12 + 32]
 mov qword ptr [r12 + 208], rcx
 mov rcx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 216], rcx
 jmp xchain520_n21_α
 xchain520_n19_β:
 jmp xchain520_n22_α
xchain520_n20_α:
# IR_LIT_S
bb351_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx551_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain520_n23_α
 xchain520_n20_β:
 jmp xchain520_n13_α
.Lx551_0:
 .quad .Lx551_0_s
.Lx551_0_s:
 .string " <="
xchain520_n21_α:
# IR_VAR
bb352_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain520_n24_α
 xchain520_n21_β:
 jmp xchain520_n22_α
xchain520_n22_α:
# IR_VAR
bb353_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain520_n25_α
 xchain520_n22_β:
 jmp xchain520_n31_α
xchain520_n23_α:
bb354_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 call str_concat_d@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain520_n26_α
 xchain520_n23_β:
 jmp xchain520_n13_α
xchain520_n24_α:
bb355_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain520_n22_α
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 264], rax
 jmp xchain520_n27_α
 xchain520_n24_β:
 jmp xchain520_n22_α
xchain520_n25_α:
# IR_VAR
bb356_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain520_n28_α
 xchain520_n25_β:
 jmp xchain520_n31_α
xchain520_n26_α:
bb357_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain520_n13_α
 xchain520_n26_β:
 jmp xchain520_n13_α
xchain520_n27_α:
# IR_VAR
bb358_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain520_n29_α
 xchain520_n27_β:
 jmp xchain520_n22_α
xchain520_n28_α:
bb359_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 cmp rax, rcx
 je xchain520_n31_α
 mov rcx, qword ptr [r12 + 32]
 mov qword ptr [r12 + 288], rcx
 mov rcx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 296], rcx
 jmp xchain520_n30_α
 xchain520_n28_β:
 jmp xchain520_n31_α
xchain520_n29_α:
# IR_LIT_S
bb360_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx564_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain520_n32_α
 xchain520_n29_β:
 jmp xchain520_n22_α
.Lx564_0:
 .quad .Lx564_0_s
.Lx564_0_s:
 .string " ="
xchain520_n30_α:
# IR_VAR
bb361_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain520_n33_α
 xchain520_n30_β:
 jmp xchain520_n31_α
xchain520_n31_α:
# IR_VAR
bb362_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain520_n34_α
 xchain520_n31_β:
 jmp xchain520_n40_α
xchain520_n32_α:
bb363_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 call str_concat_d@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain520_n35_α
 xchain520_n32_β:
 jmp xchain520_n22_α
xchain520_n33_α:
bb364_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain520_n31_α
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 344], rax
 jmp xchain520_n36_α
 xchain520_n33_β:
 jmp xchain520_n31_α
xchain520_n34_α:
# IR_VAR
bb365_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain520_n37_α
 xchain520_n34_β:
 jmp xchain520_n40_α
xchain520_n35_α:
bb366_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain520_n22_α
 xchain520_n35_β:
 jmp xchain520_n22_α
xchain520_n36_α:
# IR_VAR
bb367_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain520_n38_α
 xchain520_n36_β:
 jmp xchain520_n31_α
xchain520_n37_α:
bb368_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 cmp rax, rcx
 jle xchain520_n40_α
 mov rcx, qword ptr [r12 + 32]
 mov qword ptr [r12 + 368], rcx
 mov rcx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 376], rcx
 jmp xchain520_n39_α
 xchain520_n37_β:
 jmp xchain520_n40_α
xchain520_n38_α:
# IR_LIT_S
bb369_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx577_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain520_n41_α
 xchain520_n38_β:
 jmp xchain520_n31_α
.Lx577_0:
 .quad .Lx577_0_s
.Lx577_0_s:
 .string " ~="
xchain520_n39_α:
# IR_VAR
bb370_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain520_n42_α
 xchain520_n39_β:
 jmp xchain520_n40_α
xchain520_n40_α:
# IR_VAR
bb371_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain520_n43_α
 xchain520_n40_β:
 jmp xchain520_n49_α
xchain520_n41_α:
bb372_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 call str_concat_d@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain520_n44_α
 xchain520_n41_β:
 jmp xchain520_n31_α
xchain520_n42_α:
bb373_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain520_n40_α
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 424], rax
 jmp xchain520_n45_α
 xchain520_n42_β:
 jmp xchain520_n40_α
xchain520_n43_α:
# IR_VAR
bb374_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain520_n46_α
 xchain520_n43_β:
 jmp xchain520_n49_α
xchain520_n44_α:
bb375_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain520_n31_α
 xchain520_n44_β:
 jmp xchain520_n31_α
xchain520_n45_α:
# IR_VAR
bb376_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain520_n47_α
 xchain520_n45_β:
 jmp xchain520_n40_α
xchain520_n46_α:
bb377_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 cmp rax, rcx
 jl xchain520_n49_α
 mov rcx, qword ptr [r12 + 32]
 mov qword ptr [r12 + 448], rcx
 mov rcx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 456], rcx
 jmp xchain520_n48_α
 xchain520_n46_β:
 jmp xchain520_n49_α
xchain520_n47_α:
# IR_LIT_S
bb378_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx590_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain520_n50_α
 xchain520_n47_β:
 jmp xchain520_n40_α
.Lx590_0:
 .quad .Lx590_0_s
.Lx590_0_s:
 .string " >"
xchain520_n48_α:
# IR_VAR
bb379_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain520_n51_α
 xchain520_n48_β:
 jmp xchain520_n49_α
xchain520_n49_α:
# IR_VAR
bb380_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain520_n52_α
 xchain520_n49_β:
 jmp proc_compares_ω
xchain520_n50_α:
bb381_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 call str_concat_d@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain520_n53_α
 xchain520_n50_β:
 jmp xchain520_n40_α
xchain520_n51_α:
bb382_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain520_n49_α
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 504], rax
 jmp xchain520_n54_α
 xchain520_n51_β:
 jmp xchain520_n49_α
xchain520_n52_α:
# IR_RETURN
bb383_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_compares_γ
xchain520_n53_α:
bb384_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain520_n40_α
 xchain520_n53_β:
 jmp xchain520_n40_α
xchain520_n54_α:
# IR_VAR
bb385_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain520_n55_α
 xchain520_n54_β:
 jmp xchain520_n49_α
xchain520_n55_α:
# IR_LIT_S
bb386_α:
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx601_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain520_n56_α
 xchain520_n55_β:
 jmp xchain520_n49_α
.Lx601_0:
 .quad .Lx601_0_s
.Lx601_0_s:
 .string " >="
xchain520_n56_α:
bb387_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 call str_concat_d@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain520_n57_α
 xchain520_n56_β:
 jmp xchain520_n49_α
xchain520_n57_α:
bb388_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain520_n49_α
 xchain520_n57_β:
 jmp xchain520_n49_α
proc_compares_β:
jmp proc_compares_ω
proc_compares_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_compares_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_radix_α
proc_radix_α:
#=======================================================================================================================
    .global proc_radix_α
    .global proc_radix_β
    .global proc_radix_γ
    .global proc_radix_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_radix_α_body:
xchain604_n0_α:
# IR_LIT_F
bb389_α:
 mov qword ptr [r12 + 96], 7
 mov rax, qword ptr [rip + .Lx605_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain604_n1_α
 xchain604_n0_β:
 jmp xchain604_n2_α
.Lx605_0:
 .quad 4890909195324358656
xchain604_n1_α:
bb390_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain604_n2_α
 xchain604_n1_β:
 jmp xchain604_n2_α
xchain604_n2_α:
# IR_KEYWORD_read
bb391_α:
 mov rdi, qword ptr [rip + .Lx607_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain604_n3_α
 xchain604_n2_β:
 jmp xchain604_n6_α
.Lx607_0:
 .quad .Lx607_0_s
.Lx607_0_s:
 .string "&digits"
xchain604_n3_α:
# IR_KEYWORD_read
bb392_α:
 mov rdi, qword ptr [rip + .Lx608_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain604_n4_α
 xchain604_n3_β:
 jmp xchain604_n6_α
.Lx608_0:
 .quad .Lx608_0_s
.Lx608_0_s:
 .string "&lcase"
xchain604_n4_α:
bb393_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 call str_concat_d@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain604_n5_α
 xchain604_n4_β:
 jmp xchain604_n6_α
xchain604_n5_α:
bb394_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain604_n6_α
 xchain604_n5_β:
 jmp xchain604_n6_α
xchain604_n6_α:
# IR_LIT_I
bb395_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx611_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain604_n7_α
 xchain604_n6_β:
 jmp xchain604_n24_β
.Lx611_0:
 .quad 2
xchain604_n7_α:
# IR_LIT_I
bb396_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx612_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain604_n8_α
 xchain604_n7_β:
 jmp xchain604_n24_β
.Lx612_0:
 .quad 35
xchain604_n8_α:
# IR_TO
bb397_α:
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 240], rax
.Lx614_0:
 mov rax, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 216]
 cmp rax, rcx
 jg xchain604_n19_α
 mov qword ptr [r12 + 224], 6
 mov qword ptr [r12 + 232], rax
 jmp xchain604_n9_α
 xchain604_n8_β:
 inc qword ptr [r12 + 240]
 jmp .Lx614_0
xchain604_n9_α:
bb398_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], rdx
 jmp xchain604_n10_α
 xchain604_n9_β:
 jmp xchain604_n24_β
xchain604_n10_α:
# IR_VAR
bb399_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain604_n11_α
 xchain604_n10_β:
 jmp xchain604_n13_α
xchain604_n11_α:
bb400_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+48] -> [r12+280]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 280], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 288], rax
  .section .rodata
  .Lrkfn619: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn619]
 lea rsi, [r12 + 280]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 264], rax
 mov qword ptr [r12 + 272], rdx
 cmp eax, 99
 je xchain604_n13_α
 jmp xchain604_n12_α
 xchain604_n11_β:
 jmp xchain604_n13_α
xchain604_n12_α:
bb401_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 264]
 mov rcx, qword ptr [r12 + 272]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain604_n13_α
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 296], rax
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 304], rax
 jmp xchain604_n14_α
 xchain604_n12_β:
 jmp xchain604_n13_α
xchain604_n13_α:
# IR_VAR
bb402_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xchain604_n15_α
 xchain604_n13_β:
 jmp xchain604_n8_β
xchain604_n14_α:
bb403_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 304]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], rdx
 jmp xchain604_n13_α
 xchain604_n14_β:
 jmp xchain604_n13_α
xchain604_n15_α:
# IR_LIT_S
bb404_α:
 mov qword ptr [r12 + 328], 1
 mov rax, qword ptr [rip + .Lx624_0]
 mov qword ptr [r12 + 336], rax
 jmp xchain604_n16_α
 xchain604_n15_β:
 jmp xchain604_n8_β
.Lx624_0:
 .quad .Lx624_0_s
.Lx624_0_s:
 .string " = "
xchain604_n16_α:
# IR_VAR
bb405_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain604_n17_α
 xchain604_n16_β:
 jmp xchain604_n8_β
xchain604_n17_α:
bb406_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+80] -> [r12+360]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 360], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 368], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+376]
 mov qword ptr [r12 + 376], 1
 mov rax, qword ptr [rip + .Lx627_2]
 mov qword ptr [r12 + 384], rax
 jmp .Lx627_3
.Lx627_2:
 .quad .Lx627_2_s
.Lx627_2_s:
 .string " = "
.Lx627_3:
# marshal arg2 = varslot [r12+64] -> [r12+392]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 392], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 400], rax
  .section .rodata
  .Lrkfn628: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn628]
 lea rsi, [r12 + 360]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], rdx
 cmp eax, 99
 je xchain604_n8_β
 jmp xchain604_n18_α
 xchain604_n17_β:
 jmp xchain604_n8_β
xchain604_n18_α:
jmp xchain604_n8_β
xchain604_n18_β:
jmp xchain604_n8_β
xchain604_n19_α:
# IR_EVERY
 jmp xchain604_n20_α
 xchain604_n19_β:
 jmp xchain604_n20_α
xchain604_n20_α:
# IR_LIT_S
bb408_α:
 mov qword ptr [r12 + 408], 1
 mov rax, qword ptr [rip + .Lx630_0]
 mov qword ptr [r12 + 416], rax
 jmp xchain604_n21_α
 xchain604_n20_β:
 jmp xchain604_n24_β
.Lx630_0:
 .quad .Lx630_0_s
.Lx630_0_s:
 .string "36r"
xchain604_n21_α:
# IR_LIT_S
bb409_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx631_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain604_n22_α
 xchain604_n21_β:
 jmp xchain604_n24_β
.Lx631_0:
 .quad .Lx631_0_s
.Lx631_0_s:
 .string "Z"
xchain604_n22_α:
# IR_LIT_I
bb410_α:
 mov qword ptr [r12 + 440], 6
 mov rax, qword ptr [rip + .Lx632_0]
 mov qword ptr [r12 + 448], rax
 jmp xchain604_n23_α
 xchain604_n22_β:
 jmp xchain604_n24_β
.Lx632_0:
 .quad 10
xchain604_n23_α:
# IR_LIT_I
bb411_α:
 mov qword ptr [r12 + 456], 6
 mov rax, qword ptr [rip + .Lx633_0]
 mov qword ptr [r12 + 464], rax
 jmp xchain604_n24_α
 xchain604_n23_β:
 jmp xchain604_n24_β
.Lx633_0:
 .quad 20
xchain604_n24_α:
# IR_TO
bb412_α:
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 488], rax
.Lx635_0:
 mov rax, qword ptr [r12 + 488]
 mov rcx, qword ptr [r12 + 464]
 cmp rax, rcx
 jg xchain604_n26_α
 mov qword ptr [r12 + 472], 6
 mov qword ptr [r12 + 480], rax
 jmp xchain604_n25_α
 xchain604_n24_β:
 inc qword ptr [r12 + 488]
 jmp .Lx635_0
xchain604_n25_α:
bb413_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+512]
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx636_0]
 mov qword ptr [r12 + 520], rax
 jmp .Lx636_1
.Lx636_0:
 .quad .Lx636_0_s
.Lx636_0_s:
 .string "Z"
.Lx636_1:
# marshal arg1 = nested producer-box slot [r12+472] -> [r12+528]
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn637: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn637]
 lea rsi, [r12 + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain604_n24_β
 jmp xchain604_n27_α
 xchain604_n25_β:
 jmp xchain604_n24_β
xchain604_n26_α:
# IR_EVERY
 jmp xchain604_n28_α
 xchain604_n26_β:
 jmp xchain604_n28_α
xchain604_n27_α:
bb415_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 408]
 mov rsi, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call str_concat_d@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain604_n29_α
 xchain604_n27_β:
 jmp xchain604_n24_β
xchain604_n28_α:
# IR_RETURN
bb416_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_radix_γ
xchain604_n29_α:
bb417_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain604_n30_α
 xchain604_n29_β:
 jmp xchain604_n24_β
xchain604_n30_α:
# IR_VAR
bb418_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xchain604_n31_α
 xchain604_n30_β:
 jmp xchain604_n24_β
xchain604_n31_α:
# IR_LIT_S
bb419_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx644_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain604_n32_α
 xchain604_n31_β:
 jmp xchain604_n24_β
.Lx644_0:
 .quad .Lx644_0_s
.Lx644_0_s:
 .string " = "
xchain604_n32_α:
bb420_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+80] -> [r12+608]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn646: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn646]
 lea rsi, [r12 + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain604_n24_β
 jmp xchain604_n33_α
 xchain604_n32_β:
 jmp xchain604_n24_β
xchain604_n33_α:
bb421_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+80] -> [r12+640]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 648], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+656]
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx647_2]
 mov qword ptr [r12 + 664], rax
 jmp .Lx647_3
.Lx647_2:
 .quad .Lx647_2_s
.Lx647_2_s:
 .string " = "
.Lx647_3:
# marshal arg0 = varslot [r12+80] -> [r12+688]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lcallfn648: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn648]
 lea rsi, [r12 + 688]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
  .section .rodata
  .Lrkfn649: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn649]
 lea rsi, [r12 + 640]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain604_n24_β
 jmp xchain604_n24_β
 xchain604_n33_β:
 jmp xchain604_n24_β
proc_radix_β:
jmp proc_radix_ω
proc_radix_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_radix_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_over_α
proc_over_α:
#=======================================================================================================================
    .global proc_over_α
    .global proc_over_β
    .global proc_over_γ
    .global proc_over_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_over_α_body:
xchain650_n0_α:
# IR_KEYWORD_read
bb422_α:
 mov rdi, qword ptr [rip + .Lx651_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain650_n1_α
 xchain650_n0_β:
 jmp xchain650_n4_α
.Lx651_0:
 .quad .Lx651_0_s
.Lx651_0_s:
 .string "&features"
xchain650_n1_α:
# IR_LIT_S
bb423_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx652_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain650_n2_α
 xchain650_n1_β:
 jmp xchain650_n4_α
.Lx652_0:
 .quad .Lx652_0_s
.Lx652_0_s:
 .string "large integers"
xchain650_n2_α:
bb424_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 56]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain650_n4_α
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 72], rax
 jmp xchain650_n3_α
 xchain650_n2_β:
 jmp xchain650_n4_α
xchain650_n3_α:
# IR_LIT_I
bb425_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx654_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain650_n5_α
 xchain650_n3_β:
 jmp xchain650_n9_α
.Lx654_0:
 .quad 100000
xchain650_n4_α:
# IR_NOT
bb426_α:
 mov qword ptr [r12 + 96], 0
 mov qword ptr [r12 + 104], 0
 jmp xchain650_n6_α
 xchain650_n4_β:
 jmp xchain650_n3_α
xchain650_n5_α:
# IR_LIT_I
bb427_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx656_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain650_n7_α
 xchain650_n5_β:
 jmp xchain650_n9_α
.Lx656_0:
 .quad 10000
xchain650_n6_α:
bb428_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+144]
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx657_0]
 mov qword ptr [r12 + 152], rax
 jmp .Lx657_1
.Lx657_0:
 .quad .Lx657_0_s
.Lx657_0_s:
 .string "large integers not supported"
.Lx657_1:
  .section .rodata
  .Lrkfn658: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn658]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain650_n3_α
 jmp xchain650_n3_α
 xchain650_n6_β:
 jmp xchain650_n3_α
xchain650_n7_α:
bb429_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 88]
 mov rcx, qword ptr [r12 + 120]
 add rax, rcx
 mov qword ptr [r12 + 160], 6
 mov qword ptr [r12 + 168], rax
 jmp xchain650_n8_α
 xchain650_n7_β:
 jmp xchain650_n9_α
xchain650_n8_α:
bb430_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain650_n9_α
 xchain650_n8_β:
 jmp xchain650_n9_α
xchain650_n9_α:
# IR_VAR
bb431_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain650_n10_α
 xchain650_n9_β:
 jmp xchain650_n11_α
xchain650_n10_α:
bb432_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp xchain650_n11_α
xchain650_n10_β:
xchain650_n10_β:
 jmp xchain650_n11_α
xchain650_n11_α:
# IR_VAR
bb433_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain650_n12_α
 xchain650_n11_β:
 jmp xchain650_n15_α
xchain650_n12_α:
# IR_LIT_F
bb434_α:
 mov qword ptr [r12 + 192], 7
 mov rax, qword ptr [rip + .Lx666_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain650_n13_α
 xchain650_n12_β:
 jmp xchain650_n15_α
.Lx666_0:
 .quad 4742290407621132288
xchain650_n13_α:
jmp xbinop667_lhs_done
xbinop667_lhs_done:
jmp xbinop667_rhs_done
xbinop667_rhs_done:
bb435_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain650_n15_α
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain650_n14_α
 xchain650_n13_β:
 jmp xchain650_n15_α
xchain650_n14_α:
bb436_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain650_n15_α
 xchain650_n14_β:
 jmp xchain650_n15_α
xchain650_n15_α:
# IR_VAR
bb437_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain650_n16_α
 xchain650_n15_β:
 jmp xchain650_n17_α
xchain650_n16_α:
bb438_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp xchain650_n17_α
xchain650_n16_β:
xchain650_n16_β:
 jmp xchain650_n17_α
xchain650_n17_α:
# IR_VAR
bb439_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain650_n18_α
 xchain650_n17_β:
 jmp xchain650_n21_α
xchain650_n18_α:
# IR_VAR
bb440_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain650_n19_α
 xchain650_n18_β:
 jmp xchain650_n21_α
xchain650_n19_α:
bb441_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain650_n21_α
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain650_n20_α
 xchain650_n19_β:
 jmp xchain650_n21_α
xchain650_n20_α:
bb442_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain650_n21_α
 xchain650_n20_β:
 jmp xchain650_n21_α
xchain650_n21_α:
# IR_VAR
bb443_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain650_n22_α
 xchain650_n21_β:
 jmp xchain650_n23_α
xchain650_n22_α:
bb444_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp xchain650_n23_α
xchain650_n22_β:
xchain650_n22_β:
 jmp xchain650_n23_α
xchain650_n23_α:
# IR_LIT_I
bb445_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx682_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain650_n24_α
 xchain650_n23_β:
 jmp xchain650_n27_α
.Lx682_0:
 .quad 100000
xchain650_n24_α:
# IR_LIT_I
bb446_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx683_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain650_n25_α
 xchain650_n24_β:
 jmp xchain650_n27_α
.Lx683_0:
 .quad 10000
xchain650_n25_α:
bb447_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 280]
 mov rcx, qword ptr [r12 + 296]
 imul rax, rcx
 mov qword ptr [r12 + 304], 6
 mov qword ptr [r12 + 312], rax
 jmp xchain650_n26_α
 xchain650_n25_β:
 jmp xchain650_n27_α
xchain650_n26_α:
bb448_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain650_n27_α
 xchain650_n26_β:
 jmp xchain650_n27_α
xchain650_n27_α:
# IR_VAR
bb449_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain650_n28_α
 xchain650_n27_β:
 jmp xchain650_n29_α
xchain650_n28_α:
bb450_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp xchain650_n29_α
xchain650_n28_β:
xchain650_n28_β:
 jmp xchain650_n29_α
xchain650_n29_α:
# IR_VAR
bb451_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain650_n30_α
 xchain650_n29_β:
 jmp xchain650_n33_α
xchain650_n30_α:
# IR_LIT_F
bb452_α:
 mov qword ptr [r12 + 336], 7
 mov rax, qword ptr [rip + .Lx691_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain650_n31_α
 xchain650_n30_β:
 jmp xchain650_n33_α
.Lx691_0:
 .quad 4742290407621132288
xchain650_n31_α:
jmp xbinop692_lhs_done
xbinop692_lhs_done:
jmp xbinop692_rhs_done
xbinop692_rhs_done:
bb453_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain650_n33_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain650_n32_α
 xchain650_n31_β:
 jmp xchain650_n33_α
xchain650_n32_α:
bb454_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain650_n33_α
 xchain650_n32_β:
 jmp xchain650_n33_α
xchain650_n33_α:
# IR_VAR
bb455_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain650_n34_α
 xchain650_n33_β:
 jmp xchain650_n35_α
xchain650_n34_α:
bb456_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp xchain650_n35_α
xchain650_n34_β:
xchain650_n34_β:
 jmp xchain650_n35_α
xchain650_n35_α:
# IR_VAR
bb457_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain650_n36_α
 xchain650_n35_β:
 jmp xchain650_n39_α
xchain650_n36_α:
# IR_VAR
bb458_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain650_n37_α
 xchain650_n36_β:
 jmp xchain650_n39_α
xchain650_n37_α:
bb459_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain650_n39_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain650_n38_α
 xchain650_n37_β:
 jmp xchain650_n39_α
xchain650_n38_α:
bb460_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain650_n39_α
 xchain650_n38_β:
 jmp xchain650_n39_α
xchain650_n39_α:
# IR_VAR
bb461_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain650_n40_α
 xchain650_n39_β:
 jmp xchain650_n41_α
xchain650_n40_α:
bb462_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp xchain650_n41_α
xchain650_n40_β:
xchain650_n40_β:
 jmp xchain650_n41_α
xchain650_n41_α:
# IR_LIT_I
bb463_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx707_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain650_n42_α
 xchain650_n41_β:
 jmp xchain650_n45_α
.Lx707_0:
 .quad 18446744073709451616
xchain650_n42_α:
# IR_LIT_I
bb464_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx708_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain650_n43_α
 xchain650_n42_β:
 jmp xchain650_n45_α
.Lx708_0:
 .quad 10000
xchain650_n43_α:
bb465_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 424]
 mov rcx, qword ptr [r12 + 440]
 sub rax, rcx
 mov qword ptr [r12 + 448], 6
 mov qword ptr [r12 + 456], rax
 jmp xchain650_n44_α
 xchain650_n43_β:
 jmp xchain650_n45_α
xchain650_n44_α:
bb466_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain650_n45_α
 xchain650_n44_β:
 jmp xchain650_n45_α
xchain650_n45_α:
# IR_VAR
bb467_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain650_n46_α
 xchain650_n45_β:
 jmp xchain650_n47_α
xchain650_n46_α:
bb468_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp xchain650_n47_α
xchain650_n46_β:
xchain650_n46_β:
 jmp xchain650_n47_α
xchain650_n47_α:
# IR_VAR
bb469_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain650_n48_α
 xchain650_n47_β:
 jmp xchain650_n51_α
xchain650_n48_α:
# IR_LIT_F
bb470_α:
 mov qword ptr [r12 + 480], 7
 mov rax, qword ptr [rip + .Lx716_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain650_n49_α
 xchain650_n48_β:
 jmp xchain650_n51_α
.Lx716_0:
 .quad 13965662444475908096
xchain650_n49_α:
jmp xbinop717_lhs_done
xbinop717_lhs_done:
jmp xbinop717_rhs_done
xbinop717_rhs_done:
bb471_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain650_n51_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain650_n50_α
 xchain650_n49_β:
 jmp xchain650_n51_α
xchain650_n50_α:
bb472_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain650_n51_α
 xchain650_n50_β:
 jmp xchain650_n51_α
xchain650_n51_α:
# IR_VAR
bb473_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain650_n52_α
 xchain650_n51_β:
 jmp xchain650_n53_α
xchain650_n52_α:
bb474_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp xchain650_n53_α
xchain650_n52_β:
xchain650_n52_β:
 jmp xchain650_n53_α
xchain650_n53_α:
# IR_VAR
bb475_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain650_n54_α
 xchain650_n53_β:
 jmp xchain650_n57_α
xchain650_n54_α:
# IR_LIT_F
bb476_α:
 mov qword ptr [r12 + 528], 7
 mov rax, qword ptr [rip + .Lx725_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain650_n55_α
 xchain650_n54_β:
 jmp xchain650_n57_α
.Lx725_0:
 .quad 4742290407621132288
xchain650_n55_α:
jmp xbinop726_lhs_done
xbinop726_lhs_done:
jmp xbinop726_rhs_done
xbinop726_rhs_done:
bb477_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain650_n57_α
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain650_n56_α
 xchain650_n55_β:
 jmp xchain650_n57_α
xchain650_n56_α:
bb478_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain650_n57_α
 xchain650_n56_β:
 jmp xchain650_n57_α
xchain650_n57_α:
# IR_VAR
bb479_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain650_n58_α
 xchain650_n57_β:
 jmp proc_over_ω
xchain650_n58_α:
bb480_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp proc_over_γ
xchain650_n58_β:
xchain650_n58_β:
 jmp proc_over_ω
proc_over_β:
jmp proc_over_ω
proc_over_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_over_ω:
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
  .Lstartup_pname0: .string "compiler"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_compiler_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname1: .string "boundaries"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_boundaries_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname2: .string "fact"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_fact_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname3: .string "fib"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_fib_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname4: .string "power"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_power_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname5: .string "impower"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_impower_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname6: .string "minpower"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_minpower_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname7: .string "bigexp"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_bigexp_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname8: .string "mersenne"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + proc_mersenne_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname9: .string "perfect"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname9]
  lea rsi, [rip + proc_perfect_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname10: .string "tmul"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname10]
  lea rsi, [rip + proc_tmul_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname11: .string "conv"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname11]
  lea rsi, [rip + proc_conv_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname12: .string "unops"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname12]
  lea rsi, [rip + proc_unops_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname13: .string "binops"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname13]
  lea rsi, [rip + proc_binops_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname14: .string "compares"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname14]
  lea rsi, [rip + proc_compares_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname15: .string "radix"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname15]
  lea rsi, [rip + proc_radix_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname16: .string "over"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname16]
  lea rsi, [rip + proc_over_α]
  call rt_proc_set_fn@PLT
  pop rbp
  ret
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call main_α
  xor eax, eax
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
  lea r10, [rip + Δ]
main_α_body:
xchain732_n0_α:
bb481_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_I -> [r12+64]
 mov qword ptr [r12 + 64], 6
 movabs rax, 2
 mov qword ptr [r12 + 72], rax
# marshal arg1 = LIT_I -> [r12+80]
 mov qword ptr [r12 + 80], 6
 movabs rax, 3
 mov qword ptr [r12 + 88], rax
# marshal arg2 = LIT_I -> [r12+96]
 mov qword ptr [r12 + 96], 6
 movabs rax, 5
 mov qword ptr [r12 + 104], rax
# marshal arg3 = LIT_I -> [r12+112]
 mov qword ptr [r12 + 112], 6
 movabs rax, 7
 mov qword ptr [r12 + 120], rax
# marshal arg4 = LIT_I -> [r12+128]
 mov qword ptr [r12 + 128], 6
 movabs rax, 11
 mov qword ptr [r12 + 136], rax
# marshal arg5 = LIT_I -> [r12+144]
 mov qword ptr [r12 + 144], 6
 movabs rax, 13
 mov qword ptr [r12 + 152], rax
# marshal arg6 = LIT_I -> [r12+160]
 mov qword ptr [r12 + 160], 6
 movabs rax, 17
 mov qword ptr [r12 + 168], rax
# marshal arg7 = LIT_I -> [r12+176]
 mov qword ptr [r12 + 176], 6
 movabs rax, 19
 mov qword ptr [r12 + 184], rax
# marshal arg8 = LIT_I -> [r12+192]
 mov qword ptr [r12 + 192], 6
 movabs rax, 23
 mov qword ptr [r12 + 200], rax
# marshal arg9 = LIT_I -> [r12+208]
 mov qword ptr [r12 + 208], 6
 movabs rax, 29
 mov qword ptr [r12 + 216], rax
# marshal arg10 = LIT_I -> [r12+224]
 mov qword ptr [r12 + 224], 6
 movabs rax, 31
 mov qword ptr [r12 + 232], rax
# marshal arg11 = LIT_I -> [r12+240]
 mov qword ptr [r12 + 240], 6
 movabs rax, 37
 mov qword ptr [r12 + 248], rax
# marshal arg12 = LIT_I -> [r12+256]
 mov qword ptr [r12 + 256], 6
 movabs rax, 41
 mov qword ptr [r12 + 264], rax
# marshal arg13 = LIT_I -> [r12+272]
 mov qword ptr [r12 + 272], 6
 movabs rax, 43
 mov qword ptr [r12 + 280], rax
# marshal arg14 = LIT_I -> [r12+288]
 mov qword ptr [r12 + 288], 6
 movabs rax, 47
 mov qword ptr [r12 + 296], rax
# marshal arg15 = LIT_I -> [r12+304]
 mov qword ptr [r12 + 304], 6
 movabs rax, 53
 mov qword ptr [r12 + 312], rax
# marshal arg16 = LIT_I -> [r12+320]
 mov qword ptr [r12 + 320], 6
 movabs rax, 59
 mov qword ptr [r12 + 328], rax
# marshal arg17 = LIT_I -> [r12+336]
 mov qword ptr [r12 + 336], 6
 movabs rax, 61
 mov qword ptr [r12 + 344], rax
# marshal arg18 = LIT_I -> [r12+352]
 mov qword ptr [r12 + 352], 6
 movabs rax, 67
 mov qword ptr [r12 + 360], rax
# marshal arg19 = LIT_I -> [r12+368]
 mov qword ptr [r12 + 368], 6
 movabs rax, 71
 mov qword ptr [r12 + 376], rax
# marshal arg20 = LIT_I -> [r12+384]
 mov qword ptr [r12 + 384], 6
 movabs rax, 73
 mov qword ptr [r12 + 392], rax
# marshal arg21 = LIT_I -> [r12+400]
 mov qword ptr [r12 + 400], 6
 movabs rax, 79
 mov qword ptr [r12 + 408], rax
# marshal arg22 = LIT_I -> [r12+416]
 mov qword ptr [r12 + 416], 6
 movabs rax, 83
 mov qword ptr [r12 + 424], rax
# marshal arg23 = LIT_I -> [r12+432]
 mov qword ptr [r12 + 432], 6
 movabs rax, 89
 mov qword ptr [r12 + 440], rax
# marshal arg24 = LIT_I -> [r12+448]
 mov qword ptr [r12 + 448], 6
 movabs rax, 97
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lbynamefn734: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn734]
 lea rsi, [r12 + 64]
 mov edx, 25
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain732_n2_α
 jmp xchain732_n1_α
xchain732_n0_β:
 jmp xchain732_n2_α
xchain732_n1_α:
bb482_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain732_n2_α
 xchain732_n1_β:
 jmp xchain732_n2_α
xchain732_n2_α:
bb483_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn737: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn737]
 lea rsi, [r12 + 496]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain732_n3_α
 jmp xchain732_n3_α
 xchain732_n2_β:
 jmp xchain732_n3_α
xchain732_n3_α:
bb484_α:
  .section .rodata
  .Lcall484_pname: .string "compiler"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall484_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain732_n4_α
 jmp xchain732_n4_α
xchain732_n3_β:
 jmp xchain732_n4_α
xchain732_n4_α:
bb485_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn740: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn740]
 lea rsi, [r12 + 528]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain732_n5_α
 jmp xchain732_n5_α
 xchain732_n4_β:
 jmp xchain732_n5_α
xchain732_n5_α:
bb486_α:
  .section .rodata
  .Lcall486_pname: .string "boundaries"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall486_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain732_n6_α
 jmp xchain732_n6_α
xchain732_n5_β:
 jmp xchain732_n6_α
xchain732_n6_α:
bb487_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn743: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn743]
 lea rsi, [r12 + 560]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain732_n7_α
 jmp xchain732_n7_α
 xchain732_n6_β:
 jmp xchain732_n7_α
xchain732_n7_α:
# IR_LIT_I
bb488_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx744_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain732_n8_α
 xchain732_n7_β:
 jmp xchain732_n85_β
.Lx744_0:
 .quad 1
xchain732_n8_α:
# IR_LIT_I
bb489_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx745_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain732_n9_α
 xchain732_n8_β:
 jmp xchain732_n85_β
.Lx745_0:
 .quad 55
xchain732_n9_α:
# IR_TO
bb490_α:
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 608], rax
.Lx747_0:
 mov rax, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 584]
 cmp rax, rcx
 jg xchain732_n11_α
 mov qword ptr [r12 + 592], 6
 mov qword ptr [r12 + 600], rax
 jmp xchain732_n10_α
 xchain732_n9_β:
 mov rax, qword ptr [r12 + 608]
 add rax, 11
 mov qword ptr [r12 + 608], rax
 jmp .Lx747_0
xchain732_n10_α:
bb491_α:
  .section .rodata
  .Lcall491_pname: .string "fact"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+592]
 mov rdx, qword ptr [r12+600]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall491_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 616], rax
 mov qword ptr [r12 + 624], rdx
 cmp eax, 99
 je xchain732_n85_β
 jmp xchain732_n9_β
xchain732_n10_β:
 jmp xchain732_n85_β
xchain732_n11_α:
# IR_EVERY
 jmp xchain732_n12_α
 xchain732_n11_β:
 jmp xchain732_n12_α
xchain732_n12_α:
bb493_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn751: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn751]
 lea rsi, [r12 + 648]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 632], rax
 mov qword ptr [r12 + 640], rdx
 cmp eax, 99
 je xchain732_n13_α
 jmp xchain732_n13_α
 xchain732_n12_β:
 jmp xchain732_n13_α
xchain732_n13_α:
# IR_LIT_I
bb494_α:
 mov qword ptr [r12 + 648], 6
 mov rax, qword ptr [rip + .Lx752_0]
 mov qword ptr [r12 + 656], rax
 jmp xchain732_n14_α
 xchain732_n13_β:
 jmp xchain732_n85_β
.Lx752_0:
 .quad 35
xchain732_n14_α:
# IR_LIT_I
bb495_α:
 mov qword ptr [r12 + 664], 6
 mov rax, qword ptr [rip + .Lx753_0]
 mov qword ptr [r12 + 672], rax
 jmp xchain732_n15_α
 xchain732_n14_β:
 jmp xchain732_n85_β
.Lx753_0:
 .quad 341
xchain732_n15_α:
# IR_TO
bb496_α:
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 696], rax
.Lx755_0:
 mov rax, qword ptr [r12 + 696]
 mov rcx, qword ptr [r12 + 672]
 cmp rax, rcx
 jg xchain732_n17_α
 mov qword ptr [r12 + 680], 6
 mov qword ptr [r12 + 688], rax
 jmp xchain732_n16_α
 xchain732_n15_β:
 mov rax, qword ptr [r12 + 696]
 add rax, 34
 mov qword ptr [r12 + 696], rax
 jmp .Lx755_0
xchain732_n16_α:
bb497_α:
  .section .rodata
  .Lcall497_pname: .string "fib"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+680]
 mov rdx, qword ptr [r12+688]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall497_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain732_n85_β
 jmp xchain732_n15_β
xchain732_n16_β:
 jmp xchain732_n85_β
xchain732_n17_α:
# IR_EVERY
 jmp xchain732_n18_α
 xchain732_n17_β:
 jmp xchain732_n18_α
xchain732_n18_α:
bb499_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn759: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn759]
 lea rsi, [r12 + 736]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain732_n19_α
 jmp xchain732_n19_α
 xchain732_n18_β:
 jmp xchain732_n19_α
xchain732_n19_α:
bb500_α:
# IR_ALT
 mov qword ptr [r12 + 752], 0
.Lx761_4:
 mov rax, qword ptr [r12 + 752]
 cmp rax, 0
 je .Lx761_5
 mov rax, qword ptr [r12 + 752]
 cmp rax, 1
 je .Lx761_6
 mov rax, qword ptr [r12 + 752]
 cmp rax, 2
 je .Lx761_7
 mov rax, qword ptr [r12 + 752]
 cmp rax, 3
 je .Lx761_8
 jmp xchain732_n21_α
.Lx761_5:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx761_0]
 mov qword ptr [r12 + 744], rax
 mov rax, qword ptr [r12 + 752]
 add rax, 1
 mov qword ptr [r12 + 752], rax
 jmp xchain732_n20_α
.Lx761_6:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx761_1]
 mov qword ptr [r12 + 744], rax
 mov rax, qword ptr [r12 + 752]
 add rax, 1
 mov qword ptr [r12 + 752], rax
 jmp xchain732_n20_α
.Lx761_7:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx761_2]
 mov qword ptr [r12 + 744], rax
 mov rax, qword ptr [r12 + 752]
 add rax, 1
 mov qword ptr [r12 + 752], rax
 jmp xchain732_n20_α
.Lx761_8:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx761_3]
 mov qword ptr [r12 + 744], rax
 mov rax, qword ptr [r12 + 752]
 add rax, 1
 mov qword ptr [r12 + 752], rax
 jmp xchain732_n20_α
 xchain732_n19_β:
 jmp .Lx761_4
.Lx761_0:
 .quad 61
.Lx761_1:
 .quad 89
.Lx761_2:
 .quad 107
.Lx761_3:
 .quad 127
xchain732_n20_α:
bb501_α:
  .section .rodata
  .Lcall501_pname: .string "mersenne"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+736]
 mov rdx, qword ptr [r12+744]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall501_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 760], rax
 mov qword ptr [r12 + 768], rdx
 cmp eax, 99
 je xchain732_n85_β
 jmp xchain732_n19_β
xchain732_n20_β:
 jmp xchain732_n85_β
xchain732_n21_α:
# IR_LIT_I
bb502_α:
 mov qword ptr [r12 + 776], 6
 mov rax, qword ptr [rip + .Lx764_0]
 mov qword ptr [r12 + 784], rax
 jmp xevery763_body_β
 xevery763_body_β:
 jmp xchain732_n22_α
.Lx764_0:
 .quad 61
# IR_EVERY
 jmp xchain732_n22_α
 xchain732_n21_β:
 jmp xchain732_n22_α
xchain732_n22_α:
bb504_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn767: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn767]
 lea rsi, [r12 + 808]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 792], rax
 mov qword ptr [r12 + 800], rdx
 cmp eax, 99
 je xchain732_n23_α
 jmp xchain732_n23_α
 xchain732_n22_β:
 jmp xchain732_n23_α
xchain732_n23_α:
bb505_α:
# IR_ALT
 mov qword ptr [r12 + 824], 0
.Lx769_4:
 mov rax, qword ptr [r12 + 824]
 cmp rax, 0
 je .Lx769_5
 mov rax, qword ptr [r12 + 824]
 cmp rax, 1
 je .Lx769_6
 mov rax, qword ptr [r12 + 824]
 cmp rax, 2
 je .Lx769_7
 mov rax, qword ptr [r12 + 824]
 cmp rax, 3
 je .Lx769_8
 jmp xchain732_n25_α
.Lx769_5:
 mov qword ptr [r12 + 808], 6
 mov rax, qword ptr [rip + .Lx769_0]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 824]
 add rax, 1
 mov qword ptr [r12 + 824], rax
 jmp xchain732_n24_α
.Lx769_6:
 mov qword ptr [r12 + 808], 6
 mov rax, qword ptr [rip + .Lx769_1]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 824]
 add rax, 1
 mov qword ptr [r12 + 824], rax
 jmp xchain732_n24_α
.Lx769_7:
 mov qword ptr [r12 + 808], 6
 mov rax, qword ptr [rip + .Lx769_2]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 824]
 add rax, 1
 mov qword ptr [r12 + 824], rax
 jmp xchain732_n24_α
.Lx769_8:
 mov qword ptr [r12 + 808], 6
 mov rax, qword ptr [rip + .Lx769_3]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 824]
 add rax, 1
 mov qword ptr [r12 + 824], rax
 jmp xchain732_n24_α
 xchain732_n23_β:
 jmp .Lx769_4
.Lx769_0:
 .quad 31
.Lx769_1:
 .quad 61
.Lx769_2:
 .quad 89
.Lx769_3:
 .quad 107
xchain732_n24_α:
bb506_α:
  .section .rodata
  .Lcall506_pname: .string "perfect"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+808]
 mov rdx, qword ptr [r12+816]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall506_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 cmp eax, 99
 je xchain732_n85_β
 jmp xchain732_n23_β
xchain732_n24_β:
 jmp xchain732_n85_β
xchain732_n25_α:
# IR_LIT_I
bb507_α:
 mov qword ptr [r12 + 848], 6
 mov rax, qword ptr [rip + .Lx772_0]
 mov qword ptr [r12 + 856], rax
 jmp xevery771_body_β
 xevery771_body_β:
 jmp xchain732_n26_α
.Lx772_0:
 .quad 31
# IR_EVERY
 jmp xchain732_n26_α
 xchain732_n25_β:
 jmp xchain732_n26_α
xchain732_n26_α:
bb509_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn775: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn775]
 lea rsi, [r12 + 880]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain732_n27_α
 jmp xchain732_n27_α
 xchain732_n26_β:
 jmp xchain732_n27_α
xchain732_n27_α:
# IR_LIT_I
bb510_α:
 mov qword ptr [r12 + 880], 6
 mov rax, qword ptr [rip + .Lx776_0]
 mov qword ptr [r12 + 888], rax
 jmp xchain732_n28_α
 xchain732_n27_β:
 jmp xchain732_n85_β
.Lx776_0:
 .quad 11213
xchain732_n28_α:
# IR_LIT_I
bb511_α:
 mov qword ptr [r12 + 896], 6
 mov rax, qword ptr [rip + .Lx777_0]
 mov qword ptr [r12 + 904], rax
 jmp xchain732_n29_α
 xchain732_n28_β:
 jmp xchain732_n85_β
.Lx777_0:
 .quad 2
xchain732_n29_α:
# IR_LIT_I
bb512_α:
 mov qword ptr [r12 + 912], 6
 mov rax, qword ptr [rip + .Lx778_0]
 mov qword ptr [r12 + 920], rax
 jmp xchain732_n30_α
 xchain732_n29_β:
 jmp xchain732_n85_β
.Lx778_0:
 .quad 16
xchain732_n30_α:
# IR_TO
bb513_α:
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 944], rax
.Lx780_0:
 mov rax, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 920]
 cmp rax, rcx
 jg xchain732_n32_α
 mov qword ptr [r12 + 928], 6
 mov qword ptr [r12 + 936], rax
 jmp xchain732_n31_α
 xchain732_n30_β:
 inc qword ptr [r12 + 944]
 jmp .Lx780_0
xchain732_n31_α:
bb514_α:
  .section .rodata
  .Lcall514_pname: .string "power"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+880]
 mov rdx, qword ptr [r12+888]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+928]
 mov rdx, qword ptr [r12+936]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall514_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 952], rax
 mov qword ptr [r12 + 960], rdx
 cmp eax, 99
 je xchain732_n85_β
 jmp xchain732_n30_β
xchain732_n31_β:
 jmp xchain732_n85_β
xchain732_n32_α:
# IR_EVERY
 jmp xchain732_n33_α
 xchain732_n32_β:
 jmp xchain732_n33_α
xchain732_n33_α:
bb516_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn784: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn784]
 lea rsi, [r12 + 984]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 968], rax
 mov qword ptr [r12 + 976], rdx
 cmp eax, 99
 je xchain732_n34_α
 jmp xchain732_n34_α
 xchain732_n33_β:
 jmp xchain732_n34_α
xchain732_n34_α:
# IR_LIT_I
bb517_α:
 mov qword ptr [r12 + 984], 6
 mov rax, qword ptr [rip + .Lx785_0]
 mov qword ptr [r12 + 992], rax
 jmp xchain732_n35_α
 xchain732_n34_β:
 jmp xchain732_n85_β
.Lx785_0:
 .quad 3
xchain732_n35_α:
# IR_LIT_I
bb518_α:
 mov qword ptr [r12 + 1000], 6
 mov rax, qword ptr [rip + .Lx786_0]
 mov qword ptr [r12 + 1008], rax
 jmp xchain732_n36_α
 xchain732_n35_β:
 jmp xchain732_n85_β
.Lx786_0:
 .quad 60
xchain732_n36_α:
# IR_LIT_I
bb519_α:
 mov qword ptr [r12 + 1016], 6
 mov rax, qword ptr [rip + .Lx787_0]
 mov qword ptr [r12 + 1024], rax
 jmp xchain732_n37_α
 xchain732_n36_β:
 jmp xchain732_n85_β
.Lx787_0:
 .quad 75
xchain732_n37_α:
# IR_TO
bb520_α:
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 1048], rax
.Lx789_0:
 mov rax, qword ptr [r12 + 1048]
 mov rcx, qword ptr [r12 + 1024]
 cmp rax, rcx
 jg xchain732_n39_α
 mov qword ptr [r12 + 1032], 6
 mov qword ptr [r12 + 1040], rax
 jmp xchain732_n38_α
 xchain732_n37_β:
 inc qword ptr [r12 + 1048]
 jmp .Lx789_0
xchain732_n38_α:
bb521_α:
  .section .rodata
  .Lcall521_pname: .string "impower"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+984]
 mov rdx, qword ptr [r12+992]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+103]
 mov rdx, qword ptr [r12+104]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall521_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain732_n85_β
 jmp xchain732_n37_β
xchain732_n38_β:
 jmp xchain732_n85_β
xchain732_n39_α:
# IR_EVERY
 jmp xchain732_n40_α
 xchain732_n39_β:
 jmp xchain732_n40_α
xchain732_n40_α:
bb523_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn793: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn793]
 lea rsi, [r12 + 1088]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 cmp eax, 99
 je xchain732_n41_α
 jmp xchain732_n41_α
 xchain732_n40_β:
 jmp xchain732_n41_α
xchain732_n41_α:
xargsub795_n0_α:
# IR_VAR
bb524_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xbang796_iter_done
 xbang796_iter_β:
 jmp xchain732_n85_β
xbang796_iter_done:
# IR_LIST_BANG
bb525_α:
 mov qword ptr [r12 + 1088], 0
.Lx800_0:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 1088]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1096], rax
 mov qword ptr [r12 + 1104], rdx
 cmp rax, 99
 je xchain732_n85_β
 jmp xicnarg794_done
 xargsub795_n0_β:
 inc qword ptr [r12 + 1088]
 jmp .Lx800_0
xicnarg794_done:
bb526_α:
  .section .rodata
  .Lcall526_pname: .string "minpower"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+109]
 mov rdx, qword ptr [r12+110]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall526_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1112], rax
 mov qword ptr [r12 + 1120], rdx
 cmp eax, 99
 je xchain732_n85_β
 jmp xchain732_n42_α
xchain732_n41_β:
 jmp xchain732_n85_β
xchain732_n42_α:
# IR_EVERY
 jmp xchain732_n43_α
 xchain732_n42_β:
 jmp xchain732_n43_α
xchain732_n43_α:
bb528_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn804: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn804]
 lea rsi, [r12 + 1144]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], rdx
 cmp eax, 99
 je xchain732_n44_α
 jmp xchain732_n44_α
 xchain732_n43_β:
 jmp xchain732_n44_α
xchain732_n44_α:
xaltg805_a0_start:
# IR_LIT_I
bb529_α:
 mov qword ptr [r12 + 1168], 6
 mov rax, qword ptr [rip + .Lx806_0]
 mov qword ptr [r12 + 1176], rax
 jmp xaltg805_a0_succ
 xaltg805_a0_beta:
 jmp xaltg805_a1_start
.Lx806_0:
 .quad 3
xaltg805_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1144], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], 1
jmp xchain732_n45_α
xaltg805_a1_start:
# IR_LIT_I
bb530_α:
 mov qword ptr [r12 + 1184], 6
 mov rax, qword ptr [rip + .Lx808_0]
 mov qword ptr [r12 + 1192], rax
 jmp xaltg805_a1_succ
 xaltg805_a1_beta:
 jmp xaltg805_a2_start
.Lx808_0:
 .quad 6
xaltg805_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1144], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], 1
jmp xchain732_n45_α
xaltg805_a2_start:
# IR_LIT_I
bb531_α:
 mov qword ptr [r12 + 1200], 6
 mov rax, qword ptr [rip + .Lx810_0]
 mov qword ptr [r12 + 1208], rax
 jmp xaltg805_a2_succ
 xaltg805_a2_beta:
 jmp xaltg805_a3_start
.Lx810_0:
 .quad 18446744073709551609
xaltg805_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1144], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], 1
jmp xchain732_n45_α
xaltg805_a3_start:
# IR_LIT_F
bb532_α:
 mov qword ptr [r12 + 1216], 7
 mov rax, qword ptr [rip + .Lx812_0]
 mov qword ptr [r12 + 1224], rax
 jmp xaltg805_a3_succ
 xaltg805_a3_beta:
 jmp xaltg805_a4_start
.Lx812_0:
 .quad 4899813735455503868
xaltg805_a3_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1144], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], 1
jmp xchain732_n45_α
xaltg805_a4_start:
# IR_LIT_F
bb533_α:
 mov qword ptr [r12 + 1232], 7
 mov rax, qword ptr [rip + .Lx814_0]
 mov qword ptr [r12 + 1240], rax
 jmp xaltg805_a4_succ
 xaltg805_a4_beta:
 jmp xaltg805_a5_start
.Lx814_0:
 .quad 4897850183612915712
xaltg805_a4_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1144], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], 1
jmp xchain732_n45_α
xaltg805_a5_start:
# IR_LIT_F
bb534_α:
 mov qword ptr [r12 + 1248], 7
 mov rax, qword ptr [rip + .Lx816_0]
 mov qword ptr [r12 + 1256], rax
 jmp xaltg805_a5_succ
 xaltg805_a5_beta:
 jmp xchain732_n46_α
.Lx816_0:
 .quad 14120963055260208906
xaltg805_a5_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1144], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], 1
jmp xchain732_n45_α
xchain732_n44_β:
jmp xchain732_n46_α
xchain732_n45_α:
bb535_α:
  .section .rodata
  .Lcall535_pname: .string "bigexp"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+114]
 mov rdx, qword ptr [r12+115]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall535_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 cmp eax, 99
 je xchain732_n85_β
 jmp xchain732_n44_β
xchain732_n45_β:
 jmp xchain732_n85_β
xchain732_n46_α:
# IR_LIT_I
bb536_α:
 mov qword ptr [r12 + 1168], 6
 mov rax, qword ptr [rip + .Lx820_0]
 mov qword ptr [r12 + 1176], rax
 jmp xevery819_body_β
 xevery819_body_β:
 jmp xchain732_n47_α
.Lx820_0:
 .quad 3
# IR_EVERY
 jmp xchain732_n47_α
 xchain732_n46_β:
 jmp xchain732_n47_α
xchain732_n47_α:
bb538_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn823: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn823]
 lea rsi, [r12 + 1296]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xchain732_n48_α
 jmp xchain732_n48_α
 xchain732_n47_β:
 jmp xchain732_n48_α
xchain732_n48_α:
xaltg824_a0_start:
# IR_LIT_I
bb539_α:
 mov qword ptr [r12 + 1320], 6
 mov rax, qword ptr [rip + .Lx825_0]
 mov qword ptr [r12 + 1328], rax
 jmp xaltg824_a0_succ
 xaltg824_a0_beta:
 jmp xaltg824_a1_start
.Lx825_0:
 .quad 2
xaltg824_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1304], rax
 mov qword ptr [r12 + 1312], 1
jmp xchain732_n49_α
xaltg824_a1_start:
# IR_LIT_I
bb540_α:
 mov qword ptr [r12 + 1336], 6
 mov rax, qword ptr [rip + .Lx827_0]
 mov qword ptr [r12 + 1344], rax
 jmp xaltg824_a1_succ
 xaltg824_a1_beta:
 jmp xaltg824_a2_start
.Lx827_0:
 .quad 3
xaltg824_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 1304], rax
 mov qword ptr [r12 + 1312], 1
jmp xchain732_n49_α
xaltg824_a2_start:
# IR_LIT_I
bb541_α:
 mov qword ptr [r12 + 1352], 6
 mov rax, qword ptr [rip + .Lx829_0]
 mov qword ptr [r12 + 1360], rax
 jmp xaltg824_a2_succ
 xaltg824_a2_beta:
 jmp xaltg824_a3_start
.Lx829_0:
 .quad 5
xaltg824_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1304], rax
 mov qword ptr [r12 + 1312], 1
jmp xchain732_n49_α
xaltg824_a3_start:
# IR_LIT_I
bb542_α:
 mov qword ptr [r12 + 1368], 6
 mov rax, qword ptr [rip + .Lx831_0]
 mov qword ptr [r12 + 1376], rax
 jmp xaltg824_a3_succ
 xaltg824_a3_beta:
 jmp xaltg824_a4_start
.Lx831_0:
 .quad 7
xaltg824_a3_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1304], rax
 mov qword ptr [r12 + 1312], 1
jmp xchain732_n49_α
xaltg824_a4_start:
# IR_LIT_I
bb543_α:
 mov qword ptr [r12 + 1384], 6
 mov rax, qword ptr [rip + .Lx833_0]
 mov qword ptr [r12 + 1392], rax
 jmp xaltg824_a4_succ
 xaltg824_a4_beta:
 jmp xaltg824_a5_start
.Lx833_0:
 .quad 10
xaltg824_a4_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1304], rax
 mov qword ptr [r12 + 1312], 1
jmp xchain732_n49_α
xaltg824_a5_start:
# IR_LIT_I
bb544_α:
 mov qword ptr [r12 + 1400], 6
 mov rax, qword ptr [rip + .Lx835_0]
 mov qword ptr [r12 + 1408], rax
 jmp xaltg824_a5_succ
 xaltg824_a5_beta:
 jmp xaltg824_a6_start
.Lx835_0:
 .quad 17
xaltg824_a5_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1304], rax
 mov qword ptr [r12 + 1312], 1
jmp xchain732_n49_α
xaltg824_a6_start:
# IR_LIT_I
bb545_α:
 mov qword ptr [r12 + 1416], 6
 mov rax, qword ptr [rip + .Lx837_0]
 mov qword ptr [r12 + 1424], rax
 jmp xaltg824_a6_succ
 xaltg824_a6_beta:
 jmp xaltg824_a7_start
.Lx837_0:
 .quad 51
xaltg824_a6_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1304], rax
 mov qword ptr [r12 + 1312], 1
jmp xchain732_n49_α
xaltg824_a7_start:
# IR_LIT_I
bb546_α:
 mov qword ptr [r12 + 1432], 6
 mov rax, qword ptr [rip + .Lx839_0]
 mov qword ptr [r12 + 1440], rax
 jmp xaltg824_a7_succ
 xaltg824_a7_beta:
 jmp xaltg824_a8_start
.Lx839_0:
 .quad 18446744073709551613
xaltg824_a7_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1304], rax
 mov qword ptr [r12 + 1312], 1
jmp xchain732_n49_α
xaltg824_a8_start:
# IR_LIT_I
bb547_α:
 mov qword ptr [r12 + 1448], 6
 mov rax, qword ptr [rip + .Lx841_0]
 mov qword ptr [r12 + 1456], rax
 jmp xaltg824_a8_succ
 xaltg824_a8_beta:
 jmp xaltg824_a9_start
.Lx841_0:
 .quad 18446744073709551605
xaltg824_a8_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1304], rax
 mov qword ptr [r12 + 1312], 1
jmp xchain732_n49_α
xaltg824_a9_start:
# IR_LIT_I
bb548_α:
 mov qword ptr [r12 + 1464], 6
 mov rax, qword ptr [rip + .Lx843_0]
 mov qword ptr [r12 + 1472], rax
 jmp xaltg824_a9_succ
 xaltg824_a9_beta:
 jmp xchain732_n50_α
.Lx843_0:
 .quad 18446744073709551573
xaltg824_a9_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 1304], rax
 mov qword ptr [r12 + 1312], 1
jmp xchain732_n49_α
xchain732_n48_β:
jmp xchain732_n50_α
xchain732_n49_α:
bb549_α:
  .section .rodata
  .Lcall548_pname: .string "tmul"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+129]
 mov rdx, qword ptr [r12+130]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall548_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1480], rax
 mov qword ptr [r12 + 1488], rdx
 cmp eax, 99
 je xchain732_n85_β
 jmp xchain732_n48_β
xchain732_n49_β:
 jmp xchain732_n85_β
xchain732_n50_α:
# IR_LIT_I
bb550_α:
 mov qword ptr [r12 + 1320], 6
 mov rax, qword ptr [rip + .Lx847_0]
 mov qword ptr [r12 + 1328], rax
 jmp xevery846_body_β
 xevery846_body_β:
 jmp xchain732_n51_α
.Lx847_0:
 .quad 2
# IR_EVERY
 jmp xchain732_n51_α
 xchain732_n50_β:
 jmp xchain732_n51_α
xchain732_n51_α:
bb552_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn850: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn850]
 lea rsi, [r12 + 1512]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1496], rax
 mov qword ptr [r12 + 1504], rdx
 cmp eax, 99
 je xchain732_n52_α
 jmp xchain732_n52_α
 xchain732_n51_β:
 jmp xchain732_n52_α
xchain732_n52_α:
# IR_LIT_I
bb553_α:
 mov qword ptr [r12 + 1512], 6
 mov rax, qword ptr [rip + .Lx851_0]
 mov qword ptr [r12 + 1520], rax
 jmp xchain732_n53_α
 xchain732_n52_β:
 jmp xchain732_n85_β
.Lx851_0:
 .quad 3
xchain732_n53_α:
# IR_LIT_I
bb554_α:
 mov qword ptr [r12 + 1528], 6
 mov rax, qword ptr [rip + .Lx852_0]
 mov qword ptr [r12 + 1536], rax
 jmp xchain732_n54_α
 xchain732_n53_β:
 jmp xchain732_n85_β
.Lx852_0:
 .quad 2
xchain732_n54_α:
# IR_LIT_I
bb555_α:
 mov qword ptr [r12 + 1544], 6
 mov rax, qword ptr [rip + .Lx853_0]
 mov qword ptr [r12 + 1552], rax
 jmp xchain732_n55_α
 xchain732_n54_β:
 jmp xchain732_n85_β
.Lx853_0:
 .quad 50
xchain732_n55_α:
# IR_TO
bb556_α:
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1576], rax
.Lx855_0:
 mov rax, qword ptr [r12 + 1576]
 mov rcx, qword ptr [r12 + 1552]
 cmp rax, rcx
 jg xchain732_n58_α
 mov qword ptr [r12 + 1560], 6
 mov qword ptr [r12 + 1568], rax
 jmp xchain732_n56_α
 xchain732_n55_β:
 inc qword ptr [r12 + 1576]
 jmp .Lx855_0
xchain732_n56_α:
bb557_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 1512]
 mov rsi, qword ptr [r12 + 1520]
 mov rdx, qword ptr [r12 + 1560]
 mov rcx, qword ptr [r12 + 1568]
 mov r8d, 18
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain732_n85_β
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain732_n57_α
 xchain732_n56_β:
 jmp xchain732_n85_β
xchain732_n57_α:
bb558_α:
  .section .rodata
  .Lcall556_pname: .string "tmul"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+158]
 mov rdx, qword ptr [r12+159]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall556_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 cmp eax, 99
 je xchain732_n85_β
 jmp xchain732_n55_β
xchain732_n57_β:
 jmp xchain732_n85_β
xchain732_n58_α:
# IR_EVERY
 jmp xchain732_n59_α
 xchain732_n58_β:
 jmp xchain732_n59_α
xchain732_n59_α:
bb560_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn860: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn860]
 lea rsi, [r12 + 1632]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 cmp eax, 99
 je xchain732_n60_α
 jmp xchain732_n60_α
 xchain732_n59_β:
 jmp xchain732_n60_α
xchain732_n60_α:
# IR_LIT_I
bb561_α:
 mov qword ptr [r12 + 1632], 6
 mov rax, qword ptr [rip + .Lx861_0]
 mov qword ptr [r12 + 1640], rax
 jmp xchain732_n61_α
 xchain732_n60_β:
 jmp xchain732_n82_α
.Lx861_0:
 .quad 787
xchain732_n61_α:
# IR_LIT_I
bb562_α:
 mov qword ptr [r12 + 1648], 6
 mov rax, qword ptr [rip + .Lx862_0]
 mov qword ptr [r12 + 1656], rax
 jmp xchain732_n62_α
 xchain732_n61_β:
 jmp xchain732_n82_α
.Lx862_0:
 .quad 1
xchain732_n62_α:
# IR_LIT_I
bb563_α:
 mov qword ptr [r12 + 1664], 6
 mov rax, qword ptr [rip + .Lx863_0]
 mov qword ptr [r12 + 1672], rax
 jmp xchain732_n63_α
 xchain732_n62_β:
 jmp xchain732_n82_α
.Lx863_0:
 .quad 24
xchain732_n63_α:
# IR_TO
bb564_α:
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 1696], rax
.Lx865_0:
 mov rax, qword ptr [r12 + 1696]
 mov rcx, qword ptr [r12 + 1672]
 cmp rax, rcx
 jg xchain732_n82_α
 mov qword ptr [r12 + 1680], 6
 mov qword ptr [r12 + 1688], rax
 jmp xchain732_n64_α
 xchain732_n63_β:
 inc qword ptr [r12 + 1696]
 jmp .Lx865_0
xchain732_n64_α:
xaltg866_a0_start:
xaltg866_a0_succ:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
jmp xchain732_n65_α
xaltg866_a1_start:
xaltg866_a1_succ:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
jmp xchain732_n65_α
xchain732_n64_β:
jmp xchain732_n66_α
xchain732_n65_α:
bb567_α:
  .section .rodata
  .Lcall565_pname: .string "conv"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+170]
 mov rdx, qword ptr [r12+171]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall565_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je xchain732_n85_β
 jmp xchain732_n64_β
xchain732_n65_β:
 jmp xchain732_n85_β
xchain732_n66_α:
# IR_EVERY
 jmp xchain732_n67_α
 xchain732_n66_β:
 jmp xchain732_n67_α
xchain732_n67_α:
bb569_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn874: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn874]
 lea rsi, [r12 + 1760]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 cmp eax, 99
 je xchain732_n68_α
 jmp xchain732_n68_α
 xchain732_n67_β:
 jmp xchain732_n68_α
xchain732_n68_α:
bb570_α:
  .section .rodata
  .Lcall568_pname: .string "radix"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall568_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 cmp eax, 99
 je xchain732_n69_α
 jmp xchain732_n69_α
xchain732_n68_β:
 jmp xchain732_n69_α
xchain732_n69_α:
bb571_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn877: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn877]
 lea rsi, [r12 + 1792]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 cmp eax, 99
 je xchain732_n70_α
 jmp xchain732_n70_α
 xchain732_n69_β:
 jmp xchain732_n70_α
xchain732_n70_α:
bb572_α:
  .section .rodata
  .Lcall570_pname: .string "over"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall570_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 cmp eax, 99
 je xchain732_n71_α
 jmp xchain732_n71_α
xchain732_n70_β:
 jmp xchain732_n71_α
xchain732_n71_α:
bb573_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_I -> [r12+1824]
 mov qword ptr [r12 + 1824], 6
 movabs rax, 37
 mov qword ptr [r12 + 1832], rax
# marshal arg1 = LIT_F -> [r12+1840]
 mov qword ptr [r12 + 1840], 7
 movabs rax, 4617315517961601024
 mov qword ptr [r12 + 1848], rax
# marshal arg2 = LIT_F -> [r12+1856]
 mov qword ptr [r12 + 1856], 7
 movabs rax, 4890909195324358656
 mov qword ptr [r12 + 1864], rax
# marshal arg3 = LIT_F -> [r12+1872]
 mov qword ptr [r12 + 1872], 7
 movabs rax, 4902878504234982881
 mov qword ptr [r12 + 1880], rax
# marshal arg4 = LIT_F -> [r12+1888]
 mov qword ptr [r12 + 1888], 7
 movabs rax, 4899960268460593793
 mov qword ptr [r12 + 1896], rax
  .section .rodata
  .Lbynamefn880: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn880]
 lea rsi, [r12 + 1824]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 cmp eax, 99
 je xchain732_n73_α
 jmp xchain732_n72_α
xchain732_n71_β:
 jmp xchain732_n73_α
xchain732_n72_α:
bb574_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1808]
 mov rdx, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain732_n73_α
 xchain732_n72_β:
 jmp xchain732_n73_α
xchain732_n73_α:
bb575_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_I -> [r12+1936]
 mov qword ptr [r12 + 1936], 6
 movabs rax, 73
 mov qword ptr [r12 + 1944], rax
# marshal arg1 = LIT_F -> [r12+1952]
 mov qword ptr [r12 + 1952], 7
 movabs rax, 4621256167635550208
 mov qword ptr [r12 + 1960], rax
# marshal arg2 = LIT_F -> [r12+1968]
 mov qword ptr [r12 + 1968], 7
 movabs rax, 14120963055260208906
 mov qword ptr [r12 + 1976], rax
# marshal arg3 = LIT_F -> [r12+1984]
 mov qword ptr [r12 + 1984], 7
 movabs rax, 14115713992639194109
 mov qword ptr [r12 + 1992], rax
# marshal arg4 = LIT_F -> [r12+2000]
 mov qword ptr [r12 + 2000], 7
 movabs rax, 4901352881850614268
 mov qword ptr [r12 + 2008], rax
  .section .rodata
  .Lbynamefn883: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn883]
 lea rsi, [r12 + 1936]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 cmp eax, 99
 je xchain732_n75_α
 jmp xchain732_n74_α
xchain732_n73_β:
 jmp xchain732_n75_α
xchain732_n74_α:
bb576_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1920]
 mov rdx, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 jmp xchain732_n75_α
 xchain732_n74_β:
 jmp xchain732_n75_α
xchain732_n75_α:
bb577_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn886: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn886]
 lea rsi, [r12 + 2048]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 cmp eax, 99
 je xchain732_n76_α
 jmp xchain732_n76_α
 xchain732_n75_β:
 jmp xchain732_n76_α
xchain732_n76_α:
xaltg887_a0_start:
# IR_VAR
bb578_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xbang888_iter_done
 xbang888_iter_β:
 jmp xaltg887_a1_start
xbang888_iter_done:
# IR_LIST_BANG
bb579_α:
 mov qword ptr [r12 + 2072], 0
.Lx892_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 2072]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 cmp rax, 99
 je xaltg887_a1_start
 jmp xaltg887_a0_succ
 xaltg887_a0_beta:
 inc qword ptr [r12 + 2072]
 jmp .Lx892_0
xaltg887_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2056], rax
 mov qword ptr [r12 + 2064], 1
jmp xchain732_n77_α
xaltg887_a1_start:
# IR_VAR
bb580_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xbang894_iter_done
 xbang894_iter_β:
 jmp xchain732_n78_α
xbang894_iter_done:
# IR_LIST_BANG
bb581_α:
 mov qword ptr [r12 + 2096], 0
.Lx898_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 2096]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 2104], rax
 mov qword ptr [r12 + 2112], rdx
 cmp rax, 99
 je xchain732_n78_α
 jmp xaltg887_a1_succ
 xaltg887_a1_beta:
 inc qword ptr [r12 + 2096]
 jmp .Lx898_0
xaltg887_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 2056], rax
 mov qword ptr [r12 + 2064], 1
jmp xchain732_n77_α
xchain732_n76_β:
jmp xchain732_n78_α
xchain732_n77_α:
bb582_α:
  .section .rodata
  .Lcall580_pname: .string "unops"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+204]
 mov rdx, qword ptr [r12+205]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall580_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2120], rax
 mov qword ptr [r12 + 2128], rdx
 cmp eax, 99
 je xchain732_n85_β
 jmp xchain732_n76_β
xchain732_n77_β:
 jmp xchain732_n85_β
xchain732_n78_α:
# IR_VAR
bb583_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xbang902_iter_done
 xbang902_iter_β:
 jmp xchain732_n79_α
xbang902_iter_done:
# IR_LIST_BANG
bb584_α:
 mov qword ptr [r12 + 2136], 0
.Lx906_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 2136]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 cmp rax, 99
 je xchain732_n79_α
 jmp xevery901_body_β
 xevery901_body_β:
 inc qword ptr [r12 + 2136]
 jmp .Lx906_0
# IR_EVERY
 jmp xchain732_n79_α
 xchain732_n78_β:
 jmp xchain732_n79_α
xchain732_n79_α:
bb586_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn909: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn909]
 lea rsi, [r12 + 2176]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 cmp eax, 99
 je xchain732_n80_α
 jmp xchain732_n80_α
 xchain732_n79_β:
 jmp xchain732_n80_α
xchain732_n80_α:
xargsub911_n0_α:
# IR_VAR
bb587_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xbang912_iter_done
 xbang912_iter_β:
 jmp xchain732_n85_β
xbang912_iter_done:
# IR_LIST_BANG
bb588_α:
 mov qword ptr [r12 + 2176], 0
.Lx916_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 2176]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 2184], rax
 mov qword ptr [r12 + 2192], rdx
 cmp rax, 99
 je xchain732_n85_β
 jmp xicnarg910_done
 xargsub911_n0_β:
 inc qword ptr [r12 + 2176]
 jmp .Lx916_0
xicnarg910_done:
xargsub918_n0_α:
# IR_VAR
bb589_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xbang919_iter_done
 xbang919_iter_β:
 jmp xchain732_n85_β
xbang919_iter_done:
# IR_LIST_BANG
bb590_α:
 mov qword ptr [r12 + 2200], 0
.Lx923_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 2200]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 cmp rax, 99
 je xchain732_n85_β
 jmp xicnarg917_done
 xargsub918_n0_β:
 inc qword ptr [r12 + 2200]
 jmp .Lx923_0
xicnarg917_done:
bb591_α:
  .section .rodata
  .Lcall587_pname: .string "binops"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+218]
 mov rdx, qword ptr [r12+219]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+220]
 mov rdx, qword ptr [r12+221]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall587_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 cmp eax, 99
 je xchain732_n85_β
 jmp xchain732_n81_α
xchain732_n80_β:
 jmp xchain732_n85_β
xchain732_n81_α:
# IR_EVERY
 jmp main_ω
 xchain732_n81_β:
 jmp main_ω
xchain732_n82_α:
# IR_LIT_I
bb593_α:
 mov qword ptr [r12 + 2240], 6
 mov rax, qword ptr [rip + .Lx926_0]
 mov qword ptr [r12 + 2248], rax
 jmp xchain732_n83_α
 xchain732_n82_β:
 jmp xchain732_n85_β
.Lx926_0:
 .quad 18446744073709545835
xchain732_n83_α:
# IR_LIT_I
bb594_α:
 mov qword ptr [r12 + 2256], 6
 mov rax, qword ptr [rip + .Lx927_0]
 mov qword ptr [r12 + 2264], rax
 jmp xchain732_n84_α
 xchain732_n83_β:
 jmp xchain732_n85_β
.Lx927_0:
 .quad 1
xchain732_n84_α:
# IR_LIT_I
bb595_α:
 mov qword ptr [r12 + 2272], 6
 mov rax, qword ptr [rip + .Lx928_0]
 mov qword ptr [r12 + 2280], rax
 jmp xchain732_n85_α
 xchain732_n84_β:
 jmp xchain732_n85_β
.Lx928_0:
 .quad 18
xchain732_n85_α:
# IR_TO
bb596_α:
 mov rax, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2304], rax
.Lx930_0:
 mov rax, qword ptr [r12 + 2304]
 mov rcx, qword ptr [r12 + 2280]
 cmp rax, rcx
 jg xchain732_n66_α
 mov qword ptr [r12 + 2288], 6
 mov qword ptr [r12 + 2296], rax
 jmp xchain732_n64_β
 xchain732_n85_β:
 inc qword ptr [r12 + 2304]
 jmp .Lx930_0
main_β:
jmp main_ω
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
.section .rodata
.S0: .string "bb_repalt_yield: sub-expression value slot not materialised"
.text
