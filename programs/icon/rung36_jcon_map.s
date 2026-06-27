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
bb1_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+16]
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 24], rax
 jmp .Lx1_1
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "aBcDeF"
.Lx1_1:
  .section .rodata
  .Lrkfn2: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 16]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
bb2_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 call rt_write_any_nl@PLT
 jmp xchain0_n2_α
xchain0_n1_β:
xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
bb3_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+48]
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 56], rax
 jmp .Lx4_1
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string "AbCdEf"
.Lx4_1:
  .section .rodata
  .Lrkfn5: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn5]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
bb4_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 call rt_write_any_nl@PLT
 jmp xchain0_n4_α
xchain0_n3_β:
xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
bb5_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+80]
 mov qword ptr [r12 + 80], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 88], rax
 jmp .Lx7_1
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string "aBcDeF"
.Lx7_1:
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+96]
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx7_2]
 mov qword ptr [r12 + 104], rax
 jmp .Lx7_3
.Lx7_2:
 .quad .Lx7_2_s
.Lx7_2_s:
 .string "abcdefghijklmnopqrstuvwxyz"
.Lx7_3:
  .section .rodata
  .Lrkfn8: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
xchain0_n5_α:
bb6_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 call rt_write_any_nl@PLT
 jmp xchain0_n6_α
xchain0_n5_β:
xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
bb7_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+128]
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 136], rax
 jmp .Lx10_1
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "AbCdEf"
.Lx10_1:
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+144]
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx10_2]
 mov qword ptr [r12 + 152], rax
 jmp .Lx10_3
.Lx10_2:
 .quad .Lx10_2_s
.Lx10_2_s:
 .string "abcdefghijklmnopqrstuvwxyz"
.Lx10_3:
  .section .rodata
  .Lrkfn11: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn11]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n8_α
xchain0_n7_α:
bb8_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_write_any_nl@PLT
 jmp xchain0_n8_α
xchain0_n7_β:
xchain0_n7_β:
 jmp xchain0_n8_α
xchain0_n8_α:
bb9_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+176]
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 184], rax
 jmp .Lx13_1
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "aBcDeF"
.Lx13_1:
# marshal arg1 = nested producer-box slot [r12+192] -> [r12+192]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 200], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+208]
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx13_4]
 mov qword ptr [r12 + 216], rax
 jmp .Lx13_5
.Lx13_4:
 .quad .Lx13_4_s
.Lx13_4_s:
 .string "12345678901234567890123456"
.Lx13_5:
  .section .rodata
  .Lrkfn14: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn14]
 lea rsi, [r12 + 176]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n10_α
xchain0_n9_α:
bb10_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 call rt_write_any_nl@PLT
 jmp xchain0_n10_α
xchain0_n9_β:
xchain0_n9_β:
 jmp xchain0_n10_α
xchain0_n10_α:
bb11_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+240]
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 248], rax
 jmp .Lx16_1
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "AbCdEf"
.Lx16_1:
# marshal arg1 = nested producer-box slot [r12+256] -> [r12+256]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 264], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+272]
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx16_4]
 mov qword ptr [r12 + 280], rax
 jmp .Lx16_5
.Lx16_4:
 .quad .Lx16_4_s
.Lx16_4_s:
 .string "12345678901234567890123456"
.Lx16_5:
  .section .rodata
  .Lrkfn17: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn17]
 lea rsi, [r12 + 240]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n12_α
xchain0_n11_α:
bb12_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 call rt_write_any_nl@PLT
 jmp xchain0_n12_α
xchain0_n11_β:
xchain0_n11_β:
 jmp xchain0_n12_α
xchain0_n12_α:
bb13_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+304]
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 312], rax
 jmp .Lx19_1
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "aBcDeF"
.Lx19_1:
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+320]
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx19_2]
 mov qword ptr [r12 + 328], rax
 jmp .Lx19_3
.Lx19_2:
 .quad .Lx19_2_s
.Lx19_2_s:
 .string "abcdef"
.Lx19_3:
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+336]
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx19_4]
 mov qword ptr [r12 + 344], rax
 jmp .Lx19_5
.Lx19_4:
 .quad .Lx19_4_s
.Lx19_4_s:
 .string "!@#$%^"
.Lx19_5:
  .section .rodata
  .Lrkfn20: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 304]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n14_α
xchain0_n13_α:
bb14_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 call rt_write_any_nl@PLT
 jmp xchain0_n14_α
xchain0_n13_β:
xchain0_n13_β:
 jmp xchain0_n14_α
xchain0_n14_α:
bb15_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+368]
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 376], rax
 jmp .Lx22_1
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "AbCdEf"
.Lx22_1:
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+384]
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx22_2]
 mov qword ptr [r12 + 392], rax
 jmp .Lx22_3
.Lx22_2:
 .quad .Lx22_2_s
.Lx22_2_s:
 .string "abcdef"
.Lx22_3:
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+400]
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx22_4]
 mov qword ptr [r12 + 408], rax
 jmp .Lx22_5
.Lx22_4:
 .quad .Lx22_4_s
.Lx22_4_s:
 .string "!@#$%^"
.Lx22_5:
  .section .rodata
  .Lrkfn23: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn23]
 lea rsi, [r12 + 368]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n16_α
xchain0_n15_α:
bb16_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_write_any_nl@PLT
 jmp xchain0_n16_α
xchain0_n15_β:
xchain0_n15_β:
 jmp xchain0_n16_α
xchain0_n16_α:
bb17_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+432]
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 440], rax
 jmp .Lx25_1
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string ""
.Lx25_1:
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+448]
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx25_2]
 mov qword ptr [r12 + 456], rax
 jmp .Lx25_3
.Lx25_2:
 .quad .Lx25_2_s
.Lx25_2_s:
 .string "abcdef"
.Lx25_3:
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+464]
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx25_4]
 mov qword ptr [r12 + 472], rax
 jmp .Lx25_5
.Lx25_4:
 .quad .Lx25_4_s
.Lx25_4_s:
 .string "!@#$%^"
.Lx25_5:
  .section .rodata
  .Lrkfn26: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn26]
 lea rsi, [r12 + 432]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n18_α
xchain0_n17_α:
bb18_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 call rt_write_any_nl@PLT
 jmp xchain0_n18_α
xchain0_n17_β:
xchain0_n17_β:
 jmp xchain0_n18_α
xchain0_n18_α:
bb19_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+496]
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 504], rax
 jmp .Lx28_1
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "abcdef"
.Lx28_1:
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+512]
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx28_2]
 mov qword ptr [r12 + 520], rax
 jmp .Lx28_3
.Lx28_2:
 .quad .Lx28_2_s
.Lx28_2_s:
 .string "aa"
.Lx28_3:
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx28_4]
 mov qword ptr [r12 + 536], rax
 jmp .Lx28_5
.Lx28_4:
 .quad .Lx28_4_s
.Lx28_4_s:
 .string "bc"
.Lx28_5:
  .section .rodata
  .Lrkfn29: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn29]
 lea rsi, [r12 + 496]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je main_ω
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp main_ω
xchain0_n19_α:
bb20_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n19_β:
xchain0_n19_β:
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
