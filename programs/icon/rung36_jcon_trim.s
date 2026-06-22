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
bb00001_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+32]
 mov qword ptr [r12 + 32], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 40], rax
 jmp .Lx1_1
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "abc  "
.Lx1_1:
  .section .rodata
  .Lcallfn2: .string "trim"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn2]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
  .section .rodata
  .Lrkfn3: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn3]
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
bb00002_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 call rt_write_any_nl@PLT
 jmp xchain0_n2_α
xchain0_n1_β:
xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
bb00003_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+80]
 mov qword ptr [r12 + 80], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 88], rax
 jmp .Lx5_1
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "abc  "
.Lx5_1:
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+96]
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx5_2]
 mov qword ptr [r12 + 104], rax
 jmp .Lx5_3
.Lx5_2:
 .quad .Lx5_2_s
.Lx5_2_s:
 .string " "
.Lx5_3:
  .section .rodata
  .Lcallfn6: .string "trim"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn6]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
  .section .rodata
  .Lrkfn7: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn7]
 lea rsi, [r12 + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
bb00004_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 call rt_write_any_nl@PLT
 jmp xchain0_n4_α
xchain0_n3_β:
xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
bb00005_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+144]
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 152], rax
 jmp .Lx9_1
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "abc  "
.Lx9_1:
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+160]
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx9_2]
 mov qword ptr [r12 + 168], rax
 jmp .Lx9_3
.Lx9_2:
 .quad .Lx9_2_s
.Lx9_2_s:
 .string "x"
.Lx9_3:
  .section .rodata
  .Lcallfn10: .string "trim"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn10]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
  .section .rodata
  .Lrkfn11: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn11]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
xchain0_n5_α:
bb00006_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_write_any_nl@PLT
 jmp xchain0_n6_α
xchain0_n5_β:
xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
bb00007_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+208]
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 216], rax
 jmp .Lx13_1
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "abc  "
.Lx13_1:
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+224]
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx13_2]
 mov qword ptr [r12 + 232], rax
 jmp .Lx13_3
.Lx13_2:
 .quad .Lx13_2_s
.Lx13_2_s:
 .string " abc"
.Lx13_3:
  .section .rodata
  .Lcallfn14: .string "trim"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn14]
 lea rsi, [r12 + 208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
  .section .rodata
  .Lrkfn15: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn15]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n8_α
xchain0_n7_α:
bb00008_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 call rt_write_any_nl@PLT
 jmp xchain0_n8_α
xchain0_n7_β:
xchain0_n7_β:
 jmp xchain0_n8_α
xchain0_n8_α:
bb00009_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+272]
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 280], rax
 jmp .Lx17_1
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "a c  "
.Lx17_1:
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+288]
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx17_2]
 mov qword ptr [r12 + 296], rax
 jmp .Lx17_3
.Lx17_2:
 .quad .Lx17_2_s
.Lx17_2_s:
 .string " "
.Lx17_3:
  .section .rodata
  .Lcallfn18: .string "trim"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn18]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
  .section .rodata
  .Lrkfn19: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn19]
 lea rsi, [r12 + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n10_α
xchain0_n9_α:
bb00010_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 call rt_write_any_nl@PLT
 jmp xchain0_n10_α
xchain0_n9_β:
xchain0_n9_β:
 jmp xchain0_n10_α
xchain0_n10_α:
bb00011_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+336]
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [r12 + 344], rax
 jmp .Lx21_1
.Lx21_0:
 .quad .Lx21_0_s
.Lx21_0_s:
 .string "a c"
.Lx21_1:
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+352]
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx21_2]
 mov qword ptr [r12 + 360], rax
 jmp .Lx21_3
.Lx21_2:
 .quad .Lx21_2_s
.Lx21_2_s:
 .string " "
.Lx21_3:
  .section .rodata
  .Lcallfn22: .string "trim"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn22]
 lea rsi, [r12 + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
  .section .rodata
  .Lrkfn23: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn23]
 lea rsi, [r12 + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n12_α
xchain0_n11_α:
bb00012_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_write_any_nl@PLT
 jmp xchain0_n12_α
xchain0_n11_β:
xchain0_n11_β:
 jmp xchain0_n12_α
xchain0_n12_α:
bb00013_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+400]
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 408], rax
 jmp .Lx25_1
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string "   "
.Lx25_1:
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+416]
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx25_2]
 mov qword ptr [r12 + 424], rax
 jmp .Lx25_3
.Lx25_2:
 .quad .Lx25_2_s
.Lx25_2_s:
 .string " "
.Lx25_3:
  .section .rodata
  .Lcallfn26: .string "trim"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn26]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
  .section .rodata
  .Lrkfn27: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn27]
 lea rsi, [r12 + 384]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n14_α
xchain0_n13_α:
bb00014_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 call rt_write_any_nl@PLT
 jmp xchain0_n14_α
xchain0_n13_β:
xchain0_n13_β:
 jmp xchain0_n14_α
xchain0_n14_α:
bb00015_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+464]
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [r12 + 472], rax
 jmp .Lx29_1
.Lx29_0:
 .quad .Lx29_0_s
.Lx29_0_s:
 .string " "
.Lx29_1:
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+480]
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx29_2]
 mov qword ptr [r12 + 488], rax
 jmp .Lx29_3
.Lx29_2:
 .quad .Lx29_2_s
.Lx29_2_s:
 .string " "
.Lx29_3:
  .section .rodata
  .Lcallfn30: .string "trim"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn30]
 lea rsi, [r12 + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
  .section .rodata
  .Lrkfn31: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn31]
 lea rsi, [r12 + 448]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n16_α
xchain0_n15_α:
bb00016_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 call rt_write_any_nl@PLT
 jmp xchain0_n16_α
xchain0_n15_β:
xchain0_n15_β:
 jmp xchain0_n16_α
xchain0_n16_α:
bb00017_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx33_1
.Lx33_0:
 .quad .Lx33_0_s
.Lx33_0_s:
 .string ""
.Lx33_1:
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+544]
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx33_2]
 mov qword ptr [r12 + 552], rax
 jmp .Lx33_3
.Lx33_2:
 .quad .Lx33_2_s
.Lx33_2_s:
 .string " "
.Lx33_3:
  .section .rodata
  .Lcallfn34: .string "trim"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn34]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
  .section .rodata
  .Lrkfn35: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn35]
 lea rsi, [r12 + 512]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n18_α
xchain0_n17_α:
bb00018_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 call rt_write_any_nl@PLT
 jmp xchain0_n18_α
xchain0_n17_β:
xchain0_n17_β:
 jmp xchain0_n18_α
xchain0_n18_α:
bb00019_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+592]
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 600], rax
 jmp .Lx37_1
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string ""
.Lx37_1:
  .section .rodata
  .Lcallfn38: .string "trim"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn38]
 lea rsi, [r12 + 592]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
  .section .rodata
  .Lrkfn39: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn39]
 lea rsi, [r12 + 576]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je main_ω
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp main_ω
xchain0_n19_α:
bb00020_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
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
