  .intel_syntax noprefix
  .text
  .section .rodata
  .Lgvan0: .string "T1"
  .Lgvan1: .string "ITER"
  .Lgvan2: .string "S"
  .Lgvan3: .string "N"
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
 mov qword ptr [r12 + 816], rax
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
 .quad 0
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
# IR_VAR
 xchain0_n10_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n12_α
# IR_LIT_INTEGER
 xchain0_n11_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n12_α
.Lx15_0:
 .quad 5000000
 xchain0_n12_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn17: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn17]
 lea rsi, [r12 + 656]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain0_n15_α
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n15_α
 xchain0_n13_α:
# BOX IR_CALL LT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn19: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn19]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n12_α
# IR_ASSIGN gva
 xchain0_n14_α:
 mov rax, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n15_α
# IR_LIT_STRING
 xchain0_n15_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n20_α
.Lx21_0:
 .quad .Lx21_0_s
.Lx21_0_s:
 .string "result: "
# IR_VAR
 xchain0_n16_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n12_α
# IR_VAR
 xchain0_n17_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n20_α
# IR_LIT_INTEGER
 xchain0_n18_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain0_n21_α
 xchain0_n18_β:
 jmp xchain0_n12_α
.Lx24_0:
 .quad 1
 xchain0_n19_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 mov rdx, qword ptr [r12 + 704]
 mov rcx, qword ptr [r12 + 712]
 call str_concat_d@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain0_n22_α
 xchain0_n19_β:
 jmp xchain0_n20_α
# IR_LIT_STRING
 xchain0_n20_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp main_γ
.Lx26_0:
 .quad .Lx26_0_s
.Lx26_0_s:
 .string "ms: "
 xchain0_n21_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 368]
 cmp eax, 100
 je .Lx27_0
 mov eax, dword ptr [r12 + 384]
 cmp eax, 100
 je .Lx27_0
 mov eax, dword ptr [r12 + 368]
 cmp eax, 6
 jne .Lx27_2
 mov eax, dword ptr [r12 + 384]
 cmp eax, 6
 jne .Lx27_2
.Lx27_1:
 mov rax, qword ptr [r12 + 376]
 mov rcx, qword ptr [r12 + 392]
 add rax, rcx
 mov qword ptr [r12 + 352], 6
 mov qword ptr [r12 + 360], rax
 jmp xchain0_n24_α
.Lx27_0:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 mov r8d, 0
 lea r9, [r12 + 352]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx27_3
.Lx27_2:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n12_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
.Lx27_3:
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n12_α
# IR_ASSIGN global
 xchain0_n22_α:
 mov rsi, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 680]
 mov rdi, qword ptr [rip + .Lx28_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain0_n20_α
 xchain0_n22_β:
 jmp xchain0_n20_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain0_n23_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp main_γ
 xchain0_n24_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 call str_concat_d@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n12_α
# IR_VAR
 xchain0_n25_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain0_n26_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp xchain0_n12_α
 xchain0_n27_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 784]
 cmp eax, 100
 je .Lx33_0
 mov eax, dword ptr [r12 + 800]
 cmp eax, 100
 je .Lx33_0
 mov eax, dword ptr [r12 + 784]
 cmp eax, 6
 jne .Lx33_2
 mov eax, dword ptr [r12 + 800]
 cmp eax, 6
 jne .Lx33_2
.Lx33_1:
 mov rax, qword ptr [r12 + 792]
 mov rcx, qword ptr [r12 + 808]
 sub rax, rcx
 mov qword ptr [r12 + 768], 6
 mov qword ptr [r12 + 776], rax
 jmp xchain0_n29_α
.Lx33_0:
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 mov r8d, 1
 lea r9, [r12 + 768]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx33_3
.Lx33_2:
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
.Lx33_3:
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp main_γ
# IR_LIT_STRING
 xchain0_n28_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain0_n30_α
 xchain0_n28_β:
 jmp xchain0_n32_α
.Lx34_0:
 .quad .Lx34_0_s
.Lx34_0_s:
 .string "The quick brown fox jumps over the lazy dog"
 xchain0_n29_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 call str_concat_d@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain0_n30_α:
 mov rax, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp xchain0_n32_α
# IR_ASSIGN global
 xchain0_n31_α:
 mov rsi, qword ptr [r12 + 736]
 mov rdx, qword ptr [r12 + 744]
 mov rdi, qword ptr [rip + .Lx37_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp main_γ
 xchain0_n31_β:
 jmp main_γ
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain0_n32_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n34_α
# IR_LIT_STRING
 xchain0_n33_α:
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain0_n35_α
 xchain0_n33_β:
 jmp xchain0_n34_α
.Lx39_0:
 .quad .Lx39_0_s
.Lx39_0_s:
 .string "aeiou"
# IR_VAR
 xchain0_n34_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain0_n36_α
 xchain0_n34_β:
 jmp xchain0_n10_α
# IR_LIT_STRING
 xchain0_n35_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain0_n37_α
 xchain0_n35_β:
 jmp xchain0_n34_α
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string "*****"
 xchain0_n36_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+592]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn43: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn43]
 lea rsi, [r12 + 592]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n38_α
 xchain0_n36_β:
 jmp xchain0_n10_α
 xchain0_n37_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+464]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 472], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+480]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 488], rax
# marshal arg2 = producer-box slot [zr+544] -> [zr+496]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn45: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn45]
 lea rsi, [r12 + 464]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain0_n34_α
 jmp xchain0_n39_α
 xchain0_n37_β:
 jmp xchain0_n34_α
# IR_ASSIGN gva
 xchain0_n38_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n10_α
 xchain0_n38_β:
 jmp xchain0_n10_α
# IR_ASSIGN gva
 xchain0_n39_α:
 mov rax, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n34_α
 xchain0_n39_β:
 jmp xchain0_n34_α
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
 mov rdi, qword ptr [r12 + 816]
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
