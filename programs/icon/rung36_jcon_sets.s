  .intel_syntax noprefix
  .text
  .globl proc_wset_α
proc_wset_α:
#=======================================================================================================================
    .global proc_wset_α
    .global proc_wset_β
    .global proc_wset_γ
    .global proc_wset_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_wset_α_body:
xchain0_n0_α:
bb1_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+80]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
# marshal arg1 = LIT_I -> [r12+96]
 mov qword ptr [r12 + 96], 6
 movabs rax, 10
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn2: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n5_α
xchain0_n1_α:
# IR_LIT_S
bb2_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string " :"
xchain0_n2_α:
bb3_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+144]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = LIT_I -> [r12+160]
 mov qword ptr [r12 + 160], 6
 movabs rax, 2
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn5: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn5]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
xchain0_n3_α:
# IR_LIT_S
bb4_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string " :"
xchain0_n4_α:
bb5_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+272]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = LIT_I -> [r12+288]
 mov qword ptr [r12 + 288], 6
 movabs rax, 10
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lcallfn8: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn8]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+224]
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx7_2]
 mov qword ptr [r12 + 232], rax
 jmp .Lx7_3
.Lx7_2:
 .quad .Lx7_2_s
.Lx7_2_s:
 .string " :"
.Lx7_3:
# marshal arg0 = varslot [r12+32] -> [r12+304]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = LIT_I -> [r12+320]
 mov qword ptr [r12 + 320], 6
 movabs rax, 2
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lcallfn9: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn9]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
# marshal arg3 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx7_6]
 mov qword ptr [r12 + 264], rax
 jmp .Lx7_7
.Lx7_6:
 .quad .Lx7_6_s
.Lx7_6_s:
 .string " :"
.Lx7_7:
  .section .rodata
  .Lrkfn10: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn10]
 lea rsi, [r12 + 208]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n5_α
xchain0_n5_α:
xaltg11_a0_start:
# IR_KEYWORD_null
bb6_α:
 mov qword ptr [r12 + 360], 0
 mov qword ptr [r12 + 368], 0
 jmp xaltg11_a0_succ
 xaltg11_a0_beta:
 jmp xaltg11_a1_start
xaltg11_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], 1
jmp xchain0_n6_α
xaltg11_a1_start:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xaltg11_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], 1
jmp xchain0_n6_α
xaltg11_a2_start:
xaltg11_a2_succ:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
jmp xchain0_n6_α
xaltg11_a3_start:
# IR_LIT_S
bb9_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 408], rax
 jmp xaltg11_a3_succ
 xaltg11_a3_beta:
 jmp xaltg11_a4_start
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string ""
xaltg11_a3_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], 1
jmp xchain0_n6_α
xaltg11_a4_start:
# IR_LIT_S
bb10_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 424], rax
 jmp xbang21_iter_done
 xbang21_iter_β:
 jmp xaltg11_a5_start
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "abcde"
xbang21_iter_done:
# IR_LIST_BANG
bb11_α:
 mov qword ptr [r12 + 432], 0
.Lx24_0:
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 432]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 440], rax
 mov qword ptr [r12 + 448], rdx
 cmp rax, 99
 je xaltg11_a5_start
 jmp xaltg11_a4_succ
 xaltg11_a4_beta:
 inc qword ptr [r12 + 432]
 jmp .Lx24_0
xaltg11_a4_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], 1
jmp xchain0_n6_α
xaltg11_a5_start:
# IR_LIT_S
bb12_α:
 mov qword ptr [r12 + 456], 1
 mov dword ptr [r12 + 460], -1
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [r12 + 464], rax
 jmp xaltg11_a5_succ
 xaltg11_a5_beta:
 jmp xaltg11_a6_start
.Lx26_0:
 .quad .Lx26_0_s
.Lx26_0_s:
 .string ""
xaltg11_a5_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], 1
jmp xchain0_n6_α
xaltg11_a6_start:
# IR_LIT_S
bb13_α:
 mov qword ptr [r12 + 472], 1
 mov dword ptr [r12 + 476], -1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 480], rax
 jmp xaltg11_a6_succ
 xaltg11_a6_beta:
 jmp xchain0_n10_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "cs"
xaltg11_a6_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], 1
jmp xchain0_n6_α
xchain0_n5_β:
jmp xchain0_n10_α
xchain0_n6_α:
bb14_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 488], rax
 mov qword ptr [r12 + 496], rdx
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n5_β
xchain0_n7_α:
# IR_LIT_S
bb15_α:
 mov qword ptr [r12 + 504], 1
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 512], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n5_β
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string " "
xchain0_n8_α:
bb16_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+552]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 552], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 560], rax
# marshal arg1 = varslot [r12+48] -> [r12+568]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 568], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 576], rax
  .section .rodata
  .Lcallfn33: .string "member"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn33]
 lea rsi, [r12 + 552]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 536], rax
 mov qword ptr [r12 + 544], rdx
  .section .rodata
  .Lrkfn34: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn34]
 lea rsi, [r12 + 536]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 520], rax
 mov qword ptr [r12 + 528], rdx
 cmp eax, 99
 je xchain0_n5_β
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n5_β
xchain0_n9_α:
bb17_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+600]
 mov qword ptr [r12 + 600], 1
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 608], rax
 jmp .Lx35_1
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string " "
.Lx35_1:
# marshal arg0 = varslot [r12+32] -> [r12+648]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 648], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 656], rax
# marshal arg1 = varslot [r12+48] -> [r12+664]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 664], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 672], rax
  .section .rodata
  .Lcallfn36: .string "member"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn36]
 lea rsi, [r12 + 648]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 632], rax
 mov qword ptr [r12 + 640], rdx
  .section .rodata
  .Lcallfn37: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn37]
 lea rsi, [r12 + 632]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 616], rax
 mov qword ptr [r12 + 624], rdx
  .section .rodata
  .Lrkfn38: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 600]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], rdx
 cmp eax, 99
 je xchain0_n5_β
 jmp xchain0_n5_β
 xchain0_n9_β:
 jmp xchain0_n5_β
xchain0_n10_α:
# IR_KEYWORD_null
bb18_α:
 mov qword ptr [r12 + 680], 0
 mov qword ptr [r12 + 688], 0
 jmp xevery39_body_β
 xevery39_body_β:
 jmp xchain0_n11_α
# IR_EVERY
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n11_α
xchain0_n11_α:
bb20_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn43: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn43]
 lea rsi, [r12 + 712]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 696], rax
 mov qword ptr [r12 + 704], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n12_α
xchain0_n12_α:
# IR_RETURN
bb21_α:
 mov rax, qword ptr [r12 + 696]
 mov rdx, qword ptr [r12 + 704]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_wset_γ
proc_wset_β:
jmp proc_wset_ω
proc_wset_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_wset_ω:
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
  .Lstartup_pname0: .string "wset"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_wset_α]
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
xchain45_n0_α:
xargsub47_n0_α:
# IR_LIT_S
bb22_α:
 mov qword ptr [r12 + 32], 1
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [r12 + 40], rax
 jmp xicnarg46_done
 xargsub47_n0_β:
 jmp xchain45_n1_α
.Lx48_0:
 .quad .Lx48_0_s
.Lx48_0_s:
 .string "empty"
xicnarg46_done:
xargsub50_n0_α:
bb23_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn52: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn52]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain45_n1_α
 jmp xargsub50_n1_α
 xargsub50_n0_β:
 jmp xchain45_n1_α
xargsub50_n1_α:
bb24_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xicnarg49_done
 xargsub50_n1_β:
 jmp xchain45_n1_α
xicnarg49_done:
bb25_α:
  .section .rodata
  .Lcall25_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+32]
 mov rdx, qword ptr [r12+40]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+64]
 mov rdx, qword ptr [r12+72]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall25_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain45_n1_α
 jmp xchain45_n1_α
xchain45_n0_β:
 jmp xchain45_n1_α
xchain45_n1_α:
bb26_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+112]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn56: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn56]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain45_n3_α
 jmp xchain45_n2_α
 xchain45_n1_β:
 jmp xchain45_n3_α
xchain45_n2_α:
bb27_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_write_any_nl@PLT
 jmp xchain45_n3_α
xchain45_n2_β:
xchain45_n2_β:
 jmp xchain45_n3_α
xchain45_n3_α:
bb28_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+144]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn59: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn59]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain45_n5_α
 jmp xchain45_n4_α
 xchain45_n3_β:
 jmp xchain45_n5_α
xchain45_n4_α:
bb29_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_write_any_nl@PLT
 jmp xchain45_n5_α
xchain45_n4_β:
xchain45_n4_β:
 jmp xchain45_n5_α
xchain45_n5_α:
bb30_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+192]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lcallfn62: .string "member"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn62]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
  .section .rodata
  .Lrkfn63: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn63]
 lea rsi, [r12 + 176]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain45_n7_α
 jmp xchain45_n6_α
 xchain45_n5_β:
 jmp xchain45_n7_α
xchain45_n6_α:
bb31_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 call rt_write_any_nl@PLT
 jmp xchain45_n7_α
xchain45_n6_β:
xchain45_n6_β:
 jmp xchain45_n7_α
xchain45_n7_α:
xargsub66_n0_α:
# IR_LIT_S
bb32_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 216], rax
 jmp xicnarg65_done
 xargsub66_n0_β:
 jmp xchain45_n8_α
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "insert"
xicnarg65_done:
xargsub69_n0_α:
bb33_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+240]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn71: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn71]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain45_n8_α
 jmp xicnarg68_done
 xargsub69_n0_β:
 jmp xchain45_n8_α
xicnarg68_done:
bb34_α:
  .section .rodata
  .Lcall35_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+208]
 mov rdx, qword ptr [r12+216]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+224]
 mov rdx, qword ptr [r12+232]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall35_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain45_n8_α
 jmp xchain45_n8_α
xchain45_n7_β:
 jmp xchain45_n8_α
xchain45_n8_α:
bb35_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+288]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn74: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn74]
 lea rsi, [r12 + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain45_n10_α
 jmp xchain45_n9_α
 xchain45_n8_β:
 jmp xchain45_n10_α
xchain45_n9_α:
bb36_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 call rt_write_any_nl@PLT
 jmp xchain45_n10_α
xchain45_n9_β:
xchain45_n9_β:
 jmp xchain45_n10_α
xchain45_n10_α:
bb37_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+336]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lcallfn77: .string "member"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn77]
 lea rsi, [r12 + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
  .section .rodata
  .Lrkfn78: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn78]
 lea rsi, [r12 + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain45_n12_α
 jmp xchain45_n11_α
 xchain45_n10_β:
 jmp xchain45_n12_α
xchain45_n11_α:
bb38_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_write_any_nl@PLT
 jmp xchain45_n12_α
xchain45_n11_β:
xchain45_n11_β:
 jmp xchain45_n12_α
xchain45_n12_α:
bb39_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+384]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = LIT_I -> [r12+400]
 mov qword ptr [r12 + 400], 6
 movabs rax, 3
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lcallfn81: .string "member"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn81]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
  .section .rodata
  .Lrkfn82: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn82]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain45_n14_α
 jmp xchain45_n13_α
 xchain45_n12_β:
 jmp xchain45_n14_α
xchain45_n13_α:
bb40_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_write_any_nl@PLT
 jmp xchain45_n14_α
xchain45_n13_β:
xchain45_n13_β:
 jmp xchain45_n14_α
xchain45_n14_α:
xargsub85_n0_α:
# IR_LIT_S
bb41_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx86_0]
 mov qword ptr [r12 + 424], rax
 jmp xicnarg84_done
 xargsub85_n0_β:
 jmp xchain45_n15_α
.Lx86_0:
 .quad .Lx86_0_s
.Lx86_0_s:
 .string "insert"
xicnarg84_done:
xargsub88_n0_α:
bb42_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+448]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn90: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn90]
 lea rsi, [r12 + 448]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain45_n15_α
 jmp xicnarg87_done
 xargsub88_n0_β:
 jmp xchain45_n15_α
xicnarg87_done:
bb43_α:
  .section .rodata
  .Lcall46_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+416]
 mov rdx, qword ptr [r12+424]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+432]
 mov rdx, qword ptr [r12+440]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall46_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain45_n15_α
 jmp xchain45_n15_α
xchain45_n14_β:
 jmp xchain45_n15_α
xchain45_n15_α:
xargsub93_n0_α:
# IR_LIT_S
bb44_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx94_0]
 mov qword ptr [r12 + 488], rax
 jmp xicnarg92_done
 xargsub93_n0_β:
 jmp xchain45_n16_α
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "delete"
xicnarg92_done:
xargsub96_n0_α:
bb45_α:
# BOX IR_CALL delete(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+512]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn98: .string "delete"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn98]
 lea rsi, [r12 + 512]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain45_n16_α
 jmp xicnarg95_done
 xargsub96_n0_β:
 jmp xchain45_n16_α
xicnarg95_done:
bb46_α:
  .section .rodata
  .Lcall49_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+480]
 mov rdx, qword ptr [r12+488]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+496]
 mov rdx, qword ptr [r12+504]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall49_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain45_n16_α
 jmp xchain45_n16_α
xchain45_n15_β:
 jmp xchain45_n16_α
xchain45_n16_α:
xargsub101_n0_α:
# IR_LIT_S
bb47_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx102_0]
 mov qword ptr [r12 + 552], rax
 jmp xicnarg100_done
 xargsub101_n0_β:
 jmp xchain45_n17_α
.Lx102_0:
 .quad .Lx102_0_s
.Lx102_0_s:
 .string "delete"
xicnarg100_done:
xargsub104_n0_α:
bb48_α:
# BOX IR_CALL delete(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+576]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn106: .string "delete"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn106]
 lea rsi, [r12 + 576]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain45_n17_α
 jmp xicnarg103_done
 xargsub104_n0_β:
 jmp xchain45_n17_α
xicnarg103_done:
bb49_α:
  .section .rodata
  .Lcall52_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+544]
 mov rdx, qword ptr [r12+552]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+560]
 mov rdx, qword ptr [r12+568]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall52_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain45_n17_α
 jmp xchain45_n17_α
xchain45_n16_β:
 jmp xchain45_n17_α
xchain45_n17_α:
bb50_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn109: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn109]
 lea rsi, [r12 + 624]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain45_n18_α
 jmp xchain45_n18_α
 xchain45_n17_β:
 jmp xchain45_n18_α
xchain45_n18_α:
xargsub111_n0_α:
# IR_LIT_S
bb51_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx112_0]
 mov qword ptr [r12 + 632], rax
 jmp xicnarg110_done
 xargsub111_n0_β:
 jmp xchain45_n19_α
.Lx112_0:
 .quad .Lx112_0_s
.Lx112_0_s:
 .string "x"
xicnarg110_done:
xargsub114_n0_α:
bb52_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+672]
 mov qword ptr [r12 + 672], 6
 movabs rax, 1
 mov qword ptr [r12 + 680], rax
# marshal arg1 = LIT_I -> [r12+688]
 mov qword ptr [r12 + 688], 6
 movabs rax, 2
 mov qword ptr [r12 + 696], rax
# marshal arg2 = LIT_I -> [r12+704]
 mov qword ptr [r12 + 704], 6
 movabs rax, 4
 mov qword ptr [r12 + 712], rax
  .section .rodata
  .Lcallfn116: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn116]
 lea rsi, [r12 + 672]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
  .section .rodata
  .Lrkfn117: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn117]
 lea rsi, [r12 + 656]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain45_n19_α
 jmp xargsub114_n1_α
 xargsub114_n0_β:
 jmp xchain45_n19_α
xargsub114_n1_α:
bb53_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xicnarg113_done
 xargsub114_n1_β:
 jmp xchain45_n19_α
xicnarg113_done:
bb54_α:
  .section .rodata
  .Lcall58_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+624]
 mov rdx, qword ptr [r12+632]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+720]
 mov rdx, qword ptr [r12+728]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall58_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xchain45_n19_α
 jmp xchain45_n19_α
xchain45_n18_β:
 jmp xchain45_n19_α
xchain45_n19_α:
xargsub121_n0_α:
# IR_LIT_S
bb55_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx122_0]
 mov qword ptr [r12 + 760], rax
 jmp xicnarg120_done
 xargsub121_n0_β:
 jmp xchain45_n20_α
.Lx122_0:
 .quad .Lx122_0_s
.Lx122_0_s:
 .string "y"
xicnarg120_done:
xargsub124_n0_α:
bb56_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+800]
 mov qword ptr [r12 + 800], 6
 movabs rax, 1
 mov qword ptr [r12 + 808], rax
# marshal arg1 = LIT_I -> [r12+816]
 mov qword ptr [r12 + 816], 6
 movabs rax, 2
 mov qword ptr [r12 + 824], rax
# marshal arg2 = LIT_I -> [r12+832]
 mov qword ptr [r12 + 832], 6
 movabs rax, 5
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lcallfn126: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn126]
 lea rsi, [r12 + 800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
  .section .rodata
  .Lrkfn127: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn127]
 lea rsi, [r12 + 784]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain45_n20_α
 jmp xargsub124_n1_α
 xargsub124_n0_β:
 jmp xchain45_n20_α
xargsub124_n1_α:
bb57_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xicnarg123_done
 xargsub124_n1_β:
 jmp xchain45_n20_α
xicnarg123_done:
bb58_α:
  .section .rodata
  .Lcall63_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+752]
 mov rdx, qword ptr [r12+760]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+848]
 mov rdx, qword ptr [r12+856]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall63_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain45_n20_α
 jmp xchain45_n20_α
xchain45_n19_β:
 jmp xchain45_n20_α
xchain45_n20_α:
xargsub131_n0_α:
# IR_LIT_S
bb59_α:
 mov qword ptr [r12 + 880], 1
 mov rax, qword ptr [rip + .Lx132_0]
 mov qword ptr [r12 + 888], rax
 jmp xicnarg130_done
 xargsub131_n0_β:
 jmp xchain45_n21_α
.Lx132_0:
 .quad .Lx132_0_s
.Lx132_0_s:
 .string "x ++ y"
xicnarg130_done:
xargsub134_n0_α:
# IR_VAR
bb60_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xargsub134_n1_α
 xargsub134_n0_β:
 jmp xchain45_n21_α
xargsub134_n1_α:
# IR_VAR
bb61_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub134_n2_α
 xargsub134_n1_β:
 jmp xchain45_n21_α
xargsub134_n2_α:
jmp xbinop139_lhs_done
xbinop139_lhs_done:
jmp xbinop139_rhs_done
xbinop139_rhs_done:
bb62_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain45_n21_α
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xicnarg133_done
 xargsub134_n2_β:
 jmp xchain45_n21_α
xicnarg133_done:
bb63_α:
  .section .rodata
  .Lcall68_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+880]
 mov rdx, qword ptr [r12+888]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+896]
 mov rdx, qword ptr [r12+904]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall68_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain45_n21_α
 jmp xchain45_n21_α
xchain45_n20_β:
 jmp xchain45_n21_α
xchain45_n21_α:
xargsub143_n0_α:
# IR_LIT_S
bb64_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx144_0]
 mov qword ptr [r12 + 936], rax
 jmp xicnarg142_done
 xargsub143_n0_β:
 jmp xchain45_n22_α
.Lx144_0:
 .quad .Lx144_0_s
.Lx144_0_s:
 .string "y ++ x"
xicnarg142_done:
xargsub146_n0_α:
# IR_VAR
bb65_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub146_n1_α
 xargsub146_n0_β:
 jmp xchain45_n22_α
xargsub146_n1_α:
# IR_VAR
bb66_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xargsub146_n2_α
 xargsub146_n1_β:
 jmp xchain45_n22_α
xargsub146_n2_α:
jmp xbinop151_lhs_done
xbinop151_lhs_done:
jmp xbinop151_rhs_done
xbinop151_rhs_done:
bb67_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 0]
 mov rcx, qword ptr [r12 + 8]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain45_n22_α
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xicnarg145_done
 xargsub146_n2_β:
 jmp xchain45_n22_α
xicnarg145_done:
bb68_α:
  .section .rodata
  .Lcall73_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+928]
 mov rdx, qword ptr [r12+936]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+944]
 mov rdx, qword ptr [r12+952]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall73_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je xchain45_n22_α
 jmp xchain45_n22_α
xchain45_n21_β:
 jmp xchain45_n22_α
xchain45_n22_α:
xargsub155_n0_α:
# IR_LIT_S
bb69_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx156_0]
 mov qword ptr [r12 + 984], rax
 jmp xicnarg154_done
 xargsub155_n0_β:
 jmp xchain45_n23_α
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "x -- y"
xicnarg154_done:
xargsub158_n0_α:
# IR_VAR
bb70_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xargsub158_n1_α
 xargsub158_n0_β:
 jmp xchain45_n23_α
xargsub158_n1_α:
# IR_VAR
bb71_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub158_n2_α
 xargsub158_n1_β:
 jmp xchain45_n23_α
xargsub158_n2_α:
jmp xbinop163_lhs_done
xbinop163_lhs_done:
jmp xbinop163_rhs_done
xbinop163_rhs_done:
bb72_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 20
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain45_n23_α
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xicnarg157_done
 xargsub158_n2_β:
 jmp xchain45_n23_α
xicnarg157_done:
bb73_α:
  .section .rodata
  .Lcall78_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+976]
 mov rdx, qword ptr [r12+984]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+992]
 mov rdx, qword ptr [r12+100]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall78_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xchain45_n23_α
 jmp xchain45_n23_α
xchain45_n22_β:
 jmp xchain45_n23_α
xchain45_n23_α:
xargsub167_n0_α:
# IR_LIT_S
bb74_α:
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx168_0]
 mov qword ptr [r12 + 1032], rax
 jmp xicnarg166_done
 xargsub167_n0_β:
 jmp xchain45_n24_α
.Lx168_0:
 .quad .Lx168_0_s
.Lx168_0_s:
 .string "y -- x"
xicnarg166_done:
xargsub170_n0_α:
# IR_VAR
bb75_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub170_n1_α
 xargsub170_n0_β:
 jmp xchain45_n24_α
xargsub170_n1_α:
# IR_VAR
bb76_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xargsub170_n2_α
 xargsub170_n1_β:
 jmp xchain45_n24_α
xargsub170_n2_α:
jmp xbinop175_lhs_done
xbinop175_lhs_done:
jmp xbinop175_rhs_done
xbinop175_rhs_done:
bb77_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 0]
 mov rcx, qword ptr [r12 + 8]
 mov r8d, 20
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain45_n24_α
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xicnarg169_done
 xargsub170_n2_β:
 jmp xchain45_n24_α
xicnarg169_done:
bb78_α:
  .section .rodata
  .Lcall83_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+102]
 mov rdx, qword ptr [r12+103]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+104]
 mov rdx, qword ptr [r12+104]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall83_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain45_n24_α
 jmp xchain45_n24_α
xchain45_n23_β:
 jmp xchain45_n24_α
xchain45_n24_α:
xargsub179_n0_α:
# IR_LIT_S
bb79_α:
 mov qword ptr [r12 + 1072], 1
 mov rax, qword ptr [rip + .Lx180_0]
 mov qword ptr [r12 + 1080], rax
 jmp xicnarg178_done
 xargsub179_n0_β:
 jmp xchain45_n25_α
.Lx180_0:
 .quad .Lx180_0_s
.Lx180_0_s:
 .string "x ** y"
xicnarg178_done:
xargsub182_n0_α:
# IR_VAR
bb80_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xargsub182_n1_α
 xargsub182_n0_β:
 jmp xchain45_n25_α
xargsub182_n1_α:
# IR_VAR
bb81_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub182_n2_α
 xargsub182_n1_β:
 jmp xchain45_n25_α
xargsub182_n2_α:
jmp xbinop187_lhs_done
xbinop187_lhs_done:
jmp xbinop187_rhs_done
xbinop187_rhs_done:
bb82_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 21
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain45_n25_α
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xicnarg181_done
 xargsub182_n2_β:
 jmp xchain45_n25_α
xicnarg181_done:
bb83_α:
  .section .rodata
  .Lcall88_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+107]
 mov rdx, qword ptr [r12+108]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+108]
 mov rdx, qword ptr [r12+109]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall88_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 cmp eax, 99
 je xchain45_n25_α
 jmp xchain45_n25_α
xchain45_n24_β:
 jmp xchain45_n25_α
xchain45_n25_α:
xargsub191_n0_α:
# IR_LIT_S
bb84_α:
 mov qword ptr [r12 + 1120], 1
 mov rax, qword ptr [rip + .Lx192_0]
 mov qword ptr [r12 + 1128], rax
 jmp xicnarg190_done
 xargsub191_n0_β:
 jmp xchain45_n26_α
.Lx192_0:
 .quad .Lx192_0_s
.Lx192_0_s:
 .string "y ** x"
xicnarg190_done:
xargsub194_n0_α:
# IR_VAR
bb85_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub194_n1_α
 xargsub194_n0_β:
 jmp xchain45_n26_α
xargsub194_n1_α:
# IR_VAR
bb86_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xargsub194_n2_α
 xargsub194_n1_β:
 jmp xchain45_n26_α
xargsub194_n2_α:
jmp xbinop199_lhs_done
xbinop199_lhs_done:
jmp xbinop199_rhs_done
xbinop199_rhs_done:
bb87_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 0]
 mov rcx, qword ptr [r12 + 8]
 mov r8d, 21
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain45_n26_α
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xicnarg193_done
 xargsub194_n2_β:
 jmp xchain45_n26_α
xicnarg193_done:
bb88_α:
  .section .rodata
  .Lcall93_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+112]
 mov rdx, qword ptr [r12+112]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+113]
 mov rdx, qword ptr [r12+114]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall93_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain45_n26_α
 jmp xchain45_n26_α
xchain45_n25_β:
 jmp xchain45_n26_α
xchain45_n26_α:
bb89_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn203: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn203]
 lea rsi, [r12 + 1184]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain45_n27_α
 jmp xchain45_n27_α
 xchain45_n26_β:
 jmp xchain45_n27_α
xchain45_n27_α:
xargsub205_n0_α:
# IR_LIT_S
bb90_α:
 mov qword ptr [r12 + 1184], 1
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [r12 + 1192], rax
 jmp xicnarg204_done
 xargsub205_n0_β:
 jmp xchain45_n28_α
.Lx206_0:
 .quad .Lx206_0_s
.Lx206_0_s:
 .string "empty"
xicnarg204_done:
xargsub208_n0_α:
bb91_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+1216] -> [r12+1216]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1224], rax
  .section .rodata
  .Lrkfn210: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn210]
 lea rsi, [r12 + 1216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je xchain45_n28_α
 jmp xargsub208_n1_α
 xargsub208_n0_β:
 jmp xchain45_n28_α
xargsub208_n1_α:
bb92_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1200]
 mov rdx, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xicnarg207_done
 xargsub208_n1_β:
 jmp xchain45_n28_α
xicnarg207_done:
bb93_α:
  .section .rodata
  .Lcall98_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+118]
 mov rdx, qword ptr [r12+119]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+123]
 mov rdx, qword ptr [r12+124]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall98_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain45_n28_α
 jmp xchain45_n28_α
xchain45_n27_β:
 jmp xchain45_n28_α
xchain45_n28_α:
xargsub214_n0_α:
# IR_LIT_S
bb94_α:
 mov qword ptr [r12 + 1264], 1
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [r12 + 1272], rax
 jmp xicnarg213_done
 xargsub214_n0_β:
 jmp xchain45_n29_α
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "+ 1"
xicnarg213_done:
xargsub217_n0_α:
bb95_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+1296]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1304], rax
# marshal arg1 = LIT_I -> [r12+1312]
 mov qword ptr [r12 + 1312], 6
 movabs rax, 1
 mov qword ptr [r12 + 1320], rax
# marshal arg2 = LIT_I -> [r12+1328]
 mov qword ptr [r12 + 1328], 6
 movabs rax, 4
 mov qword ptr [r12 + 1336], rax
# marshal arg3 = LIT_I -> [r12+1344]
 mov qword ptr [r12 + 1344], 6
 movabs rax, 7
 mov qword ptr [r12 + 1352], rax
  .section .rodata
  .Lrkfn219: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn219]
 lea rsi, [r12 + 1296]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xchain45_n29_α
 jmp xicnarg216_done
 xargsub217_n0_β:
 jmp xchain45_n29_α
xicnarg216_done:
bb96_α:
  .section .rodata
  .Lcall101_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+126]
 mov rdx, qword ptr [r12+127]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+128]
 mov rdx, qword ptr [r12+128]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall101_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 cmp eax, 99
 je xchain45_n29_α
 jmp xchain45_n29_α
xchain45_n28_β:
 jmp xchain45_n29_α
xchain45_n29_α:
xargsub222_n0_α:
# IR_LIT_S
bb97_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx223_0]
 mov qword ptr [r12 + 1384], rax
 jmp xicnarg221_done
 xargsub222_n0_β:
 jmp xchain45_n30_α
.Lx223_0:
 .quad .Lx223_0_s
.Lx223_0_s:
 .string "+ 2"
xicnarg221_done:
xargsub225_n0_α:
bb98_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+1408]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1416], rax
# marshal arg1 = LIT_I -> [r12+1424]
 mov qword ptr [r12 + 1424], 6
 movabs rax, 2
 mov qword ptr [r12 + 1432], rax
  .section .rodata
  .Lrkfn227: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn227]
 lea rsi, [r12 + 1408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 cmp eax, 99
 je xchain45_n30_α
 jmp xicnarg224_done
 xargsub225_n0_β:
 jmp xchain45_n30_α
xicnarg224_done:
bb99_α:
  .section .rodata
  .Lcall104_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+137]
 mov rdx, qword ptr [r12+138]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+139]
 mov rdx, qword ptr [r12+140]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall104_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 cmp eax, 99
 je xchain45_n30_α
 jmp xchain45_n30_α
xchain45_n29_β:
 jmp xchain45_n30_α
xchain45_n30_α:
xargsub230_n0_α:
# IR_LIT_S
bb100_α:
 mov qword ptr [r12 + 1456], 1
 mov rax, qword ptr [rip + .Lx231_0]
 mov qword ptr [r12 + 1464], rax
 jmp xicnarg229_done
 xargsub230_n0_β:
 jmp xchain45_n31_α
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
 .string "+ c"
xicnarg229_done:
xargsub233_n0_α:
bb101_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+1488]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1496], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+1504]
 mov qword ptr [r12 + 1504], 1
 mov rax, qword ptr [rip + .Lx234_2]
 mov qword ptr [r12 + 1512], rax
 jmp .Lx234_3
.Lx234_2:
 .quad .Lx234_2_s
.Lx234_2_s:
 .string "c"
.Lx234_3:
  .section .rodata
  .Lrkfn235: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn235]
 lea rsi, [r12 + 1488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 cmp eax, 99
 je xchain45_n31_α
 jmp xicnarg232_done
 xargsub233_n0_β:
 jmp xchain45_n31_α
xicnarg232_done:
bb102_α:
  .section .rodata
  .Lcall107_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+145]
 mov rdx, qword ptr [r12+146]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+147]
 mov rdx, qword ptr [r12+148]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall107_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 cmp eax, 99
 je xchain45_n31_α
 jmp xchain45_n31_α
xchain45_n30_β:
 jmp xchain45_n31_α
xchain45_n31_α:
xargsub238_n0_α:
# IR_LIT_S
bb103_α:
 mov qword ptr [r12 + 1536], 1
 mov rax, qword ptr [rip + .Lx239_0]
 mov qword ptr [r12 + 1544], rax
 jmp xicnarg237_done
 xargsub238_n0_β:
 jmp xchain45_n32_α
.Lx239_0:
 .quad .Lx239_0_s
.Lx239_0_s:
 .string "- 3"
xicnarg237_done:
xargsub241_n0_α:
bb104_α:
# BOX IR_CALL delete(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+1568]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1576], rax
# marshal arg1 = LIT_I -> [r12+1584]
 mov qword ptr [r12 + 1584], 6
 movabs rax, 3
 mov qword ptr [r12 + 1592], rax
  .section .rodata
  .Lrkfn243: .string "delete"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn243]
 lea rsi, [r12 + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 cmp eax, 99
 je xchain45_n32_α
 jmp xicnarg240_done
 xargsub241_n0_β:
 jmp xchain45_n32_α
xicnarg240_done:
bb105_α:
  .section .rodata
  .Lcall110_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+153]
 mov rdx, qword ptr [r12+154]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+155]
 mov rdx, qword ptr [r12+156]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall110_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 cmp eax, 99
 je xchain45_n32_α
 jmp xchain45_n32_α
xchain45_n31_β:
 jmp xchain45_n32_α
xchain45_n32_α:
xargsub246_n0_α:
# IR_LIT_S
bb106_α:
 mov qword ptr [r12 + 1616], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [r12 + 1624], rax
 jmp xicnarg245_done
 xargsub246_n0_β:
 jmp xchain45_n33_α
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "- 1"
xicnarg245_done:
xargsub249_n0_α:
bb107_α:
# BOX IR_CALL delete(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+1648]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1656], rax
# marshal arg1 = LIT_I -> [r12+1664]
 mov qword ptr [r12 + 1664], 6
 movabs rax, 1
 mov qword ptr [r12 + 1672], rax
# marshal arg2 = LIT_I -> [r12+1680]
 mov qword ptr [r12 + 1680], 6
 movabs rax, 2
 mov qword ptr [r12 + 1688], rax
  .section .rodata
  .Lrkfn251: .string "delete"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn251]
 lea rsi, [r12 + 1648]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 cmp eax, 99
 je xchain45_n33_α
 jmp xicnarg248_done
 xargsub249_n0_β:
 jmp xchain45_n33_α
xicnarg248_done:
bb108_α:
  .section .rodata
  .Lcall113_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+161]
 mov rdx, qword ptr [r12+162]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+163]
 mov rdx, qword ptr [r12+164]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall113_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 cmp eax, 99
 je xchain45_n33_α
 jmp xchain45_n33_α
xchain45_n32_β:
 jmp xchain45_n33_α
xchain45_n33_α:
xargsub254_n0_α:
# IR_LIT_S
bb109_α:
 mov qword ptr [r12 + 1712], 1
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [r12 + 1720], rax
 jmp xicnarg253_done
 xargsub254_n0_β:
 jmp xchain45_n34_α
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "- 1"
xicnarg253_done:
xargsub257_n0_α:
bb110_α:
# BOX IR_CALL delete(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+1744]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1752], rax
# marshal arg1 = LIT_I -> [r12+1760]
 mov qword ptr [r12 + 1760], 6
 movabs rax, 1
 mov qword ptr [r12 + 1768], rax
  .section .rodata
  .Lrkfn259: .string "delete"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn259]
 lea rsi, [r12 + 1744]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je xchain45_n34_α
 jmp xicnarg256_done
 xargsub257_n0_β:
 jmp xchain45_n34_α
xicnarg256_done:
bb111_α:
  .section .rodata
  .Lcall116_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+171]
 mov rdx, qword ptr [r12+172]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+172]
 mov rdx, qword ptr [r12+173]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall116_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 cmp eax, 99
 je xchain45_n34_α
 jmp xchain45_n34_α
xchain45_n33_β:
 jmp xchain45_n34_α
xchain45_n34_α:
xargsub262_n0_α:
# IR_LIT_S
bb112_α:
 mov qword ptr [r12 + 1792], 1
 mov rax, qword ptr [rip + .Lx263_0]
 mov qword ptr [r12 + 1800], rax
 jmp xicnarg261_done
 xargsub262_n0_β:
 jmp xchain45_n35_α
.Lx263_0:
 .quad .Lx263_0_s
.Lx263_0_s:
 .string "+ 2"
xicnarg261_done:
xargsub265_n0_α:
bb113_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+1824]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1832], rax
# marshal arg1 = LIT_I -> [r12+1840]
 mov qword ptr [r12 + 1840], 6
 movabs rax, 2
 mov qword ptr [r12 + 1848], rax
  .section .rodata
  .Lrkfn267: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn267]
 lea rsi, [r12 + 1824]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 cmp eax, 99
 je xchain45_n35_α
 jmp xicnarg264_done
 xargsub265_n0_β:
 jmp xchain45_n35_α
xicnarg264_done:
bb114_α:
  .section .rodata
  .Lcall119_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+179]
 mov rdx, qword ptr [r12+180]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+180]
 mov rdx, qword ptr [r12+181]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall119_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 cmp eax, 99
 je xchain45_n35_α
 jmp xchain45_n35_α
xchain45_n34_β:
 jmp xchain45_n35_α
xchain45_n35_α:
xargsub270_n0_α:
# IR_LIT_S
bb115_α:
 mov qword ptr [r12 + 1872], 1
 mov rax, qword ptr [rip + .Lx271_0]
 mov qword ptr [r12 + 1880], rax
 jmp xicnarg269_done
 xargsub270_n0_β:
 jmp xchain45_n36_α
.Lx271_0:
 .quad .Lx271_0_s
.Lx271_0_s:
 .string "+ 1"
xicnarg269_done:
xargsub273_n0_α:
bb116_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+1904]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1904], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1912], rax
# marshal arg1 = LIT_I -> [r12+1920]
 mov qword ptr [r12 + 1920], 6
 movabs rax, 1
 mov qword ptr [r12 + 1928], rax
  .section .rodata
  .Lrkfn275: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn275]
 lea rsi, [r12 + 1904]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 cmp eax, 99
 je xchain45_n36_α
 jmp xicnarg272_done
 xargsub273_n0_β:
 jmp xchain45_n36_α
xicnarg272_done:
bb117_α:
  .section .rodata
  .Lcall122_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+187]
 mov rdx, qword ptr [r12+188]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+188]
 mov rdx, qword ptr [r12+189]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall122_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 cmp eax, 99
 je xchain45_n36_α
 jmp xchain45_n36_α
xchain45_n35_β:
 jmp xchain45_n36_α
xchain45_n36_α:
xargsub278_n0_α:
# IR_LIT_S
bb118_α:
 mov qword ptr [r12 + 1952], 1
 mov rax, qword ptr [rip + .Lx279_0]
 mov qword ptr [r12 + 1960], rax
 jmp xicnarg277_done
 xargsub278_n0_β:
 jmp xchain45_n37_α
.Lx279_0:
 .quad .Lx279_0_s
.Lx279_0_s:
 .string "+ 7.0"
xicnarg277_done:
xargsub281_n0_α:
bb119_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+1984]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1992], rax
# marshal arg1 = LIT_F -> [r12+2000]
 mov qword ptr [r12 + 2000], 7
 movabs rax, 4619567317775286272
 mov qword ptr [r12 + 2008], rax
  .section .rodata
  .Lrkfn283: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn283]
 lea rsi, [r12 + 1984]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 cmp eax, 99
 je xchain45_n37_α
 jmp xicnarg280_done
 xargsub281_n0_β:
 jmp xchain45_n37_α
xicnarg280_done:
bb120_α:
  .section .rodata
  .Lcall125_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+195]
 mov rdx, qword ptr [r12+196]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+196]
 mov rdx, qword ptr [r12+197]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall125_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je xchain45_n37_α
 jmp xchain45_n37_α
xchain45_n36_β:
 jmp xchain45_n37_α
xchain45_n37_α:
xargsub286_n0_α:
# IR_LIT_S
bb121_α:
 mov qword ptr [r12 + 2032], 1
 mov rax, qword ptr [rip + .Lx287_0]
 mov qword ptr [r12 + 2040], rax
 jmp xicnarg285_done
 xargsub286_n0_β:
 jmp xchain45_n38_α
.Lx287_0:
 .quad .Lx287_0_s
.Lx287_0_s:
 .string "+ 7.0"
xicnarg285_done:
xargsub289_n0_α:
bb122_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+2064]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 2072], rax
# marshal arg1 = LIT_F -> [r12+2080]
 mov qword ptr [r12 + 2080], 7
 movabs rax, 4619567317775286272
 mov qword ptr [r12 + 2088], rax
  .section .rodata
  .Lrkfn291: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn291]
 lea rsi, [r12 + 2064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 cmp eax, 99
 je xchain45_n38_α
 jmp xicnarg288_done
 xargsub289_n0_β:
 jmp xchain45_n38_α
xicnarg288_done:
bb123_α:
  .section .rodata
  .Lcall128_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+203]
 mov rdx, qword ptr [r12+204]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+204]
 mov rdx, qword ptr [r12+205]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall128_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 cmp eax, 99
 je xchain45_n38_α
 jmp xchain45_n38_α
xchain45_n37_β:
 jmp xchain45_n38_α
xchain45_n38_α:
xargsub294_n0_α:
# IR_LIT_S
bb124_α:
 mov qword ptr [r12 + 2112], 1
 mov rax, qword ptr [rip + .Lx295_0]
 mov qword ptr [r12 + 2120], rax
 jmp xicnarg293_done
 xargsub294_n0_β:
 jmp xchain45_n39_α
.Lx295_0:
 .quad .Lx295_0_s
.Lx295_0_s:
 .string "+ 'cs'"
xicnarg293_done:
xargsub297_n0_α:
bb125_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+2144]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 2144], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 2152], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+2160]
 mov qword ptr [r12 + 2160], 1
 mov rax, qword ptr [rip + .Lx298_2]
 mov qword ptr [r12 + 2168], rax
 jmp .Lx298_3
.Lx298_2:
 .quad .Lx298_2_s
.Lx298_2_s:
 .string "cs"
.Lx298_3:
  .section .rodata
  .Lrkfn299: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn299]
 lea rsi, [r12 + 2144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 cmp eax, 99
 je xchain45_n39_α
 jmp xicnarg296_done
 xargsub297_n0_β:
 jmp xchain45_n39_α
xicnarg296_done:
bb126_α:
  .section .rodata
  .Lcall131_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+211]
 mov rdx, qword ptr [r12+212]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+212]
 mov rdx, qword ptr [r12+213]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall131_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 cmp eax, 99
 je xchain45_n39_α
 jmp xchain45_n39_α
xchain45_n38_β:
 jmp xchain45_n39_α
xchain45_n39_α:
xargsub302_n0_α:
# IR_LIT_S
bb127_α:
 mov qword ptr [r12 + 2192], 1
 mov rax, qword ptr [rip + .Lx303_0]
 mov qword ptr [r12 + 2200], rax
 jmp xicnarg301_done
 xargsub302_n0_β:
 jmp xchain45_n40_α
.Lx303_0:
 .quad .Lx303_0_s
.Lx303_0_s:
 .string "+ 'cs'"
xicnarg301_done:
xargsub305_n0_α:
bb128_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+2224]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 2232], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+2240]
 mov qword ptr [r12 + 2240], 1
 mov rax, qword ptr [rip + .Lx306_2]
 mov qword ptr [r12 + 2248], rax
 jmp .Lx306_3
.Lx306_2:
 .quad .Lx306_2_s
.Lx306_2_s:
 .string "cs"
.Lx306_3:
  .section .rodata
  .Lrkfn307: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn307]
 lea rsi, [r12 + 2224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 cmp eax, 99
 je xchain45_n40_α
 jmp xicnarg304_done
 xargsub305_n0_β:
 jmp xchain45_n40_α
xicnarg304_done:
bb129_α:
  .section .rodata
  .Lcall134_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+219]
 mov rdx, qword ptr [r12+220]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+220]
 mov rdx, qword ptr [r12+221]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall134_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 cmp eax, 99
 je xchain45_n40_α
 jmp xchain45_n40_α
xchain45_n39_β:
 jmp xchain45_n40_α
xchain45_n40_α:
xargsub310_n0_α:
# IR_LIT_S
bb130_α:
 mov qword ptr [r12 + 2272], 1
 mov rax, qword ptr [rip + .Lx311_0]
 mov qword ptr [r12 + 2280], rax
 jmp xicnarg309_done
 xargsub310_n0_β:
 jmp xchain45_n41_α
.Lx311_0:
 .quad .Lx311_0_s
.Lx311_0_s:
 .string "x ="
xicnarg309_done:
xargsub313_n0_α:
# IR_VAR
bb131_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg312_done
 xargsub313_n0_β:
 jmp xchain45_n41_α
xicnarg312_done:
bb132_α:
  .section .rodata
  .Lcall137_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+227]
 mov rdx, qword ptr [r12+228]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall137_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 cmp eax, 99
 je xchain45_n41_α
 jmp xchain45_n41_α
xchain45_n40_β:
 jmp xchain45_n41_α
xchain45_n41_α:
bb133_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn318: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn318]
 lea rsi, [r12 + 2320]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 cmp eax, 99
 je xchain45_n42_α
 jmp xchain45_n42_α
 xchain45_n41_β:
 jmp xchain45_n42_α
xchain45_n42_α:
xargsub320_n0_α:
# IR_LIT_S
bb134_α:
 mov qword ptr [r12 + 2320], 1
 mov rax, qword ptr [rip + .Lx321_0]
 mov qword ptr [r12 + 2328], rax
 jmp xicnarg319_done
 xargsub320_n0_β:
 jmp xchain45_n43_α
.Lx321_0:
 .quad .Lx321_0_s
.Lx321_0_s:
 .string "3,a,4"
xicnarg319_done:
xargsub323_n0_α:
bb135_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+2368]
 mov qword ptr [r12 + 2368], 6
 movabs rax, 3
 mov qword ptr [r12 + 2376], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+2384]
 mov qword ptr [r12 + 2384], 1
 mov rax, qword ptr [rip + .Lx324_2]
 mov qword ptr [r12 + 2392], rax
 jmp .Lx324_3
.Lx324_2:
 .quad .Lx324_2_s
.Lx324_2_s:
 .string "a"
.Lx324_3:
# marshal arg2 = LIT_I -> [r12+2400]
 mov qword ptr [r12 + 2400], 6
 movabs rax, 4
 mov qword ptr [r12 + 2408], rax
  .section .rodata
  .Lcallfn325: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn325]
 lea rsi, [r12 + 2368]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
  .section .rodata
  .Lrkfn326: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn326]
 lea rsi, [r12 + 2352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 cmp eax, 99
 je xchain45_n43_α
 jmp xargsub323_n1_α
 xargsub323_n0_β:
 jmp xchain45_n43_α
xargsub323_n1_α:
bb136_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2336]
 mov rdx, qword ptr [r12 + 2344]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 jmp xicnarg322_done
 xargsub323_n1_β:
 jmp xchain45_n43_α
xicnarg322_done:
bb137_α:
  .section .rodata
  .Lcall143_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+232]
 mov rdx, qword ptr [r12+232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+241]
 mov rdx, qword ptr [r12+242]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall143_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 cmp eax, 99
 je xchain45_n43_α
 jmp xchain45_n43_α
xchain45_n42_β:
 jmp xchain45_n43_α
xchain45_n43_α:
xargsub330_n0_α:
# IR_LIT_S
bb138_α:
 mov qword ptr [r12 + 2448], 1
 mov rax, qword ptr [rip + .Lx331_0]
 mov qword ptr [r12 + 2456], rax
 jmp xicnarg329_done
 xargsub330_n0_β:
 jmp xchain45_n44_α
.Lx331_0:
 .quad .Lx331_0_s
.Lx331_0_s:
 .string "y ++ x"
xicnarg329_done:
xargsub333_n0_α:
# IR_VAR
bb139_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub333_n1_α
 xargsub333_n0_β:
 jmp xchain45_n44_α
xargsub333_n1_α:
# IR_VAR
bb140_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xargsub333_n2_α
 xargsub333_n1_β:
 jmp xchain45_n44_α
xargsub333_n2_α:
jmp xbinop338_lhs_done
xbinop338_lhs_done:
jmp xbinop338_rhs_done
xbinop338_rhs_done:
bb141_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 0]
 mov rcx, qword ptr [r12 + 8]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain45_n44_α
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 jmp xicnarg332_done
 xargsub333_n2_β:
 jmp xchain45_n44_α
xicnarg332_done:
bb142_α:
  .section .rodata
  .Lcall148_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+244]
 mov rdx, qword ptr [r12+245]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+246]
 mov rdx, qword ptr [r12+247]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall148_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 cmp eax, 99
 je xchain45_n44_α
 jmp xchain45_n44_α
xchain45_n43_β:
 jmp xchain45_n44_α
xchain45_n44_α:
xargsub342_n0_α:
# IR_LIT_S
bb143_α:
 mov qword ptr [r12 + 2496], 1
 mov rax, qword ptr [rip + .Lx343_0]
 mov qword ptr [r12 + 2504], rax
 jmp xicnarg341_done
 xargsub342_n0_β:
 jmp xchain45_n45_α
.Lx343_0:
 .quad .Lx343_0_s
.Lx343_0_s:
 .string "y ** x"
xicnarg341_done:
xargsub345_n0_α:
# IR_VAR
bb144_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub345_n1_α
 xargsub345_n0_β:
 jmp xchain45_n45_α
xargsub345_n1_α:
# IR_VAR
bb145_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xargsub345_n2_α
 xargsub345_n1_β:
 jmp xchain45_n45_α
xargsub345_n2_α:
jmp xbinop350_lhs_done
xbinop350_lhs_done:
jmp xbinop350_rhs_done
xbinop350_rhs_done:
bb146_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 0]
 mov rcx, qword ptr [r12 + 8]
 mov r8d, 21
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain45_n45_α
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 jmp xicnarg344_done
 xargsub345_n2_β:
 jmp xchain45_n45_α
xicnarg344_done:
bb147_α:
  .section .rodata
  .Lcall153_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+249]
 mov rdx, qword ptr [r12+250]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+251]
 mov rdx, qword ptr [r12+252]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall153_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 cmp eax, 99
 je xchain45_n45_α
 jmp xchain45_n45_α
xchain45_n44_β:
 jmp xchain45_n45_α
xchain45_n45_α:
xargsub354_n0_α:
# IR_LIT_S
bb148_α:
 mov qword ptr [r12 + 2544], 1
 mov rax, qword ptr [rip + .Lx355_0]
 mov qword ptr [r12 + 2552], rax
 jmp xicnarg353_done
 xargsub354_n0_β:
 jmp xchain45_n46_α
.Lx355_0:
 .quad .Lx355_0_s
.Lx355_0_s:
 .string "y -- x"
xicnarg353_done:
xargsub357_n0_α:
# IR_VAR
bb149_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub357_n1_α
 xargsub357_n0_β:
 jmp xchain45_n46_α
xargsub357_n1_α:
# IR_VAR
bb150_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xargsub357_n2_α
 xargsub357_n1_β:
 jmp xchain45_n46_α
xargsub357_n2_α:
jmp xbinop362_lhs_done
xbinop362_lhs_done:
jmp xbinop362_rhs_done
xbinop362_rhs_done:
bb151_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 0]
 mov rcx, qword ptr [r12 + 8]
 mov r8d, 20
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain45_n46_α
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 jmp xicnarg356_done
 xargsub357_n2_β:
 jmp xchain45_n46_α
xicnarg356_done:
bb152_α:
  .section .rodata
  .Lcall158_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+254]
 mov rdx, qword ptr [r12+255]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+256]
 mov rdx, qword ptr [r12+256]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall158_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 cmp eax, 99
 je xchain45_n46_α
 jmp xchain45_n46_α
xchain45_n45_β:
 jmp xchain45_n46_α
xchain45_n46_α:
xargsub366_n0_α:
# IR_LIT_S
bb153_α:
 mov qword ptr [r12 + 2592], 1
 mov rax, qword ptr [rip + .Lx367_0]
 mov qword ptr [r12 + 2600], rax
 jmp xicnarg365_done
 xargsub366_n0_β:
 jmp xchain45_n47_α
.Lx367_0:
 .quad .Lx367_0_s
.Lx367_0_s:
 .string "x -- y"
xicnarg365_done:
xargsub369_n0_α:
# IR_VAR
bb154_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xargsub369_n1_α
 xargsub369_n0_β:
 jmp xchain45_n47_α
xargsub369_n1_α:
# IR_VAR
bb155_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub369_n2_α
 xargsub369_n1_β:
 jmp xchain45_n47_α
xargsub369_n2_α:
jmp xbinop374_lhs_done
xbinop374_lhs_done:
jmp xbinop374_rhs_done
xbinop374_rhs_done:
bb156_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 20
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain45_n47_α
 mov qword ptr [r12 + 2608], rax
 mov qword ptr [r12 + 2616], rdx
 jmp xicnarg368_done
 xargsub369_n2_β:
 jmp xchain45_n47_α
xicnarg368_done:
bb157_α:
  .section .rodata
  .Lcall163_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+259]
 mov rdx, qword ptr [r12+260]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+260]
 mov rdx, qword ptr [r12+261]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall163_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 cmp eax, 99
 je xchain45_n47_α
 jmp xchain45_n47_α
xchain45_n46_β:
 jmp xchain45_n47_α
xchain45_n47_α:
bb158_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn378: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn378]
 lea rsi, [r12 + 2656]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 cmp eax, 99
 je xchain45_n48_α
 jmp xchain45_n48_α
 xchain45_n47_β:
 jmp xchain45_n48_α
xchain45_n48_α:
bb159_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lcallfn380: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn380]
 lea rsi, [r12 + 2704]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
# marshal arg1 = nested producer-box slot [r12+2688] -> [r12+2688]
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 2688], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 2696], rax
  .section .rodata
  .Lrkfn381: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn381]
 lea rsi, [r12 + 2672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2656], rax
 mov qword ptr [r12 + 2664], rdx
 cmp eax, 99
 je xchain45_n49_α
 jmp xchain45_n49_α
 xchain45_n48_β:
 jmp xchain45_n49_α
xchain45_n49_α:
# IR_EVERY
 jmp xchain45_n50_α
 xchain45_n49_β:
 jmp xchain45_n50_α
xchain45_n50_α:
xargsub384_n0_α:
# IR_LIT_S
bb161_α:
 mov qword ptr [r12 + 2720], 1
 mov rax, qword ptr [rip + .Lx385_0]
 mov qword ptr [r12 + 2728], rax
 jmp xicnarg383_done
 xargsub384_n0_β:
 jmp xchain45_n51_α
.Lx385_0:
 .quad .Lx385_0_s
.Lx385_0_s:
 .string "z from !y"
xicnarg383_done:
xargsub387_n0_α:
 lea rdi, [rip + .S2]
 call rt_bomb@PLT
 ud2
xicnarg386_done:
bb163_α:
  .section .rodata
  .Lcall170_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+272]
 mov rdx, qword ptr [r12+272]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall170_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2736], rax
 mov qword ptr [r12 + 2744], rdx
 cmp eax, 99
 je xchain45_n51_α
 jmp xchain45_n51_α
xchain45_n50_β:
 jmp xchain45_n51_α
xchain45_n51_α:
bb164_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn392: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn392]
 lea rsi, [r12 + 2768]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 cmp eax, 99
 je xchain45_n52_α
 jmp xchain45_n52_α
 xchain45_n51_β:
 jmp xchain45_n52_α
xchain45_n52_α:
bb165_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+2800]
 mov qword ptr [r12 + 2800], 6
 movabs rax, 3
 mov qword ptr [r12 + 2808], rax
# marshal arg1 = LIT_I -> [r12+2816]
 mov qword ptr [r12 + 2816], 6
 movabs rax, 1
 mov qword ptr [r12 + 2824], rax
# marshal arg2 = LIT_I -> [r12+2832]
 mov qword ptr [r12 + 2832], 6
 movabs rax, 4
 mov qword ptr [r12 + 2840], rax
# marshal arg3 = LIT_I -> [r12+2848]
 mov qword ptr [r12 + 2848], 6
 movabs rax, 1
 mov qword ptr [r12 + 2856], rax
# marshal arg4 = LIT_I -> [r12+2864]
 mov qword ptr [r12 + 2864], 6
 movabs rax, 5
 mov qword ptr [r12 + 2872], rax
# marshal arg5 = LIT_I -> [r12+2880]
 mov qword ptr [r12 + 2880], 6
 movabs rax, 9
 mov qword ptr [r12 + 2888], rax
# marshal arg6 = LIT_I -> [r12+2896]
 mov qword ptr [r12 + 2896], 6
 movabs rax, 2
 mov qword ptr [r12 + 2904], rax
# marshal arg7 = LIT_I -> [r12+2912]
 mov qword ptr [r12 + 2912], 6
 movabs rax, 6
 mov qword ptr [r12 + 2920], rax
# marshal arg8 = LIT_I -> [r12+2928]
 mov qword ptr [r12 + 2928], 6
 movabs rax, 5
 mov qword ptr [r12 + 2936], rax
# marshal arg9 = LIT_I -> [r12+2944]
 mov qword ptr [r12 + 2944], 6
 movabs rax, 3
 mov qword ptr [r12 + 2952], rax
# marshal arg10 = LIT_I -> [r12+2960]
 mov qword ptr [r12 + 2960], 6
 movabs rax, 5
 mov qword ptr [r12 + 2968], rax
  .section .rodata
  .Lcallfn394: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn394]
 lea rsi, [r12 + 2800]
 mov edx, 11
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2784], rax
 mov qword ptr [r12 + 2792], rdx
  .section .rodata
  .Lrkfn395: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn395]
 lea rsi, [r12 + 2784]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 cmp eax, 99
 je xchain45_n54_α
 jmp xchain45_n53_α
 xchain45_n52_β:
 jmp xchain45_n54_α
xchain45_n53_α:
bb166_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2768]
 mov rdx, qword ptr [r12 + 2776]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 jmp xchain45_n54_α
 xchain45_n53_β:
 jmp xchain45_n54_α
xchain45_n54_α:
bb167_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+3008]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 3008], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 3016], rax
  .section .rodata
  .Lrkfn398: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn398]
 lea rsi, [r12 + 3008]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2992], rax
 mov qword ptr [r12 + 3000], rdx
 cmp eax, 99
 je xchain45_n56_α
 jmp xchain45_n55_α
 xchain45_n54_β:
 jmp xchain45_n56_α
xchain45_n55_α:
bb168_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2992]
 mov rdx, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 jmp xchain45_n56_α
 xchain45_n55_β:
 jmp xchain45_n56_α
xchain45_n56_α:
bb169_α:
# BOX IR_CALL delete(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+3056]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 3056], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 3064], rax
# marshal arg1 = LIT_I -> [r12+3072]
 mov qword ptr [r12 + 3072], 6
 movabs rax, 4
 mov qword ptr [r12 + 3080], rax
  .section .rodata
  .Lrkfn401: .string "delete"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn401]
 lea rsi, [r12 + 3056]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3040], rax
 mov qword ptr [r12 + 3048], rdx
 cmp eax, 99
 je xchain45_n57_α
 jmp xchain45_n57_α
 xchain45_n56_β:
 jmp xchain45_n57_α
xchain45_n57_α:
bb170_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+3104]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 3104], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 3112], rax
# marshal arg1 = LIT_I -> [r12+3120]
 mov qword ptr [r12 + 3120], 6
 movabs rax, 7
 mov qword ptr [r12 + 3128], rax
  .section .rodata
  .Lrkfn403: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn403]
 lea rsi, [r12 + 3104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3088], rax
 mov qword ptr [r12 + 3096], rdx
 cmp eax, 99
 je xchain45_n58_α
 jmp xchain45_n58_α
 xchain45_n57_β:
 jmp xchain45_n58_α
xchain45_n58_α:
bb171_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+3152]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 3152], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 3160], rax
# marshal arg1 = LIT_I -> [r12+3168]
 mov qword ptr [r12 + 3168], 6
 movabs rax, 0
 mov qword ptr [r12 + 3176], rax
  .section .rodata
  .Lrkfn405: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn405]
 lea rsi, [r12 + 3152]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
 cmp eax, 99
 je xchain45_n59_α
 jmp xchain45_n59_α
 xchain45_n58_β:
 jmp xchain45_n59_α
xchain45_n59_α:
bb172_α:
# BOX IR_CALL delete(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+3200]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 3200], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 3208], rax
# marshal arg1 = LIT_I -> [r12+3216]
 mov qword ptr [r12 + 3216], 6
 movabs rax, 1
 mov qword ptr [r12 + 3224], rax
  .section .rodata
  .Lrkfn407: .string "delete"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn407]
 lea rsi, [r12 + 3200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3184], rax
 mov qword ptr [r12 + 3192], rdx
 cmp eax, 99
 je xchain45_n60_α
 jmp xchain45_n60_α
 xchain45_n59_β:
 jmp xchain45_n60_α
xchain45_n60_α:
xargsub409_n0_α:
# IR_LIT_S
bb173_α:
 mov qword ptr [r12 + 3232], 1
 mov rax, qword ptr [rip + .Lx410_0]
 mov qword ptr [r12 + 3240], rax
 jmp xicnarg408_done
 xargsub409_n0_β:
 jmp xchain45_n61_α
.Lx410_0:
 .quad .Lx410_0_s
.Lx410_0_s:
 .string "x"
xicnarg408_done:
xargsub412_n0_α:
# IR_VAR
bb174_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg411_done
 xargsub412_n0_β:
 jmp xchain45_n61_α
xicnarg411_done:
bb175_α:
  .section .rodata
  .Lcall183_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+323]
 mov rdx, qword ptr [r12+324]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall183_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3248], rax
 mov qword ptr [r12 + 3256], rdx
 cmp eax, 99
 je xchain45_n61_α
 jmp xchain45_n61_α
xchain45_n60_β:
 jmp xchain45_n61_α
xchain45_n61_α:
xargsub417_n0_α:
# IR_LIT_S
bb176_α:
 mov qword ptr [r12 + 3264], 1
 mov rax, qword ptr [rip + .Lx418_0]
 mov qword ptr [r12 + 3272], rax
 jmp xicnarg416_done
 xargsub417_n0_β:
 jmp main_ω
.Lx418_0:
 .quad .Lx418_0_s
.Lx418_0_s:
 .string "y"
xicnarg416_done:
xargsub420_n0_α:
# IR_VAR
bb177_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xicnarg419_done
 xargsub420_n0_β:
 jmp main_ω
xicnarg419_done:
bb178_α:
  .section .rodata
  .Lcall186_pname: .string "wset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+326]
 mov rdx, qword ptr [r12+327]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+16]
 mov rdx, qword ptr [r12+24]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall186_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3280], rax
 mov qword ptr [r12 + 3288], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain45_n61_β:
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
.S0: .string "bb_to: unhandled (needs static operands, nonzero by, descr flat-chain)"
.S1: .string "bb_repalt_yield: sub-expression value slot not materialised"
.S2: .string "bb_var: unhandled arm (no flat-chain mode or missing slot)"
.text
