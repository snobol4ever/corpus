  .intel_syntax noprefix
  .text
  .section .rodata
  .Lgvan0: .string "T1"
  .Lgvan1: .string "OUTER"
  .Lgvan2: .string "T"
  .Lgvan3: .string "I"
  .Lgvan4: .string "SUM"
  .Lgvan5: .string "T2"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .quad .Lgvan5
  .section .bss
  .align 16
__gva: .space 96, 0
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
  mov edx, 6
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
 mov qword ptr [r12 + 1344], rax
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
 .quad 0
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
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n13_α
.Lx14_0:
 .quad 512
 xchain0_n11_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+320]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn16: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn16]
 lea rsi, [r12 + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n13_α
# IR_ASSIGN gva
 xchain0_n12_α:
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n13_α
# IR_LIT_INTEGER
 xchain0_n13_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n15_α
.Lx18_0:
 .quad 0
# IR_ASSIGN gva
 xchain0_n14_α:
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n15_α
# IR_VAR
 xchain0_n15_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n17_α
# IR_LIT_INTEGER
 xchain0_n16_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n17_α
.Lx21_0:
 .quad 500
# IR_LIT_INTEGER
 xchain0_n17_α:
 mov qword ptr [r12 + 672], 6
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n21_α
.Lx22_0:
 .quad 0
# IR_COERCE_NUMERIC
 xchain0_n18_α:
 lea rdi, [r12 + 480]
 lea rsi, [r12 + 464]
 lea rdx, [r12 + 448]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n17_α
# IR_ASSIGN gva
 xchain0_n19_α:
 mov rax, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 680]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n21_α
# IR_COERCE_NUMERIC
 xchain0_n20_α:
 lea rdi, [r12 + 464]
 lea rsi, [r12 + 480]
 lea rdx, [r12 + 432]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n17_α
# IR_LIT_INTEGER
 xchain0_n21_α:
 mov qword ptr [r12 + 704], 6
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n25_α
.Lx28_0:
 .quad 0
# IR_CMP_TEST
 xchain0_n22_α:
 lea rdi, [r12 + 448]
 lea rsi, [r12 + 432]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain0_n17_α
 mov qword ptr [r12 + 416], 0
 mov qword ptr [r12 + 424], 0
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n17_α
# IR_ASSIGN gva
 xchain0_n23_α:
 mov rax, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp xchain0_n25_α
# IR_VAR
 xchain0_n24_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n17_α
# IR_VAR
 xchain0_n25_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp xchain0_n28_α
# IR_LIT_INTEGER
 xchain0_n26_α:
 mov qword ptr [r12 + 528], 6
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain0_n29_α
 xchain0_n26_β:
 jmp xchain0_n17_α
.Lx34_0:
 .quad 1
# IR_LIT_INTEGER
 xchain0_n27_α:
 mov qword ptr [r12 + 800], 6
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain0_n30_α
 xchain0_n27_β:
 jmp xchain0_n28_α
.Lx35_0:
 .quad 500
# IR_VAR
 xchain0_n28_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain0_n31_α
 xchain0_n28_β:
 jmp xchain0_n32_α
 xchain0_n29_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 512]
 cmp eax, 100
 je .Lx37_0
 mov eax, dword ptr [r12 + 512]
 cmp eax, 6
 jne .Lx37_2
.Lx37_1:
 mov rax, qword ptr [r12 + 520]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 496], 6
 mov qword ptr [r12 + 504], rax
 jmp xchain0_n33_α
.Lx37_0:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 0
 lea r9, [r12 + 496]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx37_3
.Lx37_2:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n17_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
.Lx37_3:
 jmp xchain0_n33_α
 xchain0_n29_β:
 jmp xchain0_n17_α
# IR_COERCE_NUMERIC
 xchain0_n30_α:
 lea rdi, [r12 + 816]
 lea rsi, [r12 + 800]
 lea rdx, [r12 + 784]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
 jmp xchain0_n34_α
 xchain0_n30_β:
 jmp xchain0_n28_α
# IR_LIT_INTEGER
 xchain0_n31_α:
 mov qword ptr [r12 + 1072], 6
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [r12 + 1080], rax
 jmp xchain0_n35_α
 xchain0_n31_β:
 jmp xchain0_n32_α
.Lx40_0:
 .quad 5000
 xchain0_n32_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn42: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn42]
 lea rsi, [r12 + 1184]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain0_n37_α
 jmp xchain0_n36_α
 xchain0_n32_β:
 jmp xchain0_n37_α
 xchain0_n33_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call str_concat_d@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain0_n38_α
 xchain0_n33_β:
 jmp xchain0_n17_α
# IR_COERCE_NUMERIC
 xchain0_n34_α:
 lea rdi, [r12 + 800]
 lea rsi, [r12 + 816]
 lea rdx, [r12 + 768]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
 jmp xchain0_n39_α
 xchain0_n34_β:
 jmp xchain0_n28_α
# IR_COERCE_NUMERIC
 xchain0_n35_α:
 lea rdi, [r12 + 1088]
 lea rsi, [r12 + 1072]
 lea rdx, [r12 + 1056]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
 jmp xchain0_n40_α
 xchain0_n35_β:
 jmp xchain0_n32_α
# IR_ASSIGN gva
 xchain0_n36_α:
 mov rax, qword ptr [r12 + 1168]
 mov rdx, qword ptr [r12 + 1176]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain0_n37_α
 xchain0_n36_β:
 jmp xchain0_n37_α
# IR_LIT_STRING
 xchain0_n37_α:
 mov qword ptr [r12 + 1216], 1
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [r12 + 1224], rax
 jmp xchain0_n41_α
 xchain0_n37_β:
 jmp xchain0_n46_α
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string "result: "
# IR_ASSIGN gva
 xchain0_n38_α:
 mov rax, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain0_n42_α
 xchain0_n38_β:
 jmp xchain0_n17_α
# IR_CMP_TEST
 xchain0_n39_α:
 lea rdi, [r12 + 784]
 lea rsi, [r12 + 768]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain0_n28_α
 mov qword ptr [r12 + 752], 0
 mov qword ptr [r12 + 760], 0
 jmp xchain0_n43_α
 xchain0_n39_β:
 jmp xchain0_n28_α
# IR_COERCE_NUMERIC
 xchain0_n40_α:
 lea rdi, [r12 + 1072]
 lea rsi, [r12 + 1088]
 lea rdx, [r12 + 1040]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
 jmp xchain0_n44_α
 xchain0_n40_β:
 jmp xchain0_n32_α
# IR_VAR
 xchain0_n41_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain0_n45_α
 xchain0_n41_β:
 jmp xchain0_n46_α
# IR_VAR
 xchain0_n42_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain0_n47_α
 xchain0_n42_β:
 jmp xchain0_n15_α
# IR_VAR
 xchain0_n43_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain0_n48_α
 xchain0_n43_β:
 jmp xchain0_n28_α
# IR_CMP_TEST
 xchain0_n44_α:
 lea rdi, [r12 + 1056]
 lea rsi, [r12 + 1040]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain0_n32_α
 mov qword ptr [r12 + 1024], 0
 mov qword ptr [r12 + 1032], 0
 jmp xchain0_n49_α
 xchain0_n44_β:
 jmp xchain0_n32_α
 xchain0_n45_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1216]
 mov rsi, qword ptr [r12 + 1224]
 mov rdx, qword ptr [r12 + 1232]
 mov rcx, qword ptr [r12 + 1240]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain0_n50_α
 xchain0_n45_β:
 jmp xchain0_n46_α
# IR_LIT_STRING
 xchain0_n46_α:
 mov qword ptr [r12 + 1280], 1
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [r12 + 1288], rax
 jmp xchain0_n51_α
 xchain0_n46_β:
 jmp main_γ
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "ms: "
# IR_VAR
 xchain0_n47_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n52_α
 xchain0_n47_β:
 jmp xchain0_n15_α
# IR_LIT_INTEGER
 xchain0_n48_α:
 mov qword ptr [r12 + 864], 6
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain0_n53_α
 xchain0_n48_β:
 jmp xchain0_n28_α
.Lx63_0:
 .quad 1
# IR_VAR
 xchain0_n49_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain0_n54_α
 xchain0_n49_β:
 jmp xchain0_n32_α
# IR_ASSIGN global
 xchain0_n50_α:
 mov rsi, qword ptr [r12 + 1200]
 mov rdx, qword ptr [r12 + 1208]
 mov rdi, qword ptr [rip + .Lx65_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain0_n46_α
 xchain0_n50_β:
 jmp xchain0_n46_α
.Lx65_0:
 .quad .Lx65_0_s
.Lx65_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain0_n51_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain0_n55_α
 xchain0_n51_β:
 jmp main_γ
# IR_SUBSCRIPT x[i] variable
 xchain0_n52_α:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n15_α
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain0_n56_α
 xchain0_n52_β:
 jmp xchain0_n15_α
 xchain0_n53_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 848]
 cmp eax, 100
 je .Lx68_0
 mov eax, dword ptr [r12 + 848]
 cmp eax, 6
 jne .Lx68_2
.Lx68_1:
 mov rax, qword ptr [r12 + 856]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 832], 6
 mov qword ptr [r12 + 840], rax
 jmp xchain0_n57_α
.Lx68_0:
 mov rdi, qword ptr [r12 + 848]
 mov rsi, qword ptr [r12 + 856]
 mov rdx, qword ptr [r12 + 864]
 mov rcx, qword ptr [r12 + 872]
 mov r8d, 0
 lea r9, [r12 + 832]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx68_3
.Lx68_2:
 mov rdi, qword ptr [r12 + 848]
 mov rsi, qword ptr [r12 + 856]
 mov rdx, qword ptr [r12 + 864]
 mov rcx, qword ptr [r12 + 872]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n28_α
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
.Lx68_3:
 jmp xchain0_n57_α
 xchain0_n53_β:
 jmp xchain0_n28_α
# IR_LIT_INTEGER
 xchain0_n54_α:
 mov qword ptr [r12 + 1136], 6
 mov rax, qword ptr [rip + .Lx69_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain0_n58_α
 xchain0_n54_β:
 jmp xchain0_n32_α
.Lx69_0:
 .quad 1
# IR_VAR
 xchain0_n55_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain0_n59_α
 xchain0_n55_β:
 jmp main_γ
# IR_VAR
 xchain0_n56_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain0_n60_α
 xchain0_n56_β:
 jmp xchain0_n15_α
 xchain0_n57_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 832]
 mov rcx, qword ptr [r12 + 840]
 call str_concat_d@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain0_n61_α
 xchain0_n57_β:
 jmp xchain0_n28_α
 xchain0_n58_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1120]
 cmp eax, 100
 je .Lx73_0
 mov eax, dword ptr [r12 + 1120]
 cmp eax, 6
 jne .Lx73_2
.Lx73_1:
 mov rax, qword ptr [r12 + 1128]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 1104], 6
 mov qword ptr [r12 + 1112], rax
 jmp xchain0_n62_α
.Lx73_0:
 mov rdi, qword ptr [r12 + 1120]
 mov rsi, qword ptr [r12 + 1128]
 mov rdx, qword ptr [r12 + 1136]
 mov rcx, qword ptr [r12 + 1144]
 mov r8d, 0
 lea r9, [r12 + 1104]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx73_3
.Lx73_2:
 mov rdi, qword ptr [r12 + 1120]
 mov rsi, qword ptr [r12 + 1128]
 mov rdx, qword ptr [r12 + 1136]
 mov rcx, qword ptr [r12 + 1144]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n32_α
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
.Lx73_3:
 jmp xchain0_n62_α
 xchain0_n58_β:
 jmp xchain0_n32_α
 xchain0_n59_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1312]
 cmp eax, 100
 je .Lx74_0
 mov eax, dword ptr [r12 + 1328]
 cmp eax, 100
 je .Lx74_0
 mov eax, dword ptr [r12 + 1312]
 cmp eax, 6
 jne .Lx74_2
 mov eax, dword ptr [r12 + 1328]
 cmp eax, 6
 jne .Lx74_2
.Lx74_1:
 mov rax, qword ptr [r12 + 1320]
 mov rcx, qword ptr [r12 + 1336]
 sub rax, rcx
 mov qword ptr [r12 + 1296], 6
 mov qword ptr [r12 + 1304], rax
 jmp xchain0_n63_α
.Lx74_0:
 mov rdi, qword ptr [r12 + 1312]
 mov rsi, qword ptr [r12 + 1320]
 mov rdx, qword ptr [r12 + 1328]
 mov rcx, qword ptr [r12 + 1336]
 mov r8d, 1
 lea r9, [r12 + 1296]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx74_3
.Lx74_2:
 mov rdi, qword ptr [r12 + 1312]
 mov rsi, qword ptr [r12 + 1320]
 mov rdx, qword ptr [r12 + 1328]
 mov rcx, qword ptr [r12 + 1336]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
.Lx74_3:
 jmp xchain0_n63_α
 xchain0_n59_β:
 jmp main_γ
# IR_LIT_INTEGER
 xchain0_n60_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain0_n64_α
 xchain0_n60_β:
 jmp xchain0_n15_α
.Lx75_0:
 .quad 2
# IR_ASSIGN gva
 xchain0_n61_α:
 mov rax, qword ptr [r12 + 736]
 mov rdx, qword ptr [r12 + 744]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain0_n65_α
 xchain0_n61_β:
 jmp xchain0_n28_α
 xchain0_n62_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1024]
 mov rsi, qword ptr [r12 + 1032]
 mov rdx, qword ptr [r12 + 1104]
 mov rcx, qword ptr [r12 + 1112]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain0_n66_α
 xchain0_n62_β:
 jmp xchain0_n32_α
 xchain0_n63_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1280]
 mov rsi, qword ptr [r12 + 1288]
 mov rdx, qword ptr [r12 + 1296]
 mov rcx, qword ptr [r12 + 1304]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain0_n67_α
 xchain0_n63_β:
 jmp main_γ
 xchain0_n64_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 608]
 cmp eax, 100
 je .Lx79_0
 mov eax, dword ptr [r12 + 608]
 cmp eax, 6
 jne .Lx79_2
.Lx79_1:
 mov rax, qword ptr [r12 + 616]
 mov rcx, 2
 imul rax, rcx
 mov qword ptr [r12 + 592], 6
 mov qword ptr [r12 + 600], rax
 jmp xchain0_n68_α
.Lx79_0:
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 mov rdx, qword ptr [r12 + 624]
 mov rcx, qword ptr [r12 + 632]
 mov r8d, 2
 lea r9, [r12 + 592]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx79_3
.Lx79_2:
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 mov rdx, qword ptr [r12 + 624]
 mov rcx, qword ptr [r12 + 632]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n15_α
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
.Lx79_3:
 jmp xchain0_n68_α
 xchain0_n64_β:
 jmp xchain0_n15_α
# IR_VAR
 xchain0_n65_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain0_n69_α
 xchain0_n65_β:
 jmp xchain0_n25_α
# IR_ASSIGN gva
 xchain0_n66_α:
 mov rax, qword ptr [r12 + 1008]
 mov rdx, qword ptr [r12 + 1016]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain0_n10_α
 xchain0_n66_β:
 jmp xchain0_n32_α
# IR_ASSIGN global
 xchain0_n67_α:
 mov rsi, qword ptr [r12 + 1264]
 mov rdx, qword ptr [r12 + 1272]
 mov rdi, qword ptr [rip + .Lx82_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp main_γ
 xchain0_n67_β:
 jmp main_γ
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "OUTPUT"
# IR_ASSIGN_VAR
 xchain0_n68_α:
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 mov rdx, qword ptr [r12 + 592]
 mov rcx, qword ptr [r12 + 600]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n15_α
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain0_n15_α
 xchain0_n68_β:
 jmp xchain0_n15_α
# IR_VAR
 xchain0_n69_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain0_n70_α
 xchain0_n69_β:
 jmp xchain0_n25_α
# IR_VAR
 xchain0_n70_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain0_n71_α
 xchain0_n70_β:
 jmp xchain0_n25_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n71_α:
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n25_α
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain0_n72_α
 xchain0_n71_β:
 jmp xchain0_n25_α
# IR_DEREF variable -> value
 xchain0_n72_α:
 mov rdi, qword ptr [r12 + 960]
 mov rsi, qword ptr [r12 + 968]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n25_α
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain0_n73_α
 xchain0_n72_β:
 jmp xchain0_n25_α
 xchain0_n73_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 912]
 cmp eax, 100
 je .Lx88_0
 mov eax, dword ptr [r12 + 976]
 cmp eax, 100
 je .Lx88_0
 mov eax, dword ptr [r12 + 912]
 cmp eax, 6
 jne .Lx88_2
 mov eax, dword ptr [r12 + 976]
 cmp eax, 6
 jne .Lx88_2
.Lx88_1:
 mov rax, qword ptr [r12 + 920]
 mov rcx, qword ptr [r12 + 984]
 add rax, rcx
 mov qword ptr [r12 + 896], 6
 mov qword ptr [r12 + 904], rax
 jmp xchain0_n74_α
.Lx88_0:
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 mov rdx, qword ptr [r12 + 976]
 mov rcx, qword ptr [r12 + 984]
 mov r8d, 0
 lea r9, [r12 + 896]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx88_3
.Lx88_2:
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 mov rdx, qword ptr [r12 + 976]
 mov rcx, qword ptr [r12 + 984]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n25_α
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
.Lx88_3:
 jmp xchain0_n74_α
 xchain0_n73_β:
 jmp xchain0_n25_α
# IR_ASSIGN gva
 xchain0_n74_α:
 mov rax, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain0_n25_α
 xchain0_n74_β:
 jmp xchain0_n25_α
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
 mov rdi, qword ptr [r12 + 1344]
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
