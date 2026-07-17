  .intel_syntax noprefix
  .text
  .section .rodata
  .Lgvan0: .string "T1"
  .Lgvan1: .string "N"
  .Lgvan2: .string "T2"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  mov edi, 3
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 3
  call gva_register@PLT
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
  mov qword ptr [rsp + 1144], rsp
  mov r12, qword ptr [1879048192]
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
 .quad 10000000
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
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
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
 .quad 0
# IR_ASSIGN gva
 xchain0_n9_α:
 mov rax, qword ptr [rsp + 416]
 mov rdx, qword ptr [rsp + 424]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rsp + 400], rax
 mov qword ptr [rsp + 408], rdx
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n10_α
# IR_VAR
 xchain0_n10_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rsp + 496], rax
 mov qword ptr [rsp + 504], rdx
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n12_α
# IR_LIT_INTEGER
 xchain0_n11_α:
 mov qword ptr [rsp + 528], 6
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [rsp + 536], rax
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n12_α
.Lx15_0:
 .quad 1
# IR_VAR
 xchain0_n12_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rsp + 736], rax
 mov qword ptr [rsp + 744], rdx
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n15_α
 xchain0_n13_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 496]
 cmp eax, 100
 je .Lx17_0
 mov eax, dword ptr [rsp + 496]
 cmp eax, 6
 jne .Lx17_2
.Lx17_1:
 mov rax, qword ptr [rsp + 504]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rsp + 464], 6
 mov qword ptr [rsp + 472], rax
 jmp xchain0_n16_α
.Lx17_0:
 mov rdi, qword ptr [rsp + 496]
 mov rsi, qword ptr [rsp + 504]
 mov rdx, qword ptr [rsp + 528]
 mov rcx, qword ptr [rsp + 536]
 mov r8d, 0
 lea r9, [rsp + 464]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx17_3
.Lx17_2:
 mov rdi, qword ptr [rsp + 496]
 mov rsi, qword ptr [rsp + 504]
 mov rdx, qword ptr [rsp + 528]
 mov rcx, qword ptr [rsp + 536]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n12_α
 mov qword ptr [rsp + 464], rax
 mov qword ptr [rsp + 472], rdx
.Lx17_3:
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n12_α
# IR_LIT_INTEGER
 xchain0_n14_α:
 mov qword ptr [rsp + 704], 6
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [rsp + 712], rax
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp xchain0_n15_α
.Lx18_0:
 .quad 1000000
 xchain0_n15_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn20: .string "TIME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn20]
 lea rsi, [rsp + 832]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rsp + 816], rax
 mov qword ptr [rsp + 824], rdx
 cmp eax, 99
 je xchain0_n19_α
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n19_α
# IR_ASSIGN gva
 xchain0_n16_α:
 mov rax, qword ptr [rsp + 464]
 mov rdx, qword ptr [rsp + 472]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rsp + 448], rax
 mov qword ptr [rsp + 456], rdx
 jmp xchain0_n12_α
 xchain0_n16_β:
 jmp xchain0_n12_α
# IR_COERCE_NUMERIC
 xchain0_n17_α:
 mov eax, dword ptr [rsp + 736]
 cmp eax, 7
 je .Lx23_1
 cmp eax, 6
 jne .Lx23_0
 mov eax, dword ptr [rsp + 704]
 cmp eax, 6
 jne .Lx23_0
.Lx23_1:
 mov rax, qword ptr [rsp + 736]
 mov qword ptr [rsp + 672], rax
 mov rax, qword ptr [rsp + 744]
 mov qword ptr [rsp + 680], rax
 jmp .Lx23_2
.Lx23_0:
 lea rdi, [rsp + 736]
 lea rsi, [rsp + 704]
 lea rdx, [rsp + 672]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx23_2:
 jmp xchain0_n20_α
 xchain0_n17_β:
 jmp xchain0_n15_α
# IR_ASSIGN gva
 xchain0_n18_α:
 mov rax, qword ptr [rsp + 816]
 mov rdx, qword ptr [rsp + 824]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rsp + 800], rax
 mov qword ptr [rsp + 808], rdx
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp xchain0_n19_α
# IR_LIT_STRING
 xchain0_n19_α:
 mov qword ptr [rsp + 896], 1
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [rsp + 904], rax
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n24_α
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string "iterations: "
# IR_COERCE_NUMERIC
 xchain0_n20_α:
 mov eax, dword ptr [rsp + 704]
 cmp eax, 7
 je .Lx27_1
 cmp eax, 6
 jne .Lx27_0
 mov eax, dword ptr [rsp + 736]
 cmp eax, 6
 jne .Lx27_0
.Lx27_1:
 mov rax, qword ptr [rsp + 704]
 mov qword ptr [rsp + 640], rax
 mov rax, qword ptr [rsp + 712]
 mov qword ptr [rsp + 648], rax
 jmp .Lx27_2
.Lx27_0:
 lea rdi, [rsp + 704]
 lea rsi, [rsp + 736]
 lea rdx, [rsp + 640]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
.Lx27_2:
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n15_α
# IR_VAR
 xchain0_n21_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rsp + 928], rax
 mov qword ptr [rsp + 936], rdx
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n24_α
# IR_CMP_TEST
 xchain0_n22_α:
 lea rdi, [rsp + 672]
 lea rsi, [rsp + 640]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain0_n15_α
 mov qword ptr [rsp + 608], 0
 mov qword ptr [rsp + 616], 0
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp xchain0_n15_α
 xchain0_n23_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 896]
 mov rsi, qword ptr [rsp + 904]
 mov rdx, qword ptr [rsp + 928]
 mov rcx, qword ptr [rsp + 936]
 call str_concat_d@PLT
 mov qword ptr [rsp + 864], rax
 mov qword ptr [rsp + 872], rdx
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n24_α
# IR_LIT_STRING
 xchain0_n24_α:
 mov qword ptr [rsp + 1008], 1
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [rsp + 1016], rax
 jmp xchain0_n27_α
 xchain0_n24_β:
 jmp main_γ
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "ms: "
# IR_VAR
 xchain0_n25_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rsp + 768], rax
 mov qword ptr [rsp + 776], rdx
 jmp xchain0_n28_α
 xchain0_n25_β:
 jmp xchain0_n15_α
# IR_ASSIGN global
 xchain0_n26_α:
 mov rsi, qword ptr [rsp + 864]
 mov rdx, qword ptr [rsp + 872]
 mov rdi, qword ptr [rip + .Lx34_0]
 call NV_SET_fn@PLT
 mov qword ptr [rsp + 848], rax
 mov qword ptr [rsp + 856], rdx
 jmp xchain0_n24_α
 xchain0_n26_β:
 jmp xchain0_n24_α
.Lx34_0:
 .quad .Lx34_0_s
.Lx34_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain0_n27_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rsp + 1072], rax
 mov qword ptr [rsp + 1080], rdx
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp main_γ
 xchain0_n28_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 608]
 mov rsi, qword ptr [rsp + 616]
 mov rdx, qword ptr [rsp + 768]
 mov rcx, qword ptr [rsp + 776]
 call str_concat_d@PLT
 mov qword ptr [rsp + 576], rax
 mov qword ptr [rsp + 584], rdx
 jmp xchain0_n30_α
 xchain0_n28_β:
 jmp xchain0_n15_α
# IR_VAR
 xchain0_n29_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rsp + 1104], rax
 mov qword ptr [rsp + 1112], rdx
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain0_n30_α:
 mov rax, qword ptr [rsp + 576]
 mov rdx, qword ptr [rsp + 584]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rsp + 560], rax
 mov qword ptr [rsp + 568], rdx
 jmp xchain0_n10_α
 xchain0_n30_β:
 jmp xchain0_n15_α
 xchain0_n31_α:
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
 sub rax, rcx
 mov qword ptr [rsp + 1040], 6
 mov qword ptr [rsp + 1048], rax
 jmp xchain0_n32_α
.Lx39_0:
 mov rdi, qword ptr [rsp + 1072]
 mov rsi, qword ptr [rsp + 1080]
 mov rdx, qword ptr [rsp + 1104]
 mov rcx, qword ptr [rsp + 1112]
 mov r8d, 1
 lea r9, [rsp + 1040]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx39_3
.Lx39_2:
 mov rdi, qword ptr [rsp + 1072]
 mov rsi, qword ptr [rsp + 1080]
 mov rdx, qword ptr [rsp + 1104]
 mov rcx, qword ptr [rsp + 1112]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [rsp + 1040], rax
 mov qword ptr [rsp + 1048], rdx
.Lx39_3:
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp main_γ
 xchain0_n32_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 1008]
 mov rsi, qword ptr [rsp + 1016]
 mov rdx, qword ptr [rsp + 1040]
 mov rcx, qword ptr [rsp + 1048]
 call str_concat_d@PLT
 mov qword ptr [rsp + 976], rax
 mov qword ptr [rsp + 984], rdx
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp main_γ
# IR_ASSIGN global
 xchain0_n33_α:
 mov rsi, qword ptr [rsp + 976]
 mov rdx, qword ptr [rsp + 984]
 mov rdi, qword ptr [rip + .Lx41_0]
 call NV_SET_fn@PLT
 mov qword ptr [rsp + 960], rax
 mov qword ptr [rsp + 968], rdx
 jmp main_γ
 xchain0_n33_β:
 jmp main_γ
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string "OUTPUT"
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rsp + 1144]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rsp + 1144]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
add rsp, 65544
ret
