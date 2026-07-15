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
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 8
  call gva_register@PLT
  mov rbx, rax
  xor esi, esi
  call main_α
  xor eax, eax
  add rsp, 24
  ret
main_α:
#=======================================================================================================================
    .global main_α
    .global main_β
    .global main_γ
    .global main_ω
  sub rsp, 65544
  mov rdi, rsp
  mov ecx, 65544
  xor eax, eax
  rep stosb
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [rsp + 1896], rsp
main_α_body:
# IR_LIT_STRING
 xchain0_n0_α:
 mov qword ptr [rsp + 160], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [rsp + 168], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n3_α
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "TRIM"
# IR_LIT_INTEGER
 xchain0_n1_α:
 mov qword ptr [rsp + 192], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [rsp + 200], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n3_α
.Lx2_0:
 .quad 1
 xchain0_n2_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+112]
 mov rax, qword ptr [rsp + 160]
 mov qword ptr [rsp + 112], rax
 mov rax, qword ptr [rsp + 168]
 mov qword ptr [rsp + 120], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+128]
 mov rax, qword ptr [rsp + 192]
 mov qword ptr [rsp + 128], rax
 mov rax, qword ptr [rsp + 200]
 mov qword ptr [rsp + 136], rax
  .section .rodata
  .Lrkfn4: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn4]
 lea rsi, [rsp + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rsp + 96], rax
 mov qword ptr [rsp + 104], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n3_α
# IR_LIT_STRING
 xchain0_n3_α:
 mov qword ptr [rsp + 288], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rsp + 296], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n6_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "STLIMIT"
# IR_LIT_INTEGER
 xchain0_n4_α:
 mov qword ptr [rsp + 320], 6
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [rsp + 328], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
.Lx6_0:
 .quad 1000000000
 xchain0_n5_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+240]
 mov rax, qword ptr [rsp + 288]
 mov qword ptr [rsp + 240], rax
 mov rax, qword ptr [rsp + 296]
 mov qword ptr [rsp + 248], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+256]
 mov rax, qword ptr [rsp + 320]
 mov qword ptr [rsp + 256], rax
 mov rax, qword ptr [rsp + 328]
 mov qword ptr [rsp + 264], rax
  .section .rodata
  .Lrkfn8: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [rsp + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rsp + 224], rax
 mov qword ptr [rsp + 232], rdx
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
 lea rsi, [rsp + 384]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rsp + 368], rax
 mov qword ptr [rsp + 376], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n8_α
# IR_ASSIGN gva
 xchain0_n7_α:
 mov rax, qword ptr [rsp + 368]
 mov rdx, qword ptr [rsp + 376]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rdx
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n8_α
# IR_LIT_INTEGER
 xchain0_n8_α:
 mov qword ptr [rsp + 416], 6
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [rsp + 424], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n10_α
.Lx12_0:
 .quad 1
# IR_ASSIGN gva
 xchain0_n9_α:
 mov rax, qword ptr [rsp + 416]
 mov rdx, qword ptr [rsp + 424]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [rsp + 400], rax
 mov qword ptr [rsp + 408], rdx
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n10_α
# IR_LIT_INTEGER
 xchain0_n10_α:
 mov qword ptr [rsp + 464], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [rsp + 472], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n12_α
.Lx14_0:
 .quad 2
# IR_ASSIGN gva
 xchain0_n11_α:
 mov rax, qword ptr [rsp + 464]
 mov rdx, qword ptr [rsp + 472]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [rsp + 448], rax
 mov qword ptr [rsp + 456], rdx
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n12_α
# IR_LIT_INTEGER
 xchain0_n12_α:
 mov qword ptr [rsp + 512], 6
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [rsp + 520], rax
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n14_α
.Lx16_0:
 .quad 0
# IR_ASSIGN gva
 xchain0_n13_α:
 mov rax, qword ptr [rsp + 512]
 mov rdx, qword ptr [rsp + 520]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [rsp + 496], rax
 mov qword ptr [rsp + 504], rdx
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n14_α
# IR_LIT_INTEGER
 xchain0_n14_α:
 mov qword ptr [rsp + 560], 6
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [rsp + 568], rax
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n16_α
.Lx18_0:
 .quad 0
# IR_ASSIGN gva
 xchain0_n15_α:
 mov rax, qword ptr [rsp + 560]
 mov rdx, qword ptr [rsp + 568]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [rsp + 544], rax
 mov qword ptr [rsp + 552], rdx
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n16_α
# IR_LIT_INTEGER
 xchain0_n16_α:
 mov qword ptr [rsp + 608], 6
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [rsp + 616], rax
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n18_α
.Lx20_0:
 .quad 0
# IR_ASSIGN gva
 xchain0_n17_α:
 mov rax, qword ptr [rsp + 608]
 mov rdx, qword ptr [rsp + 616]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [rsp + 592], rax
 mov qword ptr [rsp + 600], rdx
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n18_α
# IR_LIT_INTEGER
 xchain0_n18_α:
 mov qword ptr [rsp + 656], 6
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [rsp + 664], rax
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp xchain0_n20_α
.Lx22_0:
 .quad 0
# IR_ASSIGN gva
 xchain0_n19_α:
 mov rax, qword ptr [rsp + 656]
 mov rdx, qword ptr [rsp + 664]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [rsp + 640], rax
 mov qword ptr [rsp + 648], rdx
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp xchain0_n20_α
# IR_VAR
 xchain0_n20_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [rsp + 736], rax
 mov qword ptr [rsp + 744], rdx
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n22_α
# IR_LIT_INTEGER
 xchain0_n21_α:
 mov qword ptr [rsp + 768], 6
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [rsp + 776], rax
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n22_α
.Lx25_0:
 .quad 1
# IR_VAR
 xchain0_n22_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [rsp + 848], rax
 mov qword ptr [rsp + 856], rdx
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n25_α
 xchain0_n23_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 736]
 cmp eax, 100
 je .Lx27_0
 mov eax, dword ptr [rsp + 736]
 cmp eax, 6
 jne .Lx27_2
.Lx27_1:
 mov rax, qword ptr [rsp + 744]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rsp + 704], 6
 mov qword ptr [rsp + 712], rax
 jmp xchain0_n26_α
.Lx27_0:
 mov rdi, qword ptr [rsp + 736]
 mov rsi, qword ptr [rsp + 744]
 mov rdx, qword ptr [rsp + 768]
 mov rcx, qword ptr [rsp + 776]
 mov r8d, 0
 lea r9, [rsp + 704]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx27_3
.Lx27_2:
 mov rdi, qword ptr [rsp + 736]
 mov rsi, qword ptr [rsp + 744]
 mov rdx, qword ptr [rsp + 768]
 mov rcx, qword ptr [rsp + 776]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n22_α
 mov qword ptr [rsp + 704], rax
 mov qword ptr [rsp + 712], rdx
.Lx27_3:
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n22_α
# IR_LIT_INTEGER
 xchain0_n24_α:
 mov qword ptr [rsp + 880], 6
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [rsp + 888], rax
 jmp xchain0_n27_α
 xchain0_n24_β:
 jmp xchain0_n25_α
.Lx28_0:
 .quad 2
# IR_VAR
 xchain0_n25_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [rsp + 960], rax
 mov qword ptr [rsp + 968], rdx
 jmp xchain0_n28_α
 xchain0_n25_β:
 jmp xchain0_n29_α
# IR_ASSIGN gva
 xchain0_n26_α:
 mov rax, qword ptr [rsp + 704]
 mov rdx, qword ptr [rsp + 712]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [rsp + 688], rax
 mov qword ptr [rsp + 696], rdx
 jmp xchain0_n22_α
 xchain0_n26_β:
 jmp xchain0_n22_α
 xchain0_n27_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 848]
 cmp eax, 100
 je .Lx31_0
 mov eax, dword ptr [rsp + 848]
 cmp eax, 6
 jne .Lx31_2
.Lx31_1:
 mov rax, qword ptr [rsp + 856]
 mov rcx, 2
 add rax, rcx
 mov qword ptr [rsp + 816], 6
 mov qword ptr [rsp + 824], rax
 jmp xchain0_n30_α
.Lx31_0:
 mov rdi, qword ptr [rsp + 848]
 mov rsi, qword ptr [rsp + 856]
 mov rdx, qword ptr [rsp + 880]
 mov rcx, qword ptr [rsp + 888]
 mov r8d, 0
 lea r9, [rsp + 816]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx31_3
.Lx31_2:
 mov rdi, qword ptr [rsp + 848]
 mov rsi, qword ptr [rsp + 856]
 mov rdx, qword ptr [rsp + 880]
 mov rcx, qword ptr [rsp + 888]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n25_α
 mov qword ptr [rsp + 816], rax
 mov qword ptr [rsp + 824], rdx
.Lx31_3:
 jmp xchain0_n30_α
 xchain0_n27_β:
 jmp xchain0_n25_α
# IR_VAR
 xchain0_n28_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [rsp + 992], rax
 mov qword ptr [rsp + 1000], rdx
 jmp xchain0_n31_α
 xchain0_n28_β:
 jmp xchain0_n29_α
# IR_VAR
 xchain0_n29_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [rsp + 1072], rax
 mov qword ptr [rsp + 1080], rdx
 jmp xchain0_n32_α
 xchain0_n29_β:
 jmp xchain0_n33_α
# IR_ASSIGN gva
 xchain0_n30_α:
 mov rax, qword ptr [rsp + 816]
 mov rdx, qword ptr [rsp + 824]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [rsp + 800], rax
 mov qword ptr [rsp + 808], rdx
 jmp xchain0_n25_α
 xchain0_n30_β:
 jmp xchain0_n25_α
 xchain0_n31_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 960]
 cmp eax, 100
 je .Lx35_0
 mov eax, dword ptr [rsp + 992]
 cmp eax, 100
 je .Lx35_0
 mov eax, dword ptr [rsp + 960]
 cmp eax, 6
 jne .Lx35_2
 mov eax, dword ptr [rsp + 992]
 cmp eax, 6
 jne .Lx35_2
.Lx35_1:
 mov rax, qword ptr [rsp + 968]
 mov rcx, qword ptr [rsp + 1000]
 add rax, rcx
 mov qword ptr [rsp + 928], 6
 mov qword ptr [rsp + 936], rax
 jmp xchain0_n34_α
.Lx35_0:
 mov rdi, qword ptr [rsp + 960]
 mov rsi, qword ptr [rsp + 968]
 mov rdx, qword ptr [rsp + 992]
 mov rcx, qword ptr [rsp + 1000]
 mov r8d, 0
 lea r9, [rsp + 928]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx35_3
.Lx35_2:
 mov rdi, qword ptr [rsp + 960]
 mov rsi, qword ptr [rsp + 968]
 mov rdx, qword ptr [rsp + 992]
 mov rcx, qword ptr [rsp + 1000]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n29_α
 mov qword ptr [rsp + 928], rax
 mov qword ptr [rsp + 936], rdx
.Lx35_3:
 jmp xchain0_n34_α
 xchain0_n31_β:
 jmp xchain0_n29_α
# IR_VAR
 xchain0_n32_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [rsp + 1104], rax
 mov qword ptr [rsp + 1112], rdx
 jmp xchain0_n35_α
 xchain0_n32_β:
 jmp xchain0_n33_α
# IR_VAR
 xchain0_n33_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [rsp + 1184], rax
 mov qword ptr [rsp + 1192], rdx
 jmp xchain0_n36_α
 xchain0_n33_β:
 jmp xchain0_n37_α
# IR_ASSIGN gva
 xchain0_n34_α:
 mov rax, qword ptr [rsp + 928]
 mov rdx, qword ptr [rsp + 936]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [rsp + 912], rax
 mov qword ptr [rsp + 920], rdx
 jmp xchain0_n29_α
 xchain0_n34_β:
 jmp xchain0_n29_α
 xchain0_n35_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 1072]
 cmp eax, 100
 je .Lx39_0
 mov eax, dword ptr [rsp + 1104]
 cmp eax, 100
 je .Lx39_0
 mov eax, dword ptr [rsp + 1072]
 cmp eax, 6
 jne .Lx39_2
 mov eax, dword ptr [rsp + 1104]
 cmp eax, 6
 jne .Lx39_2
.Lx39_1:
 mov rax, qword ptr [rsp + 1080]
 mov rcx, qword ptr [rsp + 1112]
 add rax, rcx
 mov qword ptr [rsp + 1040], 6
 mov qword ptr [rsp + 1048], rax
 jmp xchain0_n38_α
.Lx39_0:
 mov rdi, qword ptr [rsp + 1072]
 mov rsi, qword ptr [rsp + 1080]
 mov rdx, qword ptr [rsp + 1104]
 mov rcx, qword ptr [rsp + 1112]
 mov r8d, 0
 lea r9, [rsp + 1040]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx39_3
.Lx39_2:
 mov rdi, qword ptr [rsp + 1072]
 mov rsi, qword ptr [rsp + 1080]
 mov rdx, qword ptr [rsp + 1104]
 mov rcx, qword ptr [rsp + 1112]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n33_α
 mov qword ptr [rsp + 1040], rax
 mov qword ptr [rsp + 1048], rdx
.Lx39_3:
 jmp xchain0_n38_α
 xchain0_n35_β:
 jmp xchain0_n33_α
# IR_VAR
 xchain0_n36_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [rsp + 1216], rax
 mov qword ptr [rsp + 1224], rdx
 jmp xchain0_n39_α
 xchain0_n36_β:
 jmp xchain0_n37_α
# IR_VAR
 xchain0_n37_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [rsp + 1424], rax
 mov qword ptr [rsp + 1432], rdx
 jmp xchain0_n40_α
 xchain0_n37_β:
 jmp xchain0_n41_α
# IR_ASSIGN gva
 xchain0_n38_α:
 mov rax, qword ptr [rsp + 1040]
 mov rdx, qword ptr [rsp + 1048]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [rsp + 1024], rax
 mov qword ptr [rsp + 1032], rdx
 jmp xchain0_n33_α
 xchain0_n38_β:
 jmp xchain0_n33_α
 xchain0_n39_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 1184]
 cmp eax, 100
 je .Lx43_0
 mov eax, dword ptr [rsp + 1216]
 cmp eax, 100
 je .Lx43_0
 mov eax, dword ptr [rsp + 1184]
 cmp eax, 6
 jne .Lx43_2
 mov eax, dword ptr [rsp + 1216]
 cmp eax, 6
 jne .Lx43_2
.Lx43_1:
 mov rax, qword ptr [rsp + 1192]
 mov rcx, qword ptr [rsp + 1224]
 add rax, rcx
 mov qword ptr [rsp + 1152], 6
 mov qword ptr [rsp + 1160], rax
 jmp xchain0_n42_α
.Lx43_0:
 mov rdi, qword ptr [rsp + 1184]
 mov rsi, qword ptr [rsp + 1192]
 mov rdx, qword ptr [rsp + 1216]
 mov rcx, qword ptr [rsp + 1224]
 mov r8d, 0
 lea r9, [rsp + 1152]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx43_3
.Lx43_2:
 mov rdi, qword ptr [rsp + 1184]
 mov rsi, qword ptr [rsp + 1192]
 mov rdx, qword ptr [rsp + 1216]
 mov rcx, qword ptr [rsp + 1224]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n37_α
 mov qword ptr [rsp + 1152], rax
 mov qword ptr [rsp + 1160], rdx
.Lx43_3:
 jmp xchain0_n42_α
 xchain0_n39_β:
 jmp xchain0_n37_α
# IR_LIT_INTEGER
 xchain0_n40_α:
 mov qword ptr [rsp + 1392], 6
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [rsp + 1400], rax
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
 lea rsi, [rsp + 1584]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rsp + 1568], rax
 mov qword ptr [rsp + 1576], rdx
 cmp eax, 99
 je xchain0_n45_α
 jmp xchain0_n44_α
 xchain0_n41_β:
 jmp xchain0_n45_α
# IR_ASSIGN gva
 xchain0_n42_α:
 mov rax, qword ptr [rsp + 1152]
 mov rdx, qword ptr [rsp + 1160]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [rsp + 1136], rax
 mov qword ptr [rsp + 1144], rdx
 jmp xchain0_n37_α
 xchain0_n42_β:
 jmp xchain0_n37_α
# IR_COERCE_NUMERIC
 xchain0_n43_α:
 mov eax, dword ptr [rsp + 1424]
 cmp eax, 7
 je .Lx49_1
 cmp eax, 6
 jne .Lx49_0
 mov eax, dword ptr [rsp + 1392]
 cmp eax, 6
 jne .Lx49_0
.Lx49_1:
 mov rax, qword ptr [rsp + 1424]
 mov qword ptr [rsp + 1360], rax
 mov rax, qword ptr [rsp + 1432]
 mov qword ptr [rsp + 1368], rax
 jmp .Lx49_2
.Lx49_0:
 lea rdi, [rsp + 1424]
 lea rsi, [rsp + 1392]
 lea rdx, [rsp + 1360]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx49_2:
 jmp xchain0_n46_α
 xchain0_n43_β:
 jmp xchain0_n41_α
# IR_ASSIGN gva
 xchain0_n44_α:
 mov rax, qword ptr [rsp + 1568]
 mov rdx, qword ptr [rsp + 1576]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [rsp + 1552], rax
 mov qword ptr [rsp + 1560], rdx
 jmp xchain0_n45_α
 xchain0_n44_β:
 jmp xchain0_n45_α
# IR_LIT_STRING
 xchain0_n45_α:
 mov qword ptr [rsp + 1648], 1
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [rsp + 1656], rax
 jmp xchain0_n47_α
 xchain0_n45_β:
 jmp xchain0_n50_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "result: "
# IR_COERCE_NUMERIC
 xchain0_n46_α:
 mov eax, dword ptr [rsp + 1392]
 cmp eax, 7
 je .Lx53_1
 cmp eax, 6
 jne .Lx53_0
 mov eax, dword ptr [rsp + 1424]
 cmp eax, 6
 jne .Lx53_0
.Lx53_1:
 mov rax, qword ptr [rsp + 1392]
 mov qword ptr [rsp + 1328], rax
 mov rax, qword ptr [rsp + 1400]
 mov qword ptr [rsp + 1336], rax
 jmp .Lx53_2
.Lx53_0:
 lea rdi, [rsp + 1392]
 lea rsi, [rsp + 1424]
 lea rdx, [rsp + 1328]
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
 mov qword ptr [rsp + 1680], rax
 mov qword ptr [rsp + 1688], rdx
 jmp xchain0_n49_α
 xchain0_n47_β:
 jmp xchain0_n50_α
# IR_CMP_TEST
 xchain0_n48_α:
 lea rdi, [rsp + 1360]
 lea rsi, [rsp + 1328]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain0_n41_α
 mov qword ptr [rsp + 1296], 0
 mov qword ptr [rsp + 1304], 0
 jmp xchain0_n51_α
 xchain0_n48_β:
 jmp xchain0_n41_α
 xchain0_n49_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 1648]
 mov rsi, qword ptr [rsp + 1656]
 mov rdx, qword ptr [rsp + 1680]
 mov rcx, qword ptr [rsp + 1688]
 call str_concat_d@PLT
 mov qword ptr [rsp + 1616], rax
 mov qword ptr [rsp + 1624], rdx
 jmp xchain0_n52_α
 xchain0_n49_β:
 jmp xchain0_n50_α
# IR_LIT_STRING
 xchain0_n50_α:
 mov qword ptr [rsp + 1760], 1
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [rsp + 1768], rax
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
 mov qword ptr [rsp + 1488], rax
 mov qword ptr [rsp + 1496], rdx
 jmp xchain0_n54_α
 xchain0_n51_β:
 jmp xchain0_n41_α
# IR_ASSIGN global
 xchain0_n52_α:
 mov rsi, qword ptr [rsp + 1616]
 mov rdx, qword ptr [rsp + 1624]
 mov rdi, qword ptr [rip + .Lx60_0]
 call NV_SET_fn@PLT
 mov qword ptr [rsp + 1600], rax
 mov qword ptr [rsp + 1608], rdx
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
 mov qword ptr [rsp + 1824], rax
 mov qword ptr [rsp + 1832], rdx
 jmp xchain0_n55_α
 xchain0_n53_β:
 jmp main_γ
# IR_LIT_INTEGER
 xchain0_n54_α:
 mov qword ptr [rsp + 1520], 6
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [rsp + 1528], rax
 jmp xchain0_n56_α
 xchain0_n54_β:
 jmp xchain0_n41_α
.Lx62_0:
 .quad 1
# IR_VAR
 xchain0_n55_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [rsp + 1856], rax
 mov qword ptr [rsp + 1864], rdx
 jmp xchain0_n57_α
 xchain0_n55_β:
 jmp main_γ
 xchain0_n56_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 1488]
 cmp eax, 100
 je .Lx64_0
 mov eax, dword ptr [rsp + 1488]
 cmp eax, 6
 jne .Lx64_2
.Lx64_1:
 mov rax, qword ptr [rsp + 1496]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rsp + 1456], 6
 mov qword ptr [rsp + 1464], rax
 jmp xchain0_n58_α
.Lx64_0:
 mov rdi, qword ptr [rsp + 1488]
 mov rsi, qword ptr [rsp + 1496]
 mov rdx, qword ptr [rsp + 1520]
 mov rcx, qword ptr [rsp + 1528]
 mov r8d, 0
 lea r9, [rsp + 1456]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx64_3
.Lx64_2:
 mov rdi, qword ptr [rsp + 1488]
 mov rsi, qword ptr [rsp + 1496]
 mov rdx, qword ptr [rsp + 1520]
 mov rcx, qword ptr [rsp + 1528]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n41_α
 mov qword ptr [rsp + 1456], rax
 mov qword ptr [rsp + 1464], rdx
.Lx64_3:
 jmp xchain0_n58_α
 xchain0_n56_β:
 jmp xchain0_n41_α
 xchain0_n57_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 1824]
 cmp eax, 100
 je .Lx65_0
 mov eax, dword ptr [rsp + 1856]
 cmp eax, 100
 je .Lx65_0
 mov eax, dword ptr [rsp + 1824]
 cmp eax, 6
 jne .Lx65_2
 mov eax, dword ptr [rsp + 1856]
 cmp eax, 6
 jne .Lx65_2
.Lx65_1:
 mov rax, qword ptr [rsp + 1832]
 mov rcx, qword ptr [rsp + 1864]
 sub rax, rcx
 mov qword ptr [rsp + 1792], 6
 mov qword ptr [rsp + 1800], rax
 jmp xchain0_n59_α
.Lx65_0:
 mov rdi, qword ptr [rsp + 1824]
 mov rsi, qword ptr [rsp + 1832]
 mov rdx, qword ptr [rsp + 1856]
 mov rcx, qword ptr [rsp + 1864]
 mov r8d, 1
 lea r9, [rsp + 1792]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx65_3
.Lx65_2:
 mov rdi, qword ptr [rsp + 1824]
 mov rsi, qword ptr [rsp + 1832]
 mov rdx, qword ptr [rsp + 1856]
 mov rcx, qword ptr [rsp + 1864]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [rsp + 1792], rax
 mov qword ptr [rsp + 1800], rdx
.Lx65_3:
 jmp xchain0_n59_α
 xchain0_n57_β:
 jmp main_γ
 xchain0_n58_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 1296]
 mov rsi, qword ptr [rsp + 1304]
 mov rdx, qword ptr [rsp + 1456]
 mov rcx, qword ptr [rsp + 1464]
 call str_concat_d@PLT
 mov qword ptr [rsp + 1264], rax
 mov qword ptr [rsp + 1272], rdx
 jmp xchain0_n60_α
 xchain0_n58_β:
 jmp xchain0_n41_α
 xchain0_n59_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 1760]
 mov rsi, qword ptr [rsp + 1768]
 mov rdx, qword ptr [rsp + 1792]
 mov rcx, qword ptr [rsp + 1800]
 call str_concat_d@PLT
 mov qword ptr [rsp + 1728], rax
 mov qword ptr [rsp + 1736], rdx
 jmp xchain0_n61_α
 xchain0_n59_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain0_n60_α:
 mov rax, qword ptr [rsp + 1264]
 mov rdx, qword ptr [rsp + 1272]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [rsp + 1248], rax
 mov qword ptr [rsp + 1256], rdx
 jmp xchain0_n20_α
 xchain0_n60_β:
 jmp xchain0_n41_α
# IR_ASSIGN global
 xchain0_n61_α:
 mov rsi, qword ptr [rsp + 1728]
 mov rdx, qword ptr [rsp + 1736]
 mov rdi, qword ptr [rip + .Lx69_0]
 call NV_SET_fn@PLT
 mov qword ptr [rsp + 1712], rax
 mov qword ptr [rsp + 1720], rdx
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
mov rsp, qword ptr [rsp + 1896]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rsp + 1896]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
add rsp, 65544
ret
