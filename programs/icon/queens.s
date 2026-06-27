  .intel_syntax noprefix
  .text
  .globl proc_safe_α
proc_safe_α:
#=======================================================================================================================
    .global proc_safe_α
    .global proc_safe_β
    .global proc_safe_γ
    .global proc_safe_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_safe_α_body:
xchain0_n0_α:
bb1_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = global VAR NV_GET -> [r12+64]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
# marshal arg1 = varslot [r12+32] -> [r12+80]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lbynamefn2: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn2]
 lea rsi, [r12 + 64]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n1_α
xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
# IR_LIT_I
bb2_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain0_n3_α
 xchain0_n1_β:
 jmp xchain0_n2_α
.Lx3_0:
 .quad 0
xchain0_n2_α:
bb3_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = global VAR NV_GET -> [r12+128]
   lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
# marshal arg1 = global VAR NV_GET -> [r12+144]
   lea rdi, [rip + .S2]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
  .section .rodata
  .Lbynamefn5: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn5]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
xchain0_n2_β:
 jmp xchain0_n5_α
xchain0_n3_α:
bb4_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 56]
 mov rcx, qword ptr [r12 + 104]
 cmp rax, rcx
 je xchain0_n2_α
 mov rcx, qword ptr [r12 + 96]
 mov qword ptr [r12 + 160], rcx
 mov rcx, qword ptr [r12 + 104]
 mov qword ptr [r12 + 168], rcx
 jmp proc_safe_ω
 xchain0_n3_β:
 jmp xchain0_n2_α
xchain0_n4_α:
# IR_LIT_I
bb5_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
.Lx7_0:
 .quad 0
xchain0_n5_α:
bb6_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = global VAR NV_GET -> [r12+208]
   lea rdi, [rip + .S3]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
# marshal arg1 = varslot [r12+32] -> [r12+224]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lbynamefn9: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn9]
 lea rsi, [r12 + 208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n7_α
xchain0_n5_β:
 jmp xchain0_n8_α
xchain0_n6_α:
bb7_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 120]
 mov rcx, qword ptr [r12 + 184]
 cmp rax, rcx
 je xchain0_n5_α
 mov rcx, qword ptr [r12 + 176]
 mov qword ptr [r12 + 240], rcx
 mov rcx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 248], rcx
 jmp proc_safe_ω
 xchain0_n6_β:
 jmp xchain0_n5_α
xchain0_n7_α:
# IR_LIT_I
bb8_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n8_α
.Lx11_0:
 .quad 0
xchain0_n8_α:
# IR_RETURN
bb9_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_safe_γ
xchain0_n9_α:
bb10_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 200]
 mov rcx, qword ptr [r12 + 264]
 cmp rax, rcx
 je xchain0_n8_α
 mov rcx, qword ptr [r12 + 256]
 mov qword ptr [r12 + 272], rcx
 mov rcx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 280], rcx
 jmp proc_safe_ω
 xchain0_n9_β:
 jmp xchain0_n8_α
proc_safe_β:
jmp proc_safe_ω
proc_safe_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_safe_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_show_α
proc_show_α:
#=======================================================================================================================
    .global proc_show_α
    .global proc_show_β
    .global proc_show_γ
    .global proc_show_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_show_α_body:
xchain14_n0_α:
# IR_VAR gva
bb11_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain14_n1_α
 xchain14_n0_β:
 jmp xchain14_n4_α
xchain14_n1_α:
# IR_LIT_I
bb12_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain14_n2_α
 xchain14_n1_β:
 jmp xchain14_n4_α
.Lx16_0:
 .quad 1
xchain14_n2_α:
bb13_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 72]
 mov rcx, qword ptr [r12 + 88]
 add rax, rcx
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain14_n3_α
 xchain14_n2_β:
 jmp xchain14_n4_α
xchain14_n3_α:
bb14_α:
# IR_ASSIGN_DESCR gva
 mov rax, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rcx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rcx
 jmp xchain14_n4_α
 xchain14_n3_β:
 jmp xchain14_n4_α
xchain14_n4_α:
bb15_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+144]
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 152], rax
 jmp .Lx19_1
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "-"
.Lx19_1:
# marshal arg1 = LIT_I -> [r12+160]
 mov qword ptr [r12 + 160], 6
 movabs rax, 4
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn20: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain14_n6_α
 jmp xchain14_n5_α
 xchain14_n4_β:
 jmp xchain14_n6_α
xchain14_n5_α:
bb16_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain14_n6_α
 xchain14_n5_β:
 jmp xchain14_n6_α
xchain14_n6_α:
# IR_LIT_S
bb17_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain14_n7_α
 xchain14_n6_β:
 jmp xchain14_n10_α
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "solution "
xchain14_n7_α:
# IR_VAR gva
bb18_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain14_n8_α
 xchain14_n7_β:
 jmp xchain14_n10_α
xchain14_n8_α:
# IR_LIT_S
bb19_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain14_n9_α
 xchain14_n8_β:
 jmp xchain14_n10_α
.Lx24_0:
 .quad .Lx24_0_s
.Lx24_0_s:
 .string ":"
xchain14_n9_α:
bb20_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx25_1
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string "solution "
.Lx25_1:
# marshal arg1 = global VAR NV_GET -> [r12+272]
   lea rdi, [rip + .S4]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+288]
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx25_4]
 mov qword ptr [r12 + 296], rax
 jmp .Lx25_5
.Lx25_4:
 .quad .Lx25_4_s
.Lx25_4_s:
 .string ":"
.Lx25_5:
  .section .rodata
  .Lrkfn26: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn26]
 lea rsi, [r12 + 256]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain14_n10_α
 jmp xchain14_n10_α
 xchain14_n9_β:
 jmp xchain14_n10_α
xchain14_n10_α:
# IR_LIT_I
bb21_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain14_n11_α
 xchain14_n10_β:
 jmp xchain14_n12_β
.Lx27_0:
 .quad 1
xchain14_n11_α:
# IR_VAR gva
bb22_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain14_n12_α
 xchain14_n11_β:
 jmp xchain14_n12_β
xchain14_n12_α:
# IR_TO
bb23_α:
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 352], rax
.Lx30_0:
 mov rax, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 328]
 cmp rax, rcx
 jg xchain14_n27_α
 mov qword ptr [r12 + 336], 6
 mov qword ptr [r12 + 344], rax
 jmp xchain14_n13_α
 xchain14_n12_β:
 inc qword ptr [r12 + 352]
 jmp .Lx30_0
xchain14_n13_α:
bb24_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 360], rax
 mov qword ptr [r12 + 368], rdx
 jmp xchain14_n14_α
 xchain14_n13_β:
 jmp xchain14_n12_β
xchain14_n14_α:
# IR_LIT_S
bb25_α:
 mov qword ptr [r12 + 376], 1
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [r12 + 384], rax
 jmp xchain14_n15_α
 xchain14_n14_β:
 jmp xchain14_n17_α
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "  "
xchain14_n15_α:
# IR_VAR
bb26_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain14_n16_α
 xchain14_n15_β:
 jmp xchain14_n17_α
xchain14_n16_α:
bb27_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+408]
 mov qword ptr [r12 + 408], 1
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 416], rax
 jmp .Lx35_1
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string "  "
.Lx35_1:
# marshal arg1 = varslot [r12+16] -> [r12+424]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 424], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 432], rax
  .section .rodata
  .Lrkfn36: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn36]
 lea rsi, [r12 + 408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 392], rax
 mov qword ptr [r12 + 400], rdx
 cmp eax, 99
 je xchain14_n17_α
 jmp xchain14_n17_α
 xchain14_n16_β:
 jmp xchain14_n17_α
xchain14_n17_α:
bb28_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+456]
 mov qword ptr [r12 + 456], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 464], rax
 jmp .Lx37_1
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "|   "
.Lx37_1:
# marshal arg1 = global VAR NV_GET -> [r12+472]
   lea rdi, [rip + .S2]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 472], rax
 mov qword ptr [r12 + 480], rdx
  .section .rodata
  .Lrkfn38: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 456]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 440], rax
 mov qword ptr [r12 + 448], rdx
 cmp eax, 99
 je xchain14_n19_α
 jmp xchain14_n18_α
 xchain14_n17_β:
 jmp xchain14_n19_α
xchain14_n18_α:
# IR_LIT_S
bb29_α:
 mov qword ptr [r12 + 488], 1
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [r12 + 496], rax
 jmp xchain14_n20_α
 xchain14_n18_β:
 jmp xchain14_n19_α
.Lx39_0:
 .quad .Lx39_0_s
.Lx39_0_s:
 .string "|"
xchain14_n19_α:
# IR_VAR
bb30_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain14_n21_α
 xchain14_n19_β:
 jmp xchain14_n23_α
xchain14_n20_α:
bb31_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 440]
 mov rsi, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 488]
 mov rcx, qword ptr [r12 + 496]
 call str_concat_d@PLT
 mov qword ptr [r12 + 504], rax
 mov qword ptr [r12 + 512], rdx
 jmp xchain14_n22_α
 xchain14_n20_β:
 jmp xchain14_n19_α
xchain14_n21_α:
 lea rdi, [rip + .S5]
 call rt_bomb@PLT
 ud2
xchain14_n22_α:
bb33_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 520], rax
 mov qword ptr [r12 + 528], rdx
 jmp xchain14_n19_α
 xchain14_n22_β:
 jmp xchain14_n19_α
xchain14_n23_α:
# IR_LIT_S
bb34_α:
 mov qword ptr [r12 + 536], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [r12 + 544], rax
 jmp xchain14_n24_α
 xchain14_n23_β:
 jmp xchain14_n12_β
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "  "
xchain14_n24_α:
# IR_VAR
bb35_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain14_n25_α
 xchain14_n24_β:
 jmp xchain14_n12_β
xchain14_n25_α:
bb36_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+568]
 mov qword ptr [r12 + 568], 1
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [r12 + 576], rax
 jmp .Lx49_1
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string "  "
.Lx49_1:
# marshal arg1 = varslot [r12+48] -> [r12+584]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 584], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 592], rax
  .section .rodata
  .Lrkfn50: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn50]
 lea rsi, [r12 + 568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 552], rax
 mov qword ptr [r12 + 560], rdx
 cmp eax, 99
 je xchain14_n12_β
 jmp xchain14_n26_α
 xchain14_n25_β:
 jmp xchain14_n12_β
xchain14_n26_α:
jmp xchain14_n12_β
xchain14_n26_β:
jmp xchain14_n12_β
xchain14_n27_α:
# IR_EVERY
 jmp xchain14_n28_α
 xchain14_n27_β:
 jmp xchain14_n28_α
xchain14_n28_α:
# IR_LIT_S
bb38_α:
 mov qword ptr [r12 + 600], 1
 mov rax, qword ptr [rip + .Lx52_0]
 mov qword ptr [r12 + 608], rax
 jmp xchain14_n29_α
 xchain14_n28_β:
 jmp proc_show_ω
.Lx52_0:
 .quad .Lx52_0_s
.Lx52_0_s:
 .string "  "
xchain14_n29_α:
# IR_VAR
bb39_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain14_n30_α
 xchain14_n29_β:
 jmp proc_show_ω
xchain14_n30_α:
bb40_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+632]
 mov qword ptr [r12 + 632], 1
 mov rax, qword ptr [rip + .Lx55_0]
 mov qword ptr [r12 + 640], rax
 jmp .Lx55_1
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "  "
.Lx55_1:
# marshal arg1 = varslot [r12+16] -> [r12+648]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 648], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 656], rax
  .section .rodata
  .Lrkfn56: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn56]
 lea rsi, [r12 + 632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 616], rax
 mov qword ptr [r12 + 624], rdx
 cmp eax, 99
 je proc_show_ω
 jmp proc_show_γ
 xchain14_n30_β:
 jmp proc_show_ω
proc_show_β:
jmp proc_show_ω
proc_show_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_show_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_try_col_α
proc_try_col_α:
#=======================================================================================================================
    .global proc_try_col_α
    .global proc_try_col_β
    .global proc_try_col_γ
    .global proc_try_col_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_try_col_α_body:
xchain57_n0_α:
# IR_VAR
bb41_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain57_n1_α
 xchain57_n0_β:
 jmp xchain57_n4_α
xchain57_n1_α:
# IR_VAR gva
bb42_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain57_n2_α
 xchain57_n1_β:
 jmp xchain57_n4_α
xchain57_n2_α:
bb43_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 56]
 cmp rax, rcx
 jle xchain57_n4_α
 mov rcx, qword ptr [r12 + 48]
 mov qword ptr [r12 + 64], rcx
 mov rcx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 72], rcx
 jmp xchain57_n3_α
 xchain57_n2_β:
 jmp xchain57_n4_α
xchain57_n3_α:
bb44_α:
  .section .rodata
  .Lcall44_pname: .string "show"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall44_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain57_n5_α
 jmp xchain57_n5_α
xchain57_n3_β:
 jmp xchain57_n5_α
xchain57_n4_α:
# IR_LIT_I
bb45_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain57_n6_α
 xchain57_n4_β:
 jmp xchain57_n7_β
.Lx63_0:
 .quad 1
xchain57_n5_α:
# IR_RETURN
bb46_α:
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_try_col_γ
xchain57_n6_α:
# IR_VAR gva
bb47_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain57_n7_α
 xchain57_n6_β:
 jmp xchain57_n7_β
xchain57_n7_α:
# IR_TO
bb48_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 144], rax
.Lx67_0:
 mov rax, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain57_n26_α
 mov qword ptr [r12 + 128], 6
 mov qword ptr [r12 + 136], rax
 jmp xchain57_n8_α
 xchain57_n7_β:
 inc qword ptr [r12 + 144]
 jmp .Lx67_0
xchain57_n8_α:
bb49_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 152], rax
 mov qword ptr [r12 + 160], rdx
 jmp xchain57_n9_α
 xchain57_n8_β:
 jmp xchain57_n7_β
xchain57_n9_α:
xargsub70_n0_α:
# IR_VAR
bb50_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xicnarg69_done
 xargsub70_n0_β:
 jmp xchain57_n7_β
xicnarg69_done:
xargsub74_n0_α:
# IR_VAR
bb51_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xicnarg73_done
 xargsub74_n0_β:
 jmp xchain57_n7_β
xicnarg73_done:
bb52_α:
  .section .rodata
  .Lcall52_pname: .string "safe"
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
   lea rdi, [rip + .Lcall52_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 cmp eax, 99
 je xchain57_n7_β
 jmp xchain57_n10_α
xchain57_n9_β:
 jmp xchain57_n7_β
xchain57_n10_α:
# IR_VAR gva
bb53_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 jmp xchain57_n11_α
 xchain57_n10_β:
 jmp xchain57_n12_α
xchain57_n11_α:
bb54_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 152]
 cmp eax, 4
 jne .Lx81_0
 mov rax, qword ptr [r12 + 168]
 cmp eax, 6
 jne .Lx81_0
 mov rsi, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 176]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx81_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx81_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain57_n12_α
.Lx81_0:
 mov rdi, qword ptr [r12 + 152]
 mov rsi, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov rcx, qword ptr [r12 + 176]
 mov r8, qword ptr [r12 + 184]
 mov r9, qword ptr [r12 + 192]
 call subscript_set@PLT
 cmp eax, 0
 je xchain57_n12_α
 jmp xchain57_n12_α
 xchain57_n11_β:
 jmp xchain57_n12_α
xchain57_n12_α:
# IR_VAR gva
bb55_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 jmp xchain57_n13_α
 xchain57_n12_β:
 jmp xchain57_n14_α
xchain57_n13_α:
 lea rdi, [rip + .S5]
 call rt_bomb@PLT
 ud2
xchain57_n14_α:
# IR_VAR gva
bb57_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
 jmp xchain57_n15_α
 xchain57_n14_β:
 jmp xchain57_n16_α
xchain57_n15_α:
 lea rdi, [rip + .S5]
 call rt_bomb@PLT
 ud2
xchain57_n16_α:
# IR_VAR gva
bb59_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 jmp xchain57_n17_α
 xchain57_n16_β:
 jmp xchain57_n18_α
xchain57_n17_α:
# IR_LIT_I
bb60_α:
 mov qword ptr [r12 + 248], 6
 mov rax, qword ptr [rip + .Lx90_0]
 mov qword ptr [r12 + 256], rax
 jmp xiset89_val_done
 xiset89_val_β:
 jmp xchain57_n18_α
.Lx90_0:
 .quad 1
xiset89_val_done:
xiset89_key_done:
 lea rdi, [rip + .S5]
 call rt_bomb@PLT
 ud2
xchain57_n18_α:
xargsub94_n0_α:
# IR_VAR
bb63_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub94_n1_α
 xargsub94_n0_β:
 jmp xchain57_n19_α
xargsub94_n1_α:
# IR_LIT_I
bb64_α:
 mov qword ptr [r12 + 264], 6
 mov rax, qword ptr [rip + .Lx97_0]
 mov qword ptr [r12 + 272], rax
 jmp xargsub94_n2_α
 xargsub94_n1_β:
 jmp xchain57_n19_α
.Lx97_0:
 .quad 1
xargsub94_n2_α:
bb65_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 272]
 add rax, rcx
 mov qword ptr [r12 + 280], 6
 mov qword ptr [r12 + 288], rax
 jmp xicnarg93_done
 xargsub94_n2_β:
 jmp xchain57_n19_α
xicnarg93_done:
bb66_α:
  .section .rodata
  .Lcall66_pname: .string "try_col"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+280]
 mov rdx, qword ptr [r12+288]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall66_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 296], rax
 mov qword ptr [r12 + 304], rdx
 cmp eax, 99
 je xchain57_n19_α
 jmp xchain57_n19_α
xchain57_n18_β:
 jmp xchain57_n19_α
xchain57_n19_α:
# IR_VAR gva
bb67_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], rdx
 jmp xchain57_n20_α
 xchain57_n19_β:
 jmp xchain57_n21_α
xchain57_n20_α:
 lea rdi, [rip + .S5]
 call rt_bomb@PLT
 ud2
xchain57_n21_α:
# IR_VAR gva
bb69_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 jmp xchain57_n22_α
 xchain57_n21_β:
 jmp xchain57_n23_α
xchain57_n22_α:
# IR_LIT_I
bb70_α:
 mov qword ptr [r12 + 344], 6
 mov rax, qword ptr [rip + .Lx105_0]
 mov qword ptr [r12 + 352], rax
 jmp xiset104_val_done
 xiset104_val_β:
 jmp xchain57_n23_α
.Lx105_0:
 .quad 0
xiset104_val_done:
xiset104_key_done:
 lea rdi, [rip + .S5]
 call rt_bomb@PLT
 ud2
xchain57_n23_α:
# IR_VAR gva
bb73_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 360], rax
 mov qword ptr [r12 + 368], rdx
 jmp xchain57_n24_α
 xchain57_n23_β:
 jmp xchain57_n7_β
xchain57_n24_α:
# IR_LIT_I
bb74_α:
 mov qword ptr [r12 + 376], 6
 mov rax, qword ptr [rip + .Lx110_0]
 mov qword ptr [r12 + 384], rax
 jmp xiset109_val_done
 xiset109_val_β:
 jmp xchain57_n7_β
.Lx110_0:
 .quad 0
xiset109_val_done:
xiset109_key_done:
 lea rdi, [rip + .S5]
 call rt_bomb@PLT
 ud2
xchain57_n25_α:
jmp xchain57_n7_β
xchain57_n25_β:
jmp xchain57_n7_β
xchain57_n26_α:
# IR_EVERY
 jmp proc_try_col_ω
 xchain57_n26_β:
 jmp proc_try_col_ω
proc_try_col_β:
jmp proc_try_col_ω
proc_try_col_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_try_col_ω:
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
  .Lstartup_pname0: .string "safe"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_safe_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname1: .string "show"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_show_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname2: .string "try_col"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_try_col_α]
  call rt_proc_set_fn@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "n"
  .Lgvan1: .string "placed"
  .Lgvan2: .string "rows"
  .Lgvan3: .string "up"
  .Lgvan4: .string "down"
  .Lgvan5: .string "qcount"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .quad .Lgvan5
  .section .bss
  .align 16
__gva: .space 96, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 6
  call gva_register@PLT
  mov rbx, rax
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
xchain114_n0_α:
xaltg115_a0_start:
bb78_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+88] -> [r12+56]
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 56], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 64], rax
# marshal arg1 = LIT_I -> [r12+72]
 mov qword ptr [r12 + 72], 6
 movabs rax, 1
 mov qword ptr [r12 + 80], rax
  .section .rodata
  .Lcallfn117: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn117]
 lea rsi, [r12 + 56]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], rdx
  .section .rodata
  .Lrkfn118: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn118]
 lea rsi, [r12 + 40]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 24], rax
 mov qword ptr [r12 + 32], rdx
 cmp eax, 99
 je xaltg115_a1_start
 jmp xaltg115_a0_succ
 xaltg115_a0_beta:
 jmp xaltg115_a1_start
xaltg115_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 8], rax
 mov qword ptr [r12 + 16], 1
jmp xchain114_n1_α
xaltg115_a1_start:
# IR_LIT_I
bb79_α:
 mov qword ptr [r12 + 104], 6
 mov rax, qword ptr [rip + .Lx120_0]
 mov qword ptr [r12 + 112], rax
 jmp xaltg115_a1_succ
 xaltg115_a1_beta:
 jmp xchain114_n2_α
.Lx120_0:
 .quad 6
xaltg115_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 8], rax
 mov qword ptr [r12 + 16], 1
jmp xchain114_n1_α
xchain114_n0_β:
jmp xchain114_n2_α
xchain114_n1_α:
bb80_α:
# IR_ASSIGN_DESCR gva
 mov rax, qword ptr [r12 + 0]
 mov rcx, qword ptr [r12 + 8]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rcx
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rcx
 jmp xchain114_n2_α
 xchain114_n1_β:
 jmp xchain114_n2_α
xchain114_n2_α:
bb81_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+152]
   lea rdi, [rip + .S2]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 152], rax
 mov qword ptr [r12 + 160], rdx
# marshal arg1 = LIT_I -> [r12+168]
 mov qword ptr [r12 + 168], 6
 movabs rax, 0
 mov qword ptr [r12 + 176], rax
  .section .rodata
  .Lrkfn124: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn124]
 lea rsi, [r12 + 152]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 cmp eax, 99
 je xchain114_n4_α
 jmp xchain114_n3_α
 xchain114_n2_β:
 jmp xchain114_n4_α
xchain114_n3_α:
bb82_α:
# IR_ASSIGN_DESCR gva
 mov rax, qword ptr [r12 + 136]
 mov rcx, qword ptr [r12 + 144]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rcx
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rcx
 jmp xchain114_n4_α
 xchain114_n3_β:
 jmp xchain114_n4_α
xchain114_n4_α:
bb83_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+216]
   lea rdi, [rip + .S2]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
# marshal arg1 = LIT_I -> [r12+232]
 mov qword ptr [r12 + 232], 6
 movabs rax, 0
 mov qword ptr [r12 + 240], rax
  .section .rodata
  .Lrkfn127: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn127]
 lea rsi, [r12 + 216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 cmp eax, 99
 je xchain114_n6_α
 jmp xchain114_n5_α
 xchain114_n4_β:
 jmp xchain114_n6_α
xchain114_n5_α:
bb84_α:
# IR_ASSIGN_DESCR gva
 mov rax, qword ptr [r12 + 200]
 mov rcx, qword ptr [r12 + 208]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rcx
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], rcx
 jmp xchain114_n6_α
 xchain114_n5_β:
 jmp xchain114_n6_α
xchain114_n6_α:
bb85_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+280]
 mov qword ptr [r12 + 280], 6
 movabs rax, 2
 mov qword ptr [r12 + 288], rax
# marshal arg1 = LIT_I -> [r12+296]
 mov qword ptr [r12 + 296], 6
 movabs rax, 0
 mov qword ptr [r12 + 304], rax
  .section .rodata
  .Lrkfn130: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn130]
 lea rsi, [r12 + 280]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 264], rax
 mov qword ptr [r12 + 272], rdx
 cmp eax, 99
 je xchain114_n8_α
 jmp xchain114_n7_α
 xchain114_n6_β:
 jmp xchain114_n8_α
xchain114_n7_α:
bb86_α:
# IR_ASSIGN_DESCR gva
 mov rax, qword ptr [r12 + 264]
 mov rcx, qword ptr [r12 + 272]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rcx
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], rcx
 jmp xchain114_n8_α
 xchain114_n7_β:
 jmp xchain114_n8_α
xchain114_n8_α:
bb87_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+344]
 mov qword ptr [r12 + 344], 6
 movabs rax, 2
 mov qword ptr [r12 + 352], rax
# marshal arg1 = LIT_I -> [r12+360]
 mov qword ptr [r12 + 360], 6
 movabs rax, 0
 mov qword ptr [r12 + 368], rax
  .section .rodata
  .Lrkfn133: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn133]
 lea rsi, [r12 + 344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xchain114_n10_α
 jmp xchain114_n9_α
 xchain114_n8_β:
 jmp xchain114_n10_α
xchain114_n9_α:
bb88_α:
# IR_ASSIGN_DESCR gva
 mov rax, qword ptr [r12 + 328]
 mov rcx, qword ptr [r12 + 336]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rcx
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rcx
 jmp xchain114_n10_α
 xchain114_n9_β:
 jmp xchain114_n10_α
xchain114_n10_α:
# IR_LIT_I
bb89_α:
 mov qword ptr [r12 + 392], 6
 mov rax, qword ptr [rip + .Lx135_0]
 mov qword ptr [r12 + 400], rax
 jmp xchain114_n11_α
 xchain114_n10_β:
 jmp xchain114_n12_α
.Lx135_0:
 .quad 0
xchain114_n11_α:
bb90_α:
# IR_ASSIGN_DESCR gva
 mov rax, qword ptr [r12 + 392]
 mov rcx, qword ptr [r12 + 400]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rcx
 mov qword ptr [r12 + 408], rax
 mov qword ptr [r12 + 416], rcx
 jmp xchain114_n12_α
 xchain114_n11_β:
 jmp xchain114_n12_α
xchain114_n12_α:
# IR_VAR gva
bb91_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 424], rax
 mov qword ptr [r12 + 432], rdx
 jmp xchain114_n13_α
 xchain114_n12_β:
 jmp xchain114_n15_α
xchain114_n13_α:
# IR_LIT_S
bb92_α:
 mov qword ptr [r12 + 440], 1
 mov rax, qword ptr [rip + .Lx138_0]
 mov qword ptr [r12 + 448], rax
 jmp xchain114_n14_α
 xchain114_n13_β:
 jmp xchain114_n15_α
.Lx138_0:
 .quad .Lx138_0_s
.Lx138_0_s:
 .string "-Queens:"
xchain114_n14_α:
bb93_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+472]
   lea rdi, [rip + .S2]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 472], rax
 mov qword ptr [r12 + 480], rdx
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+488]
 mov qword ptr [r12 + 488], 1
 mov rax, qword ptr [rip + .Lx139_2]
 mov qword ptr [r12 + 496], rax
 jmp .Lx139_3
.Lx139_2:
 .quad .Lx139_2_s
.Lx139_2_s:
 .string "-Queens:"
.Lx139_3:
  .section .rodata
  .Lrkfn140: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn140]
 lea rsi, [r12 + 472]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 456], rax
 mov qword ptr [r12 + 464], rdx
 cmp eax, 99
 je xchain114_n15_α
 jmp xchain114_n15_α
 xchain114_n14_β:
 jmp xchain114_n15_α
xchain114_n15_α:
xargsub142_n0_α:
# IR_LIT_I
bb94_α:
 mov qword ptr [r12 + 504], 6
 mov rax, qword ptr [rip + .Lx143_0]
 mov qword ptr [r12 + 512], rax
 jmp xicnarg141_done
 xargsub142_n0_β:
 jmp xchain114_n16_α
.Lx143_0:
 .quad 1
xicnarg141_done:
bb95_α:
  .section .rodata
  .Lcall96_pname: .string "try_col"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+504]
 mov rdx, qword ptr [r12+512]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall96_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 520], rax
 mov qword ptr [r12 + 528], rdx
 cmp eax, 99
 je xchain114_n16_α
 jmp xchain114_n16_α
xchain114_n15_β:
 jmp xchain114_n16_α
xchain114_n16_α:
# IR_VAR gva
bb96_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 536], rax
 mov qword ptr [r12 + 544], rdx
 jmp xchain114_n17_α
 xchain114_n16_β:
 jmp main_ω
xchain114_n17_α:
# IR_LIT_S
bb97_α:
 mov qword ptr [r12 + 552], 1
 mov rax, qword ptr [rip + .Lx146_0]
 mov qword ptr [r12 + 560], rax
 jmp xchain114_n18_α
 xchain114_n17_β:
 jmp main_ω
.Lx146_0:
 .quad .Lx146_0_s
.Lx146_0_s:
 .string " solutions total."
xchain114_n18_α:
bb98_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+584]
   lea rdi, [rip + .S4]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], rdx
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+600]
 mov qword ptr [r12 + 600], 1
 mov rax, qword ptr [rip + .Lx147_2]
 mov qword ptr [r12 + 608], rax
 jmp .Lx147_3
.Lx147_2:
 .quad .Lx147_2_s
.Lx147_2_s:
 .string " solutions total."
.Lx147_3:
  .section .rodata
  .Lrkfn148: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn148]
 lea rsi, [r12 + 584]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 568], rax
 mov qword ptr [r12 + 576], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
 xchain114_n18_β:
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
.section .rodata
.S0: .string "rows"
.S1: .string "up"
.S2: .string "n"
.S3: .string "down"
.S4: .string "qcount"
.S5: .string "bb_idx_set: needs base/key/value operand slots ([\316\266+off] producers)"
.S6: .string "placed"
.text
