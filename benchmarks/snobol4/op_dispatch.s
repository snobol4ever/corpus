  .intel_syntax noprefix
  .text
  .section .rodata
  .Lgvan0: .string "T1"
  .Lgvan1: .string "N"
  .Lgvan2: .string "OUTER"
  .Lgvan3: .string "T2"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .section .bss
  .align 16
__gva: .space 64, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  push rdi
  push rsi
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 4
  call gva_register@PLT
  mov rbx, rax
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call main_α
  xor eax, eax
  mov rsp, rbp
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
main_α_body:
xchain0_n0_α:
# IR_LIT_STRING
bb1_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n3_α
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "TRIM"
xchain0_n1_α:
# IR_LIT_INTEGER
bb2_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n3_α
.Lx2_0:
 .quad 1
xchain0_n2_α:
bb3_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+64] -> [r12+32]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 40], rax
# marshal arg1 = producer-box slot [r12+80] -> [r12+48]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lrkfn4: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn4]
 lea rsi, [r12 + 32]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n3_α
xchain0_n3_α:
# IR_LIT_STRING
bb4_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n6_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "STLIMIT"
xchain0_n4_α:
# IR_LIT_INTEGER
bb5_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
.Lx6_0:
 .quad 1000000000
xchain0_n5_α:
bb6_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn8: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
bb7_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn10: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn10]
 lea rsi, [r12 + 208]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n8_α
xchain0_n7_α:
# IR_ASSIGN gva
bb8_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n8_α
xchain0_n8_α:
# IR_LIT_INTEGER
bb9_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n10_α
.Lx12_0:
 .quad 1
xchain0_n9_α:
# IR_ASSIGN gva
bb10_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n10_α
xchain0_n10_α:
# IR_LIT_INTEGER
bb11_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n12_α
.Lx14_0:
 .quad 0
xchain0_n11_α:
# IR_ASSIGN gva
bb12_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n12_α
xchain0_n12_α:
# IR_VAR gva
bb13_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n16_α
xchain0_n13_α:
# IR_LIT_INTEGER
bb14_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n16_α
.Lx17_0:
 .quad 3
xchain0_n14_α:
bb15_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 304]
 cmp eax, 100
 je .Lx18_0
 mov eax, dword ptr [r12 + 320]
 cmp eax, 100
 je .Lx18_0
 mov eax, dword ptr [r12 + 304]
 cmp eax, 6
 jne .Lx18_2
 mov eax, dword ptr [r12 + 320]
 cmp eax, 6
 jne .Lx18_2
.Lx18_1:
 mov rax, qword ptr [r12 + 312]
 mov rcx, qword ptr [r12 + 328]
 add rax, rcx
 mov qword ptr [r12 + 288], 6
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n15_α
.Lx18_0:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 0
 lea r9, [r12 + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx18_3
.Lx18_2:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n16_α
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
.Lx18_3:
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n16_α
xchain0_n15_α:
# IR_ASSIGN gva
bb16_α:
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n16_α
xchain0_n16_α:
# IR_VAR gva
bb17_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n20_α
xchain0_n17_α:
# IR_LIT_INTEGER
bb18_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n20_α
.Lx21_0:
 .quad 1
xchain0_n18_α:
bb19_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 368]
 cmp eax, 100
 je .Lx22_0
 mov eax, dword ptr [r12 + 384]
 cmp eax, 100
 je .Lx22_0
 mov eax, dword ptr [r12 + 368]
 cmp eax, 6
 jne .Lx22_2
 mov eax, dword ptr [r12 + 384]
 cmp eax, 6
 jne .Lx22_2
.Lx22_1:
 mov rax, qword ptr [r12 + 376]
 mov rcx, qword ptr [r12 + 392]
 sub rax, rcx
 mov qword ptr [r12 + 352], 6
 mov qword ptr [r12 + 360], rax
 jmp xchain0_n19_α
.Lx22_0:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 mov r8d, 1
 lea r9, [r12 + 352]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx22_3
.Lx22_2:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n20_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
.Lx22_3:
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp xchain0_n20_α
xchain0_n19_α:
# IR_ASSIGN gva
bb20_α:
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp xchain0_n20_α
xchain0_n20_α:
# IR_VAR gva
bb21_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n24_α
xchain0_n21_α:
# IR_LIT_INTEGER
bb22_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp xchain0_n24_α
.Lx25_0:
 .quad 2
xchain0_n22_α:
bb23_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 432]
 cmp eax, 100
 je .Lx26_0
 mov eax, dword ptr [r12 + 448]
 cmp eax, 100
 je .Lx26_0
 mov eax, dword ptr [r12 + 432]
 cmp eax, 6
 jne .Lx26_2
 mov eax, dword ptr [r12 + 448]
 cmp eax, 6
 jne .Lx26_2
.Lx26_1:
 mov rax, qword ptr [r12 + 440]
 mov rcx, qword ptr [r12 + 456]
 imul rax, rcx
 mov qword ptr [r12 + 416], 6
 mov qword ptr [r12 + 424], rax
 jmp xchain0_n23_α
.Lx26_0:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 mov r8d, 2
 lea r9, [r12 + 416]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx26_3
.Lx26_2:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n24_α
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
.Lx26_3:
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n24_α
xchain0_n23_α:
# IR_ASSIGN gva
bb24_α:
 mov rax, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n24_α
xchain0_n24_α:
# IR_VAR gva
bb25_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n28_α
xchain0_n25_α:
# IR_LIT_INTEGER
bb26_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp xchain0_n28_α
.Lx29_0:
 .quad 10000000
xchain0_n26_α:
bb27_α:
# BOX IR_CALL GE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+544] -> [r12+512]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [r12+560] -> [r12+528]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn31: .string "GE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn31]
 lea rsi, [r12 + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain0_n28_α
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n28_α
xchain0_n27_α:
# IR_VAR gva
bb28_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp xchain0_n28_α
xchain0_n28_α:
# IR_VAR gva
bb29_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain0_n30_α
 xchain0_n28_β:
 jmp xchain0_n35_α
xchain0_n29_α:
# IR_LIT_INTEGER
bb30_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp xchain0_n28_α
.Lx34_0:
 .quad 10000
xchain0_n30_α:
# IR_LIT_INTEGER
bb31_α:
 mov qword ptr [r12 + 720], 6
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp xchain0_n35_α
.Lx35_0:
 .quad 1000000
xchain0_n31_α:
bb32_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 592]
 cmp eax, 100
 je .Lx36_0
 mov eax, dword ptr [r12 + 608]
 cmp eax, 100
 je .Lx36_0
 mov eax, dword ptr [r12 + 592]
 cmp eax, 6
 jne .Lx36_2
 mov eax, dword ptr [r12 + 608]
 cmp eax, 6
 jne .Lx36_2
.Lx36_1:
 mov rax, qword ptr [r12 + 600]
 mov rcx, qword ptr [r12 + 616]
 cqo
 idiv rcx
 mov qword ptr [r12 + 576], 6
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n33_α
.Lx36_0:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 3
 lea r9, [r12 + 576]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx36_3
.Lx36_2:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n28_α
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
.Lx36_3:
 jmp xchain0_n33_α
 xchain0_n31_β:
 jmp xchain0_n28_α
xchain0_n32_α:
bb33_α:
# BOX IR_CALL LT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+704] -> [r12+672]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 680], rax
# marshal arg1 = producer-box slot [r12+720] -> [r12+688]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn38: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je xchain0_n35_α
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n35_α
xchain0_n33_α:
bb34_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 call str_concat_d@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain0_n36_α
 xchain0_n33_β:
 jmp xchain0_n28_α
xchain0_n34_α:
# IR_VAR gva
bb35_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain0_n37_α
 xchain0_n34_β:
 jmp xchain0_n35_α
xchain0_n35_α:
bb36_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn42: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn42]
 lea rsi, [r12 + 816]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain0_n39_α
 jmp xchain0_n38_α
 xchain0_n35_β:
 jmp xchain0_n39_α
xchain0_n36_α:
# IR_ASSIGN gva
bb37_α:
 mov rax, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain0_n12_α
 xchain0_n36_β:
 jmp xchain0_n28_α
xchain0_n37_α:
# IR_LIT_INTEGER
bb38_α:
 mov qword ptr [r12 + 768], 6
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain0_n40_α
 xchain0_n37_β:
 jmp xchain0_n35_α
.Lx44_0:
 .quad 1
xchain0_n38_α:
# IR_ASSIGN gva
bb39_α:
 mov rax, qword ptr [r12 + 800]
 mov rdx, qword ptr [r12 + 808]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain0_n39_α
 xchain0_n38_β:
 jmp xchain0_n39_α
xchain0_n39_α:
# IR_LIT_STRING
bb40_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain0_n41_α
 xchain0_n39_β:
 jmp xchain0_n46_α
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "result: "
xchain0_n40_α:
bb41_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 752]
 cmp eax, 100
 je .Lx47_0
 mov eax, dword ptr [r12 + 768]
 cmp eax, 100
 je .Lx47_0
 mov eax, dword ptr [r12 + 752]
 cmp eax, 6
 jne .Lx47_2
 mov eax, dword ptr [r12 + 768]
 cmp eax, 6
 jne .Lx47_2
.Lx47_1:
 mov rax, qword ptr [r12 + 760]
 mov rcx, qword ptr [r12 + 776]
 add rax, rcx
 mov qword ptr [r12 + 736], 6
 mov qword ptr [r12 + 744], rax
 jmp xchain0_n42_α
.Lx47_0:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 mov r8d, 0
 lea r9, [r12 + 736]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx47_3
.Lx47_2:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n35_α
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
.Lx47_3:
 jmp xchain0_n42_α
 xchain0_n40_β:
 jmp xchain0_n35_α
xchain0_n41_α:
# IR_VAR gva
bb42_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain0_n43_α
 xchain0_n41_β:
 jmp xchain0_n46_α
xchain0_n42_α:
bb43_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 call str_concat_d@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain0_n44_α
 xchain0_n42_β:
 jmp xchain0_n35_α
xchain0_n43_α:
bb44_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 848]
 mov rsi, qword ptr [r12 + 856]
 mov rdx, qword ptr [r12 + 864]
 mov rcx, qword ptr [r12 + 872]
 call str_concat_d@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain0_n45_α
 xchain0_n43_β:
 jmp xchain0_n46_α
xchain0_n44_α:
# IR_ASSIGN gva
bb45_α:
 mov rax, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain0_n12_α
 xchain0_n44_β:
 jmp xchain0_n35_α
xchain0_n45_α:
# IR_ASSIGN global
bb46_α:
 mov rsi, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 mov rdi, qword ptr [rip + .Lx52_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain0_n46_α
 xchain0_n45_β:
 jmp xchain0_n46_α
.Lx52_0:
 .quad .Lx52_0_s
.Lx52_0_s:
 .string "OUTPUT"
xchain0_n46_α:
# IR_LIT_STRING
bb47_α:
 mov qword ptr [r12 + 912], 1
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [r12 + 920], rax
 jmp xchain0_n47_α
 xchain0_n46_β:
 jmp main_γ
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "ms: "
xchain0_n47_α:
# IR_VAR gva
bb48_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain0_n48_α
 xchain0_n47_β:
 jmp main_γ
xchain0_n48_α:
# IR_VAR gva
bb49_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain0_n49_α
 xchain0_n48_β:
 jmp main_γ
xchain0_n49_α:
bb50_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 944]
 cmp eax, 100
 je .Lx56_0
 mov eax, dword ptr [r12 + 960]
 cmp eax, 100
 je .Lx56_0
 mov eax, dword ptr [r12 + 944]
 cmp eax, 6
 jne .Lx56_2
 mov eax, dword ptr [r12 + 960]
 cmp eax, 6
 jne .Lx56_2
.Lx56_1:
 mov rax, qword ptr [r12 + 952]
 mov rcx, qword ptr [r12 + 968]
 sub rax, rcx
 mov qword ptr [r12 + 928], 6
 mov qword ptr [r12 + 936], rax
 jmp xchain0_n50_α
.Lx56_0:
 mov rdi, qword ptr [r12 + 944]
 mov rsi, qword ptr [r12 + 952]
 mov rdx, qword ptr [r12 + 960]
 mov rcx, qword ptr [r12 + 968]
 mov r8d, 1
 lea r9, [r12 + 928]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx56_3
.Lx56_2:
 mov rdi, qword ptr [r12 + 944]
 mov rsi, qword ptr [r12 + 952]
 mov rdx, qword ptr [r12 + 960]
 mov rcx, qword ptr [r12 + 968]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
.Lx56_3:
 jmp xchain0_n50_α
 xchain0_n49_β:
 jmp main_γ
xchain0_n50_α:
bb51_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 mov rdx, qword ptr [r12 + 928]
 mov rcx, qword ptr [r12 + 936]
 call str_concat_d@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain0_n51_α
 xchain0_n50_β:
 jmp main_γ
xchain0_n51_α:
# IR_ASSIGN global
bb52_α:
 mov rsi, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 mov rdi, qword ptr [rip + .Lx58_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp main_γ
 xchain0_n51_β:
 jmp main_γ
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "OUTPUT"
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
