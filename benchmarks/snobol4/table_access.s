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
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  mov edi, 6
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 6
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
  mov qword ptr [rsp + 2344], rsp
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
# IR_LIT_INTEGER
 xchain0_n10_α:
 mov qword ptr [rsp + 512], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [rsp + 520], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n13_α
.Lx14_0:
 .quad 512
 xchain0_n11_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [rsp + 512]
 mov qword ptr [rsp + 480], rax
 mov rax, qword ptr [rsp + 520]
 mov qword ptr [rsp + 488], rax
  .section .rodata
  .Lrkfn16: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn16]
 lea rsi, [rsp + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rsp + 464], rax
 mov qword ptr [rsp + 472], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n13_α
# IR_ASSIGN gva
 xchain0_n12_α:
 mov rax, qword ptr [rsp + 464]
 mov rdx, qword ptr [rsp + 472]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rsp + 448], rax
 mov qword ptr [rsp + 456], rdx
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n13_α
# IR_LIT_INTEGER
 xchain0_n13_α:
 mov qword ptr [rsp + 560], 6
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [rsp + 568], rax
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n15_α
.Lx18_0:
 .quad 0
# IR_ASSIGN gva
 xchain0_n14_α:
 mov rax, qword ptr [rsp + 560]
 mov rdx, qword ptr [rsp + 568]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rsp + 544], rax
 mov qword ptr [rsp + 552], rdx
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n15_α
# IR_VAR
 xchain0_n15_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rsp + 768], rax
 mov qword ptr [rsp + 776], rdx
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n17_α
# IR_LIT_INTEGER
 xchain0_n16_α:
 mov qword ptr [rsp + 736], 6
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [rsp + 744], rax
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n17_α
.Lx21_0:
 .quad 500
# IR_LIT_INTEGER
 xchain0_n17_α:
 mov qword ptr [rsp + 1120], 6
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [rsp + 1128], rax
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n21_α
.Lx22_0:
 .quad 0
# IR_COERCE_NUMERIC
 xchain0_n18_α:
 mov eax, dword ptr [rsp + 768]
 cmp eax, 7
 je .Lx24_1
 cmp eax, 6
 jne .Lx24_0
 mov eax, dword ptr [rsp + 736]
 cmp eax, 6
 jne .Lx24_0
.Lx24_1:
 mov rax, qword ptr [rsp + 768]
 mov qword ptr [rsp + 704], rax
 mov rax, qword ptr [rsp + 776]
 mov qword ptr [rsp + 712], rax
 jmp .Lx24_2
.Lx24_0:
 lea rdi, [rsp + 768]
 lea rsi, [rsp + 736]
 lea rdx, [rsp + 704]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx24_2:
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n17_α
# IR_ASSIGN gva
 xchain0_n19_α:
 mov rax, qword ptr [rsp + 1120]
 mov rdx, qword ptr [rsp + 1128]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rsp + 1104], rax
 mov qword ptr [rsp + 1112], rdx
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n21_α
# IR_COERCE_NUMERIC
 xchain0_n20_α:
 mov eax, dword ptr [rsp + 736]
 cmp eax, 7
 je .Lx27_1
 cmp eax, 6
 jne .Lx27_0
 mov eax, dword ptr [rsp + 768]
 cmp eax, 6
 jne .Lx27_0
.Lx27_1:
 mov rax, qword ptr [rsp + 736]
 mov qword ptr [rsp + 672], rax
 mov rax, qword ptr [rsp + 744]
 mov qword ptr [rsp + 680], rax
 jmp .Lx27_2
.Lx27_0:
 lea rdi, [rsp + 736]
 lea rsi, [rsp + 768]
 lea rdx, [rsp + 672]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
.Lx27_2:
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n17_α
# IR_LIT_INTEGER
 xchain0_n21_α:
 mov qword ptr [rsp + 1168], 6
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [rsp + 1176], rax
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n25_α
.Lx28_0:
 .quad 0
# IR_CMP_TEST
 xchain0_n22_α:
 lea rdi, [rsp + 704]
 lea rsi, [rsp + 672]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain0_n17_α
 mov qword ptr [rsp + 640], 0
 mov qword ptr [rsp + 648], 0
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n17_α
# IR_ASSIGN gva
 xchain0_n23_α:
 mov rax, qword ptr [rsp + 1168]
 mov rdx, qword ptr [rsp + 1176]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rsp + 1152], rax
 mov qword ptr [rsp + 1160], rdx
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp xchain0_n25_α
# IR_VAR
 xchain0_n24_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rsp + 832], rax
 mov qword ptr [rsp + 840], rdx
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n17_α
# IR_VAR
 xchain0_n25_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rsp + 1376], rax
 mov qword ptr [rsp + 1384], rdx
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp xchain0_n28_α
# IR_LIT_INTEGER
 xchain0_n26_α:
 mov qword ptr [rsp + 864], 6
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [rsp + 872], rax
 jmp xchain0_n29_α
 xchain0_n26_β:
 jmp xchain0_n17_α
.Lx34_0:
 .quad 1
# IR_LIT_INTEGER
 xchain0_n27_α:
 mov qword ptr [rsp + 1344], 6
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [rsp + 1352], rax
 jmp xchain0_n30_α
 xchain0_n27_β:
 jmp xchain0_n28_α
.Lx35_0:
 .quad 500
# IR_VAR
 xchain0_n28_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rsp + 1872], rax
 mov qword ptr [rsp + 1880], rdx
 jmp xchain0_n31_α
 xchain0_n28_β:
 jmp xchain0_n32_α
 xchain0_n29_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 832]
 cmp eax, 100
 je .Lx37_0
 mov eax, dword ptr [rsp + 832]
 cmp eax, 6
 jne .Lx37_2
.Lx37_1:
 mov rax, qword ptr [rsp + 840]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rsp + 800], 6
 mov qword ptr [rsp + 808], rax
 jmp xchain0_n33_α
.Lx37_0:
 mov rdi, qword ptr [rsp + 832]
 mov rsi, qword ptr [rsp + 840]
 mov rdx, qword ptr [rsp + 864]
 mov rcx, qword ptr [rsp + 872]
 mov r8d, 0
 lea r9, [rsp + 800]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx37_3
.Lx37_2:
 mov rdi, qword ptr [rsp + 832]
 mov rsi, qword ptr [rsp + 840]
 mov rdx, qword ptr [rsp + 864]
 mov rcx, qword ptr [rsp + 872]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n17_α
 mov qword ptr [rsp + 800], rax
 mov qword ptr [rsp + 808], rdx
.Lx37_3:
 jmp xchain0_n33_α
 xchain0_n29_β:
 jmp xchain0_n17_α
# IR_COERCE_NUMERIC
 xchain0_n30_α:
 mov eax, dword ptr [rsp + 1376]
 cmp eax, 7
 je .Lx39_1
 cmp eax, 6
 jne .Lx39_0
 mov eax, dword ptr [rsp + 1344]
 cmp eax, 6
 jne .Lx39_0
.Lx39_1:
 mov rax, qword ptr [rsp + 1376]
 mov qword ptr [rsp + 1312], rax
 mov rax, qword ptr [rsp + 1384]
 mov qword ptr [rsp + 1320], rax
 jmp .Lx39_2
.Lx39_0:
 lea rdi, [rsp + 1376]
 lea rsi, [rsp + 1344]
 lea rdx, [rsp + 1312]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx39_2:
 jmp xchain0_n34_α
 xchain0_n30_β:
 jmp xchain0_n28_α
# IR_LIT_INTEGER
 xchain0_n31_α:
 mov qword ptr [rsp + 1840], 6
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [rsp + 1848], rax
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
 lea rsi, [rsp + 2032]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rsp + 2016], rax
 mov qword ptr [rsp + 2024], rdx
 cmp eax, 99
 je xchain0_n37_α
 jmp xchain0_n36_α
 xchain0_n32_β:
 jmp xchain0_n37_α
 xchain0_n33_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 640]
 mov rsi, qword ptr [rsp + 648]
 mov rdx, qword ptr [rsp + 800]
 mov rcx, qword ptr [rsp + 808]
 call str_concat_d@PLT
 mov qword ptr [rsp + 608], rax
 mov qword ptr [rsp + 616], rdx
 jmp xchain0_n38_α
 xchain0_n33_β:
 jmp xchain0_n17_α
# IR_COERCE_NUMERIC
 xchain0_n34_α:
 mov eax, dword ptr [rsp + 1344]
 cmp eax, 7
 je .Lx45_1
 cmp eax, 6
 jne .Lx45_0
 mov eax, dword ptr [rsp + 1376]
 cmp eax, 6
 jne .Lx45_0
.Lx45_1:
 mov rax, qword ptr [rsp + 1344]
 mov qword ptr [rsp + 1280], rax
 mov rax, qword ptr [rsp + 1352]
 mov qword ptr [rsp + 1288], rax
 jmp .Lx45_2
.Lx45_0:
 lea rdi, [rsp + 1344]
 lea rsi, [rsp + 1376]
 lea rdx, [rsp + 1280]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
.Lx45_2:
 jmp xchain0_n39_α
 xchain0_n34_β:
 jmp xchain0_n28_α
# IR_COERCE_NUMERIC
 xchain0_n35_α:
 mov eax, dword ptr [rsp + 1872]
 cmp eax, 7
 je .Lx47_1
 cmp eax, 6
 jne .Lx47_0
 mov eax, dword ptr [rsp + 1840]
 cmp eax, 6
 jne .Lx47_0
.Lx47_1:
 mov rax, qword ptr [rsp + 1872]
 mov qword ptr [rsp + 1808], rax
 mov rax, qword ptr [rsp + 1880]
 mov qword ptr [rsp + 1816], rax
 jmp .Lx47_2
.Lx47_0:
 lea rdi, [rsp + 1872]
 lea rsi, [rsp + 1840]
 lea rdx, [rsp + 1808]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx47_2:
 jmp xchain0_n40_α
 xchain0_n35_β:
 jmp xchain0_n32_α
# IR_ASSIGN gva
 xchain0_n36_α:
 mov rax, qword ptr [rsp + 2016]
 mov rdx, qword ptr [rsp + 2024]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rsp + 2000], rax
 mov qword ptr [rsp + 2008], rdx
 jmp xchain0_n37_α
 xchain0_n36_β:
 jmp xchain0_n37_α
# IR_LIT_STRING
 xchain0_n37_α:
 mov qword ptr [rsp + 2096], 1
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [rsp + 2104], rax
 jmp xchain0_n41_α
 xchain0_n37_β:
 jmp xchain0_n46_α
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string "result: "
# IR_ASSIGN gva
 xchain0_n38_α:
 mov rax, qword ptr [rsp + 608]
 mov rdx, qword ptr [rsp + 616]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rsp + 592], rax
 mov qword ptr [rsp + 600], rdx
 jmp xchain0_n42_α
 xchain0_n38_β:
 jmp xchain0_n17_α
# IR_CMP_TEST
 xchain0_n39_α:
 lea rdi, [rsp + 1312]
 lea rsi, [rsp + 1280]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain0_n28_α
 mov qword ptr [rsp + 1248], 0
 mov qword ptr [rsp + 1256], 0
 jmp xchain0_n43_α
 xchain0_n39_β:
 jmp xchain0_n28_α
# IR_COERCE_NUMERIC
 xchain0_n40_α:
 mov eax, dword ptr [rsp + 1840]
 cmp eax, 7
 je .Lx54_1
 cmp eax, 6
 jne .Lx54_0
 mov eax, dword ptr [rsp + 1872]
 cmp eax, 6
 jne .Lx54_0
.Lx54_1:
 mov rax, qword ptr [rsp + 1840]
 mov qword ptr [rsp + 1776], rax
 mov rax, qword ptr [rsp + 1848]
 mov qword ptr [rsp + 1784], rax
 jmp .Lx54_2
.Lx54_0:
 lea rdi, [rsp + 1840]
 lea rsi, [rsp + 1872]
 lea rdx, [rsp + 1776]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
.Lx54_2:
 jmp xchain0_n44_α
 xchain0_n40_β:
 jmp xchain0_n32_α
# IR_VAR
 xchain0_n41_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rsp + 2128], rax
 mov qword ptr [rsp + 2136], rdx
 jmp xchain0_n45_α
 xchain0_n41_β:
 jmp xchain0_n46_α
# IR_VAR
 xchain0_n42_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rsp + 896], rax
 mov qword ptr [rsp + 904], rdx
 jmp xchain0_n47_α
 xchain0_n42_β:
 jmp xchain0_n15_α
# IR_VAR
 xchain0_n43_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rsp + 1440], rax
 mov qword ptr [rsp + 1448], rdx
 jmp xchain0_n48_α
 xchain0_n43_β:
 jmp xchain0_n28_α
# IR_CMP_TEST
 xchain0_n44_α:
 lea rdi, [rsp + 1808]
 lea rsi, [rsp + 1776]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain0_n32_α
 mov qword ptr [rsp + 1744], 0
 mov qword ptr [rsp + 1752], 0
 jmp xchain0_n49_α
 xchain0_n44_β:
 jmp xchain0_n32_α
 xchain0_n45_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 2096]
 mov rsi, qword ptr [rsp + 2104]
 mov rdx, qword ptr [rsp + 2128]
 mov rcx, qword ptr [rsp + 2136]
 call str_concat_d@PLT
 mov qword ptr [rsp + 2064], rax
 mov qword ptr [rsp + 2072], rdx
 jmp xchain0_n50_α
 xchain0_n45_β:
 jmp xchain0_n46_α
# IR_LIT_STRING
 xchain0_n46_α:
 mov qword ptr [rsp + 2208], 1
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [rsp + 2216], rax
 jmp xchain0_n51_α
 xchain0_n46_β:
 jmp main_γ
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "ms: "
# IR_VAR
 xchain0_n47_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rsp + 928], rax
 mov qword ptr [rsp + 936], rdx
 jmp xchain0_n52_α
 xchain0_n47_β:
 jmp xchain0_n15_α
# IR_LIT_INTEGER
 xchain0_n48_α:
 mov qword ptr [rsp + 1472], 6
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [rsp + 1480], rax
 jmp xchain0_n53_α
 xchain0_n48_β:
 jmp xchain0_n28_α
.Lx63_0:
 .quad 1
# IR_VAR
 xchain0_n49_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rsp + 1936], rax
 mov qword ptr [rsp + 1944], rdx
 jmp xchain0_n54_α
 xchain0_n49_β:
 jmp xchain0_n32_α
# IR_ASSIGN global
 xchain0_n50_α:
 mov rsi, qword ptr [rsp + 2064]
 mov rdx, qword ptr [rsp + 2072]
 mov rdi, qword ptr [rip + .Lx65_0]
 call NV_SET_fn@PLT
 mov qword ptr [rsp + 2048], rax
 mov qword ptr [rsp + 2056], rdx
 jmp xchain0_n46_α
 xchain0_n50_β:
 jmp xchain0_n46_α
.Lx65_0:
 .quad .Lx65_0_s
.Lx65_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain0_n51_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rsp + 2272], rax
 mov qword ptr [rsp + 2280], rdx
 jmp xchain0_n55_α
 xchain0_n51_β:
 jmp main_γ
# IR_SUBSCRIPT x[i] variable
 xchain0_n52_α:
 mov rdi, qword ptr [rsp + 896]
 mov rsi, qword ptr [rsp + 904]
 mov rdx, qword ptr [rsp + 928]
 mov rcx, qword ptr [rsp + 936]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n15_α
 mov qword ptr [rsp + 960], rax
 mov qword ptr [rsp + 968], rdx
 jmp xchain0_n56_α
 xchain0_n52_β:
 jmp xchain0_n15_α
 xchain0_n53_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 1440]
 cmp eax, 100
 je .Lx68_0
 mov eax, dword ptr [rsp + 1440]
 cmp eax, 6
 jne .Lx68_2
.Lx68_1:
 mov rax, qword ptr [rsp + 1448]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rsp + 1408], 6
 mov qword ptr [rsp + 1416], rax
 jmp xchain0_n57_α
.Lx68_0:
 mov rdi, qword ptr [rsp + 1440]
 mov rsi, qword ptr [rsp + 1448]
 mov rdx, qword ptr [rsp + 1472]
 mov rcx, qword ptr [rsp + 1480]
 mov r8d, 0
 lea r9, [rsp + 1408]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx68_3
.Lx68_2:
 mov rdi, qword ptr [rsp + 1440]
 mov rsi, qword ptr [rsp + 1448]
 mov rdx, qword ptr [rsp + 1472]
 mov rcx, qword ptr [rsp + 1480]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n28_α
 mov qword ptr [rsp + 1408], rax
 mov qword ptr [rsp + 1416], rdx
.Lx68_3:
 jmp xchain0_n57_α
 xchain0_n53_β:
 jmp xchain0_n28_α
# IR_LIT_INTEGER
 xchain0_n54_α:
 mov qword ptr [rsp + 1968], 6
 mov rax, qword ptr [rip + .Lx69_0]
 mov qword ptr [rsp + 1976], rax
 jmp xchain0_n58_α
 xchain0_n54_β:
 jmp xchain0_n32_α
.Lx69_0:
 .quad 1
# IR_VAR
 xchain0_n55_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rsp + 2304], rax
 mov qword ptr [rsp + 2312], rdx
 jmp xchain0_n59_α
 xchain0_n55_β:
 jmp main_γ
# IR_VAR
 xchain0_n56_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rsp + 1024], rax
 mov qword ptr [rsp + 1032], rdx
 jmp xchain0_n60_α
 xchain0_n56_β:
 jmp xchain0_n15_α
 xchain0_n57_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 1248]
 mov rsi, qword ptr [rsp + 1256]
 mov rdx, qword ptr [rsp + 1408]
 mov rcx, qword ptr [rsp + 1416]
 call str_concat_d@PLT
 mov qword ptr [rsp + 1216], rax
 mov qword ptr [rsp + 1224], rdx
 jmp xchain0_n61_α
 xchain0_n57_β:
 jmp xchain0_n28_α
 xchain0_n58_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 1936]
 cmp eax, 100
 je .Lx73_0
 mov eax, dword ptr [rsp + 1936]
 cmp eax, 6
 jne .Lx73_2
.Lx73_1:
 mov rax, qword ptr [rsp + 1944]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rsp + 1904], 6
 mov qword ptr [rsp + 1912], rax
 jmp xchain0_n62_α
.Lx73_0:
 mov rdi, qword ptr [rsp + 1936]
 mov rsi, qword ptr [rsp + 1944]
 mov rdx, qword ptr [rsp + 1968]
 mov rcx, qword ptr [rsp + 1976]
 mov r8d, 0
 lea r9, [rsp + 1904]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx73_3
.Lx73_2:
 mov rdi, qword ptr [rsp + 1936]
 mov rsi, qword ptr [rsp + 1944]
 mov rdx, qword ptr [rsp + 1968]
 mov rcx, qword ptr [rsp + 1976]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n32_α
 mov qword ptr [rsp + 1904], rax
 mov qword ptr [rsp + 1912], rdx
.Lx73_3:
 jmp xchain0_n62_α
 xchain0_n58_β:
 jmp xchain0_n32_α
 xchain0_n59_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 2272]
 cmp eax, 100
 je .Lx74_0
 mov eax, dword ptr [rsp + 2304]
 cmp eax, 100
 je .Lx74_0
 mov eax, dword ptr [rsp + 2272]
 cmp eax, 6
 jne .Lx74_2
 mov eax, dword ptr [rsp + 2304]
 cmp eax, 6
 jne .Lx74_2
.Lx74_1:
 mov rax, qword ptr [rsp + 2280]
 mov rcx, qword ptr [rsp + 2312]
 sub rax, rcx
 mov qword ptr [rsp + 2240], 6
 mov qword ptr [rsp + 2248], rax
 jmp xchain0_n63_α
.Lx74_0:
 mov rdi, qword ptr [rsp + 2272]
 mov rsi, qword ptr [rsp + 2280]
 mov rdx, qword ptr [rsp + 2304]
 mov rcx, qword ptr [rsp + 2312]
 mov r8d, 1
 lea r9, [rsp + 2240]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx74_3
.Lx74_2:
 mov rdi, qword ptr [rsp + 2272]
 mov rsi, qword ptr [rsp + 2280]
 mov rdx, qword ptr [rsp + 2304]
 mov rcx, qword ptr [rsp + 2312]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [rsp + 2240], rax
 mov qword ptr [rsp + 2248], rdx
.Lx74_3:
 jmp xchain0_n63_α
 xchain0_n59_β:
 jmp main_γ
# IR_LIT_INTEGER
 xchain0_n60_α:
 mov qword ptr [rsp + 1056], 6
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [rsp + 1064], rax
 jmp xchain0_n64_α
 xchain0_n60_β:
 jmp xchain0_n15_α
.Lx75_0:
 .quad 2
# IR_ASSIGN gva
 xchain0_n61_α:
 mov rax, qword ptr [rsp + 1216]
 mov rdx, qword ptr [rsp + 1224]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rsp + 1200], rax
 mov qword ptr [rsp + 1208], rdx
 jmp xchain0_n65_α
 xchain0_n61_β:
 jmp xchain0_n28_α
 xchain0_n62_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 1744]
 mov rsi, qword ptr [rsp + 1752]
 mov rdx, qword ptr [rsp + 1904]
 mov rcx, qword ptr [rsp + 1912]
 call str_concat_d@PLT
 mov qword ptr [rsp + 1712], rax
 mov qword ptr [rsp + 1720], rdx
 jmp xchain0_n66_α
 xchain0_n62_β:
 jmp xchain0_n32_α
 xchain0_n63_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 2208]
 mov rsi, qword ptr [rsp + 2216]
 mov rdx, qword ptr [rsp + 2240]
 mov rcx, qword ptr [rsp + 2248]
 call str_concat_d@PLT
 mov qword ptr [rsp + 2176], rax
 mov qword ptr [rsp + 2184], rdx
 jmp xchain0_n67_α
 xchain0_n63_β:
 jmp main_γ
 xchain0_n64_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 1024]
 cmp eax, 100
 je .Lx79_0
 mov eax, dword ptr [rsp + 1024]
 cmp eax, 6
 jne .Lx79_2
.Lx79_1:
 mov rax, qword ptr [rsp + 1032]
 mov rcx, 2
 imul rax, rcx
 mov qword ptr [rsp + 992], 6
 mov qword ptr [rsp + 1000], rax
 jmp xchain0_n68_α
.Lx79_0:
 mov rdi, qword ptr [rsp + 1024]
 mov rsi, qword ptr [rsp + 1032]
 mov rdx, qword ptr [rsp + 1056]
 mov rcx, qword ptr [rsp + 1064]
 mov r8d, 2
 lea r9, [rsp + 992]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx79_3
.Lx79_2:
 mov rdi, qword ptr [rsp + 1024]
 mov rsi, qword ptr [rsp + 1032]
 mov rdx, qword ptr [rsp + 1056]
 mov rcx, qword ptr [rsp + 1064]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n15_α
 mov qword ptr [rsp + 992], rax
 mov qword ptr [rsp + 1000], rdx
.Lx79_3:
 jmp xchain0_n68_α
 xchain0_n64_β:
 jmp xchain0_n15_α
# IR_VAR
 xchain0_n65_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rsp + 1552], rax
 mov qword ptr [rsp + 1560], rdx
 jmp xchain0_n69_α
 xchain0_n65_β:
 jmp xchain0_n25_α
# IR_ASSIGN gva
 xchain0_n66_α:
 mov rax, qword ptr [rsp + 1712]
 mov rdx, qword ptr [rsp + 1720]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rsp + 1696], rax
 mov qword ptr [rsp + 1704], rdx
 jmp xchain0_n10_α
 xchain0_n66_β:
 jmp xchain0_n32_α
# IR_ASSIGN global
 xchain0_n67_α:
 mov rsi, qword ptr [rsp + 2176]
 mov rdx, qword ptr [rsp + 2184]
 mov rdi, qword ptr [rip + .Lx82_0]
 call NV_SET_fn@PLT
 mov qword ptr [rsp + 2160], rax
 mov qword ptr [rsp + 2168], rdx
 jmp main_γ
 xchain0_n67_β:
 jmp main_γ
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "OUTPUT"
# IR_ASSIGN_VAR
 xchain0_n68_α:
 mov rdi, qword ptr [rsp + 960]
 mov rsi, qword ptr [rsp + 968]
 mov rdx, qword ptr [rsp + 992]
 mov rcx, qword ptr [rsp + 1000]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n15_α
 mov qword ptr [rsp + 1088], rax
 mov qword ptr [rsp + 1096], rdx
 jmp xchain0_n15_α
 xchain0_n68_β:
 jmp xchain0_n15_α
# IR_VAR
 xchain0_n69_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rsp + 1584], rax
 mov qword ptr [rsp + 1592], rdx
 jmp xchain0_n70_α
 xchain0_n69_β:
 jmp xchain0_n25_α
# IR_VAR
 xchain0_n70_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rsp + 1616], rax
 mov qword ptr [rsp + 1624], rdx
 jmp xchain0_n71_α
 xchain0_n70_β:
 jmp xchain0_n25_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n71_α:
 mov rdi, qword ptr [rsp + 1584]
 mov rsi, qword ptr [rsp + 1592]
 mov rdx, qword ptr [rsp + 1616]
 mov rcx, qword ptr [rsp + 1624]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n25_α
 mov qword ptr [rsp + 1648], rax
 mov qword ptr [rsp + 1656], rdx
 jmp xchain0_n72_α
 xchain0_n71_β:
 jmp xchain0_n25_α
# IR_DEREF variable -> value
 xchain0_n72_α:
 mov rdi, qword ptr [rsp + 1648]
 mov rsi, qword ptr [rsp + 1656]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n25_α
 mov qword ptr [rsp + 1680], rax
 mov qword ptr [rsp + 1688], rdx
 jmp xchain0_n73_α
 xchain0_n72_β:
 jmp xchain0_n25_α
 xchain0_n73_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 1552]
 cmp eax, 100
 je .Lx88_0
 mov eax, dword ptr [rsp + 1680]
 cmp eax, 100
 je .Lx88_0
 mov eax, dword ptr [rsp + 1552]
 cmp eax, 6
 jne .Lx88_2
 mov eax, dword ptr [rsp + 1680]
 cmp eax, 6
 jne .Lx88_2
.Lx88_1:
 mov rax, qword ptr [rsp + 1560]
 mov rcx, qword ptr [rsp + 1688]
 add rax, rcx
 mov qword ptr [rsp + 1520], 6
 mov qword ptr [rsp + 1528], rax
 jmp xchain0_n74_α
.Lx88_0:
 mov rdi, qword ptr [rsp + 1552]
 mov rsi, qword ptr [rsp + 1560]
 mov rdx, qword ptr [rsp + 1680]
 mov rcx, qword ptr [rsp + 1688]
 mov r8d, 0
 lea r9, [rsp + 1520]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx88_3
.Lx88_2:
 mov rdi, qword ptr [rsp + 1552]
 mov rsi, qword ptr [rsp + 1560]
 mov rdx, qword ptr [rsp + 1680]
 mov rcx, qword ptr [rsp + 1688]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n25_α
 mov qword ptr [rsp + 1520], rax
 mov qword ptr [rsp + 1528], rdx
.Lx88_3:
 jmp xchain0_n74_α
 xchain0_n73_β:
 jmp xchain0_n25_α
# IR_ASSIGN gva
 xchain0_n74_α:
 mov rax, qword ptr [rsp + 1520]
 mov rdx, qword ptr [rsp + 1528]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rsp + 1504], rax
 mov qword ptr [rsp + 1512], rdx
 jmp xchain0_n25_α
 xchain0_n74_β:
 jmp xchain0_n25_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rsp + 2344]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rsp + 2344]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
add rsp, 65544
ret
