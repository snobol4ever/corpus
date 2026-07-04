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
 .quad 0
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
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n13_α
.Lx14_0:
 .quad 512
xchain0_n11_α:
bb12_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+288] -> [r12+272]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn16: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn16]
 lea rsi, [r12 + 272]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n13_α
xchain0_n12_α:
# IR_ASSIGN gva
bb13_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n13_α
xchain0_n13_α:
# IR_LIT_INTEGER
bb14_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n15_α
.Lx18_0:
 .quad 0
xchain0_n14_α:
# IR_ASSIGN gva
bb15_α:
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n15_α
xchain0_n15_α:
# IR_VAR gva
bb16_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n19_α
xchain0_n16_α:
# IR_LIT_INTEGER
bb17_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n19_α
.Lx21_0:
 .quad 500
xchain0_n17_α:
bb18_α:
# BOX IR_CALL LT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+416] -> [r12+384]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [r12+432] -> [r12+400]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn23: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn23]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain0_n19_α
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n19_α
xchain0_n18_α:
# IR_VAR gva
bb19_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n19_α
xchain0_n19_α:
# IR_LIT_INTEGER
bb20_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n23_α
.Lx25_0:
 .quad 0
xchain0_n20_α:
# IR_LIT_INTEGER
bb21_α:
 mov qword ptr [r12 + 480], 6
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n19_α
.Lx26_0:
 .quad 1
xchain0_n21_α:
# IR_ASSIGN gva
bb22_α:
 mov rax, qword ptr [r12 + 624]
 mov rdx, qword ptr [r12 + 632]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n23_α
xchain0_n22_α:
bb23_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 464]
 cmp eax, 100
 je .Lx28_0
 mov eax, dword ptr [r12 + 480]
 cmp eax, 100
 je .Lx28_0
 mov eax, dword ptr [r12 + 464]
 cmp eax, 6
 jne .Lx28_2
 mov eax, dword ptr [r12 + 480]
 cmp eax, 6
 jne .Lx28_2
.Lx28_1:
 mov rax, qword ptr [r12 + 472]
 mov rcx, qword ptr [r12 + 488]
 add rax, rcx
 mov qword ptr [r12 + 448], 6
 mov qword ptr [r12 + 456], rax
 jmp xchain0_n24_α
.Lx28_0:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 mov r8d, 0
 lea r9, [r12 + 448]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx28_3
.Lx28_2:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n19_α
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
.Lx28_3:
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n19_α
xchain0_n23_α:
# IR_LIT_INTEGER
bb24_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp xchain0_n27_α
.Lx29_0:
 .quad 0
xchain0_n24_α:
bb25_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 call str_concat_d@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n19_α
xchain0_n25_α:
# IR_ASSIGN gva
bb26_α:
 mov rax, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp xchain0_n27_α
xchain0_n26_α:
# IR_ASSIGN gva
bb27_α:
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp xchain0_n19_α
xchain0_n27_α:
# IR_VAR gva
bb28_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp xchain0_n34_α
xchain0_n28_α:
# IR_VAR gva
bb29_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain0_n30_α
 xchain0_n28_β:
 jmp xchain0_n15_α
xchain0_n29_α:
# IR_LIT_INTEGER
bb30_α:
 mov qword ptr [r12 + 768], 6
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp xchain0_n34_α
.Lx35_0:
 .quad 500
xchain0_n30_α:
# IR_VAR gva
bb31_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp xchain0_n15_α
xchain0_n31_α:
bb32_α:
# BOX IR_CALL LT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+752] -> [r12+720]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
# marshal arg1 = producer-box slot [r12+768] -> [r12+736]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn38: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 720]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain0_n34_α
 jmp xchain0_n33_α
 xchain0_n31_β:
 jmp xchain0_n34_α
xchain0_n32_α:
# IR_SUBSCRIPT x[i] variable
bb33_α:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n15_α
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain0_n35_α
 xchain0_n32_β:
 jmp xchain0_n15_α
xchain0_n33_α:
# IR_VAR gva
bb34_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain0_n36_α
 xchain0_n33_β:
 jmp xchain0_n34_α
xchain0_n34_α:
# IR_VAR gva
bb35_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain0_n37_α
 xchain0_n34_β:
 jmp xchain0_n44_α
xchain0_n35_α:
# IR_VAR gva
bb36_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n38_α
 xchain0_n35_β:
 jmp xchain0_n15_α
xchain0_n36_α:
# IR_LIT_INTEGER
bb37_α:
 mov qword ptr [r12 + 816], 6
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain0_n39_α
 xchain0_n36_β:
 jmp xchain0_n34_α
.Lx43_0:
 .quad 1
xchain0_n37_α:
# IR_LIT_INTEGER
bb38_α:
 mov qword ptr [r12 + 1040], 6
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain0_n40_α
 xchain0_n37_β:
 jmp xchain0_n44_α
.Lx44_0:
 .quad 5000
xchain0_n38_α:
# IR_LIT_INTEGER
bb39_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n41_α
 xchain0_n38_β:
 jmp xchain0_n15_α
.Lx45_0:
 .quad 2
xchain0_n39_α:
bb40_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 800]
 cmp eax, 100
 je .Lx46_0
 mov eax, dword ptr [r12 + 816]
 cmp eax, 100
 je .Lx46_0
 mov eax, dword ptr [r12 + 800]
 cmp eax, 6
 jne .Lx46_2
 mov eax, dword ptr [r12 + 816]
 cmp eax, 6
 jne .Lx46_2
.Lx46_1:
 mov rax, qword ptr [r12 + 808]
 mov rcx, qword ptr [r12 + 824]
 add rax, rcx
 mov qword ptr [r12 + 784], 6
 mov qword ptr [r12 + 792], rax
 jmp xchain0_n42_α
.Lx46_0:
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, qword ptr [r12 + 816]
 mov rcx, qword ptr [r12 + 824]
 mov r8d, 0
 lea r9, [r12 + 784]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx46_3
.Lx46_2:
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, qword ptr [r12 + 816]
 mov rcx, qword ptr [r12 + 824]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n34_α
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
.Lx46_3:
 jmp xchain0_n42_α
 xchain0_n39_β:
 jmp xchain0_n34_α
xchain0_n40_α:
bb41_α:
# BOX IR_CALL LT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1024] -> [r12+992]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
# marshal arg1 = producer-box slot [r12+1040] -> [r12+1008]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn48: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn48]
 lea rsi, [r12 + 992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain0_n44_α
 jmp xchain0_n43_α
 xchain0_n40_β:
 jmp xchain0_n44_α
xchain0_n41_α:
bb42_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 560]
 cmp eax, 100
 je .Lx49_0
 mov eax, dword ptr [r12 + 576]
 cmp eax, 100
 je .Lx49_0
 mov eax, dword ptr [r12 + 560]
 cmp eax, 6
 jne .Lx49_2
 mov eax, dword ptr [r12 + 576]
 cmp eax, 6
 jne .Lx49_2
.Lx49_1:
 mov rax, qword ptr [r12 + 568]
 mov rcx, qword ptr [r12 + 584]
 imul rax, rcx
 mov qword ptr [r12 + 544], 6
 mov qword ptr [r12 + 552], rax
 jmp xchain0_n45_α
.Lx49_0:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 mov r8d, 2
 lea r9, [r12 + 544]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx49_3
.Lx49_2:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n15_α
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
.Lx49_3:
 jmp xchain0_n45_α
 xchain0_n41_β:
 jmp xchain0_n15_α
xchain0_n42_α:
bb43_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 call str_concat_d@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain0_n46_α
 xchain0_n42_β:
 jmp xchain0_n34_α
xchain0_n43_α:
# IR_VAR gva
bb44_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain0_n47_α
 xchain0_n43_β:
 jmp xchain0_n44_α
xchain0_n44_α:
bb45_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn53: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn53]
 lea rsi, [r12 + 1136]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n48_α
 xchain0_n44_β:
 jmp xchain0_n49_α
xchain0_n45_α:
# IR_ASSIGN_VAR write through variable
bb46_α:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 552]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n15_α
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain0_n15_α
 xchain0_n45_β:
 jmp xchain0_n15_α
xchain0_n46_α:
# IR_ASSIGN gva
bb47_α:
 mov rax, qword ptr [r12 + 688]
 mov rdx, qword ptr [r12 + 696]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain0_n50_α
 xchain0_n46_β:
 jmp xchain0_n34_α
xchain0_n47_α:
# IR_LIT_INTEGER
bb48_α:
 mov qword ptr [r12 + 1088], 6
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [r12 + 1096], rax
 jmp xchain0_n51_α
 xchain0_n47_β:
 jmp xchain0_n44_α
.Lx56_0:
 .quad 1
xchain0_n48_α:
# IR_ASSIGN gva
bb49_α:
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain0_n49_α
 xchain0_n48_β:
 jmp xchain0_n49_α
xchain0_n49_α:
# IR_LIT_STRING
bb50_α:
 mov qword ptr [r12 + 1168], 1
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [r12 + 1176], rax
 jmp xchain0_n52_α
 xchain0_n49_β:
 jmp xchain0_n59_α
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "result: "
xchain0_n50_α:
# IR_VAR gva
bb51_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain0_n53_α
 xchain0_n50_β:
 jmp xchain0_n27_α
xchain0_n51_α:
bb52_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1072]
 cmp eax, 100
 je .Lx60_0
 mov eax, dword ptr [r12 + 1088]
 cmp eax, 100
 je .Lx60_0
 mov eax, dword ptr [r12 + 1072]
 cmp eax, 6
 jne .Lx60_2
 mov eax, dword ptr [r12 + 1088]
 cmp eax, 6
 jne .Lx60_2
.Lx60_1:
 mov rax, qword ptr [r12 + 1080]
 mov rcx, qword ptr [r12 + 1096]
 add rax, rcx
 mov qword ptr [r12 + 1056], 6
 mov qword ptr [r12 + 1064], rax
 jmp xchain0_n54_α
.Lx60_0:
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 mov rdx, qword ptr [r12 + 1088]
 mov rcx, qword ptr [r12 + 1096]
 mov r8d, 0
 lea r9, [r12 + 1056]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx60_3
.Lx60_2:
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 mov rdx, qword ptr [r12 + 1088]
 mov rcx, qword ptr [r12 + 1096]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n44_α
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
.Lx60_3:
 jmp xchain0_n54_α
 xchain0_n51_β:
 jmp xchain0_n44_α
xchain0_n52_α:
# IR_VAR gva
bb53_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain0_n55_α
 xchain0_n52_β:
 jmp xchain0_n59_α
xchain0_n53_α:
# IR_VAR gva
bb54_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain0_n56_α
 xchain0_n53_β:
 jmp xchain0_n27_α
xchain0_n54_α:
bb55_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1056]
 mov rcx, qword ptr [r12 + 1064]
 call str_concat_d@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain0_n57_α
 xchain0_n54_β:
 jmp xchain0_n44_α
xchain0_n55_α:
bb56_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 mov rdx, qword ptr [r12 + 1184]
 mov rcx, qword ptr [r12 + 1192]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain0_n58_α
 xchain0_n55_β:
 jmp xchain0_n59_α
xchain0_n56_α:
# IR_VAR gva
bb57_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain0_n60_α
 xchain0_n56_β:
 jmp xchain0_n27_α
xchain0_n57_α:
# IR_ASSIGN gva
bb58_α:
 mov rax, qword ptr [r12 + 960]
 mov rdx, qword ptr [r12 + 968]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain0_n10_α
 xchain0_n57_β:
 jmp xchain0_n44_α
xchain0_n58_α:
# IR_ASSIGN global
bb59_α:
 mov rsi, qword ptr [r12 + 1152]
 mov rdx, qword ptr [r12 + 1160]
 mov rdi, qword ptr [rip + .Lx67_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain0_n59_α
 xchain0_n58_β:
 jmp xchain0_n59_α
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "OUTPUT"
xchain0_n59_α:
# IR_LIT_STRING
bb60_α:
 mov qword ptr [r12 + 1232], 1
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [r12 + 1240], rax
 jmp xchain0_n61_α
 xchain0_n59_β:
 jmp main_γ
.Lx68_0:
 .quad .Lx68_0_s
.Lx68_0_s:
 .string "ms: "
xchain0_n60_α:
# IR_SUBSCRIPT x[i] variable
bb61_α:
 mov rdi, qword ptr [r12 + 880]
 mov rsi, qword ptr [r12 + 888]
 mov rdx, qword ptr [r12 + 896]
 mov rcx, qword ptr [r12 + 904]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n27_α
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain0_n62_α
 xchain0_n60_β:
 jmp xchain0_n27_α
xchain0_n61_α:
# IR_VAR gva
bb62_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain0_n63_α
 xchain0_n61_β:
 jmp main_γ
xchain0_n62_α:
# IR_DEREF variable -> value
bb63_α:
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n27_α
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain0_n64_α
 xchain0_n62_β:
 jmp xchain0_n27_α
xchain0_n63_α:
# IR_VAR gva
bb64_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain0_n65_α
 xchain0_n63_β:
 jmp main_γ
xchain0_n64_α:
bb65_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 864]
 cmp eax, 100
 je .Lx73_0
 mov eax, dword ptr [r12 + 928]
 cmp eax, 100
 je .Lx73_0
 mov eax, dword ptr [r12 + 864]
 cmp eax, 6
 jne .Lx73_2
 mov eax, dword ptr [r12 + 928]
 cmp eax, 6
 jne .Lx73_2
.Lx73_1:
 mov rax, qword ptr [r12 + 872]
 mov rcx, qword ptr [r12 + 936]
 add rax, rcx
 mov qword ptr [r12 + 848], 6
 mov qword ptr [r12 + 856], rax
 jmp xchain0_n66_α
.Lx73_0:
 mov rdi, qword ptr [r12 + 864]
 mov rsi, qword ptr [r12 + 872]
 mov rdx, qword ptr [r12 + 928]
 mov rcx, qword ptr [r12 + 936]
 mov r8d, 0
 lea r9, [r12 + 848]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx73_3
.Lx73_2:
 mov rdi, qword ptr [r12 + 864]
 mov rsi, qword ptr [r12 + 872]
 mov rdx, qword ptr [r12 + 928]
 mov rcx, qword ptr [r12 + 936]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n27_α
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
.Lx73_3:
 jmp xchain0_n66_α
 xchain0_n64_β:
 jmp xchain0_n27_α
xchain0_n65_α:
bb66_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1264]
 cmp eax, 100
 je .Lx74_0
 mov eax, dword ptr [r12 + 1280]
 cmp eax, 100
 je .Lx74_0
 mov eax, dword ptr [r12 + 1264]
 cmp eax, 6
 jne .Lx74_2
 mov eax, dword ptr [r12 + 1280]
 cmp eax, 6
 jne .Lx74_2
.Lx74_1:
 mov rax, qword ptr [r12 + 1272]
 mov rcx, qword ptr [r12 + 1288]
 sub rax, rcx
 mov qword ptr [r12 + 1248], 6
 mov qword ptr [r12 + 1256], rax
 jmp xchain0_n67_α
.Lx74_0:
 mov rdi, qword ptr [r12 + 1264]
 mov rsi, qword ptr [r12 + 1272]
 mov rdx, qword ptr [r12 + 1280]
 mov rcx, qword ptr [r12 + 1288]
 mov r8d, 1
 lea r9, [r12 + 1248]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx74_3
.Lx74_2:
 mov rdi, qword ptr [r12 + 1264]
 mov rsi, qword ptr [r12 + 1272]
 mov rdx, qword ptr [r12 + 1280]
 mov rcx, qword ptr [r12 + 1288]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
.Lx74_3:
 jmp xchain0_n67_α
 xchain0_n65_β:
 jmp main_γ
xchain0_n66_α:
# IR_ASSIGN gva
bb67_α:
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain0_n27_α
 xchain0_n66_β:
 jmp xchain0_n27_α
xchain0_n67_α:
bb68_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1232]
 mov rsi, qword ptr [r12 + 1240]
 mov rdx, qword ptr [r12 + 1248]
 mov rcx, qword ptr [r12 + 1256]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain0_n68_α
 xchain0_n67_β:
 jmp main_γ
xchain0_n68_α:
# IR_ASSIGN global
bb69_α:
 mov rsi, qword ptr [r12 + 1216]
 mov rdx, qword ptr [r12 + 1224]
 mov rdi, qword ptr [rip + .Lx77_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp main_γ
 xchain0_n68_β:
 jmp main_γ
.Lx77_0:
 .quad .Lx77_0_s
.Lx77_0_s:
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
