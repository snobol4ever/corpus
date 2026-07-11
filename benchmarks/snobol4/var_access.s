  .intel_syntax noprefix
  .text
  .section .rodata
  .Lgvan0: .string "T1"
  .Lgvan1: .string "A"
  .Lgvan2: .string "B"
  .Lgvan3: .string "C"
  .Lgvan4: .string "D"
  .Lgvan5: .string "E"
  .Lgvan6: .string "N"
  .Lgvan7: .string "T2"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .quad .Lgvan5
  .quad .Lgvan6
  .quad .Lgvan7
  .section .bss
  .align 16
__gva: .space 128, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  push rdi
  push rsi
  call core_lib_init@PLT
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 8
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
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1120], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain0_n0_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n3_α
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "TRIM"
# IR_LIT_INTEGER
 xchain0_n1_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n3_α
.Lx2_0:
 .quad 1
 xchain0_n2_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+80]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
# marshal arg1 = producer-box slot [zr+128] -> [zr+96]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn4: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn4]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n3_α
# IR_LIT_STRING
 xchain0_n3_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n6_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "STLIMIT"
# IR_LIT_INTEGER
 xchain0_n4_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
.Lx6_0:
 .quad 1000000000
 xchain0_n5_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
# marshal arg1 = producer-box slot [zr+208] -> [zr+176]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn8: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
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
 lea rsi, [r12 + 256]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n8_α
# IR_ASSIGN gva
 xchain0_n7_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n8_α
# IR_LIT_INTEGER
 xchain0_n8_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n10_α
.Lx12_0:
 .quad 1
# IR_ASSIGN gva
 xchain0_n9_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n10_α
# IR_LIT_INTEGER
 xchain0_n10_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n12_α
.Lx14_0:
 .quad 2
# IR_ASSIGN gva
 xchain0_n11_α:
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n12_α
# IR_LIT_INTEGER
 xchain0_n12_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n14_α
.Lx16_0:
 .quad 0
# IR_ASSIGN gva
 xchain0_n13_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n14_α
# IR_LIT_INTEGER
 xchain0_n14_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n16_α
.Lx18_0:
 .quad 0
# IR_ASSIGN gva
 xchain0_n15_α:
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n16_α
# IR_LIT_INTEGER
 xchain0_n16_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n18_α
.Lx20_0:
 .quad 0
# IR_ASSIGN gva
 xchain0_n17_α:
 mov rax, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n18_α
# IR_LIT_INTEGER
 xchain0_n18_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp xchain0_n20_α
.Lx22_0:
 .quad 0
# IR_ASSIGN gva
 xchain0_n19_α:
 mov rax, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp xchain0_n20_α
# IR_VAR
 xchain0_n20_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n22_α
# IR_LIT_INTEGER
 xchain0_n21_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n22_α
.Lx25_0:
 .quad 1
# IR_VAR
 xchain0_n22_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n25_α
 xchain0_n23_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 480]
 cmp eax, 100
 je .Lx27_0
 mov eax, dword ptr [r12 + 480]
 cmp eax, 6
 jne .Lx27_2
.Lx27_1:
 mov rax, qword ptr [r12 + 488]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 464], 6
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n26_α
.Lx27_0:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 mov r8d, 0
 lea r9, [r12 + 464]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx27_3
.Lx27_2:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n22_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
.Lx27_3:
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n22_α
# IR_LIT_INTEGER
 xchain0_n24_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain0_n27_α
 xchain0_n24_β:
 jmp xchain0_n25_α
.Lx28_0:
 .quad 2
# IR_VAR
 xchain0_n25_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain0_n28_α
 xchain0_n25_β:
 jmp xchain0_n29_α
# IR_ASSIGN gva
 xchain0_n26_α:
 mov rax, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain0_n22_α
 xchain0_n26_β:
 jmp xchain0_n22_α
 xchain0_n27_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 544]
 cmp eax, 100
 je .Lx31_0
 mov eax, dword ptr [r12 + 544]
 cmp eax, 6
 jne .Lx31_2
.Lx31_1:
 mov rax, qword ptr [r12 + 552]
 mov rcx, 2
 add rax, rcx
 mov qword ptr [r12 + 528], 6
 mov qword ptr [r12 + 536], rax
 jmp xchain0_n30_α
.Lx31_0:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov r8d, 0
 lea r9, [r12 + 528]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx31_3
.Lx31_2:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n25_α
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
.Lx31_3:
 jmp xchain0_n30_α
 xchain0_n27_β:
 jmp xchain0_n25_α
# IR_VAR
 xchain0_n28_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain0_n31_α
 xchain0_n28_β:
 jmp xchain0_n29_α
# IR_VAR
 xchain0_n29_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain0_n32_α
 xchain0_n29_β:
 jmp xchain0_n33_α
# IR_ASSIGN gva
 xchain0_n30_α:
 mov rax, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain0_n25_α
 xchain0_n30_β:
 jmp xchain0_n25_α
 xchain0_n31_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 608]
 cmp eax, 100
 je .Lx35_0
 mov eax, dword ptr [r12 + 624]
 cmp eax, 100
 je .Lx35_0
 mov eax, dword ptr [r12 + 608]
 cmp eax, 6
 jne .Lx35_2
 mov eax, dword ptr [r12 + 624]
 cmp eax, 6
 jne .Lx35_2
.Lx35_1:
 mov rax, qword ptr [r12 + 616]
 mov rcx, qword ptr [r12 + 632]
 add rax, rcx
 mov qword ptr [r12 + 592], 6
 mov qword ptr [r12 + 600], rax
 jmp xchain0_n34_α
.Lx35_0:
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 mov rdx, qword ptr [r12 + 624]
 mov rcx, qword ptr [r12 + 632]
 mov r8d, 0
 lea r9, [r12 + 592]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx35_3
.Lx35_2:
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 mov rdx, qword ptr [r12 + 624]
 mov rcx, qword ptr [r12 + 632]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n29_α
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
.Lx35_3:
 jmp xchain0_n34_α
 xchain0_n31_β:
 jmp xchain0_n29_α
# IR_VAR
 xchain0_n32_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain0_n35_α
 xchain0_n32_β:
 jmp xchain0_n33_α
# IR_VAR
 xchain0_n33_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain0_n36_α
 xchain0_n33_β:
 jmp xchain0_n37_α
# IR_ASSIGN gva
 xchain0_n34_α:
 mov rax, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain0_n29_α
 xchain0_n34_β:
 jmp xchain0_n29_α
 xchain0_n35_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 672]
 cmp eax, 100
 je .Lx39_0
 mov eax, dword ptr [r12 + 688]
 cmp eax, 100
 je .Lx39_0
 mov eax, dword ptr [r12 + 672]
 cmp eax, 6
 jne .Lx39_2
 mov eax, dword ptr [r12 + 688]
 cmp eax, 6
 jne .Lx39_2
.Lx39_1:
 mov rax, qword ptr [r12 + 680]
 mov rcx, qword ptr [r12 + 696]
 add rax, rcx
 mov qword ptr [r12 + 656], 6
 mov qword ptr [r12 + 664], rax
 jmp xchain0_n38_α
.Lx39_0:
 mov rdi, qword ptr [r12 + 672]
 mov rsi, qword ptr [r12 + 680]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 mov r8d, 0
 lea r9, [r12 + 656]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx39_3
.Lx39_2:
 mov rdi, qword ptr [r12 + 672]
 mov rsi, qword ptr [r12 + 680]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n33_α
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
.Lx39_3:
 jmp xchain0_n38_α
 xchain0_n35_β:
 jmp xchain0_n33_α
# IR_VAR
 xchain0_n36_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain0_n39_α
 xchain0_n36_β:
 jmp xchain0_n37_α
# IR_VAR
 xchain0_n37_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain0_n40_α
 xchain0_n37_β:
 jmp xchain0_n41_α
# IR_ASSIGN gva
 xchain0_n38_α:
 mov rax, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain0_n33_α
 xchain0_n38_β:
 jmp xchain0_n33_α
 xchain0_n39_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 736]
 cmp eax, 100
 je .Lx43_0
 mov eax, dword ptr [r12 + 752]
 cmp eax, 100
 je .Lx43_0
 mov eax, dword ptr [r12 + 736]
 cmp eax, 6
 jne .Lx43_2
 mov eax, dword ptr [r12 + 752]
 cmp eax, 6
 jne .Lx43_2
.Lx43_1:
 mov rax, qword ptr [r12 + 744]
 mov rcx, qword ptr [r12 + 760]
 add rax, rcx
 mov qword ptr [r12 + 720], 6
 mov qword ptr [r12 + 728], rax
 jmp xchain0_n42_α
.Lx43_0:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 mov r8d, 0
 lea r9, [r12 + 720]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx43_3
.Lx43_2:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n37_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
.Lx43_3:
 jmp xchain0_n42_α
 xchain0_n39_β:
 jmp xchain0_n37_α
# IR_LIT_INTEGER
 xchain0_n40_α:
 mov qword ptr [r12 + 848], 6
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain0_n43_α
 xchain0_n40_β:
 jmp xchain0_n41_α
.Lx44_0:
 .quad 10000000
 xchain0_n41_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn46: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn46]
 lea rsi, [r12 + 960]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je xchain0_n45_α
 jmp xchain0_n44_α
 xchain0_n41_β:
 jmp xchain0_n45_α
# IR_ASSIGN gva
 xchain0_n42_α:
 mov rax, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain0_n37_α
 xchain0_n42_β:
 jmp xchain0_n37_α
# IR_COERCE_NUMERIC
 xchain0_n43_α:
 mov eax, dword ptr [r12 + 864]
 cmp eax, 7
 je .Lx49_1
 cmp eax, 6
 jne .Lx49_0
 mov eax, dword ptr [r12 + 848]
 cmp eax, 6
 jne .Lx49_0
.Lx49_1:
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
 jmp .Lx49_2
.Lx49_0:
 lea rdi, [r12 + 864]
 lea rsi, [r12 + 848]
 lea rdx, [r12 + 832]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx49_2:
 jmp xchain0_n46_α
 xchain0_n43_β:
 jmp xchain0_n41_α
# IR_ASSIGN gva
 xchain0_n44_α:
 mov rax, qword ptr [r12 + 944]
 mov rdx, qword ptr [r12 + 952]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain0_n45_α
 xchain0_n44_β:
 jmp xchain0_n45_α
# IR_LIT_STRING
 xchain0_n45_α:
 mov qword ptr [r12 + 992], 1
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [r12 + 1000], rax
 jmp xchain0_n47_α
 xchain0_n45_β:
 jmp xchain0_n50_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "result: "
# IR_COERCE_NUMERIC
 xchain0_n46_α:
 mov eax, dword ptr [r12 + 848]
 cmp eax, 7
 je .Lx53_1
 cmp eax, 6
 jne .Lx53_0
 mov eax, dword ptr [r12 + 864]
 cmp eax, 6
 jne .Lx53_0
.Lx53_1:
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 824], rax
 jmp .Lx53_2
.Lx53_0:
 lea rdi, [r12 + 848]
 lea rsi, [r12 + 864]
 lea rdx, [r12 + 816]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
.Lx53_2:
 jmp xchain0_n48_α
 xchain0_n46_β:
 jmp xchain0_n41_α
# IR_VAR
 xchain0_n47_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain0_n49_α
 xchain0_n47_β:
 jmp xchain0_n50_α
# IR_CMP_TEST
 xchain0_n48_α:
 lea rdi, [r12 + 832]
 lea rsi, [r12 + 816]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain0_n41_α
 mov qword ptr [r12 + 800], 0
 mov qword ptr [r12 + 808], 0
 jmp xchain0_n51_α
 xchain0_n48_β:
 jmp xchain0_n41_α
 xchain0_n49_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 992]
 mov rsi, qword ptr [r12 + 1000]
 mov rdx, qword ptr [r12 + 1008]
 mov rcx, qword ptr [r12 + 1016]
 call str_concat_d@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain0_n52_α
 xchain0_n49_β:
 jmp xchain0_n50_α
# IR_LIT_STRING
 xchain0_n50_α:
 mov qword ptr [r12 + 1056], 1
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [r12 + 1064], rax
 jmp xchain0_n53_α
 xchain0_n50_β:
 jmp main_γ
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "ms: "
# IR_VAR
 xchain0_n51_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain0_n54_α
 xchain0_n51_β:
 jmp xchain0_n41_α
# IR_ASSIGN global
 xchain0_n52_α:
 mov rsi, qword ptr [r12 + 976]
 mov rdx, qword ptr [r12 + 984]
 mov rdi, qword ptr [rip + .Lx60_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain0_n50_α
 xchain0_n52_β:
 jmp xchain0_n50_α
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain0_n53_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain0_n55_α
 xchain0_n53_β:
 jmp main_γ
# IR_LIT_INTEGER
 xchain0_n54_α:
 mov qword ptr [r12 + 912], 6
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [r12 + 920], rax
 jmp xchain0_n56_α
 xchain0_n54_β:
 jmp xchain0_n41_α
.Lx62_0:
 .quad 1
# IR_VAR
 xchain0_n55_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain0_n57_α
 xchain0_n55_β:
 jmp main_γ
 xchain0_n56_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 896]
 cmp eax, 100
 je .Lx64_0
 mov eax, dword ptr [r12 + 896]
 cmp eax, 6
 jne .Lx64_2
.Lx64_1:
 mov rax, qword ptr [r12 + 904]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 880], 6
 mov qword ptr [r12 + 888], rax
 jmp xchain0_n58_α
.Lx64_0:
 mov rdi, qword ptr [r12 + 896]
 mov rsi, qword ptr [r12 + 904]
 mov rdx, qword ptr [r12 + 912]
 mov rcx, qword ptr [r12 + 920]
 mov r8d, 0
 lea r9, [r12 + 880]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx64_3
.Lx64_2:
 mov rdi, qword ptr [r12 + 896]
 mov rsi, qword ptr [r12 + 904]
 mov rdx, qword ptr [r12 + 912]
 mov rcx, qword ptr [r12 + 920]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n41_α
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
.Lx64_3:
 jmp xchain0_n58_α
 xchain0_n56_β:
 jmp xchain0_n41_α
 xchain0_n57_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1088]
 cmp eax, 100
 je .Lx65_0
 mov eax, dword ptr [r12 + 1104]
 cmp eax, 100
 je .Lx65_0
 mov eax, dword ptr [r12 + 1088]
 cmp eax, 6
 jne .Lx65_2
 mov eax, dword ptr [r12 + 1104]
 cmp eax, 6
 jne .Lx65_2
.Lx65_1:
 mov rax, qword ptr [r12 + 1096]
 mov rcx, qword ptr [r12 + 1112]
 sub rax, rcx
 mov qword ptr [r12 + 1072], 6
 mov qword ptr [r12 + 1080], rax
 jmp xchain0_n59_α
.Lx65_0:
 mov rdi, qword ptr [r12 + 1088]
 mov rsi, qword ptr [r12 + 1096]
 mov rdx, qword ptr [r12 + 1104]
 mov rcx, qword ptr [r12 + 1112]
 mov r8d, 1
 lea r9, [r12 + 1072]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx65_3
.Lx65_2:
 mov rdi, qword ptr [r12 + 1088]
 mov rsi, qword ptr [r12 + 1096]
 mov rdx, qword ptr [r12 + 1104]
 mov rcx, qword ptr [r12 + 1112]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
.Lx65_3:
 jmp xchain0_n59_α
 xchain0_n57_β:
 jmp main_γ
 xchain0_n58_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, qword ptr [r12 + 880]
 mov rcx, qword ptr [r12 + 888]
 call str_concat_d@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain0_n60_α
 xchain0_n58_β:
 jmp xchain0_n41_α
 xchain0_n59_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1056]
 mov rsi, qword ptr [r12 + 1064]
 mov rdx, qword ptr [r12 + 1072]
 mov rcx, qword ptr [r12 + 1080]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain0_n61_α
 xchain0_n59_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain0_n60_α:
 mov rax, qword ptr [r12 + 784]
 mov rdx, qword ptr [r12 + 792]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain0_n20_α
 xchain0_n60_β:
 jmp xchain0_n41_α
# IR_ASSIGN global
 xchain0_n61_α:
 mov rsi, qword ptr [r12 + 1040]
 mov rdx, qword ptr [r12 + 1048]
 mov rdi, qword ptr [rip + .Lx69_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp main_γ
 xchain0_n61_β:
 jmp main_γ
.Lx69_0:
 .quad .Lx69_0_s
.Lx69_0_s:
 .string "OUTPUT"
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1120]
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
mov rsp, rbp
pop rbp
pop r12
ret
