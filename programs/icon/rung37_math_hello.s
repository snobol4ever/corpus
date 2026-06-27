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
# BOX IR_CALL sqrt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_F -> [r12+16]
 mov qword ptr [r12 + 16], 7
 movabs rax, 4616189618054758400
 mov qword ptr [r12 + 24], rax
  .section .rodata
  .Lrkfn2: .string "sqrt"
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
# BOX IR_CALL sin(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_F -> [r12+48]
 mov qword ptr [r12 + 48], 7
 movabs rax, 0
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lrkfn5: .string "sin"
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
# BOX IR_CALL cos(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_F -> [r12+80]
 mov qword ptr [r12 + 80], 7
 movabs rax, 0
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn8: .string "cos"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 80]
 mov edx, 1
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
# BOX IR_CALL exp(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_F -> [r12+112]
 mov qword ptr [r12 + 112], 7
 movabs rax, 0
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn11: .string "exp"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn11]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n8_α
xchain0_n7_α:
bb8_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_write_any_nl@PLT
 jmp xchain0_n8_α
xchain0_n7_β:
xchain0_n7_β:
 jmp xchain0_n8_α
xchain0_n8_α:
bb9_α:
# BOX IR_CALL log(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_F -> [r12+144]
 mov qword ptr [r12 + 144], 7
 movabs rax, 4607182418800017408
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn14: .string "log"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn14]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n10_α
xchain0_n9_α:
bb10_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_write_any_nl@PLT
 jmp xchain0_n10_α
xchain0_n9_β:
xchain0_n9_β:
 jmp xchain0_n10_α
xchain0_n10_α:
bb11_α:
# BOX IR_CALL iand(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+176]
 mov qword ptr [r12 + 176], 6
 movabs rax, 12
 mov qword ptr [r12 + 184], rax
# marshal arg1 = LIT_I -> [r12+192]
 mov qword ptr [r12 + 192], 6
 movabs rax, 10
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn17: .string "iand"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn17]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n12_α
xchain0_n11_α:
bb12_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 call rt_write_any_nl@PLT
 jmp xchain0_n12_α
xchain0_n11_β:
xchain0_n11_β:
 jmp xchain0_n12_α
xchain0_n12_α:
bb13_α:
# BOX IR_CALL ior(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+224]
 mov qword ptr [r12 + 224], 6
 movabs rax, 12
 mov qword ptr [r12 + 232], rax
# marshal arg1 = LIT_I -> [r12+240]
 mov qword ptr [r12 + 240], 6
 movabs rax, 10
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn20: .string "ior"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n14_α
xchain0_n13_α:
bb14_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 call rt_write_any_nl@PLT
 jmp xchain0_n14_α
xchain0_n13_β:
xchain0_n13_β:
 jmp xchain0_n14_α
xchain0_n14_α:
bb15_α:
# BOX IR_CALL ixor(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+272]
 mov qword ptr [r12 + 272], 6
 movabs rax, 12
 mov qword ptr [r12 + 280], rax
# marshal arg1 = LIT_I -> [r12+288]
 mov qword ptr [r12 + 288], 6
 movabs rax, 10
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn23: .string "ixor"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn23]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n16_α
xchain0_n15_α:
bb16_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 call rt_write_any_nl@PLT
 jmp xchain0_n16_α
xchain0_n15_β:
xchain0_n15_β:
 jmp xchain0_n16_α
xchain0_n16_α:
bb17_α:
# BOX IR_CALL ishift(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+320]
 mov qword ptr [r12 + 320], 6
 movabs rax, 1
 mov qword ptr [r12 + 328], rax
# marshal arg1 = LIT_I -> [r12+336]
 mov qword ptr [r12 + 336], 6
 movabs rax, 3
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn26: .string "ishift"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn26]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n18_α
xchain0_n17_α:
bb18_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_write_any_nl@PLT
 jmp xchain0_n18_α
xchain0_n17_β:
xchain0_n17_β:
 jmp xchain0_n18_α
xchain0_n18_α:
bb19_α:
# BOX IR_CALL icom(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+368]
 mov qword ptr [r12 + 368], 6
 movabs rax, 0
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn29: .string "icom"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn29]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je main_ω
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp main_ω
xchain0_n19_α:
bb20_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
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
