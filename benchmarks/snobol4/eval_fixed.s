  .intel_syntax noprefix
  .text
  .section .rodata
  .Lgvan0: .string "T1"
  .Lgvan1: .string "X"
  .Lgvan2: .string "N"
  .Lgvan3: .string "R"
  .Lgvan4: .string "T2"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .section .bss
  .align 16
__gva: .space 80, 0
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
  mov edx, 5
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 688], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain0_n0_α:
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
# IR_LIT_INTEGER
 xchain0_n1_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n3_α
.Lx2_0:
 .quad 1
 xchain0_n2_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+32]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 40], rax
# marshal arg1 = producer-box slot [zr+80] -> [zr+48]
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
# IR_LIT_STRING
 xchain0_n3_α:
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
# IR_LIT_INTEGER
 xchain0_n4_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
.Lx6_0:
 .quad 1000000000
 xchain0_n5_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [zr+160] -> [zr+128]
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
# IR_ASSIGN gva
 xchain0_n7_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n8_α
# IR_LIT_INTEGER
 xchain0_n8_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n10_α
.Lx12_0:
 .quad 10
# IR_ASSIGN gva
 xchain0_n9_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n10_α
# IR_LIT_INTEGER
 xchain0_n10_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n12_α
.Lx14_0:
 .quad 0
# IR_ASSIGN gva
 xchain0_n11_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n12_α
# IR_VAR
 xchain0_n12_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n14_α
# IR_LIT_INTEGER
 xchain0_n13_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n14_α
.Lx17_0:
 .quad 1000000
 xchain0_n14_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn19: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn19]
 lea rsi, [r12 + 528]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain0_n17_α
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp xchain0_n17_α
 xchain0_n15_α:
# BOX IR_CALL LT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn21: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn21]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n14_α
# IR_ASSIGN gva
 xchain0_n16_α:
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n17_α
# IR_LIT_STRING
 xchain0_n17_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n22_α
.Lx23_0:
 .quad .Lx23_0_s
.Lx23_0_s:
 .string "result: "
# IR_VAR
 xchain0_n18_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n14_α
# IR_VAR
 xchain0_n19_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n22_α
# IR_LIT_INTEGER
 xchain0_n20_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp xchain0_n14_α
.Lx26_0:
 .quad 1
 xchain0_n21_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 call str_concat_d@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n22_α
# IR_LIT_STRING
 xchain0_n22_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp main_γ
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "ms: "
 xchain0_n23_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 400]
 cmp eax, 100
 je .Lx29_0
 mov eax, dword ptr [r12 + 416]
 cmp eax, 100
 je .Lx29_0
 mov eax, dword ptr [r12 + 400]
 cmp eax, 6
 jne .Lx29_2
 mov eax, dword ptr [r12 + 416]
 cmp eax, 6
 jne .Lx29_2
.Lx29_1:
 mov rax, qword ptr [r12 + 408]
 mov rcx, qword ptr [r12 + 424]
 add rax, rcx
 mov qword ptr [r12 + 384], 6
 mov qword ptr [r12 + 392], rax
 jmp xchain0_n26_α
.Lx29_0:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 0
 lea r9, [r12 + 384]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx29_3
.Lx29_2:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n14_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
.Lx29_3:
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n14_α
# IR_ASSIGN global
 xchain0_n24_α:
 mov rsi, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 mov rdi, qword ptr [rip + .Lx30_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain0_n22_α
 xchain0_n24_β:
 jmp xchain0_n22_α
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain0_n25_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp main_γ
 xchain0_n26_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 call str_concat_d@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp xchain0_n14_α
# IR_VAR
 xchain0_n27_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain0_n28_α:
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain0_n30_α
 xchain0_n28_β:
 jmp xchain0_n14_α
 xchain0_n29_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 656]
 cmp eax, 100
 je .Lx35_0
 mov eax, dword ptr [r12 + 672]
 cmp eax, 100
 je .Lx35_0
 mov eax, dword ptr [r12 + 656]
 cmp eax, 6
 jne .Lx35_2
 mov eax, dword ptr [r12 + 672]
 cmp eax, 6
 jne .Lx35_2
.Lx35_1:
 mov rax, qword ptr [r12 + 664]
 mov rcx, qword ptr [r12 + 680]
 sub rax, rcx
 mov qword ptr [r12 + 640], 6
 mov qword ptr [r12 + 648], rax
 jmp xchain0_n31_α
.Lx35_0:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 mov r8d, 1
 lea r9, [r12 + 640]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx35_3
.Lx35_2:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
.Lx35_3:
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp main_γ
# IR_LIT_STRING
 xchain0_n30_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp xchain0_n12_α
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "X + 1"
 xchain0_n31_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 mov rdx, qword ptr [r12 + 640]
 mov rcx, qword ptr [r12 + 648]
 call str_concat_d@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain0_n33_α
 xchain0_n31_β:
 jmp main_γ
 xchain0_n32_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+464]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn39: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn39]
 lea rsi, [r12 + 464]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n12_α
# IR_ASSIGN global
 xchain0_n33_α:
 mov rsi, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 mov rdi, qword ptr [rip + .Lx40_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp main_γ
 xchain0_n33_β:
 jmp main_γ
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "OUTPUT"
# IR_ASSIGN gva
 xchain0_n34_α:
 mov rax, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n12_α
 xchain0_n34_β:
 jmp xchain0_n12_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 688]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
