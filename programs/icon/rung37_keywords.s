  .intel_syntax noprefix
  .text
  .globl proc_if_ok_α
proc_if_ok_α:
#=======================================================================================================================
    .global proc_if_ok_α
    .global proc_if_ok_β
    .global proc_if_ok_γ
    .global proc_if_ok_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_if_ok_α_body:
xchain0_n0_α:
# IR_VAR
bb1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
# IR_LIT_S
bb2_α:
 mov qword ptr [r12 + 32], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "yes"
xchain0_n2_α:
xaltg4_a0_start:
jmp xaltg4_a0_succ
xaltg4_a0_beta:
jmp xaltg4_a1_start
xaltg4_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], 1
jmp xchain0_n3_α
xaltg4_a1_start:
# IR_LIT_S
bb3_α:
 mov qword ptr [r12 + 72], 1
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 80], rax
 jmp xaltg4_a1_succ
 xaltg4_a1_beta:
 jmp proc_if_ok_ω
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string "no"
xaltg4_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], 1
jmp xchain0_n3_α
xchain0_n2_β:
jmp proc_if_ok_ω
xchain0_n3_α:
# IR_RETURN
bb4_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_if_ok_γ
proc_if_ok_β:
jmp proc_if_ok_ω
proc_if_ok_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_if_ok_ω:
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
  .Lstartup_pname0: .string "if_ok"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_if_ok_α]
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
xchain9_n0_α:
bb5_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+32] -> [r12+32]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lrkfn11: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn11]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain9_n2_α
 jmp xchain9_n1_α
 xchain9_n0_β:
 jmp xchain9_n2_α
xchain9_n1_α:
bb6_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp xchain9_n2_α
xchain9_n1_β:
xchain9_n1_β:
 jmp xchain9_n2_α
xchain9_n2_α:
bb7_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+64] -> [r12+64]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
  .section .rodata
  .Lrkfn14: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn14]
 lea rsi, [r12 + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain9_n4_α
 jmp xchain9_n3_α
 xchain9_n2_β:
 jmp xchain9_n4_α
xchain9_n3_α:
bb8_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 call rt_write_any_nl@PLT
 jmp xchain9_n4_α
xchain9_n3_β:
xchain9_n3_β:
 jmp xchain9_n4_α
xchain9_n4_α:
bb9_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+96] -> [r12+96]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn17: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn17]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain9_n6_α
 jmp xchain9_n5_α
 xchain9_n4_β:
 jmp xchain9_n6_α
xchain9_n5_α:
bb10_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 call rt_write_any_nl@PLT
 jmp xchain9_n6_α
xchain9_n5_β:
xchain9_n5_β:
 jmp xchain9_n6_α
xchain9_n6_α:
bb11_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+128] -> [r12+128]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn20: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain9_n8_α
 jmp xchain9_n7_α
 xchain9_n6_β:
 jmp xchain9_n8_α
xchain9_n7_α:
bb12_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_write_any_nl@PLT
 jmp xchain9_n8_α
xchain9_n7_β:
xchain9_n7_β:
 jmp xchain9_n8_α
xchain9_n8_α:
bb13_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+160] -> [r12+160]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn23: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn23]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain9_n10_α
 jmp xchain9_n9_α
 xchain9_n8_β:
 jmp xchain9_n10_α
xchain9_n9_α:
bb14_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 call rt_write_any_nl@PLT
 jmp xchain9_n10_α
xchain9_n9_β:
xchain9_n9_β:
 jmp xchain9_n10_α
xchain9_n10_α:
bb15_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+192] -> [r12+192]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn26: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn26]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain9_n12_α
 jmp xchain9_n11_α
 xchain9_n10_β:
 jmp xchain9_n12_α
xchain9_n11_α:
bb16_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 call rt_write_any_nl@PLT
 jmp xchain9_n12_α
xchain9_n11_β:
xchain9_n11_β:
 jmp xchain9_n12_α
xchain9_n12_α:
bb17_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+224] -> [r12+224]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn29: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn29]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain9_n14_α
 jmp xchain9_n13_α
 xchain9_n12_β:
 jmp xchain9_n14_α
xchain9_n13_α:
bb18_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 call rt_write_any_nl@PLT
 jmp xchain9_n14_α
xchain9_n13_β:
xchain9_n13_β:
 jmp xchain9_n14_α
xchain9_n14_α:
bb19_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+256] -> [r12+256]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn32: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn32]
 lea rsi, [r12 + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain9_n16_α
 jmp xchain9_n15_α
 xchain9_n14_β:
 jmp xchain9_n16_α
xchain9_n15_α:
bb20_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 call rt_write_any_nl@PLT
 jmp xchain9_n16_α
xchain9_n15_β:
xchain9_n15_β:
 jmp xchain9_n16_α
xchain9_n16_α:
bb21_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+288] -> [r12+288]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn35: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn35]
 lea rsi, [r12 + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain9_n18_α
 jmp xchain9_n17_α
 xchain9_n16_β:
 jmp xchain9_n18_α
xchain9_n17_α:
bb22_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 call rt_write_any_nl@PLT
 jmp xchain9_n18_α
xchain9_n17_β:
xchain9_n17_β:
 jmp xchain9_n18_α
xchain9_n18_α:
bb23_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+320] -> [r12+320]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn38: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain9_n20_α
 jmp xchain9_n19_α
 xchain9_n18_β:
 jmp xchain9_n20_α
xchain9_n19_α:
bb24_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_write_any_nl@PLT
 jmp xchain9_n20_α
xchain9_n19_β:
xchain9_n19_β:
 jmp xchain9_n20_α
xchain9_n20_α:
bb25_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+352] -> [r12+352]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn41: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn41]
 lea rsi, [r12 + 352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain9_n22_α
 jmp xchain9_n21_α
 xchain9_n20_β:
 jmp xchain9_n22_α
xchain9_n21_α:
bb26_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 call rt_write_any_nl@PLT
 jmp xchain9_n22_α
xchain9_n21_β:
xchain9_n21_β:
 jmp xchain9_n22_α
xchain9_n22_α:
bb27_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+384] -> [r12+384]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lrkfn44: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn44]
 lea rsi, [r12 + 384]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain9_n24_α
 jmp xchain9_n23_α
 xchain9_n22_β:
 jmp xchain9_n24_α
xchain9_n23_α:
bb28_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 call rt_write_any_nl@PLT
 jmp xchain9_n24_α
xchain9_n23_β:
xchain9_n23_β:
 jmp xchain9_n24_α
xchain9_n24_α:
# IR_KEYWORD_read
bb29_α:
 mov rdi, qword ptr [rip + .Lx46_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain9_n25_α
 xchain9_n24_β:
 jmp xchain9_n27_α
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "&lcase"
xchain9_n25_α:
# IR_UNOP
bb30_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 call rt_size_d@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain9_n26_α
 xchain9_n25_β:
 jmp xchain9_n27_α
xchain9_n26_α:
bb31_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 call rt_write_any_nl@PLT
 jmp xchain9_n27_α
xchain9_n26_β:
xchain9_n26_β:
 jmp xchain9_n27_α
xchain9_n27_α:
# IR_KEYWORD_read
bb32_α:
 mov rdi, qword ptr [rip + .Lx49_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain9_n28_α
 xchain9_n27_β:
 jmp xchain9_n30_α
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string "&ucase"
xchain9_n28_α:
# IR_UNOP
bb33_α:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 call rt_size_d@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain9_n29_α
 xchain9_n28_β:
 jmp xchain9_n30_α
xchain9_n29_α:
bb34_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 call rt_write_any_nl@PLT
 jmp xchain9_n30_α
xchain9_n29_β:
xchain9_n29_β:
 jmp xchain9_n30_α
xchain9_n30_α:
# IR_KEYWORD_read
bb35_α:
 mov rdi, qword ptr [rip + .Lx52_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain9_n31_α
 xchain9_n30_β:
 jmp xchain9_n33_α
.Lx52_0:
 .quad .Lx52_0_s
.Lx52_0_s:
 .string "&digits"
xchain9_n31_α:
# IR_UNOP
bb36_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 call rt_size_d@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain9_n32_α
 xchain9_n31_β:
 jmp xchain9_n33_α
xchain9_n32_α:
bb37_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 call rt_write_any_nl@PLT
 jmp xchain9_n33_α
xchain9_n32_β:
xchain9_n32_β:
 jmp xchain9_n33_α
xchain9_n33_α:
# IR_KEYWORD_read
bb38_α:
 mov rdi, qword ptr [rip + .Lx55_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain9_n34_α
 xchain9_n33_β:
 jmp xchain9_n36_α
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "&letters"
xchain9_n34_α:
# IR_UNOP
bb39_α:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 call rt_size_d@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain9_n35_α
 xchain9_n34_β:
 jmp xchain9_n36_α
xchain9_n35_α:
bb40_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 call rt_write_any_nl@PLT
 jmp xchain9_n36_α
xchain9_n35_β:
xchain9_n35_β:
 jmp xchain9_n36_α
xchain9_n36_α:
# IR_KEYWORD_read
bb41_α:
 mov rdi, qword ptr [rip + .Lx58_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain9_n37_α
 xchain9_n36_β:
 jmp xchain9_n39_α
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "&ascii"
xchain9_n37_α:
# IR_UNOP
bb42_α:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 call rt_size_d@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain9_n38_α
 xchain9_n37_β:
 jmp xchain9_n39_α
xchain9_n38_α:
bb43_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 call rt_write_any_nl@PLT
 jmp xchain9_n39_α
xchain9_n38_β:
xchain9_n38_β:
 jmp xchain9_n39_α
xchain9_n39_α:
# IR_KEYWORD_read
bb44_α:
 mov rdi, qword ptr [rip + .Lx61_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain9_n40_α
 xchain9_n39_β:
 jmp xchain9_n42_α
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "&cset"
xchain9_n40_α:
# IR_UNOP
bb45_α:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 call rt_size_d@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain9_n41_α
 xchain9_n40_β:
 jmp xchain9_n42_α
xchain9_n41_α:
bb46_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 call rt_write_any_nl@PLT
 jmp xchain9_n42_α
xchain9_n41_β:
xchain9_n41_β:
 jmp xchain9_n42_α
xchain9_n42_α:
xargsub65_n0_α:
# IR_KEYWORD_read
bb47_α:
 mov rdi, qword ptr [rip + .Lx66_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xargsub65_n1_α
 xargsub65_n0_β:
 jmp xchain9_n44_α
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "&e"
xargsub65_n1_α:
# IR_LIT_F
bb48_α:
 mov qword ptr [r12 + 608], 7
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 616], rax
 jmp xargsub65_n2_α
 xargsub65_n1_β:
 jmp xchain9_n44_α
.Lx67_0:
 .quad 4613262278296967578
xargsub65_n2_α:
jmp xbinop68_lhs_done
xbinop68_lhs_done:
jmp xbinop68_rhs_done
xbinop68_rhs_done:
bb49_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain9_n44_α
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 632], rax
 jmp xargsub65_n3_α
 xargsub65_n2_β:
 jmp xchain9_n44_α
xargsub65_n3_α:
# IR_KEYWORD_read
bb50_α:
 mov rdi, qword ptr [rip + .Lx70_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xargsub65_n4_α
 xargsub65_n3_β:
 jmp xchain9_n44_α
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "&e"
xargsub65_n4_α:
# IR_LIT_F
bb51_α:
 mov qword ptr [r12 + 656], 7
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [r12 + 664], rax
 jmp xargsub65_n5_α
 xargsub65_n4_β:
 jmp xchain9_n44_α
.Lx71_0:
 .quad 4613487458278336102
xargsub65_n5_α:
jmp xbinop72_lhs_done
xbinop72_lhs_done:
jmp xbinop72_rhs_done
xbinop72_rhs_done:
bb52_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 656]
 mov rcx, qword ptr [r12 + 664]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain9_n44_α
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 680], rax
 jmp xargsub65_n6_α
 xargsub65_n5_β:
 jmp xchain9_n44_α
xargsub65_n6_α:
jmp xicnarg64_done
xargsub65_n6_β:
jmp xchain9_n44_α
xicnarg64_done:
bb53_α:
  .section .rodata
  .Lcall53_pname: .string "if_ok"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+672]
 mov rdx, qword ptr [r12+680]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall53_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain9_n44_α
 jmp xchain9_n43_α
xchain9_n42_β:
 jmp xchain9_n44_α
xchain9_n43_α:
bb54_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call rt_write_any_nl@PLT
 jmp xchain9_n44_α
xchain9_n43_β:
xchain9_n43_β:
 jmp xchain9_n44_α
xchain9_n44_α:
xargsub77_n0_α:
# IR_KEYWORD_read
bb55_α:
 mov rdi, qword ptr [rip + .Lx78_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xargsub77_n1_α
 xargsub77_n0_β:
 jmp xchain9_n46_α
.Lx78_0:
 .quad .Lx78_0_s
.Lx78_0_s:
 .string "&pi"
xargsub77_n1_α:
# IR_LIT_F
bb56_α:
 mov qword ptr [r12 + 720], 7
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [r12 + 728], rax
 jmp xargsub77_n2_α
 xargsub77_n1_β:
 jmp xchain9_n46_α
.Lx79_0:
 .quad 4614253070214989087
xargsub77_n2_α:
jmp xbinop80_lhs_done
xbinop80_lhs_done:
jmp xbinop80_rhs_done
xbinop80_rhs_done:
bb57_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 720]
 mov rcx, qword ptr [r12 + 728]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain9_n46_α
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 744], rax
 jmp xargsub77_n3_α
 xargsub77_n2_β:
 jmp xchain9_n46_α
xargsub77_n3_α:
# IR_KEYWORD_read
bb58_α:
 mov rdi, qword ptr [rip + .Lx82_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xargsub77_n4_α
 xargsub77_n3_β:
 jmp xchain9_n46_α
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "&pi"
xargsub77_n4_α:
# IR_LIT_F
bb59_α:
 mov qword ptr [r12 + 768], 7
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [r12 + 776], rax
 jmp xargsub77_n5_α
 xargsub77_n4_β:
 jmp xchain9_n46_α
.Lx83_0:
 .quad 4614275588213125939
xargsub77_n5_α:
jmp xbinop84_lhs_done
xbinop84_lhs_done:
jmp xbinop84_rhs_done
xbinop84_rhs_done:
bb60_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain9_n46_α
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 792], rax
 jmp xargsub77_n6_α
 xargsub77_n5_β:
 jmp xchain9_n46_α
xargsub77_n6_α:
jmp xicnarg76_done
xargsub77_n6_β:
jmp xchain9_n46_α
xicnarg76_done:
bb61_α:
  .section .rodata
  .Lcall61_pname: .string "if_ok"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+784]
 mov rdx, qword ptr [r12+792]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall61_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain9_n46_α
 jmp xchain9_n45_α
xchain9_n44_β:
 jmp xchain9_n46_α
xchain9_n45_α:
bb62_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 call rt_write_any_nl@PLT
 jmp xchain9_n46_α
xchain9_n45_β:
xchain9_n45_β:
 jmp xchain9_n46_α
xchain9_n46_α:
xargsub89_n0_α:
# IR_KEYWORD_read
bb63_α:
 mov rdi, qword ptr [rip + .Lx90_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xargsub89_n1_α
 xargsub89_n0_β:
 jmp xchain9_n48_α
.Lx90_0:
 .quad .Lx90_0_s
.Lx90_0_s:
 .string "&phi"
xargsub89_n1_α:
# IR_LIT_F
bb64_α:
 mov qword ptr [r12 + 832], 7
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [r12 + 840], rax
 jmp xargsub89_n2_α
 xargsub89_n1_β:
 jmp xchain9_n48_α
.Lx91_0:
 .quad 4609929614572713411
xargsub89_n2_α:
jmp xbinop92_lhs_done
xbinop92_lhs_done:
jmp xbinop92_rhs_done
xbinop92_rhs_done:
bb65_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 816]
 mov rsi, qword ptr [r12 + 824]
 mov rdx, qword ptr [r12 + 832]
 mov rcx, qword ptr [r12 + 840]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain9_n48_α
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 856], rax
 jmp xargsub89_n3_α
 xargsub89_n2_β:
 jmp xchain9_n48_α
xargsub89_n3_α:
# IR_KEYWORD_read
bb66_α:
 mov rdi, qword ptr [rip + .Lx94_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xargsub89_n4_α
 xargsub89_n3_β:
 jmp xchain9_n48_α
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "&phi"
xargsub89_n4_α:
# IR_LIT_F
bb67_α:
 mov qword ptr [r12 + 880], 7
 mov rax, qword ptr [rip + .Lx95_0]
 mov qword ptr [r12 + 888], rax
 jmp xargsub89_n5_α
 xargsub89_n4_β:
 jmp xchain9_n48_α
.Lx95_0:
 .quad 4609974650568987116
xargsub89_n5_α:
jmp xbinop96_lhs_done
xbinop96_lhs_done:
jmp xbinop96_rhs_done
xbinop96_rhs_done:
bb68_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 864]
 mov rsi, qword ptr [r12 + 872]
 mov rdx, qword ptr [r12 + 880]
 mov rcx, qword ptr [r12 + 888]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain9_n48_α
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 904], rax
 jmp xargsub89_n6_α
 xargsub89_n5_β:
 jmp xchain9_n48_α
xargsub89_n6_α:
jmp xicnarg88_done
xargsub89_n6_β:
jmp xchain9_n48_α
xicnarg88_done:
bb69_α:
  .section .rodata
  .Lcall69_pname: .string "if_ok"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+896]
 mov rdx, qword ptr [r12+904]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall69_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain9_n48_α
 jmp xchain9_n47_α
xchain9_n46_β:
 jmp xchain9_n48_α
xchain9_n47_α:
bb70_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 call rt_write_any_nl@PLT
 jmp xchain9_n48_α
xchain9_n47_β:
xchain9_n47_β:
 jmp xchain9_n48_α
xchain9_n48_α:
bb71_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+944] -> [r12+944]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lrkfn101: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn101]
 lea rsi, [r12 + 944]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 cmp eax, 99
 je xchain9_n50_α
 jmp xchain9_n49_α
 xchain9_n48_β:
 jmp xchain9_n50_α
xchain9_n49_α:
bb72_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 call rt_write_any_nl@PLT
 jmp xchain9_n50_α
xchain9_n49_β:
xchain9_n49_β:
 jmp xchain9_n50_α
xchain9_n50_α:
# IR_KEYWORD_null
bb73_α:
 mov qword ptr [r12 + 960], 0
 mov qword ptr [r12 + 968], 0
 jmp xchain9_n51_α
 xchain9_n50_β:
 jmp xchain9_n51_α
xchain9_n51_α:
xaltg104_a0_start:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xaltg104_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 984], rax
 mov qword ptr [r12 + 992], 1
jmp xchain9_n52_α
xaltg104_a1_start:
# IR_LIT_S
bb75_α:
 mov qword ptr [r12 + 1016], 1
 mov rax, qword ptr [rip + .Lx107_0]
 mov qword ptr [r12 + 1024], rax
 jmp xaltg104_a1_succ
 xaltg104_a1_beta:
 jmp xchain9_n53_α
.Lx107_0:
 .quad .Lx107_0_s
.Lx107_0_s:
 .string "null-is-null"
xaltg104_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 984], rax
 mov qword ptr [r12 + 992], 1
jmp xchain9_n52_α
xchain9_n51_β:
jmp xchain9_n53_α
xchain9_n52_α:
bb76_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 call rt_write_any_nl@PLT
 jmp xchain9_n53_α
xchain9_n52_β:
xchain9_n52_β:
 jmp xchain9_n53_α
xchain9_n53_α:
xaltg110_a0_start:
# IR_KEYWORD_fail
bb77_α:
 jmp xaltg110_a1_start
 xaltg110_a0_beta:
 jmp xaltg110_a1_start
xaltg110_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1032], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], 1
jmp xchain9_n54_α
xaltg110_a1_start:
# IR_LIT_S
bb78_α:
 mov qword ptr [r12 + 1072], 1
 mov rax, qword ptr [rip + .Lx113_0]
 mov qword ptr [r12 + 1080], rax
 jmp xaltg110_a1_succ
 xaltg110_a1_beta:
 jmp xchain9_n55_α
.Lx113_0:
 .quad .Lx113_0_s
.Lx113_0_s:
 .string "fail-failed"
xaltg110_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1032], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], 1
jmp xchain9_n54_α
xchain9_n53_β:
jmp xchain9_n55_α
xchain9_n54_α:
bb79_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1032]
 mov rsi, qword ptr [r12 + 1040]
 call rt_write_any_nl@PLT
 jmp xchain9_n55_α
xchain9_n54_β:
xchain9_n54_β:
 jmp xchain9_n55_α
xchain9_n55_α:
# IR_LIT_I
bb80_α:
 mov qword ptr [r12 + 1088], 6
 mov rax, qword ptr [rip + .Lx116_0]
 mov qword ptr [r12 + 1096], rax
 jmp xchain9_n56_α
 xchain9_n55_β:
 jmp xchain9_n57_α
.Lx116_0:
 .quad 42
xchain9_n56_α:
bb81_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1088]
 mov rdx, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain9_n57_α
 xchain9_n56_β:
 jmp xchain9_n57_α
xchain9_n57_α:
# IR_KEYWORD_read
bb82_α:
 mov rdi, qword ptr [rip + .Lx118_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain9_n58_α
 xchain9_n57_β:
 jmp xchain9_n59_α
.Lx118_0:
 .quad .Lx118_0_s
.Lx118_0_s:
 .string "&error"
xchain9_n58_α:
bb83_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1120]
 mov rsi, qword ptr [r12 + 1128]
 call rt_write_any_nl@PLT
 jmp xchain9_n59_α
xchain9_n58_β:
xchain9_n58_β:
 jmp xchain9_n59_α
xchain9_n59_α:
# IR_LIT_I
bb84_α:
 mov qword ptr [r12 + 1136], 6
 mov rax, qword ptr [rip + .Lx120_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain9_n60_α
 xchain9_n59_β:
 jmp xchain9_n61_α
.Lx120_0:
 .quad 0
xchain9_n60_α:
bb85_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1136]
 mov rdx, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain9_n61_α
 xchain9_n60_β:
 jmp xchain9_n61_α
xchain9_n61_α:
# IR_KEYWORD_read
bb86_α:
 mov rdi, qword ptr [rip + .Lx122_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain9_n62_α
 xchain9_n61_β:
 jmp xchain9_n63_α
.Lx122_0:
 .quad .Lx122_0_s
.Lx122_0_s:
 .string "&error"
xchain9_n62_α:
bb87_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 call rt_write_any_nl@PLT
 jmp xchain9_n63_α
xchain9_n62_β:
xchain9_n62_β:
 jmp xchain9_n63_α
xchain9_n63_α:
bb88_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+1200] -> [r12+1200]
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1208], rax
  .section .rodata
  .Lrkfn125: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn125]
 lea rsi, [r12 + 1200]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 cmp eax, 99
 je xchain9_n65_α
 jmp xchain9_n64_α
 xchain9_n63_β:
 jmp xchain9_n65_α
xchain9_n64_α:
bb89_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1184]
 mov rsi, qword ptr [r12 + 1192]
 call rt_write_any_nl@PLT
 jmp xchain9_n65_α
xchain9_n64_β:
xchain9_n64_β:
 jmp xchain9_n65_α
xchain9_n65_α:
bb90_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+1232] -> [r12+1232]
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1240], rax
  .section .rodata
  .Lrkfn128: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn128]
 lea rsi, [r12 + 1232]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 cmp eax, 99
 je xchain9_n67_α
 jmp xchain9_n66_α
 xchain9_n65_β:
 jmp xchain9_n67_α
xchain9_n66_α:
bb91_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1216]
 mov rsi, qword ptr [r12 + 1224]
 call rt_write_any_nl@PLT
 jmp xchain9_n67_α
xchain9_n66_β:
xchain9_n66_β:
 jmp xchain9_n67_α
xchain9_n67_α:
bb92_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+1264] -> [r12+1264]
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1272], rax
  .section .rodata
  .Lrkfn131: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn131]
 lea rsi, [r12 + 1264]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain9_n69_α
 jmp xchain9_n68_α
 xchain9_n67_β:
 jmp xchain9_n69_α
xchain9_n68_α:
bb93_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1248]
 mov rsi, qword ptr [r12 + 1256]
 call rt_write_any_nl@PLT
 jmp xchain9_n69_α
xchain9_n68_β:
xchain9_n68_β:
 jmp xchain9_n69_α
xchain9_n69_α:
# IR_KEYWORD_read
bb94_α:
 mov rdi, qword ptr [rip + .Lx133_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain9_n70_α
 xchain9_n69_β:
 jmp xchain9_n71_α
.Lx133_0:
 .quad .Lx133_0_s
.Lx133_0_s:
 .string "&col"
xchain9_n70_α:
bb95_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1280]
 mov rsi, qword ptr [r12 + 1288]
 call rt_write_any_nl@PLT
 jmp xchain9_n71_α
xchain9_n70_β:
xchain9_n70_β:
 jmp xchain9_n71_α
xchain9_n71_α:
# IR_KEYWORD_read
bb96_α:
 mov rdi, qword ptr [rip + .Lx135_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain9_n72_α
 xchain9_n71_β:
 jmp xchain9_n73_α
.Lx135_0:
 .quad .Lx135_0_s
.Lx135_0_s:
 .string "&row"
xchain9_n72_α:
bb97_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1296]
 mov rsi, qword ptr [r12 + 1304]
 call rt_write_any_nl@PLT
 jmp xchain9_n73_α
xchain9_n72_β:
xchain9_n72_β:
 jmp xchain9_n73_α
xchain9_n73_α:
# IR_KEYWORD_read
bb98_α:
 mov rdi, qword ptr [rip + .Lx137_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain9_n74_α
 xchain9_n73_β:
 jmp xchain9_n75_α
.Lx137_0:
 .quad .Lx137_0_s
.Lx137_0_s:
 .string "&x"
xchain9_n74_α:
bb99_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1312]
 mov rsi, qword ptr [r12 + 1320]
 call rt_write_any_nl@PLT
 jmp xchain9_n75_α
xchain9_n74_β:
xchain9_n74_β:
 jmp xchain9_n75_α
xchain9_n75_α:
# IR_KEYWORD_read
bb100_α:
 mov rdi, qword ptr [rip + .Lx139_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain9_n76_α
 xchain9_n75_β:
 jmp xchain9_n77_α
.Lx139_0:
 .quad .Lx139_0_s
.Lx139_0_s:
 .string "&y"
xchain9_n76_α:
bb101_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1328]
 mov rsi, qword ptr [r12 + 1336]
 call rt_write_any_nl@PLT
 jmp xchain9_n77_α
xchain9_n76_β:
xchain9_n76_β:
 jmp xchain9_n77_α
xchain9_n77_α:
# IR_KEYWORD_read
bb102_α:
 mov rdi, qword ptr [rip + .Lx141_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain9_n78_α
 xchain9_n77_β:
 jmp main_ω
.Lx141_0:
 .quad .Lx141_0_s
.Lx141_0_s:
 .string "&level"
xchain9_n78_α:
bb103_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1344]
 mov rsi, qword ptr [r12 + 1352]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain9_n78_β:
xchain9_n78_β:
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
.S0: .string "bb_unop: operand slot unresolved (LIT_F/NUL or non-slot producer)"
.text
