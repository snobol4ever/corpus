  .intel_syntax noprefix
  .text
  .globl main
main:
  push rbp
  mov rbp, rsp
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
xchain0_n0_α:
xaltg1_a0_start:
bb1_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+136] -> [r12+104]
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
# marshal arg1 = LIT_I -> [r12+120]
 mov qword ptr [r12 + 120], 6
 movabs rax, 1
 mov qword ptr [r12 + 128], rax
  .section .rodata
  .Lcallfn3: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn3]
 lea rsi, [r12 + 104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 88], rax
 mov qword ptr [r12 + 96], rdx
  .section .rodata
  .Lrkfn4: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn4]
 lea rsi, [r12 + 88]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
 cmp eax, 99
 je xaltg1_a1_start
 jmp xaltg1_a0_succ
 xaltg1_a0_beta:
 jmp xaltg1_a1_start
xaltg1_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], 1
jmp xchain0_n1_α
xaltg1_a1_start:
# IR_LIT_I
bb2_α:
 mov qword ptr [r12 + 152], 6
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 160], rax
 jmp xaltg1_a1_succ
 xaltg1_a1_beta:
 jmp xchain0_n2_α
.Lx6_0:
 .quad 1000
xaltg1_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], 1
jmp xchain0_n1_α
xchain0_n0_β:
jmp xchain0_n2_α
xchain0_n1_α:
bb3_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
bb4_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn10: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn10]
 lea rsi, [r12 + 200]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
bb5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
# IR_VAR
bb6_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n29_β
xchain0_n5_α:
# IR_LIT_I
bb7_α:
 mov qword ptr [r12 + 216], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 224], rax
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n29_β
.Lx14_0:
 .quad 1
xchain0_n6_α:
# IR_VAR
bb8_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n29_β
xchain0_n7_α:
# IR_TO
bb9_α:
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 248], rax
.Lx18_0:
 mov rax, qword ptr [r12 + 248]
 mov rcx, qword ptr [r12 + 8]
 cmp rax, rcx
 jg xchain0_n9_α
 mov qword ptr [r12 + 232], 6
 mov qword ptr [r12 + 240], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 inc qword ptr [r12 + 248]
 jmp .Lx18_0
xchain0_n8_α:
bb10_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+272]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = nested producer-box slot [r12+232] -> [r12+288]
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn20: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain0_n29_β
 jmp xchain0_n7_β
 xchain0_n8_β:
 jmp xchain0_n29_β
xchain0_n9_α:
# IR_EVERY
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n10_α
xchain0_n10_α:
# IR_VAR
bb12_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n29_β
xchain0_n11_α:
# IR_LIT_I
bb13_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n29_β
.Lx24_0:
 .quad 2
xchain0_n12_α:
# IR_VAR
bb14_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n29_β
xchain0_n13_α:
# IR_TO
bb15_α:
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 336], rax
.Lx28_0:
 mov rax, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 8]
 cmp rax, rcx
 jg xchain0_n17_α
 mov qword ptr [r12 + 320], 6
 mov qword ptr [r12 + 328], rax
 jmp xchain0_n14_α
 xchain0_n13_β:
 inc qword ptr [r12 + 336]
 jmp .Lx28_0
xchain0_n14_α:
bb16_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], rdx
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n29_β
xchain0_n15_α:
bb17_α:
# BOX IR_CALL member(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+376]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 376], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 384], rax
# marshal arg1 = nested producer-box slot [r12+344] -> [r12+392]
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 392], rax
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 400], rax
  .section .rodata
  .Lrkfn31: .string "member"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn31]
 lea rsi, [r12 + 376]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 360], rax
 mov qword ptr [r12 + 368], rdx
 cmp eax, 99
 je xchain0_n29_β
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n29_β
xchain0_n16_α:
# IR_VAR
bb18_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n29_β
xchain0_n17_α:
# IR_EVERY
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n19_α
xchain0_n18_α:
# IR_VAR
bb20_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n29_β
xchain0_n19_α:
bb21_α:
# BOX IR_CALL delete(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+424]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 424], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 432], rax
# marshal arg1 = LIT_I -> [r12+440]
 mov qword ptr [r12 + 440], 6
 movabs rax, 1
 mov qword ptr [r12 + 448], rax
  .section .rodata
  .Lrkfn38: .string "delete"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 424]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 408], rax
 mov qword ptr [r12 + 416], rdx
 cmp eax, 99
 je xchain0_n21_α
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n21_α
xchain0_n20_α:
# IR_VAR
bb22_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n29_β
xchain0_n21_α:
# IR_LIT_S
bb23_α:
 mov qword ptr [r12 + 456], 1
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [r12 + 464], rax
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp main_ω
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string "There are "
xchain0_n22_α:
bb24_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 40]
 add rax, rcx
 mov qword ptr [r12 + 472], 6
 mov qword ptr [r12 + 480], rax
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n29_β
xchain0_n23_α:
# IR_VAR
bb25_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp main_ω
xchain0_n24_α:
# IR_VAR
bb26_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n27_α
 xchain0_n24_β:
 jmp xchain0_n29_β
xchain0_n25_α:
# IR_EVERY
 jmp xchain0_n13_β
 xchain0_n25_β:
 jmp xchain0_n13_β
xchain0_n26_α:
# IR_UNOP
bb28_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 488], rax
 mov qword ptr [r12 + 496], rdx
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp main_ω
xchain0_n27_α:
# IR_VAR
bb29_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp xchain0_n29_β
xchain0_n28_α:
# IR_LIT_S
bb30_α:
 mov qword ptr [r12 + 504], 1
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [r12 + 512], rax
 jmp xchain0_n30_α
 xchain0_n28_β:
 jmp main_ω
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string " primes in the first "
xchain0_n29_α:
# IR_TO
bb31_α:
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 536], rax
.Lx53_0:
 mov rax, qword ptr [r12 + 536]
 mov rcx, qword ptr [r12 + 40]
 cmp rax, rcx
 jg xchain0_n25_α
 mov qword ptr [r12 + 520], 6
 mov qword ptr [r12 + 528], rax
 jmp xchain0_n31_α
 xchain0_n29_β:
 inc qword ptr [r12 + 536]
 jmp .Lx53_0
xchain0_n30_α:
# IR_VAR
bb32_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp main_ω
xchain0_n31_α:
bb33_α:
# BOX IR_CALL delete(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+472] -> [r12+560]
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 568], rax
# marshal arg1 = nested producer-box slot [r12+520] -> [r12+576]
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn57: .string "delete"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn57]
 lea rsi, [r12 + 560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain0_n29_β
 jmp xchain0_n29_β
 xchain0_n31_β:
 jmp xchain0_n29_β
xchain0_n32_α:
# IR_LIT_S
bb34_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp main_ω
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string " integers."
xchain0_n33_α:
bb35_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+624]
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx59_0]
 mov qword ptr [r12 + 632], rax
 jmp .Lx59_1
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
 .string "There are "
.Lx59_1:
# marshal arg1 = nested producer-box slot [r12+488] -> [r12+640]
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 648], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+656]
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx59_4]
 mov qword ptr [r12 + 664], rax
 jmp .Lx59_5
.Lx59_4:
 .quad .Lx59_4_s
.Lx59_4_s:
 .string " primes in the first "
.Lx59_5:
# marshal arg3 = varslot [r12+0] -> [r12+672]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 680], rax
# marshal arg4 = LIT_S (string REG-RO sealed in-band) -> [r12+688]
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx59_8]
 mov qword ptr [r12 + 696], rax
 jmp .Lx59_9
.Lx59_8:
 .quad .Lx59_8_s
.Lx59_8_s:
 .string " integers."
.Lx59_9:
  .section .rodata
  .Lrkfn60: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn60]
 lea rsi, [r12 + 624]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
 xchain0_n33_β:
 jmp main_ω
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
