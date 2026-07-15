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
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 5
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
  mov qword ptr [rsp + 1240], rsp
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
 .quad 10
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
 .quad 0
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
# IR_VAR
 xchain0_n12_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [rsp + 672], rax
 mov qword ptr [rsp + 680], rdx
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n14_α
# IR_LIT_INTEGER
 xchain0_n13_α:
 mov qword ptr [rsp + 640], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [rsp + 648], rax
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
 lea rsi, [rsp + 928]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rsp + 912], rax
 mov qword ptr [rsp + 920], rdx
 cmp eax, 99
 je xchain0_n17_α
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp xchain0_n17_α
# IR_COERCE_NUMERIC
 xchain0_n15_α:
 mov eax, dword ptr [rsp + 672]
 cmp eax, 7
 je .Lx21_1
 cmp eax, 6
 jne .Lx21_0
 mov eax, dword ptr [rsp + 640]
 cmp eax, 6
 jne .Lx21_0
.Lx21_1:
 mov rax, qword ptr [rsp + 672]
 mov qword ptr [rsp + 608], rax
 mov rax, qword ptr [rsp + 680]
 mov qword ptr [rsp + 616], rax
 jmp .Lx21_2
.Lx21_0:
 lea rdi, [rsp + 672]
 lea rsi, [rsp + 640]
 lea rdx, [rsp + 608]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx21_2:
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n14_α
# IR_ASSIGN gva
 xchain0_n16_α:
 mov rax, qword ptr [rsp + 912]
 mov rdx, qword ptr [rsp + 920]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [rsp + 896], rax
 mov qword ptr [rsp + 904], rdx
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n17_α
# IR_LIT_STRING
 xchain0_n17_α:
 mov qword ptr [rsp + 992], 1
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [rsp + 1000], rax
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n22_α
.Lx23_0:
 .quad .Lx23_0_s
.Lx23_0_s:
 .string "result: "
# IR_COERCE_NUMERIC
 xchain0_n18_α:
 mov eax, dword ptr [rsp + 640]
 cmp eax, 7
 je .Lx25_1
 cmp eax, 6
 jne .Lx25_0
 mov eax, dword ptr [rsp + 672]
 cmp eax, 6
 jne .Lx25_0
.Lx25_1:
 mov rax, qword ptr [rsp + 640]
 mov qword ptr [rsp + 576], rax
 mov rax, qword ptr [rsp + 648]
 mov qword ptr [rsp + 584], rax
 jmp .Lx25_2
.Lx25_0:
 lea rdi, [rsp + 640]
 lea rsi, [rsp + 672]
 lea rdx, [rsp + 576]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
.Lx25_2:
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n14_α
# IR_VAR
 xchain0_n19_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [rsp + 1024], rax
 mov qword ptr [rsp + 1032], rdx
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n22_α
# IR_CMP_TEST
 xchain0_n20_α:
 lea rdi, [rsp + 608]
 lea rsi, [rsp + 576]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain0_n14_α
 mov qword ptr [rsp + 544], 0
 mov qword ptr [rsp + 552], 0
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp xchain0_n14_α
 xchain0_n21_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 992]
 mov rsi, qword ptr [rsp + 1000]
 mov rdx, qword ptr [rsp + 1024]
 mov rcx, qword ptr [rsp + 1032]
 call str_concat_d@PLT
 mov qword ptr [rsp + 960], rax
 mov qword ptr [rsp + 968], rdx
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n22_α
# IR_LIT_STRING
 xchain0_n22_α:
 mov qword ptr [rsp + 1104], 1
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [rsp + 1112], rax
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp main_γ
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "ms: "
# IR_VAR
 xchain0_n23_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [rsp + 736], rax
 mov qword ptr [rsp + 744], rdx
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n14_α
# IR_ASSIGN global
 xchain0_n24_α:
 mov rsi, qword ptr [rsp + 960]
 mov rdx, qword ptr [rsp + 968]
 mov rdi, qword ptr [rip + .Lx32_0]
 call NV_SET_fn@PLT
 mov qword ptr [rsp + 944], rax
 mov qword ptr [rsp + 952], rdx
 jmp xchain0_n22_α
 xchain0_n24_β:
 jmp xchain0_n22_α
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain0_n25_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [rsp + 1168], rax
 mov qword ptr [rsp + 1176], rdx
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp main_γ
# IR_LIT_INTEGER
 xchain0_n26_α:
 mov qword ptr [rsp + 768], 6
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [rsp + 776], rax
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp xchain0_n14_α
.Lx34_0:
 .quad 1
# IR_VAR
 xchain0_n27_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [rsp + 1200], rax
 mov qword ptr [rsp + 1208], rdx
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp main_γ
 xchain0_n28_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 736]
 cmp eax, 100
 je .Lx36_0
 mov eax, dword ptr [rsp + 736]
 cmp eax, 6
 jne .Lx36_2
.Lx36_1:
 mov rax, qword ptr [rsp + 744]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rsp + 704], 6
 mov qword ptr [rsp + 712], rax
 jmp xchain0_n30_α
.Lx36_0:
 mov rdi, qword ptr [rsp + 736]
 mov rsi, qword ptr [rsp + 744]
 mov rdx, qword ptr [rsp + 768]
 mov rcx, qword ptr [rsp + 776]
 mov r8d, 0
 lea r9, [rsp + 704]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx36_3
.Lx36_2:
 mov rdi, qword ptr [rsp + 736]
 mov rsi, qword ptr [rsp + 744]
 mov rdx, qword ptr [rsp + 768]
 mov rcx, qword ptr [rsp + 776]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n14_α
 mov qword ptr [rsp + 704], rax
 mov qword ptr [rsp + 712], rdx
.Lx36_3:
 jmp xchain0_n30_α
 xchain0_n28_β:
 jmp xchain0_n14_α
 xchain0_n29_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 1168]
 cmp eax, 100
 je .Lx37_0
 mov eax, dword ptr [rsp + 1200]
 cmp eax, 100
 je .Lx37_0
 mov eax, dword ptr [rsp + 1168]
 cmp eax, 6
 jne .Lx37_2
 mov eax, dword ptr [rsp + 1200]
 cmp eax, 6
 jne .Lx37_2
.Lx37_1:
 mov rax, qword ptr [rsp + 1176]
 mov rcx, qword ptr [rsp + 1208]
 sub rax, rcx
 mov qword ptr [rsp + 1136], 6
 mov qword ptr [rsp + 1144], rax
 jmp xchain0_n31_α
.Lx37_0:
 mov rdi, qword ptr [rsp + 1168]
 mov rsi, qword ptr [rsp + 1176]
 mov rdx, qword ptr [rsp + 1200]
 mov rcx, qword ptr [rsp + 1208]
 mov r8d, 1
 lea r9, [rsp + 1136]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx37_3
.Lx37_2:
 mov rdi, qword ptr [rsp + 1168]
 mov rsi, qword ptr [rsp + 1176]
 mov rdx, qword ptr [rsp + 1200]
 mov rcx, qword ptr [rsp + 1208]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [rsp + 1136], rax
 mov qword ptr [rsp + 1144], rdx
.Lx37_3:
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp main_γ
 xchain0_n30_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 544]
 mov rsi, qword ptr [rsp + 552]
 mov rdx, qword ptr [rsp + 704]
 mov rcx, qword ptr [rsp + 712]
 call str_concat_d@PLT
 mov qword ptr [rsp + 512], rax
 mov qword ptr [rsp + 520], rdx
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp xchain0_n14_α
 xchain0_n31_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 1104]
 mov rsi, qword ptr [rsp + 1112]
 mov rdx, qword ptr [rsp + 1136]
 mov rcx, qword ptr [rsp + 1144]
 call str_concat_d@PLT
 mov qword ptr [rsp + 1072], rax
 mov qword ptr [rsp + 1080], rdx
 jmp xchain0_n33_α
 xchain0_n31_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain0_n32_α:
 mov rax, qword ptr [rsp + 512]
 mov rdx, qword ptr [rsp + 520]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [rsp + 496], rax
 mov qword ptr [rsp + 504], rdx
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n14_α
# IR_ASSIGN global
 xchain0_n33_α:
 mov rsi, qword ptr [rsp + 1072]
 mov rdx, qword ptr [rsp + 1080]
 mov rdi, qword ptr [rip + .Lx41_0]
 call NV_SET_fn@PLT
 mov qword ptr [rsp + 1056], rax
 mov qword ptr [rsp + 1064], rdx
 jmp main_γ
 xchain0_n33_β:
 jmp main_γ
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string "OUTPUT"
# IR_LIT_STRING
 xchain0_n34_α:
 mov qword ptr [rsp + 864], 1
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [rsp + 872], rax
 jmp xchain0_n35_α
 xchain0_n34_β:
 jmp xchain0_n12_α
.Lx42_0:
 .quad .Lx42_0_s
.Lx42_0_s:
 .string "X + 1"
 xchain0_n35_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
 mov rax, qword ptr [rsp + 864]
 mov qword ptr [rsp + 832], rax
 mov rax, qword ptr [rsp + 872]
 mov qword ptr [rsp + 840], rax
  .section .rodata
  .Lrkfn44: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn44]
 lea rsi, [rsp + 832]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rsp + 816], rax
 mov qword ptr [rsp + 824], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n36_α
 xchain0_n35_β:
 jmp xchain0_n12_α
# IR_ASSIGN gva
 xchain0_n36_α:
 mov rax, qword ptr [rsp + 816]
 mov rdx, qword ptr [rsp + 824]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [rsp + 800], rax
 mov qword ptr [rsp + 808], rdx
 jmp xchain0_n12_α
 xchain0_n36_β:
 jmp xchain0_n12_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rsp + 1240]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rsp + 1240]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
add rsp, 65544
ret
