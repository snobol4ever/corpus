  .intel_syntax noprefix
  .text
  .globl proc_roman_α
proc_roman_α:
#=======================================================================================================================
    .global proc_roman_α
    .global proc_roman_β
    .global proc_roman_γ
    .global proc_roman_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_roman_α_body:
xchain0_n0_α:
# IR_INITIAL run-once guard
bb1_α:
 mov rdi, 1
 push r10
 push r10
 call rt_initial_fire@PLT
 pop r10
 pop r10
 test rax, rax
 je xchain0_n1_α
 jmp xinit1_body
 xchain0_n0_β:
 jmp xchain0_n1_α
xinit1_body:
xargsub4_n0_α:
bb2_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+80]
 mov qword ptr [r12 + 80], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 88], rax
 jmp .Lx5_1
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string ""
.Lx5_1:
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+96]
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx5_2]
 mov qword ptr [r12 + 104], rax
 jmp .Lx5_3
.Lx5_2:
 .quad .Lx5_2_s
.Lx5_2_s:
 .string "I"
.Lx5_3:
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+112]
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx5_4]
 mov qword ptr [r12 + 120], rax
 jmp .Lx5_5
.Lx5_4:
 .quad .Lx5_4_s
.Lx5_4_s:
 .string "II"
.Lx5_5:
# marshal arg3 = LIT_S (string REG-RO sealed in-band) -> [r12+128]
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx5_6]
 mov qword ptr [r12 + 136], rax
 jmp .Lx5_7
.Lx5_6:
 .quad .Lx5_6_s
.Lx5_6_s:
 .string "III"
.Lx5_7:
# marshal arg4 = LIT_S (string REG-RO sealed in-band) -> [r12+144]
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx5_8]
 mov qword ptr [r12 + 152], rax
 jmp .Lx5_9
.Lx5_8:
 .quad .Lx5_8_s
.Lx5_8_s:
 .string "IV"
.Lx5_9:
# marshal arg5 = LIT_S (string REG-RO sealed in-band) -> [r12+160]
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx5_10]
 mov qword ptr [r12 + 168], rax
 jmp .Lx5_11
.Lx5_10:
 .quad .Lx5_10_s
.Lx5_10_s:
 .string "V"
.Lx5_11:
# marshal arg6 = LIT_S (string REG-RO sealed in-band) -> [r12+176]
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx5_12]
 mov qword ptr [r12 + 184], rax
 jmp .Lx5_13
.Lx5_12:
 .quad .Lx5_12_s
.Lx5_12_s:
 .string "VI"
.Lx5_13:
# marshal arg7 = LIT_S (string REG-RO sealed in-band) -> [r12+192]
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx5_14]
 mov qword ptr [r12 + 200], rax
 jmp .Lx5_15
.Lx5_14:
 .quad .Lx5_14_s
.Lx5_14_s:
 .string "VII"
.Lx5_15:
# marshal arg8 = LIT_S (string REG-RO sealed in-band) -> [r12+208]
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx5_16]
 mov qword ptr [r12 + 216], rax
 jmp .Lx5_17
.Lx5_16:
 .quad .Lx5_16_s
.Lx5_16_s:
 .string "VIII"
.Lx5_17:
# marshal arg9 = LIT_S (string REG-RO sealed in-band) -> [r12+224]
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx5_18]
 mov qword ptr [r12 + 232], rax
 jmp .Lx5_19
.Lx5_18:
 .quad .Lx5_18_s
.Lx5_18_s:
 .string "IX"
.Lx5_19:
  .section .rodata
  .Lbynamefn6: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn6]
 lea rsi, [r12 + 80]
 mov edx, 10
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain0_n1_α
 jmp xargsub4_n1_α
xargsub4_n0_β:
 jmp xchain0_n1_α
xargsub4_n1_α:
bb3_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n1_α
 xargsub4_n1_β:
 jmp xchain0_n1_α
xchain0_n1_α:
bb4_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+288]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn9: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn9]
 lea rsi, [r12 + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n3_α
xchain0_n2_α:
# IR_LIT_I
bb5_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n3_α
.Lx10_0:
 .quad 0
xchain0_n3_α:
xaltg11_a0_start:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xaltg11_a0_succ:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
jmp xchain0_n4_α
xaltg11_a1_start:
bb7_α:
# IR_FAIL
 jmp xchain0_n4_α
 xaltg11_a1_beta:
 jmp xchain0_n4_α
xaltg11_a1_succ:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
jmp xchain0_n4_α
xchain0_n3_β:
jmp xchain0_n4_α
xchain0_n4_α:
# IR_LIT_S
bb8_α:
 mov qword ptr [r12 + 344], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 352], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string ""
xchain0_n5_α:
bb9_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 352]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 360], rax
 mov qword ptr [r12 + 368], rdx
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
# IR_VAR
bb10_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xbang18_iter_done
 xbang18_iter_β:
 jmp xchain0_n12_α
xbang18_iter_done:
# IR_LIST_BANG
bb11_α:
 mov qword ptr [r12 + 376], 0
.Lx22_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 376]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp rax, 99
 je xchain0_n12_α
 jmp xchain0_n7_α
 xchain0_n6_β:
 inc qword ptr [r12 + 376]
 jmp .Lx22_0
xchain0_n7_α:
bb12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n6_β
xchain0_n8_α:
bb13_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+432]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 440], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+448]
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx24_2]
 mov qword ptr [r12 + 456], rax
 jmp .Lx24_3
.Lx24_2:
 .quad .Lx24_2_s
.Lx24_2_s:
 .string "IVXLCDM"
.Lx24_3:
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+464]
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx24_4]
 mov qword ptr [r12 + 472], rax
 jmp .Lx24_5
.Lx24_4:
 .quad .Lx24_4_s
.Lx24_4_s:
 .string "XLCDM**"
.Lx24_5:
  .section .rodata
  .Lrkfn25: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn25]
 lea rsi, [r12 + 432]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain0_n6_β
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n6_β
xchain0_n9_α:
bb14_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+240] -> [r12+496]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = varslot [r12+48] -> [r12+512]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lbynamefn27: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn27]
 lea rsi, [r12 + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain0_n6_β
 jmp xchain0_n10_α
xchain0_n9_β:
 jmp xchain0_n6_β
xchain0_n10_α:
bb15_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 call str_concat_d@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n6_β
xchain0_n11_α:
bb16_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain0_n6_β
 xchain0_n11_β:
 jmp xchain0_n6_β
xchain0_n12_α:
# IR_EVERY
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n13_α
xchain0_n13_α:
bb18_α:
# BOX IR_CALL find(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+576]
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 584], rax
 jmp .Lx31_1
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string "*"
.Lx31_1:
# marshal arg1 = varslot [r12+32] -> [r12+592]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lbynamefn32: .string "find"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn32]
 lea rsi, [r12 + 576]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp proc_roman_ω
xchain0_n13_β:
 jmp xchain0_n14_α
xchain0_n14_α:
# IR_VAR
bb19_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp proc_roman_ω
xchain0_n15_α:
# IR_RETURN
bb20_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_roman_γ
proc_roman_β:
jmp proc_roman_ω
proc_roman_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_roman_ω:
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
  .Lstartup_pname0: .string "roman"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_roman_α]
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
xchain36_n0_α:
bb21_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn38: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 32]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain36_n2_α
 jmp xchain36_n1_α
 xchain36_n0_β:
 jmp xchain36_n2_α
xchain36_n1_α:
bb22_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain36_n3_α
 xchain36_n1_β:
 jmp xchain36_n2_α
xchain36_n2_α:
xchain36_n2_β:
jmp main_γ
jmp main_γ
xchain36_n3_α:
xaltg40_a0_start:
xargsub42_n0_α:
# IR_VAR
bb23_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg41_done
 xargsub42_n0_β:
 jmp xaltg40_a1_start
xicnarg41_done:
bb24_α:
  .section .rodata
  .Lcall24_pname: .string "roman"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall24_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
 cmp eax, 99
 je xaltg40_a1_start
 jmp xaltg40_a0_succ
xaltg40_a0_beta:
 jmp xaltg40_a1_start
xaltg40_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], 1
jmp xchain36_n4_α
xaltg40_a1_start:
# IR_LIT_S
bb25_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg40_a1_succ
 xaltg40_a1_beta:
 jmp xchain36_n0_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "cannot convert"
xaltg40_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], 1
jmp xchain36_n4_α
xchain36_n3_β:
jmp xchain36_n0_α
xchain36_n4_α:
bb26_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 call rt_write_any_nl@PLT
 jmp xchain36_n0_α
xchain36_n4_β:
xchain36_n4_β:
 jmp xchain36_n0_α
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
.S0: .string "bb_binop_relop: shape mismatch"
.S1: .string "bb_repalt_yield: sub-expression value slot not materialised"
.text
