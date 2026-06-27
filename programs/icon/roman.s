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
bb1_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_I -> [r12+112]
 mov qword ptr [r12 + 112], 6
 movabs rax, 1000
 mov qword ptr [r12 + 120], rax
# marshal arg1 = LIT_I -> [r12+128]
 mov qword ptr [r12 + 128], 6
 movabs rax, 900
 mov qword ptr [r12 + 136], rax
# marshal arg2 = LIT_I -> [r12+144]
 mov qword ptr [r12 + 144], 6
 movabs rax, 500
 mov qword ptr [r12 + 152], rax
# marshal arg3 = LIT_I -> [r12+160]
 mov qword ptr [r12 + 160], 6
 movabs rax, 400
 mov qword ptr [r12 + 168], rax
# marshal arg4 = LIT_I -> [r12+176]
 mov qword ptr [r12 + 176], 6
 movabs rax, 100
 mov qword ptr [r12 + 184], rax
# marshal arg5 = LIT_I -> [r12+192]
 mov qword ptr [r12 + 192], 6
 movabs rax, 90
 mov qword ptr [r12 + 200], rax
# marshal arg6 = LIT_I -> [r12+208]
 mov qword ptr [r12 + 208], 6
 movabs rax, 50
 mov qword ptr [r12 + 216], rax
# marshal arg7 = LIT_I -> [r12+224]
 mov qword ptr [r12 + 224], 6
 movabs rax, 40
 mov qword ptr [r12 + 232], rax
# marshal arg8 = LIT_I -> [r12+240]
 mov qword ptr [r12 + 240], 6
 movabs rax, 10
 mov qword ptr [r12 + 248], rax
# marshal arg9 = LIT_I -> [r12+256]
 mov qword ptr [r12 + 256], 6
 movabs rax, 9
 mov qword ptr [r12 + 264], rax
# marshal arg10 = LIT_I -> [r12+272]
 mov qword ptr [r12 + 272], 6
 movabs rax, 5
 mov qword ptr [r12 + 280], rax
# marshal arg11 = LIT_I -> [r12+288]
 mov qword ptr [r12 + 288], 6
 movabs rax, 4
 mov qword ptr [r12 + 296], rax
# marshal arg12 = LIT_I -> [r12+304]
 mov qword ptr [r12 + 304], 6
 movabs rax, 1
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lbynamefn2: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn2]
 lea rsi, [r12 + 112]
 mov edx, 13
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n1_α
xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
bb2_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
bb3_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+352]
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 360], rax
 jmp .Lx4_1
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string "M"
.Lx4_1:
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+368]
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx4_2]
 mov qword ptr [r12 + 376], rax
 jmp .Lx4_3
.Lx4_2:
 .quad .Lx4_2_s
.Lx4_2_s:
 .string "CM"
.Lx4_3:
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+384]
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx4_4]
 mov qword ptr [r12 + 392], rax
 jmp .Lx4_5
.Lx4_4:
 .quad .Lx4_4_s
.Lx4_4_s:
 .string "D"
.Lx4_5:
# marshal arg3 = LIT_S (string REG-RO sealed in-band) -> [r12+400]
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx4_6]
 mov qword ptr [r12 + 408], rax
 jmp .Lx4_7
.Lx4_6:
 .quad .Lx4_6_s
.Lx4_6_s:
 .string "CD"
.Lx4_7:
# marshal arg4 = LIT_S (string REG-RO sealed in-band) -> [r12+416]
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx4_8]
 mov qword ptr [r12 + 424], rax
 jmp .Lx4_9
.Lx4_8:
 .quad .Lx4_8_s
.Lx4_8_s:
 .string "C"
.Lx4_9:
# marshal arg5 = LIT_S (string REG-RO sealed in-band) -> [r12+432]
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx4_10]
 mov qword ptr [r12 + 440], rax
 jmp .Lx4_11
.Lx4_10:
 .quad .Lx4_10_s
.Lx4_10_s:
 .string "XC"
.Lx4_11:
# marshal arg6 = LIT_S (string REG-RO sealed in-band) -> [r12+448]
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx4_12]
 mov qword ptr [r12 + 456], rax
 jmp .Lx4_13
.Lx4_12:
 .quad .Lx4_12_s
.Lx4_12_s:
 .string "L"
.Lx4_13:
# marshal arg7 = LIT_S (string REG-RO sealed in-band) -> [r12+464]
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx4_14]
 mov qword ptr [r12 + 472], rax
 jmp .Lx4_15
.Lx4_14:
 .quad .Lx4_14_s
.Lx4_14_s:
 .string "XL"
.Lx4_15:
# marshal arg8 = LIT_S (string REG-RO sealed in-band) -> [r12+480]
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx4_16]
 mov qword ptr [r12 + 488], rax
 jmp .Lx4_17
.Lx4_16:
 .quad .Lx4_16_s
.Lx4_16_s:
 .string "X"
.Lx4_17:
# marshal arg9 = LIT_S (string REG-RO sealed in-band) -> [r12+496]
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx4_18]
 mov qword ptr [r12 + 504], rax
 jmp .Lx4_19
.Lx4_18:
 .quad .Lx4_18_s
.Lx4_18_s:
 .string "IX"
.Lx4_19:
# marshal arg10 = LIT_S (string REG-RO sealed in-band) -> [r12+512]
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx4_20]
 mov qword ptr [r12 + 520], rax
 jmp .Lx4_21
.Lx4_20:
 .quad .Lx4_20_s
.Lx4_20_s:
 .string "V"
.Lx4_21:
# marshal arg11 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx4_22]
 mov qword ptr [r12 + 536], rax
 jmp .Lx4_23
.Lx4_22:
 .quad .Lx4_22_s
.Lx4_22_s:
 .string "IV"
.Lx4_23:
# marshal arg12 = LIT_S (string REG-RO sealed in-band) -> [r12+544]
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx4_24]
 mov qword ptr [r12 + 552], rax
 jmp .Lx4_25
.Lx4_24:
 .quad .Lx4_24_s
.Lx4_24_s:
 .string "I"
.Lx4_25:
  .section .rodata
  .Lbynamefn5: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn5]
 lea rsi, [r12 + 352]
 mov edx, 13
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n3_α
xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
bb4_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
# IR_LIT_S
bb5_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string ""
xchain0_n5_α:
bb6_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
# IR_LIT_I
bb7_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n9_β
.Lx9_0:
 .quad 1
xchain0_n7_α:
# IR_VAR
bb8_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n9_β
xchain0_n8_α:
# IR_UNOP
bb9_α:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 call rt_size_d@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n9_β
xchain0_n9_α:
# IR_TO
bb10_α:
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 656], rax
.Lx14_0:
 mov rax, qword ptr [r12 + 656]
 mov rcx, qword ptr [r12 + 632]
 cmp rax, rcx
 jg xchain0_n24_α
 mov qword ptr [r12 + 640], 6
 mov qword ptr [r12 + 648], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 inc qword ptr [r12 + 656]
 jmp .Lx14_0
xchain0_n10_α:
bb11_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 664], rax
 mov qword ptr [r12 + 672], rdx
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n9_β
xchain0_n11_α:
# IR_VAR
bb12_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n14_α
xchain0_n12_α:
bb13_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+32] -> [r12+696]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 696], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 704], rax
# marshal arg1 = varslot [r12+80] -> [r12+712]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 720], rax
  .section .rodata
  .Lbynamefn19: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn19]
 lea rsi, [r12 + 696]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 680], rax
 mov qword ptr [r12 + 688], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
xchain0_n12_β:
 jmp xchain0_n14_α
xchain0_n13_α:
bb14_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 688]
 cmp rax, rcx
 jl xchain0_n14_α
 mov rcx, qword ptr [r12 + 680]
 mov qword ptr [r12 + 728], rcx
 mov rcx, qword ptr [r12 + 688]
 mov qword ptr [r12 + 736], rcx
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n14_α
xchain0_n14_α:
xchain0_n14_β:
jmp xchain0_n9_β
jmp xchain0_n9_β
xchain0_n15_α:
# IR_VAR
bb15_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n18_α
xchain0_n16_α:
bb16_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+760]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 760], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 768], rax
# marshal arg1 = varslot [r12+80] -> [r12+776]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 776], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 784], rax
  .section .rodata
  .Lbynamefn24: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn24]
 lea rsi, [r12 + 760]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 744], rax
 mov qword ptr [r12 + 752], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n17_α
xchain0_n16_β:
 jmp xchain0_n18_α
xchain0_n17_α:
bb17_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 744]
 mov rcx, qword ptr [r12 + 752]
 call str_concat_d@PLT
 mov qword ptr [r12 + 792], rax
 mov qword ptr [r12 + 800], rdx
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n18_α
xchain0_n18_α:
# IR_VAR
bb18_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n11_α
xchain0_n19_α:
bb19_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 800]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 808], rax
 mov qword ptr [r12 + 816], rdx
 jmp xchain0_n18_α
 xchain0_n19_β:
 jmp xchain0_n18_α
xchain0_n20_α:
bb20_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+32] -> [r12+840]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 840], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 848], rax
# marshal arg1 = varslot [r12+80] -> [r12+856]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 856], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 864], rax
  .section .rodata
  .Lbynamefn30: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn30]
 lea rsi, [r12 + 840]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 824], rax
 mov qword ptr [r12 + 832], rdx
 cmp eax, 99
 je xchain0_n11_α
 jmp xchain0_n21_α
xchain0_n20_β:
 jmp xchain0_n11_α
xchain0_n21_α:
bb21_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 832]
 sub rax, rcx
 mov qword ptr [r12 + 872], 6
 mov qword ptr [r12 + 880], rax
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp xchain0_n11_α
xchain0_n22_α:
bb22_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 872]
 mov rdx, qword ptr [r12 + 880]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 888], rax
 mov qword ptr [r12 + 896], rdx
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n11_α
xchain0_n23_α:
jmp xchain0_n11_α
xchain0_n23_β:
jmp xchain0_n11_α
xchain0_n24_α:
# IR_EVERY
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n25_α
xchain0_n25_α:
# IR_VAR
bb24_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp proc_roman_ω
xchain0_n26_α:
# IR_RETURN
bb25_α:
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
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
xchain37_n0_α:
xargsub39_n0_α:
# IR_LIT_I
bb26_α:
 mov qword ptr [r12 + 0], 6
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg38_done
 xargsub39_n0_β:
 jmp xchain37_n2_α
.Lx40_0:
 .quad 1776
xicnarg38_done:
bb27_α:
  .section .rodata
  .Lcall27_pname: .string "roman"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall27_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain37_n2_α
 jmp xchain37_n1_α
xchain37_n0_β:
 jmp xchain37_n2_α
xchain37_n1_α:
bb28_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp xchain37_n2_α
xchain37_n1_β:
xchain37_n1_β:
 jmp xchain37_n2_α
xchain37_n2_α:
xargsub44_n0_α:
# IR_LIT_I
bb29_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [r12 + 40], rax
 jmp xicnarg43_done
 xargsub44_n0_β:
 jmp xchain37_n4_α
.Lx45_0:
 .quad 42
xicnarg43_done:
bb30_α:
  .section .rodata
  .Lcall30_pname: .string "roman"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+32]
 mov rdx, qword ptr [r12+40]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall30_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain37_n4_α
 jmp xchain37_n3_α
xchain37_n2_β:
 jmp xchain37_n4_α
xchain37_n3_α:
bb31_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 call rt_write_any_nl@PLT
 jmp xchain37_n4_α
xchain37_n3_β:
xchain37_n3_β:
 jmp xchain37_n4_α
xchain37_n4_α:
xargsub49_n0_α:
# IR_LIT_I
bb32_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx50_0]
 mov qword ptr [r12 + 72], rax
 jmp xicnarg48_done
 xargsub49_n0_β:
 jmp main_ω
.Lx50_0:
 .quad 9
xicnarg48_done:
bb33_α:
  .section .rodata
  .Lcall33_pname: .string "roman"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+64]
 mov rdx, qword ptr [r12+72]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall33_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je main_ω
 jmp xchain37_n5_α
xchain37_n4_β:
 jmp main_ω
xchain37_n5_α:
bb34_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain37_n5_β:
xchain37_n5_β:
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
