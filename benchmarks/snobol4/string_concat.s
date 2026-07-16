  .intel_syntax noprefix
  .text
  .section .rodata
  .Lgvan0: .string "T1"
  .Lgvan1: .string "S"
  .Lgvan2: .string "N"
  .Lgvan3: .string "T2"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  mov edi, 4
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 4
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
  mov qword ptr [rsp + 1304], rsp
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
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rdx
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n8_α
# IR_LIT_STRING
 xchain0_n8_α:
 mov qword ptr [rsp + 416], 1
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [rsp + 424], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n10_α
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string ""
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
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rsp + 448], rax
 mov qword ptr [rsp + 456], rdx
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n12_α
# IR_VAR
 xchain0_n12_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
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
 .quad 100000
 xchain0_n14_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn19: .string "TIME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn19]
 lea rsi, [rsp + 944]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rsp + 928], rax
 mov qword ptr [rsp + 936], rdx
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
 mov rax, qword ptr [rsp + 928]
 mov rdx, qword ptr [rsp + 936]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rsp + 912], rax
 mov qword ptr [rsp + 920], rdx
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n17_α
# IR_LIT_STRING
 xchain0_n17_α:
 mov qword ptr [rsp + 1008], 1
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [rsp + 1016], rax
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
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rsp + 1088], rax
 mov qword ptr [rsp + 1096], rdx
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
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1056]
 mov rax, qword ptr [rsp + 1088]
 mov qword ptr [rsp + 1056], rax
 mov rax, qword ptr [rsp + 1096]
 mov qword ptr [rsp + 1064], rax
  .section .rodata
  .Lrkfn30: .string "SIZE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn30]
 lea rsi, [rsp + 1056]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rsp + 1040], rax
 mov qword ptr [rsp + 1048], rdx
 cmp eax, 99
 je xchain0_n22_α
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n22_α
# IR_LIT_STRING
 xchain0_n22_α:
 mov qword ptr [rsp + 1168], 1
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [rsp + 1176], rax
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp main_γ
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string "ms: "
# IR_VAR
 xchain0_n23_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rsp + 736], rax
 mov qword ptr [rsp + 744], rdx
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n14_α
 xchain0_n24_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 1008]
 mov rsi, qword ptr [rsp + 1016]
 mov rdx, qword ptr [rsp + 1040]
 mov rcx, qword ptr [rsp + 1048]
 call str_concat_d@PLT
 mov qword ptr [rsp + 976], rax
 mov qword ptr [rsp + 984], rdx
 jmp xchain0_n27_α
 xchain0_n24_β:
 jmp xchain0_n22_α
# IR_VAR
 xchain0_n25_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rsp + 1232], rax
 mov qword ptr [rsp + 1240], rdx
 jmp xchain0_n28_α
 xchain0_n25_β:
 jmp main_γ
# IR_LIT_INTEGER
 xchain0_n26_α:
 mov qword ptr [rsp + 768], 6
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [rsp + 776], rax
 jmp xchain0_n29_α
 xchain0_n26_β:
 jmp xchain0_n14_α
.Lx35_0:
 .quad 1
# IR_ASSIGN global
 xchain0_n27_α:
 mov rsi, qword ptr [rsp + 976]
 mov rdx, qword ptr [rsp + 984]
 mov rdi, qword ptr [rip + .Lx36_0]
 call NV_SET_fn@PLT
 mov qword ptr [rsp + 960], rax
 mov qword ptr [rsp + 968], rdx
 jmp xchain0_n22_α
 xchain0_n27_β:
 jmp xchain0_n22_α
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain0_n28_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rsp + 1264], rax
 mov qword ptr [rsp + 1272], rdx
 jmp xchain0_n30_α
 xchain0_n28_β:
 jmp main_γ
 xchain0_n29_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 736]
 cmp eax, 100
 je .Lx38_0
 mov eax, dword ptr [rsp + 736]
 cmp eax, 6
 jne .Lx38_2
.Lx38_1:
 mov rax, qword ptr [rsp + 744]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rsp + 704], 6
 mov qword ptr [rsp + 712], rax
 jmp xchain0_n31_α
.Lx38_0:
 mov rdi, qword ptr [rsp + 736]
 mov rsi, qword ptr [rsp + 744]
 mov rdx, qword ptr [rsp + 768]
 mov rcx, qword ptr [rsp + 776]
 mov r8d, 0
 lea r9, [rsp + 704]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx38_3
.Lx38_2:
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
.Lx38_3:
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp xchain0_n14_α
 xchain0_n30_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 1232]
 cmp eax, 100
 je .Lx39_0
 mov eax, dword ptr [rsp + 1264]
 cmp eax, 100
 je .Lx39_0
 mov eax, dword ptr [rsp + 1232]
 cmp eax, 6
 jne .Lx39_2
 mov eax, dword ptr [rsp + 1264]
 cmp eax, 6
 jne .Lx39_2
.Lx39_1:
 mov rax, qword ptr [rsp + 1240]
 mov rcx, qword ptr [rsp + 1272]
 sub rax, rcx
 mov qword ptr [rsp + 1200], 6
 mov qword ptr [rsp + 1208], rax
 jmp xchain0_n32_α
.Lx39_0:
 mov rdi, qword ptr [rsp + 1232]
 mov rsi, qword ptr [rsp + 1240]
 mov rdx, qword ptr [rsp + 1264]
 mov rcx, qword ptr [rsp + 1272]
 mov r8d, 1
 lea r9, [rsp + 1200]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx39_3
.Lx39_2:
 mov rdi, qword ptr [rsp + 1232]
 mov rsi, qword ptr [rsp + 1240]
 mov rdx, qword ptr [rsp + 1264]
 mov rcx, qword ptr [rsp + 1272]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [rsp + 1200], rax
 mov qword ptr [rsp + 1208], rdx
.Lx39_3:
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp main_γ
 xchain0_n31_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 544]
 mov rsi, qword ptr [rsp + 552]
 mov rdx, qword ptr [rsp + 704]
 mov rcx, qword ptr [rsp + 712]
 call str_concat_d@PLT
 mov qword ptr [rsp + 512], rax
 mov qword ptr [rsp + 520], rdx
 jmp xchain0_n33_α
 xchain0_n31_β:
 jmp xchain0_n14_α
 xchain0_n32_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 1168]
 mov rsi, qword ptr [rsp + 1176]
 mov rdx, qword ptr [rsp + 1200]
 mov rcx, qword ptr [rsp + 1208]
 call str_concat_d@PLT
 mov qword ptr [rsp + 1136], rax
 mov qword ptr [rsp + 1144], rdx
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain0_n33_α:
 mov rax, qword ptr [rsp + 512]
 mov rdx, qword ptr [rsp + 520]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rsp + 496], rax
 mov qword ptr [rsp + 504], rdx
 jmp xchain0_n35_α
 xchain0_n33_β:
 jmp xchain0_n14_α
# IR_ASSIGN global
 xchain0_n34_α:
 mov rsi, qword ptr [rsp + 1136]
 mov rdx, qword ptr [rsp + 1144]
 mov rdi, qword ptr [rip + .Lx43_0]
 call NV_SET_fn@PLT
 mov qword ptr [rsp + 1120], rax
 mov qword ptr [rsp + 1128], rdx
 jmp main_γ
 xchain0_n34_β:
 jmp main_γ
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain0_n35_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rsp + 848], rax
 mov qword ptr [rsp + 856], rdx
 jmp xchain0_n36_α
 xchain0_n35_β:
 jmp xchain0_n12_α
# IR_LIT_STRING
 xchain0_n36_α:
 mov qword ptr [rsp + 880], 1
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [rsp + 888], rax
 jmp xchain0_n37_α
 xchain0_n36_β:
 jmp xchain0_n12_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "x"
 xchain0_n37_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 848]
 mov rsi, qword ptr [rsp + 856]
 mov rdx, qword ptr [rsp + 880]
 mov rcx, qword ptr [rsp + 888]
 call str_concat_d@PLT
 mov qword ptr [rsp + 816], rax
 mov qword ptr [rsp + 824], rdx
 jmp xchain0_n38_α
 xchain0_n37_β:
 jmp xchain0_n12_α
# IR_ASSIGN gva
 xchain0_n38_α:
 mov rax, qword ptr [rsp + 816]
 mov rdx, qword ptr [rsp + 824]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rsp + 800], rax
 mov qword ptr [rsp + 808], rdx
 jmp xchain0_n12_α
 xchain0_n38_β:
 jmp xchain0_n12_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rsp + 1304]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rsp + 1304]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
add rsp, 65544
ret
